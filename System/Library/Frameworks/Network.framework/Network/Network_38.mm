uint64_t nw_endpoint_handler_get_resolution_protocol(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_endpoint_handler_get_mode";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v8, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v36 = "nw_endpoint_handler_get_mode";
            v37 = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v17)
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v8)
    {
      free(v8);
    }

LABEL_37:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    v36 = "nw_endpoint_handler_get_resolution_protocol";
    LODWORD(v32) = 12;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s Endpoint handler is not a resolver", buf, v32);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v24, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v28 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v29 = type;
        v30 = os_log_type_enabled(v25, type);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            v36 = "nw_endpoint_handler_get_resolution_protocol";
            v37 = 2082;
            v38 = v28;
            _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          if (!v24)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        if (v30)
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v31 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v25, v31, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v24)
    {
LABEL_44:
      v6 = 0;
      goto LABEL_45;
    }

LABEL_43:
    free(v24);
    goto LABEL_44;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_37;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = v4[1];
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_resolver_get_resolution_protocol";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null resolver", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v12, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v36 = "nw_resolver_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v13, type);
        if (v19)
        {
          if (v21)
          {
            *buf = 136446466;
            v36 = "nw_resolver_get_resolution_protocol";
            v37 = 2082;
            v38 = v19;
            _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_61;
        }

        if (v21)
        {
          *buf = 136446210;
          v36 = "nw_resolver_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v36 = "nw_resolver_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_61:
    if (v12)
    {
      free(v12);
    }

    v6 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v6 = v5[68];
LABEL_5:

LABEL_45:
  return v6;
}

id nw_endpoint_handler_copy_preferred_resolved_endpoint(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_get_mode";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v11, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v31 = "nw_endpoint_handler_get_mode";
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v16)
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v11)
    {
      free(v11);
    }

LABEL_28:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *buf = 136446210;
    v31 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
    LODWORD(v27) = 12;
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s Endpoint handler is not a resolver", buf, v27);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v19, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        v22 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(v20, type);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446466;
            v31 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
            v32 = 2082;
            v33 = v22;
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          if (!v19)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        if (v24)
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v19)
    {
LABEL_47:
      v9 = 0;
      goto LABEL_48;
    }

LABEL_46:
    free(v19);
    goto LABEL_47;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_28;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = *(v4 + 5);
  if (v5 && !_nw_array_is_empty(v5) && (v6 = *(v4 + 5)) != 0 && (_nw_array_get_object_at_index(v6, 0), v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0))
  {
    v9 = nw_endpoint_handler_copy_endpoint(v7);
  }

  else
  {
    v9 = 0;
  }

LABEL_48:
  return v9;
}

id nw_endpoint_handler_copy_resolved_endpoints(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_endpoint_handler_get_mode";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v15, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v35 = "nw_endpoint_handler_get_mode";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v20)
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v15)
    {
      free(v15);
    }

LABEL_37:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v35 = "nw_endpoint_handler_copy_resolved_endpoints";
    LODWORD(v31) = 12;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s Endpoint handler is not a resolver", buf, v31);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v23, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_copy_resolved_endpoints";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        v26 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v27 = type;
        v28 = os_log_type_enabled(v24, type);
        if (v26)
        {
          if (v28)
          {
            *buf = 136446466;
            v35 = "nw_endpoint_handler_copy_resolved_endpoints";
            v36 = 2082;
            v37 = v26;
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          if (!v23)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v28)
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_copy_resolved_endpoints";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_copy_resolved_endpoints";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v23)
    {
LABEL_56:
      v6 = 0;
      goto LABEL_57;
    }

LABEL_55:
    free(v23);
    goto LABEL_56;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_37;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = *(v4 + 5);
  if (v5 && _nw_array_get_count(v5))
  {
    v6 = _nw_array_create();
    for (i = 0; ; ++i)
    {
      count = *(v4 + 5);
      if (count)
      {
        count = _nw_array_get_count(count);
      }

      if (i >= count)
      {
        break;
      }

      v10 = *(v4 + 5);
      if (v10)
      {
        v11 = _nw_array_copy_object_at_index(v10, i);
        v8 = v11;
        if (v11)
        {
          v12 = nw_endpoint_handler_copy_endpoint(v11);
          v13 = v12;
          if (v6)
          {
            if (v12)
            {
              _nw_array_append(v6, v12);
            }
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_57:
  return v6;
}

void nw_endpoint_handler_get_svcb_report(void *a1, BOOL *a2, BOOL *a3, BOOL *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_get_mode";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v12, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v28 == 1)
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
            v31 = "nw_endpoint_handler_get_mode";
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v17)
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_22;
  }

  mode = v7->mode;

  if (mode == 1)
  {
    v10 = nw_endpoint_handler_copy_resolver(v8);
    nw_resolver_get_svcb_report(v10[1], a2, a3, a4);

    goto LABEL_29;
  }

LABEL_22:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  *buf = 136446210;
  v31 = "nw_endpoint_handler_get_svcb_report";
  LODWORD(v27) = 12;
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s Endpoint handler is not a resolver", buf, v27);

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v20, &type, &v28))
  {
    goto LABEL_27;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = type;
    if (os_log_type_enabled(v21, type))
    {
      *buf = 136446210;
      v31 = "nw_endpoint_handler_get_svcb_report";
      _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
    }

LABEL_26:

LABEL_27:
    if (!v20)
    {
      goto LABEL_29;
    }

LABEL_28:
    free(v20);
    goto LABEL_29;
  }

  if (v28 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v26 = type;
    if (os_log_type_enabled(v21, type))
    {
      *buf = 136446210;
      v31 = "nw_endpoint_handler_get_svcb_report";
      _os_log_impl(&dword_181A37000, v21, v26, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v23 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  v24 = type;
  v25 = os_log_type_enabled(v21, type);
  if (!v23)
  {
    if (v25)
    {
      *buf = 136446210;
      v31 = "nw_endpoint_handler_get_svcb_report";
      _os_log_impl(&dword_181A37000, v21, v24, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (v25)
  {
    *buf = 136446466;
    v31 = "nw_endpoint_handler_get_svcb_report";
    v32 = 2082;
    v33 = v23;
    _os_log_impl(&dword_181A37000, v21, v24, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v20)
  {
    goto LABEL_28;
  }

LABEL_29:
}

void nw_resolver_get_svcb_report(void *a1, BOOL *a2, BOOL *a3, BOOL *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (v7)
  {
    if (a2)
    {
      *a2 = (v7[371] & 2) != 0;
    }

    if (a3)
    {
      *a3 = (v7[371] & 4) != 0;
    }

    if (a4)
    {
      *a4 = (v7[371] & 8) != 0;
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_resolver_get_svcb_report";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null resolver", buf, 12);

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
        v19 = "nw_resolver_get_svcb_report";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null resolver", buf, 0xCu);
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
          v19 = "nw_resolver_get_svcb_report";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_resolver_get_svcb_report";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_resolver_get_svcb_report";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v9)
  {
    free(v9);
  }

  v7 = 0;
LABEL_8:
}

void nw_endpoint_handler_get_extended_dns_error(void *a1, _WORD *a2, char **a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_endpoint_handler_get_mode";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v14, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v44 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v41 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v22 = type;
        v23 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v44 = "nw_endpoint_handler_get_mode";
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_45;
        }

        if (v23)
        {
          *buf = 136446210;
          v44 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v44 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_45:
    if (v14)
    {
      free(v14);
    }

LABEL_47:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *buf = 136446210;
    v44 = "nw_endpoint_handler_get_extended_dns_error";
    LODWORD(v40) = 12;
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s Endpoint handler is not a resolver", buf, v40);

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v33, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v44 = "nw_endpoint_handler_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v41 == 1)
      {
        v36 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v37 = type;
        v38 = os_log_type_enabled(v34, type);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            v44 = "nw_endpoint_handler_get_extended_dns_error";
            v45 = 2082;
            v46 = v36;
            _os_log_impl(&dword_181A37000, v34, v37, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          if (!v33)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        if (v38)
        {
          *buf = 136446210;
          v44 = "nw_endpoint_handler_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v34, v37, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v39 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v44 = "nw_endpoint_handler_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v33)
    {
      goto LABEL_54;
    }

LABEL_53:
    free(v33);
    goto LABEL_54;
  }

  mode = v5->mode;

  if (mode != 1)
  {
    goto LABEL_47;
  }

  v8 = nw_endpoint_handler_copy_resolver(v6);
  v9 = v8[1];
  v10 = v9;
  if (!v9)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_resolver_get_extended_dns_error";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null resolver", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v18, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v44 = "nw_resolver_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v41 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v19, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v44 = "nw_resolver_get_extended_dns_error";
            v45 = 2082;
            v46 = v25;
            _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_70;
        }

        if (v27)
        {
          *buf = 136446210;
          v44 = "nw_resolver_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v44 = "nw_resolver_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_70:
    if (v18)
    {
      free(v18);
    }

    goto LABEL_10;
  }

  if (a2)
  {
    *a2 = *(v9 + 184);
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v11 = v9[31];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = strdup(v11);
  if (v12)
  {
LABEL_9:
    *a3 = v12;
LABEL_10:

LABEL_54:
    return;
  }

  v28 = __nwlog_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *buf = 136446210;
  v44 = "strict_strdup";
  v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s strdup() failed", buf, 12);

  if (!__nwlog_should_abort(v30))
  {
    free(v30);
    v12 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t nw_endpoint_edge_is_active(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v2 = WeakRetained;
    if (WeakRetained)
    {
      v3 = WeakRetained;
      is_active = _nw_endpoint_is_active(v3, 0);
    }

    else
    {
      is_active = 0;
    }

    return is_active;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_endpoint_edge_is_active";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null edge", buf, 12);

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
        v17 = "nw_endpoint_edge_is_active";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null edge", buf, 0xCu);
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
          v17 = "nw_endpoint_edge_is_active";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null edge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_endpoint_edge_is_active";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null edge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_endpoint_edge_is_active";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null edge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

const char *__cdecl nw_interface_get_name(const char *interface)
{
  if (interface)
  {
    return _nw_interface_get_name(interface);
  }

  return interface;
}

uint64_t _nw_interface_get_name_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network13__NWInterface_lock];
  v2 = a1;
  os_unfair_lock_lock(v1);
  v3 = *&v2[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage];
  if (!v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC7Network13__NWInterface_interface];
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = v2;

    v3 = sub_181CD2054(v5, v6, v7);
  }

  os_unfair_lock_unlock(v1);

  return v3;
}

uint64_t sub_181CD2054(uint64_t a1, uint64_t a2, void *a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      sub_181CD215C(v8, a3, &v7);
      if (!v3)
      {
        v4 = v7;
        goto LABEL_10;
      }

LABEL_7:

      return v4;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_181CD215C(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), a3, v8);
      if (!v3)
      {
        v4 = v8[0];
LABEL_10:

        return v4;
      }

      goto LABEL_7;
    }
  }

  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A0A0, &qword_182AF2E58);
  sub_182AD3B78();

  if (!v3)
  {
    return v8[2];
  }

  return v4;
}

void *sub_181CD215C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_182AD30F8();

  result = (v6 + 1);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = swift_slowAlloc();
  v9 = OBJC_IVAR____TtC7Network13__NWInterface_nameStorage;
  *(a2 + OBJC_IVAR____TtC7Network13__NWInterface_nameStorage) = v8;

  v10 = sub_182AD30F8();

  if (__OFADD__(v10, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = memcpy(v8, a1, v10 + 1);
  v11 = *(a2 + v9);
  if (v11)
  {
    *a3 = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t nw_path_get_policy_id(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    policy_id = _nw_path_get_policy_id(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_policy_id";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null path", buf, 12);

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
        v16 = "nw_path_get_policy_id";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_get_policy_id";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_get_policy_id";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_get_policy_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  policy_id = 0;
LABEL_3:

  return policy_id;
}

uint64_t _nw_path_get_policy_id(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 87);

  return v3;
}

uint64_t nw_path_is_per_app_vpn(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = 0;
    vpn_config_uuid = nw_path_get_vpn_config_uuid(v1, buf, 0, 0, 0);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_path_is_per_app_vpn";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null path", buf, 12);

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
        *&buf[4] = "nw_path_is_per_app_vpn";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          *&buf[4] = "nw_path_is_per_app_vpn";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_is_per_app_vpn";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_is_per_app_vpn";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  vpn_config_uuid = 0;
LABEL_3:

  return vpn_config_uuid;
}

uint64_t nw_protocol_default_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_waiting_for_output";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v7, &type, &v13))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_waiting_for_output";
      v10 = "%{public}s called with null protocol";
    }

    else if (v13 == 1)
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
          v16 = "nw_protocol_default_waiting_for_output";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v12)
      {
LABEL_22:
        if (v7)
        {
          free(v7);
        }

        return 0;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_waiting_for_output";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_waiting_for_output";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_22;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    return 0;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  waiting_for_output = callbacks->waiting_for_output;
  if (!waiting_for_output)
  {
    return 0;
  }

  return waiting_for_output();
}

void nw_endpoint_flow_connected(NWConcrete_nw_endpoint_handler *a1)
{
  v108 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_mode";
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (__nwlog_fault(v68, &type, &v95))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v69, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v95 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v72 = type;
        v73 = os_log_type_enabled(v69, type);
        if (backtrace_string)
        {
          if (v73)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_get_mode";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v69, v72, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_114;
        }

        if (v73)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v69, v72, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v69 = __nwlog_obj();
        v74 = type;
        if (os_log_type_enabled(v69, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v69, v74, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_114:
    if (v68)
    {
      free(v68);
    }

    mode = 0;
    goto LABEL_117;
  }

  mode = v1->mode;

  if (mode == 2)
  {
    v4 = nw_endpoint_handler_copy_flow(v2);
    v5 = v2;
    v6 = v5->state & 0xFFFFFFFE;

    if (v6 == 4)
    {
      goto LABEL_122;
    }

    if (!*(v4 + 114))
    {
      goto LABEL_22;
    }

    if ((*(v4 + 32) & 0x80000000) == 0)
    {
      v7 = v5;
      v8 = v7[7];

      if (v8)
      {
        nw_association_force_update(v8, *(v4 + 104));
      }
    }

    v9 = *(v4 + 51);
    if (!v9 || (v10 = v9[3]) == 0 || (v11 = *(v10 + 224)) == 0)
    {
LABEL_22:
      v18 = v5;
      v19 = v2->mode;

      if (v19 == 2)
      {
        v20 = nw_endpoint_handler_copy_flow(v18);
        v21 = v18;
        v22 = v21[4];

        sleep_keepalive_interval = nw_parameters_get_sleep_keepalive_interval(v22);
        if (sleep_keepalive_interval)
        {
          v24 = *(v20 + 111);
          if (v24)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL45nw_endpoint_flow_enable_sleep_proxy_if_neededP30NWConcrete_nw_endpoint_handler_block_invoke;
            v98 = &unk_1E6A3C178;
            *v99 = v20;
            *&v99[16] = sleep_keepalive_interval;
            *&v99[8] = v21;
            nw_fd_wrapper_get_fd(v24, buf);

            v25 = *v99;
LABEL_47:

            goto LABEL_48;
          }

          v38 = v21;
          v39 = (*(v38 + 284) & 0x40) == 0;

          if (v39)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v25 = gconnectionLogObj;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              id_string = nw_endpoint_handler_get_id_string(v38);
              loga = nw_endpoint_handler_dry_run_string(v38);
              v90 = id_string;
              obja = nw_endpoint_handler_copy_endpoint(v38);
              logging_description = nw_endpoint_get_logging_description(obja);
              v42 = nw_endpoint_handler_state_string(v38);
              v43 = nw_endpoint_handler_mode_string(v38);
              v44 = nw_endpoint_handler_copy_current_path(v38);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_flow_enable_sleep_proxy_if_needed";
              *&buf[12] = 2082;
              *&buf[14] = v90;
              *&buf[22] = 2082;
              v98 = loga;
              *v99 = 2082;
              *&v99[2] = logging_description;
              *&v99[10] = 2082;
              *&v99[12] = v42;
              v100 = 2082;
              v101 = v43;
              v102 = 2114;
              v103 = v44;
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Sleep proxy is only supported for socket flows", buf, 0x48u);
            }

            goto LABEL_47;
          }
        }

LABEL_48:

        goto LABEL_68;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (v19 > 5)
      {
        v27 = "unknown-mode";
      }

      else
      {
        v27 = off_1E6A31018[v19];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_flow_enable_sleep_proxy_if_needed";
      *&buf[12] = 2082;
      *&buf[14] = v27;
      *&buf[22] = 2082;
      v98 = "flow";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

      type = OS_LOG_TYPE_ERROR;
      v95 = 0;
      if (__nwlog_fault(v28, &type, &v95))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = type;
          if (os_log_type_enabled(v29, type))
          {
            if (v19 > 5)
            {
              v31 = "unknown-mode";
            }

            else
            {
              v31 = off_1E6A31018[v19];
            }

            *buf = 136446722;
            *&buf[4] = "nw_endpoint_flow_enable_sleep_proxy_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v31;
            *&buf[22] = 2082;
            v98 = "flow";
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
          }
        }

        else if (v95 == 1)
        {
          v32 = __nw_create_backtrace_string();
          v29 = __nwlog_obj();
          v33 = type;
          v34 = os_log_type_enabled(v29, type);
          if (v32)
          {
            if (v34)
            {
              if (v19 > 5)
              {
                v35 = "unknown-mode";
              }

              else
              {
                v35 = off_1E6A31018[v19];
              }

              *buf = 136446978;
              *&buf[4] = "nw_endpoint_flow_enable_sleep_proxy_if_needed";
              *&buf[12] = 2082;
              *&buf[14] = v35;
              *&buf[22] = 2082;
              v98 = "flow";
              *v99 = 2082;
              *&v99[2] = v32;
              _os_log_impl(&dword_181A37000, v29, v33, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v32);
            if (!v28)
            {
LABEL_68:

              if ((*(v4 + 33) & 1) == 0 || !*(v4 + 92))
              {
                goto LABEL_88;
              }

              v46 = 0;
              v47 = v4 + 376;
              do
              {
                if (!uuid_is_null(v47))
                {
                  v46 = v47;
                }

                v47 = *(v47 + 4);
              }

              while (v47);
              if (!v46)
              {
                goto LABEL_88;
              }

              v48 = *(v4 + 104);
              if (v48)
              {
                *buf = 0;
                *&buf[8] = 0;
                v49 = v48;
                if (!uuid_is_null(v49 + 32))
                {
                  *buf = *(v49 + 2);
                }

                if (!uuid_compare(buf, v46))
                {
                  goto LABEL_88;
                }
              }

              v50 = v18;
              v51 = v50[5];

              obj = nw_path_copy_flow_registration(v51, v46);
              if (obj)
              {
                objc_storeStrong(v4 + 104, obj);
                v52 = v50;
                v53 = (*(v52 + 284) & 0x20) == 0;

                if (!v53)
                {
                  v76 = v52;
                  if (nw_endpoint_handler_get_logging_disabled(v52))
                  {
                    goto LABEL_87;
                  }

                  v92 = v51;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  log = gconnectionLogObj;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                  {
                    v84 = nw_endpoint_handler_get_id_string(v52);
                    v82 = nw_endpoint_handler_dry_run_string(v52);
                    v86 = nw_endpoint_handler_copy_endpoint(v52);
                    v77 = nw_endpoint_get_logging_description(v86);
                    v78 = v52;
                    v79 = nw_endpoint_handler_state_string(v52);
                    v80 = nw_endpoint_handler_mode_string(v76);
                    v81 = nw_endpoint_handler_copy_current_path(v78);
                    *buf = 136448258;
                    *&buf[4] = "nw_endpoint_flow_connected";
                    *&buf[12] = 2082;
                    *&buf[14] = v84;
                    *&buf[22] = 2082;
                    v98 = v82;
                    *v99 = 2082;
                    *&v99[2] = v77;
                    *&v99[10] = 2082;
                    *&v99[12] = v79;
                    v100 = 2082;
                    v101 = v80;
                    v102 = 2114;
                    v103 = v81;
                    v104 = 1042;
                    v105 = 16;
                    v106 = 2098;
                    v107 = v46;
                    v56 = log;
                    _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Joined protocol has updated flow id, using flow id %{public,uuid_t}.16P", buf, 0x58u);

                    v51 = v92;
                  }

                  else
                  {
                    v56 = log;
                  }

                  goto LABEL_86;
                }

                v54 = v52;
                v55 = (*(v52 + 284) & 0x40) == 0;

                if (v55)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v56 = gconnectionLogObj;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                  {
                    v85 = nw_endpoint_handler_get_id_string(v54);
                    v83 = nw_endpoint_handler_dry_run_string(v54);
                    logb = v56;
                    v91 = v51;
                    v57 = nw_endpoint_handler_copy_endpoint(v54);
                    v58 = nw_endpoint_get_logging_description(v57);
                    v59 = nw_endpoint_handler_state_string(v54);
                    v60 = nw_endpoint_handler_mode_string(v54);
                    v61 = nw_endpoint_handler_copy_current_path(v54);
                    *buf = 136448258;
                    *&buf[4] = "nw_endpoint_flow_connected";
                    *&buf[12] = 2082;
                    *&buf[14] = v85;
                    *&buf[22] = 2082;
                    v98 = v83;
                    *v99 = 2082;
                    *&v99[2] = v58;
                    *&v99[10] = 2082;
                    *&v99[12] = v59;
                    v100 = 2082;
                    v101 = v60;
                    v102 = 2114;
                    v103 = v61;
                    v104 = 1042;
                    v105 = 16;
                    v106 = 2098;
                    v107 = v46;
                    v56 = logb;
                    _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Joined protocol has updated flow id, using flow id %{public,uuid_t}.16P", buf, 0x58u);

                    v51 = v91;
                  }

LABEL_86:
                }
              }

LABEL_87:

LABEL_88:
              os_unfair_lock_lock(v4 + 220);
              v62 = *(v4 + 2);
              *(v4 + 2) = 0;

              os_unfair_lock_unlock(v4 + 220);
              if ((*(v4 + 32) & 3) == 1 && (v63 = *(v4 + 117)) != 0)
              {
                v64 = nw_endpoint_handler_copy_connected_path(v63);
              }

              else
              {
                v64 = nw_endpoint_flow_copy_path(v18);
              }

              v65 = v64;
              os_unfair_lock_lock(v4 + 220);
              objc_storeStrong(v4 + 1, v65);
              os_unfair_lock_unlock(v4 + 220);
              v66 = v18;
              v5->state = 3;

              if (_nw_signposts_once != -1)
              {
                dispatch_once(&_nw_signposts_once, &__block_literal_global_85389);
              }

              if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
              {
                kdebug_trace();
              }

              nw_endpoint_flow_update_connected_metadata(v66, 0);
              nw_endpoint_flow_update_connected_metadata(v66, 1);
              nw_endpoint_flow_connected_path_change(v66);

              goto LABEL_122;
            }

LABEL_67:
            free(v28);
            goto LABEL_68;
          }

          if (v34)
          {
            if (v19 > 5)
            {
              v45 = "unknown-mode";
            }

            else
            {
              v45 = off_1E6A31018[v19];
            }

            *buf = 136446722;
            *&buf[4] = "nw_endpoint_flow_enable_sleep_proxy_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v45;
            *&buf[22] = 2082;
            v98 = "flow";
            _os_log_impl(&dword_181A37000, v29, v33, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v36 = type;
          if (os_log_type_enabled(v29, type))
          {
            if (v19 > 5)
            {
              v37 = "unknown-mode";
            }

            else
            {
              v37 = off_1E6A31018[v19];
            }

            *buf = 136446722;
            *&buf[4] = "nw_endpoint_flow_enable_sleep_proxy_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v37;
            *&buf[22] = 2082;
            v98 = "flow";
            _os_log_impl(&dword_181A37000, v29, v36, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

      if (!v28)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    v12 = v9[5];
    v13 = *(v4 + 51);
    if (v12 != &nw_protocol_ref_counted_handle)
    {
      if (v12 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v13) = 0;
        v14 = 1;
LABEL_19:
        *buf = v9;
        buf[8] = v13;
        v16 = v11();
        if ((v14 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(buf);
        }

        os_unfair_lock_lock(v4 + 220);
        v17 = *(v4 + 111);
        *(v4 + 111) = v16;

        os_unfair_lock_unlock(v4 + 220);
        goto LABEL_22;
      }

      v13 = v9[8];
      if (!v13)
      {
        v14 = 1;
        goto LABEL_19;
      }
    }

    v15 = *(v13 + 88);
    v14 = 0;
    if (v15)
    {
      *(v13 + 88) = v15 + 1;
    }

    LOBYTE(v13) = -1;
    goto LABEL_19;
  }

LABEL_117:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v75 = "unknown-mode";
    }

    else
    {
      v75 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_flow_connected";
    *&buf[12] = 2082;
    *&buf[14] = v75;
    *&buf[22] = 2082;
    v98 = "flow";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_122:
}

uint64_t nw_flow_passthrough_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      nw_protocol_set_input_handler(a1, a2);
      if (!nw_protocols_are_equal(a2->identifier->name, &g_replay_protocol_identifier) && !a2->output_handler)
      {
        nw_protocol_set_output_handler(a2, a1);
      }

      output_handler = a1->output_handler;
      if (output_handler)
      {
        callbacks = output_handler->callbacks;
        if (callbacks)
        {
          notify = callbacks->notify;
          if (notify)
          {
            notify();
          }
        }
      }

      return 1;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_flow_passthrough_add_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null input_protocol", buf, 12);

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
          v21 = "nw_flow_passthrough_add_input_handler";
          v12 = "%{public}s called with null input_protocol";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_flow_passthrough_add_input_handler";
          v12 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v17 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v21 = "nw_flow_passthrough_add_input_handler";
          v12 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (!v17)
      {
        goto LABEL_29;
      }

      *buf = 136446466;
      v21 = "nw_flow_passthrough_add_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
LABEL_28:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_29:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_flow_passthrough_add_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);

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
          v21 = "nw_flow_passthrough_add_input_handler";
          v12 = "%{public}s called with null protocol";
LABEL_38:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_flow_passthrough_add_input_handler";
          v12 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_flow_passthrough_add_input_handler";
          v12 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (!v15)
      {
        goto LABEL_29;
      }

      *buf = 136446466;
      v21 = "nw_flow_passthrough_add_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_28;
    }
  }

LABEL_40:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

uint64_t nw_parameters_get_https_proxy_over_tls(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_https_proxy_over_tls(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_https_proxy_over_tls";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

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
        v12 = "nw_parameters_get_https_proxy_over_tls";
        v6 = "%{public}s called with null parameters";
LABEL_18:
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
            v12 = "nw_parameters_get_https_proxy_over_tls";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_https_proxy_over_tls";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_https_proxy_over_tls";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_tls(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack();
    v2 = nw_protocol_boringssl_copy_definition();
    v3 = nw_protocol_stack_includes_protocol(v1, v2);

    return v3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_parameters_get_tls";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

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
        v15 = "nw_parameters_get_tls";
        v9 = "%{public}s called with null parameters";
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
            v15 = "nw_parameters_get_tls";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_parameters_get_tls";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_get_tls";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
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

  return 0;
}

void nw_connection_fillout_establishment_report_on_nw_queue(void *a1, int a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
    v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null connection", buf, 12);

    LOBYTE(v108) = 16;
    LOBYTE(v107) = 0;
    if (__nwlog_fault(v75, &v108, &v107))
    {
      if (v108 == 17)
      {
        v76 = __nwlog_obj();
        v77 = v108;
        if (os_log_type_enabled(v76, v108))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v107 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v76 = __nwlog_obj();
        v79 = v108;
        v80 = os_log_type_enabled(v76, v108);
        if (backtrace_string)
        {
          if (v80)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
            v110 = 2082;
            v111 = backtrace_string;
            _os_log_impl(&dword_181A37000, v76, v79, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_117;
        }

        if (v80)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v76, v79, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v76 = __nwlog_obj();
        v85 = v108;
        if (os_log_type_enabled(v76, v108))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v76, v85, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_117:
    if (v75)
    {
      free(v75);
    }

    goto LABEL_90;
  }

  nw_context_assert_queue(v3[3]);
  if ((*(v4 + 109) & 0x40) != 0)
  {
    v5 = nw_endpoint_handler_copy_connected_flow_handler(v4[18]);
    v6 = v5;
    if (!v5)
    {
LABEL_89:

      goto LABEL_90;
    }

    v92 = a2;
    v93 = v5;
    v7 = objc_alloc_init(NWConcrete_nw_establishment_report);
    if (v7)
    {
      v8 = v6;
      v95 = v8->parameters;

      v9 = v4[18];
      v10 = (v9 >> 16) ^ HIDWORD(v9) ^ HIWORD(v9) ^ v9;
      v91 = v9;
      if (!v9)
      {
        LOWORD(v10) = 0;
      }

      v108 = v10;
      v107 = WORD2(v8) ^ WORD1(v8) ^ HIWORD(v8) ^ v8;
      event_milliseconds = nw_connection_get_event_milliseconds(v4, 1, 1, &v108, 0xFFFFFFFFLL);
      v12 = nw_connection_get_event_milliseconds(v4, 3, 6, &v108, 0);
      v13 = nw_connection_get_event_milliseconds(v4, 1, 3, &v108, 0xFFFFFFFFLL);
      if (v13 >= v12 || v13 == -1)
      {
        v15 = event_milliseconds;
      }

      else
      {
        v15 = v13;
      }

      v7->attempt_started_after_milliseconds = v15;
      v7->duration_milliseconds = v12 - v15;
      v96 = v15;
      v16 = nw_connection_get_event_milliseconds(v4, 3, 3, &v107, 0);
      if (v16 != -1 && v16 > v96)
      {
        v7->flow_started_after_milliseconds = v16 - v96;
      }

      v17 = nw_endpoint_flow_copy_protocol_establishment_reports(v4[18]);
      protocol_reports = v7->protocol_reports;
      v7->protocol_reports = v17;

      v19 = v8;
      v20 = 0;
      v94 = v19;
      do
      {
        v21 = v19;
        v22 = *(v21 + 29) == 1;

        v23 = v21;
        v19 = v23[9];

        v20 += v22;
      }

      while (v19);
      if (v20)
      {
        v24 = _nw_array_create();
        resolution_reports = v7->resolution_reports;
        v7->resolution_reports = v24;

        v26 = v94;
        v27 = nw_endpoint_handler_copy_endpoint(v26);
        v28 = 0;
        while (1)
        {
          v29 = v26;
          v30 = v29;
          if (!v29)
          {
            break;
          }

          v31 = *(v29 + 29) == 1;

          if (!v31)
          {
            goto LABEL_34;
          }

          v32 = objc_alloc_init(NWConcrete_nw_resolution_report);
          v106 = WORD2(v30) ^ WORD1(v30) ^ HIWORD(v30) ^ v30;
          v33 = nw_endpoint_handler_copy_endpoint(v30);
          v34 = v33;
          if (v33 && (v35 = v33, type = _nw_endpoint_get_type(v35), v35, type == 3))
          {
            v37 = 4;
            v38 = 3;
          }

          else
          {
            v37 = 2;
            v38 = 1;
          }

          v39 = nw_connection_get_event_milliseconds(v4, 2, v38, &v106, 0);
          v32->milliseconds = nw_connection_get_event_milliseconds(v4, 2, v37, &v106, 0) - v39;
          if (!v28 && v39 > v96)
          {
            v7->resolution_started_after_milliseconds = v39 - v96;
          }

          objc_storeStrong(&v32->successful_endpoint, v27);
          v32->endpoint_count = nw_endpoint_handler_get_resolved_endpoint_count(v30);
          v32->source = nw_endpoint_handler_get_resolution_source(v30);
          v32->protocol = nw_endpoint_handler_get_resolution_protocol(v30);
          v40 = nw_endpoint_handler_copy_preferred_resolved_endpoint(v30);
          preferred_endpoint = v32->preferred_endpoint;
          v32->preferred_endpoint = v40;

          v42 = nw_endpoint_handler_copy_resolved_endpoints(v30);
          resolved_endpoints = v32->resolved_endpoints;
          v32->resolved_endpoints = v42;

          v105 = 0;
          nw_endpoint_handler_get_svcb_report(v30, 0, &v105, 0);
          *(v32 + 70) = *(v32 + 70) & 0xFE | v105;
          v104 = 0;
          *buf = 0;
          nw_endpoint_handler_get_extended_dns_error(v30, &v104, buf);
          v32->extended_dns_error_code = v104;
          v32->extended_dns_error_extra_text = *buf;
          v44 = v7->resolution_reports;
          if (v44 && v32)
          {
            _nw_array_prepend(v44, v32);
          }

          ++v28;
LABEL_33:

LABEL_34:
          v45 = nw_endpoint_handler_copy_endpoint(v30);

          v46 = v30;
          v47 = v46;
          if (!v30)
          {
            v52 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_handler_copy_parent";
            LODWORD(v90) = 12;
            v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null handler", buf, v90);

            LOBYTE(v106) = 16;
            LOBYTE(v104) = 0;
            if (__nwlog_fault(v53, &v106, &v104))
            {
              if (v106 == 17)
              {
                v54 = __nwlog_obj();
                v55 = v106;
                if (os_log_type_enabled(v54, v106))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_endpoint_handler_copy_parent";
                  _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null handler", buf, 0xCu);
                }

                goto LABEL_48;
              }

              if (v104 == 1)
              {
                v60 = __nw_create_backtrace_string();
                v61 = __nwlog_obj();
                v62 = v106;
                v63 = os_log_type_enabled(v61, v106);
                if (v60)
                {
                  if (v63)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_endpoint_handler_copy_parent";
                    v110 = 2082;
                    v111 = v60;
                    _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v60);
                }

                else
                {
                  if (v63)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_endpoint_handler_copy_parent";
                    _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null handler, no backtrace", buf, 0xCu);
                  }
                }
              }

              else
              {
                v54 = __nwlog_obj();
                v65 = v106;
                if (os_log_type_enabled(v54, v106))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_endpoint_handler_copy_parent";
                  _os_log_impl(&dword_181A37000, v54, v65, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
                }

LABEL_48:
              }
            }

            if (v53)
            {
              free(v53);
            }

            v26 = 0;
            goto LABEL_36;
          }

          v26 = v46[9];
LABEL_36:

          if (v26)
          {
            v27 = v45;
            if (v28 < v20)
            {
              continue;
            }
          }

          goto LABEL_79;
        }

        v48 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_mode";
        LODWORD(v90) = 12;
        v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null handler", buf, v90);

        LOBYTE(v106) = 16;
        LOBYTE(v104) = 0;
        if (__nwlog_fault(v49, &v106, &v104))
        {
          if (v106 == 17)
          {
            v50 = __nwlog_obj();
            v51 = v106;
            if (os_log_type_enabled(v50, v106))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_handler_get_mode";
              _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null handler", buf, 0xCu);
            }
          }

          else
          {
            if (v104 == 1)
            {
              v56 = __nw_create_backtrace_string();
              v57 = __nwlog_obj();
              v58 = v106;
              v59 = os_log_type_enabled(v57, v106);
              if (v56)
              {
                if (v59)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_endpoint_handler_get_mode";
                  v110 = 2082;
                  v111 = v56;
                  _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v56);
              }

              else
              {
                if (v59)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_endpoint_handler_get_mode";
                  _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null handler, no backtrace", buf, 0xCu);
                }
              }

              goto LABEL_68;
            }

            v50 = __nwlog_obj();
            v64 = v106;
            if (os_log_type_enabled(v50, v106))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_handler_get_mode";
              _os_log_impl(&dword_181A37000, v50, v64, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_68:
        if (v49)
        {
          free(v49);
        }

        v32 = 0;
        goto LABEL_33;
      }

      v26 = 0;
LABEL_79:
      *buf = 0;
      if (nw_connection_get_event_milliseconds(v4, 4, 1, buf, 0) != -1)
      {
        *(v7 + 84) |= 1u;
        v66 = nw_parameters_copy_effective_proxy_config(v95);
        v67 = v66;
        if (v66)
        {
          v68 = v66;
          v69 = v68[38] == 4;

          if (!v69)
          {
            *(v7 + 84) |= 2u;
            v70 = _nw_array_create();
            proxy_endpoints = v7->proxy_endpoints;
            v7->proxy_endpoints = v70;

            v102[0] = MEMORY[0x1E69E9820];
            v102[1] = 3221225472;
            v102[2] = __nw_connection_fillout_establishment_report_on_nw_queue_block_invoke;
            v102[3] = &unk_1E6A2C848;
            v103 = v7;
            nw_proxy_config_enumerate_endpoints(v68, v102);
          }
        }

        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __nw_connection_fillout_establishment_report_on_nw_queue_block_invoke_2;
        v100[3] = &unk_1E6A2EE78;
        v101 = v7;
        nw_endpoint_handler_access_proxy_handler(v94, v100);
      }

      if (v92)
      {
        v7->privacy_stance = *(v4 + 126);
        v72 = v7;
        v73 = v4[52];
        v4[52] = v72;
      }

      else
      {
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __nw_connection_fillout_establishment_report_on_nw_queue_block_invoke_158;
        v97[3] = &unk_1E6A3D760;
        v98 = v7;
        v99 = v4;
        os_unfair_lock_lock(v4 + 34);
        __nw_connection_fillout_establishment_report_on_nw_queue_block_invoke_158(v97);
        os_unfair_lock_unlock(v4 + 34);

        v73 = v98;
      }

      goto LABEL_88;
    }

    v81 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
    v82 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s called with null report", buf, 12);

    LOBYTE(v108) = 16;
    LOBYTE(v107) = 0;
    if (__nwlog_fault(v82, &v108, &v107))
    {
      if (v108 == 17)
      {
        v83 = __nwlog_obj();
        v84 = v108;
        if (os_log_type_enabled(v83, v108))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v107 == 1)
      {
        v86 = __nw_create_backtrace_string();
        v83 = __nwlog_obj();
        v87 = v108;
        v88 = os_log_type_enabled(v83, v108);
        if (v86)
        {
          if (v88)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
            v110 = 2082;
            v111 = v86;
            _os_log_impl(&dword_181A37000, v83, v87, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v86);
          goto LABEL_125;
        }

        if (v88)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v83, v87, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v83 = __nwlog_obj();
        v89 = v108;
        if (os_log_type_enabled(v83, v108))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_fillout_establishment_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v83, v89, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_125:
    if (v82)
    {
      free(v82);
    }

LABEL_88:

    v6 = v93;
    goto LABEL_89;
  }

LABEL_90:
}

uint64_t nw_endpoint_flow_copy_protocol_establishment_reports(void *a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (__nwlog_fault(v45, &type, &v73))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v73 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v53 = type;
        v54 = os_log_type_enabled(v46, type);
        if (backtrace_string)
        {
          if (v54)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
            v76 = 2082;
            v77 = backtrace_string;
            _os_log_impl(&dword_181A37000, v46, v53, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_102;
        }

        if (v54)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
          _os_log_impl(&dword_181A37000, v46, v53, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v59 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
          _os_log_impl(&dword_181A37000, v46, v59, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_102:
    if (v45)
    {
      free(v45);
    }

    goto LABEL_27;
  }

  v3 = v1;
  v4 = v3[29];

  if (v4 == 2)
  {
    v5 = v3;
    v6 = v5->parameters;

    if (v6)
    {
      v7 = _nw_parameters_copy_context();
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        v10 = v9;
        if ((v9[19] & 8) == 0)
        {
          dispatch_assert_queue_V2(v9[1]);
        }

        v11 = nw_endpoint_handler_copy_flow(v5);
        v12 = *(v11 + 51);
        if (v12)
        {
          v13 = v12[3];
          if (v13)
          {
            v14 = *(v13 + 224);
            if (v14)
            {
              v15 = v12[5];
              v16 = *(v11 + 51);
              if (v15 != &nw_protocol_ref_counted_handle)
              {
                if (v15 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v16) = 0;
                  v17 = 1;
                  goto LABEL_32;
                }

                v16 = v12[8];
                if (!v16)
                {
                  v17 = 1;
LABEL_32:
                  *buf = v12;
                  buf[8] = v16;
                  v29 = v14();
                  if ((v17 & 1) == 0)
                  {
                    nw::release_if_needed<nw_protocol *>(buf);
                  }

                  goto LABEL_56;
                }
              }

              v30 = *(v16 + 88);
              v17 = 0;
              if (v30)
              {
                *(v16 + 88) = v30 + 1;
              }

              LOBYTE(v16) = -1;
              goto LABEL_32;
            }
          }

LABEL_55:
          v29 = 0;
LABEL_56:

LABEL_57:
LABEL_58:

          goto LABEL_59;
        }

        v20 = v5;
        v21 = *(v20 + 284);

        if ((v21 & 0x40) != 0)
        {
          goto LABEL_55;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v22 = gconnectionLogObj;
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
LABEL_54:

          goto LABEL_55;
        }

        v72 = v6;
        v23 = v20;

        v24 = v23;
        v25 = *(v20 + 284);

        v26 = "dry-run ";
        if ((v25 & 1) == 0)
        {
          v26 = "";
        }

        v71 = v26;
        v27 = nw_endpoint_handler_copy_endpoint(v24);
        v28 = v27;
        if (v27)
        {
          logging_description = _nw_endpoint_get_logging_description(v27);
        }

        else
        {
          logging_description = "<NULL>";
        }

        id_str = v23->id_str;

        v32 = v24;
        v33 = v32;
        v34 = v32[30];
        if (v34 > 5)
        {
          v35 = "unknown-state";
        }

        else
        {
          v35 = off_1E6A31048[v34];
        }

        v36 = v33;
        v37 = v36;
        v38 = v3[29];
        v39 = id_str;
        if (v38 > 2)
        {
          switch(v38)
          {
            case 3:
              v40 = "proxy";
              goto LABEL_53;
            case 4:
              v40 = "fallback";
              goto LABEL_53;
            case 5:
              v40 = "transform";
              goto LABEL_53;
          }
        }

        else
        {
          switch(v38)
          {
            case 0:
              v40 = "path";
              goto LABEL_53;
            case 1:
              v40 = "resolver";
              goto LABEL_53;
            case 2:
              v40 = nw_endpoint_flow_mode_string(v36[33]);
LABEL_53:

              v41 = v37;
              os_unfair_lock_lock(v41 + 28);
              v42 = v41[8];
              os_unfair_lock_unlock(v41 + 28);

              *buf = 136447746;
              *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
              v76 = 2082;
              v77 = v39;
              v78 = 2082;
              v79 = v71;
              v80 = 2082;
              v81 = logging_description;
              v82 = 2082;
              v83 = v35;
              v84 = 2082;
              v85 = v40;
              v86 = 2114;
              v87 = v42;
              _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] could not find valid output protocol", buf, 0x48u);

              v6 = v72;
              goto LABEL_54;
          }
        }

        v40 = "unknown-mode";
        goto LABEL_53;
      }

      v55 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
      v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null context", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v73 = 0;
      if (__nwlog_fault(v56, &type, &v73))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v57 = __nwlog_obj();
          v58 = type;
          if (os_log_type_enabled(v57, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
            _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null context", buf, 0xCu);
          }
        }

        else
        {
          if (v73 == 1)
          {
            v64 = __nw_create_backtrace_string();
            v65 = __nwlog_obj();
            v66 = type;
            v67 = os_log_type_enabled(v65, type);
            if (v64)
            {
              if (v67)
              {
                *buf = 136446466;
                *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
                v76 = 2082;
                v77 = v64;
                _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v64);
            }

            else
            {
              if (v67)
              {
                *buf = 136446210;
                *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
                _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null context, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_113;
          }

          v57 = __nwlog_obj();
          v69 = type;
          if (os_log_type_enabled(v57, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
            _os_log_impl(&dword_181A37000, v57, v69, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_113:
      if (v56)
      {
        free(v56);
      }

      v29 = 0;
      goto LABEL_57;
    }

    v48 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (__nwlog_fault(v49, &type, &v73))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v50, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else
      {
        if (v73 == 1)
        {
          v60 = __nw_create_backtrace_string();
          v61 = __nwlog_obj();
          v62 = type;
          v63 = os_log_type_enabled(v61, type);
          if (v60)
          {
            if (v63)
            {
              *buf = 136446466;
              *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
              v76 = 2082;
              v77 = v60;
              _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v60);
          }

          else
          {
            if (v63)
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
              _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_107;
        }

        v50 = __nwlog_obj();
        v68 = type;
        if (os_log_type_enabled(v50, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
          _os_log_impl(&dword_181A37000, v50, v68, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_107:
    if (v49)
    {
      free(v49);
    }

    v29 = 0;
    goto LABEL_58;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 > 5)
    {
      v19 = "unknown-mode";
    }

    else
    {
      v19 = off_1E6A31018[v4];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_flow_copy_protocol_establishment_reports";
    v76 = 2082;
    v77 = v19;
    v78 = 2082;
    v79 = "flow";
    _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_27:
  v29 = 0;
LABEL_59:

  return v29;
}

void nw_endpoint_flow_add_initial_write_request(NWConcrete_nw_endpoint_handler *a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_endpoint_handler_get_mode";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v38, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v67 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v64 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v42 = type;
        v43 = os_log_type_enabled(v39, type);
        if (backtrace_string)
        {
          if (v43)
          {
            *buf = 136446466;
            v67 = "nw_endpoint_handler_get_mode";
            v68 = 2082;
            v69 = backtrace_string;
            _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v43)
        {
          *buf = 136446210;
          v67 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v67 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v39, v44, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_60:
    if (v38)
    {
      free(v38);
    }

    mode = 0;
LABEL_63:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (mode > 5)
    {
      v46 = "unknown-mode";
    }

    else
    {
      v46 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v67 = "nw_endpoint_flow_add_initial_write_request";
    v68 = 2082;
    v69 = v46;
    v70 = 2082;
    v71 = "flow";
    LODWORD(v58) = 32;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, v58);

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v47, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v48 = gLogObj;
        v49 = type;
        if (os_log_type_enabled(v48, type))
        {
          if (mode > 5)
          {
            v50 = "unknown-mode";
          }

          else
          {
            v50 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v67 = "nw_endpoint_flow_add_initial_write_request";
          v68 = 2082;
          v69 = v50;
          v70 = 2082;
          v71 = "flow";
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v64 == 1)
      {
        v51 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v48 = gLogObj;
        v52 = type;
        v53 = os_log_type_enabled(v48, type);
        if (v51)
        {
          if (v53)
          {
            if (mode > 5)
            {
              v54 = "unknown-mode";
            }

            else
            {
              v54 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v67 = "nw_endpoint_flow_add_initial_write_request";
            v68 = 2082;
            v69 = v54;
            v70 = 2082;
            v71 = "flow";
            v72 = 2082;
            v73 = v51;
            _os_log_impl(&dword_181A37000, v48, v52, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v51);
          if (!v47)
          {
            goto LABEL_84;
          }

LABEL_83:
          free(v47);
          goto LABEL_84;
        }

        if (v53)
        {
          if (mode > 5)
          {
            v57 = "unknown-mode";
          }

          else
          {
            v57 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v67 = "nw_endpoint_flow_add_initial_write_request";
          v68 = 2082;
          v69 = v57;
          v70 = 2082;
          v71 = "flow";
          _os_log_impl(&dword_181A37000, v48, v52, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v48 = gLogObj;
        v55 = type;
        if (os_log_type_enabled(v48, type))
        {
          if (mode > 5)
          {
            v56 = "unknown-mode";
          }

          else
          {
            v56 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v67 = "nw_endpoint_flow_add_initial_write_request";
          v68 = 2082;
          v69 = v56;
          v70 = 2082;
          v71 = "flow";
          _os_log_impl(&dword_181A37000, v48, v55, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v47)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  mode = v1->mode;

  if (mode != 2)
  {
    goto LABEL_63;
  }

  v4 = v2;
  v5 = v4->state & 0xFFFFFFFE;

  if (v5 != 4)
  {
    v6 = nw_endpoint_handler_copy_flow(v4);
    if ((*(v6 + 33) & 0x10) != 0)
    {
LABEL_43:

      goto LABEL_84;
    }

    v7 = v4;
    v8 = v7[4];

    if (!nw_parameters_has_initial_data_payload(v8))
    {
LABEL_42:

      goto LABEL_43;
    }

    v9 = nw_parameters_copy_initial_data_payload(v8);
    size = dispatch_data_get_size(v9);
    v62 = v9;
    v11 = nw_write_request_create_idempotent(v9, &__block_literal_global_44658, 0, 1);
    v63 = v11;
    if (v11)
    {
      v12 = v7;
      v13 = *(v12 + 284);

      if ((v13 & 0x40) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v14 = gconnectionLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v61 = size;
          id_string = nw_endpoint_handler_get_id_string(v12);
          v59 = nw_endpoint_handler_dry_run_string(v12);
          v60 = nw_endpoint_handler_copy_endpoint(v12);
          logging_description = nw_endpoint_get_logging_description(v60);
          v17 = nw_endpoint_handler_state_string(v12);
          v18 = nw_endpoint_handler_mode_string(v12);
          v19 = nw_endpoint_handler_copy_current_path(v12);
          *buf = 136448002;
          v67 = "nw_endpoint_flow_add_initial_write_request";
          v68 = 2082;
          v69 = id_string;
          v70 = 2082;
          v71 = v59;
          v72 = 2082;
          v73 = logging_description;
          v74 = 2082;
          v75 = v17;
          v76 = 2082;
          v77 = v18;
          v78 = 2114;
          v79 = v19;
          v80 = 2048;
          v81 = v61;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Writing initial payload of size %zu", buf, 0x52u);
        }

        v11 = v63;
      }

      *(v6 + 33) |= 0x10u;
      v20 = nw_write_request_list_append(*(v6 + 71), v11);
      v21 = *(v6 + 71);
      *(v6 + 71) = v20;

      os_unfair_lock_lock(v6 + 220);
      v22 = v63;
      fd = v22->fd;
      if (v22->data)
      {
        if (!fd)
        {
          v24 = v22;
          num_bytes = dispatch_data_get_size(v22->data);
          v22 = v24;
LABEL_23:
          consumed_bytes = v22->consumed_bytes;
          if (num_bytes <= consumed_bytes)
          {
            LODWORD(consumed_bytes) = 0;
          }

          v31 = num_bytes - consumed_bytes;
          goto LABEL_26;
        }
      }

      else if (!fd)
      {
        v31 = 0;
LABEL_26:

        *(v6 + 224) += v31;
        os_unfair_lock_unlock(v6 + 220);
LABEL_41:

        goto LABEL_42;
      }

      num_bytes = v22->num_bytes;
      goto LABEL_23;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    *buf = 136446210;
    v67 = "nw_endpoint_flow_add_initial_write_request";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s network_write_request_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v27, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v67 = "nw_endpoint_flow_add_initial_write_request";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s network_write_request_create failed", buf, 0xCu);
        }
      }

      else
      {
        if (v64 == 1)
        {
          v32 = __nw_create_backtrace_string();
          v33 = __nwlog_obj();
          v34 = type;
          v35 = os_log_type_enabled(v33, type);
          if (v32)
          {
            if (v35)
            {
              *buf = 136446466;
              v67 = "nw_endpoint_flow_add_initial_write_request";
              v68 = 2082;
              v69 = v32;
              _os_log_impl(&dword_181A37000, v33, v34, "%{public}s network_write_request_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v32);
          }

          else
          {
            if (v35)
            {
              *buf = 136446210;
              v67 = "nw_endpoint_flow_add_initial_write_request";
              _os_log_impl(&dword_181A37000, v33, v34, "%{public}s network_write_request_create failed, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_39;
        }

        v28 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v67 = "nw_endpoint_flow_add_initial_write_request";
          _os_log_impl(&dword_181A37000, v28, v36, "%{public}s network_write_request_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_39:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_41;
  }

LABEL_84:
}

unint64_t nw_parameters_get_sleep_keepalive_interval(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_sleep_keepalive_interval(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_sleep_keepalive_interval";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

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
        v12 = "nw_parameters_get_sleep_keepalive_interval";
        v6 = "%{public}s called with null parameters";
LABEL_18:
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
            v12 = "nw_parameters_get_sleep_keepalive_interval";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_sleep_keepalive_interval";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_sleep_keepalive_interval";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_endpoint_flow_connected_path_change(NWConcrete_nw_endpoint_handler *a1)
{
  v184 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v97 = __nwlog_obj();
    *buf = 136446210;
    v167 = "nw_endpoint_handler_get_mode";
    v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v164 = 0;
    if (__nwlog_fault(v98, &type, &v164))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v99 = __nwlog_obj();
        v100 = type;
        if (os_log_type_enabled(v99, type))
        {
          *buf = 136446210;
          v167 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v164 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v102 = type;
        v103 = os_log_type_enabled(v99, type);
        if (backtrace_string)
        {
          if (v103)
          {
            *buf = 136446466;
            v167 = "nw_endpoint_handler_get_mode";
            v168 = 2082;
            v169 = backtrace_string;
            _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_141;
        }

        if (v103)
        {
          *buf = 136446210;
          v167 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v99 = __nwlog_obj();
        v104 = type;
        if (os_log_type_enabled(v99, type))
        {
          *buf = 136446210;
          v167 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v99, v104, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_141:
    if (v98)
    {
      free(v98);
    }

    mode = 0;
    v2 = 0;
    goto LABEL_144;
  }

  mode = v1->mode;

  if (mode == 2)
  {
    v163 = v2;
    v4 = nw_endpoint_handler_copy_flow(v2);
    v5 = v2;
    v6 = *(v5 + 284);

    if ((v6 & 0x40) != 0)
    {
      goto LABEL_32;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_31:

LABEL_32:
      v26 = v5;
      state = v26->state;

      if ((state & 0xFFFFFFFE) == 4)
      {
LABEL_124:

        v96 = v163;
        goto LABEL_178;
      }

      if (nw_endpoint_flow_should_not_use_path(v4))
      {
        v28 = v4 + 33;
        v29 = *(v4 + 33);
        if ((v29 & 2) != 0)
        {
LABEL_104:
          v92 = 0;
          if ((v29 & 4) != 0)
          {
LABEL_122:
            if (v92)
            {
              v26->event = 524291;
              nw_endpoint_handler_report(v26, 0, &v26->event.domain, 0);
            }

            goto LABEL_124;
          }

LABEL_110:
          if (state == 3)
          {
            *v28 = v29 | 0xC;
            v94 = v26;
            v95 = v94->association;

            if (v95)
            {
              nw_association_mark_flow_connected(v95, v94);
            }

            v94->event = 393219;
            nw_endpoint_handler_report(v94, 0, &v94->event.domain, 0);
            if (*(v4 + 127))
            {
              nw_endpoint_handler_register_adaptive_read_handler(v94);
            }

            if (*(v4 + 128))
            {
              nw_endpoint_handler_register_adaptive_write_handler(v94);
            }

            if (*(v4 + 129))
            {
              nw_endpoint_handler_register_keepalive_handler(v94);
            }

            if (*(v4 + 130))
            {
              nw_endpoint_handler_register_metadata_changed_handler(v94);
            }
          }

          goto LABEL_122;
        }

        goto LABEL_107;
      }

      if ((*(v4 + 32) & 2) != 0)
      {
        goto LABEL_57;
      }

      if ((*(v4 + 33) & 1) == 0)
      {
        v30 = *(v4 + 117);
        if (v30)
        {
          is_viable = nw_endpoint_handler_is_viable(v30);
          minimize_logging = nw_endpoint_handler_get_minimize_logging(v26);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(v26);
          log = is_viable;
          if (!minimize_logging)
          {
            if (logging_disabled)
            {
              goto LABEL_103;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v34 = gconnectionLogObj;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              id_string = nw_endpoint_handler_get_id_string(v26);
              v155 = nw_endpoint_handler_dry_run_string(v26);
              v36 = nw_endpoint_handler_copy_endpoint(v26);
              logging_description = nw_endpoint_get_logging_description(v36);
              v38 = nw_endpoint_handler_state_string(v26);
              v39 = nw_endpoint_handler_mode_string(v26);
              v40 = nw_endpoint_handler_copy_current_path(v26);
              v41 = nw_endpoint_handler_path_status_string(v26);
              v42 = "not ";
              *buf = 136448258;
              v167 = "nw_endpoint_flow_connected_path_change";
              v169 = id_string;
              v168 = 2082;
              if (log)
              {
                v42 = "";
              }

              v170 = 2082;
              v171 = v155;
              v172 = 2082;
              v173 = logging_description;
              v174 = 2082;
              v175 = v38;
              v176 = 2082;
              v177 = v39;
              v178 = 2114;
              v179 = v40;
              v180 = 2082;
              v181 = v41;
              v182 = 2082;
              v183 = v42;
              _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connected path is %{public}s, child is %{public}sviable", buf, 0x5Cu);
            }

            goto LABEL_102;
          }

          if ((logging_disabled & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v34 = gconnectionLogObj;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v125 = nw_endpoint_handler_get_id_string(v26);
              v158 = nw_endpoint_handler_dry_run_string(v26);
              v126 = nw_endpoint_handler_copy_endpoint(v26);
              v127 = nw_endpoint_get_logging_description(v126);
              v128 = nw_endpoint_handler_state_string(v26);
              v129 = nw_endpoint_handler_mode_string(v26);
              v130 = nw_endpoint_handler_copy_current_path(v26);
              v131 = nw_endpoint_handler_path_status_string(v26);
              v132 = "not ";
              *buf = 136448258;
              v167 = "nw_endpoint_flow_connected_path_change";
              v169 = v125;
              v168 = 2082;
              if (log)
              {
                v132 = "";
              }

              v170 = 2082;
              v171 = v158;
              v172 = 2082;
              v173 = v127;
              v174 = 2082;
              v175 = v128;
              v176 = 2082;
              v177 = v129;
              v178 = 2114;
              v179 = v130;
              v180 = 2082;
              v181 = v131;
              v182 = 2082;
              v183 = v132;
              _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connected path is %{public}s, child is %{public}sviable", buf, 0x5Cu);
            }

            goto LABEL_102;
          }

LABEL_103:
          v28 = v4 + 33;
          v29 = *(v4 + 33);
          if ((log ^ ((v29 & 2) == 0)))
          {
            goto LABEL_104;
          }

          if ((log & 1) == 0)
          {
            v93 = 0;
LABEL_109:
            v29 = v29 & 0xFD | v93;
            *v28 = v29;
            v92 = 1;
            if ((v29 & 4) != 0)
            {
              goto LABEL_122;
            }

            goto LABEL_110;
          }

LABEL_107:
          v93 = 2;
          goto LABEL_109;
        }

LABEL_57:
        v55 = *(v4 + 1);
        if (v55)
        {
          v56 = v55;
          log = _nw_path_is_viable(v56);
        }

        else
        {
          log = 0;
        }

        v57 = v26;
        v58 = (*(v5 + 284) & 0x20) == 0;

        if (!v58)
        {
          if ((nw_endpoint_handler_get_logging_disabled(v57) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v34 = gconnectionLogObj;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v153 = nw_endpoint_handler_get_id_string(v57);
              v157 = nw_endpoint_handler_dry_run_string(v57);
              v118 = nw_endpoint_handler_copy_endpoint(v57);
              v119 = nw_endpoint_get_logging_description(v118);
              v120 = nw_endpoint_handler_state_string(v57);
              v121 = nw_endpoint_handler_mode_string(v57);
              v122 = nw_endpoint_handler_copy_current_path(v57);
              v123 = nw_endpoint_handler_path_status_string(v57);
              v124 = "not ";
              *buf = 136448258;
              v167 = "nw_endpoint_flow_connected_path_change";
              v169 = v153;
              v168 = 2082;
              if (log)
              {
                v124 = "";
              }

              v170 = 2082;
              v171 = v157;
              v172 = 2082;
              v173 = v119;
              v174 = 2082;
              v175 = v120;
              v176 = 2082;
              v177 = v121;
              v178 = 2114;
              v179 = v122;
              v180 = 2082;
              v181 = v123;
              v182 = 2082;
              v183 = v124;
              _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connected path is %{public}s, %{public}sviable", buf, 0x5Cu);
            }

            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v59 = v57;
        v60 = (*(v5 + 284) & 0x40) == 0;

        if (!v60)
        {
          goto LABEL_103;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v34 = gconnectionLogObj;
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          goto LABEL_102;
        }

        v156 = v34;
        v61 = v59;

        v62 = v61;
        v63 = (*(v5 + 284) & 1) == 0;

        if (v63)
        {
          v64 = "";
        }

        else
        {
          v64 = "dry-run ";
        }

        v65 = nw_endpoint_handler_copy_endpoint(v62);
        v66 = v65;
        if (v65)
        {
          v150 = _nw_endpoint_get_logging_description(v65);
        }

        else
        {
          v150 = "<NULL>";
        }

        v67 = v62;
        v68 = v67;
        v69 = v26->state;
        if (v69 > 5)
        {
          v70 = "unknown-state";
        }

        else
        {
          v70 = off_1E6A31048[v69];
        }

        v71 = v68;
        v72 = v71;
        v73 = v163->mode;
        if (v73 > 2)
        {
          switch(v73)
          {
            case 3:
              v74 = "proxy";
              goto LABEL_98;
            case 4:
              v74 = "fallback";
              goto LABEL_98;
            case 5:
              v74 = "transform";
              goto LABEL_98;
          }
        }

        else
        {
          switch(v73)
          {
            case 0:
              v74 = "path";
              goto LABEL_98;
            case 1:
              v74 = "resolver";
              goto LABEL_98;
            case 2:
              v74 = nw_endpoint_flow_mode_string(v71[33]);
LABEL_98:

              v87 = v72;
              os_unfair_lock_lock(v87 + 28);
              v88 = v87[8];
              os_unfair_lock_unlock(v87 + 28);

              v89 = v88;
              v90 = nw_endpoint_handler_path_status_string(v87);
              v167 = "nw_endpoint_flow_connected_path_change";
              v91 = "not ";
              *buf = 136448258;
              if (log)
              {
                v91 = "";
              }

              v168 = 2082;
              v169 = v61 + 184;
              v170 = 2082;
              v171 = v64;
              v172 = 2082;
              v173 = v150;
              v174 = 2082;
              v175 = v70;
              v176 = 2082;
              v177 = v74;
              v178 = 2114;
              v179 = v89;
              v180 = 2082;
              v181 = v90;
              v182 = 2082;
              v183 = v91;
              _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connected path is %{public}s, %{public}sviable", buf, 0x5Cu);

              goto LABEL_101;
          }
        }

        v74 = "unknown-mode";
        goto LABEL_98;
      }

      v43 = *(v4 + 104);
      if (!v43)
      {
        goto LABEL_57;
      }

      v34 = nw_path_flow_registration_force_update(v43);
      v44 = nw_endpoint_handler_get_minimize_logging(v26);
      v45 = nw_endpoint_handler_get_logging_disabled(v26);
      v156 = v34;
      if (v44)
      {
        if (v45)
        {
LABEL_55:
          if (v34)
          {
            v54 = nw_path_is_viable(v34);
          }

          else
          {
            v54 = 0;
          }

          v75 = nw_endpoint_handler_get_minimize_logging(v26);
          v76 = nw_endpoint_handler_get_logging_disabled(v26);
          log = v54;
          if (v75)
          {
            if (v76)
            {
              goto LABEL_101;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v77 = gconnectionLogObj;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              v141 = nw_endpoint_handler_get_id_string(v26);
              v154 = nw_endpoint_handler_dry_run_string(v26);
              v142 = nw_endpoint_handler_copy_endpoint(v26);
              v143 = nw_endpoint_get_logging_description(v142);
              v144 = nw_endpoint_handler_state_string(v26);
              v145 = nw_endpoint_handler_mode_string(v26);
              v146 = nw_endpoint_handler_copy_current_path(v26);
              v147 = nw_endpoint_handler_path_status_string(v26);
              v148 = "not ";
              *buf = 136448258;
              v167 = "nw_endpoint_flow_connected_path_change";
              v169 = v141;
              v168 = 2082;
              if (log)
              {
                v148 = "";
              }

              v170 = 2082;
              v171 = v154;
              v172 = 2082;
              v173 = v143;
              v174 = 2082;
              v175 = v144;
              v176 = 2082;
              v177 = v145;
              v178 = 2114;
              v179 = v146;
              v180 = 2082;
              v181 = v147;
              v182 = 2082;
              v183 = v148;
              _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connected path is %{public}s, join flow is %{public}sviable", buf, 0x5Cu);
            }
          }

          else
          {
            if (v76)
            {
LABEL_102:

              goto LABEL_103;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v77 = gconnectionLogObj;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v78 = nw_endpoint_handler_get_id_string(v26);
              v152 = v77;
              v79 = nw_endpoint_handler_dry_run_string(v26);
              v80 = nw_endpoint_handler_copy_endpoint(v26);
              v81 = nw_endpoint_get_logging_description(v80);
              v82 = nw_endpoint_handler_state_string(v26);
              v83 = nw_endpoint_handler_mode_string(v26);
              v84 = nw_endpoint_handler_copy_current_path(v26);
              v85 = nw_endpoint_handler_path_status_string(v26);
              v86 = "not ";
              *buf = 136448258;
              v167 = "nw_endpoint_flow_connected_path_change";
              v169 = v78;
              v168 = 2082;
              if (log)
              {
                v86 = "";
              }

              v170 = 2082;
              v171 = v79;
              v172 = 2082;
              v173 = v81;
              v174 = 2082;
              v175 = v82;
              v176 = 2082;
              v177 = v83;
              v178 = 2114;
              v179 = v84;
              v180 = 2082;
              v181 = v85;
              v182 = 2082;
              v183 = v86;
              _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connected path is %{public}s, join flow is %{public}sviable", buf, 0x5Cu);

              v77 = v152;
            }
          }

LABEL_101:
          v34 = v156;
          goto LABEL_102;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v133 = gconnectionLogObj;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          logb = nw_endpoint_handler_get_id_string(v26);
          v134 = nw_endpoint_handler_dry_run_string(v26);
          v135 = nw_endpoint_handler_copy_endpoint(v26);
          v136 = nw_endpoint_get_logging_description(v135);
          v137 = nw_endpoint_handler_state_string(v26);
          v138 = nw_endpoint_handler_mode_string(v26);
          v139 = nw_endpoint_handler_copy_current_path(v26);
          v140 = *(v4 + 104);
          *buf = 136448258;
          v167 = "nw_endpoint_flow_connected_path_change";
          v168 = 2082;
          v169 = logb;
          v170 = 2082;
          v171 = v134;
          v172 = 2082;
          v173 = v136;
          v174 = 2082;
          v175 = v137;
          v176 = 2082;
          v177 = v138;
          v178 = 2114;
          v179 = v139;
          v180 = 2112;
          v181 = v140;
          v182 = 2112;
          v183 = v156;
          _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] registration %@ flow_path %@", buf, 0x5Cu);
        }

        v46 = v133;
      }

      else
      {
        if (v45)
        {
          goto LABEL_55;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v46 = gconnectionLogObj;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = nw_endpoint_handler_get_id_string(v26);
          v48 = nw_endpoint_handler_dry_run_string(v26);
          loga = v46;
          v151 = nw_endpoint_handler_copy_endpoint(v26);
          v49 = nw_endpoint_get_logging_description(v151);
          v50 = nw_endpoint_handler_state_string(v26);
          v51 = nw_endpoint_handler_mode_string(v26);
          v52 = nw_endpoint_handler_copy_current_path(v26);
          v53 = *(v4 + 104);
          *buf = 136448258;
          v167 = "nw_endpoint_flow_connected_path_change";
          v168 = 2082;
          v169 = v47;
          v170 = 2082;
          v171 = v48;
          v172 = 2082;
          v173 = v49;
          v174 = 2082;
          v175 = v50;
          v176 = 2082;
          v177 = v51;
          v178 = 2114;
          v179 = v52;
          v180 = 2112;
          v181 = v53;
          v182 = 2112;
          v183 = v34;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] registration %@ flow_path %@", buf, 0x5Cu);

          v46 = loga;
        }
      }

      v34 = v156;
      goto LABEL_55;
    }

    v8 = v5;

    v9 = v8;
    v10 = *(v5 + 284);

    if (v10)
    {
      v11 = "dry-run ";
    }

    else
    {
      v11 = "";
    }

    v12 = nw_endpoint_handler_copy_endpoint(v9);
    v13 = v12;
    v162 = v4;
    if (v12)
    {
      v14 = _nw_endpoint_get_logging_description(v12);
    }

    else
    {
      v14 = "<NULL>";
    }

    id_str = v8->id_str;

    v16 = v9;
    v17 = v16;
    v18 = v16[30];
    if (v18 > 5)
    {
      v19 = "unknown-state";
    }

    else
    {
      v19 = off_1E6A31048[v18];
    }

    v20 = v17;
    v21 = v20;
    v22 = v163->mode;
    if (v22 > 2)
    {
      switch(v22)
      {
        case 3:
          v23 = "proxy";
          goto LABEL_30;
        case 4:
          v23 = "fallback";
          goto LABEL_30;
        case 5:
          v23 = "transform";
          goto LABEL_30;
      }
    }

    else
    {
      switch(v22)
      {
        case 0:
          v23 = "path";
          goto LABEL_30;
        case 1:
          v23 = "resolver";
          goto LABEL_30;
        case 2:
          v23 = nw_endpoint_flow_mode_string(v20[33]);
LABEL_30:

          v24 = v21;
          os_unfair_lock_lock(v24 + 28);
          v25 = v24[8];
          os_unfair_lock_unlock(v24 + 28);

          *buf = 136447746;
          v167 = "nw_endpoint_flow_connected_path_change";
          v168 = 2082;
          v169 = id_str;
          v170 = 2082;
          v171 = v11;
          v172 = 2082;
          v173 = v14;
          v174 = 2082;
          v175 = v19;
          v176 = 2082;
          v177 = v23;
          v178 = 2114;
          v179 = v25;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          v4 = v162;
          goto LABEL_31;
      }
    }

    v23 = "unknown-mode";
    goto LABEL_30;
  }

LABEL_144:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v105 = gLogObj;
  v96 = v2;
  if (mode > 5)
  {
    v106 = "unknown-mode";
  }

  else
  {
    v106 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v167 = "nw_endpoint_flow_connected_path_change";
  v168 = 2082;
  v169 = v106;
  v170 = 2082;
  v171 = "flow";
  LODWORD(v149) = 32;
  v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, v149);

  type = OS_LOG_TYPE_ERROR;
  v164 = 0;
  if (!__nwlog_fault(v107, &type, &v164))
  {
LABEL_176:
    if (!v107)
    {
      goto LABEL_178;
    }

LABEL_177:
    free(v107);
    goto LABEL_178;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v108 = gLogObj;
    v109 = type;
    if (os_log_type_enabled(v108, type))
    {
      if (mode > 5)
      {
        v110 = "unknown-mode";
      }

      else
      {
        v110 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v167 = "nw_endpoint_flow_connected_path_change";
      v168 = 2082;
      v169 = v110;
      v170 = 2082;
      v171 = "flow";
      _os_log_impl(&dword_181A37000, v108, v109, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_175:

    goto LABEL_176;
  }

  if (v164 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v108 = gLogObj;
    v115 = type;
    if (os_log_type_enabled(v108, type))
    {
      if (mode > 5)
      {
        v116 = "unknown-mode";
      }

      else
      {
        v116 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v167 = "nw_endpoint_flow_connected_path_change";
      v168 = 2082;
      v169 = v116;
      v170 = 2082;
      v171 = "flow";
      _os_log_impl(&dword_181A37000, v108, v115, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_175;
  }

  v111 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v108 = gLogObj;
  v112 = type;
  v113 = os_log_type_enabled(v108, type);
  if (!v111)
  {
    if (v113)
    {
      if (mode > 5)
      {
        v117 = "unknown-mode";
      }

      else
      {
        v117 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v167 = "nw_endpoint_flow_connected_path_change";
      v168 = 2082;
      v169 = v117;
      v170 = 2082;
      v171 = "flow";
      _os_log_impl(&dword_181A37000, v108, v112, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_175;
  }

  if (v113)
  {
    if (mode > 5)
    {
      v114 = "unknown-mode";
    }

    else
    {
      v114 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v167 = "nw_endpoint_flow_connected_path_change";
    v168 = 2082;
    v169 = v114;
    v170 = 2082;
    v171 = "flow";
    v172 = 2082;
    v173 = v111;
    _os_log_impl(&dword_181A37000, v108, v112, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v111);
  if (v107)
  {
    goto LABEL_177;
  }

LABEL_178:
}

const char *nw_endpoint_handler_path_status_string(void *a1)
{
  v1 = a1;
  v2 = v1[8];
  if (v2)
  {
    v3 = v2;
    status = _nw_path_get_status(v3);

    if (status > 3)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A39D08[status];
    }
  }

  else
  {
    v5 = "null";
  }

  return v5;
}

void nw_association_mark_flow_connected(void *a1, void *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v75 = __nwlog_obj();
    *buf = 136446210;
    v89 = "nw_association_mark_flow_connected";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null association", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v86 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v29, &type, &v86))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v76 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v89 = "nw_association_mark_flow_connected";
          _os_log_impl(&dword_181A37000, v30, v76, "%{public}s called with null association", buf, 0xCu);
        }

        goto LABEL_121;
      }

      if (v86 != OS_LOG_TYPE_INFO)
      {
        v30 = __nwlog_obj();
        v83 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v89 = "nw_association_mark_flow_connected";
          _os_log_impl(&dword_181A37000, v30, v83, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_121;
      }

      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v79 = type;
      v80 = os_log_type_enabled(v30, type);
      if (!backtrace_string)
      {
        if (v80)
        {
          *buf = 136446210;
          v89 = "nw_association_mark_flow_connected";
          _os_log_impl(&dword_181A37000, v30, v79, "%{public}s called with null association, no backtrace", buf, 0xCu);
        }

        goto LABEL_121;
      }

      if (v80)
      {
        *buf = 136446466;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = backtrace_string;
        _os_log_impl(&dword_181A37000, v30, v79, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_66;
    }

    goto LABEL_122;
  }

  if (!v4)
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    v89 = "nw_association_mark_flow_connected";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v86 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v29, &type, &v86))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v78 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v89 = "nw_association_mark_flow_connected";
          _os_log_impl(&dword_181A37000, v30, v78, "%{public}s called with null handle", buf, 0xCu);
        }

        goto LABEL_121;
      }

      if (v86 != OS_LOG_TYPE_INFO)
      {
        v30 = __nwlog_obj();
        v84 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v89 = "nw_association_mark_flow_connected";
          _os_log_impl(&dword_181A37000, v30, v84, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_121;
      }

      v36 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v81 = type;
      v82 = os_log_type_enabled(v30, type);
      if (!v36)
      {
        if (v82)
        {
          *buf = 136446210;
          v89 = "nw_association_mark_flow_connected";
          _os_log_impl(&dword_181A37000, v30, v81, "%{public}s called with null handle, no backtrace", buf, 0xCu);
        }

        goto LABEL_121;
      }

      if (v82)
      {
        *buf = 136446466;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v36;
        _os_log_impl(&dword_181A37000, v30, v81, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_117;
    }

LABEL_122:
    if (!v29)
    {
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  v6 = nw_path_parameters_copy_context(*(v3 + 2));
  nw_context_assert_queue(v6);

  v7 = *(v3 + 5);
  if (!v7)
  {
    if (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
    {
      goto LABEL_125;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v15 = gconnectionLogObj;
    v16 = *(v3 + 1);
    v17 = v16;
    if (v16)
    {
      logging_description = _nw_endpoint_get_logging_description(v16);
    }

    else
    {
      logging_description = "<NULL>";
    }

    *buf = 136446466;
    v89 = "nw_association_mark_flow_connected";
    v90 = 2082;
    v91 = logging_description;
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s <nw_association %{public}s> does not have a handle hash table", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v86 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, &type, &v86))
    {
      goto LABEL_122;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        v32 = *(v3 + 1);
        v33 = v32;
        if (v32)
        {
          v34 = _nw_endpoint_get_logging_description(v32);
        }

        else
        {
          v34 = "<NULL>";
        }

        *buf = 136446466;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v34;
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s <nw_association %{public}s> does not have a handle hash table", buf, 0x16u);
      }

      goto LABEL_121;
    }

    if (v86 != OS_LOG_TYPE_INFO)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      v41 = type;
      if (os_log_type_enabled(v30, type))
      {
        v42 = *(v3 + 1);
        v43 = v42;
        if (v42)
        {
          v44 = _nw_endpoint_get_logging_description(v42);
        }

        else
        {
          v44 = "<NULL>";
        }

        *buf = 136446466;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v44;
        _os_log_impl(&dword_181A37000, v30, v41, "%{public}s <nw_association %{public}s> does not have a handle hash table, backtrace limit exceeded", buf, 0x16u);
      }

      goto LABEL_121;
    }

    v35 = __nw_create_backtrace_string();
    if (!v35)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      v57 = type;
      if (os_log_type_enabled(v30, type))
      {
        v58 = nw_endpoint_get_logging_description(*(v3 + 1));
        *buf = 136446466;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v58;
        _os_log_impl(&dword_181A37000, v30, v57, "%{public}s <nw_association %{public}s> does not have a handle hash table, no backtrace", buf, 0x16u);
      }

      goto LABEL_121;
    }

    v36 = v35;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v30 = gconnectionLogObj;
    v37 = type;
    if (os_log_type_enabled(v30, type))
    {
      v38 = *(v3 + 1);
      v39 = v38;
      if (v38)
      {
        v40 = _nw_endpoint_get_logging_description(v38);
      }

      else
      {
        v40 = "<NULL>";
      }

      *buf = 136446722;
      v89 = "nw_association_mark_flow_connected";
      v90 = 2082;
      v91 = v40;
      v92 = 2082;
      v93 = v36;
      _os_log_impl(&dword_181A37000, v30, v37, "%{public}s <nw_association %{public}s> does not have a handle hash table, dumping backtrace:%{public}s", buf, 0x20u);
    }

LABEL_117:

    free(v36);
    if (!v29)
    {
      goto LABEL_125;
    }

LABEL_123:
    v72 = v29;
LABEL_124:
    free(v72);
    goto LABEL_125;
  }

  node = nw_hash_table_get_node(v7, v5, 0);
  if (!node)
  {
    if (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
    {
      goto LABEL_125;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v19 = gconnectionLogObj;
    v20 = *(v3 + 1);
    v21 = v20;
    if (v20)
    {
      v22 = _nw_endpoint_get_logging_description(v20);
    }

    else
    {
      v22 = "<NULL>";
    }

    *buf = 136446722;
    v89 = "nw_association_mark_flow_connected";
    v90 = 2082;
    v91 = v22;
    v92 = 2048;
    v93 = v5;
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s <nw_association %{public}s> does not have handle %p registered", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v86 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, &type, &v86))
    {
      goto LABEL_122;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      v45 = type;
      if (os_log_type_enabled(v30, type))
      {
        v46 = *(v3 + 1);
        v47 = v46;
        if (v46)
        {
          v48 = _nw_endpoint_get_logging_description(v46);
        }

        else
        {
          v48 = "<NULL>";
        }

        *buf = 136446722;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v48;
        v92 = 2048;
        v93 = v5;
        _os_log_impl(&dword_181A37000, v30, v45, "%{public}s <nw_association %{public}s> does not have handle %p registered", buf, 0x20u);
      }

LABEL_121:

      goto LABEL_122;
    }

    if (v86 != OS_LOG_TYPE_INFO)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      v53 = type;
      if (os_log_type_enabled(v30, type))
      {
        v54 = *(v3 + 1);
        v55 = v54;
        if (v54)
        {
          v56 = _nw_endpoint_get_logging_description(v54);
        }

        else
        {
          v56 = "<NULL>";
        }

        *buf = 136446722;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v56;
        v92 = 2048;
        v93 = v5;
        _os_log_impl(&dword_181A37000, v30, v53, "%{public}s <nw_association %{public}s> does not have handle %p registered, backtrace limit exceeded", buf, 0x20u);
      }

      goto LABEL_121;
    }

    v49 = __nw_create_backtrace_string();
    if (!v49)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      v68 = type;
      if (os_log_type_enabled(v30, type))
      {
        v69 = nw_endpoint_get_logging_description(*(v3 + 1));
        *buf = 136446722;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v69;
        v92 = 2048;
        v93 = v5;
        _os_log_impl(&dword_181A37000, v30, v68, "%{public}s <nw_association %{public}s> does not have handle %p registered, no backtrace", buf, 0x20u);
      }

      goto LABEL_121;
    }

    backtrace_string = v49;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v30 = gconnectionLogObj;
    v51 = type;
    if (os_log_type_enabled(v30, type))
    {
      v52 = nw_endpoint_get_logging_description(*(v3 + 1));
      *buf = 136446978;
      v89 = "nw_association_mark_flow_connected";
      v90 = 2082;
      v91 = v52;
      v92 = 2048;
      v93 = v5;
      v94 = 2082;
      v95 = backtrace_string;
      _os_log_impl(&dword_181A37000, v30, v51, "%{public}s <nw_association %{public}s> does not have handle %p registered, dumping backtrace:%{public}s", buf, 0x2Au);
    }

LABEL_66:

    free(backtrace_string);
    goto LABEL_122;
  }

  v9 = node;
  internal = *(v3 + 6);
  if (!internal)
  {
    internal = nw_hash_table_create_internal(7u, 16, nw_association_get_key, nw_association_key_hash, nw_association_matches_key, nw_association_release, 0);
    if (internal)
    {
      *(internal + 56) &= ~2u;
    }

    *(v3 + 6) = internal;
  }

  if (nw_hash_table_get_node(internal, v5, 0))
  {
    if ((nw_path_parameters_get_logging_disabled(*(v3 + 2)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(v3 + 1);
        v13 = v12;
        if (v12)
        {
          v14 = _nw_endpoint_get_logging_description(v12);
        }

        else
        {
          v14 = "<NULL>";
        }

        *buf = 136446722;
        v89 = "nw_association_mark_flow_connected";
        v90 = 2082;
        v91 = v14;
        v92 = 2048;
        v93 = v5;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s <nw_association %{public}s> already has connected flow %p registered", buf, 0x20u);
      }
    }

    goto LABEL_125;
  }

  type = OS_LOG_TYPE_DEFAULT;
  v23 = *(v3 + 6);
  v24 = v5;
  nw_hash_table_add_object(v23, v24, &type);
  if (type & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
  {
    goto LABEL_125;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v25 = gconnectionLogObj;
  v26 = *(v3 + 1);
  v27 = v26;
  if (v26)
  {
    v28 = _nw_endpoint_get_logging_description(v26);
  }

  else
  {
    v28 = "<NULL>";
  }

  *buf = 136446978;
  v89 = "nw_association_mark_flow_connected";
  v90 = 2082;
  v91 = v28;
  v92 = 2048;
  v93 = v24;
  v94 = 2048;
  v95 = v9;
  v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s <nw_association %{public}s> failed to add new connected flow for %p (node %p)", buf, 42);

  v86 = OS_LOG_TYPE_ERROR;
  v85 = 0;
  if (!__nwlog_fault(v59, &v86, &v85))
  {
    goto LABEL_131;
  }

  if (v86 == OS_LOG_TYPE_FAULT)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v60 = gconnectionLogObj;
    v61 = v86;
    if (os_log_type_enabled(v60, v86))
    {
      v62 = nw_endpoint_get_logging_description(*(v3 + 1));
      *buf = 136446978;
      v89 = "nw_association_mark_flow_connected";
      v90 = 2082;
      v91 = v62;
      v92 = 2048;
      v93 = v24;
      v94 = 2048;
      v95 = v9;
      _os_log_impl(&dword_181A37000, v60, v61, "%{public}s <nw_association %{public}s> failed to add new connected flow for %p (node %p)", buf, 0x2Au);
    }

LABEL_130:

LABEL_131:
    if (!v59)
    {
      goto LABEL_125;
    }

    goto LABEL_132;
  }

  if (v85 != 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v60 = gconnectionLogObj;
    v70 = v86;
    if (os_log_type_enabled(v60, v86))
    {
      v71 = nw_endpoint_get_logging_description(*(v3 + 1));
      *buf = 136446978;
      v89 = "nw_association_mark_flow_connected";
      v90 = 2082;
      v91 = v71;
      v92 = 2048;
      v93 = v24;
      v94 = 2048;
      v95 = v9;
      _os_log_impl(&dword_181A37000, v60, v70, "%{public}s <nw_association %{public}s> failed to add new connected flow for %p (node %p), backtrace limit exceeded", buf, 0x2Au);
    }

    goto LABEL_130;
  }

  v63 = __nw_create_backtrace_string();
  if (!v63)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v60 = gconnectionLogObj;
    v73 = v86;
    if (os_log_type_enabled(v60, v86))
    {
      v74 = nw_endpoint_get_logging_description(*(v3 + 1));
      *buf = 136446978;
      v89 = "nw_association_mark_flow_connected";
      v90 = 2082;
      v91 = v74;
      v92 = 2048;
      v93 = v24;
      v94 = 2048;
      v95 = v9;
      _os_log_impl(&dword_181A37000, v60, v73, "%{public}s <nw_association %{public}s> failed to add new connected flow for %p (node %p), no backtrace", buf, 0x2Au);
    }

    goto LABEL_130;
  }

  v64 = v63;
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v65 = gconnectionLogObj;
  v66 = v86;
  if (os_log_type_enabled(v65, v86))
  {
    v67 = nw_endpoint_get_logging_description(*(v3 + 1));
    *buf = 136447234;
    v89 = "nw_association_mark_flow_connected";
    v90 = 2082;
    v91 = v67;
    v92 = 2048;
    v93 = v24;
    v94 = 2048;
    v95 = v9;
    v96 = 2082;
    v97 = v64;
    _os_log_impl(&dword_181A37000, v65, v66, "%{public}s <nw_association %{public}s> failed to add new connected flow for %p (node %p), dumping backtrace:%{public}s", buf, 0x34u);
  }

  free(v64);
  if (v59)
  {
LABEL_132:
    v72 = v59;
    goto LABEL_124;
  }

LABEL_125:
}

BOOL ___ZL36nw_endpoint_transform_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_103(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  if (v8 > a2)
  {
    if (*(a1 + 40) == v5)
    {
      *(v7 + 88) = a2;
    }

    else
    {
      v9 = nw_endpoint_handler_copy_parameters(v5);
      if (nw_parameters_get_upper_transport_protocol(v9) == 253)
      {
        v10 = nw_endpoint_handler_copy_association(*(a1 + 48), 0);
        nw_quic_report_race_result_on_queue(v10, 0, 1);
      }

      nw_endpoint_handler_cancel(v6, 0, 0);
    }
  }

  return v8 > a2;
}

uint64_t nw_endpoint_handler_is_viable(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_is_viable";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_is_viable";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v31 = "nw_endpoint_handler_is_viable";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_41;
      }

      if (v26)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_is_viable";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_is_viable";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (mode > 5)
    {
      v9 = "unknown-mode";
    }

    else
    {
      v9 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v31 = "nw_endpoint_handler_is_viable";
    v32 = 2082;
    v33 = v9;
    v34 = 2082;
    v35 = "flow";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

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
        if (os_log_type_enabled(v11, type))
        {
          if (mode > 5)
          {
            v13 = "unknown-mode";
          }

          else
          {
            v13 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v31 = "nw_endpoint_handler_is_viable";
          v32 = 2082;
          v33 = v13;
          v34 = 2082;
          v35 = "flow";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v28 == 1)
      {
        v14 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v11, type);
        if (v14)
        {
          if (v16)
          {
            if (mode > 5)
            {
              v17 = "unknown-mode";
            }

            else
            {
              v17 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v31 = "nw_endpoint_handler_is_viable";
            v32 = 2082;
            v33 = v17;
            v34 = 2082;
            v35 = "flow";
            v36 = 2082;
            v37 = v14;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v14);
          if (!v10)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v16)
        {
          if (mode > 5)
          {
            v20 = "unknown-mode";
          }

          else
          {
            v20 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v31 = "nw_endpoint_handler_is_viable";
          v32 = 2082;
          v33 = v20;
          v34 = 2082;
          v35 = "flow";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v11, type))
        {
          if (mode > 5)
          {
            v19 = "unknown-mode";
          }

          else
          {
            v19 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v31 = "nw_endpoint_handler_is_viable";
          v32 = 2082;
          v33 = v19;
          v34 = 2082;
          v35 = "flow";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_40;
    }

LABEL_41:
    if (!v10)
    {
LABEL_43:
      is_viable = 0;
      goto LABEL_44;
    }

LABEL_42:
    free(v10);
    goto LABEL_43;
  }

  v5 = nw_endpoint_handler_copy_flow(v3);
  os_unfair_lock_lock(v5 + 220);
  if (*(v5 + 32) & 2 | *(v5 + 33) & 1)
  {
    is_viable = (*(v5 + 33) >> 1) & 1;
  }

  else
  {
    v6 = *(v5 + 117);
    if (v6)
    {
      is_viable = nw_endpoint_handler_is_viable(v6);
    }

    else
    {
      is_viable = 0;
    }
  }

  os_unfair_lock_unlock(v5 + 220);

LABEL_44:
  return is_viable;
}

BOOL nw_connection_should_run_probe_locked(NWConcrete_nw_connection *a1)
{
  *&v38[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_connection_should_run_probe_locked";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v26, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v36 = "nw_connection_should_run_probe_locked";
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v36 = "nw_connection_should_run_probe_locked";
            v37 = 2082;
            *v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_78;
        }

        if (v31)
        {
          *buf = 136446210;
          v36 = "nw_connection_should_run_probe_locked";
          _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v36 = "nw_connection_should_run_probe_locked";
          _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_51;
  }

  if (nw_parameters_get_is_probe(v1->parameters))
  {
    parameters = v2->parameters;
    if (!parameters || _nw_parameters_get_logging_disabled(parameters))
    {
      goto LABEL_51;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      top_id = v2->top_id;
      *buf = 136446466;
      v36 = "nw_connection_should_run_probe_locked";
      v37 = 1024;
      *v38 = top_id;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not probing a probe", buf, 0x12u);
    }

LABEL_50:

LABEL_51:
    v19 = 0;
    goto LABEL_52;
  }

  if (nw_context_is_inline(v2->context))
  {
    v6 = v2->parameters;
    if (!v6 || _nw_parameters_get_logging_disabled(v6))
    {
      goto LABEL_51;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = v2->top_id;
      *buf = 136446466;
      v36 = "nw_connection_should_run_probe_locked";
      v37 = 1024;
      *v38 = v7;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not probing when context is inline", buf, 0x12u);
    }

    goto LABEL_50;
  }

  v8 = v2->parameters;
  if (v2->state == 5)
  {
    if (!v8 || _nw_parameters_get_logging_disabled(v8))
    {
      goto LABEL_51;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = v2->top_id;
      *buf = 136446466;
      v36 = "nw_connection_should_run_probe_locked";
      v37 = 1024;
      *v38 = v9;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not probing a cancelled connection", buf, 0x12u);
    }

    goto LABEL_50;
  }

  if (nw_parameters_get_data_mode(v8) != 2 && nw_parameters_get_data_mode(v2->parameters))
  {
    v10 = v2->parameters;
    if (!v10 || _nw_parameters_get_logging_disabled(v10))
    {
      goto LABEL_51;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = v2->top_id;
      data_mode = nw_parameters_get_data_mode(v2->parameters);
      *buf = 136446722;
      v36 = "nw_connection_should_run_probe_locked";
      v37 = 1024;
      *v38 = v11;
      v38[2] = 1024;
      *&v38[3] = data_mode;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not probing a connection that was specified yet not streaming: %d", buf, 0x18u);
    }

    goto LABEL_50;
  }

  server_mode = nw_parameters_get_server_mode(v2->parameters);
  v14 = v2->parameters;
  if (server_mode)
  {
    if (!v14 || _nw_parameters_get_logging_disabled(v14))
    {
      goto LABEL_51;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v15 = v2->top_id;
      *buf = 136446466;
      v36 = "nw_connection_should_run_probe_locked";
      v37 = 1024;
      *v38 = v15;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not probing a connection that was not a client", buf, 0x12u);
    }

    goto LABEL_50;
  }

  https_proxy_over_tls = nw_parameters_get_https_proxy_over_tls(v14);
  v17 = v2->parameters;
  if (https_proxy_over_tls)
  {
    if (!v17 || _nw_parameters_get_logging_disabled(v17))
    {
      goto LABEL_51;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v18 = v2->top_id;
      *buf = 136446466;
      v36 = "nw_connection_should_run_probe_locked";
      v37 = 1024;
      *v38 = v18;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not probing a connection for an HTTPS proxy over TLS", buf, 0x12u);
    }

    goto LABEL_50;
  }

  v21 = v17;
  v19 = v21 != 0;
  if (!v21)
  {
    v22 = v2->parameters;
    if (v22)
    {
      if (!_nw_parameters_get_logging_disabled(v22))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v23 = gconnectionLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = v2->top_id;
          *buf = 136446466;
          v36 = "nw_connection_should_run_probe_locked";
          v37 = 1024;
          *v38 = v24;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not probing a connection for which we cannot get the parameters", buf, 0x12u);
        }
      }
    }
  }

LABEL_52:
  return v19;
}

BOOL nw_parameters_get_should_skip_probe_sampling(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_should_skip_probe_sampling(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_should_skip_probe_sampling";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

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
        v12 = "nw_parameters_get_should_skip_probe_sampling";
        v6 = "%{public}s called with null parameters";
LABEL_18:
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
            v12 = "nw_parameters_get_should_skip_probe_sampling";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_should_skip_probe_sampling";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_should_skip_probe_sampling";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL _nw_parameters_get_should_skip_probe_sampling(void *a1)
{
  v1 = a1;
  v2 = sub_1821F7B78();

  return v2;
}

uint64_t sub_181CDADD8(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1[3];
  v41 = a1[2];
  v42 = v4;
  v43 = *(a1 + 8);
  v5 = a1[1];
  v39 = *a1;
  v40 = v5;
  if (!(a3 >> 62))
  {
    v11 = *(&v39 + 1);
    v12 = v40;
    v13 = BYTE8(v40);
    swift_beginAccess();
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    v17 = *(a2 + 40);
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = v17;
    v31 = v39;
    v32 = *(&v39 + 1);
    v33 = v40;
    v34 = BYTE8(v40);
    v10 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v35, &v31);
    v18 = v32;
    v19 = v33;
    v20 = v34;
    sub_181F49A24(v15, v16, v17);
    sub_181F49A24(v11, v12, v13);
    v21 = v18;
    v22 = v19;
    v23 = v20;
LABEL_8:
    sub_181F48350(v21, v22, v23);
    sub_181F48350(v36, v37, v38);
    return v10 & 1;
  }

  if (a3 >> 62 != 1)
  {
    v35 = v39;
    v36 = *(&v39 + 1);
    v37 = v40;
    v38 = BYTE8(v40);
    sub_181F49A24(*(&v39 + 1), v40, SBYTE8(v40));
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v24 = qword_1ED411D48;
    v25 = unk_1ED411D50;
    v26 = byte_1ED411D58;
    v31 = word_1ED411D40;
    v32 = qword_1ED411D48;
    v33 = unk_1ED411D50;
    v34 = byte_1ED411D58;
    v10 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v35, &v31);
    v27 = v32;
    v28 = v33;
    v29 = v34;
    sub_181F49A24(v24, v25, v26);
    v21 = v27;
    v22 = v28;
    v23 = v29;
    goto LABEL_8;
  }

  v6 = a3 & 0x3FFFFFFFFFFFFFFFLL;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  v9 = sub_181C15310();
  v10 = v8(&v39, &type metadata for CProtocol, v9, ObjectType, v6);
  return v10 & 1;
}

BOOL nw_parameters_has_initial_data_payload(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_initial_data_payload(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_initial_data_payload";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

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
        v12 = "nw_parameters_has_initial_data_payload";
        v6 = "%{public}s called with null parameters";
LABEL_18:
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
            v12 = "nw_parameters_has_initial_data_payload";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_initial_data_payload";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_initial_data_payload";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_endpoint_handler_access_proxy_handler(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_handler_access_proxy_handler";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_access_proxy_handler";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
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
          v26 = "nw_endpoint_handler_access_proxy_handler";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_43:
        if (!v10)
        {
          goto LABEL_9;
        }

        goto LABEL_44;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_access_proxy_handler";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_access_proxy_handler";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (!v4)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_handler_access_proxy_handler";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null accessor", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_access_proxy_handler";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null accessor", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v11, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v26 = "nw_endpoint_handler_access_proxy_handler";
          v27 = 2082;
          v28 = v18;
          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null accessor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        if (!v10)
        {
          goto LABEL_9;
        }

LABEL_44:
        free(v10);
        goto LABEL_9;
      }

      if (v20)
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_access_proxy_handler";
        _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null accessor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_access_proxy_handler";
        _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null accessor, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  v6 = v3;
  while (1)
  {
    v6 = v6;
    v7 = v6[29];

    if (v7 == 3)
    {
      break;
    }

    v8 = v6;
    v6 = v8[9];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  (v5)[2](v5, v6);
LABEL_8:

LABEL_9:
}

NWConcrete_nw_protocol_establishment_report *nw_protocol_establishment_report_create(void *a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (v6)
  {
    v7 = objc_alloc_init(NWConcrete_nw_protocol_establishment_report);
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->protocol, a1);
      v8->handshake_milliseconds = a2;
      v8->handshake_rtt_milliseconds = a3;
      v9 = v8;
LABEL_4:

      goto LABEL_5;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_establishment_report_create";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null report", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v16, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v30 = "nw_protocol_establishment_report_create";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v30 = "nw_protocol_establishment_report_create";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v23, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_41;
        }

        if (v24)
        {
          *buf = 136446210;
          v30 = "nw_protocol_establishment_report_create";
          _os_log_impl(&dword_181A37000, v17, v23, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v17 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v30 = "nw_protocol_establishment_report_create";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_41:
    if (v16)
    {
      free(v16);
    }

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_protocol_establishment_report_create";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v12, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_establishment_report_create";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v30 = "nw_protocol_establishment_report_create";
          v31 = 2082;
          v32 = v19;
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_35;
      }

      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_establishment_report_create";
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_establishment_report_create";
        _os_log_impl(&dword_181A37000, v13, v25, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v12)
  {
    free(v12);
  }

  v8 = 0;
LABEL_5:

  return v8;
}

void sub_181CDBF40(char *a1, uint64_t a2)
{
  v3 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v4 = a1;
  LOBYTE(v5) = atomic_load_explicit(v3(), memory_order_acquire);
  if (v5)
  {
    should_abort = __nwlog_should_abort("cannot prepend during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v8 = *(*&v4[v7] + 24);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *&v4[v7];
  if (v11[2] < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = v11[4];
  if (v12)
  {
    while (1)
    {
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (!v13)
      {
        break;
      }

      __break(1u);
LABEL_11:
      isUniquelyReferenced_nonNull_native = sub_181ACC600(isUniquelyReferenced_nonNull_native, v9, 0);
      v11 = *&v4[v7];
      v12 = v11[4];
      if (!v12)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v15 = v11[2];
    v13 = __OFSUB__(v15, 1);
    v14 = v15 - 1;
    if (v13)
    {
LABEL_18:
      __break(1u);
      return;
    }
  }

  v11[v14 + 5] = a2;
  v11[4] = v14;
  v16 = v11[3];
  v13 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11[3] = v17;
  swift_endAccess();
  swift_unknownObjectRetain();
}

uint64_t _nw_path_get_fallback_generation(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 28);

  return v3;
}

nw_multipath_service_t nw_parameters_get_multipath_service(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_multipath_service();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_multipath_service";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

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
        v12 = "nw_parameters_get_multipath_service";
        v6 = "%{public}s called with null parameters";
LABEL_18:
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
            v12 = "nw_parameters_get_multipath_service";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_multipath_service";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_multipath_service";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_connection_update_better_path_locked_on_nw_queue(NWConcrete_nw_connection *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1->context);
    v3 = v2->parent_endpoint_handler;
    if ((*(v2 + 109) & 0x40) != 0)
    {
      v4 = nw_endpoint_handler_copy_connected_flow_handler(v2->parent_endpoint_handler);
    }

    else
    {
      v4 = 0;
    }

    v5 = v2->ready_dry_run_endpoint_handler;
    if (v5 || (v6 = v4, v3, v5 = v6, (v3 = v5) != 0))
    {
      v7 = v5;
      os_unfair_lock_lock(v7 + 28);
      v8 = *(v7 + 8);
      os_unfair_lock_unlock(v7 + 28);

      v53 = v8;
      if (!v4)
      {
        goto LABEL_21;
      }

      if (nw_endpoint_handler_get_alternate_path_state(v4, v3, v7, v8))
      {
        if (v2->alternate_path_state != 1)
        {
          v2->alternate_path_state = 1;
          parameters = v2->parameters;
          if (parameters && !_nw_parameters_get_logging_disabled(parameters))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v10 = gconnectionLogObj;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              top_id = v2->top_id;
              *buf = 136446466;
              *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
              *&buf[12] = 1024;
              *&buf[14] = top_id;
              _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] Better alternate path available", buf, 0x12u);
            }
          }

          stats_report = v2->stats_report;
          if (stats_report)
          {
            ++stats_report->u.legacy.statistics_report.better_route_event_count;
          }

          v13 = 1;
          v14 = 1;
          goto LABEL_53;
        }

LABEL_75:

        goto LABEL_76;
      }

      if ((nw_connection_used_fallback_locked(v2) & 1) == 0)
      {
        v15 = nw_endpoint_handler_copy_current_path(v2->parent_endpoint_handler);
        v16 = v15;
        if (v15 && (v17 = v15, fallback_interface_index = _nw_path_get_fallback_interface_index(v17), v17, fallback_interface_index) && (v19 = v17, fallback_generation = _nw_path_get_fallback_generation(v19), v19, fallback_generation != v2->connected_fallback_generation))
        {
          if (nw_path_fallback_is_weak(v19))
          {
            v14 = 2;
          }

          else
          {
            v14 = 3;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
LABEL_21:
        v14 = 0;
      }
    }

    else
    {
      v53 = 0;
      v7 = 0;
      v14 = 0;
    }

    alternate_path_state = v2->alternate_path_state;
    if (alternate_path_state == v14)
    {
      goto LABEL_75;
    }

    v2->alternate_path_state = v14;
    if (v14 == 3)
    {
      v28 = v2->parameters;
      if (!v28 || _nw_parameters_get_logging_disabled(v28))
      {
        goto LABEL_51;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v29 = v2->top_id;
      *buf = 136446466;
      *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      v25 = "%{public}s [C%u] Alternate path recommended";
    }

    else if (v14 == 2)
    {
      v26 = v2->parameters;
      if (!v26 || _nw_parameters_get_logging_disabled(v26))
      {
        goto LABEL_51;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v27 = v2->top_id;
      *buf = 136446466;
      *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
      *&buf[12] = 1024;
      *&buf[14] = v27;
      v25 = "%{public}s [C%u] Alternate path potentially available";
    }

    else
    {
      v22 = v2->parameters;
      if (!v22 || _nw_parameters_get_logging_disabled(v22))
      {
        goto LABEL_51;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_50:

LABEL_51:
        if (alternate_path_state != 1)
        {
          goto LABEL_71;
        }

        v13 = 0;
LABEL_53:
        v30 = v2;
        nw_context_assert_queue(v2->context);
        if (v30->state != 5)
        {
          better_path_available_handler = v30->better_path_available_handler;
          if (better_path_available_handler)
          {
            v32 = _Block_copy(better_path_available_handler);
            v33 = v30->parameters;
            if (v33 && !_nw_parameters_get_logging_disabled(v33))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v34 = gconnectionLogObj;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = v30->top_id;
                *buf = 136446722;
                *&buf[4] = "nw_connection_send_better_path_changed_on_nw_queue";
                *&buf[12] = 1024;
                *&buf[14] = v35;
                *&buf[18] = 1024;
                *&buf[20] = v13;
                _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] better_path_available_handler(%{BOOL}d)", buf, 0x18u);
              }
            }

            client_qos_class = v30->client_qos_class;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL50nw_connection_send_better_path_changed_on_nw_queueP24NWConcrete_nw_connectionb_block_invoke;
            v57 = &unk_1E6A3B8C0;
            v37 = v32;
            v58 = v37;
            LOBYTE(v59) = v13;
            nw_connection_async_client(v30, client_qos_class, buf);
          }

          else
          {
            v38 = v30->parameters;
            if (!v38 || _nw_parameters_get_logging_disabled(v38))
            {
              goto LABEL_70;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v37 = gconnectionLogObj;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v30->top_id;
              *buf = 136446722;
              *&buf[4] = "nw_connection_send_better_path_changed_on_nw_queue";
              *&buf[12] = 1024;
              *&buf[14] = v39;
              *&buf[18] = 1024;
              *&buf[20] = v13;
              _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] No better_path_available_handler. better_path_available = %{BOOL}d", buf, 0x18u);
            }
          }
        }

LABEL_70:

LABEL_71:
        v40 = v2;
        nw_context_assert_queue(v2->context);
        alternate_path_state_handler = v40->alternate_path_state_handler;
        if (alternate_path_state_handler && v40->state != 5)
        {
          v42 = _Block_copy(alternate_path_state_handler);
          v43 = v40->client_qos_class;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL59nw_connection_send_alternate_path_state_changed_on_nw_queueP24NWConcrete_nw_connection36nw_connection_alternate_path_state_t_block_invoke;
          v57 = &unk_1E6A3CEC0;
          v58 = v42;
          v59 = v14;
          v44 = v42;
          nw_connection_async_client(v40, v43, buf);
        }

        goto LABEL_75;
      }

      v24 = v2->top_id;
      *buf = 136446466;
      *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v25 = "%{public}s [C%u] Alternate path not available";
    }

    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0x12u);
    goto LABEL_50;
  }

  v45 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
  v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v54 = 0;
  if (__nwlog_fault(v46, &type, &v54))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v54 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v50 = type;
      v51 = os_log_type_enabled(v47, type);
      if (backtrace_string)
      {
        if (v51)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v47, v50, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_96;
      }

      if (v51)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v47, v50, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v47 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_update_better_path_locked_on_nw_queue";
        _os_log_impl(&dword_181A37000, v47, v52, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_96:
  if (v46)
  {
    free(v46);
  }

LABEL_76:
}

uint64_t nw_endpoint_handler_get_alternate_path_state(void *a1, void *a2, void *a3, void *a4)
{
  v175 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v152 = v8;
  if (!v8)
  {
    v152 = v7;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = v7;
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  v151 = v9;
  v153 = v10;
  if (v7[29] != 2 || (v11 = nw_endpoint_handler_copy_connected_path(v7)) == 0)
  {
    v154 = *(v7 + 8);
    v150 = 0;
    v17 = 0;
    v18 = 1;
    is_viable = 1;
    if (!v10)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  v12 = v11;
  is_viable = nw_endpoint_handler_is_viable(v7);
  v14 = v7;
  v15 = v7[29];

  if (v15 == 2)
  {
    v16 = nw_endpoint_handler_copy_flow(v14);
    v17 = v16[34] < 0;

    goto LABEL_46;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  if (v15 > 5)
  {
    v20 = "unknown-mode";
  }

  else
  {
    v20 = off_1E6A31018[v15];
  }

  *buf = 136446722;
  v158 = "nw_endpoint_handler_reported_do_not_reuse";
  v159 = 2082;
  v160 = v20;
  v161 = 2082;
  v162 = "flow";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v155 = 0;
  if (__nwlog_fault(v21, &type, &v155))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        if (v15 > 5)
        {
          v24 = "unknown-mode";
        }

        else
        {
          v24 = off_1E6A31018[v15];
        }

        *buf = 136446722;
        v158 = "nw_endpoint_handler_reported_do_not_reuse";
        v159 = 2082;
        v160 = v24;
        v161 = 2082;
        v162 = "flow";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

LABEL_29:

      goto LABEL_43;
    }

    if (v155 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v22, type))
      {
        if (v15 > 5)
        {
          v31 = "unknown-mode";
        }

        else
        {
          v31 = off_1E6A31018[v15];
        }

        *buf = 136446722;
        v158 = "nw_endpoint_handler_reported_do_not_reuse";
        v159 = 2082;
        v160 = v31;
        v161 = 2082;
        v162 = "flow";
        _os_log_impl(&dword_181A37000, v22, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
      }

      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v27 = type;
    v28 = os_log_type_enabled(v26, type);
    if (backtrace_string)
    {
      if (v28)
      {
        if (v15 > 5)
        {
          v29 = "unknown-mode";
        }

        else
        {
          v29 = off_1E6A31018[v15];
        }

        *buf = 136446978;
        v158 = "nw_endpoint_handler_reported_do_not_reuse";
        v159 = 2082;
        v160 = v29;
        v161 = 2082;
        v162 = "flow";
        v163 = 2082;
        v164 = backtrace_string;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
      if (!v21)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (v28)
    {
      if (v15 > 5)
      {
        v32 = "unknown-mode";
      }

      else
      {
        v32 = off_1E6A31018[v15];
      }

      *buf = 136446722;
      v158 = "nw_endpoint_handler_reported_do_not_reuse";
      v159 = 2082;
      v160 = v32;
      v161 = 2082;
      v162 = "flow";
      _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }
  }

LABEL_43:
  if (v21)
  {
LABEL_44:
    free(v21);
  }

LABEL_45:
  v17 = 0;
LABEL_46:

  v18 = 0;
  v154 = v12;
  v150 = v12;
  v10 = v153;
  if (!v153)
  {
    goto LABEL_62;
  }

LABEL_47:
  if (v154)
  {
    v33 = v10;
    status = _nw_path_get_status(v33);

    if (status == 1)
    {
      v35 = v154;
      flow_divert_unit = _nw_path_get_flow_divert_unit(v35);

      if (!flow_divert_unit)
      {
        if (!is_viable || (v145 = v35, v37 = _nw_path_get_status(v145), v145, v37 == 2))
        {
          if ((v7[71] & 0x20) == 0)
          {
            if ((v7[71] & 0x40) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v38 = gconnectionLogObj;
              v39 = 1;
              if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                goto LABEL_95;
              }

              if (v7[71])
              {
                v40 = "dry-run ";
              }

              else
              {
                v40 = "";
              }

              v41 = nw_endpoint_handler_copy_endpoint(v7);
              v42 = v41;
              if (v41)
              {
                logging_description = _nw_endpoint_get_logging_description(v41);
              }

              else
              {
                logging_description = "<NULL>";
              }

              log = v38;
              v70 = v7[30];
              if (v70 > 5)
              {
                v71 = "unknown-state";
              }

              else
              {
                v71 = off_1E6A31048[v70];
              }

              v72 = v7;
              v73 = v72;
              v74 = v7[29];
              if (v74 > 2)
              {
                switch(v74)
                {
                  case 3:
                    v75 = "proxy";
                    goto LABEL_132;
                  case 4:
                    v75 = "fallback";
                    goto LABEL_132;
                  case 5:
                    v75 = "transform";
                    goto LABEL_132;
                }
              }

              else
              {
                switch(v74)
                {
                  case 0:
                    v75 = "path";
                    goto LABEL_132;
                  case 1:
                    v75 = "resolver";
                    goto LABEL_132;
                  case 2:
                    v75 = nw_endpoint_flow_mode_string(*(v72 + 33));
LABEL_132:

                    v80 = v73;
                    os_unfair_lock_lock(v73 + 28);
                    v81 = v80[8];
                    os_unfair_lock_unlock(v73 + 28);

                    *buf = 136448258;
                    v158 = "nw_endpoint_handler_get_alternate_path_state";
                    v159 = 2082;
                    v160 = (v7 + 46);
                    v161 = 2082;
                    v162 = v40;
                    v163 = 2082;
                    v164 = logging_description;
                    v165 = 2082;
                    v166 = v71;
                    v167 = 2082;
                    v168 = v75;
                    v169 = 2114;
                    v170 = v81;
                    v171 = 2114;
                    v172 = v33;
                    v173 = 2114;
                    v174 = v35;
                    v38 = log;
                    _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] better path %{public}@ due to non-viable current path %{public}@", buf, 0x5Cu);

                    goto LABEL_94;
                }
              }

              v75 = "unknown-mode";
              goto LABEL_132;
            }

LABEL_166:
            v39 = 1;
            goto LABEL_96;
          }

          v117 = v35;
          v118 = v7;
          if ((nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v38 = gconnectionLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_endpoint_handler_get_id_string(v7);
              v143 = nw_endpoint_handler_dry_run_string(v7);
              v119 = nw_endpoint_handler_copy_endpoint(v7);
              v120 = nw_endpoint_get_logging_description(v119);
              v121 = nw_endpoint_handler_state_string(v7);
              v122 = nw_endpoint_handler_mode_string(v7);
              v123 = nw_endpoint_handler_copy_current_path(v7);
              *buf = 136448258;
              v158 = "nw_endpoint_handler_get_alternate_path_state";
              v159 = 2082;
              v160 = id_string;
              v161 = 2082;
              v162 = v143;
              v163 = 2082;
              v164 = v120;
              v165 = 2082;
              v166 = v121;
              v167 = 2082;
              v168 = v122;
              v169 = 2114;
              v170 = v123;
              v171 = 2114;
              v172 = v33;
              v173 = 2114;
              v174 = v117;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] better path %{public}@ due to non-viable current path %{public}@", buf, 0x5Cu);

              goto LABEL_94;
            }

LABEL_177:
            v39 = 1;
            v7 = v118;
            goto LABEL_95;
          }

          goto LABEL_186;
        }

        if (v17)
        {
          minimize_logging = nw_endpoint_handler_get_minimize_logging(v7);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(v7);
          if (!minimize_logging)
          {
            if ((logging_disabled & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v38 = gconnectionLogObj;
              v39 = 1;
              if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                goto LABEL_95;
              }

              v63 = nw_endpoint_handler_get_id_string(v7);
              v64 = nw_endpoint_handler_dry_run_string(v7);
              v65 = nw_endpoint_handler_copy_endpoint(v7);
              v66 = nw_endpoint_get_logging_description(v65);
              v67 = nw_endpoint_handler_state_string(v7);
              v68 = nw_endpoint_handler_mode_string(v7);
              v69 = nw_endpoint_handler_copy_current_path(v7);
              *buf = 136448002;
              v158 = "nw_endpoint_handler_get_alternate_path_state";
              v159 = 2082;
              v160 = v63;
              v161 = 2082;
              v162 = v64;
              v163 = 2082;
              v164 = v66;
              v165 = 2082;
              v166 = v67;
              v167 = 2082;
              v168 = v68;
              v169 = 2114;
              v170 = v69;
              v171 = 2114;
              v172 = v33;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] better path %{public}@ due non-reusable flow", buf, 0x52u);

              goto LABEL_94;
            }

            goto LABEL_166;
          }

          v118 = v7;
          if ((logging_disabled & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v38 = gconnectionLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v124 = nw_endpoint_handler_get_id_string(v7);
              v144 = nw_endpoint_handler_dry_run_string(v7);
              v125 = nw_endpoint_handler_copy_endpoint(v7);
              v126 = nw_endpoint_get_logging_description(v125);
              v127 = nw_endpoint_handler_state_string(v7);
              v128 = nw_endpoint_handler_mode_string(v7);
              v129 = nw_endpoint_handler_copy_current_path(v7);
              *buf = 136448002;
              v158 = "nw_endpoint_handler_get_alternate_path_state";
              v159 = 2082;
              v160 = v124;
              v161 = 2082;
              v162 = v144;
              v163 = 2082;
              v164 = v126;
              v165 = 2082;
              v166 = v127;
              v167 = 2082;
              v168 = v128;
              v169 = 2114;
              v170 = v129;
              v171 = 2114;
              v172 = v33;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] better path %{public}@ due non-reusable flow", buf, 0x52u);

              goto LABEL_94;
            }

            goto LABEL_177;
          }

LABEL_186:
          v39 = 1;
          v7 = v118;
          goto LABEL_96;
        }

        if (v18)
        {
          v76 = nw_path_copy_interface(v145);
        }

        else
        {
          v76 = nw_path_copy_connected_interface(v150);
        }

        v38 = v76;
        v77 = nw_path_is_tunnelled(v145);
        if (v38)
        {
          v78 = v77;
        }

        else
        {
          v78 = 1;
        }

        if ((v78 & 1) != 0 || _nw_interface_get_type(v38) == 4 || (index = _nw_interface_get_index(v38), index == nw_path_get_interface_index(v33)))
        {
          v39 = 0;
          goto LABEL_95;
        }

        v82 = nw_path_copy_endpoint(v145);
        v138 = v82;
        v83 = nw_path_copy_endpoint(v33);
        loga = v83;
        if (v82)
        {
          LODWORD(v82) = nw_endpoint_get_type(v82);
        }

        if (v83)
        {
          LODWORD(v83) = nw_endpoint_get_type(v83);
        }

        v142 = nw_endpoint_handler_copy_current_path(v152);
        if (v82 != v83 || _nw_path_may_span_multiple_interfaces(v142) && (nw_endpoint_handler_has_matching_handler(v152, v151) & 1) != 0)
        {
          if (nw_endpoint_handler_get_logging_disabled(v7))
          {
            v39 = 0;
            goto LABEL_160;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v84 = gconnectionLogObj;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            v85 = nw_endpoint_handler_get_id_string(v7);
            v86 = nw_endpoint_handler_dry_run_string(v7);
            v87 = nw_endpoint_handler_copy_endpoint(v7);
            v88 = nw_endpoint_get_logging_description(v87);
            v89 = nw_endpoint_handler_state_string(v7);
            v90 = nw_endpoint_handler_mode_string(v7);
            v91 = nw_endpoint_handler_copy_current_path(v7);
            *buf = 136448258;
            v158 = "nw_endpoint_handler_get_alternate_path_state";
            v159 = 2082;
            v160 = v85;
            v161 = 2082;
            v162 = v86;
            v163 = 2082;
            v164 = v88;
            v165 = 2082;
            v166 = v89;
            v167 = 2082;
            v168 = v90;
            v169 = 2114;
            v170 = v91;
            v171 = 2114;
            v172 = loga;
            v173 = 2114;
            v174 = v138;
            _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] suppressing better path notification (comparing %{public}@ to %{public}@)", buf, 0x5Cu);
          }

          v39 = 0;
LABEL_159:

LABEL_160:
          goto LABEL_95;
        }

        v92 = nw_endpoint_handler_get_minimize_logging(v7);
        v93 = nw_endpoint_handler_get_logging_disabled(v7);
        if (v92)
        {
          if (v93)
          {
            goto LABEL_153;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v94 = gconnectionLogObj;
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            v137 = nw_endpoint_handler_get_id_string(v7);
            v135 = nw_endpoint_handler_dry_run_string(v7);
            v130 = nw_endpoint_handler_copy_endpoint(v7);
            v131 = nw_endpoint_get_logging_description(v130);
            v132 = nw_endpoint_handler_state_string(v7);
            v133 = nw_endpoint_handler_mode_string(v7);
            v134 = nw_endpoint_handler_copy_current_path(v7);
            *buf = 136448258;
            v158 = "nw_endpoint_handler_get_alternate_path_state";
            v159 = 2082;
            v160 = v137;
            v161 = 2082;
            v162 = v135;
            v163 = 2082;
            v164 = v131;
            v165 = 2082;
            v166 = v132;
            v167 = 2082;
            v168 = v133;
            v169 = 2114;
            v170 = v134;
            v171 = 2114;
            v172 = v33;
            v173 = 2114;
            v174 = v145;
            _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] better path %{public}@ preferred to path %{public}@", buf, 0x5Cu);
          }
        }

        else
        {
          if (v93)
          {
LABEL_153:
            if (nw_endpoint_handler_get_logging_disabled(v7))
            {
              v39 = 1;
              goto LABEL_160;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v84 = gconnectionLogObj;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              v103 = nw_endpoint_handler_get_id_string(v7);
              v104 = nw_endpoint_handler_dry_run_string(v7);
              v105 = nw_endpoint_handler_copy_endpoint(v7);
              v106 = nw_endpoint_get_logging_description(v105);
              v107 = nw_endpoint_handler_state_string(v7);
              v108 = nw_endpoint_handler_mode_string(v7);
              v109 = nw_endpoint_handler_copy_current_path(v7);
              *buf = 136448258;
              v158 = "nw_endpoint_handler_get_alternate_path_state";
              v159 = 2082;
              v160 = v103;
              v161 = 2082;
              v162 = v104;
              v163 = 2082;
              v164 = v106;
              v165 = 2082;
              v166 = v107;
              v167 = 2082;
              v168 = v108;
              v169 = 2114;
              v170 = v109;
              v171 = 2114;
              v172 = loga;
              v173 = 2114;
              v174 = v138;
              _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] comparing %{public}@ to %{public}@", buf, 0x5Cu);
            }

            v39 = 1;
            goto LABEL_159;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v94 = gconnectionLogObj;
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            v95 = nw_endpoint_handler_get_id_string(v7);
            v96 = nw_endpoint_handler_dry_run_string(v7);
            v136 = v94;
            v97 = nw_endpoint_handler_copy_endpoint(v7);
            v98 = v95;
            v99 = nw_endpoint_get_logging_description(v97);
            v100 = nw_endpoint_handler_state_string(v7);
            v101 = nw_endpoint_handler_mode_string(v7);
            v102 = nw_endpoint_handler_copy_current_path(v7);
            *buf = 136448258;
            v158 = "nw_endpoint_handler_get_alternate_path_state";
            v159 = 2082;
            v160 = v98;
            v161 = 2082;
            v162 = v96;
            v163 = 2082;
            v164 = v99;
            v165 = 2082;
            v166 = v100;
            v167 = 2082;
            v168 = v101;
            v169 = 2114;
            v170 = v102;
            v171 = 2114;
            v172 = v33;
            v173 = 2114;
            v174 = v145;
            _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] better path %{public}@ preferred to path %{public}@", buf, 0x5Cu);

            v94 = v136;
          }
        }

        goto LABEL_153;
      }
    }

LABEL_63:
    v43 = v154;
    v44 = _nw_path_get_status(v43);

    if ((v44 != 3) | is_viable & 1)
    {
      goto LABEL_64;
    }

    if ((v7[71] & 0x20) != 0)
    {
      if ((nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v38 = gconnectionLogObj;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v110 = v43;
          v111 = nw_endpoint_handler_get_id_string(v7);
          v147 = nw_endpoint_handler_dry_run_string(v7);
          v112 = nw_endpoint_handler_copy_endpoint(v7);
          v113 = nw_endpoint_get_logging_description(v112);
          v114 = nw_endpoint_handler_state_string(v7);
          v115 = nw_endpoint_handler_mode_string(v7);
          v116 = nw_endpoint_handler_copy_current_path(v7);
          *buf = 136448258;
          v158 = "nw_endpoint_handler_get_alternate_path_state";
          v159 = 2082;
          v160 = v111;
          v161 = 2082;
          v162 = v147;
          v163 = 2082;
          v164 = v113;
          v165 = 2082;
          v166 = v114;
          v167 = 2082;
          v168 = v115;
          v169 = 2114;
          v170 = v116;
          v171 = 2114;
          v172 = v153;
          v173 = 2114;
          v174 = v110;
          _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] satisfiable path %{public}@ preferred to non-viable path %{public}@", buf, 0x5Cu);
        }

        goto LABEL_94;
      }

      goto LABEL_166;
    }

    if ((v7[71] & 0x40) != 0)
    {
      goto LABEL_166;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v38 = gconnectionLogObj;
    v39 = 1;
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      goto LABEL_95;
    }

    if (v7[71])
    {
      v45 = "dry-run ";
    }

    else
    {
      v45 = "";
    }

    v46 = nw_endpoint_handler_copy_endpoint(v7);
    v47 = v46;
    if (v46)
    {
      v48 = _nw_endpoint_get_logging_description(v46);
    }

    else
    {
      v48 = "<NULL>";
    }

    v146 = v43;
    v49 = (v7 + 46);
    v50 = v7[30];
    if (v50 > 5)
    {
      v51 = "unknown-state";
    }

    else
    {
      v51 = off_1E6A31048[v50];
    }

    v52 = v7;
    v53 = v52;
    v54 = v7[29];
    v149 = v7;
    if (v54 > 2)
    {
      switch(v54)
      {
        case 3:
          v55 = v45;
          v56 = v38;
          v57 = "proxy";
          goto LABEL_93;
        case 4:
          v55 = v45;
          v56 = v38;
          v57 = "fallback";
          goto LABEL_93;
        case 5:
          v55 = v45;
          v56 = v38;
          v57 = "transform";
          goto LABEL_93;
      }
    }

    else
    {
      switch(v54)
      {
        case 0:
          v55 = v45;
          v56 = v38;
          v57 = "path";
          goto LABEL_93;
        case 1:
          v55 = v45;
          v56 = v38;
          v57 = "resolver";
          goto LABEL_93;
        case 2:
          v55 = v45;
          v56 = v38;
          v57 = nw_endpoint_flow_mode_string(*(v52 + 33));
LABEL_93:

          v58 = v53;
          os_unfair_lock_lock(v53 + 28);
          v59 = v58[8];
          os_unfair_lock_unlock(v53 + 28);

          *buf = 136448258;
          v158 = "nw_endpoint_handler_get_alternate_path_state";
          v159 = 2082;
          v160 = v49;
          v161 = 2082;
          v162 = v55;
          v163 = 2082;
          v164 = v48;
          v165 = 2082;
          v166 = v51;
          v167 = 2082;
          v168 = v57;
          v169 = 2114;
          v170 = v59;
          v171 = 2114;
          v172 = v153;
          v173 = 2114;
          v174 = v146;
          v38 = v56;
          _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] satisfiable path %{public}@ preferred to non-viable path %{public}@", buf, 0x5Cu);

          v7 = v149;
LABEL_94:
          v39 = 1;
LABEL_95:

          goto LABEL_96;
      }
    }

    v55 = v45;
    v56 = v38;
    v57 = "unknown-mode";
    goto LABEL_93;
  }

LABEL_62:
  if (v154)
  {
    goto LABEL_63;
  }

LABEL_64:
  v39 = 0;
LABEL_96:

  return v39;
}

uint64_t nw_path_copy_connected_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_connected_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_connected_interface";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null path", buf, 12);

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
        v16 = "nw_path_copy_connected_interface";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_copy_connected_interface";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_connected_interface";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_connected_interface";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *nw_path_is_tunnelled(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_is_tunneled(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_tunnelled";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null path", buf, 12);

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
        v16 = "nw_path_is_tunnelled";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_is_tunnelled";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_is_tunnelled";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_is_tunnelled";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_path_is_tunneled(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 72);

    return (v1 == 6);
  }

  return result;
}

void nw_connection_send_viability_changed_on_nw_queue(NWConcrete_nw_connection *a1, int a2)
{
  *&v44[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_connection_send_viability_changed_on_nw_queue";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null connection", buf, 12);

    v40 = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v25, &v40, &v39))
    {
      if (v40 == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = v40;
        if (os_log_type_enabled(v26, v40))
        {
          *buf = 136446210;
          v42 = "nw_connection_send_viability_changed_on_nw_queue";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = v40;
        v30 = os_log_type_enabled(v26, v40);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v42 = "nw_connection_send_viability_changed_on_nw_queue";
            v43 = 2082;
            *v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_51;
        }

        if (v30)
        {
          *buf = 136446210;
          v42 = "nw_connection_send_viability_changed_on_nw_queue";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = v40;
        if (os_log_type_enabled(v26, v40))
        {
          *buf = 136446210;
          v42 = "nw_connection_send_viability_changed_on_nw_queue";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_51:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_34;
  }

  nw_context_assert_queue(v3->context);
  reported_viable = v4->reported_viable;
  if (a2)
  {
    if (reported_viable == 1)
    {
      goto LABEL_34;
    }
  }

  else if (reported_viable == 2)
  {
    goto LABEL_34;
  }

  viability_changed_handler = v4->viability_changed_handler;
  if (viability_changed_handler && v4->state != 5)
  {
    if (a2)
    {
      v4->reported_viable = 1;
      v7 = _Block_copy(viability_changed_handler);
    }

    else
    {
      v4->reported_viable = 2;
      v7 = _Block_copy(viability_changed_handler);
      if (nw_endpoint_handler_uses_multipath(v4->parent_endpoint_handler))
      {
        parameters = v4->parameters;
        if (parameters && !_nw_parameters_get_logging_disabled(parameters))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v9 = gconnectionLogObj;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            top_id = v4->top_id;
            *buf = 136446466;
            v42 = "nw_connection_send_viability_changed_on_nw_queue";
            v43 = 1024;
            *v44 = top_id;
            _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s [C%u] Delaying not viable notification on a multipath protocol", buf, 0x12u);
          }
        }

        v11 = nw_endpoint_handler_copy_connected_path(v4->parent_endpoint_handler);
        v12 = v11;
        if (v11 && (nw_path_uses_companion(v11) & 1) != 0)
        {
          v13 = &nw_default_companion_viability_delay;
          v14 = &nw_setting_companion_viability_delay;
        }

        else
        {
          v13 = &nw_default_multipath_viability_delay;
          v14 = &nw_setting_multipath_viability_delay;
        }

        int64_with_default = networkd_settings_get_int64_with_default(*v14, *v13);
        viability_changed_timer = v4->viability_changed_timer;
        if (!viability_changed_timer)
        {
          v21 = int64_with_default;
          v22 = nw_context_copy_implicit_context();
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = ___ZL48nw_connection_send_viability_changed_on_nw_queueP24NWConcrete_nw_connectionb_block_invoke;
          v35[3] = &unk_1E6A2EE00;
          v36 = v4;
          v38 = 0;
          v37 = v7;
          v4->viability_changed_timer = nw_queue_context_create_source(v22, 2, 3, 0, v35, 0);

          viability_changed_timer = v4->viability_changed_timer;
          int64_with_default = v21;
        }

        v23 = dispatch_time(0x8000000000000000, 1000000 * int64_with_default);
        nw_queue_set_timer_values(viability_changed_timer, v23, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
        nw_queue_activate_source(v4->viability_changed_timer);
        goto LABEL_33;
      }
    }

    v15 = v4->parameters;
    if (v15 && !_nw_parameters_get_logging_disabled(v15))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v4->top_id;
        *buf = 136446722;
        v42 = "nw_connection_send_viability_changed_on_nw_queue";
        v43 = 1024;
        *v44 = v17;
        v44[2] = 1024;
        *&v44[3] = a2;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] viability_changed_handler(%{BOOL}d)", buf, 0x18u);
      }
    }

    client_qos_class = v4->client_qos_class;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZL48nw_connection_send_viability_changed_on_nw_queueP24NWConcrete_nw_connectionb_block_invoke_243;
    v32[3] = &unk_1E6A3B8C0;
    v7 = v7;
    v33 = v7;
    v34 = a2;
    nw_connection_async_client(v4, client_qos_class, v32);
    v12 = v33;
LABEL_33:
  }

LABEL_34:
}

void __nw_connection_async_client(void *a1, dispatch_qos_class_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  v6 = *(v9 + 25);
  if (v6)
  {
    v7 = v6;
    v8 = dispatch_block_create_with_qos_class(0, a2, 0, v5);
    dispatch_async(v7, v8);
  }

  else if (!*(v9 + 5))
  {
    nw_context_queue_block(*(v9 + 3), v5);
  }
}

void __nw_connection_copy_connected_path_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_path(*(v2 + 144));
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(a1 + 32) + 448);
        v9 = 136446466;
        v10 = "nw_connection_copy_connected_path_block_invoke";
        v11 = 1024;
        v12 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_copy_connected_path on unconnected nw_connection", &v9, 0x12u);
      }
    }
  }
}

id nw_connection_copy_connected_path(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__24471;
    v20 = __Block_byref_object_dispose__24472;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_copy_connected_path_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_connected_path_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_connected_path";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_connected_path";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_connection_copy_connected_path";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_connected_path";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_connected_path";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

void *network_proxy_create_from_parameters(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v15 = "network_proxy_create_from_parameters";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v6, &type, &v12))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "network_proxy_create_from_parameters";
      v9 = "%{public}s called with null parameters";
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
          v15 = "network_proxy_create_from_parameters";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v11)
      {
LABEL_21:
        if (v6)
        {
          free(v6);
        }

        return 0;
      }

      *buf = 136446210;
      v15 = "network_proxy_create_from_parameters";
      v9 = "%{public}s called with null parameters, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "network_proxy_create_from_parameters";
      v9 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_21;
  }

  result = _nw_parameters_copy_effective_proxy_config(a1);
  if (result)
  {
    v2 = result;
    v3 = v2[38];
    v4 = v2;

    result = v4;
    if (v3 != 1)
    {
      os_release(v4);
      return 0;
    }
  }

  return result;
}

BOOL nw_protocol_metadata_is_tls(nw_protocol_metadata_t metadata)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (v1)
  {
    v2 = nw_protocol_boringssl_copy_definition();
    v3 = nw_protocol_metadata_matches_definition(v1, v2);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_metadata_is_tls";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);

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
        v16 = "nw_protocol_metadata_is_tls";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata", buf, 0xCu);
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
          v16 = "nw_protocol_metadata_is_tls";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_tls";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_metadata_is_tls";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_connection_used_tfo(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_used_tfo_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_used_tfo_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_used_tfo";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_used_tfo";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_connection_used_tfo";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_used_tfo";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_used_tfo";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

  return v3 & 1;
}