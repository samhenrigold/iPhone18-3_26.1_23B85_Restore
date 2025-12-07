NWConcrete_nw_protocol_instance_stub *nw_protocol_instance_stub_create(nw_protocol *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [NWConcrete_nw_protocol_instance_stub alloc];
  if (!result)
  {
    return result;
  }

  v13.receiver = result;
  v13.super_class = NWConcrete_nw_protocol_instance_stub;
  result = [(nw_protocol *)&v13 init];
  if (result)
  {
    result->protocol = a1;
    return result;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s [super init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

BOOL nw_path_has_flows(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_flows(v1);
    v4 = v3 != 0;

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_path_has_flows";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null path", buf, 12);

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
        v17 = "nw_path_has_flows";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
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
          v17 = "nw_path_has_flows";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_path_has_flows";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_path_has_flows";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

uint64_t nw_path_has_proxy_config(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      has_proxy_config = _nw_path_has_proxy_config(v3, v4);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_has_proxy_config";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null proxy_config", buf, 12);

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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null proxy_config", buf, 0xCu);
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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null proxy_config, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null proxy_config, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_has_proxy_config";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null proxy_config, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_has_proxy_config";
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
          v24 = "nw_path_has_proxy_config";
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
          v24 = "nw_path_has_proxy_config";
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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_has_proxy_config";
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

  has_proxy_config = 0;
LABEL_4:

  return has_proxy_config;
}

uint64_t _nw_path_has_proxy_config(char *a1, void *a2)
{
  swift_unknownObjectRetain();
  LOBYTE(a1) = sub_182266ACC(a1, a2);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t nw_http3_get_idle_timeout(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    idle_timeout = nw_http3_get_idle_timeout(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_idle_timeout_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    idle_timeout = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_idle_timeout";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_idle_timeout";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  idle_timeout = 0;
LABEL_5:

  return idle_timeout;
}

void sub_181D3D638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http3_get_keepalive_mode(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    keepalive_mode = nw_http3_get_keepalive_mode(v2);

    goto LABEL_14;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_http3_get_keepalive_mode_block_invoke;
    v14[3] = &unk_1E6A3A858;
    v14[4] = buf;
    nw_protocol_options_access_handle(v1, v14);
    v4 = *&buf[8];
    if (*(*&buf[8] + 24) == 1)
    {
      if (nw_utilities_get_self_is_daemon::onceToken != -1)
      {
        dispatch_once(&nw_utilities_get_self_is_daemon::onceToken, &__block_literal_global_49);
      }

      if (nw_utilities_get_self_is_daemon::is_daemon)
      {
        if (nw_http3_self_is_media_daemon_onceToken != -1)
        {
          dispatch_once(&nw_http3_self_is_media_daemon_onceToken, &__block_literal_global_136);
        }

        v4 = *&buf[8];
        if ((nw_http3_self_is_media_daemon_is_media_daemon & 1) == 0)
        {
          *(*&buf[8] + 24) = 2;
        }
      }

      else
      {
        v4 = *&buf[8];
      }
    }

    keepalive_mode = *(v4 + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_14;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_keepalive_mode";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v7, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_keepalive_mode";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          *&buf[4] = "nw_http3_get_keepalive_mode";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_31;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_keepalive_mode";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_keepalive_mode";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_31:
  if (v7)
  {
    free(v7);
  }

  keepalive_mode = 0;
LABEL_14:

  return keepalive_mode;
}

void sub_181D3DA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http3_get_0rtt_enabled(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    _0rtt_enabled = nw_http3_get_0rtt_enabled(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_0rtt_enabled_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    _0rtt_enabled = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_0rtt_enabled";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_get_0rtt_enabled";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_0rtt_enabled";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_0rtt_enabled";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_0rtt_enabled";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  _0rtt_enabled = 0;
LABEL_5:

  return _0rtt_enabled & 1;
}

void sub_181D3DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http3_get_sessions_to_request(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    sessions_to_request = nw_http3_get_sessions_to_request(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_sessions_to_request_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    sessions_to_request = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_sessions_to_request";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_get_sessions_to_request";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_sessions_to_request";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_sessions_to_request";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_sessions_to_request";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  sessions_to_request = 0;
LABEL_5:

  return sessions_to_request;
}

void sub_181D3E138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http3_get_resumable_session_agent(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http3_options(v3);
    nw_http3_get_resumable_session_agent(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http3_get_resumable_session_agent_block_invoke;
    v12[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v12[4] = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http3_get_resumable_session_agent";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        v16 = "nw_http3_get_resumable_session_agent";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options)";
LABEL_19:
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
            v16 = "nw_http3_get_resumable_session_agent";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v16 = "nw_http3_get_resumable_session_agent";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_http3_get_resumable_session_agent";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

LABEL_5:
}

unint64_t _nw_protocol_options_get_top_id(uint64_t a1)
{
  v1 = a1 + *(*a1 + 152);

  swift_beginAccess();
  v2 = *v1;
  LODWORD(v1) = *(v1 + 8);

  if (v1)
  {
    result = 0;
  }

  else
  {
    result = v2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(result))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t nw_protocol_get_next_instance_id()
{
  v7 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(nw_protocol_get_next_instance_id::s_last_instance_id, 1u);
  result = add + 1;
  if (add == -1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446466;
      v4 = "nw_protocol_get_next_instance_id";
      v5 = 1024;
      v6 = 0;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s reached %u instance ids, wrapping", &v3, 0x12u);
    }

    return nw_protocol_get_next_instance_id();
  }

  return result;
}

void *nw_http3_copy_resumable_session_handler(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    v3 = nw_http3_copy_resumable_session_handler(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_copy_resumable_session_handler_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    v3 = _Block_copy(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_copy_resumable_session_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_copy_resumable_session_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_copy_resumable_session_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_resumable_session_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_resumable_session_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void sub_181D3E95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http3_copy_resumable_session_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a2 + 56));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

id nw_http3_copy_resumable_session_handler_queue(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    v3 = nw_http3_copy_resumable_session_handler_queue(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__75915;
    v18 = __Block_byref_object_dispose__75916;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_copy_resumable_session_handler_queue_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_copy_resumable_session_handler_queue";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_copy_resumable_session_handler_queue";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_copy_resumable_session_handler_queue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_resumable_session_handler_queue";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_resumable_session_handler_queue";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void sub_181D3ED34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *nw_http3_copy_remote_settings_handler(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    v3 = nw_http3_copy_remote_settings_handler(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_copy_remote_settings_handler_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    v3 = _Block_copy(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_copy_remote_settings_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_copy_remote_settings_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_copy_remote_settings_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_remote_settings_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_remote_settings_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void sub_181D3F0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http3_copy_remote_settings_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a2 + 80));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

id nw_http3_copy_remote_settings_handler_queue(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    v3 = nw_http3_copy_remote_settings_handler_queue(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__75915;
    v18 = __Block_byref_object_dispose__75916;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_copy_remote_settings_handler_queue_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_copy_remote_settings_handler_queue";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_copy_remote_settings_handler_queue";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_copy_remote_settings_handler_queue";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_remote_settings_handler_queue";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_remote_settings_handler_queue";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void sub_181D3F4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http3_get_initial_remote_settings(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (nw_protocol_options_is_http_messaging(v7))
  {
    v8 = nw_http_messaging_options_copy_http3_options(v7);
    initial_remote_settings = nw_http3_get_initial_remote_settings(v8, a2, a3, a4);

    goto LABEL_8;
  }

  if ((nw_protocol_options_is_http3(v7) & 1) == 0)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http3_get_initial_remote_settings";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v12, &v27, &v26))
    {
      goto LABEL_61;
    }

    if (v27 != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v27;
        if (os_log_type_enabled(v13, v27))
        {
          *buf = 136446210;
          v29 = "nw_http3_get_initial_remote_settings";
          v15 = "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v27;
      v20 = os_log_type_enabled(v13, v27);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v29 = "nw_http3_get_initial_remote_settings";
          v15 = "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (!v20)
      {
        goto LABEL_42;
      }

      *buf = 136446466;
      v29 = "nw_http3_get_initial_remote_settings";
      v30 = 2082;
      v31 = backtrace_string;
      v21 = "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s";
      goto LABEL_41;
    }

    v13 = __nwlog_obj();
    v14 = v27;
    if (!os_log_type_enabled(v13, v27))
    {
      goto LABEL_60;
    }

    *buf = 136446210;
    v29 = "nw_http3_get_initial_remote_settings";
    v15 = "%{public}s called with null nw_protocol_options_is_http3(options)";
LABEL_59:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_60;
  }

  if (!a2)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http3_get_initial_remote_settings";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null max_field_section_size", buf, 12);

    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v12, &v27, &v26))
    {
      goto LABEL_61;
    }

    if (v27 != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v27;
        if (os_log_type_enabled(v13, v27))
        {
          *buf = 136446210;
          v29 = "nw_http3_get_initial_remote_settings";
          v15 = "%{public}s called with null max_field_section_size, backtrace limit exceeded";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v27;
      v22 = os_log_type_enabled(v13, v27);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          v29 = "nw_http3_get_initial_remote_settings";
          v15 = "%{public}s called with null max_field_section_size, no backtrace";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      if (!v22)
      {
        goto LABEL_42;
      }

      *buf = 136446466;
      v29 = "nw_http3_get_initial_remote_settings";
      v30 = 2082;
      v31 = backtrace_string;
      v21 = "%{public}s called with null max_field_section_size, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

    v13 = __nwlog_obj();
    v14 = v27;
    if (!os_log_type_enabled(v13, v27))
    {
      goto LABEL_60;
    }

    *buf = 136446210;
    v29 = "nw_http3_get_initial_remote_settings";
    v15 = "%{public}s called with null max_field_section_size";
    goto LABEL_59;
  }

  if (a3)
  {
    if (a4)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __nw_http3_get_initial_remote_settings_block_invoke;
      v25[3] = &__block_descriptor_56_e9_B16__0_v8l;
      v25[4] = a2;
      v25[5] = a3;
      v25[6] = a4;
      initial_remote_settings = nw_protocol_options_access_handle(v7, v25);
      goto LABEL_8;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http3_get_initial_remote_settings";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null blocked_streams", buf, 12);

    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v12, &v27, &v26))
    {
      goto LABEL_61;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = v27;
      if (os_log_type_enabled(v13, v27))
      {
        *buf = 136446210;
        v29 = "nw_http3_get_initial_remote_settings";
        v15 = "%{public}s called with null blocked_streams";
        goto LABEL_59;
      }

LABEL_60:

      goto LABEL_61;
    }

    if (v26 != 1)
    {
      v13 = __nwlog_obj();
      v14 = v27;
      if (os_log_type_enabled(v13, v27))
      {
        *buf = 136446210;
        v29 = "nw_http3_get_initial_remote_settings";
        v15 = "%{public}s called with null blocked_streams, backtrace limit exceeded";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = v27;
    v24 = os_log_type_enabled(v13, v27);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v29 = "nw_http3_get_initial_remote_settings";
        v15 = "%{public}s called with null blocked_streams, no backtrace";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (!v24)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v29 = "nw_http3_get_initial_remote_settings";
    v30 = 2082;
    v31 = backtrace_string;
    v21 = "%{public}s called with null blocked_streams, dumping backtrace:%{public}s";
    goto LABEL_41;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_http3_get_initial_remote_settings";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null max_table_capacity", buf, 12);

  v27 = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v12, &v27, &v26))
  {
    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = v27;
      if (!os_log_type_enabled(v13, v27))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v29 = "nw_http3_get_initial_remote_settings";
      v15 = "%{public}s called with null max_table_capacity";
      goto LABEL_59;
    }

    if (v26 != 1)
    {
      v13 = __nwlog_obj();
      v14 = v27;
      if (os_log_type_enabled(v13, v27))
      {
        *buf = 136446210;
        v29 = "nw_http3_get_initial_remote_settings";
        v15 = "%{public}s called with null max_table_capacity, backtrace limit exceeded";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = v27;
    v23 = os_log_type_enabled(v13, v27);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v29 = "nw_http3_get_initial_remote_settings";
        v15 = "%{public}s called with null max_table_capacity, no backtrace";
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    if (!v23)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v29 = "nw_http3_get_initial_remote_settings";
    v30 = 2082;
    v31 = backtrace_string;
    v21 = "%{public}s called with null max_table_capacity, dumping backtrace:%{public}s";
LABEL_41:
    _os_log_impl(&dword_181A37000, v13, v14, v21, buf, 0x16u);
LABEL_42:

    free(backtrace_string);
  }

LABEL_61:
  if (v12)
  {
    free(v12);
  }

  initial_remote_settings = 0;
LABEL_8:

  return initial_remote_settings;
}

uint64_t __nw_http3_get_initial_remote_settings_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 109);
  if ((v2 & 2) != 0)
  {
    v3 = *(a1 + 40);
    **(a1 + 32) = *(a2 + 16);
    *v3 = *(a2 + 24);
    **(a1 + 48) = *(a2 + 32);
  }

  return (v2 >> 1) & 1;
}

id nw_http3_copy_initial_remote_settings_data(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    v3 = nw_http3_copy_initial_remote_settings_data(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__75915;
    v18 = __Block_byref_object_dispose__75916;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_copy_initial_remote_settings_data_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_copy_initial_remote_settings_data";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_copy_initial_remote_settings_data";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_copy_initial_remote_settings_data";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_initial_remote_settings_data";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_copy_initial_remote_settings_data";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void sub_181D400EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http3_get_max_webtransport_sessions(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    max_webtransport_sessions = nw_http3_get_max_webtransport_sessions(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_max_webtransport_sessions_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    max_webtransport_sessions = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_max_webtransport_sessions";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        *&buf[4] = "nw_http3_get_max_webtransport_sessions";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_max_webtransport_sessions";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_max_webtransport_sessions";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_max_webtransport_sessions";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  max_webtransport_sessions = 0;
LABEL_5:

  return max_webtransport_sessions;
}

void sub_181D4047C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __33__nw_listener_inbox_socket_start__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 88) == 17)
  {
    v3 = _nw_array_create();
  }

  else
  {
    v3 = 0;
  }

  while (([v2[1] canHandleNewConnection:v2] & 1) != 0)
  {
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    __src = 0;
    v24 = 128;
    v4 = *(v2 + 88);
    if (v4 == 17)
    {
      v25 = -1;
      *buf = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v7 = nw_listener_inbox_accept_udp(v2);
      v8 = v25;
      if (v25 != -1)
      {
        address = _nw_endpoint_create_address(&__src.sa_len);
        nw_listener_inbox_socket_handle_new_socket(v2, v8, address, v7, *buf, v3);
      }

      v10 = type;

      if ((v10 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v4 != 6)
      {
        goto LABEL_39;
      }

      v5 = accept(v1, &__src, &v24);
      v25 = v5;
      if (v5 == -1)
      {
        goto LABEL_39;
      }

      if (v24 && v24 >= __src.sa_len)
      {
        v6 = _nw_endpoint_create_address(&__src.sa_len);
        nw_listener_inbox_socket_handle_new_socket(v2, v5, v6, 0, 0, v3);
      }

      else
      {
        if (!v24)
        {
          goto LABEL_23;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        *buf = 136446722;
        v27 = "nw_listener_inbox_socket_handle_accept_event";
        v28 = 1024;
        v29 = v24;
        v30 = 1024;
        sa_len = __src.sa_len;
        LODWORD(v21) = 24;
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s Bad sockaddr length from kernel: slen = %u, ss.ss_len = %u", buf, v21);

        type = OS_LOG_TYPE_ERROR;
        v22 = 0;
        if (!__nwlog_fault(v12, &type, &v22))
        {
          goto LABEL_21;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446722;
            v27 = "nw_listener_inbox_socket_handle_accept_event";
            v28 = 1024;
            v29 = v24;
            v30 = 1024;
            sa_len = __src.sa_len;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Bad sockaddr length from kernel: slen = %u, ss.ss_len = %u", buf, 0x18u);
          }

          goto LABEL_20;
        }

        if (v22 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v19 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446722;
            v27 = "nw_listener_inbox_socket_handle_accept_event";
            v28 = 1024;
            v29 = v24;
            v30 = 1024;
            sa_len = __src.sa_len;
            _os_log_impl(&dword_181A37000, v13, v19, "%{public}s Bad sockaddr length from kernel: slen = %u, ss.ss_len = %u, backtrace limit exceeded", buf, 0x18u);
          }

LABEL_20:

LABEL_21:
          if (!v12)
          {
            goto LABEL_23;
          }

LABEL_22:
          free(v12);
          goto LABEL_23;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(v16, type);
        if (!backtrace_string)
        {
          if (v18)
          {
            *buf = 136446722;
            v27 = "nw_listener_inbox_socket_handle_accept_event";
            v28 = 1024;
            v29 = v24;
            v30 = 1024;
            sa_len = __src.sa_len;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Bad sockaddr length from kernel: slen = %u, ss.ss_len = %u, no backtrace", buf, 0x18u);
          }

          goto LABEL_21;
        }

        if (v18)
        {
          *buf = 136446978;
          v27 = "nw_listener_inbox_socket_handle_accept_event";
          v28 = 1024;
          v29 = v24;
          v30 = 1024;
          sa_len = __src.sa_len;
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Bad sockaddr length from kernel: slen = %u, ss.ss_len = %u, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(backtrace_string);
        if (v12)
        {
          goto LABEL_22;
        }

LABEL_23:
        close(v5);
        v25 = -1;
      }
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *&__src.sa_len = 136446210;
    *&__src.sa_data[2] = "nw_listener_inbox_socket_handle_accept_event";
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s exceeded new connection limit", &__src.sa_len, 0xCu);
  }

LABEL_39:
}

uint64_t nw_protocol_registrar_get_accept_function_for_identifier(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_registrar_get_accept_function_for_identifier";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null identifier", buf, 12);
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
          v19 = "nw_protocol_registrar_get_accept_function_for_identifier";
          v13 = "%{public}s called with null identifier";
LABEL_35:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
        }
      }

      else if (v16 == 1)
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
            v19 = "nw_protocol_registrar_get_accept_function_for_identifier";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (v15)
        {
          *buf = 136446210;
          v19 = "nw_protocol_registrar_get_accept_function_for_identifier";
          v13 = "%{public}s called with null identifier, no backtrace";
          goto LABEL_35;
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v19 = "nw_protocol_registrar_get_accept_function_for_identifier";
          v13 = "%{public}s called with null identifier, backtrace limit exceeded";
          goto LABEL_35;
        }
      }
    }

LABEL_36:
    if (v10)
    {
      free(v10);
    }

    return 0;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v2 = &g_registration_list;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*a1 == v2[4] && a1[1] == v2[5] && a1[2] == v2[6] && a1[3] == v2[7] && a1[4] == v2[8])
    {
      v7 = v2[13];
      goto LABEL_20;
    }
  }

  v7 = 0;
LABEL_20:
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  return v7;
}

uint64_t nw_protocol_instance_registrar_find_instance_to_join(void *a1, void *a2, uint64_t a3, int a4, char a5, char a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v88 = *MEMORY[0x1E69E9840];
  v56 = a1;
  v55 = a7;
  v16 = a8;
  v17 = a9;
  v54 = v16;
  if (!a2)
  {
    v30 = v17;
    v31 = __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_instance_registrar_find_instance_to_join";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null identifier", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v32, type, &v73))
    {
      goto LABEL_74;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (os_log_type_enabled(v33, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null identifier", buf, 0xCu);
      }

      goto LABEL_73;
    }

    if (v73 != 1)
    {
      v33 = __nwlog_obj();
      v50 = type[0];
      if (os_log_type_enabled(v33, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v50, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_73;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v42 = type[0];
    v43 = os_log_type_enabled(v33, type[0]);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_73;
    }

    if (v43)
    {
      *buf = 136446466;
      v75 = "nw_protocol_instance_registrar_find_instance_to_join";
      v76 = 2082;
      v77 = backtrace_string;
      _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_48;
  }

  if (!v16)
  {
    v30 = v17;
    v35 = __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_instance_registrar_find_instance_to_join";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null endpoint", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v32, type, &v73))
    {
      goto LABEL_74;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v33, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v36, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_73;
    }

    if (v73 != 1)
    {
      v33 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v33, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v51, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_73;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v44 = type[0];
    v45 = os_log_type_enabled(v33, type[0]);
    if (!backtrace_string)
    {
      if (v45)
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v44, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_73;
    }

    if (v45)
    {
      *buf = 136446466;
      v75 = "nw_protocol_instance_registrar_find_instance_to_join";
      v76 = 2082;
      v77 = backtrace_string;
      _os_log_impl(&dword_181A37000, v33, v44, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_48;
  }

  if (!v17)
  {
    v30 = 0;
    v37 = __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_instance_registrar_find_instance_to_join";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null parameters", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v32, type, &v73))
    {
      goto LABEL_74;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v38 = type[0];
      if (os_log_type_enabled(v33, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_73:

LABEL_74:
      v17 = v30;
      if (v32)
      {
        free(v32);
        v17 = v30;
      }

LABEL_11:
      v23 = 0;
      goto LABEL_15;
    }

    if (v73 != 1)
    {
      v33 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v33, type[0]))
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v52, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_73;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v46 = type[0];
    v47 = os_log_type_enabled(v33, type[0]);
    if (!backtrace_string)
    {
      if (v47)
      {
        *buf = 136446210;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        _os_log_impl(&dword_181A37000, v33, v46, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_73;
    }

    if (v47)
    {
      *buf = 136446466;
      v75 = "nw_protocol_instance_registrar_find_instance_to_join";
      v76 = 2082;
      v77 = backtrace_string;
      _os_log_impl(&dword_181A37000, v33, v46, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_48:

    free(backtrace_string);
    goto LABEL_74;
  }

  if (a10)
  {
    v18 = v17;
    if (gLogDatapath)
    {
      v39 = v16;
      v40 = __nwlog_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447490;
        v75 = "nw_protocol_instance_registrar_find_instance_to_join";
        v76 = 2112;
        v77 = v56;
        v78 = 2080;
        v79 = a2;
        v80 = 2112;
        v81 = v39;
        v82 = 2112;
        v83 = v18;
        v84 = 1024;
        LODWORD(v85) = a4;
        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %@ finding instance of %s to join for endpoint %@, parameters %@, (proxy: %u)", buf, 0x3Au);
      }

      v16 = v39;
    }

    *type = 0;
    v70 = type;
    v71 = 0x2020000000;
    v72 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_instance_registrar_find_instance_to_join_block_invoke;
    aBlock[3] = &unk_1E6A2C088;
    v19 = v56;
    v58 = v19;
    v63 = a2;
    v66 = a5;
    v67 = a6;
    v20 = v16;
    v59 = v20;
    v60 = v55;
    v21 = v18;
    v68 = a4;
    v64 = a3;
    v65 = a10;
    v61 = v21;
    v62 = type;
    v22 = _Block_copy(aBlock);
    os_unfair_lock_lock(v56 + 2);
    v22[2](v22);
    os_unfair_lock_unlock(v56 + 2);

    v23 = *(v70 + 3);
    if (v23)
    {
      if (gLogDatapath)
      {
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(v70 + 3);
          *buf = 136447746;
          v75 = "nw_protocol_instance_registrar_find_instance_to_join";
          v76 = 2112;
          v77 = v19;
          v78 = 2048;
          v79 = v25;
          v80 = 2080;
          v81 = a2;
          v82 = 2112;
          v83 = v20;
          v84 = 2112;
          v85 = v21;
          v86 = 1024;
          v87 = a4;
          v26 = "%{public}s %@ returning instance %p of %s to join for endpoint %@, parameters %@, (proxy: %u)";
          v27 = v24;
          v28 = 68;
LABEL_63:
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
          goto LABEL_64;
        }

        goto LABEL_64;
      }
    }

    else
    {
      if (gLogDatapath)
      {
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v75 = "nw_protocol_instance_registrar_find_instance_to_join";
          v76 = 2112;
          v77 = v19;
          v78 = 2080;
          v79 = a2;
          v26 = "%{public}s %@ did not find instance of %s to join";
          v27 = v24;
          v28 = 32;
          goto LABEL_63;
        }

LABEL_64:

        v23 = *(v70 + 3);
        goto LABEL_14;
      }

      v23 = 0;
    }

LABEL_14:

    _Block_object_dispose(type, 8);
    v17 = v18;
    goto LABEL_15;
  }

  if (!gLogDatapath)
  {
    goto LABEL_11;
  }

  v48 = v17;
  v49 = __nwlog_obj();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136447490;
    v75 = "nw_protocol_instance_registrar_find_instance_to_join";
    v76 = 2112;
    v77 = v56;
    v78 = 2080;
    v79 = a2;
    v80 = 2112;
    v81 = v54;
    v82 = 2112;
    v83 = v48;
    v84 = 1024;
    LODWORD(v85) = a4;
    _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %@ no accept function for %s, cannot join for endpoint %@, parameters %@, (proxy: %u)", buf, 0x3Au);
  }

  v23 = 0;
  v17 = v48;
LABEL_15:

  return v23;
}

void sub_181D41840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_protocol_instance_registrar_find_instance_to_join_block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  if (v1)
  {
    v3 = gLogDatapath;
    do
    {
      if (v3)
      {
        v46 = __nwlog_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v47 = *(a1 + 32);
          v48 = v1[2];
          v49 = *(v48 + 16);
          v50 = *(a1 + 72);
          *buf = 136447234;
          v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
          v62 = 2112;
          v63 = v47;
          v64 = 2048;
          v65 = v48;
          v66 = 2080;
          v67 = v49;
          v68 = 2080;
          v69 = v50;
          _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %@ checking instance %p (%s) for joining by %s", buf, 0x34u);
        }
      }

      v4 = v1[2];
      if (v4)
      {
        if (nw_protocols_are_equal(*(a1 + 72), *(v4 + 16)))
        {
          v5 = *(v4 + 24);
          if (v5)
          {
            v6 = *(v5 + 136);
            if (v6)
            {
              if (*(v5 + 112))
              {
                v7 = v6(v4);
                v8 = (*(*(v4 + 24) + 112))(v4);
                if (*(a1 + 96))
                {
                  v9 = 1;
                }

                else
                {
                  v9 = 3;
                }

                if (*(a1 + 97))
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v10 = gLogObj;
                  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                  {
                    v11 = *(a1 + 72);
                    v12 = *(a1 + 32);
                    v13 = *(a1 + 40);
                    *buf = 136447490;
                    v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                    v62 = 2112;
                    v63 = v12;
                    v64 = 2048;
                    v65 = v4;
                    v66 = 2080;
                    v67 = v11;
                    v68 = 2112;
                    v69 = v7;
                    v70 = 2112;
                    v71 = v13;
                    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s skipping endpoint comparison (candidate %@, endpoint %@)", buf, 0x3Eu);
                  }

LABEL_17:

LABEL_36:
                  if ((nw_parameters_get_prohibit_joining_protocols(v8) & 1) != 0 || nw_parameters_get_prohibit_joining_protocols(*(a1 + 56)))
                  {
                    if (gLogDatapath == 1)
                    {
                      v10 = __nwlog_obj();
                      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                      {
                        v29 = *(a1 + 32);
                        v30 = *(a1 + 72);
                        *buf = 136446978;
                        v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                        v62 = 2112;
                        v63 = v29;
                        v64 = 2048;
                        v65 = v4;
                        v66 = 2080;
                        v67 = v30;
                        v31 = v10;
                        v32 = "%{public}s %@ instance %p of %s not eligible, parameters prohibit joining";
                        v33 = 42;
                        goto LABEL_44;
                      }

LABEL_62:
                    }

LABEL_63:

LABEL_64:
                    v3 = gLogDatapath;
                    goto LABEL_4;
                  }

                  v37 = *(a1 + 56);
                  v38 = v37 == v8;
                  if (v37 != v8 && v37)
                  {
                    if (v8)
                    {
                      v38 = _nw_parameters_are_compatible(*(a1 + 56), *(a1 + 80), v8, v4, *(a1 + 98));
                    }
                  }

                  if (v38)
                  {
                    if ((*(a1 + 88))(v4, *(a1 + 40), *(a1 + 56)))
                    {
                      *(*(*(a1 + 64) + 8) + 24) = v4;

                      return;
                    }

                    if (gLogDatapath != 1)
                    {
                      goto LABEL_63;
                    }

                    v10 = __nwlog_obj();
                    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_62;
                    }

                    v39 = *(a1 + 32);
                    v40 = *(a1 + 72);
                    *buf = 136446978;
                    v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                    v62 = 2112;
                    v63 = v39;
                    v64 = 2048;
                    v65 = v4;
                    v66 = 2080;
                    v67 = v40;
                    v31 = v10;
                    v32 = "%{public}s %@ instance %p of %s not eligible, new input handler rejected";
                    v33 = 42;
                  }

                  else
                  {
                    if (gLogDatapath != 1)
                    {
                      goto LABEL_63;
                    }

                    v10 = __nwlog_obj();
                    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_62;
                    }

                    v41 = *(a1 + 32);
                    v42 = *(a1 + 72);
                    *buf = 136446978;
                    v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                    v62 = 2112;
                    v63 = v41;
                    v64 = 2048;
                    v65 = v4;
                    v66 = 2080;
                    v67 = v42;
                    v31 = v10;
                    v32 = "%{public}s %@ instance %p of %s not eligible, parameters are not compatible";
                    v33 = 42;
                  }

LABEL_44:
                  _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, v32, buf, v33);
                  goto LABEL_62;
                }

                if (nw_endpoint_is_equal(v7, *(a1 + 40), v9))
                {
LABEL_22:
                  if (nw_endpoint_is_equal(*(a1 + 40), *(a1 + 48), 0))
                  {
                    goto LABEL_36;
                  }

                  v17 = *(a1 + 48);
                  if (!v17)
                  {
                    goto LABEL_36;
                  }

                  v18 = v17;
                  type = _nw_endpoint_get_type(v18);

                  if (type != 1)
                  {
                    goto LABEL_36;
                  }

                  v20 = v4;
                  do
                  {
                    v21 = v20;
                    v20 = *(v20 + 32);
                    if (!v20)
                    {
                      break;
                    }

                    v22 = *(v20 + 24);
                    if (!v22)
                    {
                      break;
                    }
                  }

                  while (*(v22 + 136));
                  v23 = *(v21 + 24);
                  if (!v23 || (v24 = *(v23 + 136)) == 0)
                  {
                    if (gLogDatapath != 1)
                    {
                      goto LABEL_63;
                    }

                    v10 = __nwlog_obj();
                    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_62;
                    }

                    v58 = *(a1 + 32);
                    v59 = *(a1 + 72);
                    *buf = 136446978;
                    v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                    v62 = 2112;
                    v63 = v58;
                    v64 = 2048;
                    v65 = v4;
                    v66 = 2080;
                    v67 = v59;
                    v31 = v10;
                    v32 = "%{public}s %@ instance %p of %s not eligible, transport protocol does not support get endpoint";
                    v33 = 42;
                    goto LABEL_44;
                  }

                  v10 = v24();
                  if (nw_endpoint_is_equal(v10, *(a1 + 48), 0))
                  {
                    goto LABEL_17;
                  }

                  if (gLogDatapath != 1)
                  {
                    goto LABEL_62;
                  }

                  v25 = __nwlog_obj();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    v26 = *(a1 + 32);
                    v27 = *(a1 + 72);
                    v28 = *(a1 + 48);
                    *buf = 136447490;
                    v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                    v62 = 2112;
                    v63 = v26;
                    v64 = 2048;
                    v65 = v4;
                    v66 = 2080;
                    v67 = v27;
                    v68 = 2112;
                    v69 = v10;
                    v70 = 2112;
                    v71 = v28;
                    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s not eligible, transport endpoints (candidate %@, endpoint %@) do not match", buf, 0x3Eu);
                  }
                }

                else
                {
                  if (nw_endpoint_get_type(*(a1 + 40)) == nw_endpoint_type_address)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v10 = gLogObj;
                    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_62;
                    }

                    v34 = *(a1 + 72);
                    v35 = *(a1 + 32);
                    v36 = *(a1 + 40);
                    *buf = 136447490;
                    v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                    v62 = 2112;
                    v63 = v35;
                    v64 = 2048;
                    v65 = v4;
                    v66 = 2080;
                    v67 = v34;
                    v68 = 2112;
                    v69 = v7;
                    v70 = 2112;
                    v71 = v36;
                    v31 = v10;
                    v32 = "%{public}s %@ instance %p of %s not eligible, endpoints (candidate %@, endpoint %@) do not match";
                    v33 = 62;
                    goto LABEL_44;
                  }

                  v10 = nw_endpoint_copy_parent_endpoint(v7);
                  if (nw_endpoint_is_equal(v10, *(a1 + 40), v9))
                  {

                    goto LABEL_22;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v25 = gLogObj;
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    v43 = *(a1 + 72);
                    v44 = *(a1 + 32);
                    v45 = *(a1 + 40);
                    *buf = 136447490;
                    v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
                    v62 = 2112;
                    v63 = v44;
                    v64 = 2048;
                    v65 = v4;
                    v66 = 2080;
                    v67 = v43;
                    v68 = 2112;
                    v69 = v10;
                    v70 = 2112;
                    v71 = v45;
                    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s not eligible, endpoints (candidate parent %@, endpoint %@) do not match", buf, 0x3Eu);
                  }
                }

                goto LABEL_62;
              }
            }
          }

          v3 = gLogDatapath;
          if (gLogDatapath != 1)
          {
            goto LABEL_4;
          }

          v7 = __nwlog_obj();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          v51 = *(a1 + 32);
          v52 = *(a1 + 72);
          *buf = 136446978;
          v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
          v62 = 2112;
          v63 = v51;
          v64 = 2048;
          v65 = v4;
          v66 = 2080;
          v67 = v52;
          v53 = v7;
          v54 = "%{public}s %@ instance %p of %s not eligible, missing required callbacks";
LABEL_73:
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, v54, buf, 0x2Au);
          goto LABEL_64;
        }

        v3 = gLogDatapath;
        if (gLogDatapath == 1)
        {
          v7 = __nwlog_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v14 = *(a1 + 32);
            v15 = *(v4 + 16);
            v16 = *(a1 + 72);
            *buf = 136447234;
            v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
            v62 = 2112;
            v63 = v14;
            v64 = 2048;
            v65 = v4;
            v66 = 2080;
            v67 = v15;
            v68 = 2080;
            v69 = v16;
            _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p (%s) not eligible for joining by %s, identifier doesn't match", buf, 0x34u);
          }

          goto LABEL_64;
        }
      }

      else
      {
        v3 = gLogDatapath;
        if (gLogDatapath == 1)
        {
          v7 = __nwlog_obj();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_64;
          }

          v55 = *(a1 + 32);
          v56 = v1[2];
          v57 = *(a1 + 72);
          *buf = 136446978;
          v61 = "nw_protocol_instance_registrar_find_instance_to_join_block_invoke";
          v62 = 2112;
          v63 = v55;
          v64 = 2048;
          v65 = v56;
          v66 = 2080;
          v67 = v57;
          v53 = v7;
          v54 = "%{public}s %@ instance %p of %s not eligible, missing protocol handle";
          goto LABEL_73;
        }
      }

LABEL_4:
      v1 = *v1;
    }

    while (v1);
  }
}

NSObject *nw_http3_fix_quic_parameters(uint64_t a1, NSObject *a2, uint64_t a3, int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http3_fix_quic_parameters";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null http3", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v34, &type, &v45))
    {
      goto LABEL_83;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v35, type))
        {
          goto LABEL_83;
        }

        *buf = 136446210;
        v48 = "nw_http3_fix_quic_parameters";
        v37 = "%{public}s called with null http3, backtrace limit exceeded";
        goto LABEL_82;
      }

      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = type;
      v40 = os_log_type_enabled(v35, type);
      if (!backtrace_string)
      {
        if (!v40)
        {
          goto LABEL_83;
        }

        *buf = 136446210;
        v48 = "nw_http3_fix_quic_parameters";
        v37 = "%{public}s called with null http3, no backtrace";
        goto LABEL_82;
      }

      if (v40)
      {
        *buf = 136446466;
        v48 = "nw_http3_fix_quic_parameters";
        v49 = 2082;
        v50 = backtrace_string;
        v41 = "%{public}s called with null http3, dumping backtrace:%{public}s";
LABEL_72:
        _os_log_impl(&dword_181A37000, v35, v36, v41, buf, 0x16u);
      }

LABEL_73:
      free(backtrace_string);
      goto LABEL_83;
    }

    v35 = __nwlog_obj();
    v36 = type;
    if (!os_log_type_enabled(v35, type))
    {
      goto LABEL_83;
    }

    *buf = 136446210;
    v48 = "nw_http3_fix_quic_parameters";
    v37 = "%{public}s called with null http3";
LABEL_82:
    _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
LABEL_83:
    if (v34)
    {
      free(v34);
    }

    return 0;
  }

  v4 = a2;
  if (!a2)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http3_fix_quic_parameters";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v34, &type, &v45))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (!os_log_type_enabled(v35, type))
      {
        goto LABEL_83;
      }

      *buf = 136446210;
      v48 = "nw_http3_fix_quic_parameters";
      v37 = "%{public}s called with null parameters";
      goto LABEL_82;
    }

    if (v45 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (!os_log_type_enabled(v35, type))
      {
        goto LABEL_83;
      }

      *buf = 136446210;
      v48 = "nw_http3_fix_quic_parameters";
      v37 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type;
    v42 = os_log_type_enabled(v35, type);
    if (backtrace_string)
    {
      if (v42)
      {
        *buf = 136446466;
        v48 = "nw_http3_fix_quic_parameters";
        v49 = 2082;
        v50 = backtrace_string;
        v41 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    if (!v42)
    {
      goto LABEL_83;
    }

    *buf = 136446210;
    v48 = "nw_http3_fix_quic_parameters";
    v37 = "%{public}s called with null parameters, no backtrace";
    goto LABEL_82;
  }

  if (a4)
  {
    v4 = _nw_parameters_shallow_copy(a2, 1);
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    if ((*(a1 + 1399) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 1304);
        *buf = 136446978;
        v48 = "nw_http3_fix_quic_parameters";
        v49 = 2082;
        v50 = (a1 + 1313);
        v51 = 2080;
        v52 = " ";
        v53 = 1024;
        v54 = v26;
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> http3 does not yet have output handler, cannot fix parameters", buf, 0x26u);
        return 0;
      }
    }

    return 0;
  }

  v9 = nw_parameters_copy_protocol_options_legacy(v4, *(a1 + 32));
  v10 = v9;
  if (v9 && _nw_protocol_options_is_quic_stream(v9))
  {
    v11 = _nw_protocol_options_copy(v10);
    nw_quic_stream_set_is_unidirectional(v11, a3);
    nw_protocol_http3_add_alpn_to_quic_options(v11);
    v12 = nw_quic_stream_copy_shared_connection_options(v11);
    v13 = nw_quic_connection_copy_sec_protocol_options(v12);
    if (*(a1 + 1312))
    {
      sec_protocol_options_set_new_session_ticket_request();
      sec_protocol_options_set_resumed_session_ticket_request();
    }

    if ((*(a1 + 1397) & 0x20) != 0 && uuid_is_null((a1 + 840)) || *(a1 + 856) && *(a1 + 864))
    {
      v14 = nw_context_copy_workloop(*(a1 + 1272));
      v15 = *(a1 + 1056);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 0x40000000;
      v44[2] = ___ZL28nw_http3_fix_quic_parametersP17nw_protocol_http3P13nw_parametersbb_block_invoke;
      v44[3] = &unk_1E6A38DD0;
      v44[4] = v15;
      nw_quic_connection_set_session_state_update_block(v12, v44, v14);
      if (v14)
      {
        dispatch_release(v14);
      }
    }

    if ((*(a1 + 1397) & 0x20) != 0 && a4)
    {
      v16 = *(a1 + 1152);
      if (v16)
      {
        v17 = *(a1 + 1160);
        if (v17)
        {
          nw_quic_connection_set_session_state(v12, v16, v17);
        }
      }

      sec_protocol_options_set_tls_early_data_enabled();
      sec_protocol_options_set_tls_tickets_enabled(v13, 1);
    }

    if (v13)
    {
      os_release(v13);
    }

    if (v12)
    {
      os_release(v12);
    }

    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v18 = nw_protocol_copy_quic_stream_definition_quic_definition;
    nw_parameters_set_protocol_instance(v11, v19, v8);
    if (v18)
    {
      os_release(v18);
    }

    nw_protocol_options_inherit_log_id(v10, v11);
    _nw_protocol_options_set_prohibit_joining(v10, 1);
    v20 = nw_parameters_copy_default_protocol_stack(v4);
    nw_protocol_stack_replace_protocol_with_handle(v20, v8, v11);
    if (v20)
    {
      os_release(v20);
    }

    if (v11)
    {
      os_release(v11);
    }

LABEL_53:
    os_release(v10);
    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v48 = "nw_http3_fix_quic_parameters";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s No quic below http3", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (!__nwlog_fault(v21, &type, &v45))
  {
    goto LABEL_50;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_50;
    }

    *buf = 136446210;
    v48 = "nw_http3_fix_quic_parameters";
    v24 = "%{public}s No quic below http3";
LABEL_48:
    v31 = v22;
    v32 = v23;
LABEL_49:
    _os_log_impl(&dword_181A37000, v31, v32, v24, buf, 0xCu);
    goto LABEL_50;
  }

  if (v45 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_50;
    }

    *buf = 136446210;
    v48 = "nw_http3_fix_quic_parameters";
    v24 = "%{public}s No quic below http3, backtrace limit exceeded";
    goto LABEL_48;
  }

  v27 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  v29 = type;
  v30 = os_log_type_enabled(gLogObj, type);
  if (v27)
  {
    if (v30)
    {
      *buf = 136446466;
      v48 = "nw_http3_fix_quic_parameters";
      v49 = 2082;
      v50 = v27;
      _os_log_impl(&dword_181A37000, v28, v29, "%{public}s No quic below http3, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v27);
  }

  else if (v30)
  {
    *buf = 136446210;
    v48 = "nw_http3_fix_quic_parameters";
    v24 = "%{public}s No quic below http3, no backtrace";
    v31 = v28;
    v32 = v29;
    goto LABEL_49;
  }

LABEL_50:
  if (v21)
  {
    free(v21);
  }

  if (v10)
  {
    goto LABEL_53;
  }

  return v4;
}

void nw_listener_inbox_socket_handle_new_socket(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v7 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v33 = a4;
  v34 = a6;
  v35 = 1;
  v13 = nw_fd_wrapper_create(a2);
  if (!setsockopt(a2, 0xFFFF, 4130, &v35, 4u))
  {
    v18 = nw_endpoint_create_with_sock_name(a2);
    v19 = _nw_parameters_copy();
    nw_parameters_set_server_mode(v19, 1);
    if (v18)
    {
      nw_parameters_set_local_endpoint(v19, v18);
    }

    v20 = nw_parameters_copy_context(v19);
    v21 = nw_context_copy_registered_endpoint(v20, v12);

    v22 = nw_endpoint_copy_association_with_evaluator(v21, v19, 0);
    v23 = v22;
    if (v22)
    {
      v24 = nw_association_copy_current_path(v22, v19);
    }

    else
    {
      v24 = 0;
    }

    if (!nw_parameters_get_local_only(*(v11 + 6)) || v24 && (v25 = v24, v26 = _nw_path_is_direct(v25), v25, (v26 & 1) != 0))
    {
      [*(v11 + 1) updateParametersForNewConnection:v19];
      v27 = [*(v11 + 1) copyPeerDeviceID];
      if (v27)
      {
        nw_endpoint_set_device_id(v21, v27);
        free(v27);
      }

      v28 = [*(v11 + 1) copyPeerTXTRecord];
      if (v28)
      {
        nw_endpoint_set_txt_record(v21, v28);
      }

      v29 = nw_connection_create_with_connected_socket_internal(v13, v19, v18, v21, 1);
      v30 = v29;
      if (v29)
      {
        if (v33)
        {
          nw_connection_add_initial_inbound_data(v29, v33, v7);
        }

        [*(v11 + 1) handleInbound:v30 addProtocolInbox:nw_parameters_get_attach_protocol_listener(v19)];
        if (v34)
        {
          _nw_array_append(v34, v30);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
      }

      else
      {
        v32 = gLogFDOverride == -1;

        if (v32)
        {
          goto LABEL_24;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v37 = "nw_listener_inbox_socket_handle_new_socket";
        v38 = 2114;
        v39 = v21;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring non-local connection from %{public}@", buf, 0x16u);
      }
    }

LABEL_24:
    v12 = v21;
    goto LABEL_31;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v12;
    v16 = v15;
    if (v15)
    {
      logging_description = _nw_endpoint_get_logging_description(v15);
    }

    else
    {
      logging_description = "<NULL>";
    }

    *buf = 136446466;
    v37 = "nw_listener_inbox_socket_handle_new_socket";
    v38 = 2082;
    v39 = logging_description;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s Failed to set SO_NOSIGPIPE on new connection from %{public}s", buf, 0x16u);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v37 = "nw_listener_inbox_socket_handle_new_socket";
    _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s Failed to set SO_NOSIGPIPE on new connection from <nw_redacted>", buf, 0xCu);
  }

LABEL_31:
}

uint64_t nw_protocol_http3_stream_get_parameters(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (handle + 64 == a1)
      {
        v3 = a1->handle;

        return nw_http3_stream_get_datagram_parameters(v3);
      }

      else
      {
        if ((*(handle + 366) & 0x4000) == 0)
        {
          if (*(handle + 4))
          {
            nw_http3_fix_quic_parameters(*(handle + 43), *(handle + 45), 0, 0);
            *(handle + 366) |= 0x4000u;
          }
        }

        return *(handle + 45);
      }
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http3_stream_get_parameters";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http3_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_http3_stream_get_parameters";
        v8 = "%{public}s called with null http3_stream";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_http3_stream_get_parameters";
        v8 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
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
        v17 = "nw_protocol_http3_stream_get_parameters";
        v8 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http3_stream_get_parameters";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_http3_stream_get_parameters";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_39;
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
        v17 = "nw_protocol_http3_stream_get_parameters";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
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
        v17 = "nw_protocol_http3_stream_get_parameters";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http3_stream_get_parameters";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_28:
      _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
    }

LABEL_29:
    free(backtrace_string);
    goto LABEL_39;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v17 = "nw_protocol_http3_stream_get_parameters";
    v8 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_39:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

id nw_endpoint_create_with_sock_name(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) == 0)
  {

    return _nw_endpoint_create_with_sock_name(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_create_with_sock_name";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null (sockfd >= 0)", buf, 12);

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
        v12 = "nw_endpoint_create_with_sock_name";
        v6 = "%{public}s called with null (sockfd >= 0)";
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
            v12 = "nw_endpoint_create_with_sock_name";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null (sockfd >= 0), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_create_with_sock_name";
        v6 = "%{public}s called with null (sockfd >= 0), no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_with_sock_name";
        v6 = "%{public}s called with null (sockfd >= 0), backtrace limit exceeded";
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

id _nw_endpoint_create_with_peer_nameTm(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&v4, a1);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (v4 == 1)
  {
    return 0;
  }

  v5 = v9;
  v6 = v10;
  v7 = v11;
  v8 = v12;
  v3 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  return Endpoint.init(_:)(&v4);
}

double sub_181D437E4@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0;
  v17 = 0u;
  v15 = 128;
  if (getsockname(a1, &v16, &v15))
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1ED411BA0);
    v4 = sub_182AD2678();
    v5 = sub_182AD38B8();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "getsockname failed";
    v8 = v5;
    v9 = v4;
    v10 = v6;
    v11 = 2;
LABEL_14:
    _os_log_impl(&dword_181A37000, v9, v8, v7, v10, v11);
    MEMORY[0x1865DF520](v6, -1, -1);
LABEL_15:

    goto LABEL_16;
  }

  if ((v15 & 0x80000000) != 0 || v15 < v16.sa_len)
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1ED411BA0);
    v4 = sub_182AD2678();
    v14 = sub_182AD38B8();
    if (!os_log_type_enabled(v4, v14))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 67109376;
    swift_beginAccess();
    *(v6 + 4) = v15;
    *(v6 + 8) = 256;
    swift_beginAccess();
    *(v6 + 10) = v16.sa_len;
    v7 = "getsockname provided invalid length: len: %d, ss.ss_len: %hhu";
    v8 = v14;
    v9 = v4;
    v10 = v6;
    v11 = 11;
    goto LABEL_14;
  }

  v29[4] = v20;
  v29[5] = v21;
  v29[6] = v22;
  v29[7] = v23;
  v29[0] = v16;
  v29[1] = v17;
  v29[2] = v18;
  v29[3] = v19;
  sub_181AD2530(v29, &v24);
  if (v24 != 1)
  {
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 24) = v26;
    result = *&v27;
    *(a2 + 40) = v27;
    *(a2 + 56) = v28;
    return result;
  }

LABEL_16:
  *a2 = 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

void _nw_path_set_necp_result_routing_result_parameter(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 73) = a2;
  }
}

BOOL nw_parameters_get_local_only(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_local_only(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_local_only";
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
        v12 = "nw_parameters_get_local_only";
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
            v12 = "nw_parameters_get_local_only";
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
        v12 = "nw_parameters_get_local_only";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_local_only";
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

void sub_181D43E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181D440C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *nw_connection_create_with_connected_socket_internal(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v162 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v144 = a3;
  v145 = a4;
  nw_allow_use_of_dispatch_internal(v145);
  v143 = v10;
  if (!v11)
  {
    v86 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_create_with_connected_socket_internal";
    v87 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v86, 16, "%{public}s called with null parameters", buf, 12);

    v156[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v87, v156, &type))
    {
      goto LABEL_217;
    }

    if (v156[0] == 17)
    {
      v88 = __nwlog_obj();
      v89 = v156[0];
      if (os_log_type_enabled(v88, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_194;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v88 = __nwlog_obj();
      v120 = v156[0];
      if (os_log_type_enabled(v88, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v88, v120, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_194;
    }

    backtrace_string = __nw_create_backtrace_string();
    v99 = __nwlog_obj();
    v100 = v156[0];
    v101 = os_log_type_enabled(v99, v156[0]);
    if (backtrace_string)
    {
      if (v101)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_217:
      if (!v87)
      {
        goto LABEL_219;
      }

LABEL_218:
      free(v87);
      goto LABEL_219;
    }

    if (v101)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_create_with_connected_socket_internal";
      _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

LABEL_216:

    goto LABEL_217;
  }

  if (!v10)
  {
    v90 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_create_with_connected_socket_internal";
    v87 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v90, 16, "%{public}s called with null fd_wrapper", buf, 12);

    v156[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v87, v156, &type))
    {
      goto LABEL_217;
    }

    if (v156[0] == 17)
    {
      v88 = __nwlog_obj();
      v91 = v156[0];
      if (os_log_type_enabled(v88, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v88, v91, "%{public}s called with null fd_wrapper", buf, 0xCu);
      }

LABEL_194:

      goto LABEL_217;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v88 = __nwlog_obj();
      v121 = v156[0];
      if (os_log_type_enabled(v88, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v88, v121, "%{public}s called with null fd_wrapper, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_194;
    }

    v102 = __nw_create_backtrace_string();
    v99 = __nwlog_obj();
    v103 = v156[0];
    v104 = os_log_type_enabled(v99, v156[0]);
    if (v102)
    {
      if (v104)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        *&buf[12] = 2082;
        *&buf[14] = v102;
        _os_log_impl(&dword_181A37000, v99, v103, "%{public}s called with null fd_wrapper, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v102);
      if (!v87)
      {
        goto LABEL_219;
      }

      goto LABEL_218;
    }

    if (v104)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_create_with_connected_socket_internal";
      _os_log_impl(&dword_181A37000, v99, v103, "%{public}s called with null fd_wrapper, no backtrace", buf, 0xCu);
    }

    goto LABEL_216;
  }

  if (a5)
  {
    v12 = _nw_parameters_copy_context();
    nw_context_assert_queue(v12);
  }

  _nw_parameters_set_indefinite();
  if ((_nw_parameters_get_allow_joining_connected_fd(v11) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_create_with_connected_socket_internal";
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s prohibit joining for connection to connected fd %{public}@", buf, 0x16u);
    }

    _nw_parameters_set_prohibit_joining_protocols(v11, 1);
  }

  if (v145)
  {
    v14 = v144;
    if (v144)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__24471;
  *v151 = __Block_byref_object_dispose__24472;
  *&v151[8] = 0;
  v147[0] = MEMORY[0x1E69E9820];
  v147[1] = 3221225472;
  v147[2] = ___ZL51nw_connection_create_with_connected_socket_internalPU27objcproto16OS_nw_fd_wrapper8NSObjectPU27objcproto16OS_nw_parametersS_PU25objcproto14OS_nw_endpointS_S5_b_block_invoke;
  v147[3] = &unk_1E6A3C0D8;
  v147[4] = buf;
  fd = nw_fd_wrapper_get_fd(v10, v147);
  if (fd)
  {
    v145 = *(*&buf[8] + 40);
  }

  else
  {
    v145 = 0;
  }

  _Block_object_dispose(buf, 8);

  if (!fd)
  {
LABEL_219:
    v76 = 0;
    goto LABEL_136;
  }

  v14 = v144;
  if (v144)
  {
    goto LABEL_18;
  }

LABEL_11:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__24471;
  *v151 = __Block_byref_object_dispose__24472;
  *&v151[8] = 0;
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = ___ZL51nw_connection_create_with_connected_socket_internalPU27objcproto16OS_nw_fd_wrapper8NSObjectPU27objcproto16OS_nw_parametersS_PU25objcproto14OS_nw_endpointS_S5_b_block_invoke_2;
  v146[3] = &unk_1E6A3C0D8;
  v146[4] = buf;
  nw_fd_wrapper_get_fd(v10, v146);
  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v14 = v15;
  if (!v15)
  {
    v144 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v144 = v14;
  _nw_parameters_set_local_endpoint(v11, v14);
LABEL_19:
  v17 = [[NWConcrete_nw_connection alloc] initWithEndpoint:v145 parameters:v11 identifier:0];
  v18 = v17;
  if (!v17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_connection_create_with_connected_socket_internal";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s [nw_connection initWithEndpoint:parameters:] failed", buf, 12);

    v156[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v31, v156, &type))
    {
      goto LABEL_132;
    }

    if (v156[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v33 = v156[0];
      if (os_log_type_enabled(v32, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s [nw_connection initWithEndpoint:parameters:] failed", buf, 0xCu);
      }
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        v42 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = gLogObj;
        v44 = v156[0];
        v45 = os_log_type_enabled(v43, v156[0]);
        if (v42)
        {
          if (v45)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_create_with_connected_socket_internal";
            *&buf[12] = 2082;
            *&buf[14] = v42;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v42);
          if (!v31)
          {
            goto LABEL_134;
          }

          goto LABEL_133;
        }

        if (v45)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_create_with_connected_socket_internal";
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
        }

LABEL_132:
        if (!v31)
        {
LABEL_134:
          v76 = 0;
          goto LABEL_135;
        }

LABEL_133:
        free(v31);
        goto LABEL_134;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v55 = v156[0];
      if (os_log_type_enabled(v32, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v32, v55, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_131:

    goto LABEL_132;
  }

  v19 = *(v17 + 16);
  v20 = *(v17 + 448);
  v21 = *(v17 + 8);
  v22 = v19;
  v141 = v143;
  v142 = v18;
  v139 = v22;
  v140 = v21;
  if (!v21)
  {
    v92 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
    v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s called with null endpoint", buf, 12);

    v156[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v93, v156, &type))
    {
      goto LABEL_232;
    }

    if (v156[0] == 17)
    {
      v94 = __nwlog_obj();
      v95 = v156[0];
      if (os_log_type_enabled(v94, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_210;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v94 = __nwlog_obj();
      v130 = v156[0];
      if (os_log_type_enabled(v94, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        _os_log_impl(&dword_181A37000, v94, v130, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_210;
    }

    v113 = __nw_create_backtrace_string();
    v114 = __nwlog_obj();
    v115 = v156[0];
    v116 = os_log_type_enabled(v114, v156[0]);
    if (v113)
    {
      if (v116)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        *&buf[12] = 2082;
        *&buf[14] = v113;
        _os_log_impl(&dword_181A37000, v114, v115, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v113);
      if (!v93)
      {
        goto LABEL_234;
      }

      goto LABEL_233;
    }

    if (v116)
    {
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
      _os_log_impl(&dword_181A37000, v114, v115, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_231;
  }

  if (!v22)
  {
    v96 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
    v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v96, 16, "%{public}s called with null parameters", buf, 12);

    v156[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v93, v156, &type))
    {
      goto LABEL_232;
    }

    if (v156[0] == 17)
    {
      v94 = __nwlog_obj();
      v97 = v156[0];
      if (os_log_type_enabled(v94, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        _os_log_impl(&dword_181A37000, v94, v97, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_210:

      goto LABEL_232;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v94 = __nwlog_obj();
      v131 = v156[0];
      if (os_log_type_enabled(v94, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        _os_log_impl(&dword_181A37000, v94, v131, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_210;
    }

    v117 = __nw_create_backtrace_string();
    v114 = __nwlog_obj();
    v118 = v156[0];
    v119 = os_log_type_enabled(v114, v156[0]);
    if (v117)
    {
      if (v119)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        *&buf[12] = 2082;
        *&buf[14] = v117;
        _os_log_impl(&dword_181A37000, v114, v118, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v117);
LABEL_232:
      if (!v93)
      {
LABEL_234:
        v41 = 0;
        goto LABEL_106;
      }

LABEL_233:
      free(v93);
      goto LABEL_234;
    }

    if (v119)
    {
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
      _os_log_impl(&dword_181A37000, v114, v118, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

LABEL_231:

    goto LABEL_232;
  }

  v23 = [[NWConcrete_nw_endpoint_handler alloc] initWithEndpoint:v21 parameters:v22 reportCallback:nw_connection_endpoint_report_on_nw_queue context:v142 parent:0 identifier:v20 connection_uuid:(v18 + 452)];
  v24 = v23;
  if (!v23)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 12);

    v156[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if ((__nwlog_fault(v35, v156, &type) & 1) == 0)
    {
      goto LABEL_80;
    }

    if (v156[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = v156[0];
      if (os_log_type_enabled(v36, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 0xCu);
      }
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        v46 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v47 = gLogObj;
        v48 = v156[0];
        v49 = os_log_type_enabled(v47, v156[0]);
        if (v46)
        {
          if (v49)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
            *&buf[12] = 2082;
            *&buf[14] = v46;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          if (!v35)
          {
            goto LABEL_104;
          }

          goto LABEL_81;
        }

        if (v49)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
        }

LABEL_80:
        if (!v35)
        {
LABEL_104:
          v41 = 0;
          goto LABEL_105;
        }

LABEL_81:
        free(v35);
        goto LABEL_104;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v56 = v156[0];
      if (os_log_type_enabled(v36, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
        _os_log_impl(&dword_181A37000, v36, v56, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_80;
  }

  v23->mode = 2;
  parent_handler = v23->parent_handler;
  v26 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
  v27 = *(v26 + 32) & 0xFC;
  if (!parent_handler)
  {
    ++v27;
  }

  *(v26 + 32) = v27 | 2;
  *v26->connection_uuid = *v24->connection_uuid;
  mode_handler = v24->mode_handler;
  v24->mode_handler = v26;

  if (a5)
  {
    if (_nw_parameters_get_allow_socket_access(v139))
    {
      v29 = 0;
    }

    else
    {
      v29 = 64;
    }
  }

  else
  {
    v29 = 0;
  }

  v38 = v24->mode_handler;
  v39 = v141;
  if (v38)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_endpoint_flow_set_pre_connected_fd_block_invoke;
    *&buf[24] = &unk_1E6A3C088;
    v40 = v38;
    *v151 = v40;
    if (nw_fd_wrapper_get_fd(v39, buf))
    {
      *(v40 + 34) |= 0x40u;
      objc_storeStrong(v40 + 111, a1);
      *(v40 + 35) = *(v40 + 35) & 0xBF | v29;
LABEL_43:

      goto LABEL_44;
    }

    v109 = __nwlog_obj();
    *v156 = 136446466;
    v157 = "nw_endpoint_flow_set_pre_connected_fd";
    v158 = 2114;
    v159 = v39;
    v138 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s invalid pre_connected_fd: %{public}@", v156, 22);

    type = OS_LOG_TYPE_ERROR;
    v148 = 0;
    v110 = v138;
    if ((__nwlog_fault(v138, &type, &v148) & 1) == 0)
    {
LABEL_245:
      if (v110)
      {
        free(v110);
      }

      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v112 = type;
      if (os_log_type_enabled(v111, type))
      {
        *v156 = 136446466;
        v157 = "nw_endpoint_flow_set_pre_connected_fd";
        v158 = 2114;
        v159 = v39;
        _os_log_impl(&dword_181A37000, v111, v112, "%{public}s invalid pre_connected_fd: %{public}@", v156, 0x16u);
      }
    }

    else
    {
      if (v148 == 1)
      {
        v126 = __nw_create_backtrace_string();
        v127 = __nwlog_obj();
        v128 = type;
        v129 = os_log_type_enabled(v127, type);
        if (v126)
        {
          if (v129)
          {
            *v156 = 136446722;
            v157 = "nw_endpoint_flow_set_pre_connected_fd";
            v158 = 2114;
            v159 = v39;
            v160 = 2082;
            v161 = v126;
            _os_log_impl(&dword_181A37000, v127, v128, "%{public}s invalid pre_connected_fd: %{public}@, dumping backtrace:%{public}s", v156, 0x20u);
          }

          free(v126);
        }

        else
        {
          if (v129)
          {
            *v156 = 136446466;
            v157 = "nw_endpoint_flow_set_pre_connected_fd";
            v158 = 2114;
            v159 = v39;
            _os_log_impl(&dword_181A37000, v127, v128, "%{public}s invalid pre_connected_fd: %{public}@, no backtrace", v156, 0x16u);
          }
        }

        goto LABEL_244;
      }

      v111 = __nwlog_obj();
      v133 = type;
      if (os_log_type_enabled(v111, type))
      {
        *v156 = 136446466;
        v157 = "nw_endpoint_flow_set_pre_connected_fd";
        v158 = 2114;
        v159 = v39;
        _os_log_impl(&dword_181A37000, v111, v133, "%{public}s invalid pre_connected_fd: %{public}@, backtrace limit exceeded", v156, 0x16u);
      }
    }

LABEL_244:
    v110 = v138;
    goto LABEL_245;
  }

  v105 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_flow_set_pre_connected_fd";
  v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null endpoint_flow", buf, 12);

  v156[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  v106 = v137;
  if (__nwlog_fault(v137, v156, &type))
  {
    if (v156[0] == 17)
    {
      v107 = __nwlog_obj();
      v108 = v156[0];
      if (os_log_type_enabled(v107, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_set_pre_connected_fd";
        _os_log_impl(&dword_181A37000, v107, v108, "%{public}s called with null endpoint_flow", buf, 0xCu);
      }
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        v122 = __nw_create_backtrace_string();
        v123 = __nwlog_obj();
        v124 = v156[0];
        v125 = os_log_type_enabled(v123, v156[0]);
        if (v122)
        {
          if (v125)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_set_pre_connected_fd";
            *&buf[12] = 2082;
            *&buf[14] = v122;
            _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v122);
        }

        else
        {
          if (v125)
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_set_pre_connected_fd";
            _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_238;
      }

      v107 = __nwlog_obj();
      v132 = v156[0];
      if (os_log_type_enabled(v107, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_flow_set_pre_connected_fd";
        _os_log_impl(&dword_181A37000, v107, v132, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_238:
    v106 = v137;
  }

  if (v106)
  {
    free(v106);
  }

LABEL_44:

  if (a5 && !nw_endpoint_flow_pre_attach_protocols(v24, 0))
  {
    if ((*(v24 + 284) & 0x40) != 0)
    {
LABEL_103:
      nw_endpoint_handler_cancel(v24, 1, 0);
      goto LABEL_104;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v50 = gconnectionLogObj;
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
LABEL_102:

      goto LABEL_103;
    }

    if (*(v24 + 284))
    {
      v51 = "dry-run ";
    }

    else
    {
      v51 = "";
    }

    v52 = nw_endpoint_handler_copy_endpoint(v24);
    v53 = v52;
    if (v52)
    {
      logging_description = _nw_endpoint_get_logging_description(v52);
    }

    else
    {
      logging_description = "<NULL>";
    }

    state = v24->state;
    if (state > 5)
    {
      v58 = "unknown-state";
    }

    else
    {
      v58 = off_1E6A31048[state];
    }

    v59 = v24;
    mode = v24->mode;
    v136 = v58;
    if (mode > 2)
    {
      switch(mode)
      {
        case 3:
          v61 = "proxy";
          break;
        case 4:
          v61 = "fallback";
          break;
        case 5:
          v61 = "transform";
          break;
        default:
LABEL_97:
          v61 = "unknown-mode";
          break;
      }
    }

    else
    {
      if (mode)
      {
        if (mode == 1)
        {
          v61 = "resolver";
          goto LABEL_100;
        }

        if (mode == 2)
        {
          v135 = nw_endpoint_flow_mode_string(v24->mode_handler);
LABEL_101:

          v62 = v50;
          v63 = v53;
          v64 = v51;
          v65 = logging_description;
          v66 = v59;
          os_unfair_lock_lock(v59 + 28);
          v67 = v66[8];
          os_unfair_lock_unlock(v59 + 28);

          v68 = v65;
          v69 = v63;
          v50 = v62;
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_handler_create_with_connected_socket";
          *&buf[12] = 2082;
          *&buf[14] = v24->id_str;
          *&buf[22] = 2082;
          *&buf[24] = v64;
          *v151 = 2082;
          *&v151[2] = v68;
          *&v151[10] = 2082;
          *&v151[12] = v136;
          v152 = 2082;
          v153 = v135;
          v154 = 2114;
          v155 = v67;
          _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] nw_endpoint_flow_pre_attach_protocols", buf, 0x48u);

          goto LABEL_102;
        }

        goto LABEL_97;
      }

      v61 = "path";
    }

LABEL_100:
    v135 = v61;
    goto LABEL_101;
  }

  v41 = v24;
LABEL_105:

LABEL_106:
  v70 = v142[18];
  v142[18] = v41;

  v71 = *(v18 + 16);
  if (v71 && !_nw_parameters_get_logging_disabled(v71))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v72 = gconnectionLogObj;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = *(v18 + 448);
      *buf = 136446722;
      *&buf[4] = "nw_connection_create_with_connected_socket_internal";
      *&buf[12] = 1024;
      *&buf[14] = v73;
      *&buf[18] = 2114;
      *&buf[20] = v141;
      _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_INFO, "%{public}s [C%u] create connection to connected fd %{public}@", buf, 0x1Cu);
    }
  }

  if (!v142[18])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v77 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_connection_create_with_connected_socket_internal";
    LODWORD(v134) = 12;
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s nw_endpoint_handler_create_with_connected_socket failed", buf, v134);

    v156[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v31, v156, &type))
    {
      goto LABEL_132;
    }

    if (v156[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v78 = v156[0];
      if (os_log_type_enabled(v32, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v32, v78, "%{public}s nw_endpoint_handler_create_with_connected_socket failed", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v79 = __nw_create_backtrace_string();
      if (v79)
      {
        v80 = v79;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v81 = gLogObj;
        v82 = v156[0];
        if (os_log_type_enabled(v81, v156[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_create_with_connected_socket_internal";
          *&buf[12] = 2082;
          *&buf[14] = v80;
          _os_log_impl(&dword_181A37000, v81, v82, "%{public}s nw_endpoint_handler_create_with_connected_socket failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
        if (!v31)
        {
          goto LABEL_134;
        }

        goto LABEL_133;
      }

      v32 = __nwlog_obj();
      v84 = v156[0];
      if (os_log_type_enabled(v32, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v32, v84, "%{public}s nw_endpoint_handler_create_with_connected_socket failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v83 = v156[0];
      if (os_log_type_enabled(v32, v156[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connected_socket_internal";
        _os_log_impl(&dword_181A37000, v32, v83, "%{public}s nw_endpoint_handler_create_with_connected_socket failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_131;
  }

  v74 = _nw_parameters_copy_immutable(*(v18 + 16));
  v75 = *(v18 + 16);
  *(v18 + 16) = v74;

  v76 = v142;
LABEL_135:

LABEL_136:
  return v76;
}

uint64_t nw_connection_copy_description_level(void *a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v5 = v3[1];
    v6 = v5;
    if (a2 == 1)
    {
      if (v5)
      {
        description = _nw_endpoint_get_description(v5);
LABEL_7:
        v8 = description;
LABEL_9:

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v39 = __Block_byref_object_copy__24471;
        v40 = __Block_byref_object_dispose__24472;
        v41 = 0;
        v32[0] = 0;
        v32[1] = v32;
        v32[2] = 0x2020000000;
        v33 = 0;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = ___ZL36nw_connection_copy_description_levelP24NWConcrete_nw_connection26nw_context_privacy_level_t_block_invoke;
        v28[3] = &unk_1E6A36148;
        v9 = v4;
        v29 = v9;
        v30 = buf;
        v31 = v32;
        os_unfair_lock_lock(v4 + 34);
        ___ZL36nw_connection_copy_description_levelP24NWConcrete_nw_connection26nw_context_privacy_level_t_block_invoke(v28);
        os_unfair_lock_unlock(v4 + 34);
        v10 = *(*&buf[8] + 40);
        if (v10)
        {
          v11 = _nw_path_copy_description(v10);
        }

        else
        {
          v11 = 0;
        }

        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = ___ZL36nw_connection_copy_description_levelP24NWConcrete_nw_connection26nw_context_privacy_level_t_block_invoke_2;
        v22[3] = &unk_1E6A2EFB8;
        v24 = &v34;
        v23 = v9;
        v25 = v32;
        v26 = v8;
        v27 = v11;
        nw_connection_access_parameters_description_locked(v23, v22);
        if (v11)
        {
          free(v11);
        }

        v12 = v35[3];

        _Block_object_dispose(v32, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v34, 8);
        goto LABEL_15;
      }
    }

    else if (v5)
    {
      description = _nw_endpoint_get_logging_description(v5);
      goto LABEL_7;
    }

    v8 = "<NULL>";
    goto LABEL_9;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_description_level";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null connection", buf, 12);

  LOBYTE(v34) = 16;
  LOBYTE(v32[0]) = 0;
  if (__nwlog_fault(v15, &v34, v32))
  {
    if (v34 == 17)
    {
      v16 = __nwlog_obj();
      v17 = v34;
      if (os_log_type_enabled(v16, v34))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_description_level";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (LOBYTE(v32[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v19 = v34;
      v20 = os_log_type_enabled(v16, v34);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_copy_description_level";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_description_level";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v21 = v34;
      if (os_log_type_enabled(v16, v34))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_description_level";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v15)
  {
    free(v15);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

void sub_181D46400(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 176), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_181D46494(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181D4653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B348, &qword_182AFF768);
  v7 = swift_allocObject();
  *(v7 + 96) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 92) = 128;
  *(v3 + 24) = v7;
  sub_181D8E320(a1, v3 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, type metadata accessor for NWEndpoint);
  *(v3 + OBJC_IVAR____TtC7Network13_NWConnection_parameters) = a2;
  *(v3 + 16) = a3;

  swift_unknownObjectRetain();
  sub_181AA39C0(0, 0);
  NWConnection.stateUpdateHandler.setter(0, 0);
  sub_181D8E448(a1, type metadata accessor for NWEndpoint);
  return v3;
}

uint64_t nw_endpoint_handler_has_fallback_children(NWConcrete_nw_endpoint_handler *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_has_fallback_children";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_has_fallback_children";
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v14 == 1)
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
            *&buf[4] = "nw_endpoint_handler_has_fallback_children";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v10)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_has_fallback_children";
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v6 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_has_fallback_children";
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v5)
    {
      free(v5);
    }

    goto LABEL_22;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_22:
    v3 = 0;
    goto LABEL_23;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v17 = 0;
  mode_handler = v1->mode_handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL41nw_endpoint_handler_has_fallback_childrenP30NWConcrete_nw_endpoint_handler_block_invoke;
  v13[3] = &unk_1E6A30F50;
  v13[4] = buf;
  [(NWConcrete_nw_endpoint_mode_handler *)mode_handler applyWithHandler:v1 toChildren:v13];
  v3 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_23:

  return v3 & 1;
}

void sub_181D4696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_handler_fillout_tcp_info(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    *v40 = 0;
    *&v40[8] = v40;
    *&v40[16] = 0x2020000000;
    v41 = 0;
    os_unfair_lock_lock(v3 + 28);
    v5 = *&v4[66]._os_unfair_lock_opaque;
    if (v4[29]._os_unfair_lock_opaque != 2)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __nw_endpoint_handler_fillout_tcp_info_block_invoke;
      v37[3] = &unk_1E6A30E60;
      v37[4] = v40;
      v37[5] = a2;
      [v5 applyWithHandler:v4 toChildren:v37];
LABEL_29:
      os_unfair_lock_unlock(v4 + 28);
      v19 = *(*&v40[8] + 24);
      _Block_object_dispose(v40, 8);
      goto LABEL_30;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      os_unfair_lock_lock(v6 + 220);
      v8 = *&v7[198]._os_unfair_lock_opaque;
      if (v8)
      {
        memcpy(a2, v8, 0x1A8uLL);
        v9 = 1;
LABEL_27:
        os_unfair_lock_unlock(v7 + 220);
LABEL_28:

        *(*&v40[8] + 24) = v9;
        goto LABEL_29;
      }

      v10 = *&v7[102]._os_unfair_lock_opaque;
      if (!v10 || (v11 = v10[3]) == 0 || (v12 = *(v11 + 224)) == 0)
      {
LABEL_26:
        v9 = 0;
        goto LABEL_27;
      }

      *type = 0;
      v13 = v10[5];
      v14 = v10;
      if (v13 != &nw_protocol_ref_counted_handle)
      {
        if (v13 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v14) = 0;
          v15 = 1;
LABEL_17:
          *buf = v10;
          buf[8] = v14;
          v17 = v12();
          if ((v15 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(buf);
          }

          if (v17)
          {
            v9 = *type == 424;
            if (*type == 424)
            {
              memcpy(a2, v17, 0x1A8uLL);
            }

            free(v17);
            goto LABEL_27;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_fillout_tcp_info";
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s copy_info() returned NULL", buf, 0xCu);
          }

          goto LABEL_26;
        }

        v14 = v10[8];
        if (!v14)
        {
          v15 = 1;
          goto LABEL_17;
        }
      }

      v16 = v14[11];
      v15 = 0;
      if (v16)
      {
        v14[11] = v16 + 1;
      }

      LOBYTE(v14) = -1;
      goto LABEL_17;
    }

    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_fillout_tcp_info";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null endpoint_flow", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v26, type, &v39))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type[0];
        if (os_log_type_enabled(v27, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_info";
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v34 = type[0];
        v35 = os_log_type_enabled(v27, type[0]);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_fillout_tcp_info";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_67;
        }

        if (v35)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_info";
          _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v36 = type[0];
        if (os_log_type_enabled(v27, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_info";
          _os_log_impl(&dword_181A37000, v27, v36, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_67:
    if (v26)
    {
      free(v26);
    }

    v9 = 0;
    goto LABEL_28;
  }

  v21 = __nwlog_obj();
  *v40 = 136446210;
  *&v40[4] = "nw_endpoint_handler_fillout_tcp_info";
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null handler", v40, 12);

  buf[0] = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v22, buf, type))
  {
    if (buf[0] == 17)
    {
      v23 = __nwlog_obj();
      v24 = buf[0];
      if (os_log_type_enabled(v23, buf[0]))
      {
        *v40 = 136446210;
        *&v40[4] = "nw_endpoint_handler_fillout_tcp_info";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null handler", v40, 0xCu);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v29 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v30 = buf[0];
      v31 = os_log_type_enabled(v23, buf[0]);
      if (v29)
      {
        if (v31)
        {
          *v40 = 136446466;
          *&v40[4] = "nw_endpoint_handler_fillout_tcp_info";
          *&v40[12] = 2082;
          *&v40[14] = v29;
          _os_log_impl(&dword_181A37000, v23, v30, "%{public}s called with null handler, dumping backtrace:%{public}s", v40, 0x16u);
        }

        free(v29);
        goto LABEL_61;
      }

      if (v31)
      {
        *v40 = 136446210;
        *&v40[4] = "nw_endpoint_handler_fillout_tcp_info";
        _os_log_impl(&dword_181A37000, v23, v30, "%{public}s called with null handler, no backtrace", v40, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v32 = buf[0];
      if (os_log_type_enabled(v23, buf[0]))
      {
        *v40 = 136446210;
        *&v40[4] = "nw_endpoint_handler_fillout_tcp_info";
        _os_log_impl(&dword_181A37000, v23, v32, "%{public}s called with null handler, backtrace limit exceeded", v40, 0xCu);
      }
    }
  }

LABEL_61:
  if (v22)
  {
    free(v22);
  }

  v19 = 0;
LABEL_30:

  return v19 & 1;
}

void sub_181D47084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if ((v22 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>((v23 - 80));
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http3_stream_supports_external_data(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http3_stream_supports_external_data";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_38;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v14 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v17 = "nw_protocol_http3_stream_supports_external_data";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v17 = "nw_protocol_http3_stream_supports_external_data";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_37;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "nw_protocol_http3_stream_supports_external_data";
        v18 = 2082;
        v19 = backtrace_string;
        v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_27:
        _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
      }

LABEL_28:
      free(backtrace_string);
      goto LABEL_38;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http3_stream_supports_external_data";
    v8 = "%{public}s called with null protocol";
LABEL_37:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
LABEL_38:
    if (v5)
    {
      free(v5);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http3_stream_supports_external_data";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http3_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http3_stream_supports_external_data";
      v8 = "%{public}s called with null http3_stream";
      goto LABEL_37;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http3_stream_supports_external_data";
      v8 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v13)
      {
        *buf = 136446466;
        v17 = "nw_protocol_http3_stream_supports_external_data";
        v18 = 2082;
        v19 = backtrace_string;
        v12 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (!v13)
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http3_stream_supports_external_data";
    v8 = "%{public}s called with null http3_stream, no backtrace";
    goto LABEL_37;
  }

  if (handle[156])
  {
    return 0;
  }

  v3 = handle[94];
  if (v3 == 3 || v3 == 5 && handle + 16 == a1)
  {
    return handle[183] & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t nw_protocol_http3_stream_get_remote_endpoint(nw_protocol *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http3_stream_get_remote_endpoint";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http3_stream_get_remote_endpoint";
      v11 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http3_stream_get_remote_endpoint";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v14 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v14)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http3_stream_get_remote_endpoint";
      v11 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http3_stream_get_remote_endpoint";
      v21 = 2082;
      v22 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_37:
    if (!v8)
    {
      return 0;
    }

LABEL_38:
    free(v8);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http3_stream_get_remote_endpoint";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http3_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http3_stream_get_remote_endpoint";
      v11 = "%{public}s called with null http3_stream";
      goto LABEL_36;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http3_stream_get_remote_endpoint";
      v11 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_36;
    }

    v15 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v16 = os_log_type_enabled(v9, type);
    if (v15)
    {
      if (v16)
      {
        *buf = 136446466;
        v20 = "nw_protocol_http3_stream_get_remote_endpoint";
        v21 = 2082;
        v22 = v15;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v15);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if (v16)
    {
      *buf = 136446210;
      v20 = "nw_protocol_http3_stream_get_remote_endpoint";
      v11 = "%{public}s called with null http3_stream, no backtrace";
LABEL_36:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v2 = handle[6];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 136);
  if (!v4)
  {
    return 0;
  }

  default_input_handler = a1->default_input_handler;

  return v4(default_input_handler);
}

void sub_181D478F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_181D479A8(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t, void, int *))
{
  v8 = NWCreateNSDataFromDispatchData(a1);
  if (v8)
  {
    v9 = v8;
    v10 = sub_182AD2158();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = swift_unknownObjectRetain();
  v14 = sub_181D47AFC(v13);
  if (a4)
  {
    v15 = swift_unknownObjectRetain();
    NWError.init(_:)(v15, &v18);
    v16 = v18 | (v19 << 32);
  }

  else
  {
    v16 = 0xFF00000000;
  }

  v20 = v16;
  v21 = BYTE4(v16);
  a5(v10, v12, v14, a3 & 1, &v20);

  return sub_181D9D680(v10, v12);
}

void *NWCreateNSDataFromDispatchData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  return v2;
}

void *sub_181D47AFC(NSObject *a1)
{
  type metadata accessor for NWConnection.ContentContext();
  v2 = swift_allocObject();
  if (a1)
  {
    v2[2] = a1;
    v2[6] = 0;
    v2[7] = 0;
    v2[5] = 0;
    v3 = v2;
    v4 = swift_unknownObjectRetain();
    *(v3 + 64) = nw_content_context_get_is_final(v4);
    nw_content_context_get_identifier(a1);
    v5 = sub_182AD3158();
    v7 = v6;
    swift_unknownObjectRelease();
    result = v3;
    v3[3] = v5;
    v3[4] = v7;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

BOOL nw_content_context_get_is_final(nw_content_context_t context)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = context;
  if (v1)
  {
    v2 = 0;
    if (v1 != &__block_literal_global_44658 && v1 != &__block_literal_global_10_44685)
    {
      v2 = 1;
      if (v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_8_44676)
      {
        v2 = BYTE6(v1[14].isa) & 1;
      }
    }

    goto LABEL_7;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_content_context_get_is_final";
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
        v15 = "nw_content_context_get_is_final";
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
          v15 = "nw_content_context_get_is_final";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_content_context_get_is_final";
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
        v15 = "nw_content_context_get_is_final";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_7:

  return v2;
}

const char *__cdecl nw_content_context_get_identifier(nw_content_context_t context)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = context;
  if (v1)
  {
    v2 = "Final Message";
    v3 = "Default Stream";
    if (v1 == &__block_literal_global_10_44685)
    {
      v4 = "New Inbound Message";
    }

    else
    {
      v4 = &v1[3];
    }

    if (v1 != &__block_literal_global_8_44676)
    {
      v3 = v4;
    }

    if (v1 != &__block_literal_global_6_44667)
    {
      v2 = v3;
    }

    if (v1 == &__block_literal_global_44658)
    {
      v5 = "Default Message";
    }

    else
    {
      v5 = v2;
    }

    goto LABEL_12;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_content_context_get_identifier";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null context", buf, 12);

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
        v18 = "nw_content_context_get_identifier";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null context", buf, 0xCu);
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
          v18 = "nw_content_context_get_identifier";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_content_context_get_identifier";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_content_context_get_identifier";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
  v1 = 0;
LABEL_12:

  return v5;
}

double sub_181D481DC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_181D4823C(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v4 = *a2;
  type metadata accessor for NWConnection.ContentContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  v6 = swift_unknownObjectRetain_n();
  *(v5 + 64) = nw_content_context_get_is_final(v6);
  nw_content_context_get_identifier(v4);
  v7 = sub_182AD3158();
  v9 = v8;
  result = swift_unknownObjectRelease_n();
  *(v5 + 24) = v7;
  *(v5 + 32) = v9;
  *a3 = v5;
  return result;
}

void nw_path_flow_registration_access_interface_stats(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_path_flow_registration_access_interface_stats";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null registration", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_flow_registration_access_interface_stats";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null registration", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_path_flow_registration_access_interface_stats";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v11)
        {
          goto LABEL_12;
        }

LABEL_47:
        free(v11);
        goto LABEL_12;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_path_flow_registration_access_interface_stats";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_flow_registration_access_interface_stats";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null registration, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_45:

    goto LABEL_46;
  }

  if (!v4)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_path_flow_registration_access_interface_stats";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null access_block", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_flow_registration_access_interface_stats";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null access_block", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v27 = "nw_path_flow_registration_access_interface_stats";
          v28 = 2082;
          v29 = v19;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        if (!v11)
        {
          goto LABEL_12;
        }

        goto LABEL_47;
      }

      if (v21)
      {
        *buf = 136446210;
        v27 = "nw_path_flow_registration_access_interface_stats";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_flow_registration_access_interface_stats";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_45;
  }

  if (v3[9])
  {
LABEL_11:
    v5[2](v5);
LABEL_12:

    return;
  }

  v6 = malloc_type_calloc(1uLL, 0x88uLL, 0x5AFE612CuLL);
  if (v6)
  {
LABEL_10:
    v3[9] = v6;
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446722;
  v27 = "nw_path_flow_registration_access_interface_stats";
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v28 = 2048;
  v29 = 1;
  v30 = 2048;
  v31 = 136;
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  if (!__nwlog_should_abort(v9))
  {
    free(v9);
    v6 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t in_finalize_cksum(uint64_t a1, unsigned int a2, __int16 a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v31 = "__nw_frame_unclaimed_length";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null frame", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v13, type, &v29))
    {
      goto LABEL_30;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v31 = "__nw_frame_unclaimed_length";
      v16 = "%{public}s called with null frame";
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type[0];
      v18 = os_log_type_enabled(v14, type[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v31 = "__nw_frame_unclaimed_length";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_30:
        if (v13)
        {
          free(v13);
        }

        v19 = __nwlog_obj();
        *buf = 136446210;
        v31 = "__nw_frame_unclaimed_bytes";
        LODWORD(v27) = 12;
        v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null frame", buf, v27);
        type[0] = OS_LOG_TYPE_ERROR;
        v29 = 0;
        if (!__nwlog_fault(v20, type, &v29))
        {
          goto LABEL_46;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v21 = __nwlog_obj();
          v22 = type[0];
          if (!os_log_type_enabled(v21, type[0]))
          {
            goto LABEL_46;
          }

          *buf = 136446210;
          v31 = "__nw_frame_unclaimed_bytes";
          v23 = "%{public}s called with null frame";
        }

        else if (v29 == 1)
        {
          v24 = __nw_create_backtrace_string();
          v21 = __nwlog_obj();
          v22 = type[0];
          v25 = os_log_type_enabled(v21, type[0]);
          if (v24)
          {
            if (v25)
            {
              *buf = 136446466;
              v31 = "__nw_frame_unclaimed_bytes";
              v32 = 2082;
              v33 = v24;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v24);
            goto LABEL_46;
          }

          if (!v25)
          {
LABEL_46:
            if (v20)
            {
              free(v20);
            }

            goto LABEL_48;
          }

          *buf = 136446210;
          v31 = "__nw_frame_unclaimed_bytes";
          v23 = "%{public}s called with null frame, no backtrace";
        }

        else
        {
          v21 = __nwlog_obj();
          v22 = type[0];
          if (!os_log_type_enabled(v21, type[0]))
          {
            goto LABEL_46;
          }

          *buf = 136446210;
          v31 = "__nw_frame_unclaimed_bytes";
          v23 = "%{public}s called with null frame, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
        goto LABEL_46;
      }

      if (!v18)
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v31 = "__nw_frame_unclaimed_length";
      v16 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v31 = "__nw_frame_unclaimed_length";
      v16 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_30;
  }

  v5 = *(a1 + 52);
  if (v5)
  {
    v6 = (v5 - (*(a1 + 56) + *(a1 + 60)));
    v7 = *(a1 + 112);
    if (!v7)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(a1 + 112);
    if (!v7)
    {
      goto LABEL_48;
    }
  }

  if ((*(a1 + 204) & 0x100) != 0 && g_channel_check_validity)
  {
    v8 = a1;
    if (!g_channel_check_validity(a1, *(a1 + 88)))
    {
      goto LABEL_48;
    }

    a1 = v8;
    v7 = *(v8 + 112);
  }

  v9 = *(a1 + 56);
  *type = 0;
  if (!v6 || !v7)
  {
LABEL_48:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v31 = "in_finalize_cksum";
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, "%{public}s frame is no longer valid", buf, 0xCu);
    }

    return 6;
  }

  v10 = inet_cksum(a1, 0, v6, type);
  result = *type;
  if (!*type)
  {
    if (!v10)
    {
      LOWORD(v10) = (a3 << 15) >> 15;
    }

    *(v7 + v9 + a2) = v10;
  }

  return result;
}

uint64_t inet_cksum(uint64_t a1, unsigned int a2, uint64_t a3, int *a4)
{
  *&v69[7] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v65 = "m_sum16";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null error", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v21, &type, &v62))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v65 = "m_sum16";
      v24 = "%{public}s called with null error";
    }

    else if (v62 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v45 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v45)
        {
          *buf = 136446466;
          v65 = "m_sum16";
          v66 = 2082;
          *v67 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null error, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_73;
      }

      if (!v45)
      {
LABEL_73:
        if (v21)
        {
          free(v21);
        }

        return 1;
      }

      *buf = 136446210;
      v65 = "m_sum16";
      v24 = "%{public}s called with null error, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v65 = "m_sum16";
      v24 = "%{public}s called with null error, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_73;
  }

  *a4 = 0;
  if (!a1)
  {
    v25 = a3;
    v26 = a2;
    v27 = __nwlog_obj();
    *buf = 136446210;
    v65 = "__nw_frame_unclaimed_length";
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v28, &type, &v62))
    {
      goto LABEL_81;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "__nw_frame_unclaimed_length";
      v31 = "%{public}s called with null frame";
    }

    else if (v62 == 1)
    {
      v49 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v50 = os_log_type_enabled(v29, type);
      if (v49)
      {
        if (v50)
        {
          *buf = 136446466;
          v65 = "__nw_frame_unclaimed_length";
          v66 = 2082;
          *v67 = v49;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v49);
LABEL_81:
        if (v28)
        {
          free(v28);
        }

        v6 = 0;
        a2 = v26;
        a3 = v25;
        a1 = 0;
        v7 = -v26;
        if (v26)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "__nw_frame_unclaimed_length";
      v31 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v65 = "__nw_frame_unclaimed_length";
      v31 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    goto LABEL_81;
  }

  v5 = *(a1 + 52);
  if (v5)
  {
    v6 = v5 - (*(a1 + 56) + *(a1 + 60));
    v7 = v6 - a2;
    if (v6 >= a2)
    {
      goto LABEL_5;
    }

LABEL_14:
    v13 = a2;
    v14 = __nwlog_obj();
    *buf = 136446722;
    v65 = "m_sum16";
    v66 = 1024;
    v15 = v13;
    *v67 = v13;
    *&v67[4] = 1024;
    *&v67[6] = v6;
    LODWORD(v61) = 24;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s off %u > mlen %u in m_sum16", buf, v61);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v16, &type, &v62))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_89;
      }

      *buf = 136446722;
      v65 = "m_sum16";
      v66 = 1024;
      *v67 = v15;
      *&v67[4] = 1024;
      *&v67[6] = v6;
      v19 = "%{public}s off %u > mlen %u in m_sum16";
    }

    else if (v62 == 1)
    {
      v46 = v6;
      v47 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v48 = os_log_type_enabled(v17, type);
      if (v47)
      {
        if (v48)
        {
          *buf = 136446978;
          v65 = "m_sum16";
          v66 = 1024;
          *v67 = v15;
          *&v67[4] = 1024;
          *&v67[6] = v46;
          v68 = 2082;
          *v69 = v47;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s off %u > mlen %u in m_sum16, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v47);
        goto LABEL_89;
      }

      if (!v48)
      {
        goto LABEL_89;
      }

      *buf = 136446722;
      v65 = "m_sum16";
      v66 = 1024;
      *v67 = v15;
      *&v67[4] = 1024;
      *&v67[6] = v46;
      v19 = "%{public}s off %u > mlen %u in m_sum16, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_89;
      }

      *buf = 136446722;
      v65 = "m_sum16";
      v66 = 1024;
      *v67 = v15;
      *&v67[4] = 1024;
      *&v67[6] = v6;
      v19 = "%{public}s off %u > mlen %u in m_sum16, backtrace limit exceeded";
    }

    v55 = v17;
    v56 = v18;
    v57 = 24;
LABEL_88:
    _os_log_impl(&dword_181A37000, v55, v56, v19, buf, v57);
    goto LABEL_89;
  }

  v6 = 0;
  v7 = -a2;
  if (a2)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v7 < a3)
  {
    v32 = a2;
    v33 = a3;
    v34 = __nwlog_obj();
    *buf = 136446978;
    v65 = "m_sum16";
    v66 = 1024;
    *v67 = v7;
    *&v67[4] = 1024;
    v35 = v33;
    *&v67[6] = v33;
    v68 = 1024;
    v36 = v32;
    *v69 = v32;
    LODWORD(v61) = 30;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s mlen %u < len %u (off %u) in m_sum16", buf, v61);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v16, &type, &v62))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_89;
      }

      *buf = 136446978;
      v65 = "m_sum16";
      v66 = 1024;
      *v67 = v7;
      *&v67[4] = 1024;
      *&v67[6] = v35;
      v68 = 1024;
      *v69 = v36;
      v19 = "%{public}s mlen %u < len %u (off %u) in m_sum16";
      goto LABEL_87;
    }

    if (v62 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_89;
      }

      *buf = 136446978;
      v65 = "m_sum16";
      v66 = 1024;
      *v67 = v7;
      *&v67[4] = 1024;
      *&v67[6] = v35;
      v68 = 1024;
      *v69 = v36;
      v19 = "%{public}s mlen %u < len %u (off %u) in m_sum16, backtrace limit exceeded";
      goto LABEL_87;
    }

    v51 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v52 = os_log_type_enabled(v37, type);
    if (v51)
    {
      if (v52)
      {
        *buf = 136447234;
        v65 = "m_sum16";
        v66 = 1024;
        *v67 = v7;
        *&v67[4] = 1024;
        *&v67[6] = v35;
        v68 = 1024;
        *v69 = v36;
        v69[2] = 2082;
        *&v69[3] = v51;
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s mlen %u < len %u (off %u) in m_sum16, dumping backtrace:%{public}s", buf, 0x28u);
      }

      free(v51);
      if (!v16)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (v52)
    {
      *buf = 136446978;
      v65 = "m_sum16";
      v66 = 1024;
      *v67 = v7;
      *&v67[4] = 1024;
      *&v67[6] = v35;
      v68 = 1024;
      *v69 = v36;
      v19 = "%{public}s mlen %u < len %u (off %u) in m_sum16, no backtrace";
LABEL_87:
      v55 = v37;
      v56 = v38;
      v57 = 30;
      goto LABEL_88;
    }

LABEL_89:
    if (!v16)
    {
LABEL_91:
      v58 = 22;
LABEL_100:
      *a4 = v58;
      return 1;
    }

LABEL_90:
    free(v16);
    goto LABEL_91;
  }

  if (!a1)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v65 = "__nw_frame_unclaimed_bytes";
    LODWORD(v61) = 12;
    v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null frame", buf, v61);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v40, &type, &v62))
    {
      goto LABEL_95;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_95;
      }

      *buf = 136446210;
      v65 = "__nw_frame_unclaimed_bytes";
      v43 = "%{public}s called with null frame";
    }

    else if (v62 == 1)
    {
      v53 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v54 = os_log_type_enabled(v41, type);
      if (v53)
      {
        if (v54)
        {
          *buf = 136446466;
          v65 = "__nw_frame_unclaimed_bytes";
          v66 = 2082;
          *v67 = v53;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v53);
        goto LABEL_95;
      }

      if (!v54)
      {
LABEL_95:
        if (v40)
        {
          free(v40);
        }

        goto LABEL_97;
      }

      *buf = 136446210;
      v65 = "__nw_frame_unclaimed_bytes";
      v43 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_95;
      }

      *buf = 136446210;
      v65 = "__nw_frame_unclaimed_bytes";
      v43 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
    goto LABEL_95;
  }

  v8 = *(a1 + 112);
  if (!v8 || (*(a1 + 204) & 0x100) != 0 && g_channel_check_validity && ((v9 = a1, v10 = a2, v11 = a3, !g_channel_check_validity(a1, *(a1 + 88))) || (a3 = v11, a2 = v10, a1 = v9, (v8 = *(v9 + 112)) == 0)))
  {
LABEL_97:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v65 = "m_sum16";
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, "%{public}s frame is no longer valid", buf, 0xCu);
    }

    v58 = 6;
    goto LABEL_100;
  }

  return ~MEMORY[0x1865DE4A0](v8 + *(a1 + 56) + a2, a3, 0);
}

BOOL nw_dispatch_data_to_iovec(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null data", applier, 12);
    LOBYTE(buf[0]) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, buf, type))
    {
      goto LABEL_95;
    }

    if (LOBYTE(buf[0]) == 17)
    {
      v30 = __nwlog_obj();
      v31 = buf[0];
      if (!os_log_type_enabled(v30, buf[0]))
      {
        goto LABEL_95;
      }

      *applier = 136446210;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      v32 = "%{public}s called with null data";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = buf[0];
      v38 = os_log_type_enabled(v30, buf[0]);
      if (backtrace_string)
      {
        if (v38)
        {
          *applier = 136446466;
          *&applier[4] = "nw_dispatch_data_to_iovec";
          *&applier[12] = 2082;
          *&applier[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null data, dumping backtrace:%{public}s", applier, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_95;
      }

      if (!v38)
      {
        goto LABEL_95;
      }

      *applier = 136446210;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      v32 = "%{public}s called with null data, no backtrace";
    }

    else
    {
      v30 = __nwlog_obj();
      v31 = buf[0];
      if (!os_log_type_enabled(v30, buf[0]))
      {
        goto LABEL_95;
      }

      *applier = 136446210;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      v32 = "%{public}s called with null data, backtrace limit exceeded";
    }

    goto LABEL_93;
  }

  if (!a3)
  {
    v33 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null len", applier, 12);
    LOBYTE(buf[0]) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, buf, type))
    {
      goto LABEL_95;
    }

    if (LOBYTE(buf[0]) != 17)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v30 = __nwlog_obj();
        v31 = buf[0];
        if (!os_log_type_enabled(v30, buf[0]))
        {
          goto LABEL_95;
        }

        *applier = 136446210;
        *&applier[4] = "nw_dispatch_data_to_iovec";
        v32 = "%{public}s called with null len, backtrace limit exceeded";
        goto LABEL_93;
      }

      v39 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = buf[0];
      v40 = os_log_type_enabled(v30, buf[0]);
      if (!v39)
      {
        if (!v40)
        {
          goto LABEL_95;
        }

        *applier = 136446210;
        *&applier[4] = "nw_dispatch_data_to_iovec";
        v32 = "%{public}s called with null len, no backtrace";
        goto LABEL_93;
      }

      if (!v40)
      {
        goto LABEL_73;
      }

      *applier = 136446466;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      *&applier[12] = 2082;
      *&applier[14] = v39;
      v41 = "%{public}s called with null len, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v30 = __nwlog_obj();
    v31 = buf[0];
    if (!os_log_type_enabled(v30, buf[0]))
    {
      goto LABEL_95;
    }

    *applier = 136446210;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    v32 = "%{public}s called with null len";
LABEL_93:
    v46 = applier;
LABEL_94:
    _os_log_impl(&dword_181A37000, v30, v31, v32, v46, 0xCu);
    goto LABEL_95;
  }

  if (!a4)
  {
    v34 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null iovs", applier, 12);
    LOBYTE(buf[0]) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, buf, type))
    {
      goto LABEL_95;
    }

    if (LOBYTE(buf[0]) != 17)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v30 = __nwlog_obj();
        v31 = buf[0];
        if (!os_log_type_enabled(v30, buf[0]))
        {
          goto LABEL_95;
        }

        *applier = 136446210;
        *&applier[4] = "nw_dispatch_data_to_iovec";
        v32 = "%{public}s called with null iovs, backtrace limit exceeded";
        goto LABEL_93;
      }

      v39 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = buf[0];
      v42 = os_log_type_enabled(v30, buf[0]);
      if (!v39)
      {
        if (!v42)
        {
          goto LABEL_95;
        }

        *applier = 136446210;
        *&applier[4] = "nw_dispatch_data_to_iovec";
        v32 = "%{public}s called with null iovs, no backtrace";
        goto LABEL_93;
      }

      if (!v42)
      {
        goto LABEL_73;
      }

      *applier = 136446466;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      *&applier[12] = 2082;
      *&applier[14] = v39;
      v41 = "%{public}s called with null iovs, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    v30 = __nwlog_obj();
    v31 = buf[0];
    if (!os_log_type_enabled(v30, buf[0]))
    {
      goto LABEL_95;
    }

    *applier = 136446210;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    v32 = "%{public}s called with null iovs";
    goto LABEL_93;
  }

  if (!a5)
  {
    v35 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null maxiov", applier, 12);
    LOBYTE(buf[0]) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, buf, type))
    {
      goto LABEL_95;
    }

    if (LOBYTE(buf[0]) == 17)
    {
      v30 = __nwlog_obj();
      v31 = buf[0];
      if (!os_log_type_enabled(v30, buf[0]))
      {
        goto LABEL_95;
      }

      *applier = 136446210;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      v32 = "%{public}s called with null maxiov";
      goto LABEL_93;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v30 = __nwlog_obj();
      v31 = buf[0];
      if (!os_log_type_enabled(v30, buf[0]))
      {
        goto LABEL_95;
      }

      *applier = 136446210;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      v32 = "%{public}s called with null maxiov, backtrace limit exceeded";
      goto LABEL_93;
    }

    v39 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = buf[0];
    v43 = os_log_type_enabled(v30, buf[0]);
    if (!v39)
    {
      if (!v43)
      {
        goto LABEL_95;
      }

      *applier = 136446210;
      *&applier[4] = "nw_dispatch_data_to_iovec";
      v32 = "%{public}s called with null maxiov, no backtrace";
      goto LABEL_93;
    }

    if (!v43)
    {
      goto LABEL_73;
    }

    *applier = 136446466;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    *&applier[12] = 2082;
    *&applier[14] = v39;
    v41 = "%{public}s called with null maxiov, dumping backtrace:%{public}s";
LABEL_67:
    v44 = applier;
    goto LABEL_72;
  }

  v47 = 0;
  if (a5 <= 0)
  {
    v36 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null (maxiov >= 1)", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v29, type, &v52))
    {
      goto LABEL_95;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (!os_log_type_enabled(v30, type[0]))
      {
        goto LABEL_95;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
      v32 = "%{public}s called with null (maxiov >= 1)";
      goto LABEL_99;
    }

    if (v52 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (!os_log_type_enabled(v30, type[0]))
      {
        goto LABEL_95;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
      v32 = "%{public}s called with null (maxiov >= 1), backtrace limit exceeded";
      goto LABEL_99;
    }

    v39 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type[0];
    v45 = os_log_type_enabled(v30, type[0]);
    if (v39)
    {
      if (!v45)
      {
        goto LABEL_73;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v39;
      v41 = "%{public}s called with null (maxiov >= 1), dumping backtrace:%{public}s";
      v44 = buf;
LABEL_72:
      _os_log_impl(&dword_181A37000, v30, v31, v41, v44, 0x16u);
LABEL_73:
      free(v39);
      if (!v29)
      {
        return 0;
      }

LABEL_96:
      v27 = v29;
      goto LABEL_27;
    }

    if (v45)
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
      v32 = "%{public}s called with null (maxiov >= 1), no backtrace";
LABEL_99:
      v46 = buf;
      goto LABEL_94;
    }

LABEL_95:
    if (!v29)
    {
      return 0;
    }

    goto LABEL_96;
  }

  v10 = a3 + a2;
  if (a3 + a2 > dispatch_data_get_size(a1))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    size = dispatch_data_get_size(a1);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = a2;
    HIWORD(buf[2]) = 2048;
    v62 = a3;
    v63 = 2048;
    v64 = size;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s Invalid offset and length (%zu + %zu > %zu)", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v13, type, &v52))
    {
      goto LABEL_25;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_25;
      }

      v16 = dispatch_data_get_size(a1);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = a2;
      HIWORD(buf[2]) = 2048;
      v62 = a3;
      v63 = 2048;
      v64 = v16;
      v17 = "%{public}s Invalid offset and length (%zu + %zu > %zu)";
    }

    else if (v52 == 1)
    {
      v22 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type[0];
      v23 = os_log_type_enabled(gLogObj, type[0]);
      if (v22)
      {
        if (v23)
        {
          v24 = dispatch_data_get_size(a1);
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = a2;
          HIWORD(buf[2]) = 2048;
          v62 = a3;
          v63 = 2048;
          v64 = v24;
          v65 = 2082;
          v66 = v22;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Invalid offset and length (%zu + %zu > %zu), dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v22);
LABEL_25:
        if (v13)
        {
          v27 = v13;
LABEL_27:
          free(v27);
        }

        return 0;
      }

      if (!v23)
      {
        goto LABEL_25;
      }

      v26 = dispatch_data_get_size(a1);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = a2;
      HIWORD(buf[2]) = 2048;
      v62 = a3;
      v63 = 2048;
      v64 = v26;
      v17 = "%{public}s Invalid offset and length (%zu + %zu > %zu), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_25;
      }

      v25 = dispatch_data_get_size(a1);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_dispatch_data_to_iovec_partial";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = a2;
      HIWORD(buf[2]) = 2048;
      v62 = a3;
      v63 = 2048;
      v64 = v25;
      v17 = "%{public}s Invalid offset and length (%zu + %zu > %zu), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x2Au);
    goto LABEL_25;
  }

  v47 = 0;
  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x2000000000;
  LODWORD(v62) = 0;
  *type = 0;
  v49 = type;
  v50 = 0x2000000000;
  v51 = a2;
  *applier = MEMORY[0x1E69E9820];
  *&applier[8] = 0x40000000;
  *&applier[16] = ___ZL33nw_dispatch_data_to_iovec_partialP15dispatch_data_smmP5ioveciPb_block_invoke;
  v54 = &unk_1E6A34408;
  v55 = type;
  v56 = buf;
  v60 = a5;
  v57 = v10;
  v58 = &v47;
  v59 = a4;
  dispatch_data_apply(a1, applier);
  v18 = *(buf[1] + 24);
  _Block_object_dispose(type, 8);
  _Block_object_dispose(buf, 8);
  if ((v47 & 1) == 0)
  {
    return v18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v21 = dispatch_data_get_size(a1);
    *applier = 136446722;
    *&applier[4] = "nw_dispatch_data_to_iovec";
    *&applier[12] = 2048;
    *&applier[14] = v21;
    *&applier[22] = 1024;
    LODWORD(v54) = a5;
    _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s data (%zu bytes) couldn't get mapped to %d iovecs due to fragmentation", applier, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t nw_frame_get_external_data(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v16 = "__nw_frame_get_external_data";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v7, &type, &v13))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_28;
      }

      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      v10 = "%{public}s called with null frame";
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
          v16 = "__nw_frame_get_external_data";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_28;
      }

      if (!v12)
      {
LABEL_28:
        if (v7)
        {
          free(v7);
        }

        return 0;
      }

      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      v10 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_28;
      }

      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      v10 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_28;
  }

  if ((*(a1 + 204) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v16 = "__nw_frame_get_external_data";
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s Frame does not use external data", buf, 0xCu);
    }

    return 0;
  }

  if (a2)
  {
    *a2 = *(a1 + 56);
  }

  if (a3)
  {
    v5 = *(a1 + 52);
    if (v5)
    {
      v5 -= *(a1 + 56) + *(a1 + 60);
    }

    *a3 = v5;
  }

  return *(a1 + 96);
}

BOOL ___ZL33nw_dispatch_data_to_iovec_partialP15dispatch_data_smmP5ioveciPb_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 <= v5)
  {
    return 1;
  }

  v6 = *(a1 + 48);
  if (v6 <= a3)
  {
    return 0;
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (v7 != *(a1 + 72))
  {
    v13 = v5 >= a3;
    v14 = v5 - a3;
    if (!v13)
    {
      v14 = 0;
    }

    v15 = *(a1 + 64);
    *(v15 + 16 * v7) = a4 + v14;
    v16 = v6 - *(*(*(a1 + 32) + 8) + 24);
    v17 = a5 - v14;
    if (v16 >= v17)
    {
      v16 = v17;
    }

    *(v15 + 16 * *(*(*(a1 + 40) + 8) + 24) + 8) = v16;
    *(*(*(a1 + 32) + 8) + 24) += *(v15 + 16 * (*(*(*(a1 + 40) + 8) + 24))++ + 8);
    v18 = *(*(*(a1 + 32) + 8) + 24);
    v19 = *(a1 + 48);
    if (v18 <= v19)
    {
      return v18 < v19;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = *(*(*(a1 + 32) + 8) + 24);
    v22 = a1;
    v23 = *(a1 + 48);
    *buf = 136446722;
    v41 = "nw_dispatch_data_to_iovec_partial_block_invoke";
    v42 = 2048;
    v43 = v21;
    v44 = 2048;
    v45 = v23;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Cursor hit invalid value (%zu > %zu)", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v24, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v27 = *(*(*(v22 + 32) + 8) + 24);
          v28 = *(v22 + 48);
          *buf = 136446722;
          v41 = "nw_dispatch_data_to_iovec_partial_block_invoke";
          v42 = 2048;
          v43 = v27;
          v44 = 2048;
          v45 = v28;
          v29 = "%{public}s Cursor hit invalid value (%zu > %zu)";
LABEL_28:
          _os_log_impl(&dword_181A37000, v25, v26, v29, buf, 0x20u);
        }
      }

      else if (v38 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v31 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v31)
          {
            v32 = *(*(*(v22 + 32) + 8) + 24);
            v33 = *(v22 + 48);
            *buf = 136446978;
            v41 = "nw_dispatch_data_to_iovec_partial_block_invoke";
            v42 = 2048;
            v43 = v32;
            v44 = 2048;
            v45 = v33;
            v46 = 2082;
            v47 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Cursor hit invalid value (%zu > %zu), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v31)
        {
          v36 = *(*(*(v22 + 32) + 8) + 24);
          v37 = *(v22 + 48);
          *buf = 136446722;
          v41 = "nw_dispatch_data_to_iovec_partial_block_invoke";
          v42 = 2048;
          v43 = v36;
          v44 = 2048;
          v45 = v37;
          v29 = "%{public}s Cursor hit invalid value (%zu > %zu), no backtrace";
          goto LABEL_28;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          v34 = *(*(*(v22 + 32) + 8) + 24);
          v35 = *(v22 + 48);
          *buf = 136446722;
          v41 = "nw_dispatch_data_to_iovec_partial_block_invoke";
          v42 = 2048;
          v43 = v34;
          v44 = 2048;
          v45 = v35;
          v29 = "%{public}s Cursor hit invalid value (%zu > %zu), backtrace limit exceeded";
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    if (v24)
    {
      free(v24);
    }

    v18 = *(*(*(v22 + 32) + 8) + 24);
    v19 = *(v22 + 48);
    return v18 < v19;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    *v9 = 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v12 = *(a1 + 72);
    *buf = 136446466;
    v41 = "nw_dispatch_data_to_iovec_partial_block_invoke";
    v42 = 1024;
    LODWORD(v43) = v12;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s Data had too many fragments for iovec (max %d)", buf, 0x12u);
    return 0;
  }

  return result;
}

void NWConnection.send(content:contentContext:isComplete:completion:)(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v8 = *a5;
  if (*a5)
  {
    v9 = a5[1];
    v10 = *(v5 + 16);
    if (a2 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_182AD2138();
    }

    v14 = NWCreateDispatchDataFromNSData(v11, a2);

    v15 = *(a3 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    aBlock[4] = sub_181BEBE78;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_12_0;
    v17 = _Block_copy(aBlock);

    nw_connection_send(v10, v14, v15, a4 & 1, v17);
    _Block_release(v17);
  }

  else
  {
    v12 = *(v5 + 16);
    if (a2 >> 60 == 15)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_182AD2138();
    }

    v18 = NWCreateDispatchDataFromNSData(v13, a2);

    nw_connection_send_idempotent(v12, v18, *(a3 + 16), a4 & 1);
  }
}

void ___ZL51nw_connection_get_power_perf_services_stream_handlev_block_invoke()
{
  xBOOL = nw_utilities_copy_local_entitlement_value("com.apple.PerfPowerServices.data-donation");
  v0 = _os_feature_enabled_impl();
  if (xBOOL)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  if (v1 == 1 && object_getClass(xBOOL) == MEMORY[0x1E69E9E58])
  {
    xpc_BOOL_get_value(xBOOL);
    Helper_x8__pps_send_telemetry = gotLoadHelper_x8__pps_send_telemetry(v2);
    v5 = *(v4 + 1696) == 0;
    v7 = v6 ^ 1;
    if (v5)
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      nw_connection_get_power_perf_services_stream_handle(void)::stream = pps_create_telemetry_identifier_delayInitStub(Helper_x8__pps_send_telemetry);
    }
  }
}

BOOL nw_protocol_http3_stream_connect(nw_protocol *a1, nw_protocol *a2)
{
  v123 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v105) = 0;
    if (!__nwlog_fault(v32, type, &v105))
    {
      goto LABEL_165;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null protocol";
      goto LABEL_164;
    }

    if (v105 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_164;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type[0];
    v55 = os_log_type_enabled(v33, type[0]);
    if (!backtrace_string)
    {
      if (!v55)
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_164;
    }

    if (!v55)
    {
      goto LABEL_100;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v56 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_99:
    _os_log_impl(&dword_181A37000, v33, v34, v56, buf, 0x16u);
    goto LABEL_100;
  }

  handle = a1->handle;
  if (!handle)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null http3_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v105) = 0;
    if (!__nwlog_fault(v32, type, &v105))
    {
      goto LABEL_165;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null http3_stream";
      goto LABEL_164;
    }

    if (v105 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_164;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type[0];
    v57 = os_log_type_enabled(v33, type[0]);
    if (!backtrace_string)
    {
      if (!v57)
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null http3_stream, no backtrace";
      goto LABEL_164;
    }

    if (!v57)
    {
      goto LABEL_100;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v56 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
    goto LABEL_99;
  }

  if (!a2)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null other_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v105) = 0;
    if (!__nwlog_fault(v32, type, &v105))
    {
      goto LABEL_165;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null other_protocol";
      goto LABEL_164;
    }

    if (v105 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      v35 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_164;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type[0];
    v58 = os_log_type_enabled(v33, type[0]);
    if (backtrace_string)
    {
      if (v58)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_connect";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v56 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
        goto LABEL_99;
      }

LABEL_100:
      free(backtrace_string);
      goto LABEL_165;
    }

    if (!v58)
    {
      goto LABEL_165;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    v35 = "%{public}s called with null other_protocol, no backtrace";
LABEL_164:
    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
LABEL_165:
    if (v32)
    {
      free(v32);
    }

    return 0;
  }

  v3 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v38 = a2;
    v39 = a1;
    v40 = __nwlog_obj();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
    a2 = v38;
    v42 = v41;
    a1 = v39;
    if (v42)
    {
      v43 = *(handle[43] + 1304);
      v44 = handle[30];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http3_stream_connect";
      *&buf[12] = 2082;
      *&buf[14] = handle + 79;
      *&buf[22] = 2080;
      v110 = " ";
      LOWORD(v111) = 1024;
      *(&v111 + 2) = v43;
      HIWORD(v111) = 2048;
      v112 = v44;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a1 = v39;
      a2 = v38;
    }
  }

  v4 = handle[4];
  if (v4)
  {
    if ((*(handle + 366) & 0x100) == 0)
    {
      if (!handle[29])
      {
        v5 = mach_continuous_approximate_time();
        if (v5 <= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5;
        }

        handle[29] = v6;
        v4 = handle[4];
      }

      handle[20] = v4;
      handle[21] = v4;
      v7 = handle[43];
      if (v7)
      {
        if (v4)
        {
          if (*(v7 + 32))
          {
            goto LABEL_53;
          }

          nw_protocol_set_output_handler(handle[43], v4);
          if ((*(v7 + 1399) & 0x20) == 0 && gLogDatapath == 1)
          {
            v92 = __nwlog_obj();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              v93 = *(v7 + 1304);
              *buf = 136446978;
              *&buf[4] = "nw_http3_add_edges";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 1313;
              *&buf[22] = 2080;
              v110 = " ";
              LOWORD(v111) = 1024;
              *(&v111 + 2) = v93;
              _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          v8 = *(v7 + 1112);
          if (v8)
          {
            v9 = v8;
            is_registered = _nw_endpoint_is_registered(v9);

            if (is_registered)
            {
              nw_endpoint_add_edges_for_instance(*(v7 + 1112), v7, 0);
LABEL_21:
              v11 = nw_parameters_copy_protocol_options_legacy(*(v7 + 1136), *(v7 + 32));
              if (v11)
              {
                v12 = v11;
                if (_nw_protocol_options_is_quic_stream(v11))
                {
                  v13 = nw_quic_stream_copy_shared_connection_options(v12);
                  *(v7 + 1397) = *(v7 + 1397) & 0xFFFD | (2 * (nw_quic_connection_get_max_datagram_frame_size(v13) != 0));
                  v14 = nw_quic_connection_get_datagram_quarter_stream_id(v13) ? 0 : 4;
                  *(v7 + 1397) = *(v7 + 1397) & 0xFFFB | v14;
                  if (v13)
                  {
                    os_release(v13);
                  }
                }

                os_release(v12);
              }

              if (!*(v7 + 1256))
              {
                v15 = v4[3];
                if (v15)
                {
                  v16 = *(v15 + 224);
                  if (v16)
                  {
                    v17 = v16(v4, 255, 0);
                    v105 = 0;
                    v106 = &v105;
                    v107 = 0x2000000000;
                    v108 = 0;
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 0x40000000;
                    *&buf[16] = ___ZL28nw_http3_save_output_handlerP17nw_protocol_http3P11nw_protocol_block_invoke;
                    v110 = &unk_1E6A38D80;
                    v111 = &v105;
                    if (v17)
                    {
                      v18 = v17;
                      _nw_array_apply(v17, buf);
                      v19 = v106[3];
                      if (v19)
                      {
                        *(v7 + 1256) = os_retain(v19);
                        if (*(v7 + 1292))
                        {
                          if ((*(v7 + 1399) & 0x20) == 0 && BYTE1(v3[82].isa) == 1 && (v100 = __nwlog_obj(), os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG)))
                          {
                            v101 = *(v7 + 1304);
                            *type = 136446978;
                            v116 = "nw_http3_save_output_handler";
                            v117 = 2082;
                            v118 = v7 + 1313;
                            v119 = 2080;
                            v120 = " ";
                            v121 = 1024;
                            v122 = v101;
                            _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> enabling QUIC keepalives", type, 0x26u);
                            v20 = 0xFFFFLL;
                          }

                          else
                          {
                            v20 = 0xFFFFLL;
                          }
                        }

                        else
                        {
                          if ((*(v7 + 1399) & 0x20) == 0 && BYTE1(v3[82].isa) == 1)
                          {
                            v102 = __nwlog_obj();
                            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                            {
                              v103 = *(v7 + 1304);
                              *type = 136446978;
                              v116 = "nw_http3_save_output_handler";
                              v117 = 2082;
                              v118 = v7 + 1313;
                              v119 = 2080;
                              v120 = " ";
                              v121 = 1024;
                              v122 = v103;
                              _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> disabling QUIC keepalives", type, 0x26u);
                            }
                          }

                          v20 = 0;
                        }

                        nw_quic_connection_set_keepalive(*(v7 + 1256), v20);
                        v27 = nw_quic_connection_copy_sec_protocol_metadata(*(v7 + 1256));
                        nw_http_connection_metadata_set_sec_metadata(*(v7 + 1264), v27);
                        if (v27)
                        {
                          os_release(v27);
                        }
                      }

                      os_release(v18);
                    }

                    _Block_object_dispose(&v105, 8);
                  }
                }
              }

              goto LABEL_53;
            }

            v94 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http3_add_edges";
            v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s http3->remote_endpoint is not registered when connected", buf, 12);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v105) = 0;
            if (!__nwlog_fault(v88, type, &v105))
            {
              goto LABEL_214;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v89 = __nwlog_obj();
              v90 = type[0];
              if (os_log_type_enabled(v89, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http3_add_edges";
                v91 = "%{public}s http3->remote_endpoint is not registered when connected";
                goto LABEL_213;
              }

              goto LABEL_214;
            }

            if (v105 != 1)
            {
              v89 = __nwlog_obj();
              v90 = type[0];
              if (os_log_type_enabled(v89, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http3_add_edges";
                v91 = "%{public}s http3->remote_endpoint is not registered when connected, backtrace limit exceeded";
                goto LABEL_213;
              }

              goto LABEL_214;
            }

            v96 = __nw_create_backtrace_string();
            v89 = __nwlog_obj();
            v90 = type[0];
            v99 = os_log_type_enabled(v89, type[0]);
            if (!v96)
            {
              if (v99)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http3_add_edges";
                v91 = "%{public}s http3->remote_endpoint is not registered when connected, no backtrace";
                goto LABEL_213;
              }

              goto LABEL_214;
            }

            if (v99)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http3_add_edges";
              *&buf[12] = 2082;
              *&buf[14] = v96;
              v98 = "%{public}s http3->remote_endpoint is not registered when connected, dumping backtrace:%{public}s";
              goto LABEL_189;
            }
          }

          else
          {
            v87 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http3_add_edges";
            v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s http3->remote_endpoint is NULL when connected", buf, 12);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v105) = 0;
            if (!__nwlog_fault(v88, type, &v105))
            {
              goto LABEL_214;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v89 = __nwlog_obj();
              v90 = type[0];
              if (os_log_type_enabled(v89, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http3_add_edges";
                v91 = "%{public}s http3->remote_endpoint is NULL when connected";
LABEL_213:
                _os_log_impl(&dword_181A37000, v89, v90, v91, buf, 0xCu);
              }

LABEL_214:
              if (v88)
              {
                free(v88);
              }

              v3 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              goto LABEL_21;
            }

            if (v105 != 1)
            {
              v89 = __nwlog_obj();
              v90 = type[0];
              if (os_log_type_enabled(v89, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http3_add_edges";
                v91 = "%{public}s http3->remote_endpoint is NULL when connected, backtrace limit exceeded";
                goto LABEL_213;
              }

              goto LABEL_214;
            }

            v96 = __nw_create_backtrace_string();
            v89 = __nwlog_obj();
            v90 = type[0];
            v97 = os_log_type_enabled(v89, type[0]);
            if (!v96)
            {
              if (v97)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http3_add_edges";
                v91 = "%{public}s http3->remote_endpoint is NULL when connected, no backtrace";
                goto LABEL_213;
              }

              goto LABEL_214;
            }

            if (v97)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http3_add_edges";
              *&buf[12] = 2082;
              *&buf[14] = v96;
              v98 = "%{public}s http3->remote_endpoint is NULL when connected, dumping backtrace:%{public}s";
LABEL_189:
              _os_log_impl(&dword_181A37000, v89, v90, v98, buf, 0x16u);
            }
          }

          free(v96);
          goto LABEL_214;
        }

        v69 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http3_save_output_handler";
        v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s called with null quic_protocol", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v105) = 0;
        if (!__nwlog_fault(v60, type, &v105))
        {
          goto LABEL_201;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v61 = __nwlog_obj();
          v62 = type[0];
          if (!os_log_type_enabled(v61, type[0]))
          {
            goto LABEL_201;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_save_output_handler";
          v63 = "%{public}s called with null quic_protocol";
          goto LABEL_200;
        }

        if (v105 != 1)
        {
          v61 = __nwlog_obj();
          v62 = type[0];
          if (!os_log_type_enabled(v61, type[0]))
          {
            goto LABEL_201;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_save_output_handler";
          v63 = "%{public}s called with null quic_protocol, backtrace limit exceeded";
          goto LABEL_200;
        }

        v85 = __nw_create_backtrace_string();
        v61 = __nwlog_obj();
        v62 = type[0];
        v86 = os_log_type_enabled(v61, type[0]);
        if (v85)
        {
          if (v86)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http3_save_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = v85;
            _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null quic_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v85);
          if (!v60)
          {
LABEL_53:
            nw_http3_setup_connection_if_needed(handle[43]);
            *(handle + 366) |= 4u;
            v28 = handle[43];
            if (v28)
            {
              if ((*(v28 + 1397) & 0x61) != 0x20 || !uuid_is_null((v28 + 840)))
              {
                if (!*(v28 + 1000))
                {
                  v29 = mach_continuous_approximate_time();
                  if (v29 <= 1)
                  {
                    v30 = 1;
                  }

                  else
                  {
                    v30 = v29;
                  }

                  *(v28 + 1000) = v30;
                }

                nw_http3_stream_connect_lower(handle);
              }

LABEL_62:
              nw_http3_signal_output_pending(handle[43], 0);
              return 1;
            }

            v64 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http3_should_connect";
            LODWORD(v104) = 12;
            v65 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s called with null http3", buf, v104);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v105) = 0;
            if (__nwlog_fault(v65, type, &v105))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v66 = __nwlog_obj();
                v67 = type[0];
                if (!os_log_type_enabled(v66, type[0]))
                {
                  goto LABEL_196;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_should_connect";
                v68 = "%{public}s called with null http3";
                goto LABEL_195;
              }

              if (v105 != 1)
              {
                v66 = __nwlog_obj();
                v67 = type[0];
                if (!os_log_type_enabled(v66, type[0]))
                {
                  goto LABEL_196;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http3_should_connect";
                v68 = "%{public}s called with null http3, backtrace limit exceeded";
                goto LABEL_195;
              }

              v82 = __nw_create_backtrace_string();
              v66 = __nwlog_obj();
              v67 = type[0];
              v83 = os_log_type_enabled(v66, type[0]);
              if (v82)
              {
                if (v83)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http3_should_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v82;
                  _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v82);
                goto LABEL_196;
              }

              if (v83)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http3_should_connect";
                v68 = "%{public}s called with null http3, no backtrace";
LABEL_195:
                _os_log_impl(&dword_181A37000, v66, v67, v68, buf, 0xCu);
              }
            }

LABEL_196:
            if (v65)
            {
              free(v65);
            }

            goto LABEL_62;
          }

LABEL_202:
          free(v60);
          goto LABEL_53;
        }

        if (v86)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http3_save_output_handler";
          v63 = "%{public}s called with null quic_protocol, no backtrace";
LABEL_200:
          _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
        }
      }

      else
      {
        v59 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http3_save_output_handler";
        v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null http3", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v105) = 0;
        if (!__nwlog_fault(v60, type, &v105))
        {
          goto LABEL_201;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v61 = __nwlog_obj();
          v62 = type[0];
          if (!os_log_type_enabled(v61, type[0]))
          {
            goto LABEL_201;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_save_output_handler";
          v63 = "%{public}s called with null http3";
          goto LABEL_200;
        }

        if (v105 != 1)
        {
          v61 = __nwlog_obj();
          v62 = type[0];
          if (!os_log_type_enabled(v61, type[0]))
          {
            goto LABEL_201;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_save_output_handler";
          v63 = "%{public}s called with null http3, backtrace limit exceeded";
          goto LABEL_200;
        }

        v80 = __nw_create_backtrace_string();
        v61 = __nwlog_obj();
        v62 = type[0];
        v81 = os_log_type_enabled(v61, type[0]);
        if (!v80)
        {
          if (!v81)
          {
            goto LABEL_201;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http3_save_output_handler";
          v63 = "%{public}s called with null http3, no backtrace";
          goto LABEL_200;
        }

        if (v81)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http3_save_output_handler";
          *&buf[12] = 2082;
          *&buf[14] = v80;
          _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
      }

LABEL_201:
      if (!v60)
      {
        goto LABEL_53;
      }

      goto LABEL_202;
    }

    if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v70 = a2;
      v71 = a1;
      v72 = __nwlog_obj();
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG);
      a2 = v70;
      v74 = v73;
      a1 = v71;
      if (v74)
      {
        v75 = *(handle[43] + 1304);
        v76 = handle[30];
        *buf = 136447490;
        *&buf[4] = "nw_protocol_http3_stream_connect";
        *&buf[12] = 2082;
        *&buf[14] = handle + 79;
        *&buf[22] = 2080;
        v110 = " ";
        LOWORD(v111) = 1024;
        *(&v111 + 2) = v75;
        HIWORD(v111) = 2048;
        v112 = v76;
        v113 = 2048;
        v114 = v76;
        _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> stream %llu is already connected", buf, 0x3Au);
        a1 = v71;
        a2 = v70;
      }
    }

    callbacks = a2->callbacks;
    if (callbacks)
    {
      connected = callbacks->connected;
      if (connected)
      {
        connected(a2, a1);
        return 1;
      }
    }

    v45 = a2;
    v46 = __nwlog_obj();
    v47 = v45;
    name = v45->identifier->name;
    if (!name)
    {
      name = "invalid";
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    *&buf[12] = 2082;
    *&buf[14] = name;
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v105) = 0;
    if (__nwlog_fault(v49, type, &v105))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = type[0];
        if (!os_log_type_enabled(v50, type[0]))
        {
          goto LABEL_179;
        }

        v52 = v47->identifier->name;
        if (!v52)
        {
          v52 = "invalid";
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_connect";
        *&buf[12] = 2082;
        *&buf[14] = v52;
        v53 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_178;
      }

      if (v105 != 1)
      {
        v50 = __nwlog_obj();
        v51 = type[0];
        if (!os_log_type_enabled(v50, type[0]))
        {
          goto LABEL_179;
        }

        v84 = v47->identifier->name;
        if (!v84)
        {
          v84 = "invalid";
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_connect";
        *&buf[12] = 2082;
        *&buf[14] = v84;
        v53 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_178;
      }

      v77 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type[0];
      v78 = os_log_type_enabled(v50, type[0]);
      if (v77)
      {
        if (v78)
        {
          v79 = v47->identifier->name;
          if (!v79)
          {
            v79 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_http3_stream_connect";
          *&buf[12] = 2082;
          *&buf[14] = v79;
          *&buf[22] = 2082;
          v110 = v77;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v77);
        goto LABEL_179;
      }

      if (v78)
      {
        v95 = v47->identifier->name;
        if (!v95)
        {
          v95 = "invalid";
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_connect";
        *&buf[12] = 2082;
        *&buf[14] = v95;
        v53 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_178:
        _os_log_impl(&dword_181A37000, v50, v51, v53, buf, 0x16u);
      }
    }

LABEL_179:
    if (v49)
    {
      free(v49);
    }

    return 1;
  }

  if ((*(handle + 366) & 0x2000) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v23 = *(handle[43] + 1304);
    v24 = handle[30];
    *buf = 136447234;
    *&buf[4] = "nw_protocol_http3_stream_connect";
    *&buf[12] = 2082;
    *&buf[14] = handle + 79;
    *&buf[22] = 2080;
    v110 = " ";
    LOWORD(v111) = 1024;
    *(&v111 + 2) = v23;
    HIWORD(v111) = 2048;
    v112 = v24;
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> output_handler is NULL", buf, 0x30u);
    return 0;
  }

  return result;
}

void nw_endpoint_add_edges_for_instance(void *a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_endpoint_add_edges_for_instance";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_endpoint_add_edges_for_instance";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v21 == 1)
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
          v24 = "nw_endpoint_add_edges_for_instance";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v8)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v8);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_endpoint_add_edges_for_instance";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_endpoint_add_edges_for_instance";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2[2])
  {
    _nw_endpoint_add_edges_for_instance(v5, a2, a3);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_endpoint_add_edges_for_instance";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol->identifier", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v8, &type, &v21))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_endpoint_add_edges_for_instance";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null protocol->identifier", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_endpoint_add_edges_for_instance";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null protocol->identifier, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
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
      v24 = "nw_endpoint_add_edges_for_instance";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null protocol->identifier, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    v24 = "nw_endpoint_add_edges_for_instance";
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null protocol->identifier, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_4:
}