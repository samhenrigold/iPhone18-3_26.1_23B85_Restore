void __networkd_privileged_set_opportunistic_async_block_invoke_42(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s received NULL response", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (__nwlog_fault(v12, &type, &v81))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s received NULL response", buf, 0xCu);
        }
      }

      else if (v81 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
            v85 = 2082;
            *v86 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v22, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v12)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        if (v23)
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s received NULL response, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v13, v29, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v12)
    {
      goto LABEL_84;
    }

LABEL_83:
    free(v12);
    goto LABEL_84;
  }

  Class = object_getClass(v3);
  if (Class != MEMORY[0x1E69E9E80])
  {
    if (Class != MEMORY[0x1E69E9E98])
    {
      v6 = MEMORY[0x1865DFA50](v4);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      *buf = 136446466;
      v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
      v85 = 2082;
      *v86 = v6;
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

      type = OS_LOG_TYPE_ERROR;
      v81 = 0;
      if (!__nwlog_fault(v8, &type, &v81))
      {
        goto LABEL_52;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446466;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          v85 = 2082;
          *v86 = v6;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
        }

LABEL_51:

LABEL_52:
        if (!v8)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      if (v81 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v32 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446466;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          v85 = 2082;
          *v86 = v6;
          _os_log_impl(&dword_181A37000, v9, v32, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
        }

        goto LABEL_51;
      }

      v26 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v27 = type;
      v28 = os_log_type_enabled(v9, type);
      if (!v26)
      {
        if (v28)
        {
          *buf = 136446466;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          v85 = 2082;
          *v86 = v6;
          _os_log_impl(&dword_181A37000, v9, v27, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
        }

        goto LABEL_51;
      }

      if (v28)
      {
        *buf = 136446722;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        v85 = 2082;
        *v86 = v6;
        *&v86[8] = 2082;
        *&v86[10] = v26;
        _os_log_impl(&dword_181A37000, v9, v27, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v26);
      if (!v8)
      {
LABEL_54:
        if (v6)
        {
LABEL_55:
          free(v6);
        }

LABEL_84:
        (*(*(a1 + 40) + 16))();
        goto LABEL_157;
      }

LABEL_53:
      free(v8);
      goto LABEL_54;
    }

    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      *buf = 136446210;
      v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v81 = 0;
      if (!__nwlog_fault(v6, &type, &v81))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_181;
      }

      if (v81 != 1)
      {
        v34 = __nwlog_obj();
        v62 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v34, v62, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_181;
      }

      v46 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v47 = type;
      v48 = os_log_type_enabled(v34, type);
      if (!v46)
      {
        if (v48)
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v34, v47, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_181;
      }

      if (v48)
      {
        *buf = 136446466;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        v85 = 2082;
        *v86 = v46;
        _os_log_impl(&dword_181A37000, v34, v47, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      if (v4 == MEMORY[0x1E69E9E20])
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v45 = gLogObj;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        *buf = 136446466;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        v85 = 2082;
        *v86 = v6;
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v81 = 0;
        if (!__nwlog_fault(v8, &type, &v81))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v25 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
            v85 = 2082;
            *v86 = v6;
            _os_log_impl(&dword_181A37000, v9, v25, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v81 != 1)
        {
          v9 = __nwlog_obj();
          v69 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
            v85 = 2082;
            *v86 = v6;
            _os_log_impl(&dword_181A37000, v9, v69, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v54 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v55 = type;
        v56 = os_log_type_enabled(v9, type);
        if (!v54)
        {
          if (v56)
          {
            *buf = 136446466;
            v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
            v85 = 2082;
            *v86 = v6;
            _os_log_impl(&dword_181A37000, v9, v55, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v56)
        {
          *buf = 136446722;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          v85 = 2082;
          *v86 = v6;
          *&v86[8] = 2082;
          *&v86[10] = v54;
          _os_log_impl(&dword_181A37000, v9, v55, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v54);
        if (!v8)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      *buf = 136446210;
      v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v81 = 0;
      if (!__nwlog_fault(v6, &type, &v81))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v34, v52, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_181:

        goto LABEL_54;
      }

      if (v81 != 1)
      {
        v34 = __nwlog_obj();
        v75 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v34, v75, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_181;
      }

      v46 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v63 = type;
      v64 = os_log_type_enabled(v34, type);
      if (!v46)
      {
        if (v64)
        {
          *buf = 136446210;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          _os_log_impl(&dword_181A37000, v34, v63, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_181;
      }

      if (v64)
      {
        *buf = 136446466;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        v85 = 2082;
        *v86 = v46;
        _os_log_impl(&dword_181A37000, v34, v63, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v46);
    if (!v6)
    {
      goto LABEL_84;
    }

    goto LABEL_55;
  }

  v15 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
  v16 = v15;
  if (!v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    *buf = 136446210;
    v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s received response without result code", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v18, &type, &v81))
    {
      goto LABEL_154;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v31 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s received response without result code", buf, 0xCu);
      }

      goto LABEL_153;
    }

    if (v81 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v50 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        _os_log_impl(&dword_181A37000, v19, v50, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_153;
    }

    v40 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v43 = type;
    v44 = os_log_type_enabled(v19, type);
    if (!v40)
    {
      if (v44)
      {
        *buf = 136446210;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        _os_log_impl(&dword_181A37000, v19, v43, "%{public}s received response without result code, no backtrace", buf, 0xCu);
      }

      goto LABEL_153;
    }

    if (v44)
    {
      *buf = 136446466;
      v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
      v85 = 2082;
      *v86 = v40;
      _os_log_impl(&dword_181A37000, v19, v43, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_77;
  }

  if (object_getClass(v15) != MEMORY[0x1E69E9EB0])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s received invalid result type", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v18, &type, &v81))
    {
      goto LABEL_154;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s received invalid result type", buf, 0xCu);
      }

LABEL_153:

LABEL_154:
      if (!v18)
      {
LABEL_156:
        (*(*(a1 + 40) + 16))();

        goto LABEL_157;
      }

LABEL_155:
      free(v18);
      goto LABEL_156;
    }

    if (v81 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v49 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        _os_log_impl(&dword_181A37000, v19, v49, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_153;
    }

    v40 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v41 = type;
    v42 = os_log_type_enabled(v19, type);
    if (!v40)
    {
      if (v42)
      {
        *buf = 136446210;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        _os_log_impl(&dword_181A37000, v19, v41, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
      }

      goto LABEL_153;
    }

    if (v42)
    {
      *buf = 136446466;
      v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
      v85 = 2082;
      *v86 = v40;
      _os_log_impl(&dword_181A37000, v19, v41, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_77:

    free(v40);
    if (!v18)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  value = xpc_int64_get_value(v16);
  v37 = value;
  if (value)
  {
    if (!(value >> 31))
    {
      v38 = __nwlog_obj();
      v39 = v38;
      if (v37 == 6)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          v85 = 1024;
          *v86 = 6;
          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_156;
      }

      *buf = 136446466;
      v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
      v85 = 1024;
      *v86 = v37;
      v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

      type = OS_LOG_TYPE_ERROR;
      v81 = 0;
      if (__nwlog_fault(v59, &type, &v81))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v70 = __nwlog_obj();
          v71 = type;
          if (os_log_type_enabled(v70, type))
          {
            *buf = 136446466;
            v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
            v85 = 1024;
            *v86 = v37;
            _os_log_impl(&dword_181A37000, v70, v71, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v81 == 1)
        {
          v76 = __nw_create_backtrace_string();
          v70 = __nwlog_obj();
          v77 = type;
          v78 = os_log_type_enabled(v70, type);
          if (v76)
          {
            if (v78)
            {
              *buf = 136446722;
              v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
              v85 = 1024;
              *v86 = v37;
              *&v86[4] = 2082;
              *&v86[6] = v76;
              _os_log_impl(&dword_181A37000, v70, v77, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v76);
            if (!v59)
            {
              goto LABEL_156;
            }

            goto LABEL_189;
          }

          if (v78)
          {
            *buf = 136446466;
            v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
            v85 = 1024;
            *v86 = v37;
            _os_log_impl(&dword_181A37000, v70, v77, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v70 = __nwlog_obj();
          v80 = type;
          if (os_log_type_enabled(v70, type))
          {
            *buf = 136446466;
            v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
            v85 = 1024;
            *v86 = v37;
            _os_log_impl(&dword_181A37000, v70, v80, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_188:
      if (!v59)
      {
        goto LABEL_156;
      }

LABEL_189:
      free(v59);
      goto LABEL_156;
    }

    v57 = __nwlog_obj();
    v58 = networkd_privileged_result_to_string(v37);
    *buf = 136446722;
    v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
    v85 = 2048;
    *v86 = v37;
    *&v86[8] = 2082;
    *&v86[10] = v58;
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v59, &type, &v81))
    {
      goto LABEL_188;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446722;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        v85 = 2048;
        *v86 = v37;
        *&v86[8] = 2082;
        *&v86[10] = v58;
        _os_log_impl(&dword_181A37000, v60, v61, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v81 == 1)
    {
      v72 = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v73 = type;
      v74 = os_log_type_enabled(v60, type);
      if (v72)
      {
        if (v74)
        {
          *buf = 136446978;
          v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
          v85 = 2048;
          *v86 = v37;
          *&v86[8] = 2082;
          *&v86[10] = v58;
          v87 = 2082;
          v88 = v72;
          _os_log_impl(&dword_181A37000, v60, v73, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v72);
        goto LABEL_188;
      }

      if (v74)
      {
        *buf = 136446722;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        v85 = 2048;
        *v86 = v37;
        *&v86[8] = 2082;
        *&v86[10] = v58;
        _os_log_impl(&dword_181A37000, v60, v73, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v60 = __nwlog_obj();
      v79 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446722;
        v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
        v85 = 2048;
        *v86 = v37;
        *&v86[8] = 2082;
        *&v86[10] = v58;
        _os_log_impl(&dword_181A37000, v60, v79, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_188;
  }

  if (*(a1 + 48) == 1)
  {
    uint64 = xpc_dictionary_get_uint64(v4, networkd_privileged_key_opportunistic_inuse);
  }

  else
  {
    uint64 = 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v65 = gLogObj;
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(a1 + 48);
    string_ptr = xpc_string_get_string_ptr(*(a1 + 32));
    v68 = "un";
    *buf = 136446978;
    v84 = "networkd_privileged_set_opportunistic_async_block_invoke";
    v85 = 2082;
    if (v66)
    {
      v68 = "";
    }

    *v86 = v68;
    *&v86[8] = 2082;
    *&v86[10] = string_ptr;
    v87 = 2048;
    v88 = uint64;
    _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully %{public}sblocked opportunistic traffic on %{public}s count=%llu", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
LABEL_157:
}

uint64_t networkd_privileged_set_settings(const char *a1, void *a2, const char *a3)
{
  v104 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v6, networkd_privileged_key_type, 0xAuLL);
      xpc_dictionary_set_string(v7, networkd_privileged_key_settings_key, a1);
      xpc_dictionary_set_value(v7, networkd_privileged_key_settings_value, v5);
      if (a3 && *a3)
      {
        xpc_dictionary_set_string(v7, networkd_privileged_key_settings_file_prefix, a3);
      }

      v8 = networkd_privileged_send_sync_inner("networkd_privileged_set_settings", v7);
      v9 = v8;
      if (!v8)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        *buf = 136446210;
        v99 = "networkd_privileged_set_settings";
        v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s received NULL response", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (!__nwlog_fault(v11, &type, &v96))
        {
          goto LABEL_59;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s received NULL response", buf, 0xCu);
          }

          goto LABEL_175;
        }

        if (v96 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v17, v33, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_175;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v26 = type;
        v27 = os_log_type_enabled(v17, type);
        if (!backtrace_string)
        {
          if (v27)
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v17, v26, "%{public}s received NULL response, no backtrace", buf, 0xCu);
          }

          goto LABEL_175;
        }

        if (v27)
        {
          *buf = 136446466;
          v99 = "networkd_privileged_set_settings";
          v100 = 2082;
          *v101 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_30;
      }

      Class = object_getClass(v8);
      if (Class != MEMORY[0x1E69E9E80])
      {
        if (Class != MEMORY[0x1E69E9E98])
        {
          v11 = MEMORY[0x1865DFA50](v9);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          *buf = 136446466;
          v99 = "networkd_privileged_set_settings";
          v100 = 2082;
          *v101 = v11;
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

          type = OS_LOG_TYPE_ERROR;
          v96 = 0;
          if (!__nwlog_fault(v13, &type, &v96))
          {
            goto LABEL_57;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = type;
            if (os_log_type_enabled(v14, type))
            {
              *buf = 136446466;
              v99 = "networkd_privileged_set_settings";
              v100 = 2082;
              *v101 = v11;
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
            }

LABEL_56:

LABEL_57:
            if (!v13)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          if (v96 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v36 = type;
            if (os_log_type_enabled(v14, type))
            {
              *buf = 136446466;
              v99 = "networkd_privileged_set_settings";
              v100 = 2082;
              *v101 = v11;
              _os_log_impl(&dword_181A37000, v14, v36, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_56;
          }

          v30 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v31 = type;
          v32 = os_log_type_enabled(v14, type);
          if (!v30)
          {
            if (v32)
            {
              *buf = 136446466;
              v99 = "networkd_privileged_set_settings";
              v100 = 2082;
              *v101 = v11;
              _os_log_impl(&dword_181A37000, v14, v31, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
            }

            goto LABEL_56;
          }

          if (v32)
          {
            *buf = 136446722;
            v99 = "networkd_privileged_set_settings";
            v100 = 2082;
            *v101 = v11;
            *&v101[8] = 2082;
            *&v101[10] = v30;
            _os_log_impl(&dword_181A37000, v14, v31, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v30);
          if (!v13)
          {
LABEL_59:
            if (!v11)
            {
LABEL_61:
              v37 = 0;
LABEL_155:

LABEL_156:
              goto LABEL_157;
            }

LABEL_60:
            free(v11);
            goto LABEL_61;
          }

LABEL_58:
          free(v13);
          goto LABEL_59;
        }

        if (v9 == MEMORY[0x1E69E9E18])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v38 = gLogObj;
          *buf = 136446210;
          v99 = "networkd_privileged_set_settings";
          v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v96 = 0;
          if (!__nwlog_fault(v11, &type, &v96))
          {
            goto LABEL_59;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v39 = type;
            if (os_log_type_enabled(v17, type))
            {
              *buf = 136446210;
              v99 = "networkd_privileged_set_settings";
              _os_log_impl(&dword_181A37000, v17, v39, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
            }

            goto LABEL_175;
          }

          if (v96 != 1)
          {
            v17 = __nwlog_obj();
            v65 = type;
            if (os_log_type_enabled(v17, type))
            {
              *buf = 136446210;
              v99 = "networkd_privileged_set_settings";
              _os_log_impl(&dword_181A37000, v17, v65, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_175;
          }

          backtrace_string = __nw_create_backtrace_string();
          v17 = __nwlog_obj();
          v52 = type;
          v53 = os_log_type_enabled(v17, type);
          if (!backtrace_string)
          {
            if (v53)
            {
              *buf = 136446210;
              v99 = "networkd_privileged_set_settings";
              _os_log_impl(&dword_181A37000, v17, v52, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
            }

            goto LABEL_175;
          }

          if (v53)
          {
            *buf = 136446466;
            v99 = "networkd_privileged_set_settings";
            v100 = 2082;
            *v101 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v52, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

        else
        {
          if (v9 == MEMORY[0x1E69E9E20])
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v51 = gLogObj;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v99 = "networkd_privileged_set_settings";
              _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
            }

            goto LABEL_61;
          }

          if (v9 != MEMORY[0x1E69E9E38])
          {
            v11 = MEMORY[0x1865DFA50](v9);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            *buf = 136446466;
            v99 = "networkd_privileged_set_settings";
            v100 = 2082;
            *v101 = v11;
            v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

            type = OS_LOG_TYPE_ERROR;
            v96 = 0;
            if (!__nwlog_fault(v13, &type, &v96))
            {
              goto LABEL_57;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v29 = type;
              if (os_log_type_enabled(v14, type))
              {
                *buf = 136446466;
                v99 = "networkd_privileged_set_settings";
                v100 = 2082;
                *v101 = v11;
                _os_log_impl(&dword_181A37000, v14, v29, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
              }

              goto LABEL_56;
            }

            if (v96 != 1)
            {
              v14 = __nwlog_obj();
              v68 = type;
              if (os_log_type_enabled(v14, type))
              {
                *buf = 136446466;
                v99 = "networkd_privileged_set_settings";
                v100 = 2082;
                *v101 = v11;
                _os_log_impl(&dword_181A37000, v14, v68, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
              }

              goto LABEL_56;
            }

            v58 = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v59 = type;
            v60 = os_log_type_enabled(v14, type);
            if (!v58)
            {
              if (v60)
              {
                *buf = 136446466;
                v99 = "networkd_privileged_set_settings";
                v100 = 2082;
                *v101 = v11;
                _os_log_impl(&dword_181A37000, v14, v59, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
              }

              goto LABEL_56;
            }

            if (v60)
            {
              *buf = 136446722;
              v99 = "networkd_privileged_set_settings";
              v100 = 2082;
              *v101 = v11;
              *&v101[8] = 2082;
              *&v101[10] = v58;
              _os_log_impl(&dword_181A37000, v14, v59, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v58);
            if (!v13)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v56 = gLogObj;
          *buf = 136446210;
          v99 = "networkd_privileged_set_settings";
          v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v96 = 0;
          if (!__nwlog_fault(v11, &type, &v96))
          {
            goto LABEL_59;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v17 = __nwlog_obj();
            v57 = type;
            if (os_log_type_enabled(v17, type))
            {
              *buf = 136446210;
              v99 = "networkd_privileged_set_settings";
              _os_log_impl(&dword_181A37000, v17, v57, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
            }

LABEL_175:

            goto LABEL_59;
          }

          if (v96 != 1)
          {
            v17 = __nwlog_obj();
            v76 = type;
            if (os_log_type_enabled(v17, type))
            {
              *buf = 136446210;
              v99 = "networkd_privileged_set_settings";
              _os_log_impl(&dword_181A37000, v17, v76, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_175;
          }

          backtrace_string = __nw_create_backtrace_string();
          v17 = __nwlog_obj();
          v66 = type;
          v67 = os_log_type_enabled(v17, type);
          if (!backtrace_string)
          {
            if (v67)
            {
              *buf = 136446210;
              v99 = "networkd_privileged_set_settings";
              _os_log_impl(&dword_181A37000, v17, v66, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
            }

            goto LABEL_175;
          }

          if (v67)
          {
            *buf = 136446466;
            v99 = "networkd_privileged_set_settings";
            v100 = 2082;
            *v101 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v66, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

LABEL_30:

        free(backtrace_string);
        if (!v11)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v19 = xpc_dictionary_get_value(v9, networkd_privileged_key_result);
      v20 = v19;
      if (!v19)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        *buf = 136446210;
        v99 = "networkd_privileged_set_settings";
        v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s received response without result code", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (!__nwlog_fault(v22, &type, &v96))
        {
          goto LABEL_150;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v35 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v23, v35, "%{public}s received response without result code", buf, 0xCu);
          }

          goto LABEL_149;
        }

        if (v96 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v55 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v23, v55, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_149;
        }

        v46 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v49 = type;
        v50 = os_log_type_enabled(v23, type);
        if (!v46)
        {
          if (v50)
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v23, v49, "%{public}s received response without result code, no backtrace", buf, 0xCu);
          }

          goto LABEL_149;
        }

        if (v50)
        {
          *buf = 136446466;
          v99 = "networkd_privileged_set_settings";
          v100 = 2082;
          *v101 = v46;
          _os_log_impl(&dword_181A37000, v23, v49, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_83;
      }

      if (object_getClass(v19) != MEMORY[0x1E69E9EB0])
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        *buf = 136446210;
        v99 = "networkd_privileged_set_settings";
        v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s received invalid result type", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (!__nwlog_fault(v22, &type, &v96))
        {
          goto LABEL_150;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s received invalid result type", buf, 0xCu);
          }

LABEL_149:

LABEL_150:
          if (!v22)
          {
LABEL_153:
            v37 = 0;
            goto LABEL_154;
          }

          goto LABEL_151;
        }

        if (v96 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v54 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v23, v54, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_149;
        }

        v46 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v23, type);
        if (!v46)
        {
          if (v48)
          {
            *buf = 136446210;
            v99 = "networkd_privileged_set_settings";
            _os_log_impl(&dword_181A37000, v23, v47, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
          }

          goto LABEL_149;
        }

        if (v48)
        {
          *buf = 136446466;
          v99 = "networkd_privileged_set_settings";
          v100 = 2082;
          *v101 = v46;
          _os_log_impl(&dword_181A37000, v23, v47, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_83:

        free(v46);
        if (!v22)
        {
          goto LABEL_153;
        }

LABEL_151:
        v74 = v22;
LABEL_152:
        free(v74);
        goto LABEL_153;
      }

      value = xpc_int64_get_value(v20);
      v41 = value;
      if (!value)
      {
        v37 = 1;
LABEL_154:

        goto LABEL_155;
      }

      if (!(value >> 31))
      {
        v42 = __nwlog_obj();
        *buf = 136446466;
        v99 = "networkd_privileged_set_settings";
        v100 = 1024;
        *v101 = v41;
        v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

        type = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (__nwlog_fault(v43, &type, &v96))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v44 = __nwlog_obj();
            v45 = type;
            if (os_log_type_enabled(v44, type))
            {
              *buf = 136446466;
              v99 = "networkd_privileged_set_settings";
              v100 = 1024;
              *v101 = v41;
              _os_log_impl(&dword_181A37000, v44, v45, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
            }
          }

          else if (v96 == 1)
          {
            v69 = __nw_create_backtrace_string();
            v44 = __nwlog_obj();
            v70 = type;
            v71 = os_log_type_enabled(v44, type);
            if (v69)
            {
              if (v71)
              {
                *buf = 136446722;
                v99 = "networkd_privileged_set_settings";
                v100 = 1024;
                *v101 = v41;
                *&v101[4] = 2082;
                *&v101[6] = v69;
                _os_log_impl(&dword_181A37000, v44, v70, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v69);
              if (!v43)
              {
                goto LABEL_153;
              }

LABEL_183:
              v74 = v43;
              goto LABEL_152;
            }

            if (v71)
            {
              *buf = 136446466;
              v99 = "networkd_privileged_set_settings";
              v100 = 1024;
              *v101 = v41;
              _os_log_impl(&dword_181A37000, v44, v70, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            v44 = __nwlog_obj();
            v77 = type;
            if (os_log_type_enabled(v44, type))
            {
              *buf = 136446466;
              v99 = "networkd_privileged_set_settings";
              v100 = 1024;
              *v101 = v41;
              _os_log_impl(&dword_181A37000, v44, v77, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

LABEL_182:
        if (!v43)
        {
          goto LABEL_153;
        }

        goto LABEL_183;
      }

      v61 = __nwlog_obj();
      v62 = networkd_privileged_result_to_string(v41);
      *buf = 136446722;
      v99 = "networkd_privileged_set_settings";
      v100 = 2048;
      *v101 = v41;
      *&v101[8] = 2082;
      *&v101[10] = v62;
      v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v43, &type, &v96))
      {
        goto LABEL_182;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v63 = __nwlog_obj();
        v64 = type;
        if (os_log_type_enabled(v63, type))
        {
          *buf = 136446722;
          v99 = "networkd_privileged_set_settings";
          v100 = 2048;
          *v101 = v41;
          *&v101[8] = 2082;
          *&v101[10] = v62;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
        }
      }

      else if (v96 == 1)
      {
        v72 = __nw_create_backtrace_string();
        v63 = __nwlog_obj();
        v95 = type;
        v73 = os_log_type_enabled(v63, type);
        if (v72)
        {
          if (v73)
          {
            *buf = 136446978;
            v99 = "networkd_privileged_set_settings";
            v100 = 2048;
            *v101 = v41;
            *&v101[8] = 2082;
            *&v101[10] = v62;
            v102 = 2082;
            v103 = v72;
            _os_log_impl(&dword_181A37000, v63, v95, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v72);
          goto LABEL_182;
        }

        if (v73)
        {
          *buf = 136446722;
          v99 = "networkd_privileged_set_settings";
          v100 = 2048;
          *v101 = v41;
          *&v101[8] = 2082;
          *&v101[10] = v62;
          _os_log_impl(&dword_181A37000, v63, v95, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v63 = __nwlog_obj();
        v78 = type;
        if (os_log_type_enabled(v63, type))
        {
          *buf = 136446722;
          v99 = "networkd_privileged_set_settings";
          v100 = 2048;
          *v101 = v41;
          *&v101[8] = 2082;
          *&v101[10] = v62;
          _os_log_impl(&dword_181A37000, v63, v78, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_182;
    }

    v83 = __nwlog_obj();
    *buf = 136446210;
    v99 = "networkd_privileged_set_settings";
    v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s xpc_dictionary_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v84, &type, &v96))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v85 = __nwlog_obj();
        v86 = type;
        if (os_log_type_enabled(v85, type))
        {
          *buf = 136446210;
          v99 = "networkd_privileged_set_settings";
          _os_log_impl(&dword_181A37000, v85, v86, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v96 == 1)
      {
        v90 = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v91 = type;
        v92 = os_log_type_enabled(v85, type);
        if (v90)
        {
          if (v92)
          {
            *buf = 136446466;
            v99 = "networkd_privileged_set_settings";
            v100 = 2082;
            *v101 = v90;
            _os_log_impl(&dword_181A37000, v85, v91, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v90);
          goto LABEL_219;
        }

        if (v92)
        {
          *buf = 136446210;
          v99 = "networkd_privileged_set_settings";
          _os_log_impl(&dword_181A37000, v85, v91, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v85 = __nwlog_obj();
        v94 = type;
        if (os_log_type_enabled(v85, type))
        {
          *buf = 136446210;
          v99 = "networkd_privileged_set_settings";
          _os_log_impl(&dword_181A37000, v85, v94, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_219:
    if (v84)
    {
      free(v84);
    }

    v37 = 0;
    goto LABEL_156;
  }

  v79 = __nwlog_obj();
  *buf = 136446210;
  v99 = "networkd_privileged_set_settings";
  v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s called with null key", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (__nwlog_fault(v80, &type, &v96))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (os_log_type_enabled(v81, type))
      {
        *buf = 136446210;
        v99 = "networkd_privileged_set_settings";
        _os_log_impl(&dword_181A37000, v81, v82, "%{public}s called with null key", buf, 0xCu);
      }
    }

    else if (v96 == 1)
    {
      v87 = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      v88 = type;
      v89 = os_log_type_enabled(v81, type);
      if (v87)
      {
        if (v89)
        {
          *buf = 136446466;
          v99 = "networkd_privileged_set_settings";
          v100 = 2082;
          *v101 = v87;
          _os_log_impl(&dword_181A37000, v81, v88, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v87);
        goto LABEL_213;
      }

      if (v89)
      {
        *buf = 136446210;
        v99 = "networkd_privileged_set_settings";
        _os_log_impl(&dword_181A37000, v81, v88, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v81 = __nwlog_obj();
      v93 = type;
      if (os_log_type_enabled(v81, type))
      {
        *buf = 136446210;
        v99 = "networkd_privileged_set_settings";
        _os_log_impl(&dword_181A37000, v81, v93, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_213:
  if (v80)
  {
    free(v80);
  }

  v37 = 0;
LABEL_157:

  return v37;
}

uint64_t networkd_privileged_reload_managed_network_settings()
{
  v90 = *MEMORY[0x1E69E9840];
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = v0;
  if (v0)
  {
    xpc_dictionary_set_uint64(v0, networkd_privileged_key_type, 9uLL);
    v2 = networkd_privileged_send_sync_inner("networkd_privileged_reload_managed_network_settings", v1);
    v3 = v2;
    if (!v2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      *buf = 136446210;
      v85 = "networkd_privileged_reload_managed_network_settings";
      v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s received NULL response", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (!__nwlog_fault(v5, &type, &v82))
      {
        goto LABEL_55;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s received NULL response", buf, 0xCu);
        }

        goto LABEL_170;
      }

      if (v82 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v11, v27, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_170;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v20 = type;
      v21 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s received NULL response, no backtrace", buf, 0xCu);
        }

        goto LABEL_170;
      }

      if (v21)
      {
        *buf = 136446466;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v86 = 2082;
        *v87 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }

    Class = object_getClass(v2);
    if (Class != MEMORY[0x1E69E9E80])
    {
      if (Class != MEMORY[0x1E69E9E98])
      {
        v5 = MEMORY[0x1865DFA50](v3);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        *buf = 136446466;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v86 = 2082;
        *v87 = v5;
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v82 = 0;
        if (!__nwlog_fault(v7, &type, &v82))
        {
          goto LABEL_53;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446466;
            v85 = "networkd_privileged_reload_managed_network_settings";
            v86 = 2082;
            *v87 = v5;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
          }

LABEL_52:

LABEL_53:
          if (!v7)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        if (v82 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v30 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446466;
            v85 = "networkd_privileged_reload_managed_network_settings";
            v86 = 2082;
            *v87 = v5;
            _os_log_impl(&dword_181A37000, v8, v30, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_52;
        }

        v24 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v25 = type;
        v26 = os_log_type_enabled(v8, type);
        if (!v24)
        {
          if (v26)
          {
            *buf = 136446466;
            v85 = "networkd_privileged_reload_managed_network_settings";
            v86 = 2082;
            *v87 = v5;
            _os_log_impl(&dword_181A37000, v8, v25, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_52;
        }

        if (v26)
        {
          *buf = 136446722;
          v85 = "networkd_privileged_reload_managed_network_settings";
          v86 = 2082;
          *v87 = v5;
          *&v87[8] = 2082;
          *&v87[10] = v24;
          _os_log_impl(&dword_181A37000, v8, v25, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v24);
        if (!v7)
        {
LABEL_55:
          if (!v5)
          {
LABEL_57:
            v31 = 0;
LABEL_151:

            goto LABEL_152;
          }

LABEL_56:
          free(v5);
          goto LABEL_57;
        }

LABEL_54:
        free(v7);
        goto LABEL_55;
      }

      if (v3 == MEMORY[0x1E69E9E18])
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        *buf = 136446210;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v82 = 0;
        if (!__nwlog_fault(v5, &type, &v82))
        {
          goto LABEL_55;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v85 = "networkd_privileged_reload_managed_network_settings";
            _os_log_impl(&dword_181A37000, v11, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
          }

          goto LABEL_170;
        }

        if (v82 != 1)
        {
          v11 = __nwlog_obj();
          v59 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v85 = "networkd_privileged_reload_managed_network_settings";
            _os_log_impl(&dword_181A37000, v11, v59, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_170;
        }

        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v46 = type;
        v47 = os_log_type_enabled(v11, type);
        if (!backtrace_string)
        {
          if (v47)
          {
            *buf = 136446210;
            v85 = "networkd_privileged_reload_managed_network_settings";
            _os_log_impl(&dword_181A37000, v11, v46, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
          }

          goto LABEL_170;
        }

        if (v47)
        {
          *buf = 136446466;
          v85 = "networkd_privileged_reload_managed_network_settings";
          v86 = 2082;
          *v87 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v46, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        if (v3 == MEMORY[0x1E69E9E20])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = gLogObj;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v85 = "networkd_privileged_reload_managed_network_settings";
            _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
          }

          goto LABEL_57;
        }

        if (v3 != MEMORY[0x1E69E9E38])
        {
          v5 = MEMORY[0x1865DFA50](v3);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          *buf = 136446466;
          v85 = "networkd_privileged_reload_managed_network_settings";
          v86 = 2082;
          *v87 = v5;
          v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

          type = OS_LOG_TYPE_ERROR;
          v82 = 0;
          if (!__nwlog_fault(v7, &type, &v82))
          {
            goto LABEL_53;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v8 = __nwlog_obj();
            v23 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446466;
              v85 = "networkd_privileged_reload_managed_network_settings";
              v86 = 2082;
              *v87 = v5;
              _os_log_impl(&dword_181A37000, v8, v23, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
            }

            goto LABEL_52;
          }

          if (v82 != 1)
          {
            v8 = __nwlog_obj();
            v62 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446466;
              v85 = "networkd_privileged_reload_managed_network_settings";
              v86 = 2082;
              *v87 = v5;
              _os_log_impl(&dword_181A37000, v8, v62, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_52;
          }

          v52 = __nw_create_backtrace_string();
          v8 = __nwlog_obj();
          v53 = type;
          v54 = os_log_type_enabled(v8, type);
          if (!v52)
          {
            if (v54)
            {
              *buf = 136446466;
              v85 = "networkd_privileged_reload_managed_network_settings";
              v86 = 2082;
              *v87 = v5;
              _os_log_impl(&dword_181A37000, v8, v53, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
            }

            goto LABEL_52;
          }

          if (v54)
          {
            *buf = 136446722;
            v85 = "networkd_privileged_reload_managed_network_settings";
            v86 = 2082;
            *v87 = v5;
            *&v87[8] = 2082;
            *&v87[10] = v52;
            _os_log_impl(&dword_181A37000, v8, v53, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v52);
          if (!v7)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v50 = gLogObj;
        *buf = 136446210;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v82 = 0;
        if (!__nwlog_fault(v5, &type, &v82))
        {
          goto LABEL_55;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v11 = __nwlog_obj();
          v51 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v85 = "networkd_privileged_reload_managed_network_settings";
            _os_log_impl(&dword_181A37000, v11, v51, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
          }

LABEL_170:

          goto LABEL_55;
        }

        if (v82 != 1)
        {
          v11 = __nwlog_obj();
          v71 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v85 = "networkd_privileged_reload_managed_network_settings";
            _os_log_impl(&dword_181A37000, v11, v71, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_170;
        }

        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v60 = type;
        v61 = os_log_type_enabled(v11, type);
        if (!backtrace_string)
        {
          if (v61)
          {
            *buf = 136446210;
            v85 = "networkd_privileged_reload_managed_network_settings";
            _os_log_impl(&dword_181A37000, v11, v60, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
          }

          goto LABEL_170;
        }

        if (v61)
        {
          *buf = 136446466;
          v85 = "networkd_privileged_reload_managed_network_settings";
          v86 = 2082;
          *v87 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v60, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

LABEL_26:

      free(backtrace_string);
      if (!v5)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    v13 = xpc_dictionary_get_value(v3, networkd_privileged_key_result);
    v14 = v13;
    if (!v13)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      *buf = 136446210;
      v85 = "networkd_privileged_reload_managed_network_settings";
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s received response without result code", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (!__nwlog_fault(v16, &type, &v82))
      {
        goto LABEL_146;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v17, v29, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v82 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v49 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v17, v49, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_145;
      }

      v40 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v43 = type;
      v44 = os_log_type_enabled(v17, type);
      if (!v40)
      {
        if (v44)
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v17, v43, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v44)
      {
        *buf = 136446466;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v86 = 2082;
        *v87 = v40;
        _os_log_impl(&dword_181A37000, v17, v43, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_79;
    }

    if (object_getClass(v13) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      *buf = 136446210;
      v85 = "networkd_privileged_reload_managed_network_settings";
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s received invalid result type", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (!__nwlog_fault(v16, &type, &v82))
      {
        goto LABEL_146;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_145:

LABEL_146:
        if (!v16)
        {
LABEL_149:
          v31 = 0;
          goto LABEL_150;
        }

        goto LABEL_147;
      }

      if (v82 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v48 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v17, v48, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_145;
      }

      v40 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v17, type);
      if (!v40)
      {
        if (v42)
        {
          *buf = 136446210;
          v85 = "networkd_privileged_reload_managed_network_settings";
          _os_log_impl(&dword_181A37000, v17, v41, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v42)
      {
        *buf = 136446466;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v86 = 2082;
        *v87 = v40;
        _os_log_impl(&dword_181A37000, v17, v41, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_79:

      free(v40);
      if (!v16)
      {
        goto LABEL_149;
      }

LABEL_147:
      v69 = v16;
LABEL_148:
      free(v69);
      goto LABEL_149;
    }

    value = xpc_int64_get_value(v14);
    v35 = value;
    if (!value)
    {
      v31 = 1;
LABEL_150:

      goto LABEL_151;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      *buf = 136446466;
      v85 = "networkd_privileged_reload_managed_network_settings";
      v86 = 1024;
      *v87 = v35;
      v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

      type = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (__nwlog_fault(v37, &type, &v82))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446466;
            v85 = "networkd_privileged_reload_managed_network_settings";
            v86 = 1024;
            *v87 = v35;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v82 == 1)
        {
          v63 = __nw_create_backtrace_string();
          v38 = __nwlog_obj();
          v64 = type;
          v65 = os_log_type_enabled(v38, type);
          if (v63)
          {
            if (v65)
            {
              *buf = 136446722;
              v85 = "networkd_privileged_reload_managed_network_settings";
              v86 = 1024;
              *v87 = v35;
              *&v87[4] = 2082;
              *&v87[6] = v63;
              _os_log_impl(&dword_181A37000, v38, v64, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v63);
            if (!v37)
            {
              goto LABEL_149;
            }

LABEL_178:
            v69 = v37;
            goto LABEL_148;
          }

          if (v65)
          {
            *buf = 136446466;
            v85 = "networkd_privileged_reload_managed_network_settings";
            v86 = 1024;
            *v87 = v35;
            _os_log_impl(&dword_181A37000, v38, v64, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v38 = __nwlog_obj();
          v72 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446466;
            v85 = "networkd_privileged_reload_managed_network_settings";
            v86 = 1024;
            *v87 = v35;
            _os_log_impl(&dword_181A37000, v38, v72, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_177:
      if (!v37)
      {
        goto LABEL_149;
      }

      goto LABEL_178;
    }

    v55 = __nwlog_obj();
    v56 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v85 = "networkd_privileged_reload_managed_network_settings";
    v86 = 2048;
    *v87 = v35;
    *&v87[8] = 2082;
    *&v87[10] = v56;
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v82 = 0;
    if (!__nwlog_fault(v37, &type, &v82))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v57 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v57, type))
      {
        *buf = 136446722;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v86 = 2048;
        *v87 = v35;
        *&v87[8] = 2082;
        *&v87[10] = v56;
        _os_log_impl(&dword_181A37000, v57, v58, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v82 == 1)
    {
      v66 = __nw_create_backtrace_string();
      v57 = __nwlog_obj();
      v67 = type;
      v68 = os_log_type_enabled(v57, type);
      if (v66)
      {
        if (v68)
        {
          *buf = 136446978;
          v85 = "networkd_privileged_reload_managed_network_settings";
          v86 = 2048;
          *v87 = v35;
          *&v87[8] = 2082;
          *&v87[10] = v56;
          v88 = 2082;
          v89 = v66;
          _os_log_impl(&dword_181A37000, v57, v67, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v66);
        goto LABEL_177;
      }

      if (v68)
      {
        *buf = 136446722;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v86 = 2048;
        *v87 = v35;
        *&v87[8] = 2082;
        *&v87[10] = v56;
        _os_log_impl(&dword_181A37000, v57, v67, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v57 = __nwlog_obj();
      v73 = type;
      if (os_log_type_enabled(v57, type))
      {
        *buf = 136446722;
        v85 = "networkd_privileged_reload_managed_network_settings";
        v86 = 2048;
        *v87 = v35;
        *&v87[8] = 2082;
        *&v87[10] = v56;
        _os_log_impl(&dword_181A37000, v57, v73, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_177;
  }

  v74 = __nwlog_obj();
  *buf = 136446210;
  v85 = "networkd_privileged_reload_managed_network_settings";
  v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s xpc_dictionary_create failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v82 = 0;
  if (__nwlog_fault(v75, &type, &v82))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v85 = "networkd_privileged_reload_managed_network_settings";
        _os_log_impl(&dword_181A37000, v76, v77, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
      }
    }

    else if (v82 == 1)
    {
      v78 = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v79 = type;
      v80 = os_log_type_enabled(v76, type);
      if (v78)
      {
        if (v80)
        {
          *buf = 136446466;
          v85 = "networkd_privileged_reload_managed_network_settings";
          v86 = 2082;
          *v87 = v78;
          _os_log_impl(&dword_181A37000, v76, v79, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v78);
        goto LABEL_195;
      }

      if (v80)
      {
        *buf = 136446210;
        v85 = "networkd_privileged_reload_managed_network_settings";
        _os_log_impl(&dword_181A37000, v76, v79, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v76 = __nwlog_obj();
      v81 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v85 = "networkd_privileged_reload_managed_network_settings";
        _os_log_impl(&dword_181A37000, v76, v81, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_195:
  if (v75)
  {
    free(v75);
  }

  v31 = 0;
LABEL_152:

  return v31;
}

void networkd_privileged_set_constrained(const char *a1, BOOL a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = v4;
    if (v4)
    {
      xpc_dictionary_set_uint64(v4, networkd_privileged_key_type, 0xFuLL);
      xpc_dictionary_set_BOOL(v5, networkd_privileged_key_constrained, a2);
      xpc_dictionary_set_string(v5, networkd_privileged_key_interface_name, a1);
      v6 = networkd_privileged_copy_connection();
      if (v6)
      {
        if (networkd_privileged_copy_queue(void)::onceToken != -1)
        {
          dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
        }

        v7 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __networkd_privileged_set_constrained_block_invoke;
        v32[3] = &unk_1E6A2B5F8;
        v33 = v5;
        networkd_privileged_send_async_inner("networkd_privileged_set_constrained", v33, v7, v32);

LABEL_7:
LABEL_8:

        return;
      }

      v16 = __nwlog_obj();
      *buf = 136446210;
      v37 = "networkd_privileged_set_constrained";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s Unable to connect to networkd privileged", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (__nwlog_fault(v17, &type, &v34))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_constrained";
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Unable to connect to networkd privileged", buf, 0xCu);
          }
        }

        else if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v27 = type;
          v28 = os_log_type_enabled(v18, type);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              v37 = "networkd_privileged_set_constrained";
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Unable to connect to networkd privileged, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v28)
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_constrained";
            _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Unable to connect to networkd privileged, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v18 = __nwlog_obj();
          v31 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_constrained";
            _os_log_impl(&dword_181A37000, v18, v31, "%{public}s Unable to connect to networkd privileged, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v17)
      {
        free(v17);
      }

      goto LABEL_7;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v37 = "networkd_privileged_set_constrained";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s xpc_dictionary_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v13, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_constrained";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        v23 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v14, type);
        if (v23)
        {
          if (v25)
          {
            *buf = 136446466;
            v37 = "networkd_privileged_set_constrained";
            v38 = 2082;
            v39 = v23;
            _os_log_impl(&dword_181A37000, v14, v24, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          goto LABEL_57;
        }

        if (v25)
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_constrained";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_constrained";
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v37 = "networkd_privileged_set_constrained";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null ifname", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v9, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_constrained";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null ifname", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v10, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v37 = "networkd_privileged_set_constrained";
          v38 = 2082;
          v39 = v20;
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_52;
      }

      if (v22)
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_constrained";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_constrained";
        _os_log_impl(&dword_181A37000, v10, v29, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v9)
  {
    free(v9);
  }
}

void __networkd_privileged_set_constrained_block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v79 = "networkd_privileged_set_constrained_block_invoke";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s received NULL response", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v6, &type, &v76))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if (v76 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_174;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if (v22)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v80 = 2082;
      *v81 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v14 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
    v15 = v14;
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s received response without result code", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_147;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v30, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v47, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_146;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v42)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_76;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s received invalid result type", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_147;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_146:

LABEL_147:
        if (!v17)
        {
LABEL_149:

          goto LABEL_150;
        }

LABEL_148:
        free(v17);
        goto LABEL_149;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v46, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_146;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v40)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_76:

      free(v38);
      if (!v17)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }

    value = xpc_int64_get_value(v15);
    v35 = value;
    if (!value)
    {

      if (xpc_dictionary_get_int64(v4, networkd_privileged_key_result))
      {
        goto LABEL_150;
      }

      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v50 = xpc_dictionary_get_BOOL(*(a1 + 32), networkd_privileged_key_constrained);
        string = xpc_dictionary_get_string(*(a1 + 32), networkd_privileged_key_interface_name);
        v52 = "Cleared";
        *buf = 136446722;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2082;
        if (v50)
        {
          v52 = "Set";
        }

        *v81 = v52;
        *&v81[8] = 2082;
        *&v81[10] = string;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s constrained on %{public}s", buf, 0x20u);
      }

      goto LABEL_83;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      v37 = v36;
      if (v35 == 6)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          v80 = 1024;
          *v81 = 6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_149;
      }

      *buf = 136446466;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v80 = 1024;
      *v81 = v35;
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (__nwlog_fault(v58, &type, &v76))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_constrained_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v76 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v65, type);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446722;
              v79 = "networkd_privileged_set_constrained_block_invoke";
              v80 = 1024;
              *v81 = v35;
              *&v81[4] = 2082;
              *&v81[6] = v71;
              _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v71);
            if (!v58)
            {
              goto LABEL_149;
            }

            goto LABEL_182;
          }

          if (v73)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_constrained_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v75 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_constrained_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v75, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_181:
      if (!v58)
      {
        goto LABEL_149;
      }

LABEL_182:
      free(v58);
      goto LABEL_149;
    }

    v56 = __nwlog_obj();
    v57 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v79 = "networkd_privileged_set_constrained_block_invoke";
    v80 = 2048;
    *v81 = v35;
    *&v81[8] = 2082;
    *&v81[10] = v57;
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v58, &type, &v76))
    {
      goto LABEL_181;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v76 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v68 = type;
      v69 = os_log_type_enabled(v59, type);
      if (v67)
      {
        if (v69)
        {
          *buf = 136446978;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          v80 = 2048;
          *v81 = v35;
          *&v81[8] = 2082;
          *&v81[10] = v57;
          v82 = 2082;
          v83 = v67;
          _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v67);
        goto LABEL_181;
      }

      if (v69)
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v74, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_181;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v61, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_174;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v45)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v45)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E20])
    {
      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        *buf = 136446466;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2082;
        *v81 = v6;
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v8, &type, &v76))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_constrained_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v24, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v76 != 1)
        {
          v9 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_constrained_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v64, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v53 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v9, type);
        if (!v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_constrained_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v55)
        {
          *buf = 136446722;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          v80 = 2082;
          *v81 = v6;
          *&v81[8] = 2082;
          *&v81[10] = v53;
          _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        if (!v8)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v8);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v49, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_174:

        goto LABEL_54;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v70, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_174;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v63)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_constrained_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v6)
      {
        goto LABEL_150;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_83:

    goto LABEL_150;
  }

  v6 = MEMORY[0x1865DFA50](v4);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v79 = "networkd_privileged_set_constrained_block_invoke";
  v80 = 2082;
  *v81 = v6;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v8, &type, &v76))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v31, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_constrained_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v27)
  {
    *buf = 136446722;
    v79 = "networkd_privileged_set_constrained_block_invoke";
    v80 = 2082;
    *v81 = v6;
    *&v81[8] = 2082;
    *&v81[10] = v25;
    _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v25);
  if (v8)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
  }

LABEL_150:
}

void networkd_privileged_set_ultra_constrained(const char *a1, BOOL a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = v4;
    if (v4)
    {
      xpc_dictionary_set_uint64(v4, networkd_privileged_key_type, 0x16uLL);
      xpc_dictionary_set_BOOL(v5, networkd_privileged_key_constrained, a2);
      xpc_dictionary_set_string(v5, networkd_privileged_key_interface_name, a1);
      v6 = networkd_privileged_copy_connection();
      if (v6)
      {
        if (networkd_privileged_copy_queue(void)::onceToken != -1)
        {
          dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
        }

        v7 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __networkd_privileged_set_ultra_constrained_block_invoke;
        v32[3] = &unk_1E6A2B5F8;
        v33 = v5;
        networkd_privileged_send_async_inner("networkd_privileged_set_ultra_constrained", v33, v7, v32);

LABEL_7:
LABEL_8:

        return;
      }

      v16 = __nwlog_obj();
      *buf = 136446210;
      v37 = "networkd_privileged_set_ultra_constrained";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s Unable to connect to networkd privileged", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (__nwlog_fault(v17, &type, &v34))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_ultra_constrained";
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Unable to connect to networkd privileged", buf, 0xCu);
          }
        }

        else if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v27 = type;
          v28 = os_log_type_enabled(v18, type);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              v37 = "networkd_privileged_set_ultra_constrained";
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Unable to connect to networkd privileged, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v28)
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_ultra_constrained";
            _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Unable to connect to networkd privileged, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v18 = __nwlog_obj();
          v31 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_ultra_constrained";
            _os_log_impl(&dword_181A37000, v18, v31, "%{public}s Unable to connect to networkd privileged, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v17)
      {
        free(v17);
      }

      goto LABEL_7;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v37 = "networkd_privileged_set_ultra_constrained";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s xpc_dictionary_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v13, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_ultra_constrained";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        v23 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v14, type);
        if (v23)
        {
          if (v25)
          {
            *buf = 136446466;
            v37 = "networkd_privileged_set_ultra_constrained";
            v38 = 2082;
            v39 = v23;
            _os_log_impl(&dword_181A37000, v14, v24, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          goto LABEL_57;
        }

        if (v25)
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_ultra_constrained";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_ultra_constrained";
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v37 = "networkd_privileged_set_ultra_constrained";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null ifname", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v9, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_ultra_constrained";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null ifname", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v10, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v37 = "networkd_privileged_set_ultra_constrained";
          v38 = 2082;
          v39 = v20;
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_52;
      }

      if (v22)
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_ultra_constrained";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_ultra_constrained";
        _os_log_impl(&dword_181A37000, v10, v29, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v9)
  {
    free(v9);
  }
}

void __networkd_privileged_set_ultra_constrained_block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s received NULL response", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v6, &type, &v76))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if (v76 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_174;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if (v22)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v80 = 2082;
      *v81 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v14 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
    v15 = v14;
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s received response without result code", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_147;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v30, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v47, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_146;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v42)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_76;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s received invalid result type", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_147;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_146:

LABEL_147:
        if (!v17)
        {
LABEL_149:

          goto LABEL_150;
        }

LABEL_148:
        free(v17);
        goto LABEL_149;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v46, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_146;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v40)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_76:

      free(v38);
      if (!v17)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }

    value = xpc_int64_get_value(v15);
    v35 = value;
    if (!value)
    {

      if (xpc_dictionary_get_int64(v4, networkd_privileged_key_result))
      {
        goto LABEL_150;
      }

      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v50 = xpc_dictionary_get_BOOL(*(a1 + 32), networkd_privileged_key_constrained);
        string = xpc_dictionary_get_string(*(a1 + 32), networkd_privileged_key_interface_name);
        v52 = "Cleared";
        *buf = 136446722;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2082;
        if (v50)
        {
          v52 = "Set";
        }

        *v81 = v52;
        *&v81[8] = 2082;
        *&v81[10] = string;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ultra constrained on %{public}s", buf, 0x20u);
      }

      goto LABEL_83;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      v37 = v36;
      if (v35 == 6)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          v80 = 1024;
          *v81 = 6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_149;
      }

      *buf = 136446466;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v80 = 1024;
      *v81 = v35;
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (__nwlog_fault(v58, &type, &v76))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v76 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v65, type);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446722;
              v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
              v80 = 1024;
              *v81 = v35;
              *&v81[4] = 2082;
              *&v81[6] = v71;
              _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v71);
            if (!v58)
            {
              goto LABEL_149;
            }

            goto LABEL_182;
          }

          if (v73)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v75 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v75, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_181:
      if (!v58)
      {
        goto LABEL_149;
      }

LABEL_182:
      free(v58);
      goto LABEL_149;
    }

    v56 = __nwlog_obj();
    v57 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
    v80 = 2048;
    *v81 = v35;
    *&v81[8] = 2082;
    *&v81[10] = v57;
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v58, &type, &v76))
    {
      goto LABEL_181;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v76 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v68 = type;
      v69 = os_log_type_enabled(v59, type);
      if (v67)
      {
        if (v69)
        {
          *buf = 136446978;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          v80 = 2048;
          *v81 = v35;
          *&v81[8] = 2082;
          *&v81[10] = v57;
          v82 = 2082;
          v83 = v67;
          _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v67);
        goto LABEL_181;
      }

      if (v69)
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v74, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_181;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v61, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_174;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v45)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v45)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E20])
    {
      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        *buf = 136446466;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2082;
        *v81 = v6;
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v8, &type, &v76))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v24, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v76 != 1)
        {
          v9 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v64, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v53 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v9, type);
        if (!v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v55)
        {
          *buf = 136446722;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          v80 = 2082;
          *v81 = v6;
          *&v81[8] = 2082;
          *&v81[10] = v53;
          _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        if (!v8)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v8);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v49, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_174:

        goto LABEL_54;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v70, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_174;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v63)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v6)
      {
        goto LABEL_150;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_83:

    goto LABEL_150;
  }

  v6 = MEMORY[0x1865DFA50](v4);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
  v80 = 2082;
  *v81 = v6;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v8, &type, &v76))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v31, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v27)
  {
    *buf = 136446722;
    v79 = "networkd_privileged_set_ultra_constrained_block_invoke";
    v80 = 2082;
    *v81 = v6;
    *&v81[8] = 2082;
    *&v81[10] = v25;
    _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v25);
  if (v8)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
  }

LABEL_150:
}

void networkd_privileged_set_expensive(const char *a1, BOOL a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = v4;
    if (v4)
    {
      xpc_dictionary_set_uint64(v4, networkd_privileged_key_type, 0x10uLL);
      xpc_dictionary_set_BOOL(v5, networkd_privileged_key_expensive, a2);
      xpc_dictionary_set_string(v5, networkd_privileged_key_interface_name, a1);
      v6 = networkd_privileged_copy_connection();
      if (v6)
      {
        if (networkd_privileged_copy_queue(void)::onceToken != -1)
        {
          dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
        }

        v7 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __networkd_privileged_set_expensive_block_invoke;
        v32[3] = &unk_1E6A2B5F8;
        v33 = v5;
        networkd_privileged_send_async_inner("networkd_privileged_set_expensive", v33, v7, v32);

LABEL_7:
LABEL_8:

        return;
      }

      v16 = __nwlog_obj();
      *buf = 136446210;
      v37 = "networkd_privileged_set_expensive";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s Unable to connect to networkd privileged", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (__nwlog_fault(v17, &type, &v34))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_expensive";
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Unable to connect to networkd privileged", buf, 0xCu);
          }
        }

        else if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v27 = type;
          v28 = os_log_type_enabled(v18, type);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              v37 = "networkd_privileged_set_expensive";
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Unable to connect to networkd privileged, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v28)
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_expensive";
            _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Unable to connect to networkd privileged, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v18 = __nwlog_obj();
          v31 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v37 = "networkd_privileged_set_expensive";
            _os_log_impl(&dword_181A37000, v18, v31, "%{public}s Unable to connect to networkd privileged, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v17)
      {
        free(v17);
      }

      goto LABEL_7;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v37 = "networkd_privileged_set_expensive";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s xpc_dictionary_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v13, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_expensive";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        v23 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v14, type);
        if (v23)
        {
          if (v25)
          {
            *buf = 136446466;
            v37 = "networkd_privileged_set_expensive";
            v38 = 2082;
            v39 = v23;
            _os_log_impl(&dword_181A37000, v14, v24, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          goto LABEL_57;
        }

        if (v25)
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_expensive";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v37 = "networkd_privileged_set_expensive";
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v37 = "networkd_privileged_set_expensive";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null ifname", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v9, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_expensive";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null ifname", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v10, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v37 = "networkd_privileged_set_expensive";
          v38 = 2082;
          v39 = v20;
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_52;
      }

      if (v22)
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_expensive";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v37 = "networkd_privileged_set_expensive";
        _os_log_impl(&dword_181A37000, v10, v29, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v9)
  {
    free(v9);
  }
}

void __networkd_privileged_set_expensive_block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v79 = "networkd_privileged_set_expensive_block_invoke";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s received NULL response", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v6, &type, &v76))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if (v76 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_174;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if (v22)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v80 = 2082;
      *v81 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v14 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
    v15 = v14;
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s received response without result code", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_147;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v30, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v47, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_146;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v42)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_76;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s received invalid result type", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_147;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_146:

LABEL_147:
        if (!v17)
        {
LABEL_149:

          goto LABEL_150;
        }

LABEL_148:
        free(v17);
        goto LABEL_149;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v46, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_146;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_146;
      }

      if (v40)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_76:

      free(v38);
      if (!v17)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }

    value = xpc_int64_get_value(v15);
    v35 = value;
    if (!value)
    {

      if (xpc_dictionary_get_int64(v4, networkd_privileged_key_result))
      {
        goto LABEL_150;
      }

      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v50 = xpc_dictionary_get_BOOL(*(a1 + 32), networkd_privileged_key_expensive);
        string = xpc_dictionary_get_string(*(a1 + 32), networkd_privileged_key_interface_name);
        v52 = "Cleared";
        *buf = 136446722;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2082;
        if (v50)
        {
          v52 = "Set";
        }

        *v81 = v52;
        *&v81[8] = 2082;
        *&v81[10] = string;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s expensive on %{public}s", buf, 0x20u);
      }

      goto LABEL_83;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      v37 = v36;
      if (v35 == 6)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          v80 = 1024;
          *v81 = 6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_149;
      }

      *buf = 136446466;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v80 = 1024;
      *v81 = v35;
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (__nwlog_fault(v58, &type, &v76))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_expensive_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v76 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v65, type);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446722;
              v79 = "networkd_privileged_set_expensive_block_invoke";
              v80 = 1024;
              *v81 = v35;
              *&v81[4] = 2082;
              *&v81[6] = v71;
              _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v71);
            if (!v58)
            {
              goto LABEL_149;
            }

            goto LABEL_182;
          }

          if (v73)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_expensive_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v75 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_expensive_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v75, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_181:
      if (!v58)
      {
        goto LABEL_149;
      }

LABEL_182:
      free(v58);
      goto LABEL_149;
    }

    v56 = __nwlog_obj();
    v57 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v79 = "networkd_privileged_set_expensive_block_invoke";
    v80 = 2048;
    *v81 = v35;
    *&v81[8] = 2082;
    *&v81[10] = v57;
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v58, &type, &v76))
    {
      goto LABEL_181;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v76 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v68 = type;
      v69 = os_log_type_enabled(v59, type);
      if (v67)
      {
        if (v69)
        {
          *buf = 136446978;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          v80 = 2048;
          *v81 = v35;
          *&v81[8] = 2082;
          *&v81[10] = v57;
          v82 = 2082;
          v83 = v67;
          _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v67);
        goto LABEL_181;
      }

      if (v69)
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v74, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_181;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v61, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_174;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v45)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v45)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E20])
    {
      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        *buf = 136446466;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2082;
        *v81 = v6;
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v8, &type, &v76))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_expensive_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v24, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v76 != 1)
        {
          v9 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_expensive_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v64, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v53 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v9, type);
        if (!v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_expensive_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v55)
        {
          *buf = 136446722;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          v80 = 2082;
          *v81 = v6;
          *&v81[8] = 2082;
          *&v81[10] = v53;
          _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        if (!v8)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v8);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v49, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_174:

        goto LABEL_54;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v70, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_174;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_expensive_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_174;
      }

      if (v63)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_expensive_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v6)
      {
        goto LABEL_150;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_83:

    goto LABEL_150;
  }

  v6 = MEMORY[0x1865DFA50](v4);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v79 = "networkd_privileged_set_expensive_block_invoke";
  v80 = 2082;
  *v81 = v6;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v8, &type, &v76))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v31, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_expensive_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v27)
  {
    *buf = 136446722;
    v79 = "networkd_privileged_set_expensive_block_invoke";
    v80 = 2082;
    *v81 = v6;
    *&v81[8] = 2082;
    *&v81[10] = v25;
    _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v25);
  if (v8)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
  }

LABEL_150:
}

uint64_t nw_protocol_http_copy_location_endpoint(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_metadata_is_http";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null metadata", buf, 12);

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v10, &v26, &v25))
    {
      goto LABEL_23;
    }

    if (v26 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v26;
      if (os_log_type_enabled(v11, v26))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_metadata_is_http";
        v13 = "%{public}s called with null metadata";
LABEL_21:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = v26;
        v15 = os_log_type_enabled(v11, v26);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_metadata_is_http";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v15)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_metadata_is_http";
        v13 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_21;
      }

      v11 = __nwlog_obj();
      v12 = v26;
      if (os_log_type_enabled(v11, v26))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_metadata_is_http";
        v13 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:

LABEL_23:
    if (v10)
    {
      free(v10);
    }

    goto LABEL_25;
  }

  v4 = v3;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_definition_http_definition);

  if (v5)
  {
    v6 = nw_http_metadata_copy_response(v4);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v28 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = __nw_protocol_http_copy_location_endpoint_block_invoke;
    v24[3] = &unk_1E6A2B740;
    v24[4] = buf;
    v24[5] = a1;
    nw_http_fields_access_value_by_name(v6, "Location", v24);
    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (v6)
    {
      os_release(v6);
    }

    return v7;
  }

LABEL_25:
  v16 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http_copy_location_endpoint";
  LODWORD(v23) = 12;
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null nw_protocol_metadata_is_http(response_metadata)", buf, v23);
  v26 = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v17, &v26, &v25))
  {
    if (v26 == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = v26;
      if (os_log_type_enabled(v18, v26))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_copy_location_endpoint";
        v20 = "%{public}s called with null nw_protocol_metadata_is_http(response_metadata)";
LABEL_38:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = v26;
      v22 = os_log_type_enabled(v18, v26);
      if (v21)
      {
        if (v22)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_copy_location_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v21;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null nw_protocol_metadata_is_http(response_metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        goto LABEL_39;
      }

      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_copy_location_endpoint";
        v20 = "%{public}s called with null nw_protocol_metadata_is_http(response_metadata), no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = v26;
      if (os_log_type_enabled(v18, v26))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_copy_location_endpoint";
        v20 = "%{public}s called with null nw_protocol_metadata_is_http(response_metadata), backtrace limit exceeded";
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  if (v17)
  {
    free(v17);
  }

  return 0;
}

void __nw_protocol_http_copy_location_endpoint_block_invoke(uint64_t a1, _BYTE *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    parameters = nw_protocol_get_parameters(*(a1 + 40));
    v5 = nw_parameters_copy_protocol_options_legacy(parameters, *(a1 + 40));
    if (nw_protocol_options_is_http_redirect(v5) && nw_http_redirect_options_get_for_proxy(v5))
    {
      v6 = nw_masque_copy_proxy_url_endpoint(*(a1 + 40));
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = nw_parameters_copy_url_endpoint(parameters);
      if (!v6)
      {
LABEL_5:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 136446210;
          *(&buf + 4) = "nw_protocol_http_copy_location_endpoint_block_invoke";
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s failed to get URL endpoint from parameters", &buf, 0xCu);
        }

LABEL_42:
        if (v5)
        {
          os_release(v5);
        }

        return;
      }
    }

    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v9 = *a2;
    if (*a2)
    {
      v10 = a2 + 1;
      do
      {
        while (!memchr("!#$%&'()*+,-./0123456789:;=?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]_abcdefghijklmnopqrstuvwxyz~", v9, 0x56uLL))
        {
          CFStringAppendFormat(Mutable, 0, @"%%%02X", v9);
          v11 = *v10++;
          v9 = v11;
          if (!v11)
          {
            goto LABEL_13;
          }
        }

        LOWORD(buf) = v9;
        CFStringAppendCharacters(Mutable, &buf, 1);
        v12 = *v10++;
        v9 = v12;
      }

      while (v12);
    }

LABEL_13:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3802000000;
    v39 = __Block_byref_object_copy__1336;
    v40 = __Block_byref_object_dispose__1337;
    v13 = v6;
    v14 = _nw_endpoint_copy_cfurl(v13);

    v41 = v14;
    v42 |= 1u;
    if (!*(*(&buf + 1) + 40))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v31) = 136446210;
        *(&v31 + 4) = "nw_protocol_http_copy_location_endpoint_block_invoke";
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s failed to get base URL", &v31, 0xCu);
      }

      goto LABEL_36;
    }

    *&v31 = 0;
    *(&v31 + 1) = &v31;
    v32 = 0x3802000000;
    v33 = __Block_byref_object_copy__1336;
    v34 = __Block_byref_object_dispose__1337;
    cf = 0;
    v36 = -1;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = __nw_protocol_http_copy_location_endpoint_block_invoke_6;
    v27[3] = &unk_1E6A2B718;
    v27[4] = &v31;
    v27[5] = &buf;
    nw_utilities_get_c_string_from_cfstring(Mutable, 0x600u, v27);
    if (*(*(&v31 + 1) + 40))
    {
      rangeIncludingSeparators.location = 0;
      rangeIncludingSeparators.length = 0;
      v26.location = 0;
      v26.length = 0;
      CFURLGetByteRangeForComponent(*(*(&buf + 1) + 40), kCFURLComponentFragment, &rangeIncludingSeparators);
      CFURLGetByteRangeForComponent(*(*(&v31 + 1) + 40), kCFURLComponentFragment, &v26);
      if (v26.length)
      {
        v15 = 1;
      }

      else
      {
        v15 = rangeIncludingSeparators.length == 0;
      }

      if (v15)
      {
        length = 0;
      }

      else
      {
        length = rangeIncludingSeparators.length;
      }

      v17 = CFURLGetBytes(*(*(&v31 + 1) + 40), 0, 0);
      if (v17 > 0)
      {
        v18 = v17;
        v19 = nw_calloc_type<unsigned char>(length + v17 + 1);
        CFURLGetBytes(*(*(&v31 + 1) + 40), v19, v18);
        if (length >= 1)
        {
          v20 = v13;
          url = _nw_endpoint_get_url(v20);

          memcpy(&v19[v18], (url + rangeIncludingSeparators.location), length);
        }

        *(*(*(a1 + 32) + 8) + 24) = nw_endpoint_create_url(v19);
        if (v19)
        {
          free(v19);
        }

        goto LABEL_33;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *v28 = 136446210;
        v29 = "nw_protocol_http_copy_location_endpoint_block_invoke";
        v24 = "%{public}s failed to get string bytes";
        p_rangeIncludingSeparators = v28;
        goto LABEL_32;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        LODWORD(rangeIncludingSeparators.location) = 136446210;
        *(&rangeIncludingSeparators.location + 4) = "nw_protocol_http_copy_location_endpoint_block_invoke_2";
        v24 = "%{public}s failed to get target URL";
        p_rangeIncludingSeparators = &rangeIncludingSeparators;
LABEL_32:
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, v24, p_rangeIncludingSeparators, 0xCu);
      }
    }

LABEL_33:
    _Block_object_dispose(&v31, 8);
    if ((v36 & 1) != 0 && cf)
    {
      CFRelease(cf);
    }

LABEL_36:
    _Block_object_dispose(&buf, 8);
    if ((v42 & 1) != 0 && v41)
    {
      CFRelease(v41);
    }

    if (Mutable)
    {
      os_release(Mutable);
    }

    os_release(v13);
    goto LABEL_42;
  }
}

uint64_t __Block_byref_object_copy__1336(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__1337(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    CFRelease(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

CFURLRef __nw_protocol_http_copy_location_endpoint_block_invoke_6(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  result = CFURLCreateAbsoluteURLWithBytes(*MEMORY[0x1E695E480], __s, v4, 0x600u, *(*(*(a1 + 40) + 8) + 40), 0);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 48);
  if ((v7 & 1) != 0 && *(v6 + 40))
  {
    v8 = result;
    CFRelease(*(v6 + 40));
    result = v8;
    v7 = *(v6 + 48);
  }

  *(v6 + 40) = result;
  *(v6 + 48) = v7 | 1;
  return result;
}

void nw_protocol_http_redirect_create::$_1::__invoke(uint64_t a1, int a2, void *object, int a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v34 = "operator()";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v17, &type, &v31))
    {
      goto LABEL_74;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null protocol";
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v25 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v34 = "operator()";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_74:
        if (!v17)
        {
          return;
        }

        goto LABEL_75;
      }

      if (!v25)
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_73;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v34 = "operator()";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null http_redirect", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v17, &type, &v31))
    {
      goto LABEL_74;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v31 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_74;
        }

        *buf = 136446210;
        v34 = "operator()";
        v20 = "%{public}s called with null http_redirect, backtrace limit exceeded";
        goto LABEL_73;
      }

      v26 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v27 = os_log_type_enabled(v18, type);
      if (!v26)
      {
        if (!v27)
        {
          goto LABEL_74;
        }

        *buf = 136446210;
        v34 = "operator()";
        v20 = "%{public}s called with null http_redirect, no backtrace";
        goto LABEL_73;
      }

      if (!v27)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v34 = "operator()";
      v35 = 2082;
      v36 = v26;
      v28 = "%{public}s called with null http_redirect, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_74;
    }

    *buf = 136446210;
    v34 = "operator()";
    v20 = "%{public}s called with null http_redirect";
LABEL_73:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_74;
  }

  if (!object)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "operator()";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null metadata", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v17, &type, &v31))
    {
      goto LABEL_74;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null metadata";
      goto LABEL_73;
    }

    if (v31 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_73;
    }

    v26 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v29 = os_log_type_enabled(v18, type);
    if (!v26)
    {
      if (!v29)
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_73;
    }

    if (!v29)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v34 = "operator()";
    v35 = 2082;
    v36 = v26;
    v28 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v18, v19, v28, buf, 0x16u);
    goto LABEL_55;
  }

  if (!a5)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v34 = "operator()";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null completion", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v17, &type, &v31))
    {
      goto LABEL_74;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null completion";
      goto LABEL_73;
    }

    if (v31 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_73;
    }

    v26 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v30 = os_log_type_enabled(v18, type);
    if (!v26)
    {
      if (!v30)
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v34 = "operator()";
      v20 = "%{public}s called with null completion, no backtrace";
      goto LABEL_73;
    }

    if (v30)
    {
      *buf = 136446466;
      v34 = "operator()";
      v35 = 2082;
      v36 = v26;
      v28 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

LABEL_55:
    free(v26);
    if (!v17)
    {
      return;
    }

LABEL_75:
    free(v17);
    return;
  }

  v9 = os_retain(object);
  v10 = *(v5 + 464);
  if ((v10 & 1) != 0 && *(v5 + 456))
  {
    v11 = v9;
    os_release(*(v5 + 456));
    v9 = v11;
    v10 = *(v5 + 464);
  }

  *(v5 + 456) = v9;
  *(v5 + 464) = v10 | 1;
  v12 = nw_http_metadata_copy_request(object);
  if (nw_http_fields_have_field_with_name(v12, "Cookie"))
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  *(v5 + 588) = *(v5 + 588) & 0xFD | v13;
  if (nw_http_fields_have_field_with_name(v12, "Accept-Encoding"))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 8;
  }

  *(v5 + 588) = v14 | v15 | *(v5 + 588) & 0xF3;
  (*(a5 + 16))(a5, 1);
  if (v12)
  {

    os_release(v12);
  }
}

void nw_protocol_http_redirect_create::$_0::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v164 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null protocol", buf, 12);
    LOBYTE(v151) = 16;
    LOBYTE(v128) = 0;
    if (!__nwlog_fault(v67, &v151, &v128))
    {
      goto LABEL_217;
    }

    if (v151 != 17)
    {
      if (v128 != 1)
      {
        v68 = __nwlog_obj();
        v69 = v151;
        if (!os_log_type_enabled(v68, v151))
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v70 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_216;
      }

      backtrace_string = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v69 = v151;
      v81 = os_log_type_enabled(v68, v151);
      if (!backtrace_string)
      {
        if (!v81)
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v70 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_216;
      }

      if (v81)
      {
        *buf = 136446466;
        *&buf[4] = "operator()";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_217:
      if (v67)
      {
        goto LABEL_218;
      }

      return;
    }

    v68 = __nwlog_obj();
    v69 = v151;
    if (!os_log_type_enabled(v68, v151))
    {
      goto LABEL_217;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v70 = "%{public}s called with null protocol";
    goto LABEL_216;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null http_redirect", buf, 12);
    LOBYTE(v151) = 16;
    LOBYTE(v128) = 0;
    if (!__nwlog_fault(v67, &v151, &v128))
    {
      goto LABEL_217;
    }

    if (v151 != 17)
    {
      if (v128 != 1)
      {
        v68 = __nwlog_obj();
        v69 = v151;
        if (!os_log_type_enabled(v68, v151))
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v70 = "%{public}s called with null http_redirect, backtrace limit exceeded";
        goto LABEL_216;
      }

      v82 = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v69 = v151;
      v83 = os_log_type_enabled(v68, v151);
      if (!v82)
      {
        if (!v83)
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v70 = "%{public}s called with null http_redirect, no backtrace";
        goto LABEL_216;
      }

      if (!v83)
      {
        goto LABEL_173;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v82;
      v84 = "%{public}s called with null http_redirect, dumping backtrace:%{public}s";
      goto LABEL_172;
    }

    v68 = __nwlog_obj();
    v69 = v151;
    if (!os_log_type_enabled(v68, v151))
    {
      goto LABEL_217;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v70 = "%{public}s called with null http_redirect";
LABEL_216:
    _os_log_impl(&dword_181A37000, v68, v69, v70, buf, 0xCu);
    goto LABEL_217;
  }

  if (!a2)
  {
    v72 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null other_protocol", buf, 12);
    LOBYTE(v151) = 16;
    LOBYTE(v128) = 0;
    if (!__nwlog_fault(v67, &v151, &v128))
    {
      goto LABEL_217;
    }

    if (v151 != 17)
    {
      if (v128 != 1)
      {
        v68 = __nwlog_obj();
        v69 = v151;
        if (!os_log_type_enabled(v68, v151))
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v70 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_216;
      }

      v82 = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v69 = v151;
      v85 = os_log_type_enabled(v68, v151);
      if (!v82)
      {
        if (!v85)
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v70 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_216;
      }

      if (!v85)
      {
        goto LABEL_173;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v82;
      v84 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_172;
    }

    v68 = __nwlog_obj();
    v69 = v151;
    if (!os_log_type_enabled(v68, v151))
    {
      goto LABEL_217;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v70 = "%{public}s called with null other_protocol";
    goto LABEL_216;
  }

  if (!a3)
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null metadata", buf, 12);
    LOBYTE(v151) = 16;
    LOBYTE(v128) = 0;
    if (!__nwlog_fault(v67, &v151, &v128))
    {
      goto LABEL_217;
    }

    if (v151 == 17)
    {
      v68 = __nwlog_obj();
      v69 = v151;
      if (!os_log_type_enabled(v68, v151))
      {
        goto LABEL_217;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v70 = "%{public}s called with null metadata";
      goto LABEL_216;
    }

    if (v128 != 1)
    {
      v68 = __nwlog_obj();
      v69 = v151;
      if (!os_log_type_enabled(v68, v151))
      {
        goto LABEL_217;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v70 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_216;
    }

    v82 = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v69 = v151;
    v86 = os_log_type_enabled(v68, v151);
    if (!v82)
    {
      if (!v86)
      {
        goto LABEL_217;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v70 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_216;
    }

    if (!v86)
    {
      goto LABEL_173;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v82;
    v84 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_172:
    _os_log_impl(&dword_181A37000, v68, v69, v84, buf, 0x16u);
    goto LABEL_173;
  }

  if (a4)
  {
    v7 = nw_http_metadata_copy_response(a3);
    if (v7)
    {
      v8 = *(v4 + 480);
      if ((v8 & 1) != 0 && *(v4 + 472))
      {
        v9 = v7;
        os_release(*(v4 + 472));
        v7 = v9;
        v8 = *(v4 + 480);
      }

      *(v4 + 472) = 0;
      *(v4 + 480) = v8 | 1;
      v10 = v7;
      status_code = _nw_http_response_get_status_code(v10);

      v12 = status_code - 301;
      if ((status_code - 301) > 7 || ((1 << v12) & 0xC7) == 0)
      {
        goto LABEL_29;
      }

      if ((*(v4 + 588) & 0x10) == 0)
      {
        if ((*(v4 + 198) & 1) == 0 && gLogDatapath == 1)
        {
          v13 = __nwlog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_redirect_process";
            *&buf[12] = 2082;
            *&buf[14] = v4 + 114;
            *&buf[22] = 2080;
            v159 = " ";
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNot redirecting because no longer handling inbound reply", buf, 0x20u);
          }
        }

LABEL_29:
        os_release(v10);
LABEL_30:
        (*(a4 + 16))(a4, 1);
        return;
      }

      if ((*(v4 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v90 = __nwlog_obj();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v91 = *(v4 + 584);
          *buf = 136446978;
          *&buf[4] = "nw_http_redirect_process";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 114;
          *&buf[22] = 2080;
          v159 = " ";
          LOWORD(v160) = 1024;
          *(&v160 + 2) = v91;
          _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with redirect_limit %u", buf, 0x26u);
        }
      }

      if (!*(v4 + 584))
      {
        if ((*(v4 + 198) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_redirect_process";
            *&buf[12] = 2082;
            *&buf[14] = v4 + 114;
            *&buf[22] = 2080;
            v159 = " ";
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNot redirecting because we reached the limit", buf, 0x20u);
          }
        }

        nw_protocol_error(*(v4 + 48), v4);
        nw_protocol_disconnected(*(v4 + 48), v4);
        goto LABEL_29;
      }

      v128 = 0;
      v129 = &v128;
      v130 = 0x3802000000;
      v131 = __Block_byref_object_copy__21;
      v132 = __Block_byref_object_dispose__22;
      v133 = nw_protocol_http_copy_location_endpoint(v4, a3);
      v134 |= 1u;
      if (!v129[5])
      {
        if ((*(v4 + 198) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_redirect_process";
            *&buf[12] = 2082;
            *&buf[14] = v4 + 114;
            *&buf[22] = 2080;
            v159 = " ";
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnable to create endpoint from redirect headers", buf, 0x20u);
            v19 = 0;
            goto LABEL_252;
          }
        }

LABEL_251:
        v19 = 0;
        goto LABEL_252;
      }

      v14 = nw_http_metadata_copy_request(*(v4 + 456));
      if (v14)
      {
        v111 = v14;
        if (v12 > 1)
        {
          if (status_code == 303)
          {
            v20 = v14;
            has_method = _nw_http_request_has_method(v20, "GET");

            if ((has_method & 1) == 0)
            {
              v22 = v20;
              v23 = _nw_http_request_has_method(v22, "HEAD");

              if ((v23 & 1) == 0)
              {
                goto LABEL_24;
              }
            }
          }
        }

        else
        {
          v15 = v14;
          v16 = _nw_http_request_has_method(v15, "POST");

          if (v16)
          {
LABEL_24:
            *(v4 + 588) &= ~8u;
            v112 = 1;
            goto LABEL_39;
          }
        }

        v112 = 0;
LABEL_39:
        v121 = 0;
        v122 = &v121;
        v123 = 0x3802000000;
        v124 = __Block_byref_object_copy__23;
        v125 = __Block_byref_object_dispose__24;
        v24 = v129[5];
        if (v24)
        {
          v25 = *(v4 + 456);
          if (v25)
          {
            v151 = 0;
            v152 = &v151;
            v153 = 0x3802000000;
            v154 = __Block_byref_object_copy__37;
            v155 = __Block_byref_object_dispose__38;
            v156 = 0;
            v157 = -1;
            v26 = nw_http_metadata_copy_request(v25);
            v27 = v26;
            if (v112)
            {
              v28 = v24;
              url = _nw_endpoint_get_url(v28);

              v30 = nw_http_request_create_from_url("GET", url);
              v31 = v152;
              v32 = *(v152 + 48);
              if ((v32 & 1) != 0 && v152[5])
              {
                v33 = v30;
                os_release(v152[5]);
                v30 = v33;
                v32 = *(v31 + 48);
              }

              v31[5] = v30;
              *(v31 + 48) = v32 | 1;
            }

            else
            {
              v150[0] = MEMORY[0x1E69E9820];
              v150[1] = 0x40000000;
              v150[2] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke;
              v150[3] = &unk_1E6A2B848;
              v150[4] = &v151;
              v150[5] = v24;
              nw_http_request_access_method(v26, v150);
            }

            parameters = nw_protocol_get_parameters(v4);
            v35 = nw_parameters_copy_protocol_options_legacy(parameters, v4);
            if (nw_protocol_options_is_http_redirect(v35) && nw_http_redirect_options_get_for_proxy(v35))
            {
              v36 = nw_masque_copy_proxy_url_endpoint(v4);
              v37 = 1;
              if (!v36)
              {
LABEL_50:
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v38 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_redirect_copy_metadata";
                  _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s failed to get URL endpoint from parameters", buf, 0xCu);
                }

                metadata_for_request = 0;
                goto LABEL_90;
              }
            }

            else
            {
              v36 = nw_parameters_copy_url_endpoint(parameters);
              v37 = 0;
              if (!v36)
              {
                goto LABEL_50;
              }
            }

            object = v36;
            HIDWORD(v109) = v37;
            v40 = v24;
            url_scheme = _nw_endpoint_get_url_scheme();

            if (!url_scheme)
            {
              goto LABEL_59;
            }

            if (!strcasecmp(url_scheme, "https") || !strcasecmp(url_scheme, "http"))
            {
              v42 = 0;
              v43 = 1;
            }

            else
            {
              if (strcasecmp(url_scheme, "wss") && strcasecmp(url_scheme, "ws"))
              {
LABEL_59:
                v42 = 0;
                v43 = 0;
                v146 = 0;
                v147 = &v146;
                v148 = 0x2000000000;
                v149 = 0;
                goto LABEL_67;
              }

              nw_http_request_set_scheme(v152[5]);
              v43 = 0;
              v42 = 1;
            }

            v146 = 0;
            v147 = &v146;
            v148 = 0x2000000000;
            v149 = 0;
            v44 = v152[5];
            v145[0] = MEMORY[0x1E69E9820];
            v145[1] = 0x40000000;
            v145[2] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_44;
            v145[3] = &unk_1E6A2B870;
            v145[4] = &v146;
            nw_http_request_access_authority(v44, v145);
            if (v147[3])
            {
              if ((*(v4 + 198) & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v45 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
LABEL_84:
                  metadata_for_request = 0;
LABEL_89:
                  _Block_object_dispose(&v146, 8);
                  os_release(object);
LABEL_90:
                  if (v35)
                  {
                    os_release(v35);
                  }

                  if (v27)
                  {
                    os_release(v27);
                  }

                  _Block_object_dispose(&v151, 8);
                  v53 = &unk_182B08000;
                  if ((v157 & 1) != 0 && v156)
                  {
                    os_release(v156);
                  }

LABEL_97:
                  v126 = metadata_for_request;
                  v127 |= 1u;
                  v54 = v122[5];
                  v19 = v54 != 0;
                  if (v54)
                  {
                    v55 = os_retain(a3);
                    v56 = *(v4 + 480);
                    if ((v56 & 1) != 0 && *(v4 + 472))
                    {
                      v57 = v55;
                      os_release(*(v4 + 472));
                      v55 = v57;
                      v56 = *(v4 + 480);
                    }

                    *(v4 + 472) = v55;
                    *(v4 + 480) = v56 | 1;
                    if (*(v4 + 488) && *(v4 + 504))
                    {
                      nw_protocol_plugin_retry_begin_async(v4 + 344);
                      v58 = *(v4 + 504);
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = v53[298];
                      block[2] = ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke;
                      block[3] = &unk_1E6A2B7D0;
                      block[4] = &v128;
                      block[5] = &v121;
                      block[6] = v4;
                      dispatch_async(v58, block);
                    }

                    else
                    {
                      nw_protocol_plugin_retry_begin_async(v4 + 344);
                      v59 = *(v4 + 568);
                      v119[0] = MEMORY[0x1E69E9820];
                      v119[1] = v53[298];
                      v119[2] = ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_32;
                      v119[3] = &unk_1E6A2B7F8;
                      v119[4] = &v128;
                      v119[5] = &v121;
                      v119[6] = v4;
                      nw_queue_context_async(v59, v119);
                    }

                    v113 = MEMORY[0x1E69E9820];
                    v114 = v53[298];
                    v115 = ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_2_34;
                    v116 = &unk_1E6A2B820;
                    v117 = &v128;
                    v118 = v4;
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = v114;
                    *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
                    v159 = &unk_1E6A303F0;
                    LODWORD(v161) = 3;
                    BYTE4(v161) = 0;
                    v160 = &v113;
                    os_unfair_lock_lock(&lock);
                    (*&buf[16])(buf);
                    os_unfair_lock_unlock(&lock);
LABEL_123:
                    _Block_object_dispose(&v121, 8);
                    if ((v127 & 1) != 0 && v126)
                    {
                      os_release(v126);
                    }

                    os_release(v111);
LABEL_252:
                    _Block_object_dispose(&v128, 8);
                    if ((v134 & 1) != 0 && v133)
                    {
                      os_release(v133);
                    }

                    os_release(v10);
                    if (v19)
                    {
                      (*(a4 + 16))(a4, 2);
                      return;
                    }

                    goto LABEL_30;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  *buf = 136446210;
                  *&buf[4] = "nw_http_redirect_process";
                  LODWORD(v109) = 12;
                  v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Unable to create new request metadata", buf, v109);
                  LOBYTE(v151) = 16;
                  LOBYTE(v150[0]) = 0;
                  if (__nwlog_fault(v60, &v151, v150))
                  {
                    if (v151 == 17)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v61 = gLogObj;
                      v62 = v151;
                      if (!os_log_type_enabled(gLogObj, v151))
                      {
                        goto LABEL_121;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http_redirect_process";
                      v63 = "%{public}s Unable to create new request metadata";
                      goto LABEL_120;
                    }

                    if (LOBYTE(v150[0]) != 1)
                    {
                      v61 = __nwlog_obj();
                      v62 = v151;
                      if (!os_log_type_enabled(v61, v151))
                      {
                        goto LABEL_121;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http_redirect_process";
                      v63 = "%{public}s Unable to create new request metadata, backtrace limit exceeded";
                      goto LABEL_120;
                    }

                    v64 = __nw_create_backtrace_string();
                    v61 = __nwlog_obj();
                    v62 = v151;
                    v65 = os_log_type_enabled(v61, v151);
                    if (v64)
                    {
                      if (v65)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http_redirect_process";
                        *&buf[12] = 2082;
                        *&buf[14] = v64;
                        _os_log_impl(&dword_181A37000, v61, v62, "%{public}s Unable to create new request metadata, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v64);
                      goto LABEL_121;
                    }

                    if (v65)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http_redirect_process";
                      v63 = "%{public}s Unable to create new request metadata, no backtrace";
LABEL_120:
                      _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
                    }
                  }

LABEL_121:
                  if (v60)
                  {
                    free(v60);
                  }

                  goto LABEL_123;
                }

                *buf = 136446722;
                *&buf[4] = "nw_http_redirect_copy_metadata";
                *&buf[12] = 2082;
                *&buf[14] = v4 + 114;
                *&buf[22] = 2080;
                v159 = " ";
                v46 = "%{public}s %{public}s%sinvalid http URL without authority";
                v47 = v45;
                v48 = 32;
LABEL_83:
                _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_ERROR, v46, buf, v48);
                goto LABEL_84;
              }

              goto LABEL_117;
            }

LABEL_67:
            v49 = object;
            v50 = _nw_endpoint_get_url_scheme();

            if (v50)
            {
              if (!strcasecmp(v50, "https") || !strcasecmp(v50, "http"))
              {
                if (v42)
                {
                  v52 = __nwlog_obj();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http_redirect_copy_metadata";
                    v46 = "%{public}s Cannot redirect from HTTP to websocket";
LABEL_82:
                    v47 = v52;
                    v48 = 12;
                    goto LABEL_83;
                  }

LABEL_117:
                  metadata_for_request = 0;
                  goto LABEL_89;
                }
              }

              else
              {
                if (strcasecmp(v50, "wss"))
                {
                  if (!strcasecmp(v50, "ws"))
                  {
                    v51 = v43;
                  }

                  else
                  {
                    v51 = 0;
                  }

                  if ((v51 & 1) == 0)
                  {
                    goto LABEL_85;
                  }

LABEL_80:
                  v52 = __nwlog_obj();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http_redirect_copy_metadata";
                    v46 = "%{public}s Cannot redirect from websocket to HTTP";
                    goto LABEL_82;
                  }

                  goto LABEL_117;
                }

                if (v43)
                {
                  goto LABEL_80;
                }
              }
            }

LABEL_85:
            v143[0] = 0;
            v143[1] = v143;
            v143[2] = 0x2000000000;
            v144 = 0;
            v142[0] = MEMORY[0x1E69E9820];
            v142[1] = 0x40000000;
            v142[2] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_46;
            v142[3] = &unk_1E6A2B8C0;
            v142[4] = &v151;
            v142[5] = v143;
            nw_http_request_access_authority(v27, v142);
            v138 = 0;
            v139 = &v138;
            v140 = 0x2000000000;
            v141 = 0;
            v137[0] = MEMORY[0x1E69E9820];
            v137[1] = 0x40000000;
            v137[2] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_3;
            v137[3] = &unk_1E6A2B8E8;
            v137[4] = &v138;
            v137[5] = &v151;
            nw_http_request_access_extended_connect_protocol(v27, v137);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_4;
            v159 = &unk_1E6A2B910;
            v163 = v112;
            v161 = &v151;
            v162 = v4;
            v160 = v143;
            nw_http_fields_enumerate(v27, buf);
            if (HIDWORD(v109) && (v139[3] & 1) == 0)
            {
              nw_http_request_set_path(v152[5]);
              nw_http_request_set_scheme(v152[5]);
              v136[0] = MEMORY[0x1E69E9820];
              v136[1] = 0x40000000;
              v136[2] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_5;
              v136[3] = &unk_1E6A2B938;
              v136[4] = &v151;
              nw_http_request_access_authority(v27, v136);
              v135[0] = MEMORY[0x1E69E9820];
              v135[1] = 0x40000000;
              v135[2] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_6;
              v135[3] = &unk_1E6A2B960;
              v135[4] = &v151;
              nw_http_fields_access_value_by_name(v10, "redirect-authorization", v135);
            }

            metadata_for_request = nw_http_create_metadata_for_request(v152[5]);
            _Block_object_dispose(&v138, 8);
            _Block_object_dispose(v143, 8);
            goto LABEL_89;
          }

          v102 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_copy_metadata";
          v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s called with null orig_request_metadata", buf, 12);
          LOBYTE(v151) = 16;
          LOBYTE(v150[0]) = 0;
          if (__nwlog_fault(v98, &v151, v150))
          {
            if (v151 == 17)
            {
              v99 = __nwlog_obj();
              v100 = v151;
              if (!os_log_type_enabled(v99, v151))
              {
                goto LABEL_262;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_redirect_copy_metadata";
              v101 = "%{public}s called with null orig_request_metadata";
              goto LABEL_261;
            }

            if (LOBYTE(v150[0]) != 1)
            {
              v99 = __nwlog_obj();
              v100 = v151;
              if (!os_log_type_enabled(v99, v151))
              {
                goto LABEL_262;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_redirect_copy_metadata";
              v101 = "%{public}s called with null orig_request_metadata, backtrace limit exceeded";
              goto LABEL_261;
            }

            v107 = __nw_create_backtrace_string();
            v99 = __nwlog_obj();
            v100 = v151;
            v108 = os_log_type_enabled(v99, v151);
            if (v107)
            {
              if (v108)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_redirect_copy_metadata";
                *&buf[12] = 2082;
                *&buf[14] = v107;
                _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null orig_request_metadata, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v107);
              if (!v98)
              {
                goto LABEL_264;
              }

              goto LABEL_263;
            }

            if (v108)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_redirect_copy_metadata";
              v101 = "%{public}s called with null orig_request_metadata, no backtrace";
LABEL_261:
              _os_log_impl(&dword_181A37000, v99, v100, v101, buf, 0xCu);
            }
          }
        }

        else
        {
          v97 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_copy_metadata";
          v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null endpoint", buf, 12);
          LOBYTE(v151) = 16;
          LOBYTE(v150[0]) = 0;
          if (!__nwlog_fault(v98, &v151, v150))
          {
            goto LABEL_262;
          }

          if (v151 == 17)
          {
            v99 = __nwlog_obj();
            v100 = v151;
            if (!os_log_type_enabled(v99, v151))
            {
              goto LABEL_262;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_redirect_copy_metadata";
            v101 = "%{public}s called with null endpoint";
            goto LABEL_261;
          }

          if (LOBYTE(v150[0]) != 1)
          {
            v99 = __nwlog_obj();
            v100 = v151;
            if (!os_log_type_enabled(v99, v151))
            {
              goto LABEL_262;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_redirect_copy_metadata";
            v101 = "%{public}s called with null endpoint, backtrace limit exceeded";
            goto LABEL_261;
          }

          v105 = __nw_create_backtrace_string();
          v99 = __nwlog_obj();
          v100 = v151;
          v106 = os_log_type_enabled(v99, v151);
          if (!v105)
          {
            if (!v106)
            {
              goto LABEL_262;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_redirect_copy_metadata";
            v101 = "%{public}s called with null endpoint, no backtrace";
            goto LABEL_261;
          }

          if (v106)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_redirect_copy_metadata";
            *&buf[12] = 2082;
            *&buf[14] = v105;
            _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v105);
        }

LABEL_262:
        if (!v98)
        {
LABEL_264:
          metadata_for_request = 0;
          v53 = &unk_182B08000;
          goto LABEL_97;
        }

LABEL_263:
        free(v98);
        goto LABEL_264;
      }

      v92 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_redirect_process";
      v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s called with null request", buf, 12);
      LOBYTE(v151) = 16;
      LOBYTE(v121) = 0;
      if (__nwlog_fault(v93, &v151, &v121))
      {
        if (v151 == 17)
        {
          v94 = __nwlog_obj();
          v95 = v151;
          if (!os_log_type_enabled(v94, v151))
          {
            goto LABEL_249;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_process";
          v96 = "%{public}s called with null request";
          goto LABEL_248;
        }

        if (v121 != 1)
        {
          v94 = __nwlog_obj();
          v95 = v151;
          if (!os_log_type_enabled(v94, v151))
          {
            goto LABEL_249;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_process";
          v96 = "%{public}s called with null request, backtrace limit exceeded";
          goto LABEL_248;
        }

        v103 = __nw_create_backtrace_string();
        v94 = __nwlog_obj();
        v95 = v151;
        v104 = os_log_type_enabled(v94, v151);
        if (v103)
        {
          if (v104)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_redirect_process";
            *&buf[12] = 2082;
            *&buf[14] = v103;
            _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v103);
          goto LABEL_249;
        }

        if (v104)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_process";
          v96 = "%{public}s called with null request, no backtrace";
LABEL_248:
          _os_log_impl(&dword_181A37000, v94, v95, v96, buf, 0xCu);
        }
      }

LABEL_249:
      if (v93)
      {
        free(v93);
      }

      goto LABEL_251;
    }

    v75 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_process";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null response", buf, 12);
    LOBYTE(v151) = 16;
    LOBYTE(v128) = 0;
    if (__nwlog_fault(v76, &v151, &v128))
    {
      if (v151 == 17)
      {
        v77 = __nwlog_obj();
        v78 = v151;
        if (!os_log_type_enabled(v77, v151))
        {
          goto LABEL_222;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_redirect_process";
        v79 = "%{public}s called with null response";
        goto LABEL_221;
      }

      if (v128 != 1)
      {
        v77 = __nwlog_obj();
        v78 = v151;
        if (!os_log_type_enabled(v77, v151))
        {
          goto LABEL_222;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_redirect_process";
        v79 = "%{public}s called with null response, backtrace limit exceeded";
        goto LABEL_221;
      }

      v88 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = v151;
      v89 = os_log_type_enabled(v77, v151);
      if (v88)
      {
        if (v89)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_redirect_process";
          *&buf[12] = 2082;
          *&buf[14] = v88;
          _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v88);
        goto LABEL_222;
      }

      if (v89)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_redirect_process";
        v79 = "%{public}s called with null response, no backtrace";
LABEL_221:
        _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
      }
    }

LABEL_222:
    if (v76)
    {
      free(v76);
    }

    goto LABEL_30;
  }

  v74 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "operator()";
  v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null completion", buf, 12);
  LOBYTE(v151) = 16;
  LOBYTE(v128) = 0;
  if (!__nwlog_fault(v67, &v151, &v128))
  {
    goto LABEL_217;
  }

  if (v151 == 17)
  {
    v68 = __nwlog_obj();
    v69 = v151;
    if (!os_log_type_enabled(v68, v151))
    {
      goto LABEL_217;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v70 = "%{public}s called with null completion";
    goto LABEL_216;
  }

  if (v128 != 1)
  {
    v68 = __nwlog_obj();
    v69 = v151;
    if (!os_log_type_enabled(v68, v151))
    {
      goto LABEL_217;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v70 = "%{public}s called with null completion, backtrace limit exceeded";
    goto LABEL_216;
  }

  v82 = __nw_create_backtrace_string();
  v68 = __nwlog_obj();
  v69 = v151;
  v87 = os_log_type_enabled(v68, v151);
  if (!v82)
  {
    if (!v87)
    {
      goto LABEL_217;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v70 = "%{public}s called with null completion, no backtrace";
    goto LABEL_216;
  }

  if (v87)
  {
    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v82;
    v84 = "%{public}s called with null completion, dumping backtrace:%{public}s";
    goto LABEL_172;
  }

LABEL_173:
  free(v82);
  if (v67)
  {
LABEL_218:
    free(v67);
  }
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__22(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__24(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__38(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke(uint64_t a1, uint64_t a2)
{
  url = nw_endpoint_get_url(*(a1 + 40));
  result = nw_http_request_create_from_url(a2, url);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 48);
  if ((v7 & 1) != 0 && *(v6 + 40))
  {
    v8 = result;
    os_release(*(v6 + 40));
    result = v8;
    v7 = *(v6 + 48);
  }

  *(v6 + 40) = result;
  *(v6 + 48) = v7 | 1;
  return result;
}

uint64_t ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_44(uint64_t result, _BYTE *a2)
{
  if (!a2 || !*a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_46(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_2;
  v3[3] = &unk_1E6A2B898;
  v3[4] = *(a1 + 40);
  v3[5] = a2;
  nw_http_request_access_authority(v2, v3);
}

void ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  nw_http_request_set_extended_connect_protocol(*(*(*(a1 + 40) + 8) + 40));
}

uint64_t ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 56) != 1 || (a3 < 9 || strncasecmp(a2, "content-", 8uLL)) && strcasecmp(a2, "digest") && strcasecmp(a2, "Last-Modified"))
  {
    if ((v7 = *(*(a1 + 48) + 588), (v7 & 2) != 0) && (*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || strcasecmp(a2, "Cookie"))
    {
      if (strcasecmp(a2, "Authorization") && strcasecmp(a2, "Proxy-Authorization") && ((v7 & 4) != 0 || strcasecmp(a2, "Accept-Encoding")) && ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || strcasecmp(a2, "Origin")))
      {
        nw_http_fields_append(*(*(*(a1 + 40) + 8) + 40), a2, a4);
      }
    }
  }

  return 1;
}

void ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_5(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    nw_http_request_set_authority(*(*(*(result + 32) + 8) + 40));
  }
}

void ___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    nw_http_fields_append(*(*(*(a1 + 32) + 8) + 40), "redirect-authorization", a2);
  }
}

uint64_t ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke(uint64_t a1)
{
  nw_protocol_get_parameters(*(a1 + 48));
  v2 = *(a1 + 48);
  v4 = MEMORY[0x1E69E9820];
  v5 = 0x40000000;
  v6 = ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_2;
  v7 = &__block_descriptor_tmp_30_1374;
  v8 = v2;
  return (*(*(v2 + 488) + 16))();
}

void ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_32(void *a1)
{
  v2 = nw_protocol_plugin_retry_end_async(a1[6] + 344);
  v3 = a1[6];
  if (v2)
  {
    v4 = nw_context_copy_registered_endpoint(*(v3 + 568), *(*(a1[4] + 8) + 40));
    v5 = *(*(a1[5] + 8) + 40);
    if (v5)
    {
      v6 = os_retain(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[6];
    v8 = *(v7 + 464);
    if (v8)
    {
      v9 = *(v7 + 456);
      if (v9)
      {
        os_release(v9);
        v8 = *(v7 + 464);
      }
    }

    *(v7 + 456) = v6;
    *(v7 + 464) = v8 | 1;
    nw_http_redirect_reissue(a1[6], v4, 0, *(*(a1[5] + 8) + 40));
    if (v4)
    {

      os_release(v4);
    }
  }

  else
  {

    nw_http_redirect_destroy(v3);
  }
}

void ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_2_34(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = v3 + 114;
    url = nw_endpoint_get_url(*(v3 + 536));
    v6 = nw_endpoint_get_url(*(*(*(a1 + 32) + 8) + 40));
    v7 = 136446978;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = url;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s%sRedirecting from %s to %s.", &v7, 0x2Au);
  }
}

void nw_http_redirect_reissue(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_reissue";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null http_redirect", buf, 12);
    LOBYTE(v46[0]) = 16;
    LOBYTE(v49) = 0;
    if (!__nwlog_fault(v26, v46, &v49))
    {
      goto LABEL_75;
    }

    if (LOBYTE(v46[0]) == 17)
    {
      v27 = __nwlog_obj();
      v28 = v46[0];
      if (!os_log_type_enabled(v27, v46[0]))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_redirect_reissue";
      v29 = "%{public}s called with null http_redirect";
    }

    else if (v49 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = v46[0];
      v33 = os_log_type_enabled(v27, v46[0]);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_redirect_reissue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null http_redirect, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_75:
        if (!v26)
        {
          return;
        }

        goto LABEL_76;
      }

      if (!v33)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_redirect_reissue";
      v29 = "%{public}s called with null http_redirect, no backtrace";
    }

    else
    {
      v27 = __nwlog_obj();
      v28 = v46[0];
      if (!os_log_type_enabled(v27, v46[0]))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_redirect_reissue";
      v29 = "%{public}s called with null http_redirect, backtrace limit exceeded";
    }

    goto LABEL_74;
  }

  if (!a2)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_reissue";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null endpoint", buf, 12);
    LOBYTE(v46[0]) = 16;
    LOBYTE(v49) = 0;
    if (!__nwlog_fault(v26, v46, &v49))
    {
      goto LABEL_75;
    }

    if (LOBYTE(v46[0]) != 17)
    {
      if (v49 != 1)
      {
        v27 = __nwlog_obj();
        v28 = v46[0];
        if (!os_log_type_enabled(v27, v46[0]))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_redirect_reissue";
        v29 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_74;
      }

      v34 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = v46[0];
      v35 = os_log_type_enabled(v27, v46[0]);
      if (!v34)
      {
        if (!v35)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_redirect_reissue";
        v29 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_74;
      }

      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_redirect_reissue";
        *&buf[12] = 2082;
        *&buf[14] = v34;
        v36 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_59:
        _os_log_impl(&dword_181A37000, v27, v28, v36, buf, 0x16u);
      }

LABEL_60:
      free(v34);
      if (!v26)
      {
        return;
      }

LABEL_76:
      free(v26);
      return;
    }

    v27 = __nwlog_obj();
    v28 = v46[0];
    if (!os_log_type_enabled(v27, v46[0]))
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_reissue";
    v29 = "%{public}s called with null endpoint";
LABEL_74:
    _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
    goto LABEL_75;
  }

  if (!a4)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_reissue";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null _request_metadata", buf, 12);
    LOBYTE(v46[0]) = 16;
    LOBYTE(v49) = 0;
    if (!__nwlog_fault(v26, v46, &v49))
    {
      goto LABEL_75;
    }

    if (LOBYTE(v46[0]) == 17)
    {
      v27 = __nwlog_obj();
      v28 = v46[0];
      if (!os_log_type_enabled(v27, v46[0]))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_redirect_reissue";
      v29 = "%{public}s called with null _request_metadata";
      goto LABEL_74;
    }

    if (v49 != 1)
    {
      v27 = __nwlog_obj();
      v28 = v46[0];
      if (!os_log_type_enabled(v27, v46[0]))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_redirect_reissue";
      v29 = "%{public}s called with null _request_metadata, backtrace limit exceeded";
      goto LABEL_74;
    }

    v34 = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = v46[0];
    v37 = os_log_type_enabled(v27, v46[0]);
    if (!v34)
    {
      if (!v37)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_redirect_reissue";
      v29 = "%{public}s called with null _request_metadata, no backtrace";
      goto LABEL_74;
    }

    if (v37)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_redirect_reissue";
      *&buf[12] = 2082;
      *&buf[14] = v34;
      v36 = "%{public}s called with null _request_metadata, dumping backtrace:%{public}s";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if ((*(a1 + 198) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 584);
      *buf = 136446978;
      *&buf[4] = "nw_http_redirect_reissue";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 114;
      *&buf[22] = 2080;
      v60 = " ";
      LOWORD(v61) = 1024;
      *(&v61 + 2) = v9;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%staking redirect, remaining limit %u", buf, 0x26u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v60 = __Block_byref_object_copy__25;
  v61 = __Block_byref_object_dispose__26;
  parameters = nw_protocol_get_parameters(a1);
  if (parameters)
  {
    parameters = os_retain(parameters);
  }

  v62 = parameters;
  v63 |= 1u;
  nw_http_messaging_options_create_transaction_in_parameters(*(*&buf[8] + 40), a1, 1);
  nw_protocol_plugin_metadata_prepare_for_reissue((a1 + 200), 0);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3802000000;
  v46[3] = __Block_byref_object_copy__23;
  v46[4] = __Block_byref_object_dispose__24;
  v47 = os_retain(a4);
  v48 |= 1u;
  v11 = (*(a1 + 588) & 8) == 0;
  v12 = *(a1 + 568);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = ___ZL24nw_http_redirect_reissueP25nw_protocol_http_redirectP11nw_endpointP13nw_parametersP20nw_protocol_metadata_block_invoke;
  v44[3] = &unk_1E6A2B988;
  v44[4] = v46;
  v45 = v11;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v42[2] = ___ZL24nw_http_redirect_reissueP25nw_protocol_http_redirectP11nw_endpointP13nw_parametersP20nw_protocol_metadata_block_invoke_2;
  v42[3] = &unk_1E6A2B9D8;
  v42[5] = v46;
  v42[6] = a1;
  v43 = v11;
  v42[4] = buf;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 0x40000000;
  v41[2] = ___ZL24nw_http_redirect_reissueP25nw_protocol_http_redirectP11nw_endpointP13nw_parametersP20nw_protocol_metadata_block_invoke_4;
  v41[3] = &__block_descriptor_tmp_63;
  v41[4] = a1;
  nw_protocol_plugin_retry_reissue_output_frames(a1 + 344, a1, v12, a2, a3, 2, 1, v44, v42, v41);
  v13 = *(a1 + 584);
  *(a1 + 584) = v13 - 1;
  if (v13)
  {
    goto LABEL_27;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = *(a1 + 584);
  v49 = 136446978;
  v50 = "nw_http_redirect_reissue";
  v51 = 2082;
  v52 = "http_redirect->limit";
  v53 = 2048;
  v54 = 1;
  v55 = 2048;
  v56 = v14;
  LODWORD(v38) = 42;
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &v49, v38);
  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v15, &type, &v39))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v18 = *(a1 + 584);
        v49 = 136446978;
        v50 = "nw_http_redirect_reissue";
        v51 = 2082;
        v52 = "http_redirect->limit";
        v53 = 2048;
        v54 = 1;
        v55 = 2048;
        v56 = v18;
        v19 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_23:
        _os_log_impl(&dword_181A37000, v16, v17, v19, &v49, 0x2Au);
      }
    }

    else if (v39 == 1)
    {
      v20 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v21 = os_log_type_enabled(gLogObj, type);
      if (v20)
      {
        if (v21)
        {
          v22 = *(a1 + 584);
          v49 = 136447234;
          v50 = "nw_http_redirect_reissue";
          v51 = 2082;
          v52 = "http_redirect->limit";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v22;
          v57 = 2082;
          v58 = v20;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", &v49, 0x34u);
        }

        free(v20);
        goto LABEL_24;
      }

      if (v21)
      {
        v24 = *(a1 + 584);
        v49 = 136446978;
        v50 = "nw_http_redirect_reissue";
        v51 = 2082;
        v52 = "http_redirect->limit";
        v53 = 2048;
        v54 = 1;
        v55 = 2048;
        v56 = v24;
        v19 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
        goto LABEL_23;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v23 = *(a1 + 584);
        v49 = 136446978;
        v50 = "nw_http_redirect_reissue";
        v51 = 2082;
        v52 = "http_redirect->limit";
        v53 = 2048;
        v54 = 1;
        v55 = 2048;
        v56 = v23;
        v19 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (v15)
  {
    free(v15);
  }

  *(a1 + 584) = 0;
LABEL_27:
  _Block_object_dispose(v46, 8);
  if ((v48 & 1) != 0 && v47)
  {
    os_release(v47);
  }

  _Block_object_dispose(buf, 8);
  if (v63)
  {
    if (v62)
    {
      os_release(v62);
    }
  }
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__26(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

BOOL ___ZL24nw_http_redirect_reissueP25nw_protocol_http_redirectP11nw_endpointP13nw_parametersP20nw_protocol_metadata_block_invoke_2(uint64_t a1)
{
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v2 = nw_protocol_copy_http_client_definition_definition;
  identifier = nw_protocol_definition_get_identifier(v2);
  if (v2)
  {
    os_release(v2);
  }

  v4 = *(a1 + 48);
  do
  {
    v4 = *(v4 + 48);
    if (!v4)
    {
      return 1;
    }
  }

  while (!nw_protocols_are_equal(*(v4 + 16), identifier));
  v5 = nw_parameters_copy_protocol_options_legacy(*(*(*(a1 + 32) + 8) + 40), v4);
  v6 = nw_http_client_options_copy_resend_handler(v5);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZL24nw_http_redirect_reissueP25nw_protocol_http_redirectP11nw_endpointP13nw_parametersP20nw_protocol_metadata_block_invoke_3;
    v12[3] = &unk_1E6A2B9B0;
    v12[4] = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = v6;
    (*(v6 + 2))(v6, *(v8 + 40), 0, v9, v12);
    _Block_release(v10);
  }

  if (v5)
  {
    os_release(v5);
  }

  return v7;
}

void ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_2(uint64_t a1, void *object, void *a3, void *a4)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3802000000;
  v22[3] = __Block_byref_object_copy__21;
  v22[4] = __Block_byref_object_dispose__22;
  if (object)
  {
    v7 = os_retain(object);
    v8 = v24 | 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  v23 = v7;
  v24 = v8;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3802000000;
  v19[3] = __Block_byref_object_copy__25;
  v19[4] = __Block_byref_object_dispose__26;
  if (a3)
  {
    v9 = os_retain(a3);
    v10 = v21 | 1;
  }

  else
  {
    v9 = 0;
    v10 = -1;
  }

  v20 = v9;
  v21 = v10;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3802000000;
  v16[3] = __Block_byref_object_copy__23;
  v16[4] = __Block_byref_object_dispose__24;
  if (a4)
  {
    v11 = os_retain(a4);
    v12 = v18 | 1;
  }

  else
  {
    v11 = 0;
    v12 = -1;
  }

  objecta = v11;
  v18 = v12;
  v13 = *(a1 + 32);
  v14 = *(v13 + 568);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_27;
  v15[3] = &unk_1E6A2B788;
  v15[4] = v16;
  v15[5] = v22;
  v15[6] = v19;
  v15[7] = v13;
  nw_queue_context_async_if_needed(v14, v15);
  _Block_object_dispose(v16, 8);
  if ((v18 & 1) != 0 && objecta)
  {
    os_release(objecta);
  }

  _Block_object_dispose(v19, 8);
  if ((v21 & 1) != 0 && v20)
  {
    os_release(v20);
  }

  _Block_object_dispose(v22, 8);
  if (v24)
  {
    if (v23)
    {
      os_release(v23);
    }
  }
}

void ___ZL24nw_http_redirect_processP25nw_protocol_http_redirectP20nw_protocol_metadata_block_invoke_27(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(a1[7] + 344))
  {
    v2 = a1[7];
    if (*(*(a1[4] + 8) + 40))
    {
      if ((*(v2 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        v2 = a1[7];
        if (v15)
        {
          v18 = 136446722;
          v19 = "nw_http_redirect_process_block_invoke";
          v20 = 2082;
          v21 = (v2 + 114);
          v22 = 2080;
          v23 = " ";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived new request metadata from redirect handler", &v18, 0x20u);
          v2 = a1[7];
        }
      }

      v3 = nw_context_copy_registered_endpoint(*(v2 + 568), *(*(a1[5] + 8) + 40));
      v4 = *(*(a1[4] + 8) + 40);
      if (v4)
      {
        v5 = os_retain(v4);
      }

      else
      {
        v5 = 0;
      }

      v9 = a1[7];
      v10 = *(v9 + 464);
      if (v10)
      {
        v11 = *(v9 + 456);
        if (v11)
        {
          os_release(v11);
          v10 = *(v9 + 464);
        }
      }

      *(v9 + 456) = v5;
      *(v9 + 464) = v10 | 1;
      nw_http_redirect_reissue(a1[7], v3, *(*(a1[6] + 8) + 40), *(*(a1[4] + 8) + 40));
      if (v3)
      {
        os_release(v3);
      }
    }

    else
    {
      v7 = *(v2 + 48);
      if (v7)
      {
        v8 = *(v7 + 24);
        if (v8)
        {
          if (*(v8 + 64))
          {
            if ((*(v2 + 198) & 1) == 0 && gLogDatapath == 1)
            {
              v16 = __nwlog_obj();
              v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
              v2 = a1[7];
              if (v17)
              {
                v18 = 136446722;
                v19 = "nw_http_redirect_process_block_invoke";
                v20 = 2082;
                v21 = (v2 + 114);
                v22 = 2080;
                v23 = " ";
                _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived no request metadata from redirect handler", &v18, 0x20u);
                v2 = a1[7];
              }
            }

            nw_protocol_plugin_metadata_resume_input(v2 + 200, 1);
            *(a1[7] + 588) &= ~0x10u;
            nw_protocol_input_available(*(a1[7] + 48), a1[7]);
          }
        }
      }
    }
  }

  else
  {
    v6 = a1[7];
    if ((v6[198] & 1) == 0 && gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      v6 = a1[7];
      if (v13)
      {
        v18 = 136446722;
        v19 = "nw_http_redirect_process_block_invoke";
        v20 = 2082;
        v21 = v6 + 114;
        v22 = 2080;
        v23 = " ";
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDeferred destroy when coming back from callout", &v18, 0x20u);
        v6 = a1[7];
      }
    }

    nw_http_redirect_destroy(v6);
  }
}

const char *___ZL30nw_http_redirect_copy_metadataP25nw_protocol_http_redirectP11nw_endpointP20nw_protocol_metadataP14nw_http_fieldsb_block_invoke_2(uint64_t a1, const char *a2)
{
  result = *(a1 + 40);
  if (a2 && result)
  {
    result = strcmp(result, a2);
    v4 = result == 0;
  }

  else
  {
    v4 = result == a2;
  }

  v5 = v4;
  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void ___ZL39nw_protocol_http_redirect_get_callbacksv_block_invoke()
{
  nw_protocol_http_redirect_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840998 = nw_protocol_common_replace_input_handler;
  qword_1EA8409D8 = nw_protocol_common_get_input_frames;
  qword_1EA8409E0 = nw_protocol_common_get_output_frames;
  qword_1EA8409E8 = nw_protocol_common_finalize_output_frames;
  qword_1EA8409F8 = nw_protocol_common_get_parameters;
  qword_1EA840A00 = nw_protocol_common_get_path;
  qword_1EA840A10 = nw_protocol_common_get_remote_endpoint;
  qword_1EA840A08 = nw_protocol_common_get_local_endpoint;
  qword_1EA840A50 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840A58 = nw_protocol_common_get_output_interface;
  qword_1EA8409A0 = nw_protocol_common_connect;
  qword_1EA8409B0 = nw_protocol_common_connected;
  qword_1EA8409A8 = nw_protocol_common_disconnect;
  qword_1EA8409B8 = nw_protocol_common_disconnected;
  qword_1EA8409C8 = nw_protocol_common_input_available;
  qword_1EA8409D0 = nw_protocol_common_output_available;
  qword_1EA840A40 = nw_protocol_common_input_finished;
  qword_1EA840A48 = nw_protocol_common_output_finished;
  qword_1EA840A90 = nw_protocol_common_input_flush;
  qword_1EA8409C0 = nw_protocol_common_error;
  qword_1EA840A88 = nw_protocol_common_reset;
  qword_1EA840A80 = nw_protocol_common_get_message_properties;
  qword_1EA840A68 = nw_protocol_common_copy_info;
  qword_1EA840A38 = nw_protocol_common_supports_external_data;
  qword_1EA840A60 = nw_protocol_common_waiting_for_output;
  qword_1EA840A18 = nw_protocol_common_register_notification;
  qword_1EA840A20 = nw_protocol_common_unregister_notification;
  qword_1EA840A28 = nw_protocol_common_notify;
  qword_1EA840A30 = nw_protocol_common_updated_path;
  qword_1EA8409F0 = nw_protocol_common_link_state;
  qword_1EA840990 = nw_protocol_http_redirect_remove_input_handler;
}

uint64_t ___ZL26nw_context_dealloc_globalsP21NWConcrete_nw_context_block_invoke(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  v5 = *extra;
  v6 = v3;
  v7 = v6;
  if (!v6)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_definition_deallocate_globals";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v33 = "nw_protocol_definition_deallocate_globals";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v12)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v12);
        goto LABEL_5;
      }

      if (v21)
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v27, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v8 = *(v6 + 9);
  if (!v8)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_definition_deallocate_globals";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null definition->common_state", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null definition->common_state", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v30 != 1)
    {
      v13 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v28, "%{public}s called with null definition->common_state, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v13, type);
    if (!v22)
    {
      if (v24)
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null definition->common_state, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v33 = "nw_protocol_definition_deallocate_globals";
      v34 = 2082;
      v35 = v22;
      _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_definition_deallocate_globals";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null definition->common_state->deallocate_globals", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, &type, &v30))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null definition->common_state->deallocate_globals", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v30 != 1)
    {
      v13 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null definition->common_state->deallocate_globals, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v22 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v13, type);
    if (!v22)
    {
      if (v26)
      {
        *buf = 136446210;
        v33 = "nw_protocol_definition_deallocate_globals";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null definition->common_state->deallocate_globals, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26)
    {
      *buf = 136446466;
      v33 = "nw_protocol_definition_deallocate_globals";
      v34 = 2082;
      v35 = v22;
      _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null definition->common_state->deallocate_globals, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v22);
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v9(v6, v5);
LABEL_5:

  *extra = 0;
  return 1;
}

uint64_t ___ZL51nw_context_get_active_instance_count_for_hash_tableP21NWConcrete_nw_contextP13nw_hash_table_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL51nw_context_get_active_instance_count_for_hash_tableP21NWConcrete_nw_contextP13nw_hash_table_block_invoke_2;
  v7[3] = &unk_1E6A3CD58;
  v6 = *(a1 + 32);
  v4 = v6;
  v8 = v6;
  nw_hash_table_apply(object, v7);

  return 1;
}

uint64_t ___ZL51nw_context_get_active_instance_count_for_hash_tableP21NWConcrete_nw_contextP13nw_hash_table_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = nw_hash_node_get_object(a2);
  *(*(*(a1 + 40) + 8) + 24) += nw_context_endpoint_get_active_instance_count(*(a1 + 32), v3);

  return 1;
}

BOOL nw_context_get_isolate_protocol_cache(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[152] & 3) != 0;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_context_get_isolate_protocol_cache";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null context", buf, 12);

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
        v15 = "nw_context_get_isolate_protocol_cache";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_context_get_isolate_protocol_cache";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_context_get_isolate_protocol_cache";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_context_get_isolate_protocol_cache";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_context_cancel(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v52 = 0;
    pthread_threadid_np(0, &v52);
    if (*(v1 + 32) != 4)
    {
      goto LABEL_3;
    }

    v20 = 0;
    atomic_compare_exchange_strong(v1 + 15, &v20, v52);
    if (!v20)
    {
      goto LABEL_3;
    }

    v21 = __nwlog_obj();
    *buf = 136446722;
    v55 = "nw_context_cancel";
    v56 = 2048;
    v57 = v52;
    v58 = 2048;
    v59 = v20;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v22, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446722;
          v55 = "nw_context_cancel";
          v56 = 2048;
          v57 = v52;
          v58 = 2048;
          v59 = v20;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu", buf, 0x20u);
        }
      }

      else if (v51 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v23, type);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446978;
            v55 = "nw_context_cancel";
            v56 = 2048;
            v57 = v52;
            v58 = 2048;
            v59 = v20;
            v60 = 2082;
            v61 = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v43, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_98;
        }

        if (v44)
        {
          *buf = 136446722;
          v55 = "nw_context_cancel";
          v56 = 2048;
          v57 = v52;
          v58 = 2048;
          v59 = v20;
          _os_log_impl(&dword_181A37000, v23, v43, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446722;
          v55 = "nw_context_cancel";
          v56 = 2048;
          v57 = v52;
          v58 = 2048;
          v59 = v20;
          _os_log_impl(&dword_181A37000, v23, v45, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_98:
    if (v22)
    {
      free(v22);
    }

LABEL_3:
    if (*(v1 + 33) != 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v55 = "nw_context_cancel";
        v56 = 2114;
        v57 = v1;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s Cancelling context %{public}@", buf, 0x16u);
      }
    }

    v3 = nw_context_copy_globals_context(v1);
    v4 = v3;
    if ((*(v3 + 152) & 8) != 0)
    {
      v5 = *(v3 + 4);
      v6 = *(v5 + 108);
      if (v6)
      {
        if (_nw_array_get_count(v6))
        {
LABEL_13:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          *buf = 136446210;
          v55 = "nw_context_cancel";
          LODWORD(v50) = 12;
          v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Calling cancel context while blocks remain on the inline queues", buf, v50);

          type = OS_LOG_TYPE_ERROR;
          v51 = 0;
          if (!__nwlog_fault(v9, &type, &v51))
          {
            goto LABEL_32;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v55 = "nw_context_cancel";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Calling cancel context while blocks remain on the inline queues", buf, 0xCu);
            }
          }

          else if (v51 == 1)
          {
            v12 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v13 = type;
            v14 = os_log_type_enabled(v10, type);
            if (v12)
            {
              if (v14)
              {
                *buf = 136446466;
                v55 = "nw_context_cancel";
                v56 = 2082;
                v57 = v12;
                _os_log_impl(&dword_181A37000, v10, v13, "%{public}s Calling cancel context while blocks remain on the inline queues, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v12);
              if (!v9)
              {
                goto LABEL_34;
              }

              goto LABEL_33;
            }

            if (v14)
            {
              *buf = 136446210;
              v55 = "nw_context_cancel";
              _os_log_impl(&dword_181A37000, v10, v13, "%{public}s Calling cancel context while blocks remain on the inline queues, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v15 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v55 = "nw_context_cancel";
              _os_log_impl(&dword_181A37000, v10, v15, "%{public}s Calling cancel context while blocks remain on the inline queues, backtrace limit exceeded", buf, 0xCu);
            }
          }

          goto LABEL_31;
        }

        v5 = *(v4 + 4);
      }

      v7 = *(v5 + 124);
      if (v7 && _nw_array_get_count(v7))
      {
        goto LABEL_13;
      }

      *(v4 + 152) |= 0x10u;
      if ((*(v1 + 152) & 8) == 0 || (v33 = v52, v34 = v52, atomic_compare_exchange_strong(v1 + 15, &v34, 0), v34 == v33))
      {
LABEL_19:
        nw_context_dealloc(v1, 1);
        goto LABEL_34;
      }

      v35 = __nwlog_obj();
      *buf = 136446722;
      v55 = "nw_context_cancel";
      v56 = 2048;
      v57 = v52;
      v58 = 2048;
      v36 = v34;
      v59 = v34;
      LODWORD(v50) = 32;
      v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s Exiting call, expected inline TID to be %llu but got %llu", buf, v50);

      type = OS_LOG_TYPE_ERROR;
      v51 = 0;
      if (__nwlog_fault(v37, &type, &v51))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446722;
            v55 = "nw_context_cancel";
            v56 = 2048;
            v57 = v52;
            v58 = 2048;
            v59 = v36;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Exiting call, expected inline TID to be %llu but got %llu", buf, 0x20u);
          }
        }

        else if (v51 == 1)
        {
          v46 = __nw_create_backtrace_string();
          v38 = __nwlog_obj();
          v47 = type;
          v48 = os_log_type_enabled(v38, type);
          if (v46)
          {
            if (v48)
            {
              *buf = 136446978;
              v55 = "nw_context_cancel";
              v56 = 2048;
              v57 = v52;
              v58 = 2048;
              v59 = v36;
              v60 = 2082;
              v61 = v46;
              _os_log_impl(&dword_181A37000, v38, v47, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v46);
            goto LABEL_106;
          }

          if (v48)
          {
            *buf = 136446722;
            v55 = "nw_context_cancel";
            v56 = 2048;
            v57 = v52;
            v58 = 2048;
            v59 = v36;
            _os_log_impl(&dword_181A37000, v38, v47, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v38 = __nwlog_obj();
          v49 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446722;
            v55 = "nw_context_cancel";
            v56 = 2048;
            v57 = v52;
            v58 = 2048;
            v59 = v36;
            _os_log_impl(&dword_181A37000, v38, v49, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_106:
      if (v37)
      {
        free(v37);
      }

      goto LABEL_19;
    }

    v25 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_context_cancel";
    LODWORD(v50) = 12;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null globals_context->is_inline", buf, v50);

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v9, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v55 = "nw_context_cancel";
          _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null globals_context->is_inline", buf, 0xCu);
        }

LABEL_31:

        goto LABEL_32;
      }

      if (v51 != 1)
      {
        v10 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v55 = "nw_context_cancel";
          _os_log_impl(&dword_181A37000, v10, v41, "%{public}s called with null globals_context->is_inline, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_31;
      }

      v30 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v10, type);
      if (!v30)
      {
        if (v32)
        {
          *buf = 136446210;
          v55 = "nw_context_cancel";
          _os_log_impl(&dword_181A37000, v10, v31, "%{public}s called with null globals_context->is_inline, no backtrace", buf, 0xCu);
        }

        goto LABEL_31;
      }

      if (v32)
      {
        *buf = 136446466;
        v55 = "nw_context_cancel";
        v56 = 2082;
        v57 = v30;
        _os_log_impl(&dword_181A37000, v10, v31, "%{public}s called with null globals_context->is_inline, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v30);
    }

LABEL_32:
    if (v9)
    {
LABEL_33:
      free(v9);
    }

LABEL_34:

    goto LABEL_35;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v55 = "nw_context_cancel";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null context", buf, 12);

  LOBYTE(v52) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v17, &v52, &type))
  {
    if (v52 == 17)
    {
      v18 = __nwlog_obj();
      v19 = v52;
      if (os_log_type_enabled(v18, v52))
      {
        *buf = 136446210;
        v55 = "nw_context_cancel";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v27 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v28 = v52;
      v29 = os_log_type_enabled(v18, v52);
      if (v27)
      {
        if (v29)
        {
          *buf = 136446466;
          v55 = "nw_context_cancel";
          v56 = 2082;
          v57 = v27;
          _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v27);
        goto LABEL_77;
      }

      if (v29)
      {
        *buf = 136446210;
        v55 = "nw_context_cancel";
        _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v40 = v52;
      if (os_log_type_enabled(v18, v52))
      {
        *buf = 136446210;
        v55 = "nw_context_cancel";
        _os_log_impl(&dword_181A37000, v18, v40, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_77:
  if (v17)
  {
    free(v17);
  }

LABEL_35:
}