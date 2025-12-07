uint64_t ___ZL38nw_protocol_webtransport_stream_createPK22nw_protocol_identifierP23nw_webtransport_sessionP11nw_endpointP13nw_parameters_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void ___ZL41nw_protocol_webtransport_stream_callbacksv_block_invoke()
{
  qword_1EA842118 = nw_protocol_default_replace_input_handler;
  qword_1EA842210 = nw_protocol_default_input_flush;
  qword_1EA842170 = nw_protocol_default_link_state;
  qword_1EA842188 = nw_protocol_default_get_local;
  qword_1EA842180 = nw_protocol_default_get_path;
  qword_1EA8421B0 = nw_protocol_default_updated_path;
  qword_1EA8421D0 = nw_protocol_default_get_output_local;
  qword_1EA8421D8 = nw_protocol_default_get_output_interface;
  qword_1EA842208 = nw_protocol_default_reset;
  qword_1EA8421B8 = nw_protocol_default_supports_external_data;
  qword_1EA8421E0 = nw_protocol_default_waiting_for_output;
  qword_1EA842198 = nw_protocol_default_register_notification;
  qword_1EA8421A0 = nw_protocol_default_unregister_notification;
  nw_protocol_webtransport_stream_callbacks(void)::protocol_callbacks = nw_protocol_webtransport_stream_add_input_handler;
  qword_1EA842178 = nw_protocol_webtransport_stream_get_parameters;
  qword_1EA842190 = nw_protocol_webtransport_stream_get_remote_endpoint;
  qword_1EA842128 = nw_protocol_webtransport_stream_disconnect;
  qword_1EA842138 = nw_protocol_webtransport_stream_disconnected;
  qword_1EA842140 = nw_protocol_webtransport_stream_error;
  qword_1EA842148 = nw_protocol_webtransport_stream_input_available;
  qword_1EA842150 = nw_protocol_webtransport_stream_output_available;
  qword_1EA8421A8 = nw_protocol_webtransport_stream_notify;
  qword_1EA8421E8 = nw_protocol_webtransport_stream_copy_info;
  qword_1EA8421F0 = nw_protocol_webtransport_stream_add_listen_handler;
  qword_1EA8421F8 = nw_protocol_webtransport_stream_remove_listen_handler;
  qword_1EA842200 = nw_protocol_webtransport_stream_get_message_properties;
  qword_1EA842110 = nw_protocol_webtransport_stream_remove_input_handler;
  qword_1EA842120 = nw_protocol_webtransport_stream_connect;
  qword_1EA842130 = nw_protocol_webtransport_stream_connected;
  qword_1EA842158 = nw_protocol_webtransport_stream_get_input_frames;
  qword_1EA842160 = nw_protocol_webtransport_stream_get_output_frames;
  qword_1EA842168 = nw_protocol_webtransport_stream_finalize_output_frames;
  qword_1EA8421C0 = nw_protocol_webtransport_stream_input_finished;
  qword_1EA8421C8 = nw_protocol_webtransport_stream_output_finished;
}

void nw_protocol_webtransport_stream_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_output_finished";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_stream_output_finished";
      v7 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v13 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v20 = "nw_protocol_webtransport_stream_output_finished";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v4)
        {
          return;
        }

LABEL_40:
        free(v4);
        return;
      }

      if (!v13)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_stream_output_finished";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_stream_output_finished";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_39;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = handle[11];
        if (v10)
        {
          v11 = *(v10 + 492);
        }

        else
        {
          v11 = -1;
        }

        v16 = handle[8];
        *buf = 136447234;
        v20 = "nw_protocol_webtransport_stream_output_finished";
        v21 = 2082;
        v22 = (handle + 24);
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v11;
        v27 = 2048;
        v28 = v16;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called on stream without transport mode set, ignoring", buf, 0x30u);
      }
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_webtransport_stream_output_finished";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_output_finished";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_38;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_output_finished";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_38;
  }

  v14 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v15 = os_log_type_enabled(v5, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_output_finished";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_38;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "nw_protocol_webtransport_stream_output_finished";
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v4)
  {
    goto LABEL_40;
  }
}

void nw_protocol_webtransport_stream_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_input_finished";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_stream_input_finished";
      v7 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v13 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v20 = "nw_protocol_webtransport_stream_input_finished";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v4)
        {
          return;
        }

LABEL_40:
        free(v4);
        return;
      }

      if (!v13)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_stream_input_finished";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_stream_input_finished";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_39;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = handle[11];
        if (v10)
        {
          v11 = *(v10 + 492);
        }

        else
        {
          v11 = -1;
        }

        v16 = handle[8];
        *buf = 136447234;
        v20 = "nw_protocol_webtransport_stream_input_finished";
        v21 = 2082;
        v22 = (handle + 24);
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v11;
        v27 = 2048;
        v28 = v16;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called on stream without transport mode set, ignoring", buf, 0x30u);
      }
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_webtransport_stream_input_finished";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_38;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_38;
  }

  v14 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v15 = os_log_type_enabled(v5, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_38;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "nw_protocol_webtransport_stream_input_finished";
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v4)
  {
    goto LABEL_40;
  }
}

uint64_t nw_protocol_webtransport_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
      v12 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v9)
        {
          return 0;
        }

LABEL_39:
        free(v9);
        return 0;
      }

      if (!v15)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_37:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_38;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v4 = handle[11];
        if (v4)
        {
          v5 = *(v4 + 492);
        }

        else
        {
          v5 = -1;
        }

        v6 = handle[8];
        *buf = 136447234;
        v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
        v22 = 2082;
        v23 = (handle + 24);
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v5;
        v28 = 2048;
        v29 = v6;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> finalize_output_frames called on stream with no transport mode", buf, 0x30u);
      }
    }

    return 0;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
    v12 = "%{public}s called with null webtransport_stream";
    goto LABEL_37;
  }

  if (v18 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
    v12 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
    v12 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_webtransport_stream_finalize_output_frames";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_39;
  }

  return 0;
}

uint64_t nw_protocol_webtransport_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_output_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v16 = "%{public}s called with null protocol";
    }

    else if (v25 == 1)
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
          v28 = "nw_protocol_webtransport_stream_get_output_frames";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_52:
        if (!v13)
        {
          return 0;
        }

LABEL_53:
        free(v13);
        return 0;
      }

      if (!v20)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v16 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_51;
  }

  handle = a1->handle;
  if (!handle)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_output_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_52;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v28 = "nw_protocol_webtransport_stream_get_output_frames";
        v16 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_51;
      }

      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!v21)
      {
        if (!v22)
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v28 = "nw_protocol_webtransport_stream_get_output_frames";
        v16 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_51;
      }

      if (v22)
      {
        *buf = 136446466;
        v28 = "nw_protocol_webtransport_stream_get_output_frames";
        v29 = 2082;
        v30 = v21;
        v23 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_36:
        _os_log_impl(&dword_181A37000, v14, v15, v23, buf, 0x16u);
      }

LABEL_37:
      free(v21);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_53;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_output_frames";
    v16 = "%{public}s called with null webtransport_stream";
LABEL_51:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_52;
  }

  if (!a6)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_output_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null return_array", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v16 = "%{public}s called with null return_array";
      goto LABEL_51;
    }

    if (v25 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v16 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_51;
    }

    v21 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v24 = os_log_type_enabled(v14, type);
    if (!v21)
    {
      if (!v24)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v16 = "%{public}s called with null return_array, no backtrace";
      goto LABEL_51;
    }

    if (v24)
    {
      *buf = 136446466;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v29 = 2082;
      v30 = v21;
      v23 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v8 = handle[11];
      if (v8)
      {
        v9 = *(v8 + 492);
      }

      else
      {
        v9 = -1;
      }

      v10 = handle[8];
      *buf = 136447234;
      v28 = "nw_protocol_webtransport_stream_get_output_frames";
      v29 = 2082;
      v30 = (handle + 24);
      v31 = 2080;
      v32 = " ";
      v33 = 1024;
      v34 = v9;
      v35 = 2048;
      v36 = v10;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, stream transport mode not yet set, returning 0 frames", buf, 0x30u);
    }
  }

  return 0;
}

uint64_t nw_protocol_webtransport_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_input_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v16 = "%{public}s called with null protocol";
    }

    else if (v25 == 1)
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
          v28 = "nw_protocol_webtransport_stream_get_input_frames";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_52:
        if (!v13)
        {
          return 0;
        }

LABEL_53:
        free(v13);
        return 0;
      }

      if (!v20)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v16 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_51;
  }

  handle = a1->handle;
  if (!handle)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_input_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_52;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v28 = "nw_protocol_webtransport_stream_get_input_frames";
        v16 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_51;
      }

      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!v21)
      {
        if (!v22)
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v28 = "nw_protocol_webtransport_stream_get_input_frames";
        v16 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_51;
      }

      if (v22)
      {
        *buf = 136446466;
        v28 = "nw_protocol_webtransport_stream_get_input_frames";
        v29 = 2082;
        v30 = v21;
        v23 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_36:
        _os_log_impl(&dword_181A37000, v14, v15, v23, buf, 0x16u);
      }

LABEL_37:
      free(v21);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_53;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_input_frames";
    v16 = "%{public}s called with null webtransport_stream";
LABEL_51:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_52;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_stream_get_input_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v13, &type, &v25))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v16 = "%{public}s called with null input_protocol";
      goto LABEL_51;
    }

    if (v25 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v16 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_51;
    }

    v21 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v24 = os_log_type_enabled(v14, type);
    if (!v21)
    {
      if (!v24)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v16 = "%{public}s called with null input_protocol, no backtrace";
      goto LABEL_51;
    }

    if (v24)
    {
      *buf = 136446466;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v29 = 2082;
      v30 = v21;
      v23 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v8 = handle[11];
      if (v8)
      {
        v9 = *(v8 + 492);
      }

      else
      {
        v9 = -1;
      }

      v10 = handle[8];
      *buf = 136447234;
      v28 = "nw_protocol_webtransport_stream_get_input_frames";
      v29 = 2082;
      v30 = (handle + 24);
      v31 = 2080;
      v32 = " ";
      v33 = 1024;
      v34 = v9;
      v35 = 2048;
      v36 = v10;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called, stream transport mode not yet set, returning 0 frames", buf, 0x30u);
    }
  }

  return 0;
}

void nw_protocol_webtransport_stream_connected(nw_protocol *a1, nw_protocol *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_connected";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
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
      v24 = "nw_protocol_webtransport_stream_connected";
      v10 = "%{public}s called with null protocol";
      goto LABEL_44;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_connected";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v13 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_connected";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_44;
    }

    if (v13)
    {
      *buf = 136446466;
      v24 = "nw_protocol_webtransport_stream_connected";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_45:
    if (!v7)
    {
      return;
    }

    goto LABEL_46;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_connected";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
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
      v24 = "nw_protocol_webtransport_stream_connected";
      v10 = "%{public}s called with null webtransport_stream";
      goto LABEL_44;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_connected";
      v10 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_44;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (v14)
    {
      if (v15)
      {
        *buf = 136446466;
        v24 = "nw_protocol_webtransport_stream_connected";
        v25 = 2082;
        v26 = v14;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
      if (!v7)
      {
        return;
      }

LABEL_46:
      free(v7);
      return;
    }

    if (v15)
    {
      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_connected";
      v10 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_44:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_45;
    }

    goto LABEL_45;
  }

  if (handle[11])
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v3 = __nwlog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = handle[11];
        if (v4)
        {
          v5 = *(v4 + 492);
        }

        else
        {
          v5 = -1;
        }

        v18 = handle[8];
        *buf = 136447234;
        v24 = "nw_protocol_webtransport_stream_connected";
        v25 = 2082;
        v26 = (handle + 24);
        v27 = 2080;
        v28 = " ";
        v29 = 1024;
        v30 = v5;
        v31 = 2048;
        v32 = v18;
        v19 = "%{public}s %{public}s%s<i%u:s%llu> Forwarding connect from lower layer, stream not reconfigured yet";
LABEL_49:
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, v19, buf, 0x30u);
      }
    }
  }

  else if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v16 = handle[11];
      if (v16)
      {
        v17 = *(v16 + 492);
      }

      else
      {
        v17 = -1;
      }

      v20 = handle[8];
      *buf = 136447234;
      v24 = "nw_protocol_webtransport_stream_connected";
      v25 = 2082;
      v26 = (handle + 24);
      v27 = 2080;
      v28 = " ";
      v29 = 1024;
      v30 = v17;
      v31 = 2048;
      v32 = v20;
      v19 = "%{public}s %{public}s%s<i%u:s%llu> Stream is not fully setup, ignoring connected event";
      goto LABEL_49;
    }
  }
}

uint64_t nw_protocol_webtransport_stream_connect(nw_protocol *a1, nw_protocol *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_webtransport_stream_connect";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_80;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v39 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v42 = "nw_protocol_webtransport_stream_connect";
          v17 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v25 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v42 = "nw_protocol_webtransport_stream_connect";
          v17 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      if (!v25)
      {
        goto LABEL_60;
      }

      *buf = 136446466;
      v42 = "nw_protocol_webtransport_stream_connect";
      v43 = 2082;
      v44 = backtrace_string;
      v26 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_59;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_80;
    }

    *buf = 136446210;
    v42 = "nw_protocol_webtransport_stream_connect";
    v17 = "%{public}s called with null protocol";
LABEL_79:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_80;
  }

  handle = a1->handle;
  if (!handle)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_webtransport_stream_connect";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_80;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v39 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v42 = "nw_protocol_webtransport_stream_connect";
          v17 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v27 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v42 = "nw_protocol_webtransport_stream_connect";
          v17 = "%{public}s called with null webtransport_stream, no backtrace";
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      if (!v27)
      {
        goto LABEL_60;
      }

      *buf = 136446466;
      v42 = "nw_protocol_webtransport_stream_connect";
      v43 = 2082;
      v44 = backtrace_string;
      v26 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_59;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_80;
    }

    *buf = 136446210;
    v42 = "nw_protocol_webtransport_stream_connect";
    v17 = "%{public}s called with null webtransport_stream";
    goto LABEL_79;
  }

  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v20 = __nwlog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(handle + 11);
      if (v21)
      {
        v22 = *(v21 + 492);
      }

      else
      {
        v22 = -1;
      }

      v30 = *(handle + 8);
      *buf = 136447234;
      v42 = "nw_protocol_webtransport_stream_connect";
      v43 = 2082;
      v44 = handle + 192;
      v45 = 2080;
      v46 = " ";
      v47 = 1024;
      v48 = v22;
      v49 = 2048;
      v50 = v30;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  v4 = *(handle + 4);
  if (!v4)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_webtransport_stream_connect";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null output_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v42 = "nw_protocol_webtransport_stream_connect";
      v17 = "%{public}s called with null output_protocol";
      goto LABEL_79;
    }

    if (v39 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_webtransport_stream_connect";
        v17 = "%{public}s called with null output_protocol, backtrace limit exceeded";
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v28 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v42 = "nw_protocol_webtransport_stream_connect";
        v17 = "%{public}s called with null output_protocol, no backtrace";
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    if (!v28)
    {
      goto LABEL_60;
    }

    *buf = 136446466;
    v42 = "nw_protocol_webtransport_stream_connect";
    v43 = 2082;
    v44 = backtrace_string;
    v26 = "%{public}s called with null output_protocol, dumping backtrace:%{public}s";
LABEL_59:
    _os_log_impl(&dword_181A37000, v15, v16, v26, buf, 0x16u);
    goto LABEL_60;
  }

  v5 = *(handle + 11);
  if (!v5)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_webtransport_stream_connect";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_webtransport_stream_connect";
        v17 = "%{public}s called with null webtransport_session";
        goto LABEL_79;
      }

LABEL_80:
      if (v14)
      {
        free(v14);
      }

      return 0;
    }

    if (v39 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_webtransport_stream_connect";
        v17 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v29 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v42 = "nw_protocol_webtransport_stream_connect";
        v17 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    if (v29)
    {
      *buf = 136446466;
      v42 = "nw_protocol_webtransport_stream_connect";
      v43 = 2082;
      v44 = backtrace_string;
      v26 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_59;
    }

LABEL_60:
    free(backtrace_string);
    goto LABEL_80;
  }

  if (*(v5 + 32))
  {
    goto LABEL_20;
  }

  nw_protocol_replace_input_handler(*(handle + 4), a1, *(handle + 11));
  if ((*(v5 + 580) & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = v4[2];
  if (nw_protocol_http_messaging_identifier::onceToken != -1)
  {
    v31 = v4[2];
    dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    v6 = v31;
  }

  if (!nw_protocols_are_equal(v6, &nw_protocol_http_messaging_identifier::protocol_identifier))
  {
    v7 = v4[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v32 = v4[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v7 = v32;
    }

    if (!nw_protocols_are_equal(v7, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_20;
    }
  }

  v8 = *(v5 + 368);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = _nw_parameters_copy_protocol_options_with_level();

  if (v10)
  {
    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(handle + 11);
        if (v34)
        {
          v35 = *(v34 + 492);
        }

        else
        {
          v35 = -1;
        }

        v38 = *(handle + 8);
        *buf = 136447490;
        v42 = "nw_protocol_webtransport_stream_connect";
        v43 = 2082;
        v44 = handle + 192;
        v45 = 2080;
        v46 = " ";
        v47 = 1024;
        v48 = v35;
        v49 = 2048;
        v50 = v38;
        v51 = 2048;
        v52 = v10;
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Marking first server stream as bidirectional on options %p", buf, 0x3Au);
      }
    }

    nw_http3_set_stream_mode(v10, 2);
    os_release(v10);
LABEL_20:
    nw_protocol_set_output_handler(v5, v4);
    return nw_protocol_connect(v5, a1);
  }

  if ((*(v5 + 580) & 2) == 0 && gLogDatapath == 1)
  {
    v36 = __nwlog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = *(v5 + 492);
      *buf = 136446978;
      v42 = "nw_protocol_webtransport_stream_connect";
      v43 = 2082;
      v44 = (v5 + 496);
      v45 = 2080;
      v46 = " ";
      v47 = 1024;
      v48 = v37;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
    }
  }

  v12 = *(handle + 11);
  nw_protocol_error(*(handle + 6), handle);
  nw_protocol_disconnect(handle, v12);
  return 0;
}

uint64_t nw_protocol_webtransport_stream_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v202 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v135 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
    v136 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v135, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v136, type, v188))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v137 = __nwlog_obj();
      v138 = type[0];
      if (!os_log_type_enabled(v137, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null protocol";
      goto LABEL_279;
    }

    if (v188[0] != OS_LOG_TYPE_INFO)
    {
      v137 = __nwlog_obj();
      v138 = type[0];
      if (!os_log_type_enabled(v137, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v137 = __nwlog_obj();
    v138 = type[0];
    v146 = os_log_type_enabled(v137, type[0]);
    if (!backtrace_string)
    {
      if (!v146)
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_279;
    }

    if (!v146)
    {
      goto LABEL_253;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v147 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_252:
    _os_log_impl(&dword_181A37000, v137, v138, v147, buf, 0x16u);
    goto LABEL_253;
  }

  handle = a1->handle;
  if (!handle)
  {
    v140 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
    v136 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v136, type, v188))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v137 = __nwlog_obj();
      v138 = type[0];
      if (!os_log_type_enabled(v137, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null webtransport_stream";
      goto LABEL_279;
    }

    if (v188[0] != OS_LOG_TYPE_INFO)
    {
      v137 = __nwlog_obj();
      v138 = type[0];
      if (!os_log_type_enabled(v137, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v137 = __nwlog_obj();
    v138 = type[0];
    v148 = os_log_type_enabled(v137, type[0]);
    if (!backtrace_string)
    {
      if (!v148)
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_279;
    }

    if (!v148)
    {
      goto LABEL_253;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v147 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_252;
  }

  if (!a2)
  {
    v141 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
    v136 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v136, type, v188))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v137 = __nwlog_obj();
      v138 = type[0];
      if (!os_log_type_enabled(v137, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null input_protocol";
      goto LABEL_279;
    }

    if (v188[0] != OS_LOG_TYPE_INFO)
    {
      v137 = __nwlog_obj();
      v138 = type[0];
      if (!os_log_type_enabled(v137, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      v139 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v137 = __nwlog_obj();
    v138 = type[0];
    v149 = os_log_type_enabled(v137, type[0]);
    if (backtrace_string)
    {
      if (v149)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v147 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_252;
      }

LABEL_253:
      free(backtrace_string);
      goto LABEL_280;
    }

    if (!v149)
    {
      goto LABEL_280;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
    v139 = "%{public}s called with null input_protocol, no backtrace";
LABEL_279:
    _os_log_impl(&dword_181A37000, v137, v138, v139, buf, 0xCu);
LABEL_280:
    if (v136)
    {
      free(v136);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v142 = __nwlog_obj();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
    {
      v143 = handle[11];
      if (v143)
      {
        v144 = *(v143 + 492);
      }

      else
      {
        v144 = -1;
      }

      v155 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v144;
      *&v197[6] = 2048;
      *&v197[8] = v155;
      _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v6 = handle[11];
      if (v6)
      {
        v7 = *(v6 + 492);
      }

      else
      {
        v7 = -1;
      }

      v8 = handle[8];
      default_input_handler = a1->default_input_handler;
      *buf = 136448002;
      *&buf[4] = "nw_protocol_webtransport_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v7;
      *&v197[6] = 2048;
      *&v197[8] = v8;
      *&v197[16] = 2048;
      *&v197[18] = a1;
      v198 = 2048;
      v199 = default_input_handler;
      v200 = 2048;
      v201 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:s%llu> protocol %p, default_input_handler %p, input protocol %p", buf, 0x4Eu);
    }
  }

  v10 = handle[11];
  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  if (handle == *(v10 + 440))
  {
    v12 = handle[4];
    if (v12)
    {
      nw_protocol_remove_input_handler(v12, handle);
    }
  }

  nw_protocol_set_output_handler(a1, 0);
  v176 = handle[11];
  if (!v176)
  {
    v150 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v150, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v151, type, v188))
    {
      goto LABEL_294;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v152 = __nwlog_obj();
      v153 = type[0];
      if (!os_log_type_enabled(v152, type[0]))
      {
        goto LABEL_294;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v154 = "%{public}s called with null webtransport_session";
    }

    else if (v188[0] == OS_LOG_TYPE_INFO)
    {
      v156 = __nw_create_backtrace_string();
      v152 = __nwlog_obj();
      v153 = type[0];
      v157 = os_log_type_enabled(v152, type[0]);
      if (v156)
      {
        if (v157)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v156;
          _os_log_impl(&dword_181A37000, v152, v153, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v156);
        goto LABEL_294;
      }

      if (!v157)
      {
LABEL_294:
        if (v151)
        {
          free(v151);
        }

        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v154 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v152 = __nwlog_obj();
      v153 = type[0];
      if (!os_log_type_enabled(v152, type[0]))
      {
        goto LABEL_294;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v154 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v152, v153, v154, buf, 0xCu);
    goto LABEL_294;
  }

  if ((*(handle + 276) & 0x20) != 0)
  {
    if ((*(v176 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v158 = __nwlog_obj();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
      {
        v159 = *(v176 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v159;
        *&v197[6] = 2048;
        *&v197[8] = handle;
        _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", buf, 0x30u);
      }
    }

    if ((*(handle + 276) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_session_remove_pending_stream";
      *&buf[12] = 2048;
      *&buf[14] = handle;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
      type[0] = OS_LOG_TYPE_ERROR;
      v188[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v17, type, v188))
      {
        goto LABEL_68;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_68;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v20 = "%{public}s stream %p not in pending list, cannot remove";
      }

      else if (v188[0] == OS_LOG_TYPE_INFO)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (v31)
        {
          if (v32)
          {
            *buf = 136446722;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            *&buf[22] = 2082;
            v196 = v31;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v31);
          goto LABEL_68;
        }

        if (!v32)
        {
LABEL_68:
          if (v17)
          {
            free(v17);
          }

          goto LABEL_80;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v20 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_68;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v20 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0x16u);
      goto LABEL_68;
    }

    v21 = handle[14];
    v22 = handle[15];
    v23 = (v176 + 344);
    if (v21)
    {
      v23 = (v21 + 120);
    }

    *v23 = v22;
    *v22 = v21;
    handle[14] = 0;
    handle[15] = 0;
    v24 = *(v176 + 488);
    *(v176 + 488) = v24 - 1;
    if (v24)
    {
LABEL_78:
      v42 = *(handle + 276);
      *(handle + 276) = v42 & 0xDF;
      if ((v42 & 0x10) == 0 && gLogDatapath == 1)
      {
        v160 = __nwlog_obj();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
        {
          v161 = handle[11];
          if (v161)
          {
            v162 = *(v161 + 492);
          }

          else
          {
            v162 = -1;
          }

          v167 = handle[8];
          v168 = *(v176 + 488);
          *buf = 136447746;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = handle + 24;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v162;
          *&v197[6] = 2048;
          *&v197[8] = v167;
          *&v197[16] = 2048;
          *&v197[18] = handle;
          v198 = 1024;
          LODWORD(v199) = v168;
          v16 = "%{public}s %{public}s%s<i%u:s%llu> removed pending stream (%p), now have %u pending streams";
          v34 = v160;
          v35 = OS_LOG_TYPE_DEBUG;
          v36 = 64;
          goto LABEL_57;
        }
      }

      goto LABEL_80;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = *(v176 + 488);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_pending_stream";
    *&buf[12] = 2082;
    *&buf[14] = "webtransport_session->pending_stream_count";
    *&buf[22] = 2048;
    v196 = 1;
    *v197 = 2048;
    *&v197[2] = v25;
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v188[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v26, type, v188))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type[0];
        if (os_log_type_enabled(v27, type[0]))
        {
          v29 = *(v176 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v196 = 1;
          *v197 = 2048;
          *&v197[2] = v29;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_74:
          _os_log_impl(&dword_181A37000, v27, v28, v30, buf, 0x2Au);
        }
      }

      else if (v188[0] == OS_LOG_TYPE_INFO)
      {
        v37 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type[0];
        v38 = os_log_type_enabled(v27, type[0]);
        if (v37)
        {
          if (v38)
          {
            v39 = *(v176 + 488);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "webtransport_session->pending_stream_count";
            *&buf[22] = 2048;
            v196 = 1;
            *v197 = 2048;
            *&v197[2] = v39;
            *&v197[10] = 2082;
            *&v197[12] = v37;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v37);
          goto LABEL_75;
        }

        if (v38)
        {
          v41 = *(v176 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v196 = 1;
          *v197 = 2048;
          *&v197[2] = v41;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_74;
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v28 = type[0];
        if (os_log_type_enabled(v27, type[0]))
        {
          v40 = *(v176 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v196 = 1;
          *v197 = 2048;
          *&v197[2] = v40;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_74;
        }
      }
    }

LABEL_75:
    if (v26)
    {
      free(v26);
    }

    *(v176 + 488) = 0;
    goto LABEL_78;
  }

  if (*(v176 + 440) == handle)
  {
    if ((*(v176 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v163 = __nwlog_obj();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        v164 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v164;
        _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing placeholder stream for session", buf, 0x26u);
      }
    }

    *(v176 + 440) = 0;
  }

  else if (*(v176 + 448) == handle)
  {
    if ((*(v176 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v165 = __nwlog_obj();
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
      {
        v166 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v166;
        _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing datagram stream for session", buf, 0x26u);
      }
    }

    *(v176 + 448) = 0;
  }

  else
  {
    *type = handle[8];
    node = nw_hash_table_get_node(*(v176 + 192), type, 8);
    if (node)
    {
      if ((nw_hash_table_remove_node(*(v176 + 192), node) & 1) == 0 && (*(v176 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v15 = *(v176 + 492);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v176 + 496;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v15;
          *&v197[6] = 2048;
          *&v197[8] = *type;
          v16 = "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table";
LABEL_56:
          v34 = v14;
          v35 = OS_LOG_TYPE_ERROR;
          v36 = 48;
LABEL_57:
          _os_log_impl(&dword_181A37000, v34, v35, v16, buf, v36);
        }
      }
    }

    else if ((*(v176 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v33 = *(v176 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v33;
        *&v197[6] = 2048;
        *&v197[8] = *type;
        v16 = "%{public}s %{public}s%s<i%u> called remove_input_handler with stream id %llu, but no stream found";
        goto LABEL_56;
      }
    }
  }

LABEL_80:
  handle[11] = 0;
  v43 = v176;
  if (*(v176 + 48) != handle)
  {
    goto LABEL_87;
  }

  if (*(v176 + 476))
  {
    v44 = *(v176 + 448);
    if (v44)
    {
LABEL_83:
      nw_protocol_set_input_handler(v43, v44);
      if ((*(v43 + 580) & 2) != 0)
      {
        goto LABEL_87;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_87;
      }

      v46 = *(v43 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v43 + 496;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v46;
      v47 = "%{public}s %{public}s%s<i%u> not destroying, still have datagram stream";
      goto LABEL_86;
    }
  }

  else
  {
    if ((*(v176 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v55 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v56 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v56;
        _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
      }
    }

    v43 = v176;
    v57 = *(v176 + 464);
    v58 = *(v176 + 416);
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 0x40000000;
    v177[2] = ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke;
    v177[3] = &unk_1E6A31A10;
    v177[4] = v57;
    nw_queue_context_async(v58, v177);
    v44 = *(v176 + 448);
    if (v44)
    {
      goto LABEL_83;
    }
  }

  v59 = *(v43 + 192);
  if (v59 && v59[12]._os_unfair_lock_opaque)
  {
    some_node = nw_hash_table_get_some_node(v59);
    object = nw_hash_node_get_object(some_node);
    nw_protocol_set_input_handler(v176, object);
    if ((*(v176 + 580) & 2) != 0)
    {
      goto LABEL_87;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_87;
    }

    v62 = *(v176 + 492);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    *&buf[12] = 2082;
    *&buf[14] = v176 + 496;
    *&buf[22] = 2080;
    v196 = " ";
    *v197 = 1024;
    *&v197[2] = v62;
    v47 = "%{public}s %{public}s%s<i%u> not destroying, still have active streams";
    goto LABEL_86;
  }

  if (!*(v176 + 488))
  {
    v73 = *(v176 + 440);
    v74 = v176;
    if (v73)
    {
      nw_protocol_set_input_handler(v176, v73);
      if ((*(v176 + 580) & 2) != 0)
      {
        goto LABEL_87;
      }

      v45 = __nwlog_obj();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_87;
      }

      v75 = *(v176 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v176 + 496;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v75;
      v47 = "%{public}s %{public}s%s<i%u> not destroying, still have placeholder stream";
      goto LABEL_86;
    }

    nw_protocol_set_input_handler(v176, 0);
    if ((*(v176 + 580) & 2) == 0)
    {
      v76 = __nwlog_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = *(v176 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v176 + 496;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v77;
        _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, destroying session", buf, 0x26u);
      }
    }

    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v176 + 368, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v176 + 384, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v176 + 400, buf);
    nw_http_capsule_framer_cleanup((v176 + 96));
    v78 = *(v176 + 424);
    if (v78)
    {
      (*(*v78 + 8))(v78, v176, 0);
    }

    if ((*(v176 + 580) & 4) != 0)
    {
      if ((nw_protocol_remove_listen_handler(*(v176 + 432), v176 + 64) & 1) == 0 && (*(v176 + 580) & 2) == 0)
      {
        v79 = __nwlog_obj();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v80 = *(v176 + 492);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v176 + 496;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v80;
          _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to remove listen handler", buf, 0x26u);
        }
      }

      *(v176 + 432) = 0;
    }

    v81 = *(v176 + 32);
    if (v81)
    {
      nw_protocol_remove_input_handler(v81, v176);
      if (*(v176 + 476) != 5)
      {
        nw_protocol_remove_instance(v176);
      }
    }

    v184 = 0;
    v185 = &v184;
    v186 = 0x2000000000;
    v187 = 0;
    v82 = *(v176 + 192);
    if (v82)
    {
      *type = MEMORY[0x1E69E9820];
      v179 = 0x40000000;
      v180 = ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke;
      v181 = &unk_1E6A31A38;
      v182 = &v184;
      v183 = v176;
      nw_hash_table_apply(v82, type);
      v83 = *(v176 + 192);
      if (v83)
      {
        _nw_hash_table_release(v83);
        *(v176 + 192) = 0;
      }
    }

    v84 = *(v176 + 336);
    v185[3] = v84;
    if (!v84)
    {
      (*(*(v176 + 464) + 16))();
      v134 = *(v176 + 464);
      if (v134)
      {
        _Block_release(v134);
        *(v176 + 464) = 0;
      }

      std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(v176);
      free(v176);
      _Block_object_dispose(&v184, 8);
      goto LABEL_87;
    }

    v85 = &qword_1ED411000;
    while (1)
    {
      v84 = *(v84 + 112);
      if ((*(v74 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v86 = v85[275];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v87 = *(v74 + 492);
          v88 = v185[3];
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v176 + 496;
          *&buf[22] = 2080;
          v196 = " ";
          *v197 = 1024;
          *&v197[2] = v87;
          *&v197[6] = 2048;
          *&v197[8] = v88;
          _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v89 = v85[275];
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy";
      LODWORD(v175) = 12;
      v90 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s should not have streams left when destroying", buf, v175);
      v188[0] = OS_LOG_TYPE_ERROR;
      v194 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v90, v188, &v194))
      {
        if (v188[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v91 = gLogObj;
          v92 = v188[0];
          if (!os_log_type_enabled(gLogObj, v188[0]))
          {
            goto LABEL_173;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v93 = v91;
          v94 = v92;
          v95 = "%{public}s should not have streams left when destroying";
LABEL_172:
          _os_log_impl(&dword_181A37000, v93, v94, v95, buf, 0xCu);
          goto LABEL_173;
        }

        if (v194 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v100 = gLogObj;
          v101 = v188[0];
          if (!os_log_type_enabled(gLogObj, v188[0]))
          {
            goto LABEL_173;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v93 = v100;
          v94 = v101;
          v95 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
          goto LABEL_172;
        }

        v96 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v97 = gLogObj;
        v98 = v188[0];
        v99 = os_log_type_enabled(gLogObj, v188[0]);
        if (!v96)
        {
          if (!v99)
          {
            goto LABEL_173;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v93 = v97;
          v94 = v98;
          v95 = "%{public}s should not have streams left when destroying, no backtrace";
          goto LABEL_172;
        }

        if (v99)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v96;
          _os_log_impl(&dword_181A37000, v97, v98, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v96);
      }

LABEL_173:
      if (v90)
      {
        free(v90);
      }

      v102 = *(v84 + 112);
      v103 = *(v84 + 120);
      v104 = (v102 + 120);
      if (!v102)
      {
        v104 = (v176 + 344);
      }

      *v104 = v103;
      *v103 = v102;
      *(v84 + 112) = 0;
      *(v84 + 120) = 0;
      v105 = v185[3];
      v85 = &qword_1ED411000;
      if (v105)
      {
        if ((*(v105 + 276) & 0x10) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v106 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v107 = *(v105 + 88);
            if (v107)
            {
              v108 = *(v107 + 492);
            }

            else
            {
              v108 = -1;
            }

            v109 = *(v105 + 64);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_stream_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v105 + 192;
            *&buf[22] = 2080;
            v196 = " ";
            *v197 = 1024;
            *&v197[2] = v108;
            *&v197[6] = 2048;
            *&v197[8] = v109;
            *&v197[16] = 2048;
            *&v197[18] = v105;
            _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
          }
        }

        if (*(v105 + 72))
        {
          if ((*(v105 + 276) & 0x10) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v110 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v111 = *(v105 + 88);
              if (v111)
              {
                v112 = *(v111 + 492);
              }

              else
              {
                v112 = -1;
              }

              v113 = *(v105 + 64);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v105 + 192;
              *&buf[22] = 2080;
              v196 = " ";
              *v197 = 1024;
              *&v197[2] = v112;
              *&v197[6] = 2048;
              *&v197[8] = v113;
              _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
            }
          }
        }

        *v188 = MEMORY[0x1E69E9820];
        v189 = 0x40000000;
        v190 = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
        v191 = &__block_descriptor_tmp_39_36819;
        v192 = v105;
        v114 = *(v105 + 72);
        do
        {
          if (!v114)
          {
            break;
          }

          v115 = *(v114 + 32);
          v116 = (v190)(v188);
          v114 = v115;
        }

        while ((v116 & 1) != 0);
        (*(*(v105 + 176) + 16))();
        v117 = *(v105 + 176);
        if (v117)
        {
          _Block_release(v117);
          *(v105 + 176) = 0;
        }

        if (*(v105 + 168))
        {
          v118 = *(v105 + 160);
          if (v118)
          {
            os_release(v118);
          }
        }

        *(v105 + 160) = 0;
        if (*(v105 + 152))
        {
          v119 = *(v105 + 144);
          if (v119)
          {
            os_release(v119);
          }
        }

        *(v105 + 144) = 0;
        if (*(v105 + 136))
        {
          v120 = *(v105 + 128);
          if (v120)
          {
            os_release(v120);
          }
        }

        free(v105);
        goto LABEL_155;
      }

      v121 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_stream_destroy";
      LODWORD(v175) = 12;
      v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s called with null webtransport_stream", buf, v175);
      v194 = OS_LOG_TYPE_ERROR;
      v193 = 0;
      if (__nwlog_fault(v122, &v194, &v193))
      {
        if (v194 == OS_LOG_TYPE_FAULT)
        {
          v123 = __nwlog_obj();
          v124 = v194;
          if (os_log_type_enabled(v123, v194))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v125 = v123;
            v126 = v124;
            v127 = "%{public}s called with null webtransport_stream";
LABEL_218:
            _os_log_impl(&dword_181A37000, v125, v126, v127, buf, 0xCu);
          }
        }

        else if (v193 == 1)
        {
          v128 = __nw_create_backtrace_string();
          v129 = __nwlog_obj();
          v130 = v194;
          v131 = os_log_type_enabled(v129, v194);
          if (v128)
          {
            if (v131)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v128;
              _os_log_impl(&dword_181A37000, v129, v130, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v128);
            goto LABEL_219;
          }

          if (v131)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v125 = v129;
            v126 = v130;
            v127 = "%{public}s called with null webtransport_stream, no backtrace";
            goto LABEL_218;
          }
        }

        else
        {
          v132 = __nwlog_obj();
          v133 = v194;
          if (os_log_type_enabled(v132, v194))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v125 = v132;
            v126 = v133;
            v127 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
            goto LABEL_218;
          }
        }
      }

LABEL_219:
      if (v122)
      {
        free(v122);
      }

      v85 = &qword_1ED411000;
LABEL_155:
      v185[3] = v84;
      v74 = v176;
    }
  }

  v71 = *(v176 + 336);
  if (v71)
  {
    if ((*(v71 + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v169 = *(v176 + 336);
      v170 = __nwlog_obj();
      v171 = os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG);
      v71 = v169;
      if (v171)
      {
        v172 = *(v169 + 88);
        if (v172)
        {
          v173 = *(v172 + 492);
        }

        else
        {
          v173 = -1;
        }

        v174 = *(v169 + 64);
        *buf = 136447490;
        *&buf[4] = "nw_webtransport_session_get_next_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v169 + 192;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v173;
        *&v197[6] = 2048;
        *&v197[8] = v174;
        *&v197[16] = 2048;
        *&v197[18] = v169;
        _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> found stream (%p)", buf, 0x3Au);
        v71 = v169;
      }
    }
  }

  nw_protocol_set_input_handler(v176, v71);
  if ((*(v176 + 580) & 2) != 0)
  {
    goto LABEL_87;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v45 = gLogObj;
  if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
  {
    goto LABEL_87;
  }

  v72 = *(v176 + 492);
  *buf = 136446978;
  *&buf[4] = "nw_webtransport_session_remove_stream";
  *&buf[12] = 2082;
  *&buf[14] = v176 + 496;
  *&buf[22] = 2080;
  v196 = " ";
  *v197 = 1024;
  *&v197[2] = v72;
  v47 = "%{public}s %{public}s%s<i%u> not destroying, still have pending streams";
LABEL_86:
  _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_INFO, v47, buf, 0x26u);
LABEL_87:
  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v49 = handle[11];
      if (v49)
      {
        v50 = *(v49 + 492);
      }

      else
      {
        v50 = -1;
      }

      v51 = handle[8];
      *buf = 136447490;
      *&buf[4] = "nw_webtransport_stream_destroy";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v196 = " ";
      *v197 = 1024;
      *&v197[2] = v50;
      *&v197[6] = 2048;
      *&v197[8] = v51;
      *&v197[16] = 2048;
      *&v197[18] = handle;
      _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
    }
  }

  if (handle[9])
  {
    if ((*(handle + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v52 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v53 = handle[11];
        if (v53)
        {
          v54 = *(v53 + 492);
        }

        else
        {
          v54 = -1;
        }

        v63 = handle[8];
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_stream_destroy";
        *&buf[12] = 2082;
        *&buf[14] = handle + 24;
        *&buf[22] = 2080;
        v196 = " ";
        *v197 = 1024;
        *&v197[2] = v54;
        *&v197[6] = 2048;
        *&v197[8] = v63;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
      }
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
  v196 = &__block_descriptor_tmp_39_36819;
  *v197 = handle;
  v64 = handle[9];
  do
  {
    if (!v64)
    {
      break;
    }

    v65 = *(v64 + 32);
    v66 = (*&buf[16])(buf);
    v64 = v65;
  }

  while ((v66 & 1) != 0);
  (*(handle[22] + 16))();
  v67 = handle[22];
  if (v67)
  {
    _Block_release(v67);
    handle[22] = 0;
  }

  if (handle[21])
  {
    v68 = handle[20];
    if (v68)
    {
      os_release(v68);
    }
  }

  handle[20] = 0;
  if (handle[19])
  {
    v69 = handle[18];
    if (v69)
    {
      os_release(v69);
    }
  }

  handle[18] = 0;
  if (handle[17])
  {
    v70 = handle[16];
    if (v70)
    {
      os_release(v70);
    }
  }

  free(handle);
  return 1;
}

BOOL nw_protocol_webtransport_accept(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_webtransport_accept";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
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
      v18 = "nw_protocol_webtransport_accept";
      v9 = "%{public}s called with null protocol";
      goto LABEL_37;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_accept";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_accept";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_protocol_webtransport_accept";
      v19 = 2082;
      v20 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_38:
    if (!v6)
    {
      return 0;
    }

LABEL_39:
    free(v6);
    return 0;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_webtransport_accept";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
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
      v18 = "nw_protocol_webtransport_accept";
      v9 = "%{public}s called with null webtransport_session";
      goto LABEL_37;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_accept";
      v9 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_37;
    }

    v13 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (v13)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "nw_protocol_webtransport_accept";
        v19 = 2082;
        v20 = v13;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v13);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_39;
    }

    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_protocol_webtransport_accept";
      v9 = "%{public}s called with null webtransport_session, no backtrace";
LABEL_37:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (*(v1 + 476) != 5)
  {
    return 1;
  }

  if ((*(v1 + 580) & 2) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v4 = *(v1 + 492);
    *buf = 136446978;
    v18 = "nw_protocol_webtransport_accept";
    v19 = 2082;
    v20 = (v1 + 496);
    v21 = 2080;
    v22 = " ";
    v23 = 1024;
    v24 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> cannot accept new streams after the session was closed", buf, 0x26u);
    return 0;
  }

  return result;
}

uint64_t nw_protocol_webtransport_get_listen_protocol(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return v1 + 64;
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_get_listen_protocol";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_get_listen_protocol";
        v7 = "%{public}s called with null webtransport_session";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_get_listen_protocol";
        v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_get_listen_protocol";
        v7 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_get_listen_protocol";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_webtransport_get_listen_protocol";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_get_listen_protocol";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_get_listen_protocol";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_get_listen_protocol";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v5, v6, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_get_listen_protocol";
    v7 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_32:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t tcp_listener_create(NSObject *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal(a1);
  if (!a1)
  {
    v28 = __nwlog_obj();
    *__str = 136446210;
    v35 = "tcp_listener_create";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null queue", __str, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v17, &type, &v32))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_35;
      }

      *__str = 136446210;
      v35 = "tcp_listener_create";
      v20 = "%{public}s called with null queue";
      goto LABEL_33;
    }

    if (v32 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_35;
      }

      *__str = 136446210;
      v35 = "tcp_listener_create";
      v20 = "%{public}s called with null queue, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v30 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v30)
      {
        *__str = 136446466;
        v35 = "tcp_listener_create";
        v36 = 2082;
        v37 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null queue, dumping backtrace:%{public}s", __str, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_35;
    }

    if (v30)
    {
      *__str = 136446210;
      v35 = "tcp_listener_create";
      v20 = "%{public}s called with null queue, no backtrace";
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  objc_opt_class();
  v2 = _os_object_alloc();
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *__str = 136446210;
    v35 = "tcp_listener_allocate";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s tcp_listener_obj_alloc failed", __str, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v7, &type, &v32))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *__str = 136446210;
      v35 = "tcp_listener_allocate";
      v10 = "%{public}s tcp_listener_obj_alloc failed";
    }

    else
    {
      if (v32 == 1)
      {
        v11 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(gLogObj, type);
        if (v11)
        {
          if (v14)
          {
            *__str = 136446466;
            v35 = "tcp_listener_allocate";
            v36 = 2082;
            v37 = v11;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s tcp_listener_obj_alloc failed, dumping backtrace:%{public}s", __str, 0x16u);
          }

          free(v11);
          goto LABEL_20;
        }

        if (!v14)
        {
LABEL_20:
          if (v7)
          {
            free(v7);
          }

          goto LABEL_22;
        }

        *__str = 136446210;
        v35 = "tcp_listener_allocate";
        v10 = "%{public}s tcp_listener_obj_alloc failed, no backtrace";
        v15 = v12;
        v16 = v13;
LABEL_19:
        _os_log_impl(&dword_181A37000, v15, v16, v10, __str, 0xCu);
        goto LABEL_20;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_20;
      }

      *__str = 136446210;
      v35 = "tcp_listener_allocate";
      v10 = "%{public}s tcp_listener_obj_alloc failed, backtrace limit exceeded";
    }

    v15 = v8;
    v16 = v9;
    goto LABEL_19;
  }

  v3 = v2;
  *(v2 + 72) = 0;
  *(v2 + 64) = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  *(v3 + 16) = v4;
  if (v4)
  {
    snprintf(__str, 0x35uLL, "com.apple.networking.tcp_listener.%p", v3);
    v38 = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(__str, v5);
    *(v3 + 24) = v6;
    if (v6)
    {
      *(v3 + 80) = 1;
      *(v3 + 32) = a1;
      dispatch_retain(a1);
      return v3;
    }
  }

  os_release(v3);
LABEL_22:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *__str = 136446210;
  v35 = "tcp_listener_create";
  LODWORD(v31) = 12;
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s tcp_listener_allocate failed", __str, v31);
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v17, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *__str = 136446210;
        v35 = "tcp_listener_create";
        v20 = "%{public}s tcp_listener_allocate failed";
LABEL_33:
        v25 = v18;
        v26 = v19;
LABEL_34:
        _os_log_impl(&dword_181A37000, v25, v26, v20, __str, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v21 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      v24 = os_log_type_enabled(gLogObj, type);
      if (v21)
      {
        if (v24)
        {
          *__str = 136446466;
          v35 = "tcp_listener_create";
          v36 = 2082;
          v37 = v21;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s tcp_listener_allocate failed, dumping backtrace:%{public}s", __str, 0x16u);
        }

        free(v21);
        goto LABEL_35;
      }

      if (v24)
      {
        *__str = 136446210;
        v35 = "tcp_listener_create";
        v20 = "%{public}s tcp_listener_allocate failed, no backtrace";
        v25 = v22;
        v26 = v23;
        goto LABEL_34;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *__str = 136446210;
        v35 = "tcp_listener_create";
        v20 = "%{public}s tcp_listener_allocate failed, backtrace limit exceeded";
        goto LABEL_33;
      }
    }
  }

LABEL_35:
  if (v17)
  {
    free(v17);
  }

  return 0;
}

uint64_t tcp_listener_create_launchd(NSObject *a1, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = tcp_listener_create(a1);
  if (result)
  {
    v4 = result;
    xpc_dictionary_set_string(*(result + 16), "launchd", a2);
    return v4;
  }

  return result;
}

void tcp_listener_start(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "tcp_listener_start";
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null listener", buf, 12);
    fds[0] = 16;
    LOBYTE(cnt) = 0;
    if (!__nwlog_fault(v54, fds, &cnt))
    {
      goto LABEL_119;
    }

    if (fds[0] == 17)
    {
      v55 = __nwlog_obj();
      v56 = fds[0];
      if (!os_log_type_enabled(v55, fds[0]))
      {
        goto LABEL_119;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_start";
      v57 = "%{public}s called with null listener";
    }

    else if (cnt == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v55 = __nwlog_obj();
      v56 = fds[0];
      v59 = os_log_type_enabled(v55, fds[0]);
      if (backtrace_string)
      {
        if (v59)
        {
          *buf = 136446466;
          *&buf[4] = "tcp_listener_start";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_119;
      }

      if (!v59)
      {
LABEL_119:
        if (v54)
        {
          free(v54);
        }

        return;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_start";
      v57 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v55 = __nwlog_obj();
      v56 = fds[0];
      if (!os_log_type_enabled(v55, fds[0]))
      {
        goto LABEL_119;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_start";
      v57 = "%{public}s called with null listener, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v55, v56, v57, buf, 0xCu);
    goto LABEL_119;
  }

  os_unfair_lock_lock((a1 + 72));
  if (*(a1 + 80) != 1)
  {
    goto LABEL_103;
  }

  if (!*(a1 + 40))
  {
    v13 = a1;
    v14 = 22;
    goto LABEL_102;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 16);
    *buf = 136446722;
    *&buf[4] = "tcp_listener_start_locked";
    *&buf[12] = 2048;
    *&buf[14] = a1;
    *&buf[22] = 2114;
    v65 = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %p: %{public}@", buf, 0x20u);
  }

  string = xpc_dictionary_get_string(*(a1 + 16), "launchd");
  if (!string)
  {
    v15 = xpc_dictionary_get_string(*(a1 + 16), "interface");
    if (v15)
    {
      v16 = v15;
      if (!strcasecmp(v15, kTCPListenerInterfaceAll))
      {
        v20 = 1;
        goto LABEL_41;
      }

      v17 = if_nametoindex(v16);
      *(a1 + 76) = v17;
      if (!v17)
      {
        v36 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        v37 = __nwlog_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_listener_setup_sockets";
          *&buf[12] = 2082;
          *&buf[14] = v16;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s could not find interface %{public}s", buf, 0x16u);
        }

        v14 = v36;
        goto LABEL_82;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 76);
        *buf = 136446466;
        *&buf[4] = "tcp_listener_setup_sockets";
        *&buf[12] = 1024;
        *&buf[14] = v19;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s ifindex %u", buf, 0x12u);
      }
    }

    v20 = 0;
LABEL_41:
    uint64 = xpc_dictionary_get_uint64(*(a1 + 16), "port");
    v22 = -9;
    while (1)
    {
      v23 = v22;
      LODWORD(cnt) = 0;
      v24 = tcp_listener_socket_create(a1, 2, uint64, *(a1 + 76), v20, &cnt);
      if (!v24)
      {
        goto LABEL_59;
      }

      v25 = v24;
      memset(buf, 0, sizeof(buf));
      LODWORD(v65) = 0;
      v63 = 28;
      if (getsockname(v24[4], buf, &v63))
      {
        break;
      }

      v26 = tcp_listener_socket_create(a1, 30, *&buf[2], *(a1 + 76), v20, &cnt);
      if (v26)
      {
        *(a1 + 84) = *&buf[2];
        v35 = v26;
        dispatch_resume(*(v25 + 1));
        *(v25 + 20) = 1;
        *v25 = *(a1 + 64);
        *(a1 + 64) = v25;
        dispatch_resume(v35[1]);
        *(v35 + 20) = 1;
        *v35 = *(a1 + 64);
        *(a1 + 64) = v35;
LABEL_59:
        v14 = cnt;
LABEL_82:
        if (!v14)
        {
          if (!xpc_dictionary_get_string(*(a1 + 16), "srvtype"))
          {
            goto LABEL_39;
          }

          v42 = xpc_dictionary_get_string(*(a1 + 16), "interface");
          if (v42 && ((v43 = v42, !strcasecmp(v42, kTCPListenerInterfaceAll)) || !strcasecmp(v43, "awdl0")))
          {
            v44 = 0x100000;
          }

          else
          {
            v44 = 0;
          }

          if (xpc_dictionary_get_BOOL(*(a1 + 16), "registerp2p"))
          {
            v44 |= 0x20000u;
            if (*(a1 + 76))
            {
              v45 = __nwlog_obj();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = if_indextoname(*(a1 + 76), fds);
                v47 = "?";
                if (v46)
                {
                  v47 = fds;
                }

                *buf = 136446466;
                *&buf[4] = "tcp_listener_setup_bonjour";
                *&buf[12] = 2082;
                *&buf[14] = v47;
                _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s Client specified an interface (%{public}s) and RegisterP2P", buf, 0x16u);
              }
            }
          }

          v48 = *(a1 + 76);
          v49 = xpc_dictionary_get_string(*(a1 + 16), "srvname");
          v50 = xpc_dictionary_get_string(*(a1 + 16), "srvtype");
          v51 = xpc_dictionary_get_BOOL(*(a1 + 16), "localonly") ? "local." : xpc_dictionary_get_string(*(a1 + 16), "srvdomain");
          v52 = DNSServiceRegister((a1 + 56), v44, v48, v49, v50, v51, 0, *(a1 + 84), 0, 0, tcp_listener_dns_handler, a1);
          if (!v52)
          {
            v52 = DNSServiceSetDispatchQueue(*(a1 + 56), *(a1 + 24));
            if (!v52)
            {
              goto LABEL_39;
            }
          }

          v14 = v52;
        }

        goto LABEL_101;
      }

      v27 = *(v25 + 1);
      if (v27)
      {
        dispatch_source_cancel(v27);
        if ((*(v25 + 20) & 1) == 0)
        {
          dispatch_resume(*(v25 + 1));
        }
      }

      else
      {
        v28 = *(v25 + 4);
        if (v28 != -1)
        {
          close(v28);
        }
      }

      free(v25);
      if (!uint64 && cnt == 48)
      {
        v22 = v23 + 1;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v29 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *fds = 136446466;
    *&fds[4] = "tcp_listener_setup_sockets";
    v67 = 1024;
    v30 = v29;
    v68 = v29;
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s getsockname failed %{darwin.errno}d", fds, 18);
    LOBYTE(v60) = 16;
    v62 = 0;
    if (__nwlog_fault(v31, &v60, &v62))
    {
      if (v60 == 17)
      {
        v32 = __nwlog_obj();
        v33 = v60;
        if (os_log_type_enabled(v32, v60))
        {
          *fds = 136446466;
          *&fds[4] = "tcp_listener_setup_sockets";
          v67 = 1024;
          v68 = v30;
          v34 = "%{public}s getsockname failed %{darwin.errno}d";
LABEL_73:
          _os_log_impl(&dword_181A37000, v32, v33, v34, fds, 0x12u);
        }
      }

      else if (v62 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = v60;
        v39 = os_log_type_enabled(v32, v60);
        if (v38)
        {
          if (v39)
          {
            *fds = 136446722;
            *&fds[4] = "tcp_listener_setup_sockets";
            v67 = 1024;
            v68 = v30;
            v69 = 2082;
            v70 = v38;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s getsockname failed %{darwin.errno}d, dumping backtrace:%{public}s", fds, 0x1Cu);
          }

          free(v38);
          goto LABEL_74;
        }

        if (v39)
        {
          *fds = 136446466;
          *&fds[4] = "tcp_listener_setup_sockets";
          v67 = 1024;
          v68 = v30;
          v34 = "%{public}s getsockname failed %{darwin.errno}d, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = v60;
        if (os_log_type_enabled(v32, v60))
        {
          *fds = 136446466;
          *&fds[4] = "tcp_listener_setup_sockets";
          v67 = 1024;
          v68 = v30;
          v34 = "%{public}s getsockname failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v31)
    {
      free(v31);
    }

    v40 = *(v25 + 1);
    if (v40)
    {
      dispatch_source_cancel(v40);
      if ((*(v25 + 20) & 1) == 0)
      {
        dispatch_resume(*(v25 + 1));
      }
    }

    else
    {
      v41 = *(v25 + 4);
      if (v41 != -1)
      {
        close(v41);
      }
    }

    free(v25);
    v14 = v30;
    goto LABEL_82;
  }

  v5 = string;
  *fds = 0;
  cnt = 0;
  v6 = launch_activate_socket(string, fds, &cnt);
  if (v6 || !*fds || !cnt)
  {
    goto LABEL_35;
  }

  v7 = 0;
  v8 = 2;
  do
  {
    v63 = 0;
    v60 = 4;
    if (getsockopt(*(*fds + 4 * v7), 0xFFFF, 4104, &v63, &v60))
    {
      v9 = 0;
    }

    else
    {
      v9 = v63 == 1;
    }

    if (!v9)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "tcp_listener_setup_sockets_launchd";
        *&buf[12] = 2082;
        *&buf[14] = v5;
        *&buf[22] = 2048;
        v65 = v7;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Sockets:%{public}s[%zu] is not SOCK_STREAM - not supported", buf, 0x20u);
      }

LABEL_11:
      close(*(*fds + 4 * v7));
      goto LABEL_12;
    }

    if (!*(a1 + 84))
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v65) = 0;
      v60 = 28;
      if (!getsockname(*(*fds + 4 * v7), buf, &v60))
      {
        v8 = buf[1];
        if (buf[1] == 2 || buf[1] == 30)
        {
          *(a1 + 84) = *&buf[2];
        }
      }
    }

    v11 = tcp_listener_socket_create_with_fd(v8, a1, *(*fds + 4 * v7));
    if (!v11)
    {
      goto LABEL_11;
    }

    *v11 = *(a1 + 64);
    *(a1 + 64) = v11;
    v12 = v11;
    dispatch_resume(v11[1]);
    *(v12 + 20) = 1;
LABEL_12:
    ++v7;
  }

  while (v7 < cnt);
  if (*fds)
  {
    free(*fds);
  }

LABEL_35:
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = 2;
  }

  if (*(a1 + 64))
  {
LABEL_39:
    *(a1 + 80) = 2;
    goto LABEL_103;
  }

LABEL_101:
  v13 = a1;
LABEL_102:
  tcp_listener_call_error_handler_locked(v13, v14);
LABEL_103:
  os_unfair_lock_unlock((a1 + 72));
}

void tcp_listener_call_error_handler_locked(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3002000000;
    v9[3] = __Block_byref_object_copy__37744;
    v9[4] = __Block_byref_object_dispose__37745;
    v9[5] = _Block_copy(v3);
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2000000000;
    v8[3] = os_retain(a1);
    v5 = a1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __tcp_listener_call_error_handler_locked_block_invoke;
    block[3] = &unk_1E6A31D30;
    block[4] = v8;
    block[5] = v9;
    v7 = a2;
    dispatch_async(v5, block);
    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v9, 8);
  }

  tcp_listener_cancel_locked(a1);
}

void *tcp_listener_socket_create_with_fd(int a1, uint64_t a2, int a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v58 = 1;
  if (ioctl(a3, 0x8004667EuLL, &v58) < 0)
  {
    v11 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "tcp_listener_socket_create_with_fd";
    *&buf[12] = 1024;
    *&buf[14] = v11;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s FIONBIO failed %{darwin.errno}d", buf, 18);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v7, &type, &v56))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_listener_socket_create_with_fd";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        v10 = "%{public}s FIONBIO failed %{darwin.errno}d";
        goto LABEL_58;
      }

LABEL_60:
      if (!v7)
      {
        return 0;
      }

      v42 = v7;
LABEL_62:
      free(v42);
      return 0;
    }

    if (v56 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_listener_socket_create_with_fd";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        v10 = "%{public}s FIONBIO failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    v20 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446466;
        *&buf[4] = "tcp_listener_socket_create_with_fd";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        v10 = "%{public}s FIONBIO failed %{darwin.errno}d, no backtrace";
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    if (v20)
    {
      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = v11;
      *&buf[18] = 2082;
      *&buf[20] = backtrace_string;
      v19 = "%{public}s FIONBIO failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_60;
  }

  if (setsockopt(a3, 0xFFFF, 4130, &v58, 4u))
  {
    v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "tcp_listener_socket_create_with_fd";
    *&buf[12] = 1024;
    *&buf[14] = v6;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s SO_NOSIGPIPE failed %{darwin.errno}d", buf, 18);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v7, &type, &v56))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_listener_socket_create_with_fd";
        *&buf[12] = 1024;
        *&buf[14] = v6;
        v10 = "%{public}s SO_NOSIGPIPE failed %{darwin.errno}d";
LABEL_58:
        v39 = v8;
        v40 = v9;
        v41 = 18;
LABEL_59:
        _os_log_impl(&dword_181A37000, v39, v40, v10, buf, v41);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

    if (v56 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_listener_socket_create_with_fd";
        *&buf[12] = 1024;
        *&buf[14] = v6;
        v10 = "%{public}s SO_NOSIGPIPE failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    v18 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "tcp_listener_socket_create_with_fd";
        *&buf[12] = 1024;
        *&buf[14] = v6;
        v10 = "%{public}s SO_NOSIGPIPE failed %{darwin.errno}d, no backtrace";
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    if (v18)
    {
      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = v6;
      *&buf[18] = 2082;
      *&buf[20] = backtrace_string;
      v19 = "%{public}s SO_NOSIGPIPE failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_25:
      v21 = v8;
      v22 = v9;
      v23 = 28;
LABEL_26:
      _os_log_impl(&dword_181A37000, v21, v22, v19, buf, v23);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (xpc_dictionary_get_BOOL(*(a2 + 16), "tfo") && setsockopt(a3, 6, 261, &v58, 4u))
  {
    v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "tcp_listener_socket_create_with_fd";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = v12;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d", buf, 24);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v13, &type, &v56))
    {
      goto LABEL_104;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_104;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      v16 = "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d";
      goto LABEL_103;
    }

    if (v56 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_104;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      v16 = "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_103;
    }

    v36 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v37 = os_log_type_enabled(v14, type);
    if (!v36)
    {
      if (!v37)
      {
        goto LABEL_104;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      v16 = "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d, no backtrace";
      goto LABEL_103;
    }

    if (v37)
    {
      *buf = 136446978;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v12;
      *&buf[24] = 2082;
      *&buf[26] = v36;
      v38 = "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_85:
      _os_log_impl(&dword_181A37000, v14, v15, v38, buf, 0x22u);
      goto LABEL_86;
    }

    goto LABEL_86;
  }

  if (a1 == 30 && xpc_dictionary_get_BOOL(*(a2 + 16), "coproc") && setsockopt(a3, 0xFFFF, 4376, &v58, 4u))
  {
    v24 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "tcp_listener_socket_create_with_fd";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = v24;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d", buf, 24);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v13, &type, &v56))
    {
      goto LABEL_104;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_104;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      v16 = "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d";
      goto LABEL_103;
    }

    if (v56 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_104;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      v16 = "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_103;
    }

    v36 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v50 = os_log_type_enabled(v14, type);
    if (!v36)
    {
      if (!v50)
      {
        goto LABEL_104;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      v16 = "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d, no backtrace";
LABEL_103:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x18u);
LABEL_104:
      if (!v13)
      {
        return 0;
      }

      goto LABEL_105;
    }

    if (v50)
    {
      *buf = 136446978;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      *&buf[24] = 2082;
      *&buf[26] = v36;
      v38 = "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_85;
    }

LABEL_86:
    free(v36);
    goto LABEL_104;
  }

  v25 = malloc_type_calloc(1uLL, 0x18uLL, 0x6F3DD673uLL);
  if (v25)
  {
    v25[4] = a3;
    v26 = v25;
    v27 = dispatch_source_create(MEMORY[0x1E69E96F8], a3, 0, *(a2 + 24));
    v13 = v26;
    *(v26 + 1) = v27;
    if (v27)
    {
      os_retain(a2);
      v28 = *(v26 + 1);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __tcp_listener_socket_create_with_fd_block_invoke;
      handler[3] = &__block_descriptor_tmp_9_37726;
      handler[4] = a2;
      v55 = a3;
      dispatch_source_set_event_handler(v28, handler);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      *&buf[24] = *(v26 + 1);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 0x40000000;
      v52[2] = __tcp_listener_socket_create_with_fd_block_invoke_2;
      v52[3] = &unk_1E6A31D78;
      v53 = a3;
      v52[4] = buf;
      v52[5] = a2;
      dispatch_source_set_cancel_handler(*&buf[24], v52);
      _Block_object_dispose(buf, 8);
      return v26;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "tcp_listener_socket_create_with_fd";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s dispatch_source_create failed", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v43, &type, &v56))
    {
      goto LABEL_99;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      v46 = "%{public}s dispatch_source_create failed";
    }

    else if (v56 == 1)
    {
      v48 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v49 = os_log_type_enabled(v44, type);
      if (v48)
      {
        if (v49)
        {
          *buf = 136446466;
          *&buf[4] = "tcp_listener_socket_create_with_fd";
          *&buf[12] = 2082;
          *&buf[14] = v48;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v48);
        goto LABEL_99;
      }

      if (!v49)
      {
LABEL_99:
        if (v43)
        {
          free(v43);
        }

LABEL_105:
        v42 = v13;
        goto LABEL_62;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      v46 = "%{public}s dispatch_source_create failed, no backtrace";
    }

    else
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      v46 = "%{public}s dispatch_source_create failed, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
    goto LABEL_99;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v30 = gLogObj;
  v31 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "tcp_listener_socket_create_with_fd";
  if (v31)
  {
    v32 = 3;
  }

  else
  {
    v32 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  *&buf[24] = 24;
  v33 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v33);
  if (!result)
  {
    free(v33);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "tcp_listener_socket_create_with_fd";
    LODWORD(v51) = 12;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s malloc failed", buf, v51);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v7, &type, &v56))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      v10 = "%{public}s malloc failed";
    }

    else if (v56 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v47 = os_log_type_enabled(v34, type);
      if (backtrace_string)
      {
        if (!v47)
        {
          goto LABEL_27;
        }

        *buf = 136446466;
        *&buf[4] = "tcp_listener_socket_create_with_fd";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v19 = "%{public}s malloc failed, dumping backtrace:%{public}s";
        v21 = v34;
        v22 = v35;
        v23 = 22;
        goto LABEL_26;
      }

      if (!v47)
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      v10 = "%{public}s malloc failed, no backtrace";
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_socket_create_with_fd";
      v10 = "%{public}s malloc failed, backtrace limit exceeded";
    }

    v39 = v34;
    v40 = v35;
    v41 = 12;
    goto LABEL_59;
  }

  __break(1u);
  return result;
}

void *tcp_listener_socket_create(uint64_t a1, int a2, __int16 a3, int a4, int a5, unsigned int *a6)
{
  *&v66[5] = *MEMORY[0x1E69E9840];
  v60 = a4;
  v11 = socket(a2, 1, 6);
  v12 = v11;
  if (v11 < 0)
  {
    v18 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    *a6 = v18;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v62 = "tcp_listener_socket_create";
    v63 = 1024;
    v64 = v18;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s socket failed %{darwin.errno}d", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v59) = 0;
    if (!__nwlog_fault(v14, type, &v59))
    {
      goto LABEL_124;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v18;
      v17 = "%{public}s socket failed %{darwin.errno}d";
      goto LABEL_122;
    }

    if (v59 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v18;
      v17 = "%{public}s socket failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_122;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = type[0];
    v23 = os_log_type_enabled(gLogObj, type[0]);
    if (!backtrace_string)
    {
      if (!v23)
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v18;
      v17 = "%{public}s socket failed %{darwin.errno}d, no backtrace";
      goto LABEL_122;
    }

    if (v23)
    {
      *buf = 136446722;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v18;
      v65 = 2082;
      *v66 = backtrace_string;
      v22 = "%{public}s socket failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_124;
  }

  v59 = 1;
  if (setsockopt(v11, 0xFFFF, 4, &v59, 4u))
  {
    v13 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    *a6 = v13;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v62 = "tcp_listener_socket_create";
    v63 = 1024;
    v64 = v13;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s SO_REUSEADDR failed %{darwin.errno}d", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    v58 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v14, type, &v58))
    {
      goto LABEL_124;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v13;
      v17 = "%{public}s SO_REUSEADDR failed %{darwin.errno}d";
LABEL_122:
      v48 = v15;
      v49 = v16;
      v50 = 18;
LABEL_123:
      _os_log_impl(&dword_181A37000, v48, v49, v17, buf, v50);
      goto LABEL_124;
    }

    if (v58 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v13;
      v17 = "%{public}s SO_REUSEADDR failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_122;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = type[0];
    v21 = os_log_type_enabled(gLogObj, type[0]);
    if (!backtrace_string)
    {
      if (!v21)
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v13;
      v17 = "%{public}s SO_REUSEADDR failed %{darwin.errno}d, no backtrace";
      goto LABEL_122;
    }

    if (v21)
    {
      *buf = 136446722;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v13;
      v65 = 2082;
      *v66 = backtrace_string;
      v22 = "%{public}s SO_REUSEADDR failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_25:
      v24 = v15;
      v25 = v16;
      v26 = 28;
LABEL_26:
      _os_log_impl(&dword_181A37000, v24, v25, v22, buf, v26);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (a5 && setsockopt(v12, 0xFFFF, 4356, &v59, 4u))
  {
    v19 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    *a6 = v19;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v62 = "tcp_listener_socket_create";
    v63 = 1024;
    v64 = v19;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    v58 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v14, type, &v58))
    {
      goto LABEL_124;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v19;
      v17 = "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d";
      goto LABEL_122;
    }

    if (v58 != OS_LOG_TYPE_INFO)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (!os_log_type_enabled(v15, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v19;
      v17 = "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_122;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type[0];
    v31 = os_log_type_enabled(v15, type[0]);
    if (!backtrace_string)
    {
      if (!v31)
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v19;
      v17 = "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, no backtrace";
      goto LABEL_122;
    }

    if (v31)
    {
      *buf = 136446722;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v19;
      v65 = 2082;
      *v66 = backtrace_string;
      v22 = "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (a2 == 30)
  {
    if (setsockopt(v12, 41, 27, &v59, 4u))
    {
      v27 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      *a6 = v27;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v27;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s IPV6_V6ONLY failed %{darwin.errno}d", buf, 18);
      type[0] = OS_LOG_TYPE_ERROR;
      v58 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v14, type, &v58))
      {
        goto LABEL_124;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v27;
        v17 = "%{public}s IPV6_V6ONLY failed %{darwin.errno}d";
        goto LABEL_122;
      }

      if (v58 != OS_LOG_TYPE_INFO)
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (!os_log_type_enabled(v15, type[0]))
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v27;
        v17 = "%{public}s IPV6_V6ONLY failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_122;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type[0];
      v34 = os_log_type_enabled(v15, type[0]);
      if (!backtrace_string)
      {
        if (!v34)
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v27;
        v17 = "%{public}s IPV6_V6ONLY failed %{darwin.errno}d, no backtrace";
        goto LABEL_122;
      }

      if (v34)
      {
        *buf = 136446722;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v27;
        v65 = 2082;
        *v66 = backtrace_string;
        v22 = "%{public}s IPV6_V6ONLY failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (v60 && setsockopt(v12, 41, 125, &v60, 4u))
    {
      v32 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      *a6 = v32;
      v33 = __nwlog_obj();
      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v32;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s IPV6_BOUND_IF failed %{darwin.errno}d", buf, 18);
      type[0] = OS_LOG_TYPE_ERROR;
      v58 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v14, type, &v58))
      {
        goto LABEL_124;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (!os_log_type_enabled(v15, type[0]))
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v32;
        v17 = "%{public}s IPV6_BOUND_IF failed %{darwin.errno}d";
        goto LABEL_122;
      }

      if (v58 != OS_LOG_TYPE_INFO)
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (!os_log_type_enabled(v15, type[0]))
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v32;
        v17 = "%{public}s IPV6_BOUND_IF failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_122;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type[0];
      v46 = os_log_type_enabled(v15, type[0]);
      if (!backtrace_string)
      {
        if (!v46)
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v32;
        v17 = "%{public}s IPV6_BOUND_IF failed %{darwin.errno}d, no backtrace";
        goto LABEL_122;
      }

      if (v46)
      {
        *buf = 136446722;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v32;
        v65 = 2082;
        *v66 = backtrace_string;
        v22 = "%{public}s IPV6_BOUND_IF failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v56 = 0;
    v55 = 0;
    v57 = 0;
  }

  else
  {
    if (v60 && setsockopt(v12, 0, 25, &v60, 4u))
    {
      v28 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      *a6 = v28;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v28;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s IP_BOUND_IF failed %{darwin.errno}d", buf, 18);
      type[0] = OS_LOG_TYPE_ERROR;
      v58 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v14, type, &v58))
      {
        goto LABEL_124;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (!os_log_type_enabled(v15, type[0]))
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v28;
        v17 = "%{public}s IP_BOUND_IF failed %{darwin.errno}d";
        goto LABEL_122;
      }

      if (v58 != OS_LOG_TYPE_INFO)
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (!os_log_type_enabled(v15, type[0]))
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v28;
        v17 = "%{public}s IP_BOUND_IF failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_122;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type[0];
      v40 = os_log_type_enabled(v15, type[0]);
      if (!backtrace_string)
      {
        if (!v40)
        {
          goto LABEL_124;
        }

        *buf = 136446466;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v28;
        v17 = "%{public}s IP_BOUND_IF failed %{darwin.errno}d, no backtrace";
        goto LABEL_122;
      }

      if (v40)
      {
        *buf = 136446722;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v28;
        v65 = 2082;
        *v66 = backtrace_string;
        v22 = "%{public}s IP_BOUND_IF failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v56 = 0;
    v55 = 0;
    v57 = 0;
    if (a2 == 2)
    {
      v29 = 16;
      v30 = OS_LOG_TYPE_DEBUG;
      goto LABEL_66;
    }
  }

  v29 = 28;
  v30 = 30;
LABEL_66:
  type[1] = v30;
  type[0] = v29;
  v54 = a3;
  if (bind(v12, type, v29))
  {
    v35 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    *a6 = v35;
    if (v35 <= 0x31 && ((1 << v35) & 0x2000000002002) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v12;
        v65 = 1024;
        v66[0] = v35;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s bind(fd %d) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_126;
    }

    v41 = __nwlog_obj();
    *buf = 136446722;
    v62 = "tcp_listener_socket_create";
    v63 = 1024;
    v64 = v12;
    v65 = 1024;
    v66[0] = v35;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s bind(fd %d) failed %{darwin.errno}d", buf, 24);
    v58 = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v14, &v58, &v52))
    {
      if (v58 == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = v58;
        if (!os_log_type_enabled(v42, v58))
        {
          goto LABEL_124;
        }

        *buf = 136446722;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v12;
        v65 = 1024;
        v66[0] = v35;
        v17 = "%{public}s bind(fd %d) failed %{darwin.errno}d";
        goto LABEL_133;
      }

      if (v52 != 1)
      {
        v42 = __nwlog_obj();
        v43 = v58;
        if (!os_log_type_enabled(v42, v58))
        {
          goto LABEL_124;
        }

        *buf = 136446722;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v12;
        v65 = 1024;
        v66[0] = v35;
        v17 = "%{public}s bind(fd %d) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_133;
      }

      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = v58;
      v47 = os_log_type_enabled(v42, v58);
      if (backtrace_string)
      {
        if (!v47)
        {
          goto LABEL_27;
        }

        *buf = 136446978;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v12;
        v65 = 1024;
        v66[0] = v35;
        LOWORD(v66[1]) = 2082;
        *(&v66[1] + 2) = backtrace_string;
        v22 = "%{public}s bind(fd %d) failed %{darwin.errno}d, dumping backtrace:%{public}s";
        v24 = v42;
        v25 = v43;
        v26 = 34;
        goto LABEL_26;
      }

      if (v47)
      {
        *buf = 136446722;
        v62 = "tcp_listener_socket_create";
        v63 = 1024;
        v64 = v12;
        v65 = 1024;
        v66[0] = v35;
        v17 = "%{public}s bind(fd %d) failed %{darwin.errno}d, no backtrace";
LABEL_133:
        v48 = v42;
        v49 = v43;
        v50 = 24;
        goto LABEL_123;
      }
    }

LABEL_124:
    if (v14)
    {
      free(v14);
    }

LABEL_126:
    v44 = 0;
    goto LABEL_127;
  }

  if (listen(v12, 10))
  {
    v38 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    *a6 = v38;
    v39 = __nwlog_obj();
    *buf = 136446466;
    v62 = "tcp_listener_socket_create";
    v63 = 1024;
    v64 = v38;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s listen failed %{darwin.errno}d", buf, 18);
    v58 = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v14, &v58, &v52))
    {
      goto LABEL_124;
    }

    if (v58 == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = v58;
      if (!os_log_type_enabled(v15, v58))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v38;
      v17 = "%{public}s listen failed %{darwin.errno}d";
      goto LABEL_122;
    }

    if (v52 != 1)
    {
      v15 = __nwlog_obj();
      v16 = v58;
      if (!os_log_type_enabled(v15, v58))
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v38;
      v17 = "%{public}s listen failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_122;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = v58;
    v45 = os_log_type_enabled(v15, v58);
    if (!backtrace_string)
    {
      if (!v45)
      {
        goto LABEL_124;
      }

      *buf = 136446466;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v38;
      v17 = "%{public}s listen failed %{darwin.errno}d, no backtrace";
      goto LABEL_122;
    }

    if (v45)
    {
      *buf = 136446722;
      v62 = "tcp_listener_socket_create";
      v63 = 1024;
      v64 = v38;
      v65 = 2082;
      *v66 = backtrace_string;
      v22 = "%{public}s listen failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v44 = tcp_listener_socket_create_with_fd(a2, a1, v12);
  if (!v44)
  {
    *a6 = 12;
  }

LABEL_127:
  if (v12 != -1 && !v44)
  {
    close(v12);
  }

  return v44;
}

void tcp_listener_dns_handler(uint64_t a1, int a2, int a3, const char *a4, const char *a5, const char *a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v18 = "tcp_listener_dns_handler";
    v14 = "<NULL>";
    v17 = 136447490;
    if (a4)
    {
      v14 = a4;
    }

    v19 = 1024;
    v20 = a2;
    v15 = "NULL";
    v21 = 1024;
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = "NULL";
    }

    v22 = a3;
    if (a6)
    {
      v15 = a6;
    }

    v23 = 2082;
    v24 = v14;
    v25 = 2082;
    v26 = v16;
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s flags=0x%x, errorCode=%d, name=%{public}s, type=%{public}s, domain=%{public}s", &v17, 0x36u);
  }

  if (a3)
  {
    os_unfair_lock_lock((a7 + 72));
    tcp_listener_call_error_handler_locked(a7, a3);
    os_unfair_lock_unlock((a7 + 72));
  }
}

void __tcp_listener_socket_create_with_fd_block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  v52 = a1;
  if (!v2)
  {
    v45 = __nwlog_obj();
    __buf = 136446210;
    *v65 = "tcp_listener_accept_locked";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null listener", &__buf, 12);
    LOBYTE(block[0]) = 16;
    __src.sa_len = 0;
    if (!__nwlog_fault(v46, block, &__src))
    {
      goto LABEL_74;
    }

    if (LOBYTE(block[0]) == 17)
    {
      v47 = __nwlog_obj();
      v48 = block[0];
      if (!os_log_type_enabled(v47, block[0]))
      {
        goto LABEL_74;
      }

      __buf = 136446210;
      *v65 = "tcp_listener_accept_locked";
      v49 = "%{public}s called with null listener";
    }

    else if (__src.sa_len == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v48 = block[0];
      v51 = os_log_type_enabled(v47, block[0]);
      if (backtrace_string)
      {
        if (v51)
        {
          __buf = 136446466;
          *v65 = "tcp_listener_accept_locked";
          *&v65[8] = 2082;
          *&v65[10] = backtrace_string;
          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null listener, dumping backtrace:%{public}s", &__buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_74;
      }

      if (!v51)
      {
LABEL_74:
        if (v46)
        {
          free(v46);
        }

        goto LABEL_59;
      }

      __buf = 136446210;
      *v65 = "tcp_listener_accept_locked";
      v49 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v47 = __nwlog_obj();
      v48 = block[0];
      if (!os_log_type_enabled(v47, block[0]))
      {
        goto LABEL_74;
      }

      __buf = 136446210;
      *v65 = "tcp_listener_accept_locked";
      v49 = "%{public}s called with null listener, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v47, v48, v49, &__buf, 0xCu);
    goto LABEL_74;
  }

  v3 = *(a1 + 40);
  v4 = &qword_1ED411000;
  v54 = v3;
  while (1)
  {
    *&__src.sa_len = 0;
    *&__src.sa_data[6] = 0;
    v59 = 0;
    v58 = 0;
    v56 = 28;
    v6 = accept(v3, &__src, &v56);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v7 = v6;
    if (setsockopt(v6, 0xFFFF, 4130, &tcp_listener_accept_locked_on, 4u))
    {
      address = _nw_endpoint_create_address(&__src.sa_len);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = v4[275];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = address;
        if (v28)
        {
          v29 = v28;
          logging_description = _nw_endpoint_get_logging_description(v28);
          v28 = v29;
        }

        else
        {
          logging_description = "<NULL>";
        }

        __buf = 136446466;
        *v65 = "tcp_listener_accept_locked";
        *&v65[8] = 2082;
        *&v65[10] = logging_description;
        v42 = "%{public}s Failed to set SO_NOSIGPIPE on new connection from %{public}s";
        v43 = v27;
        v44 = OS_LOG_TYPE_ERROR;
LABEL_55:
        _os_log_impl(&dword_181A37000, v43, v44, v42, &__buf, 0x16u);
      }

LABEL_56:
      if (address)
      {
        os_release(address);
      }

LABEL_58:
      close(v7);
      goto LABEL_59;
    }

    if (xpc_dictionary_get_BOOL(*(v2 + 16), "localonly"))
    {
      v8 = getpid();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = v4[275];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v61 = "tcp_listener_verify_local";
        v62 = 2048;
        v63 = v2;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %p", buf, 0x16u);
      }

      v10 = socket(17, 3, 0);
      if (v10 < 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = v4[275];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v33 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          *buf = 136446466;
          v61 = "tcp_listener_verify_local";
          v62 = 1024;
          LODWORD(v63) = v33;
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s failure to create routing socket %d", buf, 0x12u);
        }
      }

      else
      {
        v11 = v10;
        tcp_listener_verify_local_seq = atomic_fetch_add_explicit(&tcp_listener_verify_local_seq, 1u, memory_order_relaxed) + 1;
        *v65 = 0;
        memset(&v65[16], 0, 32);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(v93, 0, sizeof(v93));
        HIWORD(__buf) = 4357;
        *&v65[4] = 0x100000807;
        v12 = __src.sa_len + 92;
        LOWORD(__buf) = __src.sa_len + 92;
        *&v65[12] = v8;
        *&v65[16] = tcp_listener_verify_local_seq;
        __memcpy_chk();
        if (write(v11, &__buf, v12) < 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = v4[275];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            *buf = 136446466;
            v61 = "tcp_listener_verify_local";
            v62 = 1024;
            LODWORD(v63) = v35;
            v36 = "%{public}s failure while writing to the routing socket %d";
            goto LABEL_44;
          }
        }

        else
        {
          while (1)
          {
            v13 = read(v11, &__buf, 0x200uLL);
            if (v13 < 1)
            {
              break;
            }

            if (*&v65[16] == tcp_listener_verify_local_seq && *&v65[12] == v8)
            {
              goto LABEL_16;
            }
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
LABEL_16:
            close(v11);
            if ((*&v65[4] & 0x200400) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_17;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = v4[275];
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_45;
          }

          v37 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          *buf = 136446466;
          v61 = "tcp_listener_verify_local";
          v62 = 1024;
          LODWORD(v63) = v37;
          v36 = "%{public}s failure reading from the routing socket %d";
LABEL_44:
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, v36, buf, 0x12u);
        }

LABEL_45:
        close(v11);
      }

LABEL_46:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      if (os_log_type_enabled(v4[275], OS_LOG_TYPE_DEBUG) || gLogFDOverride != -1)
      {
        address = _nw_endpoint_create_address(&__src.sa_len);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = v4[275];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = address;
          if (v39)
          {
            v40 = v39;
            v41 = _nw_endpoint_get_logging_description(v39);
            v39 = v40;
          }

          else
          {
            v41 = "<NULL>";
          }

          __buf = 136446466;
          *v65 = "tcp_listener_accept_locked";
          *&v65[8] = 2082;
          *&v65[10] = v41;
          v42 = "%{public}s Ignoring non-local connection from %{public}s";
          v43 = v38;
          v44 = OS_LOG_TYPE_DEBUG;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      goto LABEL_58;
    }

LABEL_17:
    v14 = tcp_connection_create_with_connected_fd_inner(v7, 1);
    if (!v14)
    {
      close(v7);
      tcp_listener_call_error_handler_locked(v2, 12);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = v4[275];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __buf = 136446210;
        *v65 = "tcp_listener_accept_locked";
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s tcp_connection_create_inbound() returned non-zero", &__buf, 0xCu);
      }

      goto LABEL_59;
    }

    v15 = v14;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    if (os_log_type_enabled(v4[275], OS_LOG_TYPE_DEBUG) || gLogFDOverride != -1)
    {
      v16 = v2;
      v17 = _nw_endpoint_create_address(&__src.sa_len);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = v4;
      v19 = v4[275];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v53 = tcp_connection_id(v15);
        v20 = v17;
        if (v20)
        {
          v21 = v20;
          v22 = _nw_endpoint_get_logging_description(v20);
          v20 = v21;
        }

        else
        {
          v22 = "<NULL>";
        }

        __buf = 136446978;
        *v65 = "tcp_listener_accept_locked";
        *&v65[8] = 2048;
        *&v65[10] = v53;
        *&v65[18] = 1024;
        *&v65[20] = v7;
        *&v65[24] = 2082;
        *&v65[26] = v22;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s client connection %llu fd=%d from %{public}s", &__buf, 0x26u);
      }

      v4 = v18;
      v3 = v54;
      v2 = v16;
      if (v17)
      {
        os_release(v17);
      }
    }

    v23 = *(v2 + 40);
    if (v23)
    {
      v5 = *(v2 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __tcp_listener_accept_locked_block_invoke;
      block[3] = &unk_1E6A31DA0;
      block[5] = v15;
      block[6] = v2;
      block[4] = v23;
      dispatch_async(v5, block);
    }

    else
    {
      os_release(v15);
    }
  }

  v24 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v24 != 35)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = v4[275];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __buf = 136446466;
      *v65 = "tcp_listener_accept_locked";
      *&v65[8] = 1024;
      *&v65[10] = v24;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s accept failed %{darwin.errno}d", &__buf, 0x12u);
    }

    tcp_listener_call_error_handler_locked(v2, v24);
  }

LABEL_59:
  os_unfair_lock_unlock((*(v52 + 32) + 72));
}

void __tcp_listener_socket_create_with_fd_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  close(*(a1 + 48));
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    dispatch_release(v3);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (v2)
  {

    os_release(v2);
  }
}

void __tcp_listener_accept_locked_block_invoke(void *a1)
{
  v1 = a1[5];
  if (*(a1[6] + 80) != 3)
  {
    (*(a1[4] + 16))();
  }

  if (v1)
  {

    os_release(v1);
  }
}

void __tcp_listener_call_error_handler_locked_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2[20] == 3 || ((*(*(*(*(a1 + 40) + 8) + 40) + 16))(), (v2 = *(*(*(a1 + 32) + 8) + 24)) != 0))
  {
    os_release(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    _Block_release(v3);
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

void tcp_listener_cancel_locked(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136446466;
    v10 = "tcp_listener_cancel_locked";
    v11 = 2048;
    v12 = a1;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %p", &v9, 0x16u);
  }

  while (1)
  {
    v3 = a1[8];
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 1);
    a1[8] = *v3;
    if (v4)
    {
      dispatch_source_cancel(v4);
      if ((*(v3 + 20) & 1) == 0)
      {
        dispatch_resume(*(v3 + 1));
      }
    }

    else
    {
      v5 = *(v3 + 4);
      if (v5 != -1)
      {
        close(v5);
      }
    }

    free(v3);
  }

  v6 = a1[5];
  if (v6)
  {
    _Block_release(v6);
    a1[5] = 0;
  }

  v7 = a1[6];
  if (v7)
  {
    _Block_release(v7);
    a1[6] = 0;
  }

  v8 = a1[7];
  if (v8)
  {
    DNSServiceRefDeallocate(v8);
    a1[7] = 0;
  }
}

void tcp_listener_cancel(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    *(a1 + 80) = 3;
    os_unfair_lock_unlock((a1 + 72));
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v14 = os_retain(a1);
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __tcp_listener_cancel_block_invoke;
    block[3] = &unk_1E6A31CA8;
    block[4] = buf;
    dispatch_async(v2, block);
    _Block_object_dispose(buf, 8);
    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "tcp_listener_cancel";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null listener", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_cancel";
      v7 = "%{public}s called with null listener";
      goto LABEL_17;
    }

    if (v11 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      *&buf[4] = "tcp_listener_cancel";
      v7 = "%{public}s called with null listener, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        *&buf[4] = "tcp_listener_cancel";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v9)
    {
      *buf = 136446210;
      *&buf[4] = "tcp_listener_cancel";
      v7 = "%{public}s called with null listener, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }
}

void __tcp_listener_cancel_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(*(*(a1 + 32) + 8) + 24) + 72));
  tcp_listener_cancel_locked(*(*(*(a1 + 32) + 8) + 24));
  os_unfair_lock_unlock((*(*(*(a1 + 32) + 8) + 24) + 72));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    os_release(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t tcp_listener_get_dns_service_ref(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    v2 = *(a1 + 56);
    os_unfair_lock_unlock((a1 + 72));
    return v2;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "tcp_listener_get_dns_service_ref";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null listener", buf, 12);
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
        v14 = "tcp_listener_get_dns_service_ref";
        v8 = "%{public}s called with null listener";
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
          v14 = "tcp_listener_get_dns_service_ref";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "tcp_listener_get_dns_service_ref";
        v8 = "%{public}s called with null listener, no backtrace";
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
        v14 = "tcp_listener_get_dns_service_ref";
        v8 = "%{public}s called with null listener, backtrace limit exceeded";
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

void tcp_listener_set_accept_handler(uint64_t a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "tcp_listener_set_accept_handler";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null listener", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "tcp_listener_set_accept_handler";
      v10 = "%{public}s called with null listener";
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
          v19 = "tcp_listener_set_accept_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          return;
        }

        goto LABEL_39;
      }

      if (!v13)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "tcp_listener_set_accept_handler";
      v10 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "tcp_listener_set_accept_handler";
      v10 = "%{public}s called with null listener, backtrace limit exceeded";
    }

LABEL_37:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_38;
  }

  if (a2)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 40) != a2)
    {
      v4 = _Block_copy(a2);
      v5 = *(a1 + 40);
      if (v5)
      {
        _Block_release(v5);
      }

      *(a1 + 40) = v4;
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "tcp_listener_set_accept_handler";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null acceptblk", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "tcp_listener_set_accept_handler";
    v10 = "%{public}s called with null acceptblk";
    goto LABEL_37;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "tcp_listener_set_accept_handler";
    v10 = "%{public}s called with null acceptblk, backtrace limit exceeded";
    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "tcp_listener_set_accept_handler";
    v10 = "%{public}s called with null acceptblk, no backtrace";
    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "tcp_listener_set_accept_handler";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null acceptblk, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
LABEL_39:
    free(v7);
  }
}

void tcp_listener_set_accept_handler_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v20 = "tcp_listener_set_accept_handler_f";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null listener", buf, 12);
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, &v18, &v17))
    {
      goto LABEL_37;
    }

    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "tcp_listener_set_accept_handler_f";
      v10 = "%{public}s called with null listener";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v18;
      v13 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v20 = "tcp_listener_set_accept_handler_f";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v7)
        {
          return;
        }

LABEL_38:
        free(v7);
        return;
      }

      if (!v13)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "tcp_listener_set_accept_handler_f";
      v10 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "tcp_listener_set_accept_handler_f";
      v10 = "%{public}s called with null listener, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_37;
  }

  if (a3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __tcp_listener_set_accept_handler_f_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_3_37779;
    aBlock[4] = a3;
    aBlock[5] = a2;
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 40) != aBlock)
    {
      v4 = _Block_copy(aBlock);
      v5 = *(a1 + 40);
      if (v5)
      {
        _Block_release(v5);
      }

      *(a1 + 40) = v4;
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v20 = "tcp_listener_set_accept_handler_f";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null acceptfnc", buf, 12);
  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v7, &v18, &v17))
  {
    goto LABEL_37;
  }

  if (v18 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "tcp_listener_set_accept_handler_f";
    v10 = "%{public}s called with null acceptfnc";
    goto LABEL_36;
  }

  if (v17 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "tcp_listener_set_accept_handler_f";
    v10 = "%{public}s called with null acceptfnc, backtrace limit exceeded";
    goto LABEL_36;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v18;
  v15 = os_log_type_enabled(v8, v18);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "tcp_listener_set_accept_handler_f";
    v10 = "%{public}s called with null acceptfnc, no backtrace";
    goto LABEL_36;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "tcp_listener_set_accept_handler_f";
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null acceptfnc, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_38;
  }
}

void tcp_listener_set_error_handler(uint64_t a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "tcp_listener_set_error_handler";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null listener", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "tcp_listener_set_error_handler";
      v10 = "%{public}s called with null listener";
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
          v19 = "tcp_listener_set_error_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          return;
        }

        goto LABEL_39;
      }

      if (!v13)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "tcp_listener_set_error_handler";
      v10 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "tcp_listener_set_error_handler";
      v10 = "%{public}s called with null listener, backtrace limit exceeded";
    }

LABEL_37:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_38;
  }

  if (a2)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 48) != a2)
    {
      v4 = _Block_copy(a2);
      v5 = *(a1 + 48);
      if (v5)
      {
        _Block_release(v5);
      }

      *(a1 + 48) = v4;
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "tcp_listener_set_error_handler";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "tcp_listener_set_error_handler";
    v10 = "%{public}s called with null handler";
    goto LABEL_37;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "tcp_listener_set_error_handler";
    v10 = "%{public}s called with null handler, backtrace limit exceeded";
    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_38;
    }

    *buf = 136446210;
    v19 = "tcp_listener_set_error_handler";
    v10 = "%{public}s called with null handler, no backtrace";
    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "tcp_listener_set_error_handler";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
LABEL_39:
    free(v7);
  }
}

void tcp_listener_set_error_handler_f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v20 = "tcp_listener_set_error_handler_f";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null listener", buf, 12);
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, &v18, &v17))
    {
      goto LABEL_37;
    }

    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "tcp_listener_set_error_handler_f";
      v10 = "%{public}s called with null listener";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v18;
      v13 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v20 = "tcp_listener_set_error_handler_f";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v7)
        {
          return;
        }

LABEL_38:
        free(v7);
        return;
      }

      if (!v13)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "tcp_listener_set_error_handler_f";
      v10 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "tcp_listener_set_error_handler_f";
      v10 = "%{public}s called with null listener, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_37;
  }

  if (a3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __tcp_listener_set_error_handler_f_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_5_37801;
    aBlock[4] = a3;
    aBlock[5] = a2;
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 48) != aBlock)
    {
      v4 = _Block_copy(aBlock);
      v5 = *(a1 + 48);
      if (v5)
      {
        _Block_release(v5);
      }

      *(a1 + 48) = v4;
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v20 = "tcp_listener_set_error_handler_f";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null handler", buf, 12);
  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v7, &v18, &v17))
  {
    goto LABEL_37;
  }

  if (v18 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "tcp_listener_set_error_handler_f";
    v10 = "%{public}s called with null handler";
    goto LABEL_36;
  }

  if (v17 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "tcp_listener_set_error_handler_f";
    v10 = "%{public}s called with null handler, backtrace limit exceeded";
    goto LABEL_36;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v18;
  v15 = os_log_type_enabled(v8, v18);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "tcp_listener_set_error_handler_f";
    v10 = "%{public}s called with null handler, no backtrace";
    goto LABEL_36;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "tcp_listener_set_error_handler_f";
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_38;
  }
}

uint64_t tcp_listener_set_port(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    v18.ai_flags = 136446210;
    *&v18.ai_family = "tcp_listener_set_port";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null listener", &v18, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, type, &v17))
    {
      goto LABEL_39;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v17 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type[0];
        if (!os_log_type_enabled(v8, type[0]))
        {
          goto LABEL_39;
        }

        v18.ai_flags = 136446210;
        *&v18.ai_family = "tcp_listener_set_port";
        v10 = "%{public}s called with null listener, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type[0];
      v13 = os_log_type_enabled(v8, type[0]);
      if (!backtrace_string)
      {
        if (!v13)
        {
          goto LABEL_39;
        }

        v18.ai_flags = 136446210;
        *&v18.ai_family = "tcp_listener_set_port";
        v10 = "%{public}s called with null listener, no backtrace";
        goto LABEL_38;
      }

      if (v13)
      {
        v18.ai_flags = 136446466;
        *&v18.ai_family = "tcp_listener_set_port";
        LOWORD(v18.ai_protocol) = 2082;
        *(&v18.ai_protocol + 2) = backtrace_string;
        v14 = "%{public}s called with null listener, dumping backtrace:%{public}s";
LABEL_28:
        _os_log_impl(&dword_181A37000, v8, v9, v14, &v18, 0x16u);
      }

LABEL_29:
      free(backtrace_string);
      goto LABEL_39;
    }

    v8 = __nwlog_obj();
    v9 = type[0];
    if (!os_log_type_enabled(v8, type[0]))
    {
      goto LABEL_39;
    }

    v18.ai_flags = 136446210;
    *&v18.ai_family = "tcp_listener_set_port";
    v10 = "%{public}s called with null listener";
LABEL_38:
    _os_log_impl(&dword_181A37000, v8, v9, v10, &v18, 0xCu);
LABEL_39:
    if (v7)
    {
      free(v7);
    }

    return 22;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    v18.ai_flags = 136446210;
    *&v18.ai_family = "tcp_listener_set_port";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null portstr", &v18, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, type, &v17))
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

      v18.ai_flags = 136446210;
      *&v18.ai_family = "tcp_listener_set_port";
      v10 = "%{public}s called with null portstr";
      goto LABEL_38;
    }

    if (v17 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type[0];
      if (!os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_39;
      }

      v18.ai_flags = 136446210;
      *&v18.ai_family = "tcp_listener_set_port";
      v10 = "%{public}s called with null portstr, backtrace limit exceeded";
      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type[0];
    v15 = os_log_type_enabled(v8, type[0]);
    if (backtrace_string)
    {
      if (v15)
      {
        v18.ai_flags = 136446466;
        *&v18.ai_family = "tcp_listener_set_port";
        LOWORD(v18.ai_protocol) = 2082;
        *(&v18.ai_protocol + 2) = backtrace_string;
        v14 = "%{public}s called with null portstr, dumping backtrace:%{public}s";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (!v15)
    {
      goto LABEL_39;
    }

    v18.ai_flags = 136446210;
    *&v18.ai_family = "tcp_listener_set_port";
    v10 = "%{public}s called with null portstr, no backtrace";
    goto LABEL_38;
  }

  if (xpc_dictionary_get_string(*(a1 + 16), "launchd"))
  {
    return 22;
  }

  os_unfair_lock_lock((a1 + 72));
  if (*(a1 + 80) == 1)
  {
    memset(&v18.ai_addrlen, 0, 32);
    v18.ai_flags = 0;
    *&v18.ai_family = 0x100000002;
    v18.ai_protocol = 6;
    *type = 0;
    v5 = getaddrinfo(0, a2, &v18, type);
    if (!v5)
    {
      xpc_dictionary_set_uint64(*(a1 + 16), "port", *(*(*type + 32) + 2));
      if (*type)
      {
        freeaddrinfo(*type);
      }
    }
  }

  else
  {
    v5 = 16;
  }

  os_unfair_lock_unlock((a1 + 72));
  return v5;
}

uint64_t tcp_listener_get_port(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    v2 = *(a1 + 84);
    os_unfair_lock_unlock((a1 + 72));
    return v2;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "tcp_listener_get_port";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null listener", buf, 12);
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
        v14 = "tcp_listener_get_port";
        v8 = "%{public}s called with null listener";
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
          v14 = "tcp_listener_get_port";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "tcp_listener_get_port";
        v8 = "%{public}s called with null listener, no backtrace";
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
        v14 = "tcp_listener_get_port";
        v8 = "%{public}s called with null listener, backtrace limit exceeded";
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

void tcp_listener_set_local_only(uint64_t a1, BOOL a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 80) == 1)
    {
      xpc_dictionary_set_BOOL(*(a1 + 16), "localonly", a2);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v15 = "tcp_listener_set_local_only";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s listener is already running", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "tcp_listener_set_local_only";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null listener", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "tcp_listener_set_local_only";
      v9 = "%{public}s called with null listener";
      goto LABEL_21;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "tcp_listener_set_local_only";
      v9 = "%{public}s called with null listener, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "tcp_listener_set_local_only";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "tcp_listener_set_local_only";
      v9 = "%{public}s called with null listener, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }
}

void tcp_listener_set_tfo(uint64_t a1, BOOL a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 80) == 1)
    {
      xpc_dictionary_set_BOOL(*(a1 + 16), "tfo", a2);
LABEL_19:
      os_unfair_lock_unlock((a1 + 72));
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v24 = "tcp_listener_set_tfo";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s listener is already running", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v4, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v24 = "tcp_listener_set_tfo";
        v7 = "%{public}s listener is already running";
LABEL_15:
        v12 = v5;
        v13 = v6;
LABEL_16:
        _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
        goto LABEL_17;
      }

      if (v21 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v24 = "tcp_listener_set_tfo";
        v7 = "%{public}s listener is already running, backtrace limit exceeded";
        goto LABEL_15;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v24 = "tcp_listener_set_tfo";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s listener is already running, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_17;
      }

      if (v11)
      {
        *buf = 136446210;
        v24 = "tcp_listener_set_tfo";
        v7 = "%{public}s listener is already running, no backtrace";
        v12 = v9;
        v13 = v10;
        goto LABEL_16;
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    goto LABEL_19;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "tcp_listener_set_tfo";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null listener", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v24 = "tcp_listener_set_tfo";
      v18 = "%{public}s called with null listener";
      goto LABEL_36;
    }

    if (v21 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v24 = "tcp_listener_set_tfo";
      v18 = "%{public}s called with null listener, backtrace limit exceeded";
      goto LABEL_36;
    }

    v19 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v20 = os_log_type_enabled(v16, type);
    if (v19)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "tcp_listener_set_tfo";
        v25 = 2082;
        v26 = v19;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
      goto LABEL_37;
    }

    if (v20)
    {
      *buf = 136446210;
      v24 = "tcp_listener_set_tfo";
      v18 = "%{public}s called with null listener, no backtrace";
LABEL_36:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    }
  }

LABEL_37:
  if (v15)
  {
    free(v15);
  }
}

void tcp_listener_enable_coprocessor_interface(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __tcp_listener_enable_coprocessor_interface_block_invoke;
    block[3] = &__block_descriptor_tmp_6_37839;
    block[4] = a1;
    v11 = a2;
    dispatch_sync(v2, block);
    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v15 = "tcp_listener_enable_coprocessor_interface";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null listener", buf, 12);
  v13 = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v4, &v13, &v12))
  {
    if (v13 == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = v13;
      if (!os_log_type_enabled(v5, v13))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v15 = "tcp_listener_enable_coprocessor_interface";
      v7 = "%{public}s called with null listener";
      goto LABEL_17;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = v13;
      if (!os_log_type_enabled(v5, v13))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v15 = "tcp_listener_enable_coprocessor_interface";
      v7 = "%{public}s called with null listener, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = v13;
    v9 = os_log_type_enabled(v5, v13);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        v15 = "tcp_listener_enable_coprocessor_interface";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v9)
    {
      *buf = 136446210;
      v15 = "tcp_listener_enable_coprocessor_interface";
      v7 = "%{public}s called with null listener, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }
}

void __tcp_listener_enable_coprocessor_interface_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 80) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(v1 + 16);

    xpc_dictionary_set_BOOL(v3, "coproc", v2);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v17 = "tcp_listener_enable_coprocessor_interface_block_invoke";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s listener is already running", buf, 12);
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
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v17 = "tcp_listener_enable_coprocessor_interface_block_invoke";
      v7 = "%{public}s listener is already running";
LABEL_16:
      v12 = v5;
      v13 = v6;
LABEL_17:
      _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
      goto LABEL_18;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v17 = "tcp_listener_enable_coprocessor_interface_block_invoke";
      v7 = "%{public}s listener is already running, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v17 = "tcp_listener_enable_coprocessor_interface_block_invoke";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s listener is already running, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v11)
    {
      *buf = 136446210;
      v17 = "tcp_listener_enable_coprocessor_interface_block_invoke";
      v7 = "%{public}s listener is already running, no backtrace";
      v12 = v9;
      v13 = v10;
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }
}

void tcp_listener_set_service(uint64_t a1, const char *a2, const char *a3, const char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "tcp_listener_set_service";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null listener", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "tcp_listener_set_service";
      v13 = "%{public}s called with null listener";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v16 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "tcp_listener_set_service";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v10)
        {
          return;
        }

LABEL_41:
        free(v10);
        return;
      }

      if (!v16)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "tcp_listener_set_service";
      v13 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "tcp_listener_set_service";
      v13 = "%{public}s called with null listener, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_40;
  }

  if (a3)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 80) == 1)
    {
      if (a2)
      {
        xpc_dictionary_set_string(*(a1 + 16), "srvname", a2);
      }

      xpc_dictionary_set_string(*(a1 + 16), "srvtype", a3);
      if (a4)
      {
        xpc_dictionary_set_string(*(a1 + 16), "srvdomain", a4);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v22 = "tcp_listener_set_service";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s listener is already running", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v22 = "tcp_listener_set_service";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null regtype", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v10, &type, &v19))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "tcp_listener_set_service";
    v13 = "%{public}s called with null regtype";
    goto LABEL_39;
  }

  if (v19 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "tcp_listener_set_service";
    v13 = "%{public}s called with null regtype, backtrace limit exceeded";
    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v18 = os_log_type_enabled(v11, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "tcp_listener_set_service";
    v13 = "%{public}s called with null regtype, no backtrace";
    goto LABEL_39;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "tcp_listener_set_service";
    v23 = 2082;
    v24 = v17;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null regtype, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v10)
  {
    goto LABEL_41;
  }
}

void tcp_listener_set_register_p2p(uint64_t a1, BOOL a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 80) == 1)
    {
      xpc_dictionary_set_BOOL(*(a1 + 16), "registerp2p", a2);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v15 = "tcp_listener_set_register_p2p";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s listener is already running", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "tcp_listener_set_register_p2p";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null listener", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "tcp_listener_set_register_p2p";
      v9 = "%{public}s called with null listener";
      goto LABEL_21;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "tcp_listener_set_register_p2p";
      v9 = "%{public}s called with null listener, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "tcp_listener_set_register_p2p";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "tcp_listener_set_register_p2p";
      v9 = "%{public}s called with null listener, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }
}

void tcp_listener_set_interface(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 80) == 1)
    {
      xpc_dictionary_set_string(*(a1 + 16), "interface", a2);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v15 = "tcp_listener_set_interface";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s listener is already running", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "tcp_listener_set_interface";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null listener", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "tcp_listener_set_interface";
      v9 = "%{public}s called with null listener";
      goto LABEL_21;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "tcp_listener_set_interface";
      v9 = "%{public}s called with null listener, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "tcp_listener_set_interface";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "tcp_listener_set_interface";
      v9 = "%{public}s called with null listener, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }
}

void *tcp_listener_retain(void *object)
{
  if (object)
  {
    return os_retain(object);
  }

  return object;
}

void tcp_listener_release(void *object)
{
  if (object)
  {
    os_release(object);
  }
}

void tcp_connection_retain(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    os_retain(a1);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "tcp_connection_retain";
  v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null connection", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v1, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "tcp_connection_retain";
      v4 = "%{public}s called with null connection";
LABEL_16:
      v9 = v2;
      v10 = v3;
LABEL_17:
      _os_log_impl(&dword_181A37000, v9, v10, v4, buf, 0xCu);
      goto LABEL_18;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "tcp_connection_retain";
      v4 = "%{public}s called with null connection, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    v8 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v14 = "tcp_connection_retain";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v8)
    {
      *buf = 136446210;
      v14 = "tcp_connection_retain";
      v4 = "%{public}s called with null connection, no backtrace";
      v9 = v6;
      v10 = v7;
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v1)
  {
    free(v1);
  }
}

void tcp_connection_release(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    os_release(a1);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v14 = "tcp_connection_release";
  v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null connection", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v1, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "tcp_connection_release";
      v4 = "%{public}s called with null connection";
LABEL_16:
      v9 = v2;
      v10 = v3;
LABEL_17:
      _os_log_impl(&dword_181A37000, v9, v10, v4, buf, 0xCu);
      goto LABEL_18;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "tcp_connection_release";
      v4 = "%{public}s called with null connection, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    v8 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v14 = "tcp_connection_release";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v8)
    {
      *buf = 136446210;
      v14 = "tcp_connection_release";
      v4 = "%{public}s called with null connection, no backtrace";
      v9 = v6;
      v10 = v7;
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v1)
  {
    free(v1);
  }
}

void sub_18267ACF4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_authentication_challenge;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

NWConcrete_nw_authentication_protection_space *nw_authentication_protection_space_create(int a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [NWConcrete_nw_authentication_protection_space alloc];
  if (!result)
  {
    return result;
  }

  v13.receiver = result;
  v13.super_class = NWConcrete_nw_authentication_protection_space;
  result = objc_msgSendSuper2(&v13, sel_init);
  if (result)
  {
    result->type = a1;
    return result;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v15 = "[NWConcrete_nw_authentication_protection_space initWithType:]";
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
        v15 = "[NWConcrete_nw_authentication_protection_space initWithType:]";
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
          v15 = "[NWConcrete_nw_authentication_protection_space initWithType:]";
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
        v15 = "[NWConcrete_nw_authentication_protection_space initWithType:]";
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
        v15 = "[NWConcrete_nw_authentication_protection_space initWithType:]";
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

void nw_authentication_protection_space_set_is_proxy(void *a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[28] = v3[28] & 0xFE | a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_protection_space_set_is_proxy";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protection_space", buf, 12);

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
        v15 = "nw_authentication_protection_space_set_is_proxy";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protection_space", buf, 0xCu);
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
          v15 = "nw_authentication_protection_space_set_is_proxy";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_protection_space_set_is_proxy";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_protection_space_set_is_proxy";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_authentication_protection_space_get_is_proxy(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[28] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_protection_space_get_is_proxy";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protection_space", buf, 12);

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
        v15 = "nw_authentication_protection_space_get_is_proxy";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protection_space", buf, 0xCu);
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
          v15 = "nw_authentication_protection_space_get_is_proxy";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_protection_space_get_is_proxy";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_protection_space_get_is_proxy";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
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

void nw_authentication_protection_space_set_endpoint(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    objc_storeStrong(v3 + 1, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_protection_space_set_endpoint";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protection_space", buf, 12);

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
        v16 = "nw_authentication_protection_space_set_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protection_space", buf, 0xCu);
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
          v16 = "nw_authentication_protection_space_set_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_protection_space_set_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_protection_space_set_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

id nw_authentication_protection_space_copy_endpoint(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[1];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_protection_space_copy_endpoint";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protection_space", buf, 12);

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
        v16 = "nw_authentication_protection_space_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protection_space", buf, 0xCu);
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
          v16 = "nw_authentication_protection_space_copy_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_protection_space_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_protection_space_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
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

void nw_authentication_protection_space_set_realm(void *a1, const char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_authentication_protection_space_set_realm";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protection_space", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v8, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "nw_authentication_protection_space_set_realm";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protection_space", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_authentication_protection_space_set_realm";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_authentication_protection_space_set_realm";
          _os_log_impl(&dword_181A37000, v9, v15, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "nw_authentication_protection_space_set_realm";
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_7;
  }

  v5 = v3[2];
  if (v5)
  {
    free(v5);
    v4[2] = 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  v6 = strdup(a2);
  if (v6)
  {
LABEL_6:
    v4[2] = v6;
LABEL_7:

    return;
  }

  v11 = __nwlog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  *buf = 136446210;
  v21 = "strict_strdup";
  v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strdup() failed", buf, 12);

  if (!__nwlog_should_abort(v13))
  {
    free(v13);
    v6 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t nw_authentication_protection_space_get_type(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[6];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_authentication_protection_space_get_type";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protection_space", buf, 12);

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
        v15 = "nw_authentication_protection_space_get_type";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protection_space", buf, 0xCu);
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
          v15 = "nw_authentication_protection_space_get_type";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_authentication_protection_space_get_type";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_authentication_protection_space_get_type";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
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

void nw_authentication_protection_space_set_proxy_origin_is_cleartext(void *a1, int a2)
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

    v3[28] = v3[28] & 0xFD | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_authentication_protection_space_set_proxy_origin_is_cleartext";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protection_space", buf, 12);

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
        v16 = "nw_authentication_protection_space_set_proxy_origin_is_cleartext";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protection_space", buf, 0xCu);
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
          v16 = "nw_authentication_protection_space_set_proxy_origin_is_cleartext";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_authentication_protection_space_set_proxy_origin_is_cleartext";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_authentication_protection_space_set_proxy_origin_is_cleartext";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_authentication_challenge_get_type(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_authentication_challenge_get_type";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null challenge", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_get_type";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null challenge", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_get_type";
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null challenge, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v14 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_get_type";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null challenge, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v15)
    {
      *buf = 136446466;
      v24 = "nw_authentication_challenge_get_type";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null challenge, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v3 = v1[3];
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_authentication_challenge_get_type";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null challenge->protection_space_array", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_get_type";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null challenge->protection_space_array", buf, 0xCu);
      }

LABEL_39:

LABEL_40:
      if (v8)
      {
        free(v8);
      }

      goto LABEL_42;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_get_type";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null challenge->protection_space_array, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v24 = "nw_authentication_challenge_get_type";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null challenge->protection_space_array, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v17)
    {
      *buf = 136446466;
      v24 = "nw_authentication_challenge_get_type";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null challenge->protection_space_array, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_27:

    free(backtrace_string);
    goto LABEL_40;
  }

  if (!_nw_array_get_count(v3))
  {
LABEL_42:
    v6 = 0;
    goto LABEL_43;
  }

  v4 = v2[3];
  if (v4)
  {
    v5 = _nw_array_get_object_at_index(v4, v2[4]);
  }

  else
  {
    v5 = 0;
  }

  v6 = nw_authentication_protection_space_get_type(v5);

LABEL_43:
  return v6;
}