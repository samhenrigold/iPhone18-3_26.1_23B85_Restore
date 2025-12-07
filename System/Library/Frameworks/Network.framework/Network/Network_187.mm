NWConcrete_nw_proxy_config *nw_proxy_config_create_pac_url(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = _nw_endpoint_get_type(v4);

    if (v5 == 4)
    {
      v6 = objc_alloc_init(NWConcrete_nw_proxy_config);
      v7 = v6;
      if (v6)
      {
        v6->mode = 2;
        objc_storeStrong(&v6->endpoint, a1);
        v8 = v7;
LABEL_24:

        goto LABEL_25;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      *buf = 136446210;
      v34 = "nw_proxy_config_create_pac_url";
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s [nw_proxy_config init] failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (__nwlog_fault(v10, &type, &v31))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v34 = "nw_proxy_config_create_pac_url";
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [nw_proxy_config init] failed", buf, 0xCu);
          }
        }

        else if (v31 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v14 = type;
          v15 = os_log_type_enabled(v11, type);
          if (backtrace_string)
          {
            if (v15)
            {
              *buf = 136446466;
              v34 = "nw_proxy_config_create_pac_url";
              v35 = 2082;
              v36 = backtrace_string;
              _os_log_impl(&dword_181A37000, v11, v14, "%{public}s [nw_proxy_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v10)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          if (v15)
          {
            *buf = 136446210;
            v34 = "nw_proxy_config_create_pac_url";
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s [nw_proxy_config init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v34 = "nw_proxy_config_create_pac_url";
            _os_log_impl(&dword_181A37000, v11, v16, "%{public}s [nw_proxy_config init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v10)
      {
        goto LABEL_24;
      }

LABEL_23:
      free(v10);
      goto LABEL_24;
    }

    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_proxy_config_create_pac_url";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null (nw_endpoint_get_type(pac_url) == nw_endpoint_type_url)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v19, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v34 = "nw_proxy_config_create_pac_url";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null (nw_endpoint_get_type(pac_url) == nw_endpoint_type_url)", buf, 0xCu);
        }

LABEL_57:

        goto LABEL_58;
      }

      if (v31 != 1)
      {
        v20 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v34 = "nw_proxy_config_create_pac_url";
          _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null (nw_endpoint_get_type(pac_url) == nw_endpoint_type_url), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_57;
      }

      v24 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v20, type);
      if (!v24)
      {
        if (v28)
        {
          *buf = 136446210;
          v34 = "nw_proxy_config_create_pac_url";
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null (nw_endpoint_get_type(pac_url) == nw_endpoint_type_url), no backtrace", buf, 0xCu);
        }

        goto LABEL_57;
      }

      if (v28)
      {
        *buf = 136446466;
        v34 = "nw_proxy_config_create_pac_url";
        v35 = 2082;
        v36 = v24;
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null (nw_endpoint_get_type(pac_url) == nw_endpoint_type_url), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_proxy_config_create_pac_url";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null pac_url", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v19, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v34 = "nw_proxy_config_create_pac_url";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null pac_url", buf, 0xCu);
        }

        goto LABEL_57;
      }

      if (v31 != 1)
      {
        v20 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v34 = "nw_proxy_config_create_pac_url";
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null pac_url, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_57;
      }

      v24 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v20, type);
      if (!v24)
      {
        if (v26)
        {
          *buf = 136446210;
          v34 = "nw_proxy_config_create_pac_url";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null pac_url, no backtrace", buf, 0xCu);
        }

        goto LABEL_57;
      }

      if (v26)
      {
        *buf = 136446466;
        v34 = "nw_proxy_config_create_pac_url";
        v35 = 2082;
        v36 = v24;
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null pac_url, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_45:

      free(v24);
    }
  }

LABEL_58:
  if (v19)
  {
    free(v19);
  }

  v7 = 0;
LABEL_25:

  return v7;
}

NWConcrete_nw_proxy_config *nw_proxy_config_create_pac_script(const char *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(NWConcrete_nw_proxy_config);
    v3 = v2;
    if (v2)
    {
      v2->mode = 3;
      v4 = xpc_string_create(a1);
      pac_script = v3->pac_script;
      v3->pac_script = v4;

      v6 = v3;
LABEL_11:

      return v3;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v27 = "nw_proxy_config_create_pac_script";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s [nw_proxy_config init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v8, &type, &v24))
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
          v27 = "nw_proxy_config_create_pac_script";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s [nw_proxy_config init] failed", buf, 0xCu);
        }
      }

      else if (v24 == 1)
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
            v27 = "nw_proxy_config_create_pac_script";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v13, "%{public}s [nw_proxy_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
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
          v27 = "nw_proxy_config_create_pac_script";
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s [nw_proxy_config init] failed, no backtrace", buf, 0xCu);
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
          v27 = "nw_proxy_config_create_pac_script";
          _os_log_impl(&dword_181A37000, v9, v15, "%{public}s [nw_proxy_config init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v8);
    goto LABEL_11;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_proxy_config_create_pac_script";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null pac_script", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v17, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_proxy_config_create_pac_script";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null pac_script", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v18, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v27 = "nw_proxy_config_create_pac_script";
          v28 = 2082;
          v29 = v20;
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null pac_script, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_41;
      }

      if (v22)
      {
        *buf = 136446210;
        v27 = "nw_proxy_config_create_pac_script";
        _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null pac_script, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_proxy_config_create_pac_script";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null pac_script, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_41:
  if (v17)
  {
    free(v17);
  }

  return 0;
}

id nw_proxy_config_copy_endpoint(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[5];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_copy_endpoint";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_copy_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void nw_proxy_config_add_resolved_endpoint(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_add_resolved_endpoint";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_add_resolved_endpoint";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v10)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v10);
        goto LABEL_6;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_resolved_endpoint";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = v3[6];
    if (v6 || (v7 = _nw_array_create(), v8 = v3[6], v3[6] = v7, v8, (v6 = v3[6]) != 0))
    {
      _nw_array_append(v6, v5);
    }

    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_add_resolved_endpoint";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null resolved_endpoint", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v10, &type, &v23))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_resolved_endpoint";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null resolved_endpoint", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v23 != 1)
  {
    v11 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_resolved_endpoint";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null resolved_endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v19 = type;
  v20 = os_log_type_enabled(v11, type);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_resolved_endpoint";
      _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null resolved_endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v20)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_add_resolved_endpoint";
    v27 = 2082;
    v28 = v18;
    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null resolved_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_proxy_config_add_match_domain(nw_proxy_config_t config, const char *match_domain)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = config;
  p_isa = &v3->isa;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_config_add_match_domain";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_match_domain";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_proxy_config_add_match_domain";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_match_domain";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_match_domain";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (match_domain)
  {
    isa = v3[15].isa;
    if (!isa)
    {
      v6 = xpc_array_create(0, 0);
      v7 = p_isa[15];
      p_isa[15] = v6;

      isa = p_isa[15];
    }

    xpc_array_set_string(isa, 0xFFFFFFFFFFFFFFFFLL, match_domain);
    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_proxy_config_add_match_domain";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null match_domain", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_match_domain";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null match_domain", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_match_domain";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null match_domain, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_match_domain";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null match_domain, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_proxy_config_add_match_domain";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null match_domain, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_proxy_config_clear_match_domains(nw_proxy_config_t config)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = config;
  v2 = v1;
  if (v1)
  {
    isa = v1[15].isa;
    v1[15].isa = 0;

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_clear_match_domains";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_clear_match_domains";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_clear_match_domains";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_match_domains";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_match_domains";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_proxy_config_enumerate_match_domains(nw_proxy_config_t config, nw_proxy_domain_enumerator_t enumerator)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = config;
  v4 = enumerator;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_enumerate_match_domains";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_match_domains";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_enumerate_match_domains";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_match_domains";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_match_domains";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    isa = v3[15].isa;
    if (isa)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_config_enumerate_match_domains_block_invoke;
      applier[3] = &unk_1E6A35AD0;
      v22 = v4;
      xpc_array_apply(isa, applier);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_enumerate_match_domains";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null enumerator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_match_domains";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_match_domains";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_match_domains";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_enumerate_match_domains";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t __nw_proxy_config_enumerate_match_domains_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v5 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(v4);
    (*(v5 + 16))(v5, string_ptr);
  }

  return 1;
}

void nw_proxy_config_add_excluded_domain(nw_proxy_config_t config, const char *excluded_domain)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = config;
  p_isa = &v3->isa;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_config_add_excluded_domain";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_excluded_domain";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_proxy_config_add_excluded_domain";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_excluded_domain";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_excluded_domain";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (excluded_domain)
  {
    isa = v3[16].isa;
    if (!isa)
    {
      v6 = xpc_array_create(0, 0);
      v7 = p_isa[16];
      p_isa[16] = v6;

      isa = p_isa[16];
    }

    xpc_array_set_string(isa, 0xFFFFFFFFFFFFFFFFLL, excluded_domain);
    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_proxy_config_add_excluded_domain";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null excluded_domain", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_excluded_domain";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null excluded_domain", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_excluded_domain";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null excluded_domain, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_excluded_domain";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null excluded_domain, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_proxy_config_add_excluded_domain";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null excluded_domain, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_proxy_config_clear_excluded_domains(nw_proxy_config_t config)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = config;
  v2 = v1;
  if (v1)
  {
    isa = v1[16].isa;
    v1[16].isa = 0;

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_clear_excluded_domains";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_clear_excluded_domains";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_clear_excluded_domains";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_excluded_domains";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_excluded_domains";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_proxy_config_enumerate_excluded_domains(nw_proxy_config_t config, nw_proxy_domain_enumerator_t enumerator)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = config;
  v4 = enumerator;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_enumerate_excluded_domains";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_excluded_domains";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_enumerate_excluded_domains";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_excluded_domains";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_excluded_domains";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    isa = v3[16].isa;
    if (isa)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_config_enumerate_excluded_domains_block_invoke;
      applier[3] = &unk_1E6A35AD0;
      v22 = v4;
      xpc_array_apply(isa, applier);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_enumerate_excluded_domains";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null enumerator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_excluded_domains";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_excluded_domains";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_excluded_domains";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_enumerate_excluded_domains";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t __nw_proxy_config_enumerate_excluded_domains_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v5 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(v4);
    (*(v5 + 16))(v5, string_ptr);
  }

  return 1;
}

void nw_proxy_config_add_preferred_domain(void *a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_config_add_preferred_domain";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_preferred_domain";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_proxy_config_add_preferred_domain";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_preferred_domain";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_add_preferred_domain";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (a2)
  {
    v5 = v3[17];
    if (!v5)
    {
      v6 = xpc_array_create(0, 0);
      v7 = v4[17];
      v4[17] = v6;

      v5 = v4[17];
    }

    xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, a2);
    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_proxy_config_add_preferred_domain";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null preferred_domain", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_preferred_domain";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null preferred_domain", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_preferred_domain";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null preferred_domain, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_add_preferred_domain";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null preferred_domain, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_proxy_config_add_preferred_domain";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null preferred_domain, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_proxy_config_clear_preferred_domains(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[17];
    v1[17] = 0;

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_clear_preferred_domains";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_clear_preferred_domains";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_clear_preferred_domains";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_preferred_domains";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_preferred_domains";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_proxy_config_enumerate_preferred_domains(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_enumerate_preferred_domains";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_preferred_domains";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_enumerate_preferred_domains";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_preferred_domains";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_preferred_domains";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    v6 = v3[17];
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_config_enumerate_preferred_domains_block_invoke;
      applier[3] = &unk_1E6A35AD0;
      v22 = v4;
      xpc_array_apply(v6, applier);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_enumerate_preferred_domains";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null enumerator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_preferred_domains";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_preferred_domains";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_preferred_domains";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_enumerate_preferred_domains";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t __nw_proxy_config_enumerate_preferred_domains_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v5 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(v4);
    (*(v5 + 16))(v5, string_ptr);
  }

  return 1;
}

void nw_proxy_config_add_alternate_agent(void *a1, const unsigned __int8 *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[18];
    if (!v5)
    {
      v6 = xpc_array_create(0, 0);
      v7 = v4[18];
      v4[18] = v6;

      v5 = v4[18];
    }

    xpc_array_set_uuid(v5, 0xFFFFFFFFFFFFFFFFLL, a2);
    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_proxy_config_add_alternate_agent";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null config", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_proxy_config_add_alternate_agent";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_proxy_config_add_alternate_agent";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_proxy_config_add_alternate_agent";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_proxy_config_add_alternate_agent";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

LABEL_5:
}

void nw_proxy_config_clear_alternate_agents(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[18];
    v1[18] = 0;

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_clear_alternate_agents";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_clear_alternate_agents";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_clear_alternate_agents";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_alternate_agents";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_clear_alternate_agents";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t __nw_proxy_config_enumerate_alternate_agents_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F20])
  {
    v5 = *(a1 + 32);
    bytes = xpc_uuid_get_bytes(v4);
    (*(v5 + 16))(v5, bytes);
  }

  return 1;
}

BOOL nw_proxy_config_has_alternate_agents(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_proxy_config_has_alternate_agents";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v6, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_proxy_config_has_alternate_agents";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v10 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v17 = "nw_proxy_config_has_alternate_agents";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v11)
        {
          *buf = 136446210;
          v17 = "nw_proxy_config_has_alternate_agents";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_proxy_config_has_alternate_agents";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_22;
  }

  v3 = v1[18];
  if (!v3)
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v4 = xpc_array_get_count(v3) != 0;
LABEL_23:

  return v4;
}

void nw_proxy_config_set_alternate_protocol_stack(void *a1, void *a2, void *a3, unsigned int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v7)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_proxy_config_set_alternate_protocol_stack";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v18, &type, &v40))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_set_alternate_protocol_stack";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v43 = "nw_proxy_config_set_alternate_protocol_stack";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_59:
        if (!v18)
        {
          goto LABEL_15;
        }

LABEL_60:
        free(v18);
        goto LABEL_15;
      }

      if (v25)
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_set_alternate_protocol_stack";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_set_alternate_protocol_stack";
        _os_log_impl(&dword_181A37000, v19, v34, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

  v10 = v7[1];
  if (v10)
  {
    if (v9)
    {
      v11 = v9;
      v12 = v11 + 8;

      v10 = v7[1];
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = "proxy-wildcard";
      if (v8)
      {
        goto LABEL_11;
      }
    }

    if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
    {
      v29 = v10;
      dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
      v10 = v29;
    }

    v13 = nw_dictionary_copy_value(v10, nw_proxy_config_default_transport(void)::default_transport_string);
    if (v13)
    {
      v8 = v13;
      v10 = v7[1];
LABEL_11:
      nw_dictionary_set_value(v10, v12, v8);
      if (a4 - 2 <= 2)
      {
        v14 = v7[2];
        if (!v14)
        {
          v15 = xpc_dictionary_create(0, 0, 0);
          v16 = v7[2];
          v7[2] = v15;

          v14 = v7[2];
        }

        xpc_dictionary_set_uint64(v14, v12, a4);
      }

      goto LABEL_15;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_proxy_config_set_alternate_protocol_stack";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null stack", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v31, &type, &v40))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_set_alternate_protocol_stack";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null stack", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v32, type);
      if (v36)
      {
        if (v38)
        {
          *buf = 136446466;
          v43 = "nw_proxy_config_set_alternate_protocol_stack";
          v44 = 2082;
          v45 = v36;
          _os_log_impl(&dword_181A37000, v32, v37, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        goto LABEL_67;
      }

      if (v38)
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_set_alternate_protocol_stack";
        _os_log_impl(&dword_181A37000, v32, v37, "%{public}s called with null stack, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_set_alternate_protocol_stack";
        _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_67:
    if (v31)
    {
      free(v31);
    }

    v8 = 0;
    goto LABEL_15;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_proxy_config_set_alternate_protocol_stack";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null config->stacks", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (!__nwlog_fault(v18, &type, &v40))
  {
    goto LABEL_59;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v19 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v43 = "nw_proxy_config_set_alternate_protocol_stack";
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null config->stacks", buf, 0xCu);
    }

    goto LABEL_58;
  }

  if (v40 != 1)
  {
    v19 = __nwlog_obj();
    v35 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v43 = "nw_proxy_config_set_alternate_protocol_stack";
      _os_log_impl(&dword_181A37000, v19, v35, "%{public}s called with null config->stacks, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_58;
  }

  v26 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v27 = type;
  v28 = os_log_type_enabled(v19, type);
  if (!v26)
  {
    if (v28)
    {
      *buf = 136446210;
      v43 = "nw_proxy_config_set_alternate_protocol_stack";
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null config->stacks, no backtrace", buf, 0xCu);
    }

    goto LABEL_58;
  }

  if (v28)
  {
    *buf = 136446466;
    v43 = "nw_proxy_config_set_alternate_protocol_stack";
    v44 = 2082;
    v45 = v26;
    _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null config->stacks, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v26);
  if (v18)
  {
    goto LABEL_60;
  }

LABEL_15:
}

void nw_proxy_config_set_listener_protocol_stack(void *a1, void *a2, void *a3, unsigned int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (!v7)
  {
    v18 = __nwlog_obj();
    *key = 136446210;
    *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null config", key, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v19, &type, &v38))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null config", key, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *key = 136446466;
          *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null config, dumping backtrace:%{public}s", key, 0x16u);
        }

        free(backtrace_string);
LABEL_64:
        if (!v19)
        {
          goto LABEL_14;
        }

        goto LABEL_65;
      }

      if (v28)
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null config, no backtrace", key, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v20, type))
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null config, backtrace limit exceeded", key, 0xCu);
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  if (!v9)
  {
    v22 = __nwlog_obj();
    *key = 136446210;
    *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null transport_protocol", key, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v19, &type, &v38))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v20, type))
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null transport_protocol", key, 0xCu);
      }

      goto LABEL_63;
    }

    if (v38 != 1)
    {
      v20 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v20, type))
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null transport_protocol, backtrace limit exceeded", key, 0xCu);
      }

      goto LABEL_63;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v30 = type;
    v31 = os_log_type_enabled(v20, type);
    if (!v29)
    {
      if (v31)
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null transport_protocol, no backtrace", key, 0xCu);
      }

      goto LABEL_63;
    }

    if (v31)
    {
      *key = 136446466;
      *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
      v41 = 2082;
      v42 = v29;
      _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null transport_protocol, dumping backtrace:%{public}s", key, 0x16u);
    }

    goto LABEL_44;
  }

  if (!v7[1])
  {
    v24 = __nwlog_obj();
    *key = 136446210;
    *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null config->stacks", key, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v19, &type, &v38))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null config->stacks", key, 0xCu);
      }

      goto LABEL_63;
    }

    if (v38 != 1)
    {
      v20 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v20, type))
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v37, "%{public}s called with null config->stacks, backtrace limit exceeded", key, 0xCu);
      }

      goto LABEL_63;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v32 = type;
    v33 = os_log_type_enabled(v20, type);
    if (!v29)
    {
      if (v33)
      {
        *key = 136446210;
        *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null config->stacks, no backtrace", key, 0xCu);
      }

      goto LABEL_63;
    }

    if (v33)
    {
      *key = 136446466;
      *&key[4] = "nw_proxy_config_set_listener_protocol_stack";
      v41 = 2082;
      v42 = v29;
      _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null config->stacks, dumping backtrace:%{public}s", key, 0x16u);
    }

LABEL_44:

    free(v29);
    if (!v19)
    {
      goto LABEL_14;
    }

LABEL_65:
    v17 = v19;
LABEL_13:
    free(v17);
    goto LABEL_14;
  }

  v11 = v9;
  v12 = v11 + 8;

  *key = 0;
  asprintf(key, "%s%s", "LISTEN-", v12);
  if (v8)
  {
    goto LABEL_8;
  }

  v13 = v7[1];
  if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
  {
    v34 = v7[1];
    dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
    v13 = v34;
  }

  v8 = nw_dictionary_copy_value(v13, nw_proxy_config_default_transport(void)::default_transport_string);
  if (v8)
  {
LABEL_8:
    nw_dictionary_set_value(v7[1], *key, v8);
    if (a4 - 2 <= 2)
    {
      v14 = v7[2];
      if (!v14)
      {
        v15 = xpc_dictionary_create(0, 0, 0);
        v16 = v7[2];
        v7[2] = v15;

        v14 = v7[2];
      }

      xpc_dictionary_set_uint64(v14, *key, a4);
    }
  }

  v17 = *key;
  if (*key)
  {
    goto LABEL_13;
  }

LABEL_14:
}

void nw_proxy_config_set_fallback_proxy_agent(void *a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      *(v3 + 72) = *a2;
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_proxy_config_set_fallback_proxy_agent";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null fallback_proxy_agent_uuid", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_set_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null fallback_proxy_agent_uuid", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_set_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null fallback_proxy_agent_uuid, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_set_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null fallback_proxy_agent_uuid, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_proxy_config_set_fallback_proxy_agent";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null fallback_proxy_agent_uuid, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_proxy_config_set_fallback_proxy_agent";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_set_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_set_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_set_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_proxy_config_set_fallback_proxy_agent";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_4:
}

void nw_proxy_config_set_fallback_proxy_config(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_proxy_config_set_fallback_proxy_config";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_proxy_config_set_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_proxy_config_set_fallback_proxy_config";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_proxy_config_set_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_proxy_config_set_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    objc_storeStrong(v3 + 11, a2);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_proxy_config_set_fallback_proxy_config";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null fallback_proxy_config", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_proxy_config_set_fallback_proxy_config";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null fallback_proxy_config", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_proxy_config_set_fallback_proxy_config";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null fallback_proxy_config, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_proxy_config_set_fallback_proxy_config";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null fallback_proxy_config, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_proxy_config_set_fallback_proxy_config";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null fallback_proxy_config, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

id nw_proxy_config_copy_parameters_to_proxy(void *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_proxy_config_copy_parameters_to_proxy";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v14, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v54 = "nw_proxy_config_copy_parameters_to_proxy";
            v55 = 2082;
            v56 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v31, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_69;
        }

        if (v32)
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v15, v31, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v15, v42, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_69:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_71;
  }

  if (!v1[1])
  {
LABEL_71:
    v12 = 0;
    goto LABEL_72;
  }

  v3 = _nw_parameters_create();
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_proxy_config_copy_parameters_to_proxy";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v18, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v19, type);
        if (v33)
        {
          if (v35)
          {
            *buf = 136446466;
            v54 = "nw_proxy_config_copy_parameters_to_proxy";
            v55 = 2082;
            v56 = v33;
            _os_log_impl(&dword_181A37000, v19, v34, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_76;
        }

        if (v35)
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v19, v34, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v19, v43, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_76:
    if (v18)
    {
      free(v18);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v4 = _nw_parameters_copy_default_protocol_stack();
  if (!v4)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_proxy_config_copy_parameters_to_proxy";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null new_stack", buf, 12);

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
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null new_stack", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v23, type);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            v54 = "nw_proxy_config_copy_parameters_to_proxy";
            v55 = 2082;
            v56 = v36;
            _os_log_impl(&dword_181A37000, v23, v37, "%{public}s called with null new_stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_82;
        }

        if (v38)
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v23, v37, "%{public}s called with null new_stack, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v23, v44, "%{public}s called with null new_stack, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_82:
    if (v22)
    {
      free(v22);
    }

    v12 = 0;
    goto LABEL_12;
  }

  v5 = v2[1];
  if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
  {
    v25 = v2[1];
    dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
    v5 = v25;
  }

  v6 = nw_dictionary_copy_value(v5, nw_proxy_config_default_transport(void)::default_transport_string);
  if (!v6)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_proxy_config_copy_parameters_to_proxy";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null proxy_stack", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v27, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null proxy_stack", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        v39 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v40 = type;
        v41 = os_log_type_enabled(v28, type);
        if (v39)
        {
          if (v41)
          {
            *buf = 136446466;
            v54 = "nw_proxy_config_copy_parameters_to_proxy";
            v55 = 2082;
            v56 = v39;
            _os_log_impl(&dword_181A37000, v28, v40, "%{public}s called with null proxy_stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v39);
          goto LABEL_88;
        }

        if (v41)
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v28, v40, "%{public}s called with null proxy_stack, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v54 = "nw_proxy_config_copy_parameters_to_proxy";
          _os_log_impl(&dword_181A37000, v28, v45, "%{public}s called with null proxy_stack, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_88:
    if (v27)
    {
      free(v27);
    }

    v12 = 0;
    goto LABEL_11;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __nw_proxy_config_copy_parameters_to_proxy_block_invoke;
  v47[3] = &unk_1E6A32458;
  v48 = v2;
  v7 = v3;
  v49 = v7;
  v8 = v4;
  v50 = v8;
  v9 = v6;
  v10 = v47;
  _nw_protocol_stack_iterate_application_protocols(v9, v10);

  v11 = _nw_protocol_stack_copy_transport_protocol();
  if (v11)
  {
    _nw_protocol_stack_set_transport_protocol(v8, v11);
  }

  v12 = v7;

LABEL_11:
LABEL_12:

LABEL_13:
LABEL_72:

  return v12;
}

void __nw_proxy_config_copy_parameters_to_proxy_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (nw_protocol_options_is_serializable_tls(v6))
  {
    options_from_serializable = nw_tls_create_options_from_serializable(0, v6, *(a1 + 32) + 56, 0);

    v4 = options_from_serializable;
  }

  else
  {
    v4 = v6;
  }

  v7 = v4;
  if (nw_protocol_options_is_tls(v4) && nw_parameters_get_should_trust_invalid_certificates(*(a1 + 40)))
  {
    v5 = v7;
    sec_protocol_options_set_peer_authentication_required(v5, 0);
  }

  nw_protocol_stack_append_application_protocol(*(a1 + 48), v7);
}

id nw_proxy_config_copy_authentication_credential(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[13];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_copy_authentication_credential";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_copy_authentication_credential";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_copy_authentication_credential";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_authentication_credential";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_copy_authentication_credential";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

uint64_t nw_proxy_config_get_multipath_service(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[40];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_multipath_service";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_multipath_service";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_multipath_service";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_multipath_service";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_multipath_service";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_proxy_config_set_multipath_service(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[40] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_set_multipath_service";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_set_multipath_service";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_set_multipath_service";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_set_multipath_service";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_set_multipath_service";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

uint64_t nw_proxy_config_get_force_multipath(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[171] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_force_multipath";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_force_multipath";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_force_multipath";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_force_multipath";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_force_multipath";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_proxy_config_set_force_multipath(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v3[171] = v3[171] & 0xFD | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_force_multipath";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_force_multipath";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_force_multipath";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_force_multipath";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_force_multipath";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

uint64_t nw_proxy_config_get_apply_tfo(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[171] >> 2) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_apply_tfo";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_apply_tfo";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_apply_tfo";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_apply_tfo";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_apply_tfo";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_proxy_config_set_apply_tfo(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    v3[171] = v3[171] & 0xFB | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_apply_tfo";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_apply_tfo";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_apply_tfo";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_apply_tfo";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_apply_tfo";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

uint64_t nw_proxy_config_get_force_tfo(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[171] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_force_tfo";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_force_tfo";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_force_tfo";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_force_tfo";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_force_tfo";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_proxy_config_set_force_tfo(void *a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[171] = v3[171] & 0xFE | a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_set_force_tfo";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_set_force_tfo";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_set_force_tfo";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_set_force_tfo";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_set_force_tfo";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

uint64_t nw_proxy_config_get_disable_tfo_cookie(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[171] >> 3) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_disable_tfo_cookie";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_disable_tfo_cookie";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_disable_tfo_cookie";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_disable_tfo_cookie";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_disable_tfo_cookie";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_proxy_config_set_disable_tfo_cookie(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    v3[171] = v3[171] & 0xF7 | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_disable_tfo_cookie";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_disable_tfo_cookie";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_disable_tfo_cookie";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_disable_tfo_cookie";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_disable_tfo_cookie";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

id nw_proxy_config_copy_pac_script(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (*(v1 + 38) == 3)
    {
      v3 = v1[14];
      goto LABEL_4;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_proxy_config_copy_pac_script";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null (config->mode == nw_proxy_mode_pac_script)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_pac_script";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null (config->mode == nw_proxy_mode_pac_script)", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_pac_script";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null (config->mode == nw_proxy_mode_pac_script), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_pac_script";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null (config->mode == nw_proxy_mode_pac_script), no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_proxy_config_copy_pac_script";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null (config->mode == nw_proxy_mode_pac_script), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_proxy_config_copy_pac_script";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_pac_script";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_pac_script";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_pac_script";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_proxy_config_copy_pac_script";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_4:

  return v3;
}

id nw_proxy_configs_create_with_schema_array(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_configs_create_with_schema_array";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null array", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v7, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_configs_create_with_schema_array";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null array", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v25 = "nw_proxy_configs_create_with_schema_array";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v7)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v14)
      {
        *buf = 136446210;
        v25 = "nw_proxy_configs_create_with_schema_array";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_configs_create_with_schema_array";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  if (object_getClass(v1) != MEMORY[0x1E69E9E50])
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_configs_create_with_schema_array";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null (xpc_get_type(array) == (&_xpc_type_array))", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v7, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_configs_create_with_schema_array";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null (xpc_get_type(array) == (&_xpc_type_array))", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v15 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v8, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          v25 = "nw_proxy_configs_create_with_schema_array";
          v26 = 2082;
          v27 = v15;
          _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null (xpc_get_type(array) == (&_xpc_type_array)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
LABEL_38:
        if (!v7)
        {
LABEL_40:
          v4 = 0;
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_40;
      }

      if (v17)
      {
        *buf = 136446210;
        v25 = "nw_proxy_configs_create_with_schema_array";
        _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null (xpc_get_type(array) == (&_xpc_type_array)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_configs_create_with_schema_array";
        _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null (xpc_get_type(array) == (&_xpc_type_array)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  v3 = _nw_array_create();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __nw_proxy_configs_create_with_schema_array_block_invoke;
  applier[3] = &unk_1E6A3D300;
  v4 = v3;
  v21 = v4;
  xpc_array_apply(v2, applier);

LABEL_4:
  return v4;
}

uint64_t __nw_proxy_configs_create_with_schema_array_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null dictionary", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (!__nwlog_fault(v74, &type, &v91))
    {
      goto LABEL_130;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null dictionary", buf, 0xCu);
      }
    }

    else if (v91 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v75 = __nwlog_obj();
      v80 = type;
      v81 = os_log_type_enabled(v75, type);
      if (backtrace_string)
      {
        if (v81)
        {
          *buf = 136446466;
          v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
          v95 = 2082;
          v96 = backtrace_string;
          _os_log_impl(&dword_181A37000, v75, v80, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v74)
        {
          goto LABEL_95;
        }

        goto LABEL_131;
      }

      if (v81)
      {
        *buf = 136446210;
        v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
        _os_log_impl(&dword_181A37000, v75, v80, "%{public}s called with null dictionary, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v75 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
        _os_log_impl(&dword_181A37000, v75, v85, "%{public}s called with null dictionary, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_129;
  }

  if (object_getClass(v4) != MEMORY[0x1E69E9E80])
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (!__nwlog_fault(v74, &type, &v91))
    {
      goto LABEL_130;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v78 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
        _os_log_impl(&dword_181A37000, v75, v78, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))", buf, 0xCu);
      }
    }

    else if (v91 == 1)
    {
      v82 = __nw_create_backtrace_string();
      v75 = __nwlog_obj();
      v83 = type;
      v84 = os_log_type_enabled(v75, type);
      if (v82)
      {
        if (v84)
        {
          *buf = 136446466;
          v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
          v95 = 2082;
          v96 = v82;
          _os_log_impl(&dword_181A37000, v75, v83, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
LABEL_130:
        if (!v74)
        {
          goto LABEL_95;
        }

LABEL_131:
        free(v74);
        goto LABEL_95;
      }

      if (v84)
      {
        *buf = 136446210;
        v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
        _os_log_impl(&dword_181A37000, v75, v83, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v75 = __nwlog_obj();
      v86 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v94 = "nw_proxy_configs_create_with_schema_array_block_invoke";
        _os_log_impl(&dword_181A37000, v75, v86, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_129:

    goto LABEL_130;
  }

  if (nw_proxy_config_get_int64(v5, @"ProxyAutoConfigEnable", 1uLL))
  {
    string = nw_proxy_config_get_string(v5, @"ProxyAutoConfigJavaScript");
    v7 = nw_proxy_config_get_string(v5, @"ProxyAutoConfigURLString");
    if (string)
    {
      pac_script = nw_proxy_config_create_pac_script(string);
      pac_url = pac_script;
      if (pac_script)
      {
        nw_proxy_config_apply_common_keys(pac_script, v5, 0);
        v10 = *(a1 + 32);
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }

      goto LABEL_95;
    }

    if (v7)
    {
      url = _nw_endpoint_create_url(v7);
      pac_url = nw_proxy_config_create_pac_url(url);

      if (pac_url)
      {
        nw_proxy_config_apply_common_keys(pac_url, v5, 0);
        v10 = *(a1 + 32);
        if (v10)
        {
LABEL_11:
          _nw_array_append(v10, pac_url);
        }

LABEL_12:

        goto LABEL_13;
      }

LABEL_95:
      v71 = 0;
      goto LABEL_96;
    }
  }

LABEL_13:
  if (nw_proxy_config_get_int64(v5, @"HTTPEnable", 1uLL))
  {
    v12 = nw_proxy_config_get_string(v5, @"HTTPProxy");
    int64 = nw_proxy_config_get_int64(v5, @"HTTPPort", 0x50uLL);
    if (v12)
    {
      if (int64)
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v12, int64);
        if (nw_proxy_copy_http_connect_definition::onceToken != -1)
        {
          dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
        }

        v15 = nw_proxy_copy_http_connect_definition::proxy_definition;
        options = nw_proxy_create_options(v15);
        v17 = nw_proxy_config_create(host_with_numeric_port, options);

        if (!v17)
        {
          goto LABEL_95;
        }

        v17->type = 2001;
        nw_proxy_config_apply_common_keys(v17, v5, 1);
        v18 = *(a1 + 32);
        if (v18)
        {
          _nw_array_append(v18, v17);
        }
      }
    }
  }

  if (nw_proxy_config_get_int64(v5, @"HTTPSEnable", 1uLL))
  {
    v19 = nw_proxy_config_get_string(v5, @"HTTPSProxy");
    v20 = nw_proxy_config_get_int64(v5, @"HTTPSPort", 0x1BBuLL);
    if (v19)
    {
      v21 = v20;
      if (v20)
      {
        empty = _nw_protocol_stack_create_empty();
        if (nw_proxy_copy_http_connect_definition::onceToken != -1)
        {
          dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
        }

        v23 = nw_proxy_copy_http_connect_definition::proxy_definition;
        v24 = nw_proxy_create_options(v23);
        nw_protocol_stack_append_application_protocol(empty, v24);

        if (nw_proxy_config_get_int64(v5, @"HTTPSOverTLSEnable", 0))
        {
          v25 = nw_protocol_boringssl_copy_definition();
          v26 = nw_protocol_create_options(v25);

          nw_protocol_stack_append_application_protocol(empty, v26);
          v27 = 4002;
        }

        else
        {
          v27 = 4001;
        }

        v28 = nw_endpoint_create_host_with_numeric_port(v19, v21);
        v29 = nw_proxy_config_create_with_stack(v28, empty);

        if (!v29)
        {
          goto LABEL_94;
        }

        v29->type = v27;
        nw_proxy_config_apply_common_keys(v29, v5, 1);
        if (nw_proxy_config_get_int64(v5, @"HTTPSTransparentEnable", 0) || nw_proxy_config_get_int64(v5, @"HTTPSOverTLSEnable", 0))
        {
          *(v29 + 171) |= 0x10u;
        }

        v30 = nw_proxy_config_get_string(v5, @"kCFStreamPropertyHTTPProxyUsername");
        if (v30 || (v30 = nw_proxy_config_get_string(v5, @"HTTPProxyUsername")) != 0 || (v30 = nw_proxy_config_get_string(v5, @"HTTPSUser")) != 0)
        {
          v31 = [[NWConcrete_nw_authentication_credential alloc] initWithType:?];
          credential = v29->credential;
          v29->credential = v31;

          nw_authentication_credential_set_username(v29->credential, v30);
          v33 = nw_proxy_config_get_string(v5, @"kCFStreamPropertyHTTPProxyPassword");
          if (v33 || (v33 = nw_proxy_config_get_string(v5, @"HTTPProxyPassword")) != 0 || (v33 = nw_proxy_config_get_string(v5, @"HTTPSPassword")) != 0)
          {
            nw_authentication_credential_set_password(v29->credential, v33);
          }
        }

        v34 = *(a1 + 32);
        if (v34)
        {
          _nw_array_append(v34, v29);
        }
      }
    }
  }

  if (nw_proxy_config_get_int64(v5, @"SOCKSEnable", 1uLL))
  {
    v35 = nw_proxy_config_get_string(v5, @"SOCKSProxy");
    v36 = nw_proxy_config_get_int64(v5, @"SOCKSPort", 0);
    if (v35)
    {
      if (v36)
      {
        empty = nw_endpoint_create_host_with_numeric_port(v35, v36);
        v37 = nw_proxy_config_get_string(v5, @"kCFStreamPropertySOCKSVersion");
        if (!v37)
        {
          goto LABEL_51;
        }

        v38 = _CFXPCCreateXPCObjectFromCFObject();
        string_ptr = xpc_string_get_string_ptr(v38);
        if (!strcmp(v37, string_ptr))
        {
          if (nw_protocol_socksv4_copy_definition::onceToken != -1)
          {
            dispatch_once(&nw_protocol_socksv4_copy_definition::onceToken, &__block_literal_global_47340);
          }

          if (nw_protocol_socksv4_copy_definition::definition)
          {
            v41 = os_retain(nw_protocol_socksv4_copy_definition::definition);
          }

          else
          {
            v41 = 0;
          }

          v45 = nw_framer_create_options(v41);
          v43 = nw_proxy_config_create(empty, v45);

          if (v43)
          {
            v43->type = 3001;
LABEL_78:

            goto LABEL_79;
          }
        }

        else
        {
          if (strcmp(v37, "shoes"))
          {

LABEL_51:
            if (nw_protocol_socksv5_copy_definition::onceToken != -1)
            {
              dispatch_once(&nw_protocol_socksv5_copy_definition::onceToken, &__block_literal_global_89224);
            }

            if (nw_protocol_socksv5_copy_definition::definition)
            {
              v40 = os_retain(nw_protocol_socksv5_copy_definition::definition);
            }

            else
            {
              v40 = 0;
            }

            v42 = nw_framer_create_options(v40);
            v43 = nw_proxy_config_create(empty, v42);

            if (v43)
            {
              v43->type = 3002;
LABEL_79:
              nw_proxy_config_apply_common_keys(v43, v5, 1);
              *(v43 + 170) |= 8u;
              v65 = nw_proxy_config_get_string(v5, @"kCFStreamPropertySOCKSUser");
              if (v65 || (v65 = nw_proxy_config_get_string(v5, @"SOCKSUser")) != 0)
              {
                v66 = [[NWConcrete_nw_authentication_credential alloc] initWithType:?];
                v67 = v43->credential;
                v43->credential = v66;

                nw_authentication_credential_set_username(v43->credential, v65);
                v68 = nw_proxy_config_get_string(v5, @"kCFStreamPropertySOCKSPassword");
                if (v68 || (v68 = nw_proxy_config_get_string(v5, @"SOCKSPassword")) != 0)
                {
                  nw_authentication_credential_set_password(v43->credential, v68);
                }
              }

              v69 = *(a1 + 32);
              if (v69)
              {
                _nw_array_append(v69, v43);
              }

              goto LABEL_87;
            }

            goto LABEL_94;
          }

          if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
          {
            dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
          }

          if (nw_protocol_shoes_get_definition(void)::proxy_definition)
          {
            v44 = os_retain(nw_protocol_shoes_get_definition(void)::proxy_definition);
          }

          else
          {
            v44 = 0;
          }

          v46 = nw_protocol_create_options(v44);

          v47 = nw_proxy_config_create(empty, v46);
          v43 = v47;
          if (v47)
          {
            v47->type = 3003;
            *(v47 + 170) |= 0x10u;
            *(v47 + 172) |= 2u;
            v87 = v46;
            v48 = _nw_protocol_stack_create_empty();
            v49 = nw_protocol_shoes_copy_definition();
            v50 = nw_protocol_create_options(v49);

            if (nw_proxy_config_get_int64(v5, @"SHOESUDPAssociate", 0) >= 1 && _os_feature_enabled_impl())
            {
              nw_protocol_shoes_parameters_set_udp_associate_supported(v50);
              v51 = _nw_udp_create_options();
              v52 = nw_protocol_copy_quic_definition();
              nw_proxy_config_set_alternate_protocol_stack(v43, v48, v52, 3u);
              v53 = v51;
            }

            else
            {
              v54 = nw_shoes_copy_udp_framer_definition();
              v55 = nw_framer_create_options(v54);
              nw_protocol_stack_append_application_protocol(v48, v55);

              v53 = _nw_tcp_create_options(v56, v57, v58, v59, v60, v61, v62);
              _nw_tcp_options_set_no_delay(v53, 1);
              v52 = v54;
            }

            nw_protocol_shoes_parameters_set_udp(v50);
            nw_protocol_stack_append_application_protocol(v48, v50);
            nw_protocol_stack_set_transport_protocol(v48, v53);
            v63 = nw_protocol_copy_udp_definition();
            nw_proxy_config_set_alternate_protocol_stack(v43, v48, v63, 4u);

            v64 = nw_proxy_config_get_string(v5, @"SHOESFixedBundleID");
            if (v64)
            {
              nw_protocol_shoes_parameters_set_fixed_bundle_id(v87, v64);
              *(v43 + 170) |= 0x40u;
            }

            goto LABEL_78;
          }
        }

LABEL_94:
        goto LABEL_95;
      }
    }
  }

LABEL_87:
  if (nw_proxy_config_get_int64(v5, @"TransportConverterEnable", 0))
  {
    v70 = nw_proxy_config_get_array(v5, @"TransportConverterProxy");
    if (v70)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_configs_create_with_schema_array_block_invoke_127;
      applier[3] = &unk_1E6A39B38;
      v89 = v5;
      v90 = *(a1 + 32);
      xpc_array_apply(v70, applier);
    }
  }

  v71 = 1;
LABEL_96:

  return v71;
}

BOOL nw_proxy_config_get_int64(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  v6 = v5;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v29 = "nw_proxy_config_get_int64";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &type, &v26))
    {
      goto LABEL_29;
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
        v29 = "nw_proxy_config_get_int64";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v29 = "nw_proxy_config_get_int64";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v11)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v16)
      {
        *buf = 136446210;
        v29 = "nw_proxy_config_get_int64";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v29 = "nw_proxy_config_get_int64";
        _os_log_impl(&dword_181A37000, v12, v18, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_28;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  if (!string_ptr)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_proxy_config_get_int64";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null key_string", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v11, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_proxy_config_get_int64";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null key_string", buf, 0xCu);
        }

LABEL_28:

        goto LABEL_29;
      }

      if (v26 != 1)
      {
        v12 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_proxy_config_get_int64";
          _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null key_string, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_28;
      }

      v22 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v12, type);
      if (!v22)
      {
        if (v24)
        {
          *buf = 136446210;
          v29 = "nw_proxy_config_get_int64";
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null key_string, no backtrace", buf, 0xCu);
        }

        goto LABEL_28;
      }

      if (v24)
      {
        *buf = 136446466;
        v29 = "nw_proxy_config_get_int64";
        v30 = 2082;
        v31 = v22;
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null key_string, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v22);
    }

LABEL_29:
    if (!v11)
    {
LABEL_31:
      a3 = 0;
      goto LABEL_32;
    }

LABEL_30:
    free(v11);
    goto LABEL_31;
  }

  v8 = xpc_dictionary_get_value(v4, string_ptr);
  v9 = v8;
  if (v8)
  {
    if (object_getClass(v8) == MEMORY[0x1E69E9EB0])
    {
      value = xpc_int64_get_value(v9);
    }

    else
    {
      if (object_getClass(v9) != MEMORY[0x1E69E9F18])
      {
        if (object_getClass(v9) == MEMORY[0x1E69E9E58])
        {
          a3 = xpc_BOOL_get_value(v9);
        }

        goto LABEL_25;
      }

      value = xpc_uint64_get_value(v9);
    }

    a3 = value;
  }

LABEL_25:

LABEL_32:
  return a3;
}

const char *nw_proxy_config_get_string(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v25 = "nw_proxy_config_get_string";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &type, &v22))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_get_string";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v25 = "nw_proxy_config_get_string";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v8)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_get_string";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_get_string";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  string_ptr = xpc_string_get_string_ptr(v3);
  if (!string_ptr)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_config_get_string";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null key_string", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v8, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_proxy_config_get_string";
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null key_string", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_proxy_config_get_string";
          _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key_string, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      v18 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v9, type);
      if (!v18)
      {
        if (v20)
        {
          *buf = 136446210;
          v25 = "nw_proxy_config_get_string";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null key_string, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v20)
      {
        *buf = 136446466;
        v25 = "nw_proxy_config_get_string";
        v26 = 2082;
        v27 = v18;
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null key_string, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v18);
    }

LABEL_21:
    if (!v8)
    {
LABEL_23:
      string = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v8);
    goto LABEL_23;
  }

  string = xpc_dictionary_get_string(v2, string_ptr);
LABEL_24:

  return string;
}

void nw_proxy_config_apply_common_keys(void *a1, void *a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    string = xpc_dictionary_get_string(v6, "Identifier");
    if (string)
    {
      uuid_parse(string, v5 + 56);
    }

    v9 = nw_proxy_config_get_array(v7, @"ExceptionsList");
    v10 = *(v5 + 16);
    *(v5 + 16) = v9;

    v5[170] = v5[170] & 0xF7 | (8 * !nw_proxy_config_get_int64(v7, @"FallBackAllowed", a3 ^ 1u));
    v5[170] = v5[170] & 0x7F | (nw_proxy_config_get_int64(v7, @"ExcludeSimpleHostnames", 0) << 7);
    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_proxy_config_apply_common_keys";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null dictionary", buf, 12);

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
        v22 = "nw_proxy_config_apply_common_keys";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null dictionary", buf, 0xCu);
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
          v22 = "nw_proxy_config_apply_common_keys";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_proxy_config_apply_common_keys";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null dictionary, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "nw_proxy_config_apply_common_keys";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null dictionary, backtrace limit exceeded", buf, 0xCu);
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

id nw_proxy_config_get_array(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v27 = "nw_proxy_config_get_array";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v10, &type, &v24))
    {
      goto LABEL_25;
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
        v27 = "nw_proxy_config_get_array";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nw_proxy_config_get_array";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v10)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v15)
      {
        *buf = 136446210;
        v27 = "nw_proxy_config_get_array";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "nw_proxy_config_get_array";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s _CFXPCCreateXPCObjectFromCFObject failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_24;
  }

  string_ptr = xpc_string_get_string_ptr(v3);
  if (!string_ptr)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_proxy_config_get_array";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null key_string", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v10, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_get_array";
          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null key_string", buf, 0xCu);
        }

LABEL_24:

        goto LABEL_25;
      }

      if (v24 != 1)
      {
        v11 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_get_array";
          _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null key_string, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_24;
      }

      v20 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v11, type);
      if (!v20)
      {
        if (v22)
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_get_array";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null key_string, no backtrace", buf, 0xCu);
        }

        goto LABEL_24;
      }

      if (v22)
      {
        *buf = 136446466;
        v27 = "nw_proxy_config_get_array";
        v28 = 2082;
        v29 = v20;
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null key_string, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v20);
    }

LABEL_25:
    if (!v10)
    {
LABEL_27:
      v8 = 0;
      goto LABEL_28;
    }

LABEL_26:
    free(v10);
    goto LABEL_27;
  }

  v6 = xpc_dictionary_get_value(v2, string_ptr);
  v7 = v6;
  if (v6 && object_getClass(v6) == MEMORY[0x1E69E9E50])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_28:

  return v8;
}

BOOL __nw_proxy_configs_create_with_schema_array_block_invoke_127(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  if (string_ptr)
  {
    if (nw_protocol_tcpconverter_copy_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_tcpconverter_copy_definition::onceToken, &__block_literal_global_51316);
    }

    if (nw_protocol_tcpconverter_copy_definition::definition)
    {
      v6 = os_retain(nw_protocol_tcpconverter_copy_definition::definition);
    }

    else
    {
      v6 = 0;
    }

    options = nw_framer_create_options(v6);

    int64 = nw_proxy_config_get_int64(*(a1 + 32), @"TransportConverterPort", 0);
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(string_ptr, int64);
    v11 = nw_proxy_config_create(host_with_numeric_port, options);

    v7 = v11 != 0;
    if (v11)
    {
      v11->type = 3005;
      nw_proxy_config_apply_common_keys(v11, *(a1 + 32), 1);
      *(v11 + 170) |= 0x68u;
      if (!nw_proxy_config_get_int64(*(a1 + 32), @"TransportConverterFallBackAllowed", 0))
      {
        *(v11 + 171) |= 3u;
      }

      *(v11 + 171) = *(v11 + 171) & 0xFB | (4 * nw_proxy_config_get_int64(*(a1 + 32), @"TransportConverterTFOMode", 0));
      *(v11 + 171) = *(v11 + 171) & 0xF7 | (8 * (nw_proxy_config_get_int64(*(a1 + 32), @"TransportConverterTFOMode", 0) == 2));
      v11->multipath_service = nw_proxy_config_get_int64(*(a1 + 32), @"TransportConverterMultipathServiceType", 0);
      v12 = *(a1 + 40);
      if (v12)
      {
        _nw_array_append(v12, v11);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void nw_proxy_config_set_is_privacy_proxy(void *a1, char a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    if (a3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v5[170] = v6 | a2 | v5[170] & 0xFC;
    goto LABEL_6;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_proxy_config_set_is_privacy_proxy";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_proxy_config_set_is_privacy_proxy";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_proxy_config_set_is_privacy_proxy";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_proxy_config_set_is_privacy_proxy";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_proxy_config_set_is_privacy_proxy";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_6:
}

uint64_t nw_proxy_config_get_ignore_privacy_stance(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[170] >> 2) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_ignore_privacy_stance";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_get_ignore_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_ignore_privacy_stance";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_ignore_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_ignore_privacy_stance";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_proxy_config_set_ignore_privacy_stance(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    v3[170] = v3[170] & 0xFB | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_ignore_privacy_stance";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_ignore_privacy_stance";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_ignore_privacy_stance";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_ignore_privacy_stance";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_ignore_privacy_stance";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_proxy_config_set_use_over_privacy_proxy(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    v3[171] = v4 & 0x80 | v3[171] & 0x7F;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_use_over_privacy_proxy";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_use_over_privacy_proxy";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_use_over_privacy_proxy";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_use_over_privacy_proxy";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_use_over_privacy_proxy";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_proxy_config_set_is_fallback(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    v3[171] = v3[171] & 0xDF | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_is_fallback";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_is_fallback";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_is_fallback";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_is_fallback";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_is_fallback";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_proxy_config_set_prohibit_direct(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    v3[170] = v3[170] & 0xF7 | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_prohibit_direct";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_prohibit_direct";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_prohibit_direct";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_prohibit_direct";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_prohibit_direct";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_proxy_config_set_use_fast_fallback(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    v3[171] = v3[171] & 0xBF | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_use_fast_fallback";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null config", buf, 12);

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
        v16 = "nw_proxy_config_set_use_fast_fallback";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_proxy_config_set_use_fast_fallback";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_use_fast_fallback";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_use_fast_fallback";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_proxy_config_add_required_protocol(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_add_required_protocol";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_required_protocol";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_add_required_protocol";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v10)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v10);
        goto LABEL_6;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_required_protocol";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_required_protocol";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    if (!v3[3])
    {
      v6 = xpc_array_create(0, 0);
      v7 = v3[3];
      v3[3] = v6;
    }

    v8 = v5;

    xpc_array_set_string(v3[3], 0xFFFFFFFFFFFFFFFFLL, v8 + 8);
    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_add_required_protocol";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v10, &type, &v23))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_required_protocol";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v23 != 1)
  {
    v11 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_required_protocol";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v19 = type;
  v20 = os_log_type_enabled(v11, type);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_required_protocol";
      _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v20)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_add_required_protocol";
    v27 = 2082;
    v28 = v18;
    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_proxy_config_stack_requires_http_protocols(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_stack_requires_http_protocols";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_stack_requires_http_protocols";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            *&buf[4] = "nw_proxy_config_stack_requires_http_protocols";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v13)
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_stack_requires_http_protocols";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_stack_requires_http_protocols";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_24;
  }

  if (!v1[3])
  {
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 0;
  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v3 = nw_protocol_copy_http_messaging_definition_definition;
  identifier = nw_protocol_definition_get_identifier(v3);
  v5 = v2[3];
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __nw_proxy_config_stack_requires_http_protocols_block_invoke;
  applier[3] = &unk_1E6A38718;
  applier[4] = buf;
  applier[5] = identifier;
  xpc_array_apply(v5, applier);
  v6 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_25:

  return v6 & 1;
}

void sub_1826D08E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __nw_proxy_config_stack_requires_http_protocols_block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  v4 = *(a1 + 40);
  string_ptr = xpc_string_get_string_ptr(xstring);
  v6 = strcmp(v4, string_ptr);
  if (!v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v6 != 0;
}

void nw_proxy_config_add_protocol_to_remove(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_add_protocol_to_remove";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_protocol_to_remove";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_add_protocol_to_remove";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v10)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v10);
        goto LABEL_6;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_protocol_to_remove";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_add_protocol_to_remove";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    if (!v3[4])
    {
      v6 = xpc_array_create(0, 0);
      v7 = v3[4];
      v3[4] = v6;
    }

    v8 = v5;

    xpc_array_set_string(v3[4], 0xFFFFFFFFFFFFFFFFLL, v8 + 8);
    goto LABEL_6;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_add_protocol_to_remove";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v10, &type, &v23))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_protocol_to_remove";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v23 != 1)
  {
    v11 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_protocol_to_remove";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v19 = type;
  v20 = os_log_type_enabled(v11, type);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_add_protocol_to_remove";
      _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v20)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_add_protocol_to_remove";
    v27 = 2082;
    v28 = v18;
    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t __nw_proxy_config_remove_protocols_from_stack_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  if (*string_ptr)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__41721;
    v14 = __Block_byref_object_dispose__41722;
    v15 = 0;
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __nw_proxy_config_remove_protocols_from_stack_block_invoke_2;
    v9[3] = &unk_1E6A32480;
    v9[4] = &v10;
    v9[5] = string_ptr;
    nw_protocol_stack_iterate_application_protocols(v6, v9);
    v7 = v11[5];
    if (v7)
    {
      nw_protocol_stack_remove_protocol(*(a1 + 32), v7);
    }

    _Block_object_dispose(&v10, 8);
  }

  return 1;
}

void __nw_proxy_config_remove_protocols_from_stack_block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = nw_protocol_options_copy_definition(v8);
  identifier = nw_protocol_definition_get_identifier(v3);
  v5 = *(*(a1 + 32) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7 && !strcmp(identifier, *(a1 + 40)))
  {
    objc_storeStrong(v6, v3);
  }
}

uint64_t __nw_proxy_config_supports_connection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  if (*string_ptr)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __nw_proxy_config_supports_connection_block_invoke_2;
    v9[3] = &unk_1E6A32480;
    v9[4] = &v10;
    v9[5] = string_ptr;
    nw_protocol_stack_iterate_application_protocols(v6, v9);
    v7 = *(v11 + 24);
    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_1826D1120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_proxy_config_supports_connection_block_invoke_141(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    v6 = 1;
    if (nw_endpoint_proxy_match_pattern_to_endpoint(*(a1 + 32), string_ptr))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __nw_proxy_config_supports_connection_block_invoke_2_142(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    v6 = 1;
    if (nw_endpoint_proxy_match_pattern_to_endpoint(*(a1 + 32), string_ptr))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t ___ZL37nw_proxy_config_can_use_tcp_converterv_block_invoke()
{
  result = MGGetBoolAnswer();
  if ((result & 1) != 0 || (result = MGGetBoolAnswer(), result))
  {
    nw_proxy_config_can_use_tcp_converter(void)::allowed = 1;
  }

  return result;
}

void __nw_proxy_config_supports_connection_block_invoke_2(uint64_t a1, nw_protocol_options_t options)
{
  v4 = nw_protocol_options_copy_definition(options);
  identifier = nw_protocol_definition_get_identifier(v4);
  if (!strcmp(identifier, *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

BOOL nw_proxy_config_supports_unsatisfied_paths(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[170] & 0x40) == 0;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_supports_unsatisfied_paths";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_supports_unsatisfied_paths";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_supports_unsatisfied_paths";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_supports_unsatisfied_paths";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_supports_unsatisfied_paths";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_proxy_config_override_opaque_https(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[171] >> 4) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_override_opaque_https";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_proxy_config_override_opaque_https";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_override_opaque_https";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_override_opaque_https";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_override_opaque_https";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_proxy_config_copy_agent_data(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v283 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = v2;
  if (!v2)
  {
    v142 = __nwlog_obj();
    *buf = 136446210;
    v271 = "nw_proxy_config_copy_agent_data";
    v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v142, 16, "%{public}s called with null config", buf, 12);

    v274[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v143, v274, type))
    {
      goto LABEL_334;
    }

    if (v274[0] == 17)
    {
      v144 = __nwlog_obj();
      v145 = v274[0];
      if (os_log_type_enabled(v144, v274[0]))
      {
        *buf = 136446210;
        v271 = "nw_proxy_config_copy_agent_data";
        _os_log_impl(&dword_181A37000, v144, v145, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v144 = __nwlog_obj();
      v149 = v274[0];
      v150 = os_log_type_enabled(v144, v274[0]);
      if (backtrace_string)
      {
        if (v150)
        {
          *buf = 136446466;
          v271 = "nw_proxy_config_copy_agent_data";
          v272 = 2082;
          v273 = backtrace_string;
          _os_log_impl(&dword_181A37000, v144, v149, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_334:
        if (!v143)
        {
LABEL_13:
          v28 = 0;
LABEL_216:

          return v28;
        }

LABEL_335:
        free(v143);
        goto LABEL_13;
      }

      if (v150)
      {
        *buf = 136446210;
        v271 = "nw_proxy_config_copy_agent_data";
        _os_log_impl(&dword_181A37000, v144, v149, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v144 = __nwlog_obj();
      v158 = v274[0];
      if (os_log_type_enabled(v144, v274[0]))
      {
        *buf = 136446210;
        v271 = "nw_proxy_config_copy_agent_data";
        _os_log_impl(&dword_181A37000, v144, v158, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_333:

    goto LABEL_334;
  }

  if (v2[38] != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v271 = "nw_proxy_config_copy_agent_data";
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s Only protocol proxies can be serialized", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (!*(v2 + 1))
  {
    v146 = __nwlog_obj();
    *buf = 136446210;
    v271 = "nw_proxy_config_copy_agent_data";
    v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v146, 16, "%{public}s called with null config->stacks", buf, 12);

    v274[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v143, v274, type))
    {
      goto LABEL_334;
    }

    if (v274[0] == 17)
    {
      v144 = __nwlog_obj();
      v147 = v274[0];
      if (os_log_type_enabled(v144, v274[0]))
      {
        *buf = 136446210;
        v271 = "nw_proxy_config_copy_agent_data";
        _os_log_impl(&dword_181A37000, v144, v147, "%{public}s called with null config->stacks", buf, 0xCu);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v159 = __nw_create_backtrace_string();
      v144 = __nwlog_obj();
      v160 = v274[0];
      v161 = os_log_type_enabled(v144, v274[0]);
      if (v159)
      {
        if (v161)
        {
          *buf = 136446466;
          v271 = "nw_proxy_config_copy_agent_data";
          v272 = 2082;
          v273 = v159;
          _os_log_impl(&dword_181A37000, v144, v160, "%{public}s called with null config->stacks, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v159);
        if (!v143)
        {
          goto LABEL_13;
        }

        goto LABEL_335;
      }

      if (v161)
      {
        *buf = 136446210;
        v271 = "nw_proxy_config_copy_agent_data";
        _os_log_impl(&dword_181A37000, v144, v160, "%{public}s called with null config->stacks, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v144 = __nwlog_obj();
      v190 = v274[0];
      if (os_log_type_enabled(v144, v274[0]))
      {
        *buf = 136446210;
        v271 = "nw_proxy_config_copy_agent_data";
        _os_log_impl(&dword_181A37000, v144, v190, "%{public}s called with null config->stacks, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_333;
  }

  v255 = 0;
  v256 = &v255;
  v257 = 0x2020000000;
  v258 = 0;
  enumerator[0] = MEMORY[0x1E69E9820];
  enumerator[1] = 3221225472;
  enumerator[2] = __nw_proxy_config_copy_agent_data_block_invoke;
  enumerator[3] = &unk_1E6A3AA78;
  enumerator[4] = &v255;
  nw_proxy_config_enumerate_match_domains(v2, enumerator);
  v253[0] = MEMORY[0x1E69E9820];
  v253[1] = 3221225472;
  v253[2] = __nw_proxy_config_copy_agent_data_block_invoke_2;
  v253[3] = &unk_1E6A3AA78;
  v253[4] = &v255;
  nw_proxy_config_enumerate_excluded_domains(v3, v253);
  v252[0] = MEMORY[0x1E69E9820];
  v252[1] = 3221225472;
  v252[2] = __nw_proxy_config_copy_agent_data_block_invoke_3;
  v252[3] = &unk_1E6A3AA78;
  v252[4] = &v255;
  nw_proxy_config_enumerate_preferred_domains(v3, v252);
  v248 = 0;
  v249 = &v248;
  v250 = 0x2020000000;
  v251 = 0;
  v247[0] = MEMORY[0x1E69E9820];
  v247[1] = 3221225472;
  v247[2] = __nw_proxy_config_copy_agent_data_block_invoke_4;
  v247[3] = &unk_1E6A3AA78;
  v247[4] = &v248;
  nw_proxy_config_enumerate_alternate_agents(v3, v247);
  v4 = 4028;
  v5 = buf;
  bzero(buf, 0xFBCuLL);
  v6 = v256[3];
  v7 = v249[3];
  v224 = (v6 | v7) != 0;
  if (v6 | v7)
  {
    v8 = v6 + v7;
    v4 = v8 + 4028;
    if (v8 == -4028)
    {
      v162 = __nwlog_obj();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        v163 = 3;
      }

      else
      {
        v163 = 2;
      }

      *v274 = 136446210;
      v275 = "nw_proxy_config_copy_agent_data";
      v164 = _os_log_send_and_compose_impl(v163, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s strict_calloc called with size 0", v274, 12);

      result = __nwlog_should_abort(v164);
      if (result)
      {
        goto LABEL_388;
      }

      free(v164);
    }

    v5 = malloc_type_calloc(1uLL, v4, 0x9B59DED5uLL);
    if (!v5)
    {
      v216 = __nwlog_obj();
      v217 = os_log_type_enabled(v216, OS_LOG_TYPE_ERROR);
      *v274 = 136446722;
      v275 = "nw_proxy_config_copy_agent_data";
      if (v217)
      {
        v218 = 3;
      }

      else
      {
        v218 = 2;
      }

      v276 = 2048;
      *v277 = 1;
      *&v277[8] = 2048;
      *v278 = v4;
      LODWORD(v220) = 32;
      v219 = _os_log_send_and_compose_impl(v218, 0, 0, 0, &dword_181A37000, v216, 16, "%{public}s strict_calloc(%zu, %zu) failed", v274, v220);

      result = __nwlog_should_abort(v219);
      goto LABEL_388;
    }
  }

  v5[20] = v3[38];
  *(v5 + 8) = v3[39];
  *(v5 + 9) = *(v3 + 84);
  v5[21] = v3[40];
  v9 = *(v5 + 11) & 0xFFFE | *(v3 + 170) & 1;
  *(v5 + 11) = v9;
  v10 = v9 & 0xFFFFFFFD | (2 * ((*(v3 + 170) >> 1) & 1));
  *(v5 + 11) = v10;
  v11 = v10 & 0xFFFFDFFF | (((*(v3 + 170) >> 2) & 1) << 13);
  *(v5 + 11) = v11;
  v12 = v11 & 0xFFFFFFFB | (4 * ((*(v3 + 170) >> 3) & 1));
  *(v5 + 11) = v12;
  v13 = v12 & 0xFFFFFFF7 | (8 * ((*(v3 + 170) >> 4) & 1));
  *(v5 + 11) = v13;
  v14 = v13 & 0xFFFFFFEF | (16 * ((*(v3 + 170) >> 5) & 1));
  *(v5 + 11) = v14;
  v15 = v14 & 0xFFFFFFDF | (32 * ((*(v3 + 170) >> 6) & 1));
  *(v5 + 11) = v15;
  v16 = v15 & 0xFFFFFFBF | (((*(v3 + 170) >> 7) & 1) << 6);
  *(v5 + 11) = v16;
  v17 = v16 & 0xFFFFFF7F | ((*(v3 + 171) & 1) << 7);
  *(v5 + 11) = v17;
  v18 = v17 & 0xFFFFFEFF | (((*(v3 + 171) >> 1) & 1) << 8);
  *(v5 + 11) = v18;
  v19 = v18 & 0xFFFFFDFF | (((*(v3 + 171) >> 2) & 1) << 9);
  *(v5 + 11) = v19;
  v20 = v19 & 0xFFFFFBFF | (((*(v3 + 171) >> 3) & 1) << 10);
  *(v5 + 11) = v20;
  v21 = v20 & 0xFFFFF7FF | (((*(v3 + 171) >> 4) & 1) << 11);
  *(v5 + 11) = v21;
  v22 = v21 & 0xFFFFEFFF | (((*(v3 + 171) >> 6) & 1) << 12);
  *(v5 + 11) = v22;
  LOWORD(v22) = v22 & 0xBFFF | (*(v3 + 171) >> 7 << 14);
  *(v5 + 11) = v22;
  *(v5 + 11) = v22 & 0x7FFF | (*(v3 + 172) << 15);
  v5[24] = v5[24] & 0xFE | ((v3[43] & 2) != 0);
  *v5 = *(v3 + 18);
  v243 = 0;
  v244 = &v243;
  v245 = 0x2020000000;
  v246 = v5 + 25;
  is_null = uuid_is_null(v3 + 56);
  v24 = &v5[v4];
  v25 = v244[3];
  v229 = &v5[v4];
  if (!is_null)
  {
    if (v25)
    {
      if (v25 < v24)
      {
        if (v24 - v25 > 0x14)
        {
          *v25 = 15;
          *(v25 + 1) = 16;
          *(v25 + 5) = *(v3 + 14);
          v25 += 21;
          goto LABEL_38;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        *v274 = 136447490;
        v275 = "nw_necp_append_tlv";
        v276 = 2048;
        *v277 = v25;
        *&v277[8] = 2048;
        *v278 = 21;
        *&v278[8] = 2048;
        *v279 = &v5[v4];
        *&v279[8] = 1024;
        *v280 = 15;
        *&v280[4] = 1024;
        *&v280[6] = 16;
        LODWORD(v220) = 54;
        v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", v274, v220);

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v264) = 0;
        if (__nwlog_fault(v30, type, &v264))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v32 = type[0];
            if (os_log_type_enabled(v31, type[0]))
            {
              *v274 = 136447490;
              v275 = "nw_necp_append_tlv";
              v276 = 2048;
              *v277 = v25;
              *&v277[8] = 2048;
              *v278 = 21;
              *&v278[8] = 2048;
              *v279 = &v5[v4];
              *&v279[8] = 1024;
              *v280 = 15;
              *&v280[4] = 1024;
              *&v280[6] = 16;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", v274, 0x36u);
            }
          }

          else if (v264 == 1)
          {
            v33 = __nw_create_backtrace_string();
            v31 = __nwlog_obj();
            v34 = type[0];
            v35 = os_log_type_enabled(v31, type[0]);
            if (v33)
            {
              if (v35)
              {
                *v274 = 136447746;
                v275 = "nw_necp_append_tlv";
                v276 = 2048;
                *v277 = v25;
                *&v277[8] = 2048;
                *v278 = 21;
                *&v278[8] = 2048;
                *v279 = &v5[v4];
                *&v279[8] = 1024;
                *v280 = 15;
                *&v280[4] = 1024;
                *&v280[6] = 16;
                v281 = 2082;
                v282 = v33;
                _os_log_impl(&dword_181A37000, v31, v34, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", v274, 0x40u);
              }

              free(v33);
              v24 = &v5[v4];
              if (!v30)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }

            if (v35)
            {
              *v274 = 136447490;
              v275 = "nw_necp_append_tlv";
              v276 = 2048;
              *v277 = v25;
              *&v277[8] = 2048;
              *v278 = 21;
              *&v278[8] = 2048;
              *v279 = &v5[v4];
              *&v279[8] = 1024;
              *v280 = 15;
              *&v280[4] = 1024;
              *&v280[6] = 16;
              _os_log_impl(&dword_181A37000, v31, v34, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", v274, 0x36u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v36 = type[0];
            if (os_log_type_enabled(v31, type[0]))
            {
              *v274 = 136447490;
              v275 = "nw_necp_append_tlv";
              v276 = 2048;
              *v277 = v25;
              *&v277[8] = 2048;
              *v278 = 21;
              *&v278[8] = 2048;
              *v279 = &v5[v4];
              *&v279[8] = 1024;
              *v280 = 15;
              *&v280[4] = 1024;
              *&v280[6] = 16;
              _os_log_impl(&dword_181A37000, v31, v36, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", v274, 0x36u);
            }
          }
        }

        v24 = &v5[v4];
        if (!v30)
        {
LABEL_37:
          v25 = 0;
          goto LABEL_38;
        }

LABEL_36:
        free(v30);
        goto LABEL_37;
      }

      v181 = __nwlog_obj();
      *v274 = 136447234;
      v275 = "nw_necp_append_tlv";
      v276 = 2048;
      *v277 = v25;
      *&v277[8] = 2048;
      *v278 = &v5[v4];
      *&v278[8] = 1024;
      *v279 = 15;
      *&v279[4] = 1024;
      *&v279[6] = 16;
      LODWORD(v220) = 44;
      v178 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v181, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", v274, v220);

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v264) = 0;
      if (__nwlog_fault(v178, type, &v264))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v182 = __nwlog_obj();
          v183 = type[0];
          if (os_log_type_enabled(v182, type[0]))
          {
            *v274 = 136447234;
            v275 = "nw_necp_append_tlv";
            v276 = 2048;
            *v277 = v25;
            *&v277[8] = 2048;
            *v278 = &v5[v4];
            *&v278[8] = 1024;
            *v279 = 15;
            *&v279[4] = 1024;
            *&v279[6] = 16;
            _os_log_impl(&dword_181A37000, v182, v183, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", v274, 0x2Cu);
          }
        }

        else if (v264 == 1)
        {
          v200 = __nw_create_backtrace_string();
          v182 = __nwlog_obj();
          v201 = type[0];
          v202 = os_log_type_enabled(v182, type[0]);
          if (v200)
          {
            if (v202)
            {
              *v274 = 136447490;
              v275 = "nw_necp_append_tlv";
              v276 = 2048;
              *v277 = v25;
              *&v277[8] = 2048;
              *v278 = &v5[v4];
              *&v278[8] = 1024;
              *v279 = 15;
              *&v279[4] = 1024;
              *&v279[6] = 16;
              *v280 = 2082;
              *&v280[2] = v200;
              _os_log_impl(&dword_181A37000, v182, v201, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", v274, 0x36u);
            }

            free(v200);
            if (!v178)
            {
              goto LABEL_374;
            }

            goto LABEL_373;
          }

          if (v202)
          {
            *v274 = 136447234;
            v275 = "nw_necp_append_tlv";
            v276 = 2048;
            *v277 = v25;
            *&v277[8] = 2048;
            *v278 = &v5[v4];
            *&v278[8] = 1024;
            *v279 = 15;
            *&v279[4] = 1024;
            *&v279[6] = 16;
            _os_log_impl(&dword_181A37000, v182, v201, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", v274, 0x2Cu);
          }
        }

        else
        {
          v182 = __nwlog_obj();
          v211 = type[0];
          if (os_log_type_enabled(v182, type[0]))
          {
            *v274 = 136447234;
            v275 = "nw_necp_append_tlv";
            v276 = 2048;
            *v277 = v25;
            *&v277[8] = 2048;
            *v278 = &v5[v4];
            *&v278[8] = 1024;
            *v279 = 15;
            *&v279[4] = 1024;
            *&v279[6] = 16;
            _os_log_impl(&dword_181A37000, v182, v211, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", v274, 0x2Cu);
          }
        }
      }

LABEL_372:
      if (!v178)
      {
LABEL_374:
        v25 = 0;
        v24 = &v5[v4];
LABEL_38:
        v244[3] = v25;
        v26 = *(v3 + 13);
        if (!v26)
        {
          goto LABEL_156;
        }

        goto LABEL_39;
      }

LABEL_373:
      free(v178);
      goto LABEL_374;
    }

    v177 = __nwlog_obj();
    *v274 = 136446210;
    v275 = "nw_necp_append_tlv";
    LODWORD(v220) = 12;
    v178 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v177, 16, "%{public}s called with null tlv_start", v274, v220);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v264) = 0;
    if (!__nwlog_fault(v178, type, &v264))
    {
      goto LABEL_372;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v179 = __nwlog_obj();
      v180 = type[0];
      if (os_log_type_enabled(v179, type[0]))
      {
        *v274 = 136446210;
        v275 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v179, v180, "%{public}s called with null tlv_start", v274, 0xCu);
      }
    }

    else if (v264 == 1)
    {
      v197 = __nw_create_backtrace_string();
      v179 = __nwlog_obj();
      v198 = type[0];
      v199 = os_log_type_enabled(v179, type[0]);
      if (v197)
      {
        if (v199)
        {
          *v274 = 136446466;
          v275 = "nw_necp_append_tlv";
          v276 = 2082;
          *v277 = v197;
          _os_log_impl(&dword_181A37000, v179, v198, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", v274, 0x16u);
        }

        free(v197);
        goto LABEL_372;
      }

      if (v199)
      {
        *v274 = 136446210;
        v275 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v179, v198, "%{public}s called with null tlv_start, no backtrace", v274, 0xCu);
      }
    }

    else
    {
      v179 = __nwlog_obj();
      v210 = type[0];
      if (os_log_type_enabled(v179, type[0]))
      {
        *v274 = 136446210;
        v275 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v179, v210, "%{public}s called with null tlv_start, backtrace limit exceeded", v274, 0xCu);
      }
    }

    goto LABEL_372;
  }

  v26 = *(v3 + 13);
  if (!v26)
  {
LABEL_156:
    v108 = nw_path_evaluator_add_endpoint_to_necp_message(*(v3 + 5), 1, v25, v24, 0);
    v244[3] = v108;
    if (!v108)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v124 = gLogObj;
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        *v274 = 136446210;
        v275 = "nw_proxy_config_copy_agent_data";
        _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_ERROR, "%{public}s Failed to serialize endpoint", v274, 0xCu);
      }

      if (v224)
      {
        free(v5);
      }

      v28 = 0;
      goto LABEL_215;
    }

    if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
    {
      dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
    }

    v109 = nw_proxy_config_default_transport(void)::default_transport_string;
    v110 = nw_dictionary_copy_value(*(v3 + 1), nw_proxy_config_default_transport(void)::default_transport_string);
    if (!v110)
    {
LABEL_198:
      v130 = *(v3 + 1);
      v237[0] = MEMORY[0x1E69E9820];
      v237[1] = 3221225472;
      v237[2] = __nw_proxy_config_copy_agent_data_block_invoke_144;
      v237[3] = &unk_1E6A324D0;
      v241 = v109;
      v131 = v3;
      v238 = v131;
      v240 = &v243;
      v242 = v24;
      v132 = v110;
      v239 = v132;
      nw_dictionary_apply(v130, v237);
      isa = v131[3].isa;
      if (isa)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __nw_proxy_config_copy_agent_data_block_invoke_2_145;
        applier[3] = &unk_1E6A38718;
        applier[4] = &v243;
        applier[5] = v24;
        xpc_array_apply(isa, applier);
      }

      v134 = v131[4].isa;
      if (v134)
      {
        v235[0] = MEMORY[0x1E69E9820];
        v235[1] = 3221225472;
        v235[2] = __nw_proxy_config_copy_agent_data_block_invoke_3_146;
        v235[3] = &unk_1E6A38718;
        v235[4] = &v243;
        v235[5] = v24;
        xpc_array_apply(v134, v235);
      }

      if (v244[3])
      {
        v135 = v131[6].isa;
        if (v135)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __nw_proxy_config_copy_agent_data_block_invoke_147;
          aBlock[3] = &unk_1E6A3D890;
          aBlock[4] = &v243;
          aBlock[5] = v24;
          _nw_array_apply(v135, aBlock);
        }

        v233[0] = MEMORY[0x1E69E9820];
        v233[1] = 3221225472;
        v233[2] = __nw_proxy_config_copy_agent_data_block_invoke_148;
        v233[3] = &unk_1E6A324F8;
        v233[4] = &v243;
        v233[5] = v24;
        nw_proxy_config_enumerate_match_domains(v131, v233);
        v232[0] = MEMORY[0x1E69E9820];
        v232[1] = 3221225472;
        v232[2] = __nw_proxy_config_copy_agent_data_block_invoke_2_149;
        v232[3] = &unk_1E6A324F8;
        v232[4] = &v243;
        v232[5] = v24;
        nw_proxy_config_enumerate_excluded_domains(v131, v232);
        v231[0] = MEMORY[0x1E69E9820];
        v231[1] = 3221225472;
        v231[2] = __nw_proxy_config_copy_agent_data_block_invoke_3_150;
        v231[3] = &unk_1E6A324F8;
        v231[4] = &v243;
        v231[5] = v24;
        nw_proxy_config_enumerate_preferred_domains(v131, v231);
        v230[0] = MEMORY[0x1E69E9820];
        v230[1] = 3221225472;
        v230[2] = __nw_proxy_config_copy_agent_data_block_invoke_4_151;
        v230[3] = &unk_1E6A324F8;
        v230[4] = &v243;
        v230[5] = v24;
        nw_proxy_config_enumerate_alternate_agents(v131, v230);
        v136 = v244[3] - v5;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v137 = gLogObj;
        if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
        {
          *v274 = 136446466;
          v275 = "nw_proxy_config_copy_agent_data";
          v276 = 2048;
          *v277 = v136;
          _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_INFO, "%{public}s Serialized %zu bytes of agent data", v274, 0x16u);
        }

        if (v256[3] || v249[3])
        {
          v138 = *MEMORY[0x1E69E9648];
          v139 = v5;
          v140 = v136;
        }

        else
        {
          v139 = v5;
          v140 = v136;
          v138 = 0;
        }

        v28 = dispatch_data_create(v139, v140, 0, v138);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v141 = gLogObj;
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          *v274 = 136446210;
          v275 = "nw_proxy_config_copy_agent_data";
          _os_log_impl(&dword_181A37000, v141, OS_LOG_TYPE_ERROR, "%{public}s Failed to serialize protocols", v274, 0xCu);
        }

        v28 = 0;
      }

LABEL_215:
      _Block_object_dispose(&v243, 8);
      _Block_object_dispose(&v248, 8);
      _Block_object_dispose(&v255, 8);
      goto LABEL_216;
    }

    should_proxy_transport_at_level = nw_proxy_config_should_proxy_transport_at_level(v3, v109, 0);
    if (should_proxy_transport_at_level == 2)
    {
      v112 = 10;
    }

    else
    {
      v112 = 2;
    }

    if (should_proxy_transport_at_level == 3)
    {
      v113 = 3;
    }

    else
    {
      v113 = v112;
    }

    v114 = v244[3];
    v115 = strlen(v109);
    if (v114)
    {
      v116 = (v115 + 1);
      if (v114 < v24)
      {
        if (v24 - v114 < v116 + 5)
        {
          v227 = v110;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v117 = gLogObj;
          v118 = v24;
          v119 = v117;
          v120 = v113;
          *v274 = 136447490;
          v275 = "nw_necp_append_tlv";
          v276 = 2048;
          *v277 = v114;
          *&v277[8] = 2048;
          *v278 = v116 + 5;
          *&v278[8] = 2048;
          *v279 = v118;
          *&v279[8] = 1024;
          *v280 = v113;
          *&v280[4] = 1024;
          *&v280[6] = v116;
          LODWORD(v220) = 54;
          v121 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", v274, v220);

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v264) = 0;
          if (__nwlog_fault(v121, type, &v264))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v122 = gLogObj;
              v123 = type[0];
              if (os_log_type_enabled(v122, type[0]))
              {
                *v274 = 136447490;
                v275 = "nw_necp_append_tlv";
                v276 = 2048;
                *v277 = v114;
                *&v277[8] = 2048;
                *v278 = v116 + 5;
                *&v278[8] = 2048;
                *v279 = v229;
                *&v279[8] = 1024;
                *v280 = v120;
                *&v280[4] = 1024;
                *&v280[6] = v116;
                _os_log_impl(&dword_181A37000, v122, v123, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", v274, 0x36u);
              }
            }

            else if (v264 == 1)
            {
              v126 = __nw_create_backtrace_string();
              v122 = __nwlog_obj();
              v223 = type[0];
              v127 = os_log_type_enabled(v122, type[0]);
              if (v126)
              {
                if (v127)
                {
                  *v274 = 136447746;
                  v275 = "nw_necp_append_tlv";
                  v276 = 2048;
                  *v277 = v114;
                  *&v277[8] = 2048;
                  *v278 = v116 + 5;
                  *&v278[8] = 2048;
                  *v279 = v229;
                  *&v279[8] = 1024;
                  *v280 = v120;
                  *&v280[4] = 1024;
                  *&v280[6] = v116;
                  v281 = 2082;
                  v282 = v126;
                  _os_log_impl(&dword_181A37000, v122, v223, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", v274, 0x40u);
                }

                free(v126);
                goto LABEL_194;
              }

              if (v127)
              {
                *v274 = 136447490;
                v275 = "nw_necp_append_tlv";
                v276 = 2048;
                *v277 = v114;
                *&v277[8] = 2048;
                *v278 = v116 + 5;
                *&v278[8] = 2048;
                *v279 = v229;
                *&v279[8] = 1024;
                *v280 = v120;
                *&v280[4] = 1024;
                *&v280[6] = v116;
                _os_log_impl(&dword_181A37000, v122, v223, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", v274, 0x36u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v122 = gLogObj;
              v128 = type[0];
              if (os_log_type_enabled(v122, type[0]))
              {
                *v274 = 136447490;
                v275 = "nw_necp_append_tlv";
                v276 = 2048;
                *v277 = v114;
                *&v277[8] = 2048;
                *v278 = v116 + 5;
                *&v278[8] = 2048;
                *v279 = v229;
                *&v279[8] = 1024;
                *v280 = v120;
                *&v280[4] = 1024;
                *&v280[6] = v116;
                _os_log_impl(&dword_181A37000, v122, v128, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", v274, 0x36u);
              }
            }
          }

LABEL_194:
          v24 = v229;
          v110 = v227;
          if (v121)
          {
            free(v121);
          }

          v125 = 0;
          goto LABEL_197;
        }

        *v114 = v113;
        *(v114 + 1) = v116;
        if (v115 == -1)
        {
          goto LABEL_182;
        }

        if (v109)
        {
          memcpy((v114 + 5), v109, v116);
LABEL_182:
          v125 = v114 + v116 + 5;
LABEL_197:
          v244[3] = v125;
          v129 = nw_proxy_config_serialize_one_stack(v110, v125, v24);
          v244[3] = v129;
          goto LABEL_198;
        }

        v228 = v110;
        v205 = __nwlog_obj();
        v206 = v113;
        *v274 = 136446722;
        v275 = "nw_necp_append_tlv";
        v276 = 1024;
        *v277 = v113;
        *&v277[4] = 1024;
        *&v277[6] = v116;
        LODWORD(v220) = 24;
        v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v205, 16, "%{public}s type=%u length=%u but value is NULL", v274, v220);

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v264) = 0;
        if (__nwlog_fault(v174, type, &v264))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v175 = __nwlog_obj();
            v207 = type[0];
            if (os_log_type_enabled(v175, type[0]))
            {
              *v274 = 136446722;
              v275 = "nw_necp_append_tlv";
              v276 = 1024;
              *v277 = v206;
              *&v277[4] = 1024;
              *&v277[6] = v116;
              _os_log_impl(&dword_181A37000, v175, v207, "%{public}s type=%u length=%u but value is NULL", v274, 0x18u);
            }
          }

          else if (v264 == 1)
          {
            v212 = __nw_create_backtrace_string();
            v175 = __nwlog_obj();
            v213 = type[0];
            v214 = os_log_type_enabled(v175, type[0]);
            if (v212)
            {
              if (v214)
              {
                *v274 = 136446978;
                v275 = "nw_necp_append_tlv";
                v276 = 1024;
                *v277 = v206;
                *&v277[4] = 1024;
                *&v277[6] = v116;
                *v278 = 2082;
                *&v278[2] = v212;
                _os_log_impl(&dword_181A37000, v175, v213, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", v274, 0x22u);
              }

              free(v212);
              if (!v174)
              {
                goto LABEL_383;
              }

              goto LABEL_382;
            }

            if (v214)
            {
              *v274 = 136446722;
              v275 = "nw_necp_append_tlv";
              v276 = 1024;
              *v277 = v206;
              *&v277[4] = 1024;
              *&v277[6] = v116;
              _os_log_impl(&dword_181A37000, v175, v213, "%{public}s type=%u length=%u but value is NULL, no backtrace", v274, 0x18u);
            }
          }

          else
          {
            v175 = __nwlog_obj();
            v215 = type[0];
            if (os_log_type_enabled(v175, type[0]))
            {
              *v274 = 136446722;
              v275 = "nw_necp_append_tlv";
              v276 = 1024;
              *v277 = v206;
              *&v277[4] = 1024;
              *&v277[6] = v116;
              _os_log_impl(&dword_181A37000, v175, v215, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", v274, 0x18u);
            }
          }

          goto LABEL_380;
        }

LABEL_381:
        if (!v174)
        {
LABEL_383:
          v125 = 0;
          v24 = v229;
          v110 = v228;
          goto LABEL_197;
        }

LABEL_382:
        free(v174);
        goto LABEL_383;
      }

      v228 = v110;
      v170 = __nwlog_obj();
      v171 = v24;
      v172 = v170;
      *v274 = 136447234;
      v173 = v113;
      v275 = "nw_necp_append_tlv";
      v276 = 2048;
      *v277 = v114;
      *&v277[8] = 2048;
      *v278 = v171;
      *&v278[8] = 1024;
      *v279 = v113;
      *&v279[4] = 1024;
      *&v279[6] = v116;
      LODWORD(v220) = 44;
      v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v170, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", v274, v220);

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v264) = 0;
      if (!__nwlog_fault(v174, type, &v264))
      {
        goto LABEL_381;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v175 = __nwlog_obj();
        v176 = type[0];
        if (os_log_type_enabled(v175, type[0]))
        {
          *v274 = 136447234;
          v275 = "nw_necp_append_tlv";
          v276 = 2048;
          *v277 = v114;
          *&v277[8] = 2048;
          *v278 = v229;
          *&v278[8] = 1024;
          *v279 = v173;
          *&v279[4] = 1024;
          *&v279[6] = v116;
          _os_log_impl(&dword_181A37000, v175, v176, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", v274, 0x2Cu);
        }
      }

      else if (v264 == 1)
      {
        v194 = __nw_create_backtrace_string();
        v175 = __nwlog_obj();
        v195 = type[0];
        v196 = os_log_type_enabled(v175, type[0]);
        if (v194)
        {
          if (v196)
          {
            *v274 = 136447490;
            v275 = "nw_necp_append_tlv";
            v276 = 2048;
            *v277 = v114;
            *&v277[8] = 2048;
            *v278 = v229;
            *&v278[8] = 1024;
            *v279 = v173;
            *&v279[4] = 1024;
            *&v279[6] = v116;
            *v280 = 2082;
            *&v280[2] = v194;
            _os_log_impl(&dword_181A37000, v175, v195, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", v274, 0x36u);
          }

          free(v194);
          goto LABEL_381;
        }

        if (v196)
        {
          *v274 = 136447234;
          v275 = "nw_necp_append_tlv";
          v276 = 2048;
          *v277 = v114;
          *&v277[8] = 2048;
          *v278 = v229;
          *&v278[8] = 1024;
          *v279 = v173;
          *&v279[4] = 1024;
          *&v279[6] = v116;
          _os_log_impl(&dword_181A37000, v175, v195, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", v274, 0x2Cu);
        }
      }

      else
      {
        v175 = __nwlog_obj();
        v209 = type[0];
        if (os_log_type_enabled(v175, type[0]))
        {
          *v274 = 136447234;
          v275 = "nw_necp_append_tlv";
          v276 = 2048;
          *v277 = v114;
          *&v277[8] = 2048;
          *v278 = v229;
          *&v278[8] = 1024;
          *v279 = v173;
          *&v279[4] = 1024;
          *&v279[6] = v116;
          _os_log_impl(&dword_181A37000, v175, v209, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", v274, 0x2Cu);
        }
      }

LABEL_380:

      goto LABEL_381;
    }

    v165 = v110;
    v166 = __nwlog_obj();
    *v274 = 136446210;
    v275 = "nw_necp_append_tlv";
    LODWORD(v220) = 12;
    v167 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v166, 16, "%{public}s called with null tlv_start", v274, v220);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v264) = 0;
    if (__nwlog_fault(v167, type, &v264))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v168 = __nwlog_obj();
        v169 = type[0];
        if (os_log_type_enabled(v168, type[0]))
        {
          *v274 = 136446210;
          v275 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v168, v169, "%{public}s called with null tlv_start", v274, 0xCu);
        }
      }

      else if (v264 == 1)
      {
        v191 = __nw_create_backtrace_string();
        v168 = __nwlog_obj();
        v192 = type[0];
        v193 = os_log_type_enabled(v168, type[0]);
        if (v191)
        {
          if (v193)
          {
            *v274 = 136446466;
            v275 = "nw_necp_append_tlv";
            v276 = 2082;
            *v277 = v191;
            _os_log_impl(&dword_181A37000, v168, v192, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", v274, 0x16u);
          }

          free(v191);
          goto LABEL_360;
        }

        if (v193)
        {
          *v274 = 136446210;
          v275 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v168, v192, "%{public}s called with null tlv_start, no backtrace", v274, 0xCu);
        }
      }

      else
      {
        v168 = __nwlog_obj();
        v208 = type[0];
        if (os_log_type_enabled(v168, type[0]))
        {
          *v274 = 136446210;
          v275 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v168, v208, "%{public}s called with null tlv_start, backtrace limit exceeded", v274, 0xCu);
        }
      }
    }

LABEL_360:
    if (v167)
    {
      free(v167);
    }

    v125 = 0;
    v24 = v229;
    v110 = v165;
    goto LABEL_197;
  }

LABEL_39:
  v37 = v26;
  v38 = v37;
  if (!v25)
  {
    v151 = __nwlog_obj();
    *v274 = 136446210;
    v275 = "nw_authentication_credential_add_to_tlv";
    LODWORD(v220) = 12;
    v152 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v151, 16, "%{public}s called with null cursor", v274, v220);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v264) = 0;
    if (__nwlog_fault(v152, type, &v264))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v153 = __nwlog_obj();
        v154 = type[0];
        if (os_log_type_enabled(v153, type[0]))
        {
          *v274 = 136446210;
          v275 = "nw_authentication_credential_add_to_tlv";
          _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null cursor", v274, 0xCu);
        }
      }

      else if (v264 == 1)
      {
        v184 = __nw_create_backtrace_string();
        v153 = __nwlog_obj();
        v185 = type[0];
        v186 = os_log_type_enabled(v153, type[0]);
        if (v184)
        {
          if (v186)
          {
            *v274 = 136446466;
            v275 = "nw_authentication_credential_add_to_tlv";
            v276 = 2082;
            *v277 = v184;
            _os_log_impl(&dword_181A37000, v153, v185, "%{public}s called with null cursor, dumping backtrace:%{public}s", v274, 0x16u);
          }

          free(v184);
          goto LABEL_351;
        }

        if (v186)
        {
          *v274 = 136446210;
          v275 = "nw_authentication_credential_add_to_tlv";
          _os_log_impl(&dword_181A37000, v153, v185, "%{public}s called with null cursor, no backtrace", v274, 0xCu);
        }
      }

      else
      {
        v153 = __nwlog_obj();
        v203 = type[0];
        if (os_log_type_enabled(v153, type[0]))
        {
          *v274 = 136446210;
          v275 = "nw_authentication_credential_add_to_tlv";
          _os_log_impl(&dword_181A37000, v153, v203, "%{public}s called with null cursor, backtrace limit exceeded", v274, 0xCu);
        }
      }
    }

LABEL_351:
    if (v152)
    {
      free(v152);
    }

    v25 = 0;
    goto LABEL_155;
  }

  v39 = v37[2];
  if (v39)
  {
    v40 = strlen(v39);
    v41 = v38[3];
    if (v41)
    {
      goto LABEL_42;
    }

LABEL_45:
    v42 = 0;
    v43 = v38[5];
    if (v43)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v40 = 0;
  v41 = v38[3];
  if (!v41)
  {
    goto LABEL_45;
  }

LABEL_42:
  v42 = strlen(v41);
  v43 = v38[5];
  if (v43)
  {
LABEL_43:
    count = xpc_array_get_count(v43);
    goto LABEL_47;
  }

LABEL_46:
  count = 0;
LABEL_47:
  v44 = *(v38 + 2);
  v221 = v40;
  v222 = v42;
  if (v44 == 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v51 = gLogObj;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *v274 = 136446210;
      v275 = "nw_authentication_credential_add_to_tlv";
      _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_ERROR, "%{public}s Unsupported credential type identity", v274, 0xCu);
    }

    LODWORD(v52) = 2;
    goto LABEL_94;
  }

  if (v44 != 1)
  {
    LODWORD(v52) = 2;
    goto LABEL_95;
  }

  v45 = v40 + 3;
  if (v40 + 1 >= 0xFFFFFFFE)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    *v274 = 136446978;
    v275 = "nw_authentication_credential_add_to_tlv";
    v276 = 2082;
    *v277 = "buffer_size";
    v47 = v40 + 1;
    *&v277[8] = 2048;
    *v278 = v47;
    *&v278[8] = 2048;
    *v279 = v40 + 3;
    LODWORD(v220) = 42;
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", v274, v220);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v264) = 0;
    if (__nwlog_fault(v48, type, &v264))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v49 = gLogObj;
        v50 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *v274 = 136446978;
          v275 = "nw_authentication_credential_add_to_tlv";
          v276 = 2082;
          *v277 = "buffer_size";
          *&v277[8] = 2048;
          *v278 = v40 + 1;
          *&v278[8] = 2048;
          *v279 = v40 + 3;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s Overflow: %{public}s, increment %llu, result %llu", v274, 0x2Au);
        }
      }

      else if (v264 == 1)
      {
        v53 = __nw_create_backtrace_string();
        if (v53)
        {
          v54 = v53;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v55 = gLogObj;
          v56 = type[0];
          if (os_log_type_enabled(v55, type[0]))
          {
            *v274 = 136447234;
            v275 = "nw_authentication_credential_add_to_tlv";
            v276 = 2082;
            *v277 = "buffer_size";
            *&v277[8] = 2048;
            *v278 = v47;
            *&v278[8] = 2048;
            *v279 = v45;
            *&v279[8] = 2082;
            *v280 = v54;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", v274, 0x34u);
          }

          free(v54);
          goto LABEL_70;
        }

        v49 = __nwlog_obj();
        v58 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *v274 = 136446978;
          v275 = "nw_authentication_credential_add_to_tlv";
          v276 = 2082;
          *v277 = "buffer_size";
          *&v277[8] = 2048;
          *v278 = v40 + 1;
          *&v278[8] = 2048;
          *v279 = v40 + 3;
          _os_log_impl(&dword_181A37000, v49, v58, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", v274, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v49 = gLogObj;
        v57 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *v274 = 136446978;
          v275 = "nw_authentication_credential_add_to_tlv";
          v276 = 2082;
          *v277 = "buffer_size";
          *&v277[8] = 2048;
          *v278 = v40 + 1;
          *&v278[8] = 2048;
          *v279 = v40 + 3;
          _os_log_impl(&dword_181A37000, v49, v57, "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded", v274, 0x2Au);
        }
      }
    }

LABEL_70:
    v42 = v222;
    if (v48)
    {
      free(v48);
    }

    LODWORD(v45) = -1;
    v24 = v229;
  }

  v59 = __CFADD__(v45, v42 + 1);
  v52 = v45 + v42 + 1;
  if (v59)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v60 = gLogObj;
    *v274 = 136446978;
    v275 = "nw_authentication_credential_add_to_tlv";
    v276 = 2082;
    *v277 = "buffer_size";
    *&v277[8] = 2048;
    *v278 = v222 + 1;
    *&v278[8] = 2048;
    *v279 = v52;
    LODWORD(v220) = 42;
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", v274, v220);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v264) = 0;
    if (__nwlog_fault(v61, type, &v264))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v62 = gLogObj;
        v63 = type[0];
        if (os_log_type_enabled(v62, type[0]))
        {
          *v274 = 136446978;
          v275 = "nw_authentication_credential_add_to_tlv";
          v276 = 2082;
          *v277 = "buffer_size";
          *&v277[8] = 2048;
          *v278 = v222 + 1;
          *&v278[8] = 2048;
          *v279 = v52;
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Overflow: %{public}s, increment %llu, result %llu", v274, 0x2Au);
        }
      }

      else if (v264 == 1)
      {
        v64 = __nw_create_backtrace_string();
        if (v64)
        {
          v65 = v64;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v66 = gLogObj;
          v67 = type[0];
          if (os_log_type_enabled(v66, type[0]))
          {
            *v274 = 136447234;
            v275 = "nw_authentication_credential_add_to_tlv";
            v276 = 2082;
            *v277 = "buffer_size";
            *&v277[8] = 2048;
            *v278 = v222 + 1;
            *&v278[8] = 2048;
            *v279 = v52;
            *&v279[8] = 2082;
            *v280 = v65;
            _os_log_impl(&dword_181A37000, v66, v67, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", v274, 0x34u);
          }

          free(v65);
          goto LABEL_91;
        }

        v62 = __nwlog_obj();
        v69 = type[0];
        if (os_log_type_enabled(v62, type[0]))
        {
          *v274 = 136446978;
          v275 = "nw_authentication_credential_add_to_tlv";
          v276 = 2082;
          *v277 = "buffer_size";
          *&v277[8] = 2048;
          *v278 = v222 + 1;
          *&v278[8] = 2048;
          *v279 = v52;
          _os_log_impl(&dword_181A37000, v62, v69, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", v274, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v62 = gLogObj;
        v68 = type[0];
        if (os_log_type_enabled(v62, type[0]))
        {
          *v274 = 136446978;
          v275 = "nw_authentication_credential_add_to_tlv";
          v276 = 2082;
          *v277 = "buffer_size";
          *&v277[8] = 2048;
          *v278 = v222 + 1;
          *&v278[8] = 2048;
          *v279 = v52;
          _os_log_impl(&dword_181A37000, v62, v68, "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded", v274, 0x2Au);
        }
      }
    }

LABEL_91:
    if (v61)
    {
      free(v61);
    }

    LODWORD(v52) = -1;
LABEL_94:
    v24 = v229;
  }

LABEL_95:
  v70 = count + 4;
  v71 = v70 + v52;
  if (HIDWORD(v71))
  {
    v72 = v71;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v73 = gLogObj;
    *v274 = 136446978;
    v275 = "nw_authentication_credential_add_to_tlv";
    v276 = 2082;
    *v277 = "buffer_size";
    *&v277[8] = 2048;
    *v278 = count + 4;
    *&v278[8] = 2048;
    *v279 = v71;
    LODWORD(v220) = 42;
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", v274, v220);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v264) = 0;
    if (!__nwlog_fault(v74, type, &v264))
    {
      goto LABEL_114;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v76 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *v274 = 136446978;
        v275 = "nw_authentication_credential_add_to_tlv";
        v276 = 2082;
        *v277 = "buffer_size";
        *&v277[8] = 2048;
        *v278 = count + 4;
        *&v278[8] = 2048;
        *v279 = v71;
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s Overflow: %{public}s, increment %llu, result %llu", v274, 0x2Au);
      }
    }

    else
    {
      if (v264 == 1)
      {
        v78 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v79 = gLogObj;
        v80 = type[0];
        v81 = os_log_type_enabled(v79, type[0]);
        if (v78)
        {
          if (v81)
          {
            *v274 = 136447234;
            v275 = "nw_authentication_credential_add_to_tlv";
            v276 = 2082;
            *v277 = "buffer_size";
            *&v277[8] = 2048;
            *v278 = count + 4;
            *&v278[8] = 2048;
            *v279 = v72;
            *&v279[8] = 2082;
            *v280 = v78;
            _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", v274, 0x34u);
          }

          free(v78);
          if (!v74)
          {
            goto LABEL_116;
          }

          goto LABEL_115;
        }

        if (v81)
        {
          *v274 = 136446978;
          v275 = "nw_authentication_credential_add_to_tlv";
          v276 = 2082;
          *v277 = "buffer_size";
          *&v277[8] = 2048;
          *v278 = count + 4;
          *&v278[8] = 2048;
          *v279 = v72;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", v274, 0x2Au);
        }

LABEL_114:
        if (!v74)
        {
LABEL_116:
          v71 = 0xFFFFFFFFLL;
          v77 = -1;
          v24 = v229;
          goto LABEL_117;
        }

LABEL_115:
        free(v74);
        goto LABEL_116;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v75 = gLogObj;
      v82 = type[0];
      if (os_log_type_enabled(v75, type[0]))
      {
        *v274 = 136446978;
        v275 = "nw_authentication_credential_add_to_tlv";
        v276 = 2082;
        *v277 = "buffer_size";
        *&v277[8] = 2048;
        *v278 = count + 4;
        *&v278[8] = 2048;
        *v279 = v71;
        _os_log_impl(&dword_181A37000, v75, v82, "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded", v274, 0x2Au);
      }
    }

    goto LABEL_114;
  }

  v77 = v70 + v52;
LABEL_117:
  v83 = malloc_type_calloc(1uLL, v71, 0xD23E108EuLL);
  if (v83)
  {
    goto LABEL_123;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v84 = gLogObj;
  v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
  *v274 = 136446722;
  v275 = "nw_authentication_credential_add_to_tlv";
  if (v85)
  {
    v86 = 3;
  }

  else
  {
    v86 = 2;
  }

  v276 = 2048;
  *v277 = 1;
  *&v277[8] = 2048;
  *v278 = v71;
  LODWORD(v220) = 32;
  v87 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s strict_calloc(%zu, %zu) failed", v274, v220);

  result = __nwlog_should_abort(v87);
  if ((result & 1) == 0)
  {
    free(v87);
    v24 = v229;
LABEL_123:
    v264 = 0;
    v265 = &v264;
    v266 = 0x2020000000;
    v89 = *(v38 + 2);
    v267 = v83 + 1;
    *v83 = v89;
    v90 = *(v38 + 3);
    v91 = v265[3];
    v265[3] = (v91 + 1);
    *v91 = v90;
    v92 = v265;
    if (*(v38 + 2) != 1)
    {
      goto LABEL_129;
    }

    v93 = v265[3];
    if (v221)
    {
      memcpy(v93, v38[2], v221 + 1);
      v94 = v265;
      v95 = (v265[3] + v221 + 1);
      v265[3] = v95;
      v96 = v222;
      if (v222)
      {
LABEL_126:
        v97 = v96 + 1;
        memcpy(v95, v38[3], v97);
        v92 = v265;
        v265[3] += v97;
        goto LABEL_129;
      }
    }

    else
    {
      v265[3] = (v93 + 1);
      *v93 = 0;
      v94 = v265;
      v95 = v265[3];
      v96 = v222;
      if (v222)
      {
        goto LABEL_126;
      }
    }

    v94[3] = (v95 + 1);
    *v95 = 0;
    v92 = v265;
LABEL_129:
    *v92[3] = count;
    v265[3] += 4;
    if (count)
    {
      v98 = v38[5];
      *type = MEMORY[0x1E69E9820];
      v260 = 3221225472;
      v261 = __nw_authentication_credential_add_to_tlv_block_invoke;
      v262 = &unk_1E6A3ABB8;
      v263 = &v264;
      xpc_array_apply(v98, type);
    }

    if (v25 < v24)
    {
      v99 = v71 + 5;
      if (v24 - v25 >= v71 + 5)
      {
        *v25 = 16;
        *(v25 + 1) = v77;
        memcpy((v25 + 5), v83, v71);
        v25 += v99;
LABEL_154:
        free(v83);
        _Block_object_dispose(&v264, 8);
LABEL_155:

        v244[3] = v25;
        v24 = v229;
        goto LABEL_156;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v100 = gLogObj;
      *v274 = 136447490;
      v275 = "nw_necp_append_tlv";
      v276 = 2048;
      *v277 = v25;
      *&v277[8] = 2048;
      *v278 = v71 + 5;
      *&v278[8] = 2048;
      *v279 = v24;
      *&v279[8] = 1024;
      *v280 = 16;
      *&v280[4] = 1024;
      v226 = v77;
      *&v280[6] = v77;
      LODWORD(v220) = 54;
      v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", v274, v220);

      v269 = OS_LOG_TYPE_ERROR;
      v268 = 0;
      if (__nwlog_fault(v101, &v269, &v268))
      {
        if (v269 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v102 = gLogObj;
          v103 = v269;
          if (os_log_type_enabled(v102, v269))
          {
            *v274 = 136447490;
            v275 = "nw_necp_append_tlv";
            v276 = 2048;
            *v277 = v25;
            *&v277[8] = 2048;
            *v278 = v71 + 5;
            *&v278[8] = 2048;
            *v279 = v229;
            *&v279[8] = 1024;
            *v280 = 16;
            *&v280[4] = 1024;
            *&v280[6] = v226;
            _os_log_impl(&dword_181A37000, v102, v103, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", v274, 0x36u);
          }
        }

        else if (v268 == 1)
        {
          v104 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v102 = gLogObj;
          v105 = v269;
          v106 = os_log_type_enabled(v102, v269);
          if (v104)
          {
            if (v106)
            {
              *v274 = 136447746;
              v275 = "nw_necp_append_tlv";
              v276 = 2048;
              *v277 = v25;
              *&v277[8] = 2048;
              *v278 = v99;
              *&v278[8] = 2048;
              *v279 = v229;
              *&v279[8] = 1024;
              *v280 = 16;
              *&v280[4] = 1024;
              *&v280[6] = v226;
              v281 = 2082;
              v282 = v104;
              _os_log_impl(&dword_181A37000, v102, v105, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", v274, 0x40u);
            }

            free(v104);
            if (!v101)
            {
              goto LABEL_153;
            }

            goto LABEL_152;
          }

          if (v106)
          {
            *v274 = 136447490;
            v275 = "nw_necp_append_tlv";
            v276 = 2048;
            *v277 = v25;
            *&v277[8] = 2048;
            *v278 = v99;
            *&v278[8] = 2048;
            *v279 = v229;
            *&v279[8] = 1024;
            *v280 = 16;
            *&v280[4] = 1024;
            *&v280[6] = v226;
            _os_log_impl(&dword_181A37000, v102, v105, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", v274, 0x36u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v102 = gLogObj;
          v107 = v269;
          if (os_log_type_enabled(v102, v269))
          {
            *v274 = 136447490;
            v275 = "nw_necp_append_tlv";
            v276 = 2048;
            *v277 = v25;
            *&v277[8] = 2048;
            *v278 = v71 + 5;
            *&v278[8] = 2048;
            *v279 = v229;
            *&v279[8] = 1024;
            *v280 = 16;
            *&v280[4] = 1024;
            *&v280[6] = v226;
            _os_log_impl(&dword_181A37000, v102, v107, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", v274, 0x36u);
          }
        }

        goto LABEL_150;
      }

LABEL_151:
      if (!v101)
      {
LABEL_153:
        v25 = 0;
        goto LABEL_154;
      }

LABEL_152:
      free(v101);
      goto LABEL_153;
    }

    v155 = __nwlog_obj();
    *v274 = 136447234;
    v275 = "nw_necp_append_tlv";
    v276 = 2048;
    *v277 = v25;
    *&v277[8] = 2048;
    *v278 = v24;
    *&v278[8] = 1024;
    *v279 = 16;
    *&v279[4] = 1024;
    v156 = v77;
    *&v279[6] = v77;
    LODWORD(v220) = 44;
    v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v155, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", v274, v220);

    v269 = OS_LOG_TYPE_ERROR;
    v268 = 0;
    if (!__nwlog_fault(v101, &v269, &v268))
    {
      goto LABEL_151;
    }

    if (v269 == OS_LOG_TYPE_FAULT)
    {
      v102 = __nwlog_obj();
      v157 = v269;
      if (os_log_type_enabled(v102, v269))
      {
        *v274 = 136447234;
        v275 = "nw_necp_append_tlv";
        v276 = 2048;
        *v277 = v25;
        *&v277[8] = 2048;
        *v278 = v229;
        *&v278[8] = 1024;
        *v279 = 16;
        *&v279[4] = 1024;
        *&v279[6] = v156;
        _os_log_impl(&dword_181A37000, v102, v157, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", v274, 0x2Cu);
      }
    }

    else if (v268 == 1)
    {
      v187 = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v188 = v269;
      v189 = os_log_type_enabled(v102, v269);
      if (v187)
      {
        if (v189)
        {
          *v274 = 136447490;
          v275 = "nw_necp_append_tlv";
          v276 = 2048;
          *v277 = v25;
          *&v277[8] = 2048;
          *v278 = v229;
          *&v278[8] = 1024;
          *v279 = 16;
          *&v279[4] = 1024;
          *&v279[6] = v156;
          *v280 = 2082;
          *&v280[2] = v187;
          _os_log_impl(&dword_181A37000, v102, v188, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", v274, 0x36u);
        }

        free(v187);
        goto LABEL_151;
      }

      if (v189)
      {
        *v274 = 136447234;
        v275 = "nw_necp_append_tlv";
        v276 = 2048;
        *v277 = v25;
        *&v277[8] = 2048;
        *v278 = v229;
        *&v278[8] = 1024;
        *v279 = 16;
        *&v279[4] = 1024;
        *&v279[6] = v156;
        _os_log_impl(&dword_181A37000, v102, v188, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", v274, 0x2Cu);
      }
    }

    else
    {
      v102 = __nwlog_obj();
      v204 = v269;
      if (os_log_type_enabled(v102, v269))
      {
        *v274 = 136447234;
        v275 = "nw_necp_append_tlv";
        v276 = 2048;
        *v277 = v25;
        *&v277[8] = 2048;
        *v278 = v229;
        *&v278[8] = 1024;
        *v279 = 16;
        *&v279[4] = 1024;
        *&v279[6] = v156;
        _os_log_impl(&dword_181A37000, v102, v204, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", v274, 0x2Cu);
      }
    }

LABEL_150:

    goto LABEL_151;
  }

LABEL_388:
  __break(1u);
  return result;
}