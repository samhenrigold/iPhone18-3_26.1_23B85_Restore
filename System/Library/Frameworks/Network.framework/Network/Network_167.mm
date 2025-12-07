uint64_t tcp_connection_get_statistics(void *a1, uint64_t a2, int *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = v4;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v39 = "tcp_connection_get_statistics";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v18, &type, &v36))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v21 = "%{public}s called with null connection";
    }

    else
    {
      if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v39 = "tcp_connection_get_statistics";
            v40 = 2082;
            *v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v26 = backtrace_string;
          goto LABEL_23;
        }

        if (!v25)
        {
LABEL_32:

          if (!v18)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v21 = "%{public}s called with null connection, no backtrace";
        v28 = v19;
        v29 = v24;
LABEL_31:
        _os_log_impl(&dword_181A37000, v28, v29, v21, buf, 0xCu);
        goto LABEL_32;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v21 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v28 = v19;
    v29 = v20;
    goto LABEL_31;
  }

  v6 = v4[2];
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v22 = "%{public}s API Misuse: Function must be called after tcp_connection_start";
LABEL_16:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    }

LABEL_17:

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v39 = "tcp_connection_get_statistics";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null statistics", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v18, &type, &v36))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v33 = "%{public}s called with null statistics";
LABEL_49:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    if (v36 != 1)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v33 = "%{public}s called with null statistics, backtrace limit exceeded";
        goto LABEL_49;
      }

LABEL_50:

LABEL_24:
      if (!v18)
      {
        goto LABEL_26;
      }

LABEL_25:
      free(v18);
      goto LABEL_26;
    }

    v34 = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = type;
    v35 = os_log_type_enabled(v31, type);
    if (!v34)
    {
      if (v35)
      {
        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v33 = "%{public}s called with null statistics, no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (v35)
    {
      *buf = 136446466;
      v39 = "tcp_connection_get_statistics";
      v40 = 2082;
      *v41 = v34;
      _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null statistics, dumping backtrace:%{public}s", buf, 0x16u);
    }

    v26 = v34;
LABEL_23:
    free(v26);
    goto LABEL_24;
  }

  v7 = nw_connection_fillout_tcp_statistics(v6, a3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v22 = "%{public}s Failed to get statistics from connection";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = a3[3];
    v14 = a3[4];
    v15 = a3[5];
    *buf = 136447746;
    v39 = "tcp_connection_get_statistics";
    v40 = 1024;
    *v41 = v10;
    *&v41[4] = 1024;
    *&v41[6] = v11;
    v42 = 1024;
    v43 = v12;
    v44 = 1024;
    v45 = v13;
    v46 = 1024;
    v47 = v14;
    v48 = 1024;
    v49 = v15;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s DNS: %ums/%ums since start, TCP: %ums/%ums since start, TLS: %ums/%ums since start", buf, 0x30u);
  }

  v16 = 1;
LABEL_27:

  return v16;
}

void tcp_connection_log_event(void *a1, char *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_log_event";
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
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "tcp_connection_log_event";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v22 = "tcp_connection_log_event";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v10)
          {
            goto LABEL_27;
          }

LABEL_12:
          free(v10);
          goto LABEL_27;
        }

        if (v16)
        {
          *buf = 136446210;
          v22 = "tcp_connection_log_event";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
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
          *buf = 136446210;
          v22 = "tcp_connection_log_event";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

  v7 = v5[2];
  if (v7)
  {
    if (a2 == 1)
    {
      v8 = 2;
      goto LABEL_23;
    }

    if (!a2)
    {
      v8 = 1;
LABEL_23:
      nw_connection_add_client_event_internal(v7, v8, v6, 0);
      goto LABEL_27;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "tcp_connection_log_event";
      v23 = 2048;
      v24 = a2;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s Invalid log event %lld", buf, 0x16u);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_log_event";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_27:
}

void __nw_write_request_create_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
  (*(v1 + 16))(v1);
}

BOOL ___ZL24__nw_signpost_is_enabledv_block_invoke_35518()
{
  result = networkd_settings_get_BOOL(nw_setting_enable_signposts);
  _nw_signposts_enabled = result;
  return result;
}

void __nw_write_request_create_with_file_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
  (*(v1 + 16))(v1, 0, 0);
}

size_t nw_write_request_remaining_bytes(void *a1)
{
  v1 = a1;
  v2 = *(v1 + 9);
  if (!*(v1 + 7))
  {
    if (!v2)
    {
      v6 = 0;
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    size = *(v1 + 12);
    goto LABEL_6;
  }

  v3 = v1;
  size = dispatch_data_get_size(*(v1 + 7));
  v1 = v3;
LABEL_6:
  v5 = *(v1 + 14);
  if (size <= v5)
  {
    v5 = 0;
  }

  v6 = size - v5;
LABEL_9:

  return v6;
}

void ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _Block_copy(WeakRetained[4]);
    v4 = v3;
    if (v3)
    {
      v5 = v2[5];
      v6 = *(v2 + 12);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke_2;
      v7[3] = &unk_1E6A3D710;
      v9 = v3;
      v8 = v2;
      nw_connection_async_client_if_needed_with_override(v5, 0, v6, v7);
    }
  }
}

void ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke_2(uint64_t a1)
{
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
    nw_write_request_report_error_with_override(v2, 0, v3);
  }
}

unint64_t nw_write_request_remaining_datagram_count(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 7))
    {
      v3 = !nw_content_context_is_blocked_by_antecedents(*(v1 + 8));
    }

    else
    {
      v3 = 0;
    }

    v5 = v2 + 1;
    v4 = v2[1];
    if (v4)
    {
      do
      {
        v6 = *(v4 + 56);
        if (v6)
        {
          v6 = !nw_content_context_is_blocked_by_antecedents(*(v4 + 64));
          v4 = *v5;
        }

        v3 += v6;
        v7 = v4;

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          break;
        }

        v2 = v7;
      }

      while (v3 < 0x100);
    }

    else
    {
      v7 = v2;
    }

    goto LABEL_12;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_write_request_remaining_datagram_count";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null request", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_write_request_remaining_datagram_count";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null request", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_write_request_remaining_datagram_count";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_write_request_remaining_datagram_count";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_write_request_remaining_datagram_count";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
  v3 = 0;
LABEL_12:

  return v3;
}

void ___ZL35nw_write_request_coalesce_with_nextP27NWConcrete_nw_write_requestS0__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

uint64_t nw_protocol_http_encoding_create::$_2::__invoke(nw_protocol_http_encoding_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v9, type, &v23))
    {
      goto LABEL_48;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v23 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v15 = os_log_type_enabled(v10, type[0]);
      if (!backtrace_string)
      {
        if (!v15)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_47;
      }

      if (v15)
      {
        *buf = 136446466;
        *&buf[4] = "operator()";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
        _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
      }

LABEL_38:
      free(backtrace_string);
      goto LABEL_48;
    }

    v10 = __nwlog_obj();
    v11 = type[0];
    if (!os_log_type_enabled(v10, type[0]))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v12 = "%{public}s called with null protocol";
LABEL_47:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
LABEL_48:
    if (v9)
    {
      free(v9);
    }

    return 1;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null http_encoding", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v9, type, &v23))
    {
      goto LABEL_48;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (!os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v12 = "%{public}s called with null http_encoding";
      goto LABEL_47;
    }

    if (v23 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (!os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v12 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type[0];
    v17 = os_log_type_enabled(v10, type[0]);
    if (backtrace_string)
    {
      if (v17)
      {
        *buf = 136446466;
        *&buf[4] = "operator()";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v16 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (!v17)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v12 = "%{public}s called with null http_encoding, no backtrace";
    goto LABEL_47;
  }

  *(v3 + 544) |= 0x40u;
  if (*(v3 + 288) == 96)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v25 = __Block_byref_object_copy__35756;
    v26 = __Block_byref_object_dispose__35757;
    object = 0;
    v28 = -1;
    v4 = nw_protocol_copy_info(*(v3 + 32));
    v5 = v4;
    *type = MEMORY[0x1E69E9820];
    v19 = 0x40000000;
    v20 = ___ZZ32nw_protocol_http_encoding_createENK3__2clEP11nw_protocolS1_b_block_invoke;
    v21 = &unk_1E6A314B0;
    v22 = buf;
    if (v4)
    {
      _nw_array_apply(v4, type);
    }

    v6 = *(*&buf[8] + 40);
    if (v6 && nw_http_connection_metadata_get_version(v6) == 3)
    {
      *(v3 + 544) |= 0x100u;
      nw_http_encoding_check_http1_content_length(v3);
      if (v5)
      {
        os_release(v5);
      }

      _Block_object_dispose(buf, 8);
      if (v28)
      {
        if (object)
        {
          os_release(object);
        }
      }

      return 1;
    }

    if (v5)
    {
      os_release(v5);
    }

    _Block_object_dispose(buf, 8);
    if ((v28 & 1) != 0 && object)
    {
      os_release(object);
    }
  }

  return 0;
}

uint64_t __Block_byref_object_copy__35756(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__35757(uint64_t result)
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

uint64_t ___ZZ32nw_protocol_http_encoding_createENK3__2clEP11nw_protocolS1_b_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (nw_protocol_metadata_is_http_connection(a3))
  {
    if (v3)
    {
      v3 = os_retain(v3);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 48);
    if (v6)
    {
      v7 = *(v5 + 40);
      if (v7)
      {
        os_release(v7);
        v6 = *(v5 + 48);
      }
    }

    *(v5 + 40) = v3;
    *(v5 + 48) = v6 | 1;
  }

  return 1;
}

void nw_http_encoding_check_http1_content_length(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 544);
  if ((~v1 & 0x180) == 0)
  {
    v3 = *(a1 + 392);
    if (!v3)
    {
LABEL_14:
      *(a1 + 544) = v1 & 0xFEFF;
      nw_protocol_error(*(a1 + 48), a1);
      nw_protocol_disconnected(*(a1 + 48), a1);
      return;
    }

    v4 = nw_http_metadata_copy_response(v3);
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = -1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZL43nw_http_encoding_check_http1_content_lengthP25nw_protocol_http_encoding_block_invoke;
    v8[3] = &unk_1E6A314D8;
    v8[4] = &v9;
    nw_http_fields_access_value_by_name(v4, "Content-Length", v8);
    v5 = v10[3];
    if (v5 == -1 || v5 != *(a1 + 328))
    {
      v7 = 1;
    }

    else
    {
      if ((*(a1 + 198) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v14 = "nw_http_encoding_check_http1_content_length";
          v15 = 2082;
          v16 = a1 + 114;
          v17 = 2080;
          v18 = " ";
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%saccepting invalid Content-Length matching decompressed body", buf, 0x20u);
        }
      }

      nw_protocol_input_finished(*(a1 + 48), a1);
      v7 = 0;
    }

    _Block_object_dispose(&v9, 8);
    if (v4)
    {
      os_release(v4);
    }

    if (v7)
    {
      LOWORD(v1) = *(a1 + 544);
      goto LABEL_14;
    }
  }
}

void ___ZL43nw_http_encoding_check_http1_content_lengthP25nw_protocol_http_encoding_block_invoke(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    *(*(*(a1 + 32) + 8) + 24) = std::stoull(&__dst, 0, 10);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void nw_protocol_http_encoding_create::$_1::__invoke(nw_protocol_http_encoding_create::$_1 *this, nw_protocol *a2, nw_protocol *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v23 = "operator()";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v11, &type, &v20))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v23 = "operator()";
      v14 = "%{public}s called with null protocol";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v17 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v23 = "operator()";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v11)
        {
          return;
        }

LABEL_43:
        free(v11);
        return;
      }

      if (!v17)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v23 = "operator()";
      v14 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v23 = "operator()";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_42;
  }

  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 384);
    if (v4)
    {
      v5 = *(v3 + 376);
      if (v5)
      {
        os_release(v5);
        v4 = *(v3 + 384);
      }
    }

    *(v3 + 376) = 0;
    *(v3 + 384) = v4 | 1;
    v6 = *(v3 + 400);
    if (v6)
    {
      v7 = *(v3 + 392);
      if (v7)
      {
        os_release(v7);
        v6 = *(v3 + 400);
      }
    }

    *(v3 + 392) = 0;
    *(v3 + 400) = v6 | 1;
    v8 = *(v3 + 440);
    if (v8)
    {
      (**v8)(*(v3 + 440), a2, a3);
      free(v8);
      *(v3 + 440) = 0;
    }

    v9 = *(v3 + 448);
    if (v9)
    {
      (**v9)(*(v3 + 448), a2, a3);
      free(v9);
      *(v3 + 448) = 0;
    }

    return;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v23 = "operator()";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null http_encoding", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v11, &type, &v20))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v23 = "operator()";
    v14 = "%{public}s called with null http_encoding";
    goto LABEL_41;
  }

  if (v20 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v23 = "operator()";
    v14 = "%{public}s called with null http_encoding, backtrace limit exceeded";
    goto LABEL_41;
  }

  v18 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type;
  v19 = os_log_type_enabled(v12, type);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v23 = "operator()";
    v14 = "%{public}s called with null http_encoding, no backtrace";
    goto LABEL_41;
  }

  if (v19)
  {
    *buf = 136446466;
    v23 = "operator()";
    v24 = 2082;
    v25 = v18;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null http_encoding, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v11)
  {
    goto LABEL_43;
  }
}

void ___ZL39nw_protocol_http_encoding_get_callbacksv_block_invoke()
{
  nw_protocol_http_encoding_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840AA8 = nw_protocol_common_replace_input_handler;
  qword_1EA840AF0 = nw_protocol_common_get_output_frames;
  qword_1EA840B08 = nw_protocol_common_get_parameters;
  qword_1EA840B10 = nw_protocol_common_get_path;
  qword_1EA840B20 = nw_protocol_common_get_remote_endpoint;
  qword_1EA840B18 = nw_protocol_common_get_local_endpoint;
  qword_1EA840B60 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840B68 = nw_protocol_common_get_output_interface;
  qword_1EA840AB0 = nw_protocol_common_connect;
  qword_1EA840AC0 = nw_protocol_common_connected;
  qword_1EA840AB8 = nw_protocol_common_disconnect;
  qword_1EA840AC8 = nw_protocol_common_disconnected;
  qword_1EA840AD8 = nw_protocol_common_input_available;
  qword_1EA840AE0 = nw_protocol_common_output_available;
  qword_1EA840B50 = nw_protocol_common_input_finished;
  qword_1EA840B58 = nw_protocol_common_output_finished;
  qword_1EA840BA0 = nw_protocol_common_input_flush;
  qword_1EA840AD0 = nw_protocol_common_error;
  qword_1EA840B98 = nw_protocol_common_reset;
  qword_1EA840B90 = nw_protocol_common_get_message_properties;
  qword_1EA840B78 = nw_protocol_common_copy_info;
  qword_1EA840B48 = nw_protocol_common_supports_external_data;
  qword_1EA840B70 = nw_protocol_common_waiting_for_output;
  qword_1EA840B28 = nw_protocol_common_register_notification;
  qword_1EA840B30 = nw_protocol_common_unregister_notification;
  qword_1EA840B38 = nw_protocol_common_notify;
  qword_1EA840B40 = nw_protocol_common_updated_path;
  qword_1EA840B00 = nw_protocol_common_link_state;
  qword_1EA840AE8 = nw_protocol_http_encoding_get_input_frames;
  qword_1EA840AF8 = nw_protocol_http_encoding_finalize_output_frames;
  qword_1EA840AA0 = nw_protocol_http_encoding_remove_input_handler;
}

uint64_t ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_52(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32) + 496);
  v3 = a2[4];
  v4 = a2[5];
  if (v3)
  {
    v2 = (v3 + 40);
  }

  *v2 = v4;
  *v4 = v3;
  a2[4] = 0;
  a2[5] = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if ((*(v5 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v12 = a2;
      v13 = __nwlog_obj();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      a2 = v12;
      if (v14)
      {
        *buf = 136446978;
        v20 = "nw_http_encoding_outbound_frame_return_to_cache";
        v21 = 2082;
        v22 = (v5 + 114);
        v23 = 2080;
        v24 = " ";
        v25 = 2048;
        v26 = v12;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreturning frame %p to cache", buf, 0x2Au);
        a2 = v12;
      }
    }

    a2[10] = 0;
    a2[11] = 0;
    nw_frame_cache_return_frame(v5 + 336, a2);
    return 1;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_encoding_outbound_frame_return_to_cache";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null http_encoding", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v8, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v20 = "nw_http_encoding_outbound_frame_return_to_cache";
      v11 = "%{public}s called with null http_encoding";
      goto LABEL_23;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v20 = "nw_http_encoding_outbound_frame_return_to_cache";
      v11 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      goto LABEL_23;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v16 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v16)
      {
        *buf = 136446466;
        v20 = "nw_http_encoding_outbound_frame_return_to_cache";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null http_encoding, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v16)
    {
      *buf = 136446210;
      v20 = "nw_http_encoding_outbound_frame_return_to_cache";
      v11 = "%{public}s called with null http_encoding, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

LABEL_24:
  if (v8)
  {
    free(v8);
  }

  return 1;
}

uint64_t nw_protocol_http_encoding_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_http_encoding_finalize_output_frames";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v15, &type, &v29))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_protocol_http_encoding_finalize_output_frames";
      v18 = "%{public}s called with null protocol";
LABEL_65:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      goto LABEL_66;
    }

    if (v29 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_http_encoding_finalize_output_frames";
        v18 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v25 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v32 = "nw_protocol_http_encoding_finalize_output_frames";
        v18 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (!v25)
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v32 = "nw_protocol_http_encoding_finalize_output_frames";
    v33 = 2082;
    v34 = backtrace_string;
    v26 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_51:
    _os_log_impl(&dword_181A37000, v16, v17, v26, buf, 0x16u);
    goto LABEL_52;
  }

  handle = a1->handle;
  if (!handle)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_http_encoding_finalize_output_frames";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null http_encoding", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v15, &type, &v29))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v32 = "nw_protocol_http_encoding_finalize_output_frames";
      v18 = "%{public}s called with null http_encoding";
      goto LABEL_65;
    }

    if (v29 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_http_encoding_finalize_output_frames";
        v18 = "%{public}s called with null http_encoding, backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v27 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v32 = "nw_protocol_http_encoding_finalize_output_frames";
        v18 = "%{public}s called with null http_encoding, no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (!v27)
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v32 = "nw_protocol_http_encoding_finalize_output_frames";
    v33 = 2082;
    v34 = backtrace_string;
    v26 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
    goto LABEL_51;
  }

  if (a2)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v21 = a2;
      v22 = __nwlog_obj();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
      a2 = v21;
      if (v23)
      {
        *buf = 136446722;
        v32 = "nw_protocol_http_encoding_finalize_output_frames";
        v33 = 2082;
        v34 = handle + 114;
        v35 = 2080;
        v36 = " ";
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        a2 = v21;
      }
    }

    v3 = *(handle + 272);
    if ((v3 & 0x11) == 0)
    {
      *(handle + 272) = v3 | 0x10;
      v4 = a2;
      tqh_first = a2->tqh_first;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v6 = nw_protocol_copy_http_definition_http_definition;
      v7 = nw_frame_copy_metadata_for_protocol(tqh_first, v6);
      v8 = nw_http_metadata_copy_request(v7);
      if (nw_http_request_has_method(v8, "HEAD"))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      *(handle + 272) = *(handle + 272) & 0xFFFD | v9;
      if ((nw_http_fields_have_field_with_name(v8, "Accept-Encoding") & 1) == 0)
      {
        parameters = nw_protocol_get_parameters(handle);
        v11 = nw_parameters_copy_url_endpoint(parameters);
        v12 = nw_endpoint_url_scheme_is_secure(v11) ? "gzip, deflate, br" : "gzip, deflate";
        nw_http_fields_append(v8, "Accept-Encoding", v12);
        if (v11)
        {
          os_release(v11);
        }
      }

      if (v8)
      {
        os_release(v8);
      }

      if (v7)
      {
        os_release(v7);
      }

      a2 = v4;
      if (v6)
      {
        os_release(v6);
        a2 = v4;
      }
    }

    return nw_protocol_finalize_output_frames(*(handle + 4), a2);
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v32 = "nw_protocol_http_encoding_finalize_output_frames";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null frames", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v15, &type, &v29))
  {
    goto LABEL_66;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v29 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v32 = "nw_protocol_http_encoding_finalize_output_frames";
        v18 = "%{public}s called with null frames, backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v28 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v32 = "nw_protocol_http_encoding_finalize_output_frames";
        v18 = "%{public}s called with null frames, no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (v28)
    {
      *buf = 136446466;
      v32 = "nw_protocol_http_encoding_finalize_output_frames";
      v33 = 2082;
      v34 = backtrace_string;
      v26 = "%{public}s called with null frames, dumping backtrace:%{public}s";
      goto LABEL_51;
    }

LABEL_52:
    free(backtrace_string);
    goto LABEL_66;
  }

  v16 = __nwlog_obj();
  v17 = type;
  if (os_log_type_enabled(v16, type))
  {
    *buf = 136446210;
    v32 = "nw_protocol_http_encoding_finalize_output_frames";
    v18 = "%{public}s called with null frames";
    goto LABEL_65;
  }

LABEL_66:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

uint64_t nw_protocol_http_encoding_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v25 = __nwlog_obj();
    *v71 = 136446210;
    *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null protocol", v71, 12);
    buf[0] = 16;
    LOBYTE(v60) = 0;
    if (!__nwlog_fault(v26, buf, &v60))
    {
      goto LABEL_77;
    }

    if (buf[0] != 17)
    {
      if (v60 != 1)
      {
        v27 = __nwlog_obj();
        v28 = buf[0];
        if (!os_log_type_enabled(v27, buf[0]))
        {
          goto LABEL_77;
        }

        *v71 = 136446210;
        *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
        v29 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = buf[0];
      v37 = os_log_type_enabled(v27, buf[0]);
      if (!backtrace_string)
      {
        if (!v37)
        {
          goto LABEL_77;
        }

        *v71 = 136446210;
        *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
        v29 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_76;
      }

      if (v37)
      {
        *v71 = 136446466;
        *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
        *&v71[12] = 2082;
        *&v71[14] = backtrace_string;
        v38 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_62:
        _os_log_impl(&dword_181A37000, v27, v28, v38, v71, 0x16u);
      }

LABEL_63:
      free(backtrace_string);
      goto LABEL_77;
    }

    v27 = __nwlog_obj();
    v28 = buf[0];
    if (!os_log_type_enabled(v27, buf[0]))
    {
      goto LABEL_77;
    }

    *v71 = 136446210;
    *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
    v29 = "%{public}s called with null protocol";
LABEL_76:
    _os_log_impl(&dword_181A37000, v27, v28, v29, v71, 0xCu);
LABEL_77:
    if (v26)
    {
      free(v26);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v30 = __nwlog_obj();
    *v71 = 136446210;
    *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null http_encoding", v71, 12);
    buf[0] = 16;
    LOBYTE(v60) = 0;
    if (!__nwlog_fault(v26, buf, &v60))
    {
      goto LABEL_77;
    }

    if (buf[0] == 17)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (!os_log_type_enabled(v27, buf[0]))
      {
        goto LABEL_77;
      }

      *v71 = 136446210;
      *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
      v29 = "%{public}s called with null http_encoding";
      goto LABEL_76;
    }

    if (v60 != 1)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (!os_log_type_enabled(v27, buf[0]))
      {
        goto LABEL_77;
      }

      *v71 = 136446210;
      *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
      v29 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = buf[0];
    v43 = os_log_type_enabled(v27, buf[0]);
    if (backtrace_string)
    {
      if (v43)
      {
        *v71 = 136446466;
        *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
        *&v71[12] = 2082;
        *&v71[14] = backtrace_string;
        v38 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (!v43)
    {
      goto LABEL_77;
    }

    *v71 = 136446210;
    *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
    v29 = "%{public}s called with null http_encoding, no backtrace";
    goto LABEL_76;
  }

  if ((handle[198] & 1) == 0 && gLogDatapath == 1)
  {
    v31 = a5;
    v32 = a4;
    v33 = a3;
    v34 = __nwlog_obj();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
    a3 = v33;
    a4 = v32;
    a5 = v31;
    if (v35)
    {
      *v71 = 136447490;
      *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
      *&v71[12] = 2082;
      *&v71[14] = handle + 114;
      *&v71[22] = 2080;
      v72 = " ";
      LOWORD(v73) = 1024;
      *(&v73 + 2) = v33;
      HIWORD(v73) = 1024;
      LODWORD(v74) = v32;
      WORD2(v74) = 1024;
      *(&v74 + 6) = v31;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sminimum bytes %u, maximum bytes %u, maximum frame count %u", v71, 0x32u);
      a3 = v33;
      a4 = v32;
      a5 = v31;
    }
  }

  v9 = *(handle + 162);
  if (v9)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v44 = __nwlog_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *v71 = 136446722;
        *&v71[4] = "nw_protocol_http_encoding_get_input_frames";
        *&v71[12] = 2082;
        *&v71[14] = handle + 114;
        *&v71[22] = 2080;
        v72 = " ";
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%salready getting input frames, returning 0", v71, 0x20u);
        return 0;
      }
    }

    return 0;
  }

  *(handle + 162) = v9 | 1;
  *v71 = 0;
  *&v71[8] = v71;
  *&v71[16] = 0x3802000000;
  v72 = __Block_byref_object_copy__21_35858;
  v73 = __Block_byref_object_dispose__22_35859;
  *&v74 = 0;
  *(&v74 + 1) = &v74;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  if (nw_protocol_get_input_frames(a1->output_handler->flow_id, a1, a3, a4, a5, &v74) && *(*&v71[8] + 40))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v67 = __Block_byref_object_copy__23_35860;
    v68 = __Block_byref_object_dispose__24_35861;
    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    object = nw_protocol_copy_http_definition_http_definition;
    v70 |= 1u;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 0x40000000;
    v52 = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v53 = &unk_1E6A31570;
    v58 = a1;
    v59 = a6;
    v54 = buf;
    v55 = &v60;
    v56 = v71;
    v57 = handle;
    v11 = *(*&v71[8] + 40);
    do
    {
      if (!v11)
      {
        break;
      }

      v12 = *(v11 + 32);
      v13 = v52(v51);
      v11 = v12;
    }

    while ((v13 & 1) != 0);
    _Block_object_dispose(buf, 8);
    if ((v70 & 1) != 0 && object)
    {
      os_release(object);
    }
  }

  else
  {
    v14 = *(handle + 272);
    if ((v14 & 0x40) != 0)
    {
      if ((v14 & 0x24) == 4)
      {
        if (*(handle + 55))
        {
          if ((handle[198] & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v15 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "nw_protocol_http_encoding_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = handle + 114;
              *&buf[22] = 2080;
              v67 = " ";
              _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sinput finished before decoder completed", buf, 0x20u);
            }
          }
        }
      }

      *(handle + 272) |= 0x80u;
      nw_http_encoding_check_http1_content_length(handle);
    }
  }

  v16 = *&v71[8];
  v17 = (*&v71[8] + 40);
  if (gLogDatapath == 1)
  {
    v39 = __nwlog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v18 = *v17;
  if (*v17)
  {
    *(v18 + 40) = &v64;
    v19 = *(v16 + 48);
    v64 = v18;
    v65 = v19;
    *(v16 + 40) = 0;
    *(v16 + 48) = v17;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v67 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v68) = 1;
    do
    {
      v20 = v64;
      if (!v64)
      {
        break;
      }

      v21 = *(v64 + 32);
      v22 = *(v64 + 40);
      v23 = (v21 + 40);
      if (!v21)
      {
        v23 = &v65;
      }

      *v23 = v22;
      *v22 = v21;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  if (gLogDatapath == 1)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v48 = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_34;
    v49 = &__block_descriptor_tmp_35_35864;
    v50 = handle;
    tqh_first = a6->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v41 = *(tqh_first + 4);
      v42 = v48(v47);
      tqh_first = v41;
    }

    while ((v42 & 1) != 0);
  }

  if ((handle[198] & 1) == 0 && gLogDatapath == 1)
  {
    v45 = __nwlog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(v61 + 6);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http_encoding_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 114;
      *&buf[22] = 2080;
      v67 = " ";
      LOWORD(v68) = 1024;
      *(&v68 + 2) = v46;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreturning %u frames", buf, 0x26u);
    }
  }

  nw_protocol_plugin_retry_set_getting_input_frames((handle + 216), a1, 0);
  v10 = *(v61 + 6);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(v71, 8);
  return v10;
}

__n128 __Block_byref_object_copy__21_35858(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__23_35860(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__24_35861(uint64_t result)
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

BOOL ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v251 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null frame", buf, 12);
    v243[0] = 16;
    LOBYTE(v239[0]) = 0;
    if (__nwlog_fault(v36, v243, v239))
    {
      if (v243[0] == 17)
      {
        v37 = __nwlog_obj();
        v38 = v243[0];
        if (os_log_type_enabled(v37, v243[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v39 = "%{public}s called with null frame";
LABEL_268:
          _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
        }
      }

      else if (LOBYTE(v239[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = v243[0];
        v41 = os_log_type_enabled(v37, v243[0]);
        if (backtrace_string)
        {
          if (v41)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_269;
        }

        if (v41)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v39 = "%{public}s called with null frame, no backtrace";
          goto LABEL_268;
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v38 = v243[0];
        if (os_log_type_enabled(v37, v243[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v39 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_268;
        }
      }
    }

LABEL_269:
    if (v36)
    {
      free(v36);
    }

    return 0;
  }

  v3 = a1;
  v4 = nw_frame_copy_metadata_for_protocol(a2, *(*(a1[4] + 8) + 40));
  v5 = v4;
  if (v4 && *(v3[7] + 392) != v4)
  {
    v6 = nw_http_metadata_copy_response(v4);
    v7 = v3[7];
    v8 = *(v7 + 400);
    if ((v8 & 1) != 0 && *(v7 + 392))
    {
      v9 = v6;
      os_release(*(v7 + 392));
      v6 = v9;
      v8 = *(v7 + 400);
    }

    *(v7 + 392) = v5;
    *(v7 + 400) = v8 | 1;
    if (!v6)
    {
      goto LABEL_32;
    }

    v10 = v6;
    status_code = _nw_http_response_get_status_code(v10);

    if (status_code == 304 || (status_code - 200) > 0xFFFFFF9B || (v12 = v3[7], (*(v12 + 544) & 2) != 0))
    {
LABEL_31:
      os_release(v10);
LABEL_32:
      v5 = 0;
      goto LABEL_33;
    }

    v13 = *(v12 + 392);
    if (v13)
    {
      v14 = nw_http_metadata_copy_header_fields(v13);
      if (v14)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v249) = 1;
        v239[0] = MEMORY[0x1E69E9820];
        v239[1] = 0x40000000;
        v239[2] = ___ZL33nw_http_encoding_get_content_typeP25nw_protocol_http_encodingP20nw_protocol_metadata_block_invoke;
        v239[3] = &unk_1E6A315B8;
        v239[4] = buf;
        v239[5] = v12;
        v15 = v14;
        v16 = v239;
        _nw_http_fields_access_value_by_name(v15, "Content-Encoding", v16);

        v17 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        os_release(v15);
        v18 = 0;
        v19 = v3[7];
        *(v19 + 540) = 1;
        if (v17 <= 3)
        {
          if (v17 == 2)
          {
            gzip = nw_decoder_create_gzip();
            goto LABEL_24;
          }

          if (v17 == 3)
          {
            *(v19 + 540) = 4;
            gzip = nw_decoder_create_deflate();
            goto LABEL_24;
          }
        }

        else
        {
          switch(v17)
          {
            case 4:
              gzip = nw_decoder_create_raw_deflate();
              goto LABEL_24;
            case 5:
              gzip = nw_decoder_create_brotli();
              goto LABEL_24;
            case 6:
              gzip = nw_decoder_create_zstd();
LABEL_24:
              v18 = gzip;
              break;
          }
        }

LABEL_25:
        v21 = v3[7];
        v22 = *(v21 + 440);
        if (v22 != v18)
        {
          v23 = v3[7];
          if (v22)
          {
            (**v22)(*(v21 + 440));
            free(v22);
            v23 = v3[7];
          }

          *(v21 + 440) = v18;
          v21 = v23;
        }

        if ((*(v21 + 198) & 1) == 0 && gLogDatapath == 1)
        {
          v206 = __nwlog_obj();
          if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
          {
            v207 = v3[7];
            v208 = v207 + 114;
            if (v17 > 6)
            {
              v209 = "<unknown>";
            }

            else
            {
              v209 = off_1E6A3AD98[v17];
            }

            v214 = *(v207 + 540);
            if (v214 > 6)
            {
              v215 = "<unknown>";
            }

            else
            {
              v215 = off_1E6A3AD98[v214];
            }

            *buf = 136447234;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v208;
            *&buf[22] = 2080;
            v249 = " ";
            *v250 = 2080;
            *&v250[2] = v209;
            *&v250[10] = 2080;
            *&v250[12] = v215;
            _os_log_impl(&dword_181A37000, v206, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfound encoding %s, alternative encoding %s", buf, 0x34u);
          }
        }

        goto LABEL_31;
      }

      v199 = v3;
      v205 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_encoding_get_content_type";
      v201 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v205, 16, "%{public}s called with null header_fields", buf, 12);
      v243[0] = 16;
      LOBYTE(v239[0]) = 0;
      if (__nwlog_fault(v201, v243, v239))
      {
        if (v243[0] == 17)
        {
          v202 = __nwlog_obj();
          v203 = v243[0];
          if (!os_log_type_enabled(v202, v243[0]))
          {
            goto LABEL_315;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_get_content_type";
          v204 = "%{public}s called with null header_fields";
          goto LABEL_314;
        }

        if (LOBYTE(v239[0]) != 1)
        {
          v202 = __nwlog_obj();
          v203 = v243[0];
          if (!os_log_type_enabled(v202, v243[0]))
          {
            goto LABEL_315;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_get_content_type";
          v204 = "%{public}s called with null header_fields, backtrace limit exceeded";
          goto LABEL_314;
        }

        v212 = __nw_create_backtrace_string();
        v202 = __nwlog_obj();
        v203 = v243[0];
        v213 = os_log_type_enabled(v202, v243[0]);
        if (!v212)
        {
          if (!v213)
          {
            goto LABEL_315;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_get_content_type";
          v204 = "%{public}s called with null header_fields, no backtrace";
          goto LABEL_314;
        }

        if (v213)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_encoding_get_content_type";
          *&buf[12] = 2082;
          *&buf[14] = v212;
          _os_log_impl(&dword_181A37000, v202, v203, "%{public}s called with null header_fields, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v212);
      }

LABEL_315:
      if (!v201)
      {
LABEL_317:
        v17 = 0;
        v18 = 0;
        v3 = v199;
        *(v199[7] + 540) = 1;
        goto LABEL_25;
      }

LABEL_316:
      free(v201);
      goto LABEL_317;
    }

    v199 = v3;
    v200 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_encoding_get_content_type";
    v201 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v200, 16, "%{public}s called with null http_metadata", buf, 12);
    v243[0] = 16;
    LOBYTE(v239[0]) = 0;
    if (!__nwlog_fault(v201, v243, v239))
    {
      goto LABEL_315;
    }

    if (v243[0] == 17)
    {
      v202 = __nwlog_obj();
      v203 = v243[0];
      if (!os_log_type_enabled(v202, v243[0]))
      {
        goto LABEL_315;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_encoding_get_content_type";
      v204 = "%{public}s called with null http_metadata";
    }

    else
    {
      if (LOBYTE(v239[0]) != 1)
      {
        v202 = __nwlog_obj();
        v203 = v243[0];
        if (!os_log_type_enabled(v202, v243[0]))
        {
          goto LABEL_315;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_encoding_get_content_type";
        v204 = "%{public}s called with null http_metadata, backtrace limit exceeded";
        goto LABEL_314;
      }

      v210 = __nw_create_backtrace_string();
      v202 = __nwlog_obj();
      v203 = v243[0];
      v211 = os_log_type_enabled(v202, v243[0]);
      if (v210)
      {
        if (v211)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_encoding_get_content_type";
          *&buf[12] = 2082;
          *&buf[14] = v210;
          _os_log_impl(&dword_181A37000, v202, v203, "%{public}s called with null http_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v210);
        if (!v201)
        {
          goto LABEL_317;
        }

        goto LABEL_316;
      }

      if (!v211)
      {
        goto LABEL_315;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_encoding_get_content_type";
      v204 = "%{public}s called with null http_metadata, no backtrace";
    }

LABEL_314:
    _os_log_impl(&dword_181A37000, v202, v203, v204, buf, 0xCu);
    goto LABEL_315;
  }

LABEL_33:
  v24 = *(a2 + 112);
  if (!v24)
  {
    goto LABEL_62;
  }

  if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
  {
    LODWORD(v24) = 0;
LABEL_62:
    v26 = 0;
    v27 = *(a2 + 64);
    if (v27)
    {
      goto LABEL_40;
    }

LABEL_63:
    v30 = v3 + 7;
    v29 = v3[7];
    if (*(v29 + 440))
    {
      v42 = v24 == 0;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      v221 = v3;
      v222 = v5;
      v224 = 0;
      goto LABEL_75;
    }

LABEL_68:
    v43 = (*(v3[6] + 8) + 48);
    v44 = (a2 + 32);
    v45 = *(a2 + 32);
    v46 = *(a2 + 40);
    if (v45)
    {
      v43 = (v45 + 40);
    }

    *v43 = v46;
    *v46 = v45;
    *(a2 + 40) = 0;
    *v44 = 0;
    v47 = v3[9];
    v48 = *(v47 + 8);
    *(a2 + 40) = v48;
    *v48 = a2;
    *(v47 + 8) = v44;
    v49 = *(v3[5] + 8);
    v50 = *(v49 + 24) + 1;
    *(v49 + 24) = v50;
    if (v50 == v50 << 31 >> 31)
    {
LABEL_217:
      v167 = 1;
      if (v5)
      {
        goto LABEL_247;
      }

      return v167;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v51 = *(*(v3[5] + 8) + 24);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = "count";
    *&buf[22] = 2048;
    v249 = 1;
    *v250 = 2048;
    *&v250[2] = v51;
    LODWORD(v216) = 42;
    v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v216);
    v243[0] = 16;
    LOBYTE(v234) = 0;
    if (__nwlog_fault(v52, v243, &v234))
    {
      if (v243[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v53 = gLogObj;
        v54 = v243[0];
        if (os_log_type_enabled(gLogObj, v243[0]))
        {
          v55 = *(*(v3[5] + 8) + 24);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v249 = 1;
          *v250 = 2048;
          *&v250[2] = v55;
          v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_212:
          v165 = v53;
          v166 = v54;
LABEL_213:
          _os_log_impl(&dword_181A37000, v165, v166, v56, buf, 0x2Au);
        }
      }

      else if (v234 == 1)
      {
        v155 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v156 = gLogObj;
        v157 = v243[0];
        v158 = os_log_type_enabled(gLogObj, v243[0]);
        if (v155)
        {
          if (v158)
          {
            v159 = *(*(v3[5] + 8) + 24);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v249 = 1;
            *v250 = 2048;
            *&v250[2] = v159;
            *&v250[10] = 2082;
            *&v250[12] = v155;
            _os_log_impl(&dword_181A37000, v156, v157, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v155);
          goto LABEL_214;
        }

        if (v158)
        {
          v170 = *(*(v3[5] + 8) + 24);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v249 = 1;
          *v250 = 2048;
          *&v250[2] = v170;
          v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          v165 = v156;
          v166 = v157;
          goto LABEL_213;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v53 = gLogObj;
        v54 = v243[0];
        if (os_log_type_enabled(gLogObj, v243[0]))
        {
          v164 = *(*(v3[5] + 8) + 24);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v249 = 1;
          *v250 = 2048;
          *&v250[2] = v164;
          v56 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_212;
        }
      }
    }

LABEL_214:
    if (v52)
    {
      free(v52);
    }

    *(*(v3[5] + 8) + 24) = -1;
    goto LABEL_217;
  }

  LODWORD(v24) = *(a2 + 52);
  v25 = *(a2 + 56);
  if (v24)
  {
    LODWORD(v24) = v24 - (v25 + *(a2 + 60));
  }

  v26 = *(a2 + 112) + v25;
  v27 = *(a2 + 64);
  if (!v27)
  {
    goto LABEL_63;
  }

LABEL_40:
  v28 = *(v27 + 66);
  v30 = v3 + 7;
  v29 = v3[7];
  v31 = *(v29 + 440);
  if (v31)
  {
    v32 = v24 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    if ((v28 & 0x40) != 0)
    {
      if (v31)
      {
        if ((*(v29 + 544) & 0x24) == 4 && (*(v29 + 198) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          v29 = *v30;
          if (v34)
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v29 + 114;
            *&buf[22] = 2080;
            v249 = " ";
            _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%smetadata completed before decoder completed", buf, 0x20u);
            v29 = *v30;
          }
        }
      }

      *(v29 + 544) |= 0x80u;
      nw_http_encoding_check_http1_content_length(*v30);
    }

    goto LABEL_68;
  }

  v221 = v3;
  v222 = v5;
  v224 = (v28 >> 6) & 1;
LABEL_75:
  *(v29 + 544) |= 4u;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v249 = __Block_byref_object_copy__21_35858;
  v57 = (*(*v30 + 544) >> 5) & 1;
  v223 = v24;
  *v250 = __Block_byref_object_dispose__22_35859;
  *&v250[8] = 0;
  *&v250[16] = &v250[8];
  v238 = v57;
  v234 = 0;
  v235 = &v234;
  v236 = 0x2000000000;
  v237 = 0;
  v58 = MEMORY[0x1E69E9820];
  while (1)
  {
    v59 = *v30;
    v60 = *(*v30 + 440);
    v233[0] = v58;
    v233[1] = 0x40000000;
    v233[2] = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_25;
    v233[3] = &unk_1E6A31520;
    v233[5] = v59;
    v233[6] = a2;
    v233[4] = buf;
    if (v60)
    {
      if (v26)
      {
        if (v238 == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v61 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *v243 = 136446210;
            *&v243[4] = "nw_decoder_decode";
            _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s extra data", v243, 0xCu);
          }

          v62 = 0;
        }

        else
        {
          v62 = (*(*v60 + 16))(v60, v26, v223, v224, &v238, v233);
        }

        goto LABEL_84;
      }

      v95 = __nwlog_obj();
      *v243 = 136446210;
      *&v243[4] = "nw_decoder_decode";
      LODWORD(v216) = 12;
      v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v95, 16, "%{public}s called with null in_bytes", v243, v216);
      LOBYTE(v241) = 16;
      v240 = 0;
      if (!__nwlog_fault(v89, &v241, &v240))
      {
        goto LABEL_168;
      }

      if (v241 != 17)
      {
        if (v240 != 1)
        {
          v115 = __nwlog_obj();
          v116 = v241;
          if (os_log_type_enabled(v115, v241))
          {
            *v243 = 136446210;
            *&v243[4] = "nw_decoder_decode";
            v92 = v115;
            v93 = v116;
            v94 = "%{public}s called with null in_bytes, backtrace limit exceeded";
            goto LABEL_167;
          }

          goto LABEL_168;
        }

        v103 = __nw_create_backtrace_string();
        v110 = __nwlog_obj();
        v111 = v241;
        loga = v110;
        v112 = os_log_type_enabled(v110, v241);
        if (!v103)
        {
          if (v112)
          {
            *v243 = 136446210;
            *&v243[4] = "nw_decoder_decode";
            v92 = loga;
            v93 = v111;
            v94 = "%{public}s called with null in_bytes, no backtrace";
            goto LABEL_167;
          }

          goto LABEL_168;
        }

        if (v112)
        {
          *v243 = 136446466;
          *&v243[4] = "nw_decoder_decode";
          *&v243[12] = 2082;
          *&v243[14] = v103;
          v107 = loga;
          v108 = v111;
          v109 = "%{public}s called with null in_bytes, dumping backtrace:%{public}s";
LABEL_143:
          _os_log_impl(&dword_181A37000, v107, v108, v109, v243, 0x16u);
        }

        goto LABEL_144;
      }

      v96 = __nwlog_obj();
      v97 = v241;
      if (os_log_type_enabled(v96, v241))
      {
        *v243 = 136446210;
        *&v243[4] = "nw_decoder_decode";
        v92 = v96;
        v93 = v97;
        v94 = "%{public}s called with null in_bytes";
        goto LABEL_167;
      }
    }

    else
    {
      v88 = __nwlog_obj();
      *v243 = 136446210;
      *&v243[4] = "nw_decoder_decode";
      LODWORD(v216) = 12;
      v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null decoder", v243, v216);
      LOBYTE(v241) = 16;
      v240 = 0;
      if (!__nwlog_fault(v89, &v241, &v240))
      {
        goto LABEL_168;
      }

      if (v241 == 17)
      {
        v90 = __nwlog_obj();
        v91 = v241;
        if (os_log_type_enabled(v90, v241))
        {
          *v243 = 136446210;
          *&v243[4] = "nw_decoder_decode";
          v92 = v90;
          v93 = v91;
          v94 = "%{public}s called with null decoder";
LABEL_167:
          _os_log_impl(&dword_181A37000, v92, v93, v94, v243, 0xCu);
        }
      }

      else
      {
        if (v240 == 1)
        {
          v103 = __nw_create_backtrace_string();
          v104 = __nwlog_obj();
          v105 = v241;
          log = v104;
          v106 = os_log_type_enabled(v104, v241);
          if (!v103)
          {
            if (v106)
            {
              *v243 = 136446210;
              *&v243[4] = "nw_decoder_decode";
              v92 = log;
              v93 = v105;
              v94 = "%{public}s called with null decoder, no backtrace";
              goto LABEL_167;
            }

            goto LABEL_168;
          }

          if (v106)
          {
            *v243 = 136446466;
            *&v243[4] = "nw_decoder_decode";
            *&v243[12] = 2082;
            *&v243[14] = v103;
            v107 = log;
            v108 = v105;
            v109 = "%{public}s called with null decoder, dumping backtrace:%{public}s";
            goto LABEL_143;
          }

LABEL_144:
          free(v103);
          goto LABEL_168;
        }

        v113 = __nwlog_obj();
        v114 = v241;
        if (os_log_type_enabled(v113, v241))
        {
          *v243 = 136446210;
          *&v243[4] = "nw_decoder_decode";
          v92 = v113;
          v93 = v114;
          v94 = "%{public}s called with null decoder, backtrace limit exceeded";
          goto LABEL_167;
        }
      }
    }

LABEL_168:
    if (v89)
    {
      free(v89);
    }

    v62 = -1;
LABEL_84:
    v235[3] = v62;
    v63 = v238;
    *(*v30 + 544) = *(*v30 + 544) & 0xFFDF | (32 * v238);
    if ((*(*v30 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v98 = __nwlog_obj();
      v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG);
      v63 = v238;
      if (v99)
      {
        v100 = *v30 + 114;
        v101 = v235[3];
        *v243 = 136447234;
        *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        *&v243[12] = 2082;
        *&v243[14] = v100;
        *&v243[22] = 2080;
        v244 = " ";
        v245 = 2048;
        *v246 = v101;
        *&v246[8] = 1024;
        LODWORD(v247) = v238;
        _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdecoder decoded %zd bytes, complete %{BOOL}d", v243, 0x30u);
        v63 = v238;
      }
    }

    if ((v63 & 1) != 0 && !*(*&buf[8] + 40))
    {
      v64 = *v30;
      if (*v30)
      {
        if ((*(v64 + 198) & 1) == 0 && gLogDatapath == 1)
        {
          v127 = __nwlog_obj();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
          {
            *v243 = 136446978;
            *&v243[4] = "nw_http_encoding_create_inbound_frame";
            *&v243[12] = 2082;
            *&v243[14] = v64 + 114;
            *&v243[22] = 2080;
            v244 = " ";
            v245 = 1024;
            *v246 = 0;
            _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled for size %u", v243, 0x26u);
          }
        }

        frame = nw_frame_cache_create_frame((v64 + 336), 0);
        if (frame)
        {
          v66 = frame;
          frame[2] = 0;
          v67 = *(v64 + 464);
          frame[3] = v67;
          *v67 = frame;
          *(v64 + 464) = frame + 2;
          frame[10] = nw_http_encoding_inbound_frame_finalizer;
          frame[11] = v64;
LABEL_93:
          nw_frame_inherit_metadata(a2, v66, 1);
          *(v66 + 186) |= 0x80u;
          v68 = *&buf[8];
          *(v66 + 32) = 0;
          v69 = *(v68 + 48);
          *(v66 + 40) = v69;
          *v69 = v66;
          *(v68 + 48) = v66 + 32;
          goto LABEL_94;
        }

        v124 = __nwlog_obj();
        *v243 = 136446210;
        *&v243[4] = "nw_http_encoding_create_inbound_frame";
        LODWORD(v216) = 12;
        v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v124, 16, "%{public}s called with null frame", v243, v216);
        LOBYTE(v241) = 16;
        v240 = 0;
        if (!__nwlog_fault(v118, &v241, &v240))
        {
          goto LABEL_186;
        }

        if (v241 == 17)
        {
          v125 = __nwlog_obj();
          v126 = v241;
          if (os_log_type_enabled(v125, v241))
          {
            *v243 = 136446210;
            *&v243[4] = "nw_http_encoding_create_inbound_frame";
            v121 = v125;
            v122 = v126;
            v123 = "%{public}s called with null frame";
            goto LABEL_185;
          }

LABEL_186:
          if (v118)
          {
            free(v118);
          }

          v66 = 0;
          goto LABEL_93;
        }

        if (v240 == 1)
        {
          v128 = __nw_create_backtrace_string();
          v135 = __nwlog_obj();
          v136 = v241;
          logc = v135;
          v137 = os_log_type_enabled(v135, v241);
          if (v128)
          {
            if (v137)
            {
              *v243 = 136446466;
              *&v243[4] = "nw_http_encoding_create_inbound_frame";
              *&v243[12] = 2082;
              *&v243[14] = v128;
              v132 = logc;
              v133 = v136;
              v134 = "%{public}s called with null frame, dumping backtrace:%{public}s";
LABEL_175:
              _os_log_impl(&dword_181A37000, v132, v133, v134, v243, 0x16u);
            }

            goto LABEL_176;
          }

          if (!v137)
          {
            goto LABEL_186;
          }

          *v243 = 136446210;
          *&v243[4] = "nw_http_encoding_create_inbound_frame";
          v121 = logc;
          v122 = v136;
          v123 = "%{public}s called with null frame, no backtrace";
        }

        else
        {
          v140 = __nwlog_obj();
          v141 = v241;
          if (!os_log_type_enabled(v140, v241))
          {
            goto LABEL_186;
          }

          *v243 = 136446210;
          *&v243[4] = "nw_http_encoding_create_inbound_frame";
          v121 = v140;
          v122 = v141;
          v123 = "%{public}s called with null frame, backtrace limit exceeded";
        }
      }

      else
      {
        v117 = __nwlog_obj();
        *v243 = 136446210;
        *&v243[4] = "nw_http_encoding_create_inbound_frame";
        LODWORD(v216) = 12;
        v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s called with null http_encoding", v243, v216);
        LOBYTE(v241) = 16;
        v240 = 0;
        if (!__nwlog_fault(v118, &v241, &v240))
        {
          goto LABEL_186;
        }

        if (v241 == 17)
        {
          v119 = __nwlog_obj();
          v120 = v241;
          if (os_log_type_enabled(v119, v241))
          {
            *v243 = 136446210;
            *&v243[4] = "nw_http_encoding_create_inbound_frame";
            v121 = v119;
            v122 = v120;
            v123 = "%{public}s called with null http_encoding";
            goto LABEL_185;
          }

          goto LABEL_186;
        }

        if (v240 == 1)
        {
          v128 = __nw_create_backtrace_string();
          v129 = __nwlog_obj();
          v130 = v241;
          logb = v129;
          v131 = os_log_type_enabled(v129, v241);
          if (v128)
          {
            if (v131)
            {
              *v243 = 136446466;
              *&v243[4] = "nw_http_encoding_create_inbound_frame";
              *&v243[12] = 2082;
              *&v243[14] = v128;
              v132 = logb;
              v133 = v130;
              v134 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
              goto LABEL_175;
            }

LABEL_176:
            free(v128);
            goto LABEL_186;
          }

          if (!v131)
          {
            goto LABEL_186;
          }

          *v243 = 136446210;
          *&v243[4] = "nw_http_encoding_create_inbound_frame";
          v121 = logb;
          v122 = v130;
          v123 = "%{public}s called with null http_encoding, no backtrace";
        }

        else
        {
          v138 = __nwlog_obj();
          v139 = v241;
          if (!os_log_type_enabled(v138, v241))
          {
            goto LABEL_186;
          }

          *v243 = 136446210;
          *&v243[4] = "nw_http_encoding_create_inbound_frame";
          v121 = v138;
          v122 = v139;
          v123 = "%{public}s called with null http_encoding, backtrace limit exceeded";
        }
      }

LABEL_185:
      _os_log_impl(&dword_181A37000, v121, v122, v123, v243, 0xCu);
      goto LABEL_186;
    }

LABEL_94:
    v70 = v235[3];
    if ((v70 & 0x8000000000000000) == 0)
    {
      break;
    }

    v71 = *&buf[8];
    if (gLogDatapath == 1)
    {
      v102 = __nwlog_obj();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
      {
        *v243 = 136446210;
        *&v243[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s called", v243, 0xCu);
      }
    }

    v72 = *(v71 + 40);
    if (v72)
    {
      *(v72 + 40) = &v241;
      v73 = *(v71 + 48);
      v241 = v72;
      v242 = v73;
      *(v71 + 40) = 0;
      *(v71 + 48) = v71 + 40;
      *v243 = MEMORY[0x1E69E9820];
      *&v243[8] = 0x40000000;
      *&v243[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v244 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v245) = 0;
      do
      {
        v74 = v241;
        if (!v241)
        {
          break;
        }

        v75 = *(v241 + 32);
        v76 = *(v241 + 40);
        v77 = (v75 + 40);
        if (!v75)
        {
          v77 = &v242;
        }

        *v77 = v76;
        *v76 = v75;
        *(v74 + 32) = 0;
        *(v74 + 40) = 0;
      }

      while (((*&v243[16])(v243) & 1) != 0);
    }

    v78 = *v30;
    if (*(*v30 + 540) == 1)
    {
      v5 = v222;
      if (*(*v30 + 198))
      {
        goto LABEL_199;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v151 = gLogObj;
      v152 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      v78 = *v30;
      if (v152)
      {
        *v243 = 136446722;
        *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        *&v243[12] = 2082;
        *&v243[14] = v78 + 114;
        *&v243[22] = 2080;
        v244 = " ";
        _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sdecoding failed", v243, 0x20u);
        v78 = *v30;
      }

      if (v78)
      {
LABEL_199:
        nw_protocol_error(*(v78 + 48), v78);
        nw_protocol_disconnect(*(v78 + 32), v78);
        goto LABEL_246;
      }

      v192 = __nwlog_obj();
      *v243 = 136446210;
      *&v243[4] = "nw_http_encoding_close";
      LODWORD(v216) = 12;
      v193 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v192, 16, "%{public}s called with null http_encoding", v243, v216);
      LOBYTE(v241) = 16;
      v240 = 0;
      if (!__nwlog_fault(v193, &v241, &v240))
      {
        goto LABEL_299;
      }

      if (v241 == 17)
      {
        v194 = __nwlog_obj();
        v195 = v241;
        if (os_log_type_enabled(v194, v241))
        {
          *v243 = 136446210;
          *&v243[4] = "nw_http_encoding_close";
          v196 = "%{public}s called with null http_encoding";
          goto LABEL_298;
        }

        goto LABEL_299;
      }

      if (v240 == 1)
      {
        v197 = __nw_create_backtrace_string();
        v194 = __nwlog_obj();
        v195 = v241;
        v198 = os_log_type_enabled(v194, v241);
        if (v197)
        {
          if (v198)
          {
            *v243 = 136446466;
            *&v243[4] = "nw_http_encoding_close";
            *&v243[12] = 2082;
            *&v243[14] = v197;
            _os_log_impl(&dword_181A37000, v194, v195, "%{public}s called with null http_encoding, dumping backtrace:%{public}s", v243, 0x16u);
          }

          free(v197);
          goto LABEL_299;
        }

        if (!v198)
        {
LABEL_299:
          if (v193)
          {
            free(v193);
          }

          goto LABEL_246;
        }

        *v243 = 136446210;
        *&v243[4] = "nw_http_encoding_close";
        v196 = "%{public}s called with null http_encoding, no backtrace";
      }

      else
      {
        v194 = __nwlog_obj();
        v195 = v241;
        if (!os_log_type_enabled(v194, v241))
        {
          goto LABEL_299;
        }

        *v243 = 136446210;
        *&v243[4] = "nw_http_encoding_close";
        v196 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      }

LABEL_298:
      _os_log_impl(&dword_181A37000, v194, v195, v196, v243, 0xCu);
      goto LABEL_299;
    }

    if ((*(*v30 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v79 = gLogObj;
      v80 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      v78 = *v30;
      if (v80)
      {
        v81 = *(v78 + 540);
        v82 = "<unknown>";
        if (v81 <= 6)
        {
          v82 = off_1E6A3AD98[v81];
        }

        *v243 = 136446978;
        *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        *&v243[12] = 2082;
        *&v243[14] = v78 + 114;
        *&v243[22] = 2080;
        v244 = " ";
        v245 = 2080;
        *v246 = v82;
        _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sdecoding failed, trying alternative encoding %s", v243, 0x2Au);
        v78 = *v30;
      }
    }

    v83 = 0;
    v84 = *(v78 + 540);
    *(v78 + 540) = 1;
    if (v84 <= 3)
    {
      if (v84 == 2)
      {
        deflate = nw_decoder_create_gzip();
        goto LABEL_119;
      }

      if (v84 == 3)
      {
        *(v78 + 540) = 4;
        deflate = nw_decoder_create_deflate();
        goto LABEL_119;
      }
    }

    else
    {
      switch(v84)
      {
        case 4:
          deflate = nw_decoder_create_raw_deflate();
          goto LABEL_119;
        case 5:
          deflate = nw_decoder_create_brotli();
          goto LABEL_119;
        case 6:
          deflate = nw_decoder_create_zstd();
LABEL_119:
          v83 = deflate;
          break;
      }
    }

    v86 = *v30;
    v87 = *(*v30 + 440);
    if (v87 != v83)
    {
      if (v87)
      {
        (**v87)(*(*v30 + 440));
        free(v87);
      }

      *(v86 + 440) = v83;
    }
  }

  v142 = *(*v30 + 328);
  *(*v30 + 328) = v142 + v70;
  if (__OFADD__(v142, v70))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v143 = v235[3];
    v144 = *(*v30 + 328);
    *v243 = 136446978;
    *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    *&v243[12] = 2082;
    *&v243[14] = "http_encoding->decoded_length";
    *&v243[22] = 2048;
    v244 = v143;
    v245 = 2048;
    *v246 = v144;
    LODWORD(v216) = 42;
    v145 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", v243, v216);
    LOBYTE(v241) = 16;
    v240 = 0;
    v154 = v221;
    if (__nwlog_fault(v145, &v241, &v240))
    {
      if (v241 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v146 = gLogObj;
        v147 = v241;
        if (os_log_type_enabled(gLogObj, v241))
        {
          v148 = v235[3];
          v149 = *(*v30 + 328);
          *v243 = 136446978;
          *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&v243[12] = 2082;
          *&v243[14] = "http_encoding->decoded_length";
          *&v243[22] = 2048;
          v244 = v148;
          v245 = 2048;
          *v246 = v149;
          v150 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_225:
          _os_log_impl(&dword_181A37000, v146, v147, v150, v243, 0x2Au);
        }
      }

      else if (v240 == 1)
      {
        v160 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v146 = gLogObj;
        v147 = v241;
        v161 = os_log_type_enabled(gLogObj, v241);
        if (v160)
        {
          if (v161)
          {
            v162 = v235[3];
            v163 = *(*v30 + 328);
            *v243 = 136447234;
            *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&v243[12] = 2082;
            *&v243[14] = "http_encoding->decoded_length";
            *&v243[22] = 2048;
            v244 = v162;
            v245 = 2048;
            *v246 = v163;
            *&v246[8] = 2082;
            v247 = v160;
            _os_log_impl(&dword_181A37000, v146, v147, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", v243, 0x34u);
          }

          free(v160);
          goto LABEL_226;
        }

        if (v161)
        {
          v171 = v235[3];
          v172 = *(*v30 + 328);
          *v243 = 136446978;
          *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&v243[12] = 2082;
          *&v243[14] = "http_encoding->decoded_length";
          *&v243[22] = 2048;
          v244 = v171;
          v245 = 2048;
          *v246 = v172;
          v150 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_225;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v146 = gLogObj;
        v147 = v241;
        if (os_log_type_enabled(gLogObj, v241))
        {
          v168 = v235[3];
          v169 = *(*v30 + 328);
          *v243 = 136446978;
          *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&v243[12] = 2082;
          *&v243[14] = "http_encoding->decoded_length";
          *&v243[22] = 2048;
          v244 = v168;
          v245 = 2048;
          *v246 = v169;
          v150 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_225;
        }
      }
    }

LABEL_226:
    if (v145)
    {
      free(v145);
    }

    v153 = *v30;
    *(*v30 + 328) = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_229;
  }

  v153 = *v30;
  v154 = v221;
LABEL_229:
  if ((*(v153 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v188 = __nwlog_obj();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
    {
      v189 = *v30 + 114;
      v190 = *(a2 + 64);
      if (v190)
      {
        LODWORD(v190) = (*(v190 + 66) >> 6) & 1;
      }

      v191 = *(a2 + 186) >> 7;
      *v243 = 136447234;
      *&v243[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      *&v243[12] = 2082;
      *&v243[14] = v189;
      *&v243[22] = 2080;
      v244 = " ";
      v245 = 1024;
      *v246 = v190;
      *&v246[4] = 1024;
      *&v246[6] = v191;
      _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%smetadata complete %{BOOL}d, connection complete %{BOOL}d", v243, 0x2Cu);
    }
  }

  v173 = *(a2 + 64);
  if (v173 && (*(v173 + 66) & 0x40) != 0)
  {
    v174 = **(*(*&buf[8] + 48) + 8);
    if (v174)
    {
      nw_frame_inherit_metadata(a2, v174, 1);
    }

    *(*v30 + 544) |= 0x80u;
    nw_http_encoding_check_http1_content_length(*v30);
  }

  v225[0] = MEMORY[0x1E69E9820];
  v225[1] = 0x40000000;
  v226 = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_29;
  v227 = &unk_1E6A31548;
  v231 = *(v154 + 7);
  v228 = &v234;
  v229 = buf;
  v232 = v154[9];
  v230 = v154[5];
  v175 = *(*&buf[8] + 40);
  do
  {
    if (!v175)
    {
      break;
    }

    v176 = *(v175 + 32);
    v177 = v226(v225);
    v175 = v176;
  }

  while ((v177 & 1) != 0);
  v178 = *&buf[8];
  v179 = (*&buf[8] + 40);
  v5 = v222;
  if (gLogDatapath == 1)
  {
    v187 = __nwlog_obj();
    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
    {
      *v243 = 136446210;
      *&v243[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_DEBUG, "%{public}s called", v243, 0xCu);
    }
  }

  v180 = *v179;
  if (*v179)
  {
    *(v180 + 40) = &v241;
    v181 = *(v178 + 48);
    v241 = v180;
    v242 = v181;
    *(v178 + 40) = 0;
    *(v178 + 48) = v179;
    *v243 = MEMORY[0x1E69E9820];
    *&v243[8] = 0x40000000;
    *&v243[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v244 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v245) = 0;
    do
    {
      v182 = v241;
      if (!v241)
      {
        break;
      }

      v183 = *(v241 + 32);
      v184 = *(v241 + 40);
      v185 = (v183 + 40);
      if (!v183)
      {
        v185 = &v242;
      }

      *v185 = v184;
      *v184 = v183;
      *(v182 + 32) = 0;
      *(v182 + 40) = 0;
    }

    while (((*&v243[16])(v243) & 1) != 0);
  }

LABEL_246:
  v167 = v70 >= 0;
  _Block_object_dispose(&v234, 8);
  _Block_object_dispose(buf, 8);
  if (v5)
  {
LABEL_247:
    os_release(v5);
  }

  return v167;
}

uint64_t ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_34(uint64_t a1, _DWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32) + 114;
      v7 = 136447234;
      v8 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v9 = 2082;
      v10 = v6;
      v11 = 2080;
      v12 = " ";
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = nw_frame_unclaimed_length(a2);
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sframe %p unclaimed length %u", &v7, 0x30u);
    }
  }

  return 1;
}

void ___ZL33nw_http_encoding_get_content_typeP25nw_protocol_http_encodingP20nw_protocol_metadata_block_invoke(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (!strcasecmp(a2, "gzip") || !strcasecmp(a2, "x-gzip"))
    {
      v6 = 2;
    }

    else if (!strcasecmp(a2, "deflate"))
    {
      v6 = 3;
    }

    else if (!strcasecmp(a2, "br"))
    {
      v6 = 5;
    }

    else if (!strcasecmp(a2, "zstd"))
    {
      v6 = 6;
    }

    else
    {
      if ((*(*(a1 + 40) + 198) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v5 = *(a1 + 40) + 114;
          v7 = 136446978;
          v8 = "nw_http_encoding_get_content_type_block_invoke";
          v9 = 2082;
          v10 = v5;
          v11 = 2080;
          v12 = " ";
          v13 = 2080;
          v14 = a2;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sunknown encoding type %s, ignoring", &v7, 0x2Au);
        }
      }

      v6 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_25(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v4 = *(v3 + 198);
  if ((v4 & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      v16 = a2;
      v17 = __nwlog_obj();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      v3 = a1[5];
      if (v18)
      {
        *buf = 136446978;
        v30 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        v31 = 2082;
        v32 = (v3 + 114);
        v33 = 2080;
        v34 = " ";
        v35 = 2048;
        v36 = v16;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdecoder asking for frame of size %zu", buf, 0x2Au);
        v3 = a1[5];
      }

      a2 = v16;
      if (!v3)
      {
        v19 = __nwlog_obj();
        *buf = 136446210;
        v30 = "nw_http_encoding_create_inbound_frame";
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null http_encoding", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v27 = 0;
        if (!__nwlog_fault(v12, &type, &v27))
        {
          goto LABEL_41;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v13 = __nwlog_obj();
          v14 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v30 = "nw_http_encoding_create_inbound_frame";
            v15 = "%{public}s called with null http_encoding";
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        if (v27 != 1)
        {
          v13 = __nwlog_obj();
          v14 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v30 = "nw_http_encoding_create_inbound_frame";
            v15 = "%{public}s called with null http_encoding, backtrace limit exceeded";
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v26 = os_log_type_enabled(v13, type);
        if (!backtrace_string)
        {
          if (v26)
          {
            *buf = 136446210;
            v30 = "nw_http_encoding_create_inbound_frame";
            v15 = "%{public}s called with null http_encoding, no backtrace";
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        if (v26)
        {
          *buf = 136446466;
          v30 = "nw_http_encoding_create_inbound_frame";
          v31 = 2082;
          v32 = backtrace_string;
          v25 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    v4 = *(v3 + 198);
  }

  if ((v4 & 1) == 0 && gLogDatapath == 1)
  {
    v20 = a2;
    v21 = __nwlog_obj();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    a2 = v20;
    if (v22)
    {
      *buf = 136446978;
      v30 = "nw_http_encoding_create_inbound_frame";
      v31 = 2082;
      v32 = (v3 + 114);
      v33 = 2080;
      v34 = " ";
      v35 = 1024;
      LODWORD(v36) = v20;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled for size %u", buf, 0x26u);
      a2 = v20;
    }
  }

  frame = nw_frame_cache_create_frame((v3 + 336), a2);
  if (frame)
  {
    v6 = frame;
    frame[2] = 0;
    v7 = *(v3 + 464);
    frame[3] = v7;
    *v7 = frame;
    *(v3 + 464) = frame + 2;
    frame[10] = nw_http_encoding_inbound_frame_finalizer;
    frame[11] = v3;
    goto LABEL_8;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_http_encoding_create_inbound_frame";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null frame", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v12, &type, &v27))
  {
    goto LABEL_41;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v30 = "nw_http_encoding_create_inbound_frame";
        v15 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v24 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v30 = "nw_http_encoding_create_inbound_frame";
        v15 = "%{public}s called with null frame, no backtrace";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (v24)
    {
      *buf = 136446466;
      v30 = "nw_http_encoding_create_inbound_frame";
      v31 = 2082;
      v32 = backtrace_string;
      v25 = "%{public}s called with null frame, dumping backtrace:%{public}s";
LABEL_30:
      _os_log_impl(&dword_181A37000, v13, v14, v25, buf, 0x16u);
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_41;
  }

  v13 = __nwlog_obj();
  v14 = type;
  if (os_log_type_enabled(v13, type))
  {
    *buf = 136446210;
    v30 = "nw_http_encoding_create_inbound_frame";
    v15 = "%{public}s called with null frame";
LABEL_40:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
  }

LABEL_41:
  if (v12)
  {
    free(v12);
  }

  v6 = 0;
LABEL_8:
  nw_frame_inherit_metadata(a1[6], v6, 0);
  v8 = *(a1[4] + 8);
  *(v6 + 32) = 0;
  v9 = *(v8 + 48);
  *(v6 + 40) = v9;
  *v9 = v6;
  *(v8 + 48) = v6 + 32;
  return nw_frame_unclaimed_bytes(v6, 0);
}

uint64_t ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_29(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  v6 = a1[7];
  if ((*(v6 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v29 = v4;
    v30 = __nwlog_obj();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
    v4 = v29;
    v6 = a1[7];
    if (v31)
    {
      *buf = 136446978;
      v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v41 = 2082;
      v42 = (v6 + 114);
      v43 = 2080;
      v44 = " ";
      v45 = 1024;
      LODWORD(v46) = v29;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sunclaimed length %u", buf, 0x26u);
      v4 = v29;
      v6 = a1[7];
    }
  }

  if (v4 >= *(*(a1[4] + 8) + 24))
  {
    v7 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v7 = v4;
  }

  if ((*(v6 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v32 = __nwlog_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = a1[7] + 114;
      *buf = 136446978;
      v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v41 = 2082;
      v42 = v33;
      v43 = 2080;
      v44 = " ";
      v45 = 1024;
      LODWORD(v46) = v7;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%u bytes to claim", buf, 0x26u);
    }
  }

  nw_frame_claim(a2, v5, v7, 0);
  nw_frame_collapse(a2);
  nw_frame_unclaim(a2, v8, v7, 0);
  *(*(a1[4] + 8) + 24) -= v7;
  if ((*(a1[7] + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = a1[7] + 114;
      v36 = *(*(a1[4] + 8) + 24);
      *buf = 136446978;
      v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v41 = 2082;
      v42 = v35;
      v43 = 2080;
      v44 = " ";
      v45 = 2048;
      v46 = v36;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%zd bytes decoded", buf, 0x2Au);
    }
  }

  v9 = (*(a1[5] + 8) + 48);
  v10 = (a2 + 32);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (v11)
  {
    v9 = (v11 + 40);
  }

  *v9 = v12;
  *v12 = v11;
  *(a2 + 40) = 0;
  *v10 = 0;
  v13 = a1[9];
  v14 = *(v13 + 8);
  *(a2 + 40) = v14;
  *v14 = a2;
  *(v13 + 8) = v10;
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 24) + 1;
  *(v15 + 24) = v16;
  if (v16 != v16 << 31 >> 31)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = *(*(a1[6] + 8) + 24);
    *buf = 136446978;
    v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    v41 = 2082;
    v42 = "count";
    v43 = 2048;
    v44 = 1;
    v45 = 2048;
    v46 = v17;
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v18, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v21 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v41 = 2082;
          v42 = "count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v21;
          v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_26:
          _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x2Au);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        v24 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v24)
          {
            v25 = *(*(a1[6] + 8) + 24);
            *buf = 136447234;
            v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            v41 = 2082;
            v42 = "count";
            v43 = 2048;
            v44 = 1;
            v45 = 2048;
            v46 = v25;
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v24)
        {
          v27 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v41 = 2082;
          v42 = "count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v27;
          v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_26;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v26 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v41 = 2082;
          v42 = "count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v26;
          v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    if (v18)
    {
      free(v18);
    }

    *(*(a1[6] + 8) + 24) = -1;
  }

  return 1;
}

void nw_http_encoding_inbound_frame_finalizer(nw_frame *a1, int a2, _BYTE *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_http_encoding_inbound_frame_finalizer";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v25 = "nw_http_encoding_inbound_frame_finalizer";
      v12 = "%{public}s called with null frame";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v19 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v25 = "nw_http_encoding_inbound_frame_finalizer";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v9)
        {
          return;
        }

LABEL_47:
        free(v9);
        return;
      }

      if (!v19)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v25 = "nw_http_encoding_inbound_frame_finalizer";
      v12 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v25 = "nw_http_encoding_inbound_frame_finalizer";
      v12 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_45:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_46;
  }

  if (a3)
  {
    if ((a3[198] & 1) == 0 && gLogDatapath == 1)
    {
      v14 = a3;
      v15 = a2;
      v16 = __nwlog_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      a2 = v15;
      a3 = v14;
      if (v17)
      {
        *buf = 136447490;
        v25 = "nw_http_encoding_inbound_frame_finalizer";
        v26 = 2082;
        v27 = v14 + 114;
        v28 = 2080;
        v29 = " ";
        v30 = 2048;
        v31 = a1;
        v32 = 1024;
        v33 = v15;
        v34 = 2048;
        v35 = v14;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfinalizing inbound frame %p (success %u, context %p)", buf, 0x3Au);
        a2 = v15;
        a3 = v14;
      }
    }

    v4 = a3 + 464;
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    if (v5)
    {
      v4 = (v5 + 24);
    }

    *v4 = v6;
    *v6 = v5;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    if (a2)
    {
      nw_frame_cache_return_frame((a3 + 336), a1);
    }

    else
    {
      if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, 0))
      {
        v7 = *(a1 + 14);
        if (v7)
        {
          free(v7);
        }
      }

      nw_frame_reset(a1, 0, 0, 0, 0);
      os_release(a1);
    }

    return;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_http_encoding_inbound_frame_finalizer";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null context", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v25 = "nw_http_encoding_inbound_frame_finalizer";
    v12 = "%{public}s called with null context";
    goto LABEL_45;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v25 = "nw_http_encoding_inbound_frame_finalizer";
    v12 = "%{public}s called with null context, backtrace limit exceeded";
    goto LABEL_45;
  }

  v20 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v21 = os_log_type_enabled(v10, type);
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v25 = "nw_http_encoding_inbound_frame_finalizer";
    v12 = "%{public}s called with null context, no backtrace";
    goto LABEL_45;
  }

  if (v21)
  {
    *buf = 136446466;
    v25 = "nw_http_encoding_inbound_frame_finalizer";
    v26 = 2082;
    v27 = v20;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v20);
  if (v9)
  {
    goto LABEL_47;
  }
}

double __nw_protocol_http_encoding_identifier_block_invoke()
{
  strcpy(nw_protocol_http_encoding_identifier::protocol_identifier, "http_encoding");
  *&result = 0x100000005;
  qword_1EA840FC8 = 0x100000005;
  return result;
}

BOOL nw_link_set_flow_control_status(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = v3[2];
    v3[2] = a2;
    v5 = v4 != a2;
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_link_set_flow_control_status";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null link_info", buf, 12);

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
        v18 = "nw_link_set_flow_control_status";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null link_info", buf, 0xCu);
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
          v18 = "nw_link_set_flow_control_status";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null link_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_link_set_flow_control_status";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null link_info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_link_set_flow_control_status";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null link_info, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
  v3 = 0;
LABEL_3:

  return v5;
}

uint64_t nw_link_get_flow_control_status(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_link_get_flow_control_status";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null link_info", buf, 12);

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
        v15 = "nw_link_get_flow_control_status";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null link_info", buf, 0xCu);
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
          v15 = "nw_link_get_flow_control_status";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null link_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_link_get_flow_control_status";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null link_info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_link_get_flow_control_status";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null link_info, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 1;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_link_set_local_congestion_info(_DWORD *a1, int a2, int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_link_set_local_congestion_info";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null link_congestion_info", buf, 12);

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
        v14 = "nw_link_set_local_congestion_info";
        v8 = "%{public}s called with null link_congestion_info";
LABEL_17:
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
            v14 = "nw_link_set_local_congestion_info";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null link_congestion_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_link_set_local_congestion_info";
        v8 = "%{public}s called with null link_congestion_info, no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_link_set_local_congestion_info";
        v8 = "%{public}s called with null link_congestion_info, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }
}

uint64_t ZSTD_compressRleLiteralsBlock(_DWORD *a1, _BYTE *a2, unint64_t a3)
{
  if (a3 <= 0x1F)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 > 0xFFF)
  {
    ++v3;
  }

  if (v3 == 3)
  {
    *a1 = (16 * a3) | 0xD;
  }

  else if (v3 == 2)
  {
    *a1 = (16 * a3) | 5;
  }

  else
  {
    *a1 = (8 * a3) | 1;
  }

  *(a1 + v3) = *a2;
  return (v3 + 1);
}

size_t ZSTD_getFrameHeader_advanced(uint64_t a1, unsigned int *a2, size_t a3, int a4)
{
  if (a4)
  {
    result = 1;
  }

  else
  {
    result = 5;
  }

  if (!a2 && a3)
  {
    return -1;
  }

  if (result > a3)
  {
    if (a3 && a4 != 1)
    {
      v6 = result;
      __dst = -47205080;
      memcpy(&__dst, a2, a3);
      if (__dst == -47205080)
      {
        return v6;
      }

      __dst = 407710288;
      memcpy(&__dst, a2, a3);
      if (__dst >> 4 == 25481893)
      {
        return v6;
      }

      return -10;
    }

    return result;
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a4 == 1)
  {
    v9 = 1;
    v10 = a2;
LABEL_18:
    v11 = *v10;
    v12 = ZSTD_did_fieldSize[v11 & 3] + v9 + *(&ZSTD_fcs_fieldSize + ((v11 >> 3) & 0x18));
    if ((v11 & 0x20) == 0)
    {
      ++v12;
    }

    v13 = v12 + ((v11 < 0x40) & ((v11 & 0x20) >> 5));
    if (v13 > a3)
    {
      return v13;
    }

    *(a1 + 24) = v13;
    v14 = *(a2 + result - 1);
    if ((v14 & 8) != 0)
    {
      return -14;
    }

    if ((v14 & 0x20) != 0)
    {
      v16 = 0;
    }

    else
    {
      v15 = *(a2 + result);
      if (v15 > 0xAF)
      {
        return -16;
      }

      ++result;
      v16 = (1 << ((v15 >> 3) + 10)) + ((1 << ((v15 >> 3) + 10)) >> 3) * (v15 & 7);
    }

    v17 = v14 & 3;
    v18 = v14 >> 6;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v17 = *(a2 + result);
        result += 2;
      }

      else
      {
        v17 = *(a2 + result);
        result += 4;
      }
    }

    else if ((v14 & 3) != 0)
    {
      v17 = *(a2 + result++);
    }

    v19 = (v14 >> 2) & 1;
    if (v14 >> 6 > 1)
    {
      if (v18 == 2)
      {
        v20 = *(a2 + result);
      }

      else
      {
        v20 = *(a2 + result);
      }
    }

    else if (v18)
    {
      v20 = *(a2 + result) + 256;
    }

    else if ((v14 & 0x20) != 0)
    {
      v20 = *(a2 + result);
    }

    else
    {
      v20 = -1;
    }

    result = 0;
    if ((v14 & 0x20) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    *a1 = v20;
    *(a1 + 8) = v21;
    if (v21 >= 0x20000)
    {
      LODWORD(v21) = 0x20000;
    }

    *(a1 + 16) = v21;
    *(a1 + 20) = 0;
    *(a1 + 28) = v17;
    *(a1 + 32) = v19;
    return result;
  }

  if (*a2 == -47205080)
  {
    v10 = (a2 + result - 1);
    v9 = result;
    goto LABEL_18;
  }

  if (*a2 >> 4 != 25481893)
  {
    return -10;
  }

  if (a3 < 8)
  {
    return 8;
  }

  result = 0;
  *a1 = a2[1];
  *(a1 + 20) = 1;
  return result;
}

size_t ZSTD_decompressMultiFrame(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6)
{
  v6 = a5;
  *(&v137[13] + 4) = *MEMORY[0x1E69E9840];
  v9 = (a1 + 26684);
  if (a6)
  {
    v10 = *(a6 + 8);
    v11 = *(a6 + 16);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(a1 + 30104);
  v13 = v12 == 0;
  v14 = 5;
  if (v12)
  {
    v14 = 1;
  }

  if (v14 > a5)
  {
    v15 = a2;
LABEL_8:
    if (v6)
    {
      return -72;
    }

    else
    {
      return v15 - a2;
    }
  }

  v17 = 0;
  v18 = (a6 + 24576);
  v133 = (a1 + 29976);
  v19 = (a1 + 29888);
  v20 = a1 + 32;
  v21 = (a1 + 10296);
  v22 = (v9 + 827);
  v23 = (a1 + 6192);
  v24 = (a1 + 4136);
  if (v11)
  {
    v25 = v10 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  v27 = v10 + v11;
  v132 = (a1 + 30008);
  v28 = a6 + 24;
  v29 = a6 + 6184;
  v130 = a6 + 4128;
  v129 = a6 + 10288;
  v122 = (v10 + 2);
  v121 = v11 - 8;
  v30 = 0uLL;
  v31 = xmmword_182AED520;
  v15 = a2;
  while (1)
  {
    if (v13)
    {
      while (v6 >= 4 && *a4 >> 4 == 25481893)
      {
        if (v6 < 8)
        {
          return -72;
        }

        v32 = *(a4 + 1);
        if (v32 > 0xFFFFFFF7)
        {
          return -14;
        }

        v33 = v32 + 8;
        if (v33 <= v6)
        {
          v16 = v33;
        }

        else
        {
          v16 = -72;
        }

        if (v16 > 0xFFFFFFFFFFFFFF88)
        {
          return v16;
        }

        a4 += v16;
        v6 -= v16;
        if (v6 < v14)
        {
          goto LABEL_8;
        }
      }
    }

    __dst = v15;
    if (a6)
    {
      v9[880] = *(a1 + 29912) != *(a6 + 8) + *(a6 + 16);
      if (v12)
      {
        v34 = 1;
      }

      else
      {
        v34 = 5;
      }

      *(a1 + 29920) = v34;
      *v19 = v30;
      v19[1] = v30;
      *v133 = 0;
      v133[1] = 0;
      *(a1 + 10296) = 201326604;
      *v22 = v31;
      v9[873] = 1;
      *v9 = 0x400000001;
      v9[2] = 8;
      *a1 = v20;
      *(a1 + 8) = v23;
      *(a1 + 16) = v24;
      *(a1 + 24) = v21;
      v9[879] = v18[685];
      v35 = *(a6 + 8);
      *(a1 + 29896) = v35;
      *(a1 + 29904) = v35;
      v36 = (v35 + *(a6 + 16));
      *(a1 + 29912) = v36;
      *(a1 + 29888) = v36;
      if (v18[686])
      {
        *(a1 + 30000) = 0x100000001;
        *a1 = v28;
        *(a1 + 8) = v29;
        *(a1 + 16) = v130;
        *(a1 + 24) = v129;
        *v9 = v18[525];
        v9[1] = v18[526];
        v9[2] = v18[527];
        if (!a3)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a1 + 30000) = 0;
LABEL_60:
        if (!a3)
        {
          goto LABEL_63;
        }
      }

LABEL_61:
      if (v36 != v15)
      {
        *(a1 + 29912) = v36;
        *(a1 + 29904) = &v15[v35 - v36];
        *(a1 + 29896) = v15;
        *(a1 + 29888) = v15;
      }

      goto LABEL_63;
    }

    v35 = 0;
    v36 = 0;
    *(a1 + 29920) = v14;
    *v19 = v30;
    v19[1] = v30;
    *v133 = 0;
    v133[1] = 0;
    *(a1 + 10296) = 201326604;
    v9[879] = 0;
    *v22 = v31;
    v9[873] = 1;
    *v9 = 0x400000001;
    v9[2] = 8;
    *a1 = v20;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 24) = v21;
    if (!v26)
    {
      goto LABEL_60;
    }

    if (v11 >= 8 && *v10 == -332356553)
    {
      v9[879] = v10[1];
      if (v11 == 8)
      {
        return -30;
      }

      v106 = v31;
      v108 = v28;
      v37 = v27;
      v110 = v26;
      v125 = v23;
      v127 = v24;
      v112 = v22;
      v114 = v21;
      v116 = v17;
      v118 = v19;
      v100 = v11;
      v102 = v18;
      v38 = a3;
      v39 = a2;
      v123 = v20;
      DTableX2_wksp = HUF_readDTableX2_wksp(v21, v122, v121, v20);
      if (DTableX2_wksp > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      v41 = &v122[DTableX2_wksp];
      v135 = 0;
      v136 = 31;
      v42 = FSE_readNCount_bmi2(v137, &v136, &v135, v41, v37 - v41);
      if (v42 > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      if (v136 > 0x1F)
      {
        return -30;
      }

      if (v135 >= 9)
      {
        return -30;
      }

      v43 = v42;
      ZSTD_buildFSETable(v127, v137, v136, &OF_base, &OF_bits, v135, a1 + 26696);
      v44 = &v41[v43];
      v135 = 0;
      v136 = 52;
      v45 = FSE_readNCount_bmi2(v137, &v136, &v135, v44, v37 - v44);
      if (v45 > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      if (v136 > 0x34)
      {
        return -30;
      }

      if (v135 >= 0xA)
      {
        return -30;
      }

      v46 = v45;
      ZSTD_buildFSETable(v125, v137, v136, &ML_base, ML_bits_36218, v135, a1 + 26696);
      v47 = &v44[v46];
      v135 = 0;
      v136 = 35;
      v48 = FSE_readNCount_bmi2(v137, &v136, &v135, v47, v37 - v47);
      if (v48 > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      if (v136 > 0x23)
      {
        return -30;
      }

      if (v135 >= 0xA)
      {
        return -30;
      }

      v49 = v48;
      ZSTD_buildFSETable(v123, v137, v136, &LL_base, LL_bits_36216, v135, a1 + 26696);
      v50 = &v47[v49];
      v35 = &v47[v49 + 12];
      if (v35 > v37)
      {
        return -30;
      }

      v27 = v37;
      v51 = *v50;
      v16 = -30;
      if (!v51)
      {
        return v16;
      }

      v52 = &v27[-v35];
      a2 = v39;
      v19 = v118;
      a6 = 0;
      a3 = v38;
      v11 = v100;
      v18 = v102;
      v20 = v123;
      v23 = v125;
      v17 = v116;
      v22 = v112;
      v21 = v114;
      v24 = v127;
      v26 = v110;
      v28 = v108;
      v30 = 0uLL;
      v31 = v106;
      v15 = __dst;
      if (&v27[-v35] < v51)
      {
        return v16;
      }

      *v9 = v51;
      v53 = *(v50 + 1);
      if (!v53)
      {
        return v16;
      }

      if (v52 < v53)
      {
        return v16;
      }

      v9[1] = v53;
      v54 = *(v50 + 2);
      if (!v54)
      {
        return v16;
      }

      if (v52 < v54)
      {
        return v16;
      }

      v9[2] = v54;
      if (v35 - v10 > 0xFFFFFFFFFFFFFF88)
      {
        return v16;
      }

      *(a1 + 30000) = 0x100000001;
      v55 = *(a1 + 29888);
      v56 = *(a1 + 29896);
    }

    else
    {
      v56 = 0;
      v55 = 0;
      v35 = v10;
    }

    *(a1 + 29912) = v55;
    *(a1 + 29904) = v35 + v56 - v55;
    *(a1 + 29896) = v35;
    *(a1 + 29888) = v27;
    v36 = v27;
    if (a3)
    {
      goto LABEL_61;
    }

LABEL_63:
    v57 = v9[855];
    v58 = 9;
    if (v57)
    {
      v58 = 5;
    }

    if (v6 < v58)
    {
      return -72;
    }

    if (v57)
    {
      v59 = 1;
    }

    else
    {
      v59 = 5;
    }

    v60 = a4[v59 - 1];
    v61 = (v60 < 0x40) & ((v60 & 0x20) >> 5);
    v62 = ZSTD_did_fieldSize[v60 & 3] + v59 + *(&ZSTD_fcs_fieldSize + ((v60 >> 3) & 0x18));
    if ((v60 & 0x20) == 0)
    {
      ++v62;
    }

    v16 = v62 + v61;
    if ((v62 + v61) > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_89;
    }

    if (v6 < v16 + 3)
    {
      return -72;
    }

    v107 = v31;
    v109 = v28;
    v104 = v27;
    v105 = a2;
    v111 = v26;
    v126 = v23;
    v128 = v24;
    v113 = v22;
    v115 = v21;
    v117 = v17;
    v124 = v20;
    v119 = v19;
    v120 = a6;
    v63 = a3;
    FrameHeader_advanced = ZSTD_getFrameHeader_advanced(a1 + 29928, a4, v16, v57);
    if (FrameHeader_advanced <= 0xFFFFFFFFFFFFFF88)
    {
      break;
    }

    v16 = FrameHeader_advanced;
    a2 = v105;
    a6 = v120;
    a3 = v63;
LABEL_88:
    v19 = v119;
    v20 = v124;
    v23 = v126;
    v17 = v117;
    v22 = v113;
    v21 = v115;
    v24 = v128;
    v26 = v111;
    v27 = v104;
    v28 = v109;
    v30 = 0uLL;
    v31 = v107;
LABEL_89:
    v78 = __dst;
LABEL_90:
    v80 = v16 > 0xFFFFFFFFFFFFFF88 && v16 == -10;
    if (v80 & v17)
    {
      return -72;
    }

    if (v16 > 0xFFFFFFFFFFFFFF88)
    {
      return v16;
    }

    v15 = &v78[v16];
    a3 -= v16;
    v12 = v9[855];
    v13 = v12 == 0;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = 5;
    }

    v17 = 1;
    if (v6 < v14)
    {
      goto LABEL_8;
    }
  }

  v65 = 0uLL;
  v66 = __dst;
  if (!FrameHeader_advanced)
  {
    v67 = v63;
    v103 = v18;
    v99 = v10;
    if (v9[885] == 1)
    {
      v68 = *(a1 + 30216);
      if (v68)
      {
        if (*(a1 + 30192))
        {
          v69 = v9[818];
          v70 = v68[1];
          LODWORD(v137[0]) = v69;
          v71 = ZSTD_XXH64(v137, 4uLL);
          v66 = __dst;
          v65 = 0uLL;
          v67 = v63;
          v72 = v71 & (v70 - 1);
          v73 = *v68;
          while (1)
          {
            v74 = *(v73 + 8 * v72);
            if (!v74)
            {
              break;
            }

            v75 = *(v74 + 27316);
            v72 = (v72 & (v70 - 1)) + 1;
            if (v75 == v69 || v75 == 0)
            {
              ZSTD_freeDDict(*(a1 + 30184));
              v66 = __dst;
              v65 = 0uLL;
              v67 = v63;
              *(a1 + 30184) = 0;
              v77 = v9[818];
              v9[879] = v77;
              *(a1 + 30192) = v74;
              v9[881] = -1;
              goto LABEL_104;
            }
          }
        }
      }
    }

    v77 = v9[818];
LABEL_104:
    if (v77 && v9[879] != v77)
    {
      return -32;
    }

    if (v9[819])
    {
      v81 = v9[856];
      v9[857] = v81 == 0;
      if (!v81)
      {
        *(a1 + 30088) = 0;
        *(a1 + 30056) = v65;
        *(a1 + 30072) = v65;
        *(a1 + 30024) = v65;
        *(a1 + 30040) = v65;
        *v132 = v65;
        *(a1 + 30016) = xmmword_182B08D10;
        *(a1 + 30040) = 0x61C8864E7A143579;
      }
    }

    else
    {
      v9[857] = 0;
    }

    v101 = v11;
    *v133 += v16;
    v82 = v9[887];
    if (v82)
    {
      if (v9[815] < v82)
      {
        v82 = v9[815];
      }

      v9[815] = v82;
    }

    v131 = v9;
    v98 = v67;
    v83 = &v66[v67];
    v84 = &a4[v16];
    v85 = v6 - v16;
    v86 = v66;
    while (2)
    {
      v87 = v85 - 3;
      if (v85 < 3)
      {
        return -72;
      }

      v88 = *v84;
      v89 = v88 | (v84[2] << 16);
      v16 = v89 >> 3;
      v90 = (*v84 >> 1) & 3;
      v91 = v90;
      if (v90 != 1)
      {
        if (v90 == 3)
        {
          return -20;
        }

        v91 = v89 >> 3;
      }

      v85 = v87 - v91;
      if (v87 < v91)
      {
        return -72;
      }

      v92 = v84 + 3;
      if (v92 < v83 && v92 >= v86)
      {
        v94 = v92;
      }

      else
      {
        v94 = v83;
      }

      if (v90 > 1)
      {
        v16 = ZSTD_decompressBlock_internal(a1, v86, v94 - v86, v92, v91, 0);
        if (v16 > 0xFFFFFFFFFFFFFF88)
        {
          a2 = v105;
          a6 = v120;
          a3 = v98;
          v10 = v99;
          v9 = v131;
          v11 = v101;
          v18 = v103;
          goto LABEL_88;
        }
      }

      else if (v90)
      {
        if (v94 - v86 < v16)
        {
          return -70;
        }

        if (!v86)
        {
          if (v89 >= 8)
          {
            return -74;
          }

          goto LABEL_143;
        }

        memset(v86, *v92, v89 >> 3);
      }

      else
      {
        if (v91 > v83 - v86)
        {
          return -70;
        }

        if (v86)
        {
          memmove(v86, v92, v91);
          v16 = v91;
          goto LABEL_144;
        }

        if (v91)
        {
          return -74;
        }

LABEL_143:
        v16 = 0;
      }

LABEL_144:
      if (v131[857])
      {
        ZSTD_XXH64_update(v132, v86, v16);
      }

      v86 += v16;
      v84 = &v92[v91];
      v30 = 0uLL;
      v78 = __dst;
      if (v88)
      {
        v95 = *(a1 + 29928);
        v16 = v86 - __dst;
        if (v95 != -1 && v16 != v95)
        {
          return -20;
        }

        if (!v131[819])
        {
          a4 = v84;
          v6 = v85;
          v27 = v104;
          a2 = v105;
          v19 = v119;
          a6 = v120;
          a3 = v98;
          v10 = v99;
          v9 = v131;
          v11 = v101;
          v18 = v103;
          v20 = v124;
          v23 = v126;
          v17 = v117;
          v22 = v113;
          v21 = v115;
          v24 = v128;
          v26 = v111;
          v28 = v109;
          v31 = v107;
          goto LABEL_90;
        }

        v6 = v85 - 4;
        v27 = v104;
        a2 = v105;
        v19 = v119;
        a6 = v120;
        v10 = v99;
        v18 = v103;
        v20 = v124;
        v23 = v126;
        v17 = v117;
        v22 = v113;
        v21 = v115;
        v24 = v128;
        v26 = v111;
        v28 = v109;
        v31 = v107;
        if (v85 >= 4)
        {
          v9 = v131;
          if (v131[856] || (v96 = ZSTD_XXH64_digest(v132), v78 = __dst, v31 = v107, v30 = 0uLL, v28 = v109, v27 = v104, a2 = v105, v26 = v111, v23 = v126, v24 = v128, v17 = v117, v20 = v124, v19 = v119, a6 = v120, v25 = *v84 == v96, v22 = v113, v21 = v115, v25))
          {
            a4 = v84 + 4;
            a3 = v98;
            v11 = v101;
            goto LABEL_90;
          }
        }

        return -22;
      }

      continue;
    }
  }

  return -72;
}

size_t ZSTD_decompressContinue(int64x2_t *a1, char *__b, size_t a3, unsigned __int8 *__src, size_t __len, __n128 a6, __n128 a7)
{
  v7 = &a1[1871].u32[2];
  v8 = a1[1874].i32[3];
  if ((v8 - 3) >= 2)
  {
    v9 = a1[1870].u64[0];
    if (v9 != __len)
    {
      return -72;
    }
  }

  else
  {
    v9 = a1[1870].u64[0];
    if (v9 >= __len)
    {
      v10 = __len;
    }

    else
    {
      v10 = a1[1870].u64[0];
    }

    if (v10 <= 1)
    {
      v10 = 1;
    }

    if (a1[1874].i32[2])
    {
      v11 = a1[1870].u64[0];
    }

    else
    {
      v11 = v10;
    }

    if (v11 != __len)
    {
      return -72;
    }
  }

  if (a3)
  {
    v12 = a1[1868].i64[0];
    if (v12 != __b)
    {
      a1[1869].i64[1] = v12;
      a1[1869].i64[0] = &__b[a1[1868].i64[1] - v12];
      a1[1868].i64[1] = __b;
      a1[1868].i64[0] = __b;
    }
  }

  a1[1873].i64[1] += __len;
  v13 = -1;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          return v13;
        }

        v17 = *__src;
        v18 = (v17 | (__src[2] << 16)) >> 3;
        v19 = (*__src >> 1) & 3;
        if (v19 == 1)
        {
          v20 = (*__src >> 1) & 3;
        }

        else
        {
          if (v19 == 3)
          {
            return -20;
          }

          v20 = (v17 | (__src[2] << 16)) >> 3;
        }

        if (v20 <= *v7)
        {
          a1[1870].i64[0] = v20;
          a1[1874].i32[2] = v19;
          a1[1885].i64[0] = v18;
          if (v20)
          {
            if (v17)
            {
              v25 = 4;
            }

            else
            {
              v25 = 3;
            }

            v13 = 0;
          }

          else if (v17)
          {
            v25 = a1[1872].i32[2];
            if (v25)
            {
              a1[1870].i64[0] = 4;
              v25 = 5;
            }

            else
            {
              a1[1870].i64[0] = 0;
            }

            v13 = 0;
          }

          else
          {
            a1[1870].i64[0] = 3;
            v25 = 2;
            v13 = 0;
          }

          goto LABEL_38;
        }

        return -20;
      }

      v27 = &a1[5996].u32[1];
      v28 = a1;
      memcpy(a1[5996].i64 + a1[1881].i64[0] - __len + 4, __src, __len);
      v29 = *(v28 + 30096);
      FrameHeader_advanced = ZSTD_getFrameHeader_advanced(v28 + 29928, v27, v29, v7[40]);
      v13 = FrameHeader_advanced;
      if (FrameHeader_advanced > 0xFFFFFFFFFFFFFF88)
      {
        return v13;
      }

      if (!FrameHeader_advanced)
      {
        v43 = v28;
        if (v7[70] == 1 && *(v28 + 30216))
        {
          ZSTD_DCtx_selectFrameDDict(v28);
          v43 = v28;
        }

        v44 = v7[3];
        if (v44 && v7[64] != v44)
        {
          return -32;
        }

        if (v7[4])
        {
          v45 = v7[41];
          v7[42] = v45 == 0;
          if (!v45)
          {
            *(v43 + 30008) = 0u;
            *(v43 + 30024) = 0u;
            *(v43 + 30088) = 0;
            *(v43 + 30056) = 0u;
            *(v43 + 30072) = 0u;
            *(v43 + 30040) = 0u;
            *(v43 + 30016) = xmmword_182B08D10;
            *(v43 + 30040) = 0x61C8864E7A143579;
          }
        }

        else
        {
          v7[42] = 0;
        }

        v13 = 0;
        *(v43 + 29976) += v29;
        *(v43 + 29920) = 3;
        v25 = 2;
        goto LABEL_38;
      }

      return -72;
    }

    if (a1[1881].i32[2])
    {
      v26 = 1;
      if (!__len)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*__src >> 4 == 25481893)
      {
        v33 = a1;
        v34 = __len;
        memcpy(a1[5996].i64 + 4, __src, __len);
        v13 = 0;
        v33[1870].i64[0] = 8 - v34;
        v25 = 6;
        goto LABEL_38;
      }

      v26 = 5;
      if (__len < 5)
      {
LABEL_41:
        v13 = -72;
        a1[1881].i64[0] = -72;
        return v13;
      }
    }

    v38 = __src[v26 - 1];
    v39 = (v38 < 0x40) & ((v38 & 0x20) >> 5);
    v40 = ZSTD_did_fieldSize[v38 & 3] + v26 + *(&ZSTD_fcs_fieldSize + ((v38 >> 3) & 0x18));
    if ((v38 & 0x20) == 0)
    {
      ++v40;
    }

    v13 = v40 + v39;
    a1[1881].i64[0] = v40 + v39;
    if ((v40 + v39) <= 0xFFFFFFFFFFFFFF88)
    {
      v41 = a1;
      v42 = __len;
      memcpy(a1[5996].i64 + 4, __src, __len);
      v41[1870].i64[0] = v13 - v42;
      v7[13] = 1;
      return 0;
    }

    return v13;
  }

  if (v8 > 5)
  {
    if (v8 != 6)
    {
      if (v8 != 7)
      {
        return v13;
      }

      goto LABEL_35;
    }

    v24 = a1;
    memcpy(&a1[5996].u64[1] - __len + 4, __src, __len);
    v13 = 0;
    v24[1870].i64[0] = v24[5996].u32[2];
    v25 = 7;
LABEL_38:
    v7[13] = v25;
    return v13;
  }

  if ((v8 - 3) >= 2)
  {
    if (v8 != 5)
    {
      return v13;
    }

    if (a1[1882].i32[0])
    {
      v21 = a1;
      v23 = ZSTD_XXH64_digest(&a1[1875].i64[1]);
      a1 = v21;
      if (*__src != v23)
      {
        return -22;
      }
    }

LABEL_35:
    v13 = 0;
LABEL_36:
    a1[1870].i64[0] = 0;
    v7[13] = 0;
    return v13;
  }

  v14 = a1[1874].i32[2];
  if (v14)
  {
    if (v14 == 1)
    {
      v32 = a1[1885].u64[0];
      if (v32 > a3)
      {
        v13 = -70;
        a1[1870].i64[0] = 0;
        return v13;
      }

      if (!__b)
      {
        if (v32)
        {
          v13 = -74;
          a1[1870].i64[0] = 0;
          return v13;
        }

        v16 = 0;
        v13 = 0;
        a1[1870].i64[0] = 0;
        goto LABEL_97;
      }

      v15 = a1;
      v16 = __b;
      v35 = a1[1885].u64[0];
      memset(__b, *__src, v32);
      __len = v35;
      goto LABEL_62;
    }

    if (v14 == 2)
    {
      v15 = a1;
      v16 = __b;
      __len = ZSTD_decompressBlock_internal(a1, __b, a3, __src, __len, 1);
LABEL_62:
      v32 = 0;
      a1 = v15;
      v15[1870].i64[0] = 0;
      v13 = __len;
      if (__len > 0xFFFFFFFFFFFFFF88)
      {
        return v13;
      }

      goto LABEL_87;
    }

    return -20;
  }

  if (__len > a3)
  {
    return -70;
  }

  if (__b)
  {
    v36 = a1;
    v16 = __b;
    v37 = __len;
    memmove(__b, __src, __len);
    __len = v37;
    if (v37 > 0xFFFFFFFFFFFFFF88)
    {
      return v37;
    }

    a1 = v36;
    v9 = v36[1870].u64[0];
  }

  else
  {
    v16 = 0;
    if (__len)
    {
      return -74;
    }
  }

  v32 = v9 - __len;
  a1[1870].i64[0] = v9 - __len;
LABEL_87:
  v13 = __len;
  if (__len > *v7)
  {
    return -20;
  }

LABEL_97:
  a1[1874].i64[0] += v13;
  if (v7[42])
  {
    v46 = a1;
    ZSTD_XXH64_update(&a1[1875].u32[2], v16, v13);
    a1 = v46;
    v32 = v46[1870].u64[0];
  }

  a1[1868].i64[0] = &v16[v13];
  if (!v32)
  {
    if (v7[13] != 4)
    {
      v7[13] = 2;
      a1[1870].i64[0] = 3;
      return v13;
    }

    v47 = a1[1870].i64[1];
    if (v47 != -1 && a1[1874].i64[0] != v47)
    {
      return -20;
    }

    if (v7[4])
    {
      a1[1870].i64[0] = 4;
      v25 = 5;
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  return v13;
}

uint64_t ZSTD_DCtx_selectFrameDDict(uint64_t result)
{
  if (*(result + 30192))
  {
    v1 = (result + 28672);
    v2 = *(result + 29956);
    v3 = __ROR8__((0x9E3779B185EBCA87 * v2) ^ 0x27D4EB2F165667C9, 41);
    v4 = 0xC2B2AE3D27D4EB4FLL * ((0xC2B2AE3D27D4EB4FLL * v3 + 0x165667B19E3779F9) ^ ((0xC2B2AE3D27D4EB4FLL * v3 + 0x165667B19E3779F9) >> 33));
    v5 = (0x165667B19E3779F9 * (v4 ^ (v4 >> 29))) ^ ((0x165667B19E3779F9 * (v4 ^ (v4 >> 29))) >> 32);
    v6 = *(*(result + 30216) + 8) - 1;
    v7 = v5 & v6;
    do
    {
      v8 = *(**(result + 30216) + 8 * v7);
      if (!v8)
      {
        return result;
      }

      v9 = *(v8 + 27316);
      v7 = (v7 & v6) + 1;
    }

    while (v9 != v2 && v9 != 0);
    v11 = *(result + 30184);
    if (!v11)
    {
LABEL_18:
      *(result + 30184) = 0;
      v1[382] = v1[321];
      *(result + 30192) = v8;
      v1[384] = -1;
      return result;
    }

    v12 = *(v11 + 27336);
    v13 = *(v11 + 27344);
    if (*v11)
    {
      v14 = result;
      if (v12)
      {
        (v12)(*(v11 + 27344));
LABEL_14:
        v12(v13, v11);
LABEL_17:
        result = v14;
        goto LABEL_18;
      }

      free(*v11);
    }

    else
    {
      v14 = result;
      if (v12)
      {
        goto LABEL_14;
      }
    }

    free(v11);
    goto LABEL_17;
  }

  return result;
}

uint64_t ZSTD_getDDict(uint64_t a1)
{
  v1 = *(a1 + 30208);
  if (v1 == -1)
  {
    return *(a1 + 30192);
  }

  if (v1 == 1)
  {
    *(a1 + 30208) = 0;
    return *(a1 + 30192);
  }

  v3 = (a1 + 30184);
  v4 = *(a1 + 30184);
  if (v4)
  {
    v5 = *(v4 + 27336);
    v6 = *(v4 + 27344);
    if (*v4)
    {
      v7 = a1;
      if (v5)
      {
        (v5)(*(v4 + 27344));
LABEL_10:
        v5(v6, v4);
LABEL_13:
        a1 = v7;
        goto LABEL_14;
      }

      free(*v4);
    }

    else
    {
      v7 = a1;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    free(v4);
    goto LABEL_13;
  }

LABEL_14:
  *(a1 + 30208) = 0;
  result = 0;
  *v3 = 0;
  v3[1] = 0;
  return result;
}

unint64_t HUF_writeCTable_wksp(_BYTE *a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = -a6 & 3;
  v8 = a7 - v7;
  if (a7 < v7)
  {
    v8 = 0;
  }

  if (v8 < 0x2EC)
  {
    return -1;
  }

  if (a4 > 0xFF)
  {
    return -46;
  }

  v10 = a6 + v7;
  *(a6 + v7 + 480) = 0;
  v11 = (a5 + 1);
  if (v11 >= 2)
  {
    if (v11 <= 4)
    {
      v12 = 1;
      goto LABEL_21;
    }

    v13 = v11 - 1;
    v14 = vdupq_n_s32(v11);
    if (v11 >= 0x21)
    {
      v15 = v13 & 0xFFFFFFFFFFFFFFE0;
      v16 = (v7 + a6 + 481);
      v17 = xmmword_182B08D50;
      v18 = xmmword_182B08D60;
      v19 = xmmword_182B08D70;
      v20 = xmmword_182B08D80;
      v21.i64[0] = 0x1000000010;
      v21.i64[1] = 0x1000000010;
      v22.i64[0] = 0x2000000020;
      v22.i64[1] = 0x2000000020;
      v23 = v13 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v81.val[0] = vsubq_s32(v14, v20);
        v82.val[0] = vsubq_s32(v81.val[0], v21);
        v81.val[1] = vsubq_s32(v14, v19);
        v82.val[1] = vsubq_s32(v81.val[1], v21);
        v81.val[2] = vsubq_s32(v14, v18);
        v82.val[2] = vsubq_s32(v81.val[2], v21);
        v81.val[3] = vsubq_s32(v14, v17);
        v82.val[3] = vsubq_s32(v81.val[3], v21);
        *v16 = vqtbl4q_s8(v81, xmmword_182B08D90);
        v16[1] = vqtbl4q_s8(v82, xmmword_182B08D90);
        v16 += 2;
        v20 = vaddq_s32(v20, v22);
        v19 = vaddq_s32(v19, v22);
        v18 = vaddq_s32(v18, v22);
        v17 = vaddq_s32(v17, v22);
        v23 -= 32;
      }

      while (v23);
      if (v13 == v15)
      {
        goto LABEL_23;
      }

      v12 = v15 | 1;
      if ((v13 & 0x1C) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
      LODWORD(v12) = 1;
    }

    v24 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = vaddq_s32(vdupq_n_s32(v12), xmmword_182B08DA0);
    v26 = v15 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    v27 = (v15 + a6 + v7 + 481);
    v28.i64[0] = 0x400000004;
    v28.i64[1] = 0x400000004;
    do
    {
      *v27++ = vuzp1_s8(vmovn_s32(vsubq_s32(v14, v25)), *v14.i8).u32[0];
      v25 = vaddq_s32(v25, v28);
      v26 += 4;
    }

    while (v26);
    if (v13 != v24)
    {
      v12 = v24 | 1;
LABEL_21:
      v29 = v11 - v12;
      v30 = (v12 + v7 + a6 + 480);
      do
      {
        *v30++ = v29--;
      }

      while (v29);
    }
  }

LABEL_23:
  if (!a4)
  {
    if ((-v10 & 3) == 0)
    {
      v33 = 0;
      v37 = a1 + 1;
      v32 = (v10 + 493);
      goto LABEL_36;
    }

    return -1;
  }

  v31 = (a3 + 8);
  v32 = (v10 + 493);
  v33 = a4;
  v34 = (v10 + 493);
  v35 = a4;
  do
  {
    v36 = *v31;
    v31 += 8;
    *v34++ = *(v10 + 480 + v36);
    --v35;
  }

  while (v35);
  if ((-v10 & 3) != 0)
  {
    return -1;
  }

  v37 = a1 + 1;
  if (a4 == 1)
  {
    goto LABEL_36;
  }

  v38 = a2 - 1;
  *(v10 + 448) = 0;
  *(v10 + 416) = 0u;
  *(v10 + 432) = 0u;
  v39 = (v10 + 400);
  *(v10 + 400) = 0u;
  v40 = (v10 + 493);
  do
  {
    v41 = *v40++;
    ++v39[v41];
  }

  while (v40 < &v32[a4]);
  LODWORD(v42) = 13;
  do
  {
    v42 = (v42 - 1);
  }

  while (!v39[v42]);
  if (v42 >= 7)
  {
    v43 = (v42 + 1) & 0x1FFFFFFF8;
    v49 = v43;
    v50 = (v7 + a6 + 416);
    v51 = 0uLL;
    v52 = 0uLL;
    do
    {
      v51 = vmaxq_u32(v50[-1], v51);
      v52 = vmaxq_u32(*v50, v52);
      v50 += 2;
      v49 -= 8;
    }

    while (v49);
    v44 = vmaxvq_u32(vmaxq_u32(v51, v52));
    if (v42 + 1 == v43)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v53 = v42 - v43;
  if (v42 < v43)
  {
    v53 = 0;
  }

  v54 = v53 + 1;
  v55 = ((v7 | (4 * v43)) + a6 + 400);
  do
  {
    v57 = *v55++;
    v56 = v57;
    if (v57 > v44)
    {
      v44 = v56;
    }

    --v54;
  }

  while (v54);
LABEL_55:
  if (v44 == a4 || v44 == 1)
  {
    goto LABEL_60;
  }

  v74 = a6;
  v75 = a2;
  v73 = a1;
  v59 = 29 - __clz(a4 - 1);
  v60 = a4;
  v61 = 32 - __clz(a4);
  v62 = 33 - __clz(v42);
  if (v61 >= v62)
  {
    v61 = v62;
  }

  if (v59 >= 6)
  {
    v59 = 6;
  }

  if (v61 > v59)
  {
    v59 = v61;
  }

  if (v59 <= 5)
  {
    v59 = 5;
  }

  if (v59 >= 0xC)
  {
    v63 = 12;
  }

  else
  {
    v63 = v59;
  }

  result = FSE_normalizeCount((v10 + 452), v63, v39, a4, v42, 0);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    result = FSE_writeNCount(v37, v38, v10 + 452, v42, v63);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v72 = result;
      result = FSE_buildCTable_wksp(v10, (v10 + 452), v42, v63, (v10 + 236), 0xA4uLL);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        result = FSE_compress_usingCTable(&v37[v72], v38 - v72, v10 + 493, v33, v10);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          v64 = result;
          a1 = v73;
          a6 = v74;
          a4 = v60;
          a2 = v75;
          if (v64)
          {
            v45 = v72 + v64;
            if (v72 + v64 > 0xFFFFFFFFFFFFFF88)
            {
              return v45;
            }

            if (v45 >= 2 && v45 < v60 >> 1)
            {
              *v73 = v45;
              return v45 + 1;
            }
          }

LABEL_60:
          if (a4 <= 0x80)
          {
LABEL_36:
            if (((a4 + 1) >> 1) + 1 > a2)
            {
              return -70;
            }

            v45 = ((a4 + 1) >> 1) + 1;
            *a1 = a4 + 127;
            *(v10 + v33 + 493) = 0;
            if (!a4)
            {
              return v45;
            }

            if (a4 < 0xF || (v46 = (v33 - 1) >> 1, v37 < v10 + ((v33 - 1) & 0xFFFFFFFFFFFFFFFELL) + 495) && v32 < &a1[v46 + 2])
            {
              v47 = 0;
              goto LABEL_43;
            }

            v65 = v46 + 1;
            if (a4 >= 0x3F)
            {
              v66 = v65 & 0xFFFFFFFFFFFFFFE0;
              v77 = vld2q_s8(v32);
              v67 = (v10 + 525);
              v79 = vld2q_s8(v67);
              *(a1 + 1) = vaddq_s8(vshlq_n_s8(v77.val[0], 4uLL), v77.val[1]);
              *(a1 + 17) = vaddq_s8(vshlq_n_s8(v79.val[0], 4uLL), v79.val[1]);
              if ((v65 & 0xFFFFFFFFFFFFFFE0) != 0x20)
              {
                v68 = (v10 + 557);
                v78 = vld2q_s8(v68);
                v69 = (v10 + 589);
                v80 = vld2q_s8(v69);
                *(a1 + 33) = vaddq_s8(vshlq_n_s8(v78.val[0], 4uLL), v78.val[1]);
                *(a1 + 49) = vaddq_s8(vshlq_n_s8(v80.val[0], 4uLL), v80.val[1]);
              }

              if (v65 == v66)
              {
                return v45;
              }

              if ((v65 & 0x18) == 0)
              {
                v47 = 2 * v66;
LABEL_43:
                v48 = &a1[(v47 >> 1) + 1];
                do
                {
                  *v48++ = *(v10 + v47 + 494) + 16 * *(v10 + v47 + 493);
                  v47 += 2;
                }

                while (v47 < v33);
                return v45;
              }
            }

            else
            {
              v66 = 0;
            }

            v70 = v65 & 0xFFFFFFFFFFFFFFF8;
            v71 = (v7 + 2 * v66 + a6 + 493);
            do
            {
              v76 = vld2_s8(v71);
              v71 += 16;
              *&a1[(v66 & 0x7FFFFFFFFFFFFFF8) + 1] = vadd_s8(vshl_n_s8(v76.val[0], 4uLL), v76.val[1]);
              v66 += 8;
            }

            while (v70 != v66);
            if (v65 == v70)
            {
              return v45;
            }

            v47 = 2 * v70;
            goto LABEL_43;
          }

          return -1;
        }
      }
    }
  }

  return result;
}

uint64_t HUF_buildCTable_wksp(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v156 = *MEMORY[0x1E69E9840];
  v7 = -a5 & 3;
  v8 = a6 - v7;
  if (a6 < v7)
  {
    v8 = 0;
  }

  if (v8 >> 8 < 0x13)
  {
    return -66;
  }

  if (a3 > 0xFF)
  {
    return -46;
  }

  v12 = a5 + v7;
  v13 = a5 + v7 + 8;
  v14 = a3;
  v15 = a5 + v7 + 4096;
  v149 = a3;
  v16 = a3 + 1;
  bzero((a5 + v7), 0x1300uLL);
  v18 = a2;
  v19 = v16;
  do
  {
    v21 = *v18++;
    v20 = v21;
    v22 = 189 - __clz(v21);
    if (v21 >= 0xA5)
    {
      v20 = v22;
    }

    ++*(v15 + 4 * v20);
    --v19;
  }

  while (v19);
  v23 = *(v12 + 4860);
  v24 = (v7 + a5 + 4856);
  v25 = -191;
  do
  {
    v23 += *v24;
    *v24 = v23;
    v24[1] = v23;
    v24 -= 2;
    v68 = __CFADD__(v25++, 1);
  }

  while (!v68);
  v26 = 0;
  v27 = v12 + 4102;
  do
  {
    v28 = a2[v26];
    v29 = 189 - __clz(v28);
    if (v28 < 0xA5)
    {
      v29 = a2[v26];
    }

    v30 = 4 * v29;
    v31 = *(v27 + v30);
    *(v27 + v30) = v31 + 1;
    v32 = v13 + 8 * v31;
    *v32 = v28;
    *(v32 + 6) = v26++;
  }

  while (v16 != v26);
  v33 = (v7 + a5 + 4758);
  v34 = 26;
  do
  {
    v35 = *(v33 - 1);
    v36 = *v33 - v35;
    if (v36 >= 2)
    {
      HUF_simpleQuickSort(v13 + 8 * v35, 0, (v36 - 1));
    }

    v33 += 2;
    --v34;
  }

  while (v34);
  v37 = 0;
  v38 = ((v7 | (8 * v14)) + a5 + 8);
  do
  {
    v40 = *v38;
    v38 -= 2;
    v39 = v40;
    --v37;
  }

  while (!v40);
  v41 = v14 + v37;
  v42 = v14 + v37 + 1;
  v43 = v13 + 8 * v42;
  if (a4)
  {
    v44 = a4;
  }

  else
  {
    v44 = 11;
  }

  v45 = v42;
  v46 = v42 + 255;
  *(v12 + 2056) = *(v43 - 8) + v39;
  *(v43 - 4) = 256;
  *(v43 + 4) = 256;
  v47 = v41 + 2;
  if (v42 < 2)
  {
    *v12 = 0x80000000;
    *(v13 + 8 * v46 + 7) = 0;
    goto LABEL_67;
  }

  LODWORD(v48) = v41 + 256;
  v49 = v14 + v37 - 1;
  v50 = v41 + 256;
  v51 = v41 + 255;
  if (v48 <= 257)
  {
    v48 = 257;
  }

  else
  {
    v48 = v48;
  }

  v52 = v48 - 256;
  if (v52 < 2)
  {
    v53 = 257;
LABEL_41:
    if (v50 <= 257)
    {
      v58 = 257;
    }

    else
    {
      v58 = v50;
    }

    v59 = v58 - v53 + 1;
    v60 = ((v7 | (8 * v53)) + a5 + 8);
    do
    {
      *v60 = 0x40000000;
      v60 += 2;
      --v59;
    }

    while (v59);
    goto LABEL_46;
  }

  v54 = v52 & 0xFFFFFFFFFFFFFFFELL;
  if (v50 <= 257)
  {
    v55 = 257;
  }

  else
  {
    v55 = v50;
  }

  v56 = (v55 - 256) & 0xFFFFFFFFFFFFFFFELL;
  v57 = (v7 + a5 + 2072);
  do
  {
    *(v57 - 2) = 0x40000000;
    *v57 = 0x40000000;
    v57 += 4;
    v56 -= 2;
  }

  while (v56);
  if (v52 != v54)
  {
    v53 = v54 + 257;
    goto LABEL_41;
  }

LABEL_46:
  *(a5 + v7) = 0x80000000;
  v61 = 257;
  if (v50 <= 257)
  {
    v62 = 257;
  }

  else
  {
    v62 = v50;
  }

  v63 = v62 - 256;
  v64 = (a5 + v7 + 2064);
  v65 = 256;
  do
  {
    v66 = *(v13 + 8 * v49);
    v67 = *(v13 + 8 * v65);
    v68 = v66 >= v67;
    v69 = v66 < v67;
    if (v68)
    {
      v70 = v65 + 1;
    }

    else
    {
      v70 = v65;
    }

    if (!v68)
    {
      v65 = v49;
    }

    v71 = v49 - v69;
    v72 = *(v13 + 8 * v71);
    v73 = *(v13 + 8 * v70);
    v74 = v72 >= v73;
    if (v72 < v73)
    {
      v75 = v71;
    }

    else
    {
      v75 = v70;
    }

    v76 = v13 + 8 * v65;
    v77 = v13 + 8 * v75;
    v78 = !v74;
    *v64 = *v77 + *v76;
    v64 += 2;
    if (v74)
    {
      v65 = v70 + 1;
    }

    else
    {
      v65 = v70;
    }

    v49 = v71 - v78;
    *(v77 + 4) = v61;
    *(v76 + 4) = v61++;
    --v63;
  }

  while (v63);
  *(v13 + 8 * v46 + 7) = 0;
  v79 = (v7 + a5 + 8 * v51 + 15);
  do
  {
    *v79 = *(v13 + 8 * *(v79 - 3) + 7) + 1;
    v79 -= 8;
    --v50;
  }

  while (v50 > 256);
LABEL_67:
  if ((v42 & 0x8000000000000000) == 0)
  {
    v80 = v47;
    v81 = (v7 + a5 + 15);
    do
    {
      *v81 = *(v13 + 8 * *(v81 - 3) + 7) + 1;
      v81 += 8;
      --v80;
    }

    while (v80);
  }

  v82 = *(v13 + 8 * v42 + 7);
  v83 = v82;
  v84 = v82 - v44;
  if (v82 > v44)
  {
    v83 = v44;
    v85 = *(v13 + 8 * v42 + 7);
    if (v44 >= v85)
    {
      v86 = 0;
      v89 = v14 + v37 + 1;
    }

    else
    {
      v86 = 0;
      v87 = (v7 + a5 + 8 * (v14 + v37 + 1) + 15);
      do
      {
        v86 += (1 << v84) + (-1 << (v82 - v85));
        *v87 = v44;
        LODWORD(v45) = v45 - 1;
        v88 = *(v87 - 8);
        v87 -= 8;
        LOBYTE(v85) = v88;
      }

      while (v44 < v88);
      v89 = v45;
      v45 = v45;
    }

    v90 = v89 + 1;
    v91 = v45 + 1;
    v92 = ((v7 | (8 * v45)) + a5 + 15);
    do
    {
      v93 = *v92;
      v92 -= 8;
      --v90;
      --v91;
    }

    while (v44 == v93);
    v94 = v86 >> v84;
    v153 = 0xF0F0F0F0F0F0F0F0;
    *&v95 = 0xF0F0F0F0F0F0F0F0;
    *(&v95 + 1) = 0xF0F0F0F0F0F0F0F0;
    v151 = v95;
    v152 = v95;
    v150 = v95;
    if ((v91 & 0x8000000000000000) == 0)
    {
      v96 = (v7 + a5 + 8 * v90 + 15);
      v97 = v44;
      do
      {
        v100 = *v96;
        v96 -= 8;
        v99 = v100;
        if (v97 > v100)
        {
          *(&v150 + v44 - v99) = v90;
          v98 = v90;
          v97 = v99;
        }

        else
        {
          v98 = v90;
        }

        --v90;
      }

      while (v98 > 0);
    }

    if (v94 >= 1)
    {
      do
      {
        v103 = __clz(v94);
        if (v103 == 31)
        {
          for (i = 1; i != 13; ++i)
          {
LABEL_97:
            if (*(&v150 + i) != -252645136)
            {
              break;
            }
          }
        }

        else
        {
          i = 32 - v103;
          while (1)
          {
            v105 = *(&v150 + i);
            v106 = i - 1;
            if (v105 != -252645136)
            {
              v107 = *(&v150 + v106);
              if (v107 == -252645136 || *(v13 + 8 * v105) <= (2 * *(v13 + 8 * v107)))
              {
                break;
              }
            }

            --i;
            if ((v106 & 0xFFFFFFFE) == 0)
            {
              i = 1;
              goto LABEL_97;
            }
          }

          if (i <= 0xC)
          {
            goto LABEL_97;
          }
        }

        v108 = i - 1;
        v109 = *(&v150 + i);
        v110 = *(&v150 + (i - 1));
        ++*(v13 + 8 * v109 + 7);
        if (v110 == -252645136)
        {
          v111 = v109;
        }

        else
        {
          v111 = v110;
        }

        *(&v150 + v108) = v111;
        v112 = -252645136;
        if (v109)
        {
          v113 = v109 - 1;
          if (v44 - i == *(v13 + 8 * v113 + 7))
          {
            v112 = v113;
          }

          else
          {
            v112 = -252645136;
          }
        }

        v101 = -1 << v108;
        *(&v150 + i) = v112;
        v102 = __OFADD__(v101, v94);
        v94 += v101;
      }

      while (!((v94 < 0) ^ v102 | (v94 == 0)));
    }

    if (v94 < 0)
    {
      LODWORD(v135) = DWORD1(v150);
      do
      {
        v136 = v135 + 252645135;
        if (v94 > (v135 + 252645135))
        {
          v136 = v94;
        }

        if (-v136 >= 3 && (v135 - v136 >= (v135 + 1) ? (v137 = v12 + 15 + 8 * (v135 + 1), v138 = v137 + 8 * ~v136 >= v137) : (v138 = 0), v138))
        {
          v140 = (-v136 | 0xFFFFFFFE) - v136;
          v139 = v135 + v140;
          v141 = v135 + 2;
          v142 = v140;
          do
          {
            v143 = v13 + 8 * v141;
            v144 = *(v143 + 7) - 1;
            --*(v13 + 8 * (v141 - 1) + 7);
            *(v143 + 7) = v144;
            v141 += 2;
            v142 -= 2;
          }

          while (v142);
          v94 += v140;
        }

        else
        {
          v139 = v135;
        }

        v145 = v139 + 1;
        v146 = v139 + 252645136;
        while (v146)
        {
          --*(v13 + 8 * v145++ + 7);
          ++v146;
          v68 = __CFADD__(v94++, 1);
          if (v68)
          {
            goto LABEL_107;
          }
        }

        v147 = (v7 + a5 + 15 + 8 * v91);
        LODWORD(v91) = v91 + 1;
        do
        {
          v148 = *v147;
          v147 -= 8;
          LODWORD(v91) = v91 - 1;
        }

        while (v44 == v148);
        v135 = v91 + 1;
        --*(v13 + 8 * v135 + 7);
        v119 = v94++ <= -2;
      }

      while (v119);
    }
  }

LABEL_107:
  v150 = 0uLL;
  WORD4(v151) = 0;
  *&v151 = 0;
  memset(v154, 0, sizeof(v154));
  v155 = 0;
  if ((v42 & 0x8000000000000000) == 0)
  {
    v114 = v47;
    v115 = (v7 + a5 + 15);
    do
    {
      v116 = *v115;
      v115 += 8;
      ++*(&v150 + v116);
      --v114;
    }

    while (v114);
  }

  if (v83)
  {
    v117 = 0;
    v118 = v83;
    do
    {
      *(v154 + v118) = v117;
      v117 = (*(&v150 + v118) + v117) >> 1;
      v119 = v118-- > 1;
    }

    while (v119);
  }

  v120 = a1 + 8;
  if (!v14)
  {
    v121 = 0;
LABEL_119:
    v128 = v16 - v121;
    v129 = ((v7 | (8 * v121)) + a5 + 15);
    do
    {
      v130 = *(v129 - 1);
      v131 = *v129;
      v129 += 8;
      *(v120 + 8 * v130) = v131;
      --v128;
    }

    while (v128);
    goto LABEL_121;
  }

  v121 = v16 & 0x1FE;
  v122 = (v7 + a5 + 23);
  v123 = v121;
  do
  {
    v124 = *(v122 - 9);
    v125 = *(v122 - 1);
    v126 = *(v122 - 8);
    v127 = *v122;
    v122 += 16;
    *(v120 + 8 * v124) = v126;
    *(v120 + 8 * v125) = v127;
    v123 -= 2;
  }

  while (v123);
  if (v121 != v16)
  {
    goto LABEL_119;
  }

LABEL_121:
  v132 = 8;
  do
  {
    v133 = *(a1 + v132);
    v134 = *(v154 + v133);
    *(v154 + v133) = v134 + 1;
    if (v133)
    {
      *(a1 + v132) = (v134 << -v133) | v133;
    }

    v132 += 8;
    --v16;
  }

  while (v16);
  *a1 = v83;
  *(a1 + 1) = v149;
  *(a1 + 2) = 0;
  result = v83;
  *(a1 + 6) = 0;
  return result;
}

uint64_t HUF_simpleQuickSort(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  if (a3 - a2 >= 8)
  {
    v13 = a3;
    if (a3 > a2)
    {
      do
      {
        while (1)
        {
          v14 = (v4 + 8 * v13);
          v15 = *v14;
          v16 = (v3 - 1);
          v17 = v13 - v3;
          v18 = 8 * v3;
          do
          {
            if (*(v4 + v18) > v15)
            {
              v16 = (v16 + 1);
              v19 = *(v4 + 8 * v16);
              *(v4 + 8 * v16) = *(v4 + v18);
              *(v4 + v18) = v19;
            }

            v18 += 8;
            --v17;
          }

          while (v17);
          v20 = *(v4 + 8 * (v16 + 1));
          *(v4 + 8 * (v16 + 1)) = *v14;
          *v14 = v20;
          if (v16 + 1 - v3 < v13 - (v16 + 1))
          {
            break;
          }

          result = HUF_simpleQuickSort(v4, (v16 + 2), v13);
          v13 = v16;
          if (v3 >= v16)
          {
            return result;
          }
        }

        result = HUF_simpleQuickSort(v4, v3, v16);
        v3 = (v16 + 2);
      }

      while (v3 < v13);
    }
  }

  else if (v5 >= 1)
  {
    v6 = result + 8 * a2;
    v7 = (v5 + 1);
    v8 = 1;
    do
    {
      v9 = *(v6 + 8 * v8);
      v10 = v8;
      while (1)
      {
        v11 = v10 - 1;
        v12 = (v6 + 8 * (v10 - 1));
        if (*v12 >= v9)
        {
          break;
        }

        *(v6 + 8 * v10--) = *v12;
        if (v11 + 1 <= 1)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      *(v6 + 8 * v10) = v9;
      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

unint64_t HUF_estimateCompressedSize(uint64_t a1, uint32x4_t *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a3 + 1;
  if (a3 >= 7)
  {
    v4 = v3 & 0xFFFFFFF8;
    v7 = a2 + 1;
    v8 = (a1 + 40);
    v9 = 0uLL;
    v10.i64[0] = 255;
    v10.i64[1] = 255;
    v11 = v4;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = v8[-2];
      v16 = v8[-1];
      v17 = *v8;
      v18 = v8[1];
      v8 += 4;
      v19 = v7[-1];
      v20 = vuzp1q_s32(vandq_s8(v15, v10), vandq_s8(v16, v10));
      v21 = vuzp1q_s32(vandq_s8(v17, v10), vandq_s8(v18, v10));
      v12 = vmlal_high_u32(v12, v20, v19);
      v9 = vmlal_u32(v9, *v20.i8, *v19.i8);
      v14 = vmlal_high_u32(v14, v21, *v7);
      v13 = vmlal_u32(v13, *v21.i8, *v7->i8);
      v7 += 2;
      v11 -= 8;
    }

    while (v11);
    v5 = vaddvq_s64(vaddq_s64(vaddq_s64(v13, v9), vaddq_s64(v14, v12)));
    if (v4 == v3)
    {
      return v5 >> 3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v22 = v3 - v4;
  v23 = &a2->i32[v4];
  v24 = (a1 + 8 * v4 + 8);
  do
  {
    v26 = *v24;
    v24 += 8;
    v25 = v26;
    v27 = *v23++;
    v5 += v25 * v27;
    --v22;
  }

  while (v22);
  return v5 >> 3;
}

BOOL HUF_validateCTable(uint64_t a1, int32x4_t *a2, unsigned int a3)
{
  if (*(a1 + 1) < a3)
  {
    return 0;
  }

  v4 = a3 + 1;
  if (a3 < 7)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = v4 & 0x7FFFFFF8;
  v7 = (a1 + 40);
  v8 = a2 + 1;
  v9 = 0uLL;
  v10.i64[0] = 255;
  v10.i64[1] = 255;
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  v12 = v5;
  v13 = 0uLL;
  do
  {
    v15 = v7[-2];
    v14 = v7[-1];
    v17 = *v7;
    v16 = v7[1];
    v7 += 4;
    v9 = vorrq_s8(v9, vandq_s8(vbicq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v15, v10)), vceqzq_s64(vandq_s8(v14, v10))), vceqzq_s32(v8[-1])), v11));
    v13 = vorrq_s8(v13, vandq_s8(vbicq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v17, v10)), vceqzq_s64(vandq_s8(v16, v10))), vceqzq_s32(*v8)), v11));
    v8 += 2;
    v12 -= 8;
  }

  while (v12);
  v18 = vorrq_s8(v13, v9);
  *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  v6 = v18.i32[0] | v18.i32[1];
  if (v5 != v4)
  {
LABEL_8:
    v19 = v4 - v5;
    v20 = (a1 + 8 * v5 + 8);
    v21 = &a2->i32[v5];
    do
    {
      v22 = *v21++;
      v25 = v22 == 0;
      v24 = *v20;
      v20 += 8;
      v23 = v24;
      v25 = !v25 && v23 == 0;
      v26 = v25;
      v6 |= v26;
      --v19;
    }

    while (v19);
  }

  return v6 == 0;
}

uint64_t HUF_compress1X_usingCTable_internal(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= 8)
  {
    return 0;
  }

  v6 = *a5;
  v5 = a5 + 1;
  v7 = v6;
  v8 = (a1 + a2 - 8);
  if (((v6 * a4) >> 3) + 8 > a2 || v7 >= 0xC)
  {
    if (a4 <= 0)
    {
      v10 = -(-a4 & 3);
    }

    else
    {
      v10 = a4 & 3;
    }

    if (v10 < 1)
    {
      v12 = 0;
      v17 = 0;
      v18 = a1;
      if ((a4 & 7) == 0)
      {
LABEL_18:
        if (a4 >= 1)
        {
          v29 = a4;
          v30 = a3 - 4;
          do
          {
            v31 = v5[*(v30 + v29 + 3)];
            v32 = (v12 >> v31) | v31;
            v33 = v31 + v17;
            v34 = v5[*(v30 + v29 + 2)];
            v35 = v5[*(v30 + v29 + 1)];
            v36 = (((v32 >> v34) | v34) >> v35) | v35;
            v37 = v35 + v34 + v33;
            v38 = v5[*(v30 + v29)];
            v39 = (v36 >> v38) | v38 & 0xFFFFFFFFFFFFFF00;
            v40 = v38 + v37;
            *v18 = v39 >> -v40;
            v41 = (v18 + (v40 >> 3));
            v42 = v5[*(v30 + v29 - 1)];
            v43 = v5[*(v30 + v29 - 2)];
            v44 = (v42 >> v43) | v43;
            v45 = v43 + v42;
            v46 = v5[*(v30 + v29 - 3)];
            v47 = (v44 >> v46) | v46;
            v48 = v40 & 7;
            v49 = v5[*(v30 + v29 - 4)];
            if (v41 > v8)
            {
              v41 = (a1 + a2 - 8);
            }

            v50 = (v47 >> v49) | v49 & 0xFFFFFFFFFFFFFF00;
            v51 = v49 + v46 + v45;
            v12 = v50 | (v39 >> v51);
            v52 = v51 + v48;
            v53 = v52;
            v54 = v12 >> -v52;
            v17 = v52 & 7;
            *v41 = v54;
            v18 = (v41 + (v53 >> 3));
            if (v18 > v8)
            {
              v18 = (a1 + a2 - 8);
            }

            v55 = v29 > 8;
            v29 -= 8;
          }

          while (v55);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = (a3 + a4 - 1);
      v14 = v10 + 1;
      do
      {
        v15 = *v13--;
        v16 = v5[v15];
        v12 = (v12 >> v16) | v16 & 0xFFFFFFFFFFFFFF00;
        v11 += v16;
        --v14;
      }

      while (v14 > 1);
      LODWORD(a4) = a4 - v10;
      v17 = v11 & 7;
      *a1 = v12 >> -v11;
      v18 = (a1 + (v11 >> 3));
      if (v18 > v8)
      {
        v18 = (a1 + a2 - 8);
      }

      if ((a4 & 7) == 0)
      {
        goto LABEL_18;
      }
    }

    v19 = a3 + a4;
    v20 = v5[*(v19 - 1)];
    v21 = (v12 >> v20) | v20;
    v22 = v20 + v17;
    v23 = v5[*(v19 - 2)];
    v24 = v5[*(v19 - 3)];
    a4 = a4 - 4;
    v25 = v5[*(a3 + a4)];
    v12 = (((((v21 >> v23) | v23) >> v24) | v24) >> v25) | v25 & 0xFFFFFFFFFFFFFF00;
    v26 = v25 + v24 + v23 + v22;
    v27 = v26;
    v28 = v12 >> -v26;
    v17 = v26 & 7;
    *v18 = v28;
    v18 = (v18 + (v27 >> 3));
    if (v18 > v8)
    {
      v18 = (a1 + a2 - 8);
    }

    goto LABEL_18;
  }

  if (v7 <= 8)
  {
    if (v7 == 7)
    {
      if (a4 <= 0)
      {
        v85 = -(-a4 & 7);
      }

      else
      {
        v85 = a4 & 7;
      }

      if (v85 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v86 = 0;
        v12 = 0;
        v87 = (a3 + a4 - 1);
        v88 = v85 + 1;
        do
        {
          v89 = *v87--;
          v90 = v5[v89];
          v12 = (v12 >> v90) | v90 & 0xFFFFFFFFFFFFFF00;
          v86 += v90;
          --v88;
        }

        while (v88 > 1);
        LODWORD(a4) = a4 - v85;
        v17 = v86 & 7;
        *a1 = v12 >> -v86;
        v18 = (a1 + (v86 >> 3));
      }

      if ((a4 & 0xF) != 0)
      {
        v175 = a3 + a4;
        v176 = v5[*(v175 - 1)];
        v177 = (v12 >> v176) | v176;
        v178 = v176 + v17;
        v179 = v5[*(v175 - 2)];
        v180 = v5[*(v175 - 3)];
        v181 = (((v177 >> v179) | v179) >> v180) | v180;
        v182 = v180 + v179 + v178;
        v183 = v5[*(v175 - 4)];
        v184 = v5[*(v175 - 5)];
        v185 = (((v181 >> v183) | v183) >> v184) | v184;
        LOBYTE(v183) = v184 + v183;
        v186 = v5[*(v175 - 6)];
        v187 = v5[*(v175 - 7)];
        a4 = a4 - 8;
        v188 = v5[*(a3 + a4)];
        v12 = (((((v185 >> v186) | v186) >> v187) | v187) >> v188) | v188 & 0xFFFFFFFFFFFFFF00;
        v189 = v188 + v187 + v186 + v183 + v182;
        v190 = v189;
        v191 = v12 >> -v189;
        v17 = v189 & 7;
        *v18 = v191;
        v18 = (v18 + (v190 >> 3));
      }

      if (a4 >= 1)
      {
        v192 = a4;
        v193 = a3 - 8;
        do
        {
          v194 = v5[*(v193 + v192 + 7)];
          v195 = (v12 >> v194) | v194;
          v196 = v194 + v17;
          v197 = v5[*(v193 + v192 + 6)];
          v198 = v5[*(v193 + v192 + 5)];
          v199 = (((v195 >> v197) | v197) >> v198) | v198;
          v200 = v198 + v197 + v196;
          v201 = v5[*(v193 + v192 + 4)];
          v202 = v5[*(v193 + v192 + 3)];
          v203 = (((v199 >> v201) | v201) >> v202) | v202;
          LOBYTE(v201) = v202 + v201;
          v204 = v5[*(v193 + v192 + 2)];
          v205 = v204 + v201 + v200;
          v206 = v5[*(v193 + v192 + 1)];
          v207 = (((v203 >> v204) | v204) >> v206) | v206;
          v208 = v5[*(v193 + v192)];
          v209 = (v207 >> v208) | v208 & 0xFFFFFFFFFFFFFF00;
          v210 = v208 + v206 + v205;
          *v18 = v209 >> -v210;
          v211 = v5[*(v193 + v192 - 1)];
          v212 = v5[*(v193 + v192 - 2)];
          v213 = (v211 >> v212) | v212;
          LOBYTE(v211) = v212 + v211;
          v214 = v5[*(v193 + v192 - 3)];
          v215 = v5[*(v193 + v192 - 4)];
          v216 = (((v213 >> v214) | v214) >> v215) | v215;
          LOBYTE(v211) = v215 + v214 + v211;
          v217 = v5[*(v193 + v192 - 5)];
          v218 = v5[*(v193 + v192 - 6)];
          v219 = v5[*(v193 + v192 - 7)];
          v220 = (v18 + (v210 >> 3));
          v221 = v5[*(v193 + v192 - 8)];
          v222 = (((((((v216 >> v217) | v217) >> v218) | v218) >> v219) | v219) >> v221) | v221 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v221) = v221 + v219 + v218 + v217 + v211;
          v12 = v222 | (v209 >> v221);
          v223 = v221 + (v210 & 7);
          v224 = v223;
          v225 = v12 >> -v223;
          v17 = v223 & 7;
          *v220 = v225;
          v18 = (v220 + (v224 >> 3));
          v55 = v192 > 0x10;
          v192 -= 16;
        }

        while (v55);
      }
    }

    else
    {
      if (v7 != 8)
      {
LABEL_63:
        v91 = a4 % 9;
        if (a4 % 9 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v92 = 0;
          v12 = 0;
          v93 = (a3 + a4 - 1);
          v94 = v91 + 1;
          do
          {
            v95 = *v93--;
            v96 = v5[v95];
            v12 = (v12 >> v96) | v96 & 0xFFFFFFFFFFFFFF00;
            v92 += v96;
            --v94;
          }

          while (v94 > 1);
          LODWORD(a4) = a4 - v91;
          v17 = v92 & 7;
          *a1 = v12 >> -v92;
          v18 = (a1 + (v92 >> 3));
        }

        HIDWORD(v309) = 954437177 * a4 + 238609294;
        LODWORD(v309) = HIDWORD(v309);
        if ((v309 >> 1) >= 0xE38E38F)
        {
          v310 = a3 + a4;
          v311 = v5[*(v310 - 1)];
          v312 = (v12 >> v311) | v311;
          v313 = v311 + v17;
          v314 = v5[*(v310 - 2)];
          v315 = v5[*(v310 - 3)];
          v316 = (((v312 >> v314) | v314) >> v315) | v315;
          v317 = v315 + v314 + v313;
          v318 = v5[*(v310 - 4)];
          v319 = v5[*(v310 - 5)];
          v320 = (((v316 >> v318) | v318) >> v319) | v319;
          LOBYTE(v318) = v319 + v318;
          v321 = v5[*(v310 - 6)];
          v322 = v321 + v318 + v317;
          v323 = v5[*(v310 - 7)];
          v324 = v5[*(v310 - 8)];
          a4 = a4 - 9;
          v325 = v5[*(a3 + a4)];
          v12 = (((((((v320 >> v321) | v321) >> v323) | v323) >> v324) | v324) >> v325) | v325;
          v326 = v325 + v324 + v323 + v322;
          v327 = v326;
          v328 = v12 >> -v326;
          v17 = v326 & 7;
          *v18 = v328;
          v18 = (v18 + (v327 >> 3));
        }

        if (a4 >= 1)
        {
          v329 = a4;
          v330 = a3 - 9;
          do
          {
            v331 = v5[*(v330 + v329 + 8)];
            v332 = (v12 >> v331) | v331;
            v333 = v331 + v17;
            v334 = v5[*(v330 + v329 + 7)];
            v335 = v5[*(v330 + v329 + 6)];
            v336 = (((v332 >> v334) | v334) >> v335) | v335;
            v337 = v335 + v334 + v333;
            v338 = v5[*(v330 + v329 + 5)];
            v339 = v5[*(v330 + v329 + 4)];
            v340 = (((v336 >> v338) | v338) >> v339) | v339;
            v341 = v5[*(v330 + v329 + 3)];
            v342 = v341 + v339 + v338 + v337;
            v343 = v5[*(v330 + v329 + 2)];
            v344 = v5[*(v330 + v329 + 1)];
            v345 = (((((v340 >> v341) | v341) >> v343) | v343) >> v344) | v344;
            v346 = v5[*(v330 + v329)];
            v347 = (v345 >> v346) | v346;
            v348 = v346 + v344 + v343 + v342;
            *v18 = v347 >> -v348;
            v349 = v5[*(v330 + v329 - 1)];
            v350 = v5[*(v330 + v329 - 2)];
            v351 = (v349 >> v350) | v350;
            LOBYTE(v349) = v350 + v349;
            v352 = v5[*(v330 + v329 - 3)];
            v353 = v5[*(v330 + v329 - 4)];
            v354 = (((v351 >> v352) | v352) >> v353) | v353;
            LOBYTE(v349) = v353 + v352 + v349;
            v355 = v5[*(v330 + v329 - 5)];
            v356 = v5[*(v330 + v329 - 6)];
            v357 = (((v354 >> v355) | v355) >> v356) | v356;
            LOBYTE(v355) = v356 + v355;
            v358 = v5[*(v330 + v329 - 7)];
            LOBYTE(v349) = v358 + v355 + v349;
            v359 = v5[*(v330 + v329 - 8)];
            v360 = (v18 + (v348 >> 3));
            v361 = v5[*(v330 + v329 - 9)];
            LOBYTE(v349) = v361 + v359 + v349;
            v12 = (((((v357 >> v358) | v358) >> v359) | v359) >> v361) | v361 | (v347 >> v349);
            v362 = v349 + (v348 & 7);
            v363 = v362;
            v364 = v12 >> -v362;
            v17 = v362 & 7;
            *v360 = v364;
            v18 = (v360 + (v363 >> 3));
            v55 = v329 > 0x12;
            v329 -= 18;
          }

          while (v55);
        }

        goto LABEL_25;
      }

      v67 = a4 % 7;
      if (a4 % 7 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v68 = 0;
        v12 = 0;
        v69 = (a3 + a4 - 1);
        v70 = v67 + 1;
        do
        {
          v71 = *v69--;
          v72 = v5[v71];
          v12 = (v12 >> v72) | v72 & 0xFFFFFFFFFFFFFF00;
          v68 += v72;
          --v70;
        }

        while (v70 > 1);
        LODWORD(a4) = a4 - v67;
        v17 = v68 & 7;
        *a1 = v12 >> -v68;
        v18 = (a1 + (v68 >> 3));
      }

      HIDWORD(v262) = -1227133513 * a4 + 306783378;
      LODWORD(v262) = HIDWORD(v262);
      if ((v262 >> 1) >= 0x12492493)
      {
        v263 = a3 + a4;
        v264 = v5[*(v263 - 1)];
        v265 = (v12 >> v264) | v264;
        v266 = v264 + v17;
        v267 = v5[*(v263 - 2)];
        v268 = v5[*(v263 - 3)];
        v269 = (((v265 >> v267) | v267) >> v268) | v268;
        v270 = v268 + v267 + v266;
        v271 = v5[*(v263 - 4)];
        v272 = v5[*(v263 - 5)];
        v273 = v5[*(v263 - 6)];
        a4 = a4 - 7;
        v274 = v5[*(a3 + a4)];
        v12 = (((((((v269 >> v271) | v271) >> v272) | v272) >> v273) | v273) >> v274) | v274 & 0xFFFFFFFFFFFFFF00;
        v275 = v274 + v273 + v272 + v271 + v270;
        v276 = v275;
        v277 = v12 >> -v275;
        v17 = v275 & 7;
        *v18 = v277;
        v18 = (v18 + (v276 >> 3));
      }

      if (a4 >= 1)
      {
        v278 = a4;
        v279 = a3 - 7;
        do
        {
          v280 = v5[*(v279 + v278 + 6)];
          v281 = (v12 >> v280) | v280;
          v282 = v280 + v17;
          v283 = v5[*(v279 + v278 + 5)];
          v284 = v5[*(v279 + v278 + 4)];
          v285 = (((v281 >> v283) | v283) >> v284) | v284;
          v286 = v284 + v283 + v282;
          v287 = v5[*(v279 + v278 + 3)];
          v288 = v5[*(v279 + v278 + 2)];
          v289 = (((v285 >> v287) | v287) >> v288) | v288;
          LOBYTE(v287) = v288 + v287;
          v290 = v5[*(v279 + v278 + 1)];
          v291 = v290 + v287 + v286;
          v292 = v5[*(v279 + v278)];
          v293 = (((v289 >> v290) | v290) >> v292) | v292 & 0xFFFFFFFFFFFFFF00;
          v294 = v292 + v291;
          *v18 = v293 >> -v294;
          v295 = v5[*(v279 + v278 - 1)];
          v296 = v5[*(v279 + v278 - 2)];
          v297 = (v295 >> v296) | v296;
          LOBYTE(v295) = v296 + v295;
          v298 = v5[*(v279 + v278 - 3)];
          v299 = v5[*(v279 + v278 - 4)];
          v300 = (((v297 >> v298) | v298) >> v299) | v299;
          LOBYTE(v295) = v299 + v298 + v295;
          v301 = v5[*(v279 + v278 - 5)];
          v302 = v5[*(v279 + v278 - 6)];
          v303 = (v18 + (v294 >> 3));
          v304 = v5[*(v279 + v278 - 7)];
          v305 = (((((v300 >> v301) | v301) >> v302) | v302) >> v304) | v304 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v304) = v304 + v302 + v301 + v295;
          v12 = v305 | (v293 >> v304);
          v306 = v304 + (v294 & 7);
          v307 = v306;
          v308 = v12 >> -v306;
          v17 = v306 & 7;
          *v303 = v308;
          v18 = (v303 + (v307 >> 3));
          v55 = v278 > 0xE;
          v278 -= 14;
        }

        while (v55);
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 9:
        v73 = a4 % 6;
        if (a4 % 6 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v74 = 0;
          v12 = 0;
          v75 = (a3 + a4 - 1);
          v76 = v73 + 1;
          do
          {
            v77 = *v75--;
            v78 = v5[v77];
            v12 = (v12 >> v78) | v78 & 0xFFFFFFFFFFFFFF00;
            v74 += v78;
            --v76;
          }

          while (v76 > 1);
          LODWORD(a4) = a4 - v73;
          v17 = v74 & 7;
          *a1 = v12 >> -v74;
          v18 = (a1 + (v74 >> 3));
        }

        HIDWORD(v97) = -1431655765 * a4 + 715827880;
        LODWORD(v97) = HIDWORD(v97);
        if ((v97 >> 2) >= 0x15555555)
        {
          v98 = a3 + a4;
          v99 = v5[*(v98 - 1)];
          v100 = (v12 >> v99) | v99;
          v101 = v99 + v17;
          v102 = v5[*(v98 - 2)];
          v103 = v5[*(v98 - 3)];
          v104 = (((v100 >> v102) | v102) >> v103) | v103;
          v105 = v103 + v102 + v101;
          v106 = v5[*(v98 - 4)];
          v107 = v5[*(v98 - 5)];
          a4 = a4 - 6;
          v108 = v5[*(a3 + a4)];
          v12 = (((((v104 >> v106) | v106) >> v107) | v107) >> v108) | v108 & 0xFFFFFFFFFFFFFF00;
          v109 = v108 + v107 + v106 + v105;
          v110 = v109;
          v111 = v12 >> -v109;
          v17 = v109 & 7;
          *v18 = v111;
          v18 = (v18 + (v110 >> 3));
        }

        if (a4 >= 1)
        {
          v112 = a4;
          v113 = a3 - 6;
          do
          {
            v114 = v5[*(v113 + v112 + 5)];
            v115 = (v12 >> v114) | v114;
            v116 = v114 + v17;
            v117 = v5[*(v113 + v112 + 4)];
            v118 = v5[*(v113 + v112 + 3)];
            v119 = (((v115 >> v117) | v117) >> v118) | v118;
            v120 = v118 + v117 + v116;
            v121 = v5[*(v113 + v112 + 2)];
            v122 = v5[*(v113 + v112 + 1)];
            v123 = (((v119 >> v121) | v121) >> v122) | v122;
            LOBYTE(v121) = v122 + v121;
            v124 = v5[*(v113 + v112)];
            v125 = (v123 >> v124) | v124 & 0xFFFFFFFFFFFFFF00;
            v126 = v124 + v121 + v120;
            *v18 = v125 >> -v126;
            v127 = v5[*(v113 + v112 - 1)];
            v128 = v5[*(v113 + v112 - 2)];
            v129 = (v127 >> v128) | v128;
            LOBYTE(v127) = v128 + v127;
            v130 = v5[*(v113 + v112 - 3)];
            v131 = v5[*(v113 + v112 - 4)];
            v132 = (((v129 >> v130) | v130) >> v131) | v131;
            LOBYTE(v127) = v131 + v130 + v127;
            v133 = v5[*(v113 + v112 - 5)];
            v134 = (v18 + (v126 >> 3));
            v135 = v5[*(v113 + v112 - 6)];
            v136 = (((v132 >> v133) | v133) >> v135) | v135 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v135) = v135 + v133 + v127;
            v12 = v136 | (v125 >> v135);
            v137 = v135 + (v126 & 7);
            v138 = v137;
            v139 = v12 >> -v137;
            v17 = v137 & 7;
            *v134 = v139;
            v18 = (v134 + (v138 >> 3));
            v55 = v112 > 0xC;
            v112 -= 12;
          }

          while (v55);
        }

        break;
      case 10:
        v79 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v80 = 0;
          v12 = 0;
          v81 = (a3 + a4 - 1);
          v82 = v79 + 1;
          do
          {
            v83 = *v81--;
            v84 = v5[v83];
            v12 = (v12 >> v84) | v84 & 0xFFFFFFFFFFFFFF00;
            v80 += v84;
            --v82;
          }

          while (v82 > 1);
          LODWORD(a4) = a4 - v79;
          v17 = v80 & 7;
          *a1 = v12 >> -v80;
          v18 = (a1 + (v80 >> 3));
        }

        HIDWORD(v140) = -858993459 * a4 + 429496728;
        LODWORD(v140) = HIDWORD(v140);
        if ((v140 >> 1) >= 0x19999999)
        {
          v141 = a3 + a4;
          v142 = v5[*(v141 - 1)];
          v143 = (v12 >> v142) | v142;
          v144 = v142 + v17;
          v145 = v5[*(v141 - 2)];
          v146 = v5[*(v141 - 3)];
          v147 = v5[*(v141 - 4)];
          a4 = a4 - 5;
          v148 = v5[*(a3 + a4)];
          v12 = (((((((v143 >> v145) | v145) >> v146) | v146) >> v147) | v147) >> v148) | v148;
          v149 = v148 + v147 + v146 + v145 + v144;
          v150 = v149;
          v151 = v12 >> -v149;
          v17 = v149 & 7;
          *v18 = v151;
          v18 = (v18 + (v150 >> 3));
        }

        if (a4 >= 1)
        {
          v152 = a4;
          v153 = a3 - 5;
          do
          {
            v154 = v5[*(v153 + v152 + 4)];
            v155 = (v12 >> v154) | v154;
            v156 = v154 + v17;
            v157 = v5[*(v153 + v152 + 3)];
            v158 = v5[*(v153 + v152 + 2)];
            v159 = (((v155 >> v157) | v157) >> v158) | v158;
            v160 = v158 + v157 + v156;
            v161 = v5[*(v153 + v152 + 1)];
            v162 = v5[*(v153 + v152)];
            v163 = (((v159 >> v161) | v161) >> v162) | v162;
            v164 = v162 + v161 + v160;
            *v18 = v163 >> -v164;
            v165 = v5[*(v153 + v152 - 1)];
            v166 = v5[*(v153 + v152 - 2)];
            v167 = (v165 >> v166) | v166;
            LOBYTE(v165) = v166 + v165;
            v168 = v5[*(v153 + v152 - 3)];
            v169 = v5[*(v153 + v152 - 4)];
            v170 = (v18 + (v164 >> 3));
            v171 = v5[*(v153 + v152 - 5)];
            LOBYTE(v165) = v171 + v169 + v168 + v165;
            v12 = (((((v167 >> v168) | v168) >> v169) | v169) >> v171) | v171 | (v163 >> v165);
            v172 = v165 + (v164 & 7);
            v173 = v172;
            v174 = v12 >> -v172;
            v17 = v172 & 7;
            *v170 = v174;
            v18 = (v170 + (v173 >> 3));
            v55 = v152 > 0xA;
            v152 -= 10;
          }

          while (v55);
        }

        break;
      case 11:
        v61 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v62 = 0;
          v12 = 0;
          v63 = (a3 + a4 - 1);
          v64 = v61 + 1;
          do
          {
            v65 = *v63--;
            v66 = v5[v65];
            v12 = (v12 >> v66) | v66 & 0xFFFFFFFFFFFFFF00;
            v62 += v66;
            --v64;
          }

          while (v64 > 1);
          LODWORD(a4) = a4 - v61;
          v17 = v62 & 7;
          *a1 = v12 >> -v62;
          v18 = (a1 + (v62 >> 3));
        }

        HIDWORD(v226) = -858993459 * a4 + 429496728;
        LODWORD(v226) = HIDWORD(v226);
        if ((v226 >> 1) >= 0x19999999)
        {
          v227 = a3 + a4;
          v228 = v5[*(v227 - 1)];
          v229 = (v12 >> v228) | v228;
          v230 = v228 + v17;
          v231 = v5[*(v227 - 2)];
          v232 = v5[*(v227 - 3)];
          v233 = v5[*(v227 - 4)];
          a4 = a4 - 5;
          v234 = v5[*(a3 + a4)];
          v12 = (((((((v229 >> v231) | v231) >> v232) | v232) >> v233) | v233) >> v234) | v234 & 0xFFFFFFFFFFFFFF00;
          v235 = v234 + v233 + v232 + v231 + v230;
          v236 = v235;
          v237 = v12 >> -v235;
          v17 = v235 & 7;
          *v18 = v237;
          v18 = (v18 + (v236 >> 3));
        }

        if (a4 >= 1)
        {
          v238 = a4;
          v239 = a3 - 5;
          do
          {
            v240 = v5[*(v239 + v238 + 4)];
            v241 = (v12 >> v240) | v240;
            v242 = v240 + v17;
            v243 = v5[*(v239 + v238 + 3)];
            v244 = v5[*(v239 + v238 + 2)];
            v245 = (((v241 >> v243) | v243) >> v244) | v244;
            v246 = v244 + v243 + v242;
            v247 = v5[*(v239 + v238 + 1)];
            v248 = v5[*(v239 + v238)];
            v249 = (((v245 >> v247) | v247) >> v248) | v248 & 0xFFFFFFFFFFFFFF00;
            v250 = v248 + v247 + v246;
            *v18 = v249 >> -v250;
            v251 = v5[*(v239 + v238 - 1)];
            v252 = v5[*(v239 + v238 - 2)];
            v253 = (v251 >> v252) | v252;
            LOBYTE(v251) = v252 + v251;
            v254 = v5[*(v239 + v238 - 3)];
            v255 = v5[*(v239 + v238 - 4)];
            v256 = (v18 + (v250 >> 3));
            v257 = v5[*(v239 + v238 - 5)];
            v258 = (((((v253 >> v254) | v254) >> v255) | v255) >> v257) | v257 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v257) = v257 + v255 + v254 + v251;
            v12 = v258 | (v249 >> v257);
            v259 = v257 + (v250 & 7);
            v260 = v259;
            v261 = v12 >> -v259;
            v17 = v259 & 7;
            *v256 = v261;
            v18 = (v256 + (v260 >> 3));
            v55 = v238 > 0xA;
            v238 -= 10;
          }

          while (v55);
        }

        break;
      default:
        goto LABEL_63;
    }
  }

LABEL_25:
  v56 = (v12 >> 1) | 0x8000000000000000;
  v57 = v17 + 1;
  v58 = (v17 + 1);
  *v18 = v56 >> -v58;
  v59 = (v18 + (v58 >> 3));
  if (v59 > v8)
  {
    v59 = v8;
  }

  if (v59 >= v8)
  {
    return 0;
  }

  if ((v57 & 7) != 0)
  {
    return v59 - a1 + 1;
  }

  else
  {
    return v59 - a1;
  }
}

char *HUF_compress4X_usingCTable_internal(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  result = 0;
  if (a2 >= 0x11 && a4 >= 0xC)
  {
    v10 = (a4 + 3) >> 2;
    result = HUF_compress1X_usingCTable_internal((a1 + 6), a2 - 6, a3, v10, a5);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      if ((result - 0x10000) < 0xFFFFFFFFFFFF0001)
      {
        return 0;
      }

      v12 = a1 + a2;
      *a1 = result;
      v13 = &result[a1 + 6];
      result = HUF_compress1X_usingCTable_internal(v13, a2 - (result + 6), a3 + v10, v10, a5);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        if ((result - 0x10000) < 0xFFFFFFFFFFFF0001)
        {
          return 0;
        }

        *(a1 + 2) = result;
        v14 = &result[v13];
        v15 = a3 + v10 + v10;
        result = HUF_compress1X_usingCTable_internal(v14, v12 - v14, v15, v10, a5);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          if ((result - 0x10000) < 0xFFFFFFFFFFFF0001)
          {
            return 0;
          }

          v16 = a3 + a4;
          *(a1 + 4) = result;
          v17 = &result[v14];
          result = HUF_compress1X_usingCTable_internal(&result[v14], v12 - &result[v14], v15 + v10, v16 - (v15 + v10), a5);
          if (result <= 0xFFFFFFFFFFFFFF88)
          {
            if ((result - 0x10000) < 0xFFFFFFFFFFFF0001)
            {
              return 0;
            }

            return &result[v17 - a1];
          }
        }
      }
    }
  }

  return result;
}

uint64_t HUF_optimalTableLog(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6, int32x4_t *a7, char a8)
{
  v9 = a1;
  if ((a8 & 2) != 0)
  {
    v74 = a5 - 748;
    v19 = a3 + 1;
    if (a3 == -1)
    {
      LODWORD(v20) = 0;
      goto LABEL_18;
    }

    if (v19 >= 8)
    {
      v27 = v19 & 0xFFFFFFF8;
      v33 = a7 + 1;
      v34 = 0uLL;
      v35 = v27;
      v36 = 0uLL;
      do
      {
        v34 = vsubq_s32(v34, vtstq_s32(v33[-1], v33[-1]));
        v36 = vsubq_s32(v36, vtstq_s32(*v33, *v33));
        v33 += 2;
        v35 -= 8;
      }

      while (v35);
      v28 = vaddvq_s32(vaddq_s32(v36, v34));
      if (v27 == v19)
      {
LABEL_46:
        v20 = 32 - __clz(v28);
        if (v20 > a1)
        {
          return v9;
        }

        if ((a3 & 0x80000000) != 0)
        {
LABEL_18:
          v21 = v20;
          v22 = HUF_buildCTable_wksp(a6, a7, a3, v20, a4, a5);
          v23 = -2;
          v24 = v9;
          if (v22 <= 0xFFFFFFFFFFFFFF88)
          {
            v25 = HUF_writeCTable_wksp((a4 + 748), v74, a6, a3, v22, a4, a5);
            if (v25 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v26 = -2;
            }

            else
            {
              v26 = v25;
            }

            if (v25 >= 0xFFFFFFFFFFFFFF89)
            {
              v24 = v9;
            }

            else
            {
              v23 = v26;
              v24 = v20;
            }
          }

          if (v20 != v9)
          {
            v29 = (v9 + 1);
            v30 = (v20 + 1);
            v9 = v24;
            while (1)
            {
              v31 = HUF_buildCTable_wksp(a6, a7, a3, v30, a4, a5);
              if (v31 <= 0xFFFFFFFFFFFFFF88)
              {
                if (v31 < v30 && v30 > v21)
                {
                  return v9;
                }

                v32 = HUF_writeCTable_wksp((a4 + 748), v74, a6, a3, v31, a4, a5);
                if (v32 <= 0xFFFFFFFFFFFFFF88)
                {
                  if (v32 > v23 + 1)
                  {
                    return v9;
                  }

                  if (v32 >= v23)
                  {
                    v9 = v9;
                  }

                  else
                  {
                    v23 = v32;
                    v9 = v30;
                  }
                }
              }

              if (v29 == ++v30)
              {
                return v9;
              }
            }
          }

          return v24;
        }

        v72 = v19 & 0xFFFFFFF8;
        v73 = a3 + 1;
        v40 = a1 + 1;
        v69 = (a6 + 40);
        v70 = &a7[1];
        v71 = a6 + 8;
        v41 = -2;
        v42 = v20;
        while (1)
        {
          v44 = HUF_buildCTable_wksp(a6, a7, a3, v42, a4, a5);
          if (v44 <= 0xFFFFFFFFFFFFFF88)
          {
            if (v44 < v42 && v42 > v20)
            {
              return v9;
            }

            v45 = HUF_writeCTable_wksp((a4 + 748), v74, a6, a3, v44, a4, a5);
            if (v45 <= 0xFFFFFFFFFFFFFF88)
            {
              break;
            }
          }

LABEL_54:
          if (v40 == ++v42)
          {
            return v9;
          }
        }

        v46.i64[0] = 255;
        v46.i64[1] = 255;
        if (v73 >= 8)
        {
          v49 = 0uLL;
          v50 = v69;
          v51 = v70;
          v52 = v72;
          v53 = 0uLL;
          v54 = 0uLL;
          v55 = 0uLL;
          do
          {
            v56 = v50[-2];
            v57 = v50[-1];
            v58 = *v50;
            v59 = v50[1];
            v50 += 4;
            v60 = v51[-1];
            v61 = vuzp1q_s32(vandq_s8(v56, v46), vandq_s8(v57, v46));
            v62 = vuzp1q_s32(vandq_s8(v58, v46), vandq_s8(v59, v46));
            v53 = vmlal_high_u32(v53, v61, v60);
            v49 = vmlal_u32(v49, *v61.i8, *v60.i8);
            v55 = vmlal_high_u32(v55, v62, *v51);
            v54 = vmlal_u32(v54, *v62.i8, *v51->i8);
            v51 += 2;
            v52 -= 8;
          }

          while (v52);
          v48 = vaddvq_s64(vaddq_s64(vaddq_s64(v54, v49), vaddq_s64(v55, v53)));
          v47 = v72;
          if (v72 == v73)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v47 = 0;
          v48 = 0;
        }

        v63 = v73 - v47;
        v64 = a7 + v47;
        v65 = (v71 + 8 * v47);
        do
        {
          v67 = *v65;
          v65 += 8;
          v66 = v67;
          v68 = *v64++;
          v48 += v66 * v68;
          --v63;
        }

        while (v63);
LABEL_50:
        v43 = v45 + (v48 >> 3);
        if (v43 > v41 + 1)
        {
          return v9;
        }

        if (v43 >= v41)
        {
          v9 = v9;
        }

        else
        {
          v41 = v43;
          v9 = v42;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v37 = v19 - v27;
    v38 = a7 + v27;
    do
    {
      if (*v38++)
      {
        ++v28;
      }

      --v37;
    }

    while (v37);
    goto LABEL_46;
  }

  v10 = 30 - __clz(a2 - 1);
  v11 = 32 - __clz(a2);
  v12 = 33 - __clz(a3);
  if (v11 >= v12)
  {
    v11 = v12;
  }

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = 11;
  }

  if (v10 >= v13)
  {
    v10 = v13;
  }

  if (v11 > v10)
  {
    v10 = v11;
  }

  if (v10 <= 5)
  {
    v10 = 5;
  }

  if (v10 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v10;
  }
}

unint64_t HUF_compress_internal(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, unint64_t a9, char *a10, _DWORD *a11, char a12)
{
  v86 = a5;
  v12 = -a8 & 7;
  v13 = a9 - v12;
  if (a9 >= v12)
  {
    v14 = (a8 + v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v13 >> 3 < 0x3E1)
  {
    return -66;
  }

  result = 0;
  if (a2 && a4)
  {
    if (a4 > 0x20000)
    {
      return -72;
    }

    if (a6 > 0xC)
    {
      return -44;
    }

    if (a5 > 0xFF)
    {
      return -46;
    }

    if (!a5)
    {
      a5 = 255;
      v86 = 255;
    }

    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = 11;
    }

    v18 = (a12 & 4) == 0 || a11 == 0;
    v19 = v18;
    if (!v18 && *a11 == 2)
    {
      v20 = a1 + a2;
      v21 = a1;
      v22 = a1;
      v23 = a4;
      v24 = a3;
      v25 = a7;
LABEL_29:
      i64 = a10;
LABEL_30:

      return HUF_compressCTable_internal(v21, v22, v20, v24, v23, v25, i64);
    }

    v82 = a1;
    v80 = a7;
    if (a4 >= 0xA000 && (a12 & 8) != 0)
    {
      v85 = a5;
      v27 = a4;
      v28 = a5;
      v29 = HIST_count_simple(v14, &v85, a3, 4096);
      v84 = v28;
      v30 = HIST_count_simple(v14, &v84, &a3[v27 - 4096], 4096);
      a4 = v27;
      if (v30 + v29 < 0x45)
      {
        return 0;
      }
    }

    v31 = a4;
    result = HIST_count_wksp(v14, &v86, a3, a4, &v14[192].i8[8]);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    if (result == v31)
    {
      *v82 = *a3;
      return 1;
    }

    v32 = result > (v31 >> 7) + 4;
    v21 = v82;
    if (!v32)
    {
      return 0;
    }

    if (a11)
    {
      if (*a11 == 1)
      {
        v33 = v86;
        if (HUF_validateCTable(a10, v14, v86))
        {
          v21 = v82;
          if ((v19 & 1) == 0)
          {
LABEL_58:
            v20 = v21 + a2;
            v22 = v21;
            v24 = a3;
            v23 = v31;
LABEL_59:
            v25 = v80;
            goto LABEL_29;
          }
        }

        else
        {
          *a11 = 0;
        }

LABEL_51:
        v35 = HUF_optimalTableLog(v17, v31, v33, &v14[192].i64[1], 0x1300uLL, v14[64].i64, v14, a12);
        result = HUF_buildCTable_wksp(v14[64].i64, v14, v33, v35, &v14[192].i64[1], 0x1300uLL);
        if (result > 0xFFFFFFFFFFFFFF88)
        {
          return result;
        }

        result = HUF_writeCTable_wksp(v82, a2, v14[64].i64, v33, result, &v14[192].i64[1], 0x2ECuLL);
        if (result > 0xFFFFFFFFFFFFFF88)
        {
          return result;
        }

        if (!a11)
        {
          if (result + 12 >= v31)
          {
            return 0;
          }

LABEL_80:
          if (a10)
          {
            v79 = result;
            memcpy(a10, &v14[64], 0x808uLL);
            result = v79;
          }

          v22 = &v82[result];
          v20 = &v82[a2];
          i64 = v14[64].i64;
          v21 = v82;
          v24 = a3;
          v23 = v31;
          v25 = v80;
          goto LABEL_30;
        }

        v23 = v31;
        if (!*a11)
        {
          if (result + 12 >= v31)
          {
            return 0;
          }

          goto LABEL_79;
        }

        if ((v33 & 0x80000000) != 0)
        {
LABEL_83:
          v21 = v82;
          v20 = &v82[a2];
          v22 = v82;
          v24 = a3;
          goto LABEL_59;
        }

        v36 = v33 + 1;
        if (v33 >= 7)
        {
          v37 = v36 & 0xFFFFFFF8;
          v39 = v14 + 1;
          v40 = a10 + 40;
          v41 = 0uLL;
          v42.i64[0] = 255;
          v42.i64[1] = 255;
          v43 = v37;
          v44 = 0uLL;
          v45 = 0uLL;
          v46 = 0uLL;
          do
          {
            v47 = *(v40 - 2);
            v48 = *(v40 - 1);
            v49 = *v40;
            v50 = *(v40 + 1);
            v40 += 64;
            v51 = v39[-1];
            v52 = vuzp1q_s32(vandq_s8(v47, v42), vandq_s8(v48, v42));
            v53 = vuzp1q_s32(vandq_s8(v49, v42), vandq_s8(v50, v42));
            v44 = vmlal_high_u32(v44, v52, v51);
            v41 = vmlal_u32(v41, *v52.i8, *v51.i8);
            v46 = vmlal_high_u32(v46, v53, *v39);
            v45 = vmlal_u32(v45, *v53.i8, *v39->i8);
            v39 += 2;
            v43 -= 8;
          }

          while (v43);
          v38 = vaddvq_s64(vaddq_s64(vaddq_s64(v45, v41), vaddq_s64(v46, v44)));
          if (v37 == v36)
          {
LABEL_70:
            if (v33 >= 7)
            {
              v62 = &v14[64].u64[1];
              v60 = v36 & 0xFFFFFFF8;
              v63 = v14 + 1;
              v64 = 0uLL;
              v65.i64[0] = 255;
              v65.i64[1] = 255;
              v66 = v60;
              v67 = 0uLL;
              v68 = 0uLL;
              v69 = 0uLL;
              do
              {
                v70 = v63[-1];
                v71 = vuzp1q_s32(vandq_s8(*v62, v65), vandq_s8(v62[1], v65));
                v72 = vuzp1q_s32(vandq_s8(v62[2], v65), vandq_s8(v62[3], v65));
                v67 = vmlal_high_u32(v67, v71, v70);
                v64 = vmlal_u32(v64, *v71.i8, *v70.i8);
                v69 = vmlal_high_u32(v69, v72, *v63);
                v68 = vmlal_u32(v68, *v72.i8, *v63->i8);
                v63 += 2;
                v62 += 4;
                v66 -= 8;
              }

              while (v66);
              v61 = vaddvq_s64(vaddq_s64(vaddq_s64(v68, v64), vaddq_s64(v69, v67)));
              if (v60 == v36)
              {
LABEL_77:
                v23 = v31;
                if (result + 12 < v31 && v38 >> 3 > result + (v61 >> 3))
                {
LABEL_79:
                  *a11 = 0;
                  goto LABEL_80;
                }

                goto LABEL_83;
              }
            }

            else
            {
              v60 = 0;
              v61 = 0;
            }

            v73 = v36 - v60;
            v74 = &v14->i32[v60];
            v75 = &v14[64].u8[8 * v60 + 8];
            do
            {
              v77 = *v75;
              v75 += 8;
              v76 = v77;
              v78 = *v74++;
              v61 += v76 * v78;
              --v73;
            }

            while (v73);
            goto LABEL_77;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        v54 = v36 - v37;
        v55 = &v14->i32[v37];
        v56 = &a10[8 * v37 + 8];
        do
        {
          v58 = *v56;
          v56 += 8;
          v57 = v58;
          v59 = *v55++;
          v38 += v57 * v59;
          --v54;
        }

        while (v54);
        goto LABEL_70;
      }

      if (*a11)
      {
        v34 = v19;
      }

      else
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v33 = v86;
    goto LABEL_51;
  }

  return result;
}

char *HUF_compressCTable_internal(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t *a7)
{
  v10 = a3 - a2;
  if (a6)
  {
    result = HUF_compress4X_usingCTable_internal(a2, v10, a4, a5, a7);
  }

  else
  {
    result = HUF_compress1X_usingCTable_internal(a2, v10, a4, a5, a7);
  }

  v12 = &result[a2 - a1];
  if (v12 >= a5 - 1)
  {
    v12 = 0;
  }

  if (!result)
  {
    v12 = 0;
  }

  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    return v12;
  }

  return result;
}

unint64_t ZSTD_fillDoubleHashTable(unint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 112);
  v5 = *(result + 272);
  v6 = *(result + 128);
  v7 = *(result + 8);
  v8 = *(result + 44);
  v9 = v7 + v8;
  v10 = a2 - 8;
  if (a4 != 1)
  {
    v22 = v9 + 2;
    if (v9 + 2 > v10)
    {
      return result;
    }

    v23 = *(result + 260);
    v24 = *(result + 264);
    result = 64;
    v25 = 64 - v23;
    v26 = 32 - v23;
    v27 = 64 - v24;
    if (!a3)
    {
      if (v5 > 6)
      {
        if (v5 == 8)
        {
          do
          {
            v41 = 0xCF1BBCDCB7A56463 * *(v22 - 2);
            *(v6 + 4 * (v41 >> v25)) = v8;
            *(v4 + 4 * (v41 >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }

        if (v5 == 7)
        {
          do
          {
            v39 = *(v22 - 2);
            result = (0xCF1BBCDCBFA56300 * v39) >> v25;
            *(v6 + 4 * result) = v8;
            *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v39) >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }
      }

      else
      {
        if (v5 == 5)
        {
          do
          {
            v40 = *(v22 - 2);
            result = (0xCF1BBCDCBB000000 * v40) >> v25;
            *(v6 + 4 * result) = v8;
            *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v40) >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }

        if (v5 == 6)
        {
          do
          {
            v38 = *(v22 - 2);
            result = (0xCF1BBCDCBF9B0000 * v38) >> v25;
            *(v6 + 4 * result) = v8;
            *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v38) >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }
      }

      do
      {
        result = 0xCF1BBCDCB7A56463 * *(v22 - 2);
        *(v6 + 4 * ((-1640531535 * *(v22 - 2)) >> v26)) = v8;
        *(v4 + 4 * (result >> v27)) = v8;
        v22 += 3;
        LODWORD(v8) = v8 + 3;
      }

      while (v22 <= v10);
      return result;
    }

    v28 = 0;
    result = 0xCF1BBCDCBF9B0000;
    while (1)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCBFA56300 * v29;
          goto LABEL_36;
        }

        if (v5 == 8)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCB7A56463 * v29;
          goto LABEL_36;
        }
      }

      else
      {
        if (v5 == 5)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCBB000000 * v29;
          goto LABEL_36;
        }

        if (v5 == 6)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCBF9B0000 * v29;
LABEL_36:
          v31 = v30 >> v25;
          goto LABEL_37;
        }
      }

      v31 = (-1640531535 * *(v7 + v8)) >> v26;
      v29 = *(v7 + v8);
LABEL_37:
      *(v6 + 4 * v31) = v8 + v28;
      *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v29) >> v27)) = v8 + v28;
      v32 = (0xCF1BBCDCB7A56463 * *(v7 + v8 + 1)) >> v27;
      if (!*(v4 + 4 * v32))
      {
        *(v4 + 4 * v32) = v8 + v28 + 1;
      }

      v33 = (0xCF1BBCDCB7A56463 * *(v7 + v8 + 2)) >> v27;
      if (!*(v4 + 4 * v33))
      {
        *(v4 + 4 * v33) = v8 + v28 + 2;
      }

      v7 += 3;
      v28 += 3;
      if (v7 + v8 + 2 > v10)
      {
        return result;
      }
    }
  }

  if (v9 + 2 <= v10)
  {
    v11 = *(result + 260);
    v12 = *(result + 264);
    result = (56 - v11);
    v13 = 24 - v11;
    v14 = 56 - v12;
    if (a3)
    {
      v15 = (v8 + v7 + 2);
      for (i = (v8 << 8) + 512; ; i += 768)
      {
        if (v5 > 6)
        {
          if (v5 == 7)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCBFA56300 * v17;
            goto LABEL_16;
          }

          if (v5 == 8)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCB7A56463 * v17;
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 == 5)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCBB000000 * v17;
            goto LABEL_16;
          }

          if (v5 == 6)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCBF9B0000 * v17;
LABEL_16:
            v19 = v18 >> result;
            goto LABEL_17;
          }
        }

        v19 = (-1640531535 * *(v15 - 2)) >> v13;
        v17 = *(v15 - 2);
LABEL_17:
        *(v6 + ((v19 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + v19 - 512;
        *(v4 + (((0xCF1BBCDCB7A56463 * v17) >> v14 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + ((0xCF1BBCDCB7A56463 * v17) >> v14) - 512;
        v20 = (0xCF1BBCDCB7A56463 * *(v15 - 1)) >> v14;
        if (!*(v4 + 4 * (v20 >> 8)))
        {
          *(v4 + 4 * (v20 >> 8)) = i + v20 - 256;
        }

        v21 = (0xCF1BBCDCB7A56463 * *v15) >> v14;
        if (!*(v4 + 4 * (v21 >> 8)))
        {
          *(v4 + 4 * (v21 >> 8)) = i + v21;
        }

        v15 = (v15 + 3);
        if (v15 > v10)
        {
          return result;
        }
      }
    }

    v34 = v8 + v7 + 2;
    v35 = v8 << 8;
    do
    {
      if (v5 > 6)
      {
        if (v5 == 8)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCB7A56463 * v37) >> result;
          goto LABEL_43;
        }

        if (v5 == 7)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCBFA56300 * v37) >> result;
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 == 5)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCBB000000 * v37) >> result;
          goto LABEL_43;
        }

        if (v5 == 6)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCBF9B0000 * v37) >> result;
          goto LABEL_43;
        }
      }

      v36 = (-1640531535 * *(v34 - 2)) >> v13;
      v37 = *(v34 - 2);
LABEL_43:
      *(v6 + ((v36 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v35 + v36;
      *(v4 + (((0xCF1BBCDCB7A56463 * v37) >> v14 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v35 + ((0xCF1BBCDCB7A56463 * v37) >> v14);
      v34 += 3;
      v35 += 768;
    }

    while (v34 <= v10);
  }

  return result;
}

uint64_t ZSTD_compressBlock_doubleFast(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = *(a1 + 272);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v8 = *(a1 + 8);
  v9 = &a4[a5];
  v10 = a4 + a5 - v8;
  v11 = *(a1 + 24);
  v12 = 1 << *(a1 + 256);
  v13 = v10 - v11 > v12;
  v14 = v10 - v12;
  v15 = *(a1 + 40) == 0;
  if (v15 && v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  v17 = (v9 - 8);
  v18 = *a3;
  v19 = a3[1];
  if ((v8 + v16) == a4)
  {
    v20 = (a4 + 1);
  }

  else
  {
    v20 = a4;
  }

  v21 = v20 - v8 - v11 > v12;
  v22 = v20 - v8 - v12;
  if (!v15 || !v21)
  {
    v22 = *(a1 + 24);
  }

  v23 = v20 - v8 - v22;
  if (v19 <= v23)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  if (v18 <= v23)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0;
  }

  _X5 = v20 + 1;
  v553 = *a3;
  v552 = v20 - v8 - v22;
  if (v5 == 5)
  {
    if (_X5 > v17)
    {
      goto LABEL_712;
    }

    v287 = *(a1 + 260);
    v288 = 64 - *(a1 + 264);
    v289 = 64 - v287;
    v290 = (v9 - 7);
    v550 = v9 - 1;
    v291 = (v9 - 32);
    v546 = v9 - 3;
LABEL_482:
    v292 = v20 + 256;
    v293 = *v20;
    v294 = (0xCF1BBCDCB7A56463 * *v20) >> v288;
    v295 = *(v6 + 4 * v294);
    v296 = (v8 + v295);
    if (!v25)
    {
      v297 = 1;
      while (1)
      {
        v308 = (0xCF1BBCDCBB000000 * v293) >> v289;
        v309 = *(v7 + 4 * v308);
        v301 = v20 - v8;
        *(v7 + 4 * v308) = v20 - v8;
        *(v6 + 4 * v294) = v20 - v8;
        v303 = *_X5;
        v294 = (0xCF1BBCDCB7A56463 * *_X5) >> v288;
        if (v295 > v16 && *v296 == v293)
        {
          break;
        }

        v295 = *(v6 + 4 * v294);
        v296 = (v8 + v295);
        if (v309 > v16)
        {
          v304 = v8 + v309;
          if (*(v8 + v309) == *v20)
          {
LABEL_537:
            v329 = v8 + v16;
            if (v295 > v16 && *v296 == v303)
            {
              v330 = (_X5 + 8);
              v331 = (v296 + 1);
              if (v290 > (_X5 + 8))
              {
                if (*v331 == *v330)
                {
                  v331 = (v296 + 2);
                  v332 = _X5 + 16;
                  do
                  {
                    v333 = v332;
                    if (v332 >= v290)
                    {
                      goto LABEL_582;
                    }

                    v335 = *v331;
                    v331 += 4;
                    v334 = v335;
                    v332 += 8;
                  }

                  while (v335 == *v333);
                  v336 = &v333[__clz(__rbit64(*v333 ^ v334)) >> 3] - v330;
                  v329 = v8 + v16;
                }

                else
                {
                  v336 = __clz(__rbit64(*v330 ^ *v331)) >> 3;
                }

                v316 = v9 - 1;
LABEL_655:
                v358 = v336 + 8;
                v359 = (_X5 - v296);
                if (v296 > v329 && _X5 > a4)
                {
                  v360 = _X5 - 1;
                  v397 = v296 - 1;
                  while (*v360 == *v397)
                  {
                    ++v358;
                    v362 = v360 - 1;
                    if (v360 > a4)
                    {
                      --v360;
                      v542 = v397-- > v329;
                      if (v542)
                      {
                        continue;
                      }
                    }

                    goto LABEL_578;
                  }

                  goto LABEL_612;
                }

                v302 = _X5;
                if (v297 <= 3)
                {
LABEL_615:
                  *(v6 + 4 * v294) = _X5 - v8;
                }

LABEL_616:
                v364 = v302 - a4;
                v365 = *(a2 + 24);
                v314 = v9 - 3;
                if (v302 > v291)
                {
                  if (a4 <= v291)
                  {
                    v366 = (v365 + v291 - a4);
                    *v365 = *a4;
                    if ((v291 - a4) >= 17)
                    {
                      v367 = v365 + 1;
                      v368 = (a4 + 32);
                      do
                      {
                        *v367 = *(v368 - 1);
                        v369 = *v368;
                        v368 += 32;
                        v367[1] = v369;
                        v367 += 2;
                      }

                      while (v367 < v366);
                    }

                    a4 = (v9 - 32);
                    v365 = v366;
                  }

                  if (a4 >= v302)
                  {
                    goto LABEL_666;
                  }

                  v370 = v302 - a4;
                  if ((v302 - a4) < 8)
                  {
                    v377 = v365;
                  }

                  else if ((v365 - a4) < 0x20)
                  {
                    v377 = v365;
                  }

                  else
                  {
                    if (v370 < 0x20)
                    {
                      v371 = 0;
LABEL_639:
                      v382 = v370 & 0xFFFFFFFFFFFFFFF8;
                      v377 = v365 + (v370 & 0xFFFFFFFFFFFFFFF8);
                      v383 = v371 - (v370 & 0xFFFFFFFFFFFFFFF8);
                      v384 = &a4[v371];
                      v385 = (v365 + v371);
                      do
                      {
                        v386 = *v384;
                        v384 += 8;
                        *v385++ = v386;
                        v383 += 8;
                      }

                      while (v383);
                      v316 = v9 - 1;
                      if (v370 != v382)
                      {
                        a4 += v382;
                        goto LABEL_665;
                      }

LABEL_666:
                      *(a2 + 24) += v364;
                      v357 = *(a2 + 8);
                      if (v364 >= 0x10000)
                      {
                        v399 = (v357 - *a2) >> 3;
                        *(a2 + 72) = 1;
                        *(a2 + 76) = v399;
                      }

                      goto LABEL_668;
                    }

                    v371 = v370 & 0xFFFFFFFFFFFFFFE0;
                    v378 = (a4 + 16);
                    v379 = v365 + 1;
                    v380 = v370 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v381 = *v378;
                      *(v379 - 1) = *(v378 - 1);
                      *v379 = v381;
                      v378 += 32;
                      v379 += 2;
                      v380 -= 32;
                    }

                    while (v380);
                    if (v370 == v371)
                    {
                      goto LABEL_666;
                    }

                    if ((v370 & 0x18) != 0)
                    {
                      goto LABEL_639;
                    }

                    a4 += v371;
                    v377 = v365 + v371;
                  }

                  do
                  {
LABEL_665:
                    v398 = *a4++;
                    *v377++ = v398;
                  }

                  while (a4 != v302);
                  goto LABEL_666;
                }

                *v365 = *a4;
                v372 = *(a2 + 24);
                if (v364 > 0x10)
                {
                  *(v372 + 16) = *(a4 + 1);
                  if (v364 >= 33)
                  {
                    v373 = v372 + v364;
                    v374 = (v372 + 32);
                    v375 = (a4 + 48);
                    do
                    {
                      *v374 = *(v375 - 1);
                      v376 = *v375;
                      v375 += 32;
                      v374[1] = v376;
                      v374 += 2;
                    }

                    while (v374 < v373);
                  }

                  goto LABEL_666;
                }

                *(a2 + 24) = v372 + v364;
                v357 = *(a2 + 8);
LABEL_668:
                *(v357 + 4) = v364;
                *v357 = v359 + 3;
                LOWORD(v364) = v358 - 3;
                v24 = v25;
                v25 = v359;
                if (v358 - 3 >= 0x10000)
                {
LABEL_669:
                  v400 = (v357 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v400;
                  v25 = v359;
                }

LABEL_670:
                *(v357 + 6) = v364;
                v401 = v357 + 8;
                *(a2 + 8) = v357 + 8;
                a4 = &v302[v358];
                if (&v302[v358] > v17)
                {
                  v146 = v24;
                  v147 = v25;
LABEL_702:
                  _X5 = (a4 + 1);
                  v25 = v147;
                  v24 = v146;
                  v20 = a4;
                  if ((a4 + 1) > v17)
                  {
                    goto LABEL_950;
                  }

                  goto LABEL_482;
                }

                v402 = *(v8 + (v301 + 2));
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v402) >> v288)) = v301 + 2;
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v288)) = a4 - 2 - v8;
                *(v7 + 4 * ((0xCF1BBCDCBB000000 * v402) >> v289)) = v301 + 2;
                *(v7 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 1)) >> v289)) = a4 - 1 - v8;
                while (2)
                {
                  v147 = v24;
                  v24 = v25;
                  if (!v147 || *a4 != *&a4[-v147])
                  {
                    v146 = v147;
                    v147 = v25;
                    goto LABEL_702;
                  }

                  v403 = (a4 + 4);
                  v404 = &a4[-v147 + 4];
                  if (v290 > (a4 + 4))
                  {
                    if (*v404 == *v403)
                    {
                      v405 = (a4 + 12);
                      v404 = &a4[-v147 + 12];
                      do
                      {
                        v406 = v405;
                        if (v405 >= v290)
                        {
                          goto LABEL_683;
                        }

                        v408 = *v404;
                        v404 += 8;
                        v407 = v408;
                        v405 += 8;
                      }

                      while (v408 == *v406);
                      v409 = &v406[__clz(__rbit64(*v406 ^ v407)) >> 3] - v403;
                    }

                    else
                    {
                      v409 = __clz(__rbit64(*v403 ^ *v404)) >> 3;
                    }

LABEL_697:
                    v410 = *a4;
                    *(v7 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v289)) = a4 - v8;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v410) >> v288)) = a4 - v8;
                    if (a4 <= v291)
                    {
                      **(a2 + 24) = *a4;
                      v401 = *(a2 + 8);
                    }

                    *(v401 + 4) = 0;
                    *v401 = 1;
                    if (v409 + 1 >= 0x10000)
                    {
                      v411 = (v401 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v411;
                    }

                    *(v401 + 6) = v409 + 1;
                    v401 += 8;
                    *(a2 + 8) = v401;
                    a4 += v409 + 4;
                    v25 = v147;
                    v146 = v24;
                    if (a4 > v17)
                    {
                      goto LABEL_702;
                    }

                    continue;
                  }

                  break;
                }

                v406 = (a4 + 4);
LABEL_683:
                if (v406 >= v314)
                {
                  if (v406 >= v316)
                  {
                    goto LABEL_687;
                  }
                }

                else
                {
                  if (*v404 == *v406)
                  {
                    v404 += 4;
                    v406 += 4;
                  }

                  if (v406 >= v316)
                  {
LABEL_687:
                    if (v406 < v9)
                    {
                      goto LABEL_688;
                    }

                    goto LABEL_690;
                  }
                }

                if (*v404 == *v406)
                {
                  v404 += 2;
                  v406 += 2;
                }

                if (v406 < v9)
                {
LABEL_688:
                  if (*v404 == *v406)
                  {
                    ++v406;
                  }
                }

LABEL_690:
                v409 = v406 - v403;
                goto LABEL_697;
              }

              v333 = _X5 + 8;
LABEL_582:
              v316 = v9 - 1;
              if (v333 >= v546)
              {
                if (v333 >= v550)
                {
                  goto LABEL_586;
                }
              }

              else
              {
                if (*v331 == *v333)
                {
                  v331 += 2;
                  v333 += 4;
                }

                if (v333 >= v550)
                {
LABEL_586:
                  if (v333 < v9)
                  {
                    goto LABEL_587;
                  }

                  goto LABEL_589;
                }
              }

              if (*v331 == *v333)
              {
                ++v331;
                v333 += 2;
              }

              if (v333 < v9)
              {
LABEL_587:
                if (*v331 == *v333)
                {
                  ++v333;
                }
              }

LABEL_589:
              v329 = v8 + v16;
              v336 = v333 - v330;
              goto LABEL_655;
            }

            v337 = (v20 + 4);
            v338 = (v304 + 4);
            if (v290 <= (v20 + 4))
            {
              v340 = v20 + 4;
            }

            else
            {
              if (*v338 != *v337)
              {
                v343 = __clz(__rbit64(*v337 ^ *v338)) >> 3;
                goto LABEL_606;
              }

              v338 = (v304 + 12);
              v339 = v20 + 12;
              while (1)
              {
                v340 = v339;
                if (v339 >= v290)
                {
                  break;
                }

                v342 = *v338++;
                v341 = v342;
                v339 += 8;
                if (v342 != *v340)
                {
                  v343 = &v340[__clz(__rbit64(*v340 ^ v341)) >> 3] - v337;
                  v329 = v8 + v16;
                  goto LABEL_606;
                }
              }

              v329 = v8 + v16;
            }

            if (v340 < v546 && *v338 == *v340)
            {
              v338 = (v338 + 4);
              v340 += 4;
            }

            if (v340 < v550 && *v338 == *v340)
            {
              v338 = (v338 + 2);
              v340 += 2;
            }

            if (v340 < v9 && *v338 == *v340)
            {
              ++v340;
            }

            v343 = v340 - v337;
LABEL_606:
            v358 = v343 + 4;
            v359 = &v20[-v304];
            if (v20 > a4 && v304 > v329)
            {
              v362 = v20 - 1;
              v363 = (v304 - 1);
              v316 = v9 - 1;
              while (*v362 == *v363)
              {
                ++v358;
                v360 = v362 - 1;
                if (v362 > a4)
                {
                  --v362;
                  v542 = v363-- > v329;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_612;
              }

LABEL_578:
              v302 = v362 + 1;
              if (v297 <= 3)
              {
                goto LABEL_615;
              }

              goto LABEL_616;
            }

LABEL_614:
            v302 = v20;
            v316 = v9 - 1;
            if (v297 <= 3)
            {
              goto LABEL_615;
            }

            goto LABEL_616;
          }
        }

        if (_X5 >= v292)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v297;
          v292 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        v293 = *_X5;
        _X5 += v297;
        if (_X5 > v17)
        {
LABEL_948:
          LODWORD(v147) = 0;
          goto LABEL_949;
        }
      }

LABEL_506:
      v321 = (v20 + 8);
      v322 = v296 + 1;
      if (v290 <= (v20 + 8))
      {
        v324 = v20 + 8;
LABEL_527:
        if (v324 < v546 && *v322 == *v324)
        {
          ++v322;
          v324 += 4;
        }

        if (v324 < v550 && *v322 == *v324)
        {
          v322 = (v322 + 2);
          v324 += 2;
        }

        if (v324 < v9 && *v322 == *v324)
        {
          ++v324;
        }

        v328 = v8 + v16;
        v327 = v324 - v321;
      }

      else
      {
        if (*v322 == *v321)
        {
          v322 = v296 + 2;
          v323 = v20 + 16;
          do
          {
            v324 = v323;
            if (v323 >= v290)
            {
              goto LABEL_527;
            }

            v326 = *v322;
            v322 += 2;
            v325 = v326;
            v323 += 8;
          }

          while (v326 == *v324);
          v327 = &v324[__clz(__rbit64(*v324 ^ v325)) >> 3] - v321;
        }

        else
        {
          v327 = __clz(__rbit64(*v321 ^ *v322)) >> 3;
        }

        v328 = v8 + v16;
      }

      v358 = v327 + 8;
      v359 = (v20 - v296);
      if (v296 > v328 && v20 > a4)
      {
        v360 = v20 - 1;
        v361 = v296 - 1;
        v316 = v9 - 1;
        while (*v360 == *v361)
        {
          ++v358;
          v362 = v360 - 1;
          if (v360 > a4)
          {
            --v360;
            v542 = v361-- > v328;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_578;
        }

LABEL_612:
        v302 = v360 + 1;
        if (v297 <= 3)
        {
          goto LABEL_615;
        }

        goto LABEL_616;
      }

      goto LABEL_614;
    }

    v297 = 1;
    while (1)
    {
      v299 = (0xCF1BBCDCBB000000 * v293) >> v289;
      v300 = *(v7 + 4 * v299);
      v301 = v20 - v8;
      *(v7 + 4 * v299) = v20 - v8;
      *(v6 + 4 * v294) = v20 - v8;
      v302 = v20 + 1;
      if (*&v20[-v25 + 1] == *(v20 + 1))
      {
        break;
      }

      v303 = *_X5;
      v294 = (0xCF1BBCDCB7A56463 * *_X5) >> v288;
      if (v295 > v16 && *v296 == v293)
      {
        goto LABEL_506;
      }

      v295 = *(v6 + 4 * v294);
      v296 = (v8 + v295);
      if (v300 > v16)
      {
        v304 = v8 + v300;
        if (*(v8 + v300) == *v20)
        {
          goto LABEL_537;
        }
      }

      if (_X5 >= v292)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v297;
        v292 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      v293 = *_X5;
      _X5 += v297;
      if (_X5 > v17)
      {
        goto LABEL_712;
      }
    }

    v312 = (v20 + 5);
    v313 = &v20[-v25 + 5];
    if (v290 > (v20 + 5))
    {
      v314 = v9 - 3;
      if (*v313 == *v312)
      {
        v315 = v20 + 13;
        v313 = &v20[-v25 + 13];
        v316 = v9 - 1;
        do
        {
          v317 = v315;
          if (v315 >= v290)
          {
            goto LABEL_513;
          }

          v319 = *v313;
          v313 += 8;
          v318 = v319;
          v315 += 8;
        }

        while (v319 == *v317);
        v320 = &v317[__clz(__rbit64(*v317 ^ v318)) >> 3] - v312;
      }

      else
      {
        v320 = __clz(__rbit64(*v312 ^ *v313)) >> 3;
        v316 = v9 - 1;
      }

LABEL_553:
      v344 = v302 - a4;
      v345 = *(a2 + 24);
      if (v302 <= v291)
      {
        *v345 = *a4;
        v352 = *(a2 + 24);
        if (v344 <= 0x10)
        {
          *(a2 + 24) = v352 + v344;
          v357 = *(a2 + 8);
          goto LABEL_709;
        }

        *(v352 + 16) = *(a4 + 1);
        if (v344 >= 33)
        {
          v353 = v352 + v344;
          v354 = (v352 + 32);
          v355 = (a4 + 48);
          do
          {
            *v354 = *(v355 - 1);
            v356 = *v355;
            v355 += 32;
            v354[1] = v356;
            v354 += 2;
          }

          while (v354 < v353);
        }

LABEL_706:
        *(a2 + 24) += v344;
        v357 = *(a2 + 8);
        if (v344 >= 0x10000)
        {
          v413 = (v357 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v413;
        }

        v316 = v9 - 1;
LABEL_709:
        v358 = v320 + 4;
        *(v357 + 4) = v344;
        *v357 = 1;
        v364 = v320 + 1;
        v359 = v25;
        if (v364 >> 16)
        {
          goto LABEL_669;
        }

        goto LABEL_670;
      }

      if (a4 <= v291)
      {
        v346 = (v345 + v291 - a4);
        *v345 = *a4;
        if ((v291 - a4) >= 17)
        {
          v347 = v345 + 1;
          v348 = (a4 + 32);
          do
          {
            *v347 = *(v348 - 1);
            v349 = *v348;
            v348 += 32;
            v347[1] = v349;
            v347 += 2;
          }

          while (v347 < v346);
        }

        a4 = (v9 - 32);
        v345 = v346;
      }

      if (a4 >= v302)
      {
        goto LABEL_706;
      }

      v350 = v302 - a4;
      if ((v302 - a4) < 8)
      {
        v387 = v345;
      }

      else if ((v345 - a4) < 0x20)
      {
        v387 = v345;
      }

      else
      {
        if (v350 < 0x20)
        {
          v351 = 0;
LABEL_649:
          v392 = v350 & 0xFFFFFFFFFFFFFFF8;
          v387 = v345 + (v350 & 0xFFFFFFFFFFFFFFF8);
          v393 = v351 - (v350 & 0xFFFFFFFFFFFFFFF8);
          v394 = &a4[v351];
          v395 = (v345 + v351);
          do
          {
            v396 = *v394;
            v394 += 8;
            *v395++ = v396;
            v393 += 8;
          }

          while (v393);
          if (v350 == v392)
          {
            goto LABEL_706;
          }

          a4 += v392;
          goto LABEL_705;
        }

        v351 = v350 & 0xFFFFFFFFFFFFFFE0;
        v388 = (a4 + 16);
        v389 = v345 + 1;
        v390 = v350 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v391 = *v388;
          *(v389 - 1) = *(v388 - 1);
          *v389 = v391;
          v388 += 32;
          v389 += 2;
          v390 -= 32;
        }

        while (v390);
        if (v350 == v351)
        {
          goto LABEL_706;
        }

        if ((v350 & 0x18) != 0)
        {
          goto LABEL_649;
        }

        a4 += v351;
        v387 = v345 + v351;
      }

      do
      {
LABEL_705:
        v412 = *a4++;
        *v387++ = v412;
      }

      while (a4 != v302);
      goto LABEL_706;
    }

    v317 = v20 + 5;
    v314 = v9 - 3;
    v316 = v9 - 1;
LABEL_513:
    if (v317 >= v314)
    {
      if (v317 >= v316)
      {
        goto LABEL_517;
      }
    }

    else
    {
      if (*v313 == *v317)
      {
        v313 += 4;
        v317 += 4;
      }

      if (v317 >= v316)
      {
LABEL_517:
        if (v317 >= v9)
        {
LABEL_520:
          v320 = v317 - v312;
          goto LABEL_553;
        }

LABEL_518:
        if (*v313 == *v317)
        {
          ++v317;
        }

        goto LABEL_520;
      }
    }

    if (*v313 == *v317)
    {
      v313 += 2;
      v317 += 2;
    }

    if (v317 >= v9)
    {
      goto LABEL_520;
    }

    goto LABEL_518;
  }

  if (v5 == 6)
  {
    if (_X5 > v17)
    {
      goto LABEL_712;
    }

    v160 = *(a1 + 260);
    v161 = 64 - *(a1 + 264);
    v162 = 64 - v160;
    v163 = (v9 - 7);
    v549 = v9 - 1;
    v164 = (v9 - 32);
    v545 = v9 - 3;
LABEL_251:
    v165 = v20 + 256;
    v166 = *v20;
    v167 = (0xCF1BBCDCB7A56463 * *v20) >> v161;
    v168 = *(v6 + 4 * v167);
    v169 = (v8 + v168);
    if (!v25)
    {
      v170 = 1;
      while (1)
      {
        v181 = (0xCF1BBCDCBF9B0000 * v166) >> v162;
        v182 = *(v7 + 4 * v181);
        v174 = v20 - v8;
        *(v7 + 4 * v181) = v20 - v8;
        *(v6 + 4 * v167) = v20 - v8;
        v176 = *_X5;
        v167 = (0xCF1BBCDCB7A56463 * *_X5) >> v161;
        if (v168 > v16 && *v169 == v166)
        {
          break;
        }

        v168 = *(v6 + 4 * v167);
        v169 = (v8 + v168);
        if (v182 > v16)
        {
          v177 = v8 + v182;
          if (*(v8 + v182) == *v20)
          {
LABEL_306:
            v202 = v8 + v16;
            if (v168 > v16 && *v169 == v176)
            {
              v203 = (_X5 + 8);
              v204 = (v169 + 1);
              if (v163 > (_X5 + 8))
              {
                if (*v204 == *v203)
                {
                  v204 = (v169 + 2);
                  v205 = _X5 + 16;
                  do
                  {
                    v206 = v205;
                    if (v205 >= v163)
                    {
                      goto LABEL_351;
                    }

                    v208 = *v204;
                    v204 += 4;
                    v207 = v208;
                    v205 += 8;
                  }

                  while (v208 == *v206);
                  v209 = &v206[__clz(__rbit64(*v206 ^ v207)) >> 3] - v203;
                  v202 = v8 + v16;
                }

                else
                {
                  v209 = __clz(__rbit64(*v203 ^ *v204)) >> 3;
                }

                v189 = v9 - 1;
LABEL_424:
                v231 = v209 + 8;
                v232 = (_X5 - v169);
                if (v169 > v202 && _X5 > a4)
                {
                  v233 = _X5 - 1;
                  v270 = v169 - 1;
                  while (*v233 == *v270)
                  {
                    ++v231;
                    v235 = v233 - 1;
                    if (v233 > a4)
                    {
                      --v233;
                      v542 = v270-- > v202;
                      if (v542)
                      {
                        continue;
                      }
                    }

                    goto LABEL_347;
                  }

                  goto LABEL_381;
                }

                v175 = _X5;
                if (v170 <= 3)
                {
LABEL_384:
                  *(v6 + 4 * v167) = _X5 - v8;
                }

LABEL_385:
                v237 = v175 - a4;
                v238 = *(a2 + 24);
                v187 = v9 - 3;
                if (v175 > v164)
                {
                  if (a4 <= v164)
                  {
                    v239 = (v238 + v164 - a4);
                    *v238 = *a4;
                    if ((v164 - a4) >= 17)
                    {
                      v240 = v238 + 1;
                      v241 = (a4 + 32);
                      do
                      {
                        *v240 = *(v241 - 1);
                        v242 = *v241;
                        v241 += 32;
                        v240[1] = v242;
                        v240 += 2;
                      }

                      while (v240 < v239);
                    }

                    a4 = (v9 - 32);
                    v238 = v239;
                  }

                  if (a4 >= v175)
                  {
                    goto LABEL_435;
                  }

                  v243 = v175 - a4;
                  if ((v175 - a4) < 8)
                  {
                    v250 = v238;
                  }

                  else if ((v238 - a4) < 0x20)
                  {
                    v250 = v238;
                  }

                  else
                  {
                    if (v243 < 0x20)
                    {
                      v244 = 0;
LABEL_408:
                      v255 = v243 & 0xFFFFFFFFFFFFFFF8;
                      v250 = v238 + (v243 & 0xFFFFFFFFFFFFFFF8);
                      v256 = v244 - (v243 & 0xFFFFFFFFFFFFFFF8);
                      v257 = &a4[v244];
                      v258 = (v238 + v244);
                      do
                      {
                        v259 = *v257;
                        v257 += 8;
                        *v258++ = v259;
                        v256 += 8;
                      }

                      while (v256);
                      v189 = v9 - 1;
                      if (v243 != v255)
                      {
                        a4 += v255;
                        goto LABEL_434;
                      }

LABEL_435:
                      *(a2 + 24) += v237;
                      v230 = *(a2 + 8);
                      if (v237 >= 0x10000)
                      {
                        v272 = (v230 - *a2) >> 3;
                        *(a2 + 72) = 1;
                        *(a2 + 76) = v272;
                      }

                      goto LABEL_437;
                    }

                    v244 = v243 & 0xFFFFFFFFFFFFFFE0;
                    v251 = (a4 + 16);
                    v252 = v238 + 1;
                    v253 = v243 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v254 = *v251;
                      *(v252 - 1) = *(v251 - 1);
                      *v252 = v254;
                      v251 += 32;
                      v252 += 2;
                      v253 -= 32;
                    }

                    while (v253);
                    if (v243 == v244)
                    {
                      goto LABEL_435;
                    }

                    if ((v243 & 0x18) != 0)
                    {
                      goto LABEL_408;
                    }

                    a4 += v244;
                    v250 = v238 + v244;
                  }

                  do
                  {
LABEL_434:
                    v271 = *a4++;
                    *v250++ = v271;
                  }

                  while (a4 != v175);
                  goto LABEL_435;
                }

                *v238 = *a4;
                v245 = *(a2 + 24);
                if (v237 > 0x10)
                {
                  *(v245 + 16) = *(a4 + 1);
                  if (v237 >= 33)
                  {
                    v246 = v245 + v237;
                    v247 = (v245 + 32);
                    v248 = (a4 + 48);
                    do
                    {
                      *v247 = *(v248 - 1);
                      v249 = *v248;
                      v248 += 32;
                      v247[1] = v249;
                      v247 += 2;
                    }

                    while (v247 < v246);
                  }

                  goto LABEL_435;
                }

                *(a2 + 24) = v245 + v237;
                v230 = *(a2 + 8);
LABEL_437:
                *(v230 + 4) = v237;
                *v230 = v232 + 3;
                LOWORD(v237) = v231 - 3;
                v24 = v25;
                v25 = v232;
                if (v231 - 3 >= 0x10000)
                {
LABEL_438:
                  v273 = (v230 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v273;
                  v25 = v232;
                }

LABEL_439:
                *(v230 + 6) = v237;
                v274 = v230 + 8;
                *(a2 + 8) = v230 + 8;
                a4 = &v175[v231];
                if (&v175[v231] > v17)
                {
                  v146 = v24;
                  v147 = v25;
LABEL_471:
                  _X5 = (a4 + 1);
                  v25 = v147;
                  v24 = v146;
                  v20 = a4;
                  if ((a4 + 1) > v17)
                  {
                    goto LABEL_950;
                  }

                  goto LABEL_251;
                }

                v275 = *(v8 + (v174 + 2));
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v275) >> v161)) = v174 + 2;
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v161)) = a4 - 2 - v8;
                *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * v275) >> v162)) = v174 + 2;
                *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 1)) >> v162)) = a4 - 1 - v8;
                while (2)
                {
                  v147 = v24;
                  v24 = v25;
                  if (!v147 || *a4 != *&a4[-v147])
                  {
                    v146 = v147;
                    v147 = v25;
                    goto LABEL_471;
                  }

                  v276 = (a4 + 4);
                  v277 = &a4[-v147 + 4];
                  if (v163 > (a4 + 4))
                  {
                    if (*v277 == *v276)
                    {
                      v278 = (a4 + 12);
                      v277 = &a4[-v147 + 12];
                      do
                      {
                        v279 = v278;
                        if (v278 >= v163)
                        {
                          goto LABEL_452;
                        }

                        v281 = *v277;
                        v277 += 8;
                        v280 = v281;
                        v278 += 8;
                      }

                      while (v281 == *v279);
                      v282 = &v279[__clz(__rbit64(*v279 ^ v280)) >> 3] - v276;
                    }

                    else
                    {
                      v282 = __clz(__rbit64(*v276 ^ *v277)) >> 3;
                    }

LABEL_466:
                    v283 = *a4;
                    *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v162)) = a4 - v8;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v283) >> v161)) = a4 - v8;
                    if (a4 <= v164)
                    {
                      **(a2 + 24) = *a4;
                      v274 = *(a2 + 8);
                    }

                    *(v274 + 4) = 0;
                    *v274 = 1;
                    if (v282 + 1 >= 0x10000)
                    {
                      v284 = (v274 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v284;
                    }

                    *(v274 + 6) = v282 + 1;
                    v274 += 8;
                    *(a2 + 8) = v274;
                    a4 += v282 + 4;
                    v25 = v147;
                    v146 = v24;
                    if (a4 > v17)
                    {
                      goto LABEL_471;
                    }

                    continue;
                  }

                  break;
                }

                v279 = (a4 + 4);
LABEL_452:
                if (v279 >= v187)
                {
                  if (v279 >= v189)
                  {
                    goto LABEL_456;
                  }
                }

                else
                {
                  if (*v277 == *v279)
                  {
                    v277 += 4;
                    v279 += 4;
                  }

                  if (v279 >= v189)
                  {
LABEL_456:
                    if (v279 < v9)
                    {
                      goto LABEL_457;
                    }

                    goto LABEL_459;
                  }
                }

                if (*v277 == *v279)
                {
                  v277 += 2;
                  v279 += 2;
                }

                if (v279 < v9)
                {
LABEL_457:
                  if (*v277 == *v279)
                  {
                    ++v279;
                  }
                }

LABEL_459:
                v282 = v279 - v276;
                goto LABEL_466;
              }

              v206 = _X5 + 8;
LABEL_351:
              v189 = v9 - 1;
              if (v206 >= v545)
              {
                if (v206 >= v549)
                {
                  goto LABEL_355;
                }
              }

              else
              {
                if (*v204 == *v206)
                {
                  v204 += 2;
                  v206 += 4;
                }

                if (v206 >= v549)
                {
LABEL_355:
                  if (v206 < v9)
                  {
                    goto LABEL_356;
                  }

                  goto LABEL_358;
                }
              }

              if (*v204 == *v206)
              {
                ++v204;
                v206 += 2;
              }

              if (v206 < v9)
              {
LABEL_356:
                if (*v204 == *v206)
                {
                  ++v206;
                }
              }

LABEL_358:
              v202 = v8 + v16;
              v209 = v206 - v203;
              goto LABEL_424;
            }

            v210 = (v20 + 4);
            v211 = (v177 + 4);
            if (v163 <= (v20 + 4))
            {
              v213 = v20 + 4;
            }

            else
            {
              if (*v211 != *v210)
              {
                v216 = __clz(__rbit64(*v210 ^ *v211)) >> 3;
                goto LABEL_375;
              }

              v211 = (v177 + 12);
              v212 = v20 + 12;
              while (1)
              {
                v213 = v212;
                if (v212 >= v163)
                {
                  break;
                }

                v215 = *v211++;
                v214 = v215;
                v212 += 8;
                if (v215 != *v213)
                {
                  v216 = &v213[__clz(__rbit64(*v213 ^ v214)) >> 3] - v210;
                  v202 = v8 + v16;
                  goto LABEL_375;
                }
              }

              v202 = v8 + v16;
            }

            if (v213 < v545 && *v211 == *v213)
            {
              v211 = (v211 + 4);
              v213 += 4;
            }

            if (v213 < v549 && *v211 == *v213)
            {
              v211 = (v211 + 2);
              v213 += 2;
            }

            if (v213 < v9 && *v211 == *v213)
            {
              ++v213;
            }

            v216 = v213 - v210;
LABEL_375:
            v231 = v216 + 4;
            v232 = &v20[-v177];
            if (v20 > a4 && v177 > v202)
            {
              v235 = v20 - 1;
              v236 = (v177 - 1);
              v189 = v9 - 1;
              while (*v235 == *v236)
              {
                ++v231;
                v233 = v235 - 1;
                if (v235 > a4)
                {
                  --v235;
                  v542 = v236-- > v202;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_381;
              }

LABEL_347:
              v175 = v235 + 1;
              if (v170 <= 3)
              {
                goto LABEL_384;
              }

              goto LABEL_385;
            }

LABEL_383:
            v175 = v20;
            v189 = v9 - 1;
            if (v170 <= 3)
            {
              goto LABEL_384;
            }

            goto LABEL_385;
          }
        }

        if (_X5 >= v165)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v170;
          v165 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        v166 = *_X5;
        _X5 += v170;
        if (_X5 > v17)
        {
          goto LABEL_948;
        }
      }

LABEL_275:
      v194 = (v20 + 8);
      v195 = v169 + 1;
      if (v163 <= (v20 + 8))
      {
        v197 = v20 + 8;
LABEL_296:
        if (v197 < v545 && *v195 == *v197)
        {
          ++v195;
          v197 += 4;
        }

        if (v197 < v549 && *v195 == *v197)
        {
          v195 = (v195 + 2);
          v197 += 2;
        }

        if (v197 < v9 && *v195 == *v197)
        {
          ++v197;
        }

        v201 = v8 + v16;
        v200 = v197 - v194;
      }

      else
      {
        if (*v195 == *v194)
        {
          v195 = v169 + 2;
          v196 = v20 + 16;
          do
          {
            v197 = v196;
            if (v196 >= v163)
            {
              goto LABEL_296;
            }

            v199 = *v195;
            v195 += 2;
            v198 = v199;
            v196 += 8;
          }

          while (v199 == *v197);
          v200 = &v197[__clz(__rbit64(*v197 ^ v198)) >> 3] - v194;
        }

        else
        {
          v200 = __clz(__rbit64(*v194 ^ *v195)) >> 3;
        }

        v201 = v8 + v16;
      }

      v231 = v200 + 8;
      v232 = (v20 - v169);
      if (v169 > v201 && v20 > a4)
      {
        v233 = v20 - 1;
        v234 = v169 - 1;
        v189 = v9 - 1;
        while (*v233 == *v234)
        {
          ++v231;
          v235 = v233 - 1;
          if (v233 > a4)
          {
            --v233;
            v542 = v234-- > v201;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_347;
        }

LABEL_381:
        v175 = v233 + 1;
        if (v170 <= 3)
        {
          goto LABEL_384;
        }

        goto LABEL_385;
      }

      goto LABEL_383;
    }

    v170 = 1;
    while (1)
    {
      v172 = (0xCF1BBCDCBF9B0000 * v166) >> v162;
      v173 = *(v7 + 4 * v172);
      v174 = v20 - v8;
      *(v7 + 4 * v172) = v20 - v8;
      *(v6 + 4 * v167) = v20 - v8;
      v175 = v20 + 1;
      if (*&v20[-v25 + 1] == *(v20 + 1))
      {
        break;
      }

      v176 = *_X5;
      v167 = (0xCF1BBCDCB7A56463 * *_X5) >> v161;
      if (v168 > v16 && *v169 == v166)
      {
        goto LABEL_275;
      }

      v168 = *(v6 + 4 * v167);
      v169 = (v8 + v168);
      if (v173 > v16)
      {
        v177 = v8 + v173;
        if (*(v8 + v173) == *v20)
        {
          goto LABEL_306;
        }
      }

      if (_X5 >= v165)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v170;
        v165 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      v166 = *_X5;
      _X5 += v170;
      if (_X5 > v17)
      {
        goto LABEL_712;
      }
    }

    v185 = (v20 + 5);
    v186 = &v20[-v25 + 5];
    if (v163 > (v20 + 5))
    {
      v187 = v9 - 3;
      if (*v186 == *v185)
      {
        v188 = v20 + 13;
        v186 = &v20[-v25 + 13];
        v189 = v9 - 1;
        do
        {
          v190 = v188;
          if (v188 >= v163)
          {
            goto LABEL_282;
          }

          v192 = *v186;
          v186 += 8;
          v191 = v192;
          v188 += 8;
        }

        while (v192 == *v190);
        v193 = &v190[__clz(__rbit64(*v190 ^ v191)) >> 3] - v185;
      }

      else
      {
        v193 = __clz(__rbit64(*v185 ^ *v186)) >> 3;
        v189 = v9 - 1;
      }

LABEL_322:
      v217 = v175 - a4;
      v218 = *(a2 + 24);
      if (v175 <= v164)
      {
        *v218 = *a4;
        v225 = *(a2 + 24);
        if (v217 <= 0x10)
        {
          *(a2 + 24) = v225 + v217;
          v230 = *(a2 + 8);
          goto LABEL_478;
        }

        *(v225 + 16) = *(a4 + 1);
        if (v217 >= 33)
        {
          v226 = v225 + v217;
          v227 = (v225 + 32);
          v228 = (a4 + 48);
          do
          {
            *v227 = *(v228 - 1);
            v229 = *v228;
            v228 += 32;
            v227[1] = v229;
            v227 += 2;
          }

          while (v227 < v226);
        }

LABEL_475:
        *(a2 + 24) += v217;
        v230 = *(a2 + 8);
        if (v217 >= 0x10000)
        {
          v286 = (v230 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v286;
        }

        v189 = v9 - 1;
LABEL_478:
        v231 = v193 + 4;
        *(v230 + 4) = v217;
        *v230 = 1;
        v237 = v193 + 1;
        v232 = v25;
        if (v237 >> 16)
        {
          goto LABEL_438;
        }

        goto LABEL_439;
      }

      if (a4 <= v164)
      {
        v219 = (v218 + v164 - a4);
        *v218 = *a4;
        if ((v164 - a4) >= 17)
        {
          v220 = v218 + 1;
          v221 = (a4 + 32);
          do
          {
            *v220 = *(v221 - 1);
            v222 = *v221;
            v221 += 32;
            v220[1] = v222;
            v220 += 2;
          }

          while (v220 < v219);
        }

        a4 = (v9 - 32);
        v218 = v219;
      }

      if (a4 >= v175)
      {
        goto LABEL_475;
      }

      v223 = v175 - a4;
      if ((v175 - a4) < 8)
      {
        v260 = v218;
      }

      else if ((v218 - a4) < 0x20)
      {
        v260 = v218;
      }

      else
      {
        if (v223 < 0x20)
        {
          v224 = 0;
LABEL_418:
          v265 = v223 & 0xFFFFFFFFFFFFFFF8;
          v260 = v218 + (v223 & 0xFFFFFFFFFFFFFFF8);
          v266 = v224 - (v223 & 0xFFFFFFFFFFFFFFF8);
          v267 = &a4[v224];
          v268 = (v218 + v224);
          do
          {
            v269 = *v267;
            v267 += 8;
            *v268++ = v269;
            v266 += 8;
          }

          while (v266);
          if (v223 == v265)
          {
            goto LABEL_475;
          }

          a4 += v265;
          goto LABEL_474;
        }

        v224 = v223 & 0xFFFFFFFFFFFFFFE0;
        v261 = (a4 + 16);
        v262 = v218 + 1;
        v263 = v223 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v264 = *v261;
          *(v262 - 1) = *(v261 - 1);
          *v262 = v264;
          v261 += 32;
          v262 += 2;
          v263 -= 32;
        }

        while (v263);
        if (v223 == v224)
        {
          goto LABEL_475;
        }

        if ((v223 & 0x18) != 0)
        {
          goto LABEL_418;
        }

        a4 += v224;
        v260 = v218 + v224;
      }

      do
      {
LABEL_474:
        v285 = *a4++;
        *v260++ = v285;
      }

      while (a4 != v175);
      goto LABEL_475;
    }

    v190 = v20 + 5;
    v187 = v9 - 3;
    v189 = v9 - 1;
LABEL_282:
    if (v190 >= v187)
    {
      if (v190 >= v189)
      {
        goto LABEL_286;
      }
    }

    else
    {
      if (*v186 == *v190)
      {
        v186 += 4;
        v190 += 4;
      }

      if (v190 >= v189)
      {
LABEL_286:
        if (v190 >= v9)
        {
LABEL_289:
          v193 = v190 - v185;
          goto LABEL_322;
        }

LABEL_287:
        if (*v186 == *v190)
        {
          ++v190;
        }

        goto LABEL_289;
      }
    }

    if (*v186 == *v190)
    {
      v186 += 2;
      v190 += 2;
    }

    if (v190 >= v9)
    {
      goto LABEL_289;
    }

    goto LABEL_287;
  }

  if (v5 != 7)
  {
    if (_X5 > v17)
    {
      goto LABEL_712;
    }

    v414 = *(a1 + 260);
    v415 = 64 - *(a1 + 264);
    v416 = 32 - v414;
    v417 = (v9 - 7);
    v418 = (v9 - 32);
    v547 = v9 - 3;
    v551 = v9 - 1;
LABEL_714:
    v419 = v20 + 256;
    v420 = *v20;
    v421 = 0xCF1BBCDCB7A56463 * *v20;
    v422 = v421 >> v415;
    v423 = *(v6 + 4 * (v421 >> v415));
    v424 = (v8 + v423);
    if (v25)
    {
      v425 = 1;
      while (1)
      {
        v427 = (-1640531535 * v420) >> v416;
        v428 = *(v7 + 4 * v427);
        v429 = v20 - v8;
        *(v7 + 4 * v427) = v20 - v8;
        *(v6 + 4 * v422) = v20 - v8;
        v430 = v20 + 1;
        if (*&v20[-v25 + 1] == *(v20 + 1))
        {
          break;
        }

        v420 = *_X5;
        v422 = (0xCF1BBCDCB7A56463 * *_X5) >> v415;
        if (v423 > v16 && *v424 == *v20)
        {
          goto LABEL_738;
        }

        v423 = *(v6 + 4 * v422);
        v424 = (v8 + v423);
        if (v428 > v16)
        {
          v431 = v8 + v428;
          if (*(v8 + v428) == *v20)
          {
            LODWORD(v434) = *(v6 + 4 * v422);
            goto LABEL_759;
          }
        }

        if (_X5 >= v419)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v425;
          v419 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        _X5 += v425;
        if (_X5 > v17)
        {
          goto LABEL_712;
        }
      }

      v440 = (v20 + 5);
      v441 = &v20[-v25 + 5];
      if (v417 > (v20 + 5))
      {
        v443 = v9 - 3;
        v442 = v9 - 1;
        if (*v441 == *v440)
        {
          v444 = v20 + 13;
          v441 = &v20[-v25 + 13];
          do
          {
            v445 = v444;
            if (v444 >= v417)
            {
              goto LABEL_745;
            }

            v447 = *v441;
            v441 += 8;
            v446 = v447;
            v444 += 8;
          }

          while (v447 == *v445);
          v448 = &v445[__clz(__rbit64(*v445 ^ v446)) >> 3] - v440;
        }

        else
        {
          v448 = __clz(__rbit64(*v440 ^ *v441)) >> 3;
        }

LABEL_789:
        v472 = v430 - a4;
        v473 = *(a2 + 24);
        if (v430 <= v418)
        {
          *v473 = *a4;
          v480 = *(a2 + 24);
          if (v472 <= 0x10)
          {
            *(a2 + 24) = v480 + v472;
            v485 = *(a2 + 8);
            goto LABEL_946;
          }

          *(v480 + 16) = *(a4 + 1);
          if (v472 >= 33)
          {
            v481 = v480 + v472;
            v482 = (v480 + 32);
            v483 = (a4 + 48);
            do
            {
              *v482 = *(v483 - 1);
              v484 = *v483;
              v483 += 32;
              v482[1] = v484;
              v482 += 2;
            }

            while (v482 < v481);
          }
        }

        else
        {
          if (a4 <= v418)
          {
            v474 = (v473 + v418 - a4);
            *v473 = *a4;
            if ((v418 - a4) >= 17)
            {
              v475 = v473 + 1;
              v476 = (a4 + 32);
              do
              {
                *v475 = *(v476 - 1);
                v477 = *v476;
                v476 += 32;
                v475[1] = v477;
                v475 += 2;
              }

              while (v475 < v474);
            }

            a4 = (v9 - 32);
            v473 = v474;
          }

          if (a4 >= v430)
          {
            goto LABEL_944;
          }

          v478 = v430 - a4;
          if ((v430 - a4) < 8)
          {
            v515 = v473;
            goto LABEL_943;
          }

          if ((v473 - a4) < 0x20)
          {
            v515 = v473;
            goto LABEL_943;
          }

          if (v478 >= 0x20)
          {
            v479 = v478 & 0xFFFFFFFFFFFFFFE0;
            v516 = (a4 + 16);
            v517 = v473 + 1;
            v518 = v478 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v519 = *v516;
              *(v517 - 1) = *(v516 - 1);
              *v517 = v519;
              v516 += 32;
              v517 += 2;
              v518 -= 32;
            }

            while (v518);
            if (v478 == v479)
            {
              goto LABEL_944;
            }

            if ((v478 & 0x18) == 0)
            {
              a4 += v479;
              v515 = v473 + v479;
              do
              {
LABEL_943:
                v538 = *a4++;
                *v515++ = v538;
              }

              while (a4 != v430);
              goto LABEL_944;
            }
          }

          else
          {
            v479 = 0;
          }

          v520 = v478 & 0xFFFFFFFFFFFFFFF8;
          v515 = v473 + (v478 & 0xFFFFFFFFFFFFFFF8);
          v521 = v479 - (v478 & 0xFFFFFFFFFFFFFFF8);
          v522 = &a4[v479];
          v523 = (v473 + v479);
          do
          {
            v524 = *v522;
            v522 += 8;
            *v523++ = v524;
            v521 += 8;
          }

          while (v521);
          if (v478 != v520)
          {
            a4 += v520;
            goto LABEL_943;
          }
        }

LABEL_944:
        *(a2 + 24) += v472;
        v485 = *(a2 + 8);
        if (v472 >= 0x10000)
        {
          v539 = (v485 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v539;
        }

LABEL_946:
        v486 = v448 + 4;
        *(v485 + 4) = v472;
        *v485 = 1;
        v492 = v448 + 1;
        v487 = v25;
        if (v492 >> 16)
        {
          goto LABEL_907;
        }

        goto LABEL_908;
      }

      v445 = v20 + 5;
      v443 = v9 - 3;
      v442 = v9 - 1;
LABEL_745:
      if (v445 >= v443)
      {
        if (v445 >= v442)
        {
          goto LABEL_749;
        }
      }

      else
      {
        if (*v441 == *v445)
        {
          v441 += 4;
          v445 += 4;
        }

        if (v445 >= v442)
        {
LABEL_749:
          if (v445 >= v9)
          {
LABEL_752:
            v448 = v445 - v440;
            goto LABEL_789;
          }

LABEL_750:
          if (*v441 == *v445)
          {
            ++v445;
          }

          goto LABEL_752;
        }
      }

      if (*v441 == *v445)
      {
        v441 += 2;
        v445 += 2;
      }

      if (v445 >= v9)
      {
        goto LABEL_752;
      }

      goto LABEL_750;
    }

    v425 = 1;
    LODWORD(v434) = *(v6 + 4 * (v421 >> v415));
    while (1)
    {
      v436 = (-1640531535 * v420) >> v416;
      v437 = *(v7 + 4 * v436);
      v429 = v20 - v8;
      *(v7 + 4 * v436) = v20 - v8;
      *(v6 + 4 * v422) = v20 - v8;
      v420 = *_X5;
      v422 = (0xCF1BBCDCB7A56463 * *_X5) >> v415;
      if (v434 > v16 && *v424 == *v20)
      {
        break;
      }

      v434 = *(v6 + 4 * v422);
      v424 = (v8 + v434);
      if (v437 > v16)
      {
        v431 = v8 + v437;
        if (*(v8 + v437) == *v20)
        {
LABEL_759:
          v456 = v8 + v16;
          if (v434 > v16 && *v424 == v420)
          {
            v457 = (_X5 + 8);
            v458 = (v424 + 1);
            if (v417 > (_X5 + 8))
            {
              if (*v458 == *v457)
              {
                v458 = (v424 + 2);
                v459 = _X5 + 16;
                do
                {
                  v460 = v459;
                  if (v459 >= v417)
                  {
                    goto LABEL_818;
                  }

                  v462 = *v458;
                  v458 += 4;
                  v461 = v462;
                  v459 += 8;
                }

                while (v462 == *v460);
                v463 = &v460[__clz(__rbit64(*v460 ^ v461)) >> 3] - v457;
                v456 = v8 + v16;
              }

              else
              {
                v463 = __clz(__rbit64(*v457 ^ *v458)) >> 3;
              }

LABEL_893:
              v486 = v463 + 8;
              v487 = (_X5 - v424);
              if (v424 <= v456 || _X5 <= a4)
              {
                v430 = _X5;
                if (v425 <= 3)
                {
                  goto LABEL_849;
                }

                goto LABEL_850;
              }

              v488 = _X5 - 1;
              v525 = v424 - 1;
              while (*v488 == *v525)
              {
                ++v486;
                v490 = v488 - 1;
                if (v488 > a4)
                {
                  --v488;
                  v542 = v525-- > v456;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_814;
              }

LABEL_846:
              v430 = v488 + 1;
              if (v425 <= 3)
              {
                goto LABEL_849;
              }

              goto LABEL_850;
            }

            v460 = _X5 + 8;
LABEL_818:
            if (v460 >= v547)
            {
              if (v460 >= v551)
              {
                goto LABEL_822;
              }
            }

            else
            {
              if (*v458 == *v460)
              {
                v458 += 2;
                v460 += 4;
              }

              if (v460 >= v551)
              {
LABEL_822:
                if (v460 < v9)
                {
                  goto LABEL_823;
                }

                goto LABEL_825;
              }
            }

            if (*v458 == *v460)
            {
              ++v458;
              v460 += 2;
            }

            if (v460 < v9)
            {
LABEL_823:
              if (*v458 == *v460)
              {
                ++v460;
              }
            }

LABEL_825:
            v456 = v8 + v16;
            v463 = v460 - v457;
            goto LABEL_893;
          }

          v464 = (v20 + 4);
          v465 = (v431 + 4);
          if (v417 <= (v20 + 4))
          {
            v467 = v20 + 4;
          }

          else
          {
            if (*v465 != *v464)
            {
              v470 = __clz(__rbit64(*v464 ^ *v465)) >> 3;
              goto LABEL_840;
            }

            v465 = (v431 + 12);
            v466 = v20 + 12;
            while (2)
            {
              v467 = v466;
              if (v466 < v417)
              {
                v469 = *v465++;
                v468 = v469;
                v466 += 8;
                if (v469 == *v467)
                {
                  continue;
                }

                v470 = &v467[__clz(__rbit64(*v467 ^ v468)) >> 3] - v464;
                v456 = v8 + v16;
LABEL_840:
                v486 = v470 + 4;
                v487 = &v20[-v431];
                if (v20 <= a4 || v431 <= v456)
                {
                  goto LABEL_848;
                }

                v490 = v20 - 1;
                v491 = (v431 - 1);
                while (*v490 == *v491)
                {
                  ++v486;
                  v488 = v490 - 1;
                  if (v490 > a4)
                  {
                    --v490;
                    v542 = v491-- > v456;
                    if (v542)
                    {
                      continue;
                    }
                  }

                  goto LABEL_846;
                }

LABEL_814:
                v430 = v490 + 1;
                if (v425 <= 3)
                {
LABEL_849:
                  *(v6 + 4 * v422) = _X5 - v8;
                }

LABEL_850:
                v492 = v430 - a4;
                v493 = *(a2 + 24);
                v443 = v9 - 3;
                if (v430 > v418)
                {
                  if (a4 <= v418)
                  {
                    v494 = (v493 + v418 - a4);
                    *v493 = *a4;
                    if ((v418 - a4) >= 17)
                    {
                      v495 = v493 + 1;
                      v496 = (a4 + 32);
                      do
                      {
                        *v495 = *(v496 - 1);
                        v497 = *v496;
                        v496 += 32;
                        v495[1] = v497;
                        v495 += 2;
                      }

                      while (v495 < v494);
                    }

                    a4 = (v9 - 32);
                    v493 = v494;
                  }

                  if (a4 >= v430)
                  {
                    goto LABEL_904;
                  }

                  v498 = v430 - a4;
                  if ((v430 - a4) < 8)
                  {
                    v505 = v493;
                  }

                  else if ((v493 - a4) < 0x20)
                  {
                    v505 = v493;
                  }

                  else
                  {
                    if (v498 < 0x20)
                    {
                      v499 = 0;
LABEL_878:
                      v510 = v498 & 0xFFFFFFFFFFFFFFF8;
                      v505 = v493 + (v498 & 0xFFFFFFFFFFFFFFF8);
                      v511 = v499 - (v498 & 0xFFFFFFFFFFFFFFF8);
                      v512 = &a4[v499];
                      v513 = (v493 + v499);
                      do
                      {
                        v514 = *v512;
                        v512 += 8;
                        *v513++ = v514;
                        v511 += 8;
                      }

                      while (v511);
                      if (v498 != v510)
                      {
                        a4 += v510;
                        goto LABEL_903;
                      }

LABEL_904:
                      *(a2 + 24) += v492;
                      v485 = *(a2 + 8);
                      if (v492 >= 0x10000)
                      {
                        v527 = (v485 - *a2) >> 3;
                        *(a2 + 72) = 1;
                        *(a2 + 76) = v527;
                      }

                      goto LABEL_906;
                    }

                    v499 = v498 & 0xFFFFFFFFFFFFFFE0;
                    v506 = (a4 + 16);
                    v507 = v493 + 1;
                    v508 = v498 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v509 = *v506;
                      *(v507 - 1) = *(v506 - 1);
                      *v507 = v509;
                      v506 += 32;
                      v507 += 2;
                      v508 -= 32;
                    }

                    while (v508);
                    if (v498 == v499)
                    {
                      goto LABEL_904;
                    }

                    if ((v498 & 0x18) != 0)
                    {
                      goto LABEL_878;
                    }

                    a4 += v499;
                    v505 = v493 + v499;
                  }

                  do
                  {
LABEL_903:
                    v526 = *a4++;
                    *v505++ = v526;
                  }

                  while (a4 != v430);
                  goto LABEL_904;
                }

                *v493 = *a4;
                v500 = *(a2 + 24);
                if (v492 > 0x10)
                {
                  *(v500 + 16) = *(a4 + 1);
                  if (v492 >= 33)
                  {
                    v501 = v500 + v492;
                    v502 = (v500 + 32);
                    v503 = (a4 + 48);
                    do
                    {
                      *v502 = *(v503 - 1);
                      v504 = *v503;
                      v503 += 32;
                      v502[1] = v504;
                      v502 += 2;
                    }

                    while (v502 < v501);
                  }

                  goto LABEL_904;
                }

                *(a2 + 24) = v500 + v492;
                v485 = *(a2 + 8);
LABEL_906:
                *(v485 + 4) = v492;
                *v485 = v487 + 3;
                LOWORD(v492) = v486 - 3;
                v24 = v25;
                v25 = v487;
                if (v486 - 3 >= 0x10000)
                {
LABEL_907:
                  v528 = (v485 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v528;
                  v25 = v487;
                }

LABEL_908:
                *(v485 + 6) = v492;
                v529 = v485 + 8;
                *(a2 + 8) = v485 + 8;
                a4 = &v430[v486];
                if (&v430[v486] > v17)
                {
                  v146 = v24;
                  v147 = v25;
LABEL_940:
                  _X5 = (a4 + 1);
                  v25 = v147;
                  v24 = v146;
                  v20 = a4;
                  if ((a4 + 1) > v17)
                  {
                    goto LABEL_950;
                  }

                  goto LABEL_714;
                }

                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(v8 + (v429 + 2))) >> v415)) = v429 + 2;
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v415)) = a4 - 2 - v8;
                *(v7 + 4 * ((-1640531535 * *(v8 + (v429 + 2))) >> v416)) = v429 + 2;
                *(v7 + 4 * ((-1640531535 * *(a4 - 1)) >> v416)) = a4 - 1 - v8;
                while (2)
                {
                  v147 = v24;
                  v24 = v25;
                  if (!v147 || *a4 != *&a4[-v147])
                  {
                    v146 = v147;
                    v147 = v25;
                    goto LABEL_940;
                  }

                  v530 = (a4 + 4);
                  v531 = &a4[-v147 + 4];
                  if (v417 > (a4 + 4))
                  {
                    if (*v531 == *v530)
                    {
                      v532 = (a4 + 12);
                      v531 = &a4[-v147 + 12];
                      do
                      {
                        v533 = v532;
                        if (v532 >= v417)
                        {
                          goto LABEL_921;
                        }

                        v535 = *v531;
                        v531 += 8;
                        v534 = v535;
                        v532 += 8;
                      }

                      while (v535 == *v533);
                      v536 = &v533[__clz(__rbit64(*v533 ^ v534)) >> 3] - v530;
                    }

                    else
                    {
                      v536 = __clz(__rbit64(*v530 ^ *v531)) >> 3;
                    }

LABEL_935:
                    *(v7 + 4 * ((-1640531535 * *a4) >> v416)) = a4 - v8;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *a4) >> v415)) = a4 - v8;
                    if (a4 <= v418)
                    {
                      **(a2 + 24) = *a4;
                      v529 = *(a2 + 8);
                    }

                    *(v529 + 4) = 0;
                    *v529 = 1;
                    if (v536 + 1 >= 0x10000)
                    {
                      v537 = (v529 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v537;
                    }

                    *(v529 + 6) = v536 + 1;
                    v529 += 8;
                    *(a2 + 8) = v529;
                    a4 += v536 + 4;
                    v25 = v147;
                    v146 = v24;
                    if (a4 > v17)
                    {
                      goto LABEL_940;
                    }

                    continue;
                  }

                  break;
                }

                v533 = (a4 + 4);
LABEL_921:
                if (v533 >= v443)
                {
                  if (v533 >= v551)
                  {
                    goto LABEL_925;
                  }
                }

                else
                {
                  if (*v531 == *v533)
                  {
                    v531 += 4;
                    v533 += 4;
                  }

                  if (v533 >= v551)
                  {
LABEL_925:
                    if (v533 < v9)
                    {
                      goto LABEL_926;
                    }

                    goto LABEL_928;
                  }
                }

                if (*v531 == *v533)
                {
                  v531 += 2;
                  v533 += 2;
                }

                if (v533 < v9)
                {
LABEL_926:
                  if (*v531 == *v533)
                  {
                    ++v533;
                  }
                }

LABEL_928:
                v536 = v533 - v530;
                goto LABEL_935;
              }

              break;
            }

            v456 = v8 + v16;
          }

          if (v467 >= v547)
          {
            if (v467 >= v551)
            {
              goto LABEL_836;
            }
          }

          else
          {
            if (*v465 == *v467)
            {
              v465 = (v465 + 4);
              v467 += 4;
            }

            if (v467 >= v551)
            {
LABEL_836:
              if (v467 < v9)
              {
                goto LABEL_837;
              }

              goto LABEL_839;
            }
          }

          if (*v465 == *v467)
          {
            v465 = (v465 + 2);
            v467 += 2;
          }

          if (v467 < v9)
          {
LABEL_837:
            if (*v465 == *v467)
            {
              ++v467;
            }
          }

LABEL_839:
          v470 = v467 - v464;
          goto LABEL_840;
        }
      }

      if (_X5 >= v419)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v425;
        v419 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      _X5 += v425;
      if (_X5 > v17)
      {
        goto LABEL_948;
      }
    }

LABEL_738:
    v449 = (v20 + 8);
    v450 = (v424 + 1);
    if (v417 > (v20 + 8))
    {
      if (*v450 == *v449)
      {
        v450 = (v424 + 2);
        v451 = v20 + 16;
        do
        {
          v452 = v451;
          if (v451 >= v417)
          {
            goto LABEL_774;
          }

          v454 = *v450;
          v450 += 8;
          v453 = v454;
          v451 += 8;
        }

        while (v454 == *v452);
        v455 = &v452[__clz(__rbit64(*v452 ^ v453)) >> 3] - v449;
      }

      else
      {
        v455 = __clz(__rbit64(*v449 ^ *v450)) >> 3;
      }

      v471 = v8 + v16;
LABEL_808:
      v486 = v455 + 8;
      v487 = (v20 - v424);
      if (v424 > v471 && v20 > a4)
      {
        v488 = v20 - 1;
        v489 = v424 - 1;
        while (*v488 == *v489)
        {
          ++v486;
          v490 = v488 - 1;
          if (v488 > a4)
          {
            --v488;
            v542 = v489-- > v471;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_814;
        }

        goto LABEL_846;
      }

LABEL_848:
      v430 = v20;
      if (v425 <= 3)
      {
        goto LABEL_849;
      }

      goto LABEL_850;
    }

    v452 = v20 + 8;
LABEL_774:
    if (v452 >= v547)
    {
      if (v452 >= v551)
      {
        goto LABEL_778;
      }
    }

    else
    {
      if (*v450 == *v452)
      {
        v450 += 4;
        v452 += 4;
      }

      if (v452 >= v551)
      {
LABEL_778:
        if (v452 >= v9)
        {
LABEL_781:
          v471 = v8 + v16;
          v455 = v452 - v449;
          goto LABEL_808;
        }

LABEL_779:
        if (*v450 == *v452)
        {
          ++v452;
        }

        goto LABEL_781;
      }
    }

    if (*v450 == *v452)
    {
      v450 += 2;
      v452 += 2;
    }

    if (v452 >= v9)
    {
      goto LABEL_781;
    }

    goto LABEL_779;
  }

  if (_X5 > v17)
  {
LABEL_712:
    LODWORD(v147) = v25;
LABEL_949:
    LODWORD(v146) = v24;
    goto LABEL_950;
  }

  v27 = *(a1 + 260);
  v28 = 64 - *(a1 + 264);
  v29 = 64 - v27;
  v30 = (v9 - 7);
  v548 = v9 - 1;
  v31 = (v9 - 32);
  v544 = v9 - 3;
  do
  {
    v32 = v20 + 256;
    v33 = *v20;
    v34 = (0xCF1BBCDCB7A56463 * *v20) >> v28;
    v35 = *(v6 + 4 * v34);
    v36 = (v8 + v35);
    if (v25)
    {
      v37 = 1;
      while (1)
      {
        v43 = (0xCF1BBCDCBFA56300 * v33) >> v29;
        v44 = *(v7 + 4 * v43);
        v45 = v20 - v8;
        *(v7 + 4 * v43) = v20 - v8;
        *(v6 + 4 * v34) = v20 - v8;
        v46 = v20 + 1;
        if (*&v20[-v25 + 1] == *(v20 + 1))
        {
          break;
        }

        v47 = *_X5;
        v34 = (0xCF1BBCDCB7A56463 * *_X5) >> v28;
        if (v35 > v16 && *v36 == v33)
        {
          goto LABEL_44;
        }

        v35 = *(v6 + 4 * v34);
        v36 = (v8 + v35);
        if (v44 > v16)
        {
          v48 = v8 + v44;
          if (*(v8 + v44) == *v20)
          {
            goto LABEL_75;
          }
        }

        if (_X5 >= v32)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v37;
          v32 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        v33 = *_X5;
        _X5 += v37;
        if (_X5 > v17)
        {
          goto LABEL_712;
        }
      }

      v56 = (v20 + 5);
      v57 = &v20[-v25 + 5];
      if (v30 <= (v20 + 5))
      {
        v61 = v20 + 5;
        v58 = v9 - 3;
        v60 = v9 - 1;
      }

      else
      {
        v58 = v9 - 3;
        if (*v57 != *v56)
        {
          v64 = __clz(__rbit64(*v56 ^ *v57)) >> 3;
          v60 = v9 - 1;
LABEL_91:
          v88 = v46 - a4;
          v89 = *(a2 + 24);
          if (v46 <= v31)
          {
            *v89 = *a4;
            v96 = *(a2 + 24);
            if (v88 <= 0x10)
            {
              *(a2 + 24) = v96 + v88;
              v101 = *(a2 + 8);
              goto LABEL_247;
            }

            *(v96 + 16) = *(a4 + 1);
            if (v88 >= 33)
            {
              v97 = v96 + v88;
              v98 = (v96 + 32);
              v99 = (a4 + 48);
              do
              {
                *v98 = *(v99 - 1);
                v100 = *v99;
                v99 += 32;
                v98[1] = v100;
                v98 += 2;
              }

              while (v98 < v97);
            }

LABEL_244:
            *(a2 + 24) += v88;
            v101 = *(a2 + 8);
            if (v88 >= 0x10000)
            {
              v159 = (v101 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v159;
            }

            v60 = v9 - 1;
LABEL_247:
            v102 = v64 + 4;
            *(v101 + 4) = v88;
            *v101 = 1;
            v108 = v64 + 1;
            v103 = v25;
            if (v108 >> 16)
            {
              goto LABEL_207;
            }

            goto LABEL_208;
          }

          if (a4 <= v31)
          {
            v90 = (v89 + v31 - a4);
            *v89 = *a4;
            if ((v31 - a4) >= 17)
            {
              v91 = v89 + 1;
              v92 = (a4 + 32);
              do
              {
                *v91 = *(v92 - 1);
                v93 = *v92;
                v92 += 32;
                v91[1] = v93;
                v91 += 2;
              }

              while (v91 < v90);
            }

            a4 = (v9 - 32);
            v89 = v90;
          }

          if (a4 >= v46)
          {
            goto LABEL_244;
          }

          v94 = v46 - a4;
          if ((v46 - a4) < 8)
          {
            v131 = v89;
          }

          else if ((v89 - a4) < 0x20)
          {
            v131 = v89;
          }

          else
          {
            if (v94 < 0x20)
            {
              v95 = 0;
LABEL_187:
              v136 = v94 & 0xFFFFFFFFFFFFFFF8;
              v131 = v89 + (v94 & 0xFFFFFFFFFFFFFFF8);
              v137 = v95 - (v94 & 0xFFFFFFFFFFFFFFF8);
              v138 = &a4[v95];
              v139 = (v89 + v95);
              do
              {
                v140 = *v138;
                v138 += 8;
                *v139++ = v140;
                v137 += 8;
              }

              while (v137);
              if (v94 == v136)
              {
                goto LABEL_244;
              }

              a4 += v136;
              goto LABEL_243;
            }

            v95 = v94 & 0xFFFFFFFFFFFFFFE0;
            v132 = (a4 + 16);
            v133 = v89 + 1;
            v134 = v94 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v135 = *v132;
              *(v133 - 1) = *(v132 - 1);
              *v133 = v135;
              v132 += 32;
              v133 += 2;
              v134 -= 32;
            }

            while (v134);
            if (v94 == v95)
            {
              goto LABEL_244;
            }

            if ((v94 & 0x18) != 0)
            {
              goto LABEL_187;
            }

            a4 += v95;
            v131 = v89 + v95;
          }

          do
          {
LABEL_243:
            v158 = *a4++;
            *v131++ = v158;
          }

          while (a4 != v46);
          goto LABEL_244;
        }

        v59 = v20 + 13;
        v57 = &v20[-v25 + 13];
        v60 = v9 - 1;
        while (1)
        {
          v61 = v59;
          if (v59 >= v30)
          {
            break;
          }

          v63 = *v57;
          v57 += 8;
          v62 = v63;
          v59 += 8;
          if (v63 != *v61)
          {
            v64 = &v61[__clz(__rbit64(*v61 ^ v62)) >> 3] - v56;
            goto LABEL_91;
          }
        }
      }

      if (v61 >= v58)
      {
        if (v61 >= v60)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (*v57 == *v61)
        {
          v57 += 4;
          v61 += 4;
        }

        if (v61 >= v60)
        {
LABEL_55:
          if (v61 >= v9)
          {
LABEL_58:
            v64 = v61 - v56;
            goto LABEL_91;
          }

LABEL_56:
          if (*v57 == *v61)
          {
            ++v61;
          }

          goto LABEL_58;
        }
      }

      if (*v57 == *v61)
      {
        v57 += 2;
        v61 += 2;
      }

      if (v61 >= v9)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v37 = 1;
    while (1)
    {
      v52 = (0xCF1BBCDCBFA56300 * v33) >> v29;
      v53 = *(v7 + 4 * v52);
      v45 = v20 - v8;
      *(v7 + 4 * v52) = v20 - v8;
      *(v6 + 4 * v34) = v20 - v8;
      v47 = *_X5;
      v34 = (0xCF1BBCDCB7A56463 * *_X5) >> v28;
      if (v35 > v16 && *v36 == v33)
      {
LABEL_44:
        v65 = (v20 + 8);
        v66 = v36 + 1;
        if (v30 <= (v20 + 8))
        {
          v68 = v20 + 8;
        }

        else
        {
          if (*v66 != *v65)
          {
            v71 = __clz(__rbit64(*v65 ^ *v66)) >> 3;
LABEL_109:
            v72 = v8 + v16;
LABEL_110:
            v102 = v71 + 8;
            v103 = (v20 - v36);
            if (v36 > v72 && v20 > a4)
            {
              v104 = v20 - 1;
              v105 = v36 - 1;
              v60 = v9 - 1;
              while (*v104 == *v105)
              {
                ++v102;
                v106 = v104 - 1;
                if (v104 > a4)
                {
                  --v104;
                  v542 = v105-- > v72;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_116;
              }

              goto LABEL_150;
            }

            goto LABEL_152;
          }

          v66 = v36 + 2;
          v67 = v20 + 16;
          while (1)
          {
            v68 = v67;
            if (v67 >= v30)
            {
              break;
            }

            v70 = *v66++;
            v69 = v70;
            v67 += 8;
            if (v70 != *v68)
            {
              v71 = &v68[__clz(__rbit64(*v68 ^ v69)) >> 3] - v65;
              goto LABEL_109;
            }
          }
        }

        if (v68 < v544 && *v66 == *v68)
        {
          v66 = (v66 + 4);
          v68 += 4;
        }

        if (v68 < v548 && *v66 == *v68)
        {
          v66 = (v66 + 2);
          v68 += 2;
        }

        if (v68 < v9 && *v66 == *v68)
        {
          ++v68;
        }

        v72 = v8 + v16;
        v71 = v68 - v65;
        goto LABEL_110;
      }

      v35 = *(v6 + 4 * v34);
      v36 = (v8 + v35);
      if (v53 > v16)
      {
        v48 = v8 + v53;
        if (*(v8 + v53) == *v20)
        {
          break;
        }
      }

      if (_X5 >= v32)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v37;
        v32 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      v33 = *_X5;
      _X5 += v37;
      if (_X5 > v17)
      {
        goto LABEL_948;
      }
    }

LABEL_75:
    v73 = v8 + v16;
    if (v35 <= v16 || *v36 != v47)
    {
      v81 = (v20 + 4);
      v82 = (v48 + 4);
      if (v30 <= (v20 + 4))
      {
        v84 = v20 + 4;
      }

      else
      {
        if (*v82 != *v81)
        {
          v87 = __clz(__rbit64(*v81 ^ *v82)) >> 3;
          goto LABEL_144;
        }

        v82 = (v48 + 12);
        v83 = v20 + 12;
        while (1)
        {
          v84 = v83;
          if (v83 >= v30)
          {
            break;
          }

          v86 = *v82++;
          v85 = v86;
          v83 += 8;
          if (v86 != *v84)
          {
            v87 = &v84[__clz(__rbit64(*v84 ^ v85)) >> 3] - v81;
            v73 = v8 + v16;
            goto LABEL_144;
          }
        }

        v73 = v8 + v16;
      }

      if (v84 < v544 && *v82 == *v84)
      {
        v82 = (v82 + 4);
        v84 += 4;
      }

      if (v84 < v548 && *v82 == *v84)
      {
        v82 = (v82 + 2);
        v84 += 2;
      }

      if (v84 < v9 && *v82 == *v84)
      {
        ++v84;
      }

      v87 = v84 - v81;
LABEL_144:
      v102 = v87 + 4;
      v103 = &v20[-v48];
      if (v20 > a4 && v48 > v73)
      {
        v106 = v20 - 1;
        v107 = (v48 - 1);
        v60 = v9 - 1;
        while (*v106 == *v107)
        {
          ++v102;
          v104 = v106 - 1;
          if (v106 > a4)
          {
            --v106;
            v542 = v107-- > v73;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_150;
        }

LABEL_116:
        v46 = v106 + 1;
        if (v37 <= 3)
        {
          goto LABEL_153;
        }

        goto LABEL_154;
      }

LABEL_152:
      v46 = v20;
      v60 = v9 - 1;
      if (v37 > 3)
      {
        goto LABEL_154;
      }

      goto LABEL_153;
    }

    v74 = (_X5 + 8);
    v75 = (v36 + 1);
    if (v30 <= (_X5 + 8))
    {
      v77 = _X5 + 8;
      goto LABEL_120;
    }

    if (*v75 == *v74)
    {
      v75 = (v36 + 2);
      v76 = _X5 + 16;
      while (1)
      {
        v77 = v76;
        if (v76 >= v30)
        {
          break;
        }

        v79 = *v75;
        v75 += 4;
        v78 = v79;
        v76 += 8;
        if (v79 != *v77)
        {
          v80 = &v77[__clz(__rbit64(*v77 ^ v78)) >> 3] - v74;
          v73 = v8 + v16;
          goto LABEL_192;
        }
      }

LABEL_120:
      v60 = v9 - 1;
      if (v77 >= v544)
      {
        if (v77 >= v548)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (*v75 == *v77)
        {
          v75 += 2;
          v77 += 4;
        }

        if (v77 >= v548)
        {
LABEL_124:
          if (v77 < v9)
          {
            goto LABEL_125;
          }

          goto LABEL_127;
        }
      }

      if (*v75 == *v77)
      {
        ++v75;
        v77 += 2;
      }

      if (v77 < v9)
      {
LABEL_125:
        if (*v75 == *v77)
        {
          ++v77;
        }
      }

LABEL_127:
      v73 = v8 + v16;
      v80 = v77 - v74;
    }

    else
    {
      v80 = __clz(__rbit64(*v74 ^ *v75)) >> 3;
LABEL_192:
      v60 = v9 - 1;
    }

    v102 = v80 + 8;
    v103 = (_X5 - v36);
    if (v36 > v73 && _X5 > a4)
    {
      v104 = _X5 - 1;
      v141 = v36 - 1;
      while (*v104 == *v141)
      {
        ++v102;
        v106 = v104 - 1;
        if (v104 > a4)
        {
          --v104;
          v542 = v141-- > v73;
          if (v542)
          {
            continue;
          }
        }

        goto LABEL_116;
      }

LABEL_150:
      v46 = v104 + 1;
      if (v37 > 3)
      {
        goto LABEL_154;
      }

LABEL_153:
      *(v6 + 4 * v34) = _X5 - v8;
      goto LABEL_154;
    }

    v46 = _X5;
    if (v37 <= 3)
    {
      goto LABEL_153;
    }

LABEL_154:
    v108 = v46 - a4;
    v109 = *(a2 + 24);
    v58 = v9 - 3;
    if (v46 > v31)
    {
      if (a4 <= v31)
      {
        v110 = (v109 + v31 - a4);
        *v109 = *a4;
        if ((v31 - a4) >= 17)
        {
          v111 = v109 + 1;
          v112 = (a4 + 32);
          do
          {
            *v111 = *(v112 - 1);
            v113 = *v112;
            v112 += 32;
            v111[1] = v113;
            v111 += 2;
          }

          while (v111 < v110);
        }

        a4 = (v9 - 32);
        v109 = v110;
      }

      if (a4 >= v46)
      {
        goto LABEL_204;
      }

      v114 = v46 - a4;
      if ((v46 - a4) < 8)
      {
        v121 = v109;
      }

      else if ((v109 - a4) < 0x20)
      {
        v121 = v109;
      }

      else
      {
        if (v114 < 0x20)
        {
          v115 = 0;
LABEL_177:
          v126 = v114 & 0xFFFFFFFFFFFFFFF8;
          v121 = v109 + (v114 & 0xFFFFFFFFFFFFFFF8);
          v127 = v115 - (v114 & 0xFFFFFFFFFFFFFFF8);
          v128 = &a4[v115];
          v129 = (v109 + v115);
          do
          {
            v130 = *v128;
            v128 += 8;
            *v129++ = v130;
            v127 += 8;
          }

          while (v127);
          v60 = v9 - 1;
          if (v114 != v126)
          {
            a4 += v126;
            goto LABEL_203;
          }

LABEL_204:
          *(a2 + 24) += v108;
          v101 = *(a2 + 8);
          if (v108 >= 0x10000)
          {
            v143 = (v101 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v143;
          }

          goto LABEL_206;
        }

        v115 = v114 & 0xFFFFFFFFFFFFFFE0;
        v122 = (a4 + 16);
        v123 = v109 + 1;
        v124 = v114 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v125 = *v122;
          *(v123 - 1) = *(v122 - 1);
          *v123 = v125;
          v122 += 32;
          v123 += 2;
          v124 -= 32;
        }

        while (v124);
        if (v114 == v115)
        {
          goto LABEL_204;
        }

        if ((v114 & 0x18) != 0)
        {
          goto LABEL_177;
        }

        a4 += v115;
        v121 = v109 + v115;
      }

      do
      {
LABEL_203:
        v142 = *a4++;
        *v121++ = v142;
      }

      while (a4 != v46);
      goto LABEL_204;
    }

    *v109 = *a4;
    v116 = *(a2 + 24);
    if (v108 > 0x10)
    {
      *(v116 + 16) = *(a4 + 1);
      if (v108 >= 33)
      {
        v117 = v116 + v108;
        v118 = (v116 + 32);
        v119 = (a4 + 48);
        do
        {
          *v118 = *(v119 - 1);
          v120 = *v119;
          v119 += 32;
          v118[1] = v120;
          v118 += 2;
        }

        while (v118 < v117);
      }

      goto LABEL_204;
    }

    *(a2 + 24) = v116 + v108;
    v101 = *(a2 + 8);
LABEL_206:
    *(v101 + 4) = v108;
    *v101 = v103 + 3;
    LOWORD(v108) = v102 - 3;
    v24 = v25;
    v25 = v103;
    if (v102 - 3 >= 0x10000)
    {
LABEL_207:
      v144 = (v101 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v144;
      v25 = v103;
    }

LABEL_208:
    *(v101 + 6) = v108;
    v145 = v101 + 8;
    *(a2 + 8) = v101 + 8;
    a4 = &v46[v102];
    if (&v46[v102] > v17)
    {
      v146 = v24;
      v147 = v25;
      goto LABEL_240;
    }

    v148 = *(v8 + (v45 + 2));
    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v148) >> v28)) = v45 + 2;
    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v28)) = a4 - 2 - v8;
    *(v7 + 4 * ((0xCF1BBCDCBFA56300 * v148) >> v29)) = v45 + 2;
    *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 1)) >> v29)) = a4 - 1 - v8;
    while (2)
    {
      v147 = v24;
      v24 = v25;
      if (v147 && *a4 == *&a4[-v147])
      {
        v149 = (a4 + 4);
        v150 = &a4[-v147 + 4];
        if (v30 <= (a4 + 4))
        {
          v152 = (a4 + 4);
          goto LABEL_221;
        }

        if (*v150 == *v149)
        {
          v151 = (a4 + 12);
          v150 = &a4[-v147 + 12];
          while (1)
          {
            v152 = v151;
            if (v151 >= v30)
            {
              break;
            }

            v154 = *v150;
            v150 += 8;
            v153 = v154;
            v151 += 8;
            if (v154 != *v152)
            {
              v155 = &v152[__clz(__rbit64(*v152 ^ v153)) >> 3] - v149;
              goto LABEL_235;
            }
          }

LABEL_221:
          if (v152 >= v58)
          {
            if (v152 >= v60)
            {
              goto LABEL_225;
            }
          }

          else
          {
            if (*v150 == *v152)
            {
              v150 += 4;
              v152 += 4;
            }

            if (v152 >= v60)
            {
LABEL_225:
              if (v152 < v9)
              {
                goto LABEL_226;
              }

              goto LABEL_228;
            }
          }

          if (*v150 == *v152)
          {
            v150 += 2;
            v152 += 2;
          }

          if (v152 < v9)
          {
LABEL_226:
            if (*v150 == *v152)
            {
              ++v152;
            }
          }

LABEL_228:
          v155 = v152 - v149;
        }

        else
        {
          v155 = __clz(__rbit64(*v149 ^ *v150)) >> 3;
        }

LABEL_235:
        v156 = *a4;
        *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v29)) = a4 - v8;
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v156) >> v28)) = a4 - v8;
        if (a4 <= v31)
        {
          **(a2 + 24) = *a4;
          v145 = *(a2 + 8);
        }

        *(v145 + 4) = 0;
        *v145 = 1;
        if (v155 + 1 >= 0x10000)
        {
          v157 = (v145 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v157;
        }

        *(v145 + 6) = v155 + 1;
        v145 += 8;
        *(a2 + 8) = v145;
        a4 += v155 + 4;
        v25 = v147;
        v146 = v24;
        if (a4 > v17)
        {
          goto LABEL_240;
        }

        continue;
      }

      break;
    }

    v146 = v147;
    v147 = v25;
LABEL_240:
    _X5 = (a4 + 1);
    v25 = v147;
    v24 = v146;
    v20 = a4;
  }

  while ((a4 + 1) <= v17);
LABEL_950:
  v540 = v19;
  if (v553 <= v552)
  {
    v541 = 0;
  }

  else
  {
    v541 = v553;
  }

  if (v19 <= v552)
  {
    v540 = 0;
  }

  if (v147)
  {
    v541 = v147;
    v542 = v553 > v552;
  }

  else
  {
    v542 = 0;
  }

  if (v542)
  {
    v540 = v553;
  }

  if (v146)
  {
    v540 = v146;
  }

  *a3 = v541;
  a3[1] = v540;
  return v9 - a4;
}