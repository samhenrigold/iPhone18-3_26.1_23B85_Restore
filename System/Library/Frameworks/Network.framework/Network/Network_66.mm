void __nw_http_connection_state_storage_lookup_block_invoke_3(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    host_with_numeric_port = 0;
    v6 = *v38;
    v34 = v1;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        if ([v10 serviceType] == 1)
        {
          v8 = [v10 alternateHost];
          v9 = host_with_numeric_port;
          host_with_numeric_port = nw_endpoint_create_host_with_numeric_port([v8 UTF8String], objc_msgSend(v10, "alternatePort"));
LABEL_6:

          continue;
        }

        if ([v10 serviceType] == -2)
        {
          v11 = [v10 alternateHost];
          v8 = [v11 dataUsingEncoding:1];

          if (v8)
          {
            v36 = 0;
            v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v36];
            v9 = v36;
            if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v13 = [v12 objectForKeyedSubscript:@"http3"];
              v14 = [v12 objectForKeyedSubscript:@"quic"];
              v15 = [v12 objectForKeyedSubscript:@"tls"];
              v35 = v14;
              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v31 = v15;
                v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:0];
                v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];
                v17 = v31;
                v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:? options:?];
                v32 = v18;
                if (v16 && v33 && v18)
                {
                  loga = [v16 _createDispatchData];

                  v28 = [v33 _createDispatchData];
                  v19 = [v32 _createDispatchData];
                  v20 = v30;
                  v29 = v28;
                  v30 = v19;
                  v27 = loga;
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  log = gLogObj;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    v42 = "nw_http_connection_state_storage_lookup_block_invoke";
                    _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s failed to decode data", buf, 0xCu);
                  }

                  v20 = log;
                }
              }

              else
              {
                v17 = v15;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v16 = gLogObj;
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446210;
                  v42 = "nw_http_connection_state_storage_lookup_block_invoke";
                  _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s failed to read dictionary", buf, 0xCu);
                }
              }

              v1 = v34;
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v13 = gLogObj;
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v42 = "nw_http_connection_state_storage_lookup_block_invoke";
                v43 = 2112;
                v44 = v9;
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s failed to deserialize data: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v9 = gLogObj;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v42 = "nw_http_connection_state_storage_lookup_block_invoke_3";
              _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s failed to serialize string", buf, 0xCu);
            }

            v8 = 0;
          }

          v4 = 1;
          goto LABEL_6;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (!v3)
      {
        goto LABEL_40;
      }
    }
  }

  v4 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  host_with_numeric_port = 0;
LABEL_40:

  (*(*(a1 + 56) + 16))();
  if (v4)
  {
    v21 = *(*(a1 + 40) + 16);
    v22 = [*(a1 + 48) host];
    v23 = [*(a1 + 48) partition];
    [v21 removeHTTPAlternativeServiceEntriesWithHost:v22 partition:v23 port:objc_msgSend(*(a1 + 48) serviceType:{"port"), -2}];
  }
}

void nw_http_retry_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_retry_deallocate_options";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null allocated_handle", buf, 12);

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
        v12 = "nw_http_retry_deallocate_options";
        v6 = "%{public}s called with null allocated_handle";
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
            v12 = "nw_http_retry_deallocate_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_http_retry_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_retry_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
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
}

void nw_http_cookie_deallocate_options(uint64_t a1, void **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    v5 = a2[2];
    if (v5)
    {
      free(v5);
      a2[2] = 0;
    }

    v6 = a2[3];
    a2[3] = 0;

    free(a2);
    return;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http_cookie_deallocate_options";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null allocated_handle", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v8, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_http_cookie_deallocate_options";
        v11 = "%{public}s called with null allocated_handle";
LABEL_20:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_http_cookie_deallocate_options";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v13)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v17 = "nw_http_cookie_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_20;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_http_cookie_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }
}

void nw_http_connection_state_deallocate_options(uint64_t a1, void **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    free(a2);
    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_http_connection_state_deallocate_options";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null allocated_handle", buf, 12);

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
        v14 = "nw_http_connection_state_deallocate_options";
        v8 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_http_connection_state_deallocate_options";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_http_connection_state_deallocate_options";
        v8 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_http_connection_state_deallocate_options";
        v8 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }
}

void *nw_http_sniffing_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x534885DCuLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_sniffing_allocate_options";
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v9 = 2048;
  v10 = 1;
  v11 = 2048;
  v12 = 4;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:

    return v2;
  }

  __break(1u);
  return result;
}

void *nw_http_client_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xAF24BA8BuLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http_client_allocate_options";
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v9 = 2048;
  v10 = 1;
  v11 = 2048;
  v12 = 16;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t __nw_http_client_options_set_resend_handler_block_invoke(uint64_t a1, void **a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *a2;
  *a2 = v3;

  return 1;
}

uint64_t __nw_http_client_options_set_retry_with_h1_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *(a2 + 8);
  *(a2 + 8) = v3;

  return 1;
}

id nw_connection_create_without_parameters_copy(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = nw_connection_create_with_id(v3, v4, 0, 0);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_create_without_parameters_copy";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_connection_create_without_parameters_copy";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_create_without_parameters_copy";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_connection_create_without_parameters_copy";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_connection_create_without_parameters_copy";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

uint64_t nw_http_encoding_options_get_type(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_encoding_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_encoding_definition_onceToken, &__block_literal_global_40_76731);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_encoding_definition_http_encoding_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 1;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_encoding_options_get_type_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_encoding_options_get_type";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http encoding", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http encoding", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http encoding, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http encoding, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_encoding_options_get_type";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http encoding, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_encoding_options_get_type";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_options_get_type";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_encoding_options_get_type";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 1;
LABEL_6:

  return v6;
}

void sub_181E82DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http_redirect_deallocate_options(uint64_t a1, void **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    free(a2);
    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_http_redirect_deallocate_options";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null allocated_handle", buf, 12);

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
        v15 = "nw_http_redirect_deallocate_options";
        v9 = "%{public}s called with null allocated_handle";
LABEL_18:
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
            v15 = "nw_http_redirect_deallocate_options";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v15 = "nw_http_redirect_deallocate_options";
        v9 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_http_redirect_deallocate_options";
        v9 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }
}

void nw_http_authentication_deallocate_options(uint64_t a1, void **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[5];
    a2[5] = 0;

    v5 = a2[1];
    a2[1] = 0;

    v6 = a2[2];
    a2[2] = 0;

    v7 = a2[3];
    a2[3] = 0;

    v8 = a2[4];
    a2[4] = 0;

    free(a2);
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http_authentication_deallocate_options";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null allocated_handle", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_authentication_deallocate_options";
        v13 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_http_authentication_deallocate_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v15)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v19 = "nw_http_authentication_deallocate_options";
        v13 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_authentication_deallocate_options";
        v13 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }
}

uint64_t _nw_path_update_parameters_for_fallback(char *a1, char *a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = sub_18220CB74(a2, a1);
  }

  return v3 & 1;
}

_BYTE *sub_181E83654(_BYTE *result, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = 3;
      if ((result[214] & 0x10) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_10;
      }

      v2 = 4;
      if ((result[214] & 0x10) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_9:
    result[212] = v2;
    return result;
  }

  if (a2 == 1)
  {
    v2 = 1;
    if ((result[214] & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v2 = 2;
    if ((result[214] & 0x10) == 0)
    {
LABEL_5:
      result[208] = v2;
      return result;
    }

    goto LABEL_9;
  }

LABEL_10:
  v3 = 208;
  if ((result[214] & 0x10) != 0)
  {
    v3 = 212;
  }

  result[v3] = 5;
  return result;
}

uint64_t nw_parameters_get_no_fullstack_fallback(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_fullstack_fallback(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_fullstack_fallback";
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
        v12 = "nw_parameters_get_no_fullstack_fallback";
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
            v12 = "nw_parameters_get_no_fullstack_fallback";
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
        v12 = "nw_parameters_get_no_fullstack_fallback";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_fullstack_fallback";
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

char *nw_path_fallback_should_not_use_timer(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_fallback_should_not_use_timer(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_fallback_should_not_use_timer";
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
        v16 = "nw_path_fallback_should_not_use_timer";
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
          v16 = "nw_path_fallback_should_not_use_timer";
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
        v16 = "nw_path_fallback_should_not_use_timer";
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
        v16 = "nw_path_fallback_should_not_use_timer";
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

char *_nw_path_fallback_should_not_use_timer(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 1) & 1);
  }

  return result;
}

char *nw_path_fallback_is_forced(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_fallback_is_forced(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_fallback_is_forced";
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
        v16 = "nw_path_fallback_is_forced";
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
          v16 = "nw_path_fallback_is_forced";
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
        v16 = "nw_path_fallback_is_forced";
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
        v16 = "nw_path_fallback_is_forced";
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

char *_nw_path_fallback_is_forced(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 2) & 1);
  }

  return result;
}

uint64_t nw_path_update_parameters_for_fallback(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      updated = _nw_path_update_parameters_for_fallback(v3, v4);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_update_parameters_for_fallback";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null parameters_to_update", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null parameters_to_update", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters_to_update, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters_to_update, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_update_parameters_for_fallback";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters_to_update, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_update_parameters_for_fallback";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null path", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_path_update_parameters_for_fallback";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_update_parameters_for_fallback";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  updated = 0;
LABEL_4:

  return updated;
}

void sub_181E8447C(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(a1 + 224);
    if (!v4)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v4 = swift_allocObject();
      sub_18226B448(v4 + 16);
      *(a1 + 224) = v4;
    }

    *(v4 + 16) = v3;

LABEL_29:

    return;
  }

  v5 = *(v1 + 216);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_181AD3638(a1);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = *sub_182AD2388();
    }

    v9 = 0;
    v27 = v8;
    do
    {
      if (v9 >= *(v5 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v10 = v8[3];
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      v12 = v5 + 32 + 32 * v9;
      v25 = *v12;
      v26 = *(v12 + 16);
      sub_181AA5C1C(*v12, *(v12 + 8));
      sub_181ADC1E0(v26, *(&v26 + 1));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v8[2] < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181E74708(isUniquelyReferenced_nonNull_native, v11, 0);
        v8 = v27;
      }

      v15 = v8[3];
      v14 = v8[4];
      v18 = __OFADD__(v14, v15);
      v16 = v14 + v15;
      if (v18)
      {
        goto LABEL_32;
      }

      if (v15 < 0)
      {
        if (v16 < 0)
        {
          v20 = v8[2];
          v18 = __OFADD__(v16, v20);
          v16 += v20;
          if (v18)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v17 = v8[2];
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v19 < 0 == v18)
        {
          v16 = v19;
          if (v18)
          {
            goto LABEL_34;
          }
        }
      }

      v21 = &v8[4 * v16];
      *(v21 + 7) = v26;
      *(v21 + 5) = v25;
      v22 = v8[3];
      v18 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v18)
      {
        goto LABEL_33;
      }

      ++v9;
      v8[3] = v23;
    }

    while (v6 != v9);
    v24 = *(a1 + 224);
    if (!v24)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v24 = swift_allocObject();
      sub_18226B448(v24 + 16);
      *(a1 + 224) = v24;
    }

    *(v24 + 72) = v8;
    goto LABEL_29;
  }
}

void nw_parameters_set_required_interface_type(nw_parameters_t parameters, nw_interface_type_t interface_type)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_set_required_interface_type(parameters, *&interface_type);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_required_interface_type";
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
        v12 = "nw_parameters_set_required_interface_type";
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
            v12 = "nw_parameters_set_required_interface_type";
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
        v12 = "nw_parameters_set_required_interface_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_required_interface_type";
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
}

void nw_parameters_set_only_primary_requires_type(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_only_primary_requires_type(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_only_primary_requires_type";
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
        v12 = "nw_parameters_set_only_primary_requires_type";
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
            v12 = "nw_parameters_set_only_primary_requires_type";
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
        v12 = "nw_parameters_set_only_primary_requires_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_only_primary_requires_type";
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
}

void nw_parameters_set_fallback_applied(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_fallback_applied();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_fallback_applied";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_fallback_applied";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_fallback_applied";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_fallback_applied";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_fallback_applied";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_set_is_fallback(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_is_fallback();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_is_fallback";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_is_fallback";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_is_fallback";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_is_fallback";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_is_fallback";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void nw_parameters_set_fallback_mode(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_fallback_mode(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_fallback_mode";
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
        v12 = "nw_parameters_set_fallback_mode";
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
            v12 = "nw_parameters_set_fallback_mode";
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
        v12 = "nw_parameters_set_fallback_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_fallback_mode";
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
}

void nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue(void *a1, void *a2, uint64_t a3)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  nw_context_assert_queue(v5[3]);
  v7 = nw_endpoint_handler_copy_current_path(v6);
  if (v7)
  {
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = ___ZL70nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queueP24NWConcrete_nw_connectionPU33objcproto22OS_nw_endpoint_handler8NSObjectP35netcore_stats_tcp_statistics_report_block_invoke;
    v105[3] = &unk_1E6A3B938;
    v8 = v5;
    v106 = v8;
    v107 = a3;
    nw_endpoint_handler_access_resolver_handler(v6, v105);
    v9 = v7;
    v100 = _nw_path_copy_direct_interface(v9);

    if (v100)
    {
      *(a3 + 196) = _nw_interface_get_type(v100);
    }

    v104 = WORD2(v6) ^ WORD1(v6) ^ HIWORD(v6) ^ v6;
    event_milliseconds = nw_connection_get_event_milliseconds(v8, 3, 3, &v104, 0);
    if (event_milliseconds != -1)
    {
      *(a3 + 140) = event_milliseconds;
    }

    v11 = nw_endpoint_handler_copy_connected_path(v6);
    v99 = v11;
    if (!v11)
    {
      goto LABEL_41;
    }

    *(a3 + 144) = nw_connection_get_transport_connect_milliseconds(v8, v104, 1);
    *(a3 + 148) = nw_connection_get_transport_connect_milliseconds(v8, v104, 0);
    start_time = v8->start_time;
    v13 = mach_continuous_time();
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = nw_delta_nanos(start_time, v14);
    v16 = *(a3 + 144);
    *(a3 + 152) = v15 / 0xF4240 - v16;
    if ((v15 / 0xF4240) < v16)
    {
      if (gLogDatapath == 1)
      {
        v93 = __nwlog_obj();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          v94 = *(a3 + 144);
          v95 = *(a3 + 152);
          buf[0] = 136446978;
          *&buf[1] = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue";
          LOWORD(buf[3]) = 2082;
          *(&buf[3] + 2) = "statistics_report->flow_duration_msecs";
          HIWORD(buf[5]) = 2048;
          *&buf[6] = v94;
          LOWORD(buf[8]) = 2048;
          *(&buf[8] + 2) = v95;
          _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      *(a3 + 152) = 0;
    }

    v17 = nw_path_copy_interface(v11);
    v18 = v17;
    if (v17)
    {
      *(a3 + 200) = _nw_interface_get_type(v17);
    }

    v98 = v18;
    *(a3 + 208) |= 2u;
    v19 = v6;
    while (1)
    {
      v20 = v19;
      if (!v20)
      {
        break;
      }

      v21 = v20;
      v22 = v20[29] == 4;

      if (v22)
      {
        v27 = v8;
        LOWORD(buf[0]) = WORD2(v21) ^ WORD1(v21) ^ HIWORD(v21) ^ v21;
        v28 = nw_connection_get_event_milliseconds(v27, 5, 3, buf, 0);
        v29 = nw_connection_get_event_milliseconds(v27, 5, 4, buf, 0);
        if (v29 == -1 || v28 == -1)
        {
          v31 = v29 != -1;
        }

        else
        {
          v31 = v28 >= v29;
        }

        if (v31)
        {
          v32 = 4;
        }

        else
        {
          v32 = 0;
        }

        *(a3 + 208) = *(a3 + 208) & 0xFFFB | v32;
        if (nw_endpoint_handler_used_prefer_fallback(v21))
        {
          v33 = 16;
        }

        else
        {
          v33 = 0;
        }

        *(a3 + 208) = *(a3 + 208) & 0xFFEF | v33;
        goto LABEL_39;
      }

      v23 = v21;
      v19 = v23[9];

      if (!v19)
      {
        goto LABEL_40;
      }
    }

    v75 = __nwlog_obj();
    buf[0] = 136446210;
    *&buf[1] = "nw_endpoint_handler_get_mode";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null handler", buf, 12);

    v77 = v76;
    v108[0] = 16;
    LOBYTE(v103) = 0;
    if (__nwlog_fault(v76, v108, &v103))
    {
      if (v108[0] == 17)
      {
        v78 = __nwlog_obj();
        v79 = v108[0];
        if (os_log_type_enabled(v78, v108[0]))
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v78, v79, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_81:

        goto LABEL_93;
      }

      if (v103 != 1)
      {
        v78 = __nwlog_obj();
        v83 = v108[0];
        if (os_log_type_enabled(v78, v108[0]))
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v78, v83, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_81;
      }

      backtrace_string = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      HIDWORD(v97) = v108[0];
      v82 = os_log_type_enabled(v81, v108[0]);
      if (backtrace_string)
      {
        if (v82)
        {
          buf[0] = 136446466;
          *&buf[1] = "nw_endpoint_handler_get_mode";
          LOWORD(buf[3]) = 2082;
          *(&buf[3] + 2) = backtrace_string;
          _os_log_impl(&dword_181A37000, v81, BYTE4(v97), "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

      else
      {
        if (v82)
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v81, BYTE4(v97), "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }
    }

LABEL_93:
    if (v77)
    {
      free(v77);
    }

    v84 = __nwlog_obj();
    buf[0] = 136446210;
    *&buf[1] = "nw_endpoint_handler_copy_parent";
    LODWORD(v97) = 12;
    v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s called with null handler", buf, v97);

    v86 = v85;
    v108[0] = 16;
    LOBYTE(v103) = 0;
    if (__nwlog_fault(v85, v108, &v103))
    {
      if (v108[0] == 17)
      {
        v87 = __nwlog_obj();
        v88 = v108[0];
        if (os_log_type_enabled(v87, v108[0]))
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_endpoint_handler_copy_parent";
          _os_log_impl(&dword_181A37000, v87, v88, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_99:

        goto LABEL_111;
      }

      if (v103 != 1)
      {
        v87 = __nwlog_obj();
        v92 = v108[0];
        if (os_log_type_enabled(v87, v108[0]))
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_endpoint_handler_copy_parent";
          _os_log_impl(&dword_181A37000, v87, v92, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_99;
      }

      v89 = __nw_create_backtrace_string();
      v90 = __nwlog_obj();
      HIDWORD(v96) = v108[0];
      v91 = os_log_type_enabled(v90, v108[0]);
      if (v89)
      {
        if (v91)
        {
          buf[0] = 136446466;
          *&buf[1] = "nw_endpoint_handler_copy_parent";
          LOWORD(buf[3]) = 2082;
          *(&buf[3] + 2) = v89;
          _os_log_impl(&dword_181A37000, v90, BYTE4(v96), "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v89);
      }

      else
      {
        if (v91)
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_endpoint_handler_copy_parent";
          _os_log_impl(&dword_181A37000, v90, BYTE4(v96), "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }
    }

LABEL_111:
    if (v86)
    {
      free(v86);
    }

    v21 = 0;
LABEL_39:

LABEL_40:
LABEL_41:
    v34 = v9;
    v35 = _nw_path_copy_parameters(v34);

    *(a3 + 156) = nw_parameters_get_traffic_class(v35);
    *(a3 + 204) = nw_parameters_get_multipath_service(v35);
    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    memset(v114, 0, sizeof(v114));
    v113 = 0u;
    memset(buf, 0, sizeof(buf));
    if ((nw_parameters_get_multipath(v35) & 1) == 0)
    {
      v36 = v8;
      nw_context_assert_queue(v5[3]);
      v37 = v36;
      if (nw_parameters_get_ip_protocol(v37->parameters) == 6)
      {
        v38 = nw_endpoint_handler_fillout_tcp_info(v37->parent_endpoint_handler, buf);

        if (v38)
        {
          *(a3 + 208) = *(a3 + 208) & 0xFE1F | (32 * v121) & 0x20 | (8 * v121) & 0x40 | (32 * v121) & 0x80 | (((v121 & 2) != 0) << 8);
          v39 = *&v114[3];
          *a3 = *&v114[11];
          *(a3 + 8) = v39;
          *(a3 + 16) = *&v114[13];
          v40 = *&v114[9];
          *(a3 + 32) = *&v114[5];
          *(a3 + 40) = v40;
          *(a3 + 48) = *&v114[1];
          *(a3 + 56) = 0;
          *(a3 + 64) = 0;
          *(a3 + 72) = 0;
          v41 = vrev64q_s32(*&buf[5]);
          v41.i64[0] = *&buf[5];
          *(a3 + 160) = v41;
          *(a3 + 176) = LOBYTE(v114[19]);
          if (nw_parameters_get_tfo(v35) && (BYTE4(v121) & 8) != 0)
          {
            *(a3 + 208) |= 0x200u;
          }

          goto LABEL_62;
        }
      }

      else
      {
      }
    }

    if (nw_endpoint_handler_is_multipath(v6))
    {
      v103 = 0;
      if (nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue(v8, &v103))
      {
        v44 = v103;
        if (v103)
        {
          if (*v103)
          {
            v45 = *(*v103 + 32);
            if (v45)
            {
              v42.i32[0] = 0;
              v43.i32[0] = *(v45 + 116) & 1;
              v46 = vdupq_lane_s32(*&vceqq_s32(v43, v42), 0);
              v47 = *(v45 + 120);
              v48 = vandq_s8(v47, v46);
              v49 = vbicq_s8(v47, v46);
              v50 = *(v45 + 48);
              v51 = vdup_n_s32((*(v45 + 44) & 1) == 0);
              v52.i64[0] = v51.u32[0];
              v52.i64[1] = v51.u32[1];
              v53 = vcltzq_s64(vshlq_n_s64(v52, 0x3FuLL));
              v54 = vandq_s8(v50, v53);
              v55 = vbicq_s8(v50, v53);
              v53.i32[0] = *(v45 + 188) & 1;
              v56 = vdupq_lane_s32(*&vceqq_s32(v53, v42), 0);
              v57 = *(v45 + 192);
              v58 = vandq_s8(v57, v56);
              v59 = vbicq_s8(v57, v56);
              v60 = vaddq_s64(v49, v59);
              v59.i32[0] = *(v45 + 260) & 1;
              v61 = vdupq_lane_s32(*&vceqq_s32(v59, v42), 0);
              v62 = *(v45 + 264);
              v63 = vandq_s8(v62, v61);
              v64 = vaddq_s64(v55, vaddq_s64(v60, vbicq_s8(v62, v61)));
              v65 = vaddq_s64(v54, vaddq_s64(vaddq_s64(v48, v58), v63));
              *(a3 + 208) = ((*(v45 + 328) & 1) << 10) | *(a3 + 208) & 0xFBFF;
              *(a3 + 80) = vextq_s8(v64, v64, 8uLL);
              *(a3 + 96) = vextq_s8(v65, v65, 8uLL);
              *(a3 + 112) = *(v45 + 24);
              v66 = vaddq_s64(v64, v65);
              *a3 = vextq_s8(v66, v66, 8uLL);
            }
          }
        }

        freemptcpinfo(v44);
        goto LABEL_62;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v67 = gLogObj;
      *v108 = 136446210;
      v109 = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue";
      LODWORD(v96) = 12;
      v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue failed", v108, v96);

      type = OS_LOG_TYPE_ERROR;
      v101 = 0;
      if (__nwlog_fault(v68, &type, &v101))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v69 = gLogObj;
          v70 = type;
          if (os_log_type_enabled(v69, type))
          {
            *v108 = 136446210;
            v109 = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue";
            _os_log_impl(&dword_181A37000, v69, v70, "%{public}s nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue failed", v108, 0xCu);
          }
        }

        else if (v101 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v69, type);
          if (v71)
          {
            if (v73)
            {
              *v108 = 136446466;
              v109 = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue";
              v110 = 2082;
              v111 = v71;
              _os_log_impl(&dword_181A37000, v69, v72, "%{public}s nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue failed, dumping backtrace:%{public}s", v108, 0x16u);
            }

            free(v71);
            if (!v68)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          if (v73)
          {
            *v108 = 136446210;
            v109 = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue";
            _os_log_impl(&dword_181A37000, v69, v72, "%{public}s nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue failed, no backtrace", v108, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v69 = gLogObj;
          v74 = type;
          if (os_log_type_enabled(v69, type))
          {
            *v108 = 136446210;
            v109 = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue";
            _os_log_impl(&dword_181A37000, v69, v74, "%{public}s nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue failed, backtrace limit exceeded", v108, 0xCu);
          }
        }
      }

      if (v68)
      {
LABEL_61:
        free(v68);
      }
    }

LABEL_62:

    p_super = &v106->super;
LABEL_63:

    goto LABEL_64;
  }

  v24 = v5[2];
  if (v24 && !_nw_parameters_get_logging_disabled(v24))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    p_super = gconnectionLogObj;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v5 + 112);
      buf[0] = 136446466;
      *&buf[1] = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v26;
      _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_ERROR, "%{public}s [C%u] No path found for endpoint handler", buf, 0x12u);
    }

    goto LABEL_63;
  }

LABEL_64:
}

void ___ZL70nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queueP24NWConcrete_nw_connectionPU33objcproto22OS_nw_endpoint_handler8NSObjectP35netcore_stats_tcp_statistics_report_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = WORD2(v3) ^ WORD1(v3) ^ HIWORD(v3) ^ v3;
    event_milliseconds = nw_connection_get_event_milliseconds(*(a1 + 32), 2, 1, &v11, 0);
    v6 = nw_connection_get_event_milliseconds(*(a1 + 32), 2, 2, &v11, 0);
    v7 = *(a1 + 40);
    if (event_milliseconds != -1)
    {
      v7[33] = event_milliseconds;
    }

    if (v6 != -1)
    {
      v7[32] = v6;
    }

    v7[34] = v6 - event_milliseconds;
    if (v6 < event_milliseconds)
    {
      if (gLogDatapath == 1)
      {
        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(*(a1 + 40) + 136);
          *buf = 136446978;
          v13 = "nw_connection_stats_fill_in_statistics_report_for_endpoint_on_nw_queue_block_invoke";
          v14 = 2082;
          v15 = "statistics_report->dns_resolved_time_msecs";
          v16 = 2048;
          v17 = event_milliseconds;
          v18 = 2048;
          v19 = v10;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      v8 = *(a1 + 40);
      *(v8 + 136) = 0;
      goto LABEL_10;
    }

    v8 = *(a1 + 40);
    if (*(v8 + 136) <= 5u)
    {
LABEL_10:
      *(v8 + 208) |= 1u;
    }
  }
}

uint64_t nw_endpoint_handler_used_prefer_fallback(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_used_prefer_fallback";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v6, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_used_prefer_fallback";
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_22:

        goto LABEL_23;
      }

      if (v28 != 1)
      {
        v7 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_used_prefer_fallback";
          _os_log_impl(&dword_181A37000, v7, v23, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_used_prefer_fallback";
          _os_log_impl(&dword_181A37000, v7, v21, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_22;
      }

      if (v22)
      {
        *buf = 136446466;
        v31 = "nw_endpoint_handler_used_prefer_fallback";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v21, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_23:
    if (!v6)
    {
LABEL_25:
      v4 = 0;
      goto LABEL_26;
    }

LABEL_24:
    free(v6);
    goto LABEL_25;
  }

  if (*(v1 + 29) != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v31 = "nw_endpoint_handler_used_prefer_fallback";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s Endpoint handler is not in fallback mode", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v6, &type, &v28))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_used_prefer_fallback";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Endpoint handler is not in fallback mode", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v9 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (v9)
      {
        if (v11)
        {
          *buf = 136446466;
          v31 = "nw_endpoint_handler_used_prefer_fallback";
          v32 = 2082;
          v33 = v9;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Endpoint handler is not in fallback mode, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v9);
        if (!v6)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_used_prefer_fallback";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Endpoint handler is not in fallback mode, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_used_prefer_fallback";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s Endpoint handler is not in fallback mode, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_22;
  }

  v3 = v1[33];
  if (!v3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_fallback_used_prefer_fallback";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null fallback", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v17, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_fallback_used_prefer_fallback";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null fallback", buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        v24 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v18, type);
        if (v24)
        {
          if (v26)
          {
            *buf = 136446466;
            v31 = "nw_endpoint_fallback_used_prefer_fallback";
            v32 = 2082;
            v33 = v24;
            _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null fallback, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v24);
          goto LABEL_59;
        }

        if (v26)
        {
          *buf = 136446210;
          v31 = "nw_endpoint_fallback_used_prefer_fallback";
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s called with null fallback, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_fallback_used_prefer_fallback";
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null fallback, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_59:
    if (v17)
    {
      free(v17);
    }

    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v4 = (v3[108] >> 4) & 1;
LABEL_5:

LABEL_26:
  return v4;
}

uint64_t nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    nw_context_assert_queue(v3[3]);
    v5 = nw_endpoint_handler_copy_connected_socket_wrapper(v4[18]);
    v6 = v5;
    if (v5)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___ZL62nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queueP24NWConcrete_nw_connectionPP9mptcpinfo_block_invoke;
      v20[3] = &__block_descriptor_40_e8_B12__0i8l;
      v20[4] = a2;
      fd = nw_fd_wrapper_get_fd(v5, v20);
    }

    else
    {
      v8 = v4[2];
      if (v8 && !_nw_parameters_get_logging_disabled(v8))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v9 = gconnectionLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(v4 + 112);
          *buf = 136446466;
          v24 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue";
          v25 = 1024;
          LODWORD(v26) = v10;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s [C%u] Cannot get MPTCP info, no socket", buf, 0x12u);
        }
      }

      fd = 0;
    }

    goto LABEL_13;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null mptcp_info", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v13, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null mptcp_info", buf, 0xCu);
      }
    }

    else if (v21 == 1)
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
          v24 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null mptcp_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null mptcp_info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null mptcp_info, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v13)
  {
    free(v13);
  }

  fd = 0;
LABEL_13:

  return fd;
}

BOOL ___ZL62nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queueP24NWConcrete_nw_connectionPP9mptcpinfo_block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = copymptcpinfo(a2, *(a1 + 32));
  if (v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v17 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue_block_invoke";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s copymptcpinfo failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v4, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue_block_invoke";
        v7 = "%{public}s copymptcpinfo failed";
LABEL_16:
        v12 = v5;
        v13 = v6;
        goto LABEL_17;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue_block_invoke";
        v7 = "%{public}s copymptcpinfo failed, backtrace limit exceeded";
        goto LABEL_16;
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
LABEL_18:

          if (!v4)
          {
            return v2 == 0;
          }

          goto LABEL_12;
        }

        *buf = 136446210;
        v17 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue_block_invoke";
        v7 = "%{public}s copymptcpinfo failed, no backtrace";
        v12 = v5;
        v13 = v9;
LABEL_17:
        _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
        goto LABEL_18;
      }

      if (v10)
      {
        *buf = 136446466;
        v17 = "nw_connection_get_mptcpinfo_for_connected_endpoint_on_nw_queue_block_invoke";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s copymptcpinfo failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (v4)
    {
LABEL_12:
      free(v4);
    }
  }

  return v2 == 0;
}

_DWORD *nw_error_create_posix_error(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = [NWConcrete_nw_error alloc];

    return [(NWConcrete_nw_error *)v2 initWithDomain:v1 code:?];
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_error_create_posix_error";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null error_code", buf, 12);

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
        v14 = "nw_error_create_posix_error";
        v8 = "%{public}s called with null error_code";
LABEL_18:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_error_create_posix_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null error_code, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_error_create_posix_error";
        v8 = "%{public}s called with null error_code, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_error_create_posix_error";
        v8 = "%{public}s called with null error_code, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

int nw_error_get_error_code(nw_error_t error)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = error;
  if (v1)
  {
    isa_high = HIDWORD(v1[1].isa);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_error_get_error_code";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null error", buf, 12);

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
        v15 = "nw_error_get_error_code";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null error", buf, 0xCu);
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
          v15 = "nw_error_get_error_code";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null error, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_error_get_error_code";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null error, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_error_get_error_code";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null error, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  isa_high = 0;
  v1 = 0;
LABEL_3:

  return isa_high;
}

void ___ZL21nw_flow_service_readsP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP16nw_flow_protocolb_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v21 = gconnectionLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
      v36 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
      v37 = id_string;
      v38 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
      logging_description = nw_endpoint_get_logging_description(v38);
      v24 = nw_endpoint_handler_state_string(*(a1 + 32));
      v25 = nw_endpoint_handler_mode_string(*(a1 + 32));
      v26 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
      if (v9)
      {
        size = dispatch_data_get_size(v9);
      }

      else
      {
        size = 0;
      }

      *buf = 136448514;
      v42 = "nw_flow_service_reads_block_invoke";
      v43 = 2082;
      v44 = v37;
      v45 = 2082;
      v46 = v36;
      v47 = 2082;
      v48 = logging_description;
      v49 = 2082;
      v50 = v24;
      v51 = 2082;
      v52 = v25;
      v53 = 2114;
      v54 = v26;
      v55 = 2048;
      v56 = size;
      v57 = 2048;
      v58 = v10;
      v59 = 2114;
      v60 = v11;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Got final data length %zu, context %p, error %{public}@", buf, 0x66u);
    }
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  if (v12)
  {
    if (!*(v12 + 312))
    {
      v17 = _nw_array_create();
      v18 = *(v12 + 312);
      *(v12 + 312) = v17;
    }

    v19 = nw_flow_final_read_create(v14, v15, v13, v6, v16);
    v20 = *(v12 + 312);
    if (v20 && v19)
    {
      _nw_array_append(v20, v19);
    }

    goto LABEL_9;
  }

  v28 = __nwlog_obj();
  *buf = 136446210;
  v42 = "nw_flow_append_final_read";
  v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null flow_protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v29, &type, &v39))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v42 = "nw_flow_append_final_read";
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null flow_protocol", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v30, type);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          v42 = "nw_flow_append_final_read";
          v43 = 2082;
          v44 = backtrace_string;
          _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (v34)
      {
        *buf = 136446210;
        v42 = "nw_flow_append_final_read";
        _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v30 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v42 = "nw_flow_append_final_read";
        _os_log_impl(&dword_181A37000, v30, v35, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v29)
  {
    free(v29);
  }

LABEL_9:
}

NWConcrete_nw_flow_final_read *nw_flow_final_read_create(void *a1, void *a2, BOOL a3, BOOL a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a5;
  v13 = [NWConcrete_nw_flow_final_read alloc];
  v25 = v10;
  v26 = v11;
  v14 = v12;
  if (!v13)
  {
    goto LABEL_4;
  }

  v29.receiver = v13;
  v29.super_class = NWConcrete_nw_flow_final_read;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  v13 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 1, a1);
    objc_storeStrong(&v13->content_context, a2);
    v13->receive_single_message = a3;
    v13->is_complete = a4;
    objc_storeStrong(&v13->error, a5);
    goto LABEL_4;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v31 = "[NWConcrete_nw_flow_final_read initWithContent:contentContext:receiveSingleMessage:isComplete:error:]";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s [super init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v18, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v31 = "[NWConcrete_nw_flow_final_read initWithContent:contentContext:receiveSingleMessage:isComplete:error:]";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v31 = "[NWConcrete_nw_flow_final_read initWithContent:contentContext:receiveSingleMessage:isComplete:error:]";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v22, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v23)
      {
        *buf = 136446210;
        v31 = "[NWConcrete_nw_flow_final_read initWithContent:contentContext:receiveSingleMessage:isComplete:error:]";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v31 = "[NWConcrete_nw_flow_final_read initWithContent:contentContext:receiveSingleMessage:isComplete:error:]";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v18)
  {
    free(v18);
  }

  v13 = 0;
LABEL_4:

  return v13;
}

void nw_association_mark_flow_disconnected(void *a1, void *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v81 = __nwlog_obj();
    *buf = 136446210;
    v96 = "nw_association_mark_flow_disconnected";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s called with null association", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v93 = 0;
    if (__nwlog_fault(v16, &type, &v93))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v82 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v96 = "nw_association_mark_flow_disconnected";
          _os_log_impl(&dword_181A37000, v17, v82, "%{public}s called with null association", buf, 0xCu);
        }

        goto LABEL_73;
      }

      if (v93 != 1)
      {
        v17 = __nwlog_obj();
        v90 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v96 = "nw_association_mark_flow_disconnected";
          _os_log_impl(&dword_181A37000, v17, v90, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_73;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v86 = type;
      v87 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v87)
        {
          *buf = 136446210;
          v96 = "nw_association_mark_flow_disconnected";
          _os_log_impl(&dword_181A37000, v17, v86, "%{public}s called with null association, no backtrace", buf, 0xCu);
        }

        goto LABEL_73;
      }

      if (v87)
      {
        *buf = 136446466;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v86, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    goto LABEL_74;
  }

  if (!v4)
  {
    v83 = __nwlog_obj();
    *buf = 136446210;
    v96 = "nw_association_mark_flow_disconnected";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v93 = 0;
    if (__nwlog_fault(v16, &type, &v93))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v84 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v96 = "nw_association_mark_flow_disconnected";
          _os_log_impl(&dword_181A37000, v17, v84, "%{public}s called with null handle", buf, 0xCu);
        }

        goto LABEL_73;
      }

      if (v93 != 1)
      {
        v17 = __nwlog_obj();
        v91 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v96 = "nw_association_mark_flow_disconnected";
          _os_log_impl(&dword_181A37000, v17, v91, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_73;
      }

      v23 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v88 = type;
      v89 = os_log_type_enabled(v17, type);
      if (!v23)
      {
        if (v89)
        {
          *buf = 136446210;
          v96 = "nw_association_mark_flow_disconnected";
          _os_log_impl(&dword_181A37000, v17, v88, "%{public}s called with null handle, no backtrace", buf, 0xCu);
        }

        goto LABEL_73;
      }

      if (v89)
      {
        *buf = 136446466;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v23;
        _os_log_impl(&dword_181A37000, v17, v88, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_78;
    }

LABEL_74:
    if (!v16)
    {
      goto LABEL_137;
    }

LABEL_75:
    v51 = v16;
LABEL_136:
    free(v51);
    goto LABEL_137;
  }

  v6 = nw_path_parameters_copy_context(*(v3 + 2));
  nw_context_assert_queue(v6);

  v7 = *(v3 + 5);
  if (!v7)
  {
    if (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
    {
      goto LABEL_137;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    v13 = *(v3 + 1);
    v14 = v13;
    if (v13)
    {
      logging_description = _nw_endpoint_get_logging_description(v13);
    }

    else
    {
      logging_description = "<NULL>";
    }

    *buf = 136446466;
    v96 = "nw_association_mark_flow_disconnected";
    v97 = 2082;
    v98 = logging_description;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s <nw_association %{public}s> does not have a handle hash table", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v93 = 0;
    if (!__nwlog_fault(v16, &type, &v93))
    {
      goto LABEL_74;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        v19 = *(v3 + 1);
        v20 = v19;
        if (v19)
        {
          v21 = _nw_endpoint_get_logging_description(v19);
        }

        else
        {
          v21 = "<NULL>";
        }

        *buf = 136446466;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v21;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s <nw_association %{public}s> does not have a handle hash table", buf, 0x16u);
      }

LABEL_73:

      goto LABEL_74;
    }

    if (v93 != 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      v28 = type;
      if (os_log_type_enabled(v17, type))
      {
        v29 = *(v3 + 1);
        v30 = v29;
        if (v29)
        {
          v31 = _nw_endpoint_get_logging_description(v29);
        }

        else
        {
          v31 = "<NULL>";
        }

        *buf = 136446466;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v31;
        _os_log_impl(&dword_181A37000, v17, v28, "%{public}s <nw_association %{public}s> does not have a handle hash table, backtrace limit exceeded", buf, 0x16u);
      }

      goto LABEL_73;
    }

    v22 = __nw_create_backtrace_string();
    if (!v22)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      v47 = type;
      if (os_log_type_enabled(v17, type))
      {
        v48 = nw_endpoint_get_logging_description(*(v3 + 1));
        *buf = 136446466;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v48;
        _os_log_impl(&dword_181A37000, v17, v47, "%{public}s <nw_association %{public}s> does not have a handle hash table, no backtrace", buf, 0x16u);
      }

      goto LABEL_73;
    }

    v23 = v22;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    v24 = type;
    if (os_log_type_enabled(v17, type))
    {
      v25 = *(v3 + 1);
      v26 = v25;
      if (v25)
      {
        v27 = _nw_endpoint_get_logging_description(v25);
      }

      else
      {
        v27 = "<NULL>";
      }

      *buf = 136446722;
      v96 = "nw_association_mark_flow_disconnected";
      v97 = 2082;
      v98 = v27;
      v99 = 2082;
      v100 = v23;
      _os_log_impl(&dword_181A37000, v17, v24, "%{public}s <nw_association %{public}s> does not have a handle hash table, dumping backtrace:%{public}s", buf, 0x20u);
    }

LABEL_78:

    free(v23);
    if (!v16)
    {
      goto LABEL_137;
    }

    goto LABEL_75;
  }

  if (nw_hash_table_get_node(v7, v5, 0) || (nw_path_parameters_get_logging_disabled(*(v3 + 2)) & 1) != 0)
  {
    goto LABEL_85;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v8 = gconnectionLogObj;
  v9 = *(v3 + 1);
  v10 = v9;
  if (v9)
  {
    v11 = _nw_endpoint_get_logging_description(v9);
  }

  else
  {
    v11 = "<NULL>";
  }

  *buf = 136446722;
  v96 = "nw_association_mark_flow_disconnected";
  v97 = 2082;
  v98 = v11;
  v99 = 2048;
  v100 = v5;
  v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s <nw_association %{public}s> does not have handle %p registered", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v93 = 0;
  if (__nwlog_fault(v32, &type, &v93))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        v35 = *(v3 + 1);
        v36 = v35;
        if (v35)
        {
          v37 = _nw_endpoint_get_logging_description(v35);
        }

        else
        {
          v37 = "<NULL>";
        }

        *buf = 136446722;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v37;
        v99 = 2048;
        v100 = v5;
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s <nw_association %{public}s> does not have handle %p registered", buf, 0x20u);
      }
    }

    else if (v93 == 1)
    {
      v38 = __nw_create_backtrace_string();
      if (v38)
      {
        v39 = v38;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v40 = gconnectionLogObj;
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          v42 = nw_endpoint_get_logging_description(*(v3 + 1));
          *buf = 136446978;
          v96 = "nw_association_mark_flow_disconnected";
          v97 = 2082;
          v98 = v42;
          v99 = 2048;
          v100 = v5;
          v101 = 2082;
          v102 = v39;
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s <nw_association %{public}s> does not have handle %p registered, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v39);
        goto LABEL_83;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      v49 = type;
      if (os_log_type_enabled(v33, type))
      {
        v50 = nw_endpoint_get_logging_description(*(v3 + 1));
        *buf = 136446722;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v50;
        v99 = 2048;
        v100 = v5;
        _os_log_impl(&dword_181A37000, v33, v49, "%{public}s <nw_association %{public}s> does not have handle %p registered, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      v43 = type;
      if (os_log_type_enabled(v33, type))
      {
        v44 = *(v3 + 1);
        v45 = v44;
        if (v44)
        {
          v46 = _nw_endpoint_get_logging_description(v44);
        }

        else
        {
          v46 = "<NULL>";
        }

        *buf = 136446722;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v46;
        v99 = 2048;
        v100 = v5;
        _os_log_impl(&dword_181A37000, v33, v43, "%{public}s <nw_association %{public}s> does not have handle %p registered, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

LABEL_83:
  if (v32)
  {
    free(v32);
  }

LABEL_85:
  v52 = *(v3 + 6);
  if (!v52)
  {
    if (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
    {
      goto LABEL_137;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v59 = gconnectionLogObj;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v60 = *(v3 + 1);
      v61 = v60;
      if (v60)
      {
        v62 = _nw_endpoint_get_logging_description(v60);
      }

      else
      {
        v62 = "<NULL>";
      }

      *buf = 136446466;
      v96 = "nw_association_mark_flow_disconnected";
      v97 = 2082;
      v98 = v62;
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, "%{public}s <nw_association %{public}s> does not have a connected flow hash table", buf, 0x16u);
    }

LABEL_122:

    goto LABEL_137;
  }

  node = nw_hash_table_get_node(v52, v5, 0);
  if (!node)
  {
    if (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
    {
      goto LABEL_137;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v59 = gconnectionLogObj;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v63 = *(v3 + 1);
      v64 = v63;
      if (v63)
      {
        v65 = _nw_endpoint_get_logging_description(v63);
      }

      else
      {
        v65 = "<NULL>";
      }

      *buf = 136446722;
      v96 = "nw_association_mark_flow_disconnected";
      v97 = 2082;
      v98 = v65;
      v99 = 2048;
      v100 = v5;
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, "%{public}s <nw_association %{public}s> does not have connected flow %p registered", buf, 0x20u);
    }

    goto LABEL_122;
  }

  v54 = node;
  if (nw_hash_table_remove_node(*(v3 + 6), node) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
  {
    goto LABEL_137;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v55 = gconnectionLogObj;
  v56 = *(v3 + 1);
  v57 = v56;
  if (v56)
  {
    v58 = _nw_endpoint_get_logging_description(v56);
  }

  else
  {
    v58 = "<NULL>";
  }

  *buf = 136446722;
  v96 = "nw_association_mark_flow_disconnected";
  v97 = 2082;
  v98 = v58;
  v99 = 2048;
  v100 = v54;
  LODWORD(v92) = 32;
  v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p", buf, v92);

  type = OS_LOG_TYPE_ERROR;
  v93 = 0;
  if (__nwlog_fault(v66, &type, &v93))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v67 = gconnectionLogObj;
      v68 = type;
      if (os_log_type_enabled(v67, type))
      {
        v69 = *(v3 + 1);
        v70 = v69;
        if (v69)
        {
          v71 = _nw_endpoint_get_logging_description(v69);
        }

        else
        {
          v71 = "<NULL>";
        }

        *buf = 136446722;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v71;
        v99 = 2048;
        v100 = v54;
        _os_log_impl(&dword_181A37000, v67, v68, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p", buf, 0x20u);
      }

LABEL_133:

      goto LABEL_134;
    }

    if (v93 != 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v67 = gconnectionLogObj;
      v77 = type;
      if (os_log_type_enabled(v67, type))
      {
        v78 = nw_endpoint_get_logging_description(*(v3 + 1));
        *buf = 136446722;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v78;
        v99 = 2048;
        v100 = v54;
        _os_log_impl(&dword_181A37000, v67, v77, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p, backtrace limit exceeded", buf, 0x20u);
      }

      goto LABEL_133;
    }

    v72 = __nw_create_backtrace_string();
    if (!v72)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v67 = gconnectionLogObj;
      v79 = type;
      if (os_log_type_enabled(v67, type))
      {
        v80 = nw_endpoint_get_logging_description(*(v3 + 1));
        *buf = 136446722;
        v96 = "nw_association_mark_flow_disconnected";
        v97 = 2082;
        v98 = v80;
        v99 = 2048;
        v100 = v54;
        _os_log_impl(&dword_181A37000, v67, v79, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p, no backtrace", buf, 0x20u);
      }

      goto LABEL_133;
    }

    v73 = v72;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v74 = gconnectionLogObj;
    v75 = type;
    if (os_log_type_enabled(v74, type))
    {
      v76 = nw_endpoint_get_logging_description(*(v3 + 1));
      *buf = 136446978;
      v96 = "nw_association_mark_flow_disconnected";
      v97 = 2082;
      v98 = v76;
      v99 = 2048;
      v100 = v54;
      v101 = 2082;
      v102 = v73;
      _os_log_impl(&dword_181A37000, v74, v75, "%{public}s <nw_association %{public}s> failed to remove connected flow for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v73);
  }

LABEL_134:
  if (v66)
  {
    v51 = v66;
    goto LABEL_136;
  }

LABEL_137:
}

uint64_t NWParameters.ProtocolStack.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181E89400(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v8], v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = v7[*(v5 + 24)];
    sub_181A5513C(v7, type metadata accessor for URLEndpoint);
  }

  else
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  return v10;
}

uint64_t nw_protocol_options_is_masque(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
    {
      dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
    }

    if (nw_protocol_masque_get_definition(void)::definition)
    {
      v2 = os_retain(nw_protocol_masque_get_definition(void)::definition);
    }

    else
    {
      v2 = 0;
    }

    if (nw_protocol_options_matches_definition(a1, v2))
    {
      return 1;
    }

    if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
    }

    if (nw_protocol_masque_listener_get_definition(void)::definition)
    {
      v4 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
    }

    else
    {
      v4 = 0;
    }

    return nw_protocol_options_matches_definition(a1, v4);
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_masque";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);
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
        v15 = "nw_protocol_options_is_masque";
        v9 = "%{public}s called with null options";
LABEL_30:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
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
          v15 = "nw_protocol_options_is_masque";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_31;
      }

      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_masque";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_30;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_masque";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_plugin_retry_get_remote_endpoint(nw_protocol *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_108;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v44 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
          v22 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v33 = os_log_type_enabled(v20, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
          v22 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      if (!v33)
      {
        goto LABEL_83;
      }

      *buf = 136446466;
      v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
      v48 = 2082;
      v49 = backtrace_string;
      v34 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_82;
    }

    v20 = __nwlog_obj();
    v21 = type;
    if (!os_log_type_enabled(v20, type))
    {
      goto LABEL_108;
    }

    *buf = 136446210;
    v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
    v22 = "%{public}s called with null protocol";
LABEL_107:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_108;
  }

  handle = a1->handle;
  if (!handle)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_108;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v44 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
          v22 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v35 = os_log_type_enabled(v20, type);
      if (!backtrace_string)
      {
        if (v35)
        {
          *buf = 136446210;
          v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
          v22 = "%{public}s called with null protocol->handle, no backtrace";
          goto LABEL_107;
        }

        goto LABEL_108;
      }

      if (!v35)
      {
        goto LABEL_83;
      }

      *buf = 136446466;
      v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
      v48 = 2082;
      v49 = backtrace_string;
      v34 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_82;
    }

    v20 = __nwlog_obj();
    v21 = type;
    if (!os_log_type_enabled(v20, type))
    {
      goto LABEL_108;
    }

    *buf = 136446210;
    v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
    v22 = "%{public}s called with null protocol->handle";
    goto LABEL_107;
  }

  v3 = *(handle + 11);
  if (!v3)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null retry_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v19, &type, &v44))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
      v22 = "%{public}s called with null retry_plugin";
      goto LABEL_107;
    }

    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
        v22 = "%{public}s called with null retry_plugin, backtrace limit exceeded";
        goto LABEL_107;
      }

      goto LABEL_108;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v36 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
        v22 = "%{public}s called with null retry_plugin, no backtrace";
        goto LABEL_107;
      }

      goto LABEL_108;
    }

    if (!v36)
    {
      goto LABEL_83;
    }

    *buf = 136446466;
    v47 = "nw_protocol_plugin_retry_get_remote_endpoint";
    v48 = 2082;
    v49 = backtrace_string;
    v34 = "%{public}s called with null retry_plugin, dumping backtrace:%{public}s";
LABEL_82:
    _os_log_impl(&dword_181A37000, v20, v21, v34, buf, 0x16u);
    goto LABEL_83;
  }

  result = *v3;
  if (*v3)
  {
    return result;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    v6 = default_input_handler->handle;
    v7 = a1->default_input_handler;
    if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *default_input_handler[1].flow_id) != 0)
    {
      callbacks = v7[1].callbacks;
      if (callbacks)
      {
        v8 = 0;
        v7[1].callbacks = (&callbacks->add_input_handler + 1);
        v9 = default_input_handler->callbacks;
        if (!v9)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v8 = 0;
        v9 = default_input_handler->callbacks;
        if (!v9)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v8 = 1;
      v9 = default_input_handler->callbacks;
      if (!v9)
      {
        goto LABEL_41;
      }
    }

    get_remote_endpoint = v9->get_remote_endpoint;
    if (get_remote_endpoint)
    {
      result = get_remote_endpoint(default_input_handler);
      if (v8)
      {
        return result;
      }

      goto LABEL_17;
    }

LABEL_41:
    v25 = __nwlog_obj();
    name = default_input_handler->identifier->name;
    *buf = 136446722;
    v47 = "__nw_protocol_get_remote_endpoint";
    if (!name)
    {
      name = "invalid";
    }

    v48 = 2082;
    v49 = name;
    v50 = 2048;
    v51 = default_input_handler;
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v27, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_101;
        }

        v30 = default_input_handler->identifier->name;
        if (!v30)
        {
          v30 = "invalid";
        }

        *buf = 136446722;
        v47 = "__nw_protocol_get_remote_endpoint";
        v48 = 2082;
        v49 = v30;
        v50 = 2048;
        v51 = default_input_handler;
        v31 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_100:
        _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x20u);
        goto LABEL_101;
      }

      if (v44 != 1)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (!os_log_type_enabled(v28, type))
        {
          goto LABEL_101;
        }

        v42 = default_input_handler->identifier->name;
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v47 = "__nw_protocol_get_remote_endpoint";
        v48 = 2082;
        v49 = v42;
        v50 = 2048;
        v51 = default_input_handler;
        v31 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
        goto LABEL_100;
      }

      v38 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v39 = os_log_type_enabled(v28, type);
      if (!v38)
      {
        if (!v39)
        {
          goto LABEL_101;
        }

        v43 = default_input_handler->identifier->name;
        if (!v43)
        {
          v43 = "invalid";
        }

        *buf = 136446722;
        v47 = "__nw_protocol_get_remote_endpoint";
        v48 = 2082;
        v49 = v43;
        v50 = 2048;
        v51 = default_input_handler;
        v31 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
        goto LABEL_100;
      }

      if (v39)
      {
        v40 = default_input_handler->identifier->name;
        if (!v40)
        {
          v40 = "invalid";
        }

        *buf = 136446978;
        v47 = "__nw_protocol_get_remote_endpoint";
        v48 = 2082;
        v49 = v40;
        v50 = 2048;
        v51 = default_input_handler;
        v52 = 2082;
        v53 = v38;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v38);
    }

LABEL_101:
    if (v27)
    {
      free(v27);
    }

    result = 0;
    if (v8)
    {
      return result;
    }

LABEL_17:
    v12 = default_input_handler->handle;
    if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
    {
      v13 = default_input_handler[1].callbacks;
      if (v13)
      {
        v14 = (v13 - 1);
        default_input_handler[1].callbacks = v14;
        if (!v14)
        {
          v15 = result;
          v16 = *default_input_handler[1].flow_id;
          if (v16)
          {
            *default_input_handler[1].flow_id = 0;
            v16[2](v16);
            _Block_release(v16);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v17 = *default_input_handler[1].flow_id;
            if (v17)
            {
              _Block_release(v17);
            }
          }

          free(default_input_handler);
          return v15;
        }
      }
    }

    return result;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v47 = "__nw_protocol_get_remote_endpoint";
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (!__nwlog_fault(v19, &type, &v44))
  {
    goto LABEL_108;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v44 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v47 = "__nw_protocol_get_remote_endpoint";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_107;
      }

      goto LABEL_108;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v41 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446210;
        v47 = "__nw_protocol_get_remote_endpoint";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_107;
      }

      goto LABEL_108;
    }

    if (v41)
    {
      *buf = 136446466;
      v47 = "__nw_protocol_get_remote_endpoint";
      v48 = 2082;
      v49 = backtrace_string;
      v34 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_82;
    }

LABEL_83:
    free(backtrace_string);
    goto LABEL_108;
  }

  v20 = __nwlog_obj();
  v21 = type;
  if (os_log_type_enabled(v20, type))
  {
    *buf = 136446210;
    v47 = "__nw_protocol_get_remote_endpoint";
    v22 = "%{public}s called with null protocol";
    goto LABEL_107;
  }

LABEL_108:
  if (v19)
  {
    free(v19);
  }

  return 0;
}

uint64_t nw_protocol_common_get_remote_endpoint(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 40);
      v3 = *(a1 + 48);
      if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v1 + 64)) != 0)
      {
        v14 = *(v3 + 88);
        if (v14)
        {
          v4 = 0;
          *(v3 + 88) = v14 + 1;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v4 = 0;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v4 = 1;
        v5 = *(v1 + 24);
        if (!v5)
        {
          goto LABEL_44;
        }
      }

      v15 = *(v5 + 136);
      if (v15)
      {
        result = v15(v1);
        if (v4)
        {
          return result;
        }

        goto LABEL_23;
      }

LABEL_44:
      v25 = __nwlog_obj();
      v26 = *(v1 + 16);
      *buf = 136446722;
      v43 = "__nw_protocol_get_remote_endpoint";
      if (!v26)
      {
        v26 = "invalid";
      }

      v44 = 2082;
      v45 = v26;
      v46 = 2048;
      v47 = v1;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, 32);
      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (__nwlog_fault(v27, &type, &v40))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (!os_log_type_enabled(v28, type))
          {
            goto LABEL_80;
          }

          v30 = *(v1 + 16);
          if (!v30)
          {
            v30 = "invalid";
          }

          *buf = 136446722;
          v43 = "__nw_protocol_get_remote_endpoint";
          v44 = 2082;
          v45 = v30;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_79:
          _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x20u);
          goto LABEL_80;
        }

        if (v40 != 1)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (!os_log_type_enabled(v28, type))
          {
            goto LABEL_80;
          }

          v38 = *(v1 + 16);
          if (!v38)
          {
            v38 = "invalid";
          }

          *buf = 136446722;
          v43 = "__nw_protocol_get_remote_endpoint";
          v44 = 2082;
          v45 = v38;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
          goto LABEL_79;
        }

        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v34 = os_log_type_enabled(v28, type);
        if (!backtrace_string)
        {
          if (!v34)
          {
            goto LABEL_80;
          }

          v39 = *(v1 + 16);
          if (!v39)
          {
            v39 = "invalid";
          }

          *buf = 136446722;
          v43 = "__nw_protocol_get_remote_endpoint";
          v44 = 2082;
          v45 = v39;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
          goto LABEL_79;
        }

        if (v34)
        {
          if (*(v1 + 16))
          {
            v35 = *(v1 + 16);
          }

          else
          {
            v35 = "invalid";
          }

          *buf = 136446978;
          v43 = "__nw_protocol_get_remote_endpoint";
          v44 = 2082;
          v45 = v35;
          v46 = 2048;
          v47 = v1;
          v48 = 2082;
          v49 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
      }

LABEL_80:
      if (v27)
      {
        free(v27);
      }

      result = 0;
      if (v4)
      {
        return result;
      }

LABEL_23:
      v17 = *(v1 + 40);
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
      {
        v18 = *(v1 + 88);
        if (v18)
        {
          v19 = v18 - 1;
          *(v1 + 88) = v19;
          if (!v19)
          {
            v20 = result;
            v21 = *(v1 + 64);
            if (v21)
            {
              *(v1 + 64) = 0;
              v21[2](v21);
              _Block_release(v21);
            }

            if (*(v1 + 72))
            {
              v22 = *(v1 + 64);
              if (v22)
              {
                _Block_release(v22);
              }
            }

            free(v1);
            return v20;
          }
        }
      }

      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v43 = "nw_protocol_common_get_remote_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s get_remote_endpoint requires a default input handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v6, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_remote_endpoint";
          v9 = "%{public}s get_remote_endpoint requires a default input handler";
LABEL_36:
          v23 = v7;
          v24 = v8;
LABEL_37:
          _os_log_impl(&dword_181A37000, v23, v24, v9, buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v10 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(gLogObj, type);
        if (v10)
        {
          if (v13)
          {
            *buf = 136446466;
            v43 = "nw_protocol_common_get_remote_endpoint";
            v44 = 2082;
            v45 = v10;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s get_remote_endpoint requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v10);
          goto LABEL_38;
        }

        if (v13)
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_remote_endpoint";
          v9 = "%{public}s get_remote_endpoint requires a default input handler, no backtrace";
          v23 = v11;
          v24 = v12;
          goto LABEL_37;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_remote_endpoint";
          v9 = "%{public}s get_remote_endpoint requires a default input handler, backtrace limit exceeded";
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_common_get_remote_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v6, &type, &v40))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v43 = "nw_protocol_common_get_remote_endpoint";
      v9 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v40 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v43 = "nw_protocol_common_get_remote_endpoint";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    v36 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v37 = os_log_type_enabled(v7, type);
    if (v36)
    {
      if (v37)
      {
        *buf = 136446466;
        v43 = "nw_protocol_common_get_remote_endpoint";
        v44 = 2082;
        v45 = v36;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v36);
      goto LABEL_38;
    }

    if (v37)
    {
      *buf = 136446210;
      v43 = "nw_protocol_common_get_remote_endpoint";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_http_connection_state_connect(nw_protocol *a1, nw_protocol *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v37 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_protocol_http_connection_state_connect";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", applier, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v73) = 0;
    if (!__nwlog_fault(v38, type, &v73))
    {
      goto LABEL_94;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_94;
      }

      *applier = 136446210;
      *&applier[4] = "nw_protocol_http_connection_state_connect";
      v41 = "%{public}s called with null protocol";
LABEL_93:
      _os_log_impl(&dword_181A37000, v39, v40, v41, applier, 0xCu);
      goto LABEL_94;
    }

    if (v73 != 1)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "nw_protocol_http_connection_state_connect";
        v41 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v39 = __nwlog_obj();
    v40 = type[0];
    v54 = os_log_type_enabled(v39, type[0]);
    if (!backtrace_string)
    {
      if (v54)
      {
        *applier = 136446210;
        *&applier[4] = "nw_protocol_http_connection_state_connect";
        v41 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (!v54)
    {
      goto LABEL_65;
    }

    *applier = 136446466;
    *&applier[4] = "nw_protocol_http_connection_state_connect";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v55 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_64:
    _os_log_impl(&dword_181A37000, v39, v40, v55, applier, 0x16u);
    goto LABEL_65;
  }

  handle = a1->handle;
  if (!handle)
  {
    v42 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_protocol_http_connection_state_connect";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null http_connection_state", applier, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v73) = 0;
    if (!__nwlog_fault(v38, type, &v73))
    {
      goto LABEL_94;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (!os_log_type_enabled(v39, type[0]))
      {
        goto LABEL_94;
      }

      *applier = 136446210;
      *&applier[4] = "nw_protocol_http_connection_state_connect";
      v41 = "%{public}s called with null http_connection_state";
      goto LABEL_93;
    }

    if (v73 != 1)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "nw_protocol_http_connection_state_connect";
        v41 = "%{public}s called with null http_connection_state, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v39 = __nwlog_obj();
    v40 = type[0];
    v56 = os_log_type_enabled(v39, type[0]);
    if (!backtrace_string)
    {
      if (v56)
      {
        *applier = 136446210;
        *&applier[4] = "nw_protocol_http_connection_state_connect";
        v41 = "%{public}s called with null http_connection_state, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (!v56)
    {
      goto LABEL_65;
    }

    *applier = 136446466;
    *&applier[4] = "nw_protocol_http_connection_state_connect";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v55 = "%{public}s called with null http_connection_state, dumping backtrace:%{public}s";
    goto LABEL_64;
  }

  if (a2)
  {
    *type = 0;
    v81 = type;
    v82 = 0x3802000000;
    v83 = __Block_byref_object_copy__74065;
    v84 = __Block_byref_object_dispose__74066;
    remote_endpoint = nw_protocol_get_remote_endpoint(a1->default_input_handler->flow_id);
    v85 = nw_endpoint_copy(remote_endpoint);
    v86 |= 1u;
    v73 = 0;
    v74 = &v73;
    v75 = 0x3802000000;
    v76 = __Block_byref_object_copy__19_74067;
    v77 = __Block_byref_object_dispose__20_74068;
    parameters = nw_protocol_get_parameters(a1->default_input_handler->flow_id);
    if (parameters)
    {
      parameters = os_retain(parameters);
    }

    v78 = parameters;
    v79 |= 1u;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3802000000;
    v69 = __Block_byref_object_copy__21_74069;
    v70 = __Block_byref_object_dispose__22_74070;
    object = nw_parameters_copy_protocol_options_legacy(v74[5], handle);
    v72 |= 1u;
    v6 = v67[5];
    if (v6)
    {
      v7 = v6;
      v8 = nw_protocol_copy_http_connection_state_definition_onceToken;
      v9 = v7;
      if (v8 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_connection_state_definition_onceToken, &__block_literal_global_21_76499);
      }

      v10 = nw_protocol_options_matches_definition(v9, nw_protocol_copy_http_connection_state_definition_http_connection_state_definition);

      if (v10)
      {
        *applier = 0;
        *&applier[8] = applier;
        *&applier[16] = 0x3032000000;
        v96 = __Block_byref_object_copy__75915;
        v97 = __Block_byref_object_dispose__75916;
        v98 = 0;
        v89 = MEMORY[0x1E69E9820];
        v90 = 3221225472;
        v91 = __nw_http_connection_state_options_copy_connection_state_storage_block_invoke;
        v92 = &unk_1E6A3A858;
        v93 = applier;
        nw_protocol_options_access_handle(v9, &v89);
        v11 = *(*&applier[8] + 40);
        _Block_object_dispose(applier, 8);

        if (v11)
        {
          if (nw_endpoint_get_hostname(*(v81 + 5)))
          {
            v12 = *(v81 + 5);
            v89 = 0;
            v90 = &v89;
            v91 = 0x2000000000;
            LOBYTE(v92) = 1;
            v13 = nw_setting_http_early_data_exclude_domains;
            networkd_settings_init();
            if (sCachedSettings)
            {
              pthread_mutex_lock(&sSettingsMutex);
              v14 = sCachedSettings;
              if (sCachedSettings && (Class = object_getClass(sCachedSettings), v13) && Class == MEMORY[0x1E69E9E80] && (value = xpc_dictionary_get_value(v14, v13)) != 0 && (v17 = value, object_getClass(value) == MEMORY[0x1E69E9E50]))
              {
                xpc_retain(v17);
                pthread_mutex_unlock(&sSettingsMutex);
                *applier = MEMORY[0x1E69E9820];
                *&applier[8] = 0x40000000;
                *&applier[16] = __nw_settings_is_http_early_data_allowed_for_endpoint_block_invoke;
                v96 = &unk_1E6A3DA48;
                v97 = &v89;
                v98 = v12;
                xpc_array_apply(v17, applier);
              }

              else
              {
                pthread_mutex_unlock(&sSettingsMutex);
              }
            }

            v18 = *(v90 + 24);
            _Block_object_dispose(&v89, 8);
            if (v18 == 1)
            {
              v19 = handle[27];
              storage_partition = nw_parameters_get_storage_partition(v74[5]);
              v21 = *(v81 + 5);
              v22 = nw_parameters_copy_context(v74[5]);
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 0x40000000;
              v65[2] = ___ZL41nw_protocol_http_connection_state_connectP11nw_protocolS0__block_invoke;
              v65[3] = &unk_1E6A39E20;
              v65[4] = v19;
              v65[5] = &v73;
              v65[6] = type;
              v65[7] = &v66;
              v11 = v11;
              v23 = v21;
              v24 = v22;
              v25 = v65;
              v26 = *(v11 + 1);
              if (v26)
              {
                v89 = 0;
                v90 = &v89;
                v91 = 0x3032000000;
                v92 = __Block_byref_object_copy__55563;
                v93 = __Block_byref_object_dispose__55564;
                v94 = 0;
                *applier = MEMORY[0x1E69E9820];
                *&applier[8] = 3221225472;
                *&applier[16] = __nw_http_connection_state_storage_lookup_block_invoke;
                v96 = &unk_1E6A35950;
                v101 = &v89;
                v97 = v11;
                v102 = storage_partition;
                v27 = v23;
                v98 = v27;
                v28 = v24;
                v99 = v28;
                v100 = v25;
                nw_storage_lookup_alt_svc(v26, storage_partition, v27, v28, applier);

                _Block_object_dispose(&v89, 8);
              }

              else
              {
                v30 = objc_alloc_init(MEMORY[0x1E695ACE0]);
                v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(v23)];
                [v30 setHost:v31];

                [v30 setPort:nw_endpoint_get_port(v23)];
                if (storage_partition)
                {
                  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:storage_partition];
                  [v30 setPartition:v32];
                }

                else
                {
                  [v30 setPartition:0];
                }

                v33 = [*(v11 + 2) HTTPServiceEntriesWithFilter:v30];
                *applier = MEMORY[0x1E69E9820];
                *&applier[8] = 3221225472;
                *&applier[16] = __nw_http_connection_state_storage_lookup_block_invoke_3;
                v96 = &unk_1E6A3B8E8;
                v97 = v33;
                v100 = v25;
                v98 = v11;
                v99 = v30;
                v34 = v30;
                v35 = v33;
                nw_queue_context_async_if_needed(v24, applier);
              }

              if (v24)
              {
                os_release(v24);
              }

              v36 = 1;
LABEL_112:
              os_release(v11);
LABEL_113:
              _Block_object_dispose(&v66, 8);
              if ((v72 & 1) != 0 && object)
              {
                os_release(object);
              }

              _Block_object_dispose(&v73, 8);
              if ((v79 & 1) != 0 && v78)
              {
                os_release(v78);
              }

              _Block_object_dispose(type, 8);
              if ((v86 & 1) != 0 && v85)
              {
                os_release(v85);
              }

              return v36;
            }
          }

          v29 = 0;
LABEL_110:
          v36 = nw_http_connection_state_finish_lookup(handle, v74[5], v67[5], *(v81 + 5), 0);
          if ((v29 & 1) != 0 || !v11)
          {
            goto LABEL_113;
          }

          goto LABEL_112;
        }

LABEL_109:
        v29 = 1;
        goto LABEL_110;
      }

      v49 = __nwlog_obj();
      *applier = 136446210;
      *&applier[4] = "nw_http_connection_state_options_copy_connection_state_storage";
      v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s protocol options are not http_connection_state", applier, 12);

      v88 = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (__nwlog_fault(v50, &v88, &v87))
      {
        if (v88 == OS_LOG_TYPE_FAULT)
        {
          v51 = __nwlog_obj();
          v52 = v88;
          if (os_log_type_enabled(v51, v88))
          {
            *applier = 136446210;
            *&applier[4] = "nw_http_connection_state_options_copy_connection_state_storage";
            _os_log_impl(&dword_181A37000, v51, v52, "%{public}s protocol options are not http_connection_state", applier, 0xCu);
          }
        }

        else if (v87 == 1)
        {
          v60 = __nw_create_backtrace_string();
          v51 = __nwlog_obj();
          v61 = v88;
          v62 = os_log_type_enabled(v51, v88);
          if (v60)
          {
            if (v62)
            {
              *applier = 136446466;
              *&applier[4] = "nw_http_connection_state_options_copy_connection_state_storage";
              *&applier[12] = 2082;
              *&applier[14] = v60;
              _os_log_impl(&dword_181A37000, v51, v61, "%{public}s protocol options are not http_connection_state, dumping backtrace:%{public}s", applier, 0x16u);
            }

            free(v60);
            goto LABEL_106;
          }

          if (v62)
          {
            *applier = 136446210;
            *&applier[4] = "nw_http_connection_state_options_copy_connection_state_storage";
            _os_log_impl(&dword_181A37000, v51, v61, "%{public}s protocol options are not http_connection_state, no backtrace", applier, 0xCu);
          }
        }

        else
        {
          v51 = __nwlog_obj();
          v63 = v88;
          if (os_log_type_enabled(v51, v88))
          {
            *applier = 136446210;
            *&applier[4] = "nw_http_connection_state_options_copy_connection_state_storage";
            _os_log_impl(&dword_181A37000, v51, v63, "%{public}s protocol options are not http_connection_state, backtrace limit exceeded", applier, 0xCu);
          }
        }
      }

LABEL_106:
      if (v50)
      {
        free(v50);
      }

      v11 = 0;
      goto LABEL_109;
    }

    v44 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_protocol_http_connection_state_connect";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null connection_state_options", applier, 12);
    LOBYTE(v89) = 16;
    v88 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v45, &v89, &v88))
    {
      if (v89 == 17)
      {
        v46 = __nwlog_obj();
        v47 = v89;
        if (os_log_type_enabled(v46, v89))
        {
          *applier = 136446210;
          *&applier[4] = "nw_protocol_http_connection_state_connect";
          v48 = "%{public}s called with null connection_state_options";
LABEL_99:
          _os_log_impl(&dword_181A37000, v46, v47, v48, applier, 0xCu);
        }
      }

      else if (v88 == OS_LOG_TYPE_INFO)
      {
        v58 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v47 = v89;
        v59 = os_log_type_enabled(v46, v89);
        if (v58)
        {
          if (v59)
          {
            *applier = 136446466;
            *&applier[4] = "nw_protocol_http_connection_state_connect";
            *&applier[12] = 2082;
            *&applier[14] = v58;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null connection_state_options, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(v58);
          goto LABEL_100;
        }

        if (v59)
        {
          *applier = 136446210;
          *&applier[4] = "nw_protocol_http_connection_state_connect";
          v48 = "%{public}s called with null connection_state_options, no backtrace";
          goto LABEL_99;
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v47 = v89;
        if (os_log_type_enabled(v46, v89))
        {
          *applier = 136446210;
          *&applier[4] = "nw_protocol_http_connection_state_connect";
          v48 = "%{public}s called with null connection_state_options, backtrace limit exceeded";
          goto LABEL_99;
        }
      }
    }

LABEL_100:
    if (v45)
    {
      free(v45);
    }

    v36 = 0;
    goto LABEL_113;
  }

  v43 = __nwlog_obj();
  *applier = 136446210;
  *&applier[4] = "nw_protocol_http_connection_state_connect";
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null other_protocol", applier, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v73) = 0;
  if (!__nwlog_fault(v38, type, &v73))
  {
    goto LABEL_94;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v73 != 1)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "nw_protocol_http_connection_state_connect";
        v41 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v39 = __nwlog_obj();
    v40 = type[0];
    v57 = os_log_type_enabled(v39, type[0]);
    if (!backtrace_string)
    {
      if (v57)
      {
        *applier = 136446210;
        *&applier[4] = "nw_protocol_http_connection_state_connect";
        v41 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (v57)
    {
      *applier = 136446466;
      *&applier[4] = "nw_protocol_http_connection_state_connect";
      *&applier[12] = 2082;
      *&applier[14] = backtrace_string;
      v55 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

LABEL_65:
    free(backtrace_string);
    goto LABEL_94;
  }

  v39 = __nwlog_obj();
  v40 = type[0];
  if (os_log_type_enabled(v39, type[0]))
  {
    *applier = 136446210;
    *&applier[4] = "nw_protocol_http_connection_state_connect";
    v41 = "%{public}s called with null other_protocol";
    goto LABEL_93;
  }

LABEL_94:
  if (v38)
  {
    free(v38);
  }

  return 0;
}

uint64_t nw_parameters_get_storage_partition(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_attribution_context();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_storage_partition";
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
        v12 = "nw_parameters_get_storage_partition";
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
            v12 = "nw_parameters_get_storage_partition";
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
        v12 = "nw_parameters_get_storage_partition";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_storage_partition";
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

void ___ZL41nw_protocol_http_connection_state_connectP11nw_protocolS0__block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = (*(a1[4] + 16))();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  if ((*(v10 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447746;
      *&buf[4] = "nw_protocol_http_connection_state_connect_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 114;
      *&buf[22] = 2080;
      v40 = " ";
      *v41 = 2112;
      *&v41[2] = a2;
      *&v41[10] = 2112;
      *&v41[12] = a3;
      *&v41[20] = 2112;
      *&v41[22] = a4;
      v42 = 2112;
      v43 = a5;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%slookup result %@ %@ %@ %@", buf, 0x48u);
    }
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  if (nw_parameters_has_transforms(*(*(a1[5] + 8) + 40)))
  {
    v12 = *(*(a1[6] + 8) + 40);
    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v13 = nw_protocol_copy_quic_stream_definition_quic_definition;
    nw_endpoint_add_alternative(v12, a2, v13);
    if (v13)
    {
      os_release(v13);
    }

    LODWORD(a2) = 1;
LABEL_11:
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  LODWORD(a2) = 0;
  if (!a3)
  {
LABEL_22:
    nw_http_connection_state_finish_lookup(v11, *(*(a1[5] + 8) + 40), *(*(a1[7] + 8) + 40), *(*(a1[6] + 8) + 40), a2);
    return;
  }

LABEL_14:
  if (!a4 || !a5)
  {
    goto LABEL_22;
  }

  http_messaging_options = nw_parameters_find_http_messaging_options(*(*(a1[5] + 8) + 40), v11);
  if (http_messaging_options)
  {
    v15 = http_messaging_options;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    if (nw_protocol_options_matches_definition(v15, nw_protocol_copy_http_messaging_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_messaging_options_set_early_data_state_block_invoke;
      v40 = &unk_1E6A3AC30;
      *v41 = v16;
      *&v41[8] = v17;
      *&v41[16] = v18;
      nw_protocol_options_access_handle(v15, buf);

LABEL_21:
      os_release(v15);
      goto LABEL_22;
    }

    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_set_early_data_state";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s protocol options are not http_messaging", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v26, &type, &v37))
    {
LABEL_51:
      if (v26)
      {
        free(v26);
      }

      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_early_data_state";
        v29 = "%{public}s protocol options are not http_messaging";
LABEL_48:
        v34 = v27;
        v35 = v28;
LABEL_49:
        _os_log_impl(&dword_181A37000, v34, v35, v29, buf, 0xCu);
      }
    }

    else
    {
      if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v36 = type;
        v33 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_messaging_options_set_early_data_state";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v36, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_51;
        }

        if (!v33)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_early_data_state";
        v29 = "%{public}s protocol options are not http_messaging, no backtrace";
        v34 = v27;
        v35 = v36;
        goto LABEL_49;
      }

      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_early_data_state";
        v29 = "%{public}s protocol options are not http_messaging, backtrace limit exceeded";
        goto LABEL_48;
      }
    }

LABEL_50:

    goto LABEL_51;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http_connection_state_connect_block_invoke";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null http_messaging_options", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (!__nwlog_fault(v21, &type, &v37))
  {
    goto LABEL_56;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connection_state_connect_block_invoke";
    v24 = "%{public}s called with null http_messaging_options";
    goto LABEL_55;
  }

  if (v37 != 1)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connection_state_connect_block_invoke";
    v24 = "%{public}s called with null http_messaging_options, backtrace limit exceeded";
    goto LABEL_55;
  }

  v30 = __nw_create_backtrace_string();
  v22 = __nwlog_obj();
  v23 = type;
  v31 = os_log_type_enabled(v22, type);
  if (v30)
  {
    if (v31)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_connection_state_connect_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v30;
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null http_messaging_options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v30);
    goto LABEL_56;
  }

  if (v31)
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connection_state_connect_block_invoke";
    v24 = "%{public}s called with null http_messaging_options, no backtrace";
LABEL_55:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
  }

LABEL_56:
  if (v21)
  {
    free(v21);
  }
}

uint64_t __nw_protocol_http_connection_state_create_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void nw_protocol_plugins_notify(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_plugins_notify";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_plugins_notify";
      v10 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_plugins_notify";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v7)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!v13)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_plugins_notify";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_plugins_notify";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_36;
  }

  v3 = a1;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = a2;
    if (a3 == 15)
    {
      nw_protocol_plugins_handle_reset(v4 + 64, a1, a2);
      a1 = v3;
      a2 = v5;
      a3 = 15;
    }

    nw_protocol_common_notify(a1, a2, a3);
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_plugins_notify";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol->handle", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_plugins_notify";
    v10 = "%{public}s called with null protocol->handle";
    goto LABEL_35;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_plugins_notify";
    v10 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
    goto LABEL_35;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_plugins_notify";
    v10 = "%{public}s called with null protocol->handle, no backtrace";
    goto LABEL_35;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_plugins_notify";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
LABEL_37:
    free(v7);
  }
}

uint64_t nw_protocol_http_client_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0x1E8uLL, 0x1E0C4263uLL);
  v6 = v5;
  if (v5)
  {
    v5[60] = 0;
    *(v5 + 28) = 0u;
    *(v5 + 29) = 0u;
    *(v5 + 26) = 0u;
    *(v5 + 27) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 25) = 0u;
    *(v5 + 22) = 0u;
    *(v5 + 23) = 0u;
    *(v5 + 20) = 0u;
    *(v5 + 21) = 0u;
    *(v5 + 18) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
LABEL_12:
    if (gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *block = 136446722;
        *&block[4] = "nw_protocol_http_client_create";
        *&block[12] = 2082;
        *&block[14] = v6 + 114;
        *&block[22] = 2080;
        v37 = " ";
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", block, 0x20u);
      }
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *block = 136446722;
  *&block[4] = "nw_protocol_http_client_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  *&block[12] = 2048;
  *&block[14] = 1;
  *&block[22] = 2048;
  v37 = 488;
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict_calloc(%zu, %zu) failed", block, 32);
  result = __nwlog_should_abort(v9);
  if (result || ((free(v9), MEMORY[0x1E0] = 0, MEMORY[0x1D0] = 0u, MEMORY[0x1C0] = 0u, MEMORY[0x1B0] = 0u, MEMORY[0x1A0] = 0u, MEMORY[0x190] = 0u, MEMORY[0x180] = 0u, MEMORY[0x170] = 0u, MEMORY[0x160] = 0u, MEMORY[0x150] = 0u, MEMORY[0x140] = 0u, MEMORY[0x130] = 0u, MEMORY[0x120] = 0u, MEMORY[0x110] = 0u, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0xA0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0] = 0u, MEMORY[0xF8] = 0, MEMORY[0x108] = 0, MEMORY[0x118] = 0, MEMORY[0x158] = 0, MEMORY[0x168] = 0, MEMORY[0x190] = 0, MEMORY[0x198] = 0, MEMORY[0x1C8] = 0, MEMORY[0x1D8] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v11 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v12 = 2) : (v12 = 3), *block = 136446210, *&block[4] = "nw_protocol_http_client_create", LODWORD(v33) = 12, v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strict_placement_new(nw_protocol_http_client, strict_calloc(1, sizeof(nw_protocol_http_client)),) failed", block, v33), result = __nwlog_should_abort(v13), result))
  {
    __break(1u);
    return result;
  }

  free(v13);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (nw_protocol_http_client_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_client_identifier::onceToken, &__block_literal_global_30594);
  }

  *(v6 + 16) = &nw_protocol_http_client_identifier::protocol_identifier;
  if (nw_protocol_http_client_get_callbacks(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http_client_get_callbacks(void)::onceToken, &__block_literal_global_21_30595);
  }

  *(v6 + 24) = &nw_protocol_http_client_get_callbacks(void)::protocol_callbacks;
  *(v6 + 40) = v6;
  v14 = nw_parameters_copy_context(a4);
  v15 = *(v6 + 464);
  if ((v15 & 1) != 0 && *(v6 + 456))
  {
    v16 = v14;
    os_release(*(v6 + 456));
    v14 = v16;
    v15 = *(v6 + 464);
  }

  *(v6 + 200) = 0;
  *(v6 + 456) = v14;
  *(v6 + 464) = v15 | 1;
  *(v6 + 72) = v6 + 200;
  *(v6 + 208) = v6 + 200;
  *(v6 + 216) = 0;
  *(v6 + 224) = v6 + 216;
  *(v6 + 232) = 0;
  *(v6 + 240) = v6 + 232;
  *(v6 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v17 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v6, v17, nw_protocol_http_client_create::$_0::__invoke, nw_protocol_http_client_create::$_1::__invoke);
  if (v17)
  {
    os_release(v17);
  }

  v18 = *(v6 + 40);
  if (!v18)
  {
    v21 = __nwlog_obj();
    *block = 136446210;
    *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
    LODWORD(v32) = 12;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null protocol->handle", block, v32);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v22, &type, &v34))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_60;
      }

      *block = 136446210;
      *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
      v25 = "%{public}s called with null protocol->handle";
      goto LABEL_59;
    }

    if (v34 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_60;
      }

      *block = 136446210;
      *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
      v25 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_59;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v29 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (!v29)
      {
        goto LABEL_60;
      }

      *block = 136446210;
      *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
      v25 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_59;
    }

    if (v29)
    {
      *block = 136446466;
      *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
      *&block[12] = 2082;
      *&block[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", block, 0x16u);
    }

    free(backtrace_string);
LABEL_60:
    if (!v22)
    {
      goto LABEL_27;
    }

LABEL_61:
    free(v22);
    goto LABEL_27;
  }

  v19 = *(v18 + 72);
  if (!v19)
  {
    v27 = __nwlog_obj();
    *block = 136446210;
    *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
    LODWORD(v32) = 12;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null metadata_plugin", block, v32);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v22, &type, &v34))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_60;
      }

      *block = 136446210;
      *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
      v25 = "%{public}s called with null metadata_plugin";
      goto LABEL_59;
    }

    if (v34 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_60;
      }

      *block = 136446210;
      *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
      v25 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_59;
    }

    v30 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v31 = os_log_type_enabled(v23, type);
    if (v30)
    {
      if (v31)
      {
        *block = 136446466;
        *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
        *&block[12] = 2082;
        *&block[14] = v30;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s", block, 0x16u);
      }

      free(v30);
      if (!v22)
      {
        goto LABEL_27;
      }

      goto LABEL_61;
    }

    if (v31)
    {
      *block = 136446210;
      *&block[4] = "nw_protocol_plugin_metadata_set_size_callback";
      v25 = "%{public}s called with null metadata_plugin, no backtrace";
LABEL_59:
      _os_log_impl(&dword_181A37000, v23, v24, v25, block, 0xCu);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  *(v19 + 112) = nw_protocol_http_client_report_transfer_size;
LABEL_27:
  *(v6 + 88) = v6 + 344;
  nw_protocol_plugin_retry_set_callbacks(v6, nw_protocol_http_client_create::$_2::__invoke, nw_protocol_http_client_create::$_3::__invoke, nw_protocol_http_client_create::$_4::__invoke);
  *(v6 + 64) = v6 + 104;
  nw_protocol_plugin_name_set_callbacks(v6, nw_protocol_http_client_create::$_5::__invoke);
  v20 = *(v6 + 456);
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 0x40000000;
  *&block[16] = ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke;
  v37 = &__block_descriptor_tmp_18_30596;
  v38 = v20;
  if (nw_http_client_register_channel_flow_changes(nw_context *)::onceToken != -1)
  {
    dispatch_once(&nw_http_client_register_channel_flow_changes(nw_context *)::onceToken, block);
  }

  return v6;
}

void nw_protocol_plugin_metadata_set_callbacks(uint64_t a1, void *object, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v14, &type, &v32))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v32 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_91;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v24 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (!v24)
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_91;
      }

      if (v24)
      {
        *buf = 136446466;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v36 = 2082;
        v37 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_92:
      if (v14)
      {
        goto LABEL_93;
      }

      return;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v17 = "%{public}s called with null protocol";
    goto LABEL_91;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v14, &type, &v32))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v32 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_91;
      }

      v25 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v26 = os_log_type_enabled(v15, type);
      if (!v25)
      {
        if (!v26)
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_91;
      }

      if (!v26)
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v35 = "nw_protocol_plugin_metadata_set_callbacks";
      v36 = 2082;
      v37 = v25;
      v27 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v17 = "%{public}s called with null protocol->handle";
LABEL_91:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_92;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null metadata_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v14, &type, &v32))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v32 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
        goto LABEL_91;
      }

      v25 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v28 = os_log_type_enabled(v15, type);
      if (!v25)
      {
        if (!v28)
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null metadata_plugin, no backtrace";
        goto LABEL_91;
      }

      if (!v28)
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v35 = "nw_protocol_plugin_metadata_set_callbacks";
      v36 = 2082;
      v37 = v25;
      v27 = "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v17 = "%{public}s called with null metadata_plugin";
    goto LABEL_91;
  }

  if (!a3)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null input_processor", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v14, &type, &v32))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v32 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null input_processor, backtrace limit exceeded";
        goto LABEL_91;
      }

      v25 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v29 = os_log_type_enabled(v15, type);
      if (!v25)
      {
        if (!v29)
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v35 = "nw_protocol_plugin_metadata_set_callbacks";
        v17 = "%{public}s called with null input_processor, no backtrace";
        goto LABEL_91;
      }

      if (!v29)
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v35 = "nw_protocol_plugin_metadata_set_callbacks";
      v36 = 2082;
      v37 = v25;
      v27 = "%{public}s called with null input_processor, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v17 = "%{public}s called with null input_processor";
    goto LABEL_91;
  }

  if (!a4)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null output_processor", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v14, &type, &v32))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v35 = "nw_protocol_plugin_metadata_set_callbacks";
      v17 = "%{public}s called with null output_processor";
      goto LABEL_91;
    }

    if (v32 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v35 = "nw_protocol_plugin_metadata_set_callbacks";
      v17 = "%{public}s called with null output_processor, backtrace limit exceeded";
      goto LABEL_91;
    }

    v25 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v30 = os_log_type_enabled(v15, type);
    if (!v25)
    {
      if (!v30)
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v35 = "nw_protocol_plugin_metadata_set_callbacks";
      v17 = "%{public}s called with null output_processor, no backtrace";
      goto LABEL_91;
    }

    if (!v30)
    {
      goto LABEL_65;
    }

    *buf = 136446466;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v36 = 2082;
    v37 = v25;
    v27 = "%{public}s called with null output_processor, dumping backtrace:%{public}s";
LABEL_64:
    _os_log_impl(&dword_181A37000, v15, v16, v27, buf, 0x16u);
    goto LABEL_65;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (object)
    {
      v10 = os_retain(object);
      v11 = *(v6 + 88);
      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(v6 + 88);
      if ((v11 & 1) == 0)
      {
LABEL_13:
        *(v6 + 80) = v10;
        *(v6 + 88) = v11 | 1;
        *(v6 + 96) = a3;
        *(v6 + 104) = a4;
        *(v6 + 128) = a1;
        v9[10] = nw_protocol_plugin_metadata_get_input_frames;
        v9[12] = nw_protocol_plugin_metadata_finalize_output_frames;
        v9[9] = nw_protocol_plugin_metadata_output_available;
        v9[4] = nw_protocol_plugins_disconnect;
        v9[5] = nw_protocol_plugins_connected;
        v9[23] = nw_protocol_plugins_input_finished;
        v9[6] = nw_protocol_plugins_disconnected;
        v9[7] = nw_protocol_plugins_error;
        v9[20] = nw_protocol_plugins_notify;
        v9[32] = nw_protocol_plugins_reset;
        return;
      }
    }

    v12 = *(v6 + 80);
    if (v12)
    {
      os_release(v12);
      v11 = *(v6 + 88);
    }

    goto LABEL_13;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v35 = "nw_protocol_plugin_metadata_set_callbacks";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null callbacks", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (!__nwlog_fault(v14, &type, &v32))
  {
    goto LABEL_92;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v17 = "%{public}s called with null callbacks";
    goto LABEL_91;
  }

  if (v32 != 1)
  {
    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v17 = "%{public}s called with null callbacks, backtrace limit exceeded";
    goto LABEL_91;
  }

  v25 = __nw_create_backtrace_string();
  v15 = __nwlog_obj();
  v16 = type;
  v31 = os_log_type_enabled(v15, type);
  if (!v25)
  {
    if (!v31)
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v17 = "%{public}s called with null callbacks, no backtrace";
    goto LABEL_91;
  }

  if (v31)
  {
    *buf = 136446466;
    v35 = "nw_protocol_plugin_metadata_set_callbacks";
    v36 = 2082;
    v37 = v25;
    v27 = "%{public}s called with null callbacks, dumping backtrace:%{public}s";
    goto LABEL_64;
  }

LABEL_65:
  free(v25);
  if (v14)
  {
LABEL_93:
    free(v14);
  }
}

void nw_protocol_plugin_retry_set_callbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_99;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_98;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v19 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v19)
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_98;
      }

      if (v19)
      {
        *buf = 136446466;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_99:
      if (v8)
      {
        goto LABEL_100;
      }

      return;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null protocol";
    goto LABEL_98;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_99;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_98;
      }

      v20 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v21 = os_log_type_enabled(v9, type);
      if (!v20)
      {
        if (!v21)
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_98;
      }

      if (!v21)
      {
        goto LABEL_68;
      }

      *buf = 136446466;
      v31 = "nw_protocol_plugin_retry_set_callbacks";
      v32 = 2082;
      v33 = v20;
      v22 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null protocol->handle";
LABEL_98:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_99;
  }

  v5 = *(v4 + 88);
  if (!v5)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null retry_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_99;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null retry_plugin, backtrace limit exceeded";
        goto LABEL_98;
      }

      v20 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v23 = os_log_type_enabled(v9, type);
      if (!v20)
      {
        if (!v23)
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null retry_plugin, no backtrace";
        goto LABEL_98;
      }

      if (!v23)
      {
        goto LABEL_68;
      }

      *buf = 136446466;
      v31 = "nw_protocol_plugin_retry_set_callbacks";
      v32 = 2082;
      v33 = v20;
      v22 = "%{public}s called with null retry_plugin, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null retry_plugin";
    goto LABEL_98;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null retry_processor", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_99;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null retry_processor, backtrace limit exceeded";
        goto LABEL_98;
      }

      v20 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v24 = os_log_type_enabled(v9, type);
      if (!v20)
      {
        if (!v24)
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null retry_processor, no backtrace";
        goto LABEL_98;
      }

      if (!v24)
      {
        goto LABEL_68;
      }

      *buf = 136446466;
      v31 = "nw_protocol_plugin_retry_set_callbacks";
      v32 = 2082;
      v33 = v20;
      v22 = "%{public}s called with null retry_processor, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null retry_processor";
    goto LABEL_98;
  }

  if (!a3)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null connect_processor", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_99;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null connect_processor, backtrace limit exceeded";
        goto LABEL_98;
      }

      v20 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v25 = os_log_type_enabled(v9, type);
      if (!v20)
      {
        if (!v25)
        {
          goto LABEL_99;
        }

        *buf = 136446210;
        v31 = "nw_protocol_plugin_retry_set_callbacks";
        v11 = "%{public}s called with null connect_processor, no backtrace";
        goto LABEL_98;
      }

      if (!v25)
      {
        goto LABEL_68;
      }

      *buf = 136446466;
      v31 = "nw_protocol_plugin_retry_set_callbacks";
      v32 = 2082;
      v33 = v20;
      v22 = "%{public}s called with null connect_processor, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null connect_processor";
    goto LABEL_98;
  }

  if (!a4)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null disconnect_processor", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v8, &type, &v28))
    {
      goto LABEL_99;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v31 = "nw_protocol_plugin_retry_set_callbacks";
      v11 = "%{public}s called with null disconnect_processor";
      goto LABEL_98;
    }

    if (v28 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v31 = "nw_protocol_plugin_retry_set_callbacks";
      v11 = "%{public}s called with null disconnect_processor, backtrace limit exceeded";
      goto LABEL_98;
    }

    v20 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v26 = os_log_type_enabled(v9, type);
    if (!v20)
    {
      if (!v26)
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v31 = "nw_protocol_plugin_retry_set_callbacks";
      v11 = "%{public}s called with null disconnect_processor, no backtrace";
      goto LABEL_98;
    }

    if (!v26)
    {
      goto LABEL_68;
    }

    *buf = 136446466;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v32 = 2082;
    v33 = v20;
    v22 = "%{public}s called with null disconnect_processor, dumping backtrace:%{public}s";
LABEL_67:
    _os_log_impl(&dword_181A37000, v9, v10, v22, buf, 0x16u);
    goto LABEL_68;
  }

  v5[5] = a4;
  v5[6] = a2;
  v5[4] = a3;
  v6 = *(a1 + 24);
  if (v6)
  {
    v6[3] = nw_protocol_plugin_retry_connect;
    v6[14] = nw_protocol_plugin_retry_get_parameters;
    v6[17] = nw_protocol_plugin_retry_get_remote_endpoint;
    v6[4] = nw_protocol_plugins_disconnect;
    v6[5] = nw_protocol_plugins_connected;
    v6[23] = nw_protocol_plugins_input_finished;
    v6[6] = nw_protocol_plugins_disconnected;
    v6[7] = nw_protocol_plugins_error;
    v6[20] = nw_protocol_plugins_notify;
    v6[32] = nw_protocol_plugins_reset;
    return;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_protocol_plugin_retry_set_callbacks";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null callbacks", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v8, &type, &v28))
  {
    goto LABEL_99;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null callbacks";
    goto LABEL_98;
  }

  if (v28 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null callbacks, backtrace limit exceeded";
    goto LABEL_98;
  }

  v20 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v20)
  {
    if (!v27)
    {
      goto LABEL_99;
    }

    *buf = 136446210;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v11 = "%{public}s called with null callbacks, no backtrace";
    goto LABEL_98;
  }

  if (v27)
  {
    *buf = 136446466;
    v31 = "nw_protocol_plugin_retry_set_callbacks";
    v32 = 2082;
    v33 = v20;
    v22 = "%{public}s called with null callbacks, dumping backtrace:%{public}s";
    goto LABEL_67;
  }

LABEL_68:
  free(v20);
  if (v8)
  {
LABEL_100:
    free(v8);
  }
}

void nw_protocol_plugin_name_set_callbacks(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_73;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_set_callbacks";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_72;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_set_callbacks";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_72;
      }

      if (v15)
      {
        *buf = 136446466;
        v25 = "nw_protocol_plugin_name_set_callbacks";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_73:
      if (v6)
      {
        goto LABEL_74;
      }

      return;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_73;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v9 = "%{public}s called with null protocol";
    goto LABEL_72;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_73;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_set_callbacks";
        v9 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_72;
      }

      v16 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v17 = os_log_type_enabled(v7, type);
      if (!v16)
      {
        if (!v17)
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_set_callbacks";
        v9 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_72;
      }

      if (!v17)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v25 = "nw_protocol_plugin_name_set_callbacks";
      v26 = 2082;
      v27 = v16;
      v18 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_73;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v9 = "%{public}s called with null protocol->handle";
LABEL_72:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_73;
  }

  v3 = *(v2 + 64);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null name_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_73;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_set_callbacks";
        v9 = "%{public}s called with null name_plugin, backtrace limit exceeded";
        goto LABEL_72;
      }

      v16 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v19 = os_log_type_enabled(v7, type);
      if (!v16)
      {
        if (!v19)
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_set_callbacks";
        v9 = "%{public}s called with null name_plugin, no backtrace";
        goto LABEL_72;
      }

      if (!v19)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v25 = "nw_protocol_plugin_name_set_callbacks";
      v26 = 2082;
      v27 = v16;
      v18 = "%{public}s called with null name_plugin, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_73;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v9 = "%{public}s called with null name_plugin";
    goto LABEL_72;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null add_input_handler_processor", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v25 = "nw_protocol_plugin_name_set_callbacks";
      v9 = "%{public}s called with null add_input_handler_processor";
      goto LABEL_72;
    }

    if (v22 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v25 = "nw_protocol_plugin_name_set_callbacks";
      v9 = "%{public}s called with null add_input_handler_processor, backtrace limit exceeded";
      goto LABEL_72;
    }

    v16 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v20 = os_log_type_enabled(v7, type);
    if (!v16)
    {
      if (!v20)
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v25 = "nw_protocol_plugin_name_set_callbacks";
      v9 = "%{public}s called with null add_input_handler_processor, no backtrace";
      goto LABEL_72;
    }

    if (!v20)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v26 = 2082;
    v27 = v16;
    v18 = "%{public}s called with null add_input_handler_processor, dumping backtrace:%{public}s";
LABEL_49:
    _os_log_impl(&dword_181A37000, v7, v8, v18, buf, 0x16u);
    goto LABEL_50;
  }

  *v3 = a2;
  v4 = *(a1 + 24);
  if (v4)
  {
    *v4 = nw_protocol_plugin_name_add_input_handler;
    v4[4] = nw_protocol_plugins_disconnect;
    v4[5] = nw_protocol_plugins_connected;
    v4[23] = nw_protocol_plugins_input_finished;
    v4[6] = nw_protocol_plugins_disconnected;
    v4[7] = nw_protocol_plugins_error;
    v4[20] = nw_protocol_plugins_notify;
    v4[32] = nw_protocol_plugins_reset;
    return;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_plugin_name_set_callbacks";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null callbacks", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v6, &type, &v22))
  {
    goto LABEL_73;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_73;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v9 = "%{public}s called with null callbacks";
    goto LABEL_72;
  }

  if (v22 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_73;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v9 = "%{public}s called with null callbacks, backtrace limit exceeded";
    goto LABEL_72;
  }

  v16 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v21 = os_log_type_enabled(v7, type);
  if (!v16)
  {
    if (!v21)
    {
      goto LABEL_73;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v9 = "%{public}s called with null callbacks, no backtrace";
    goto LABEL_72;
  }

  if (v21)
  {
    *buf = 136446466;
    v25 = "nw_protocol_plugin_name_set_callbacks";
    v26 = 2082;
    v27 = v16;
    v18 = "%{public}s called with null callbacks, dumping backtrace:%{public}s";
    goto LABEL_49;
  }

LABEL_50:
  free(v16);
  if (v6)
  {
LABEL_74:
    free(v6);
  }
}

uint64_t nw_protocol_plugin_name_add_input_handler(uint64_t a1, char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_add_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v25 = "nw_protocol_plugin_name_add_input_handler";
          v12 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_60;
        }

        goto LABEL_61;
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
          v25 = "nw_protocol_plugin_name_add_input_handler";
          v12 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (!v17)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v25 = "nw_protocol_plugin_name_add_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v18 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_add_input_handler";
    v12 = "%{public}s called with null protocol";
LABEL_60:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_61;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_add_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v25 = "nw_protocol_plugin_name_add_input_handler";
          v12 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v19 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v25 = "nw_protocol_plugin_name_add_input_handler";
          v12 = "%{public}s called with null protocol->handle, no backtrace";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (!v19)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v25 = "nw_protocol_plugin_name_add_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v18 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_add_input_handler";
    v12 = "%{public}s called with null protocol->handle";
    goto LABEL_60;
  }

  v4 = *(v3 + 64);
  if (!v4)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_add_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null name_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v25 = "nw_protocol_plugin_name_add_input_handler";
      v12 = "%{public}s called with null name_plugin";
      goto LABEL_60;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_add_input_handler";
        v12 = "%{public}s called with null name_plugin, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v20 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_add_input_handler";
        v12 = "%{public}s called with null name_plugin, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (!v20)
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v25 = "nw_protocol_plugin_name_add_input_handler";
    v26 = 2082;
    v27 = backtrace_string;
    v18 = "%{public}s called with null name_plugin, dumping backtrace:%{public}s";
LABEL_42:
    _os_log_impl(&dword_181A37000, v10, v11, v18, buf, 0x16u);
    goto LABEL_43;
  }

  if (a2)
  {
    if ((*v4)(a1, a2))
    {
      v6 = nw_protocol_common_add_input_handler(a1, a2);
    }

    else
    {
      v6 = 0;
    }

    nw_protocol_plugin_name_set_name(v4, a1, 0);
    return v6;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_plugin_name_add_input_handler";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null input_protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_61;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_add_input_handler";
        v12 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v25 = "nw_protocol_plugin_name_add_input_handler";
        v12 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (v21)
    {
      *buf = 136446466;
      v25 = "nw_protocol_plugin_name_add_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v18 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

LABEL_43:
    free(backtrace_string);
    goto LABEL_61;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v25 = "nw_protocol_plugin_name_add_input_handler";
    v12 = "%{public}s called with null input_protocol";
    goto LABEL_60;
  }

LABEL_61:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

uint64_t nw_protocol_http_client_create::$_5::__invoke(nw_protocol_http_client_create::$_5 *this, nw_protocol *a2, nw_protocol *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v26 = "operator()";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v12, &type, &v23))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v26 = "operator()";
      v15 = "%{public}s called with null protocol";
LABEL_55:
      _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      goto LABEL_56;
    }

    if (v23 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v26 = "operator()";
        v15 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v19 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "operator()";
        v15 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (!v19)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v26 = "operator()";
    v27 = 2082;
    v28 = backtrace_string;
    v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_41:
    _os_log_impl(&dword_181A37000, v13, v14, v20, buf, 0x16u);
    goto LABEL_42;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v26 = "operator()";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null http_client", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v12, &type, &v23))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v26 = "operator()";
      v15 = "%{public}s called with null http_client";
      goto LABEL_55;
    }

    if (v23 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v26 = "operator()";
        v15 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v21 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v26 = "operator()";
        v15 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (!v21)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v26 = "operator()";
    v27 = 2082;
    v28 = backtrace_string;
    v20 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
    goto LABEL_41;
  }

  if (a2)
  {
    if (!*(v3 + 472))
    {
      parameters = nw_protocol_get_parameters(a2);
      if (parameters)
      {
        v5 = os_retain(parameters);
      }

      else
      {
        v5 = 0;
      }

      client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(v5, v3);
      v7 = *(v3 + 480);
      if ((v7 & 1) != 0 && *(v3 + 472))
      {
        v8 = client_metadata_in_parameters;
        os_release(*(v3 + 472));
        client_metadata_in_parameters = v8;
        v7 = *(v3 + 480);
      }

      *(v3 + 472) = client_metadata_in_parameters;
      *(v3 + 480) = v7 | 1;
      if (v5)
      {
        os_release(v5);
      }
    }

    v9 = *(v3 + 48);
    if (v9)
    {
      nw_protocol_error(v9, v3);
      nw_protocol_disconnected(*(v3 + 48), v3);
      nw_protocol_set_output_handler(*(v3 + 48), 0);
      nw_protocol_set_input_handler(v3, 0);
    }

    return 1;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v26 = "operator()";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null other_protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v12, &type, &v23))
  {
    goto LABEL_56;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v23 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v26 = "operator()";
        v15 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v22 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v26 = "operator()";
        v15 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v22)
    {
      *buf = 136446466;
      v26 = "operator()";
      v27 = 2082;
      v28 = backtrace_string;
      v20 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

LABEL_42:
    free(backtrace_string);
    goto LABEL_56;
  }

  v13 = __nwlog_obj();
  v14 = type;
  if (os_log_type_enabled(v13, type))
  {
    *buf = 136446210;
    v26 = "operator()";
    v15 = "%{public}s called with null other_protocol";
    goto LABEL_55;
  }

LABEL_56:
  if (v12)
  {
    free(v12);
  }

  return 0;
}

void *nw_http_messaging_options_find_or_create_client_metadata_in_parameters(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      http_messaging_options = nw_parameters_find_http_messaging_options(v3, a2);
      v6 = http_messaging_options;
      if (http_messaging_options)
      {
        singleton = nw_http_messaging_options_copy_client_metadata(http_messaging_options);
        if (!singleton)
        {
          if (nw_protocol_copy_http_client_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
          }

          singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_http_client_definition_definition);
          nw_http_client_metadata_create_next_transaction(singleton, 0);
          nw_http_messaging_options_set_client_metadata(v6, singleton);
        }

LABEL_8:

        goto LABEL_9;
      }

      v15 = __nwlog_obj();
      *buf = 136446210;
      v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null messaging_options", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v26 = 0;
      if (!__nwlog_fault(v16, &type, &v26))
      {
LABEL_56:
        if (v16)
        {
          free(v16);
        }

        singleton = 0;
        goto LABEL_8;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v19 = "%{public}s called with null messaging_options";
LABEL_54:
          _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
        }
      }

      else
      {
        if (v26 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v17 = __nwlog_obj();
          v18 = type;
          v25 = os_log_type_enabled(v17, type);
          if (backtrace_string)
          {
            if (v25)
            {
              *buf = 136446466;
              v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
              v30 = 2082;
              v31 = backtrace_string;
              _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null messaging_options, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_56;
          }

          if (!v25)
          {
            goto LABEL_55;
          }

          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v19 = "%{public}s called with null messaging_options, no backtrace";
          goto LABEL_54;
        }

        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v19 = "%{public}s called with null messaging_options, backtrace limit exceeded";
          goto LABEL_54;
        }
      }

LABEL_55:

      goto LABEL_56;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null below_protocol", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v10, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v13 = "%{public}s called with null below_protocol";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (v26 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v13 = "%{public}s called with null below_protocol, backtrace limit exceeded";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v20 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v23 = os_log_type_enabled(v11, type);
      if (!v20)
      {
        if (v23)
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v13 = "%{public}s called with null below_protocol, no backtrace";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (!v23)
      {
        goto LABEL_31;
      }

      *buf = 136446466;
      v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
      v30 = 2082;
      v31 = v20;
      v22 = "%{public}s called with null below_protocol, dumping backtrace:%{public}s";
LABEL_30:
      _os_log_impl(&dword_181A37000, v11, v12, v22, buf, 0x16u);
LABEL_31:

      free(v20);
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v10, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v13 = "%{public}s called with null parameters";
LABEL_47:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
        }

LABEL_48:

        goto LABEL_49;
      }

      if (v26 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v13 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v20 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v21 = os_log_type_enabled(v11, type);
      if (!v20)
      {
        if (v21)
        {
          *buf = 136446210;
          v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
          v13 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (!v21)
      {
        goto LABEL_31;
      }

      *buf = 136446466;
      v29 = "nw_http_messaging_options_find_or_create_client_metadata_in_parameters";
      v30 = 2082;
      v31 = v20;
      v22 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_30;
    }
  }

LABEL_49:
  if (v10)
  {
    free(v10);
  }

  singleton = 0;
LABEL_9:

  return singleton;
}

void *nw_parameters_find_http_messaging_options(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_find_http_messaging_options";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v13, &type, &v19))
    {
LABEL_27:
      if (v13)
      {
        free(v13);
      }

      v10 = 0;
      goto LABEL_11;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_find_http_messaging_options";
        v16 = "%{public}s called with null parameters";
LABEL_25:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v22 = "nw_parameters_find_http_messaging_options";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (!v18)
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v22 = "nw_parameters_find_http_messaging_options";
        v16 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_25;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_find_http_messaging_options";
        v16 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_25;
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  v4 = _nw_parameters_copy_default_protocol_stack();
  application_protocol_count = nw_protocol_stack_get_application_protocol_count(v4);
  if (application_protocol_count)
  {
    v6 = 0;
    v7 = 0;
    v8 = application_protocol_count;
    do
    {
      v9 = nw_protocol_stack_copy_application_protocol_at_index(v4, v6);
      v10 = v9;
      if (v7)
      {
        if (nw_protocol_options_is_http_messaging(v9))
        {
          goto LABEL_10;
        }

        v7 = 1;
      }

      else
      {
        v7 = nw_protocol_options_get_protocol_handle(v9) == a2;
      }

      ++v6;
    }

    while (v8 != v6);
  }

  v10 = 0;
LABEL_10:

LABEL_11:
  return v10;
}

void nw_protocol_plugin_name_set_name(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_plugin_name_set_name";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null name_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v24, &type, &v49))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_name_set_name";
      v27 = "%{public}s called with null name_plugin";
    }

    else if (v49 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v38 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v38)
        {
          *buf = 136446466;
          v52 = "nw_protocol_plugin_name_set_name";
          v53 = 2082;
          v54 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null name_plugin, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_92:
        if (!v24)
        {
          return;
        }

        goto LABEL_93;
      }

      if (!v38)
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_name_set_name";
      v27 = "%{public}s called with null name_plugin, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_name_set_name";
      v27 = "%{public}s called with null name_plugin, backtrace limit exceeded";
    }

    goto LABEL_91;
  }

  if (!a2)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_plugin_name_set_name";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v24, &type, &v49))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v49 != 1)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (!os_log_type_enabled(v25, type))
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v52 = "nw_protocol_plugin_name_set_name";
        v27 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_91;
      }

      v39 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v40 = os_log_type_enabled(v25, type);
      if (!v39)
      {
        if (!v40)
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v52 = "nw_protocol_plugin_name_set_name";
        v27 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_91;
      }

      if (v40)
      {
        *buf = 136446466;
        v52 = "nw_protocol_plugin_name_set_name";
        v53 = 2082;
        v54 = v39;
        v41 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_65:
        _os_log_impl(&dword_181A37000, v25, v26, v41, buf, 0x16u);
      }

LABEL_66:
      free(v39);
      if (!v24)
      {
        return;
      }

LABEL_93:
      free(v24);
      return;
    }

    v25 = __nwlog_obj();
    v26 = type;
    if (!os_log_type_enabled(v25, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v52 = "nw_protocol_plugin_name_set_name";
    v27 = "%{public}s called with null protocol";
LABEL_91:
    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_92;
  }

  v4 = a3;
  if (a3)
  {
    goto LABEL_27;
  }

  v6 = a2[5];
  v7 = a2;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a2[8]) != 0)
  {
    v10 = v7[11];
    if (v10)
    {
      v8 = 0;
      v7[11] = v10 + 1;
      v9 = a2[3];
      if (!v9)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v8 = 0;
      v9 = a2[3];
      if (!v9)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v8 = 1;
    v9 = a2[3];
    if (!v9)
    {
      goto LABEL_44;
    }
  }

  v11 = *(v9 + 112);
  if (v11)
  {
    v4 = v11(a2);
    if (v8)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

LABEL_44:
  v30 = __nwlog_obj();
  v31 = a2[2];
  *buf = 136446722;
  v52 = "__nw_protocol_get_parameters";
  if (!v31)
  {
    v31 = "invalid";
  }

  v53 = 2082;
  v54 = v31;
  v55 = 2048;
  v56 = a2;
  v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (__nwlog_fault(v32, &type, &v49))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      v35 = a2[2];
      if (!v35)
      {
        v35 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_get_parameters";
      v53 = 2082;
      v54 = v35;
      v55 = 2048;
      v56 = a2;
      v36 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_98:
      _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x20u);
      goto LABEL_99;
    }

    if (v49 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      v46 = a2[2];
      if (!v46)
      {
        v46 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_get_parameters";
      v53 = 2082;
      v54 = v46;
      v55 = 2048;
      v56 = a2;
      v36 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
      goto LABEL_98;
    }

    v43 = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v44 = os_log_type_enabled(v33, type);
    if (!v43)
    {
      if (!v44)
      {
        goto LABEL_99;
      }

      v47 = a2[2];
      if (!v47)
      {
        v47 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_get_parameters";
      v53 = 2082;
      v54 = v47;
      v55 = 2048;
      v56 = a2;
      v36 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
      goto LABEL_98;
    }

    if (v44)
    {
      v45 = a2[2];
      if (!v45)
      {
        v45 = "invalid";
      }

      *buf = 136446978;
      v52 = "__nw_protocol_get_parameters";
      v53 = 2082;
      v54 = v45;
      v55 = 2048;
      v56 = a2;
      v57 = 2082;
      v58 = v43;
      _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v43);
  }

LABEL_99:
  if (v32)
  {
    free(v32);
  }

  v4 = 0;
  if ((v8 & 1) == 0)
  {
LABEL_15:
    v12 = a2[5];
    v13 = a2;
    if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (v13 = a2[8]) != 0)
    {
      v14 = v13[11];
      if (v14)
      {
        v15 = v14 - 1;
        v13[11] = v15;
        if (!v15)
        {
          v16 = v13[8];
          if (v16)
          {
            v13[8] = 0;
            v16[2](v16);
            _Block_release(v16);
          }

          if (v13[9])
          {
            v17 = v13[8];
            if (v17)
            {
              _Block_release(v17);
            }
          }

          free(v13);
        }
      }
    }
  }

LABEL_26:
  if (!v4)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_plugin_name_set_name";
    LODWORD(v48) = 12;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null parameters", buf, v48);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v24, &type, &v49))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_name_set_name";
      v27 = "%{public}s called with null parameters";
      goto LABEL_91;
    }

    if (v49 != 1)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_name_set_name";
      v27 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_91;
    }

    v39 = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = type;
    v42 = os_log_type_enabled(v25, type);
    if (!v39)
    {
      if (!v42)
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v52 = "nw_protocol_plugin_name_set_name";
      v27 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_91;
    }

    if (v42)
    {
      *buf = 136446466;
      v52 = "nw_protocol_plugin_name_set_name";
      v53 = 2082;
      v54 = v39;
      v41 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_65;
    }

    goto LABEL_66;
  }

LABEL_27:
  *(a1 + 94) = *(a1 + 94) & 0xFE | _nw_parameters_get_logging_disabled(v4);
  v18 = v4;
  v19 = _nw_parameters_copy_protocol_options_with_level();

  if (v19)
  {
    v20 = v19;
    _nw_protocol_options_get_log_id_str(v20, (a1 + 10));

    *(a1 + 8) = _nw_protocol_options_get_log_id_num(v20);
    os_release(v20);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v22 = a2[2];
      *buf = 136446466;
      v52 = "nw_protocol_plugin_name_set_name";
      v53 = 2080;
      v54 = v22;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s No options found for %s in parameters, cannot find name", buf, 0x16u);
    }
  }
}