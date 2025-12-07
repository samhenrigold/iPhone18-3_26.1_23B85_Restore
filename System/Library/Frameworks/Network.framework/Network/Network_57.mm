void nw_flow_replay_frame_finalizer(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  buffer = nw_frame_get_buffer(v8, 0);
  if (buffer)
  {
    free(buffer);
  }

  v5 = v8[2];
  v6 = v8[3];
  if (*(v8 + 1) != 0)
  {
    v7 = (a3 + 304);
    if (v5)
    {
      v7 = (v5 + 24);
    }

    *v7 = v6;
    *v6 = v5;
    v8[2] = 0;
    v8[3] = 0;
  }
}

uint64_t nw_protocol_http3_stream_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v22, &type, &v35))
    {
      goto LABEL_85;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_http3_stream_replace_input_handler";
          v25 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v30 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v30)
        {
          *buf = 136446210;
          v38 = "nw_protocol_http3_stream_replace_input_handler";
          v25 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      if (!v30)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v38 = "nw_protocol_http3_stream_replace_input_handler";
      v39 = 2082;
      v40 = backtrace_string;
      v31 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_85;
    }

    *buf = 136446210;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v25 = "%{public}s called with null protocol";
LABEL_84:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_85;
  }

  handle = a1->handle;
  if (!handle)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null http3_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v22, &type, &v35))
    {
      goto LABEL_85;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_http3_stream_replace_input_handler";
          v25 = "%{public}s called with null http3_stream, backtrace limit exceeded";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v32 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v32)
        {
          *buf = 136446210;
          v38 = "nw_protocol_http3_stream_replace_input_handler";
          v25 = "%{public}s called with null http3_stream, no backtrace";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      if (!v32)
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v38 = "nw_protocol_http3_stream_replace_input_handler";
      v39 = 2082;
      v40 = backtrace_string;
      v31 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_85;
    }

    *buf = 136446210;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v25 = "%{public}s called with null http3_stream";
    goto LABEL_84;
  }

  if (!a2)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null old_input_handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v22, &type, &v35))
    {
      goto LABEL_85;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_85;
      }

      *buf = 136446210;
      v38 = "nw_protocol_http3_stream_replace_input_handler";
      v25 = "%{public}s called with null old_input_handler";
      goto LABEL_84;
    }

    if (v35 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v38 = "nw_protocol_http3_stream_replace_input_handler";
        v25 = "%{public}s called with null old_input_handler, backtrace limit exceeded";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v33 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v33)
      {
        *buf = 136446210;
        v38 = "nw_protocol_http3_stream_replace_input_handler";
        v25 = "%{public}s called with null old_input_handler, no backtrace";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (!v33)
    {
      goto LABEL_67;
    }

    *buf = 136446466;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v39 = 2082;
    v40 = backtrace_string;
    v31 = "%{public}s called with null old_input_handler, dumping backtrace:%{public}s";
LABEL_66:
    _os_log_impl(&dword_181A37000, v23, v24, v31, buf, 0x16u);
    goto LABEL_67;
  }

  if (!a3)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null new_input_handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v22, &type, &v35))
    {
      goto LABEL_85;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v38 = "nw_protocol_http3_stream_replace_input_handler";
        v25 = "%{public}s called with null new_input_handler";
        goto LABEL_84;
      }

LABEL_85:
      if (!v22)
      {
        return 0;
      }

      v20 = v22;
      goto LABEL_32;
    }

    if (v35 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v38 = "nw_protocol_http3_stream_replace_input_handler";
        v25 = "%{public}s called with null new_input_handler, backtrace limit exceeded";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v34 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v38 = "nw_protocol_http3_stream_replace_input_handler";
        v25 = "%{public}s called with null new_input_handler, no backtrace";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (v34)
    {
      *buf = 136446466;
      v38 = "nw_protocol_http3_stream_replace_input_handler";
      v39 = 2082;
      v40 = backtrace_string;
      v31 = "%{public}s called with null new_input_handler, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

LABEL_67:
    free(backtrace_string);
    goto LABEL_85;
  }

  if (a1->default_input_handler == a2)
  {
    nw_protocol_set_input_handler(a1->handle, a3);
    if (handle[14] == a2)
    {
      nw_protocol_set_input_handler((handle + 8), a3);
      v13 = handle[43];
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = handle[43];
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    if (*(v13 + 48) == a2)
    {
      nw_protocol_set_input_handler(v13, a3);
      if (a3->output_handler)
      {
        return 1;
      }

      goto LABEL_23;
    }

LABEL_22:
    if (a3->output_handler)
    {
      return 1;
    }

LABEL_23:
    nw_protocol_set_output_handler(a3, a1);
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  default_input_handler = a1->default_input_handler;
  *buf = 136446722;
  v38 = "nw_protocol_http3_stream_replace_input_handler";
  v39 = 2048;
  v40 = default_input_handler;
  v41 = 2048;
  v42 = a2;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Old input handler does not match (%p != %p)", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v8, &type, &v35))
  {
    goto LABEL_30;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    v11 = a1->default_input_handler;
    *buf = 136446722;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v39 = 2048;
    v40 = v11;
    v41 = 2048;
    v42 = a2;
    v12 = "%{public}s Old input handler does not match (%p != %p)";
LABEL_29:
    _os_log_impl(&dword_181A37000, v9, v10, v12, buf, 0x20u);
    goto LABEL_30;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    v17 = a1->default_input_handler;
    *buf = 136446722;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v39 = 2048;
    v40 = v17;
    v41 = 2048;
    v42 = a2;
    v12 = "%{public}s Old input handler does not match (%p != %p), backtrace limit exceeded";
    goto LABEL_29;
  }

  v14 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v10 = type;
  v15 = os_log_type_enabled(gLogObj, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_30;
    }

    v19 = a1->default_input_handler;
    *buf = 136446722;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v39 = 2048;
    v40 = v19;
    v41 = 2048;
    v42 = a2;
    v12 = "%{public}s Old input handler does not match (%p != %p), no backtrace";
    goto LABEL_29;
  }

  if (v15)
  {
    v16 = a1->default_input_handler;
    *buf = 136446978;
    v38 = "nw_protocol_http3_stream_replace_input_handler";
    v39 = 2048;
    v40 = v16;
    v41 = 2048;
    v42 = a2;
    v43 = 2082;
    v44 = v14;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Old input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v14);
LABEL_30:
  if (v8)
  {
    v20 = v8;
LABEL_32:
    free(v20);
  }

  return 0;
}

void nw_protocol_release(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (a1 = *(a1 + 64)) != 0)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = v3 - 1;
        *(a1 + 88) = v4;
        if (!v4)
        {
          v5 = *(a1 + 64);
          if (v5)
          {
            *(a1 + 64) = 0;
            v6 = a1;
            v5[2](v5);
            _Block_release(v5);
            a1 = v6;
          }

          if ((*(a1 + 72) & 1) != 0 && *(a1 + 64))
          {
            v7 = a1;
            _Block_release(*(a1 + 64));
            a1 = v7;
          }

          free(a1);
        }
      }
    }
  }
}

void nw_http2_deallocate_options(int a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    free(a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_http2_deallocate_options";
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
        v12 = "nw_http2_deallocate_options";
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
            v12 = "nw_http2_deallocate_options";
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
        v12 = "nw_http2_deallocate_options";
        v6 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_http2_deallocate_options";
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

void nw_resolver_start_query_timer(NWConcrete_nw_resolver *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!*(v1 + 19))
  {
    if ((*(v1 + 370) & 0x20) != 0)
    {
      goto LABEL_33;
    }

    if (*(v1 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_32;
      }

      v8 = *(v2 + 3);
      v9 = v8;
      if (v8)
      {
        logging_description = _nw_endpoint_get_logging_description(v8);
      }

      else
      {
        logging_description = "<NULL>";
      }

      *buf = 136446978;
      v45 = "nw_resolver_start_query_timer";
      v46 = 2082;
      *v47 = v2 + 280;
      *&v47[8] = 1024;
      *&v47[10] = 2;
      *&v47[14] = 2082;
      *&v47[16] = logging_description;
      v22 = "%{public}s [C%{public}s] Starting %us query timer to receive all answers for %{public}s";
      v23 = v7;
      v24 = 38;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
LABEL_32:

LABEL_33:
        v25 = *(v2 + 4);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = ___ZL29nw_resolver_start_query_timerP22NWConcrete_nw_resolver_block_invoke;
        v42[3] = &unk_1E6A3D868;
        v43 = v2;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = ___ZL29nw_resolver_start_query_timerP22NWConcrete_nw_resolver_block_invoke_191;
        v40[3] = &unk_1E6A3D868;
        v41 = v43;
        source = nw_queue_context_create_source(v25, 2, 3, 0, v42, v40);
        *(v2 + 19) = source;
        if (source)
        {
          v27 = dispatch_time(0x8000000000000000, 2000000000);
          if (*source)
          {
            dispatch_source_set_timer(*source, v27, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
          }

          else
          {
            source[4] = v27;
            source[5] = -1;
            if (*(source + 48) == 1 && *(source + 49) == 1)
            {
              nw_queue_source_run_timer(source);
            }
          }

          nw_queue_activate_source(*(v2 + 19));
          goto LABEL_47;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        *buf = 136446210;
        v45 = "nw_resolver_start_query_timer";
        v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s nw_queue_context_create_source failed", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v38 = 0;
        if (__nwlog_fault(v29, &type, &v38))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            v31 = type;
            if (os_log_type_enabled(v30, type))
            {
              *buf = 136446210;
              v45 = "nw_resolver_start_query_timer";
              _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_queue_context_create_source failed", buf, 0xCu);
            }
          }

          else if (v38 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            if (backtrace_string)
            {
              v33 = backtrace_string;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              v35 = type;
              if (os_log_type_enabled(v34, type))
              {
                *buf = 136446466;
                v45 = "nw_resolver_start_query_timer";
                v46 = 2082;
                *v47 = v33;
                _os_log_impl(&dword_181A37000, v34, v35, "%{public}s nw_queue_context_create_source failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v33);
              if (!v29)
              {
                goto LABEL_47;
              }

              goto LABEL_42;
            }

            v30 = __nwlog_obj();
            v37 = type;
            if (os_log_type_enabled(v30, type))
            {
              *buf = 136446210;
              v45 = "nw_resolver_start_query_timer";
              _os_log_impl(&dword_181A37000, v30, v37, "%{public}s nw_queue_context_create_source failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            v36 = type;
            if (os_log_type_enabled(v30, type))
            {
              *buf = 136446210;
              v45 = "nw_resolver_start_query_timer";
              _os_log_impl(&dword_181A37000, v30, v36, "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v29)
        {
LABEL_47:

          v3 = v43;
          goto LABEL_48;
        }

LABEL_42:
        free(v29);
        goto LABEL_47;
      }

      v15 = *(v2 + 91);
      v16 = *(v2 + 3);
      v17 = v16;
      if (v16)
      {
        v18 = _nw_endpoint_get_logging_description(v16);
      }

      else
      {
        v18 = "<NULL>";
      }

      *buf = 136446978;
      v45 = "nw_resolver_start_query_timer";
      v46 = 1024;
      *v47 = v15;
      *&v47[4] = 1024;
      *&v47[6] = 2;
      *&v47[10] = 2082;
      *&v47[12] = v18;
      v22 = "%{public}s [R%u] Starting %us query timer to receive all answers for %{public}s";
      v23 = v7;
      v24 = 34;
    }

    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
    goto LABEL_32;
  }

  if ((*(v1 + 370) & 0x20) == 0)
  {
    if (*(v1 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_48;
      }

      v4 = *(v2 + 3);
      v5 = v4;
      if (v4)
      {
        v6 = _nw_endpoint_get_logging_description(v4);
      }

      else
      {
        v6 = "<NULL>";
      }

      *buf = 136446722;
      v45 = "nw_resolver_start_query_timer";
      v46 = 2082;
      *v47 = v2 + 280;
      *&v47[8] = 2082;
      *&v47[10] = v6;
      v19 = "%{public}s [C%{public}s] Query timer already running for %{public}s";
      v20 = v3;
      v21 = 32;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
LABEL_48:

        goto LABEL_49;
      }

      v11 = *(v2 + 91);
      v12 = *(v2 + 3);
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
      v45 = "nw_resolver_start_query_timer";
      v46 = 1024;
      *v47 = v11;
      *&v47[4] = 2082;
      *&v47[6] = v14;
      v19 = "%{public}s [R%u] Query timer already running for %{public}s";
      v20 = v3;
      v21 = 28;
    }

    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
    goto LABEL_48;
  }

LABEL_49:
}

uint64_t nw_flow_replay_remove_input_handler(nw_protocol *a1, nw_protocol *a2, char a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v7 = *(handle + 20);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = v9[29];

      if (v10 == 2)
      {
        if (a2 && a2->output_handler == a1)
        {
          nw_protocol_set_output_handler(a2, 0);
        }

        if (a1->default_input_handler == a2)
        {
          nw_protocol_set_input_handler(a1, 0);
          output_handler = a1->output_handler;
          v12 = *(handle + 36);
          if (output_handler)
          {
            if (v12)
            {
              nw_hash_table_release_all_objects(v12);
              output_handler = a1->output_handler;
            }

            nw_protocol_remove_input_handler(output_handler, a1);
          }

          else if (v12)
          {
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = ___ZL35nw_flow_replay_remove_input_handlerP11nw_protocolS0_b_block_invoke;
            v33[3] = &__block_descriptor_49_e23_B16__0__nw_hash_node__8l;
            v33[4] = handle;
            v33[5] = a1;
            v34 = a3;
            nw_hash_table_apply(v12, v33);
          }

          v15 = 1;
          goto LABEL_19;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (v10 > 5)
          {
            v14 = "unknown-mode";
          }

          else
          {
            v14 = off_1E6A31018[v10];
          }

          *buf = 136446722;
          v38 = "nw_flow_replay_remove_input_handler";
          v39 = 2082;
          v40 = v14;
          v41 = 2082;
          v42 = "flow";
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_18:
      v15 = 0;
LABEL_19:

      return v15;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_flow_replay_remove_input_handler";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v22, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v38 = "nw_flow_replay_remove_input_handler";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v23, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v38 = "nw_flow_replay_remove_input_handler";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v29, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_59;
        }

        if (v30)
        {
          *buf = 136446210;
          v38 = "nw_flow_replay_remove_input_handler";
          _os_log_impl(&dword_181A37000, v23, v29, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v38 = "nw_flow_replay_remove_input_handler";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_59:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_18;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_flow_replay_remove_input_handler";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v18, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v38 = "nw_flow_replay_remove_input_handler";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v35 == 1)
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
          v38 = "nw_flow_replay_remove_input_handler";
          v39 = 2082;
          v40 = v25;
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_53;
      }

      if (v27)
      {
        *buf = 136446210;
        v38 = "nw_flow_replay_remove_input_handler";
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v38 = "nw_flow_replay_remove_input_handler";
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_53:
  if (v18)
  {
    free(v18);
  }

  return 0;
}

uint64_t nw_protocol_masque_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v180 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1;
    handle = a1->handle;
    v6 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v7 = 1;
      goto LABEL_11;
    }

    v6 = *a1[1].flow_id;
    if (v6)
    {
LABEL_6:
      callbacks = v6[1].callbacks;
      v7 = 0;
      if (callbacks)
      {
        v6[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v7 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v9 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_remove_input_handler";
        v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        v174 = 0;
        if (!__nwlog_fault(v10, type, &v174))
        {
          goto LABEL_101;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_101;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_remove_input_handler";
          v13 = "%{public}s called with null masque";
        }

        else
        {
          if (v174 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v40 = gLogObj;
            v41 = type[0];
            v42 = os_log_type_enabled(gLogObj, type[0]);
            if (backtrace_string)
            {
              if (v42)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_masque_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_101;
            }

            if (!v42)
            {
LABEL_101:
              if (v10)
              {
                free(v10);
              }

              goto LABEL_103;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_masque_remove_input_handler";
            v13 = "%{public}s called with null masque, no backtrace";
            v61 = v40;
            v62 = v41;
LABEL_100:
            _os_log_impl(&dword_181A37000, v61, v62, v13, buf, 0xCu);
            goto LABEL_101;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          v12 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_101;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_remove_input_handler";
          v13 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v61 = v11;
        v62 = v12;
        goto LABEL_100;
      }

      v9 = *a1[1].flow_id;
    }

    if ((BYTE1(v9[9].callbacks) & 1) == 0 && gLogDatapath == 1)
    {
      v157 = a2;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v158 = gprivacy_proxyLogObj;
      v159 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG);
      a2 = v157;
      if (v159)
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_masque_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 603;
        *&buf[22] = 2080;
        v178 = " ";
        _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        a2 = v157;
      }
    }

    if (!a2)
    {
LABEL_103:
      result = 0;
      if (v7)
      {
        return result;
      }

LABEL_267:
      v146 = v4->handle;
      if (v146 == &nw_protocol_ref_counted_handle || v146 == &nw_protocol_ref_counted_additional_handle && (v4 = *v4[1].flow_id) != 0)
      {
        v147 = v4[1].callbacks;
        if (v147)
        {
          v148 = (v147 - 1);
          v4[1].callbacks = v148;
          if (!v148)
          {
            v149 = result;
            v150 = *v4[1].flow_id;
            if (v150)
            {
              *v4[1].flow_id = 0;
              v150[2](v150);
              _Block_release(v150);
            }

            if (v4[1].flow_id[8])
            {
              v151 = *v4[1].flow_id;
              if (v151)
              {
                _Block_release(v151);
              }
            }

            free(v4);
            return v149;
          }
        }
      }

      return result;
    }

    p_output_handler = &v9[1].output_handler;
    output_handler = a2->output_handler;
    if (output_handler == v4)
    {
      v16 = output_handler->handle;
      if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
      {
        v17 = output_handler[1].callbacks;
        if (v17)
        {
          v18 = (v17 - 1);
          output_handler[1].callbacks = v18;
          if (!v18)
          {
            v19 = a2;
            v20 = *output_handler[1].flow_id;
            if (v20)
            {
              *output_handler[1].flow_id = 0;
              v20[2](v20);
              _Block_release(v20);
            }

            if (output_handler[1].flow_id[8])
            {
              v21 = *output_handler[1].flow_id;
              if (v21)
              {
                _Block_release(v21);
              }
            }

            free(output_handler);
            a2 = v19;
          }
        }
      }

      output_handler = 0;
      a2->output_handler = 0;
    }

    default_input_handler = v4->default_input_handler;
    if (default_input_handler != a2)
    {
      output_handler_context = a2->output_handler_context;
      if (!output_handler_context)
      {
        goto LABEL_103;
      }

      a2->output_handler_context = 0;
      if (output_handler)
      {
        v24 = output_handler->handle;
        if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
        {
          v25 = output_handler[1].callbacks;
          if (v25)
          {
            v26 = (v25 - 1);
            output_handler[1].callbacks = v26;
            if (!v26)
            {
              v27 = a2;
              v28 = *output_handler[1].flow_id;
              if (v28)
              {
                *output_handler[1].flow_id = 0;
                v28[2](v28);
                _Block_release(v28);
              }

              if (output_handler[1].flow_id[8])
              {
                v29 = *output_handler[1].flow_id;
                if (v29)
                {
                  _Block_release(v29);
                }
              }

              free(output_handler);
              a2 = v27;
            }
          }
        }

        a2->output_handler = 0;
      }

      v30 = output_handler_context[4];
      if (v30)
      {
        *(v30 + 40) = type;
        v31 = output_handler_context[5];
        *type = v30;
        v176 = v31;
        output_handler_context[4] = 0;
        output_handler_context[5] = output_handler_context + 4;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v178 = &__block_descriptor_tmp_21_49595;
        v179 = 0;
        do
        {
          v32 = *type;
          if (!*type)
          {
            break;
          }

          v33 = *(*type + 32);
          v34 = *(*type + 40);
          v35 = (v33 + 40);
          if (!v33)
          {
            v35 = &v176;
          }

          *v35 = v34;
          *v34 = v33;
          *(v32 + 32) = 0;
          *(v32 + 40) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }

      v36 = output_handler_context[6];
      if (v36)
      {
        os_release(v36);
        output_handler_context[6] = 0;
      }

      if (a3)
      {
        if (!v4->default_input_handler)
        {
          v37 = v9[8].default_input_handler;
          if (!v37 || !LODWORD(v37->default_input_handler))
          {
            v38 = &v9[1].output_handler;
LABEL_265:
            nw_masque_protocol_destroy(v38);
            goto LABEL_266;
          }
        }
      }

      goto LABEL_266;
    }

    v43 = default_input_handler->handle;
    if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
    {
      v44 = default_input_handler[1].callbacks;
      if (v44)
      {
        v45 = (v44 - 1);
        default_input_handler[1].callbacks = v45;
        if (!v45)
        {
          v46 = *default_input_handler[1].flow_id;
          if (v46)
          {
            *default_input_handler[1].flow_id = 0;
            v46[2](v46);
            _Block_release(v46);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v47 = *default_input_handler[1].flow_id;
            if (v47)
            {
              _Block_release(v47);
            }
          }

          free(default_input_handler);
        }
      }
    }

    v4->default_input_handler = 0;
    identifier = v9[2].identifier;
    if (identifier)
    {
      v49 = *identifier[1].name;
      if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (identifier = *&identifier[1].name[24]) != 0)
      {
        v50 = *&identifier[2].name[8];
        if (v50)
        {
          v51 = v50 - 1;
          *&identifier[2].name[8] = v51;
          if (!v51)
          {
            v52 = *&identifier[1].name[24];
            if (v52)
            {
              *&identifier[1].name[24] = 0;
              v52[2](v52);
              _Block_release(v52);
            }

            if (identifier[1].level)
            {
              v53 = *&identifier[1].name[24];
              if (v53)
              {
                _Block_release(v53);
              }
            }

            free(identifier);
          }
        }
      }

      v9[2].identifier = 0;
    }

    v54 = v9[3].identifier;
    if (v54)
    {
      v55 = *&v54->name[24];
      if (v55)
      {
        v56 = *(v55 + 8);
        if (v56)
        {
          v57 = (v9 + 176);
          v58 = *v54[1].name;
          v59 = v9[3].identifier;
          if (v58 == &nw_protocol_ref_counted_handle || v58 == &nw_protocol_ref_counted_additional_handle && (v59 = *&v54[1].name[24]) != 0)
          {
            v64 = *&v59[2].name[8];
            v60 = 0;
            if (v64)
            {
              *&v59[2].name[8] = v64 + 1;
            }
          }

          else
          {
            v60 = 1;
          }

          v65 = v9[3].callbacks;
          v66 = (v9 + 176);
          if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v66 = v9[3].default_input_handler) != 0)
          {
            v67 = v66[1].callbacks;
            if (v67)
            {
              v66[1].callbacks = (&v67->add_input_handler + 1);
            }

            v56(v54, &v9[2].default_input_handler, a3);
            v68 = v9[3].callbacks;
            if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v57 = v9[3].default_input_handler) != 0)
            {
              v69 = v57[1].callbacks;
              if (v69)
              {
                v70 = (v69 - 1);
                v57[1].callbacks = v70;
                if (!v70)
                {
                  v71 = *v57[1].flow_id;
                  if (v71)
                  {
                    *v57[1].flow_id = 0;
                    v71[2](v71);
                    _Block_release(v71);
                  }

                  if (v57[1].flow_id[8])
                  {
                    v72 = *v57[1].flow_id;
                    if (v72)
                    {
                      _Block_release(v72);
                    }
                  }

                  free(v57);
                  p_output_handler = &v9[1].output_handler;
                }
              }
            }
          }

          else
          {
            v56(v54, &v9[2].default_input_handler, a3);
          }

          if ((v60 & 1) == 0)
          {
            v73 = *v54[1].name;
            if (v73 == &nw_protocol_ref_counted_handle || v73 == &nw_protocol_ref_counted_additional_handle && (v54 = *&v54[1].name[24]) != 0)
            {
              v74 = *&v54[2].name[8];
              if (v74)
              {
                v75 = v74 - 1;
                *&v54[2].name[8] = v75;
                if (!v75)
                {
                  v76 = *&v54[1].name[24];
                  if (v76)
                  {
                    *&v54[1].name[24] = 0;
                    v76[2](v76);
                    _Block_release(v76);
                  }

                  if (v54[1].level)
                  {
                    v77 = *&v54[1].name[24];
                    if (v77)
                    {
                      _Block_release(v77);
                    }
                  }

                  free(v54);
                }
              }
            }
          }
        }
      }
    }

    v78 = v9[4].output_handler;
    if (v78)
    {
      v79 = v78->callbacks;
      if (v79)
      {
        remove_input_handler = v79->remove_input_handler;
        if (remove_input_handler)
        {
          v81 = v9 + 4;
          v82 = v78->handle;
          v83 = v9[4].output_handler;
          if (v82 == &nw_protocol_ref_counted_handle || v82 == &nw_protocol_ref_counted_additional_handle && (v83 = *v78[1].flow_id) != 0)
          {
            v85 = v83[1].callbacks;
            v84 = 0;
            if (v85)
            {
              v83[1].callbacks = (&v85->add_input_handler + 1);
            }
          }

          else
          {
            v84 = 1;
          }

          v86 = v9[4].handle;
          v87 = v9 + 4;
          if (v86 == &nw_protocol_ref_counted_handle || v86 == &nw_protocol_ref_counted_additional_handle && (v87 = *v9[5].flow_id) != 0)
          {
            v88 = v87[1].callbacks;
            if (v88)
            {
              v87[1].callbacks = (&v88->add_input_handler + 1);
            }

            remove_input_handler(v78, v9 + 4, 1);
            v89 = v9[4].handle;
            if (v89 == &nw_protocol_ref_counted_handle || v89 == &nw_protocol_ref_counted_additional_handle && (v81 = *v9[5].flow_id) != 0)
            {
              v90 = v81[1].callbacks;
              if (v90)
              {
                v91 = (v90 - 1);
                v81[1].callbacks = v91;
                if (!v91)
                {
                  v92 = *v81[1].flow_id;
                  if (v92)
                  {
                    *v81[1].flow_id = 0;
                    v92[2](v92);
                    _Block_release(v92);
                  }

                  if (v81[1].flow_id[8])
                  {
                    v93 = *v81[1].flow_id;
                    if (v93)
                    {
                      _Block_release(v93);
                    }
                  }

                  free(v81);
                  p_output_handler = &v9[1].output_handler;
                }
              }
            }
          }

          else
          {
            remove_input_handler(v78, v9 + 4, 1);
          }

          if ((v84 & 1) == 0)
          {
            v94 = v78->handle;
            if (v94 == &nw_protocol_ref_counted_handle || v94 == &nw_protocol_ref_counted_additional_handle && (v78 = *v78[1].flow_id) != 0)
            {
              v95 = v78[1].callbacks;
              if (v95)
              {
                v96 = (v95 - 1);
                v78[1].callbacks = v96;
                if (!v96)
                {
                  v97 = *v78[1].flow_id;
                  if (v97)
                  {
                    *v78[1].flow_id = 0;
                    v97[2](v97);
                    _Block_release(v97);
                  }

                  if (v78[1].flow_id[8])
                  {
                    v98 = *v78[1].flow_id;
                    if (v98)
                    {
                      _Block_release(v98);
                    }
                  }

                  free(v78);
                }
              }
            }
          }
        }
      }
    }

    v99 = *v9[2].flow_id;
    if (v99)
    {
      v100 = *(v99 + 24);
      if (v100)
      {
        v101 = *(v100 + 8);
        if (v101)
        {
          v102 = *(v99 + 40);
          v103 = *v9[2].flow_id;
          if (v102 == &nw_protocol_ref_counted_handle || v102 == &nw_protocol_ref_counted_additional_handle && (v103 = *(v99 + 64)) != 0)
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

          v106 = *&v9[2].flow_id[8];
          v107 = p_output_handler;
          if (v106 == &nw_protocol_ref_counted_handle || v106 == &nw_protocol_ref_counted_additional_handle && (v107 = v9[2].output_handler) != 0)
          {
            v108 = v107[1].callbacks;
            if (v108)
            {
              v107[1].callbacks = (&v108->add_input_handler + 1);
            }

            v101(v99, p_output_handler, 1);
            v109 = *&v9[2].flow_id[8];
            v110 = p_output_handler;
            if (v109 == &nw_protocol_ref_counted_handle || v109 == &nw_protocol_ref_counted_additional_handle && (v110 = v9[2].output_handler) != 0)
            {
              v111 = v110[1].callbacks;
              if (v111)
              {
                v112 = (v111 - 1);
                v110[1].callbacks = v112;
                if (!v112)
                {
                  v113 = *v110[1].flow_id;
                  if (v113)
                  {
                    *v110[1].flow_id = 0;
                    v113[2](v113);
                    _Block_release(v113);
                  }

                  if (v110[1].flow_id[8])
                  {
                    v114 = *v110[1].flow_id;
                    if (v114)
                    {
                      _Block_release(v114);
                    }
                  }

                  free(v110);
                }
              }
            }
          }

          else
          {
            v101(v99, p_output_handler, 1);
          }

          if ((v104 & 1) == 0)
          {
            v115 = *(v99 + 40);
            if (v115 == &nw_protocol_ref_counted_handle || v115 == &nw_protocol_ref_counted_additional_handle && (v99 = *(v99 + 64)) != 0)
            {
              v116 = *(v99 + 88);
              if (v116)
              {
                v117 = v116 - 1;
                *(v99 + 88) = v117;
                if (!v117)
                {
                  v118 = *(v99 + 64);
                  if (v118)
                  {
                    *(v99 + 64) = 0;
                    v118[2](v118);
                    _Block_release(v118);
                  }

                  if (*(v99 + 72))
                  {
                    v119 = *(v99 + 64);
                    if (v119)
                    {
                      _Block_release(v119);
                    }
                  }

                  free(v99);
                }
              }
            }
          }
        }
      }
    }

    v120 = v9->output_handler;
    if (v120)
    {
      v121 = v120->callbacks;
      if (v121)
      {
        v122 = v121->remove_input_handler;
        if (v122)
        {
          v123 = v120->handle;
          v124 = v9->output_handler;
          if (v123 == &nw_protocol_ref_counted_handle || v123 == &nw_protocol_ref_counted_additional_handle && (v124 = *v120[1].flow_id) != 0)
          {
            v126 = v124[1].callbacks;
            v125 = 0;
            if (v126)
            {
              v124[1].callbacks = (&v126->add_input_handler + 1);
            }
          }

          else
          {
            v125 = 1;
          }

          v127 = v9->handle;
          v128 = v9;
          if (v127 == &nw_protocol_ref_counted_handle || v127 == &nw_protocol_ref_counted_additional_handle && (v128 = *v9[1].flow_id) != 0)
          {
            v129 = v128[1].callbacks;
            if (v129)
            {
              v128[1].callbacks = (&v129->add_input_handler + 1);
            }

            v122(v120, v9, a3);
            v130 = v9->handle;
            v131 = v9;
            if (v130 == &nw_protocol_ref_counted_handle || v130 == &nw_protocol_ref_counted_additional_handle && (v131 = *v9[1].flow_id) != 0)
            {
              v132 = v131[1].callbacks;
              if (v132)
              {
                v133 = (v132 - 1);
                v131[1].callbacks = v133;
                if (!v133)
                {
                  v134 = *v131[1].flow_id;
                  if (v134)
                  {
                    *v131[1].flow_id = 0;
                    v134[2](v134);
                    _Block_release(v134);
                  }

                  if (v131[1].flow_id[8])
                  {
                    v135 = *v131[1].flow_id;
                    if (v135)
                    {
                      _Block_release(v135);
                    }
                  }

                  free(v131);
                }
              }
            }
          }

          else
          {
            v122(v120, v9, a3);
          }

          if ((v125 & 1) == 0)
          {
            v136 = v120->handle;
            if (v136 == &nw_protocol_ref_counted_handle || v136 == &nw_protocol_ref_counted_additional_handle && (v120 = *v120[1].flow_id) != 0)
            {
              v137 = v120[1].callbacks;
              if (v137)
              {
                v138 = (v137 - 1);
                v120[1].callbacks = v138;
                if (!v138)
                {
                  v139 = *v120[1].flow_id;
                  if (v139)
                  {
                    *v120[1].flow_id = 0;
                    v139[2](v139);
                    _Block_release(v139);
                  }

                  if (v120[1].flow_id[8])
                  {
                    v140 = *v120[1].flow_id;
                    if (v140)
                    {
                      _Block_release(v140);
                    }
                  }

                  free(v120);
                }
              }
            }
          }
        }
      }
    }

    v141 = v9[8].identifier;
    if (v141)
    {
      os_release(v141);
      v9[8].identifier = 0;
    }

    v142 = *&v9[8].flow_id[8];
    v143 = &v9[1].output_handler;
    if (!v142)
    {
LABEL_260:
      if (a3)
      {
        if (!v4->default_input_handler)
        {
          v145 = v9[8].default_input_handler;
          if (!v145 || !LODWORD(v145->default_input_handler))
          {
            v38 = v143;
            goto LABEL_265;
          }
        }
      }

LABEL_266:
      result = 1;
      if (v7)
      {
        return result;
      }

      goto LABEL_267;
    }

    if (*v142)
    {
      v144 = *(*v142 + 8);
      if (v144)
      {
        v144();
LABEL_259:
        *&v9[8].flow_id[8] = 0;
        goto LABEL_260;
      }
    }

    v162 = __nwlog_obj();
    v163 = *&v9[8].flow_id[8];
    *buf = 136446466;
    *&buf[4] = "nw_protocol_masque_remove_input_handler";
    *&buf[12] = 2048;
    *&buf[14] = v163;
    v164 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s listen protocol (%p) has invalid disconnected callback", buf, 22);
    type[0] = OS_LOG_TYPE_ERROR;
    v174 = 0;
    if (__nwlog_fault(v164, type, &v174))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v165 = __nwlog_obj();
        v166 = type[0];
        if (os_log_type_enabled(v165, type[0]))
        {
          v167 = *&v9[8].flow_id[8];
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_remove_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = v167;
          v168 = "%{public}s listen protocol (%p) has invalid disconnected callback";
LABEL_313:
          _os_log_impl(&dword_181A37000, v165, v166, v168, buf, 0x16u);
        }
      }

      else if (v174 == 1)
      {
        v169 = __nw_create_backtrace_string();
        v165 = __nwlog_obj();
        v166 = type[0];
        v170 = os_log_type_enabled(v165, type[0]);
        if (v169)
        {
          if (v170)
          {
            v171 = *&v9[8].flow_id[8];
            *buf = 136446722;
            *&buf[4] = "nw_protocol_masque_remove_input_handler";
            *&buf[12] = 2048;
            *&buf[14] = v171;
            *&buf[22] = 2082;
            v178 = v169;
            _os_log_impl(&dword_181A37000, v165, v166, "%{public}s listen protocol (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v169);
          goto LABEL_314;
        }

        if (v170)
        {
          v173 = *&v9[8].flow_id[8];
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_remove_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = v173;
          v168 = "%{public}s listen protocol (%p) has invalid disconnected callback, no backtrace";
          goto LABEL_313;
        }
      }

      else
      {
        v165 = __nwlog_obj();
        v166 = type[0];
        if (os_log_type_enabled(v165, type[0]))
        {
          v172 = *&v9[8].flow_id[8];
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_remove_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = v172;
          v168 = "%{public}s listen protocol (%p) has invalid disconnected callback, backtrace limit exceeded";
          goto LABEL_313;
        }
      }
    }

LABEL_314:
    if (v164)
    {
      free(v164);
    }

    v143 = &v9[1].output_handler;
    goto LABEL_259;
  }

  v152 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_masque_remove_input_handler";
  v153 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v152, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v174 = 0;
  if (__nwlog_fault(v153, type, &v174))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v154 = __nwlog_obj();
      v155 = type[0];
      if (os_log_type_enabled(v154, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_remove_input_handler";
        v156 = "%{public}s called with null protocol";
LABEL_300:
        _os_log_impl(&dword_181A37000, v154, v155, v156, buf, 0xCu);
      }
    }

    else if (v174 == 1)
    {
      v160 = __nw_create_backtrace_string();
      v154 = __nwlog_obj();
      v155 = type[0];
      v161 = os_log_type_enabled(v154, type[0]);
      if (v160)
      {
        if (v161)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v160;
          _os_log_impl(&dword_181A37000, v154, v155, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v160);
        goto LABEL_301;
      }

      if (v161)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_remove_input_handler";
        v156 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_300;
      }
    }

    else
    {
      v154 = __nwlog_obj();
      v155 = type[0];
      if (os_log_type_enabled(v154, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_remove_input_handler";
        v156 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_300;
      }
    }
  }

LABEL_301:
  if (v153)
  {
    free(v153);
  }

  return 0;
}

uint64_t nw_protocol_http3_stream_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v171 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v88 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
    v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v160 = 0;
    if (!__nwlog_fault(v89, type, &v160))
    {
      goto LABEL_242;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v90 = __nwlog_obj();
      v91 = type[0];
      if (!os_log_type_enabled(v90, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      v92 = "%{public}s called with null protocol";
      goto LABEL_241;
    }

    if (v160 != 1)
    {
      v90 = __nwlog_obj();
      v91 = type[0];
      if (!os_log_type_enabled(v90, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      v92 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_241;
    }

    backtrace_string = __nw_create_backtrace_string();
    v90 = __nwlog_obj();
    v91 = type[0];
    v100 = os_log_type_enabled(v90, type[0]);
    if (!backtrace_string)
    {
      if (!v100)
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      v92 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_241;
    }

    if (v100)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_242:
    if (!v89)
    {
      return 0;
    }

    goto LABEL_243;
  }

  handle = a1->handle;
  if (!handle)
  {
    v93 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
    v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null http3_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v160 = 0;
    if (!__nwlog_fault(v89, type, &v160))
    {
      goto LABEL_242;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v90 = __nwlog_obj();
      v91 = type[0];
      if (!os_log_type_enabled(v90, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      v92 = "%{public}s called with null http3_stream";
      goto LABEL_241;
    }

    if (v160 != 1)
    {
      v90 = __nwlog_obj();
      v91 = type[0];
      if (!os_log_type_enabled(v90, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      v92 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_241;
    }

    v101 = __nw_create_backtrace_string();
    v90 = __nwlog_obj();
    v91 = type[0];
    v102 = os_log_type_enabled(v90, type[0]);
    if (v101)
    {
      if (v102)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v101;
        _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v101);
      if (!v89)
      {
        return 0;
      }

LABEL_243:
      v37 = v89;
      goto LABEL_50;
    }

    if (v102)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      v92 = "%{public}s called with null http3_stream, no backtrace";
LABEL_241:
      _os_log_impl(&dword_181A37000, v90, v91, v92, buf, 0xCu);
      goto LABEL_242;
    }

    goto LABEL_242;
  }

  if ((*(handle + 366) & 0x2000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(handle + 43) + 1304);
      v9 = *(handle + 30);
      default_input_handler = a1->default_input_handler;
      *buf = 136448002;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 632;
      *&buf[22] = 2080;
      v164 = " ";
      v165 = 1024;
      *v166 = v8;
      *&v166[4] = 2048;
      *&v166[6] = v9;
      *&v166[14] = 2048;
      *&v166[16] = a1;
      v167 = 2048;
      v168 = default_input_handler;
      v169 = 2048;
      v170 = a2;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> protocol %p, default_input_handler %p, input protocol %p", buf, 0x4Eu);
    }
  }

  nw_http_transaction_metadata_mark_end(*(handle + 50));
  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (a1->default_input_handler != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = *(handle + 6);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
    *&buf[12] = 2048;
    *&buf[14] = handle;
    *&buf[22] = 2048;
    v164 = a2;
    v165 = 2048;
    *v166 = v11;
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_protocol_http3_stream_remove_input_handler on %p called by %p != default_input_handler %p", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v160 = 0;
    if (__nwlog_fault(v12, type, &v160))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v15 = *(handle + 6);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = handle;
          *&buf[22] = 2048;
          v164 = a2;
          v165 = 2048;
          *v166 = v15;
          v16 = "%{public}s nw_protocol_http3_stream_remove_input_handler on %p called by %p != default_input_handler %p";
LABEL_47:
          _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x2Au);
        }
      }

      else if (v160 == 1)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (v31)
        {
          if (v32)
          {
            v33 = *(handle + 6);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            *&buf[22] = 2048;
            v164 = a2;
            v165 = 2048;
            *v166 = v33;
            *&v166[8] = 2082;
            *&v166[10] = v31;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s nw_protocol_http3_stream_remove_input_handler on %p called by %p != default_input_handler %p, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v31);
          goto LABEL_48;
        }

        if (v32)
        {
          v36 = *(handle + 6);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = handle;
          *&buf[22] = 2048;
          v164 = a2;
          v165 = 2048;
          *v166 = v36;
          v16 = "%{public}s nw_protocol_http3_stream_remove_input_handler on %p called by %p != default_input_handler %p, no backtrace";
          goto LABEL_47;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v34 = *(handle + 6);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = handle;
          *&buf[22] = 2048;
          v164 = a2;
          v165 = 2048;
          *v166 = v34;
          v16 = "%{public}s nw_protocol_http3_stream_remove_input_handler on %p called by %p != default_input_handler %p, backtrace limit exceeded";
          goto LABEL_47;
        }
      }
    }

LABEL_48:
    if (!v12)
    {
      return 0;
    }

    v37 = v12;
LABEL_50:
    free(v37);
    return 0;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v105 = __nwlog_obj();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      v106 = *(*(handle + 43) + 1304);
      v107 = *(handle + 30);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
      *&buf[12] = 2082;
      *&buf[14] = handle + 632;
      *&buf[22] = 2080;
      v164 = " ";
      v165 = 1024;
      *v166 = v106;
      *&v166[4] = 2048;
      *&v166[6] = v107;
      _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  v17 = *(handle + 366);
  if ((v17 & 0x40) != 0)
  {
    *(handle + 366) = v17 & 0xFFBF;
    v18 = *(handle + 12);
    if (v18)
    {
      v19 = *(v18 + 24);
      if (v19)
      {
        v20 = *(v19 + 32);
        if (v20)
        {
          v20(*(handle + 12), handle + 64);
          goto LABEL_20;
        }
      }

      v108 = __nwlog_obj();
      v109 = *(v18 + 16);
      if (!v109)
      {
        v109 = "invalid";
      }
    }

    else
    {
      v108 = __nwlog_obj();
      v109 = "invalid";
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
    *&buf[12] = 2082;
    *&buf[14] = v109;
    v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s protocol %{public}s has invalid disconnect callback", buf, 22);
    type[0] = OS_LOG_TYPE_ERROR;
    v160 = 0;
    if (__nwlog_fault(v122, type, &v160))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_196;
        }

        v125 = "invalid";
        if (v18 && *(v18 + 16))
        {
          v125 = *(v18 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
        *&buf[12] = 2082;
        *&buf[14] = v125;
        v126 = "%{public}s protocol %{public}s has invalid disconnect callback";
LABEL_194:
        v136 = v123;
LABEL_195:
        _os_log_impl(&dword_181A37000, v136, v124, v126, buf, 0x16u);
        goto LABEL_196;
      }

      if (v160 != 1)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_196;
        }

        v135 = "invalid";
        if (v18 && *(v18 + 16))
        {
          v135 = *(v18 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
        *&buf[12] = 2082;
        *&buf[14] = v135;
        v126 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
        goto LABEL_194;
      }

      v127 = __nw_create_backtrace_string();
      v128 = __nwlog_obj();
      v124 = type[0];
      log = v128;
      v129 = os_log_type_enabled(v128, type[0]);
      if (v127)
      {
        if (v129)
        {
          v130 = "invalid";
          if (v18 && *(v18 + 16))
          {
            v130 = *(v18 + 16);
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
          *&buf[12] = 2082;
          *&buf[14] = v130;
          *&buf[22] = 2082;
          v164 = v127;
          _os_log_impl(&dword_181A37000, log, v124, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v127);
      }

      else if (v129)
      {
        v154 = "invalid";
        if (v18 && *(v18 + 16))
        {
          v154 = *(v18 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
        *&buf[12] = 2082;
        *&buf[14] = v154;
        v126 = "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace";
        v136 = log;
        goto LABEL_195;
      }
    }

LABEL_196:
    if (v122)
    {
      free(v122);
    }

    if (!v18)
    {
      v110 = __nwlog_obj();
      v111 = "invalid";
      goto LABEL_200;
    }

LABEL_20:
    v21 = *(v18 + 24);
    if (v21)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v22(v18, handle + 64, 1);
LABEL_23:
        nw_protocol_set_input_handler((handle + 64), 0);
        nw_protocol_set_output_handler((handle + 64), 0);
        if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
        {
          v131 = __nwlog_obj();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
          {
            v132 = *(*(handle + 43) + 1304);
            v133 = *(handle + 30);
            v134 = *(handle + 31);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
            *&buf[12] = 2082;
            *&buf[14] = handle + 632;
            *&buf[22] = 2080;
            v164 = " ";
            v165 = 1024;
            *v166 = v132;
            *&v166[4] = 2048;
            *&v166[6] = v133;
            *&v166[14] = 2048;
            *&v166[16] = v134;
            _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Closed datagram flow %llu", buf, 0x3Au);
          }
        }

        goto LABEL_25;
      }
    }

    v110 = __nwlog_obj();
    v111 = *(v18 + 16);
    if (!v111)
    {
      v111 = "invalid";
    }

LABEL_200:
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
    *&buf[12] = 2082;
    *&buf[14] = v111;
    LODWORD(v157) = 22;
    v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v110, 16, "%{public}s protocol %{public}s has invalid remove_input_handler callback", buf, v157);
    type[0] = OS_LOG_TYPE_ERROR;
    v160 = 0;
    if (!__nwlog_fault(v137, type, &v160))
    {
      goto LABEL_222;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v138 = __nwlog_obj();
      v139 = type[0];
      if (!os_log_type_enabled(v138, type[0]))
      {
        goto LABEL_222;
      }

      v140 = "invalid";
      if (v18 && *(v18 + 16))
      {
        v140 = *(v18 + 16);
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
      *&buf[12] = 2082;
      *&buf[14] = v140;
      v141 = "%{public}s protocol %{public}s has invalid remove_input_handler callback";
    }

    else
    {
      if (v160 == 1)
      {
        v142 = __nw_create_backtrace_string();
        v143 = __nwlog_obj();
        v139 = type[0];
        loga = v143;
        v144 = os_log_type_enabled(v143, type[0]);
        if (v142)
        {
          if (v144)
          {
            v145 = "invalid";
            if (v18 && *(v18 + 16))
            {
              v145 = *(v18 + 16);
            }

            *buf = 136446722;
            *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
            *&buf[12] = 2082;
            *&buf[14] = v145;
            *&buf[22] = 2082;
            v164 = v142;
            _os_log_impl(&dword_181A37000, loga, v139, "%{public}s protocol %{public}s has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v142);
          goto LABEL_222;
        }

        if (!v144)
        {
LABEL_222:
          if (v137)
          {
            free(v137);
          }

          goto LABEL_23;
        }

        v153 = "invalid";
        if (v18 && *(v18 + 16))
        {
          v153 = *(v18 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
        *&buf[12] = 2082;
        *&buf[14] = v153;
        v141 = "%{public}s protocol %{public}s has invalid remove_input_handler callback, no backtrace";
        v147 = loga;
LABEL_221:
        _os_log_impl(&dword_181A37000, v147, v139, v141, buf, 0x16u);
        goto LABEL_222;
      }

      v138 = __nwlog_obj();
      v139 = type[0];
      if (!os_log_type_enabled(v138, type[0]))
      {
        goto LABEL_222;
      }

      v146 = "invalid";
      if (v18 && *(v18 + 16))
      {
        v146 = *(v18 + 16);
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_stop_datagram_flow";
      *&buf[12] = 2082;
      *&buf[14] = v146;
      v141 = "%{public}s protocol %{public}s has invalid remove_input_handler callback, backtrace limit exceeded";
    }

    v147 = v138;
    goto LABEL_221;
  }

LABEL_25:
  v23 = *(handle + 43);
  if (!v23)
  {
    goto LABEL_62;
  }

  v24 = (v23 + 568);
  while (1)
  {
    v24 = *v24;
    if (!v24)
    {
      break;
    }

    if (v24[4] == handle)
    {
      v25 = *(v23 + 536);
      if (v25)
      {
        fwrite("qdec: debug: ", 0xDuLL, 1uLL, v25);
        fprintf(*(v23 + 536), "unreffed header block for stream %llu", v24[5]);
        fputc(10, *(v23 + 536));
      }

      v26 = *v24;
      v27 = v24[1];
      v28 = (v23 + 576);
      if (*v24)
      {
        v28 = (*v24 + 8);
      }

      *v28 = v27;
      *v27 = v26;
      if ((v24[13] & 4) != 0)
      {
        v29 = v24[2];
        v30 = v24[3];
        if (v29)
        {
          *(v29 + 24) = v30;
        }

        else
        {
          *(v23 + 16 * (v24[8] & 7) + 592) = v30;
        }

        *v30 = v29;
        --*(v23 + 712);
      }

      free(v24);
      goto LABEL_55;
    }
  }

  v35 = *(v23 + 536);
  if (v35)
  {
    fwrite("qdec: info: ", 0xCuLL, 1uLL, v35);
    fwrite("could not find header block to unref", 0x24uLL, 1uLL, *(v23 + 536));
    fputc(10, *(v23 + 536));
  }

LABEL_55:
  v39 = *(handle + 43);
  if (v39)
  {
    if ((*(v39 + 1399) & 0x20) == 0 && gLogDatapath == 1)
    {
      v120 = __nwlog_obj();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        v121 = *(v39 + 1304);
        *buf = 136446978;
        *&buf[4] = "nw_http3_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v39 + 1313;
        *&buf[22] = 2080;
        v164 = " ";
        v165 = 1024;
        *v166 = v121;
        _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (!*(handle + 95))
    {
      v69 = *(handle + 29);
      if (v69)
      {
        v70 = mach_continuous_approximate_time();
        v71 = v70 <= 1 ? 1 : v70;
        v72 = nw_delta_nanos(v69, v71);
        if (v72 > 1000000000 * networkd_settings_get_int64_with_default(nw_setting_proxy_setup_threshold_seconds, 5))
        {
          v73 = (*(v39 + 1308))++ + 1;
          if ((v73 & 0x10000) != 0)
          {
            if (gLogDatapath == 1)
            {
              v155 = __nwlog_obj();
              if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
              {
                v156 = *(v39 + 1308);
                *buf = 136446978;
                *&buf[4] = "nw_http3_remove_stream";
                *&buf[12] = 2082;
                *&buf[14] = "http3->stream_stall_count";
                *&buf[22] = 2048;
                v164 = 1;
                v165 = 2048;
                *v166 = v156;
                _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
              }
            }

            *(v39 + 1308) = -1;
          }

          if ((*(v39 + 1399) & 0x20) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v74 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v75 = *(v39 + 1304);
              v76 = *(v39 + 1308);
              *buf = 136447234;
              *&buf[4] = "nw_http3_remove_stream";
              *&buf[12] = 2082;
              *&buf[14] = v39 + 1313;
              *&buf[22] = 2080;
              v164 = " ";
              v165 = 1024;
              *v166 = v75;
              *&v166[4] = 1024;
              *&v166[6] = v76;
              _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> stream setup stalls incremented to %u", buf, 0x2Cu);
            }
          }
        }
      }
    }

    v40 = *(handle + 67);
    v41 = *(handle + 68);
    v42 = (v39 + 896);
    if (v40)
    {
      v42 = (v40 + 544);
    }

    *v42 = v41;
    *v41 = v40;
    *(handle + 536) = 0u;
    nw_protocol_http3_remove_input_handler(v39, *(handle + 6));
    goto LABEL_62;
  }

  v115 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_remove_stream";
  LODWORD(v157) = 12;
  v116 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s called with null http3", buf, v157);
  type[0] = OS_LOG_TYPE_ERROR;
  v160 = 0;
  if (__nwlog_fault(v116, type, &v160))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v117 = __nwlog_obj();
      v118 = type[0];
      if (!os_log_type_enabled(v117, type[0]))
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_remove_stream";
      v119 = "%{public}s called with null http3";
      goto LABEL_258;
    }

    if (v160 != 1)
    {
      v117 = __nwlog_obj();
      v118 = type[0];
      if (!os_log_type_enabled(v117, type[0]))
      {
        goto LABEL_259;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_remove_stream";
      v119 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_258;
    }

    v148 = __nw_create_backtrace_string();
    v117 = __nwlog_obj();
    v118 = type[0];
    v149 = os_log_type_enabled(v117, type[0]);
    if (v148)
    {
      if (v149)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http3_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v148;
        _os_log_impl(&dword_181A37000, v117, v118, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v148);
      goto LABEL_259;
    }

    if (v149)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http3_remove_stream";
      v119 = "%{public}s called with null http3, no backtrace";
LABEL_258:
      _os_log_impl(&dword_181A37000, v117, v118, v119, buf, 0xCu);
    }
  }

LABEL_259:
  if (v116)
  {
    free(v116);
  }

LABEL_62:
  *(handle + 20) = 0;
  *(handle + 21) = 0;
  nw_protocol_set_input_handler(a1, 0);
  nw_protocol_set_input_handler((handle + 64), 0);
  v43 = (handle + 216);
  if (gLogDatapath == 1)
  {
    v103 = __nwlog_obj();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v44 = *v43;
  if (*v43)
  {
    *(v44 + 40) = type;
    v45 = *(handle + 28);
    *type = v44;
    v162 = v45;
    *(handle + 27) = 0;
    *(handle + 28) = v43;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v164 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v165) = 0;
    do
    {
      v46 = *type;
      if (!*type)
      {
        break;
      }

      v47 = *(*type + 32);
      v48 = *(*type + 40);
      v49 = (v47 + 40);
      if (!v47)
      {
        v49 = &v162;
      }

      *v49 = v48;
      *v48 = v47;
      *(v46 + 32) = 0;
      *(v46 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v51 = (handle + 176);
  v50 = *(handle + 22);
  do
  {
    if (!v50)
    {
      break;
    }

    v52 = *(v50 + 32);
    v53 = ___ZL23nw_http3_framer_cleanupP15nw_http3_framer_block_invoke(&__block_literal_global_27_63429, v50);
    v50 = v52;
  }

  while ((v53 & 1) != 0);
  if (gLogDatapath == 1)
  {
    v104 = __nwlog_obj();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v54 = *v51;
  if (*v51)
  {
    *(v54 + 40) = type;
    v55 = *(handle + 23);
    *type = v54;
    v162 = v55;
    *(handle + 22) = 0;
    *(handle + 23) = v51;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v164 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v165) = 0;
    do
    {
      v56 = *type;
      if (!*type)
      {
        break;
      }

      v57 = *(*type + 32);
      v58 = *(*type + 40);
      v59 = (v57 + 40);
      if (!v57)
      {
        v59 = &v162;
      }

      *v59 = v58;
      *v58 = v57;
      *(v56 + 32) = 0;
      *(v56 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v60 = *(handle + 48);
  if (v60)
  {
    nw_frame_finalize(v60);
    *(handle + 48) = 0;
  }

  if (*(handle + 65) || handle[630] || handle[631])
  {
    v61 = *(handle + 43);
    if ((*(v61 + 1397) & 8) == 0 && (*(handle + 366) & 0x2000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v62 = gLogObj;
      v63 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      v61 = *(handle + 43);
      if (v63)
      {
        v64 = *(v61 + 1304);
        v65 = *(handle + 30);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 632;
        *&buf[22] = 2080;
        v164 = " ";
        v165 = 1024;
        *v166 = v64;
        *&v166[4] = 2048;
        *&v166[6] = v65;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> cancelled while sending data on uni streams", buf, 0x30u);
        v61 = *(handle + 43);
      }
    }

    nw_http3_fail_all_streams(v61);
  }

  output_handler = a1->output_handler;
  if (!output_handler || (callbacks = output_handler->callbacks) == 0 || (remove_input_handler = callbacks->remove_input_handler) == 0)
  {
    v77 = __nwlog_obj();
    v78 = a1->output_handler;
    v79 = "invalid";
    if (v78)
    {
      identifier = v78->identifier;
      if (identifier)
      {
        v79 = identifier;
      }
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = v79;
    LODWORD(v157) = 22;
    v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s protocol %{public}s has invalid remove_input_handler callback", buf, v157);
    type[0] = OS_LOG_TYPE_ERROR;
    v160 = 0;
    if (!__nwlog_fault(v81, type, &v160))
    {
      goto LABEL_235;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v82 = __nwlog_obj();
      v83 = type[0];
      if (!os_log_type_enabled(v82, type[0]))
      {
        goto LABEL_235;
      }

      v84 = a1->output_handler;
      v85 = "invalid";
      if (v84)
      {
        v86 = v84->identifier;
        if (v86)
        {
          v85 = v86;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v85;
      v87 = "%{public}s protocol %{public}s has invalid remove_input_handler callback";
    }

    else if (v160 == 1)
    {
      v94 = __nw_create_backtrace_string();
      v82 = __nwlog_obj();
      v83 = type[0];
      v95 = os_log_type_enabled(v82, type[0]);
      if (v94)
      {
        if (v95)
        {
          v96 = a1->output_handler;
          v97 = "invalid";
          if (v96)
          {
            v98 = v96->identifier;
            if (v98)
            {
              v97 = v98;
            }
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v97;
          *&buf[22] = 2082;
          v164 = v94;
          _os_log_impl(&dword_181A37000, v82, v83, "%{public}s protocol %{public}s has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v94);
        goto LABEL_235;
      }

      if (!v95)
      {
LABEL_235:
        if (v81)
        {
          free(v81);
        }

        goto LABEL_93;
      }

      v150 = a1->output_handler;
      v151 = "invalid";
      if (v150)
      {
        v152 = v150->identifier;
        if (v152)
        {
          v151 = v152;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v151;
      v87 = "%{public}s protocol %{public}s has invalid remove_input_handler callback, no backtrace";
    }

    else
    {
      v82 = __nwlog_obj();
      v83 = type[0];
      if (!os_log_type_enabled(v82, type[0]))
      {
        goto LABEL_235;
      }

      v112 = a1->output_handler;
      v113 = "invalid";
      if (v112)
      {
        v114 = v112->identifier;
        if (v114)
        {
          v113 = v114;
        }
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v113;
      v87 = "%{public}s protocol %{public}s has invalid remove_input_handler callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v82, v83, v87, buf, 0x16u);
    goto LABEL_235;
  }

  remove_input_handler();
LABEL_93:
  nw_protocol_set_output_handler(a1, 0);
  if (a3)
  {
    a1->handle = 0;
    nw_protocol_http3_stream_destroy(handle);
  }

  return 1;
}

void nw_http_transaction_metadata_mark_end(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_transaction_metadata_mark_end";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_end";
        v7 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v20 = "nw_http_transaction_metadata_mark_end";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v4)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v4);
        goto LABEL_8;
      }

      if (v10)
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_end";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v20 = "nw_http_transaction_metadata_mark_end";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_transaction_definition_definition))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __nw_http_transaction_metadata_mark_end_block_invoke;
    v15 = &unk_1E6A3A950;
    v16 = v1;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v14(v13, handle);
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_transaction_metadata_mark_end";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s metadata must be http_transaction", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_end";
      v7 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_end";
      v7 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v20 = "nw_http_transaction_metadata_mark_end";
      v7 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v12)
  {
    *buf = 136446466;
    v20 = "nw_http_transaction_metadata_mark_end";
    v21 = 2082;
    v22 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_39;
  }

LABEL_8:
}

void nw_http_transaction_metadata_set_end_time(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http_transaction_metadata_set_end_time";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);

    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v6, &v21, &v20))
    {
      goto LABEL_38;
    }

    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v21;
      if (os_log_type_enabled(v7, v21))
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_end_time";
        v9 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v21;
      v12 = os_log_type_enabled(v7, v21);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v23 = "nw_http_transaction_metadata_set_end_time";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v6);
        goto LABEL_8;
      }

      if (v12)
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_end_time";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = v21;
      if (os_log_type_enabled(v7, v21))
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_end_time";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_transaction_metadata_set_end_time_block_invoke;
    v17 = &unk_1E6A3AB18;
    v19 = a2;
    v18 = v3;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_8;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_transaction_metadata_set_end_time";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s metadata must be http_transaction", buf, 12);

  v21 = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v6, &v21, &v20))
  {
    goto LABEL_38;
  }

  if (v21 == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = v21;
    if (os_log_type_enabled(v7, v21))
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_end_time";
      v9 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v7 = __nwlog_obj();
    v8 = v21;
    if (os_log_type_enabled(v7, v21))
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_end_time";
      v9 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = v21;
  v14 = os_log_type_enabled(v7, v21);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_end_time";
      v9 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v14)
  {
    *buf = 136446466;
    v23 = "nw_http_transaction_metadata_set_end_time";
    v24 = 2082;
    v25 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t __nw_http_transaction_metadata_mark_end_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    return 1;
  }

  v3 = *(a1 + 32);
  v4 = mach_continuous_time();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  nw_http_transaction_metadata_set_end_time(v3, v5);
  return 1;
}

BOOL __nw_http_transaction_metadata_set_end_time_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (!v2)
  {
    *(a2 + 56) = *(a1 + 40);
    v3 = *(a2 + 136);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 32), 4);
    }
  }

  return v2 == 0;
}

uint64_t nw_http_transaction_metadata_get_start_reason(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_start_reason_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_start_reason";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DF2D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_metadata_get_start_time(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_start_time_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_start_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_time";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_time";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_start_time";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_start_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_start_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_time";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_start_time";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_start_time";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_start_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DF3334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_metadata_get_end_time(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_end_time_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_end_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_end_time";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_end_time";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_end_time";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_end_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_end_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_end_time";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_end_time";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_end_time";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_end_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DF38C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_metadata_get_outbound_message_start_time(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_outbound_message_start_time_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_start_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DF3E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_metadata_get_outbound_message_end_time(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_outbound_message_end_time_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_message_end_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DF4438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_metadata_get_inbound_message_start_time(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_inbound_message_start_time_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_start_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DF49E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_metadata_get_inbound_message_end_time(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_inbound_message_end_time_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_inbound_message_end_time";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DF4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http3_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v57 = __nwlog_obj();
    buf[0].i32[0] = 136446210;
    *(buf + 4) = "nw_protocol_http3_remove_input_handler";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v58, &type, &v68))
    {
      goto LABEL_135;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v68 != 1)
      {
        v59 = __nwlog_obj();
        v60 = type;
        if (!os_log_type_enabled(v59, type))
        {
          goto LABEL_135;
        }

        buf[0].i32[0] = 136446210;
        *(buf + 4) = "nw_protocol_http3_remove_input_handler";
        v61 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_134;
      }

      backtrace_string = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v60 = type;
      v64 = os_log_type_enabled(v59, type);
      if (!backtrace_string)
      {
        if (!v64)
        {
          goto LABEL_135;
        }

        buf[0].i32[0] = 136446210;
        *(buf + 4) = "nw_protocol_http3_remove_input_handler";
        v61 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_134;
      }

      if (v64)
      {
        buf[0].i32[0] = 136446466;
        *(buf + 4) = "nw_protocol_http3_remove_input_handler";
        buf[1].i16[2] = 2082;
        *(&buf[1] + 6) = backtrace_string;
        v65 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_124:
        _os_log_impl(&dword_181A37000, v59, v60, v65, buf, 0x16u);
      }

LABEL_125:
      free(backtrace_string);
      goto LABEL_135;
    }

    v59 = __nwlog_obj();
    v60 = type;
    if (!os_log_type_enabled(v59, type))
    {
      goto LABEL_135;
    }

    buf[0].i32[0] = 136446210;
    *(buf + 4) = "nw_protocol_http3_remove_input_handler";
    v61 = "%{public}s called with null protocol";
LABEL_134:
    _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
LABEL_135:
    if (v58)
    {
      free(v58);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v62 = __nwlog_obj();
    buf[0].i32[0] = 136446210;
    *(buf + 4) = "nw_protocol_http3_remove_input_handler";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s called with null http3", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v58, &type, &v68))
    {
      goto LABEL_135;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_135;
      }

      buf[0].i32[0] = 136446210;
      *(buf + 4) = "nw_protocol_http3_remove_input_handler";
      v61 = "%{public}s called with null http3";
      goto LABEL_134;
    }

    if (v68 != 1)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_135;
      }

      buf[0].i32[0] = 136446210;
      *(buf + 4) = "nw_protocol_http3_remove_input_handler";
      v61 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_134;
    }

    backtrace_string = __nw_create_backtrace_string();
    v59 = __nwlog_obj();
    v60 = type;
    v66 = os_log_type_enabled(v59, type);
    if (backtrace_string)
    {
      if (v66)
      {
        buf[0].i32[0] = 136446466;
        *(buf + 4) = "nw_protocol_http3_remove_input_handler";
        buf[1].i16[2] = 2082;
        *(&buf[1] + 6) = backtrace_string;
        v65 = "%{public}s called with null http3, dumping backtrace:%{public}s";
        goto LABEL_124;
      }

      goto LABEL_125;
    }

    if (!v66)
    {
      goto LABEL_135;
    }

    buf[0].i32[0] = 136446210;
    *(buf + 4) = "nw_protocol_http3_remove_input_handler";
    v61 = "%{public}s called with null http3, no backtrace";
    goto LABEL_134;
  }

  if ((handle[1399] & 0x20) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v6 = *(handle + 326);
      default_input_handler = a1->default_input_handler;
      buf[0].i32[0] = 136447746;
      *(buf + 4) = "nw_protocol_http3_remove_input_handler";
      buf[1].i16[2] = 2082;
      *(&buf[1] + 6) = (handle + 1313);
      buf[2].i16[3] = 2080;
      buf[3] = " ";
      *v71 = 1024;
      *&v71[2] = v6;
      v72 = 2048;
      v73 = a1;
      v74 = 2048;
      v75 = default_input_handler;
      v76 = 2048;
      v77 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> protocol %p, default_input_handler %p, input protocol %p", buf, 0x44u);
    }
  }

  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
    v8 = handle[1399];
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = handle[1399];
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_23;
    }
  }

  v9 = *(handle + 111);
  if (v9)
  {
    while (*(v9 + 732) < 0)
    {
      v9 = *(v9 + 536);
      if (!v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    handle[1399] = v8 | 0x10;
    if (*(handle + 157) && *(handle + 323) == 2)
    {
      if ((v8 & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v11 = *(handle + 326);
          buf[0].i32[0] = 136446978;
          *(buf + 4) = "nw_protocol_http3_remove_input_handler";
          buf[1].i16[2] = 2082;
          *(&buf[1] + 6) = (handle + 1313);
          buf[2].i16[3] = 2080;
          buf[3] = " ";
          *v71 = 1024;
          *&v71[2] = v11;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> disabling QUIC keepalives due to idleness", buf, 0x26u);
        }
      }

      nw_quic_connection_set_keepalive(*(handle + 157), 0);
    }

    buf[0].i8[0] = 1;
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
  }

LABEL_23:
  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  v16 = (handle + 1397);
  if ((*(handle + 1397) & 0x18) != 0)
  {
    v17 = *(handle + 111);
    if (v17)
    {
      goto LABEL_27;
    }

LABEL_84:
    nw_protocol_set_input_handler(a1, 0);
    v44 = *v16;
    if ((*v16 & 0x800) == 0)
    {
      if ((handle[1399] & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v45 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v46 = *(handle + 326);
          buf[0].i32[0] = 136446978;
          *(buf + 4) = "nw_protocol_http3_remove_input_handler";
          buf[1].i16[2] = 2082;
          *(&buf[1] + 6) = (handle + 1313);
          buf[2].i16[3] = 2080;
          buf[3] = " ";
          *v71 = 1024;
          *&v71[2] = v46;
          _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called before initial connect, will tear down immediately", buf, 0x26u);
        }
      }

      *v16 |= 8u;
      nw_protocol_remove_instance(handle);
      nw_protocol_set_output_handler(handle, 0);
      v44 = *v16;
    }

    if ((v44 & 8) != 0 && *(handle + 157) && *(handle + 323) == 1)
    {
      if ((handle[1399] & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v47 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v48 = *(handle + 326);
          buf[0].i32[0] = 136446978;
          *(buf + 4) = "nw_protocol_http3_remove_input_handler";
          buf[1].i16[2] = 2082;
          *(&buf[1] + 6) = (handle + 1313);
          buf[2].i16[3] = 2080;
          buf[3] = " ";
          *v71 = 1024;
          *&v71[2] = v48;
          _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> disabling QUIC keepalives", buf, 0x26u);
        }
      }

      nw_quic_connection_set_keepalive(*(handle + 157), 0);
    }

    v49 = *(handle + 160);
    if (v49)
    {
      nw_queue_cancel_source(v49);
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 0x40000000;
    v67[2] = ___ZL38nw_protocol_http3_remove_input_handlerP11nw_protocolS0_b_block_invoke;
    v67[3] = &__block_descriptor_tmp_166;
    v67[4] = handle;
    *(handle + 160) = nw_queue_context_create_source(0, 2, 3, 0, v67, 0);
    v50 = *(handle + 130);
    v52 = 0;
    if (nw_protocol_http3_accept(a1, v51, *(handle + 142)))
    {
      if (nw_context_get_channel_flow_count(*(handle + 159)) <= 0x19F)
      {
        v52 = v50;
      }

      else
      {
        v52 = 1000;
      }
    }

    v53 = *(handle + 160);
    v54 = dispatch_time(0x8000000000000000, 1000000 * v52);
    nw_queue_set_timer_values(v53, v54, 0xFFFFFFFFFFFFFFFFLL, 1000 * v52);
    if ((handle[1399] & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v55 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v56 = *(handle + 326);
        buf[0].i32[0] = 136447234;
        *(buf + 4) = "nw_protocol_http3_remove_input_handler";
        buf[1].i16[2] = 2082;
        *(&buf[1] + 6) = (handle + 1313);
        buf[2].i16[3] = 2080;
        buf[3] = " ";
        *v71 = 1024;
        *&v71[2] = v56;
        v72 = 2048;
        v73 = v52;
        _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> activating destroy timer for %llums", buf, 0x30u);
      }
    }

    nw_queue_activate_source(*(handle + 160));
    return 1;
  }

  if ((handle[1399] & 0x20) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v22 = *(handle + 326);
      buf[0].i32[0] = 136446978;
      *(buf + 4) = "nw_protocol_http3_remove_input_handler";
      buf[1].i16[2] = 2082;
      *(&buf[1] + 6) = (handle + 1313);
      buf[2].i16[3] = 2080;
      buf[3] = " ";
      *v71 = 1024;
      *&v71[2] = v22;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
    }
  }

  *v16 |= 8u;
  nw_protocol_remove_instance(handle);
  memset(buf, 0, sizeof(buf));
  *v71 = 1065353216;
  v23 = *(handle + 111);
  if (v23)
  {
LABEL_34:
    v24 = *&buf[1] - 1;
    if (!*&buf[1])
    {
      goto LABEL_59;
    }

    if ((*&buf[1] & v24) != 0)
    {
      while (1)
      {
        v30 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ HIDWORD(v23));
        v31 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v30 >> 47) ^ v30);
        v27 = 0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47));
        v32 = v27;
        if (v27 >= *&buf[1])
        {
          v32 = v27 % *&buf[1];
        }

        v33 = *(*buf + 8 * v32);
        if (!v33)
        {
          break;
        }

        do
        {
          while (1)
          {
            v33 = *v33;
            if (!v33)
            {
              goto LABEL_57;
            }

            v34 = v33[1];
            if (v27 == v34)
            {
              break;
            }

            if (v34 >= *&buf[1])
            {
              v34 %= *&buf[1];
            }

            if (v34 != v32)
            {
              goto LABEL_57;
            }
          }
        }

        while (v33[2] != v23);
        v23 = *(v23 + 536);
        if (!v23)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      while (1)
      {
        v25 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ HIDWORD(v23));
        v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v25 >> 47) ^ v25);
        v27 = 0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47));
        v28 = *(*buf + 8 * (v24 & v27));
        if (!v28)
        {
          break;
        }

        do
        {
          while (1)
          {
            v28 = *v28;
            if (!v28)
            {
              goto LABEL_57;
            }

            v29 = v28[1];
            if (v27 == v29)
            {
              break;
            }

            if ((v29 & v24) != (v24 & v27))
            {
              goto LABEL_57;
            }
          }
        }

        while (v28[2] != v23);
        v23 = *(v23 + 536);
        if (!v23)
        {
          goto LABEL_79;
        }
      }
    }

LABEL_57:
    v35 = vcnt_s8(buf[1]);
    v35.i16[0] = vaddlv_u8(v35);
    if (v35.u32[0] > 1uLL)
    {
      v36 = v27;
      if (v27 >= *&buf[1])
      {
        v36 = v27 % *&buf[1];
      }
    }

    else
    {
      v36 = v27 & v24;
    }

    v37 = *(*buf + 8 * v36);
    if (!v37 || (v38 = *v37) == 0)
    {
LABEL_59:
      operator new();
    }

    if (v35.u32[0] < 2uLL)
    {
      while (1)
      {
        v39 = v38[1];
        if (v39 == v27)
        {
          if (v38[2] == v23)
          {
            goto LABEL_78;
          }
        }

        else if ((v39 & v24) != v36)
        {
          goto LABEL_59;
        }

        v38 = *v38;
        if (!v38)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      v40 = v38[1];
      if (v40 == v27)
      {
        if (v38[2] == v23)
        {
LABEL_78:
          nw_protocol_notify(v23, handle, 22);
          v23 = *(handle + 111);
          if (!v23)
          {
            break;
          }

          goto LABEL_34;
        }
      }

      else
      {
        if (v40 >= *&buf[1])
        {
          v40 %= *&buf[1];
        }

        if (v40 != v36)
        {
          goto LABEL_59;
        }
      }

      v38 = *v38;
      if (!v38)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_79:
  v41 = buf[2];
  if (buf[2])
  {
    do
    {
      v42 = *v41;
      operator delete(v41);
      v41 = v42;
    }

    while (v42);
  }

  v43 = buf[0];
  buf[0] = 0;
  if (v43)
  {
    operator delete(v43);
  }

  v16 = (handle + 1397);
  v17 = *(handle + 111);
  if (!v17)
  {
    goto LABEL_84;
  }

LABEL_27:
  nw_protocol_set_input_handler(a1, *(v17 + 48));
  if ((handle[1399] & 0x20) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    result = 1;
    if (!v19)
    {
      return result;
    }

    v20 = *(handle + 326);
    buf[0].i32[0] = 136446978;
    *(buf + 4) = "nw_protocol_http3_remove_input_handler";
    buf[1].i16[2] = 2082;
    *(&buf[1] + 6) = (handle + 1313);
    buf[2].i16[3] = 2080;
    buf[3] = " ";
    *v71 = 1024;
    *&v71[2] = v20;
    _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> not destroying, has streams", buf, 0x26u);
  }

  return 1;
}

void nw_protocol_http3_stream_destroy(uint64_t a1)
{
  v1 = a1;
  v76 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 732) & 0x2000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(v1 + 344) + 1304);
      v4 = *(v1 + 240);
      *buf = 136447490;
      v65 = "nw_protocol_http3_stream_destroy";
      v66 = 2082;
      v67 = (v1 + 632);
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v3;
      v72 = 2048;
      v73 = v4;
      v74 = 2048;
      v75 = v1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
    }
  }

  if ((*(v1 + 734) & 0x20) != 0)
  {
    nw_http_transaction_metadata_set_event_handler(*(v1 + 400), 0);
  }

  if (*(v1 + 216))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v65 = "nw_protocol_http3_stream_destroy";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s should not have unprocessed input frames left when destroying", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v5, &type, &v62))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v8 = "%{public}s should not have unprocessed input frames left when destroying";
    }

    else
    {
      if (v62 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        v12 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v65 = "nw_protocol_http3_stream_destroy";
            v66 = 2082;
            v67 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s should not have unprocessed input frames left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v12)
        {
LABEL_20:
          if (v5)
          {
            free(v5);
          }

          goto LABEL_22;
        }

        *buf = 136446210;
        v65 = "nw_protocol_http3_stream_destroy";
        v8 = "%{public}s should not have unprocessed input frames left when destroying, no backtrace";
        v13 = v10;
        v14 = v11;
LABEL_19:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_20;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v8 = "%{public}s should not have unprocessed input frames left when destroying, backtrace limit exceeded";
    }

    v13 = v6;
    v14 = v7;
    goto LABEL_19;
  }

LABEL_22:
  if (!*(v1 + 176))
  {
    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v65 = "nw_protocol_http3_stream_destroy";
  LODWORD(v61) = 12;
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s should not have unprocessed framer input frames left when destroying", buf, v61);
  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v15, &type, &v62))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v18 = "%{public}s should not have unprocessed framer input frames left when destroying";
LABEL_34:
      v23 = v16;
      v24 = v17;
LABEL_35:
      _os_log_impl(&dword_181A37000, v23, v24, v18, buf, 0xCu);
      goto LABEL_36;
    }

    if (v62 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v18 = "%{public}s should not have unprocessed framer input frames left when destroying, backtrace limit exceeded";
      goto LABEL_34;
    }

    v19 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(gLogObj, type);
    if (v19)
    {
      if (v22)
      {
        *buf = 136446466;
        v65 = "nw_protocol_http3_stream_destroy";
        v66 = 2082;
        v67 = v19;
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s should not have unprocessed framer input frames left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
      goto LABEL_36;
    }

    if (v22)
    {
      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v18 = "%{public}s should not have unprocessed framer input frames left when destroying, no backtrace";
      v23 = v20;
      v24 = v21;
      goto LABEL_35;
    }
  }

LABEL_36:
  if (v15)
  {
    free(v15);
  }

LABEL_38:
  if (!*(v1 + 384))
  {
    goto LABEL_54;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v65 = "nw_protocol_http3_stream_destroy";
  LODWORD(v61) = 12;
  v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s should not have input_fields_frame left when destroying", buf, v61);
  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v25, &type, &v62))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v28 = "%{public}s should not have input_fields_frame left when destroying";
LABEL_50:
      v33 = v26;
      v34 = v27;
LABEL_51:
      _os_log_impl(&dword_181A37000, v33, v34, v28, buf, 0xCu);
      goto LABEL_52;
    }

    if (v62 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v28 = "%{public}s should not have input_fields_frame left when destroying, backtrace limit exceeded";
      goto LABEL_50;
    }

    v29 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    v31 = type;
    v32 = os_log_type_enabled(gLogObj, type);
    if (v29)
    {
      if (v32)
      {
        *buf = 136446466;
        v65 = "nw_protocol_http3_stream_destroy";
        v66 = 2082;
        v67 = v29;
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s should not have input_fields_frame left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v29);
      goto LABEL_52;
    }

    if (v32)
    {
      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v28 = "%{public}s should not have input_fields_frame left when destroying, no backtrace";
      v33 = v30;
      v34 = v31;
      goto LABEL_51;
    }
  }

LABEL_52:
  if (v25)
  {
    free(v25);
  }

LABEL_54:
  nw_frame_reset(*(v1 + 392), 0, 0, 0, 0);
  v35 = *(v1 + 392);
  if (v35)
  {
    os_release(v35);
    *(v1 + 392) = 0;
  }

  v36 = *(v1 + 600);
  v37 = *(v1 + 608);
  if (v36)
  {
    v38 = (v36 + 608);
  }

  else
  {
    if (!v37)
    {
      goto LABEL_61;
    }

    v38 = (*(v1 + 344) + 976);
  }

  *v38 = v37;
  *v37 = v36;
  *(v1 + 600) = 0;
  *(v1 + 608) = 0;
LABEL_61:
  v39 = *(v1 + 352);
  if (v39)
  {
    os_release(v39);
    *(v1 + 352) = 0;
  }

  v40 = *(v1 + 360);
  if (v40)
  {
    os_release(v40);
    *(v1 + 360) = 0;
  }

  v41 = *(v1 + 368);
  if (v41)
  {
    os_release(v41);
    *(v1 + 368) = 0;
  }

  v42 = *(v1 + 400);
  if (v42)
  {
    os_release(v42);
    *(v1 + 400) = 0;
  }

  v43 = *(v1 + 528);
  if (v43)
  {
    os_release(v43);
    *(v1 + 528) = 0;
  }

  v44 = *(v1 + 424);
  if (v44)
  {
    os_release(v44);
    *(v1 + 424) = 0;
  }

  v45 = *(v1 + 432);
  if (v45)
  {
    os_release(v45);
    *(v1 + 432) = 0;
  }

  v46 = *(v1 + 480);
  if (v46)
  {
    free(v46);
    *(v1 + 480) = 0;
  }

  v47 = *(v1 + 512);
  if (v47)
  {
    dispatch_release(v47);
    *(v1 + 512) = 0;
  }

  v48 = *(v1 + 520);
  if (v48)
  {
    dispatch_release(v48);
    *(v1 + 520) = 0;
  }

  (*(*(v1 + 336) + 16))();
  v49 = *(v1 + 336);
  if (v49)
  {
    _Block_release(v49);
    *(v1 + 336) = 0;
  }

  if ((*(v1 + 732) & 8) == 0)
  {
    if (*(v1 + 504))
    {
      v50 = *(v1 + 496);
      if (v50)
      {
        os_release(v50);
      }
    }

    *(v1 + 496) = 0;
    if (*(v1 + 416))
    {
      v51 = *(v1 + 408);
      if (v51)
      {
        os_release(v51);
      }
    }

LABEL_105:
    free(v1);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v65 = "nw_protocol_http3_stream_destroy";
  LODWORD(v61) = 12;
  v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s should not destroy during connect", buf, v61);
  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (!__nwlog_fault(v1, &type, &v62))
  {
    goto LABEL_104;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v52 = gLogObj;
    v53 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v65 = "nw_protocol_http3_stream_destroy";
    v54 = "%{public}s should not destroy during connect";
LABEL_102:
    v59 = v52;
    v60 = v53;
LABEL_103:
    _os_log_impl(&dword_181A37000, v59, v60, v54, buf, 0xCu);
    goto LABEL_104;
  }

  if (v62 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v52 = gLogObj;
    v53 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v65 = "nw_protocol_http3_stream_destroy";
    v54 = "%{public}s should not destroy during connect, backtrace limit exceeded";
    goto LABEL_102;
  }

  v55 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v56 = gLogObj;
  v57 = type;
  v58 = os_log_type_enabled(gLogObj, type);
  if (!v55)
  {
    if (v58)
    {
      *buf = 136446210;
      v65 = "nw_protocol_http3_stream_destroy";
      v54 = "%{public}s should not destroy during connect, no backtrace";
      v59 = v56;
      v60 = v57;
      goto LABEL_103;
    }

LABEL_104:
    if (!v1)
    {
      return;
    }

    goto LABEL_105;
  }

  if (v58)
  {
    *buf = 136446466;
    v65 = "nw_protocol_http3_stream_destroy";
    v66 = 2082;
    v67 = v55;
    _os_log_impl(&dword_181A37000, v56, v57, "%{public}s should not destroy during connect, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v55);
  if (v1)
  {
    goto LABEL_105;
  }
}

void nw_http_deallocate_metadata(uint64_t a1, void *a2)
{
  v3 = a2[2];
  a2[2] = 0;

  v4 = a2[3];
  a2[3] = 0;

  v5 = a2[4];
  a2[4] = 0;

  v6 = a2[5];
  a2[5] = 0;

  free(a2);
}

uint64_t ___ZL22nw_http3_stream_createPK22nw_protocol_identifierP17nw_protocol_http3P11nw_endpointP13nw_parametersb_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_181DF6C44()
{

  return swift_deallocClassInstance();
}

void nw_masque_protocol_destroy(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 505) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v37 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_masque_protocol_destroy";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 507;
        *&buf[22] = 2080;
        v45 = " ";
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDestroying protocol", buf, 0x20u);
      }
    }

    nw_protocol_remove_instance(a1 - 96);
    v2 = *(a1 + 336);
    if (v2)
    {
      nw_queue_cancel_source(v2);
      *(a1 + 336) = 0;
    }

    v3 = *(a1 + 240);
    if (v3)
    {
      *(v3 + 24) = type;
      v4 = *(a1 + 248);
      *type = v3;
      v43 = v4;
      *(a1 + 240) = 0;
      *(a1 + 248) = a1 + 240;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v45 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v46) = 0;
      do
      {
        v5 = *type;
        if (!*type)
        {
          break;
        }

        v6 = *(*type + 16);
        v7 = *(*type + 24);
        v8 = (v6 + 24);
        if (!v6)
        {
          v8 = &v43;
        }

        *v8 = v7;
        *v7 = v6;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v9 = *(a1 + 464);
    if (v9)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 0x40000000;
      v40[2] = ___ZL26nw_masque_protocol_destroyP9nw_masque_block_invoke;
      v40[3] = &__block_descriptor_tmp_55_28627;
      v40[4] = a1;
      nw_hash_table_apply(v9, v40);
      v10 = *(a1 + 464);
      if (v10)
      {
        _nw_hash_table_release(v10);
        *(a1 + 464) = 0;
      }
    }

    if (*(a1 + 448))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL32nw_masque_listener_set_callbacksP20nw_protocol_metadataPv_block_invoke;
      v45 = &__block_descriptor_tmp_56_27485;
      v46 = 0;
      handle = _nw_protocol_metadata_get_handle();
      if (handle)
      {
        (*&buf[16])(buf, handle);
      }
    }

    if (*(a1 + 456))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL23nw_masque_set_callbacksP20nw_protocol_metadataPv_block_invoke;
      v45 = &__block_descriptor_tmp_189;
      v46 = 0;
      v12 = _nw_protocol_metadata_get_handle();
      if (v12)
      {
        (*&buf[16])(buf, v12);
      }

      v13 = *(a1 + 456);
      if (v13)
      {
        os_release(v13);
        *(a1 + 456) = 0;
      }
    }

    v14 = *(a1 + 472);
    if (v14)
    {
      os_release(v14);
      *(a1 + 472) = 0;
    }

    v15 = *(a1 + 448);
    if (v15)
    {
      os_release(v15);
      *(a1 + 448) = 0;
    }

    v16 = *(a1 + 288);
    if (v16)
    {
      os_release(v16);
      *(a1 + 288) = 0;
    }

    v17 = *(a1 + 296);
    if (v17)
    {
      os_release(v17);
      *(a1 + 296) = 0;
    }

    v18 = *(a1 + 304);
    if (v18)
    {
      os_release(v18);
      *(a1 + 304) = 0;
    }

    v19 = *(a1 + 312);
    if (v19)
    {
      os_release(v19);
      *(a1 + 312) = 0;
    }

    v20 = *(a1 + 320);
    if (v20)
    {
      os_release(v20);
      *(a1 + 320) = 0;
    }

    v21 = *(a1 + 328);
    if (v21)
    {
      os_release(v21);
      *(a1 + 328) = 0;
    }

    v22 = *(a1 + 408);
    if (v22)
    {
      os_release(v22);
      *(a1 + 408) = 0;
    }

    v23 = *(a1 + 400);
    if (v23)
    {
      os_release(v23);
      *(a1 + 400) = 0;
    }

    v24 = *(a1 + 440);
    if (v24)
    {
      os_release(v24);
      *(a1 + 440) = 0;
    }

    v25 = *(a1 + 344);
    if (v25)
    {
      os_release(v25);
      *(a1 + 344) = 0;
    }

    v26 = *(a1 + 352);
    if (v26)
    {
      os_release(v26);
      *(a1 + 352) = 0;
    }

    v27 = *(a1 + 360);
    if (v27)
    {
      os_release(v27);
      *(a1 + 360) = 0;
    }

    v28 = *(a1 + 368);
    if (v28)
    {
      dispatch_release(v28);
      *(a1 + 368) = 0;
    }

    v29 = *(a1 + 376);
    if (v29)
    {
      dispatch_release(v29);
      *(a1 + 376) = 0;
    }

    v30 = *(a1 + 384);
    if (v30)
    {
      dispatch_release(v30);
      *(a1 + 384) = 0;
    }

    v31 = *(a1 + 392);
    if (v31)
    {
      dispatch_release(v31);
      *(a1 + 392) = 0;
    }

    nw_protocol_destroy(a1, 0);
    return;
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_protocol_destroy";
  v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null masque", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (__nwlog_fault(v33, type, &v41))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (!os_log_type_enabled(v34, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_protocol_destroy";
      v36 = "%{public}s called with null masque";
      goto LABEL_78;
    }

    if (v41 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (!os_log_type_enabled(v34, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_protocol_destroy";
      v36 = "%{public}s called with null masque, backtrace limit exceeded";
      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type[0];
    v39 = os_log_type_enabled(v34, type[0]);
    if (backtrace_string)
    {
      if (v39)
      {
        *buf = 136446466;
        *&buf[4] = "nw_masque_protocol_destroy";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_79;
    }

    if (v39)
    {
      *buf = 136446210;
      *&buf[4] = "nw_masque_protocol_destroy";
      v36 = "%{public}s called with null masque, no backtrace";
LABEL_78:
      _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    }
  }

LABEL_79:
  if (v33)
  {
    free(v33);
  }
}

void nw_masque_deallocate_metadata(nw_protocol_definition *a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void nw_protocol_instance_report_done(void *a1, unint64_t a2, void *a3)
{
  v119 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v62 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_report_done";
    v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s called with null instance", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v108) = 0;
    if (!__nwlog_fault(v63, type, &v108))
    {
      goto LABEL_188;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v64 = __nwlog_obj();
      v65 = type[0];
      if (os_log_type_enabled(v64, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_report_done";
        _os_log_impl(&dword_181A37000, v64, v65, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v108 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v64 = __nwlog_obj();
      v70 = type[0];
      v71 = os_log_type_enabled(v64, type[0]);
      if (backtrace_string)
      {
        if (v71)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_report_done";
          v113 = 2082;
          v114 = backtrace_string;
          _os_log_impl(&dword_181A37000, v64, v70, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_188:
        if (!v63)
        {
          goto LABEL_81;
        }

        goto LABEL_189;
      }

      if (v71)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_report_done";
        _os_log_impl(&dword_181A37000, v64, v70, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v64 = __nwlog_obj();
      v78 = type[0];
      if (os_log_type_enabled(v64, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_report_done";
        _os_log_impl(&dword_181A37000, v64, v78, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_187:

    goto LABEL_188;
  }

  v7 = *(v5 + 15);
  if (v7)
  {
    v8 = v7;
    v9 = v8;
    if ((v8[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v8[1]);
    }
  }

  if ((v5[413] & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v66 = __nwlog_obj();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_instance_report_done";
      v113 = 2082;
      v114 = v5 + 415;
      v115 = 2080;
      v116 = " ";
      v117 = 2048;
      v118 = a2;
      _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReporting flow %llx done", buf, 0x2Au);
    }
  }

  if (*(*(v5 + 1) + 64) != 3)
  {
    if (a2 == -1)
    {
      if (!v6 || (v13 = *(v5 - 6)) == 0 || (v14 = *(v13 + 3)) == 0 || !*(v14 + 56))
      {
LABEL_59:
        v34 = *(v5 - 6);
        if (!v34)
        {
          goto LABEL_81;
        }

        v35 = v34[3];
        if (!v35)
        {
          goto LABEL_81;
        }

        v36 = *(v35 + 48);
        if (!v36)
        {
          goto LABEL_81;
        }

        v37 = v34[5];
        v38 = *(v5 - 6);
        if (v37 == &nw_protocol_ref_counted_handle)
        {
          goto LABEL_66;
        }

        if (v37 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v38) = 0;
          v39 = 1;
          goto LABEL_69;
        }

        v38 = v34[8];
        if (v38)
        {
LABEL_66:
          v40 = *(v38 + 88);
          v39 = 0;
          if (v40)
          {
            *(v38 + 88) = v40 + 1;
          }

          LOBYTE(v38) = -1;
        }

        else
        {
          v39 = 1;
        }

LABEL_69:
        *buf = v34;
        buf[8] = v38;
        v41 = *(v5 - 7);
        v42 = v5 - 96;
        if (v41 != &nw_protocol_ref_counted_handle)
        {
          if (v41 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v42) = 0;
            v43 = 1;
LABEL_76:
            *type = v5 - 96;
            v111 = v42;
            v36();
LABEL_77:
            if ((v43 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(type);
            }

            if ((v39 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(buf);
            }

            goto LABEL_81;
          }

          v42 = *(v5 - 4);
          if (!v42)
          {
            v43 = 1;
            goto LABEL_76;
          }
        }

        v44 = *(v42 + 11);
        v43 = 0;
        if (v44)
        {
          *(v42 + 11) = v44 + 1;
        }

        LOBYTE(v42) = -1;
        goto LABEL_76;
      }

      v15 = *(v13 + 5);
      v16 = v13;
      if (v15 != &nw_protocol_ref_counted_handle)
      {
        if (v15 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v16) = 0;
          v17 = 1;
          goto LABEL_45;
        }

        v16 = *(v13 + 8);
        if (!v16)
        {
          v17 = 1;
          goto LABEL_45;
        }
      }

      v26 = *(v16 + 11);
      v17 = 0;
      if (v26)
      {
        *(v16 + 11) = v26 + 1;
      }

      LOBYTE(v16) = -1;
LABEL_45:
      *type = v13;
      v111 = v16;
      v27 = *(v5 - 7);
      v28 = v5 - 96;
      if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v28 = *(v5 - 4)) != 0)
      {
        v31 = *(v28 + 11);
        v30 = 0;
        if (v31)
        {
          *(v28 + 11) = v31 + 1;
        }

        v29 = -1;
      }

      else
      {
        v29 = 0;
        v30 = 1;
      }

      v108 = v5 - 96;
      v109 = v29;
      v32 = *(v13 + 3);
      if (v32)
      {
        v33 = *(v32 + 56);
        if (v33)
        {
          v33(v13);
LABEL_55:
          if ((v30 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(&v108);
          }

          if ((v17 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(type);
          }

          goto LABEL_59;
        }
      }

      v72 = __nwlog_obj();
      v73 = *(v13 + 2);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_error";
      if (!v73)
      {
        v73 = "invalid";
      }

      v113 = 2082;
      v114 = v73;
      v115 = 2048;
      v116 = v13;
      v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 32);

      v107 = OS_LOG_TYPE_ERROR;
      v106 = 0;
      if (__nwlog_fault(v74, &v107, &v106))
      {
        if (v107 == OS_LOG_TYPE_FAULT)
        {
          v75 = __nwlog_obj();
          v76 = v107;
          if (os_log_type_enabled(v75, v107))
          {
            v77 = *(v13 + 2);
            if (!v77)
            {
              v77 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_error";
            v113 = 2082;
            v114 = v77;
            v115 = 2048;
            v116 = v13;
            _os_log_impl(&dword_181A37000, v75, v76, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 0x20u);
          }
        }

        else if (v106 == 1)
        {
          v82 = __nw_create_backtrace_string();
          v75 = __nwlog_obj();
          v83 = v107;
          v84 = os_log_type_enabled(v75, v107);
          if (v82)
          {
            if (v84)
            {
              v85 = *(v13 + 2);
              if (!v85)
              {
                v85 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_error";
              v113 = 2082;
              v114 = v85;
              v115 = 2048;
              v116 = v13;
              v117 = 2082;
              v118 = v82;
              _os_log_impl(&dword_181A37000, v75, v83, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v82);
            goto LABEL_202;
          }

          if (v84)
          {
            v99 = *(v13 + 2);
            if (!v99)
            {
              v99 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_error";
            v113 = 2082;
            v114 = v99;
            v115 = 2048;
            v116 = v13;
            _os_log_impl(&dword_181A37000, v75, v83, "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v75 = __nwlog_obj();
          v87 = v107;
          if (os_log_type_enabled(v75, v107))
          {
            v88 = *(v13 + 2);
            if (!v88)
            {
              v88 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_error";
            v113 = 2082;
            v114 = v88;
            v115 = 2048;
            v116 = v13;
            _os_log_impl(&dword_181A37000, v75, v87, "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_202:
      if (v74)
      {
        free(v74);
      }

      goto LABEL_55;
    }

    v67 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_report_done";
    v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW)", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v108) = 0;
    if (!__nwlog_fault(v63, type, &v108))
    {
      goto LABEL_188;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v64 = __nwlog_obj();
      v68 = type[0];
      if (os_log_type_enabled(v64, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_report_done";
        _os_log_impl(&dword_181A37000, v64, v68, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW)", buf, 0xCu);
      }
    }

    else if (v108 == 1)
    {
      v79 = __nw_create_backtrace_string();
      v64 = __nwlog_obj();
      v80 = type[0];
      v81 = os_log_type_enabled(v64, type[0]);
      if (v79)
      {
        if (v81)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_report_done";
          v113 = 2082;
          v114 = v79;
          _os_log_impl(&dword_181A37000, v64, v80, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
        if (!v63)
        {
          goto LABEL_81;
        }

LABEL_189:
        free(v63);
        goto LABEL_81;
      }

      if (v81)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_report_done";
        _os_log_impl(&dword_181A37000, v64, v80, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v64 = __nwlog_obj();
      v86 = type[0];
      if (os_log_type_enabled(v64, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_report_done";
        _os_log_impl(&dword_181A37000, v64, v86, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_187;
  }

  if (a2 >= 0xFFFFFFFFFFFFFFFELL)
  {
    if ((v5[413] & 0x40) != 0)
    {
      if ((v5[413] & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_instance_report_done";
          v113 = 2082;
          v114 = v5 + 415;
          v115 = 2080;
          v116 = " ";
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%salready in report done, skipping", buf, 0x20u);
        }
      }
    }

    else
    {
      v5[413] |= 0x40u;
      v5[412] |= 4u;
      nw_protocol_remove_instance((v5 - 96));
      v10 = *(v5 + 3);
      if (v10)
      {
        if (*v10)
        {
          v11 = *(*v10 + 8);
          if (v11)
          {
            v11();
          }
        }

        *(v5 + 3) = 0;
      }

      v12 = *(v5 + 29);
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __nw_protocol_instance_report_done_block_invoke;
      v103[3] = &unk_1E6A2CD28;
      v104 = v6;
      v105 = v5;
      nw_hash_table_apply(v12, v103);
      v5[413] &= ~0x40u;
    }

    goto LABEL_81;
  }

  node = nw_hash_table_get_node(*(v5 + 29), a2, 8);
  if (node)
  {
    *(node + 42) |= 0x200u;
    v19 = node[2];
    if (!v19)
    {
      goto LABEL_81;
    }

    if (!v6 || (v20 = *(v19 + 3)) == 0 || !*(v20 + 56))
    {
LABEL_103:
      v53 = *(v19 + 3);
      if (!v53)
      {
        goto LABEL_81;
      }

      v54 = *(v53 + 48);
      if (!v54)
      {
        goto LABEL_81;
      }

      v55 = *(v19 + 5);
      v56 = v19;
      if (v55 != &nw_protocol_ref_counted_handle)
      {
        if (v55 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v56) = 0;
          v39 = 1;
          goto LABEL_112;
        }

        v56 = *(v19 + 8);
        if (!v56)
        {
          v39 = 1;
LABEL_112:
          *buf = v19;
          buf[8] = v56;
          v58 = *(v5 - 7);
          v59 = v5 - 96;
          if (v58 == &nw_protocol_ref_counted_handle || v58 == &nw_protocol_ref_counted_additional_handle && (v59 = *(v5 - 4)) != 0)
          {
            v61 = *(v59 + 11);
            v43 = 0;
            if (v61)
            {
              *(v59 + 11) = v61 + 1;
            }

            v60 = -1;
          }

          else
          {
            v60 = 0;
            v43 = 1;
          }

          *type = v5 - 96;
          v111 = v60;
          v54(v19);
          goto LABEL_77;
        }
      }

      v57 = *(v56 + 11);
      v39 = 0;
      if (v57)
      {
        *(v56 + 11) = v57 + 1;
      }

      LOBYTE(v56) = -1;
      goto LABEL_112;
    }

    v21 = *(v19 + 5);
    v22 = v19;
    if (v21 != &nw_protocol_ref_counted_handle)
    {
      if (v21 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v22) = 0;
        v23 = 1;
        goto LABEL_89;
      }

      v22 = *(v19 + 8);
      if (!v22)
      {
        v23 = 1;
        goto LABEL_89;
      }
    }

    v45 = *(v22 + 11);
    v23 = 0;
    if (v45)
    {
      *(v22 + 11) = v45 + 1;
    }

    LOBYTE(v22) = -1;
LABEL_89:
    *type = v19;
    v111 = v22;
    v46 = *(v5 - 7);
    v47 = v5 - 96;
    if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (v47 = *(v5 - 4)) != 0)
    {
      v50 = *(v47 + 11);
      v49 = 0;
      if (v50)
      {
        *(v47 + 11) = v50 + 1;
      }

      v48 = -1;
    }

    else
    {
      v48 = 0;
      v49 = 1;
    }

    v108 = v5 - 96;
    v109 = v48;
    v51 = *(v19 + 3);
    if (v51)
    {
      v52 = *(v51 + 56);
      if (v52)
      {
        v52(v19);
LABEL_99:
        if ((v49 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(&v108);
        }

        if ((v23 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(type);
        }

        goto LABEL_103;
      }
    }

    v89 = __nwlog_obj();
    v90 = *(v19 + 2);
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_error";
    if (!v90)
    {
      v90 = "invalid";
    }

    v113 = 2082;
    v114 = v90;
    v115 = 2048;
    v116 = v19;
    v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 32);

    v107 = OS_LOG_TYPE_ERROR;
    v106 = 0;
    if (__nwlog_fault(v91, &v107, &v106))
    {
      if (v107 == OS_LOG_TYPE_FAULT)
      {
        v92 = __nwlog_obj();
        v93 = v107;
        if (os_log_type_enabled(v92, v107))
        {
          v94 = *(v19 + 2);
          if (!v94)
          {
            v94 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_error";
          v113 = 2082;
          v114 = v94;
          v115 = 2048;
          v116 = v19;
          _os_log_impl(&dword_181A37000, v92, v93, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 0x20u);
        }
      }

      else if (v106 == 1)
      {
        v95 = __nw_create_backtrace_string();
        v92 = __nwlog_obj();
        v96 = v107;
        v97 = os_log_type_enabled(v92, v107);
        if (v95)
        {
          if (v97)
          {
            v98 = *(v19 + 2);
            if (!v98)
            {
              v98 = "invalid";
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_error";
            v113 = 2082;
            v114 = v98;
            v115 = 2048;
            v116 = v19;
            v117 = 2082;
            v118 = v95;
            _os_log_impl(&dword_181A37000, v92, v96, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v95);
          goto LABEL_214;
        }

        if (v97)
        {
          v102 = *(v19 + 2);
          if (!v102)
          {
            v102 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_error";
          v113 = 2082;
          v114 = v102;
          v115 = 2048;
          v116 = v19;
          _os_log_impl(&dword_181A37000, v92, v96, "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v92 = __nwlog_obj();
        v100 = v107;
        if (os_log_type_enabled(v92, v107))
        {
          v101 = *(v19 + 2);
          if (!v101)
          {
            v101 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_error";
          v113 = 2082;
          v114 = v101;
          v115 = 2048;
          v116 = v19;
          _os_log_impl(&dword_181A37000, v92, v100, "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_214:
    if (v91)
    {
      free(v91);
    }

    goto LABEL_99;
  }

  if ((v5[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_instance_report_done";
      v113 = 2082;
      v114 = v5 + 415;
      v115 = 2080;
      v116 = " ";
      v117 = 2048;
      v118 = a2;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot report done, flow %llx does not exist", buf, 0x2Au);
    }
  }

LABEL_81:
}

void sub_181DF84BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v25 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  if ((v23 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v22 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

void nw_flow_listener_disconnected(nw_listen_protocol *a1, nw_protocol *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1->handle + 20);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = v6[29];

    if (v7 == 2)
    {
      (a2->callbacks->remove_listen_handler)(a2, a1);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (v7 > 5)
        {
          v9 = "unknown-mode";
        }

        else
        {
          v9 = off_1E6A31018[v7];
        }

        v10 = 136446722;
        v11 = "nw_flow_listener_disconnected";
        v12 = 2082;
        v13 = v9;
        v14 = 2082;
        v15 = "flow";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", &v10, 0x20u);
      }
    }
  }
}

uint64_t nw_protocol_implementation_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v5 = __nwlog_obj();
        *buf = 136446210;
        v43 = "nw_protocol_implementation_remove_listen_handler";
        v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null instance", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (__nwlog_fault(v6, &type, &v40))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_remove_listen_handler";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v40 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v15 = type;
            v16 = os_log_type_enabled(v7, type);
            if (backtrace_string)
            {
              if (v16)
              {
                *buf = 136446466;
                v43 = "nw_protocol_implementation_remove_listen_handler";
                v44 = 2082;
                v45 = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            if (v16)
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_remove_listen_handler";
              _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v17 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_remove_listen_handler";
              _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_36:
          v9 = 0;
          v13 = 0;
          goto LABEL_37;
        }

LABEL_35:
        free(v6);
        goto LABEL_36;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v3[1].handle;
    if (v10)
    {
      if (v10[10])
      {
        if (v3[1].output_handler_context == a2)
        {
          v3[1].output_handler_context = 0;
          a2->protocol_handler = 0;
          v11 = BYTE5(v3[7].output_handler_context);
          if ((v11 & 8) != 0)
          {
LABEL_21:
            v13 = 1;
LABEL_37:

            return v13;
          }
        }

        else
        {
          v11 = BYTE5(v3[7].output_handler_context);
          if ((v11 & 8) != 0)
          {
            goto LABEL_21;
          }
        }

        if ((v11 & 0x80) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v43 = "nw_protocol_implementation_remove_listen_handler";
            v44 = 2082;
            v45 = &v3[7].output_handler_context + 7;
            v46 = 2080;
            v47 = " ";
            _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemoved protocol listen handler", buf, 0x20u);
          }
        }

        BYTE4(v3[7].output_handler_context) |= 4u;
        nw_protocol_remove_instance(v3);
        goto LABEL_21;
      }

      v27 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_protocol_implementation_remove_listen_handler";
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (__nwlog_fault(v24, &type, &v40))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v28 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v43 = "nw_protocol_implementation_remove_listen_handler";
            _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

LABEL_89:

          goto LABEL_90;
        }

        if (v40 != 1)
        {
          v25 = __nwlog_obj();
          v39 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v43 = "nw_protocol_implementation_remove_listen_handler";
            _os_log_impl(&dword_181A37000, v25, v39, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_89;
        }

        v32 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v35 = type;
        v36 = os_log_type_enabled(v25, type);
        if (!v32)
        {
          if (v36)
          {
            *buf = 136446210;
            v43 = "nw_protocol_implementation_remove_listen_handler";
            _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_89;
        }

        if (v36)
        {
          *buf = 136446466;
          v43 = "nw_protocol_implementation_remove_listen_handler";
          v44 = 2082;
          v45 = v32;
          _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_68;
      }
    }

    else
    {
      v23 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_protocol_implementation_remove_listen_handler";
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null instance->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (__nwlog_fault(v24, &type, &v40))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v43 = "nw_protocol_implementation_remove_listen_handler";
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null instance->parent_definition", buf, 0xCu);
          }

          goto LABEL_89;
        }

        if (v40 != 1)
        {
          v25 = __nwlog_obj();
          v38 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v43 = "nw_protocol_implementation_remove_listen_handler";
            _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_89;
        }

        v32 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v33 = type;
        v34 = os_log_type_enabled(v25, type);
        if (!v32)
        {
          if (v34)
          {
            *buf = 136446210;
            v43 = "nw_protocol_implementation_remove_listen_handler";
            _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_89;
        }

        if (v34)
        {
          *buf = 136446466;
          v43 = "nw_protocol_implementation_remove_listen_handler";
          v44 = 2082;
          v45 = v32;
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_68:

        free(v32);
      }
    }

LABEL_90:
    if (v24)
    {
      free(v24);
    }

    v13 = 0;
    goto LABEL_37;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_protocol_implementation_remove_listen_handler";
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v20, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_remove_listen_handler";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v21, type);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          v43 = "nw_protocol_implementation_remove_listen_handler";
          v44 = 2082;
          v45 = v29;
          _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_81;
      }

      if (v31)
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_remove_listen_handler";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_remove_listen_handler";
        _os_log_impl(&dword_181A37000, v21, v37, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_81:
  if (v20)
  {
    free(v20);
  }

  return 0;
}

uint64_t __nw_protocol_instance_report_done_block_invoke(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  *(extra + 52) |= 0x200u;
  object = nw_hash_node_get_object(a2);
  if (!object)
  {
    return 1;
  }

  v6 = object;
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = *(object + 24);
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = *(a1 + 40);
  if (!v9 || !*(v8 + 56))
  {
    goto LABEL_27;
  }

  v10 = v6[5];
  v11 = v6;
  if (v10 != &nw_protocol_ref_counted_handle)
  {
    if (v10 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v11) = 0;
      v12 = 1;
      goto LABEL_13;
    }

    v11 = v6[8];
    if (!v11)
    {
      v12 = 1;
      goto LABEL_13;
    }
  }

  v13 = v11[11];
  v12 = 0;
  if (v13)
  {
    v11[11] = v13 + 1;
  }

  LOBYTE(v11) = -1;
LABEL_13:
  v53 = v6;
  v54 = v11;
  v14 = *(v9 - 56);
  v15 = v9 - 96;
  if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(v9 - 32)) != 0)
  {
    v18 = *(v15 + 88);
    v17 = 0;
    if (v18)
    {
      *(v15 + 88) = v18 + 1;
    }

    v16 = -1;
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  v51 = v9 - 96;
  v52 = v16;
  v19 = v6[3];
  if (!v19 || (v20 = *(v19 + 56)) == 0)
  {
    v35 = __nwlog_obj();
    v36 = v6[2];
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_error";
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = "invalid";
    }

    v56 = 2082;
    v57 = v37;
    v58 = 2048;
    v59 = v6;
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v38, &type, &v49))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v39, type))
        {
          if (v6[2])
          {
            v41 = v6[2];
          }

          else
          {
            v41 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_error";
          v56 = 2082;
          v57 = v41;
          v58 = 2048;
          v59 = v6;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 0x20u);
        }
      }

      else if (v49 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v39, type);
        if (backtrace_string)
        {
          if (v44)
          {
            v45 = v6[2];
            if (!v45)
            {
              v45 = "invalid";
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_error";
            v56 = 2082;
            v57 = v45;
            v58 = 2048;
            v59 = v6;
            v60 = 2082;
            v61 = backtrace_string;
            _os_log_impl(&dword_181A37000, v39, v43, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_79;
        }

        if (v44)
        {
          v48 = v6[2];
          if (!v48)
          {
            v48 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_error";
          v56 = 2082;
          v57 = v48;
          v58 = 2048;
          v59 = v6;
          _os_log_impl(&dword_181A37000, v39, v43, "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v39, type))
        {
          v47 = v6[2];
          if (!v47)
          {
            v47 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_error";
          v56 = 2082;
          v57 = v47;
          v58 = 2048;
          v59 = v6;
          _os_log_impl(&dword_181A37000, v39, v46, "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_79:
    if (v38)
    {
      free(v38);
    }

    goto LABEL_23;
  }

  v20(v6);
LABEL_23:
  if ((v17 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v51);
  }

  if ((v12 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v53);
  }

LABEL_27:
  v21 = v6[3];
  if (!v21)
  {
    return 1;
  }

  v22 = *(a1 + 40);
  if (!v22)
  {
    return 1;
  }

  v23 = *(v21 + 48);
  if (!v23)
  {
    return 1;
  }

  v24 = v6[5];
  v25 = v6;
  if (v24 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_34;
  }

  if (v24 != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v25) = 0;
    v26 = 1;
    goto LABEL_37;
  }

  v25 = v6[8];
  if (v25)
  {
LABEL_34:
    v27 = v25[11];
    v26 = 0;
    if (v27)
    {
      v25[11] = v27 + 1;
    }

    LOBYTE(v25) = -1;
    goto LABEL_37;
  }

  v26 = 1;
LABEL_37:
  v28 = (v22 - 96);
  *buf = v6;
  buf[8] = v25;
  v29 = *(v22 - 56);
  v30 = v22 - 96;
  if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v30 = *(v22 - 32)) != 0)
  {
    v33 = *(v30 + 88);
    v32 = 0;
    if (v33)
    {
      *(v30 + 88) = v33 + 1;
    }

    v31 = -1;
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

  v53 = v28;
  v54 = v31;
  v23(v6);
  if ((v32 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v53);
  }

  if ((v26 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(buf);
  }

  return 1;
}

void sub_181DF968C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if ((v20 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a15);
  }

  if ((v19 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL32nw_flow_passthrough_disconnectedP11nw_protocolS0__block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (v1)
  {
    v3 = v1;
    v4 = v3[29];

    if (v4 == 2)
    {
      if (a1[7] == a1[5] + 376)
      {
        v5 = a1[4];
        v6 = a1[6];

        nw_endpoint_flow_failed_with_error(v5, 1, v6);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v4 > 5)
        {
          v8 = "unknown-mode";
        }

        else
        {
          v8 = off_1E6A31018[v4];
        }

        *buf = 136446722;
        v20 = "nw_flow_passthrough_disconnected_block_invoke";
        v21 = 2082;
        v22 = v8;
        v23 = 2082;
        v24 = "flow";
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_flow_passthrough_disconnected_block_invoke";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null handler", buf, 12);

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
        v20 = "nw_flow_passthrough_disconnected_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
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
          v20 = "nw_flow_passthrough_disconnected_block_invoke";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_disconnected_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_disconnected_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v10)
  {
    free(v10);
  }
}

void nw_protocol_implementation_teardown(NWConcrete_nw_protocol_instance *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_teardown";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null instance", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v94) = 0;
    if (__nwlog_fault(v67, type, &v94))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v68 = __nwlog_obj();
        v69 = type[0];
        if (os_log_type_enabled(v68, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_teardown";
          _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v94 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v68 = __nwlog_obj();
        v71 = type[0];
        v72 = os_log_type_enabled(v68, type[0]);
        if (backtrace_string)
        {
          if (v72)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_teardown";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v68, v71, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_156;
        }

        if (v72)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_teardown";
          _os_log_impl(&dword_181A37000, v68, v71, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v68 = __nwlog_obj();
        v82 = type[0];
        if (os_log_type_enabled(v68, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_teardown";
          _os_log_impl(&dword_181A37000, v68, v82, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_156:
    if (v67)
    {
      free(v67);
    }

    goto LABEL_115;
  }

  v3 = BYTE6(v1->flow_in_connected);
  v4 = SBYTE5(v1->flow_in_connected);
  if ((v3 & 1) == 0)
  {
    if ((v4 & 0x80000000) == 0 && gLogDatapath == 1)
    {
      v73 = __nwlog_obj();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_implementation_teardown";
        *&buf[12] = 2082;
        *&buf[14] = &v2->flow_in_connected + 7;
        *&buf[22] = 2080;
        v99 = " ";
        _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sTearing down protocol", buf, 0x20u);
      }

      v3 = BYTE6(v2->flow_in_connected);
    }

    BYTE6(v2->flow_in_connected) = v3 | 1;
    internal_reference = v2->internal_reference;
    if (internal_reference)
    {
      nw_queue_cancel_source(internal_reference);
      v2->internal_reference = 0;
    }

    connecting_node = v2->connecting_node;
    if (connecting_node)
    {
      nw_protocol_instance_registrar_remove_instance(connecting_node, &v2[-1].paths_log_id_num);
      v7 = v2->connecting_node;
      v2->connecting_node = 0;
    }

    var16 = v2->parent_definition->extended_state->var16;
    if (!var16 || (var16(v2, -1, 3) & 1) != 0)
    {
      goto LABEL_35;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_teardown";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v94) = 0;
    if (__nwlog_fault(v10, type, &v94))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_teardown";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS", buf, 0xCu);
        }
      }

      else if (v94 == 1)
      {
        v14 = __nw_create_backtrace_string();
        if (v14)
        {
          v15 = v14;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v17 = type[0];
          if (os_log_type_enabled(v16, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_teardown";
            *&buf[12] = 2082;
            *&buf[14] = v15;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v15);
          if (!v10)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v11 = __nwlog_obj();
        v19 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_teardown";
          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v18 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_teardown";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v10)
    {
LABEL_35:
      BYTE4(v2->flow_in_connected) |= 4u;
      nw_protocol_remove_instance(&v2[-1].paths_log_id_num);
      v20 = v2;
      tqh_first = v20->pending_outbound_frames.tqh_first;
      if (tqh_first)
      {
        _nw_array_apply(tqh_first, &__block_literal_global_273);
        v22 = v20->pending_outbound_frames.tqh_first;
      }

      else
      {
        v22 = 0;
      }

      v20->pending_outbound_frames.tqh_first = 0;

      v23 = *&v20[-1].log_str[25];
      if (!v23 || (flow_registration = v20->flow_registration) != 0 && (v90[0] = MEMORY[0x1E69E9820], v90[1] = 3221225472, v90[2] = ___ZL35nw_protocol_implementation_teardownP31NWConcrete_nw_protocol_instance_block_invoke, v90[3] = &unk_1E6A3CDF8, v91 = v20, nw_hash_table_apply(flow_registration, v90), v91, (v23 = *&v20[-1].log_str[25]) == 0))
      {
LABEL_97:
        v50 = *&v20->_anon_0[8];
        if (v50)
        {
          if (*v50)
          {
            v51 = *(*v50 + 8);
            if (v51)
            {
              v51();
            }
          }

          *&v20->_anon_0[8] = 0;
        }

        (v2->parent_definition->extended_state->var6)(v20);
        v52 = nw_parameters_copy_context(v20->destroy_timer);
        nw_context_reset_timer_block_with_time(v52, v20, -1, 0);

        new_flow_metadata = v20->new_flow_metadata;
        v20->new_flow_metadata = 0;

        BYTE4(v2->flow_in_connected) &= ~0x10u;
        handle = v20->handle;
        if (handle)
        {
          handle[3] = type;
          context = v20->context;
          *type = handle;
          v97 = context;
          v20->handle = 0;
          v20->context = &v20->handle;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
          v99 = &__block_descriptor_tmp_21_49595;
          LOBYTE(v100) = 0;
          do
          {
            v56 = *type;
            if (!*type)
            {
              break;
            }

            v57 = *(*type + 16);
            v58 = *(*type + 24);
            v59 = (v57 + 24);
            if (!v57)
            {
              v59 = &v97;
            }

            *v59 = v58;
            *v58 = v57;
            *(v56 + 16) = 0;
            *(v56 + 24) = 0;
          }

          while (((*&buf[16])(buf) & 1) != 0);
        }

        v60 = v20->inbound_frames.tqh_first;
        if (v60)
        {
          *(v60 + 3) = type;
          tqh_last = v20->inbound_frames.tqh_last;
          *type = v60;
          v97 = tqh_last;
          v20->inbound_frames.tqh_first = 0;
          v20->inbound_frames.tqh_last = &v20->inbound_frames.tqh_first;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
          v99 = &__block_descriptor_tmp_21_49595;
          LOBYTE(v100) = 0;
          do
          {
            v62 = *type;
            if (!*type)
            {
              break;
            }

            v63 = *(*type + 16);
            v64 = *(*type + 24);
            v65 = (v63 + 24);
            if (!v63)
            {
              v65 = &v97;
            }

            *v65 = v64;
            *v64 = v63;
            *(v62 + 16) = 0;
            *(v62 + 24) = 0;
          }

          while (((*&buf[16])(buf) & 1) != 0);
        }

        nw_protocol_implementation_destroy(v20);
        BYTE6(v2->flow_in_connected) &= ~1u;
        goto LABEL_115;
      }

      v25 = v23[5];
      v26 = v23;
      if (v25 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_45;
      }

      if (v25 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v26) = 0;
        v27 = 1;
        goto LABEL_48;
      }

      v26 = v23[8];
      if (v26)
      {
LABEL_45:
        v28 = v26[11];
        v27 = 0;
        if (v28)
        {
          v26[11] = v28 + 1;
        }

        LOBYTE(v26) = -1;
      }

      else
      {
        v27 = 1;
      }

LABEL_48:
      *type = v23;
      LOBYTE(v97) = v26;
      v29 = *&v20[-1].log_str[33];
      p_paths_log_id_num = &v2[-1].paths_log_id_num;
      if (v29 != &nw_protocol_ref_counted_handle)
      {
        if (v29 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(p_paths_log_id_num) = 0;
          v31 = 1;
          goto LABEL_55;
        }

        p_paths_log_id_num = *&v20[-1].log_str[57];
        if (!p_paths_log_id_num)
        {
          v31 = 1;
          goto LABEL_55;
        }
      }

      v32 = *(p_paths_log_id_num + 11);
      v31 = 0;
      if (v32)
      {
        *(p_paths_log_id_num + 11) = v32 + 1;
      }

      LOBYTE(p_paths_log_id_num) = -1;
LABEL_55:
      v94 = &v2[-1].paths_log_id_num;
      v95 = p_paths_log_id_num;
      v33 = v23[3];
      if (v33)
      {
        v34 = *(v33 + 8);
        if (v34)
        {
          v35 = v34();
          if (v31)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }
      }

      v74 = v23;
      v75 = __nwlog_obj();
      v76 = *(v74 + 2);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_remove_input_handler";
      if (!v76)
      {
        v76 = "invalid";
      }

      *&buf[12] = 2082;
      *&buf[14] = v76;
      *&buf[22] = 2048;
      v77 = v74;
      v99 = v74;
      LODWORD(v89) = 32;
      v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, v89);

      v93 = OS_LOG_TYPE_ERROR;
      v92 = 0;
      if (__nwlog_fault(v78, &v93, &v92))
      {
        if (v93 == OS_LOG_TYPE_FAULT)
        {
          v79 = __nwlog_obj();
          v80 = v93;
          if (os_log_type_enabled(v79, v93))
          {
            v81 = *(v77 + 2);
            if (!v81)
            {
              v81 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_remove_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v81;
            *&buf[22] = 2048;
            v99 = v77;
            _os_log_impl(&dword_181A37000, v79, v80, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 0x20u);
          }

LABEL_162:

          goto LABEL_163;
        }

        if (v92 != 1)
        {
          v79 = __nwlog_obj();
          v86 = v93;
          if (os_log_type_enabled(v79, v93))
          {
            v87 = *(v77 + 2);
            if (!v87)
            {
              v87 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_remove_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v87;
            *&buf[22] = 2048;
            v99 = v77;
            _os_log_impl(&dword_181A37000, v79, v86, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded", buf, 0x20u);
          }

          goto LABEL_162;
        }

        v83 = __nw_create_backtrace_string();
        v79 = __nwlog_obj();
        HIDWORD(v89) = v93;
        v84 = os_log_type_enabled(v79, v93);
        if (!v83)
        {
          if (v84)
          {
            v88 = *(v77 + 2);
            if (!v88)
            {
              v88 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_remove_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v88;
            *&buf[22] = 2048;
            v99 = v77;
            _os_log_impl(&dword_181A37000, v79, BYTE4(v89), "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace", buf, 0x20u);
          }

          goto LABEL_162;
        }

        if (v84)
        {
          v85 = *(v77 + 2);
          if (!v85)
          {
            v85 = "invalid";
          }

          *buf = 136446978;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v85;
          *&buf[22] = 2048;
          v99 = v77;
          v100 = 2082;
          v101 = v83;
          _os_log_impl(&dword_181A37000, v79, BYTE4(v89), "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v83);
      }

LABEL_163:
      if (v78)
      {
        free(v78);
      }

      v35 = 0;
      if (v31)
      {
LABEL_59:
        if (v27)
        {
          if (v35)
          {
LABEL_84:
            v44 = *&v20[-1].log_str[25];
            if (v44)
            {
              v45 = *(v44 + 40);
              if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v44 = *(v44 + 64)) != 0)
              {
                v46 = *(v44 + 88);
                if (v46)
                {
                  v47 = v46 - 1;
                  *(v44 + 88) = v47;
                  if (!v47)
                  {
                    v48 = *(v44 + 64);
                    if (v48)
                    {
                      *(v44 + 64) = 0;
                      v48[2](v48);
                      _Block_release(v48);
                    }

                    if (*(v44 + 72))
                    {
                      v49 = *(v44 + 64);
                      if (v49)
                      {
                        _Block_release(v49);
                      }
                    }

                    free(v44);
                  }
                }
              }

              *&v20[-1].log_str[25] = 0;
            }

            goto LABEL_97;
          }
        }

        else
        {
          nw::release_if_needed<nw_protocol *>(type);
          if (v35)
          {
            goto LABEL_84;
          }
        }

        if (SBYTE5(v2->flow_in_connected) < 0)
        {
          goto LABEL_84;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        *buf = 136446722;
        *&buf[4] = "nw_protocol_implementation_teardown";
        *&buf[12] = 2082;
        *&buf[14] = &v20->flow_in_connected + 7;
        *&buf[22] = 2080;
        v99 = " ";
        LODWORD(v89) = 32;
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s %{public}s%sUnable to remove output handler", buf, v89);

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v94) = 0;
        if (__nwlog_fault(v37, type, &v94))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            v39 = type[0];
            if (os_log_type_enabled(v38, type[0]))
            {
              *buf = 136446722;
              *&buf[4] = "nw_protocol_implementation_teardown";
              *&buf[12] = 2082;
              *&buf[14] = &v20->flow_in_connected + 7;
              *&buf[22] = 2080;
              v99 = " ";
              _os_log_impl(&dword_181A37000, v38, v39, "%{public}s %{public}s%sUnable to remove output handler", buf, 0x20u);
            }
          }

          else if (v94 == 1)
          {
            v40 = __nw_create_backtrace_string();
            v38 = __nwlog_obj();
            v41 = type[0];
            v42 = os_log_type_enabled(v38, type[0]);
            if (v40)
            {
              if (v42)
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_implementation_teardown";
                *&buf[12] = 2082;
                *&buf[14] = &v20->flow_in_connected + 7;
                *&buf[22] = 2080;
                v99 = " ";
                v100 = 2082;
                v101 = v40;
                _os_log_impl(&dword_181A37000, v38, v41, "%{public}s %{public}s%sUnable to remove output handler, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v40);
              goto LABEL_82;
            }

            if (v42)
            {
              *buf = 136446722;
              *&buf[4] = "nw_protocol_implementation_teardown";
              *&buf[12] = 2082;
              *&buf[14] = &v20->flow_in_connected + 7;
              *&buf[22] = 2080;
              v99 = " ";
              _os_log_impl(&dword_181A37000, v38, v41, "%{public}s %{public}s%sUnable to remove output handler, no backtrace", buf, 0x20u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            v43 = type[0];
            if (os_log_type_enabled(v38, type[0]))
            {
              *buf = 136446722;
              *&buf[4] = "nw_protocol_implementation_teardown";
              *&buf[12] = 2082;
              *&buf[14] = &v20->flow_in_connected + 7;
              *&buf[22] = 2080;
              v99 = " ";
              _os_log_impl(&dword_181A37000, v38, v43, "%{public}s %{public}s%sUnable to remove output handler, backtrace limit exceeded", buf, 0x20u);
            }
          }
        }

LABEL_82:
        if (v37)
        {
          free(v37);
        }

        goto LABEL_84;
      }

LABEL_58:
      nw::release_if_needed<nw_protocol *>(&v94);
      goto LABEL_59;
    }

LABEL_34:
    free(v10);
    goto LABEL_35;
  }

  if ((v4 & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_implementation_teardown";
      *&buf[12] = 2082;
      *&buf[14] = &v2->flow_in_connected + 7;
      *&buf[22] = 2080;
      v99 = " ";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAlready tearing down protocol", buf, 0x20u);
    }
  }

LABEL_115:
}

void sub_181DFAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  if ((v19 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v20 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_udp_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v117 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    v5 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      v6 = 0;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v6 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v8 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v110 = "nw_protocol_udp_remove_input_handler";
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v107 = 0;
        if (!__nwlog_fault(v9, &type, &v107))
        {
          goto LABEL_58;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_58;
          }

          *buf = 136446210;
          v110 = "nw_protocol_udp_remove_input_handler";
          v12 = "%{public}s called with null udp";
        }

        else
        {
          if (v107 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v33 = gLogObj;
            v34 = type;
            v35 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v35)
              {
                *buf = 136446466;
                v110 = "nw_protocol_udp_remove_input_handler";
                v111 = 2082;
                v112 = backtrace_string;
                _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_58;
            }

            if (!v35)
            {
LABEL_58:
              if (v9)
              {
                free(v9);
              }

              goto LABEL_60;
            }

            *buf = 136446210;
            v110 = "nw_protocol_udp_remove_input_handler";
            v12 = "%{public}s called with null udp, no backtrace";
            v36 = v33;
            v37 = v34;
LABEL_57:
            _os_log_impl(&dword_181A37000, v36, v37, v12, buf, 0xCu);
            goto LABEL_58;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_58;
          }

          *buf = 136446210;
          v110 = "nw_protocol_udp_remove_input_handler";
          v12 = "%{public}s called with null udp, backtrace limit exceeded";
        }

        v36 = v10;
        v37 = v11;
        goto LABEL_57;
      }

      v8 = *a1[1].flow_id;
    }

    if (a2)
    {
      output_handler = a2->output_handler;
      if (output_handler == a1)
      {
        v14 = output_handler->handle;
        if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
        {
          v15 = output_handler[1].callbacks;
          if (v15)
          {
            v16 = (v15 - 1);
            output_handler[1].callbacks = v16;
            if (!v16)
            {
              v17 = a2;
              v18 = a3;
              v19 = *output_handler[1].flow_id;
              if (v19)
              {
                *output_handler[1].flow_id = 0;
                v19[2](v19);
                _Block_release(v19);
              }

              if (output_handler[1].flow_id[8])
              {
                v20 = *output_handler[1].flow_id;
                if (v20)
                {
                  _Block_release(v20);
                }
              }

              free(output_handler);
              a3 = v18;
              a2 = v17;
            }
          }
        }

        a2->output_handler = 0;
      }

      default_input_handler = v3->default_input_handler;
      if (default_input_handler == a2)
      {
        v22 = default_input_handler->handle;
        if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
        {
          v23 = default_input_handler[1].callbacks;
          if (v23)
          {
            v24 = (v23 - 1);
            default_input_handler[1].callbacks = v24;
            if (!v24)
            {
              v25 = a3;
              v26 = *default_input_handler[1].flow_id;
              if (v26)
              {
                *default_input_handler[1].flow_id = 0;
                v26[2](v26);
                _Block_release(v26);
              }

              if (default_input_handler[1].flow_id[8])
              {
                v27 = *default_input_handler[1].flow_id;
                if (v27)
                {
                  _Block_release(v27);
                }
              }

              free(default_input_handler);
              a3 = v25;
            }
          }
        }

        v3->default_input_handler = 0;
        goto LABEL_45;
      }

      goto LABEL_60;
    }

    v104 = a3;
    v71 = __nwlog_obj();
    *buf = 136446210;
    v110 = "__nw_protocol_get_output_handler";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v107 = 0;
    if (__nwlog_fault(v72, &type, &v107))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v73 = __nwlog_obj();
        v74 = type;
        if (!os_log_type_enabled(v73, type))
        {
          goto LABEL_175;
        }

        *buf = 136446210;
        v110 = "__nw_protocol_get_output_handler";
        v75 = "%{public}s called with null protocol";
LABEL_174:
        _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
        goto LABEL_175;
      }

      if (v107 != 1)
      {
        v73 = __nwlog_obj();
        v74 = type;
        if (!os_log_type_enabled(v73, type))
        {
          goto LABEL_175;
        }

        *buf = 136446210;
        v110 = "__nw_protocol_get_output_handler";
        v75 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_174;
      }

      v84 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type;
      v85 = os_log_type_enabled(v73, type);
      if (!v84)
      {
        if (!v85)
        {
          goto LABEL_175;
        }

        *buf = 136446210;
        v110 = "__nw_protocol_get_output_handler";
        v75 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_174;
      }

      if (v85)
      {
        *buf = 136446466;
        v110 = "__nw_protocol_get_output_handler";
        v111 = 2082;
        v112 = v84;
        _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v84);
    }

LABEL_175:
    if (v72)
    {
      free(v72);
    }

    a3 = v104;
    if (!v3->default_input_handler)
    {
LABEL_45:
      v28 = v3->output_handler;
      if (v28)
      {
        v29 = v28->handle;
        v30 = v3->output_handler;
        if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v30 = *v28[1].flow_id) != 0)
        {
          v39 = v30[1].callbacks;
          v31 = 0;
          if (v39)
          {
            v30[1].callbacks = (&v39->add_input_handler + 1);
          }
        }

        else
        {
          v31 = 1;
        }

        v40 = v3->handle;
        v41 = v3;
        if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v41 = *v3[1].flow_id) != 0)
        {
          v44 = v41[1].callbacks;
          if (v44)
          {
            v42 = 0;
            v41[1].callbacks = (&v44->add_input_handler + 1);
            v43 = v28->callbacks;
            if (!v43)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v42 = 0;
            v43 = v28->callbacks;
            if (!v43)
            {
              goto LABEL_134;
            }
          }
        }

        else
        {
          v42 = 1;
          v43 = v28->callbacks;
          if (!v43)
          {
            goto LABEL_134;
          }
        }

        remove_input_handler = v43->remove_input_handler;
        if (remove_input_handler)
        {
          v46 = a3;
          remove_input_handler(v28, v3);
          goto LABEL_76;
        }

LABEL_134:
        v46 = a3;
        v78 = __nwlog_obj();
        name = v28->identifier->name;
        *buf = 136446722;
        v110 = "__nw_protocol_remove_input_handler";
        if (!name)
        {
          name = "invalid";
        }

        v111 = 2082;
        v112 = name;
        v113 = 2048;
        v114 = v28;
        LODWORD(v100) = 32;
        v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, v100);
        type = OS_LOG_TYPE_ERROR;
        v107 = 0;
        v105 = v80;
        if (!__nwlog_fault(v80, &type, &v107))
        {
          goto LABEL_164;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v81 = __nwlog_obj();
          log = type;
          if (!os_log_type_enabled(v81, type))
          {
            goto LABEL_164;
          }

          v82 = v28->identifier->name;
          if (!v82)
          {
            v82 = "invalid";
          }

          *buf = 136446722;
          v110 = "__nw_protocol_remove_input_handler";
          v111 = 2082;
          v112 = v82;
          v113 = 2048;
          v114 = v28;
          v83 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback";
        }

        else
        {
          if (v107 == 1)
          {
            v86 = __nw_create_backtrace_string();
            loga = __nwlog_obj();
            v101 = type;
            v87 = os_log_type_enabled(loga, type);
            if (v86)
            {
              if (v87)
              {
                v88 = v28->identifier->name;
                if (!v88)
                {
                  v88 = "invalid";
                }

                *buf = 136446978;
                v110 = "__nw_protocol_remove_input_handler";
                v111 = 2082;
                v112 = v88;
                v113 = 2048;
                v114 = v28;
                v115 = 2082;
                v116 = v86;
                _os_log_impl(&dword_181A37000, loga, v101, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v86);
              goto LABEL_164;
            }

            if (!v87)
            {
LABEL_164:
              if (v105)
              {
                free(v105);
              }

LABEL_76:
              if ((v42 & 1) == 0)
              {
                v47 = v3->handle;
                v48 = v3;
                if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v48 = *v3[1].flow_id) != 0)
                {
                  v49 = v48[1].callbacks;
                  if (v49)
                  {
                    v50 = (v49 - 1);
                    v48[1].callbacks = v50;
                    if (!v50)
                    {
                      v51 = *v48[1].flow_id;
                      if (v51)
                      {
                        *v48[1].flow_id = 0;
                        v51[2](v51);
                        _Block_release(v51);
                      }

                      if (v48[1].flow_id[8])
                      {
                        v52 = *v48[1].flow_id;
                        if (v52)
                        {
                          _Block_release(v52);
                        }
                      }

                      free(v48);
                    }
                  }
                }
              }

              if ((v31 & 1) == 0)
              {
                v53 = v28->handle;
                if (v53 == &nw_protocol_ref_counted_handle || v53 == &nw_protocol_ref_counted_additional_handle && (v28 = *v28[1].flow_id) != 0)
                {
                  v54 = v28[1].callbacks;
                  if (v54)
                  {
                    v55 = (v54 - 1);
                    v28[1].callbacks = v55;
                    if (!v55)
                    {
                      v56 = *v28[1].flow_id;
                      if (v56)
                      {
                        *v28[1].flow_id = 0;
                        v56[2](v56);
                        _Block_release(v56);
                      }

                      if (v28[1].flow_id[8])
                      {
                        v57 = *v28[1].flow_id;
                        if (v57)
                        {
                          _Block_release(v57);
                        }
                      }

                      free(v28);
                    }
                  }
                }
              }

              if (v46)
              {
LABEL_101:
                v58 = v8[1].default_input_handler;
                if (v58)
                {
                  os_release(v58);
                  v8[1].default_input_handler = 0;
                }

                output_handler_context = v8[1].output_handler_context;
                if (output_handler_context)
                {
                  os_release(output_handler_context);
                  v8[1].output_handler_context = 0;
                }

                nw_protocol_destroy(&v8[1].output_handler, 0);
              }

LABEL_106:
              result = 1;
              if (v6)
              {
                return result;
              }

              goto LABEL_107;
            }

            v92 = v28->identifier->name;
            if (!v92)
            {
              v92 = "invalid";
            }

            *buf = 136446722;
            v110 = "__nw_protocol_remove_input_handler";
            v111 = 2082;
            v112 = v92;
            v113 = 2048;
            v114 = v28;
            v83 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace";
            v90 = loga;
            v91 = v101;
LABEL_163:
            _os_log_impl(&dword_181A37000, v90, v91, v83, buf, 0x20u);
            goto LABEL_164;
          }

          v81 = __nwlog_obj();
          log = type;
          if (!os_log_type_enabled(v81, type))
          {
            goto LABEL_164;
          }

          v89 = v28->identifier->name;
          if (!v89)
          {
            v89 = "invalid";
          }

          *buf = 136446722;
          v110 = "__nw_protocol_remove_input_handler";
          v111 = 2082;
          v112 = v89;
          v113 = 2048;
          v114 = v28;
          v83 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded";
        }

        v90 = v81;
        v91 = log;
        goto LABEL_163;
      }

      v106 = a3;
      v93 = __nwlog_obj();
      *buf = 136446210;
      v110 = "__nw_protocol_remove_input_handler";
      LODWORD(v100) = 12;
      v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null protocol", buf, v100);
      type = OS_LOG_TYPE_ERROR;
      v107 = 0;
      if (__nwlog_fault(v94, &type, &v107))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v95 = __nwlog_obj();
          v96 = type;
          if (!os_log_type_enabled(v95, type))
          {
            goto LABEL_197;
          }

          *buf = 136446210;
          v110 = "__nw_protocol_remove_input_handler";
          v97 = "%{public}s called with null protocol";
LABEL_196:
          _os_log_impl(&dword_181A37000, v95, v96, v97, buf, 0xCu);
          goto LABEL_197;
        }

        if (v107 != 1)
        {
          v95 = __nwlog_obj();
          v96 = type;
          if (!os_log_type_enabled(v95, type))
          {
            goto LABEL_197;
          }

          *buf = 136446210;
          v110 = "__nw_protocol_remove_input_handler";
          v97 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_196;
        }

        v98 = __nw_create_backtrace_string();
        v95 = __nwlog_obj();
        v96 = type;
        v99 = os_log_type_enabled(v95, type);
        if (!v98)
        {
          if (!v99)
          {
            goto LABEL_197;
          }

          *buf = 136446210;
          v110 = "__nw_protocol_remove_input_handler";
          v97 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_196;
        }

        if (v99)
        {
          *buf = 136446466;
          v110 = "__nw_protocol_remove_input_handler";
          v111 = 2082;
          v112 = v98;
          _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v98);
      }

LABEL_197:
      if (v94)
      {
        free(v94);
      }

      if (v106)
      {
        goto LABEL_101;
      }

      goto LABEL_106;
    }

LABEL_60:
    result = 0;
    if (v6)
    {
      return result;
    }

LABEL_107:
    v60 = v3->handle;
    if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v61 = v3[1].callbacks;
      if (v61)
      {
        v62 = (v61 - 1);
        v3[1].callbacks = v62;
        if (!v62)
        {
          v63 = result;
          v64 = *v3[1].flow_id;
          if (v64)
          {
            *v3[1].flow_id = 0;
            v64[2](v64);
            _Block_release(v64);
          }

          if (v3[1].flow_id[8])
          {
            v65 = *v3[1].flow_id;
            if (v65)
            {
              _Block_release(v65);
            }
          }

          free(v3);
          return v63;
        }
      }
    }

    return result;
  }

  v66 = __nwlog_obj();
  *buf = 136446210;
  v110 = "nw_protocol_udp_remove_input_handler";
  v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v107 = 0;
  if (__nwlog_fault(v67, &type, &v107))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v68 = __nwlog_obj();
      v69 = type;
      if (os_log_type_enabled(v68, type))
      {
        *buf = 136446210;
        v110 = "nw_protocol_udp_remove_input_handler";
        v70 = "%{public}s called with null protocol";
LABEL_168:
        _os_log_impl(&dword_181A37000, v68, v69, v70, buf, 0xCu);
      }
    }

    else if (v107 == 1)
    {
      v76 = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v69 = type;
      v77 = os_log_type_enabled(v68, type);
      if (v76)
      {
        if (v77)
        {
          *buf = 136446466;
          v110 = "nw_protocol_udp_remove_input_handler";
          v111 = 2082;
          v112 = v76;
          _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v76);
        goto LABEL_169;
      }

      if (v77)
      {
        *buf = 136446210;
        v110 = "nw_protocol_udp_remove_input_handler";
        v70 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_168;
      }
    }

    else
    {
      v68 = __nwlog_obj();
      v69 = type;
      if (os_log_type_enabled(v68, type))
      {
        *buf = 136446210;
        v110 = "nw_protocol_udp_remove_input_handler";
        v70 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_168;
      }
    }
  }

LABEL_169:
  if (v67)
  {
    free(v67);
  }

  return 0;
}