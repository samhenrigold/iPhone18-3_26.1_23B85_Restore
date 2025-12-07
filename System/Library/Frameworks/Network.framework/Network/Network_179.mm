uint64_t ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 32) + 48);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v7;
  *v7 = v5;
  *(a2 + 40) = 0;
  *v6 = 0;
  is_metadata_complete = nw_frame_is_metadata_complete(a2);
  v9 = is_metadata_complete;
  if (*(a1 + 48) == 1)
  {
    v9 = (*(*(a1 + 32) + 40) == 0) | is_metadata_complete;
  }

  v10 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v10)
  {
    do
    {
      v11 = *v10;
      v12 = v10[6];
      v13 = *v10;
      if (v12)
      {
        os_release(v12);
        v10[6] = 0;
        v13 = *v10;
      }

      v14 = v10[1];
      v15 = v13 + 1;
      if (!v13)
      {
        v15 = (a2 + 72);
      }

      *v15 = v14;
      *v14 = v13;
      if (v10 != (a2 + 120))
      {
        free(v10);
      }

      v10 = v11;
    }

    while (v11);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = a2 + 64;
  v16 = *(a2 + 168);
  if (v16)
  {
    os_release(v16);
  }

  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  nw_frame_set_metadata(a2, *(*(a1 + 40) + 160), 1, v9 & 1);
  v17 = *(a1 + 40);
  v18 = *(v17 + 80);
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *v18 = a2;
  *(v17 + 80) = v6;
  return 1;
}

uint64_t ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 32) + 48);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v7;
  *v7 = v5;
  *(a2 + 40) = 0;
  *v6 = 0;
  is_metadata_complete = nw_frame_is_metadata_complete(a2);
  v9 = *(*(a1 + 32) + 40);
  v10 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v10)
  {
    do
    {
      v11 = *v10;
      v12 = v10[6];
      v13 = *v10;
      if (v12)
      {
        os_release(v12);
        v10[6] = 0;
        v13 = *v10;
      }

      v14 = v10[1];
      v15 = v13 + 1;
      if (!v13)
      {
        v15 = (a2 + 72);
      }

      *v15 = v14;
      *v14 = v13;
      if (v10 != (a2 + 120))
      {
        free(v10);
      }

      v10 = v11;
    }

    while (v11);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = a2 + 64;
  v16 = *(a2 + 168);
  if (v16)
  {
    os_release(v16);
  }

  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  nw_frame_set_metadata(a2, *(*(a1 + 40) + 160), 1, (v9 == 0) | is_metadata_complete & 1);
  v17 = *(a1 + 40);
  v18 = *(v17 + 80);
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *v18 = a2;
  *(v17 + 80) = v6;
  return 1;
}

void nw_webtransport_http3_handle_input(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_http3_handle_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 496;
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(a1 + 476) == 4)
    {
      *buf = 0;
      *&buf[8] = buf;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v2 = nw_protocol_copy_http_definition_http_definition;
      v3 = *(a1 + 448);
      while (nw_protocol_get_input_frames(*(a1 + 32), a1, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, buf))
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v17 = ___ZL34nw_webtransport_http3_handle_inputP23nw_webtransport_session_block_invoke;
        v18 = &__block_descriptor_tmp_36_36505;
        v19 = buf;
        v20 = v2;
        v21 = v3;
        v4 = *buf;
        do
        {
          if (!v4)
          {
            break;
          }

          v5 = *(v4 + 32);
          v6 = v17(v16);
          v4 = v5;
        }

        while ((v6 & 1) != 0);
      }
    }

    return;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_http3_handle_input";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v8, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_handle_input";
      v11 = "%{public}s called with null webtransport_session";
      goto LABEL_28;
    }

    if (v22 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_handle_input";
      v11 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_28;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v15 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v15)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_http3_handle_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_29;
    }

    if (v15)
    {
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_handle_input";
      v11 = "%{public}s called with null webtransport_session, no backtrace";
LABEL_28:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

LABEL_29:
  if (v8)
  {
    free(v8);
  }
}

uint64_t ___ZL34nw_webtransport_http3_handle_inputP23nw_webtransport_session_block_invoke(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = (a1[4] + 8);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v7;
  *v7 = v5;
  *(a2 + 40) = 0;
  *v6 = 0;
  v8 = nw_frame_copy_metadata_for_protocol(a2, a1[5]);
  if (v8 && nw_http_metadata_is_capsule(v8))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446210;
      v14 = "nw_webtransport_http3_handle_input_block_invoke";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Got a capsule on webtransport session", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  v10 = a1[6];
  if (!v10)
  {
LABEL_9:
    nw_frame_finalize(a2);
    return 1;
  }

  v11 = *(v10 + 80);
  *(a2 + 32) = 0;
  *(a2 + 40) = v11;
  *v11 = a2;
  *(v10 + 80) = v6;
  return 1;
}

uint64_t ___ZL48nw_webtransport_session_get_underlying_stream_idP23nw_webtransport_sessionP11nw_protocolS2__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  is_http_transaction = nw_protocol_metadata_is_http_transaction(a3);
  if (is_http_transaction)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_http_transaction_metadata_get_stream_id(a3);
  }

  return is_http_transaction ^ 1u;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__60(uint64_t result)
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

void ___ZL48nw_webtransport_session_setup_for_http_messagingP23nw_webtransport_sessionP11nw_protocolS2__block_invoke(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_http_messaging(a2))
    {
      if (a2)
      {
        v4 = os_retain(a2);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1[5] + 8);
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

      *(v5 + 40) = v4;
      *(v5 + 48) = v6 | 1;
    }
  }

  else if (nw_protocol_options_get_protocol_handle(a2) == a1[6])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void nw_webtransport_http3_stream_fix_http_parameters(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_webtransport_http3_stream_fix_http_parameters";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v16, &type, &v33))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v36 = "nw_webtransport_http3_stream_fix_http_parameters";
      v19 = "%{public}s called with null webtransport_session";
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v22 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v36 = "nw_webtransport_http3_stream_fix_http_parameters";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_57:
        if (!v16)
        {
          return;
        }

LABEL_58:
        free(v16);
        return;
      }

      if (!v22)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v36 = "nw_webtransport_http3_stream_fix_http_parameters";
      v19 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v36 = "nw_webtransport_http3_stream_fix_http_parameters";
      v19 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

LABEL_56:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    goto LABEL_57;
  }

  if (a2)
  {
    v4 = *(a2 + 144);
    if (*(a1 + 32))
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if ((*(a1 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 492);
          *buf = 136446978;
          v36 = "nw_webtransport_http3_stream_fix_http_parameters";
          v37 = 2082;
          v38 = (a1 + 496);
          v39 = 2080;
          v40 = " ";
          v41 = 1024;
          v42 = v7;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> webtransport stream not fully setup, cannot fix parameters", buf, 0x26u);
        }
      }
    }

    else
    {
      v8 = v4;
      v9 = _nw_parameters_copy_protocol_options_with_level();

      if (v9)
      {
        v10 = *(a2 + 276);
        if ((v10 & 8) == 0)
        {
          v11 = v10 << 31 >> 31;
          if ((v10 & 4) != 0)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          v13 = v11 & v12;
          if ((v10 & 0x10) == 0 && gLogDatapath == 1)
          {
            v27 = v11 & v12;
            v28 = __nwlog_obj();
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
            v13 = v27;
            if (v29)
            {
              v30 = *(a2 + 88);
              if (v30)
              {
                v31 = *(v30 + 492);
              }

              else
              {
                v31 = -1;
              }

              v32 = *(a2 + 64);
              *buf = 136447746;
              v36 = "nw_webtransport_http3_stream_fix_http_parameters";
              v37 = 2082;
              v38 = (a2 + 192);
              v39 = 2080;
              v40 = " ";
              v41 = 1024;
              v42 = v31;
              v43 = 2048;
              v44 = v32;
              v45 = 2048;
              v46 = v9;
              v47 = 1024;
              v48 = v27;
              _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Adjusting HTTP options for webtransport: %p with mode: %u", buf, 0x40u);
              v13 = v27;
            }
          }

          nw_http3_set_stream_mode(v9, v13);
          nw_http3_set_webtransport_session_id(v9, *(*(a2 + 88) + 168));
          LOBYTE(v10) = *(a2 + 276);
        }

        *(a2 + 276) = v10 | 0x40;
        os_release(v9);
      }

      else
      {
        if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
        {
          v25 = __nwlog_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(a1 + 492);
            *buf = 136446978;
            v36 = "nw_webtransport_http3_stream_fix_http_parameters";
            v37 = 2082;
            v38 = (a1 + 496);
            v39 = 2080;
            v40 = " ";
            v41 = 1024;
            v42 = v26;
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL, failing", buf, 0x26u);
          }
        }

        v14 = *(a2 + 88);
        nw_protocol_error(*(a2 + 48), a2);
        nw_protocol_disconnect(a2, v14);
      }
    }

    return;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_webtransport_http3_stream_fix_http_parameters";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (!__nwlog_fault(v16, &type, &v33))
  {
    goto LABEL_57;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v36 = "nw_webtransport_http3_stream_fix_http_parameters";
    v19 = "%{public}s called with null webtransport_stream";
    goto LABEL_56;
  }

  if (v33 != 1)
  {
    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v36 = "nw_webtransport_http3_stream_fix_http_parameters";
    v19 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_56;
  }

  v23 = __nw_create_backtrace_string();
  v17 = __nwlog_obj();
  v18 = type;
  v24 = os_log_type_enabled(v17, type);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v36 = "nw_webtransport_http3_stream_fix_http_parameters";
    v19 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_56;
  }

  if (v24)
  {
    *buf = 136446466;
    v36 = "nw_webtransport_http3_stream_fix_http_parameters";
    v37 = 2082;
    v38 = v23;
    _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v16)
  {
    goto LABEL_58;
  }
}

uint64_t ___ZL50nw_webtransport_http3_stream_reconfigure_and_startP22nw_webtransport_streamb_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);

    return nw_protocol_connect(v3, v2);
  }

  return result;
}

uint64_t ___ZL46nw_webtransport_session_handle_connect_requestP23nw_webtransport_sessionP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  is_http_transaction = nw_protocol_metadata_is_http_transaction(a3);
  if (is_http_transaction)
  {
    nw_http_transaction_metadata_set_error_code(a3, *(a1 + 32));
  }

  return is_http_transaction ^ 1u;
}

uint64_t ___ZL37nw_webtransport_session_send_metadataP23nw_webtransport_sessionP20nw_protocol_metadataP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = (*(a1 + 40) + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v5)
    {
      v4 = (v5 + 40);
    }

    *v4 = v6;
    *v6 = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v7 = *(a1 + 48);
    if ((!v7 || (*(v7 + 580) & 2) == 0) && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 48);
        v10 = (v9 + 496);
        v11 = "";
        v12 = v9 == 0;
        v13 = *(v9 + 492);
        if (v12)
        {
          v10 = "";
        }

        v16 = "nw_webtransport_session_send_metadata_block_invoke";
        v17 = 2082;
        v15 = 136446978;
        if (!v12)
        {
          v11 = " ";
        }

        v18 = v10;
        v19 = 2080;
        v20 = v11;
        v21 = 1024;
        v22 = v13;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Dropping unneeded output frame", &v15, 0x26u);
      }
    }
  }

  else
  {
    nw_frame_collapse(a2);
    nw_frame_set_metadata(a2, *(a1 + 56), 0, 0);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

void ___ZL47nw_protocol_webtransport_http3_stream_callbacksv_block_invoke()
{
  qword_1EA842348 = nw_protocol_default_replace_input_handler;
  qword_1EA842440 = nw_protocol_default_input_flush;
  qword_1EA8423A0 = nw_protocol_default_link_state;
  qword_1EA8423B8 = nw_protocol_default_get_local;
  qword_1EA8423B0 = nw_protocol_default_get_path;
  qword_1EA8423E0 = nw_protocol_default_updated_path;
  qword_1EA842400 = nw_protocol_default_get_output_local;
  qword_1EA842408 = nw_protocol_default_get_output_interface;
  qword_1EA842438 = nw_protocol_default_reset;
  qword_1EA8423E8 = nw_protocol_default_supports_external_data;
  qword_1EA842410 = nw_protocol_default_waiting_for_output;
  qword_1EA8423C8 = nw_protocol_default_register_notification;
  qword_1EA8423D0 = nw_protocol_default_unregister_notification;
  nw_protocol_webtransport_http3_stream_callbacks(void)::protocol_callbacks = nw_protocol_webtransport_stream_add_input_handler;
  qword_1EA8423A8 = nw_protocol_webtransport_stream_get_parameters;
  qword_1EA8423C0 = nw_protocol_webtransport_stream_get_remote_endpoint;
  qword_1EA842358 = nw_protocol_webtransport_stream_disconnect;
  qword_1EA842368 = nw_protocol_webtransport_stream_disconnected;
  qword_1EA842370 = nw_protocol_webtransport_stream_error;
  qword_1EA842378 = nw_protocol_webtransport_stream_input_available;
  qword_1EA842380 = nw_protocol_webtransport_stream_output_available;
  qword_1EA8423D8 = nw_protocol_webtransport_stream_notify;
  qword_1EA842418 = nw_protocol_webtransport_stream_copy_info;
  qword_1EA842420 = nw_protocol_webtransport_stream_add_listen_handler;
  qword_1EA842428 = nw_protocol_webtransport_stream_remove_listen_handler;
  qword_1EA842430 = nw_protocol_webtransport_stream_get_message_properties;
  qword_1EA842340 = nw_protocol_webtransport_http3_stream_remove_input_handler;
  qword_1EA842350 = nw_protocol_webtransport_http3_stream_connect;
  qword_1EA842360 = nw_protocol_webtransport_http3_stream_connected;
  qword_1EA842388 = nw_protocol_webtransport_http3_stream_get_input_frames;
  qword_1EA842390 = nw_protocol_webtransport_http3_stream_get_output_frames;
  qword_1EA842398 = nw_protocol_webtransport_http3_stream_finalize_output_frames;
  qword_1EA8423F0 = nw_protocol_webtransport_http3_stream_input_finished;
  qword_1EA8423F8 = nw_protocol_webtransport_http3_stream_output_finished;
}

void nw_protocol_webtransport_http3_stream_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_output_finished";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v4, &type, &v19))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_http3_stream_output_finished";
      v7 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v15 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v22 = "nw_protocol_webtransport_http3_stream_output_finished";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v4)
        {
          return;
        }

LABEL_43:
        free(v4);
        return;
      }

      if (!v15)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_http3_stream_output_finished";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_http3_stream_output_finished";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_42;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v9 = a1;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      a1 = v9;
      if (v11)
      {
        v12 = *(handle + 11);
        if (v12)
        {
          v13 = *(v12 + 492);
        }

        else
        {
          v13 = -1;
        }

        v18 = *(handle + 8);
        *buf = 136447234;
        v22 = "nw_protocol_webtransport_http3_stream_output_finished";
        v23 = 2082;
        v24 = handle + 192;
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v13;
        v29 = 2048;
        v30 = v18;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        a1 = v9;
      }
    }

    if (*(handle + 47) == 2 && (handle[276] & 8) == 0)
    {
      nw_protocol_output_finished(*(handle + 4), a1);
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_http3_stream_output_finished";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v4, &type, &v19))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_output_finished";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_41;
  }

  if (v19 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_output_finished";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_41;
  }

  v16 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v17 = os_log_type_enabled(v5, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_output_finished";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_41;
  }

  if (v17)
  {
    *buf = 136446466;
    v22 = "nw_protocol_webtransport_http3_stream_output_finished";
    v23 = 2082;
    v24 = v16;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v4)
  {
    goto LABEL_43;
  }
}

void nw_protocol_webtransport_http3_stream_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_input_finished";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v4, &type, &v19))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_http3_stream_input_finished";
      v7 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v15 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v22 = "nw_protocol_webtransport_http3_stream_input_finished";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v4)
        {
          return;
        }

LABEL_43:
        free(v4);
        return;
      }

      if (!v15)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_http3_stream_input_finished";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_http3_stream_input_finished";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_42;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v9 = a1;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      a1 = v9;
      if (v11)
      {
        v12 = *(handle + 11);
        if (v12)
        {
          v13 = *(v12 + 492);
        }

        else
        {
          v13 = -1;
        }

        v18 = *(handle + 8);
        *buf = 136447234;
        v22 = "nw_protocol_webtransport_http3_stream_input_finished";
        v23 = 2082;
        v24 = handle + 192;
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v13;
        v29 = 2048;
        v30 = v18;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        a1 = v9;
      }
    }

    if (*(handle + 46) == 2 && (handle[276] & 8) == 0)
    {
      nw_protocol_input_finished(*(handle + 6), a1);
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_http3_stream_input_finished";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v4, &type, &v19))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_41;
  }

  if (v19 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_41;
  }

  v16 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v17 = os_log_type_enabled(v5, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_input_finished";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_41;
  }

  if (v17)
  {
    *buf = 136446466;
    v22 = "nw_protocol_webtransport_http3_stream_input_finished";
    v23 = 2082;
    v24 = v16;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v4)
  {
    goto LABEL_43;
  }
}

uint64_t nw_protocol_webtransport_http3_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
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

          v22 = handle[8];
          *buf = 136447234;
          v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
          v31 = 2082;
          v32 = (handle + 24);
          v33 = 2080;
          v34 = " ";
          v35 = 1024;
          v36 = v17;
          v37 = 2048;
          v38 = v22;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      if ((*(handle + 276) & 8) == 0)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 0x40000000;
        v24 = ___ZL60nw_protocol_webtransport_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
        v25 = &__block_descriptor_tmp_58_36697;
        v26 = handle;
        tqh_first = a2->tqh_first;
        do
        {
          if (!tqh_first)
          {
            break;
          }

          v6 = *(tqh_first + 4);
          v7 = (v24)(v23);
          tqh_first = v6;
        }

        while ((v7 & 1) != 0);
      }

      return nw_protocol_common_finalize_output_frames(a1, a2);
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
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
        v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v13 = "%{public}s called with null webtransport_stream";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v27 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v13 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v21 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v13 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
      v31 = 2082;
      v32 = backtrace_string;
      v20 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v10, &type, &v27))
  {
    goto LABEL_43;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v27 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v13 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v13 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v19)
    {
      *buf = 136446466;
      v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
      v31 = 2082;
      v32 = backtrace_string;
      v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_30:
      _os_log_impl(&dword_181A37000, v11, v12, v20, buf, 0x16u);
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_43;
  }

  v11 = __nwlog_obj();
  v12 = type;
  if (os_log_type_enabled(v11, type))
  {
    *buf = 136446210;
    v30 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
    v13 = "%{public}s called with null protocol";
LABEL_42:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
  }

LABEL_43:
  if (v10)
  {
    free(v10);
  }

  return 0;
}

uint64_t ___ZL60nw_protocol_webtransport_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  if (nw_frame_is_metadata_complete(a2))
  {
    *(*(a1 + 32) + 188) = 3;
  }

  return 1;
}

uint64_t nw_protocol_webtransport_http3_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null protocol";
      goto LABEL_51;
    }

    if (v31 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v26 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (!v26)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_51;
    }

    if (!v26)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v35 = 2082;
    v36 = backtrace_string;
    v27 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v11, v12, v27, buf, 0x16u);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null webtransport_stream";
      goto LABEL_51;
    }

    if (v31 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v28 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (!v28)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_51;
    }

    if (!v28)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v35 = 2082;
    v36 = backtrace_string;
    v27 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  if (!a6)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null return_array", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null return_array";
      goto LABEL_51;
    }

    if (v31 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v13 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v29 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (v29)
      {
        *buf = 136446466;
        v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
        v35 = 2082;
        v36 = backtrace_string;
        v27 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_35;
      }

LABEL_36:
      free(backtrace_string);
      goto LABEL_52;
    }

    if (!v29)
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v13 = "%{public}s called with null return_array, no backtrace";
LABEL_51:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
LABEL_52:
    if (v10)
    {
      free(v10);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = a3;
    v21 = __nwlog_obj();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    a3 = v19;
    a4 = v18;
    a5 = v17;
    a6 = v16;
    if (v22)
    {
      v23 = handle[11];
      if (v23)
      {
        v24 = *(v23 + 492);
      }

      else
      {
        v24 = -1;
      }

      v30 = handle[8];
      *buf = 136447746;
      v34 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v35 = 2082;
      v36 = (handle + 24);
      v37 = 2080;
      v38 = " ";
      v39 = 1024;
      v40 = v24;
      v41 = 2048;
      v42 = v30;
      v43 = 2048;
      v44 = a1;
      v45 = 2048;
      v46 = a2;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called with protocol %p and input protocol %p", buf, 0x44u);
      a6 = v16;
      a5 = v17;
      a4 = v18;
      a3 = v19;
    }
  }

  if (*(handle + 47) == 2)
  {
    return nw_protocol_get_output_frames_quiet(a1->output_handler, a1, a3, a4, a5, a6);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_http3_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v16, &type, &v41))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null protocol";
      goto LABEL_60;
    }

    if (v41 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v31 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (!v31)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_60;
    }

    if (!v31)
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v45 = 2082;
    v46 = backtrace_string;
    v32 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_44:
    _os_log_impl(&dword_181A37000, v17, v18, v32, buf, 0x16u);
    goto LABEL_45;
  }

  handle = a1->handle;
  if (!handle)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v16, &type, &v41))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null webtransport_stream";
      goto LABEL_60;
    }

    if (v41 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v33 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (!v33)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_60;
    }

    if (!v33)
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v45 = 2082;
    v46 = backtrace_string;
    v32 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_44;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v16, &type, &v41))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null input_protocol";
      goto LABEL_60;
    }

    if (v41 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v19 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v34 = os_log_type_enabled(v17, type);
    if (backtrace_string)
    {
      if (v34)
      {
        *buf = 136446466;
        v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
        v45 = 2082;
        v46 = backtrace_string;
        v32 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_44;
      }

LABEL_45:
      free(backtrace_string);
      goto LABEL_61;
    }

    if (!v34)
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v19 = "%{public}s called with null input_protocol, no backtrace";
LABEL_60:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
LABEL_61:
    if (v16)
    {
      free(v16);
    }

    return 0;
  }

  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v22 = a5;
    v23 = a4;
    v24 = a3;
    v26 = __nwlog_obj();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    a3 = v24;
    a4 = v23;
    a5 = v22;
    if (v27)
    {
      v28 = *(handle + 11);
      if (v28)
      {
        v29 = *(v28 + 492);
      }

      else
      {
        v29 = -1;
      }

      v35 = *(handle + 8);
      *buf = 136447746;
      v44 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v45 = 2082;
      v46 = handle + 192;
      v47 = 2080;
      v48 = " ";
      v49 = 1024;
      v50 = v29;
      v51 = 2048;
      v52 = v35;
      v53 = 2048;
      v54 = a1;
      v55 = 2048;
      v56 = a2;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called with protocol %p and input protocol %p", buf, 0x44u);
      a5 = v22;
      a4 = v23;
      a3 = v24;
    }
  }

  if (*(handle + 46) != 2)
  {
    return 0;
  }

  if ((handle[276] & 8) != 0)
  {
    nw_webtransport_http3_handle_input(*(handle + 11));
    v10 = (handle + 72);
    frame_count = nw_frame_array_get_frame_count(handle + 9, 1, 0);
    if (!frame_count)
    {
      return frame_count;
    }

    if (*v10)
    {
      tqh_last = a6->tqh_last;
      *tqh_last = *v10;
      *(*(handle + 9) + 40) = tqh_last;
      a6->tqh_last = *(handle + 10);
      *(handle + 9) = 0;
      *(handle + 10) = v10;
    }
  }

  else
  {
    frame_count = nw_protocol_get_input_frames_quiet(a1->output_handler, a1, a3, a4, a5, a6);
    if (!frame_count)
    {
      return frame_count;
    }
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 0x40000000;
  v38 = ___ZL54nw_protocol_webtransport_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
  v39 = &__block_descriptor_tmp_57_36730;
  v40 = handle;
  tqh_first = a6->tqh_first;
  do
  {
    if (!tqh_first)
    {
      break;
    }

    v13 = *(tqh_first + 4);
    v14 = (v38)(v37);
    tqh_first = v13;
  }

  while ((v14 & 1) != 0);
  return frame_count;
}

uint64_t ___ZL54nw_protocol_webtransport_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  is_metadata_complete = nw_frame_is_metadata_complete(a2);
  v5 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = v5[6];
      v8 = *v5;
      if (v7)
      {
        os_release(v7);
        v5[6] = 0;
        v8 = *v5;
      }

      v9 = v5[1];
      v10 = v8 + 1;
      if (!v8)
      {
        v10 = (a2 + 72);
      }

      *v10 = v9;
      *v9 = v8;
      if (v5 != (a2 + 120))
      {
        free(v5);
      }

      v5 = v6;
    }

    while (v6);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = a2 + 64;
  v11 = *(a2 + 168);
  if (v11)
  {
    os_release(v11);
  }

  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  nw_frame_set_metadata(a2, *(*(a1 + 32) + 160), 1, is_metadata_complete);
  if (is_metadata_complete)
  {
    v12 = *(a1 + 32);
    if ((*(v12 + 276) & 8) == 0)
    {
      *(v12 + 184) = 3;
    }
  }

  return 1;
}

void nw_protocol_webtransport_http3_stream_connected(nw_protocol *a1, nw_protocol *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_protocol_webtransport_http3_stream_connected";
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v104[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v49, type, v104))
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v52 = "%{public}s called with null protocol";
      goto LABEL_120;
    }

    if (v104[0] != OS_LOG_TYPE_INFO)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v52 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_120;
    }

    backtrace_string = __nw_create_backtrace_string();
    v50 = __nwlog_obj();
    v51 = type[0];
    v58 = os_log_type_enabled(v50, type[0]);
    if (!backtrace_string)
    {
      if (!v58)
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v52 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_120;
    }

    if (v58)
    {
      *buf = 136446466;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v111 = 2082;
      v112 = backtrace_string;
      _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_121:
    if (!v49)
    {
      return;
    }

    goto LABEL_122;
  }

  handle = a1->handle;
  if (!handle)
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_protocol_webtransport_http3_stream_connected";
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v104[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v49, type, v104))
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v52 = "%{public}s called with null webtransport_stream";
      goto LABEL_120;
    }

    if (v104[0] != OS_LOG_TYPE_INFO)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v52 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_120;
    }

    v59 = __nw_create_backtrace_string();
    v50 = __nwlog_obj();
    v51 = type[0];
    v60 = os_log_type_enabled(v50, type[0]);
    if (v59)
    {
      if (v60)
      {
        *buf = 136446466;
        v110 = "nw_protocol_webtransport_http3_stream_connected";
        v111 = 2082;
        v112 = v59;
        _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v59);
      if (!v49)
      {
        return;
      }

LABEL_122:
      free(v49);
      return;
    }

    if (v60)
    {
      *buf = 136446210;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v52 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_120:
      _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
      goto LABEL_121;
    }

    goto LABEL_121;
  }

  if (!*(handle + 11))
  {
    if ((handle[276] & 0x10) != 0)
    {
      return;
    }

    if (gLogDatapath != 1)
    {
      return;
    }

    v9 = __nwlog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v10 = *(handle + 11);
    if (v10)
    {
      v11 = *(v10 + 492);
    }

    else
    {
      v11 = -1;
    }

    v66 = *(handle + 8);
    *buf = 136447234;
    v110 = "nw_protocol_webtransport_http3_stream_connected";
    v111 = 2082;
    v112 = handle + 192;
    v113 = 2080;
    v114 = " ";
    v115 = 1024;
    v116 = v11;
    v117 = 2048;
    v118 = v66;
    v43 = "%{public}s %{public}s%s<i%u:s%llu> Stream is not fully setup. Ignoring connected.";
    goto LABEL_133;
  }

  v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v54 = __nwlog_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v55 = *(handle + 11);
      if (v55)
      {
        v56 = *(v55 + 492);
      }

      else
      {
        v56 = -1;
      }

      v63 = *(handle + 8);
      *buf = 136447234;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v111 = 2082;
      v112 = handle + 192;
      v113 = 2080;
      v114 = " ";
      v115 = 1024;
      v116 = v56;
      v117 = 2048;
      v118 = v63;
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Got a connected event from the lower layer", buf, 0x30u);
    }
  }

  nw_protocol_connected(a1->default_input_handler, a2);
  if (a1->output_handler == a2)
  {
    if (*(handle + 46) == 2 || *(handle + 47) == 2)
    {
      if ((handle[276] & 0x10) != 0)
      {
        return;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v9 = __nwlog_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v61 = *(handle + 11);
      if (v61)
      {
        v62 = *(v61 + 492);
      }

      else
      {
        v62 = -1;
      }

      v72 = *(handle + 8);
      *buf = 136447234;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v111 = 2082;
      v112 = handle + 192;
      v113 = 2080;
      v114 = " ";
      v115 = 1024;
      v116 = v62;
      v117 = 2048;
      v118 = v72;
      v43 = "%{public}s %{public}s%s<i%u:s%llu> stream is already connected, not forwarding";
LABEL_133:
      v44 = v9;
      v45 = OS_LOG_TYPE_DEBUG;
      goto LABEL_81;
    }

    if ((handle[276] & 8) != 0)
    {
      *(handle + 8) = -2;
      goto LABEL_30;
    }

    if (*(handle + 8) != -1)
    {
      if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
      {
        v12 = __nwlog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(handle + 11);
          if (v13)
          {
            v14 = *(v13 + 492);
          }

          else
          {
            v14 = -1;
          }

          v92 = *(handle + 8);
          *buf = 136447490;
          v110 = "nw_webtransport_http3_stream_assign_stream_id";
          v111 = 2082;
          v112 = handle + 192;
          v113 = 2080;
          v114 = " ";
          v115 = 1024;
          v116 = v14;
          v117 = 2048;
          v118 = v92;
          v119 = 2048;
          v120 = v92;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Stream ID %llu already set, skipping", buf, 0x3Au);
        }
      }

      goto LABEL_30;
    }

    v26 = *(handle + 11);
    if (v26)
    {
      v27 = *(handle + 4);
      if (v27)
      {
        *v104 = 0;
        v105 = v104;
        v106 = 0x2000000000;
        v107 = -1;
        if (*(v26 + 480) <= 1u)
        {
          v28 = nw_protocol_copy_info(v27);
          v29 = v28;
          if (v28)
          {
            *type = MEMORY[0x1E69E9820];
            v100 = 0x40000000;
            v101 = ___ZL48nw_webtransport_session_get_underlying_stream_idP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
            v102 = &unk_1E6A31968;
            v103 = v104;
            _nw_array_apply(v28, type);
          }

          if ((*(v26 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v89 = __nwlog_obj();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v90 = *(v26 + 492);
              v91 = *(v105 + 3);
              *buf = 136447234;
              v110 = "nw_webtransport_session_get_underlying_stream_id";
              v111 = 2082;
              v112 = (v26 + 496);
              v113 = 2080;
              v114 = " ";
              v115 = 1024;
              v116 = v90;
              v117 = 2048;
              v118 = v91;
              _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got underlying stream ID: %llu", buf, 0x30u);
            }
          }

          if (v29)
          {
            os_release(v29);
          }
        }

        v30 = *(v105 + 3);
        _Block_object_dispose(v104, 8);
        if (v30 != -1)
        {
          *(handle + 8) = v30;
          nw_webtransport_metadata_set_stream_id(*(handle + 20), v30);
          if ((handle[276] & 0x10) == 0)
          {
            v31 = __nwlog_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = *(handle + 11);
              if (v32)
              {
                v33 = *(v32 + 492);
              }

              else
              {
                v33 = -1;
              }

              v47 = *(handle + 8);
              *buf = 136448002;
              v110 = "nw_webtransport_http3_stream_assign_stream_id";
              v111 = 2082;
              v112 = handle + 192;
              v113 = 2080;
              v114 = " ";
              v115 = 1024;
              v116 = v33;
              v117 = 2048;
              v118 = v47;
              v119 = 2048;
              v120 = v47;
              v121 = 2048;
              v122 = handle;
              v123 = 1024;
              LODWORD(v124) = 0;
              _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Assigned stream ID: %llu to stream with protocol %p, incoming: %u", buf, 0x4Au);
            }
          }

          goto LABEL_30;
        }

LABEL_186:
        if ((handle[276] & 0x10) == 0)
        {
          v93 = __nwlog_obj();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            v94 = *(handle + 11);
            if (v94)
            {
              v95 = *(v94 + 492);
            }

            else
            {
              v95 = -1;
            }

            v96 = *(handle + 8);
            *buf = 136447234;
            v110 = "nw_webtransport_http3_stream_assign_stream_id";
            v111 = 2082;
            v112 = handle + 192;
            v113 = 2080;
            v114 = " ";
            v115 = 1024;
            v116 = v95;
            v117 = 2048;
            v118 = v96;
            _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to get stream ID for HTTP/3 webtransport stream, failing", buf, 0x30u);
          }
        }

        v97 = *(handle + 11);
        nw_protocol_error(*(handle + 6), handle);
        nw_protocol_disconnect(handle, v97);
LABEL_30:
        v15 = *(handle + 11);
        if (v15)
        {
          if (*(handle + 8) == -2)
          {
            if (*(v15 + 448))
            {
              if ((*(v15 + 580) & 2) == 0)
              {
                v16 = __nwlog_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v17 = *(v15 + 492);
                  *buf = 136446978;
                  v110 = "nw_webtransport_session_add_stream";
                  v111 = 2082;
                  v112 = (v15 + 496);
                  v113 = 2080;
                  v114 = " ";
                  v115 = 1024;
                  v116 = v17;
                  v18 = "%{public}s %{public}s%s<i%u> WebTransport already has datagram stream registered";
                  v19 = v16;
                  v20 = OS_LOG_TYPE_ERROR;
                  v21 = 38;
LABEL_43:
                  _os_log_impl(&dword_181A37000, v19, v20, v18, buf, v21);
                }
              }

LABEL_61:
              default_input_handler = a1->default_input_handler;
              if (!default_input_handler)
              {
                if ((handle[276] & 0x10) != 0)
                {
                  return;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v39 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                v40 = *(handle + 11);
                if (v40)
                {
                  v41 = *(v40 + 492);
                }

                else
                {
                  v41 = -1;
                }

                v42 = *(handle + 8);
                *buf = 136447234;
                v110 = "nw_protocol_webtransport_http3_stream_connected";
                v111 = 2082;
                v112 = handle + 192;
                v113 = 2080;
                v114 = " ";
                v115 = 1024;
                v116 = v41;
                v117 = 2048;
                v118 = v42;
                v43 = "%{public}s %{public}s%s<i%u:s%llu> No input handler found, ignoring connected call";
                v44 = v39;
                v45 = OS_LOG_TYPE_ERROR;
LABEL_81:
                v46 = 48;
LABEL_82:
                _os_log_impl(&dword_181A37000, v44, v45, v43, buf, v46);
                return;
              }

              if ((handle[276] & 4) != 0)
              {
                v35 = 3;
                if ((handle[276] & 2) != 0)
                {
                  goto LABEL_67;
                }

                *(handle + 46) = 3;
              }

              if (*(handle + 47))
              {
                goto LABEL_68;
              }

              v35 = 2;
LABEL_67:
              *(handle + 47) = v35;
LABEL_68:
              if (!*(handle + 46))
              {
                *(handle + 46) = 2;
              }

              nw_protocol_connected(default_input_handler, a1);
              if ((handle[276] & 0x10) == 0 && BYTE1(v5[82].isa) == 1)
              {
                v36 = __nwlog_obj();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  v37 = *(handle + 11);
                  if (v37)
                  {
                    v38 = *(v37 + 492);
                  }

                  else
                  {
                    v38 = -1;
                  }

                  v84 = *(handle + 8);
                  *buf = 136448002;
                  v110 = "nw_protocol_webtransport_http3_stream_connected";
                  v111 = 2082;
                  v112 = handle + 192;
                  v113 = 2080;
                  v114 = " ";
                  v115 = 1024;
                  v116 = v38;
                  v117 = 2048;
                  v118 = v84;
                  v119 = 2048;
                  v120 = a1;
                  v121 = 2048;
                  v122 = v84;
                  v123 = 2048;
                  v124 = a2;
                  v43 = "%{public}s %{public}s%s<i%u:s%llu> webtransport http3 stream %p with id %llu connected with output_handler %p";
                  v44 = v36;
                  v45 = OS_LOG_TYPE_DEBUG;
                  v46 = 78;
                  goto LABEL_82;
                }
              }

              return;
            }

            *(v15 + 448) = handle;
          }

          else
          {
            no_lock = *(v15 + 192);
            if (!no_lock)
            {
              no_lock = nw_hash_table_create_no_lock(0x11u, 0, nw_webtransport_stream_get_key, nw_webtransport_stream_key_hash, nw_webtransport_stream_matches_key, 0, 0);
              *(v15 + 192) = no_lock;
            }

            type[0] = OS_LOG_TYPE_DEFAULT;
            nw_hash_table_add_object(no_lock, handle, type);
            if ((type[0] & 1) == 0)
            {
              if ((*(v15 + 580) & 2) != 0)
              {
                goto LABEL_61;
              }

              v23 = __nwlog_obj();
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_61;
              }

              v24 = *(v15 + 492);
              v25 = *(handle + 8);
              *buf = 136447234;
              v110 = "nw_webtransport_session_add_stream";
              v111 = 2082;
              v112 = (v15 + 496);
              v113 = 2080;
              v114 = " ";
              v115 = 1024;
              v116 = v24;
              v117 = 2048;
              v118 = v25;
              v18 = "%{public}s %{public}s%s<i%u> WebTransport already has stream id registered for %llu";
              v19 = v23;
              v20 = OS_LOG_TYPE_ERROR;
LABEL_42:
              v21 = 48;
              goto LABEL_43;
            }
          }

          if ((*(v15 + 580) & 2) != 0)
          {
            goto LABEL_61;
          }

          if (BYTE1(v5[82].isa) != 1)
          {
            goto LABEL_61;
          }

          v75 = __nwlog_obj();
          if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_61;
          }

          v76 = *(v15 + 492);
          v77 = *(handle + 8);
          *buf = 136447234;
          v110 = "nw_webtransport_session_add_stream";
          v111 = 2082;
          v112 = (v15 + 496);
          v113 = 2080;
          v114 = " ";
          v115 = 1024;
          v116 = v76;
          v117 = 2048;
          v118 = v77;
          v18 = "%{public}s %{public}s%s<i%u> Added stream %llu to WebTransport streams";
          v19 = v75;
          v20 = OS_LOG_TYPE_DEBUG;
          goto LABEL_42;
        }

        v67 = __nwlog_obj();
        *buf = 136446210;
        v110 = "nw_webtransport_session_add_stream";
        LODWORD(v98) = 12;
        v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null webtransport_session", buf, v98);
        type[0] = OS_LOG_TYPE_ERROR;
        v104[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v68, type, v104))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v69 = __nwlog_obj();
            v70 = type[0];
            if (os_log_type_enabled(v69, type[0]))
            {
              *buf = 136446210;
              v110 = "nw_webtransport_session_add_stream";
              v71 = "%{public}s called with null webtransport_session";
LABEL_155:
              _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0xCu);
            }
          }

          else if (v104[0] == OS_LOG_TYPE_INFO)
          {
            v73 = __nw_create_backtrace_string();
            v69 = __nwlog_obj();
            v70 = type[0];
            v74 = os_log_type_enabled(v69, type[0]);
            if (v73)
            {
              if (v74)
              {
                *buf = 136446466;
                v110 = "nw_webtransport_session_add_stream";
                v111 = 2082;
                v112 = v73;
                _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v73);
              goto LABEL_156;
            }

            if (v74)
            {
              *buf = 136446210;
              v110 = "nw_webtransport_session_add_stream";
              v71 = "%{public}s called with null webtransport_session, no backtrace";
              goto LABEL_155;
            }
          }

          else
          {
            v69 = __nwlog_obj();
            v70 = type[0];
            if (os_log_type_enabled(v69, type[0]))
            {
              *buf = 136446210;
              v110 = "nw_webtransport_session_add_stream";
              v71 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
              goto LABEL_155;
            }
          }
        }

LABEL_156:
        if (v68)
        {
          free(v68);
        }

        v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        goto LABEL_61;
      }

      v83 = __nwlog_obj();
      *buf = 136446210;
      v110 = "nw_webtransport_session_get_underlying_stream_id";
      v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null output_protocol", buf, 12);
      v104[0] = OS_LOG_TYPE_ERROR;
      v108 = 0;
      if (__nwlog_fault(v79, v104, &v108))
      {
        if (v104[0] == OS_LOG_TYPE_FAULT)
        {
          v80 = __nwlog_obj();
          v81 = v104[0];
          if (!os_log_type_enabled(v80, v104[0]))
          {
            goto LABEL_183;
          }

          *buf = 136446210;
          v110 = "nw_webtransport_session_get_underlying_stream_id";
          v82 = "%{public}s called with null output_protocol";
          goto LABEL_182;
        }

        if (v108 != 1)
        {
          v80 = __nwlog_obj();
          v81 = v104[0];
          if (!os_log_type_enabled(v80, v104[0]))
          {
            goto LABEL_183;
          }

          *buf = 136446210;
          v110 = "nw_webtransport_session_get_underlying_stream_id";
          v82 = "%{public}s called with null output_protocol, backtrace limit exceeded";
          goto LABEL_182;
        }

        v87 = __nw_create_backtrace_string();
        v80 = __nwlog_obj();
        v81 = v104[0];
        v88 = os_log_type_enabled(v80, v104[0]);
        if (!v87)
        {
          if (!v88)
          {
            goto LABEL_183;
          }

          *buf = 136446210;
          v110 = "nw_webtransport_session_get_underlying_stream_id";
          v82 = "%{public}s called with null output_protocol, no backtrace";
          goto LABEL_182;
        }

        if (v88)
        {
          *buf = 136446466;
          v110 = "nw_webtransport_session_get_underlying_stream_id";
          v111 = 2082;
          v112 = v87;
          _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null output_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v87);
      }

LABEL_183:
      if (!v79)
      {
LABEL_185:
        v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        goto LABEL_186;
      }

LABEL_184:
      free(v79);
      goto LABEL_185;
    }

    v78 = __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_webtransport_session_get_underlying_stream_id";
    v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s called with null webtransport_session", buf, 12);
    v104[0] = OS_LOG_TYPE_ERROR;
    v108 = 0;
    if (!__nwlog_fault(v79, v104, &v108))
    {
      goto LABEL_183;
    }

    if (v104[0] == OS_LOG_TYPE_FAULT)
    {
      v80 = __nwlog_obj();
      v81 = v104[0];
      if (!os_log_type_enabled(v80, v104[0]))
      {
        goto LABEL_183;
      }

      *buf = 136446210;
      v110 = "nw_webtransport_session_get_underlying_stream_id";
      v82 = "%{public}s called with null webtransport_session";
    }

    else
    {
      if (v108 != 1)
      {
        v80 = __nwlog_obj();
        v81 = v104[0];
        if (!os_log_type_enabled(v80, v104[0]))
        {
          goto LABEL_183;
        }

        *buf = 136446210;
        v110 = "nw_webtransport_session_get_underlying_stream_id";
        v82 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_182;
      }

      v85 = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v81 = v104[0];
      v86 = os_log_type_enabled(v80, v104[0]);
      if (v85)
      {
        if (v86)
        {
          *buf = 136446466;
          v110 = "nw_webtransport_session_get_underlying_stream_id";
          v111 = 2082;
          v112 = v85;
          _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v85);
        if (!v79)
        {
          goto LABEL_185;
        }

        goto LABEL_184;
      }

      if (!v86)
      {
        goto LABEL_183;
      }

      *buf = 136446210;
      v110 = "nw_webtransport_session_get_underlying_stream_id";
      v82 = "%{public}s called with null webtransport_session, no backtrace";
    }

LABEL_182:
    _os_log_impl(&dword_181A37000, v80, v81, v82, buf, 0xCu);
    goto LABEL_183;
  }

  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(handle + 11);
      if (v7)
      {
        v8 = *(v7 + 492);
      }

      else
      {
        v8 = -1;
      }

      v64 = *(handle + 8);
      identifier = a2->identifier;
      *buf = 136447746;
      v110 = "nw_protocol_webtransport_http3_stream_connected";
      v111 = 2082;
      v112 = handle + 192;
      v113 = 2080;
      v114 = " ";
      v115 = 1024;
      v116 = v8;
      v117 = 2048;
      v118 = v64;
      v119 = 2048;
      v120 = a2;
      v121 = 2080;
      v122 = identifier;
      v43 = "%{public}s %{public}s%s<i%u:s%llu> connected protocol %p (%s) is not our output_handler, ignoring";
      v44 = v6;
      v45 = OS_LOG_TYPE_DEBUG;
      v46 = 68;
      goto LABEL_82;
    }
  }
}

uint64_t nw_protocol_webtransport_http3_stream_connect(nw_protocol *a1, nw_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v11 = __nwlog_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = handle[11];
          if (v12)
          {
            v13 = *(v12 + 492);
          }

          else
          {
            v13 = -1;
          }

          v18 = handle[8];
          *buf = 136447234;
          v22 = "nw_protocol_webtransport_http3_stream_connect";
          v23 = 2082;
          v24 = (handle + 24);
          v25 = 2080;
          v26 = " ";
          v27 = 1024;
          v28 = v13;
          v29 = 2048;
          v30 = v18;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      return nw_protocol_connect(a1->output_handler->flow_id, a1);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_connect";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http3_stream_connect";
        v9 = "%{public}s called with null webtransport_stream";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v19 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http3_stream_connect";
        v9 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v17 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http3_stream_connect";
        v9 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v17)
    {
      *buf = 136446466;
      v22 = "nw_protocol_webtransport_http3_stream_connect";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_http3_stream_connect";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_39;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v19 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http3_stream_connect";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v15 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http3_stream_connect";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v15)
    {
      *buf = 136446466;
      v22 = "nw_protocol_webtransport_http3_stream_connect";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v7, v8, v16, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_39;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http3_stream_connect";
    v9 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_39:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_http3_stream_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v200 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v133 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v133, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v186[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v134, type, v186))
    {
      goto LABEL_279;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v135 = __nwlog_obj();
      v136 = type[0];
      if (!os_log_type_enabled(v135, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null protocol";
      goto LABEL_278;
    }

    if (v186[0] != OS_LOG_TYPE_INFO)
    {
      v135 = __nwlog_obj();
      v136 = type[0];
      if (!os_log_type_enabled(v135, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_278;
    }

    backtrace_string = __nw_create_backtrace_string();
    v135 = __nwlog_obj();
    v136 = type[0];
    v144 = os_log_type_enabled(v135, type[0]);
    if (!backtrace_string)
    {
      if (!v144)
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_278;
    }

    if (!v144)
    {
      goto LABEL_252;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v145 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_251:
    _os_log_impl(&dword_181A37000, v135, v136, v145, buf, 0x16u);
    goto LABEL_252;
  }

  handle = a1->handle;
  if (!handle)
  {
    v138 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v138, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v186[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v134, type, v186))
    {
      goto LABEL_279;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v135 = __nwlog_obj();
      v136 = type[0];
      if (!os_log_type_enabled(v135, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null webtransport_stream";
      goto LABEL_278;
    }

    if (v186[0] != OS_LOG_TYPE_INFO)
    {
      v135 = __nwlog_obj();
      v136 = type[0];
      if (!os_log_type_enabled(v135, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_278;
    }

    backtrace_string = __nw_create_backtrace_string();
    v135 = __nwlog_obj();
    v136 = type[0];
    v146 = os_log_type_enabled(v135, type[0]);
    if (!backtrace_string)
    {
      if (!v146)
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_278;
    }

    if (!v146)
    {
      goto LABEL_252;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v145 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_251;
  }

  if (!a2)
  {
    v139 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v139, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v186[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v134, type, v186))
    {
      goto LABEL_279;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v135 = __nwlog_obj();
      v136 = type[0];
      if (!os_log_type_enabled(v135, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null input_protocol";
      goto LABEL_278;
    }

    if (v186[0] != OS_LOG_TYPE_INFO)
    {
      v135 = __nwlog_obj();
      v136 = type[0];
      if (!os_log_type_enabled(v135, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v137 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_278;
    }

    backtrace_string = __nw_create_backtrace_string();
    v135 = __nwlog_obj();
    v136 = type[0];
    v147 = os_log_type_enabled(v135, type[0]);
    if (backtrace_string)
    {
      if (v147)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v145 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_251;
      }

LABEL_252:
      free(backtrace_string);
      goto LABEL_279;
    }

    if (!v147)
    {
      goto LABEL_279;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v137 = "%{public}s called with null input_protocol, no backtrace";
LABEL_278:
    _os_log_impl(&dword_181A37000, v135, v136, v137, buf, 0xCu);
LABEL_279:
    if (v134)
    {
      free(v134);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v140 = __nwlog_obj();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
    {
      v141 = handle[11];
      if (v141)
      {
        v142 = *(v141 + 492);
      }

      else
      {
        v142 = -1;
      }

      v153 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v194 = " ";
      *v195 = 1024;
      *&v195[2] = v142;
      *&v195[6] = 2048;
      *&v195[8] = v153;
      _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
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
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v194 = " ";
      *v195 = 1024;
      *&v195[2] = v7;
      *&v195[6] = 2048;
      *&v195[8] = v8;
      *&v195[16] = 2048;
      *&v195[18] = a1;
      v196 = 2048;
      v197 = default_input_handler;
      v198 = 2048;
      v199 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:s%llu> protocol %p, default_input_handler %p, input protocol %p", buf, 0x4Eu);
    }
  }

  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  if ((*(handle + 276) & 8) == 0)
  {
    nw_protocol_remove_input_handler(handle[4], a1);
  }

  nw_protocol_set_output_handler(a1, 0);
  v174 = handle[11];
  if (!v174)
  {
    v148 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    v149 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v148, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v186[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v149, type, v186))
    {
      goto LABEL_293;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v150 = __nwlog_obj();
      v151 = type[0];
      if (!os_log_type_enabled(v150, type[0]))
      {
        goto LABEL_293;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v152 = "%{public}s called with null webtransport_session";
    }

    else if (v186[0] == OS_LOG_TYPE_INFO)
    {
      v154 = __nw_create_backtrace_string();
      v150 = __nwlog_obj();
      v151 = type[0];
      v155 = os_log_type_enabled(v150, type[0]);
      if (v154)
      {
        if (v155)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v154;
          _os_log_impl(&dword_181A37000, v150, v151, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v154);
        goto LABEL_293;
      }

      if (!v155)
      {
LABEL_293:
        if (v149)
        {
          free(v149);
        }

        goto LABEL_86;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v152 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v150 = __nwlog_obj();
      v151 = type[0];
      if (!os_log_type_enabled(v150, type[0]))
      {
        goto LABEL_293;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v152 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v150, v151, v152, buf, 0xCu);
    goto LABEL_293;
  }

  if ((*(handle + 276) & 0x20) != 0)
  {
    if ((*(v174 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v156 = __nwlog_obj();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
      {
        v157 = *(v174 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v174 + 496;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v157;
        *&v195[6] = 2048;
        *&v195[8] = handle;
        _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", buf, 0x30u);
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
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
      type[0] = OS_LOG_TYPE_ERROR;
      v186[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v15, type, v186))
      {
        goto LABEL_67;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_67;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v18 = "%{public}s stream %p not in pending list, cannot remove";
      }

      else if (v186[0] == OS_LOG_TYPE_INFO)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        v30 = os_log_type_enabled(gLogObj, type[0]);
        if (v29)
        {
          if (v30)
          {
            *buf = 136446722;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            *&buf[22] = 2082;
            v194 = v29;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v29);
          goto LABEL_67;
        }

        if (!v30)
        {
LABEL_67:
          if (v15)
          {
            free(v15);
          }

          goto LABEL_79;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v18 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_67;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v18 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0x16u);
      goto LABEL_67;
    }

    v19 = handle[14];
    v20 = handle[15];
    v21 = (v174 + 344);
    if (v19)
    {
      v21 = (v19 + 120);
    }

    *v21 = v20;
    *v20 = v19;
    handle[14] = 0;
    handle[15] = 0;
    v22 = *(v174 + 488);
    *(v174 + 488) = v22 - 1;
    if (v22)
    {
LABEL_77:
      v40 = *(handle + 276);
      *(handle + 276) = v40 & 0xDF;
      if ((v40 & 0x10) == 0 && gLogDatapath == 1)
      {
        v158 = __nwlog_obj();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
        {
          v159 = handle[11];
          if (v159)
          {
            v160 = *(v159 + 492);
          }

          else
          {
            v160 = -1;
          }

          v165 = handle[8];
          v166 = *(v174 + 488);
          *buf = 136447746;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = handle + 24;
          *&buf[22] = 2080;
          v194 = " ";
          *v195 = 1024;
          *&v195[2] = v160;
          *&v195[6] = 2048;
          *&v195[8] = v165;
          *&v195[16] = 2048;
          *&v195[18] = handle;
          v196 = 1024;
          LODWORD(v197) = v166;
          v14 = "%{public}s %{public}s%s<i%u:s%llu> removed pending stream (%p), now have %u pending streams";
          v32 = v158;
          v33 = OS_LOG_TYPE_DEBUG;
          v34 = 64;
          goto LABEL_56;
        }
      }

      goto LABEL_79;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = *(v174 + 488);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_pending_stream";
    *&buf[12] = 2082;
    *&buf[14] = "webtransport_session->pending_stream_count";
    *&buf[22] = 2048;
    v194 = 1;
    *v195 = 2048;
    *&v195[2] = v23;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v186[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v24, type, v186))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v27 = *(v174 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v194 = 1;
          *v195 = 2048;
          *&v195[2] = v27;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_73:
          _os_log_impl(&dword_181A37000, v25, v26, v28, buf, 0x2Au);
        }
      }

      else if (v186[0] == OS_LOG_TYPE_INFO)
      {
        v35 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type[0];
        v36 = os_log_type_enabled(v25, type[0]);
        if (v35)
        {
          if (v36)
          {
            v37 = *(v174 + 488);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "webtransport_session->pending_stream_count";
            *&buf[22] = 2048;
            v194 = 1;
            *v195 = 2048;
            *&v195[2] = v37;
            *&v195[10] = 2082;
            *&v195[12] = v35;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v35);
          goto LABEL_74;
        }

        if (v36)
        {
          v39 = *(v174 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v194 = 1;
          *v195 = 2048;
          *&v195[2] = v39;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v38 = *(v174 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v194 = 1;
          *v195 = 2048;
          *&v195[2] = v38;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v24)
    {
      free(v24);
    }

    *(v174 + 488) = 0;
    goto LABEL_77;
  }

  if (*(v174 + 440) == handle)
  {
    if ((*(v174 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v161 = __nwlog_obj();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
      {
        v162 = *(v174 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v174 + 496;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v162;
        _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing placeholder stream for session", buf, 0x26u);
      }
    }

    *(v174 + 440) = 0;
  }

  else if (*(v174 + 448) == handle)
  {
    if ((*(v174 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v163 = __nwlog_obj();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        v164 = *(v174 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v174 + 496;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v164;
        _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing datagram stream for session", buf, 0x26u);
      }
    }

    *(v174 + 448) = 0;
  }

  else
  {
    *type = handle[8];
    node = nw_hash_table_get_node(*(v174 + 192), type, 8);
    if (node)
    {
      if ((nw_hash_table_remove_node(*(v174 + 192), node) & 1) == 0 && (*(v174 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v174 + 492);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v174 + 496;
          *&buf[22] = 2080;
          v194 = " ";
          *v195 = 1024;
          *&v195[2] = v13;
          *&v195[6] = 2048;
          *&v195[8] = *type;
          v14 = "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table";
LABEL_55:
          v32 = v12;
          v33 = OS_LOG_TYPE_ERROR;
          v34 = 48;
LABEL_56:
          _os_log_impl(&dword_181A37000, v32, v33, v14, buf, v34);
        }
      }
    }

    else if ((*(v174 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v31 = *(v174 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v174 + 496;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v31;
        *&v195[6] = 2048;
        *&v195[8] = *type;
        v14 = "%{public}s %{public}s%s<i%u> called remove_input_handler with stream id %llu, but no stream found";
        goto LABEL_55;
      }
    }
  }

LABEL_79:
  handle[11] = 0;
  v41 = v174;
  if (*(v174 + 48) != handle)
  {
    goto LABEL_86;
  }

  if (*(v174 + 476))
  {
    v42 = *(v174 + 448);
    if (v42)
    {
LABEL_82:
      nw_protocol_set_input_handler(v41, v42);
      if ((*(v41 + 580) & 2) != 0)
      {
        goto LABEL_86;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_86;
      }

      v44 = *(v41 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v41 + 496;
      *&buf[22] = 2080;
      v194 = " ";
      *v195 = 1024;
      *&v195[2] = v44;
      v45 = "%{public}s %{public}s%s<i%u> not destroying, still have datagram stream";
      goto LABEL_85;
    }
  }

  else
  {
    if ((*(v174 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v53 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v54 = *(v174 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v174 + 496;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v54;
        _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
      }
    }

    v41 = v174;
    v55 = *(v174 + 464);
    v56 = *(v174 + 416);
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 0x40000000;
    v175[2] = ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke;
    v175[3] = &unk_1E6A31A10;
    v175[4] = v55;
    nw_queue_context_async(v56, v175);
    v42 = *(v174 + 448);
    if (v42)
    {
      goto LABEL_82;
    }
  }

  v57 = *(v41 + 192);
  if (v57 && v57[12]._os_unfair_lock_opaque)
  {
    some_node = nw_hash_table_get_some_node(v57);
    object = nw_hash_node_get_object(some_node);
    nw_protocol_set_input_handler(v174, object);
    if ((*(v174 + 580) & 2) != 0)
    {
      goto LABEL_86;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_86;
    }

    v60 = *(v174 + 492);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    *&buf[12] = 2082;
    *&buf[14] = v174 + 496;
    *&buf[22] = 2080;
    v194 = " ";
    *v195 = 1024;
    *&v195[2] = v60;
    v45 = "%{public}s %{public}s%s<i%u> not destroying, still have active streams";
    goto LABEL_85;
  }

  if (!*(v174 + 488))
  {
    v71 = *(v174 + 440);
    v72 = v174;
    if (v71)
    {
      nw_protocol_set_input_handler(v174, v71);
      if ((*(v174 + 580) & 2) != 0)
      {
        goto LABEL_86;
      }

      v43 = __nwlog_obj();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        goto LABEL_86;
      }

      v73 = *(v174 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v174 + 496;
      *&buf[22] = 2080;
      v194 = " ";
      *v195 = 1024;
      *&v195[2] = v73;
      v45 = "%{public}s %{public}s%s<i%u> not destroying, still have placeholder stream";
      goto LABEL_85;
    }

    nw_protocol_set_input_handler(v174, 0);
    if ((*(v174 + 580) & 2) == 0)
    {
      v74 = __nwlog_obj();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v75 = *(v174 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v174 + 496;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v75;
        _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, destroying session", buf, 0x26u);
      }
    }

    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v174 + 368, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v174 + 384, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v174 + 400, buf);
    nw_http_capsule_framer_cleanup((v174 + 96));
    v76 = *(v174 + 424);
    if (v76)
    {
      (*(*v76 + 8))(v76, v174, 0);
    }

    if ((*(v174 + 580) & 4) != 0)
    {
      if ((nw_protocol_remove_listen_handler(*(v174 + 432), v174 + 64) & 1) == 0 && (*(v174 + 580) & 2) == 0)
      {
        v77 = __nwlog_obj();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = *(v174 + 492);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v174 + 496;
          *&buf[22] = 2080;
          v194 = " ";
          *v195 = 1024;
          *&v195[2] = v78;
          _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to remove listen handler", buf, 0x26u);
        }
      }

      *(v174 + 432) = 0;
    }

    v79 = *(v174 + 32);
    if (v79)
    {
      nw_protocol_remove_input_handler(v79, v174);
      if (*(v174 + 476) != 5)
      {
        nw_protocol_remove_instance(v174);
      }
    }

    v182 = 0;
    v183 = &v182;
    v184 = 0x2000000000;
    v185 = 0;
    v80 = *(v174 + 192);
    if (v80)
    {
      *type = MEMORY[0x1E69E9820];
      v177 = 0x40000000;
      v178 = ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke;
      v179 = &unk_1E6A31A38;
      v180 = &v182;
      v181 = v174;
      nw_hash_table_apply(v80, type);
      v81 = *(v174 + 192);
      if (v81)
      {
        _nw_hash_table_release(v81);
        *(v174 + 192) = 0;
      }
    }

    v82 = *(v174 + 336);
    v183[3] = v82;
    if (!v82)
    {
      (*(*(v174 + 464) + 16))();
      v132 = *(v174 + 464);
      if (v132)
      {
        _Block_release(v132);
        *(v174 + 464) = 0;
      }

      std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(v174);
      free(v174);
      _Block_object_dispose(&v182, 8);
      goto LABEL_86;
    }

    v83 = &qword_1ED411000;
    while (1)
    {
      v82 = *(v82 + 112);
      if ((*(v72 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v84 = v83[275];
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = *(v72 + 492);
          v86 = v183[3];
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v174 + 496;
          *&buf[22] = 2080;
          v194 = " ";
          *v195 = 1024;
          *&v195[2] = v85;
          *&v195[6] = 2048;
          *&v195[8] = v86;
          _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v87 = v83[275];
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy";
      LODWORD(v173) = 12;
      v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s should not have streams left when destroying", buf, v173);
      v186[0] = OS_LOG_TYPE_ERROR;
      v192 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v88, v186, &v192))
      {
        if (v186[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v89 = gLogObj;
          v90 = v186[0];
          if (!os_log_type_enabled(gLogObj, v186[0]))
          {
            goto LABEL_172;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v91 = v89;
          v92 = v90;
          v93 = "%{public}s should not have streams left when destroying";
LABEL_171:
          _os_log_impl(&dword_181A37000, v91, v92, v93, buf, 0xCu);
          goto LABEL_172;
        }

        if (v192 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = v186[0];
          if (!os_log_type_enabled(gLogObj, v186[0]))
          {
            goto LABEL_172;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v91 = v98;
          v92 = v99;
          v93 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
          goto LABEL_171;
        }

        v94 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v95 = gLogObj;
        v96 = v186[0];
        v97 = os_log_type_enabled(gLogObj, v186[0]);
        if (!v94)
        {
          if (!v97)
          {
            goto LABEL_172;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v91 = v95;
          v92 = v96;
          v93 = "%{public}s should not have streams left when destroying, no backtrace";
          goto LABEL_171;
        }

        if (v97)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          _os_log_impl(&dword_181A37000, v95, v96, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v94);
      }

LABEL_172:
      if (v88)
      {
        free(v88);
      }

      v100 = *(v82 + 112);
      v101 = *(v82 + 120);
      v102 = (v100 + 120);
      if (!v100)
      {
        v102 = (v174 + 344);
      }

      *v102 = v101;
      *v101 = v100;
      *(v82 + 112) = 0;
      *(v82 + 120) = 0;
      v103 = v183[3];
      v83 = &qword_1ED411000;
      if (v103)
      {
        if ((*(v103 + 276) & 0x10) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v104 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v105 = *(v103 + 88);
            if (v105)
            {
              v106 = *(v105 + 492);
            }

            else
            {
              v106 = -1;
            }

            v107 = *(v103 + 64);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_stream_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v103 + 192;
            *&buf[22] = 2080;
            v194 = " ";
            *v195 = 1024;
            *&v195[2] = v106;
            *&v195[6] = 2048;
            *&v195[8] = v107;
            *&v195[16] = 2048;
            *&v195[18] = v103;
            _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
          }
        }

        if (*(v103 + 72))
        {
          if ((*(v103 + 276) & 0x10) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v108 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v109 = *(v103 + 88);
              if (v109)
              {
                v110 = *(v109 + 492);
              }

              else
              {
                v110 = -1;
              }

              v111 = *(v103 + 64);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v103 + 192;
              *&buf[22] = 2080;
              v194 = " ";
              *v195 = 1024;
              *&v195[2] = v110;
              *&v195[6] = 2048;
              *&v195[8] = v111;
              _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
            }
          }
        }

        *v186 = MEMORY[0x1E69E9820];
        v187 = 0x40000000;
        v188 = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
        v189 = &__block_descriptor_tmp_39_36819;
        v190 = v103;
        v112 = *(v103 + 72);
        do
        {
          if (!v112)
          {
            break;
          }

          v113 = *(v112 + 32);
          v114 = (v188)(v186);
          v112 = v113;
        }

        while ((v114 & 1) != 0);
        (*(*(v103 + 176) + 16))();
        v115 = *(v103 + 176);
        if (v115)
        {
          _Block_release(v115);
          *(v103 + 176) = 0;
        }

        if (*(v103 + 168))
        {
          v116 = *(v103 + 160);
          if (v116)
          {
            os_release(v116);
          }
        }

        *(v103 + 160) = 0;
        if (*(v103 + 152))
        {
          v117 = *(v103 + 144);
          if (v117)
          {
            os_release(v117);
          }
        }

        *(v103 + 144) = 0;
        if (*(v103 + 136))
        {
          v118 = *(v103 + 128);
          if (v118)
          {
            os_release(v118);
          }
        }

        free(v103);
        goto LABEL_154;
      }

      v119 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_stream_destroy";
      LODWORD(v173) = 12;
      v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v119, 16, "%{public}s called with null webtransport_stream", buf, v173);
      v192 = OS_LOG_TYPE_ERROR;
      v191 = 0;
      if (__nwlog_fault(v120, &v192, &v191))
      {
        if (v192 == OS_LOG_TYPE_FAULT)
        {
          v121 = __nwlog_obj();
          v122 = v192;
          if (os_log_type_enabled(v121, v192))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v123 = v121;
            v124 = v122;
            v125 = "%{public}s called with null webtransport_stream";
LABEL_217:
            _os_log_impl(&dword_181A37000, v123, v124, v125, buf, 0xCu);
          }
        }

        else if (v191 == 1)
        {
          v126 = __nw_create_backtrace_string();
          v127 = __nwlog_obj();
          v128 = v192;
          v129 = os_log_type_enabled(v127, v192);
          if (v126)
          {
            if (v129)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v126;
              _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v126);
            goto LABEL_218;
          }

          if (v129)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v123 = v127;
            v124 = v128;
            v125 = "%{public}s called with null webtransport_stream, no backtrace";
            goto LABEL_217;
          }
        }

        else
        {
          v130 = __nwlog_obj();
          v131 = v192;
          if (os_log_type_enabled(v130, v192))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v123 = v130;
            v124 = v131;
            v125 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
            goto LABEL_217;
          }
        }
      }

LABEL_218:
      if (v120)
      {
        free(v120);
      }

      v83 = &qword_1ED411000;
LABEL_154:
      v183[3] = v82;
      v72 = v174;
    }
  }

  v69 = *(v174 + 336);
  if (v69)
  {
    if ((*(v69 + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v167 = *(v174 + 336);
      v168 = __nwlog_obj();
      v169 = os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG);
      v69 = v167;
      if (v169)
      {
        v170 = *(v167 + 88);
        if (v170)
        {
          v171 = *(v170 + 492);
        }

        else
        {
          v171 = -1;
        }

        v172 = *(v167 + 64);
        *buf = 136447490;
        *&buf[4] = "nw_webtransport_session_get_next_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v167 + 192;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v171;
        *&v195[6] = 2048;
        *&v195[8] = v172;
        *&v195[16] = 2048;
        *&v195[18] = v167;
        _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> found stream (%p)", buf, 0x3Au);
        v69 = v167;
      }
    }
  }

  nw_protocol_set_input_handler(v174, v69);
  if ((*(v174 + 580) & 2) != 0)
  {
    goto LABEL_86;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v43 = gLogObj;
  if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
  {
    goto LABEL_86;
  }

  v70 = *(v174 + 492);
  *buf = 136446978;
  *&buf[4] = "nw_webtransport_session_remove_stream";
  *&buf[12] = 2082;
  *&buf[14] = v174 + 496;
  *&buf[22] = 2080;
  v194 = " ";
  *v195 = 1024;
  *&v195[2] = v70;
  v45 = "%{public}s %{public}s%s<i%u> not destroying, still have pending streams";
LABEL_85:
  _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_INFO, v45, buf, 0x26u);
LABEL_86:
  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v47 = handle[11];
      if (v47)
      {
        v48 = *(v47 + 492);
      }

      else
      {
        v48 = -1;
      }

      v49 = handle[8];
      *buf = 136447490;
      *&buf[4] = "nw_webtransport_stream_destroy";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v194 = " ";
      *v195 = 1024;
      *&v195[2] = v48;
      *&v195[6] = 2048;
      *&v195[8] = v49;
      *&v195[16] = 2048;
      *&v195[18] = handle;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
    }
  }

  if (handle[9])
  {
    if ((*(handle + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v50 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v51 = handle[11];
        if (v51)
        {
          v52 = *(v51 + 492);
        }

        else
        {
          v52 = -1;
        }

        v61 = handle[8];
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_stream_destroy";
        *&buf[12] = 2082;
        *&buf[14] = handle + 24;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v52;
        *&v195[6] = 2048;
        *&v195[8] = v61;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
      }
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
  v194 = &__block_descriptor_tmp_39_36819;
  *v195 = handle;
  v62 = handle[9];
  do
  {
    if (!v62)
    {
      break;
    }

    v63 = *(v62 + 32);
    v64 = (*&buf[16])(buf);
    v62 = v63;
  }

  while ((v64 & 1) != 0);
  (*(handle[22] + 16))();
  v65 = handle[22];
  if (v65)
  {
    _Block_release(v65);
    handle[22] = 0;
  }

  if (handle[21])
  {
    v66 = handle[20];
    if (v66)
    {
      os_release(v66);
    }
  }

  handle[20] = 0;
  if (handle[19])
  {
    v67 = handle[18];
    if (v67)
    {
      os_release(v67);
    }
  }

  handle[18] = 0;
  if (handle[17])
  {
    v68 = handle[16];
    if (v68)
    {
      os_release(v68);
    }
  }

  free(handle);
  return 1;
}

void ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke(uint64_t a1)
{
  v200 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  if (*(v1 + 476) == 5)
  {
    if ((*(v1 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 496;
        *&buf[22] = 2080;
        v194 = " ";
        *v195 = 1024;
        *&v195[2] = v4;
        v5 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v6 = v3;
        v7 = OS_LOG_TYPE_INFO;
LABEL_6:
        _os_log_impl(&dword_181A37000, v6, v7, v5, buf, 0x26u);
        return;
      }
    }

    return;
  }

  if ((*(v1 + 580) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v9 = *(v2 + 492);
      *buf = 136447234;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = v2 + 496;
      *&buf[22] = 2080;
      v194 = " ";
      *v195 = 1024;
      *&v195[2] = v9;
      *&v195[6] = 1024;
      *&v195[8] = 57;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
    }
  }

  v10 = *(v2 + 476);
  *(v2 + 476) = 5;
  v11 = *(v2 + 192);
  if (v11)
  {
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 0x40000000;
    v171[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
    v171[3] = &__block_descriptor_tmp_24_36439;
    v172 = 57;
    nw_hash_table_apply(v11, v171);
  }

  v12 = *(v2 + 448);
  if (v12)
  {
    v13 = *(v12 + 88);
    nw_protocol_error(*(v12 + 48), *(v2 + 448));
    nw_protocol_disconnect(v12, v13);
  }

  v14 = *(v2 + 336);
  if (v14)
  {
    do
    {
      v15 = *(v14 + 112);
      v16 = *(v14 + 88);
      nw_protocol_error(*(v14 + 48), v14);
      nw_protocol_disconnect(v14, v16);
      v14 = v15;
    }

    while (v15);
  }

  v17 = *(v2 + 440);
  if (v17)
  {
    v18 = *(v17 + 88);
    nw_protocol_error(*(v17 + 48), *(v2 + 440));
    nw_protocol_disconnect(v17, v18);
  }

  if (*(v2 + 32))
  {
    nw_protocol_remove_instance(v2);
    nw_protocol_disconnect(*(v2 + 32), v2);
  }

  v19 = *(v2 + 400);
  if (!v19)
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(v19);
  if (!webtransport_state)
  {
    return;
  }

  v21 = webtransport_state;
  if (v10 != 4 && v10 != 1)
  {
    return;
  }

  v22 = *(webtransport_state + 16);
  *(webtransport_state + 16) = v22 - 1;
  if (!v22)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = v21[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v194 = 1;
    *v195 = 2048;
    *&v195[2] = v23;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v186[0]) = 0;
    if (__nwlog_fault(v24, type, v186))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v27 = v21[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v194 = 1;
          *v195 = 2048;
          *&v195[2] = v27;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_38:
          _os_log_impl(&dword_181A37000, v25, v26, v28, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v186[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type[0];
        v30 = os_log_type_enabled(v25, type[0]);
        if (backtrace_string)
        {
          if (v30)
          {
            v31 = v21[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v194 = 1;
            *v195 = 2048;
            *&v195[2] = v31;
            *&v195[10] = 2082;
            *&v195[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (v30)
        {
          v33 = v21[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v194 = 1;
          *v195 = 2048;
          *&v195[2] = v33;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_38;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v32 = v21[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v194 = 1;
          *v195 = 2048;
          *&v195[2] = v32;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_38;
        }
      }
    }

LABEL_39:
    if (v24)
    {
      free(v24);
    }

    v21[2] = 0;
  }

  if (*(v2 + 580))
  {
    return;
  }

  v34 = *v21;
  if (!*v21)
  {
    return;
  }

  v35 = *(v34 + 352);
  v36 = *(v34 + 360);
  v37 = (v35 + 360);
  if (!v35)
  {
    v37 = v21 + 1;
  }

  *v37 = v36;
  *v36 = v35;
  *(v34 + 352) = 0;
  *(v34 + 360) = 0;
  v38 = *(v34 + 32);
  if (v38 && *(v34 + 480) == 2)
  {
    v39 = v38[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v127 = v38[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v39 = v127;
    }

    if (nw_protocols_are_equal(v39, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_57;
    }

    v40 = v38[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v129 = v38[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v40 = v129;
    }

    if (nw_protocols_are_equal(v40, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_57;
    }

    v41 = v38[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      v130 = v38[2];
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
      v41 = v130;
    }

    if (nw_protocols_are_equal(v41, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
LABEL_57:
      v42 = nw_protocol_copy_info(v38);
      v43 = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_27_36446;
      aBlock[4] = v34;
      if (v42)
      {
        _nw_array_apply(v42, aBlock);
        v44 = *(v34 + 400);
        if (!v44)
        {
          os_release(v43);
          return;
        }
      }

      else
      {
        v44 = *(v34 + 400);
        if (!v44)
        {
          return;
        }
      }

      version = nw_http_connection_metadata_get_version(v44);
      v46 = version;
      if (version == 4)
      {
        v47 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_66:
          v48 = v38[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v128 = v38[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v48 = v128;
          }

          v49 = nw_protocols_are_equal(v48, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v50 = *(v34 + 580);
          if (v49)
          {
            v50 |= 0x40u;
            *(v34 + 580) = v50;
          }

          if ((v50 & 2) == 0)
          {
            v51 = __nwlog_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = *(v34 + 492);
              if (v46 == 4)
              {
                v53 = 2;
              }

              else
              {
                v53 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v34 + 496;
              *&buf[22] = 2080;
              v194 = " ";
              *v195 = 1024;
              *&v195[2] = v52;
              *&v195[6] = 1024;
              *&v195[8] = v53;
              _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v43)
          {
            os_release(v43);
          }

          goto LABEL_78;
        }

        v47 = 1;
      }

      *(v34 + 480) = v47;
      goto LABEL_66;
    }
  }

LABEL_78:
  v54 = *(v34 + 480);
  if (v54 <= 1)
  {
    if ((*(v34 + 580) & 1) == 0)
    {
      if (!*(v34 + 476))
      {
        nw_webtransport_http_send_connect(v34);
      }

      return;
    }

    v57 = *(v34 + 476);
    if (v54 == 1)
    {
      if (v57 != 3)
      {
        if (v57)
        {
          return;
        }

        v58 = *(v34 + 48);
        if (v58)
        {
          v59 = *(v58 + 40);
          if (v59)
          {
            nw_protocol_replace_input_handler(*(v34 + 32), v34, *(v58 + 40));
            *(v34 + 440) = v59;
            nw_protocol_set_output_handler(v34, 0);
            nw_protocol_set_input_handler(v34, 0);
            if (*(v34 + 580))
            {
              v60 = *(*(v34 + 440) + 32);
              v61 = *(v60 + 16);
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v156 = *(v60 + 16);
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v61 = v156;
              }

              if (nw_protocols_are_equal(v61, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
                goto LABEL_97;
              }

              v62 = *(v60 + 16);
              if (nw_protocol_http3_identifier::onceToken != -1)
              {
                v159 = *(v60 + 16);
                dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                v62 = v159;
              }

              if (nw_protocols_are_equal(v62, &nw_protocol_http3_identifier::http3_protocol_identifier))
              {
LABEL_97:
                v63 = *(v34 + 368);
                if (v63)
                {
                  v64 = nw_parameters_copy_protocol_options_legacy(v63, v60);
                  if (v64)
                  {
                    if ((*(v59 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v160 = v64;
                      v161 = __nwlog_obj();
                      v162 = os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG);
                      v64 = v160;
                      if (v162)
                      {
                        v163 = *(v59 + 88);
                        if (v163)
                        {
                          v164 = *(v163 + 492);
                        }

                        else
                        {
                          v164 = -1;
                        }

                        v169 = *(v59 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v59 + 192;
                        *&buf[22] = 2080;
                        v194 = " ";
                        *v195 = 1024;
                        *&v195[2] = v164;
                        *&v195[6] = 2048;
                        *&v195[8] = v169;
                        *&v195[16] = 2048;
                        *&v195[18] = v160;
                        _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                        v64 = v160;
                      }
                    }

                    v65 = v64;
                    nw_http3_set_stream_mode(v64, 0);
                    os_release(v65);
                  }

                  else
                  {
                    if ((*(v34 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v167 = __nwlog_obj();
                      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
                      {
                        v168 = *(v34 + 492);
                        *buf = 136446978;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v34 + 496;
                        *&buf[22] = 2080;
                        v194 = " ";
                        *v195 = 1024;
                        *&v195[2] = v168;
                        _os_log_impl(&dword_181A37000, v167, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                      }
                    }

                    v77 = *(v59 + 88);
                    nw_protocol_error(*(v59 + 48), v59);
                    nw_protocol_disconnect(v59, v77);
                  }
                }
              }
            }

            goto LABEL_131;
          }

          v146 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          LODWORD(v170) = 12;
          v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v146, 16, "%{public}s called with null webtransport_stream", buf, v170);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v186[0]) = 0;
          if (__nwlog_fault(v141, type, v186))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v142 = __nwlog_obj();
              v143 = type[0];
              if (!os_log_type_enabled(v142, type[0]))
              {
                goto LABEL_330;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v144 = "%{public}s called with null webtransport_stream";
              goto LABEL_329;
            }

            if (LOBYTE(v186[0]) != 1)
            {
              v142 = __nwlog_obj();
              v143 = type[0];
              if (!os_log_type_enabled(v142, type[0]))
              {
                goto LABEL_330;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v144 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
              goto LABEL_329;
            }

            v157 = __nw_create_backtrace_string();
            v142 = __nwlog_obj();
            v143 = type[0];
            v158 = os_log_type_enabled(v142, type[0]);
            if (v157)
            {
              if (v158)
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                *&buf[12] = 2082;
                *&buf[14] = v157;
                _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v157);
              if (!v141)
              {
                goto LABEL_131;
              }

              goto LABEL_331;
            }

            if (v158)
            {
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v144 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_329:
              _os_log_impl(&dword_181A37000, v142, v143, v144, buf, 0xCu);
            }
          }
        }

        else
        {
          v140 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          LODWORD(v170) = 12;
          v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s called with null input_protocol", buf, v170);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v186[0]) = 0;
          if (!__nwlog_fault(v141, type, v186))
          {
            goto LABEL_330;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v142 = __nwlog_obj();
            v143 = type[0];
            if (!os_log_type_enabled(v142, type[0]))
            {
              goto LABEL_330;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v144 = "%{public}s called with null input_protocol";
            goto LABEL_329;
          }

          if (LOBYTE(v186[0]) != 1)
          {
            v142 = __nwlog_obj();
            v143 = type[0];
            if (!os_log_type_enabled(v142, type[0]))
            {
              goto LABEL_330;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v144 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_329;
          }

          v152 = __nw_create_backtrace_string();
          v142 = __nwlog_obj();
          v143 = type[0];
          v153 = os_log_type_enabled(v142, type[0]);
          if (!v152)
          {
            if (!v153)
            {
              goto LABEL_330;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v144 = "%{public}s called with null input_protocol, no backtrace";
            goto LABEL_329;
          }

          if (v153)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v152;
            _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v152);
        }

LABEL_330:
        if (!v141)
        {
LABEL_131:
          *(v34 + 476) = 2;
          return;
        }

LABEL_331:
        free(v141);
        goto LABEL_131;
      }

      v68 = *(v34 + 32);
      if (v68)
      {
        v69 = v68[3];
        if (v69 && *(v69 + 80))
        {
          for (i = 3; (i | 2) == 3; i = *(v34 + 476))
          {
            if (!nw_protocol_get_input_frames(v68, v34, 0, 0, 0xFFFFFFFFLL, v34 + 120))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v194 = __Block_byref_object_copy__36471;
            *v195 = __Block_byref_object_dispose__36472;
            *&v195[8] = nw_protocol_copy_http_definition();
            v195[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v175 = 0x40000000;
            v176 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v177 = &unk_1E6A31940;
            v178 = buf;
            v179 = v34;
            v180 = v34 + 120;
            v71 = *(v34 + 120);
            do
            {
              if (!v71)
              {
                break;
              }

              v72 = *(v71 + 32);
              v73 = (v176)(type);
              v71 = v72;
            }

            while ((v73 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v195[16] & 1) != 0 && *&v195[8])
            {
              os_release(*&v195[8]);
            }
          }

          v74 = *(v34 + 480);
          if (v74 == 1)
          {
            nw_webtransport_http3_handle_input(v34);
            v76 = *(v34 + 448);
            if (v76 && *(v76 + 72))
            {
              nw_protocol_input_available(*(v76 + 48), v76);
            }

            return;
          }

          if (v74)
          {
            return;
          }

          if ((*(v34 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v165 = __nwlog_obj();
            if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
            {
              v166 = *(v34 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = v34 + 496;
              *&buf[22] = 2080;
              v194 = " ";
              *v195 = 1024;
              *&v195[2] = v166;
              _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(v34 + 476) != 4)
          {
            return;
          }

          v75 = (v34 + 96);
          while (1)
          {
            capsule = nw_http_capsule_framer_read_capsule((v34 + 96), v34);
            if (!capsule && !*(v34 + 136))
            {
              return;
            }

            if (*(v34 + 456))
            {
              goto LABEL_140;
            }

            v83 = *v75;
            if (*v75 == -1)
            {
LABEL_197:
              v97 = __nwlog_obj();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v83;
                _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_140;
            }

            v84 = *(v34 + 104) != -1 && *(v34 + 112) == 0;
            if (v83 <= 16770303)
            {
              if ((v83 - 16770048) < 6 || (v83 + 1) <= 4 && v83)
              {
                goto LABEL_197;
              }
            }

            else if ((v83 - 420171065) <= 9 && ((1 << (v83 - 57)) & 0x2EF) != 0)
            {
              v192 = -1;
              if (nw_http_capsule_framer_parse_vle_value((v34 + 96), v34, &v192))
              {
                stream = nw_webtransport_session_get_stream(v34, v192);
                if (stream)
                {
                  goto LABEL_191;
                }

                if ((v83 - 420171067) > 1)
                {
                  goto LABEL_222;
                }

                v104 = v192;
                v105 = *(v34 + 580);
                if (v192 >> 60 || ((v192 ^ v105) & 1) == 0)
                {
                  if ((v105 & 2) == 0)
                  {
                    v114 = __nwlog_obj();
                    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                    {
                      v115 = *(v34 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v34 + 496;
                      *&buf[22] = 2080;
                      v194 = " ";
                      *v195 = 1024;
                      *&v195[2] = v115;
                      v116 = v114;
                      v117 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_221;
                    }
                  }

LABEL_222:
                  if ((*(v34 + 580) & 2) == 0)
                  {
                    v118 = __nwlog_obj();
                    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                    {
                      v119 = *(v34 + 492);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = v34 + 496;
                      *&buf[22] = 2080;
                      v194 = " ";
                      *v195 = 1024;
                      *&v195[2] = v119;
                      *&v195[6] = 2048;
                      *&v195[8] = v192;
                      *&v195[16] = 2048;
                      *&v195[18] = v83;
                      _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_140;
                }

                v106 = *(v34 + 424);
                if (!v106 || (v107 = *v106) == 0 || !*v107)
                {
                  if ((v105 & 2) == 0)
                  {
                    v120 = __nwlog_obj();
                    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                    {
                      v121 = *(v34 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v34 + 496;
                      *&buf[22] = 2080;
                      v194 = " ";
                      *v195 = 1024;
                      *&v195[2] = v121;
                      v116 = v120;
                      v117 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_221:
                      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_ERROR, v117, buf, 0x26u);
                    }
                  }

                  goto LABEL_222;
                }

                v108 = _nw_parameters_copy();
                *(v34 + 580) |= 0x20u;
                *(v34 + 176) = v104;
                v109 = (***(v34 + 424))(*(v34 + 424), *(v34 + 384), v108);
                *(v34 + 176) = -1;
                *(v34 + 580) &= ~0x20u;
                if (v109)
                {
                  v110 = nw_webtransport_session_get_stream(v34, v104);
                }

                else
                {
                  v110 = 0;
                }

                if (v108)
                {
                  os_release(v108);
                }

                if (!v110)
                {
                  goto LABEL_222;
                }

                stream = v110;
                if (*(v110 + 46) != 3)
                {
LABEL_191:
                  *(v34 + 456) = stream;
                  goto LABEL_140;
                }

                if ((*(v34 + 580) & 2) != 0)
                {
                  goto LABEL_140;
                }

                v122 = __nwlog_obj();
                if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_140;
                }

                v123 = *(v34 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v34 + 496;
                *&buf[22] = 2080;
                v194 = " ";
                *v195 = 1024;
                *&v195[2] = v123;
                *&v195[6] = 2048;
                *&v195[8] = v192;
                v100 = v122;
                v101 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v84)
                {
                  goto LABEL_140;
                }

                if ((*(v34 + 580) & 2) != 0)
                {
                  goto LABEL_140;
                }

                v98 = __nwlog_obj();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_140;
                }

                v99 = *(v34 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v34 + 496;
                *&buf[22] = 2080;
                v194 = " ";
                *v195 = 1024;
                *&v195[2] = v99;
                *&v195[6] = 2048;
                *&v195[8] = v83;
                v100 = v98;
                v101 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_ERROR, v101, buf, 0x30u);
            }

            else if ((v83 - 16770304) < 4)
            {
              goto LABEL_197;
            }

LABEL_140:
            v82 = *(v34 + 96);
            if ((*(v34 + 580) & 2) == 0 && gLogDatapath == 1)
            {
              v124 = __nwlog_obj();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
              {
                v125 = *(v34 + 492);
                v126 = *(v34 + 104);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v34 + 496;
                *&buf[22] = 2080;
                v194 = " ";
                *v195 = 1024;
                *&v195[2] = v125;
                *&v195[6] = 2048;
                *&v195[8] = v82;
                *&v195[16] = 2048;
                *&v195[18] = v126;
                _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v82 > 16770303)
            {
              if (v82 <= 420171064)
              {
                if ((v82 - 16770304) < 4)
                {
                  goto LABEL_159;
                }

                if (v82 == 420171064)
                {
                  goto LABEL_158;
                }

                goto LABEL_161;
              }

              if ((v82 - 420171065) >= 2)
              {
                if ((v82 - 420171067) < 2)
                {
                  v85 = *(v34 + 456);
                  v87 = v82 == 420171068 && capsule;
                  v186[0] = MEMORY[0x1E69E9820];
                  v186[1] = 0x40000000;
                  v187 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v188 = &__block_descriptor_tmp_34_36485;
                  v191 = v87;
                  v189 = v34 + 96;
                  v190 = v85;
                  v88 = *(v34 + 136);
                  do
                  {
                    if (!v88)
                    {
                      break;
                    }

                    v89 = *(v88 + 32);
                    v90 = (v187)(v186);
                    v88 = v89;
                  }

                  while ((v90 & 1) != 0);
                  if (!v87)
                  {
                    goto LABEL_217;
                  }

                  nw_protocol_input_finished(v85, v34);
                }

                goto LABEL_161;
              }

              if (capsule)
              {
                v91 = *(v34 + 456);
                v192 = -1;
                if (nw_http_capsule_framer_parse_vle_value((v34 + 96), v34, &v192))
                {
                  if (!v91 || (*(v91 + 276) & 0x10) == 0)
                  {
                    v92 = __nwlog_obj();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                    {
                      if (v91)
                      {
                        v93 = (v91 + 192);
                      }

                      else
                      {
                        v93 = "";
                      }

                      v94 = " ";
                      if (!v91)
                      {
                        v94 = "";
                      }

                      v95 = *(v91 + 88);
                      if (v95)
                      {
                        v78 = *(v95 + 492);
                      }

                      else
                      {
                        v78 = -1;
                      }

                      v79 = *(v91 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v93;
                      *&buf[22] = 2080;
                      v194 = v94;
                      *v195 = 1024;
                      *&v195[2] = v78;
                      *&v195[6] = 2048;
                      *&v195[8] = v79;
                      *&v195[16] = 2048;
                      *&v195[18] = v82;
                      v196 = 2048;
                      v197 = v79;
                      v198 = 2048;
                      v199 = v192;
                      _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v91, v34);
                  nw_protocol_webtransport_stream_disconnect(v91, v80);
                }

                else if ((*(v34 + 580) & 2) == 0)
                {
                  v102 = __nwlog_obj();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                  {
                    v103 = *(v34 + 492);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = v34 + 496;
                    *&buf[22] = 2080;
                    v194 = " ";
                    *v195 = 1024;
                    *&v195[2] = v103;
                    *&v195[6] = 2048;
                    *&v195[8] = v82;
                    _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_136:
                *(v34 + 456) = 0;
                nw_http_capsule_complete_capsule(v34 + 96);
              }
            }

            else
            {
              if (v82 <= 16770047)
              {
                if ((v82 - 1) < 3 || v82 == -1)
                {
LABEL_159:
                  v86 = __nwlog_obj();
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v82;
                    _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_161;
                }

                if (!v82)
                {
                  v85 = *(v34 + 448);
                  if (v85 && *(v85 + 184) != 3)
                  {
                    v181[0] = MEMORY[0x1E69E9820];
                    v181[1] = 0x40000000;
                    v182 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v183 = &__block_descriptor_tmp_35_36486;
                    v184 = v34 + 96;
                    v185 = v85;
                    v111 = *(v34 + 136);
                    do
                    {
                      if (!v111)
                      {
                        break;
                      }

                      v112 = *(v111 + 32);
                      v113 = (v182)(v181);
                      v111 = v112;
                    }

                    while ((v113 & 1) != 0);
LABEL_217:
                    nw_protocol_input_available(v85, v34);
                    goto LABEL_161;
                  }

LABEL_158:
                  nw_frame_array_finalize(v34 + 136, 1, 1);
                }
              }

              else if ((v82 - 16770048) < 6)
              {
                goto LABEL_159;
              }

LABEL_161:
              if (capsule)
              {
                goto LABEL_136;
              }
            }
          }
        }

        if ((*(v34 + 580) & 2) == 0)
        {
          v131 = __nwlog_obj();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            v132 = *(v34 + 492);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            *&buf[12] = 2082;
            *&buf[14] = v34 + 496;
            *&buf[22] = 2080;
            v194 = " ";
            *v195 = 1024;
            *&v195[2] = v132;
            _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
          }
        }

        v133 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        LODWORD(v170) = 12;
        v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v133, 16, "%{public}s output handler has no get_input_frames callback", buf, v170);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v186[0]) = 0;
        if (!__nwlog_fault(v134, type, v186))
        {
          goto LABEL_325;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v135 = __nwlog_obj();
          v136 = type[0];
          if (!os_log_type_enabled(v135, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          v137 = "%{public}s output handler has no get_input_frames callback";
LABEL_324:
          _os_log_impl(&dword_181A37000, v135, v136, v137, buf, 0xCu);
          goto LABEL_325;
        }

        if (LOBYTE(v186[0]) != 1)
        {
          v135 = __nwlog_obj();
          v136 = type[0];
          if (!os_log_type_enabled(v135, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          v137 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
          goto LABEL_324;
        }

        v147 = __nw_create_backtrace_string();
        v135 = __nwlog_obj();
        v136 = type[0];
        v148 = os_log_type_enabled(v135, type[0]);
        if (!v147)
        {
          if (!v148)
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          v137 = "%{public}s output handler has no get_input_frames callback, no backtrace";
          goto LABEL_324;
        }

        if (v148)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v147;
          v149 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_278:
          _os_log_impl(&dword_181A37000, v135, v136, v149, buf, 0x16u);
          goto LABEL_279;
        }

        goto LABEL_279;
      }

      v145 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      LODWORD(v170) = 12;
      v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v145, 16, "%{public}s called with null output_handler", buf, v170);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v186[0]) = 0;
      if (!__nwlog_fault(v134, type, v186))
      {
        goto LABEL_325;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v135 = __nwlog_obj();
        v136 = type[0];
        if (!os_log_type_enabled(v135, type[0]))
        {
          goto LABEL_325;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v137 = "%{public}s called with null output_handler";
        goto LABEL_324;
      }

      if (LOBYTE(v186[0]) != 1)
      {
        v135 = __nwlog_obj();
        v136 = type[0];
        if (!os_log_type_enabled(v135, type[0]))
        {
          goto LABEL_325;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v137 = "%{public}s called with null output_handler, backtrace limit exceeded";
        goto LABEL_324;
      }

      v154 = __nw_create_backtrace_string();
      v135 = __nwlog_obj();
      v136 = type[0];
      v155 = os_log_type_enabled(v135, type[0]);
      if (!v154)
      {
        if (!v155)
        {
          goto LABEL_325;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v137 = "%{public}s called with null output_handler, no backtrace";
        goto LABEL_324;
      }

      if (v155)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = v154;
        _os_log_impl(&dword_181A37000, v135, v136, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v154);
    }

    else
    {
      if (v57)
      {
        return;
      }

      *(v34 + 476) = 3;
      v66 = *(v34 + 48);
      if (!v66)
      {
        v138 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        LODWORD(v170) = 12;
        v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v138, 16, "%{public}s called with null input_protocol", buf, v170);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v186[0]) = 0;
        if (!__nwlog_fault(v134, type, v186))
        {
          goto LABEL_325;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v135 = __nwlog_obj();
          v136 = type[0];
          if (!os_log_type_enabled(v135, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v137 = "%{public}s called with null input_protocol";
          goto LABEL_324;
        }

        if (LOBYTE(v186[0]) != 1)
        {
          v135 = __nwlog_obj();
          v136 = type[0];
          if (!os_log_type_enabled(v135, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v137 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_324;
        }

        v147 = __nw_create_backtrace_string();
        v135 = __nwlog_obj();
        v136 = type[0];
        v150 = os_log_type_enabled(v135, type[0]);
        if (!v147)
        {
          if (!v150)
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v137 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_324;
        }

        if (v150)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v147;
          v149 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
          goto LABEL_278;
        }

LABEL_279:
        free(v147);
        if (!v134)
        {
          return;
        }

LABEL_326:
        free(v134);
        return;
      }

      v67 = *(v66 + 40);
      if (v67)
      {
        *(v34 + 440) = v67;
        return;
      }

      v139 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
      LODWORD(v170) = 12;
      v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v139, 16, "%{public}s called with null webtransport_stream", buf, v170);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v186[0]) = 0;
      if (__nwlog_fault(v134, type, v186))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v135 = __nwlog_obj();
          v136 = type[0];
          if (!os_log_type_enabled(v135, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v137 = "%{public}s called with null webtransport_stream";
          goto LABEL_324;
        }

        if (LOBYTE(v186[0]) != 1)
        {
          v135 = __nwlog_obj();
          v136 = type[0];
          if (!os_log_type_enabled(v135, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v137 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
          goto LABEL_324;
        }

        v147 = __nw_create_backtrace_string();
        v135 = __nwlog_obj();
        v136 = type[0];
        v151 = os_log_type_enabled(v135, type[0]);
        if (!v147)
        {
          if (!v151)
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v137 = "%{public}s called with null webtransport_stream, no backtrace";
          goto LABEL_324;
        }

        if (v151)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v147;
          v149 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
          goto LABEL_278;
        }

        goto LABEL_279;
      }
    }

LABEL_325:
    if (!v134)
    {
      return;
    }

    goto LABEL_326;
  }

  if ((*(v34 + 580) & 2) == 0)
  {
    v55 = __nwlog_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = *(v34 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_establish";
      *&buf[12] = 2082;
      *&buf[14] = v34 + 496;
      *&buf[22] = 2080;
      v194 = " ";
      *v195 = 1024;
      *&v195[2] = v56;
      v5 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
      v6 = v55;
      v7 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }
}

uint64_t nw::retained_ptr<nw_endpoint *>::operator=(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if ((v2 & 1) != 0 && *result)
  {
    v3 = result;
    v4 = a2;
    os_release(*result);
    a2 = v4;
    result = v3;
    v2 = *(v3 + 8);
  }

  *result = 0;
  *result = *a2;
  *(result + 8) = v2 | 1;
  *a2 = 0;
  return result;
}

uint64_t ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = nw_hash_node_get_object(a2);
  v4 = *(a1 + 40);
  if (!v4 || (*(v4 + 580) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = (v6 + 496);
      v8 = "";
      v9 = v6 == 0;
      if (!v6)
      {
        v7 = "";
      }

      v10 = *(v6 + 492);
      if (!v9)
      {
        v8 = " ";
      }

      v11 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136447234;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v7;
      *&buf[22] = 2080;
      v56 = v8;
      LOWORD(v57) = 1024;
      *(&v57 + 2) = v10;
      HIWORD(v57) = 2048;
      v58 = v11;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s should not have streams left when destroying", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v12, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      v15 = "%{public}s should not have streams left when destroying";
LABEL_20:
      v20 = v13;
      v21 = v14;
LABEL_21:
      _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
      goto LABEL_22;
    }

    if (v53 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      v15 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = type;
    v19 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v19)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v19)
    {
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      v15 = "%{public}s should not have streams left when destroying, no backtrace";
      v20 = v17;
      v21 = v18;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v12)
  {
    free(v12);
  }

  if ((nw_hash_table_remove_node(*(*(a1 + 40) + 192), a2) & 1) == 0)
  {
    v22 = *(a1 + 40);
    if (!v22 || (*(v22 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 40);
        v25 = (v24 + 496);
        v26 = "";
        if (v24)
        {
          v26 = " ";
        }

        else
        {
          v25 = "";
        }

        v27 = *(v24 + 492);
        v28 = *(*(*(*(a1 + 32) + 8) + 24) + 64);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v25;
        *&buf[22] = 2080;
        v56 = v26;
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v27;
        HIWORD(v57) = 2048;
        v58 = v28;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table", buf, 0x30u);
      }
    }
  }

  v29 = *(*(*(a1 + 32) + 8) + 24);
  if (v29)
  {
    if ((*(v29 + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v31 = *(v29 + 88);
        if (v31)
        {
          v32 = *(v31 + 492);
        }

        else
        {
          v32 = -1;
        }

        v33 = *(v29 + 64);
        *buf = 136447490;
        *&buf[4] = "nw_webtransport_stream_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v29 + 192;
        *&buf[22] = 2080;
        v56 = " ";
        LOWORD(v57) = 1024;
        *(&v57 + 2) = v32;
        HIWORD(v57) = 2048;
        v58 = v33;
        v59 = 2048;
        v60 = v29;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
      }
    }

    if (*(v29 + 72))
    {
      if ((*(v29 + 276) & 0x10) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v35 = *(v29 + 88);
          if (v35)
          {
            v36 = *(v35 + 492);
          }

          else
          {
            v36 = -1;
          }

          v37 = *(v29 + 64);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_stream_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v29 + 192;
          *&buf[22] = 2080;
          v56 = " ";
          LOWORD(v57) = 1024;
          *(&v57 + 2) = v36;
          HIWORD(v57) = 2048;
          v58 = v37;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
        }
      }
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
    v56 = &__block_descriptor_tmp_39_36819;
    v57 = v29;
    v38 = *(v29 + 72);
    do
    {
      if (!v38)
      {
        break;
      }

      v39 = *(v38 + 32);
      v40 = (*&buf[16])(buf);
      v38 = v39;
    }

    while ((v40 & 1) != 0);
    (*(*(v29 + 176) + 16))();
    v41 = *(v29 + 176);
    if (v41)
    {
      _Block_release(v41);
      *(v29 + 176) = 0;
    }

    if (*(v29 + 168))
    {
      v42 = *(v29 + 160);
      if (v42)
      {
        os_release(v42);
      }
    }

    *(v29 + 160) = 0;
    if (*(v29 + 152))
    {
      v43 = *(v29 + 144);
      if (v43)
      {
        os_release(v43);
      }
    }

    *(v29 + 144) = 0;
    if (*(v29 + 136))
    {
      v44 = *(v29 + 128);
      if (v44)
      {
        os_release(v44);
      }
    }

LABEL_60:
    free(v29);
    return 1;
  }

  v46 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_stream_destroy";
  LODWORD(v52) = 12;
  v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null webtransport_stream", buf, v52);
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (!__nwlog_fault(v29, &type, &v53))
  {
LABEL_79:
    if (!v29)
    {
      return 1;
    }

    goto LABEL_60;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v47 = __nwlog_obj();
    v48 = type;
    if (!os_log_type_enabled(v47, type))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_webtransport_stream_destroy";
    v49 = "%{public}s called with null webtransport_stream";
LABEL_78:
    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
    goto LABEL_79;
  }

  if (v53 != 1)
  {
    v47 = __nwlog_obj();
    v48 = type;
    if (!os_log_type_enabled(v47, type))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_webtransport_stream_destroy";
    v49 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_78;
  }

  v50 = __nw_create_backtrace_string();
  v47 = __nwlog_obj();
  v48 = type;
  v51 = os_log_type_enabled(v47, type);
  if (!v50)
  {
    if (!v51)
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_webtransport_stream_destroy";
    v49 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_78;
  }

  if (v51)
  {
    *buf = 136446466;
    *&buf[4] = "nw_webtransport_stream_destroy";
    *&buf[12] = 2082;
    *&buf[14] = v50;
    _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v50);
  if (v29)
  {
    goto LABEL_60;
  }

  return 1;
}

uint64_t ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32) + 80);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v3)
  {
    v2 = (v3 + 40);
  }

  *v2 = v4;
  *v4 = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

void std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(uint64_t a1)
{
  if (*(a1 + 408))
  {
    v2 = *(a1 + 400);
    if (v2)
    {
      os_release(v2);
    }
  }

  *(a1 + 400) = 0;
  if (*(a1 + 392))
  {
    v3 = *(a1 + 384);
    if (v3)
    {
      os_release(v3);
    }
  }

  *(a1 + 384) = 0;
  if (*(a1 + 376))
  {
    v4 = *(a1 + 368);
    if (v4)
    {
      os_release(v4);
    }
  }

  *(a1 + 368) = 0;
}

void nw_protocol_webtransport_stream_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_get_message_properties";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v7, &type, &v19))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_get_message_properties";
      v10 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v22 = "nw_protocol_webtransport_stream_get_message_properties";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_50:
        if (!v7)
        {
          return;
        }

        goto LABEL_51;
      }

      if (!v14)
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_get_message_properties";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_get_message_properties";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_49;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_get_message_properties";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v7, &type, &v19))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v19 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_get_message_properties";
        v10 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_49;
      }

      v15 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v16 = os_log_type_enabled(v8, type);
      if (!v15)
      {
        if (!v16)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_get_message_properties";
        v10 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_49;
      }

      if (v16)
      {
        *buf = 136446466;
        v22 = "nw_protocol_webtransport_stream_get_message_properties";
        v23 = 2082;
        v24 = v15;
        v17 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_34:
        _os_log_impl(&dword_181A37000, v8, v9, v17, buf, 0x16u);
      }

LABEL_35:
      free(v15);
      if (!v7)
      {
        return;
      }

LABEL_51:
      free(v7);
      return;
    }

    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_50;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_get_message_properties";
    v10 = "%{public}s called with null webtransport_stream";
LABEL_49:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_50;
  }

  if (!a3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_get_message_properties";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null message_properties", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v7, &type, &v19))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_get_message_properties";
      v10 = "%{public}s called with null message_properties";
      goto LABEL_49;
    }

    if (v19 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_get_message_properties";
      v10 = "%{public}s called with null message_properties, backtrace limit exceeded";
      goto LABEL_49;
    }

    v15 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!v15)
    {
      if (!v18)
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_get_message_properties";
      v10 = "%{public}s called with null message_properties, no backtrace";
      goto LABEL_49;
    }

    if (v18)
    {
      *buf = 136446466;
      v22 = "nw_protocol_webtransport_stream_get_message_properties";
      v23 = 2082;
      v24 = v15;
      v17 = "%{public}s called with null message_properties, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v4 = a3[1] & 0xFFFFFFF8;
  if (*(v3 + 64) == -2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  *a3 = -1;
  a3[1] = v4 | v5;
}

uint64_t nw_protocol_webtransport_stream_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
      v9 = "%{public}s called with null protocol";
LABEL_52:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_53;
    }

    if (v22 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v17 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v17)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v26 = 2082;
    v27 = backtrace_string;
    v18 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v18, buf, 0x16u);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
      v9 = "%{public}s called with null webtransport_stream";
      goto LABEL_52;
    }

    if (v22 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v9 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v19 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v9 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v19)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v26 = 2082;
    v27 = backtrace_string;
    v18 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  v3 = handle[11];
  if (v3)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v12 = a2;
      v13 = __nwlog_obj();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      v3 = handle[11];
      if (v14)
      {
        if (v3)
        {
          v15 = *(v3 + 492);
        }

        else
        {
          v15 = -1;
        }

        v21 = handle[8];
        *buf = 136447234;
        v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v26 = 2082;
        v27 = (handle + 24);
        v28 = 2080;
        v29 = " ";
        v30 = 1024;
        v31 = v15;
        v32 = 2048;
        v33 = v21;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        v3 = handle[11];
      }

      a2 = v12;
    }

    return nw_protocol_remove_listen_handler(v3, a2);
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null webtransport_stream->webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v6, &type, &v22))
  {
    goto LABEL_53;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v9 = "%{public}s called with null webtransport_stream->webtransport_session, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v20 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v9 = "%{public}s called with null webtransport_stream->webtransport_session, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446466;
      v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v18 = "%{public}s called with null webtransport_stream->webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

LABEL_36:
    free(backtrace_string);
    goto LABEL_53;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v9 = "%{public}s called with null webtransport_stream->webtransport_session";
    goto LABEL_52;
  }

LABEL_53:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_stream_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_stream_add_listen_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v25 = "nw_protocol_webtransport_stream_add_listen_handler";
      v9 = "%{public}s called with null protocol";
LABEL_52:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_53;
    }

    if (v22 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_add_listen_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v17 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_add_listen_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v17)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v25 = "nw_protocol_webtransport_stream_add_listen_handler";
    v26 = 2082;
    v27 = backtrace_string;
    v18 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v18, buf, 0x16u);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_stream_add_listen_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v6, &type, &v22))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v25 = "nw_protocol_webtransport_stream_add_listen_handler";
      v9 = "%{public}s called with null webtransport_stream";
      goto LABEL_52;
    }

    if (v22 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_add_listen_handler";
        v9 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v19 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_add_listen_handler";
        v9 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v19)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v25 = "nw_protocol_webtransport_stream_add_listen_handler";
    v26 = 2082;
    v27 = backtrace_string;
    v18 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  v3 = handle[11];
  if (v3)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v12 = a2;
      v13 = __nwlog_obj();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      v3 = handle[11];
      if (v14)
      {
        if (v3)
        {
          v15 = *(v3 + 492);
        }

        else
        {
          v15 = -1;
        }

        v21 = handle[8];
        *buf = 136447234;
        v25 = "nw_protocol_webtransport_stream_add_listen_handler";
        v26 = 2082;
        v27 = (handle + 24);
        v28 = 2080;
        v29 = " ";
        v30 = 1024;
        v31 = v15;
        v32 = 2048;
        v33 = v21;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        v3 = handle[11];
      }

      a2 = v12;
    }

    return nw_protocol_add_listen_handler(v3, a2);
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_webtransport_stream_add_listen_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null webtransport_stream->webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v6, &type, &v22))
  {
    goto LABEL_53;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_add_listen_handler";
        v9 = "%{public}s called with null webtransport_stream->webtransport_session, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v20 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_stream_add_listen_handler";
        v9 = "%{public}s called with null webtransport_stream->webtransport_session, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446466;
      v25 = "nw_protocol_webtransport_stream_add_listen_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v18 = "%{public}s called with null webtransport_stream->webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

LABEL_36:
    free(backtrace_string);
    goto LABEL_53;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_stream_add_listen_handler";
    v9 = "%{public}s called with null webtransport_stream->webtransport_session";
    goto LABEL_52;
  }

LABEL_53:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_stream_copy_info(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if ((*(v2 + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v13 = a1;
        v14 = __nwlog_obj();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        a1 = v13;
        if (v15)
        {
          v16 = *(v2 + 88);
          if (v16)
          {
            v17 = *(v16 + 492);
          }

          else
          {
            v17 = -1;
          }

          v22 = *(v2 + 64);
          *buf = 136447234;
          v26 = "nw_protocol_webtransport_stream_copy_info";
          v27 = 2082;
          v28 = (v2 + 192);
          v29 = 2080;
          v30 = " ";
          v31 = 1024;
          v32 = v17;
          v33 = 2048;
          v34 = v22;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
          a1 = v13;
        }
      }

      if (!*(v2 + 32))
      {
        a1 = *(v2 + 88);
      }

      result = nw_protocol_common_copy_info(a1, a2);
      if (a2 == 255)
      {
        if (!result)
        {
          result = _nw_array_create();
        }

        v5 = *(v2 + 160);
        if (v5)
        {
          if (result)
          {
            v6 = result;
            _nw_array_append(result, v5);
            return v6;
          }
        }
      }

      return result;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_webtransport_stream_copy_info";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_webtransport_stream_copy_info";
        v11 = "%{public}s called with null webtransport_stream";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v23 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_webtransport_stream_copy_info";
        v11 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v21 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v26 = "nw_protocol_webtransport_stream_copy_info";
        v11 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v21)
    {
      *buf = 136446466;
      v26 = "nw_protocol_webtransport_stream_copy_info";
      v27 = 2082;
      v28 = backtrace_string;
      v20 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_protocol_webtransport_stream_copy_info";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_46;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v23 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_webtransport_stream_copy_info";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v19 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_protocol_webtransport_stream_copy_info";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v19)
    {
      *buf = 136446466;
      v26 = "nw_protocol_webtransport_stream_copy_info";
      v27 = 2082;
      v28 = backtrace_string;
      v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_33:
      _os_log_impl(&dword_181A37000, v9, v10, v20, buf, 0x16u);
    }

LABEL_34:
    free(backtrace_string);
    goto LABEL_46;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v26 = "nw_protocol_webtransport_stream_copy_info";
    v11 = "%{public}s called with null protocol";
LABEL_45:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_46:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

void nw_protocol_webtransport_stream_notify(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_webtransport_stream_notify";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v5, &type, &v23))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v26 = "nw_protocol_webtransport_stream_notify";
      v8 = "%{public}s called with null protocol";
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v19 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v26 = "nw_protocol_webtransport_stream_notify";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v5)
        {
          return;
        }

LABEL_41:
        free(v5);
        return;
      }

      if (!v19)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v26 = "nw_protocol_webtransport_stream_notify";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v26 = "nw_protocol_webtransport_stream_notify";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_40;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if ((*(v3 + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v10 = a3;
      v11 = a2;
      v12 = a1;
      v13 = __nwlog_obj();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      a2 = v11;
      a3 = v10;
      v15 = v14;
      a1 = v12;
      if (v15)
      {
        v16 = *(v3 + 88);
        if (v16)
        {
          v17 = *(v16 + 492);
        }

        else
        {
          v17 = -1;
        }

        v22 = *(v3 + 64);
        *buf = 136447234;
        v26 = "nw_protocol_webtransport_stream_notify";
        v27 = 2082;
        v28 = (v3 + 192);
        v29 = 2080;
        v30 = " ";
        v31 = 1024;
        v32 = v17;
        v33 = 2048;
        v34 = v22;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        a3 = v10;
        a2 = v11;
        a1 = v12;
      }
    }

    nw_protocol_common_notify(a1, a2, a3);
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_protocol_webtransport_stream_notify";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v5, &type, &v23))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v26 = "nw_protocol_webtransport_stream_notify";
    v8 = "%{public}s called with null webtransport_stream";
    goto LABEL_39;
  }

  if (v23 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v26 = "nw_protocol_webtransport_stream_notify";
    v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_39;
  }

  v20 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v21 = os_log_type_enabled(v6, type);
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v26 = "nw_protocol_webtransport_stream_notify";
    v8 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_39;
  }

  if (v21)
  {
    *buf = 136446466;
    v26 = "nw_protocol_webtransport_stream_notify";
    v27 = 2082;
    v28 = v20;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v20);
  if (v5)
  {
    goto LABEL_41;
  }
}

void nw_protocol_webtransport_stream_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_output_available";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &type, &v18))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_output_available";
      v8 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v21 = "nw_protocol_webtransport_stream_output_available";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v5)
        {
          return;
        }

LABEL_42:
        free(v5);
        return;
      }

      if (!v14)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_output_available";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_output_available";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_41;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(handle + 11);
        if (v11)
        {
          v12 = *(v11 + 492);
        }

        else
        {
          v12 = -1;
        }

        v17 = *(handle + 8);
        *buf = 136447234;
        v21 = "nw_protocol_webtransport_stream_output_available";
        v22 = 2082;
        v23 = handle + 192;
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v12;
        v28 = 2048;
        v29 = v17;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    if (*(handle + 47) == 2)
    {
      nw_protocol_output_available(*(handle + 6), a1);
    }

    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_stream_output_available";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &type, &v18))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_output_available";
    v8 = "%{public}s called with null webtransport_stream";
    goto LABEL_40;
  }

  if (v18 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_output_available";
    v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_40;
  }

  v15 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v16 = os_log_type_enabled(v6, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_output_available";
    v8 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_40;
  }

  if (v16)
  {
    *buf = 136446466;
    v21 = "nw_protocol_webtransport_stream_output_available";
    v22 = 2082;
    v23 = v15;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v5)
  {
    goto LABEL_42;
  }
}

void nw_protocol_webtransport_stream_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_input_available";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &type, &v18))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_input_available";
      v8 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v21 = "nw_protocol_webtransport_stream_input_available";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v5)
        {
          return;
        }

LABEL_42:
        free(v5);
        return;
      }

      if (!v14)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_input_available";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_input_available";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_41;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(handle + 11);
        if (v11)
        {
          v12 = *(v11 + 492);
        }

        else
        {
          v12 = -1;
        }

        v17 = *(handle + 8);
        *buf = 136447234;
        v21 = "nw_protocol_webtransport_stream_input_available";
        v22 = 2082;
        v23 = handle + 192;
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v12;
        v28 = 2048;
        v29 = v17;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    if (*(handle + 46) == 2)
    {
      nw_protocol_input_available(*(handle + 6), a1);
    }

    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_stream_input_available";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &type, &v18))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_input_available";
    v8 = "%{public}s called with null webtransport_stream";
    goto LABEL_40;
  }

  if (v18 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_input_available";
    v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_40;
  }

  v15 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v16 = os_log_type_enabled(v6, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_input_available";
    v8 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_40;
  }

  if (v16)
  {
    *buf = 136446466;
    v21 = "nw_protocol_webtransport_stream_input_available";
    v22 = 2082;
    v23 = v15;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v5)
  {
    goto LABEL_42;
  }
}

void nw_protocol_webtransport_stream_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_disconnected";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &type, &v18))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_disconnected";
      v8 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v21 = "nw_protocol_webtransport_stream_disconnected";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v5)
        {
          return;
        }

LABEL_41:
        free(v5);
        return;
      }

      if (!v14)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_disconnected";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_stream_disconnected";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = handle[11];
        if (v11)
        {
          v12 = *(v11 + 492);
        }

        else
        {
          v12 = -1;
        }

        v17 = handle[8];
        *buf = 136447234;
        v21 = "nw_protocol_webtransport_stream_disconnected";
        v22 = 2082;
        v23 = (handle + 24);
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v12;
        v28 = 2048;
        v29 = v17;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    nw_protocol_disconnected(a1->default_input_handler, a1);
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_stream_disconnected";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &type, &v18))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_disconnected";
    v8 = "%{public}s called with null webtransport_stream";
    goto LABEL_39;
  }

  if (v18 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_disconnected";
    v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_39;
  }

  v15 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v16 = os_log_type_enabled(v6, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_stream_disconnected";
    v8 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_39;
  }

  if (v16)
  {
    *buf = 136446466;
    v21 = "nw_protocol_webtransport_stream_disconnected";
    v22 = 2082;
    v23 = v15;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v5)
  {
    goto LABEL_41;
  }
}

uint64_t nw_protocol_webtransport_stream_get_remote_endpoint(nw_protocol *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v10 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v13 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }

    if (v13)
    {
      *buf = 136446466;
      v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_37:
    if (!v7)
    {
      return 0;
    }

LABEL_38:
    free(v7);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v10 = "%{public}s called with null webtransport_stream";
      goto LABEL_36;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v10 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_36;
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
        v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
        v20 = 2082;
        v21 = v14;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v10 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_36:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
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
  if (!v3 || !*(v3 + 136))
  {
    return 0;
  }

  default_input_handler = a1->default_input_handler;

  return nw_protocol_get_remote_endpoint(default_input_handler);
}

uint64_t nw_protocol_webtransport_stream_get_parameters(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[18];
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_stream_get_parameters";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_stream", buf, 12);
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
        v16 = "nw_protocol_webtransport_stream_get_parameters";
        v7 = "%{public}s called with null webtransport_stream";
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
        v16 = "nw_protocol_webtransport_stream_get_parameters";
        v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
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
        v16 = "nw_protocol_webtransport_stream_get_parameters";
        v7 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_stream_get_parameters";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_webtransport_stream_get_parameters";
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
        v16 = "nw_protocol_webtransport_stream_get_parameters";
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
        v16 = "nw_protocol_webtransport_stream_get_parameters";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_stream_get_parameters";
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
    v16 = "nw_protocol_webtransport_stream_get_parameters";
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

uint64_t nw_protocol_webtransport_stream_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_webtransport_stream_add_input_handler";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v14, &type, &v51))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v17 = "%{public}s called with null protocol";
      goto LABEL_74;
    }

    if (v51 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v27 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v17 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_74;
    }

    if (v27)
    {
      *buf = 136446466;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v55 = 2082;
      v56 = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_75:
    if (!v14)
    {
      return 0;
    }

LABEL_76:
    free(v14);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_webtransport_stream_add_input_handler";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v14, &type, &v51))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v17 = "%{public}s called with null webtransport_stream";
      goto LABEL_74;
    }

    if (v51 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v17 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_74;
    }

    v28 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v29 = os_log_type_enabled(v15, type);
    if (v28)
    {
      if (v29)
      {
        *buf = 136446466;
        v54 = "nw_protocol_webtransport_stream_add_input_handler";
        v55 = 2082;
        v56 = v28;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v28);
      if (!v14)
      {
        return 0;
      }

      goto LABEL_76;
    }

    if (v29)
    {
      *buf = 136446210;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v17 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_74:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      goto LABEL_75;
    }

    goto LABEL_75;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v19 = a2;
    v20 = a1;
    v21 = __nwlog_obj();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    a2 = v19;
    v23 = v22;
    a1 = v20;
    if (v23)
    {
      v24 = handle[11];
      if (v24)
      {
        v25 = *(v24 + 492);
      }

      else
      {
        v25 = -1;
      }

      v46 = handle[8];
      *buf = 136447234;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      v55 = 2082;
      v56 = (handle + 24);
      v57 = 2080;
      v58 = " ";
      v59 = 1024;
      v60 = v25;
      v61 = 2048;
      v62 = v46;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a2 = v19;
      a1 = v20;
    }
  }

  v3 = handle[11];
  if (v3)
  {
    v4 = a1->default_input_handler == a2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (gLogDatapath == 1)
    {
      v5 = __nwlog_obj();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v54 = "nw_protocol_webtransport_stream_add_input_handler";
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Rejecting duplicate request for a webtransport stream", buf, 0xCu);
    }
  }

  else
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v30 = a2;
      v31 = __nwlog_obj();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      a2 = v30;
      if (v32)
      {
        v33 = handle[11];
        if (v33)
        {
          v34 = *(v33 + 492);
        }

        else
        {
          v34 = -1;
        }

        v47 = handle[8];
        *buf = 136447490;
        v54 = "nw_protocol_webtransport_stream_add_input_handler";
        v55 = 2082;
        v56 = (handle + 24);
        v57 = 2080;
        v58 = " ";
        v59 = 1024;
        v60 = v34;
        v61 = 2048;
        v62 = v47;
        v63 = 2048;
        v64 = handle;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Peeling off a new stream from %p", buf, 0x3Au);
        a2 = v30;
      }
    }

    v7 = a2;
    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v35 = parameters;
        v36 = __nwlog_obj();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
        parameters = v35;
        if (v37)
        {
          v38 = handle[11];
          if (v38)
          {
            v39 = *(v38 + 492);
          }

          else
          {
            v39 = -1;
          }

          v48 = handle[8];
          *buf = 136447234;
          v54 = "nw_webtransport_stream_replace_protocol_instance";
          v55 = 2082;
          v56 = (handle + 24);
          v57 = 2080;
          v58 = " ";
          v59 = 1024;
          v60 = v39;
          v61 = 2048;
          v62 = v48;
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
          parameters = v35;
        }
      }

      v9 = parameters;
      v10 = _nw_parameters_copy_protocol_options_with_level();

      if (v10)
      {
        if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
        {
          v43 = __nwlog_obj();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = handle[11];
            if (v44)
            {
              v45 = *(v44 + 492);
            }

            else
            {
              v45 = -1;
            }

            v50 = handle[8];
            *buf = 136448514;
            v54 = "nw_webtransport_stream_replace_protocol_instance";
            v55 = 2082;
            v56 = (handle + 24);
            v57 = 2080;
            v58 = " ";
            v59 = 1024;
            v60 = v45;
            v61 = 2048;
            v62 = v50;
            v63 = 2048;
            v64 = handle;
            v65 = 2048;
            v66 = v3;
            v67 = 2048;
            v68 = handle;
            v69 = 2048;
            v70 = v9;
            v71 = 2048;
            v72 = v10;
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> webtransport_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x62u);
          }
        }

        if (nw_protocol_copy_webtransport_definition::onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
        }

        v11 = nw_protocol_copy_webtransport_definition::definition;
        v12 = v10;
        _nw_protocol_options_set_instance(v12, v3);

        if (v11)
        {
          os_release(v11);
        }

        os_release(v12);
      }

      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v40 = __nwlog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v41 = handle[11];
          if (v41)
          {
            v42 = *(v41 + 492);
          }

          else
          {
            v42 = -1;
          }

          v49 = handle[8];
          *buf = 136447490;
          v54 = "nw_protocol_webtransport_stream_add_input_handler";
          v55 = 2082;
          v56 = (handle + 24);
          v57 = 2080;
          v58 = " ";
          v59 = 1024;
          v60 = v42;
          v61 = 2048;
          v62 = v49;
          v63 = 2048;
          v64 = v9;
          _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Set connection protocol as instance in peeled off parameters %p", buf, 0x3Au);
        }
      }
    }

    if (handle[11])
    {
      return nw_protocol_add_input_handler(v3, v7);
    }
  }

  return 0;
}

void ___ZL47nw_protocol_webtransport_http2_stream_callbacksv_block_invoke()
{
  qword_1EA842230 = nw_protocol_default_replace_input_handler;
  qword_1EA842328 = nw_protocol_default_input_flush;
  qword_1EA842288 = nw_protocol_default_link_state;
  qword_1EA8422A0 = nw_protocol_default_get_local;
  qword_1EA842298 = nw_protocol_default_get_path;
  qword_1EA8422C8 = nw_protocol_default_updated_path;
  qword_1EA8422E8 = nw_protocol_default_get_output_local;
  qword_1EA8422F0 = nw_protocol_default_get_output_interface;
  qword_1EA842320 = nw_protocol_default_reset;
  qword_1EA8422D0 = nw_protocol_default_supports_external_data;
  qword_1EA8422F8 = nw_protocol_default_waiting_for_output;
  qword_1EA8422B0 = nw_protocol_default_register_notification;
  qword_1EA8422B8 = nw_protocol_default_unregister_notification;
  nw_protocol_webtransport_http2_stream_callbacks(void)::protocol_callbacks = nw_protocol_webtransport_stream_add_input_handler;
  qword_1EA842290 = nw_protocol_webtransport_stream_get_parameters;
  qword_1EA8422A8 = nw_protocol_webtransport_stream_get_remote_endpoint;
  qword_1EA842240 = nw_protocol_webtransport_stream_disconnect;
  qword_1EA842250 = nw_protocol_webtransport_stream_disconnected;
  qword_1EA842258 = nw_protocol_webtransport_stream_error;
  qword_1EA842260 = nw_protocol_webtransport_stream_input_available;
  qword_1EA842268 = nw_protocol_webtransport_stream_output_available;
  qword_1EA8422C0 = nw_protocol_webtransport_stream_notify;
  qword_1EA842300 = nw_protocol_webtransport_stream_copy_info;
  qword_1EA842308 = nw_protocol_webtransport_stream_add_listen_handler;
  qword_1EA842310 = nw_protocol_webtransport_stream_remove_listen_handler;
  qword_1EA842318 = nw_protocol_webtransport_stream_get_message_properties;
  qword_1EA842228 = nw_protocol_webtransport_http2_stream_remove_input_handler;
  qword_1EA842238 = nw_protocol_webtransport_http2_stream_connect;
  qword_1EA842248 = nw_protocol_webtransport_http2_stream_connected;
  qword_1EA842270 = nw_protocol_webtransport_http2_stream_get_input_frames;
  qword_1EA842278 = nw_protocol_webtransport_http2_stream_get_output_frames;
  qword_1EA842280 = nw_protocol_webtransport_http2_stream_finalize_output_frames;
  qword_1EA8422D8 = nw_protocol_webtransport_http2_stream_input_finished;
  qword_1EA8422E0 = nw_protocol_webtransport_http2_stream_output_finished;
}

void nw_protocol_webtransport_http2_stream_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v15, type, &v31))
    {
      goto LABEL_70;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (!os_log_type_enabled(v16, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      v18 = "%{public}s called with null protocol";
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type[0];
      v24 = os_log_type_enabled(v16, type[0]);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_70:
        if (!v15)
        {
          return;
        }

        goto LABEL_71;
      }

      if (!v24)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      v18 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (!os_log_type_enabled(v16, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      v18 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_69;
  }

  handle = a1->handle;
  if (!handle)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v15, type, &v31))
    {
      goto LABEL_70;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v31 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type[0];
        if (!os_log_type_enabled(v16, type[0]))
        {
          goto LABEL_70;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
        v18 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_69;
      }

      v25 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type[0];
      v26 = os_log_type_enabled(v16, type[0]);
      if (!v25)
      {
        if (!v26)
        {
          goto LABEL_70;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
        v18 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_69;
      }

      if (v26)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
        *&buf[12] = 2082;
        *&buf[14] = v25;
        v27 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_44:
        _os_log_impl(&dword_181A37000, v16, v17, v27, buf, 0x16u);
      }

LABEL_45:
      free(v25);
      if (!v15)
      {
        return;
      }

LABEL_71:
      free(v15);
      return;
    }

    v16 = __nwlog_obj();
    v17 = type[0];
    if (!os_log_type_enabled(v16, type[0]))
    {
      goto LABEL_70;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
    v18 = "%{public}s called with null webtransport_stream";
LABEL_69:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    goto LABEL_70;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v20 = __nwlog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = handle[11];
      if (v21)
      {
        v22 = *(v21 + 492);
      }

      else
      {
        v22 = -1;
      }

      v29 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v38 = " ";
      LOWORD(v39) = 1024;
      *(&v39 + 2) = v22;
      HIWORD(v39) = 2048;
      v40 = v29;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  if (*(handle + 47) != 2 || (*(handle + 276) & 8) != 0)
  {
    return;
  }

  v3 = handle[11];
  if (!v3)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_http2_send_control_capsule";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v15, type, &v31))
    {
      goto LABEL_70;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (!os_log_type_enabled(v16, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      v18 = "%{public}s called with null webtransport_session";
      goto LABEL_69;
    }

    if (v31 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (!os_log_type_enabled(v16, type[0]))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      v18 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_69;
    }

    v25 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type[0];
    v30 = os_log_type_enabled(v16, type[0]);
    if (!v25)
    {
      if (!v30)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      v18 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_69;
    }

    if (v30)
    {
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v25;
      v27 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v4 = handle[8];
  if (!*(v3 + 200))
  {
    *(v3 + 200) = _nw_array_create();
  }

  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x3ECB0013uLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_webtransport_http2_add_control_capsule";
    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    v38 = 24;
    v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
    if (__nwlog_should_abort(v9))
    {
      __break(1u);
      return;
    }

    free(v9);
  }

  *v5 = 420171068;
  v5[1] = v4;
  v5[2] = -1;
  v10 = *(v3 + 200);
  if (v10)
  {
    _nw_array_append(v10, v5);
    v11 = *(v3 + 200);
    if (v11)
    {
      if (!_nw_array_is_empty(v11))
      {
        v12 = _nw_array_create();
        v13 = *(v3 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke;
        v38 = &__block_descriptor_tmp_50_36984;
        v39 = v3;
        v40 = v12;
        if (v13)
        {
          _nw_array_apply(v13, buf);
        }

        *type = MEMORY[0x1E69E9820];
        v33 = 0x40000000;
        v34 = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_51;
        v35 = &__block_descriptor_tmp_52;
        v36 = v3;
        if (v12)
        {
          _nw_array_apply(v12, type);
          os_release(v12);
        }
      }
    }
  }
}