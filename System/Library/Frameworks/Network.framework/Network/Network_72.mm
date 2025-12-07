void sub_181EE3198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, ...)
{
  va_start(va, a21);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_connection_read_buffer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 200))
  {
    result = 1;
  }

  else
  {
    result = nw_context_is_inline(*(v2 + 24));
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void nw_parameters_set_uid(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_uid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_uid";
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
        v12 = "nw_parameters_set_uid";
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
            v12 = "nw_parameters_set_uid";
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
        v12 = "nw_parameters_set_uid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_uid";
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

void nw_parameters_set_e_proc_uuid(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_e_proc_uuid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_e_proc_uuid";
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
        v12 = "nw_parameters_set_e_proc_uuid";
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
            v12 = "nw_parameters_set_e_proc_uuid";
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
        v12 = "nw_parameters_set_e_proc_uuid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_e_proc_uuid";
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

uint64_t nw_path_get_flow_divert_unit(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    flow_divert_unit = _nw_path_get_flow_divert_unit(v1);
  }

  else
  {
    flow_divert_unit = 0;
  }

  return flow_divert_unit;
}

void __nw_socks5_server_handle_busy_changed_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __nw_socks5_server_handle_busy_changed_block_invoke_3;
  v2[3] = &unk_1E6A3D868;
  v3 = v1;
  os_unfair_lock_lock(v1 + 6);
  __nw_socks5_server_handle_busy_changed_block_invoke_3(v2);
  os_unfair_lock_unlock(v1 + 6);
}

void __nw_socks5_server_handle_busy_changed_block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  if (v3 && (*(v2 + 136) & 2) != 0)
  {
    dispatch_suspend(v3);
    *(*(a1 + 32) + 136) &= ~2u;
    v2 = *(a1 + 32);
  }

  if (!*(v2 + 132))
  {
    v4 = *(v2 + 128);
    if (v4)
    {
      IOPMAssertionRelease(v4);
      v5 = mach_continuous_time();
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(v8 + 128);
        v10 = nw_delta_nanos(*(v8 + 112), v6);
        v12 = "nw_socks5_server_handle_busy_changed_block_invoke_3";
        v13 = 2112;
        v11 = 136446978;
        v14 = v8;
        v15 = 1024;
        v16 = v9;
        v17 = 2048;
        v18 = v10 / 0x3B9ACA00;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %@ released power assertion: %u after %llus", &v11, 0x26u);
      }

      *(*(a1 + 32) + 112) = v6;
      *(*(a1 + 32) + 128) = 0;
    }
  }
}

void __nw_connection_set_interface_use_callback_block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 32) + 448);
      if (v4)
      {
        name = _nw_interface_get_name(v4);
      }

      else
      {
        name = "(null)";
      }

      v19 = 136446722;
      v20 = "nw_connection_set_interface_use_callback_block_invoke";
      v21 = 1024;
      v22 = v7;
      v23 = 2080;
      v24 = name;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [C%u] Got migration callback interface %s", &v19, 0x1Cu);
    }
  }

  v9 = _nw_interface_shallow_compare(v4, *(*(a1 + 32) + 520));
  v10 = *(*(a1 + 32) + 16);
  if (!v9)
  {
    if (!v10 || _nw_parameters_get_logging_disabled(v10))
    {
      goto LABEL_31;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v13 = gconnectionLogObj;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_30:

LABEL_31:
      (*(*(*(a1 + 32) + 512) + 16))();
      objc_storeStrong((*(a1 + 32) + 520), a2);
      *(*(a1 + 32) + 109) |= 0x80u;
      goto LABEL_32;
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 448);
    v16 = *(v14 + 520);
    if (v16)
    {
      v17 = _nw_interface_get_name(v16);
      if (v4)
      {
LABEL_26:
        v18 = _nw_interface_get_name(v4);
LABEL_29:
        v19 = 136446978;
        v20 = "nw_connection_set_interface_use_callback_block_invoke";
        v21 = 1024;
        v22 = v15;
        v23 = 2080;
        v24 = v17;
        v25 = 2080;
        v26 = v18;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [C%u] Changed from %s to %s", &v19, 0x26u);
        goto LABEL_30;
      }
    }

    else
    {
      v17 = "(null)";
      if (v4)
      {
        goto LABEL_26;
      }
    }

    v18 = "(null)";
    goto LABEL_29;
  }

  if (v10 && !_nw_parameters_get_logging_disabled(v10))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v11 = gconnectionLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1 + 32) + 448);
      v19 = 136446466;
      v20 = "nw_connection_set_interface_use_callback_block_invoke";
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [C%u] No change in AWDL usage", &v19, 0x12u);
    }
  }

LABEL_32:
}

void nw_quic_set_keepalive(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_keepalive(v3, a2);
}

void nw_protocol_implementation_partial_input_frame_finalizer(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v13 = v1;
    if ((*(v1 + 102) & 0x100) == 0 || !g_channel_check_validity || (v3 = g_channel_check_validity(v1, *(v1 + 11)), v2 = v13, v3))
    {
      v4 = *(v2 + 112);
      if (v4)
      {
        free(v4);
        v2 = v13;
      }
    }

    nw_frame_reset(v2, 0, 0, 0, 0);

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null frame", buf, 12);

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
        v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null frame", buf, 0xCu);
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
          v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null frame, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_implementation_partial_input_frame_finalizer";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }
}

uint64_t ___ZL62nw_protocol_instance_registrar_copy_san_list_from_tls_metadataP41NWConcrete_nw_protocol_instance_registrarP11nw_protocolPU35objcproto24OS_sec_protocol_metadata8NSObjectt_block_invoke_73(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v6;
  if (!v5)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null array", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v13, &type, &v29))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null array", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_41;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null array, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null array, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v32 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL54nw_protocol_instance_registrar_array_contains_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke;
    aBlock[3] = &unk_1E6A3BB28;
    v8 = v6;
    v27 = v8;
    v28 = buf;
    _nw_array_apply(v5, aBlock);
    v9 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    if (v9)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null endpoint", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v13, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v14, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v21;
          _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        if (!v13)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      if (v23)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_array_contains_endpoint";
        _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_40;
  }

LABEL_41:
  if (v13)
  {
LABEL_42:
    free(v13);
  }

LABEL_43:

LABEL_4:
  v10 = *(a1 + 32);
  if (v10 && v7)
  {
    _nw_array_append(v10, v7);
  }

LABEL_7:

  return 1;
}

uint64_t __nw_http_messaging_options_copy_transaction_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = v2;
    v5 = nw_http_client_metadata_copy_current_transaction_metadata(v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return 1;
}

id nw_http_client_metadata_copy_current_transaction_metadata(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_client_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_client_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__75915;
      v29 = __Block_byref_object_dispose__75916;
      v30 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_client_metadata_copy_current_transaction_metadata_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle())
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_client", buf, 12);

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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_client", buf, 0xCu);
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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_client, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
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
          *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_metadata_copy_current_transaction_metadata";
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

void sub_181EE4C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_client_metadata_copy_current_transaction_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  object = *(a2 + 24);
  if (object)
  {
    object = _nw_array_copy_last_object(object);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = object;

  return 1;
}

uint64_t nw_http2_get_capsule_handling_disabled(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    capsule_handling_disabled = nw_http2_get_capsule_handling_disabled(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_capsule_handling_disabled_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    capsule_handling_disabled = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_capsule_handling_disabled";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 12);

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
        *&buf[4] = "nw_http2_get_capsule_handling_disabled";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http2_get_capsule_handling_disabled";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_capsule_handling_disabled";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_capsule_handling_disabled";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  capsule_handling_disabled = 0;
LABEL_5:

  return capsule_handling_disabled & 1;
}

void sub_181EE4FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http2_stream_init(http2_stream *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    *(a1 + 1) = a1;
    *(a1 + 2) = 0;
    *(a1 + 3) = a1 + 16;
    *(a1 + 13) = 0;
    *(a1 + 14) = 0;
    *(a1 + 94) &= ~0x1000u;
    v2 = _nw_http_parsed_fields_create();
    v3 = *(a1 + 152);
    if ((v3 & 1) != 0 && *(a1 + 18))
    {
      v4 = v2;
      os_release(*(a1 + 18));
      v2 = v4;
      v3 = *(a1 + 152);
    }

    *(a1 + 18) = v2;
    *(a1 + 152) = v3 | 1;
    v5 = _nw_array_create();
    v6 = *(a1 + 168);
    if (v6)
    {
      if (*(a1 + 20))
      {
        v7 = v5;
        os_release(*(a1 + 20));
        v5 = v7;
        v6 = *(a1 + 168);
      }
    }

    *(a1 + 20) = v5;
    *(a1 + 168) = v6 | 1;
    *(a1 + 44) = -1;
    *(a1 + 46) = 0x200000;
    *(a1 + 94) = *(a1 + 94) & 0xFE62 | 4;
    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_http2_stream_init";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v18 = "nw_http2_stream_init";
      v12 = "%{public}s called with null stream";
      goto LABEL_23;
    }

    if (v15 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v18 = "nw_http2_stream_init";
      v12 = "%{public}s called with null stream, backtrace limit exceeded";
      goto LABEL_23;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v14 = os_log_type_enabled(v10, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "nw_http2_stream_init";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_http2_stream_init";
      v12 = "%{public}s called with null stream, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    }
  }

LABEL_24:
  if (v9)
  {
    free(v9);
  }
}

uint64_t nw_protocol_add_listen_handler(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    v4 = a1;
    if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v4 = a1[8]) != 0)
    {
      v15 = v4[11];
      if (v15)
      {
        v5 = 0;
        v4[11] = v15 + 1;
        if (!a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v5 = 0;
        if (!a2)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v5 = 1;
      if (!a2)
      {
LABEL_23:
        v16 = __nwlog_obj();
        *buf = 136446210;
        v46 = "__nw_protocol_add_listen_handler";
        v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null listen_protocol", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (!__nwlog_fault(v17, &type, &v43))
        {
          goto LABEL_82;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (!os_log_type_enabled(v18, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v46 = "__nw_protocol_add_listen_handler";
          v20 = "%{public}s called with null listen_protocol";
          goto LABEL_80;
        }

        if (v43 != 1)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (!os_log_type_enabled(v18, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v46 = "__nw_protocol_add_listen_handler";
          v20 = "%{public}s called with null listen_protocol, backtrace limit exceeded";
          goto LABEL_80;
        }

        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v37 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v37)
          {
            *buf = 136446466;
            v46 = "__nw_protocol_add_listen_handler";
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null listen_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v17)
          {
LABEL_84:
            result = 0;
            if (v5)
            {
              return result;
            }

LABEL_8:
            v9 = v2[5];
            if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
            {
              v10 = v2[11];
              if (v10)
              {
                v11 = v10 - 1;
                v2[11] = v11;
                if (!v11)
                {
                  v12 = result;
                  v13 = v2[8];
                  if (v13)
                  {
                    v2[8] = 0;
                    v13[2](v13);
                    _Block_release(v13);
                  }

                  if (v2[9])
                  {
                    v14 = v2[8];
                    if (v14)
                    {
                      _Block_release(v14);
                    }
                  }

                  free(v2);
                  return v12;
                }
              }
            }

            return result;
          }

LABEL_83:
          free(v17);
          goto LABEL_84;
        }

        if (v37)
        {
          *buf = 136446210;
          v46 = "__nw_protocol_add_listen_handler";
          v20 = "%{public}s called with null listen_protocol, no backtrace";
LABEL_80:
          v40 = v18;
          v41 = v19;
          v42 = 12;
          goto LABEL_81;
        }

        goto LABEL_82;
      }
    }

    v6 = a1[3];
    if (v6)
    {
      v7 = *(v6 + 232);
      if (v7)
      {
        result = v7(a1);
        if (v5)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

    v21 = __nwlog_obj();
    v22 = v2[2];
    *buf = 136446722;
    v46 = "__nw_protocol_add_listen_handler";
    if (!v22)
    {
      v22 = "invalid";
    }

    v47 = 2082;
    v48 = v22;
    v49 = 2048;
    v50 = v2;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v17, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_82;
        }

        v25 = v2[2];
        if (!v25)
        {
          v25 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_add_listen_handler";
        v47 = 2082;
        v48 = v25;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback";
      }

      else if (v43 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = type;
        v32 = os_log_type_enabled(v23, type);
        if (v31)
        {
          if (v32)
          {
            v33 = v2[2];
            if (!v33)
            {
              v33 = "invalid";
            }

            *buf = 136446978;
            v46 = "__nw_protocol_add_listen_handler";
            v47 = 2082;
            v48 = v33;
            v49 = 2048;
            v50 = v2;
            v51 = 2082;
            v52 = v31;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v31);
          goto LABEL_82;
        }

        if (!v32)
        {
          goto LABEL_82;
        }

        v39 = v2[2];
        if (!v39)
        {
          v39 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_add_listen_handler";
        v47 = 2082;
        v48 = v39;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, no backtrace";
      }

      else
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_82;
        }

        v38 = v2[2];
        if (!v38)
        {
          v38 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_add_listen_handler";
        v47 = 2082;
        v48 = v38;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, backtrace limit exceeded";
      }

      v40 = v23;
      v41 = v24;
      v42 = 32;
LABEL_81:
      _os_log_impl(&dword_181A37000, v40, v41, v20, buf, v42);
    }

LABEL_82:
    if (!v17)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v46 = "__nw_protocol_add_listen_handler";
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v27, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v46 = "__nw_protocol_add_listen_handler";
        v30 = "%{public}s called with null protocol";
LABEL_74:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v34 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v35 = os_log_type_enabled(v28, type);
      if (v34)
      {
        if (v35)
        {
          *buf = 136446466;
          v46 = "__nw_protocol_add_listen_handler";
          v47 = 2082;
          v48 = v34;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_75;
      }

      if (v35)
      {
        *buf = 136446210;
        v46 = "__nw_protocol_add_listen_handler";
        v30 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_74;
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v46 = "__nw_protocol_add_listen_handler";
        v30 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_74;
      }
    }
  }

LABEL_75:
  if (v27)
  {
    free(v27);
  }

  return 0;
}

void nw_protocol_http2_connected(nw_protocol *a1, nw_protocol *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v37, &type, &v56))
    {
      goto LABEL_139;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v40 = "%{public}s called with null protocol";
    }

    else if (v56 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v46 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_connected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_139:
        if (!v37)
        {
          return;
        }

        goto LABEL_140;
      }

      if (!v46)
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v40 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v40 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_138;
  }

  handle = a1->handle;
  if (!handle)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v37, &type, &v56))
    {
      goto LABEL_139;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v56 != 1)
      {
        v38 = __nwlog_obj();
        v39 = type;
        if (!os_log_type_enabled(v38, type))
        {
          goto LABEL_139;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_connected";
        v40 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_138;
      }

      v47 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v48 = os_log_type_enabled(v38, type);
      if (!v47)
      {
        if (!v48)
        {
          goto LABEL_139;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_connected";
        v40 = "%{public}s called with null http2, no backtrace";
        goto LABEL_138;
      }

      if (v48)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_connected";
        *&buf[12] = 2082;
        *&buf[14] = v47;
        v49 = "%{public}s called with null http2, dumping backtrace:%{public}s";
LABEL_110:
        _os_log_impl(&dword_181A37000, v38, v39, v49, buf, 0x16u);
      }

LABEL_111:
      free(v47);
      if (!v37)
      {
        return;
      }

LABEL_140:
      free(v37);
      return;
    }

    v38 = __nwlog_obj();
    v39 = type;
    if (!os_log_type_enabled(v38, type))
    {
      goto LABEL_139;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v40 = "%{public}s called with null http2";
LABEL_138:
    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
    goto LABEL_139;
  }

  if (!a2)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_connected";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v37, &type, &v56))
    {
      goto LABEL_139;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v40 = "%{public}s called with null other_protocol";
      goto LABEL_138;
    }

    if (v56 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v40 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_138;
    }

    v47 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type;
    v50 = os_log_type_enabled(v38, type);
    if (!v47)
    {
      if (!v50)
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_connected";
      v40 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_138;
    }

    if (v50)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_connected";
      *&buf[12] = 2082;
      *&buf[14] = v47;
      v49 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_110;
    }

    goto LABEL_111;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v43 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v59 = " ";
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v44;
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    callbacks = default_input_handler->callbacks;
    if (callbacks)
    {
      connected = callbacks->connected;
      if (connected)
      {
        connected();
      }
    }
  }

  if (a1->output_handler != a2)
  {
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v59 = " ";
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v9;
        v10 = "%{public}s %{public}s%s<i%u> connected protocol is not our output_handler, ignoring";
LABEL_36:
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, v10, buf, 0x26u);
        return;
      }
    }

    return;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v51 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v52 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v59 = " ";
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v52;
      _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  v11 = (handle + 377);
  if ((*(handle + 377) & 0x80) != 0)
  {
    if (!*(handle + 18))
    {
      if ((handle[379] & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
        {
          v21 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v59 = " ";
          LOWORD(v60) = 1024;
          *(&v60 + 2) = v21;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> no listen handler on server, deferring processing of input and connected state until listen handler is present", buf, 0x26u);
        }
      }

      *v11 |= 0x1000u;
      return;
    }

    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v59 = " ";
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v53;
        v14 = "%{public}s %{public}s%s<i%u> listen handler present, processing input without waiting";
        goto LABEL_127;
      }
    }
  }

  else if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v59 = " ";
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v13;
      v14 = "%{public}s %{public}s%s<i%u> not server, processing input without waiting";
LABEL_127:
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, v14, buf, 0x26u);
    }
  }

  v15 = *v11;
  *v11 &= ~0x1000u;
  if ((v15 & 0xC) == 0)
  {
    nw_http2_send_settings(handle);
    *v11 |= 4u;
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v54 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v55 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v59 = " ";
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v55;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2 tunnel is now connected", buf, 0x26u);
      }
    }

    v17 = *(handle + 14);
    if (v17)
    {
      v18 = v17;
      is_registered = _nw_endpoint_is_registered(v18);

      if (is_registered)
      {
        if (nw_settings_get_http_connection_coalescing_enabled())
        {
          nw_endpoint_add_edges_for_instance(v18, handle, 1);
        }
      }

      else if ((handle[379] & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v28 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v59 = " ";
          LOWORD(v60) = 1024;
          *(&v60 + 2) = v29;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2's remote endpoint is not registered", buf, 0x26u);
        }
      }

      goto LABEL_79;
    }

    if (handle[379])
    {
LABEL_79:
      nw_protocol_http2_process_input(handle);
      v35 = *(handle + 19);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL35nw_protocol_http2_process_connectedP17nw_protocol_http2_block_invoke;
      v59 = &__block_descriptor_tmp_49_88077;
      v60 = handle;
      nw_hash_table_apply(v35, buf);
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = *(handle + 90);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_process_connected";
    *&buf[12] = 2082;
    *&buf[14] = handle + 380;
    *&buf[22] = 2080;
    v59 = " ";
    LOWORD(v60) = 1024;
    *(&v60 + 2) = v22;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint", buf, 38);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v23, &type, &v56))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        v25 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_77;
        }

        v26 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v59 = " ";
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v26;
        v27 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint";
        goto LABEL_76;
      }

      if (v56 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        v25 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_77;
        }

        v33 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v59 = " ";
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v33;
        v27 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, backtrace limit exceeded";
        goto LABEL_76;
      }

      v30 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      v25 = type;
      v31 = os_log_type_enabled(gconnectionLogObj, type);
      if (v30)
      {
        if (v31)
        {
          v32 = *(handle + 90);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v59 = " ";
          LOWORD(v60) = 1024;
          *(&v60 + 2) = v32;
          HIWORD(v60) = 2082;
          v61 = v30;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v30);
        goto LABEL_77;
      }

      if (v31)
      {
        v34 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v59 = " ";
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v34;
        v27 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, no backtrace";
LABEL_76:
        _os_log_impl(&dword_181A37000, v24, v25, v27, buf, 0x26u);
      }
    }

LABEL_77:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_79;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v59 = " ";
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v16;
      v10 = "%{public}s %{public}s%s<i%u> tunnel already connected or closed, ignoring connected event";
      goto LABEL_36;
    }
  }
}

void nw_http2_session_send(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 379) & 1) != 0)
  {
    goto LABEL_5;
  }

  if (gLogDatapath != 1)
  {
    goto LABEL_4;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v47 = gconnectionLogObj;
  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
  {
LABEL_4:
    if (a1)
    {
      goto LABEL_5;
    }

    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http2_session_send";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null http2", buf, 12);
    v59[0] = 16;
    v57 = 0;
    if (__nwlog_fault(v43, v59, &v57))
    {
      if (v59[0] == 17)
      {
        v44 = __nwlog_obj();
        v45 = v59[0];
        if (!os_log_type_enabled(v44, v59[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http2_session_send";
        v46 = "%{public}s called with null http2";
        goto LABEL_107;
      }

      if (v57 != 1)
      {
        v44 = __nwlog_obj();
        v45 = v59[0];
        if (!os_log_type_enabled(v44, v59[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http2_session_send";
        v46 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_107;
      }

      backtrace_string = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = v59[0];
      v52 = os_log_type_enabled(v44, v59[0]);
      if (backtrace_string)
      {
        if (v52)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http2_session_send";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_108;
      }

      if (v52)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_session_send";
        v46 = "%{public}s called with null http2, no backtrace";
LABEL_107:
        _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
      }
    }

LABEL_108:
    if (v43)
    {
      free(v43);
    }

    return;
  }

  v48 = " ";
  v49 = *(a1 + 360);
  *&buf[4] = "nw_http2_session_send";
  *&buf[12] = 2082;
  v50 = (a1 + 380);
  *buf = 136446978;
  if (!a1)
  {
    v50 = "";
  }

  *&buf[14] = v50;
  if (!a1)
  {
    v48 = "";
  }

  *&buf[22] = 2080;
  *&buf[24] = v48;
  *&buf[32] = 1024;
  *&buf[34] = v49;
  _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
LABEL_5:
  v2 = (a1 + 377);
  if ((*(a1 + 377) & 0x100) != 0)
  {
    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v38 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 360);
        *buf = 136446978;
        *&buf[4] = "nw_http2_session_send";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v39;
        v40 = "%{public}s %{public}s%s<i%u> already in session send, skipping";
LABEL_76:
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, v40, buf, 0x26u);
      }
    }
  }

  else
  {
    if ((*(a1 + 377) & 0x200) == 0)
    {
      v3 = 0;
      *v2 = *(a1 + 377) | 0x100;
      v4 = a1 + 380;
      while (1)
      {
        if (!nghttp2_session_want_write())
        {
LABEL_79:
          *v2 &= ~0x100u;
          if (v3)
          {
            nw_http2_connection_close(a1);
          }

          return;
        }

        if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v34 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v35 = *(a1 + 360);
            *buf = 136446978;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 2082;
            *&buf[14] = v4;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v35;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> nghttp2 wants to write", buf, 0x26u);
          }
        }

        *v2 &= ~0x2000u;
        v6 = nghttp2_session_send();
        if (!v6)
        {
          goto LABEL_42;
        }

        v7 = v6;
        if (v6 != -902 || (*v2 & 0x10) == 0)
        {
          break;
        }

        if ((*(a1 + 379) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v18 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 360);
            *buf = 136446978;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 2082;
            *&buf[14] = v4;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v19;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> tunnel error, send failed, closing", buf, 0x26u);
          }
        }

        v3 = 1;
        v20 = *v2;
        if ((*v2 & 0x2000) != 0)
        {
LABEL_77:
          if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              v54 = *(a1 + 360);
              *buf = 136446978;
              *&buf[4] = "nw_http2_session_send";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 380;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v54;
              _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> cannot send any more, returning", buf, 0x26u);
            }
          }

          goto LABEL_79;
        }

LABEL_43:
        if (*(a1 + 366) < 6u)
        {
          if ((v20 & 0x4000) == 0)
          {
            *v2 = v20 | 0x4000;
            v30 = *(a1 + 344);
            v31 = *(a1 + 128);
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 0x40000000;
            v56[2] = ___ZL21nw_http2_session_sendP17nw_protocol_http2_block_invoke;
            v56[3] = &unk_1E6A3C300;
            v56[4] = v30;
            nw_queue_context_async(v31, v56);
          }
        }

        else
        {
          nw_http2_finalize_written_output_frames(a1);
        }

        nw_http2_drain_output_frames(a1);
        if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v36 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v37 = *(a1 + 360);
            *v59 = 136446978;
            v60 = "nw_http2_deliver_pending_output_available";
            v61 = 2082;
            v62 = v4;
            v63 = 2080;
            v64 = " ";
            v65 = 1024;
            v66 = v37;
            _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", v59, 0x26u);
          }
        }

        if ((*v2 & 0x800) != 0)
        {
          *v2 &= ~0x800u;
          v5 = *(a1 + 152);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL41nw_http2_deliver_pending_output_availableP17nw_protocol_http2_block_invoke;
          *&buf[24] = &__block_descriptor_tmp_31_87115;
          *&buf[32] = a1;
          nw_hash_table_apply(v5, buf);
        }

        else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v33 = *(a1 + 360);
            *v59 = 136446978;
            v60 = "nw_http2_deliver_pending_output_available";
            v61 = 2082;
            v62 = v4;
            v63 = 2080;
            v64 = " ";
            v65 = 1024;
            v66 = v33;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no streams have output available pending, nothing to do", v59, 0x26u);
          }
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = nghttp2_strerror();
      *buf = 136446722;
      *&buf[4] = "nw_http2_session_send";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 2082;
      *&buf[20] = v10;
      LODWORD(v55) = 28;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s nghttp2_session_send failed: %d (%{public}s) failed", buf, v55);
      v59[0] = 16;
      v57 = 0;
      if (__nwlog_fault(v11, v59, &v57))
      {
        if (v59[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = v59[0];
          if (os_log_type_enabled(gLogObj, v59[0]))
          {
            v14 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            *&buf[18] = 2082;
            *&buf[20] = v14;
            v15 = v12;
            v16 = v13;
            v17 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed";
LABEL_38:
            _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x1Cu);
          }
        }

        else if (v57 == 1)
        {
          v21 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v23 = v59[0];
          v24 = os_log_type_enabled(gLogObj, v59[0]);
          if (v21)
          {
            if (v24)
            {
              v25 = nghttp2_strerror();
              *buf = 136446978;
              *&buf[4] = "nw_http2_session_send";
              *&buf[12] = 1024;
              *&buf[14] = v7;
              *&buf[18] = 2082;
              *&buf[20] = v25;
              *&buf[28] = 2082;
              *&buf[30] = v21;
              _os_log_impl(&dword_181A37000, v22, v23, "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, dumping backtrace:%{public}s", buf, 0x26u);
            }

            free(v21);
            v4 = a1 + 380;
            goto LABEL_39;
          }

          v4 = a1 + 380;
          if (v24)
          {
            v29 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            *&buf[18] = 2082;
            *&buf[20] = v29;
            v15 = v22;
            v16 = v23;
            v17 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, no backtrace";
            goto LABEL_38;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = v59[0];
          if (os_log_type_enabled(gLogObj, v59[0]))
          {
            v28 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_http2_session_send";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            *&buf[18] = 2082;
            *&buf[20] = v28;
            v15 = v26;
            v16 = v27;
            v17 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, backtrace limit exceeded";
            goto LABEL_38;
          }
        }
      }

LABEL_39:
      if (v11)
      {
        free(v11);
      }

      v3 = 1;
LABEL_42:
      v20 = *v2;
      if ((*v2 & 0x2000) != 0)
      {
        goto LABEL_77;
      }

      goto LABEL_43;
    }

    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v38 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 360);
        *buf = 136446978;
        *&buf[4] = "nw_http2_session_send";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v41;
        v40 = "%{public}s %{public}s%s<i%u> in mem recv, skipping";
        goto LABEL_76;
      }
    }
  }
}

uint64_t nw_protocol_http2_copy_info(uint64_t a1, int a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_http2_copy_info";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v17, &type, &v37))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v20 = "%{public}s called with null protocol";
LABEL_60:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }

LABEL_61:
      if (v17)
      {
        free(v17);
      }

      return 0;
    }

    if (v37 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v20 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v23 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v20 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (v23)
    {
      *buf = 136446466;
      v40 = "nw_protocol_http2_copy_info";
      v41 = 2082;
      v42 = backtrace_string;
      v24 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v18, v19, v24, buf, 0x16u);
    }

LABEL_43:
    free(backtrace_string);
    goto LABEL_61;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_http2_copy_info";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v17, &type, &v37))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v20 = "%{public}s called with null http2";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (v37 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v20 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v25 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v20 = "%{public}s called with null http2, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (v25)
    {
      *buf = 136446466;
      v40 = "nw_protocol_http2_copy_info";
      v41 = 2082;
      v42 = backtrace_string;
      v24 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (a2 == 253)
  {
    return *(v3 + 144);
  }

  result = nw_protocol_common_copy_info(a1, a2);
  if (a2 == 255)
  {
    if (!result)
    {
      result = _nw_array_create();
    }

    v7 = *(v3 + 256);
    if (v7)
    {
      v8 = result == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = result;
      _nw_array_append(result, v7);
      result = v9;
    }

    if (a3)
    {
      v10 = *(a3 + 56);
      if (v10)
      {
        v11 = *(v10 + 32);
        if (v11)
        {
          v12 = *(v11 + 96);
          if (v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = result;
          }

          if (v12)
          {
            v14 = result == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            return v13;
          }

          v15 = result;
          _nw_array_append(result, v12);
          return v15;
        }

        v36 = result;
        v31 = __nwlog_obj();
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null stream", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v37 = 0;
        if (!__nwlog_fault(v27, &type, &v37))
        {
          goto LABEL_83;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v28, type))
          {
            *buf = 136446210;
            v40 = "nw_protocol_http2_copy_info";
            v30 = "%{public}s called with null stream";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if (v37 != 1)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v28, type))
          {
            *buf = 136446210;
            v40 = "nw_protocol_http2_copy_info";
            v30 = "%{public}s called with null stream, backtrace limit exceeded";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v32 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v35 = os_log_type_enabled(v28, type);
        if (!v32)
        {
          if (v35)
          {
            *buf = 136446210;
            v40 = "nw_protocol_http2_copy_info";
            v30 = "%{public}s called with null stream, no backtrace";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if (v35)
        {
          *buf = 136446466;
          v40 = "nw_protocol_http2_copy_info";
          v41 = 2082;
          v42 = v32;
          v34 = "%{public}s called with null stream, dumping backtrace:%{public}s";
          goto LABEL_72;
        }
      }

      else
      {
        v36 = result;
        v26 = __nwlog_obj();
        *buf = 136446210;
        v40 = "nw_protocol_http2_copy_info";
        v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null node", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v37 = 0;
        if (!__nwlog_fault(v27, &type, &v37))
        {
          goto LABEL_83;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v28, type))
          {
            *buf = 136446210;
            v40 = "nw_protocol_http2_copy_info";
            v30 = "%{public}s called with null node";
LABEL_82:
            _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
          }

LABEL_83:
          if (v27)
          {
            free(v27);
          }

          return v36;
        }

        if (v37 != 1)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v28, type))
          {
            *buf = 136446210;
            v40 = "nw_protocol_http2_copy_info";
            v30 = "%{public}s called with null node, backtrace limit exceeded";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v32 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v33 = os_log_type_enabled(v28, type);
        if (!v32)
        {
          if (v33)
          {
            *buf = 136446210;
            v40 = "nw_protocol_http2_copy_info";
            v30 = "%{public}s called with null node, no backtrace";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if (v33)
        {
          *buf = 136446466;
          v40 = "nw_protocol_http2_copy_info";
          v41 = 2082;
          v42 = v32;
          v34 = "%{public}s called with null node, dumping backtrace:%{public}s";
LABEL_72:
          _os_log_impl(&dword_181A37000, v28, v29, v34, buf, 0x16u);
        }
      }

      free(v32);
      goto LABEL_83;
    }
  }

  return result;
}

void nw_protocol_http2_notify(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_http2_notify";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v18, &type, &v42))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null protocol";
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v34 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          v45 = "nw_protocol_http2_notify";
          v46 = 2082;
          v47 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_80:
        if (!v18)
        {
          return;
        }

        goto LABEL_81;
      }

      if (!v34)
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_79;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_http2_notify";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v18, &type, &v42))
    {
      goto LABEL_80;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v45 = "nw_protocol_http2_notify";
        v21 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_79;
      }

      v35 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v36 = os_log_type_enabled(v19, type);
      if (!v35)
      {
        if (!v36)
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v45 = "nw_protocol_http2_notify";
        v21 = "%{public}s called with null http2, no backtrace";
        goto LABEL_79;
      }

      if (!v36)
      {
        goto LABEL_61;
      }

      *buf = 136446466;
      v45 = "nw_protocol_http2_notify";
      v46 = 2082;
      v47 = v35;
      v37 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_60;
    }

    v19 = __nwlog_obj();
    v20 = type;
    if (!os_log_type_enabled(v19, type))
    {
      goto LABEL_80;
    }

    *buf = 136446210;
    v45 = "nw_protocol_http2_notify";
    v21 = "%{public}s called with null http2";
LABEL_79:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_80;
  }

  if (!a2)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_http2_notify";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v18, &type, &v42))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null other_protocol";
      goto LABEL_79;
    }

    if (v42 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_79;
    }

    v35 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v38 = os_log_type_enabled(v19, type);
    if (!v35)
    {
      if (!v38)
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_79;
    }

    if (!v38)
    {
      goto LABEL_61;
    }

    *buf = 136446466;
    v45 = "nw_protocol_http2_notify";
    v46 = 2082;
    v47 = v35;
    v37 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_60:
    _os_log_impl(&dword_181A37000, v19, v20, v37, buf, 0x16u);
    goto LABEL_61;
  }

  if (!*(v5 + 152))
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_http2_notify";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null http2->http2_streams_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v18, &type, &v42))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null http2->http2_streams_protocol";
      goto LABEL_79;
    }

    if (v42 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null http2->http2_streams_protocol, backtrace limit exceeded";
      goto LABEL_79;
    }

    v35 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v39 = os_log_type_enabled(v19, type);
    if (!v35)
    {
      if (!v39)
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v45 = "nw_protocol_http2_notify";
      v21 = "%{public}s called with null http2->http2_streams_protocol, no backtrace";
      goto LABEL_79;
    }

    if (v39)
    {
      *buf = 136446466;
      v45 = "nw_protocol_http2_notify";
      v46 = 2082;
      v47 = v35;
      v37 = "%{public}s called with null http2->http2_streams_protocol, dumping backtrace:%{public}s";
      goto LABEL_60;
    }

LABEL_61:
    free(v35);
    if (!v18)
    {
      return;
    }

LABEL_81:
    free(v18);
    return;
  }

  if ((*(v5 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v30 = gconnectionLogObj;
    v31 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    a5 = v29;
    a4 = v28;
    a3 = v27;
    a2 = v26;
    a1 = v25;
    if (v31)
    {
      v32 = *(v5 + 360);
      *buf = 136446978;
      v45 = "nw_protocol_http2_notify";
      v46 = 2082;
      v47 = (v5 + 380);
      v48 = 2080;
      v49 = " ";
      v50 = 1024;
      v51 = v32;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      a1 = v25;
      a2 = v26;
      a3 = v27;
      a4 = v28;
      a5 = v29;
    }
  }

  if (a3 > 0x16)
  {
    goto LABEL_21;
  }

  if (((1 << a3) & 0x208080) != 0)
  {
    return;
  }

  if (((1 << a3) & 0x12000) == 0)
  {
    if (a3 == 22)
    {
      if ((*(v5 + 379) & 1) == 0)
      {
        v9 = a2;
        v10 = a3;
        v11 = a4;
        v12 = a5;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        v14 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
        a5 = v12;
        a4 = v11;
        a3 = v10;
        a2 = v9;
        if (v14)
        {
          v15 = *(v5 + 360);
          *buf = 136446978;
          v45 = "nw_protocol_http2_notify";
          v46 = 2082;
          v47 = (v5 + 380);
          v48 = 2080;
          v49 = " ";
          v50 = 1024;
          v51 = v15;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> restarting all streams", buf, 0x26u);
          a2 = v9;
          a3 = v10;
          a4 = v11;
          a5 = v12;
        }
      }

      *(v5 + 377) |= 8u;
    }

LABEL_21:
    v16 = *(v5 + 152);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 0x40000000;
    v40[2] = ___ZL24nw_protocol_http2_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
    v40[3] = &__block_descriptor_tmp_96_88013;
    v40[4] = v5;
    v40[5] = a2;
    v41 = a3;
    v40[6] = a4;
    v40[7] = a5;
    nw_hash_table_apply(v16, v40);
    return;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = *(v7 + 160);
      if (v8)
      {
        v8();
      }
    }
  }
}

void nw_protocol_http2_stream_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http2_stream_get_message_properties";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http2_stream_get_message_properties";
      v8 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_http2_stream_get_message_properties";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v5)
        {
          return;
        }

LABEL_35:
        free(v5);
        return;
      }

      if (!v11)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http2_stream_get_message_properties";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http2_stream_get_message_properties";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_34;
  }

  if (*(a1 + 40))
  {
    if (a3)
    {
      v3 = a3[1] & 0xFFFFFFF8;
      *a3 = -1;
      a3[1] = v3;
    }

    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_http2_stream_get_message_properties";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http2", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http2_stream_get_message_properties";
    v8 = "%{public}s called with null http2";
    goto LABEL_33;
  }

  if (v14 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http2_stream_get_message_properties";
    v8 = "%{public}s called with null http2, backtrace limit exceeded";
    goto LABEL_33;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v17 = "nw_protocol_http2_stream_get_message_properties";
    v8 = "%{public}s called with null http2, no backtrace";
    goto LABEL_33;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_protocol_http2_stream_get_message_properties";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_35;
  }
}

void nw_protocol_http_joining_connected(nw_protocol *a1, nw_protocol *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v75 = __nwlog_obj();
    buf[0] = 136446210;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null protocol", buf, 12);
    v100[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v44, v100, &type))
    {
      goto LABEL_150;
    }

    if (v100[0] == 17)
    {
      v29 = __nwlog_obj();
      v30 = v100[0];
      if (!os_log_type_enabled(v29, v100[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null protocol";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = v100[0];
      v78 = os_log_type_enabled(v29, v100[0]);
      if (backtrace_string)
      {
        if (v78)
        {
          buf[0] = 136446466;
          *&buf[1] = "nw_protocol_http_joining_connected";
          v96 = 2082;
          v97 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_150;
      }

      if (!v78)
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = v100[0];
      if (!os_log_type_enabled(v29, v100[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_149;
  }

  handle = a1->handle;
  if (!handle)
  {
    v76 = __nwlog_obj();
    buf[0] = 136446210;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s called with null http_joining", buf, 12);
    v100[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v44, v100, &type))
    {
      goto LABEL_150;
    }

    if (v100[0] == 17)
    {
      v29 = __nwlog_obj();
      v30 = v100[0];
      if (!os_log_type_enabled(v29, v100[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null http_joining";
      goto LABEL_149;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v29 = __nwlog_obj();
      v30 = v100[0];
      if (!os_log_type_enabled(v29, v100[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_149;
    }

    v35 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = v100[0];
    v79 = os_log_type_enabled(v29, v100[0]);
    if (!v35)
    {
      if (!v79)
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_149;
    }

    if (!v79)
    {
LABEL_96:
      free(v35);
      if (v44)
      {
        goto LABEL_151;
      }

      return;
    }

    buf[0] = 136446466;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v96 = 2082;
    v97 = v35;
    v37 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_95:
    _os_log_impl(&dword_181A37000, v29, v30, v37, buf, 0x16u);
    goto LABEL_96;
  }

  if ((handle[294] & 8) != 0)
  {
    if ((handle[294] & 2) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return;
    }

    buf[0] = 136446722;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v96 = 2082;
    v97 = handle + 208;
    v98 = 2080;
    v99 = " ";
    v12 = "%{public}s %{public}s%signoring connected";
    v13 = v11;
    v14 = OS_LOG_TYPE_INFO;
LABEL_36:
    _os_log_impl(&dword_181A37000, v13, v14, v12, buf, 0x20u);
    return;
  }

  if (!*(handle + 6))
  {
    if ((handle[294] & 2) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    buf[0] = 136446722;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v96 = 2082;
    v97 = handle + 208;
    v98 = 2080;
    v99 = " ";
    v12 = "%{public}s %{public}s%sno default input handler, ignoring connected";
    v13 = v15;
    v14 = OS_LOG_TYPE_ERROR;
    goto LABEL_36;
  }

  identifier = a2->identifier;
  if (nw_protocol_http_messaging_identifier::onceToken != -1)
  {
    v80 = a2->identifier;
    dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    identifier = v80;
  }

  if (nw_protocols_are_equal(identifier, &nw_protocol_http_messaging_identifier::protocol_identifier))
  {
    goto LABEL_23;
  }

  v5 = a2->identifier;
  if (nw_protocol_http1_identifier::onceToken != -1)
  {
    v81 = a2->identifier;
    dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
    v5 = v81;
  }

  if (nw_protocols_are_equal(v5, &nw_protocol_http1_identifier::http1_protocol_identifier))
  {
    goto LABEL_23;
  }

  v6 = a2->identifier;
  if (nw_protocol_http2_identifier::onceToken != -1)
  {
    v83 = a2->identifier;
    dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
    v6 = v83;
  }

  if (nw_protocols_are_equal(v6, &nw_protocol_http2_identifier::http2_protocol_identifier))
  {
    goto LABEL_23;
  }

  v7 = a2->identifier;
  if (nw_protocol_http3_identifier::onceToken != -1)
  {
    v89 = a2->identifier;
    dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
    v7 = v89;
  }

  if (nw_protocols_are_equal(v7, &nw_protocol_http3_identifier::http3_protocol_identifier))
  {
    goto LABEL_23;
  }

  v8 = a2->identifier;
  if (nw_protocol_oblivious_http_identifier::onceToken != -1)
  {
    v92 = a2->identifier;
    dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
    v8 = v92;
  }

  if (nw_protocols_are_equal(v8, &nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier))
  {
    goto LABEL_23;
  }

  v9 = a2->identifier;
  if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
  {
    v93 = a2->identifier;
    dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
    v9 = v93;
  }

  if (nw_protocols_are_equal(v9, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
  {
LABEL_23:
    *(handle + 17) = a2;
  }

  if (*(handle + 4) != a2)
  {
    if ((handle[294] & 1) == 0 && !*(handle + 17))
    {
      v10 = *(handle + 6);

      nw_protocol_connected(v10, a2);
    }

    return;
  }

  if (*(handle + 17))
  {
    v16 = *(handle + 17);
  }

  else
  {
    v16 = *(handle + 4);
  }

  handle[294] |= 1u;
  do
  {
    v17 = v16[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    }

    if (nw_protocols_are_equal(v17, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
      goto LABEL_62;
    }

    v18 = v16[2];
    if (nw_protocol_http1_identifier::onceToken != -1)
    {
      v23 = v16[2];
      dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
      v18 = v23;
    }

    if (nw_protocols_are_equal(v18, &nw_protocol_http1_identifier::http1_protocol_identifier))
    {
      goto LABEL_62;
    }

    v19 = v16[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v24 = v16[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v19 = v24;
    }

    if (nw_protocols_are_equal(v19, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_62;
    }

    v20 = v16[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v25 = v16[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v20 = v25;
    }

    if (nw_protocols_are_equal(v20, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_62;
    }

    v21 = v16[2];
    if (nw_protocol_oblivious_http_identifier::onceToken != -1)
    {
      v26 = v16[2];
      dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
      v21 = v26;
    }

    if (nw_protocols_are_equal(v21, &nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier))
    {
      goto LABEL_62;
    }

    v22 = v16[2];
    if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
    {
      v27 = v16[2];
      dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
      v22 = v27;
    }

    if (nw_protocols_are_equal(v22, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
    {
LABEL_62:
      v28 = v16[2];
      if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
      {
        v82 = v16[2];
        dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
        v28 = v82;
      }

      if (nw_protocols_are_equal(v28, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        buf[0] = 136446210;
        *&buf[1] = "nw_http_joining_get_out_of_the_way";
        v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s http_oblivious_http_contexts not supported below http_joining", buf, 12);
        v100[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v44, v100, &type))
        {
          goto LABEL_150;
        }

        if (v100[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = v100[0];
          if (os_log_type_enabled(gLogObj, v100[0]))
          {
            buf[0] = 136446210;
            *&buf[1] = "nw_http_joining_get_out_of_the_way";
            v31 = "%{public}s http_oblivious_http_contexts not supported below http_joining";
            goto LABEL_149;
          }

          goto LABEL_150;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v29 = __nwlog_obj();
          v30 = v100[0];
          if (!os_log_type_enabled(v29, v100[0]))
          {
            goto LABEL_150;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_http_joining_get_out_of_the_way";
          v31 = "%{public}s http_oblivious_http_contexts not supported below http_joining, backtrace limit exceeded";
          goto LABEL_149;
        }

        v35 = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = v100[0];
        v36 = os_log_type_enabled(v29, v100[0]);
        if (!v35)
        {
          if (!v36)
          {
            goto LABEL_150;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_http_joining_get_out_of_the_way";
          v31 = "%{public}s http_oblivious_http_contexts not supported below http_joining, no backtrace";
          goto LABEL_149;
        }

        if (!v36)
        {
          goto LABEL_96;
        }

        buf[0] = 136446466;
        *&buf[1] = "nw_http_joining_get_out_of_the_way";
        v96 = 2082;
        v97 = v35;
        v37 = "%{public}s http_oblivious_http_contexts not supported below http_joining, dumping backtrace:%{public}s";
        goto LABEL_95;
      }

      v32 = nw_protocol_copy_info(v16);
      if (!v32 || (v16 = *(v32 + 24)) != 0)
      {
        v33 = v16[3];
        if (nw_protocol_http_messaging_get_callbacks(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_http_messaging_get_callbacks(void)::onceToken, &__block_literal_global_19_80494);
        }

        if (v33 == &nw_protocol_http_messaging_get_callbacks(void)::protocol_callbacks)
        {
          *(handle + 17) = v16;
          nw_protocol_add_listen_handler(v16, (handle + 64));
          parameters = nw_protocol_get_parameters(v16);
          v39 = nw_parameters_copy_effective_proxy_config(parameters);
          if (v39)
          {
            v40 = v39;
            if (nw_proxy_config_get_type(v39) == 2001)
            {
              v41 = handle[168];
              if (v41)
              {
                v42 = *(handle + 20);
                if (v42)
                {
                  os_release(v42);
                  v41 = handle[168];
                }
              }

              *(handle + 20) = v40;
              handle[168] = v41 | 1;
            }

            else
            {
              os_release(v40);
            }
          }

          v34 = 1;
          goto LABEL_100;
        }

LABEL_74:
        v34 = 0;
LABEL_100:
        v47 = *(handle + 6);
        nw_protocol_set_input_handler(handle, 0);
        nw_protocol_set_output_handler(v47, 0);
        nw_protocol_replace_input_handler(*(handle + 4), handle, v47);
        nw_protocol_set_output_handler(handle, 0);
        handle[294] |= 0x10u;
        nw_protocol_connect(*(v47 + 32), v47);
        if ((handle[294] & 0x10) == 0)
        {
LABEL_101:

LABEL_103:
          nw_http_joining_destroy(handle);
          return;
        }

        handle[294] &= ~0x10u;
        if (!v34)
        {
          nw_protocol_remove_instance(handle);
          v74 = *(handle + 23);
          v73 = *(handle + 24);
          if (v74 != v73)
          {
            if (v73 - v74 >= 0)
            {
              operator new();
            }

LABEL_194:
            std::string::__throw_length_error[abi:nn200100]();
          }

          goto LABEL_101;
        }

        while (1)
        {
          v50 = *(handle + 23);
          v49 = *(handle + 24);
          v51 = v50;
          if (v50 != v49)
          {
            while (*(v51 + 8) == 2)
            {
              v51 += 16;
              if (v51 == v49)
              {
                v51 = *(handle + 24);
                break;
              }
            }
          }

          if (v49 == v51)
          {
            return;
          }

          v52 = *v51;
          v53 = *(v51 + 8);
          v54 = v51 + 16;
          if (v51 + 16 != v49)
          {
            v55 = v49 - v51 - 32;
            if (v55 >= 0x10)
            {
              v56 = v51 - v50;
              v57 = (v55 >> 4) + 1;
              v58 = 16 * (v57 & 0x1FFFFFFFFFFFFFFELL);
              v51 += v58;
              v59 = v50 + v56 + 24;
              v60 = v57 & 0x1FFFFFFFFFFFFFFELL;
              do
              {
                v61 = *(v59 + 8);
                *(v59 - 24) = *(v59 - 8);
                *(v59 - 8) = v61;
                LODWORD(v61) = *(v59 + 16);
                *(v59 - 16) = *v59;
                *v59 = v61;
                v59 += 32;
                v60 -= 2;
              }

              while (v60);
              if (v57 == (v57 & 0x1FFFFFFFFFFFFFFELL))
              {
                goto LABEL_120;
              }

              v54 += v58;
            }

            do
            {
              *v51 = *v54;
              *(v51 + 8) = *(v54 + 8);
              v54 += 16;
              v51 += 16;
            }

            while (v54 != v49);
          }

LABEL_120:
          *(handle + 24) = v51;
          v62 = nw_protocol_get_parameters(v52);
          if (nw_protocol_http_joining_accept(handle, *(handle + 15), v62) && (nw_http_joining_add_to_messaging(handle, v52) & 1) != 0)
          {
            if (v53 == 1)
            {
              handle[294] |= 0x10u;
              nw_protocol_connect(*(v52 + 32), v52);
              if ((handle[294] & 0x10) == 0)
              {
                goto LABEL_103;
              }

              handle[294] &= ~0x10u;
            }
          }

          else
          {
            if ((handle[294] & 2) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v63 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                buf[0] = 136446722;
                *&buf[1] = "nw_http_joining_get_out_of_the_way";
                v96 = 2082;
                v97 = handle + 208;
                v98 = 2080;
                v99 = " ";
                _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sMessaging cannot accept stream", buf, 0x20u);
              }
            }

            v65 = *(handle + 24);
            v64 = *(handle + 25);
            if (v65 < v64)
            {
              *v65 = v52;
              *(v65 + 8) = 2;
              v48 = v65 + 16;
            }

            else
            {
              v66 = *(handle + 23);
              v67 = v65 - v66;
              v68 = (v65 - v66) >> 4;
              v69 = v68 + 1;
              if ((v68 + 1) >> 60)
              {
                goto LABEL_194;
              }

              v70 = v64 - v66;
              if (v70 >> 3 > v69)
              {
                v69 = v70 >> 3;
              }

              if (v70 >= 0x7FFFFFFFFFFFFFF0)
              {
                v71 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v71 = v69;
              }

              if (v71)
              {
                if (!(v71 >> 60))
                {
                  operator new();
                }

                std::string::__throw_length_error[abi:nn200100]();
              }

              v72 = 16 * v68;
              *v72 = v52;
              *(v72 + 8) = 2;
              v48 = 16 * v68 + 16;
              memcpy(0, v66, v67);
              *(handle + 23) = 0;
              *(handle + 24) = v48;
              *(handle + 25) = 0;
              if (v66)
              {
                operator delete(v66);
              }
            }

            *(handle + 24) = v48;
            nw_protocol_error(v52, handle);
            nw_protocol_disconnected(v52, handle);
          }
        }
      }

      v84 = __nwlog_obj();
      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
      v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s called with null protocol", buf, 12);
      v100[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v85, v100, &type))
      {
        if (v100[0] == 17)
        {
          v86 = __nwlog_obj();
          v87 = v100[0];
          if (!os_log_type_enabled(v86, v100[0]))
          {
            goto LABEL_192;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
          v88 = "%{public}s called with null protocol";
          goto LABEL_191;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v86 = __nwlog_obj();
          v87 = v100[0];
          if (!os_log_type_enabled(v86, v100[0]))
          {
            goto LABEL_192;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
          v88 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_191;
        }

        v90 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        v87 = v100[0];
        v91 = os_log_type_enabled(v86, v100[0]);
        if (v90)
        {
          if (v91)
          {
            buf[0] = 136446466;
            *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
            v96 = 2082;
            v97 = v90;
            _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v90);
          goto LABEL_192;
        }

        if (v91)
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
          v88 = "%{public}s called with null protocol, no backtrace";
LABEL_191:
          _os_log_impl(&dword_181A37000, v86, v87, v88, buf, 0xCu);
        }
      }

LABEL_192:
      if (v85)
      {
        free(v85);
      }

      goto LABEL_74;
    }

    v16 = v16[4];
  }

  while (v16);
  v43 = __nwlog_obj();
  buf[0] = 136446210;
  *&buf[1] = "nw_http_joining_get_out_of_the_way";
  v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s http_messaging not found below http_joining", buf, 12);
  v100[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v44, v100, &type))
  {
    goto LABEL_150;
  }

  if (v100[0] != 17)
  {
    if (type == OS_LOG_TYPE_INFO)
    {
      v35 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = v100[0];
      v46 = os_log_type_enabled(v29, v100[0]);
      if (v35)
      {
        if (!v46)
        {
          goto LABEL_96;
        }

        buf[0] = 136446466;
        *&buf[1] = "nw_http_joining_get_out_of_the_way";
        v96 = 2082;
        v97 = v35;
        v37 = "%{public}s http_messaging not found below http_joining, dumping backtrace:%{public}s";
        goto LABEL_95;
      }

      if (!v46)
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_http_joining_get_out_of_the_way";
      v31 = "%{public}s http_messaging not found below http_joining, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = v100[0];
      if (!os_log_type_enabled(v29, v100[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_http_joining_get_out_of_the_way";
      v31 = "%{public}s http_messaging not found below http_joining, backtrace limit exceeded";
    }

LABEL_149:
    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    goto LABEL_150;
  }

  v29 = __nwlog_obj();
  v30 = v100[0];
  if (os_log_type_enabled(v29, v100[0]))
  {
    buf[0] = 136446210;
    *&buf[1] = "nw_http_joining_get_out_of_the_way";
    v31 = "%{public}s http_messaging not found below http_joining";
    goto LABEL_149;
  }

LABEL_150:
  if (v44)
  {
LABEL_151:
    free(v44);
  }
}

void nw_protocol_common_connected(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_protocol_common_connected";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v8, &type, &v95))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v98 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null protocol";
    }

    else
    {
      if (v95 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v72 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v72)
          {
            *buf = 136446466;
            v98 = "nw_protocol_common_connected";
            v99 = 2082;
            v100 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v72)
        {
          *buf = 136446210;
          v98 = "nw_protocol_common_connected";
          v11 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_62;
        }

        goto LABEL_64;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v98 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_protocol_common_connected";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v8, &type, &v95))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v98 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null other_protocol";
    }

    else
    {
      if (v95 == 1)
      {
        v73 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v74 = os_log_type_enabled(v9, type);
        if (!v73)
        {
          if (v74)
          {
            *buf = 136446210;
            v98 = "nw_protocol_common_connected";
            v11 = "%{public}s called with null other_protocol, no backtrace";
            goto LABEL_62;
          }

          goto LABEL_64;
        }

        if (v74)
        {
          *buf = 136446466;
          v98 = "nw_protocol_common_connected";
          v99 = 2082;
          v100 = v73;
          v75 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_140:
          _os_log_impl(&dword_181A37000, v9, v10, v75, buf, 0x16u);
        }

LABEL_141:
        free(v73);
        if (!v8)
        {
          return;
        }

        goto LABEL_65;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v98 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

LABEL_62:
    v38 = v9;
    v39 = v10;
LABEL_63:
    _os_log_impl(&dword_181A37000, v38, v39, v11, buf, 0xCu);
    goto LABEL_64;
  }

  v3 = a1;
  v4 = *(a1 + 48);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v98 = "nw_protocol_common_connected";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connected requires a default input handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v8, &type, &v95))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v98 = "nw_protocol_common_connected";
      v11 = "%{public}s connected requires a default input handler";
      goto LABEL_62;
    }

    if (v95 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v98 = "nw_protocol_common_connected";
      v11 = "%{public}s connected requires a default input handler, backtrace limit exceeded";
      goto LABEL_62;
    }

    v12 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!v12)
    {
      if (v15)
      {
        *buf = 136446210;
        v98 = "nw_protocol_common_connected";
        v11 = "%{public}s connected requires a default input handler, no backtrace";
        v38 = v13;
        v39 = v14;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (v15)
    {
      *buf = 136446466;
      v98 = "nw_protocol_common_connected";
      v99 = 2082;
      v100 = v12;
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s connected requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
    if (v8)
    {
LABEL_65:
      v40 = v8;
      goto LABEL_66;
    }

    return;
  }

  v5 = *(v4 + 40);
  v6 = *(a1 + 48);
  if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v4 + 64)) != 0)
  {
    v16 = *(v6 + 88);
    v7 = 0;
    if (v16)
    {
      *(v6 + 88) = v16 + 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v17 = *(a2 + 40);
  v18 = a2;
  if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *(a2 + 64)) != 0)
  {
    v21 = *(v18 + 88);
    if (v21)
    {
      v19 = 0;
      *(v18 + 88) = v21 + 1;
      v20 = *(v4 + 24);
      if (!v20)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(v4 + 24);
      if (!v20)
      {
        goto LABEL_108;
      }
    }
  }

  else
  {
    v19 = 1;
    v20 = *(v4 + 24);
    if (!v20)
    {
      goto LABEL_108;
    }
  }

  v22 = *(v20 + 40);
  if (v22)
  {
    v22(v4, a2);
    goto LABEL_31;
  }

LABEL_108:
  v58 = __nwlog_obj();
  v59 = *(v4 + 16);
  *buf = 136446722;
  v98 = "__nw_protocol_connected";
  if (!v59)
  {
    v59 = "invalid";
  }

  v99 = 2082;
  v100 = v59;
  v101 = 2048;
  v102 = v4;
  v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v95 = 0;
  if (!__nwlog_fault(v60, &type, &v95))
  {
    goto LABEL_157;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v61 = __nwlog_obj();
    v62 = type;
    if (!os_log_type_enabled(v61, type))
    {
      goto LABEL_157;
    }

    v63 = *(v4 + 16);
    if (!v63)
    {
      v63 = "invalid";
    }

    *buf = 136446722;
    v98 = "__nw_protocol_connected";
    v99 = 2082;
    v100 = v63;
    v101 = 2048;
    v102 = v4;
    v64 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
LABEL_155:
    v84 = v61;
LABEL_156:
    _os_log_impl(&dword_181A37000, v84, v62, v64, buf, 0x20u);
    goto LABEL_157;
  }

  if (v95 != 1)
  {
    v61 = __nwlog_obj();
    v62 = type;
    if (!os_log_type_enabled(v61, type))
    {
      goto LABEL_157;
    }

    v83 = *(v4 + 16);
    if (!v83)
    {
      v83 = "invalid";
    }

    *buf = 136446722;
    v98 = "__nw_protocol_connected";
    v99 = 2082;
    v100 = v83;
    v101 = 2048;
    v102 = v4;
    v64 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    goto LABEL_155;
  }

  v67 = __nw_create_backtrace_string();
  v68 = __nwlog_obj();
  v62 = type;
  log = v68;
  v69 = os_log_type_enabled(v68, type);
  if (v67)
  {
    if (v69)
    {
      v70 = *(v4 + 16);
      if (!v70)
      {
        v70 = "invalid";
      }

      *buf = 136446978;
      v98 = "__nw_protocol_connected";
      v99 = 2082;
      v100 = v70;
      v101 = 2048;
      v102 = v4;
      v103 = 2082;
      v104 = v67;
      _os_log_impl(&dword_181A37000, log, v62, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v67);
    goto LABEL_157;
  }

  if (v69)
  {
    v90 = *(v4 + 16);
    if (!v90)
    {
      v90 = "invalid";
    }

    *buf = 136446722;
    v98 = "__nw_protocol_connected";
    v99 = 2082;
    v100 = v90;
    v101 = 2048;
    v102 = v4;
    v64 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
    v84 = log;
    goto LABEL_156;
  }

LABEL_157:
  if (v60)
  {
    free(v60);
  }

LABEL_31:
  if ((v19 & 1) == 0)
  {
    v23 = *(a2 + 40);
    v24 = a2;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *(a2 + 64)) != 0)
    {
      v25 = *(v24 + 88);
      if (v25)
      {
        v26 = v25 - 1;
        *(v24 + 88) = v26;
        if (!v26)
        {
          v27 = *(v24 + 64);
          if (v27)
          {
            *(v24 + 64) = 0;
            v27[2](v27);
            _Block_release(v27);
          }

          if (*(v24 + 72))
          {
            v28 = *(v24 + 64);
            if (v28)
            {
              _Block_release(v28);
            }
          }

          free(v24);
        }
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    v29 = *(v4 + 40);
    if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
    {
      v30 = *(v4 + 88);
      if (v30)
      {
        v31 = v30 - 1;
        *(v4 + 88) = v31;
        if (!v31)
        {
          v32 = *(v4 + 64);
          if (v32)
          {
            *(v4 + 64) = 0;
            v32[2](v32);
            _Block_release(v32);
          }

          if (*(v4 + 72))
          {
            v33 = *(v4 + 64);
            if (v33)
            {
              _Block_release(v33);
            }
          }

          free(v4);
        }
      }
    }
  }

  if (*(v3 + 32) == a2)
  {
    v34 = *(v3 + 48);
    if (v34)
    {
      v35 = *(v34 + 40);
      v36 = *(v3 + 48);
      if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *(v34 + 64)) != 0)
      {
        v41 = *(v36 + 88);
        v37 = 0;
        if (v41)
        {
          *(v36 + 88) = v41 + 1;
        }
      }

      else
      {
        v37 = 1;
      }

      v42 = *(v3 + 40);
      v43 = v3;
      if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v43 = *(v3 + 64)) != 0)
      {
        v46 = *(v43 + 88);
        if (v46)
        {
          v44 = 0;
          *(v43 + 88) = v46 + 1;
          v45 = *(v34 + 24);
          if (!v45)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v44 = 0;
          v45 = *(v34 + 24);
          if (!v45)
          {
            goto LABEL_143;
          }
        }
      }

      else
      {
        v44 = 1;
        v45 = *(v34 + 24);
        if (!v45)
        {
          goto LABEL_143;
        }
      }

      v47 = *(v45 + 40);
      if (v47)
      {
        v47(v34, v3);
LABEL_81:
        if ((v44 & 1) == 0)
        {
          v48 = *(v3 + 40);
          if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v49 = *(v3 + 88);
            if (v49)
            {
              v50 = v49 - 1;
              *(v3 + 88) = v50;
              if (!v50)
              {
                v51 = *(v3 + 64);
                if (v51)
                {
                  *(v3 + 64) = 0;
                  v51[2](v51);
                  _Block_release(v51);
                }

                if (*(v3 + 72))
                {
                  v52 = *(v3 + 64);
                  if (v52)
                  {
                    _Block_release(v52);
                  }
                }

                free(v3);
              }
            }
          }
        }

        if (v37)
        {
          return;
        }

        v53 = *(v34 + 40);
        if (v53 != &nw_protocol_ref_counted_handle)
        {
          if (v53 != &nw_protocol_ref_counted_additional_handle)
          {
            return;
          }

          v34 = *(v34 + 64);
          if (!v34)
          {
            return;
          }
        }

        v54 = *(v34 + 88);
        if (!v54)
        {
          return;
        }

        v55 = v54 - 1;
        *(v34 + 88) = v55;
        if (v55)
        {
          return;
        }

        v56 = *(v34 + 64);
        if (v56)
        {
          *(v34 + 64) = 0;
          v56[2](v56);
          _Block_release(v56);
        }

        if (*(v34 + 72))
        {
          v57 = *(v34 + 64);
          if (v57)
          {
            _Block_release(v57);
          }
        }

        v40 = v34;
LABEL_66:
        free(v40);
        return;
      }

LABEL_143:
      v76 = __nwlog_obj();
      v77 = *(v34 + 16);
      *buf = 136446722;
      v98 = "__nw_protocol_connected";
      if (!v77)
      {
        v77 = "invalid";
      }

      v99 = 2082;
      v100 = v77;
      v101 = 2048;
      v102 = v34;
      LODWORD(v93) = 32;
      v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, v93);
      type = OS_LOG_TYPE_ERROR;
      v95 = 0;
      if (!__nwlog_fault(v78, &type, &v95))
      {
        goto LABEL_197;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v79 = __nwlog_obj();
        v80 = type;
        if (!os_log_type_enabled(v79, type))
        {
          goto LABEL_197;
        }

        v81 = *(v34 + 16);
        if (!v81)
        {
          v81 = "invalid";
        }

        *buf = 136446722;
        v98 = "__nw_protocol_connected";
        v99 = 2082;
        v100 = v81;
        v101 = 2048;
        v102 = v34;
        v82 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
      }

      else if (v95 == 1)
      {
        v86 = __nw_create_backtrace_string();
        v79 = __nwlog_obj();
        v80 = type;
        v87 = os_log_type_enabled(v79, type);
        if (v86)
        {
          if (v87)
          {
            v88 = *(v34 + 16);
            if (!v88)
            {
              v88 = "invalid";
            }

            *buf = 136446978;
            v98 = "__nw_protocol_connected";
            v99 = 2082;
            v100 = v88;
            v101 = 2048;
            v102 = v34;
            v103 = 2082;
            v104 = v86;
            _os_log_impl(&dword_181A37000, v79, v80, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v86);
          goto LABEL_197;
        }

        if (!v87)
        {
LABEL_197:
          if (v78)
          {
            free(v78);
          }

          goto LABEL_81;
        }

        v92 = *(v34 + 16);
        if (!v92)
        {
          v92 = "invalid";
        }

        *buf = 136446722;
        v98 = "__nw_protocol_connected";
        v99 = 2082;
        v100 = v92;
        v101 = 2048;
        v102 = v34;
        v82 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
      }

      else
      {
        v79 = __nwlog_obj();
        v80 = type;
        if (!os_log_type_enabled(v79, type))
        {
          goto LABEL_197;
        }

        v91 = *(v34 + 16);
        if (!v91)
        {
          v91 = "invalid";
        }

        *buf = 136446722;
        v98 = "__nw_protocol_connected";
        v99 = 2082;
        v100 = v91;
        v101 = 2048;
        v102 = v34;
        v82 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v79, v80, v82, buf, 0x20u);
      goto LABEL_197;
    }

    v85 = __nwlog_obj();
    *buf = 136446210;
    v98 = "__nw_protocol_connected";
    LODWORD(v93) = 12;
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s called with null protocol", buf, v93);
    type = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v8, &type, &v95))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v98 = "__nw_protocol_connected";
        v11 = "%{public}s called with null protocol";
        goto LABEL_62;
      }

LABEL_64:
      if (!v8)
      {
        return;
      }

      goto LABEL_65;
    }

    if (v95 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v98 = "__nw_protocol_connected";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    v73 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v89 = os_log_type_enabled(v9, type);
    if (!v73)
    {
      if (v89)
      {
        *buf = 136446210;
        v98 = "__nw_protocol_connected";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    if (v89)
    {
      *buf = 136446466;
      v98 = "__nw_protocol_connected";
      v99 = 2082;
      v100 = v73;
      v75 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_140;
    }

    goto LABEL_141;
  }
}

uint64_t nw_protocol_common_replace_input_handler(char *a1, uint64_t a2, char *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_common_replace_input_handler";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v33, &type, &v45))
    {
      goto LABEL_93;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_replace_input_handler";
      v36 = "%{public}s called with null protocol";
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v40 = os_log_type_enabled(v34, type);
      if (backtrace_string)
      {
        if (v40)
        {
          *buf = 136446466;
          v48 = "nw_protocol_common_replace_input_handler";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_93:
        if (!v33)
        {
          return 0;
        }

        goto LABEL_94;
      }

      if (!v40)
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_replace_input_handler";
      v36 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_replace_input_handler";
      v36 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_92;
  }

  if (!a2)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_common_replace_input_handler";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null old_input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v33, &type, &v45))
    {
      goto LABEL_93;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (!os_log_type_enabled(v34, type))
        {
          goto LABEL_93;
        }

        *buf = 136446210;
        v48 = "nw_protocol_common_replace_input_handler";
        v36 = "%{public}s called with null old_input_protocol, backtrace limit exceeded";
        goto LABEL_92;
      }

      v41 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v42 = os_log_type_enabled(v34, type);
      if (!v41)
      {
        if (!v42)
        {
          goto LABEL_93;
        }

        *buf = 136446210;
        v48 = "nw_protocol_common_replace_input_handler";
        v36 = "%{public}s called with null old_input_protocol, no backtrace";
        goto LABEL_92;
      }

      if (v42)
      {
        *buf = 136446466;
        v48 = "nw_protocol_common_replace_input_handler";
        v49 = 2082;
        v50 = v41;
        v43 = "%{public}s called with null old_input_protocol, dumping backtrace:%{public}s";
LABEL_77:
        _os_log_impl(&dword_181A37000, v34, v35, v43, buf, 0x16u);
      }

LABEL_78:
      free(v41);
      if (!v33)
      {
        return 0;
      }

LABEL_94:
      v31 = v33;
      goto LABEL_50;
    }

    v34 = __nwlog_obj();
    v35 = type;
    if (!os_log_type_enabled(v34, type))
    {
      goto LABEL_93;
    }

    *buf = 136446210;
    v48 = "nw_protocol_common_replace_input_handler";
    v36 = "%{public}s called with null old_input_protocol";
LABEL_92:
    _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    goto LABEL_93;
  }

  if (!a3)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_common_replace_input_handler";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null new_input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v33, &type, &v45))
    {
      goto LABEL_93;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_replace_input_handler";
      v36 = "%{public}s called with null new_input_protocol";
      goto LABEL_92;
    }

    if (v45 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_replace_input_handler";
      v36 = "%{public}s called with null new_input_protocol, backtrace limit exceeded";
      goto LABEL_92;
    }

    v41 = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v44 = os_log_type_enabled(v34, type);
    if (!v41)
    {
      if (!v44)
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_replace_input_handler";
      v36 = "%{public}s called with null new_input_protocol, no backtrace";
      goto LABEL_92;
    }

    if (v44)
    {
      *buf = 136446466;
      v48 = "nw_protocol_common_replace_input_handler";
      v49 = 2082;
      v50 = v41;
      v43 = "%{public}s called with null new_input_protocol, dumping backtrace:%{public}s";
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v5 = *(a1 + 6);
  if (v5 != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = *(a1 + 6);
    *buf = 136446722;
    v48 = "nw_protocol_common_replace_input_handler";
    v49 = 2048;
    v50 = v6;
    v51 = 2048;
    v52 = a2;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Old input handler does not match (%p != %p)", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v7, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v10 = *(a1 + 6);
          *buf = 136446722;
          v48 = "nw_protocol_common_replace_input_handler";
          v49 = 2048;
          v50 = v10;
          v51 = 2048;
          v52 = a2;
          v11 = "%{public}s Old input handler does not match (%p != %p)";
LABEL_47:
          _os_log_impl(&dword_181A37000, v8, v9, v11, buf, 0x20u);
        }
      }

      else if (v45 == 1)
      {
        v26 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        v27 = os_log_type_enabled(gLogObj, type);
        if (v26)
        {
          if (v27)
          {
            v28 = *(a1 + 6);
            *buf = 136446978;
            v48 = "nw_protocol_common_replace_input_handler";
            v49 = 2048;
            v50 = v28;
            v51 = 2048;
            v52 = a2;
            v53 = 2082;
            v54 = v26;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Old input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v26);
          goto LABEL_48;
        }

        if (v27)
        {
          v30 = *(a1 + 6);
          *buf = 136446722;
          v48 = "nw_protocol_common_replace_input_handler";
          v49 = 2048;
          v50 = v30;
          v51 = 2048;
          v52 = a2;
          v11 = "%{public}s Old input handler does not match (%p != %p), no backtrace";
          goto LABEL_47;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v29 = *(a1 + 6);
          *buf = 136446722;
          v48 = "nw_protocol_common_replace_input_handler";
          v49 = 2048;
          v50 = v29;
          v51 = 2048;
          v52 = a2;
          v11 = "%{public}s Old input handler does not match (%p != %p), backtrace limit exceeded";
          goto LABEL_47;
        }
      }
    }

LABEL_48:
    if (!v7)
    {
      return 0;
    }

    v31 = v7;
LABEL_50:
    free(v31);
    return 0;
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 40);
    if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v12 = *(v12 + 64)) != 0)
    {
      v14 = *(v12 + 88);
      if (v14)
      {
        v15 = v14 - 1;
        *(v12 + 88) = v15;
        if (!v15)
        {
          v16 = a3;
          v17 = *(v12 + 64);
          if (v17)
          {
            *(v12 + 64) = 0;
            v17[2](v17);
            _Block_release(v17);
          }

          if (*(v12 + 72))
          {
            v18 = *(v12 + 64);
            if (v18)
            {
              _Block_release(v18);
            }
          }

          free(v12);
          v5 = *(a1 + 6);
          a3 = v16;
        }
      }
    }

    *(a2 + 32) = 0;
  }

  if (v5)
  {
    v19 = *(v5 + 40);
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v5 + 64)) != 0)
    {
      v20 = *(v5 + 88);
      if (v20)
      {
        v21 = v20 - 1;
        *(v5 + 88) = v21;
        if (!v21)
        {
          v22 = a3;
          v23 = *(v5 + 64);
          if (v23)
          {
            *(v5 + 64) = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (*(v5 + 72))
          {
            v24 = *(v5 + 64);
            if (v24)
            {
              _Block_release(v24);
            }
          }

          free(v5);
          a3 = v22;
        }
      }
    }

    *(a1 + 6) = 0;
  }

  return nw_protocol_common_add_input_handler(a1, a3);
}

void nw_protocol_plugin_retry_connected(uint64_t a1, uint64_t a2, void *a3)
{
  v246 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v129 = __nwlog_obj();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v238 = "nw_protocol_plugin_retry_connected";
      v239 = 2048;
      *v240 = a2;
      _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s called %p", buf, 0x16u);
    }
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(v6 + 40);
    v8 = *(a2 + 48);
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v6 + 64)) != 0)
    {
      v14 = *(v8 + 88);
      if (v14)
      {
        v9 = 0;
        *(v8 + 88) = v14 + 1;
        if (!a3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
        if (!a3)
        {
LABEL_13:
          v15 = __nwlog_obj();
          *buf = 136446210;
          v238 = "__nw_protocol_connected";
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v232[0]) = 0;
          v227 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null other_protocol", buf, 12);
          if (!__nwlog_fault(v227, type, v232))
          {
            goto LABEL_310;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v16 = __nwlog_obj();
            v17 = type[0];
            if (!os_log_type_enabled(v16, type[0]))
            {
              goto LABEL_310;
            }

            *buf = 136446210;
            v238 = "__nw_protocol_connected";
            v18 = "%{public}s called with null other_protocol";
          }

          else
          {
            if (LOBYTE(v232[0]) == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v151 = __nwlog_obj();
              logb = type[0];
              v152 = os_log_type_enabled(v151, type[0]);
              if (backtrace_string)
              {
                if (v152)
                {
                  *buf = 136446466;
                  v238 = "__nw_protocol_connected";
                  v239 = 2082;
                  *v240 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v151, logb, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
              }

              else if (v152)
              {
                *buf = 136446210;
                v238 = "__nw_protocol_connected";
                v18 = "%{public}s called with null other_protocol, no backtrace";
                v173 = v151;
                v174 = logb;
                goto LABEL_309;
              }

LABEL_310:
              v27 = v227;
              if (!v227)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            v16 = __nwlog_obj();
            v17 = type[0];
            if (!os_log_type_enabled(v16, type[0]))
            {
              goto LABEL_310;
            }

            *buf = 136446210;
            v238 = "__nw_protocol_connected";
            v18 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          }

          v173 = v16;
          v174 = v17;
LABEL_309:
          _os_log_impl(&dword_181A37000, v173, v174, v18, buf, 0xCu);
          goto LABEL_310;
        }
      }
    }

    else
    {
      v9 = 1;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    v10 = a3[5];
    v11 = a3;
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = a3[8]) != 0)
    {
      v19 = v11[11];
      if (v19)
      {
        v12 = 0;
        v11[11] = v19 + 1;
        v13 = *(v6 + 24);
        if (!v13)
        {
          goto LABEL_217;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(v6 + 24);
        if (!v13)
        {
          goto LABEL_217;
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = *(v6 + 24);
      if (!v13)
      {
        goto LABEL_217;
      }
    }

    v20 = *(v13 + 40);
    if (v20)
    {
      v20(v6, a3);
LABEL_26:
      if ((v12 & 1) != 0 || (v21 = a3[5], v22 = a3, v21 != &nw_protocol_ref_counted_handle) && (v21 != &nw_protocol_ref_counted_additional_handle || (v22 = a3[8]) == 0) || (v23 = *(v22 + 11)) == 0 || (v24 = v23 - 1, (*(v22 + 11) = v24) != 0))
      {
LABEL_39:
        if ((v9 & 1) == 0)
        {
          v28 = *(v6 + 40);
          if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
          {
            v29 = *(v6 + 88);
            if (v29)
            {
              v30 = v29 - 1;
              *(v6 + 88) = v30;
              if (!v30)
              {
                v31 = *(v6 + 64);
                if (v31)
                {
                  *(v6 + 64) = 0;
                  v31[2](v31);
                  _Block_release(v31);
                }

                if (*(v6 + 72))
                {
                  v32 = *(v6 + 64);
                  if (v32)
                  {
                    _Block_release(v32);
                  }
                }

                goto LABEL_50;
              }
            }
          }
        }

        goto LABEL_51;
      }

      v25 = *(v22 + 8);
      if (v25)
      {
        *(v22 + 8) = 0;
        v25[2](v25);
        _Block_release(v25);
      }

      if (v22[72])
      {
        v26 = *(v22 + 8);
        if (v26)
        {
          _Block_release(v26);
        }
      }

      v27 = v22;
LABEL_38:
      free(v27);
      goto LABEL_39;
    }

LABEL_217:
    v124 = __nwlog_obj();
    v125 = *(v6 + 16);
    *buf = 136446722;
    v238 = "__nw_protocol_connected";
    if (!v125)
    {
      v125 = "invalid";
    }

    v239 = 2082;
    *v240 = v125;
    *&v240[8] = 2048;
    v241 = v6;
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v232[0]) = 0;
    v229 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v124, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 32);
    if (!__nwlog_fault(v229, type, v232))
    {
      goto LABEL_271;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v126 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v126, type[0]))
      {
        goto LABEL_271;
      }

      v127 = *(v6 + 16);
      if (!v127)
      {
        v127 = "invalid";
      }

      *buf = 136446722;
      v238 = "__nw_protocol_connected";
      v239 = 2082;
      *v240 = v127;
      *&v240[8] = 2048;
      v241 = v6;
      v128 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
    }

    else
    {
      if (LOBYTE(v232[0]) == 1)
      {
        v134 = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        v219 = type[0];
        v135 = os_log_type_enabled(loga, type[0]);
        if (v134)
        {
          if (v135)
          {
            v136 = *(v6 + 16);
            if (!v136)
            {
              v136 = "invalid";
            }

            *buf = 136446978;
            v238 = "__nw_protocol_connected";
            v239 = 2082;
            *v240 = v136;
            *&v240[8] = 2048;
            v241 = v6;
            v242 = 2082;
            v243 = v134;
            _os_log_impl(&dword_181A37000, loga, v219, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v134);
          goto LABEL_271;
        }

        if (!v135)
        {
LABEL_271:
          if (v229)
          {
            free(v229);
          }

          goto LABEL_26;
        }

        v175 = *(v6 + 16);
        if (!v175)
        {
          v175 = "invalid";
        }

        *buf = 136446722;
        v238 = "__nw_protocol_connected";
        v239 = 2082;
        *v240 = v175;
        *&v240[8] = 2048;
        v241 = v6;
        v128 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
        v154 = loga;
        v155 = v219;
LABEL_270:
        _os_log_impl(&dword_181A37000, v154, v155, v128, buf, 0x20u);
        goto LABEL_271;
      }

      v126 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v126, type[0]))
      {
        goto LABEL_271;
      }

      v153 = *(v6 + 16);
      if (!v153)
      {
        v153 = "invalid";
      }

      *buf = 136446722;
      v238 = "__nw_protocol_connected";
      v239 = 2082;
      *v240 = v153;
      *&v240[8] = 2048;
      v241 = v6;
      v128 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    }

    v154 = v126;
    v155 = log;
    goto LABEL_270;
  }

  v130 = __nwlog_obj();
  *buf = 136446210;
  v238 = "__nw_protocol_connected";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v232[0]) = 0;
  if (__nwlog_fault(v6, type, v232))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v131 = __nwlog_obj();
      v132 = type[0];
      if (!os_log_type_enabled(v131, type[0]))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v238 = "__nw_protocol_connected";
      v133 = "%{public}s called with null protocol";
    }

    else if (LOBYTE(v232[0]) == 1)
    {
      v148 = __nw_create_backtrace_string();
      v131 = __nwlog_obj();
      v132 = type[0];
      v149 = os_log_type_enabled(v131, type[0]);
      if (v148)
      {
        if (v149)
        {
          *buf = 136446466;
          v238 = "__nw_protocol_connected";
          v239 = 2082;
          *v240 = v148;
          _os_log_impl(&dword_181A37000, v131, v132, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v148);
        if (v6)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (!v149)
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v238 = "__nw_protocol_connected";
      v133 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v131 = __nwlog_obj();
      v132 = type[0];
      if (!os_log_type_enabled(v131, type[0]))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v238 = "__nw_protocol_connected";
      v133 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v131, v132, v133, buf, 0xCu);
  }

LABEL_347:
  if (v6)
  {
LABEL_50:
    free(v6);
  }

LABEL_51:
  v33 = *(a2 + 32);
  if (v33 != a3)
  {
    if (gLogDatapath == 1)
    {
      v137 = __nwlog_obj();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
        v138 = *(a2 + 32);
        v139 = "invalid";
        if (v138 && *(v138 + 16))
        {
          v139 = *(v138 + 16);
        }

        v140 = "invalid";
        if (a3)
        {
          if (a3[2])
          {
            v140 = a3[2];
          }
        }

        *buf = 136447234;
        v238 = "nw_protocol_plugin_retry_connected";
        v239 = 2080;
        *v240 = v139;
        *&v240[8] = 2048;
        v241 = v138;
        v242 = 2080;
        v243 = v140;
        v244 = 2048;
        v245 = a3;
        _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_DEBUG, "%{public}s connected protocol %s: %p is not our output_handler %s: %p, ignoring", buf, 0x34u);
      }
    }

    return;
  }

  if ((*(a1 + 108) & 0x100) == 0)
  {
    goto LABEL_98;
  }

  if (a3 && ((v34 = *(v33 + 40), v35 = *(a2 + 32), v34 == &nw_protocol_ref_counted_handle) || v34 == &nw_protocol_ref_counted_additional_handle && (v35 = *(v33 + 64)) != 0))
  {
    v37 = *(v35 + 88);
    v36 = 0;
    if (v37)
    {
      *(v35 + 88) = v37 + 1;
    }
  }

  else
  {
    v36 = 1;
  }

  v38 = *(a2 + 40);
  v39 = a2;
  if (v38 == &nw_protocol_ref_counted_handle || v38 == &nw_protocol_ref_counted_additional_handle && (v39 = *(a2 + 64)) != 0)
  {
    v65 = *(v39 + 88);
    if (v65)
    {
      v40 = 0;
      *(v39 + 88) = v65 + 1;
      if (!a3)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v40 = 0;
      if (!a3)
      {
        goto LABEL_107;
      }
    }
  }

  else
  {
    v40 = 1;
    if (!a3)
    {
LABEL_107:
      v66 = __nwlog_obj();
      v67 = 0;
      v68 = "invalid";
      goto LABEL_276;
    }
  }

  v41 = *(v33 + 24);
  if (v41)
  {
    v42 = *(v41 + 216);
    if (v42)
    {
      v43 = v42(v33, a2);
      if (v40)
      {
        goto LABEL_79;
      }

      goto LABEL_68;
    }
  }

  v66 = __nwlog_obj();
  v68 = "invalid";
  if (*(v33 + 16))
  {
    v68 = *(v33 + 16);
  }

  v67 = a3;
LABEL_276:
  *buf = 136446722;
  v238 = "__nw_protocol_waiting_for_output";
  v239 = 2082;
  *v240 = v68;
  *&v240[8] = 2048;
  v241 = v67;
  LODWORD(v218) = 32;
  v156 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback", buf, v218);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v232[0]) = 0;
  v230 = v156;
  if (!__nwlog_fault(v156, type, v232))
  {
    goto LABEL_336;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v157 = __nwlog_obj();
    logc = type[0];
    if (!os_log_type_enabled(v157, type[0]))
    {
      goto LABEL_336;
    }

    v158 = "invalid";
    if (a3 && *(v33 + 16))
    {
      v158 = *(v33 + 16);
    }

    *buf = 136446722;
    v238 = "__nw_protocol_waiting_for_output";
    v239 = 2082;
    *v240 = v158;
    *&v240[8] = 2048;
    v241 = a3;
    v159 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback";
LABEL_334:
    v186 = v157;
    v187 = logc;
LABEL_335:
    _os_log_impl(&dword_181A37000, v186, v187, v159, buf, 0x20u);
    goto LABEL_336;
  }

  if (LOBYTE(v232[0]) != 1)
  {
    v157 = __nwlog_obj();
    logc = type[0];
    if (!os_log_type_enabled(v157, type[0]))
    {
      goto LABEL_336;
    }

    v185 = "invalid";
    if (a3 && *(v33 + 16))
    {
      v185 = *(v33 + 16);
    }

    *buf = 136446722;
    v238 = "__nw_protocol_waiting_for_output";
    v239 = 2082;
    *v240 = v185;
    *&v240[8] = 2048;
    v241 = a3;
    v159 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, backtrace limit exceeded";
    goto LABEL_334;
  }

  v167 = __nw_create_backtrace_string();
  logd = __nwlog_obj();
  v220 = type[0];
  v168 = os_log_type_enabled(logd, type[0]);
  if (v167)
  {
    if (v168)
    {
      v169 = "invalid";
      if (a3 && *(v33 + 16))
      {
        v169 = *(v33 + 16);
      }

      *buf = 136446978;
      v238 = "__nw_protocol_waiting_for_output";
      v239 = 2082;
      *v240 = v169;
      *&v240[8] = 2048;
      v241 = a3;
      v242 = 2082;
      v243 = v167;
      _os_log_impl(&dword_181A37000, logd, v220, "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v167);
  }

  else if (v168)
  {
    v198 = "invalid";
    if (a3 && *(v33 + 16))
    {
      v198 = *(v33 + 16);
    }

    *buf = 136446722;
    v238 = "__nw_protocol_waiting_for_output";
    v239 = 2082;
    *v240 = v198;
    *&v240[8] = 2048;
    v241 = a3;
    v159 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, no backtrace";
    v186 = logd;
    v187 = v220;
    goto LABEL_335;
  }

LABEL_336:
  if (v230)
  {
    free(v230);
  }

  v43 = 0;
  if ((v40 & 1) == 0)
  {
LABEL_68:
    v44 = *(a2 + 40);
    v45 = a2;
    if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (v45 = *(a2 + 64)) != 0)
    {
      v46 = *(v45 + 88);
      if (v46)
      {
        v47 = v46 - 1;
        *(v45 + 88) = v47;
        if (!v47)
        {
          v228 = v43;
          v48 = *(v45 + 64);
          if (v48)
          {
            *(v45 + 64) = 0;
            v48[2](v48);
            _Block_release(v48);
          }

          if (*(v45 + 72))
          {
            v49 = *(v45 + 64);
            if (v49)
            {
              _Block_release(v49);
            }
          }

          free(v45);
          v43 = v228;
        }
      }
    }
  }

LABEL_79:
  if (a3)
  {
    v50 = v36;
  }

  else
  {
    v50 = 1;
  }

  if ((v50 & 1) == 0)
  {
    v51 = *(v33 + 40);
    if (v51 == &nw_protocol_ref_counted_handle || v51 == &nw_protocol_ref_counted_additional_handle && (v33 = *(v33 + 64)) != 0)
    {
      v52 = *(v33 + 88);
      if (v52)
      {
        v53 = v52 - 1;
        *(v33 + 88) = v53;
        if (!v53)
        {
          v54 = v43;
          v55 = *(v33 + 64);
          if (v55)
          {
            *(v33 + 64) = 0;
            v55[2](v55);
            _Block_release(v55);
          }

          if (*(v33 + 72))
          {
            v56 = *(v33 + 64);
            if (v56)
            {
              _Block_release(v56);
            }
          }

          free(v33);
          v43 = v54;
        }
      }
    }
  }

  if (v43)
  {
    if (gLogDatapath == 1)
    {
      v57 = __nwlog_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v238 = "nw_protocol_plugin_retry_connected";
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s Dropping early connected event", buf, 0xCu);
      }
    }

    return;
  }

LABEL_98:
  *(a1 + 72) = 0;
  if (gLogDatapath == 1)
  {
    v160 = __nwlog_obj();
    if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
    {
      v161 = (*(a1 + 108) >> 4) & 1;
      *buf = 136446466;
      v238 = "nw_protocol_plugin_retry_send_output_frames";
      v239 = 1024;
      *v240 = v161;
      _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_DEBUG, "%{public}s reissuing %{BOOL}d", buf, 0x12u);
    }
  }

  v58 = *(a1 + 108);
  if ((v58 & 0x10) == 0)
  {
    goto LABEL_174;
  }

  *(a1 + 108) = v58 & 0xFFEF;
  if (!*(a1 + 84))
  {
    goto LABEL_174;
  }

  v232[0] = 0;
  v232[1] = v232;
  v59 = *(a1 + 76);
  v60 = *(a1 + 80);
  v61 = *(a2 + 40);
  v62 = *(a2 + 48);
  v63 = a2;
  if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v63 = *(a2 + 64)) != 0)
  {
    v69 = *(v63 + 88);
    v64 = 0;
    if (v69)
    {
      *(v63 + 88) = v69 + 1;
    }
  }

  else
  {
    v64 = 1;
  }

  if (!v62)
  {
    v189 = __nwlog_obj();
    *buf = 136446210;
    v238 = "__nw_protocol_get_output_frames";
    LODWORD(v218) = 12;
    v190 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v189, 16, "%{public}s called with null input_protocol", buf, v218);
    type[0] = OS_LOG_TYPE_ERROR;
    v236 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v190, type, &v236))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v191 = __nwlog_obj();
        v192 = type[0];
        if (os_log_type_enabled(v191, type[0]))
        {
          *buf = 136446210;
          v238 = "__nw_protocol_get_output_frames";
          v193 = "%{public}s called with null input_protocol";
LABEL_421:
          _os_log_impl(&dword_181A37000, v191, v192, v193, buf, 0xCu);
        }
      }

      else if (v236 == OS_LOG_TYPE_INFO)
      {
        v200 = __nw_create_backtrace_string();
        v191 = __nwlog_obj();
        v192 = type[0];
        v201 = os_log_type_enabled(v191, type[0]);
        if (v200)
        {
          if (v201)
          {
            *buf = 136446466;
            v238 = "__nw_protocol_get_output_frames";
            v239 = 2082;
            *v240 = v200;
            _os_log_impl(&dword_181A37000, v191, v192, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v200);
          goto LABEL_422;
        }

        if (v201)
        {
          *buf = 136446210;
          v238 = "__nw_protocol_get_output_frames";
          v193 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_421;
        }
      }

      else
      {
        v191 = __nwlog_obj();
        v192 = type[0];
        if (os_log_type_enabled(v191, type[0]))
        {
          *buf = 136446210;
          v238 = "__nw_protocol_get_output_frames";
          v193 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_421;
        }
      }
    }

LABEL_422:
    if (v190)
    {
      free(v190);
    }

    v76 = 1;
    goto LABEL_134;
  }

  v70 = *(v62 + 40);
  v71 = v62;
  if (v70 == &nw_protocol_ref_counted_handle || v70 == &nw_protocol_ref_counted_additional_handle && (v71 = *(v62 + 64)) != 0)
  {
    v73 = *(v71 + 88);
    v72 = 0;
    if (v73)
    {
      *(v71 + 88) = v73 + 1;
    }
  }

  else
  {
    v72 = 1;
  }

  v74 = *(a2 + 24);
  if (v74)
  {
    v75 = *(v74 + 88);
    if (v75)
    {
      v76 = v75(a2, v62, v59, v60) == 0;
      if (v72)
      {
        goto LABEL_134;
      }

      goto LABEL_123;
    }
  }

  v176 = __nwlog_obj();
  v177 = *(a2 + 16);
  *buf = 136446722;
  v238 = "__nw_protocol_get_output_frames";
  if (!v177)
  {
    v177 = "invalid";
  }

  v239 = 2082;
  *v240 = v177;
  *&v240[8] = 2048;
  v241 = a2;
  LODWORD(v218) = 32;
  v178 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v176, 16, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback", buf, v218);
  type[0] = OS_LOG_TYPE_ERROR;
  v236 = OS_LOG_TYPE_DEFAULT;
  v231 = v178;
  if (!__nwlog_fault(v178, type, &v236))
  {
    goto LABEL_387;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v179 = __nwlog_obj();
    v180 = type[0];
    if (!os_log_type_enabled(v179, type[0]))
    {
      goto LABEL_387;
    }

    v181 = *(a2 + 16);
    if (!v181)
    {
      v181 = "invalid";
    }

    *buf = 136446722;
    v238 = "__nw_protocol_get_output_frames";
    v239 = 2082;
    *v240 = v181;
    *&v240[8] = 2048;
    v241 = a2;
    v182 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback";
LABEL_385:
    v203 = v179;
LABEL_386:
    _os_log_impl(&dword_181A37000, v203, v180, v182, buf, 0x20u);
    goto LABEL_387;
  }

  if (v236 != OS_LOG_TYPE_INFO)
  {
    v179 = __nwlog_obj();
    v180 = type[0];
    if (!os_log_type_enabled(v179, type[0]))
    {
      goto LABEL_387;
    }

    v202 = *(a2 + 16);
    if (!v202)
    {
      v202 = "invalid";
    }

    *buf = 136446722;
    v238 = "__nw_protocol_get_output_frames";
    v239 = 2082;
    *v240 = v202;
    *&v240[8] = 2048;
    v241 = a2;
    v182 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded";
    goto LABEL_385;
  }

  v194 = __nw_create_backtrace_string();
  v195 = __nwlog_obj();
  v180 = type[0];
  loge = v195;
  v196 = os_log_type_enabled(v195, type[0]);
  if (v194)
  {
    if (v196)
    {
      v197 = *(a2 + 16);
      if (!v197)
      {
        v197 = "invalid";
      }

      *buf = 136446978;
      v238 = "__nw_protocol_get_output_frames";
      v239 = 2082;
      *v240 = v197;
      *&v240[8] = 2048;
      v241 = a2;
      v242 = 2082;
      v243 = v194;
      _os_log_impl(&dword_181A37000, loge, v180, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v194);
  }

  else if (v196)
  {
    v211 = *(a2 + 16);
    if (!v211)
    {
      v211 = "invalid";
    }

    *buf = 136446722;
    v238 = "__nw_protocol_get_output_frames";
    v239 = 2082;
    *v240 = v211;
    *&v240[8] = 2048;
    v241 = a2;
    v182 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace";
    v203 = loge;
    goto LABEL_386;
  }

LABEL_387:
  if (v231)
  {
    free(v231);
  }

  v76 = 1;
  if ((v72 & 1) == 0)
  {
LABEL_123:
    v77 = *(v62 + 40);
    if (v77 == &nw_protocol_ref_counted_handle || v77 == &nw_protocol_ref_counted_additional_handle && (v62 = *(v62 + 64)) != 0)
    {
      v78 = *(v62 + 88);
      if (v78)
      {
        v79 = v78 - 1;
        *(v62 + 88) = v79;
        if (!v79)
        {
          v80 = *(v62 + 64);
          if (v80)
          {
            *(v62 + 64) = 0;
            v80[2](v80);
            _Block_release(v80);
          }

          if (*(v62 + 72))
          {
            v81 = *(v62 + 64);
            if (v81)
            {
              _Block_release(v81);
            }
          }

          free(v62);
        }
      }
    }
  }

LABEL_134:
  if (a2)
  {
    v82 = v64;
  }

  else
  {
    v82 = 1;
  }

  if ((v82 & 1) == 0)
  {
    v83 = *(a2 + 40);
    v84 = a2;
    if (v83 == &nw_protocol_ref_counted_handle || v83 == &nw_protocol_ref_counted_additional_handle && (v84 = *(a2 + 64)) != 0)
    {
      v85 = *(v84 + 88);
      if (v85)
      {
        v86 = v85 - 1;
        *(v84 + 88) = v86;
        if (!v86)
        {
          v87 = *(v84 + 64);
          if (v87)
          {
            *(v84 + 64) = 0;
            v87[2](v87);
            _Block_release(v87);
          }

          if (*(v84 + 72))
          {
            v88 = *(v84 + 64);
            if (v88)
            {
              _Block_release(v88);
            }
          }

          free(v84);
        }
      }
    }
  }

  if (v232[0])
  {
    if (v76)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v89 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v238 = "nw_protocol_plugin_retry_send_output_frames";
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_ERROR, "%{public}s Output frames is not empty but returned frame count is 0", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if ((*(*(a1 + 16) + 16))())
    {
      nw::share(type, a2);
      v94 = *(a2 + 24);
      if (v94)
      {
        v95 = *(v94 + 96);
        if (v95)
        {
          v95(a2, v232);
LABEL_159:
          if (v235)
          {
            v96 = *type;
            if (*type)
            {
              v97 = *(*type + 40);
              if (v97 == &nw_protocol_ref_counted_handle || v97 == &nw_protocol_ref_counted_additional_handle && (v96 = *(*type + 64)) != 0)
              {
                v98 = *(v96 + 88);
                if (v98)
                {
                  v99 = v98 - 1;
                  *(v96 + 88) = v99;
                  if (!v99)
                  {
                    v100 = *(v96 + 64);
                    if (v100)
                    {
                      *(v96 + 64) = 0;
                      v100[2](v100);
                      _Block_release(v100);
                    }

                    if (*(v96 + 72))
                    {
                      v101 = *(v96 + 64);
                      if (v101)
                      {
                        _Block_release(v101);
                      }
                    }

                    free(v96);
                  }
                }
              }
            }
          }

          goto LABEL_174;
        }
      }

      v204 = __nwlog_obj();
      v205 = *(a2 + 16);
      *buf = 136446722;
      v238 = "__nw_protocol_finalize_output_frames";
      if (!v205)
      {
        v205 = "invalid";
      }

      v239 = 2082;
      *v240 = v205;
      *&v240[8] = 2048;
      v241 = a2;
      LODWORD(v218) = 32;
      v206 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v204, 16, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, v218);
      v236 = OS_LOG_TYPE_ERROR;
      v233 = 0;
      if (__nwlog_fault(v206, &v236, &v233))
      {
        if (v236 == OS_LOG_TYPE_FAULT)
        {
          v207 = __nwlog_obj();
          v208 = v236;
          if (!os_log_type_enabled(v207, v236))
          {
            goto LABEL_434;
          }

          v209 = *(a2 + 16);
          if (!v209)
          {
            v209 = "invalid";
          }

          *buf = 136446722;
          v238 = "__nw_protocol_finalize_output_frames";
          v239 = 2082;
          *v240 = v209;
          *&v240[8] = 2048;
          v241 = a2;
          v210 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
          goto LABEL_433;
        }

        if (v233 != 1)
        {
          v207 = __nwlog_obj();
          v208 = v236;
          if (!os_log_type_enabled(v207, v236))
          {
            goto LABEL_434;
          }

          v216 = *(a2 + 16);
          if (!v216)
          {
            v216 = "invalid";
          }

          *buf = 136446722;
          v238 = "__nw_protocol_finalize_output_frames";
          v239 = 2082;
          *v240 = v216;
          *&v240[8] = 2048;
          v241 = a2;
          v210 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
          goto LABEL_433;
        }

        v213 = __nw_create_backtrace_string();
        v207 = __nwlog_obj();
        v208 = v236;
        v214 = os_log_type_enabled(v207, v236);
        if (v213)
        {
          if (v214)
          {
            v215 = *(a2 + 16);
            if (!v215)
            {
              v215 = "invalid";
            }

            *buf = 136446978;
            v238 = "__nw_protocol_finalize_output_frames";
            v239 = 2082;
            *v240 = v215;
            *&v240[8] = 2048;
            v241 = a2;
            v242 = 2082;
            v243 = v213;
            _os_log_impl(&dword_181A37000, v207, v208, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v213);
          goto LABEL_434;
        }

        if (v214)
        {
          v217 = *(a2 + 16);
          if (!v217)
          {
            v217 = "invalid";
          }

          *buf = 136446722;
          v238 = "__nw_protocol_finalize_output_frames";
          v239 = 2082;
          *v240 = v217;
          *&v240[8] = 2048;
          v241 = a2;
          v210 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
LABEL_433:
          _os_log_impl(&dword_181A37000, v207, v208, v210, buf, 0x20u);
        }
      }

LABEL_434:
      if (v206)
      {
        free(v206);
      }

      goto LABEL_159;
    }

    if (gLogDatapath == 1)
    {
      v212 = __nwlog_obj();
      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v238 = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v212, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    nw_frame_array_finalize(v232, 1, 0);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v90 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v91 = *(a1 + 76);
      v92 = *(a1 + 80);
      v93 = *(a1 + 84);
      *buf = 136446978;
      v238 = "nw_protocol_plugin_retry_send_output_frames";
      v239 = 1024;
      *v240 = v91;
      *&v240[4] = 1024;
      *&v240[6] = v92;
      LOWORD(v241) = 1024;
      *(&v241 + 2) = v93;
      _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_ERROR, "%{public}s Asked for %u minimum bytes, %u maximum bytes, %u frames but received no frames", buf, 0x1Eu);
    }
  }

LABEL_174:
  v102 = *(a2 + 48);
  if (!v102)
  {
    v162 = __nwlog_obj();
    *buf = 136446210;
    v238 = "__nw_protocol_connected";
    LODWORD(v218) = 12;
    v163 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s called with null protocol", buf, v218);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v232[0]) = 0;
    if (__nwlog_fault(v163, type, v232))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v164 = __nwlog_obj();
        v165 = type[0];
        if (os_log_type_enabled(v164, type[0]))
        {
          *buf = 136446210;
          v238 = "__nw_protocol_connected";
          v166 = "%{public}s called with null protocol";
LABEL_401:
          _os_log_impl(&dword_181A37000, v164, v165, v166, buf, 0xCu);
        }
      }

      else if (LOBYTE(v232[0]) == 1)
      {
        v183 = __nw_create_backtrace_string();
        v164 = __nwlog_obj();
        v165 = type[0];
        v184 = os_log_type_enabled(v164, type[0]);
        if (v183)
        {
          if (v184)
          {
            *buf = 136446466;
            v238 = "__nw_protocol_connected";
            v239 = 2082;
            *v240 = v183;
            _os_log_impl(&dword_181A37000, v164, v165, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v183);
          goto LABEL_402;
        }

        if (v184)
        {
          *buf = 136446210;
          v238 = "__nw_protocol_connected";
          v166 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_401;
        }
      }

      else
      {
        v164 = __nwlog_obj();
        v165 = type[0];
        if (os_log_type_enabled(v164, type[0]))
        {
          *buf = 136446210;
          v238 = "__nw_protocol_connected";
          v166 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_401;
        }
      }
    }

LABEL_402:
    if (!v163)
    {
      return;
    }

    v123 = v163;
LABEL_216:
    free(v123);
    return;
  }

  v103 = *(v102 + 40);
  v104 = *(a2 + 48);
  if (v103 == &nw_protocol_ref_counted_handle || v103 == &nw_protocol_ref_counted_additional_handle && (v104 = *(v102 + 64)) != 0)
  {
    v106 = *(v104 + 88);
    v105 = 0;
    if (v106)
    {
      *(v104 + 88) = v106 + 1;
    }
  }

  else
  {
    v105 = 1;
  }

  v107 = *(a2 + 40);
  v108 = a2;
  if (v107 == &nw_protocol_ref_counted_handle || v107 == &nw_protocol_ref_counted_additional_handle && (v108 = *(a2 + 64)) != 0)
  {
    v111 = *(v108 + 88);
    if (v111)
    {
      v109 = 0;
      *(v108 + 88) = v111 + 1;
      v110 = *(v102 + 24);
      if (!v110)
      {
        goto LABEL_246;
      }
    }

    else
    {
      v109 = 0;
      v110 = *(v102 + 24);
      if (!v110)
      {
        goto LABEL_246;
      }
    }
  }

  else
  {
    v109 = 1;
    v110 = *(v102 + 24);
    if (!v110)
    {
      goto LABEL_246;
    }
  }

  v112 = *(v110 + 40);
  if (v112)
  {
    v112(v102, a2);
    goto LABEL_192;
  }

LABEL_246:
  v141 = __nwlog_obj();
  v142 = *(v102 + 16);
  *buf = 136446722;
  v238 = "__nw_protocol_connected";
  if (!v142)
  {
    v142 = "invalid";
  }

  v239 = 2082;
  *v240 = v142;
  *&v240[8] = 2048;
  v241 = v102;
  LODWORD(v218) = 32;
  v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, v218);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v232[0]) = 0;
  if (!__nwlog_fault(v143, type, v232))
  {
    goto LABEL_374;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v144 = __nwlog_obj();
    v145 = type[0];
    if (!os_log_type_enabled(v144, type[0]))
    {
      goto LABEL_374;
    }

    v146 = *(v102 + 16);
    if (!v146)
    {
      v146 = "invalid";
    }

    *buf = 136446722;
    v238 = "__nw_protocol_connected";
    v239 = 2082;
    *v240 = v146;
    *&v240[8] = 2048;
    v241 = v102;
    v147 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
    goto LABEL_373;
  }

  if (LOBYTE(v232[0]) != 1)
  {
    v144 = __nwlog_obj();
    v145 = type[0];
    if (!os_log_type_enabled(v144, type[0]))
    {
      goto LABEL_374;
    }

    v188 = *(v102 + 16);
    if (!v188)
    {
      v188 = "invalid";
    }

    *buf = 136446722;
    v238 = "__nw_protocol_connected";
    v239 = 2082;
    *v240 = v188;
    *&v240[8] = 2048;
    v241 = v102;
    v147 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    goto LABEL_373;
  }

  v170 = __nw_create_backtrace_string();
  v144 = __nwlog_obj();
  v145 = type[0];
  v171 = os_log_type_enabled(v144, type[0]);
  if (v170)
  {
    if (v171)
    {
      v172 = *(v102 + 16);
      if (!v172)
      {
        v172 = "invalid";
      }

      *buf = 136446978;
      v238 = "__nw_protocol_connected";
      v239 = 2082;
      *v240 = v172;
      *&v240[8] = 2048;
      v241 = v102;
      v242 = 2082;
      v243 = v170;
      _os_log_impl(&dword_181A37000, v144, v145, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v170);
    goto LABEL_374;
  }

  if (v171)
  {
    v199 = *(v102 + 16);
    if (!v199)
    {
      v199 = "invalid";
    }

    *buf = 136446722;
    v238 = "__nw_protocol_connected";
    v239 = 2082;
    *v240 = v199;
    *&v240[8] = 2048;
    v241 = v102;
    v147 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
LABEL_373:
    _os_log_impl(&dword_181A37000, v144, v145, v147, buf, 0x20u);
  }

LABEL_374:
  if (v143)
  {
    free(v143);
  }

LABEL_192:
  if ((v109 & 1) == 0)
  {
    v113 = *(a2 + 40);
    if (v113 == &nw_protocol_ref_counted_handle || v113 == &nw_protocol_ref_counted_additional_handle && (a2 = *(a2 + 64)) != 0)
    {
      v114 = *(a2 + 88);
      if (v114)
      {
        v115 = v114 - 1;
        *(a2 + 88) = v115;
        if (!v115)
        {
          v116 = *(a2 + 64);
          if (v116)
          {
            *(a2 + 64) = 0;
            v116[2](v116);
            _Block_release(v116);
          }

          if (*(a2 + 72))
          {
            v117 = *(a2 + 64);
            if (v117)
            {
              _Block_release(v117);
            }
          }

          free(a2);
        }
      }
    }
  }

  if ((v105 & 1) == 0)
  {
    v118 = *(v102 + 40);
    if (v118 == &nw_protocol_ref_counted_handle || v118 == &nw_protocol_ref_counted_additional_handle && (v102 = *(v102 + 64)) != 0)
    {
      v119 = *(v102 + 88);
      if (v119)
      {
        v120 = v119 - 1;
        *(v102 + 88) = v120;
        if (!v120)
        {
          v121 = *(v102 + 64);
          if (v121)
          {
            *(v102 + 64) = 0;
            v121[2](v121);
            _Block_release(v121);
          }

          if (*(v102 + 72))
          {
            v122 = *(v102 + 64);
            if (v122)
            {
              _Block_release(v122);
            }
          }

          v123 = v102;
          goto LABEL_216;
        }
      }
    }
  }
}

uint64_t nw_protocol_common_waiting_for_output(void *a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_common_waiting_for_output";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v7, &type, &v55))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null protocol";
      goto LABEL_55;
    }

    if (v55 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v50 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v50)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_55;
    }

    if (v50)
    {
      *buf = 136446466;
      v58 = "nw_protocol_common_waiting_for_output";
      v59 = 2082;
      v60 = backtrace_string;
      v51 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_94:
      _os_log_impl(&dword_181A37000, v8, v9, v51, buf, 0x16u);
    }

LABEL_95:
    free(backtrace_string);
    goto LABEL_57;
  }

  if (!a2)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_common_waiting_for_output";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v7, &type, &v55))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null other_protocol";
      goto LABEL_55;
    }

    if (v55 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v52 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v52)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_55;
    }

    if (v52)
    {
      *buf = 136446466;
      v58 = "nw_protocol_common_waiting_for_output";
      v59 = 2082;
      v60 = backtrace_string;
      v51 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v2 = a1;
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 40);
    v5 = a1[4];
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v3 + 64)) != 0)
    {
      v15 = *(v5 + 88);
      v6 = 0;
      if (v15)
      {
        *(v5 + 88) = v15 + 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v16 = a1[5];
    v17 = a1;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = a1[8]) != 0)
    {
      v20 = v17[11];
      if (v20)
      {
        v18 = 0;
        v17[11] = v20 + 1;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v3 + 24);
      if (!v19)
      {
        goto LABEL_63;
      }
    }

    v21 = *(v19 + 216);
    if (v21)
    {
      result = v21(v3, a1);
      if (v18)
      {
LABEL_41:
        if ((v6 & 1) == 0)
        {
          v29 = *(v3 + 40);
          if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v30 = *(v3 + 88);
            if (v30)
            {
              v31 = v30 - 1;
              *(v3 + 88) = v31;
              if (!v31)
              {
                v32 = result;
                v33 = *(v3 + 64);
                if (v33)
                {
                  *(v3 + 64) = 0;
                  v33[2](v33);
                  _Block_release(v33);
                }

                if (*(v3 + 72))
                {
                  v34 = *(v3 + 64);
                  if (v34)
                  {
                    _Block_release(v34);
                  }
                }

                free(v3);
                return v32;
              }
            }
          }
        }

        return result;
      }

LABEL_30:
      v23 = v2[5];
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
      {
        v24 = v2[11];
        if (v24)
        {
          v25 = v24 - 1;
          v2[11] = v25;
          if (!v25)
          {
            v26 = result;
            v27 = v2[8];
            if (v27)
            {
              v2[8] = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (v2[9])
            {
              v28 = v2[8];
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v2);
            result = v26;
          }
        }
      }

      goto LABEL_41;
    }

LABEL_63:
    v37 = __nwlog_obj();
    v38 = *(v3 + 16);
    *buf = 136446722;
    v58 = "__nw_protocol_waiting_for_output";
    if (!v38)
    {
      v38 = "invalid";
    }

    v59 = 2082;
    v60 = v38;
    v61 = 2048;
    v62 = v3;
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v39, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_109;
        }

        v42 = *(v3 + 16);
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v58 = "__nw_protocol_waiting_for_output";
        v59 = 2082;
        v60 = v42;
        v61 = 2048;
        v62 = v3;
        v43 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback";
LABEL_108:
        _os_log_impl(&dword_181A37000, v40, v41, v43, buf, 0x20u);
        goto LABEL_109;
      }

      if (v55 != 1)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_109;
        }

        v53 = *(v3 + 16);
        if (!v53)
        {
          v53 = "invalid";
        }

        *buf = 136446722;
        v58 = "__nw_protocol_waiting_for_output";
        v59 = 2082;
        v60 = v53;
        v61 = 2048;
        v62 = v3;
        v43 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, backtrace limit exceeded";
        goto LABEL_108;
      }

      v46 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v47 = os_log_type_enabled(v40, type);
      if (!v46)
      {
        if (!v47)
        {
          goto LABEL_109;
        }

        v54 = *(v3 + 16);
        if (!v54)
        {
          v54 = "invalid";
        }

        *buf = 136446722;
        v58 = "__nw_protocol_waiting_for_output";
        v59 = 2082;
        v60 = v54;
        v61 = 2048;
        v62 = v3;
        v43 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, no backtrace";
        goto LABEL_108;
      }

      if (v47)
      {
        v48 = *(v3 + 16);
        if (!v48)
        {
          v48 = "invalid";
        }

        *buf = 136446978;
        v58 = "__nw_protocol_waiting_for_output";
        v59 = 2082;
        v60 = v48;
        v61 = 2048;
        v62 = v3;
        v63 = 2082;
        v64 = v46;
        _os_log_impl(&dword_181A37000, v40, v41, "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v46);
    }

LABEL_109:
    if (v39)
    {
      free(v39);
    }

    result = 0;
    if (v18)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v58 = "nw_protocol_common_waiting_for_output";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s waiting_for_output requires an output handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (__nwlog_fault(v7, &type, &v55))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v58 = "nw_protocol_common_waiting_for_output";
        v10 = "%{public}s waiting_for_output requires an output handler";
LABEL_55:
        v35 = v8;
        v36 = v9;
LABEL_56:
        _os_log_impl(&dword_181A37000, v35, v36, v10, buf, 0xCu);
      }
    }

    else if (v55 == 1)
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
          *buf = 136446466;
          v58 = "nw_protocol_common_waiting_for_output";
          v59 = 2082;
          v60 = v11;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s waiting_for_output requires an output handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v11);
        goto LABEL_57;
      }

      if (v14)
      {
        *buf = 136446210;
        v58 = "nw_protocol_common_waiting_for_output";
        v10 = "%{public}s waiting_for_output requires an output handler, no backtrace";
        v35 = v12;
        v36 = v13;
        goto LABEL_56;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v58 = "nw_protocol_common_waiting_for_output";
        v10 = "%{public}s waiting_for_output requires an output handler, backtrace limit exceeded";
        goto LABEL_55;
      }
    }
  }

LABEL_57:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void nw_protocol_common_get_message_properties(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_common_get_message_properties";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v4, &type, &v49))
    {
      goto LABEL_116;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v52 = "nw_protocol_common_get_message_properties";
      v36 = "%{public}s called with null protocol";
LABEL_115:
      _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
      goto LABEL_116;
    }

    if (v49 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v52 = "nw_protocol_common_get_message_properties";
      v36 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_115;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v43 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (!v43)
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v52 = "nw_protocol_common_get_message_properties";
      v36 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_115;
    }

    if (!v43)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    v52 = "nw_protocol_common_get_message_properties";
    v53 = 2082;
    v54 = backtrace_string;
    v44 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_89:
    _os_log_impl(&dword_181A37000, v34, v35, v44, buf, 0x16u);
    goto LABEL_90;
  }

  if (!a2)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_common_get_message_properties";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v4, &type, &v49))
    {
      goto LABEL_116;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v52 = "nw_protocol_common_get_message_properties";
      v36 = "%{public}s called with null other_protocol";
      goto LABEL_115;
    }

    if (v49 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v52 = "nw_protocol_common_get_message_properties";
      v36 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_115;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v45 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (!v45)
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v52 = "nw_protocol_common_get_message_properties";
      v36 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_115;
    }

    if (!v45)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    v52 = "nw_protocol_common_get_message_properties";
    v53 = 2082;
    v54 = backtrace_string;
    v44 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  if (a3)
  {
    v3 = a1;
    v4 = a1[4];
    if (!v4)
    {
      if (gLogDatapath == 1)
      {
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v52 = "nw_protocol_common_get_message_properties";
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s get_message_properties requires an output handler", buf, 0xCu);
        }
      }

      return;
    }

    v5 = *(v4 + 40);
    v6 = a1[4];
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v4 + 64)) != 0)
    {
      v9 = *(v6 + 88);
      v7 = 0;
      if (v9)
      {
        *(v6 + 88) = v9 + 1;
      }
    }

    else
    {
      v7 = 1;
    }

    v10 = a1[5];
    v11 = a1;
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = a1[8]) != 0)
    {
      v14 = v11[11];
      if (v14)
      {
        v12 = 0;
        v11[11] = v14 + 1;
        v13 = *(v4 + 24);
        if (!v13)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(v4 + 24);
        if (!v13)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = *(v4 + 24);
      if (!v13)
      {
        goto LABEL_50;
      }
    }

    v15 = *(v13 + 248);
    if (v15)
    {
      v15(v4, a1);
      goto LABEL_25;
    }

LABEL_50:
    v26 = __nwlog_obj();
    v27 = *(v4 + 16);
    *buf = 136446722;
    v52 = "__nw_protocol_get_message_properties";
    if (!v27)
    {
      v27 = "invalid";
    }

    v53 = 2082;
    v54 = v27;
    v55 = 2048;
    v56 = v4;
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v28, &type, &v49))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_107;
      }

      v31 = *(v4 + 16);
      if (!v31)
      {
        v31 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_get_message_properties";
      v53 = 2082;
      v54 = v31;
      v55 = 2048;
      v56 = v4;
      v32 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback";
    }

    else if (v49 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v40 = os_log_type_enabled(v29, type);
      if (v39)
      {
        if (v40)
        {
          v41 = *(v4 + 16);
          if (!v41)
          {
            v41 = "invalid";
          }

          *buf = 136446978;
          v52 = "__nw_protocol_get_message_properties";
          v53 = 2082;
          v54 = v41;
          v55 = 2048;
          v56 = v4;
          v57 = 2082;
          v58 = v39;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v39);
        goto LABEL_107;
      }

      if (!v40)
      {
LABEL_107:
        if (v28)
        {
          free(v28);
        }

LABEL_25:
        if ((v12 & 1) == 0)
        {
          v16 = v3[5];
          if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
          {
            v17 = v3[11];
            if (v17)
            {
              v18 = v17 - 1;
              v3[11] = v18;
              if (!v18)
              {
                v19 = v3[8];
                if (v19)
                {
                  v3[8] = 0;
                  v19[2](v19);
                  _Block_release(v19);
                }

                if (v3[9])
                {
                  v20 = v3[8];
                  if (v20)
                  {
                    _Block_release(v20);
                  }
                }

                free(v3);
              }
            }
          }
        }

        if ((v7 & 1) == 0)
        {
          v21 = *(v4 + 40);
          if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
          {
            v22 = *(v4 + 88);
            if (v22)
            {
              v23 = v22 - 1;
              *(v4 + 88) = v23;
              if (!v23)
              {
                v24 = *(v4 + 64);
                if (v24)
                {
                  *(v4 + 64) = 0;
                  v24[2](v24);
                  _Block_release(v24);
                }

                if (*(v4 + 72))
                {
                  v25 = *(v4 + 64);
                  if (v25)
                  {
                    _Block_release(v25);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }

      v48 = *(v4 + 16);
      if (!v48)
      {
        v48 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_get_message_properties";
      v53 = 2082;
      v54 = v48;
      v55 = 2048;
      v56 = v4;
      v32 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_107;
      }

      v47 = *(v4 + 16);
      if (!v47)
      {
        v47 = "invalid";
      }

      *buf = 136446722;
      v52 = "__nw_protocol_get_message_properties";
      v53 = 2082;
      v54 = v47;
      v55 = 2048;
      v56 = v4;
      v32 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v32, buf, 0x20u);
    goto LABEL_107;
  }

  v38 = __nwlog_obj();
  *buf = 136446210;
  v52 = "nw_protocol_common_get_message_properties";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null message_properties", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (!__nwlog_fault(v4, &type, &v49))
  {
LABEL_116:
    if (!v4)
    {
      return;
    }

    goto LABEL_48;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v34 = __nwlog_obj();
    v35 = type;
    if (!os_log_type_enabled(v34, type))
    {
      goto LABEL_116;
    }

    *buf = 136446210;
    v52 = "nw_protocol_common_get_message_properties";
    v36 = "%{public}s called with null message_properties";
    goto LABEL_115;
  }

  if (v49 != 1)
  {
    v34 = __nwlog_obj();
    v35 = type;
    if (!os_log_type_enabled(v34, type))
    {
      goto LABEL_116;
    }

    *buf = 136446210;
    v52 = "nw_protocol_common_get_message_properties";
    v36 = "%{public}s called with null message_properties, backtrace limit exceeded";
    goto LABEL_115;
  }

  backtrace_string = __nw_create_backtrace_string();
  v34 = __nwlog_obj();
  v35 = type;
  v46 = os_log_type_enabled(v34, type);
  if (!backtrace_string)
  {
    if (!v46)
    {
      goto LABEL_116;
    }

    *buf = 136446210;
    v52 = "nw_protocol_common_get_message_properties";
    v36 = "%{public}s called with null message_properties, no backtrace";
    goto LABEL_115;
  }

  if (v46)
  {
    *buf = 136446466;
    v52 = "nw_protocol_common_get_message_properties";
    v53 = 2082;
    v54 = backtrace_string;
    v44 = "%{public}s called with null message_properties, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

LABEL_90:
  free(backtrace_string);
  if (v4)
  {
LABEL_48:
    free(v4);
  }
}

uint64_t nw_protocol_http_messaging_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http_messaging_add_listen_handler";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v14, &type, &v41))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null protocol";
      goto LABEL_35;
    }

    if (v41 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v38 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (!v38)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_35;
    }

    if (v38)
    {
      *buf = 136446466;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v45 = 2082;
      v46 = backtrace_string;
      v39 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_61:
      _os_log_impl(&dword_181A37000, v15, v16, v39, buf, 0x16u);
    }

LABEL_62:
    free(backtrace_string);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (!handle)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http_messaging_add_listen_handler";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null http_messaging", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v14, &type, &v41))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null http_messaging";
      goto LABEL_35;
    }

    if (v41 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v40 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (!v40)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null http_messaging, no backtrace";
      goto LABEL_35;
    }

    if (v40)
    {
      *buf = 136446466;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v45 = 2082;
      v46 = backtrace_string;
      v39 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if ((handle[172] & 2) == 0 && gLogDatapath == 1)
  {
    v32 = a1;
    v33 = a3;
    v34 = __nwlog_obj();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
    a3 = v33;
    v36 = v35;
    a1 = v32;
    if (v36)
    {
      *buf = 136446978;
      v44 = "nw_protocol_http_messaging_add_listen_handler";
      v45 = 2082;
      v46 = (handle + 130);
      v47 = 2080;
      v48 = " ";
      v49 = 2048;
      v50 = a2;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with listen_protocol %p", buf, 0x2Au);
      a3 = v33;
      a1 = v32;
    }
  }

  v5 = *(handle + 16);
  v6 = *(handle + 17);
  if (v5 == v6 || (handle[172] & 1) == 0)
  {
    v7 = *(handle + 18);
    if (v6 >= v7)
    {
      v9 = v6 - v5;
      v10 = (v6 - v5) >> 3;
      v11 = v10 + 1;
      if ((v10 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = v7 - v5;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = a3;
      v23 = a1;
      v24 = (v6 - v5) >> 3;
      v25 = (8 * v10);
      v26 = (8 * v10 - 8 * v24);
      *v25 = a2;
      v8 = v25 + 1;
      memcpy(v26, v5, v9);
      *(handle + 16) = v26;
      *(handle + 17) = v8;
      *(handle + 18) = 0;
      if (v5)
      {
        operator delete(v5);
      }

      a1 = v23;
      a3 = v22;
    }

    else
    {
      *v6 = a2;
      v8 = v6 + 8;
    }

    *(handle + 17) = v8;
    a2->protocol_handler = a1;
    if (a3)
    {
      nw_protocol_remove_instance(a1);
    }

    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v44 = "nw_protocol_http_messaging_add_listen_handler";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s already have a server listen handler, ignoring add", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (__nwlog_fault(v14, &type, &v41))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_http_messaging_add_listen_handler";
        v17 = "%{public}s already have a server listen handler, ignoring add";
LABEL_35:
        v28 = v15;
        v29 = v16;
LABEL_36:
        _os_log_impl(&dword_181A37000, v28, v29, v17, buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      v18 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      v21 = os_log_type_enabled(gLogObj, type);
      if (v18)
      {
        if (v21)
        {
          *buf = 136446466;
          v44 = "nw_protocol_http_messaging_add_listen_handler";
          v45 = 2082;
          v46 = v18;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s already have a server listen handler, ignoring add, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_37;
      }

      if (v21)
      {
        *buf = 136446210;
        v44 = "nw_protocol_http_messaging_add_listen_handler";
        v17 = "%{public}s already have a server listen handler, ignoring add, no backtrace";
        v28 = v19;
        v29 = v20;
        goto LABEL_36;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v44 = "nw_protocol_http_messaging_add_listen_handler";
        v17 = "%{public}s already have a server listen handler, ignoring add, backtrace limit exceeded";
        goto LABEL_35;
      }
    }
  }

LABEL_37:
  if (v14)
  {
    free(v14);
  }

  return 0;
}

void nw_connection_get_uuid(void *a1, unsigned __int8 *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_connection_get_uuid";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null out_uuid", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &type, &v18))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_get_uuid";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null out_uuid", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v21 = "nw_connection_get_uuid";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null out_uuid, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v21 = "nw_connection_get_uuid";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null out_uuid, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_get_uuid";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null out_uuid, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  uuid_clear(a2);
  if (v3)
  {
    *a2 = *(v3 + 452);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_connection_get_uuid";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &type, &v18))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v21 = "nw_connection_get_uuid";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v21 = "nw_connection_get_uuid";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v21 = "nw_connection_get_uuid";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v21 = "nw_connection_get_uuid";
    v22 = 2082;
    v23 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_http_connection_metadata_set_uuid(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_uuid";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_uuid";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_connection_metadata_set_uuid";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_uuid";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_uuid";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_connection_metadata_set_uuid_block_invoke;
    v17 = &__block_descriptor_40_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_connection_metadata_set_uuid";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s metadata must be http_connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_uuid";
      v9 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_uuid";
      v9 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_uuid";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_uuid";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s called", &v9, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v2 + 200));
  *(v2 + 328) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  if (v4)
  {
    v5 = *(v3 + 360);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 368);
    }
  }

  *(v3 + 360) = 0;
  *(v3 + 368) = v4 | 1;
  v6 = *(v3 + 408);
  if (v6)
  {
    v7 = *(v3 + 400);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 408);
    }
  }

  *(v3 + 400) = 0;
  *(v3 + 408) = v6 | 1;
}

uint64_t nw_protocol_http_client_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (handle->default_input_handler == a2)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 0x40000000;
        v17[2] = ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke;
        v17[3] = &__block_descriptor_tmp_22_30755;
        v17[4] = handle;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v15[2] = ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
        v15[3] = &__block_descriptor_tmp_23_30756;
        v16 = a3;
        v15[4] = handle;
        return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v17, v15);
      }

      else
      {
        if (a2->output_handler == handle)
        {
          a2->output_handler = 0;
        }

        return 1;
      }
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_client_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_client", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &v19, &v18))
    {
      goto LABEL_36;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_client_remove_input_handler";
        v9 = "%{public}s called with null http_client";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_client_remove_input_handler";
        v9 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v14 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_client_remove_input_handler";
        v9 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v14)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_client_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http_client_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v6, &v19, &v18))
  {
    goto LABEL_36;
  }

  if (v19 != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_client_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v19;
    v12 = os_log_type_enabled(v7, v19);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_client_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v12)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_client_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v7 = __nwlog_obj();
  v8 = v19;
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 136446210;
    v21 = "nw_protocol_http_client_remove_input_handler";
    v9 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_36:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void nw_protocol_plugin_metadata_reset(uint64_t *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v27 = __nwlog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_plugin_metadata_reset";
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  if (gLogDatapath == 1)
  {
    v28 = __nwlog_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v2 = *a1;
  if (*a1)
  {
    *(v2 + 40) = &v31;
    v3 = a1[1];
    v31 = v2;
    v32 = v3;
    *a1 = 0;
    a1[1] = a1;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v34 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v35 = &__block_descriptor_tmp_21_49595;
    v36 = 0;
    do
    {
      v4 = v31;
      if (!v31)
      {
        break;
      }

      v5 = *(v31 + 32);
      v6 = *(v31 + 40);
      v7 = (v5 + 40);
      if (!v5)
      {
        v7 = &v32;
      }

      *v7 = v6;
      *v6 = v5;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
    }

    while (((v34)(&buf) & 1) != 0);
  }

  v8 = a1 + 2;
  if (gLogDatapath == 1)
  {
    v29 = __nwlog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v9 = *v8;
  if (*v8)
  {
    *(v9 + 40) = &v31;
    v10 = a1[3];
    v31 = v9;
    v32 = v10;
    a1[2] = 0;
    a1[3] = v8;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v34 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v35 = &__block_descriptor_tmp_21_49595;
    v36 = 0;
    do
    {
      v11 = v31;
      if (!v31)
      {
        break;
      }

      v12 = *(v31 + 32);
      v13 = *(v31 + 40);
      v14 = (v12 + 40);
      if (!v12)
      {
        v14 = &v32;
      }

      *v14 = v13;
      *v13 = v12;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
    }

    while (((v34)(&buf) & 1) != 0);
  }

  v15 = a1 + 4;
  if (gLogDatapath == 1)
  {
    v30 = __nwlog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v16 = *v15;
  if (*v15)
  {
    *(v16 + 40) = &v31;
    v17 = a1[5];
    v31 = v16;
    v32 = v17;
    a1[4] = 0;
    a1[5] = v15;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v34 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v35 = &__block_descriptor_tmp_21_49595;
    v36 = 0;
    do
    {
      v18 = v31;
      if (!v31)
      {
        break;
      }

      v19 = *(v31 + 32);
      v20 = *(v31 + 40);
      v21 = (v19 + 40);
      if (!v19)
      {
        v21 = &v32;
      }

      *v21 = v20;
      *v20 = v19;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
    }

    while (((v34)(&buf) & 1) != 0);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = a1[6];
    if (v23)
    {
      os_release(v23);
      v22 = *(a1 + 56);
    }
  }

  a1[6] = 0;
  *(a1 + 56) = v22 | 1;
  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = a1[8];
    if (v25)
    {
      os_release(v25);
      v24 = *(a1 + 72);
    }
  }

  a1[8] = 0;
  *(a1 + 72) = v24 | 1;
  v26 = *(a1 + 142);
  *(a1 + 34) = 0;
  *(a1 + 142) = v26 & 0xC2;
  *(a1 + 70) = 2;
}