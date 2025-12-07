uint64_t __nw_http_messaging_options_set_override_protocol_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && !*(a2 + 32))
  {
    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a2 + 32);
    *(a2 + 32) = v4;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136446210;
      v8 = "nw_http_messaging_options_set_override_protocol_handler_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring duplicate setting of http_messaging override_protocol handler", &v7, 0xCu);
    }
  }

  return 1;
}

uint64_t __nw_http_messaging_options_set_can_accept_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && !*(a2 + 40))
  {
    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a2 + 40);
    *(a2 + 40) = v4;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136446210;
      v8 = "nw_http_messaging_options_set_can_accept_handler_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring duplicate setting of http_messaging can_accept handler", &v7, 0xCu);
    }
  }

  return 1;
}

uint64_t nw_protocol_http_joining_get_remote_endpoint(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_joining_get_remote_endpoint";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_joining_get_remote_endpoint";
      v8 = "%{public}s called with null protocol";
    }

    else
    {
      if (v14 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v17 = "nw_protocol_http_joining_get_remote_endpoint";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_http_joining_get_remote_endpoint";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v5)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_joining_get_remote_endpoint";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_joining_get_remote_endpoint";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_joining_get_remote_endpoint";
      v8 = "%{public}s called with null http_joining";
      goto LABEL_34;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_joining_get_remote_endpoint";
      v8 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_34;
    }

    v12 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_joining_get_remote_endpoint";
      v8 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_34;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http_joining_get_remote_endpoint";
      v18 = 2082;
      v19 = v12;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http_joining, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
LABEL_35:
    if (!v5)
    {
      return 0;
    }

LABEL_36:
    free(v5);
    return 0;
  }

  result = handle[15];
  if (!result)
  {
    v3 = handle[6];

    return nw_protocol_get_remote_endpoint(v3);
  }

  return result;
}

uint64_t nw_http_connection_state_finish_lookup(uint64_t a1, char *a2, void *a3, void *a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v23 = a3;
    v24 = a5;
    v25 = __nwlog_obj();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    LOBYTE(a5) = v24;
    a3 = v23;
    if (v26)
    {
      *buf = 136446978;
      *&buf[4] = "nw_http_connection_state_finish_lookup";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 114;
      *&buf[22] = 2080;
      v46 = " ";
      LOWORD(v47) = 1024;
      *(&v47 + 2) = v24;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfound alternative %{BOOL}d", buf, 0x26u);
      LOBYTE(a5) = v24;
      a3 = v23;
    }
  }

  if ((a5 & 1) == 0)
  {
    v9 = a3;
    v10 = v9;
    if (v9)
    {
      v11 = nw_protocol_copy_http_connection_state_definition_onceToken;
      v12 = v9;
      if (v11 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_connection_state_definition_onceToken, &__block_literal_global_21_76499);
      }

      v13 = nw_protocol_options_matches_definition(v12, nw_protocol_copy_http_connection_state_definition_http_connection_state_definition);

      if (v13)
      {
        *v48 = 0;
        *&v48[8] = v48;
        *&v48[16] = 0x2020000000;
        v49 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_http_connection_state_options_get_assumes_http3_capable_block_invoke;
        v46 = &unk_1E6A3A858;
        v47 = v48;
        nw_protocol_options_access_handle(v12, buf);
        v14 = *(*&v48[8] + 24);
        _Block_object_dispose(v48, 8);

        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      v31 = __nwlog_obj();
      *v48 = 136446210;
      *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s protocol options are not http_connection_state", v48, 12);

      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v28, &type, &v43))
      {
LABEL_66:
        if (!v28)
        {
LABEL_68:

LABEL_9:
          if (nw_get_http3_override_onceToken != -1)
          {
            dispatch_once(&nw_get_http3_override_onceToken, &__block_literal_global_11_76433);
          }

          if (nw_get_http3_override_value != 1 && nw_get_http3_override_value != 2 && nw_parameters_has_transforms(a2))
          {
            if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
            }

            v15 = nw_protocol_copy_quic_stream_definition_quic_definition;
            nw_endpoint_add_alternative(a4, &__block_literal_global_7016, v15);
            if (v15)
            {
              os_release(v15);
            }
          }

          goto LABEL_18;
        }

LABEL_67:
        free(v28);
        goto LABEL_68;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s protocol options are not http_connection_state", v48, 0xCu);
        }

LABEL_59:

        goto LABEL_66;
      }

      if (v43 != 1)
      {
        v29 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v42, "%{public}s protocol options are not http_connection_state, backtrace limit exceeded", v48, 0xCu);
        }

        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v35, type);
      if (backtrace_string)
      {
        if (v40)
        {
          *v48 = 136446466;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          *&v48[12] = 2082;
          *&v48[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v35, v39, "%{public}s protocol options are not http_connection_state, dumping backtrace:%{public}s", v48, 0x16u);
        }

        v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        free(backtrace_string);
        goto LABEL_66;
      }

      if (v40)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
        _os_log_impl(&dword_181A37000, v35, v39, "%{public}s protocol options are not http_connection_state, no backtrace", v48, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      *v48 = 136446210;
      *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null options", v48, 12);

      type = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (!__nwlog_fault(v28, &type, &v43))
      {
        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null options", v48, 0xCu);
        }

        goto LABEL_59;
      }

      if (v43 != 1)
      {
        v29 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v29, type))
        {
          *v48 = 136446210;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          _os_log_impl(&dword_181A37000, v29, v41, "%{public}s called with null options, backtrace limit exceeded", v48, 0xCu);
        }

        goto LABEL_59;
      }

      v34 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v35, type);
      if (v34)
      {
        if (v37)
        {
          *v48 = 136446466;
          *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
          *&v48[12] = 2082;
          *&v48[14] = v34;
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null options, dumping backtrace:%{public}s", v48, 0x16u);
        }

        v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        free(v34);
        if (!v28)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v37)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_http_connection_state_options_get_assumes_http3_capable";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null options, no backtrace", v48, 0xCu);
      }
    }

    v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    goto LABEL_66;
  }

LABEL_18:
  v16 = nw_parameters_copy_context(a2);
  v17 = nw_context_copy_registered_endpoint(v16, a4);
  v18 = *(a1 + 208);
  if ((v18 & 1) != 0 && *(a1 + 200))
  {
    v19 = v17;
    os_release(*(a1 + 200));
    v17 = v19;
    v18 = *(a1 + 208);
  }

  *(a1 + 200) = v17;
  *(a1 + 208) = v18 | 1;
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = nw_protocol_connect(v20, a1);
    if (v16)
    {
LABEL_23:
      os_release(v16);
    }
  }

  else
  {
    if ((*(a1 + 198) & 1) == 0 && BYTE1(v8[82].isa) == 1)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connection_state_finish_lookup";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 114;
        *&buf[22] = 2080;
        v46 = " ";
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sconnect bottom protocol, resuming child handler", buf, 0x20u);
      }
    }

    buf[0] = 0;
    v21 = 1;
    nw_protocol_notify(*(a1 + 48), a1, 23);
    if (v16)
    {
      goto LABEL_23;
    }
  }

  return v21;
}

void sub_181EA0DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void **nw_http_client_copy_options(void *a1, const void **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http_client_copy_options";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v14, &type, &v20))
    {
LABEL_25:
      if (v14)
      {
        free(v14);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_http_client_copy_options";
        v17 = "%{public}s called with null existing_handle";
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v20 == 1)
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
            v23 = "nw_http_client_copy_options";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v19)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v23 = "nw_http_client_copy_options";
        v17 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_http_client_copy_options";
        v17 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x509ABE18uLL);
  if (v4)
  {
LABEL_8:
    v9 = _Block_copy(*a2);
    v10 = *v4;
    *v4 = v9;

    v11 = _Block_copy(a2[1]);
    v12 = v4[1];
    v4[1] = v11;

LABEL_9:
    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v23 = "nw_http_client_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v24 = 2048;
  v25 = 1;
  v26 = 2048;
  v27 = 16;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

_BYTE *nw_http_sniffing_copy_options(void *a1, _BYTE *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_sniffing_copy_options";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v10, &type, &v16))
    {
LABEL_25:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_sniffing_copy_options";
        v13 = "%{public}s called with null existing_handle";
LABEL_23:
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
            v19 = "nw_http_sniffing_copy_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_http_sniffing_copy_options";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_sniffing_copy_options";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0x15281C35uLL);
  if (v4)
  {
LABEL_8:
    *v4 = *a2;
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v19 = "nw_http_sniffing_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v23 = 4;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *nw_http_redirect_copy_options(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http_redirect_copy_options";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v12, &type, &v18))
    {
LABEL_25:
      if (v12)
      {
        free(v12);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_http_redirect_copy_options";
        v15 = "%{public}s called with null existing_handle";
LABEL_23:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "nw_http_redirect_copy_options";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v17)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v21 = "nw_http_redirect_copy_options";
        v15 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_http_redirect_copy_options";
        v15 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xEEF03373uLL);
  if (v4)
  {
LABEL_8:
    *(v4 + 4) = *(a2 + 16);
    *(v4 + 20) = *(v4 + 20) & 0xFE | *(a2 + 20) & 1;
    v9 = _Block_copy(*a2);
    v10 = *v4;
    *v4 = v9;

    objc_storeStrong(v4 + 1, *(a2 + 8));
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v21 = "nw_http_redirect_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v22 = 2048;
  v23 = 1;
  v24 = 2048;
  v25 = 24;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id *nw_http_security_copy_options(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_security_copy_options";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v13, &type, &v19))
    {
LABEL_25:
      if (v13)
      {
        free(v13);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_http_security_copy_options";
        v16 = "%{public}s called with null existing_handle";
LABEL_23:
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
            v22 = "nw_http_security_copy_options";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v18)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v22 = "nw_http_security_copy_options";
        v16 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_http_security_copy_options";
        v16 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0xBDF5687DuLL);
  if (v4)
  {
LABEL_8:
    objc_storeStrong(v4, *a2);
    objc_storeStrong(v4 + 1, *(a2 + 8));
    v9 = _Block_copy(*(a2 + 16));
    v10 = v4[2];
    v4[2] = v9;

    objc_storeStrong(v4 + 3, *(a2 + 24));
    v11 = v4[4] & 0xFE | *(a2 + 32) & 1;
    *(v4 + 32) = v11;
    *(v4 + 32) = v11 & 0xFD | *(a2 + 32) & 2;
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v22 = "nw_http_security_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v23 = 2048;
  v24 = 1;
  v25 = 2048;
  v26 = 40;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

_DWORD *nw_http_encoding_copy_options(void *a1, _DWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_encoding_copy_options";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v10, &type, &v16))
    {
LABEL_25:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_encoding_copy_options";
        v13 = "%{public}s called with null existing_handle";
LABEL_23:
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
            v19 = "nw_http_encoding_copy_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_http_encoding_copy_options";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_encoding_copy_options";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0xA1365E8EuLL);
  if (v4)
  {
LABEL_8:
    *v4 = *a2;
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v19 = "nw_http_encoding_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v23 = 4;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id *nw_http_authentication_copy_options(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http_authentication_copy_options";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v12, &type, &v18))
    {
LABEL_25:
      if (v12)
      {
        free(v12);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_http_authentication_copy_options";
        v15 = "%{public}s called with null existing_handle";
LABEL_23:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "nw_http_authentication_copy_options";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v17)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v21 = "nw_http_authentication_copy_options";
        v15 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_http_authentication_copy_options";
        v15 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0xA6CFD144uLL);
  if (v4)
  {
LABEL_8:
    objc_storeStrong(v4 + 5, *(a2 + 40));
    v9 = _Block_copy(*a2);
    v10 = *v4;
    *v4 = v9;

    objc_storeStrong(v4 + 1, *(a2 + 8));
    objc_storeStrong(v4 + 2, *(a2 + 16));
    objc_storeStrong(v4 + 3, *(a2 + 24));
    objc_storeStrong(v4 + 4, *(a2 + 32));
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v21 = "nw_http_authentication_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v22 = 2048;
  v23 = 1;
  v24 = 2048;
  v25 = 48;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

_DWORD *nw_http_retry_copy_options(void *a1, _DWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_retry_copy_options";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v10, &type, &v16))
    {
LABEL_25:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_retry_copy_options";
        v13 = "%{public}s called with null existing_handle";
LABEL_23:
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
            v19 = "nw_http_retry_copy_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_http_retry_copy_options";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_retry_copy_options";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0x1B2E3097uLL);
  if (v4)
  {
LABEL_8:
    *v4 = *a2;
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v19 = "nw_http_retry_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v23 = 4;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id *nw_http_cookie_copy_options(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_http_cookie_copy_options";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v17, &type, &v27))
    {
LABEL_33:
      if (v17)
      {
        free(v17);
      }

      v4 = 0;
      goto LABEL_12;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v30 = "nw_http_cookie_copy_options";
        v20 = "%{public}s called with null existing_handle";
LABEL_31:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v27 == 1)
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
            v30 = "nw_http_cookie_copy_options";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_33;
        }

        if (!v25)
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v30 = "nw_http_cookie_copy_options";
        v20 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_31;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v30 = "nw_http_cookie_copy_options";
        v20 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_31;
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0xBDDFCF31uLL);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446722;
    v30 = "nw_http_cookie_copy_options";
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v31 = 2048;
    v32 = 1;
    v33 = 2048;
    v34 = 40;
    v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

    result = __nwlog_should_abort(v7);
    if (result)
    {
      goto LABEL_36;
    }

    free(v7);
  }

  objc_storeStrong(v4, *a2);
  v9 = _Block_copy(*(a2 + 8));
  v10 = v4[1];
  v4[1] = v9;

  v11 = *(a2 + 16);
  if (!v11)
  {
LABEL_11:
    objc_storeStrong(v4 + 3, *(a2 + 24));
    v13 = v4[4] & 0xFE | *(a2 + 32) & 1;
    *(v4 + 32) = v13;
    v14 = v13 & 0xFFFFFFFD | (2 * ((*(a2 + 32) >> 1) & 1));
    *(v4 + 32) = v14;
    v15 = v14 & 0xFFFFFFFB | (4 * ((*(a2 + 32) >> 2) & 1));
    *(v4 + 32) = v15;
    *(v4 + 32) = v15 & 0xF7 | *(a2 + 32) & 8;
LABEL_12:

    return v4;
  }

  v12 = strdup(v11);
  if (v12)
  {
LABEL_10:
    v4[2] = v12;
    goto LABEL_11;
  }

  v21 = __nwlog_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  *buf = 136446210;
  v30 = "strict_strdup";
  LODWORD(v26) = 12;
  v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s strdup() failed", buf, v26);

  result = __nwlog_should_abort(v23);
  if (!result)
  {
    free(v23);
    v12 = 0;
    goto LABEL_10;
  }

LABEL_36:
  __break(1u);
  return result;
}

_BYTE *nw_http_joining_copy_options(void *a1, _BYTE *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_joining_copy_options";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v10, &type, &v16))
    {
LABEL_25:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_joining_copy_options";
        v13 = "%{public}s called with null existing_handle";
LABEL_23:
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
            v19 = "nw_http_joining_copy_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_http_joining_copy_options";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_joining_copy_options";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 4uLL, 0x1242A03BuLL);
  if (v4)
  {
LABEL_8:
    *v4 = *v4 & 0xFE | *a2 & 1;
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v19 = "nw_http_joining_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v23 = 4;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id *nw_http_connection_state_copy_options(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http_connection_state_copy_options";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v10, &type, &v16))
    {
LABEL_25:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_connection_state_copy_options";
        v13 = "%{public}s called with null existing_handle";
LABEL_23:
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
            v19 = "nw_http_connection_state_copy_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_http_connection_state_copy_options";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http_connection_state_copy_options";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xB1AB55DCuLL);
  if (v4)
  {
LABEL_8:
    objc_storeStrong(v4, *a2);
    *(v4 + 8) = v4[1] & 0xFE | *(a2 + 8) & 1;
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v19 = "nw_http_connection_state_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v23 = 16;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void nw_http_client_deallocate_options(uint64_t a1, void **a2)
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
  v15 = "nw_http_client_deallocate_options";
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
        v15 = "nw_http_client_deallocate_options";
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
            v15 = "nw_http_client_deallocate_options";
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
        v15 = "nw_http_client_deallocate_options";
        v9 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_http_client_deallocate_options";
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

void nw_http_sniffing_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_sniffing_deallocate_options";
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
        v12 = "nw_http_sniffing_deallocate_options";
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
            v12 = "nw_http_sniffing_deallocate_options";
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
        v12 = "nw_http_sniffing_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_sniffing_deallocate_options";
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

void nw_http_security_deallocate_options(uint64_t a1, void **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    v5 = a2[2];
    a2[2] = 0;

    v6 = a2[3];
    a2[3] = 0;

    free(a2);
    return;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http_security_deallocate_options";
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
        v17 = "nw_http_security_deallocate_options";
        v11 = "%{public}s called with null allocated_handle";
LABEL_18:
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
            v17 = "nw_http_security_deallocate_options";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v13)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_http_security_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_http_security_deallocate_options";
        v11 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }
}

void nw_http_encoding_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_encoding_deallocate_options";
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
        v12 = "nw_http_encoding_deallocate_options";
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
            v12 = "nw_http_encoding_deallocate_options";
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
        v12 = "nw_http_encoding_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_encoding_deallocate_options";
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

void nw_http_joining_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http_joining_deallocate_options";
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
        v12 = "nw_http_joining_deallocate_options";
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
            v12 = "nw_http_joining_deallocate_options";
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
        v12 = "nw_http_joining_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http_joining_deallocate_options";
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

void nw_http_messaging_deallocate_options(uint64_t a1, void **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
    *a2 = 0;

    v4 = a2[1];
    a2[1] = 0;

    v5 = a2[2];
    a2[2] = 0;

    v6 = a2[3];
    a2[3] = 0;

    v7 = a2[4];
    a2[4] = 0;

    v8 = a2[5];
    a2[5] = 0;

    v9 = a2[6];
    a2[6] = 0;

    v10 = a2[7];
    a2[7] = 0;

    v11 = a2[8];
    a2[8] = 0;

    v12 = a2[9];
    a2[9] = 0;

    v13 = a2[10];
    a2[10] = 0;

    free(a2);
    return;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_messaging_deallocate_options";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null allocated_handle", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_http_messaging_deallocate_options";
        v18 = "%{public}s called with null allocated_handle";
LABEL_18:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v17 = type;
        v20 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_http_messaging_deallocate_options";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v20)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v24 = "nw_http_messaging_deallocate_options";
        v18 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_http_messaging_deallocate_options";
        v18 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v15)
  {
    free(v15);
  }
}

void nw_http1_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http1_deallocate_options";
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
        v12 = "nw_http1_deallocate_options";
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
            v12 = "nw_http1_deallocate_options";
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
        v12 = "nw_http1_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http1_deallocate_options";
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

uint64_t sub_181EA4410(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_182AD4268() & 1;
  }
}

uint64_t __Block_byref_object_dispose__37(uint64_t result)
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

void *nw_http_messaging_copy_options(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http_messaging_copy_options";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v24, &type, &v30))
    {
LABEL_31:
      if (v24)
      {
        free(v24);
      }

      v4 = 0;
      goto LABEL_15;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v33 = "nw_http_messaging_copy_options";
        v27 = "%{public}s called with null existing_handle";
LABEL_29:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
      }
    }

    else
    {
      if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v29 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v33 = "nw_http_messaging_copy_options";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (!v29)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v33 = "nw_http_messaging_copy_options";
        v27 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_29;
      }

      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v33 = "nw_http_messaging_copy_options";
        v27 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  v4 = malloc_type_calloc(1uLL, 0x60uLL, 0xB5670306uLL);
  if (v4)
  {
LABEL_8:
    v9 = *a2;
    if (*a2)
    {
      v9 = _nw_protocol_options_copy(v9);
    }

    v10 = *v4;
    *v4 = v9;

    v11 = *(a2 + 8);
    if (v11)
    {
      v11 = _nw_protocol_options_copy(v11);
    }

    v12 = *(v4 + 1);
    *(v4 + 1) = v11;

    v13 = *(a2 + 16);
    if (v13)
    {
      v13 = _nw_protocol_options_copy(v13);
    }

    v14 = *(v4 + 2);
    *(v4 + 2) = v13;

    objc_storeStrong(v4 + 3, *(a2 + 24));
    v15 = _Block_copy(*(a2 + 32));
    v16 = *(v4 + 4);
    *(v4 + 4) = v15;

    v17 = _Block_copy(*(a2 + 40));
    v18 = *(v4 + 5);
    *(v4 + 5) = v17;

    v19 = _Block_copy(*(a2 + 48));
    v20 = *(v4 + 6);
    *(v4 + 6) = v19;

    objc_storeStrong(v4 + 7, *(a2 + 56));
    objc_storeStrong(v4 + 8, *(a2 + 64));
    objc_storeStrong(v4 + 9, *(a2 + 72));
    objc_storeStrong(v4 + 10, *(a2 + 80));
    v21 = *(v4 + 88) & 0xFE | *(a2 + 88) & 1;
    *(v4 + 88) = v21;
    v22 = v21 & 0xFFFFFFFD | (2 * ((*(a2 + 88) >> 1) & 1));
    *(v4 + 88) = v22;
    *(v4 + 88) = v22 & 0xFB | *(a2 + 88) & 4;
LABEL_15:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v33 = "nw_http_messaging_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v34 = 2048;
  v35 = 1;
  v36 = 2048;
  v37 = 96;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *nw_http1_copy_options(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http1_copy_options";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v10, &type, &v16))
    {
LABEL_25:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http1_copy_options";
        v13 = "%{public}s called with null existing_handle";
LABEL_23:
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
            v19 = "nw_http1_copy_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "nw_http1_copy_options";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http1_copy_options";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 8uLL, 0x2C8B65A9uLL);
  if (v4)
  {
LABEL_8:
    *v4 = *a2;
LABEL_9:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v19 = "nw_http1_copy_options";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v23 = 8;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id nw_http_messaging_options_copy_client_metadata(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_messaging_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_messaging_definition_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__75915;
    v20 = __Block_byref_object_dispose__75916;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_messaging_options_copy_client_metadata_block_invoke;
    v15[3] = &unk_1E6A3A858;
    v15[4] = buf;
    nw_protocol_options_access_handle(v3, v15);
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s protocol options are not http_messaging", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v8, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol options are not http_messaging", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_client_metadata";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

void sub_181EA50B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_security_create(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0x230uLL, 0xB1424BF5uLL);
  v6 = v5;
  if (v5)
  {
    bzero(v5, 0x230uLL);
LABEL_12:
    if (gLogDatapath == 1)
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v22 = "nw_protocol_http_security_create";
        v23 = 2082;
        v24 = v6 + 114;
        v25 = 2080;
        v26 = " ";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446722;
  v22 = "nw_protocol_http_security_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v23 = 2048;
  v24 = 1;
  v25 = 2048;
  v26 = 560;
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v9);
  if (result || ((free(v9), bzero(0, 0x230uLL), MEMORY[0xF8] = 0, MEMORY[0x100] &= ~1u, MEMORY[0x108] = 0, MEMORY[0x110] &= ~1u, MEMORY[0x118] = 0, MEMORY[0x120] &= ~1u, MEMORY[0x158] = 0, MEMORY[0x160] &= ~1u, MEMORY[0x168] = 0, MEMORY[0x170] &= ~1u, MEMORY[0x190] = 0, MEMORY[0x198] &= ~1u, MEMORY[0x1C8] = 0, MEMORY[0x1D0] &= ~1u, MEMORY[0x1D8] = 0, MEMORY[0x1E0] &= ~1u, MEMORY[0x1E8] = 0, MEMORY[0x1F0] &= ~1u, MEMORY[0x1F8] = 0, MEMORY[0x200] &= ~1u, MEMORY[0x208] = 0, MEMORY[0x210] &= ~1u, MEMORY[0x218] = 0, MEMORY[0x220] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v11 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v12 = 2) : (v12 = 3), *buf = 136446210, v22 = "nw_protocol_http_security_create", LODWORD(v20) = 12, v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strict_placement_new(nw_protocol_http_security, strict_calloc(1, sizeof(nw_protocol_http_security)),) failed", buf, v20), result = __nwlog_should_abort(v13), result))
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
  if (nw_protocol_http_security_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http_security_identifier::onceToken, &__block_literal_global_29128);
  }

  *(v6 + 16) = nw_protocol_http_security_identifier::protocol_identifier;
  if (nw_protocol_http_security_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_security_get_callbacks(void)::onceToken, &__block_literal_global_78_29129);
  }

  *(v6 + 24) = &nw_protocol_http_security_get_callbacks(void)::protocol_callbacks;
  *(v6 + 40) = v6;
  v14 = nw_parameters_copy_context(a4);
  v15 = *(v6 + 528);
  if ((v15 & 1) != 0 && *(v6 + 520))
  {
    v16 = v14;
    os_release(*(v6 + 520));
    v14 = v16;
    v15 = *(v6 + 528);
  }

  *(v6 + 520) = v14;
  *(v6 + 528) = v15 | 1;
  server_mode = nw_parameters_get_server_mode(a4);
  *(v6 + 200) = 0;
  *(v6 + 552) = *(v6 + 552) & 0xFE | server_mode;
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

  v18 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v6, v18, nw_protocol_http_security_create::$_0::__invoke, nw_protocol_http_security_create::$_1::__invoke);
  if (v18)
  {
    os_release(v18);
  }

  *(v6 + 88) = v6 + 344;
  nw_protocol_plugin_retry_set_callbacks(v6, nw_protocol_http_security_create::$_2::__invoke, nw_protocol_http_security_create::$_3::__invoke, nw_protocol_http_security_create::$_4::__invoke);
  *(v6 + 64) = v6 + 104;
  nw_protocol_plugin_name_set_callbacks(v6, nw_protocol_http_security_create::$_5::__invoke);
  return v6;
}

uint64_t nw_protocol_http_client_create::$_3::__invoke(nw_protocol_http_client_create::$_3 *this, nw_protocol *a2, nw_protocol *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v21 = "operator()";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v21 = "operator()";
      v10 = "%{public}s called with null protocol";
LABEL_44:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_45;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "operator()";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v21 = "operator()";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v14)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v21 = "operator()";
    v22 = 2082;
    v23 = backtrace_string;
    v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v8, v9, v15, buf, 0x16u);
    goto LABEL_31;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "operator()";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http_client", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v21 = "operator()";
      v10 = "%{public}s called with null http_client";
      goto LABEL_44;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "operator()";
        v10 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v16 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v21 = "operator()";
        v10 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v16)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v21 = "operator()";
    v22 = 2082;
    v23 = backtrace_string;
    v15 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

  if (a2)
  {
    v4 = 1;
    buf[0] = 1;
    nw_protocol_notify(a2, v3, 23);
    return v4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v21 = "operator()";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null other_protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v7, &type, &v18))
  {
    goto LABEL_45;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "operator()";
        v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v17 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v21 = "operator()";
        v10 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (v17)
    {
      *buf = 136446466;
      v21 = "operator()";
      v22 = 2082;
      v23 = backtrace_string;
      v15 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_45;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v21 = "operator()";
    v10 = "%{public}s called with null other_protocol";
    goto LABEL_44;
  }

LABEL_45:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_protocol_http_connection_state_get_remote_endpoint(nw_protocol *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v9 = "%{public}s called with null protocol";
    }

    else
    {
      if (v15 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_37;
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_connection_state", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v9 = "%{public}s called with null http_connection_state";
      goto LABEL_35;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v9 = "%{public}s called with null http_connection_state, backtrace limit exceeded";
      goto LABEL_35;
    }

    v13 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!v13)
    {
      if (!v14)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v9 = "%{public}s called with null http_connection_state, no backtrace";
      goto LABEL_35;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http_connection_state_get_remote_endpoint";
      v19 = 2082;
      v20 = v13;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http_connection_state, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
LABEL_36:
    if (!v6)
    {
      return 0;
    }

LABEL_37:
    free(v6);
    return 0;
  }

  v2 = handle[25];
  if (v2)
  {
    return v2;
  }

  default_input_handler = a1->default_input_handler;

  return nw_protocol_get_remote_endpoint(default_input_handler);
}

uint64_t sub_181EA6088()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 90);
  v3 = *(v0 + 98);
  v31 = *(v0 + 156);
  v4 = *(v0 + 216);
  v33 = 0;
  v34 = 0xE000000000000000;
  if (v1)
  {
    strcpy(v32, "interface: ");
    HIDWORD(v32[1]) = -352321536;
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);

    MEMORY[0x1865D9CA0](v5, v6);

    MEMORY[0x1865D9CA0](v32[0], v32[1]);
  }

  if ((v3 & 1) == 0)
  {
    strcpy(v32, "agent: ");
    v32[1] = 0xE700000000000000;
    MEMORY[0x1EEE9AC00](v2 >> 16);
    v7 = sub_182AD30D8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](v32[0], 0xE700000000000000);
  }

  v8 = v4[2];
  if (v8)
  {
    MEMORY[0x1865D9CA0](0x79745F746E656761, 0xEF207B203A736570);
    v9 = v4[4];
    v10 = v4[5];
    v11 = v4[6];
    v12 = v4[7];
    sub_181AA5C1C(v9, v10);
    sub_181ADC1E0(v11, v12);
    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v13 = 0xD000000000000010;
        v14 = 0x8000000182BD7080;
        goto LABEL_21;
      }

      if (v10 != 4)
      {
        if (v10 == 5)
        {
          v13 = 0xD000000000000013;
          v14 = 0x8000000182BD7060;
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v14 = 0xE700000000000000;
      v15 = 0x6C6177796B53;
    }

    else
    {
      if (v10)
      {
        if (v10 != 1)
        {
          if (v10 == 2)
          {
            v13 = 0x6F436D6574737953;
            v14 = 0xEC0000006769666ELL;
            goto LABEL_21;
          }

LABEL_17:
          v13 = v9;
          v14 = v10;
          goto LABEL_21;
        }

        v14 = 0xE800000000000000;
        v13 = 0x72616C756C6C6543;
LABEL_21:
        sub_181AA5C1C(v9, v10);
        MEMORY[0x1865D9CA0](v13, v14);

        MEMORY[0x1865D9CA0](58, 0xE100000000000000);
        if (v12 > 4)
        {
          if (v12 <= 6)
          {
            if (v12 == 5)
            {
              v16 = 0xD000000000000012;
              v17 = 0x8000000182BD7040;
            }

            else
            {
              v17 = 0xE800000000000000;
              v16 = 0x746E656741534E44;
            }

            goto LABEL_43;
          }

          switch(v12)
          {
            case 7:
              v16 = 0x4465746176697250;
              v17 = 0xEA0000000000534ELL;
              goto LABEL_43;
            case 8:
              v16 = 0xD000000000000010;
              v17 = 0x8000000182BD7020;
              goto LABEL_43;
            case 9:
              v16 = 0xD000000000000011;
              v17 = 0x8000000182BD7000;
LABEL_43:
              sub_181ADC1E0(v11, v12);
              MEMORY[0x1865D9CA0](v16, v17);

              sub_181E4926C(v9, v10);
              sub_181E49280(v11, v12);
              MEMORY[0x1865D9CA0](v32[0], v32[1]);

              v18 = v8 - 1;
              if (!v18)
              {
LABEL_44:
                MEMORY[0x1865D9CA0](125, 0xE100000000000000);
                goto LABEL_45;
              }

              v21 = v4 + 11;
              while (1)
              {
                v24 = *(v21 - 3);
                v25 = *(v21 - 2);
                v26 = *(v21 - 1);
                v27 = *v21;
                sub_181AA5C1C(v24, v25);
                sub_181ADC1E0(v26, v27);
                MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
                v32[0] = 0;
                v32[1] = 0xE000000000000000;
                if (v25 > 2)
                {
                  break;
                }

                if (!v25)
                {
                  v29 = 0xE700000000000000;
                  v30 = 0x726F7774654ELL;
LABEL_72:
                  v28 = v30 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
                  goto LABEL_73;
                }

                if (v25 != 1)
                {
                  if (v25 == 2)
                  {
                    v28 = 0x6F436D6574737953;
                    v29 = 0xEC0000006769666ELL;
                    goto LABEL_73;
                  }

LABEL_69:
                  v28 = v24;
                  v29 = v25;
                  goto LABEL_73;
                }

                v29 = 0xE800000000000000;
                v28 = 0x72616C756C6C6543;
LABEL_73:
                sub_181AA5C1C(v24, v25);
                MEMORY[0x1865D9CA0](v28, v29);

                MEMORY[0x1865D9CA0](58, 0xE100000000000000);
                if (v27 > 4)
                {
                  if (v27 <= 6)
                  {
                    if (v27 == 5)
                    {
                      v22 = 0xD000000000000012;
                      v23 = 0x8000000182BD7040;
                    }

                    else
                    {
                      v23 = 0xE800000000000000;
                      v22 = 0x746E656741534E44;
                    }

                    goto LABEL_57;
                  }

                  switch(v27)
                  {
                    case 7:
                      v22 = 0x4465746176697250;
                      v23 = 0xEA0000000000534ELL;
                      break;
                    case 8:
                      v22 = 0xD000000000000010;
                      v23 = 0x8000000182BD7020;
                      break;
                    case 9:
                      v22 = 0xD000000000000011;
                      v23 = 0x8000000182BD7000;
                      break;
                    default:
                      goto LABEL_93;
                  }
                }

                else
                {
                  if (v27 > 1)
                  {
                    if (v27 == 2)
                    {
                      v22 = 0x65674179786F7250;
                      v23 = 0xEA0000000000746ELL;
                    }

                    else if (v27 == 3)
                    {
                      v23 = 0xE500000000000000;
                      v22 = 0x79786F7250;
                    }

                    else
                    {
                      v22 = 0x5079636176697250;
                      v23 = 0xEC00000079786F72;
                    }

                    goto LABEL_57;
                  }

                  if (v27)
                  {
                    if (v27 != 1)
                    {
LABEL_93:
                      v22 = v26;
                      v23 = v27;
                      goto LABEL_57;
                    }

                    v22 = 0x7265764F68746150;
                    v23 = 0xEC00000065646972;
                  }

                  else
                  {
                    v23 = 0xE800000000000000;
                    v22 = 0x74656E7265746E49;
                  }
                }

LABEL_57:
                v21 += 4;
                sub_181ADC1E0(v26, v27);
                MEMORY[0x1865D9CA0](v22, v23);

                sub_181E4926C(v24, v25);
                sub_181E49280(v26, v27);
                MEMORY[0x1865D9CA0](v32[0], v32[1]);

                if (!--v18)
                {
                  goto LABEL_44;
                }
              }

              if (v25 == 3)
              {
                v28 = 0xD000000000000010;
                v29 = 0x8000000182BD7080;
                goto LABEL_73;
              }

              if (v25 != 4)
              {
                if (v25 == 5)
                {
                  v28 = 0xD000000000000013;
                  v29 = 0x8000000182BD7060;
                  goto LABEL_73;
                }

                goto LABEL_69;
              }

              v29 = 0xE700000000000000;
              v30 = 0x6C6177796B53;
              goto LABEL_72;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v12 == 2)
            {
              v16 = 0x65674179786F7250;
              v17 = 0xEA0000000000746ELL;
            }

            else if (v12 == 3)
            {
              v17 = 0xE500000000000000;
              v16 = 0x79786F7250;
            }

            else
            {
              v16 = 0x5079636176697250;
              v17 = 0xEC00000079786F72;
            }

            goto LABEL_43;
          }

          if (!v12)
          {
            v17 = 0xE800000000000000;
            v16 = 0x74656E7265746E49;
            goto LABEL_43;
          }

          if (v12 == 1)
          {
            v16 = 0x7265764F68746150;
            v17 = 0xEC00000065646972;
            goto LABEL_43;
          }
        }

        v16 = v11;
        v17 = v12;
        goto LABEL_43;
      }

      v14 = 0xE700000000000000;
      v15 = 0x726F7774654ELL;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
    goto LABEL_21;
  }

LABEL_45:
  if (v31)
  {
    MEMORY[0x1865D9CA0](0x6B616577202CLL, 0xE600000000000000);
    if ((v31 & 2) == 0)
    {
LABEL_47:
      if ((v31 & 4) == 0)
      {
        goto LABEL_48;
      }

LABEL_53:
      MEMORY[0x1865D9CA0](0x646563726F66202CLL, 0xE800000000000000);
      if ((v31 & 8) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_47;
  }

  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD7480);
  if ((v31 & 4) != 0)
  {
    goto LABEL_53;
  }

LABEL_48:
  if ((v31 & 8) != 0)
  {
LABEL_49:
    MEMORY[0x1865D9CA0](0x726566657270202CLL, 0xEB00000000646572);
  }

LABEL_50:
  sub_182AD3BA8();

  strcpy(v32, ", generation: ");
  HIBYTE(v32[1]) = -18;
  v19 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v19);

  MEMORY[0x1865D9CA0](v32[0], v32[1]);

  strcpy(v32, ", fallback: {");
  HIWORD(v32[1]) = -4864;
  MEMORY[0x1865D9CA0](v33, v34);

  MEMORY[0x1865D9CA0](125, 0xE100000000000000);

  return v32[0];
}

NWConcrete_nw_endpoint_mode_handler *nw_endpoint_handler_copy_fallback(NWConcrete_nw_endpoint_handler *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_endpoint_handler_copy_fallback";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v25, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_fallback";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v36 = "nw_endpoint_handler_copy_fallback";
            v37 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_65;
        }

        if (v30)
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_fallback";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_fallback";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_47;
  }

  if (v1->mode != 4)
  {
    if ((*(v1 + 284) & 0x40) != 0)
    {
LABEL_47:
      v3 = 0;
      goto LABEL_48;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_46:

      goto LABEL_47;
    }

    if (*(v2 + 284))
    {
      v5 = "dry-run ";
    }

    else
    {
      v5 = "";
    }

    v6 = nw_endpoint_handler_copy_endpoint(v2);
    v7 = v6;
    if (v6)
    {
      logging_description = _nw_endpoint_get_logging_description(v6);
    }

    else
    {
      logging_description = "<NULL>";
    }

    state = v2->state;
    if (state > 5)
    {
      v10 = "unknown-state";
    }

    else
    {
      v10 = off_1E6A31048[state];
    }

    v11 = v2;
    v12 = v11;
    mode = v2->mode;
    v32 = v10;
    if (mode > 2)
    {
      if (mode == 3)
      {
        v14 = logging_description;
        v15 = "proxy";
        goto LABEL_31;
      }

      if (mode != 4)
      {
        if (mode == 5)
        {
          v14 = logging_description;
          v15 = "transform";
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v14 = logging_description;
      v15 = "fallback";
    }

    else
    {
      if (!mode)
      {
        v14 = logging_description;
        v15 = "path";
        goto LABEL_31;
      }

      if (mode != 1)
      {
        if (mode == 2)
        {
          v14 = logging_description;
          v15 = nw_endpoint_flow_mode_string(v11->mode_handler);
          goto LABEL_31;
        }

LABEL_28:
        v14 = logging_description;
        v15 = "unknown-mode";
        goto LABEL_31;
      }

      v14 = logging_description;
      v15 = "resolver";
    }

LABEL_31:

    v16 = v12;
    os_unfair_lock_lock(v12 + 28);
    v17 = v16[8];
    os_unfair_lock_unlock(v12 + 28);

    v18 = v17;
    v19 = v16;
    v20 = v2->mode;
    if (v20 > 2)
    {
      switch(v20)
      {
        case 3:
          v22 = "proxy";
          goto LABEL_45;
        case 4:
          v22 = "fallback";
          goto LABEL_45;
        case 5:
          v22 = "transform";
          goto LABEL_45;
      }
    }

    else
    {
      switch(v20)
      {
        case 0:
          v22 = "path";
          goto LABEL_45;
        case 1:
          v22 = "resolver";
          goto LABEL_45;
        case 2:
          v21 = v19;
          v22 = nw_endpoint_flow_mode_string(v19[33]);
          v19 = v21;
LABEL_45:

          *buf = 136448002;
          v36 = "nw_endpoint_handler_copy_fallback";
          v37 = 2082;
          id_str = v2->id_str;
          v39 = 2082;
          v40 = v5;
          v41 = 2082;
          v42 = v14;
          v43 = 2082;
          v44 = v32;
          v45 = 2082;
          v46 = v15;
          v47 = 2114;
          v48 = v18;
          v49 = 2082;
          v50 = v22;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is %{public}s, not fallback", buf, 0x52u);

          goto LABEL_46;
      }
    }

    v22 = "unknown-mode";
    goto LABEL_45;
  }

  v3 = v1->mode_handler;
LABEL_48:

  return v3;
}

uint64_t nw_endpoint_fallback_receive_report(void *a1, uint64_t a2, int a3, _WORD *a4, void *a5, void *a6)
{
  v330 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v301 = a5;
  v11 = a6;
  v12 = v11;
  v300 = v10;
  if (!v11)
  {
    v201 = __nwlog_obj();
    *buf = 136446210;
    v305 = "nw_endpoint_fallback_receive_report";
    v202 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v201, 16, "%{public}s called with null handler", buf, 12);

    LOBYTE(type) = 16;
    v302 = 0;
    if (__nwlog_fault(v202, &type, &v302))
    {
      if (type == 17)
      {
        v203 = __nwlog_obj();
        v204 = type;
        if (os_log_type_enabled(v203, type))
        {
          *buf = 136446210;
          v305 = "nw_endpoint_fallback_receive_report";
          _os_log_impl(&dword_181A37000, v203, v204, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v302 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v203 = __nwlog_obj();
        v206 = type;
        v207 = os_log_type_enabled(v203, type);
        if (backtrace_string)
        {
          if (v207)
          {
            *buf = 136446466;
            v305 = "nw_endpoint_fallback_receive_report";
            v306 = 2082;
            v307 = backtrace_string;
            _os_log_impl(&dword_181A37000, v203, v206, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_246;
        }

        if (v207)
        {
          *buf = 136446210;
          v305 = "nw_endpoint_fallback_receive_report";
          _os_log_impl(&dword_181A37000, v203, v206, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v203 = __nwlog_obj();
        v208 = type;
        if (os_log_type_enabled(v203, type))
        {
          *buf = 136446210;
          v305 = "nw_endpoint_fallback_receive_report";
          _os_log_impl(&dword_181A37000, v203, v208, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_246:
    if (v202)
    {
      free(v202);
    }

    v24 = 0;
    v12 = 0;
    goto LABEL_219;
  }

  v13 = v11;
  mode = v13->mode;

  if (mode == 4)
  {
    v298 = v13;
    nw_endpoint_handler_report(v13, v10, a4, v301);
    v15 = nw_endpoint_handler_copy_fallback(v13);
    if ((*(v15 + 108) & 0x40) == 0 && (a3 & 0xFFFFFFFE) == 4)
    {
      if (v301)
      {
        v16 = v15;
        v17 = v301;
        v18 = v17[2];

        v15 = v16;
        if (v18 == 1)
        {
          v19 = v17;
          v20 = v19[3];

          v15 = v16;
          if (v20 == 89)
          {
            *(v16 + 108) |= 1u;
          }
        }
      }
    }

    v299 = v15;
    v22 = *(v15 + 4);
    v21 = *(v15 + 5);
    v297 = v12;
    if (v22 != v10)
    {
      if (v21 != v10)
      {
        v23 = 0;
        v24 = 0;
LABEL_218:

        v12 = v297;
        goto LABEL_219;
      }

      v294 = a3;
      v296 = v22;
      v39 = v298;
      v40 = *(v39 + 284);

      if ((v40 & 0x20) == 0)
      {
        v41 = v39;
        v42 = *(v39 + 284);

        if ((v42 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            goto LABEL_82;
          }

          v43 = v41;

          v44 = v43;
          v45 = *(v39 + 284);

          if (v45)
          {
            v46 = "dry-run ";
          }

          else
          {
            v46 = "";
          }

          loga = v31;
          v47 = nw_endpoint_handler_copy_endpoint(v44);
          v48 = v47;
          v274 = v47;
          if (v47)
          {
            logging_description = _nw_endpoint_get_logging_description(v47);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v58 = v44;
          v59 = v58;
          v60 = v58[30];
          if (v60 > 5)
          {
            v61 = "unknown-state";
          }

          else
          {
            v61 = off_1E6A31048[v60];
          }

          v62 = v59;
          v63 = v62;
          v64 = v298->mode;
          v285 = a4;
          v266 = logging_description;
          v270 = v46;
          v261 = v61;
          if (v64 > 2)
          {
            switch(v64)
            {
              case 3:
                v65 = "proxy";
                goto LABEL_78;
              case 4:
                v65 = "fallback";
                goto LABEL_78;
              case 5:
                v65 = "transform";
                goto LABEL_78;
            }
          }

          else
          {
            switch(v64)
            {
              case 0:
                v65 = "path";
                goto LABEL_78;
              case 1:
                v65 = "resolver";
                goto LABEL_78;
              case 2:
                v65 = nw_endpoint_flow_mode_string(v62[33]);
LABEL_78:

                v77 = v63;
                os_unfair_lock_lock(v77 + 28);
                v78 = v77[8];
                os_unfair_lock_unlock(v77 + 28);

                v79 = v78;
                id_string = nw_endpoint_handler_get_id_string(v300);
                v81 = nw_endpoint_handler_dry_run_string(v300);
                v82 = nw_endpoint_handler_copy_endpoint(v300);
                v83 = v82;
                v292 = v22;
                if (v82)
                {
                  v84 = _nw_endpoint_get_logging_description(v82);
                }

                else
                {
                  v84 = "<NULL>";
                }

                v85 = v43 + 184;

                v86 = nw_endpoint_handler_state_string(v300);
                v87 = nw_endpoint_handler_mode_string(v300);
                v88 = nw_endpoint_handler_copy_current_path(v300);
                *buf = 136449282;
                v305 = "nw_endpoint_fallback_receive_report";
                v306 = 2082;
                v307 = v85;
                v308 = 2082;
                v309 = v270;
                v310 = 2082;
                v311 = v266;
                v312 = 2082;
                v313 = v261;
                v314 = 2082;
                v315 = v65;
                v316 = 2114;
                v317 = v79;
                v318 = 2082;
                v319 = id_string;
                v320 = 2082;
                v321 = v81;
                v322 = 2082;
                v323 = v84;
                v324 = 2082;
                v325 = v86;
                v326 = 2082;
                v327 = v87;
                v328 = 2114;
                v329 = v88;
                v31 = loga;
                _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received fallback child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

                a4 = v285;
                v22 = v292;

LABEL_82:
                goto LABEL_83;
            }
          }

          v65 = "unknown-mode";
          goto LABEL_78;
        }

LABEL_83:
        v89 = v300;
        v90 = v299;
        goto LABEL_84;
      }

      v288 = a4;
      if ((nw_endpoint_handler_get_logging_disabled(v39) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        logc = gconnectionLogObj;
        if (os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG))
        {
          v272 = nw_endpoint_handler_get_id_string(v39);
          v268 = nw_endpoint_handler_dry_run_string(v39);
          v277 = nw_endpoint_handler_copy_endpoint(v39);
          v264 = nw_endpoint_get_logging_description(v277);
          v260 = nw_endpoint_handler_state_string(v39);
          v218 = nw_endpoint_handler_mode_string(v39);
          v219 = nw_endpoint_handler_copy_current_path(v39);
          v220 = nw_endpoint_handler_get_id_string(v10);
          v221 = nw_endpoint_handler_dry_run_string(v10);
          v222 = nw_endpoint_handler_copy_endpoint(v300);
          v223 = nw_endpoint_get_logging_description(v222);
          v224 = nw_endpoint_handler_state_string(v300);
          v225 = nw_endpoint_handler_mode_string(v300);
          v226 = nw_endpoint_handler_copy_current_path(v300);
          *buf = 136449282;
          v305 = "nw_endpoint_fallback_receive_report";
          v306 = 2082;
          v307 = v272;
          v308 = 2082;
          v309 = v268;
          v310 = 2082;
          v311 = v264;
          v312 = 2082;
          v313 = v260;
          v314 = 2082;
          v315 = v218;
          v316 = 2114;
          v317 = v219;
          v318 = 2082;
          v319 = v220;
          v320 = 2082;
          v321 = v221;
          v322 = 2082;
          v323 = v223;
          v324 = 2082;
          v325 = v224;
          v326 = 2082;
          v327 = v225;
          v328 = 2114;
          v329 = v226;
          v31 = logc;
          _os_log_impl(&dword_181A37000, logc, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received fallback child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a4 = v288;
        }

        else
        {
          v31 = logc;
        }

        goto LABEL_82;
      }

LABEL_276:
      v89 = v10;
      v90 = v299;
      a4 = v288;
LABEL_84:
      v91 = v294;
      if (v294 < 2)
      {
        if (v294 != 1)
        {
          goto LABEL_96;
        }

        if (v22 != v89)
        {
          v92 = v90 + 109;
          v93 = *(v90 + 109);
          if ((v93 & 1) == 0)
          {
            goto LABEL_88;
          }

          v94 = 4;
LABEL_87:
          *v92 = v93 & 0xFA | v94;
LABEL_88:
          v96 = (v90 + 48);
          v95 = *(v90 + 12);
          goto LABEL_98;
        }

        v98 = *(v90 + 108);
        if ((v98 & 0x80000000) == 0)
        {
LABEL_96:
          v96 = (v90 + 48);
          v95 = *(v90 + 12);
          if (v22 == v89 && v95 == 1)
          {
            goto LABEL_100;
          }

LABEL_98:
          if (v22 != v89 && v95 == 2)
          {
LABEL_100:
            if ((v294 - 3) <= 1)
            {
              v99 = *(v90 + 10);
              if (v99)
              {
                nw_queue_cancel_source(v99);
                *(v299 + 10) = 0;
              }
            }

            v100 = v298;
            v100->state = v294;

            nw_endpoint_handler_report(v100, 0, a4, 0);
            goto LABEL_217;
          }

          v101 = v298;
          v295 = v101->parameters;

          if (networkd_settings_get_BOOL(nw_setting_tcpconn_no_fallback_full_stack))
          {
            no_fullstack_fallback = 1;
          }

          else
          {
            no_fullstack_fallback = nw_parameters_get_no_fullstack_fallback(v295);
          }

          v103 = v91 == 2 && *a4 == 3 && a4[1] == 5;
          v104 = v91 == 3;
          if (no_fullstack_fallback)
          {
            v104 = v103;
          }

          if (v91 != 3 && !v104)
          {
            if (v91 == 4 || (v22 != v300 ? (v105 = 4) : (v105 = 2), (*(v299 + 109) & v105) != 0))
            {
              if (!v296)
              {
                goto LABEL_197;
              }

              v106 = v296;
              v107 = (v106[30] & 0xFFFFFFFE) == 4;

              if (v107)
              {
                goto LABEL_197;
              }

              if (v22 != v300)
              {
                if ((*(v299 + 109) & 2) == 0)
                {
LABEL_205:
                  v192 = 4;
LABEL_215:
                  v101->event.domain = 5;
                  v101->event.event = v192;
                  nw_endpoint_handler_report(v101, 0, &v101->event.domain, 0);
                  goto LABEL_216;
                }

LABEL_197:
                v180 = v101;
                v181 = (*(v180 + 284) & 0x20) == 0;

                if (v181)
                {
                  v182 = v180;
                  v183 = (*(v180 + 284) & 0x40) == 0;

                  if (!v183)
                  {
                    goto LABEL_204;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v184 = gconnectionLogObj;
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                  {
                    v185 = nw_endpoint_handler_get_id_string(v182);
                    v186 = nw_endpoint_handler_dry_run_string(v182);
                    v187 = nw_endpoint_handler_copy_endpoint(v182);
                    v293 = v22;
                    v188 = nw_endpoint_get_logging_description(v187);
                    v189 = nw_endpoint_handler_state_string(v182);
                    v190 = nw_endpoint_handler_mode_string(v182);
                    v191 = nw_endpoint_handler_copy_current_path(v182);
                    *buf = 136447746;
                    v305 = "nw_endpoint_fallback_receive_report";
                    v306 = 2082;
                    v307 = v185;
                    v308 = 2082;
                    v309 = v186;
                    v310 = 2082;
                    v311 = v188;
                    v312 = 2082;
                    v313 = v189;
                    v314 = 2082;
                    v315 = v190;
                    v316 = 2114;
                    v317 = v191;
                    _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);

                    v22 = v293;
                  }
                }

                else
                {
                  if (nw_endpoint_handler_get_logging_disabled(v180))
                  {
LABEL_204:
                    nw_endpoint_handler_handle_failure(v180);
                    if (v22 != v300)
                    {
                      goto LABEL_205;
                    }

LABEL_214:
                    v192 = 3;
                    goto LABEL_215;
                  }

                  v227 = v22;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v184 = gconnectionLogObj;
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
                  {
                    v289 = nw_endpoint_handler_get_id_string(v180);
                    v228 = nw_endpoint_handler_dry_run_string(v180);
                    v229 = nw_endpoint_handler_copy_endpoint(v180);
                    v230 = nw_endpoint_get_logging_description(v229);
                    v231 = nw_endpoint_handler_state_string(v180);
                    v232 = nw_endpoint_handler_mode_string(v180);
                    v233 = nw_endpoint_handler_copy_current_path(v180);
                    *buf = 136447746;
                    v305 = "nw_endpoint_fallback_receive_report";
                    v306 = 2082;
                    v307 = v289;
                    v308 = 2082;
                    v309 = v228;
                    v310 = 2082;
                    v311 = v230;
                    v312 = 2082;
                    v313 = v231;
                    v314 = 2082;
                    v315 = v232;
                    v316 = 2114;
                    v317 = v233;
                    _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);

                    v22 = v227;
                  }
                }

                goto LABEL_204;
              }

              if ((*(v299 + 109) & 4) != 0)
              {
                goto LABEL_197;
              }

              if ((*(v299 + 108) & 1) == 0 || !*(v299 + 5))
              {
                nw_endpoint_fallback_start_fallback_child(v101);
                goto LABEL_214;
              }

              minimize_logging = nw_endpoint_handler_get_minimize_logging(v101);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v101);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_196;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v172 = gconnectionLogObj;
                if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
                {
                  v252 = nw_endpoint_handler_get_id_string(v101);
                  v253 = nw_endpoint_handler_dry_run_string(v101);
                  v254 = nw_endpoint_handler_copy_endpoint(v101);
                  v255 = nw_endpoint_get_logging_description(v254);
                  v256 = nw_endpoint_handler_state_string(v101);
                  v257 = nw_endpoint_handler_mode_string(v101);
                  v258 = nw_endpoint_handler_copy_current_path(v101);
                  *buf = 136447746;
                  v305 = "nw_endpoint_fallback_receive_report";
                  v306 = 2082;
                  v307 = v252;
                  v308 = 2082;
                  v309 = v253;
                  v310 = 2082;
                  v311 = v255;
                  v312 = 2082;
                  v313 = v256;
                  v314 = 2082;
                  v315 = v257;
                  v316 = 2114;
                  v317 = v258;
                  _os_log_impl(&dword_181A37000, v172, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received ECANCELED from primary child, cancelling race", buf, 0x48u);
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_196:
                  nw_endpoint_handler_cancel(*(v299 + 5), 0, 1);
                  goto LABEL_214;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v172 = gconnectionLogObj;
                if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
                {
                  v173 = nw_endpoint_handler_get_id_string(v101);
                  v174 = nw_endpoint_handler_dry_run_string(v101);
                  v175 = nw_endpoint_handler_copy_endpoint(v101);
                  v176 = nw_endpoint_get_logging_description(v175);
                  v177 = nw_endpoint_handler_state_string(v101);
                  v178 = nw_endpoint_handler_mode_string(v101);
                  v179 = nw_endpoint_handler_copy_current_path(v101);
                  *buf = 136447746;
                  v305 = "nw_endpoint_fallback_receive_report";
                  v306 = 2082;
                  v307 = v173;
                  v308 = 2082;
                  v309 = v174;
                  v310 = 2082;
                  v311 = v176;
                  v312 = 2082;
                  v313 = v177;
                  v314 = 2082;
                  v315 = v178;
                  v316 = 2114;
                  v317 = v179;
                  _os_log_impl(&dword_181A37000, v172, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received ECANCELED from primary child, cancelling race", buf, 0x48u);
                }
              }

              goto LABEL_196;
            }

            v110 = !v103;
            if (v22 != v300)
            {
              v110 = 1;
            }

            if ((v110 & 1) != 0 || (*(v299 + 108) & 0x42) != 2 || !*(v299 + 9))
            {
              goto LABEL_216;
            }

            v111 = nw_endpoint_handler_get_minimize_logging(v101);
            v112 = nw_endpoint_handler_get_logging_disabled(v101);
            if (v111)
            {
              if (v112)
              {
                goto LABEL_146;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v113 = gconnectionLogObj;
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
              {
                v244 = nw_endpoint_handler_get_id_string(v101);
                v245 = nw_endpoint_handler_dry_run_string(v101);
                v246 = nw_endpoint_handler_copy_endpoint(v101);
                v247 = nw_endpoint_get_logging_description(v246);
                v248 = nw_endpoint_handler_state_string(v101);
                v249 = nw_endpoint_handler_mode_string(v101);
                v250 = nw_endpoint_handler_copy_current_path(v101);
                v251 = *(v299 + 3) / 0xF4240uLL;
                *buf = 136448002;
                v305 = "nw_endpoint_fallback_receive_report";
                v306 = 2082;
                v307 = v244;
                v308 = 2082;
                v309 = v245;
                v310 = 2082;
                v311 = v247;
                v312 = 2082;
                v313 = v248;
                v314 = 2082;
                v315 = v249;
                v316 = 2114;
                v317 = v250;
                v318 = 2048;
                v319 = v251;
                _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out fallback endpoint start by %llums", buf, 0x52u);
              }
            }

            else
            {
              if (v112)
              {
LABEL_146:
                v122 = *(v299 + 9);
                v123 = dispatch_time(0x8000000000000000, *(v299 + 3));
                nw_queue_set_timer_values(v122, v123, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
LABEL_216:

LABEL_217:
                v24 = 1;
                v23 = v296;
                goto LABEL_218;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v113 = gconnectionLogObj;
              if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
              {
                v114 = nw_endpoint_handler_get_id_string(v101);
                v115 = nw_endpoint_handler_dry_run_string(v101);
                v116 = nw_endpoint_handler_copy_endpoint(v101);
                v117 = nw_endpoint_get_logging_description(v116);
                v118 = nw_endpoint_handler_state_string(v101);
                v119 = nw_endpoint_handler_mode_string(v101);
                v120 = nw_endpoint_handler_copy_current_path(v101);
                v121 = *(v299 + 3) / 0xF4240uLL;
                *buf = 136448002;
                v305 = "nw_endpoint_fallback_receive_report";
                v306 = 2082;
                v307 = v114;
                v308 = 2082;
                v309 = v115;
                v310 = 2082;
                v311 = v117;
                v312 = 2082;
                v313 = v118;
                v314 = 2082;
                v315 = v119;
                v316 = 2114;
                v317 = v120;
                v318 = 2048;
                v319 = v121;
                _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out fallback endpoint start by %llums", buf, 0x52u);
              }
            }

            goto LABEL_146;
          }

          v108 = *(v299 + 9);
          if (v108)
          {
            nw_queue_cancel_source(v108);
            *(v299 + 9) = 0;
          }

          if (!*v96)
          {
            if (v22 == v300)
            {
              *(v299 + 12) = 1;
              v124 = *(v299 + 5);
              if (v124)
              {
                nw_endpoint_handler_cancel(v124, 0, 0);
              }

              if (v91 == 2)
              {
                nw_endpoint_fallback_start_post_transport_timer(v101);
              }
            }

            else
            {
              *(v299 + 12) = 2;
              v109 = *(v299 + 4);
              if (v109)
              {
                nw_endpoint_handler_cancel(v109, 0, 0);
              }

              if (*(v299 + 26) == 2)
              {
                nw_endpoint_fallback_start_usage_cap_timer(v101);
              }
            }

            v125 = v101;
            v126 = (*(v125 + 284) & 0x20) == 0;

            if (v126)
            {
              v127 = v125;
              v128 = (*(v125 + 284) & 0x40) == 0;

              if (!v128)
              {
                goto LABEL_161;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v129 = gconnectionLogObj;
              if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
              {
                v130 = nw_endpoint_handler_get_id_string(v127);
                v275 = nw_endpoint_handler_dry_run_string(v127);
                logb = v129;
                v131 = nw_endpoint_handler_copy_endpoint(v127);
                v287 = a4;
                v132 = nw_endpoint_get_logging_description(v131);
                v133 = nw_endpoint_handler_state_string(v127);
                v134 = nw_endpoint_handler_mode_string(v127);
                v135 = nw_endpoint_handler_copy_current_path(v127);
                v136 = v135;
                v137 = *(v299 + 7);
                v138 = *(v299 + 8);
                if (v22 == v300)
                {
                  v139 = *(v299 + 7);
                }

                else
                {
                  v139 = *(v299 + 8);
                }

                *buf = 136448514;
                v305 = "nw_endpoint_fallback_receive_report";
                v306 = 2082;
                v307 = v130;
                v308 = 2082;
                v309 = v275;
                v310 = 2082;
                v311 = v132;
                v312 = 2082;
                v313 = v133;
                v314 = 2082;
                v315 = v134;
                v316 = 2114;
                v317 = v135;
                v318 = 2112;
                v319 = v137;
                v320 = 2112;
                v321 = v138;
                v322 = 2112;
                v323 = v139;
                _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback complete: primary child (%@), fallback child (%@), %@ connected", buf, 0x66u);

                a4 = v287;
                v129 = logb;
              }

              goto LABEL_160;
            }

            if ((nw_endpoint_handler_get_logging_disabled(v125) & 1) == 0)
            {
              v290 = a4;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v234 = gconnectionLogObj;
              if (os_log_type_enabled(v234, OS_LOG_TYPE_DEBUG))
              {
                logd = nw_endpoint_handler_get_id_string(v125);
                v278 = nw_endpoint_handler_dry_run_string(v125);
                v235 = nw_endpoint_handler_copy_endpoint(v125);
                v236 = nw_endpoint_get_logging_description(v235);
                v237 = nw_endpoint_handler_state_string(v125);
                v238 = nw_endpoint_handler_mode_string(v125);
                v239 = nw_endpoint_handler_copy_current_path(v125);
                v240 = v239;
                v241 = *(v299 + 7);
                v242 = *(v299 + 8);
                if (v22 == v300)
                {
                  v243 = *(v299 + 7);
                }

                else
                {
                  v243 = *(v299 + 8);
                }

                *buf = 136448514;
                v305 = "nw_endpoint_fallback_receive_report";
                v306 = 2082;
                v307 = logd;
                v308 = 2082;
                v309 = v278;
                v310 = 2082;
                v311 = v236;
                v312 = 2082;
                v313 = v237;
                v314 = 2082;
                v315 = v238;
                v316 = 2114;
                v317 = v239;
                v318 = 2112;
                v319 = v241;
                v320 = 2112;
                v321 = v242;
                v322 = 2112;
                v323 = v243;
                _os_log_impl(&dword_181A37000, v234, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback complete: primary child (%@), fallback child (%@), %@ connected", buf, 0x66u);

                a4 = v290;
              }

              v129 = v234;
LABEL_160:
            }
          }

LABEL_161:
          if (v91 == 3)
          {
            v140 = v101;
            v140->state = 3;
          }

          nw_endpoint_handler_report(v101, 0, a4, 0);
          v141 = *(v299 + 108);
          v101->event.domain = 5;
          p_event = &v101->event;
          if (v22 == v300)
          {
            v101->event.event = 3;
            nw_endpoint_handler_report(v101, 0, p_event, 0);
            if ((v141 & 0x10) == 0)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v101->event.event = 4;
            nw_endpoint_handler_report(v101, 0, p_event, 0);
            if ((v141 & 0x10) != 0)
            {
              goto LABEL_216;
            }
          }

          v143 = v101;
          os_unfair_lock_lock(&v143->lock);
          v144 = v143->current_path;
          os_unfair_lock_unlock(&v143->lock);

          if (!v144)
          {
            if ((nw_endpoint_handler_get_logging_disabled(v143) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v155 = gconnectionLogObj;
              if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
              {
                v156 = nw_endpoint_handler_get_id_string(v143);
                v157 = nw_endpoint_handler_dry_run_string(v143);
                v158 = nw_endpoint_handler_copy_endpoint(v143);
                v159 = nw_endpoint_get_logging_description(v158);
                v160 = nw_endpoint_handler_state_string(v143);
                v161 = nw_endpoint_handler_mode_string(v143);
                v162 = nw_endpoint_handler_copy_current_path(v143);
                *buf = 136447746;
                v305 = "nw_endpoint_fallback_receive_report";
                v306 = 2082;
                v307 = v156;
                v308 = 2082;
                v309 = v157;
                v310 = 2082;
                v311 = v159;
                v312 = 2082;
                v313 = v160;
                v314 = 2082;
                v315 = v161;
                v316 = 2114;
                v317 = v162;
                _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] could not get fallback path", buf, 0x48u);
              }
            }

            goto LABEL_212;
          }

          type = 0uLL;
          if (nw_path_get_fallback_agent(v144, &type))
          {
            v145 = nw_path_agent_action(v144, &type, 131);
            v146 = nw_endpoint_handler_get_logging_disabled(v143);
            if (v145)
            {
              if ((v146 & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v147 = gconnectionLogObj;
                if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
                {
                  v148 = nw_endpoint_handler_get_id_string(v143);
                  v149 = nw_endpoint_handler_dry_run_string(v143);
                  v150 = nw_endpoint_handler_copy_endpoint(v143);
                  v151 = nw_endpoint_get_logging_description(v150);
                  v152 = nw_endpoint_handler_state_string(v143);
                  v153 = nw_endpoint_handler_mode_string(v143);
                  v154 = nw_endpoint_handler_copy_current_path(v143);
                  *buf = 136447746;
                  v305 = "nw_endpoint_fallback_receive_report";
                  v306 = 2082;
                  v307 = v148;
                  v308 = 2082;
                  v309 = v149;
                  v310 = 2082;
                  v311 = v151;
                  v312 = 2082;
                  v313 = v152;
                  v314 = 2082;
                  v315 = v153;
                  v316 = 2114;
                  v317 = v154;
                  _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] asserted fallback agent", buf, 0x48u);
                }

LABEL_211:
              }
            }

            else if ((v146 & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v147 = gconnectionLogObj;
              if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
              {
                v193 = nw_endpoint_handler_get_id_string(v143);
                v194 = nw_endpoint_handler_dry_run_string(v143);
                v195 = nw_endpoint_handler_copy_endpoint(v143);
                v196 = nw_endpoint_get_logging_description(v195);
                v197 = nw_endpoint_handler_state_string(v143);
                v198 = nw_endpoint_handler_mode_string(v143);
                v199 = nw_endpoint_handler_copy_current_path(v143);
                *buf = 136447746;
                v305 = "nw_endpoint_fallback_receive_report";
                v306 = 2082;
                v307 = v193;
                v308 = 2082;
                v309 = v194;
                v310 = 2082;
                v311 = v196;
                v312 = 2082;
                v313 = v197;
                v314 = 2082;
                v315 = v198;
                v316 = 2114;
                v317 = v199;
                _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] could not assert fallback agent", buf, 0x48u);
              }

              goto LABEL_211;
            }
          }

          else if ((nw_endpoint_handler_get_logging_disabled(v143) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v147 = gconnectionLogObj;
            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
            {
              v163 = nw_endpoint_handler_get_id_string(v143);
              v164 = nw_endpoint_handler_dry_run_string(v143);
              v165 = nw_endpoint_handler_copy_endpoint(v143);
              v166 = nw_endpoint_get_logging_description(v165);
              v167 = nw_endpoint_handler_state_string(v143);
              v168 = nw_endpoint_handler_mode_string(v143);
              v169 = nw_endpoint_handler_copy_current_path(v143);
              *buf = 136447746;
              v305 = "nw_endpoint_fallback_receive_report";
              v306 = 2082;
              v307 = v163;
              v308 = 2082;
              v309 = v164;
              v310 = 2082;
              v311 = v166;
              v312 = 2082;
              v313 = v167;
              v314 = 2082;
              v315 = v168;
              v316 = 2114;
              v317 = v169;
              _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] could not get fallback agent", buf, 0x48u);
            }

            goto LABEL_211;
          }

LABEL_212:

          goto LABEL_216;
        }

        *(v90 + 108) = v98 & 0x7F;
        v97 = *(v90 + 109) | 2;
      }

      else
      {
        if (v22 != v89)
        {
          v92 = v90 + 109;
          v93 = *(v90 + 109);
          v94 = 1;
          goto LABEL_87;
        }

        *(v90 + 108) |= 0x80u;
        v97 = *(v90 + 109) & 0xFD;
      }

      *(v90 + 109) = v97;
      goto LABEL_96;
    }

    v294 = a3;
    v296 = v21;
    v27 = v298;
    v28 = *(v27 + 284);

    if ((v28 & 0x20) != 0)
    {
      v288 = a4;
      if ((nw_endpoint_handler_get_logging_disabled(v27) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v209 = v31;
          v276 = nw_endpoint_handler_get_id_string(v27);
          v271 = nw_endpoint_handler_dry_run_string(v27);
          loge = nw_endpoint_handler_copy_endpoint(v27);
          v267 = nw_endpoint_get_logging_description(loge);
          v263 = nw_endpoint_handler_state_string(v27);
          v259 = nw_endpoint_handler_mode_string(v27);
          v210 = nw_endpoint_handler_copy_current_path(v27);
          v211 = nw_endpoint_handler_get_id_string(v10);
          v212 = nw_endpoint_handler_dry_run_string(v10);
          v213 = nw_endpoint_handler_copy_endpoint(v300);
          v214 = nw_endpoint_get_logging_description(v213);
          v215 = nw_endpoint_handler_state_string(v300);
          v216 = nw_endpoint_handler_mode_string(v300);
          v217 = nw_endpoint_handler_copy_current_path(v300);
          *buf = 136449282;
          v305 = "nw_endpoint_fallback_receive_report";
          v306 = 2082;
          v307 = v276;
          v308 = 2082;
          v309 = v271;
          v310 = 2082;
          v311 = v267;
          v312 = 2082;
          v313 = v263;
          v314 = 2082;
          v315 = v259;
          v316 = 2114;
          v317 = v210;
          v318 = 2082;
          v319 = v211;
          v320 = 2082;
          v321 = v212;
          v322 = 2082;
          v323 = v214;
          v324 = 2082;
          v325 = v215;
          v326 = 2082;
          v327 = v216;
          v328 = 2114;
          v329 = v217;
          v31 = v209;
          _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received primary child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a4 = v288;
        }

        goto LABEL_82;
      }

      goto LABEL_276;
    }

    v29 = v27;
    v30 = *(v27 + 284);

    if ((v30 & 0x40) != 0)
    {
      goto LABEL_83;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v31 = gconnectionLogObj;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_82;
    }

    v32 = v29;

    v33 = v32;
    v34 = *(v27 + 284);

    if (v34)
    {
      v35 = "dry-run ";
    }

    else
    {
      v35 = "";
    }

    log = v31;
    v36 = nw_endpoint_handler_copy_endpoint(v33);
    v37 = v36;
    v273 = v36;
    if (v36)
    {
      v38 = _nw_endpoint_get_logging_description(v36);
    }

    else
    {
      v38 = "<NULL>";
    }

    v50 = v33;
    v51 = v50;
    v52 = v50[30];
    if (v52 > 5)
    {
      v53 = "unknown-state";
    }

    else
    {
      v53 = off_1E6A31048[v52];
    }

    v54 = v51;
    v55 = v54;
    v56 = v298->mode;
    v265 = v53;
    v269 = v38;
    if (v56 > 2)
    {
      switch(v56)
      {
        case 3:
          v57 = "proxy";
          goto LABEL_69;
        case 4:
          v57 = "fallback";
          goto LABEL_69;
        case 5:
          v57 = "transform";
          goto LABEL_69;
      }
    }

    else
    {
      switch(v56)
      {
        case 0:
          v57 = "path";
          goto LABEL_69;
        case 1:
          v57 = "resolver";
          goto LABEL_69;
        case 2:
          v57 = nw_endpoint_flow_mode_string(v54[33]);
LABEL_69:

          v66 = v55;
          os_unfair_lock_lock(v66 + 28);
          v67 = v66[8];
          os_unfair_lock_unlock(v66 + 28);

          v68 = v67;
          v262 = nw_endpoint_handler_get_id_string(v300);
          v69 = nw_endpoint_handler_dry_run_string(v300);
          v70 = nw_endpoint_handler_copy_endpoint(v300);
          v71 = v70;
          v286 = a4;
          v291 = v22;
          if (v70)
          {
            v72 = _nw_endpoint_get_logging_description(v70);
          }

          else
          {
            v72 = "<NULL>";
          }

          v73 = v32 + 184;

          v74 = nw_endpoint_handler_state_string(v300);
          v75 = nw_endpoint_handler_mode_string(v300);
          v76 = nw_endpoint_handler_copy_current_path(v300);
          *buf = 136449282;
          v305 = "nw_endpoint_fallback_receive_report";
          v306 = 2082;
          v307 = v73;
          v308 = 2082;
          v309 = v35;
          v310 = 2082;
          v311 = v269;
          v312 = 2082;
          v313 = v265;
          v314 = 2082;
          v315 = v57;
          v316 = 2114;
          v317 = v68;
          v318 = 2082;
          v319 = v262;
          v320 = 2082;
          v321 = v69;
          v322 = 2082;
          v323 = v72;
          v324 = 2082;
          v325 = v74;
          v326 = 2082;
          v327 = v75;
          v328 = 2114;
          v329 = v76;
          v31 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received primary child report:[C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a4 = v286;
          v22 = v291;

          goto LABEL_82;
      }
    }

    v57 = "unknown-mode";
    goto LABEL_69;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v26 = "unknown-mode";
    }

    else
    {
      v26 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v305 = "nw_endpoint_fallback_receive_report";
    v306 = 2082;
    v307 = v26;
    v308 = 2082;
    v309 = "fallback";
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

  v24 = 0;
LABEL_219:

  return v24;
}

char *__cdecl nw_connection_copy_description(nw_connection_t connection)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    v3 = nw_connection_copy_description_level(v1, 1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_copy_description";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

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
        v16 = "nw_connection_copy_description";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          v16 = "nw_connection_copy_description";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_connection_copy_description";
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
        v16 = "nw_connection_copy_description";
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

uint64_t NWPath.debugDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for NWPath(0) + 52));
  if (!v1)
  {
    return 1701736302;
  }

  v2 = [v1 description];
  v3 = sub_182AD2F88();

  return v3;
}

uint64_t sub_181EA9B98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181EA9C90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED8, &qword_182AF1B00);
  *v3 = v1;
  v3[1] = sub_181EA9B98;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_181EA9D4C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  if (!v2)
  {
    return 1701736302;
  }

  v3 = [v2 description];
  v4 = sub_182AD2F88();

  return v4;
}

uint64_t ___ZL27nw_association_update_pathsP25NWConcrete_nw_associationPU21objcproto10OS_nw_path8NSObject_block_invoke(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v50 = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  v5 = extra;
  if (!*(extra + 32))
  {
    goto LABEL_7;
  }

  v6 = *(extra + 40);
  v7 = time(0);
  v8 = v5[4];
  v9 = v7 > v8;
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 32);
  v12 = v50;
  v13 = v11;
  v14 = v10;
  if (!v12)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_definition_should_flush_cache";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v43, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v54 = "nw_protocol_definition_should_flush_cache";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null definition", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v44, type);
        if (backtrace_string)
        {
          if (v48)
          {
            *buf = 136446466;
            v54 = "nw_protocol_definition_should_flush_cache";
            v55 = 2082;
            v56 = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_69;
        }

        if (v48)
        {
          *buf = 136446210;
          v54 = "nw_protocol_definition_should_flush_cache";
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v54 = "nw_protocol_definition_should_flush_cache";
          _os_log_impl(&dword_181A37000, v44, v49, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_69:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_48;
  }

  v15 = v12[9];
  if (v15)
  {
    v16 = *(v15 + 64);
    if (v16)
    {
      v9 = v16(v12, v6, v7 > v8, v13, v14);
    }
  }

  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_7:
  v17 = v5[5];
  if (v17)
  {
    nw_protocol_definition_deallocate_cache_entry(v50, v17);
  }

  nw_context_remove_cache_entry(*(a1 + 48), v5);
  if (nw_hash_table_remove_node(*(*(a1 + 32) + 56), a2) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(*(a1 + 32) + 16)))
  {
    goto LABEL_48;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v18 = gconnectionLogObj;
  v19 = *(*(a1 + 32) + 8);
  v20 = v19;
  if (v19)
  {
    logging_description = _nw_endpoint_get_logging_description(v19);
  }

  else
  {
    logging_description = "<NULL>";
  }

  *buf = 136446722;
  v54 = "nw_association_update_paths_block_invoke";
  v55 = 2082;
  v56 = logging_description;
  v57 = 2048;
  v58 = a2;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (__nwlog_fault(v22, &type, &v51))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        v25 = *(*(a1 + 32) + 8);
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
        v54 = "nw_association_update_paths_block_invoke";
        v55 = 2082;
        v56 = v27;
        v57 = 2048;
        v58 = a2;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 0x20u);
      }
    }

    else if (v51 == 1)
    {
      v28 = __nw_create_backtrace_string();
      if (v28)
      {
        v29 = v28;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v30 = gconnectionLogObj;
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          v32 = *(*(a1 + 32) + 8);
          v33 = v32;
          if (v32)
          {
            v34 = _nw_endpoint_get_logging_description(v32);
          }

          else
          {
            v34 = "<NULL>";
          }

          *buf = 136446978;
          v54 = "nw_association_update_paths_block_invoke";
          v55 = 2082;
          v56 = v34;
          v57 = 2048;
          v58 = a2;
          v59 = 2082;
          v60 = v29;
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v29);
        if (v22)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v39 = type;
      if (os_log_type_enabled(v23, type))
      {
        v40 = nw_endpoint_get_logging_description(*(*(a1 + 32) + 8));
        *buf = 136446722;
        v54 = "nw_association_update_paths_block_invoke";
        v55 = 2082;
        v56 = v40;
        v57 = 2048;
        v58 = a2;
        _os_log_impl(&dword_181A37000, v23, v39, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v23 = gconnectionLogObj;
      v35 = type;
      if (os_log_type_enabled(v23, type))
      {
        v36 = *(*(a1 + 32) + 8);
        v37 = v36;
        if (v36)
        {
          v38 = _nw_endpoint_get_logging_description(v36);
        }

        else
        {
          v38 = "<NULL>";
        }

        *buf = 136446722;
        v54 = "nw_association_update_paths_block_invoke";
        v55 = 2082;
        v56 = v38;
        v57 = 2048;
        v58 = a2;
        _os_log_impl(&dword_181A37000, v23, v35, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

  if (v22)
  {
LABEL_47:
    free(v22);
  }

LABEL_48:

  return 1;
}

uint64_t ___ZL41nw_endpoint_handler_has_fallback_childrenP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3->mode == 4 || nw_endpoint_handler_has_fallback_children(v3))
  {
    v5 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void nw_protocol_input_finished_quiet(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = a1[3];
  if (!v3)
  {
    return;
  }

  v4 = a2;
  if (!a2)
  {
    return;
  }

  v5 = *(v3 + 184);
  if (!v5)
  {
    return;
  }

  v6 = a1[5];
  v7 = a1;
  if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = a1[8]) != 0)
  {
    v9 = v7[11];
    v8 = 0;
    if (v9)
    {
      v7[11] = v9 + 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 40);
  v11 = a2;
  if (v10 != &nw_protocol_ref_counted_handle && (v10 != &nw_protocol_ref_counted_additional_handle || (v11 = *(a2 + 64)) == 0))
  {
    v5(a1, a2);
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v12 = *(v11 + 88);
  if (v12)
  {
    *(v11 + 88) = v12 + 1;
  }

  v5(a1, a2);
  v13 = *(v4 + 40);
  if (v13 != &nw_protocol_ref_counted_handle && (v13 != &nw_protocol_ref_counted_additional_handle || (v4 = *(v4 + 64)) == 0) || (v14 = *(v4 + 88)) == 0 || (v15 = v14 - 1, (*(v4 + 88) = v15) != 0))
  {
    if (v8)
    {
      return;
    }

    goto LABEL_24;
  }

  v21 = *(v4 + 64);
  if (v21)
  {
    *(v4 + 64) = 0;
    v21[2](v21);
    _Block_release(v21);
  }

  if (*(v4 + 72))
  {
    v22 = *(v4 + 64);
    if (v22)
    {
      _Block_release(v22);
    }
  }

  free(v4);
  if ((v8 & 1) == 0)
  {
LABEL_24:
    v16 = v2[5];
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
    {
      v17 = v2[11];
      if (v17)
      {
        v18 = v17 - 1;
        v2[11] = v18;
        if (!v18)
        {
          v19 = v2[8];
          if (v19)
          {
            v2[8] = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (v2[9])
          {
            v20 = v2[8];
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(v2);
        }
      }
    }
  }
}

void _nw_path_set_throughput_estimates(char *a1, char a2, char a3)
{
  if (a1)
  {
    v5 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v6 = a1;
    swift_beginAccess();
    v5[356] = a2;
    v5[357] = a3;
  }
}

uint64_t nw_interface_copy_delegate_interface(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_copy_delegate_interface(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_copy_delegate_interface";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_copy_delegate_interface";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_copy_delegate_interface";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_copy_delegate_interface";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_copy_delegate_interface";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t _nw_interface_copy_delegate_interface(uint64_t a1)
{

  sub_181EAAC3C(&v2, &v3);

  return v3;
}

uint64_t sub_181EAAC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + 24);
  if (result)
  {
    sub_181E378A4(result, &v16, v17);
    type metadata accessor for Interface.BackingClass();
    v4 = swift_allocObject();
    v5 = v18[0];
    v4[9] = v17[8];
    v4[10] = v5;
    *(v4 + 170) = *(v18 + 10);
    v6 = v17[5];
    v4[5] = v17[4];
    v4[6] = v6;
    v7 = v17[7];
    v4[7] = v17[6];
    v4[8] = v7;
    v8 = v17[1];
    v4[1] = v17[0];
    v4[2] = v8;
    v9 = v17[3];
    v4[3] = v17[2];
    v4[4] = v9;
    v10 = type metadata accessor for __NWInterface();
    v11 = objc_allocWithZone(v10);
    v12 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

    v13 = swift_slowAlloc();
    *&v11[v12] = v13;
    *&v11[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v11[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v4;
    *v13 = 0;
    v15.receiver = v11;
    v15.super_class = v10;
    v14 = objc_msgSendSuper2(&v15, sel_init);

    *a2 = v14;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t nw_path_get_reason_description(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    reason_description = _nw_path_get_reason_description();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_path_get_reason_description";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null path", buf, 12);

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
        v15 = "nw_path_get_reason_description";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null path", buf, 0xCu);
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
          v15 = "nw_path_get_reason_description";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_path_get_reason_description";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_path_get_reason_description";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  reason_description = 0;
LABEL_3:

  return reason_description;
}

uint64_t nw_path_get_interface_time_delta(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    interface_time_delta = _nw_path_get_interface_time_delta(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_interface_time_delta";
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
        v16 = "nw_path_get_interface_time_delta";
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
          v16 = "nw_path_get_interface_time_delta";
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
        v16 = "nw_path_get_interface_time_delta";
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
        v16 = "nw_path_get_interface_time_delta";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  interface_time_delta = 0;
LABEL_3:

  return interface_time_delta;
}

uint64_t nw_path_copy_group_members(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_group_members(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_group_members";
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
        v16 = "nw_path_copy_group_members";
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
          v16 = "nw_path_copy_group_members";
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
        v16 = "nw_path_copy_group_members";
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
        v16 = "nw_path_copy_group_members";
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

uint64_t nw_nsstring(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v7 = 136446466;
    v8 = "nw_nsstring";
    v9 = 2080;
    v10 = a1;
    v6 = 22;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s @(%s) failed", &v7, v6);

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return result;
}

uint64_t nw_parameters_get_url(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_url_endpoint(a1);
    v2 = v1;
    if (v1)
    {
      v3 = v1;
      url = _nw_endpoint_get_url(v3);
    }

    else
    {
      url = 0;
    }

    return url;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_get_url";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

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
        v17 = "nw_parameters_get_url";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters", buf, 0xCu);
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
          v17 = "nw_parameters_get_url";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_url";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_url";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_parameters_get_sanitized_url(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_url_endpoint(a1);
    v2 = v1;
    if (v1)
    {
      v3 = v1;
      sanitized_url = _nw_endpoint_get_sanitized_url(v3);
    }

    else
    {
      sanitized_url = 0;
    }

    return sanitized_url;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_get_sanitized_url";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

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
        v17 = "nw_parameters_get_sanitized_url";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters", buf, 0xCu);
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
          v17 = "nw_parameters_get_sanitized_url";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_sanitized_url";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_sanitized_url";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_interface_is_expensive(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_expensive(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_expensive";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_is_expensive";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_expensive";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_expensive";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_expensive";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_is_constrained(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_constrained(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_constrained";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_is_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_constrained";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_is_ultra_constrained(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_ultra_constrained(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_ultra_constrained";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_is_ultra_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_ultra_constrained";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_ultra_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_ultra_constrained";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_parameters_has_preferred_netagents(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_preferred_netagents(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_preferred_netagents";
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
        v12 = "nw_parameters_has_preferred_netagents";
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
            v12 = "nw_parameters_has_preferred_netagents";
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
        v12 = "nw_parameters_has_preferred_netagents";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_preferred_netagents";
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

uint64_t nw_parameters_get_no_delay(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_delay(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_delay";
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
        v12 = "nw_parameters_get_no_delay";
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
            v12 = "nw_parameters_get_no_delay";
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
        v12 = "nw_parameters_get_no_delay";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_delay";
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

BOOL nw_parameters_has_prohibited_interface_types(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_prohibited_interface_types(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_prohibited_interface_types";
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
        v12 = "nw_parameters_has_prohibited_interface_types";
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
            v12 = "nw_parameters_has_prohibited_interface_types";
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
        v12 = "nw_parameters_has_prohibited_interface_types";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_interface_types";
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

uint64_t nw_parameters_has_prohibited_interface_subtypes(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_prohibited_interface_subtypes(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_prohibited_interface_subtypes";
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
        v12 = "nw_parameters_has_prohibited_interface_subtypes";
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
            v12 = "nw_parameters_has_prohibited_interface_subtypes";
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
        v12 = "nw_parameters_has_prohibited_interface_subtypes";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_interface_subtypes";
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

BOOL nw_parameters_has_preferred_interface_subtypes(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_preferred_interface_subtypes(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_preferred_interface_subtypes";
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
        v12 = "nw_parameters_has_preferred_interface_subtypes";
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
            v12 = "nw_parameters_has_preferred_interface_subtypes";
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
        v12 = "nw_parameters_has_preferred_interface_subtypes";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_preferred_interface_subtypes";
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

BOOL nw_parameters_has_required_netagents(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_required_netagents(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_required_netagents";
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
        v12 = "nw_parameters_has_required_netagents";
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
            v12 = "nw_parameters_has_required_netagents";
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
        v12 = "nw_parameters_has_required_netagents";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_required_netagents";
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

BOOL nw_parameters_has_prohibited_netagents(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_prohibited_netagents(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_prohibited_netagents";
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
        v12 = "nw_parameters_has_prohibited_netagents";
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
            v12 = "nw_parameters_has_prohibited_netagents";
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
        v12 = "nw_parameters_has_prohibited_netagents";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_prohibited_netagents";
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

uint64_t nw_parameters_get_prohibit_roaming(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_prohibit_roaming(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_roaming";
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
        v12 = "nw_parameters_get_prohibit_roaming";
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
            v12 = "nw_parameters_get_prohibit_roaming";
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
        v12 = "nw_parameters_get_prohibit_roaming";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_roaming";
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

uint64_t nw_parameters_get_resolve_ptr(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_resolve_ptr(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_resolve_ptr";
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
        v12 = "nw_parameters_get_resolve_ptr";
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
            v12 = "nw_parameters_get_resolve_ptr";
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
        v12 = "nw_parameters_get_resolve_ptr";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_resolve_ptr";
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

uint64_t nw_parameters_copy_tls_session_id(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_tls_session_id";
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
        v12 = "nw_parameters_copy_tls_session_id";
        v6 = "%{public}s called with null parameters";
LABEL_16:
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
            v12 = "nw_parameters_copy_tls_session_id";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v8)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_tls_session_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_tls_session_id";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_link_get_local_congestion_info(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null link_congestion_info", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null link_congestion_info, backtrace limit exceeded";
          goto LABEL_59;
        }

        goto LABEL_60;
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
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null link_congestion_info, no backtrace";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (v13)
      {
        *buf = 136446466;
        v22 = "nw_link_get_local_congestion_info";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null link_congestion_info, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_61:
      if (v5)
      {
        goto LABEL_62;
      }

      return;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_60;
    }

    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v8 = "%{public}s called with null link_congestion_info";
    goto LABEL_59;
  }

  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null congestion_count", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null congestion_count, backtrace limit exceeded";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v14 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v15 = os_log_type_enabled(v6, type);
      if (!v14)
      {
        if (v15)
        {
          *buf = 136446210;
          v22 = "nw_link_get_local_congestion_info";
          v8 = "%{public}s called with null congestion_count, no backtrace";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (!v15)
      {
        goto LABEL_41;
      }

      *buf = 136446466;
      v22 = "nw_link_get_local_congestion_info";
      v23 = 2082;
      v24 = v14;
      v16 = "%{public}s called with null congestion_count, dumping backtrace:%{public}s";
      goto LABEL_40;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_60;
    }

    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v8 = "%{public}s called with null congestion_count";
LABEL_59:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_60;
  }

  if (!a3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_link_get_local_congestion_info";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null ce_count", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null ce_count";
      goto LABEL_59;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_link_get_local_congestion_info";
        v8 = "%{public}s called with null ce_count, backtrace limit exceeded";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v14 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v14)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_link_get_local_congestion_info";
        v8 = "%{public}s called with null ce_count, no backtrace";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (!v17)
    {
      goto LABEL_41;
    }

    *buf = 136446466;
    v22 = "nw_link_get_local_congestion_info";
    v23 = 2082;
    v24 = v14;
    v16 = "%{public}s called with null ce_count, dumping backtrace:%{public}s";
LABEL_40:
    _os_log_impl(&dword_181A37000, v6, v7, v16, buf, 0x16u);
    goto LABEL_41;
  }

  if (a4)
  {
    *a2 = *a1;
    *a3 = a1[1];
    *a4 = a1[2];
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_link_get_local_congestion_info";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null pkt_count", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_61;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null pkt_count";
      goto LABEL_59;
    }

LABEL_60:

    goto LABEL_61;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null pkt_count, backtrace limit exceeded";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v14 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v18 = os_log_type_enabled(v6, type);
  if (!v14)
  {
    if (v18)
    {
      *buf = 136446210;
      v22 = "nw_link_get_local_congestion_info";
      v8 = "%{public}s called with null pkt_count, no backtrace";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "nw_link_get_local_congestion_info";
    v23 = 2082;
    v24 = v14;
    v16 = "%{public}s called with null pkt_count, dumping backtrace:%{public}s";
    goto LABEL_40;
  }

LABEL_41:

  free(v14);
  if (v5)
  {
LABEL_62:
    free(v5);
  }
}

void nw_socks5_connection_increment_busy_on_queue(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = v3;
  v6 = v5;
  if (*(v5 + 136))
  {
    v7 = *(v5 + 33);
    if (v7 != -1)
    {
      *(v5 + 33) = v7 + 1;
LABEL_12:
      v12 = v6;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_socks5_server_handle_busy_changed_block_invoke;
      v25 = &unk_1E6A3D868;
      v26 = v12;
      os_unfair_lock_lock(v12 + 6);
      (*&buf[16])(buf);
      os_unfair_lock_unlock(v12 + 6);

      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_increment_busy";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s ss_busy_count overflow", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
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
          *&buf[4] = "nw_socks5_server_increment_busy";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s ss_busy_count overflow", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socks5_server_increment_busy";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v18, "%{public}s ss_busy_count overflow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (v19)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_increment_busy";
          _os_log_impl(&dword_181A37000, v10, v18, "%{public}s ss_busy_count overflow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_increment_busy";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s ss_busy_count overflow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_11:
    free(v9);
    goto LABEL_12;
  }

LABEL_13:

  v13 = v21;
  v14 = v21[14];
  if (!v14)
  {
    v15 = mach_continuous_time();
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    v13 = v21;
    v21[15] = v16;
    v14 = v21[14];
  }

  v13[14] = v14 + 1;
LABEL_19:
}

void __nw_socks5_server_handle_busy_changed_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 132))
  {
    v3 = *(v2 + 120);
    if (v3 && (*(v2 + 136) & 2) != 0)
    {
      dispatch_suspend(v3);
      *(*(a1 + 32) + 136) &= ~2u;
      v2 = *(a1 + 32);
    }

    if (!*(v2 + 128))
    {
      v4 = v2;
      keys[0] = xmmword_1E6A31FB8;
      keys[1] = *off_1E6A31FC8;
      v50 = @"TimeoutAction";
      v36 = 10800;
      valuePtr = 255;
      v5 = *MEMORY[0x1E695E480];
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v7 = CFStringCreateWithFormat(v5, 0, @"%@", v4);
      v8 = CFNumberCreate(v5, kCFNumberIntType, &v36);
      v9 = v8;
      values[0] = @"PreventUserIdleSystemSleep";
      values[1] = v6;
      values[2] = v7;
      values[3] = v8;
      values[4] = @"TimeoutActionTurnOff";
      if (v6 && v7 && v8)
      {
        v10 = CFDictionaryCreate(v5, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v10 = 0;
        v18 = 0;
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      CFRelease(v6);
      v18 = v10;
LABEL_17:
      if (v7)
      {
        CFRelease(v7);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (!v18)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v39 = "nw_socks5_server_create_power_assertion";
          v40 = 2112;
          v41 = v4;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %@ Failed to create power assertion properties", buf, 0x16u);
        }

        v21 = 0;
        goto LABEL_39;
      }

      AssertionID = 0;
      v19 = IOPMAssertionCreateWithProperties(v18, &AssertionID);
      CFRelease(v18);
      if (v19)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447490;
          v39 = "nw_socks5_server_create_power_assertion";
          v40 = 2112;
          v41 = v4;
          v42 = 1024;
          v43 = v19;
          v44 = 1024;
          *v45 = v19 >> 26;
          *&v45[4] = 1024;
          *&v45[6] = (v19 >> 14) & 0xFFF;
          v46 = 1024;
          v47 = v19 & 0x3FFF;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %@ IOPMAssertionCreateWithProperties failed: %x (system: %d, subsystem: %d, code: %d)", buf, 0x2Eu);
        }

        v21 = 0;
        goto LABEL_39;
      }

      v23 = mach_continuous_time();
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = v4[14];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        if (v27)
        {
          v28 = AssertionID;
          v29 = nw_delta_nanos(v4[14], v24);
          v39 = "nw_socks5_server_create_power_assertion";
          v40 = 2112;
          *buf = 136446978;
          v41 = v4;
          v42 = 1024;
          v43 = v28;
          v44 = 2048;
          *v45 = v29 / 0x3B9ACA00;
          v30 = "%{public}s %@ created power assertion: %u after %llus";
          v31 = v26;
          v32 = 38;
LABEL_37:
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
        }
      }

      else if (v27)
      {
        *buf = 136446722;
        v39 = "nw_socks5_server_create_power_assertion";
        v40 = 2112;
        v41 = v4;
        v42 = 1024;
        v43 = AssertionID;
        v30 = "%{public}s %@ created power assertion: %u";
        v31 = v26;
        v32 = 28;
        goto LABEL_37;
      }

      v4[14] = v24;
      v21 = AssertionID;
LABEL_39:

      *(*(a1 + 32) + 128) = v21;
    }
  }

  else if (*(v2 + 128))
  {
    v11 = *(v2 + 120);
    if (v11 || (v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 32)), v13 = *(a1 + 32), v14 = *(v13 + 120), *(v13 + 120) = v12, v14, *(*(a1 + 32) + 136) &= ~2u, v15 = *(a1 + 32), v16 = v15[15], handler[0] = MEMORY[0x1E69E9820], handler[1] = 3221225472, handler[2] = __nw_socks5_server_handle_busy_changed_block_invoke_2, handler[3] = &unk_1E6A3D868, v34 = v15, dispatch_source_set_event_handler(v16, handler), v34, v2 = *(a1 + 32), (v11 = *(v2 + 120)) != 0))
    {
      if ((*(v2 + 136) & 2) == 0)
      {
        v17 = dispatch_time(0, 5000000000);
        dispatch_source_set_timer(v11, v17, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
        dispatch_resume(*(*(a1 + 32) + 120));
        *(*(a1 + 32) + 136) |= 2u;
      }
    }
  }
}

void nw_socks5_connection_decrement_busy_on_queue(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = v3;
  v6 = v5;
  if (*(v5 + 136))
  {
    v7 = *(v5 + 33);
    if (v7)
    {
      *(v5 + 33) = v7 - 1;
LABEL_12:
      v12 = v6;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_socks5_server_handle_busy_changed_block_invoke;
      v27 = &unk_1E6A3D868;
      v28 = v12;
      os_unfair_lock_lock(v12 + 6);
      (*&buf[16])(buf);
      os_unfair_lock_unlock(v12 + 6);

      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_decrement_busy";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s ss_busy_count underflow", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v9, &type, &v24))
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
          *&buf[4] = "nw_socks5_server_decrement_busy";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s ss_busy_count underflow", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v20 = type;
        v21 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socks5_server_decrement_busy";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v20, "%{public}s ss_busy_count underflow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_decrement_busy";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s ss_busy_count underflow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_socks5_server_decrement_busy";
          _os_log_impl(&dword_181A37000, v10, v22, "%{public}s ss_busy_count underflow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_11:
    free(v9);
    goto LABEL_12;
  }

LABEL_13:

  v13 = v23[14];
  if (!v13 || (v14 = v13 - 1, (v23[14] = v14) == 0))
  {
    v15 = v23[15];
    if (v15)
    {
      v16 = mach_continuous_time();
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      v18 = v23[16] + nw_delta_nanos(v15, v17);
      v23[15] = 0;
      v23[16] = v18;
    }
  }

LABEL_20:
}

void ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = v13[3];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 32);
  if (*(v15 + 56) != 255 && (*(v15 + 160) & 2) == 0)
  {
    if (v9)
    {
      size = dispatch_data_get_size(v9);
      v17 = size;
      if (!v14 && size)
      {
        if (gLogDatapath == 1)
        {
          v50 = __nwlog_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v51 = *(a1 + 32);
            v52 = "not";
            v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            v67 = 2114;
            *buf = 136446978;
            if (a4)
            {
              v52 = "is";
            }

            v68 = v51;
            v69 = 2048;
            v70 = v17;
            v71 = 2082;
            v72 = v52;
            _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ read %zu bytes %{public}s_complete from outer connection", buf, 0x2Au);
          }

          v15 = *(a1 + 32);
        }

        *(v15 + 184) += v17;
        v18 = &__block_literal_global_44658;
        v19 = &__block_literal_global_44658;
        v20 = *(a1 + 32);
        if (!a4 || (*(v20 + 160) & 0x20) != 0)
        {
          v22 = 0;
        }

        else
        {
          v21 = &__block_literal_global_6_44667;

          v20 = *(a1 + 32);
          v22 = 1;
          v18 = &__block_literal_global_6_44667;
        }

        WeakRetained = objc_loadWeakRetained((v20 + 24));
        nw_socks5_connection_increment_busy_on_queue(*(a1 + 32), WeakRetained);
        v35 = *(a1 + 32);
        v36 = v35[4];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_164;
        v55[3] = &unk_1E6A2DA18;
        v56 = v35;
        v33 = WeakRetained;
        v59 = v22;
        v57 = v33;
        v58 = v17;
        nw_connection_send(v36, v9, v18, 1, v55);

        goto LABEL_31;
      }

      if (v14)
      {
LABEL_16:
        if ((v14 - 6) <= 0x3B && ((1 << (v14 - 6)) & 0x8C9B80004000001) != 0 || v14 == 96)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 32);
            v25 = "not";
            v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            *buf = 136447234;
            v67 = 2114;
            if (a4)
            {
              v25 = "is";
            }

            v68 = v24;
            v69 = 2048;
            v70 = v17;
            v71 = 2082;
            v72 = v25;
            v73 = 1024;
            v74 = v14;
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
          }

          goto LABEL_28;
        }

        v37 = __nwlog_obj();
        v38 = *(a1 + 32);
        v39 = "not";
        v67 = 2114;
        *buf = 136447234;
        v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
        if (a4)
        {
          v39 = "is";
        }

        v68 = v38;
        v69 = 2048;
        v70 = v17;
        v71 = 2082;
        v54 = v39;
        v72 = v39;
        v73 = 1024;
        v74 = v14;
        v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 48);

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
              v43 = *(a1 + 32);
              *buf = 136447234;
              v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
              v67 = 2114;
              v68 = v43;
              v69 = 2048;
              v70 = v17;
              v71 = 2082;
              v72 = v54;
              v73 = 1024;
              v74 = v14;
              _os_log_impl(&dword_181A37000, v41, v42, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
            }
          }

          else if (v63 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v41 = __nwlog_obj();
            v53 = type;
            v45 = os_log_type_enabled(v41, type);
            if (backtrace_string)
            {
              if (v45)
              {
                v46 = *(a1 + 32);
                *buf = 136447490;
                v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
                v67 = 2114;
                v68 = v46;
                v69 = 2048;
                v70 = v17;
                v71 = 2082;
                v72 = v54;
                v73 = 1024;
                v74 = v14;
                v75 = 2082;
                v76 = backtrace_string;
                _os_log_impl(&dword_181A37000, v41, v53, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x3Au);
              }

              free(backtrace_string);
              goto LABEL_52;
            }

            if (v45)
            {
              v49 = *(a1 + 32);
              *buf = 136447234;
              v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
              v67 = 2114;
              v68 = v49;
              v69 = 2048;
              v70 = v17;
              v71 = 2082;
              v72 = v54;
              v73 = 1024;
              v74 = v14;
              _os_log_impl(&dword_181A37000, v41, v53, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, no backtrace", buf, 0x30u);
            }
          }

          else
          {
            v41 = __nwlog_obj();
            v47 = type;
            if (os_log_type_enabled(v41, type))
            {
              v48 = *(a1 + 32);
              *buf = 136447234;
              v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
              v67 = 2114;
              v68 = v48;
              v69 = 2048;
              v70 = v17;
              v71 = 2082;
              v72 = v54;
              v73 = 1024;
              v74 = v14;
              _os_log_impl(&dword_181A37000, v41, v47, "%{public}s %{public}@ out connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, backtrace limit exceeded", buf, 0x30u);
            }
          }
        }

LABEL_52:
        if (v40)
        {
          free(v40);
        }

LABEL_28:
        v29 = objc_loadWeakRetained((*(a1 + 32) + 24));
        nw_socks5_connection_increment_busy_on_queue(*(a1 + 32), v29);
        v30 = *(a1 + 32);
        v31 = v30[4];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_163;
        completion[3] = &unk_1E6A3A558;
        v61 = v30;
        v32 = v29;
        v62 = v32;
        nw_connection_send(v31, 0, &__block_literal_global_6_44667, 1, completion);

        v33 = v61;
        v18 = v32;
LABEL_31:

        goto LABEL_32;
      }
    }

    else if (v14)
    {
      v17 = 0;
      goto LABEL_16;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      v28 = "not";
      v66 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
      *buf = 136446722;
      if (a4)
      {
        v28 = "is";
      }

      v67 = 2114;
      v68 = v27;
      v69 = 2082;
      v70 = v28;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ out connection read data len 0 %{public}s_complete", buf, 0x20u);
    }

    goto LABEL_28;
  }

LABEL_32:
}

void ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_164(uint64_t a1, void *a2)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  v4 = *(a1 + 32);
  if (*(v4 + 56) == 255)
  {
    goto LABEL_26;
  }

  if (v3)
  {
    v5 = v3;
    v6 = v5[3];

    if (*(*(a1 + 32) + 160) < 0 && v6 == 55)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        *buf = 136446722;
        v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
        v40 = 2114;
        v41 = v8;
        v42 = 2112;
        v43[0] = v5;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring write in error %@", buf, 0x20u);
      }

      nw_socks5_connection_outer_connection_read_on_queue(*(a1 + 32));
      goto LABEL_26;
    }

    if ((v6 - 6) <= 0x3B && ((1 << (v6 - 6)) & 0x8C9B80004000001) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 136446722;
        v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
        v40 = 2114;
        v41 = v20;
        v42 = 1024;
        LODWORD(v43[0]) = v6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ write in error %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_22:
      nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
      goto LABEL_26;
    }

    v21 = __nwlog_obj();
    v22 = *(a1 + 32);
    *buf = 136446722;
    v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v40 = 2114;
    v41 = v22;
    v42 = 1024;
    LODWORD(v43[0]) = v6;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s %{public}@ write in error %{darwin.errno}d", buf, 28);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v23, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          v26 = *(a1 + 32);
          *buf = 136446722;
          v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v40 = 2114;
          v41 = v26;
          v42 = 1024;
          LODWORD(v43[0]) = v6;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}@ write in error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v29)
          {
            v30 = *(a1 + 32);
            *buf = 136446978;
            v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            v40 = 2114;
            v41 = v30;
            v42 = 1024;
            LODWORD(v43[0]) = v6;
            WORD2(v43[0]) = 2082;
            *(v43 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v28, "%{public}s %{public}@ write in error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v29)
        {
          v33 = *(a1 + 32);
          *buf = 136446722;
          v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v40 = 2114;
          v41 = v33;
          v42 = 1024;
          LODWORD(v43[0]) = v6;
          _os_log_impl(&dword_181A37000, v24, v28, "%{public}s %{public}@ write in error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v24, type))
        {
          v32 = *(a1 + 32);
          *buf = 136446722;
          v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v40 = 2114;
          v41 = v32;
          v42 = 1024;
          LODWORD(v43[0]) = v6;
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s %{public}@ write in error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_43:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_22;
  }

  if (*(a1 + 56) == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    *buf = 136446722;
    v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v40 = 2114;
    v41 = v10;
    v42 = 2048;
    v43[0] = v11;
    v12 = "%{public}s %{public}@ wrote %zu bytes is_complete into inner connection";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  if ((gLogDatapath & 1) == 0)
  {
    *(v4 + 208) += *(a1 + 48);
    v16 = *(a1 + 32);
    goto LABEL_25;
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 32);
    v35 = *(a1 + 48);
    *buf = 136446722;
    v39 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v40 = 2114;
    v41 = v34;
    v42 = 2048;
    v43[0] = v35;
    v12 = "%{public}s %{public}@ wrote %zu bytes not_complete into inner connection";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEBUG;
LABEL_11:
    _os_log_impl(&dword_181A37000, v13, v14, v12, buf, 0x20u);
  }

LABEL_12:

  v15 = *(a1 + 56);
  *(*(a1 + 32) + 208) += *(a1 + 48);
  v16 = *(a1 + 32);
  if ((v15 & 1) == 0)
  {
LABEL_25:
    nw_socks5_connection_outer_connection_read_on_queue(v16);
    goto LABEL_26;
  }

  *(v16 + 160) |= 2u;
  v17 = *(a1 + 32);
  if ((~v17[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v17, 0);
  }

LABEL_26:
}

void nw_socks5_connection_outer_connection_read_on_queue(NWConcrete_nw_socks5_connection *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v8 = "nw_socks5_connection_outer_connection_read_on_queue";
      v9 = 2114;
      v10 = v1;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ reading on outer connection", buf, 0x16u);
    }
  }

  sc_out_connection = v1->sc_out_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke;
  v5[3] = &unk_1E6A39638;
  v3 = v1;
  v6 = v3;
  nw_connection_receive_internal(sc_out_connection, 0, 1u, 0xFFFFFFFF, v5);
}

void sub_181EB162C()
{
  if ((*(v0 + 158) & 0x20) == 0)
  {
    v1 = *(v0 + 264);
    if (v1)
    {
      v2 = 1 << *(v1 + 32);
      v3 = -1;
      if (v2 < 64)
      {
        v3 = ~(-1 << v2);
      }

      v4 = v3 & *(v1 + 64);
      v5 = (v2 + 63) >> 6;

      v6 = 0;
      while (v4)
      {
LABEL_11:
        v8 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        if ((*(*(*(v1 + 56) + ((v6 << 9) | (8 * v8))) + 80) & 2) != 0)
        {
          v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * v8)));

          sub_181EB27B8(&v9, &v10);
          if (v10)
          {

            return;
          }
        }
      }

      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v7 >= v5)
        {

          return;
        }

        v4 = *(v1 + 64 + 8 * v7);
        ++v6;
        if (v4)
        {
          v6 = v7;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}