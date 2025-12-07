BOOL tcp_connection_conditions_met(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_conditions_met";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v8, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v19 = "tcp_connection_conditions_met";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v19 = "tcp_connection_conditions_met";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v14)
        {
          *buf = 136446210;
          v19 = "tcp_connection_conditions_met";
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v19 = "tcp_connection_conditions_met";
          _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_14;
    }

LABEL_10:
    free(v8);
    goto LABEL_11;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[8]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = v3;
    status = _nw_path_get_status(v4);

    v6 = status == 1;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_14:

  return v6;
}

uint64_t tcp_connection_conditions_get_unmet_reason(void *a1)
{
  *&v32[13] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v30 = "tcp_connection_conditions_get_unmet_reason";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v15 = "%{public}s called with null connection";
LABEL_39:
        v25 = v13;
        v26 = v14;
        goto LABEL_40;
      }

      if (v27 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v15 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (!v21)
        {
LABEL_41:

          if (!v12)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        *buf = 136446210;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v15 = "%{public}s called with null connection, no backtrace";
        v25 = v13;
        v26 = v20;
LABEL_40:
        _os_log_impl(&dword_181A37000, v25, v26, v15, buf, 0xCu);
        goto LABEL_41;
      }

      if (v21)
      {
        *buf = 136446466;
        v30 = "tcp_connection_conditions_get_unmet_reason";
        v31 = 2082;
        *v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v12)
    {
LABEL_29:
      v5 = 0;
      goto LABEL_30;
    }

LABEL_28:
    free(v12);
    goto LABEL_29;
  }

  os_unfair_lock_lock(v1 + 30);
  reason = nw_path_get_reason(*&v2[8]._os_unfair_lock_opaque);
  v4 = reason;
  if (reason >= 0x21 || ((0x1FFBFFFFFuLL >> reason) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446466;
    v30 = "tcp_connection_reason_code_from_path";
    v31 = 1024;
    *v32 = v4;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s Unknown nw_path_reason_t %u", buf, 18);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v7, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_35;
        }

        *buf = 136446466;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v10 = "%{public}s Unknown nw_path_reason_t %u";
LABEL_33:
        v23 = v8;
        v24 = v9;
        goto LABEL_34;
      }

      if (v27 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_35;
        }

        *buf = 136446466;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v10 = "%{public}s Unknown nw_path_reason_t %u, backtrace limit exceeded";
        goto LABEL_33;
      }

      v16 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v8, type);
      if (!v16)
      {
        if (!v18)
        {
LABEL_35:

          if (!v7)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446466;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v10 = "%{public}s Unknown nw_path_reason_t %u, no backtrace";
        v23 = v8;
        v24 = v17;
LABEL_34:
        _os_log_impl(&dword_181A37000, v23, v24, v10, buf, 0x12u);
        goto LABEL_35;
      }

      if (v18)
      {
        *buf = 136446722;
        v30 = "tcp_connection_reason_code_from_path";
        v31 = 1024;
        *v32 = v4;
        v32[2] = 2082;
        *&v32[3] = v16;
        _os_log_impl(&dword_181A37000, v8, v17, "%{public}s Unknown nw_path_reason_t %u, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v16);
    }

    if (!v7)
    {
LABEL_20:
      v5 = 10000;
      goto LABEL_21;
    }

LABEL_19:
    free(v7);
    goto LABEL_20;
  }

  v5 = qword_182B0B848[reason];
LABEL_21:
  os_unfair_lock_unlock(v2 + 30);
LABEL_30:

  return v5;
}

void tcp_connection_set_queue(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_queue";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v8, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_queue";
        v11 = "%{public}s called with null connection";
LABEL_23:
        v17 = v9;
        v18 = v10;
        goto LABEL_24;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_queue";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
LABEL_25:

          if (!v8)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_queue";
        v11 = "%{public}s called with null connection, no backtrace";
        v17 = v9;
        v18 = v15;
LABEL_24:
        _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
        goto LABEL_25;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_queue";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v8);
    goto LABEL_20;
  }

  if (v4)
  {
    os_unfair_lock_lock(v3 + 30);
    objc_storeStrong(v3 + 7, a2);
    v6 = *(v3 + 2);
    if (v6)
    {
      nw_connection_set_queue(v6, *(v3 + 7));
    }

    os_unfair_lock_unlock(v3 + 30);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(v3 + 12);
      *buf = 136446466;
      v22 = "tcp_connection_set_queue";
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %llu client specified nil dispatch queue - not supported", buf, 0x16u);
    }
  }

LABEL_20:
}

uint64_t tcp_connection_id(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_id";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v7, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "tcp_connection_id";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v18 = "tcp_connection_id";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v7)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "tcp_connection_id";
          _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "tcp_connection_id";
          _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v7)
    {
LABEL_11:
      v5 = 0;
      goto LABEL_13;
    }

LABEL_10:
    free(v7);
    goto LABEL_11;
  }

  v3 = v1[2];
  if (v3)
  {
    v4 = v3;
    v5 = v4[112];
  }

  else
  {
    v5 = v1[12];
  }

LABEL_13:

  return v5;
}

void tcp_connection_set_minimum_throughput(void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_minimum_throughput";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v10, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        v13 = "%{public}s called with null connection";
LABEL_19:
        v17 = v11;
        v18 = v12;
        goto LABEL_20;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        v13 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (!v16)
        {
LABEL_21:

          if (!v10)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        v13 = "%{public}s called with null connection, no backtrace";
        v17 = v11;
        v18 = v15;
LABEL_20:
        _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0xCu);
        goto LABEL_21;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "tcp_connection_set_minimum_throughput";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v10)
    {
      goto LABEL_16;
    }

LABEL_15:
    free(v10);
    goto LABEL_16;
  }

  v3[38] = a2;
  v5 = v3;
  v6 = v5;
  v7 = v5[2];
  if (v7)
  {
    v8 = v4[38];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __tcp_connection_set_minimum_throughput_on_nw_connection_block_invoke;
    v22 = &unk_1E6A31398;
    v23 = v5;
    nw_connection_set_low_throughput_handler(v7, v8, buf);
  }

LABEL_16:
}

void tcp_connection_override_obscure(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = v4;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_override_obscure";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_override_obscure";
        v10 = "%{public}s called with null connection";
LABEL_17:
        v14 = v8;
        v15 = v9;
        goto LABEL_18;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_override_obscure";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_19:

          if (!v7)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v19 = "tcp_connection_override_obscure";
        v10 = "%{public}s called with null connection, no backtrace";
        v14 = v8;
        v15 = v12;
LABEL_18:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
        goto LABEL_19;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "tcp_connection_override_obscure";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v7);
    goto LABEL_14;
  }

  nw_parameters_set_use_awdl(v4[6]);
  nw_parameters_set_use_p2p(v5[6], a3);
LABEL_14:
}

BOOL tcp_connection_is_viable(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_is_viable";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_is_viable";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_is_viable";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v18 = "tcp_connection_is_viable";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_is_viable";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_17:
      v3 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v5);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = (v2[39]._os_unfair_lock_opaque & 0x1000000) != 0 && (v2[39]._os_unfair_lock_opaque & 0x200000) == 0;
  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v3;
}

uint64_t tcp_connection_has_better_route(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_has_better_route";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_has_better_route";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_has_better_route";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v18 = "tcp_connection_has_better_route";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_has_better_route";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_17:
      v3 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v5);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  if ((v2[39]._os_unfair_lock_opaque & 0x1000000) != 0)
  {
    v3 = nw_connection_better_path_available(*&v2[4]._os_unfair_lock_opaque);
  }

  else
  {
    v3 = 1;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v3;
}

uint64_t tcp_connection_get_connection_quality(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_get_connection_quality";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_get_connection_quality";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_get_connection_quality";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v18 = "tcp_connection_get_connection_quality";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v10;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446466;
        v18 = "tcp_connection_get_connection_quality";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_17:
      v3 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v5);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  if (*&v2[8]._os_unfair_lock_opaque)
  {
    v3 = *&v2[32]._os_unfair_lock_opaque;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v3;
}

id tcp_connection_copy_proxy(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_copy_proxy";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v8, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_proxy";
        v11 = "%{public}s called with null connection";
LABEL_26:
        v17 = v9;
        v18 = v10;
        goto LABEL_27;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_proxy";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_26;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_28:

          if (!v8)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_proxy";
        v11 = "%{public}s called with null connection, no backtrace";
        v17 = v9;
        v18 = v14;
LABEL_27:
        _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
        goto LABEL_28;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_copy_proxy";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
LABEL_22:
      v6 = 0;
      goto LABEL_23;
    }

LABEL_21:
    free(v8);
    goto LABEL_22;
  }

  v3 = v1[2];
  if (v3)
  {
    v4 = nw_connection_copy_proxy_settings(v3);
    v5 = v4;
    if (v4 && network_proxy_get_type(v4))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_copy_proxy";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    v6 = 0;
  }

LABEL_23:

  return v6;
}

void tcp_connection_set_connection_pool()
{
  v3 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "tcp_connection_set_connection_pool";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s tcp_connection_set_connection_pool is deprecated", &v1, 0xCu);
  }
}

void tcp_connection_set_multipath_service(uint64_t a1, nw_multipath_service_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_multipath_service";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_multipath_service";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_multipath_service";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_multipath_service";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_multipath_service";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_multipath_service(v2, a2);
}

uint64_t tcp_connection_is_multipath(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_is_multipath";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_multipath";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_multipath";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_is_multipath";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_is_multipath";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_is_multipath";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_uses_multipath(v3);
LABEL_19:

  return v4;
}

uint64_t tcp_connection_multipath_get_subflow_count(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_multipath_get_subflow_count";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_multipath_get_subflow_count";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      subflow_count = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_multipath_get_subflow_count";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  subflow_count = nw_connection_multipath_get_subflow_count(v3);
LABEL_19:

  return subflow_count;
}

uint64_t tcp_connection_multipath_get_primary_subflow_ifindex(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v5, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v8 = "%{public}s called with null connection";
LABEL_22:
        v14 = v6;
        v15 = v7;
        goto LABEL_23;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_24:

          if (!v5)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v8 = "%{public}s called with null connection, no backtrace";
        v14 = v6;
        v15 = v11;
LABEL_23:
        _os_log_impl(&dword_181A37000, v14, v15, v8, buf, 0xCu);
        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 136446466;
        v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
LABEL_18:
      interface = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v5);
    goto LABEL_18;
  }

  if (!v1[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v19 = "tcp_connection_multipath_get_primary_subflow_ifindex";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  interface = tcp_connection_get_interface(v1);
LABEL_19:

  return interface;
}

uint64_t tcp_connection_get_interface(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_get_interface";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v22 = "tcp_connection_get_interface";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v22 = "tcp_connection_get_interface";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        if (v15)
        {
          *buf = 136446210;
          v22 = "tcp_connection_get_interface";
          _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v22 = "tcp_connection_get_interface";
          _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
LABEL_16:
      routed_interface_index = 0;
      goto LABEL_29;
    }

LABEL_12:
    free(v9);
    goto LABEL_16;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_get_interface";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v4 = nw_connection_copy_connected_path(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (_nw_path_network_is_satisfied(v6))
    {
      routed_interface_index = _nw_path_get_routed_interface_index(v6);
    }

    else
    {
      routed_interface_index = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_get_interface";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s No connected path", buf, 0xCu);
    }

    routed_interface_index = 0;
  }

LABEL_29:
  return routed_interface_index;
}

id tcp_connection_multipath_copy_subflow_switch_counts(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_multipath_copy_subflow_switch_counts";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_multipath_copy_subflow_counts(v3);
LABEL_19:

  return v4;
}

id tcp_connection_copy_tcp_info(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_copy_tcp_info";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_copy_tcp_info";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_copy_tcp_info";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_copy_tcp_info";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_copy_tcp_info";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      v4 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_copy_tcp_info";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v4 = nw_connection_copy_tcp_info(v3);
LABEL_19:

  return v4;
}

void tcp_connection_set_tls(void *a1, int a2, size_t *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    nw_parameters_set_tls(v5[6], a2);
    if (!a2)
    {
      goto LABEL_48;
    }

    if (!a3)
    {
      goto LABEL_45;
    }

    v7 = a3[1];
    if (!v7 || !*a3)
    {
      goto LABEL_44;
    }

    a3 = xpc_data_create(v7, *a3);
    if (a3)
    {
LABEL_45:
      nw_parameters_set_tls_session_id(v6[6]);
      v24 = v6[2];
      if (v24)
      {
        v25 = v24;
        v26 = a3;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_connection_start_tls_block_invoke;
        v32 = &unk_1E6A3D760;
        v27 = v25;
        v33 = v27;
        v28 = v26;
        v34 = v28;
        nw_connection_async_if_needed(v27, buf);
      }

      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "tcp_connection_set_tls";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s xpc_data_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v9, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_set_tls";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s xpc_data_create failed", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v21 = type;
        v22 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            *&buf[4] = "tcp_connection_set_tls";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v21, "%{public}s xpc_data_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v22)
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_set_tls";
          _os_log_impl(&dword_181A37000, v10, v21, "%{public}s xpc_data_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_set_tls";
          _os_log_impl(&dword_181A37000, v10, v23, "%{public}s xpc_data_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v9)
    {
      free(v9);
    }

LABEL_44:
    a3 = 0;
    goto LABEL_45;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "tcp_connection_set_tls";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v13, &type, &v29))
  {
    goto LABEL_17;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      *&buf[4] = "tcp_connection_set_tls";
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null connection", buf, 0xCu);
    }

LABEL_16:

LABEL_17:
    if (!v13)
    {
      goto LABEL_48;
    }

LABEL_18:
    free(v13);
    goto LABEL_48;
  }

  if (v29 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      *&buf[4] = "tcp_connection_set_tls";
      _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v14, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      *&buf[4] = "tcp_connection_set_tls";
      _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "tcp_connection_set_tls";
    *&buf[12] = 2082;
    *&buf[14] = v16;
    _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v13)
  {
    goto LABEL_18;
  }

LABEL_48:
}

void tcp_connection_set_tls_prepare()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "tcp_connection_set_tls_prepare";
  v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v0, 16, "%{public}s tcp_connection_set_tls_prepare is deprecated", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_prepare";
    v4 = "%{public}s tcp_connection_set_tls_prepare is deprecated";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_prepare";
    v4 = "%{public}s tcp_connection_set_tls_prepare is deprecated, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "tcp_connection_set_tls_prepare";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s tcp_connection_set_tls_prepare is deprecated, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "tcp_connection_set_tls_prepare";
    v4 = "%{public}s tcp_connection_set_tls_prepare is deprecated, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

void tcp_connection_set_tls_handshake_message_handler()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "tcp_connection_set_tls_handshake_message_handler";
  v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v0, 16, "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_handshake_message_handler";
    v4 = "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "tcp_connection_set_tls_handshake_message_handler";
    v4 = "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "tcp_connection_set_tls_handshake_message_handler";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "tcp_connection_set_tls_handshake_message_handler";
    v4 = "%{public}s tcp_connection_set_tls_handshake_message_handler is deprecated, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

uint64_t *tcp_connection_create(const char *a1, unsigned int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(a1, __rev16(a2));
      v8 = host_with_numeric_port;
      if (host_with_numeric_port)
      {
        v9 = tcp_connection_create_with_endpoint_and_parameters(host_with_numeric_port, 0, v6);
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_7;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v24 = "tcp_connection_create";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null queue", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null queue";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v21 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null queue, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v20 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null queue, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v20)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v24 = "tcp_connection_create";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null queue, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v13, v14, v19, buf, 0x16u);
LABEL_25:

      free(backtrace_string);
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "tcp_connection_create";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null hostname", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null hostname";
LABEL_34:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null hostname, backtrace limit exceeded";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "tcp_connection_create";
          v15 = "%{public}s called with null hostname, no backtrace";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v18)
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v24 = "tcp_connection_create";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null hostname, dumping backtrace:%{public}s";
      goto LABEL_24;
    }
  }

LABEL_36:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_7:

  return v9;
}

uint64_t *tcp_connection_create_with_service(const char *a1, const char *a2, const char *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  nw_allow_use_of_dispatch_internal(v7);
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null name", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_62;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null name, backtrace limit exceeded";
          goto LABEL_60;
        }

        goto LABEL_61;
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
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null name, no backtrace";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (!v21)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v29 = "tcp_connection_create_with_service";
      v30 = 2082;
      v31 = backtrace_string;
      v22 = "%{public}s called with null name, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v16 = "%{public}s called with null name";
LABEL_60:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_61;
  }

  if (!a2)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null type", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_62;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null type, backtrace limit exceeded";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v23 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v29 = "tcp_connection_create_with_service";
          v16 = "%{public}s called with null type, no backtrace";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (!v23)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v29 = "tcp_connection_create_with_service";
      v30 = 2082;
      v31 = backtrace_string;
      v22 = "%{public}s called with null type, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v16 = "%{public}s called with null type";
    goto LABEL_60;
  }

  if (!a3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v29 = "tcp_connection_create_with_service";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null domain", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v29 = "tcp_connection_create_with_service";
      v16 = "%{public}s called with null domain";
      goto LABEL_60;
    }

    if (v26 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null domain, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v24 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null domain, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (!v24)
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v29 = "tcp_connection_create_with_service";
    v30 = 2082;
    v31 = backtrace_string;
    v22 = "%{public}s called with null domain, dumping backtrace:%{public}s";
LABEL_42:
    _os_log_impl(&dword_181A37000, v14, v15, v22, buf, 0x16u);
LABEL_43:

    free(backtrace_string);
    goto LABEL_62;
  }

  if (v7)
  {
    bonjour_service = nw_endpoint_create_bonjour_service(a1, a2, a3);
    v9 = bonjour_service;
    if (bonjour_service)
    {
      v10 = tcp_connection_create_with_endpoint_and_parameters(bonjour_service, 0, v7);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_9;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v29 = "tcp_connection_create_with_service";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null queue", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v13, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null queue";
        goto LABEL_60;
      }

LABEL_61:

      goto LABEL_62;
    }

    if (v26 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v25 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v29 = "tcp_connection_create_with_service";
        v16 = "%{public}s called with null queue, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (!v25)
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v29 = "tcp_connection_create_with_service";
    v30 = 2082;
    v31 = backtrace_string;
    v22 = "%{public}s called with null queue, dumping backtrace:%{public}s";
    goto LABEL_42;
  }

LABEL_62:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

void tcp_connection_set_event_handler(void *a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_set_event_handler";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_event_handler";
        v10 = "%{public}s called with null connection";
LABEL_17:
        v14 = v8;
        v15 = v9;
        goto LABEL_18;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_event_handler";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_19:

          if (!v7)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_event_handler";
        v10 = "%{public}s called with null connection, no backtrace";
        v14 = v8;
        v15 = v12;
LABEL_18:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
        goto LABEL_19;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "tcp_connection_set_event_handler";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v7);
    goto LABEL_14;
  }

  v4 = _Block_copy(a2);
  v5 = v3[8];
  v3[8] = v4;

LABEL_14:
}

void tcp_connection_set_cancel_handler(void *a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_set_cancel_handler";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_cancel_handler";
        v10 = "%{public}s called with null connection";
LABEL_17:
        v14 = v8;
        v15 = v9;
        goto LABEL_18;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_cancel_handler";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_19:

          if (!v7)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v19 = "tcp_connection_set_cancel_handler";
        v10 = "%{public}s called with null connection, no backtrace";
        v14 = v8;
        v15 = v12;
LABEL_18:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
        goto LABEL_19;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "tcp_connection_set_cancel_handler";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v7);
    goto LABEL_14;
  }

  v4 = _Block_copy(a2);
  v5 = v3[9];
  v3[9] = v4;

LABEL_14:
}

void tcp_connection_set_event_handler_f(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_event_handler_f";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &v20, &v19))
    {
      if (v20 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = v20;
        if (!os_log_type_enabled(v10, v20))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_event_handler_f";
        v12 = "%{public}s called with null connection";
LABEL_17:
        v16 = v10;
        v17 = v11;
        goto LABEL_18;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = v20;
        if (!os_log_type_enabled(v10, v20))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_event_handler_f";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = v20;
      v15 = os_log_type_enabled(v10, v20);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_19:

          if (!v9)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_event_handler_f";
        v12 = "%{public}s called with null connection, no backtrace";
        v16 = v10;
        v17 = v14;
LABEL_18:
        _os_log_impl(&dword_181A37000, v16, v17, v12, buf, 0xCu);
        goto LABEL_19;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_event_handler_f";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v9);
    goto LABEL_14;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __tcp_connection_set_event_handler_f_block_invoke;
  aBlock[3] = &__block_descriptor_48_e13_v20__0I8r_v12l;
  aBlock[4] = a3;
  aBlock[5] = a2;
  v6 = _Block_copy(aBlock);
  v7 = v5[8];
  v5[8] = v6;

LABEL_14:
}

void tcp_connection_set_interface_by_index(void *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_set_interface_by_index";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v7, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_interface_by_index";
        v10 = "%{public}s called with null connection";
LABEL_23:
        v16 = v8;
        v17 = v9;
        goto LABEL_24;
      }

      if (v18 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_interface_by_index";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_25:

          if (!v7)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        *buf = 136446210;
        v21 = "tcp_connection_set_interface_by_index";
        v10 = "%{public}s called with null connection, no backtrace";
        v16 = v8;
        v17 = v14;
LABEL_24:
        _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "tcp_connection_set_interface_by_index";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v7);
    goto LABEL_20;
  }

  v4 = nw_interface_create_with_index(a2);
  if (v4)
  {
    nw_parameters_require_interface(v3[6], v4);
    name = _nw_interface_get_name(v4);
    if (!strcasecmp("awdl0", name))
    {
      nw_parameters_set_use_awdl(v3[6]);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v3[12];
      *buf = 136446722;
      v21 = "tcp_connection_set_interface_by_index";
      v22 = 2048;
      v23 = v12;
      v24 = 1024;
      v25 = a2;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %llu could not set interface with index %d", buf, 0x1Cu);
    }
  }

LABEL_20:
}

BOOL tcp_connection_set_interface_by_name(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_interface_by_name";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_interface_by_name";
        v10 = "%{public}s called with null connection";
LABEL_23:
        v17 = v8;
        v18 = v9;
        goto LABEL_24;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_interface_by_name";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_25:

          if (!v7)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_interface_by_name";
        v10 = "%{public}s called with null connection, no backtrace";
        v17 = v8;
        v18 = v14;
LABEL_24:
        _os_log_impl(&dword_181A37000, v17, v18, v10, buf, 0xCu);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_interface_by_name";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
LABEL_19:
      v5 = 0;
      goto LABEL_20;
    }

LABEL_18:
    free(v7);
    goto LABEL_19;
  }

  v4 = nw_interface_create_with_name(a2);
  v5 = v4 != 0;
  if (v4)
  {
    nw_parameters_require_interface(v3[6], v4);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v3[12];
      *buf = 136446722;
      v22 = "tcp_connection_set_interface_by_name";
      v23 = 2048;
      v24 = v12;
      v25 = 2082;
      v26 = a2;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %llu could not set interface with name %{public}s", buf, 0x20u);
    }
  }

LABEL_20:
  return v5;
}

void tcp_connection_set_indefinite(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    *buf = 136446210;
    v15 = "tcp_connection_set_indefinite";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_indefinite";
        v6 = "%{public}s called with null connection";
LABEL_19:
        v10 = v4;
        v11 = v5;
        goto LABEL_20;
      }

      if (v12 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_indefinite";
        v6 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(v4, type);
      if (!backtrace_string)
      {
        if (!v9)
        {
LABEL_21:

          if (!v3)
          {
            return;
          }

LABEL_15:
          free(v3);
          return;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_indefinite";
        v6 = "%{public}s called with null connection, no backtrace";
        v10 = v4;
        v11 = v8;
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446466;
        v15 = "tcp_connection_set_indefinite";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

  v1 = *(a1 + 48);

  nw_parameters_set_indefinite(v1);
}

uint64_t tcp_connection_set_context(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_set_context";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_context";
        v12 = "%{public}s called with null connection";
LABEL_22:
        v17 = v10;
        v18 = v11;
        goto LABEL_23;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_context";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_24:

          if (!v9)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v22 = "tcp_connection_set_context";
        v12 = "%{public}s called with null connection, no backtrace";
        v17 = v10;
        v18 = v14;
LABEL_23:
        _os_log_impl(&dword_181A37000, v17, v18, v12, buf, 0xCu);
        goto LABEL_24;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "tcp_connection_set_context";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
LABEL_18:
      v6 = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v9);
    goto LABEL_18;
  }

  if (!v4)
  {
    os_unfair_lock_lock(v3 + 30);
    v7 = *&v3[2]._os_unfair_lock_opaque;
    *&v3[2]._os_unfair_lock_opaque = 0;
    goto LABEL_10;
  }

  v6 = xpc_copy(v4);
  if (v6)
  {
    os_unfair_lock_lock(v3 + 30);
    v7 = *&v3[2]._os_unfair_lock_opaque;
    *&v3[2]._os_unfair_lock_opaque = v6;
LABEL_10:

    os_unfair_lock_unlock(v3 + 30);
    v6 = 1;
  }

LABEL_19:

  return v6;
}

void tcp_connection_set_low_latency(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_low_latency";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_low_latency";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_low_latency";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_low_latency";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_low_latency";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_reduce_buffering(v2, a2);
}

xpc_object_t tcp_connection_copy_context(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_copy_context";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v6, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_copy_context";
        v9 = "%{public}s called with null connection";
LABEL_21:
        v14 = v7;
        v15 = v8;
        goto LABEL_22;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "tcp_connection_copy_context";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v6)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v19 = "tcp_connection_copy_context";
        v9 = "%{public}s called with null connection, no backtrace";
        v14 = v7;
        v15 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v19 = "tcp_connection_copy_context";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_17:
      v4 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v6);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[2]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = xpc_copy(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2 + 30);
LABEL_18:

  return v4;
}

uint64_t tcp_connection_get_error(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 112);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446210;
  v15 = "tcp_connection_get_error";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v3, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v15 = "tcp_connection_get_error";
      v6 = "%{public}s called with null connection";
LABEL_17:
      v10 = v4;
      v11 = v5;
      goto LABEL_18;
    }

    if (v12 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v15 = "tcp_connection_get_error";
      v6 = "%{public}s called with null connection, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v8 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
LABEL_19:

        if (!v3)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_13;
      }

      *buf = 136446210;
      v15 = "tcp_connection_get_error";
      v6 = "%{public}s called with null connection, no backtrace";
      v10 = v4;
      v11 = v8;
LABEL_18:
      _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
      goto LABEL_19;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "tcp_connection_get_error";
      v16 = 2082;
      v17 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v3)
  {
LABEL_13:
    free(v3);
  }

  return 0xFFFFFFFFLL;
}

CFErrorRef nw_tcp_connection_copy_error(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v19 = "nw_tcp_connection_copy_error";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v6, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "nw_tcp_connection_copy_error";
        v9 = "%{public}s called with null connection";
LABEL_21:
        v14 = v7;
        v15 = v8;
        goto LABEL_22;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v19 = "nw_tcp_connection_copy_error";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v6)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v19 = "nw_tcp_connection_copy_error";
        v9 = "%{public}s called with null connection, no backtrace";
        v14 = v7;
        v15 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v19 = "nw_tcp_connection_copy_error";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_17:
      v4 = 0;
      goto LABEL_18;
    }

LABEL_16:
    free(v6);
    goto LABEL_17;
  }

  os_unfair_lock_lock(v1 + 30);
  v3 = *&v2[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 30);
  if (v3)
  {
    v4 = nw_error_copy_cf_error(v3);
  }

  else
  {
    v4 = 0;
  }

LABEL_18:
  return v4;
}

uint64_t tcp_connection_get_socket(void *a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v26 = "tcp_connection_get_socket";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v8, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "tcp_connection_get_socket";
        v11 = "%{public}s called with null connection";
LABEL_25:
        v16 = v9;
        v17 = v10;
        goto LABEL_26;
      }

      if (v23 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "tcp_connection_get_socket";
        v11 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_25;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_27:

          if (!v8)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        *buf = 136446210;
        v26 = "tcp_connection_get_socket";
        v11 = "%{public}s called with null connection, no backtrace";
        v16 = v9;
        v17 = v14;
LABEL_26:
        _os_log_impl(&dword_181A37000, v16, v17, v11, buf, 0xCu);
        goto LABEL_27;
      }

      if (v15)
      {
        *buf = 136446466;
        v26 = "tcp_connection_get_socket";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
LABEL_22:
      os_unfair_lock_opaque = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

LABEL_21:
    free(v8);
    goto LABEL_22;
  }

  if (*&v3[4]._os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(v3 + 30);
    os_unfair_lock_opaque = v4[29]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque == -1)
    {
      if (SBYTE2(v4[39]._os_unfair_lock_opaque) < 0)
      {
        connected_socket = nw_connection_get_connected_socket(*&v4[4]._os_unfair_lock_opaque);
        if (connected_socket >= -1)
        {
          os_unfair_lock_opaque = dup(connected_socket);
          v4[29]._os_unfair_lock_opaque = os_unfair_lock_opaque;
          goto LABEL_31;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v26 = "tcp_connection_get_socket";
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Cannot get socket on a connection for which client socket access is disallowed.", buf, 0xCu);
        }
      }

      os_unfair_lock_opaque = 0xFFFFFFFFLL;
    }

LABEL_31:
    if (a2)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    HIBYTE(v4[39]._os_unfair_lock_opaque) = HIBYTE(v4[39]._os_unfair_lock_opaque) & 0xF7 | v19;
    os_unfair_lock_unlock(v4 + 30);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *&v4[24]._os_unfair_lock_opaque;
      *buf = 136446978;
      v26 = "tcp_connection_get_socket";
      v27 = 2048;
      v28 = v21;
      v29 = 1024;
      v30 = os_unfair_lock_opaque;
      v31 = 1024;
      v32 = a2;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %llu dupfd: %d, takeownership: %{BOOL}d", buf, 0x22u);
    }

    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v26 = "tcp_connection_get_socket";
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
  }

  os_unfair_lock_opaque = 0xFFFFFFFFLL;
LABEL_37:

  return os_unfair_lock_opaque;
}

void tcp_connection_allow_client_socket_access(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_allow_client_socket_access";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v7, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v20 = "tcp_connection_allow_client_socket_access";
        v10 = "%{public}s called with null connection";
LABEL_24:
        v15 = v8;
        v16 = v9;
        goto LABEL_25;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v20 = "tcp_connection_allow_client_socket_access";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_24;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
LABEL_26:

          if (!v7)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        *buf = 136446210;
        v20 = "tcp_connection_allow_client_socket_access";
        v10 = "%{public}s called with null connection, no backtrace";
        v15 = v8;
        v16 = v13;
LABEL_25:
        _os_log_impl(&dword_181A37000, v15, v16, v10, buf, 0xCu);
        goto LABEL_26;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "tcp_connection_allow_client_socket_access";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_20:
    free(v7);
    goto LABEL_21;
  }

  if ((v3[39]._os_unfair_lock_opaque & 0x10000000) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_allow_client_socket_access";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called before tcp_connection_start", buf, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock(v3 + 30);
    if (a2)
    {
      v5 = 0x80;
    }

    else
    {
      v5 = 0;
    }

    BYTE2(v4[39]._os_unfair_lock_opaque) = v5 & 0x80 | BYTE2(v4[39]._os_unfair_lock_opaque) & 0x7F;
    nw_parameters_set_allow_socket_access(*&v4[12]._os_unfair_lock_opaque, a2);
    os_unfair_lock_unlock(v4 + 30);
  }

LABEL_21:
}

uint64_t tcp_connection_copy_socket(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_copy_socket";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_socket";
        v10 = "%{public}s called with null connection";
LABEL_25:
        v16 = v8;
        v17 = v9;
        goto LABEL_26;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_socket";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_25;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_27:

          if (!v7)
          {
            goto LABEL_29;
          }

LABEL_28:
          free(v7);
          goto LABEL_29;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_socket";
        v10 = "%{public}s called with null connection, no backtrace";
        v16 = v8;
        v17 = v12;
LABEL_26:
        _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
        goto LABEL_27;
      }

      if (v13)
      {
        *buf = 136446466;
        v22 = "tcp_connection_copy_socket";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_copy_socket";
      v5 = "%{public}s API Misuse: Function must be called after tcp_connection_start";
      goto LABEL_12;
    }

LABEL_13:

LABEL_29:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((v2[158] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_copy_socket";
      v5 = "%{public}s Cannot get socket on a connection for which client socket access is disallowed.";
LABEL_12:
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  connected_socket = nw_connection_get_connected_socket(v3);
  if (connected_socket < 0)
  {
    goto LABEL_29;
  }

  v15 = dup(connected_socket);
LABEL_30:

  return v15;
}

unint64_t tcp_connection_get_hostname(void *a1, _BYTE *a2, size_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446210;
    v34 = "tcp_connection_get_hostname";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v17, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v34 = "tcp_connection_get_hostname";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v34 = "tcp_connection_get_hostname";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v24, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v25)
        {
          *buf = 136446210;
          v34 = "tcp_connection_get_hostname";
          _os_log_impl(&dword_181A37000, v18, v24, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v34 = "tcp_connection_get_hostname";
          _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v17)
    {
LABEL_25:
      v10 = 0;
LABEL_52:

      return v10;
    }

LABEL_24:
    free(v17);
    goto LABEL_25;
  }

  if (a2 && a3)
  {
    *a2 = 0;
  }

  v7 = v5[2];
  if (v7)
  {
    v8 = nw_connection_copy_host_endpoint(v7);
  }

  else
  {
    v20 = v6[5];
    if (!v20 || (v21 = v20, v22 = _nw_endpoint_get_type(v21), v21, v22 != 2))
    {
      v9 = 0;
      v10 = 0;
LABEL_51:

      goto LABEL_52;
    }

    v8 = v6[5];
  }

  v9 = v8;
  v10 = 0;
  if (!a2 || !v8)
  {
    goto LABEL_51;
  }

  v9 = v8;
  hostname = _nw_endpoint_get_hostname(v9);

  v12 = strlen(hostname);
  if (v12 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v12;
  }

  if (hostname)
  {
    if (a3 >= 2)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

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
  v34 = "_strict_strlcpy";
  v29 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s strict_strlcpy called with NULL src", buf, 12);

  result = __nwlog_should_abort(v29);
  if (!result)
  {
    free(v29);
    if (a3 >= 2)
    {
LABEL_14:
      v13 = 1;
      v14 = a3;
      while (1)
      {
        v15 = *hostname;
        *a2 = v15;
        if (!v15)
        {
          goto LABEL_51;
        }

        ++a2;
        ++hostname;
        if (--v14 <= 1)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_47:
    v13 = a3;
LABEL_48:
    if (a3)
    {
      if (v13)
      {
        *a2 = 0;
      }
    }

    goto LABEL_51;
  }

  __break(1u);
  return result;
}

void tcp_connection_start(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = v3;
  if (!v2)
  {
    *buf = 136446210;
    *&buf[4] = "tcp_connection_start";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v18, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_start";
        v21 = "%{public}s called with null connection";
LABEL_38:
        v29 = v19;
        v30 = v20;
        goto LABEL_39;
      }

      if (v35 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_start";
        v21 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v27 = type;
      v28 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (!v28)
        {
LABEL_40:

          if (!v18)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_start";
        v21 = "%{public}s called with null connection, no backtrace";
        v29 = v19;
        v30 = v27;
LABEL_39:
        _os_log_impl(&dword_181A37000, v29, v30, v21, buf, 0xCu);
        goto LABEL_40;
      }

      if (v28)
      {
        *buf = 136446466;
        *&buf[4] = "tcp_connection_start";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v18)
    {
      goto LABEL_35;
    }

LABEL_34:
    free(v18);
    goto LABEL_35;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v2 + 12);
    *buf = 136446466;
    *&buf[4] = "tcp_connection_start";
    *&buf[12] = 2048;
    *&buf[14] = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %llu starting", buf, 0x16u);
  }

  if (!*(v2 + 2))
  {
    v6 = nw_connection_create_with_id(*(v2 + 5), *(v2 + 6), 0, *(v2 + 12));
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    nw_connection_set_queue(*(v2 + 2), *(v2 + 7));
    *(v2 + 12) = nw_connection_get_id(*(v2 + 2));
  }

  *(v2 + 159) |= 0x10u;
  objc_storeStrong(v2 + 11, a1);
  v8 = *(v2 + 2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __tcp_connection_start_block_invoke;
  handler[3] = &unk_1E6A3D820;
  v9 = v2;
  v34 = v9;
  nw_connection_set_state_changed_handler(v8, handler);
  v10 = *(v2 + 2);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __tcp_connection_start_block_invoke_29;
  v31[3] = &unk_1E6A3CD80;
  v11 = v9;
  v32 = v11;
  nw_connection_set_path_changed_handler(v10, v31);
  v12 = *(v2 + 159);
  if ((v12 & 0x20) != 0)
  {
    tcp_connection_set_keepalive_handler_on_nw_connection(v11);
    v12 = *(v2 + 159);
    if ((v12 & 0x40) == 0)
    {
LABEL_8:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v2 + 159) & 0x40) == 0)
  {
    goto LABEL_8;
  }

  tcp_connection_set_adaptive_read_handler_on_nw_connection(v11);
  if ((*(v2 + 159) & 0x80) == 0)
  {
LABEL_9:
    if (!v11[38])
    {
      goto LABEL_10;
    }

LABEL_24:
    v22 = v11;
    v23 = v22;
    v24 = *(v2 + 2);
    if (v24)
    {
      v25 = v11[38];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __tcp_connection_set_minimum_throughput_on_nw_connection_block_invoke;
      v38 = &unk_1E6A31398;
      v39 = v22;
      nw_connection_set_low_throughput_handler(v24, v25, buf);
    }

    v13 = *(v11 + 9);
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  tcp_connection_set_adaptive_write_handler_on_nw_connection(v11);
  if (v11[38])
  {
    goto LABEL_24;
  }

LABEL_10:
  v13 = *(v11 + 9);
  if (v13)
  {
LABEL_11:
    nw_connection_set_cancel_handler(*(v2 + 2), v13);
    v14 = *(v11 + 9);
    *(v11 + 9) = 0;
  }

LABEL_12:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v2 + 2);
    *buf = 136446466;
    *&buf[4] = "tcp_connection_start";
    *&buf[12] = 2048;
    *&buf[14] = v16;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s starting tc_nwconn=%p", buf, 0x16u);
  }

  v17 = *(v2 + 2);
  if (v17)
  {
    nw_connection_start(v17);
  }

LABEL_35:
}

void __tcp_connection_start_block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v7 = *(a1 + 32);
  if (*(v7 + 156) != 255)
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 == 5)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        v9 = 0;
        if (a2 == 4)
        {
          v10 = 3;
        }

        else
        {
          v10 = v8;
        }

        if (!v6)
        {
LABEL_39:
          *buf = 0;
          *&buf[8] = 0;
          v68 = 0;
          v69 = 0;
          if (v10)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v39 = gLogObj;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v40 = *(*(a1 + 32) + 96);
              v41 = off_1E6A313E0[v10 - 1];
              if (a2 > 5)
              {
                v42 = "unknown";
              }

              else
              {
                v42 = off_1E6A2F020[a2];
              }

              *handler = 136447234;
              *&handler[4] = "tcp_connection_start_block_invoke";
              *&handler[12] = 2048;
              *&handler[14] = v40;
              *&handler[22] = 2082;
              v74 = v41;
              *v75 = 2082;
              *&v75[2] = v42;
              v76 = 2114;
              v77 = v6;
              _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %llu sending event %{public}s in response to state %{public}s and error %{public}@", handler, 0x34u);
            }

            v43 = tcp_connection_fillout_event_locked(*(a1 + 32), buf, v10, 0, 0, "nw_connection event");
            if (!v9)
            {
LABEL_54:
              v48 = *(a1 + 32);
              if ((v43 | v9) == 1)
              {
                v49 = _Block_copy(*(v48 + 64));
                v48 = *(a1 + 32);
              }

              else
              {
                v49 = 0;
              }

              os_unfair_lock_unlock((v48 + 120));
              if (!v43)
              {
LABEL_63:
                if (!v9)
                {
LABEL_69:

                  goto LABEL_70;
                }

                v54 = *(a1 + 32);
                v55 = v49;
                v56 = v55;
                if (!v55 || v54[156] == 255)
                {
                  v57 = v68;
                  if (!v68)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  v57 = v68;
                  (*(v55 + 2))(v55, v69, v68);
                  if (!v57)
                  {
LABEL_68:

                    goto LABEL_69;
                  }
                }

                free(v57);
                goto LABEL_68;
              }

              v50 = *(a1 + 32);
              v51 = v49;
              v52 = v51;
              if (!v51 || v50[156] == 255)
              {
                v53 = *buf;
                if (!*buf)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v53 = *buf;
                (*(v51 + 2))(v51, *&buf[8], *buf);
                if (!v53)
                {
LABEL_62:

                  goto LABEL_63;
                }
              }

              free(v53);
              goto LABEL_62;
            }
          }

          else
          {
            v43 = 0;
            if (!v9)
            {
              goto LABEL_54;
            }
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v45 = *(*(a1 + 32) + 96);
            v46 = off_1E6A313E0[v9 - 1];
            if (a2 > 5)
            {
              v47 = "unknown";
            }

            else
            {
              v47 = off_1E6A2F020[a2];
            }

            *handler = 136447234;
            *&handler[4] = "tcp_connection_start_block_invoke";
            *&handler[12] = 2048;
            *&handler[14] = v45;
            *&handler[22] = 2082;
            v74 = v46;
            *v75 = 2082;
            *&v75[2] = v47;
            v76 = 2114;
            v77 = v6;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %llu sending secondary event %{public}s in response to state %{public}s and error %{public}@", handler, 0x34u);
          }

          v9 = tcp_connection_fillout_event_locked(*(a1 + 32), &v68, v9, 0, 0, "nw_connection secondary event");
          goto LABEL_54;
        }

LABEL_38:
        objc_storeStrong((*(a1 + 32) + 24), a3);
        v37 = v6;
        v38 = v37[3];

        *(*(a1 + 32) + 112) = v38;
        goto LABEL_39;
      }

      v23 = nw_connection_used_tls(*(v7 + 16));
      v24 = *(a1 + 32);
      v26 = (v24 + 159);
      v25 = *(v24 + 159);
      if ((~v25 & 3) == 0)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_37;
      }

      v9 = 0;
      if (v25 & v23)
      {
        v10 = 8;
      }

      else
      {
        *v26 = v25 | 1;
        v24 = *(a1 + 32);
        v10 = 1;
        if (v25 & 1) != 0 || ((v23 ^ 1))
        {
LABEL_37:
          *(v24 + 112) = 0;
          objc_storeStrong((*(a1 + 32) + 24), a3);
          *(*(a1 + 32) + 128) = tcp_connection_quality_from_path(*(a1 + 32), *(*(a1 + 32) + 32));
          v27 = *(a1 + 32);
          v29 = v27 + 2;
          v28 = v27[2];
          *handler = MEMORY[0x1E69E9820];
          *&handler[8] = 3221225472;
          *&handler[16] = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke;
          v74 = &unk_1E6A3D868;
          v30 = v27;
          *v75 = v30;
          nw_connection_set_read_close_handler(v28, handler);
          v31 = *v29;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_2;
          v79 = &unk_1E6A3D868;
          v32 = v30;
          v80 = v32;
          nw_connection_set_write_close_handler(v31, buf);
          v33 = *v29;
          v68 = MEMORY[0x1E69E9820];
          v69 = 3221225472;
          v70 = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_3;
          v71 = &unk_1E6A313C0;
          v34 = v32;
          v72 = v34;
          nw_connection_set_viability_changed_handler(v33, &v68);
          v35 = *v29;
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_4;
          v66[3] = &unk_1E6A313C0;
          v67 = v34;
          v36 = v34;
          nw_connection_set_better_path_available_handler(v35, v66);

          if (!v6)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        LOBYTE(v25) = *(v24 + 159);
        v9 = 8;
        v26 = (v24 + 159);
      }

      *v26 = v25 | 2;
      v24 = *(a1 + 32);
      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v9 = 0;
      v10 = (*(v7 + 159) << 29 >> 31) & 7;
      if (!v6)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (a2 != 2)
    {
      v9 = 0;
      v10 = 0;
      if (!v6)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v11 = v7;
    v12 = *(v11 + 10);
    if (v12)
    {
      dispatch_source_cancel(v12);
      v13 = *(v11 + 10);
      *(v11 + 10) = 0;
    }

    if ((*(v11 + 158) & 0x40) == 0)
    {
LABEL_93:

      v9 = 0;
      v10 = 0;
      *(*(a1 + 32) + 159) |= 4u;
      if (!v6)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v11 + 7));
    v15 = *(v11 + 10);
    *(v11 + 10) = v14;

    v16 = *(v11 + 10);
    if (v16)
    {
      *handler = MEMORY[0x1E69E9820];
      *&handler[8] = 3221225472;
      *&handler[16] = __tcp_connection_start_attempt_timer_locked_block_invoke;
      v74 = &unk_1E6A3D868;
      v17 = v11;
      *v75 = v17;
      dispatch_source_set_event_handler(v16, handler);
      if (v17[13])
      {
        v18 = v17[13];
      }

      else
      {
        v18 = 180000000000;
      }

      v19 = *(v11 + 10);
      v20 = dispatch_time(0, v18);
      dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      dispatch_resume(*(v11 + 10));
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = v17[12];
        *buf = 136446722;
        *&buf[4] = "tcp_connection_start_attempt_timer_locked";
        *&buf[12] = 2048;
        *&buf[14] = v22;
        *&buf[22] = 2048;
        v79 = v18 / 0x3B9ACA00;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %llu scheduling connection attempt timer for %llus", buf, 0x20u);
      }

      goto LABEL_93;
    }

    v58 = __nwlog_obj();
    *handler = 136446210;
    *&handler[4] = "tcp_connection_start_attempt_timer_locked";
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s dispatch_source_create failed", handler, 12);

    buf[0] = 16;
    LOBYTE(v68) = 0;
    if (__nwlog_fault(v59, buf, &v68))
    {
      if (buf[0] == 17)
      {
        v60 = __nwlog_obj();
        v61 = buf[0];
        if (os_log_type_enabled(v60, buf[0]))
        {
          *handler = 136446210;
          *&handler[4] = "tcp_connection_start_attempt_timer_locked";
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s dispatch_source_create failed", handler, 0xCu);
        }
      }

      else if (v68 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v63 = buf[0];
        v64 = os_log_type_enabled(v60, buf[0]);
        if (backtrace_string)
        {
          if (v64)
          {
            *handler = 136446466;
            *&handler[4] = "tcp_connection_start_attempt_timer_locked";
            *&handler[12] = 2082;
            *&handler[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v60, v63, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", handler, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_91;
        }

        if (v64)
        {
          *handler = 136446210;
          *&handler[4] = "tcp_connection_start_attempt_timer_locked";
          _os_log_impl(&dword_181A37000, v60, v63, "%{public}s dispatch_source_create failed, no backtrace", handler, 0xCu);
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v65 = buf[0];
        if (os_log_type_enabled(v60, buf[0]))
        {
          *handler = 136446210;
          *&handler[4] = "tcp_connection_start_attempt_timer_locked";
          _os_log_impl(&dword_181A37000, v60, v65, "%{public}s dispatch_source_create failed, backtrace limit exceeded", handler, 0xCu);
        }
      }
    }

LABEL_91:
    if (v59)
    {
      free(v59);
    }

    goto LABEL_93;
  }

  os_unfair_lock_unlock((v7 + 120));
LABEL_70:
}

void __tcp_connection_start_block_invoke_29(uint64_t a1, void *a2)
{
  v26 = a2;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v4 = *(a1 + 32);
  if (*(v4 + 156) == 255)
  {
    os_unfair_lock_unlock((v4 + 120));
    v13 = 0;
    goto LABEL_39;
  }

  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5;
    status = _nw_path_get_status(v6);

    v8 = status == 1;
    v9 = v26;
    if (v26)
    {
LABEL_4:
      v10 = v9;
      v11 = _nw_path_get_status(v10);

      v12 = v11 == 1;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v9 = v26;
    if (v26)
    {
      goto LABEL_4;
    }
  }

  v12 = 0;
LABEL_8:
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v14 = *(a1 + 32);
  if (*(v14 + 159))
  {
    v17 = tcp_connection_quality_from_path(*(a1 + 32), v26);
    if (*(v14 + 128) == v17)
    {
      v16 = 0;
    }

    else
    {
      if (v17 == 1)
      {
        v18 = "connection quality changed to bad";
      }

      else
      {
        v18 = "connection quality changed to normal";
      }

      *(v14 + 128) = v17;
      v16 = tcp_connection_fillout_event_locked(v14, &v29, 1073741833, 0, 0, v18);
    }

    v14 = *(a1 + 32);
    if (v8 == v12)
    {
      v15 = 0;
    }

    else
    {
      if (v12)
      {
        v19 = "conditions satisfied";
      }

      else
      {
        v19 = "conditions not satisfied";
      }

      v15 = tcp_connection_fillout_event_locked(*(a1 + 32), &v27, 1073741826, 0, 0, v19);
      v14 = *(a1 + 32);
      if (v15)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (!v16)
  {
    os_unfair_lock_unlock((v14 + 120));
    v13 = 0;
    goto LABEL_32;
  }

LABEL_24:
  v13 = _Block_copy(*(v14 + 64));
  os_unfair_lock_unlock((*(a1 + 32) + 120));
  if ((v16 & 1) == 0)
  {
LABEL_32:
    if (!v15)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v20 = *(a1 + 32);
  v21 = v13;
  v13 = v21;
  v22 = v29;
  if (v21 && v20[156] != 255)
  {
    (*(v21 + 2))(v21, v30, v29);
  }

  if (v22)
  {
    free(v22);
  }

  if (v15)
  {
LABEL_33:
    v23 = *(a1 + 32);
    v24 = v13;
    v13 = v24;
    v25 = v27;
    if (v24 && v23[156] != 255)
    {
      (*(v24 + 2))(v24, v28, v27);
    }

    if (v25)
    {
      free(v25);
    }
  }

LABEL_39:
}

uint64_t tcp_connection_quality_from_path(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    fallback_interface_index = _nw_path_get_fallback_interface_index(v6);

    if (fallback_interface_index && (nw_parameters_get_pid(*(v5 + 6)), nw_parameters_get_effective_bundle_id(*(v5 + 6)), (_symptoms_is_daemon_fallback_blacklisted() & 1) == 0))
    {
      if (*(v5 + 31) != 1)
      {
        goto LABEL_11;
      }

      if (tcp_connection_is_first_party_onceToken != -1)
      {
        dispatch_once(&tcp_connection_is_first_party_onceToken, &__block_literal_global_34688);
      }

      if (tcp_connection_is_first_party_is_first_party == 1)
      {
LABEL_11:

        v8 = 1;
        goto LABEL_6;
      }

      v10 = nw_parameters_multipath_fallback_allowed(*(v5 + 6));

      if (v10)
      {
        v8 = 1;
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v8 = 2;
LABEL_6:

  return v8;
}

void __tcp_connection_start_attempt_timer_locked_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v14 = 0;
  v15 = 0;
  os_unfair_lock_lock(v1 + 30);
  v2 = *(v1 + 6);
  if (!v2 || !_nw_parameters_get_logging_disabled(v2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 12);
      *buf = 136446466;
      v17 = "tcp_connection_attempt_timer_fired_on_client_queue";
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %llu connection took too long to connect, cleaning up current attempt", buf, 0x16u);
    }
  }

  *(v1 + 28) = 60;
  if ((*(v1 + 158) & 0x40) != 0 && tcp_connection_fillout_event_locked(v1, &v14, 1073741832, 0, 0, "connection attempt timed out"))
  {
    v5 = _Block_copy(*(v1 + 8));
    v6 = 1;
    v7 = *(v1 + 2);
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    nw_connection_cancel(v7);
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(v1 + 2);
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = *(v1 + 10);
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = *(v1 + 10);
    *(v1 + 10) = 0;
  }

LABEL_13:
  os_unfair_lock_unlock(v1 + 30);
  if (v6)
  {
    v10 = v1;
    v11 = v5;
    v12 = v11;
    if (!v11 || v10[156] == 255)
    {
      v13 = v14;
      if (!v14)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v13 = v14;
      (*(v11 + 2))(v11, v15, v14);
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    free(v13);
    goto LABEL_20;
  }

LABEL_21:
}

void __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_3(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v14 = 0;
  v15 = 0;
  os_unfair_lock_lock(v3 + 30);
  v4 = v3[158];
  if ((v4 & 0x20) != 0 || (a2 & 1) == 0)
  {
    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 32;
    }

    v3[158] = v4 & 0xDF | v5;
    if (((((v4 & 0x20) == 0) ^ a2) & 1) == 0 && v3[156] != 255)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v3 + 12);
        *buf = 136446466;
        v17 = "tcp_connection_send_viability_event_unlocked";
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %llu notifying of connection non-viability event again", buf, 0x16u);
      }
    }

    v8 = a2 ? "viable" : "no longer viable";
    if (tcp_connection_fillout_event_locked(v3, &v14, 6, 0, 0, v8))
    {
      v9 = _Block_copy(*(v3 + 8));
      os_unfair_lock_unlock(v3 + 30);
      v10 = v3;
      v11 = v9;
      v12 = v11;
      if (!v11 || v10[156] == 255)
      {
        v13 = v14;
        if (!v14)
        {
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
        v13 = v14;
        (*(v11 + 2))(v11, v15, v14);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      free(v13);
      goto LABEL_22;
    }
  }

  os_unfair_lock_unlock(v3 + 30);
LABEL_23:
}

void __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_4(uint64_t a1, int a2)
{
  v17 = *(a1 + 32);
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  os_unfair_lock_lock(v17 + 30);
  v3 = v17;
  v4 = *(v17 + 158);
  if (((v4 & 0x10) == 0) != a2)
  {
    os_unfair_lock_unlock(v17 + 30);
    v5 = 0;
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(v17 + 158) = v4 & 0xEF | v6;
  if (a2)
  {
    v7 = "better route";
    v8 = tcp_connection_fillout_event_locked(v17, &v20, 5, 0, 0, "better route");
    v3 = v17;
  }

  else
  {
    v8 = 0;
    v7 = "no better route";
  }

  v9 = tcp_connection_fillout_event_locked(v3, &v18, 1073741831, 0, 0, v7);
  v10 = v9;
  if ((v8 & 1) == 0 && !v9)
  {
    os_unfair_lock_unlock(v17 + 30);
    v5 = 0;
    goto LABEL_20;
  }

  v5 = _Block_copy(*(v17 + 8));
  os_unfair_lock_unlock(v17 + 30);
  if ((v8 & 1) == 0)
  {
LABEL_20:
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v11 = v17;
  v12 = v5;
  v5 = v12;
  v13 = v20;
  if (v12 && v11[156] != 255)
  {
    (*(v12 + 2))(v12, v21, v20);
  }

  if (v13)
  {
    free(v13);
  }

  if (v10)
  {
LABEL_21:
    v14 = v17;
    v15 = v5;
    v5 = v15;
    v16 = v18;
    if (v15 && v14[156] != 255)
    {
      (*(v15 + 2))(v15, v19, v18);
    }

    if (v16)
    {
      free(v16);
    }
  }

LABEL_27:
}

void tcp_connection_cancel(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if (!v1)
  {
    *buf = 136446210;
    v32 = "tcp_connection_cancel";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v9, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v32 = "tcp_connection_cancel";
        v12 = "%{public}s called with null connection";
LABEL_35:
        v25 = v10;
        v26 = v11;
        goto LABEL_36;
      }

      if (v29 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v32 = "tcp_connection_cancel";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v23 = type;
      v24 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v24)
        {
LABEL_37:

          if (!v9)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        *buf = 136446210;
        v32 = "tcp_connection_cancel";
        v12 = "%{public}s called with null connection, no backtrace";
        v25 = v10;
        v26 = v23;
LABEL_36:
        _os_log_impl(&dword_181A37000, v25, v26, v12, buf, 0xCu);
        goto LABEL_37;
      }

      if (v24)
      {
        *buf = 136446466;
        v32 = "tcp_connection_cancel";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_31:
    free(v9);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(v1 + 12);
    *buf = 136446466;
    v32 = "tcp_connection_cancel";
    v33 = 2048;
    v34 = v4;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %llu", buf, 0x16u);
  }

  os_unfair_lock_lock(v1 + 30);
  if (v1[156] == 255)
  {
    goto LABEL_24;
  }

  v1[156] = -1;
  v5 = *(v1 + 9);
  if (v5 && *(v1 + 7))
  {
    v6 = _Block_copy(v5);
    v7 = *(v1 + 7);
    v8 = *(v1 + 2);
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(v1 + 2);
  if (v8)
  {
LABEL_14:
    nw_connection_cancel(v8);
  }

LABEL_15:
  v13 = v1;
  v13[158] |= 0x30u;
  v14 = *(v13 + 10);
  if (v14)
  {
    dispatch_source_cancel(v14);
    v15 = *(v13 + 10);
    *(v13 + 10) = 0;
  }

  v16 = *(v13 + 11);
  *(v13 + 11) = 0;

  v17 = *(v13 + 29);
  if (v17 != -1)
  {
    v18 = v13[159];
    if ((v18 & 8) == 0)
    {
      close(v17);
      v18 = v13[159];
    }

    *(v13 + 29) = -1;
    v13[159] = v18 & 0xF7;
  }

  v19 = *(v13 + 7);
  *(v13 + 7) = 0;

  v20 = *(v13 + 8);
  *(v13 + 8) = 0;

  v21 = *(v1 + 9);
  *(v1 + 9) = 0;

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __tcp_connection_cancel_block_invoke;
    block[3] = &unk_1E6A3CE48;
    v28 = v6;
    dispatch_async(v7, block);
  }

LABEL_24:
  os_unfair_lock_unlock(v1 + 30);
LABEL_32:
}

uint64_t tcp_connection_get_local(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_local";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null connection", __src, 12);

    buf[0] = 16;
    v27 = 0;
    if (!__nwlog_fault(v12, buf, &v27))
    {
      goto LABEL_33;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_local";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection", __src, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = buf[0];
      v18 = os_log_type_enabled(v13, buf[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *__src = 136446466;
          *&__src[4] = "tcp_connection_get_local";
          *&__src[12] = 2082;
          *&__src[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", __src, 0x16u);
        }

        free(backtrace_string);
        if (!v12)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v18)
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_local";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, no backtrace", __src, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v19 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_local";
        _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null connection, backtrace limit exceeded", __src, 0xCu);
      }
    }

    goto LABEL_32;
  }

  if (!v3[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__src = 136446210;
      *&__src[4] = "tcp_connection_get_local";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", __src, 0xCu);
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_local";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null outlocal", __src, 12);

    buf[0] = 16;
    v27 = 0;
    if (__nwlog_fault(v12, buf, &v27))
    {
      if (buf[0] == 17)
      {
        v13 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_local";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null outlocal", __src, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v27 != 1)
      {
        v13 = __nwlog_obj();
        v26 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_local";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null outlocal, backtrace limit exceeded", __src, 0xCu);
        }

        goto LABEL_32;
      }

      v23 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v24 = buf[0];
      v25 = os_log_type_enabled(v13, buf[0]);
      if (!v23)
      {
        if (v25)
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_local";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outlocal, no backtrace", __src, 0xCu);
        }

        goto LABEL_32;
      }

      if (v25)
      {
        *__src = 136446466;
        *&__src[4] = "tcp_connection_get_local";
        *&__src[12] = 2082;
        *&__src[14] = v23;
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outlocal, dumping backtrace:%{public}s", __src, 0x16u);
      }

      free(v23);
    }

LABEL_33:
    if (!v12)
    {
LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }

LABEL_34:
    free(v12);
    goto LABEL_35;
  }

  *a2 = 0;
  a2[1] = 0;
  *(a2 + 6) = 0;
  a2[2] = 0;
  v5 = nw_connection_copy_connected_local_endpoint(v3[2]);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    type = _nw_endpoint_get_type(v7);

    if (type == 1)
    {
      memset(__src, 0, sizeof(__src));
      v33 = 0;
      if (nw_endpoint_fillout_v4v6_address(v7, __src))
      {
        if (__src[0] < 0x1DuLL)
        {
          memcpy(a2, __src, __src[0]);
          v10 = 1;
          goto LABEL_12;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v29 = "tcp_connection_get_local";
          v30 = 1024;
          v31 = __src[0];
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Local address length (%u) too long", buf, 0x12u);
        }
      }
    }
  }

  v10 = 0;
LABEL_12:

LABEL_36:
  return v10;
}

uint64_t tcp_connection_get_remote(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_remote";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null connection", __src, 12);

    buf[0] = 16;
    v27 = 0;
    if (!__nwlog_fault(v12, buf, &v27))
    {
      goto LABEL_33;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_remote";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection", __src, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = buf[0];
      v18 = os_log_type_enabled(v13, buf[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *__src = 136446466;
          *&__src[4] = "tcp_connection_get_remote";
          *&__src[12] = 2082;
          *&__src[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", __src, 0x16u);
        }

        free(backtrace_string);
        if (!v12)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v18)
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_remote";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, no backtrace", __src, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v19 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_remote";
        _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null connection, backtrace limit exceeded", __src, 0xCu);
      }
    }

    goto LABEL_32;
  }

  if (!v3[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__src = 136446210;
      *&__src[4] = "tcp_connection_get_remote";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", __src, 0xCu);
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_remote";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null outremote", __src, 12);

    buf[0] = 16;
    v27 = 0;
    if (__nwlog_fault(v12, buf, &v27))
    {
      if (buf[0] == 17)
      {
        v13 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_remote";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null outremote", __src, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v27 != 1)
      {
        v13 = __nwlog_obj();
        v26 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_remote";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null outremote, backtrace limit exceeded", __src, 0xCu);
        }

        goto LABEL_32;
      }

      v23 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v24 = buf[0];
      v25 = os_log_type_enabled(v13, buf[0]);
      if (!v23)
      {
        if (v25)
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_remote";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outremote, no backtrace", __src, 0xCu);
        }

        goto LABEL_32;
      }

      if (v25)
      {
        *__src = 136446466;
        *&__src[4] = "tcp_connection_get_remote";
        *&__src[12] = 2082;
        *&__src[14] = v23;
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outremote, dumping backtrace:%{public}s", __src, 0x16u);
      }

      free(v23);
    }

LABEL_33:
    if (!v12)
    {
LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }

LABEL_34:
    free(v12);
    goto LABEL_35;
  }

  *a2 = 0;
  a2[1] = 0;
  *(a2 + 6) = 0;
  a2[2] = 0;
  v5 = nw_connection_copy_connected_remote_endpoint(v3[2]);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    type = _nw_endpoint_get_type(v7);

    if (type == 1)
    {
      memset(__src, 0, sizeof(__src));
      v33 = 0;
      if (nw_endpoint_fillout_v4v6_address(v7, __src))
      {
        if (__src[0] < 0x1DuLL)
        {
          memcpy(a2, __src, __src[0]);
          v10 = 1;
          goto LABEL_12;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v29 = "tcp_connection_get_remote";
          v30 = 1024;
          v31 = __src[0];
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Remote address length (%u) too long", buf, 0x12u);
        }
      }
    }
  }

  v10 = 0;
LABEL_12:

LABEL_36:
  return v10;
}

void tcp_connection_read(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v31 = "tcp_connection_read";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v12, &type, &v28))
    {
      goto LABEL_25;
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
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v17 = type;
    v18 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v18)
    {
      *buf = 136446466;
      v31 = "tcp_connection_read";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v10 = v7[2];
  if (v10)
  {
    if (v8)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __tcp_connection_read_block_invoke;
      v25[3] = &unk_1E6A3A670;
      v26 = v7;
      v27 = v9;
      nw_connection_receive_internal(v10, 0, a2, a3, v25);

      goto LABEL_27;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v31 = "tcp_connection_read";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v12, &type, &v28))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null handler", buf, 0xCu);
      }

LABEL_24:

LABEL_25:
      if (!v12)
      {
        goto LABEL_27;
      }

LABEL_26:
      free(v12);
      goto LABEL_27;
    }

    if (v28 != 1)
    {
      v13 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v23)
    {
      *buf = 136446466;
      v31 = "tcp_connection_read";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_17:

    free(backtrace_string);
    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v31 = "tcp_connection_read";
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
  }

LABEL_27:
}

void __tcp_connection_read_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (*(*(a1 + 32) + 156) != 255)
  {
    if (v9)
    {
    }

    (*(*(a1 + 40) + 16))();
  }
}

void tcp_connection_read_buffer(void *a1, char *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446210;
    v36 = "tcp_connection_read_buffer";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v14, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v36 = "tcp_connection_read_buffer";
      v17 = "%{public}s called with null connection";
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v20 = type;
        v21 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v36 = "tcp_connection_read_buffer";
            v37 = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v14)
          {
            goto LABEL_19;
          }

LABEL_18:
          free(v14);
          goto LABEL_19;
        }

        if (!v21)
        {
LABEL_24:

          if (!v14)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v17 = "%{public}s called with null connection, no backtrace";
        v22 = v15;
        v23 = v20;
LABEL_23:
        _os_log_impl(&dword_181A37000, v22, v23, v17, buf, 0xCu);
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v36 = "tcp_connection_read_buffer";
      v17 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v22 = v15;
    v23 = v16;
    goto LABEL_23;
  }

  v12 = v9[2];
  if (v12)
  {
    if (v10)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __tcp_connection_read_buffer_block_invoke;
      v30[3] = &unk_1E6A31348;
      v31 = v9;
      v32 = v11;
      nw_connection_read_buffer(v12, a2, a3, a4, v30);

      goto LABEL_19;
    }

    v24 = __nwlog_obj();
    *buf = 136446210;
    v36 = "tcp_connection_read_buffer";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v14, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v27 = "%{public}s called with null handler";
LABEL_42:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (v33 != 1)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v27 = "%{public}s called with null handler, backtrace limit exceeded";
        goto LABEL_42;
      }

LABEL_43:

      goto LABEL_17;
    }

    v28 = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = type;
    v29 = os_log_type_enabled(v25, type);
    if (!v28)
    {
      if (v29)
      {
        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v27 = "%{public}s called with null handler, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v29)
    {
      *buf = 136446466;
      v36 = "tcp_connection_read_buffer";
      v37 = 2082;
      v38 = v28;
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v28);
    if (v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v36 = "tcp_connection_read_buffer";
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_19:
}

uint64_t __tcp_connection_read_buffer_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 156) != 255)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void tcp_connection_write(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v33 = "tcp_connection_write";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, &type, &v30))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v33 = "tcp_connection_write";
      v14 = "%{public}s called with null connection";
    }

    else
    {
      if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v33 = "tcp_connection_write";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v11)
          {
            goto LABEL_19;
          }

LABEL_18:
          free(v11);
          goto LABEL_19;
        }

        if (!v18)
        {
LABEL_24:

          if (!v11)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v33 = "tcp_connection_write";
        v14 = "%{public}s called with null connection, no backtrace";
        v19 = v12;
        v20 = v17;
LABEL_23:
        _os_log_impl(&dword_181A37000, v19, v20, v14, buf, 0xCu);
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v33 = "tcp_connection_write";
      v14 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v19 = v12;
    v20 = v13;
    goto LABEL_23;
  }

  v9 = v5[2];
  if (v9)
  {
    if (v7)
    {
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = __tcp_connection_write_block_invoke;
      completion[3] = &unk_1E6A33F60;
      v28 = v5;
      v29 = v8;
      nw_connection_send(v9, v6, &__block_literal_global_44658, 1, completion);

      goto LABEL_19;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v33 = "tcp_connection_write";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, &type, &v30))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v33 = "tcp_connection_write";
        v24 = "%{public}s called with null handler";
LABEL_42:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (v30 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v33 = "tcp_connection_write";
        v24 = "%{public}s called with null handler, backtrace limit exceeded";
        goto LABEL_42;
      }

LABEL_43:

      goto LABEL_17;
    }

    v25 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v26 = os_log_type_enabled(v22, type);
    if (!v25)
    {
      if (v26)
      {
        *buf = 136446210;
        v33 = "tcp_connection_write";
        v24 = "%{public}s called with null handler, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v26)
    {
      *buf = 136446466;
      v33 = "tcp_connection_write";
      v34 = 2082;
      v35 = v25;
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v25);
    if (v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33 = "tcp_connection_write";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_19:
}

void __tcp_connection_write_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 156) != 255)
  {
    v4 = *(a1 + 40);
    v7 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = v5[3];
    }

    else
    {
      v6 = 0;
    }

    (*(v4 + 16))(v4, v6);
    v3 = v7;
  }
}

void tcp_connection_write_buffer(void *a1, const void *a2, size_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v30 = "tcp_connection_write_buffer";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, &type, &v27))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v15 = "%{public}s called with null connection";
    }

    else
    {
      if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v30 = "tcp_connection_write_buffer";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v12)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (!v18)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v30 = "tcp_connection_write_buffer";
        v15 = "%{public}s called with null connection, no backtrace";
        v19 = v13;
        v20 = v17;
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v15 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v19 = v13;
    v20 = v14;
LABEL_24:
    _os_log_impl(&dword_181A37000, v19, v20, v15, buf, 0xCu);
LABEL_25:

    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v7[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v8)
  {
    v10 = dispatch_data_create(a2, a3, 0, 0);
    if (v10)
    {
      tcp_connection_write(v7, v10, v9);
    }

    else
    {
      v9[2](v9, 12);
    }

LABEL_20:

    goto LABEL_27;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v30 = "tcp_connection_write_buffer";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v12, &type, &v27))
  {
    goto LABEL_17;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v24 = "%{public}s called with null handler";
LABEL_44:
      _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      goto LABEL_45;
    }

    goto LABEL_45;
  }

  if (v27 != 1)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v24 = "%{public}s called with null handler, backtrace limit exceeded";
      goto LABEL_44;
    }

LABEL_45:

    goto LABEL_17;
  }

  v25 = __nw_create_backtrace_string();
  v22 = __nwlog_obj();
  v23 = type;
  v26 = os_log_type_enabled(v22, type);
  if (!v25)
  {
    if (v26)
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v24 = "%{public}s called with null handler, no backtrace";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if (v26)
  {
    *buf = 136446466;
    v30 = "tcp_connection_write_buffer";
    v31 = 2082;
    v32 = v25;
    _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v25);
  if (v12)
  {
LABEL_26:
    free(v12);
  }

LABEL_27:
}

void tcp_connection_write_eof(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_write_eof";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_write_eof";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_write_eof";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v18 = "tcp_connection_write_eof";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "tcp_connection_write_eof";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    free(v5);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (v3)
  {
    nw_connection_send(v3, 0, &__block_literal_global_6_44667, 1, &__block_literal_global_24512);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "tcp_connection_write_eof";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_18:
}

uint64_t tcp_connection_get_unsent_length(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_get_unsent_length";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_get_unsent_length";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_get_unsent_length";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_get_unsent_length";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_get_unsent_length";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      unsent_byte_count = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_get_unsent_length";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  unsent_byte_count = nw_connection_get_unsent_byte_count(v3);
LABEL_19:

  return unsent_byte_count;
}

void tcp_connection_accept(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v26 = "tcp_connection_accept";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &type, &v23))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v10 = "%{public}s called with null connection";
    }

    else
    {
      if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v26 = "tcp_connection_accept";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v7)
          {
            goto LABEL_19;
          }

LABEL_18:
          free(v7);
          goto LABEL_19;
        }

        if (!v14)
        {
LABEL_24:

          if (!v7)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v26 = "tcp_connection_accept";
        v10 = "%{public}s called with null connection, no backtrace";
        v15 = v8;
        v16 = v13;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v10, buf, 0xCu);
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v10 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v15 = v8;
    v16 = v9;
    goto LABEL_23;
  }

  if (v4)
  {
    if (v3[157] == 4)
    {
      tcp_connection_set_queue(v3, v4);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v26 = "tcp_connection_accept";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Connection is not applicable for accept", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v26 = "tcp_connection_accept";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null queue", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &type, &v23))
  {
    goto LABEL_17;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v20 = "%{public}s called with null queue";
LABEL_42:
      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  if (v23 != 1)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v20 = "%{public}s called with null queue, backtrace limit exceeded";
      goto LABEL_42;
    }

LABEL_43:

    goto LABEL_17;
  }

  v21 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v19 = type;
  v22 = os_log_type_enabled(v18, type);
  if (!v21)
  {
    if (v22)
    {
      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v20 = "%{public}s called with null queue, no backtrace";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v22)
  {
    *buf = 136446466;
    v26 = "tcp_connection_accept";
    v27 = 2082;
    v28 = v21;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v21);
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_19:
}

uint64_t tcp_connection_is_cellular(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_is_cellular";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v8, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_cellular";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v21 = "tcp_connection_is_cellular";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (v14)
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_cellular";
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_cellular";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_31:
      v6 = 0;
      goto LABEL_32;
    }

LABEL_30:
    free(v8);
    goto LABEL_31;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_cellular";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v4 = nw_connection_copy_connected_path(v3);
  v5 = v4;
  if (v4)
  {
    v6 = _nw_path_uses_interface_type(v4, 2u);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_cellular";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s No connected path", buf, 0xCu);
    }

    v6 = 0;
  }

LABEL_32:
  return v6;
}

uint64_t tcp_connection_is_expensive(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_is_expensive";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v8, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_expensive";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v21 = "tcp_connection_is_expensive";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (v14)
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_expensive";
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_expensive";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_31:
      is_expensive = 0;
      goto LABEL_32;
    }

LABEL_30:
    free(v8);
    goto LABEL_31;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_expensive";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v4 = nw_connection_copy_connected_path(v3);
  v5 = v4;
  if (v4)
  {
    is_expensive = _nw_path_is_expensive(v4);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_expensive";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s No connected path", buf, 0xCu);
    }

    is_expensive = 0;
  }

LABEL_32:
  return is_expensive;
}

uint64_t tcp_connection_copy_description(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_copy_description";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v19 = "tcp_connection_copy_description";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v19 = "tcp_connection_copy_description";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v7)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        if (v13)
        {
          *buf = 136446210;
          v19 = "tcp_connection_copy_description";
          _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v19 = "tcp_connection_copy_description";
          _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v7)
    {
LABEL_26:
      v5 = 0;
      goto LABEL_27;
    }

LABEL_25:
    free(v7);
    goto LABEL_26;
  }

  v3 = v1[2];
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v19 = "tcp_connection_copy_description";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v4 = v3;
  v5 = nw_connection_copy_description_level(v4, 1);

LABEL_27:
  return v5;
}

void tcp_connection_get_counts(void *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "tcp_connection_get_counts";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v33[0] = 0;
    if (__nwlog_fault(v9, type, v33))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v33[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v14 = type[0];
        v15 = os_log_type_enabled(v10, type[0]);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            *&buf[4] = "tcp_connection_get_counts";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_28;
          }

LABEL_13:
          free(v9);
          goto LABEL_28;
        }

        if (v15)
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v17 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (v3[2])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x1C810000000;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v38 = &unk_182E7191A;
    v65 = 0;
    *type = 0;
    v30 = type;
    v31 = 0x2020000000;
    v32 = 0;
    if (a2)
    {
      *(a2 + 80) = 0uLL;
      *(a2 + 96) = 0uLL;
      *(a2 + 48) = 0uLL;
      *(a2 + 64) = 0uLL;
      *(a2 + 16) = 0uLL;
      *(a2 + 32) = 0uLL;
      *a2 = 0uLL;
      v5 = nw_connection_copy_tcp_info(v3[2]);
      v6 = v5;
      if (v5)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __tcp_connection_get_counts_block_invoke;
        applier[3] = &unk_1E6A31370;
        applier[4] = buf;
        applier[5] = type;
        xpc_dictionary_apply(v5, applier);
        if (*(v30 + 24) == 1)
        {
          v7 = *&buf[8];
          *(a2 + 8) = *(*&buf[8] + 140);
          *(a2 + 24) = *(v7 + 108);
          *(a2 + 80) = *(v7 + 148);
          *(a2 + 88) = *(v7 + 116);
          *(a2 + 92) = 0x100000001;
          *(a2 + 104) = v7[7];
          *(a2 + 48) = v7[27];
          *(a2 + 56) = v7[29];
          *(a2 + 32) = v7[23];
          *(a2 + 40) = v7[25];
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Could not retreive TCP info", v33, 0xCu);
        }
      }

LABEL_27:
      _Block_object_dispose(type, 8);
      _Block_object_dispose(buf, 8);
      goto LABEL_28;
    }

    v18 = __nwlog_obj();
    *v33 = 136446210;
    v34 = "tcp_connection_get_counts";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null counts", v33, 12);

    v28 = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v19, &v28, &v27))
    {
      if (v28 == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = v28;
        if (os_log_type_enabled(v20, v28))
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null counts", v33, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v23 = v28;
        v24 = os_log_type_enabled(v20, v28);
        if (v22)
        {
          if (v24)
          {
            *v33 = 136446466;
            v34 = "tcp_connection_get_counts";
            v35 = 2082;
            v36 = v22;
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null counts, dumping backtrace:%{public}s", v33, 0x16u);
          }

          free(v22);
          goto LABEL_51;
        }

        if (v24)
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null counts, no backtrace", v33, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v25 = v28;
        if (os_log_type_enabled(v20, v28))
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null counts, backtrace limit exceeded", v33, 0xCu);
        }
      }
    }

LABEL_51:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_27;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    *&buf[4] = "tcp_connection_get_counts";
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
  }

LABEL_28:
}

void sub_1825B1214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __tcp_connection_get_counts_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9E70] && xpc_data_get_length(v4) == 424 && xpc_data_get_bytes_ptr(v4))
  {
    v5 = *(*(a1 + 32) + 8);
    bytes_ptr = xpc_data_get_bytes_ptr(v4);
    memcpy((v5 + 32), bytes_ptr, 0x1A8uLL);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446210;
      v10 = "tcp_connection_get_counts_block_invoke";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s TCP info has invalid data", &v9, 0xCu);
    }
  }

  return 0;
}

void tcp_connection_retry(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_retry";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_retry";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_retry";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v18 = "tcp_connection_retry";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "tcp_connection_retry";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    free(v5);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (v3)
  {
    nw_connection_restart(v3);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "tcp_connection_retry";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_18:
}

void tcp_connection_set_connection_attempt_timeout(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 104) = a2;
    *(a1 + 158) |= 0x40u;
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446210;
  v15 = "tcp_connection_set_connection_attempt_timeout";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v3, &type, &v12))
  {
LABEL_12:
    if (!v3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v15 = "tcp_connection_set_connection_attempt_timeout";
    v6 = "%{public}s called with null connection";
LABEL_17:
    v10 = v4;
    v11 = v5;
LABEL_18:
    _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
    goto LABEL_19;
  }

  if (v12 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v15 = "tcp_connection_set_connection_attempt_timeout";
    v6 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_17;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v8 = type;
  v9 = os_log_type_enabled(v4, type);
  if (backtrace_string)
  {
    if (v9)
    {
      *buf = 136446466;
      v15 = "tcp_connection_set_connection_attempt_timeout";
      v16 = 2082;
      v17 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_12;
  }

  if (v9)
  {
    *buf = 136446210;
    v15 = "tcp_connection_set_connection_attempt_timeout";
    v6 = "%{public}s called with null connection, no backtrace";
    v10 = v4;
    v11 = v8;
    goto LABEL_18;
  }

LABEL_19:

  if (v3)
  {
LABEL_13:
    free(v3);
  }
}

void tcp_connection_set_tfo(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_tfo";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_tfo";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_tfo";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_tfo";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_tfo";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_tfo(v2, a2);
}

void tcp_connection_set_extended_background_idle(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if (!a1)
  {
    *buf = 136446210;
    v16 = "tcp_connection_set_extended_background_idle";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_extended_background_idle";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_extended_background_idle";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_extended_background_idle";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_extended_background_idle";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v16 = "tcp_connection_set_extended_background_idle";
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s Extended background idle not supported", buf, 0xCu);
  }
}

void tcp_connection_set_receive_any_interface(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    *buf = 136446210;
    v15 = "tcp_connection_set_receive_any_interface";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_receive_any_interface";
        v6 = "%{public}s called with null connection";
LABEL_19:
        v10 = v4;
        v11 = v5;
        goto LABEL_20;
      }

      if (v12 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_receive_any_interface";
        v6 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(v4, type);
      if (!backtrace_string)
      {
        if (!v9)
        {
LABEL_21:

          if (!v3)
          {
            return;
          }

LABEL_15:
          free(v3);
          return;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_receive_any_interface";
        v6 = "%{public}s called with null connection, no backtrace";
        v10 = v4;
        v11 = v8;
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446466;
        v15 = "tcp_connection_set_receive_any_interface";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

  v1 = *(a1 + 48);

  nw_parameters_set_receive_any_interface(v1);
}

void tcp_connection_set_ecn_enabled(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    *buf = 136446210;
    v15 = "tcp_connection_set_ecn_enabled";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (__nwlog_fault(v3, &type, &v12))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_ecn_enabled";
        v6 = "%{public}s called with null connection";
LABEL_19:
        v10 = v4;
        v11 = v5;
        goto LABEL_20;
      }

      if (v12 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        v5 = type;
        if (!os_log_type_enabled(v4, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_ecn_enabled";
        v6 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(v4, type);
      if (!backtrace_string)
      {
        if (!v9)
        {
LABEL_21:

          if (!v3)
          {
            return;
          }

LABEL_15:
          free(v3);
          return;
        }

        *buf = 136446210;
        v15 = "tcp_connection_set_ecn_enabled";
        v6 = "%{public}s called with null connection, no backtrace";
        v10 = v4;
        v11 = v8;
LABEL_20:
        _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446466;
        v15 = "tcp_connection_set_ecn_enabled";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v3)
    {
      return;
    }

    goto LABEL_15;
  }

  v1 = *(a1 + 48);

  nw_parameters_set_ecn_mode(v1);
}