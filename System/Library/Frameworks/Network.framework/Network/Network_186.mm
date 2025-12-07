void nw_protocol_http2_transport_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http2_transport_error";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v13, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http2_transport_error";
      v16 = "%{public}s called with null protocol";
    }

    else if (v27 == 1)
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
          v30 = "nw_protocol_http2_transport_error";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v13)
        {
          return;
        }

        goto LABEL_56;
      }

      if (!v20)
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http2_transport_error";
      v16 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http2_transport_error";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_54;
  }

  handle = a1->handle;
  if (!handle)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http2_transport_error";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v13, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v30 = "nw_protocol_http2_transport_error";
        v16 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_54;
      }

      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!v21)
      {
        if (!v22)
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v30 = "nw_protocol_http2_transport_error";
        v16 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_54;
      }

      if (v22)
      {
        *buf = 136446466;
        v30 = "nw_protocol_http2_transport_error";
        v31 = 2082;
        v32 = v21;
        v23 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_39:
        _os_log_impl(&dword_181A37000, v14, v15, v23, buf, 0x16u);
      }

LABEL_40:
      free(v21);
      if (!v13)
      {
        return;
      }

LABEL_56:
      free(v13);
      return;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_55;
    }

    *buf = 136446210;
    v30 = "nw_protocol_http2_transport_error";
    v16 = "%{public}s called with null http2_transport";
LABEL_54:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_55;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http2_transport_error";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v13, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http2_transport_error";
      v16 = "%{public}s called with null other_protocol";
      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http2_transport_error";
      v16 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_54;
    }

    v21 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v24 = os_log_type_enabled(v14, type);
    if (!v21)
    {
      if (!v24)
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http2_transport_error";
      v16 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v30 = "nw_protocol_http2_transport_error";
      v31 = 2082;
      v32 = v21;
      v23 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (a3)
  {
    v4 = *(handle + 14);
    if (v4)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZL33nw_protocol_http2_transport_errorP11nw_protocolS0_i_block_invoke;
      v25[3] = &__block_descriptor_tmp_40_40933;
      v25[4] = handle;
      v26 = a3;
      nw_hash_table_apply(v4, v25);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v30 = "nw_protocol_http2_transport_error";
      v31 = 2082;
      v32 = handle + 205;
      v33 = 1024;
      v34 = a3;
      v6 = "%{public}s %{public}s cannot pass error %d up the stack, protocol table is NULL";
      v7 = v11;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 28;
      goto LABEL_12;
    }
  }

  else if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v30 = "nw_protocol_http2_transport_error";
      v31 = 2082;
      v32 = handle + 205;
      v6 = "%{public}s %{public}s suppressing error 0";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEBUG;
      v9 = 22;
LABEL_12:
      _os_log_impl(&dword_181A37000, v7, v8, v6, buf, v9);
    }
  }
}

uint64_t ___ZL33nw_protocol_http2_transport_errorP11nw_protocolS0_i_block_invoke(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v5 = *(object + 24);
    if (v5 && *(v5 + 56))
    {
      if (gLogDatapath == 1)
      {
        v29 = object;
        v30 = __nwlog_obj();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
        object = v29;
        if (v31)
        {
          v32 = *(a1 + 32);
          v33 = (v32 + 205);
          v27 = v32 == 0;
          v34 = *(a1 + 40);
          if (v27)
          {
            v33 = "";
          }

          *buf = 136446978;
          v38 = "nw_protocol_http2_transport_error_block_invoke";
          v39 = 2082;
          v40 = v33;
          v41 = 1024;
          *v42 = v34;
          *&v42[4] = 2048;
          *&v42[6] = v29;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s passing error %d to input protocol %p", buf, 0x26u);
          object = v29;
        }
      }

      (*(*(object + 24) + 56))();
    }

    else
    {
      v23 = object;
      v24 = __nwlog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        v26 = (v25 + 205);
        v27 = v25 == 0;
        v28 = *(a1 + 40);
        if (v27)
        {
          v26 = "";
        }

        *buf = 136446978;
        v38 = "nw_protocol_http2_transport_error_block_invoke";
        v39 = 2082;
        v40 = v26;
        v41 = 2048;
        *v42 = v23;
        *&v42[8] = 1024;
        *&v42[10] = v28;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s callbacks on protocol %p not set, cannot pass error %d", buf, 0x26u);
      }
    }

    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (v6 + 205);
  }

  else
  {
    v7 = "";
  }

  *buf = 136446722;
  v38 = "nw_protocol_http2_transport_error_block_invoke";
  v39 = 2082;
  v40 = v7;
  v41 = 2048;
  *v42 = a2;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s node %p did not contain protocol", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v8, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_35;
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = (v11 + 205);
      }

      else
      {
        v12 = "";
      }

      *buf = 136446722;
      v38 = "nw_protocol_http2_transport_error_block_invoke";
      v39 = 2082;
      v40 = v12;
      v41 = 2048;
      *v42 = a2;
      v13 = "%{public}s %{public}s node %p did not contain protocol";
      goto LABEL_34;
    }

    if (v35 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_35;
      }

      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = (v18 + 205);
      }

      else
      {
        v19 = "";
      }

      *buf = 136446722;
      v38 = "nw_protocol_http2_transport_error_block_invoke";
      v39 = 2082;
      v40 = v19;
      v41 = 2048;
      *v42 = a2;
      v13 = "%{public}s %{public}s node %p did not contain protocol, backtrace limit exceeded";
      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v15)
      {
        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = (v16 + 205);
        }

        else
        {
          v17 = "";
        }

        *buf = 136446978;
        v38 = "nw_protocol_http2_transport_error_block_invoke";
        v39 = 2082;
        v40 = v17;
        v41 = 2048;
        *v42 = a2;
        *&v42[8] = 2082;
        *&v42[10] = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s %{public}s node %p did not contain protocol, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
      goto LABEL_35;
    }

    if (v15)
    {
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = (v20 + 205);
      }

      else
      {
        v21 = "";
      }

      *buf = 136446722;
      v38 = "nw_protocol_http2_transport_error_block_invoke";
      v39 = 2082;
      v40 = v21;
      v41 = 2048;
      *v42 = a2;
      v13 = "%{public}s %{public}s node %p did not contain protocol, no backtrace";
LABEL_34:
      _os_log_impl(&dword_181A37000, v9, v10, v13, buf, 0x20u);
    }
  }

LABEL_35:
  if (v8)
  {
    free(v8);
  }

  return 1;
}

uint64_t nw_protocol_http2_transport_get_remote_endpoint(nw_protocol *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v2 = handle[6];
      if (!v2)
      {
        return handle[12];
      }

      v3 = *(v2 + 24);
      if (!v3)
      {
        return handle[12];
      }

      v4 = *(v3 + 136);
      if (!v4)
      {
        return handle[12];
      }

      default_input_handler = a1->default_input_handler;

      return v4(default_input_handler);
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http2_transport_get_remote_endpoint";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http2_transport", buf, 12);
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
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_transport_get_remote_endpoint";
        v11 = "%{public}s called with null http2_transport";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_transport_get_remote_endpoint";
        v11 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v16 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_transport_get_remote_endpoint";
        v11 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http2_transport_get_remote_endpoint";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_http2_transport_get_remote_endpoint";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &type, &v17))
  {
    goto LABEL_37;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_transport_get_remote_endpoint";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v14 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v20 = "nw_protocol_http2_transport_get_remote_endpoint";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http2_transport_get_remote_endpoint";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_37;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v20 = "nw_protocol_http2_transport_get_remote_endpoint";
    v11 = "%{public}s called with null protocol";
LABEL_36:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_37:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

BOOL nw_protocol_http2_transport_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v21, &type, &v33))
    {
      goto LABEL_77;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v33 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_77;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
        v24 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v27 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (!v27)
        {
          goto LABEL_77;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
        v24 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_76;
      }

      if (v27)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v28 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_62:
        _os_log_impl(&dword_181A37000, v22, v23, v28, buf, 0x16u);
      }

LABEL_63:
      free(backtrace_string);
      goto LABEL_77;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
    v24 = "%{public}s called with null protocol";
LABEL_76:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
LABEL_77:
    if (v21)
    {
      free(v21);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v21, &type, &v33))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
      v24 = "%{public}s called with null http2_transport";
      goto LABEL_76;
    }

    if (v33 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
      v24 = "%{public}s called with null http2_transport, backtrace limit exceeded";
      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v29 = os_log_type_enabled(v22, type);
    if (backtrace_string)
    {
      if (v29)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v28 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (!v29)
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
    v24 = "%{public}s called with null http2_transport, no backtrace";
    goto LABEL_76;
  }

  if (!*(handle + 13))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s added protocol listen handler", buf, 0x16u);
    }

    *(handle + 13) = a2;
    a2->protocol_handler = a1;
    if ((handle[204] & 0x40) == 0)
    {
      return 1;
    }

    if (gLogDatapath == 1)
    {
      v30 = __nwlog_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s waiting for listen handler, resuming processing of connected", buf, 0x16u);
      }
    }

    if (gLogDatapath == 1)
    {
      v31 = __nwlog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      }
    }

    if ((handle[204] & 0x10) != 0)
    {
      if (!*(handle + 13))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 205;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s %{public}s no listen handler on server, deferring processing of input and connected state until listen handler is present", buf, 0x16u);
        }

        handle[204] |= 0x40u;
        return 1;
      }

      if (gLogDatapath == 1)
      {
        v10 = __nwlog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 205;
          v11 = "%{public}s %{public}s listen handler present, processing input without waiting";
          goto LABEL_81;
        }
      }
    }

    else if (gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        v11 = "%{public}s %{public}s not server, processing input without waiting";
LABEL_81:
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x16u);
      }
    }

    v14 = handle[204];
    handle[204] = v14 & 0xBF;
    if ((v14 & 6) != 0)
    {
      if (gLogDatapath == 1)
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 205;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s tunnel already connected or closed, ignoring connected event", buf, 0x16u);
        }
      }
    }

    else
    {
      nw_http2_transport_send_settings(handle);
      handle[204] |= 2u;
      if (gLogDatapath == 1)
      {
        v32 = __nwlog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 205;
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s http2 tunnel is now connected", buf, 0x16u);
        }
      }

      nw_protocol_http2_transport_process_input(handle);
      v16 = *(handle + 14);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL45nw_protocol_http2_transport_process_connectedP27nw_protocol_http2_transport_block_invoke;
      v36 = &__block_descriptor_tmp_22_40985;
      v37 = handle;
      nw_hash_table_apply(v16, buf);
    }

    return 1;
  }

  if ((handle[204] & 0x40) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s cannot have listen handler and be waiting for listen handler at the same time", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v3, &type, &v33))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      v6 = "%{public}s %{public}s cannot have listen handler and be waiting for listen handler at the same time";
    }

    else if (v33 == 1)
    {
      v12 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      v13 = os_log_type_enabled(gLogObj, type);
      if (v12)
      {
        if (v13)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 205;
          *&buf[22] = 2082;
          v36 = v12;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s %{public}s cannot have listen handler and be waiting for listen handler at the same time, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v12);
        goto LABEL_40;
      }

      if (!v13)
      {
LABEL_40:
        if (v3)
        {
          free(v3);
        }

        goto LABEL_42;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      v6 = "%{public}s %{public}s cannot have listen handler and be waiting for listen handler at the same time, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_40;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      v6 = "%{public}s %{public}s cannot have listen handler and be waiting for listen handler at the same time, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
    goto LABEL_40;
  }

LABEL_42:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *buf = 136446466;
  *&buf[4] = "nw_protocol_http2_transport_add_listen_handler";
  *&buf[12] = 2082;
  *&buf[14] = handle + 205;
  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}s already have a listen handler, ignoring add", buf, 0x16u);
  return 0;
}

void nw_http2_transport_send_settings(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v32 = __nwlog_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = a1 + 205;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  v2 = nw_parameters_copy_protocol_value(*(a1 + 88), a1, "streamReceiveWindow");
  if (v2)
  {
    v3 = v2;
    value = xpc_uint64_get_value(v2);
    xpc_release(v3);
  }

  else
  {
    value = 0xFFFF;
  }

  v5 = nw_parameters_copy_protocol_value(*(a1 + 88), a1, "connectionReceiveWindow");
  if (v5)
  {
    v6 = v5;
    v7 = xpc_uint64_get_value(v5);
    xpc_release(v6);
  }

  else
  {
    v7 = 0xFFFF;
  }

  v44 = 0x6400000003;
  v45 = 4;
  v46 = value;
  if (nghttp2_submit_settings())
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = nghttp2_strerror();
    *buf = 136446466;
    v39 = "nw_http2_transport_send_settings";
    v40 = 2082;
    v41 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s nghttp2_submit_settings: %{public}s failed", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v10, &type, &v36))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      v13 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = v13;
      v14 = "%{public}s nghttp2_submit_settings: %{public}s failed";
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      v16 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v16)
        {
          v17 = nghttp2_strerror();
          *buf = 136446722;
          v39 = "nw_http2_transport_send_settings";
          v40 = 2082;
          v41 = v17;
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s nghttp2_submit_settings: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (!v16)
      {
LABEL_23:
        if (v10)
        {
          free(v10);
        }

        goto LABEL_25;
      }

      v19 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = v19;
      v14 = "%{public}s nghttp2_submit_settings: %{public}s failed, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      v18 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = v18;
      v14 = "%{public}s nghttp2_submit_settings: %{public}s failed, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v11, v12, v14, buf, 0x16u);
    goto LABEL_23;
  }

LABEL_25:
  if (v7 == 0xFFFF || !nghttp2_session_set_local_window_size())
  {
    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  v21 = nghttp2_strerror();
  *buf = 136446466;
  v39 = "nw_http2_transport_send_settings";
  v40 = 2082;
  v41 = v21;
  LODWORD(v35) = 22;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s nghttp2_session_set_local_window_size: %{public}s failed", buf, v35);
  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v22, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      v25 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = v25;
      v26 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed";
      goto LABEL_40;
    }

    if (v36 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      v30 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = v30;
      v26 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, backtrace limit exceeded";
      goto LABEL_40;
    }

    v27 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = type;
    v28 = os_log_type_enabled(gLogObj, type);
    if (v27)
    {
      if (v28)
      {
        v29 = nghttp2_strerror();
        *buf = 136446722;
        v39 = "nw_http2_transport_send_settings";
        v40 = 2082;
        v41 = v29;
        v42 = 2082;
        v43 = v27;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v27);
      goto LABEL_41;
    }

    if (v28)
    {
      v31 = nghttp2_strerror();
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = v31;
      v26 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, no backtrace";
LABEL_40:
      _os_log_impl(&dword_181A37000, v23, v24, v26, buf, 0x16u);
    }
  }

LABEL_41:
  if (v22)
  {
    free(v22);
  }

LABEL_43:
  if (gLogDatapath == 1)
  {
    v33 = __nwlog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = a1 + 205;
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s submitted settings to nghttp2", buf, 0x16u);
    }
  }

  nw_http2_transport_session_send(a1);
  if (gLogDatapath == 1)
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v39 = "nw_http2_transport_send_settings";
      v40 = 2082;
      v41 = a1 + 205;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s nghttp2_session_send complete with settings", buf, 0x16u);
    }
  }
}

uint64_t ___ZL45nw_protocol_http2_transport_process_connectedP27nw_protocol_http2_transport_block_invoke(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = *nw_hash_node_get_extra(a2);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = (v12 + 205);
    }

    else
    {
      v13 = "";
    }

    *buf = 136446722;
    v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
    v59 = 2082;
    v60 = v13;
    v61 = 2048;
    *v62 = a2;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s protocol hash node %p didn't have stream extra", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v14, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        v17 = *(a1 + 32);
        if (v17)
        {
          v18 = (v17 + 205);
        }

        else
        {
          v18 = "";
        }

        *buf = 136446722;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v18;
        v61 = 2048;
        *v62 = a2;
        v19 = "%{public}s %{public}s protocol hash node %p didn't have stream extra";
        goto LABEL_77;
      }

      if (v55 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        v30 = *(a1 + 32);
        if (v30)
        {
          v31 = (v30 + 205);
        }

        else
        {
          v31 = "";
        }

        *buf = 136446722;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v31;
        v61 = 2048;
        *v62 = a2;
        v19 = "%{public}s %{public}s protocol hash node %p didn't have stream extra, backtrace limit exceeded";
        goto LABEL_77;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      v21 = os_log_type_enabled(gLogObj, type);
      if (!backtrace_string)
      {
        if (!v21)
        {
          goto LABEL_78;
        }

        v36 = *(a1 + 32);
        if (v36)
        {
          v37 = (v36 + 205);
        }

        else
        {
          v37 = "";
        }

        *buf = 136446722;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v37;
        v61 = 2048;
        *v62 = a2;
        v19 = "%{public}s %{public}s protocol hash node %p didn't have stream extra, no backtrace";
        goto LABEL_77;
      }

      if (v21)
      {
        v22 = *(a1 + 32);
        if (v22)
        {
          v23 = (v22 + 205);
        }

        else
        {
          v23 = "";
        }

        *buf = 136446978;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v23;
        v61 = 2048;
        *v62 = a2;
        *&v62[8] = 2082;
        *&v62[10] = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s %{public}s protocol hash node %p didn't have stream extra, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_78:
    if (!v14)
    {
      return 1;
    }

    goto LABEL_79;
  }

  if (gLogDatapath == 1)
  {
    v47 = __nwlog_obj();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      v48 = *(a1 + 32);
      v49 = (v48 + 205);
      v28 = v48 == 0;
      v50 = *(v4 + 32);
      if (v28)
      {
        v49 = "";
      }

      *buf = 136446722;
      v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
      v59 = 2082;
      v60 = v49;
      v61 = 1024;
      *v62 = v50;
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s checking existing stream %d to see if waiting_for_connect", buf, 0x1Cu);
    }
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    return 1;
  }

  if ((*(v4 + 36) & 8) != 0 && *(v4 + 32) == 1)
  {
    if (gLogDatapath)
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          v7 = (v6 + 205);
        }

        else
        {
          v7 = "";
        }

        *buf = 136446466;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v7;
        v8 = "%{public}s %{public}s deferring stream connect for initial responder stream";
        v9 = v5;
        v10 = OS_LOG_TYPE_DEBUG;
        v11 = 22;
LABEL_37:
        _os_log_impl(&dword_181A37000, v9, v10, v8, buf, v11);
        return 1;
      }
    }

    return 1;
  }

  if (gLogDatapath)
  {
    v51 = __nwlog_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v52 = *(a1 + 32);
      v53 = (v52 + 205);
      v28 = v52 == 0;
      v54 = *(v4 + 32);
      if (v28)
      {
        v53 = "";
      }

      *buf = 136446722;
      v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
      v59 = 2082;
      v60 = v53;
      v61 = 1024;
      *v62 = v54;
      _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling connect on waiting stream %d", buf, 0x1Cu);
    }
  }

  object = nw_hash_node_get_object(a2);
  if (!object)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = *(a1 + 32);
    if (v32)
    {
      v33 = (v32 + 205);
    }

    else
    {
      v33 = "";
    }

    *buf = 136446722;
    v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
    v59 = 2082;
    v60 = v33;
    v61 = 2048;
    *v62 = a2;
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s protocol hash node %p didn't have object", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v14, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_78;
        }

        v34 = *(a1 + 32);
        if (v34)
        {
          v35 = (v34 + 205);
        }

        else
        {
          v35 = "";
        }

        *buf = 136446722;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v35;
        v61 = 2048;
        *v62 = a2;
        v19 = "%{public}s %{public}s protocol hash node %p didn't have object";
        goto LABEL_77;
      }

      if (v55 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_78;
        }

        v42 = *(a1 + 32);
        if (v42)
        {
          v43 = (v42 + 205);
        }

        else
        {
          v43 = "";
        }

        *buf = 136446722;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v43;
        v61 = 2048;
        *v62 = a2;
        v19 = "%{public}s %{public}s protocol hash node %p didn't have object, backtrace limit exceeded";
        goto LABEL_77;
      }

      v38 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v39 = os_log_type_enabled(v15, type);
      if (v38)
      {
        if (v39)
        {
          v40 = *(a1 + 32);
          if (v40)
          {
            v41 = (v40 + 205);
          }

          else
          {
            v41 = "";
          }

          *buf = 136446978;
          v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
          v59 = 2082;
          v60 = v41;
          v61 = 2048;
          *v62 = a2;
          *&v62[8] = 2082;
          *&v62[10] = v38;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s %{public}s protocol hash node %p didn't have object, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v38);
        if (!v14)
        {
          return 1;
        }

LABEL_79:
        free(v14);
        return 1;
      }

      if (v39)
      {
        v44 = *(a1 + 32);
        if (v44)
        {
          v45 = (v44 + 205);
        }

        else
        {
          v45 = "";
        }

        *buf = 136446722;
        v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
        v59 = 2082;
        v60 = v45;
        v61 = 2048;
        *v62 = a2;
        v19 = "%{public}s %{public}s protocol hash node %p didn't have object, no backtrace";
LABEL_77:
        _os_log_impl(&dword_181A37000, v15, v16, v19, buf, 0x20u);
        goto LABEL_78;
      }
    }

    goto LABEL_78;
  }

  if (!nw_http2_transport_stream_connect(*(a1 + 32), v4, object))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = (v26 + 205);
      v28 = v26 == 0;
      v29 = *(v4 + 32);
      if (v28)
      {
        v27 = "";
      }

      *buf = 136446978;
      v58 = "nw_protocol_http2_transport_process_connected_block_invoke";
      v59 = 2082;
      v60 = v27;
      v61 = 1024;
      *v62 = v29;
      *&v62[4] = 2048;
      *&v62[6] = v4;
      v8 = "%{public}s %{public}s nw_http2_transport_stream_connect failed for stream id %d (%p)";
      v9 = v25;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 38;
      goto LABEL_37;
    }
  }

  return 1;
}

uint64_t nw_protocol_http2_transport_get_parameters(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[11];
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http2_transport_get_parameters";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null http2_transport", buf, 12);
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
        v16 = "nw_protocol_http2_transport_get_parameters";
        v7 = "%{public}s called with null http2_transport";
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
        v16 = "nw_protocol_http2_transport_get_parameters";
        v7 = "%{public}s called with null http2_transport, backtrace limit exceeded";
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
        v16 = "nw_protocol_http2_transport_get_parameters";
        v7 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_http2_transport_get_parameters";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_http2_transport_get_parameters";
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
        v16 = "nw_protocol_http2_transport_get_parameters";
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
        v16 = "nw_protocol_http2_transport_get_parameters";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_http2_transport_get_parameters";
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
    v16 = "nw_protocol_http2_transport_get_parameters";
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

__n128 __Block_byref_object_copy__41168(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZL44nw_protocol_http2_transport_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_36(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32) + 8);
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
  return 1;
}

void nw_protocol_http2_transport_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_output_available";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_output_available";
      v9 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v16 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_output_available";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_48:
        if (!v6)
        {
          return;
        }

LABEL_49:
        free(v6);
        return;
      }

      if (!v16)
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_output_available";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_output_available";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_47:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_48;
  }

  handle = a1->handle;
  if (handle)
  {
    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_output_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      }
    }

    if (nghttp2_session_want_write())
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_output_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s session send wanted by nghttp2 library", buf, 0x16u);
      }

      nw_http2_transport_session_send(handle);
      if (gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_output_available";
          *&buf[12] = 2082;
          *&buf[14] = handle + 205;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called session send for nghttp2 session", buf, 0x16u);
        }
      }
    }

    if (gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_http2_transport_drain_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      }
    }

    if (gLogDatapath == 1)
    {
      v13 = __nwlog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_http2_transport_drain_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s draining output frames", buf, 0x16u);
      }
    }

    v4 = *(handle + 14);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL38nw_http2_transport_drain_output_framesP27nw_protocol_http2_transport_block_invoke;
    v22 = &__block_descriptor_tmp_34_41208;
    v23 = handle;
    nw_hash_table_apply(v4, buf);
    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http2_transport_output_available";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http2_transport", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_48;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_output_available";
    v9 = "%{public}s called with null http2_transport";
    goto LABEL_47;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_output_available";
    v9 = "%{public}s called with null http2_transport, backtrace limit exceeded";
    goto LABEL_47;
  }

  v17 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v18 = os_log_type_enabled(v7, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_output_available";
    v9 = "%{public}s called with null http2_transport, no backtrace";
    goto LABEL_47;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_output_available";
    *&buf[12] = 2082;
    *&buf[14] = v17;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v6)
  {
    goto LABEL_49;
  }
}

uint64_t ___ZL38nw_http2_transport_drain_output_framesP27nw_protocol_http2_transport_block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (!object)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v8 = *(a1 + 32);
    v17 = 136446722;
    v18 = "nw_http2_transport_drain_output_frames_block_invoke";
    if (v8)
    {
      v9 = (v8 + 205);
    }

    else
    {
      v9 = "";
    }

    v19 = 2082;
    v20 = v9;
    v21 = 2048;
    v22 = a2;
    v10 = "%{public}s %{public}s input protocol in node %p in protocol table is NULL, skipping";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
LABEL_16:
    _os_log_impl(&dword_181A37000, v11, v12, v10, &v17, 0x20u);
    return 1;
  }

  v5 = object;
  v6 = *nw_hash_node_get_extra(a2);
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return 1;
    }

    v14 = *(a1 + 32);
    v17 = 136446722;
    v18 = "nw_http2_transport_drain_output_frames_block_invoke";
    if (v14)
    {
      v15 = (v14 + 205);
    }

    else
    {
      v15 = "";
    }

    v19 = 2082;
    v20 = v15;
    v21 = 2048;
    v22 = v5;
    v10 = "%{public}s %{public}s stream not found for input protocol %p, not draining output frames";
    v11 = v13;
    v12 = OS_LOG_TYPE_INFO;
    goto LABEL_16;
  }

  if (nw_http2_transport_drain_next_frame_for_stream(*(a1 + 32), v5, v6, 1))
  {
      ;
    }
  }

  return 1;
}

BOOL nw_protocol_http2_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v25 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http2_replace_input_handler";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null protocol", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v26, buf, &v42))
    {
      goto LABEL_85;
    }

    if (buf[0] != 17)
    {
      if (v42 != 1)
      {
        v27 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v27, buf[0]))
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http2_replace_input_handler";
          v29 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = buf[0];
      v35 = os_log_type_enabled(v27, buf[0]);
      if (!backtrace_string)
      {
        if (v35)
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http2_replace_input_handler";
          v29 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      if (!v35)
      {
        goto LABEL_65;
      }

      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http2_replace_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = backtrace_string;
      v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

    v27 = __nwlog_obj();
    v28 = buf[0];
    if (!os_log_type_enabled(v27, buf[0]))
    {
      goto LABEL_85;
    }

    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http2_replace_input_handler";
    v29 = "%{public}s called with null protocol";
LABEL_84:
    _os_log_impl(&dword_181A37000, v27, v28, v29, v51, 0xCu);
    goto LABEL_85;
  }

  handle = a1->handle;
  if (!handle)
  {
    v30 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http2_replace_input_handler";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null http2_transport", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v26, buf, &v42))
    {
      goto LABEL_85;
    }

    if (buf[0] != 17)
    {
      if (v42 != 1)
      {
        v27 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v27, buf[0]))
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http2_replace_input_handler";
          v29 = "%{public}s called with null http2_transport, backtrace limit exceeded";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = buf[0];
      v37 = os_log_type_enabled(v27, buf[0]);
      if (!backtrace_string)
      {
        if (v37)
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http2_replace_input_handler";
          v29 = "%{public}s called with null http2_transport, no backtrace";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      if (!v37)
      {
        goto LABEL_65;
      }

      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http2_replace_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = backtrace_string;
      v36 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

    v27 = __nwlog_obj();
    v28 = buf[0];
    if (!os_log_type_enabled(v27, buf[0]))
    {
      goto LABEL_85;
    }

    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http2_replace_input_handler";
    v29 = "%{public}s called with null http2_transport";
    goto LABEL_84;
  }

  if (gLogDatapath == 1)
  {
    v31 = __nwlog_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http2_replace_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = handle + 205;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", v51, 0x16u);
    }
  }

  if (!a2)
  {
    v32 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http2_replace_input_handler";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null old_input_protocol", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v26, buf, &v42))
    {
      goto LABEL_85;
    }

    if (buf[0] == 17)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (!os_log_type_enabled(v27, buf[0]))
      {
        goto LABEL_85;
      }

      *v51 = 136446210;
      *&v51[4] = "nw_protocol_http2_replace_input_handler";
      v29 = "%{public}s called with null old_input_protocol";
      goto LABEL_84;
    }

    if (v42 != 1)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http2_replace_input_handler";
        v29 = "%{public}s called with null old_input_protocol, backtrace limit exceeded";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = buf[0];
    v38 = os_log_type_enabled(v27, buf[0]);
    if (!backtrace_string)
    {
      if (v38)
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http2_replace_input_handler";
        v29 = "%{public}s called with null old_input_protocol, no backtrace";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (!v38)
    {
      goto LABEL_65;
    }

    *v51 = 136446466;
    *&v51[4] = "nw_protocol_http2_replace_input_handler";
    *&v51[12] = 2082;
    *&v51[14] = backtrace_string;
    v36 = "%{public}s called with null old_input_protocol, dumping backtrace:%{public}s";
LABEL_64:
    _os_log_impl(&dword_181A37000, v27, v28, v36, v51, 0x16u);
    goto LABEL_65;
  }

  if (a3)
  {
    output_handler_context = a2->output_handler_context;
    if (output_handler_context)
    {
      v8 = output_handler_context[4];
      v52[0] = 0;
      memset(v51, 0, sizeof(v51));
      nw_http2_transport_copy_stream(v8, v51);
      nw_hash_table_remove_node(handle[14], output_handler_context);
      v9 = handle[15];
      if (v9 && (node = nw_hash_table_get_node(v9, v52, 4)) != 0)
      {
        nw_hash_table_remove_node(handle[15], node);
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      v42 = 0;
      v12 = nw_hash_table_add_object(handle[14], a3, &v42);
      if (v42)
      {
        v13 = v12;
        v14 = *nw_hash_node_get_extra(v12);
        nw_http2_transport_copy_stream(v51, v14);
        a3->output_handler_context = v13;
        if (!a3->output_handler)
        {
          nw_protocol_set_output_handler(a3, a1);
        }

        if (a1->default_input_handler == a2)
        {
          nw_protocol_set_input_handler(a1, a3);
          *handle = *a3->flow_id;
          if (v11)
          {
LABEL_25:
            if (gLogDatapath == 1)
            {
              v40 = __nwlog_obj();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                v41 = nw_hash_table_count(handle[14]);
                *buf = 136446722;
                v44 = "nw_protocol_http2_replace_input_handler";
                v45 = 2082;
                v46 = handle + 205;
                v47 = 1024;
                v48 = v41;
                _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s replaced input handler, have %u input handlers", buf, 0x1Cu);
              }
            }

            return 1;
          }
        }

        else if (v11)
        {
          goto LABEL_25;
        }

        v22 = nw_hash_table_add_object(handle[15], v14, &v42);
        if (v42)
        {
          *nw_hash_node_get_extra(v22) = a3;
          goto LABEL_25;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        v24 = *(v14 + 32);
        *buf = 136446722;
        v44 = "nw_protocol_http2_replace_input_handler";
        v45 = 2082;
        v46 = handle + 205;
        v47 = 1024;
        v48 = v24;
        v17 = "%{public}s %{public}s HTTP/2 already has stream id registered for %d";
        v18 = buf;
        v19 = v23;
        v20 = 28;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        *buf = 136446978;
        v44 = "nw_protocol_http2_replace_input_handler";
        v45 = 2082;
        v46 = handle + 205;
        v47 = 1042;
        v48 = 16;
        v49 = 2098;
        v50 = a3;
        v17 = "%{public}s %{public}s HTTP/2 already has input handler registered for %{public,uuid_t}.16P";
        v18 = buf;
        v19 = v21;
        v20 = 38;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http2_replace_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = handle + 205;
      v17 = "%{public}s %{public}s Failed to find old node";
      v18 = v51;
      v19 = v15;
      v20 = 22;
    }

    _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, v17, v18, v20);
    return 0;
  }

  v33 = __nwlog_obj();
  *v51 = 136446210;
  *&v51[4] = "nw_protocol_http2_replace_input_handler";
  v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null new_input_protocol", v51, 12);
  buf[0] = 16;
  v42 = 0;
  if (!__nwlog_fault(v26, buf, &v42))
  {
    goto LABEL_85;
  }

  if (buf[0] != 17)
  {
    if (v42 != 1)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http2_replace_input_handler";
        v29 = "%{public}s called with null new_input_protocol, backtrace limit exceeded";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = buf[0];
    v39 = os_log_type_enabled(v27, buf[0]);
    if (!backtrace_string)
    {
      if (v39)
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http2_replace_input_handler";
        v29 = "%{public}s called with null new_input_protocol, no backtrace";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (v39)
    {
      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http2_replace_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = backtrace_string;
      v36 = "%{public}s called with null new_input_protocol, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

LABEL_65:
    free(backtrace_string);
    goto LABEL_85;
  }

  v27 = __nwlog_obj();
  v28 = buf[0];
  if (os_log_type_enabled(v27, buf[0]))
  {
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http2_replace_input_handler";
    v29 = "%{public}s called with null new_input_protocol";
    goto LABEL_84;
  }

LABEL_85:
  if (v26)
  {
    free(v26);
  }

  return 0;
}

void nw_http2_transport_copy_stream(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http2_transport_copy_stream";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null old_stream", buf, 12);
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
      v19 = "nw_http2_transport_copy_stream";
      v10 = "%{public}s called with null old_stream";
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
          v19 = "nw_http2_transport_copy_stream";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null old_stream, dumping backtrace:%{public}s", buf, 0x16u);
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
      v19 = "nw_http2_transport_copy_stream";
      v10 = "%{public}s called with null old_stream, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v19 = "nw_http2_transport_copy_stream";
      v10 = "%{public}s called with null old_stream, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_37;
  }

  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = a2;
    if (*a1)
    {
      *a2 = *a1;
      *(*a1 + 24) = a2;
      *(a2 + 8) = *(a1 + 8);
      *a1 = 0;
      *(a1 + 8) = a1;
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = a2 + 16;
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a2 + 16) = v2;
      *(*(a1 + 16) + 24) = a2 + 16;
      *(a2 + 24) = *(a1 + 24);
      *(a1 + 16) = 0;
      *(a1 + 24) = a1 + 16;
    }

    *(a2 + 32) = *(a1 + 32);
    v3 = *(a2 + 36) & 0xFE | *(a1 + 36) & 1;
    *(a2 + 36) = v3;
    v4 = v3 & 0xFFFFFFFD | (2 * ((*(a1 + 36) >> 1) & 1));
    *(a2 + 36) = v4;
    v5 = v4 & 0xFFFFFFFB | (4 * ((*(a1 + 36) >> 2) & 1));
    *(a2 + 36) = v5;
    *(a2 + 36) = v5 & 0xF7 | *(a1 + 36) & 8;
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http2_transport_copy_stream";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null new_stream", buf, 12);
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
    v19 = "nw_http2_transport_copy_stream";
    v10 = "%{public}s called with null new_stream";
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
    v19 = "nw_http2_transport_copy_stream";
    v10 = "%{public}s called with null new_stream, backtrace limit exceeded";
    goto LABEL_36;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v19 = "nw_http2_transport_copy_stream";
    v10 = "%{public}s called with null new_stream, no backtrace";
    goto LABEL_36;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_http2_transport_copy_stream";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null new_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_38;
  }
}

void ___ZL48nw_protocol_http2_transport_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_destroy";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v72 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v2, type, &v72))
    {
      goto LABEL_45;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_destroy";
        v18 = "%{public}s called with null protocol";
LABEL_109:
        v25 = v29;
        v26 = v30;
        v27 = 12;
        goto LABEL_44;
      }

LABEL_45:
      if (!v2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (v72 != OS_LOG_TYPE_INFO)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_destroy";
        v18 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_109;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type[0];
    v44 = os_log_type_enabled(v29, type[0]);
    if (!backtrace_string)
    {
      if (v44)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_destroy";
        v18 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_109;
      }

      goto LABEL_45;
    }

    if (!v44)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_destroy";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v21 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_76:
    v22 = v29;
    v23 = v30;
    v24 = 22;
    goto LABEL_36;
  }

  v2 = *(v1 + 40);
  if (!v2)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_destroy";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null http2_transport", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v72 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v2, type, &v72))
    {
      goto LABEL_45;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_destroy";
        v18 = "%{public}s called with null http2_transport";
        goto LABEL_109;
      }

      goto LABEL_45;
    }

    if (v72 != OS_LOG_TYPE_INFO)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (os_log_type_enabled(v29, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_destroy";
        v18 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_109;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type[0];
    v45 = os_log_type_enabled(v29, type[0]);
    if (!backtrace_string)
    {
      if (v45)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_destroy";
        v18 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_109;
      }

      goto LABEL_45;
    }

    if (!v45)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_destroy";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v21 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
    goto LABEL_76;
  }

  if (gLogDatapath == 1)
  {
    v32 = __nwlog_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v2 + 205;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  v3 = *(v2 + 72);
  if (v3)
  {
    nw_queue_cancel_source(v3);
    *(v2 + 72) = 0;
  }

  v4 = *(v2 + 112);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = v2 + 205;
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_destroy";
    *&buf[12] = 2082;
    *&buf[14] = v2 + 205;
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s http2_transport_streams_protocol NULL when destroying", buf, 22);
    type[0] = OS_LOG_TYPE_ERROR;
    v72 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v2, type, &v72))
    {
      goto LABEL_45;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v15;
      v18 = "%{public}s %{public}s http2_transport_streams_protocol NULL when destroying";
LABEL_43:
      v25 = v16;
      v26 = v17;
      v27 = 22;
LABEL_44:
      _os_log_impl(&dword_181A37000, v25, v26, v18, buf, v27);
      goto LABEL_45;
    }

    if (v72 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v15;
      v18 = "%{public}s %{public}s http2_transport_streams_protocol NULL when destroying, backtrace limit exceeded";
      goto LABEL_43;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = type[0];
    v20 = os_log_type_enabled(gLogObj, type[0]);
    if (!backtrace_string)
    {
      if (!v20)
      {
        goto LABEL_45;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v15;
      v18 = "%{public}s %{public}s http2_transport_streams_protocol NULL when destroying, no backtrace";
      goto LABEL_43;
    }

    if (v20)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http2_transport_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v15;
      *&buf[22] = 2082;
      v80 = backtrace_string;
      v21 = "%{public}s %{public}s http2_transport_streams_protocol NULL when destroying, dumping backtrace:%{public}s";
      v22 = v16;
      v23 = v17;
      v24 = 32;
LABEL_36:
      _os_log_impl(&dword_181A37000, v22, v23, v21, buf, v24);
    }

LABEL_37:
    free(backtrace_string);
    if (!v2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (*(v4 + 48))
  {
    return;
  }

  nw_protocol_set_input_handler(v1, 0);
  if (gLogDatapath == 1)
  {
    v58 = __nwlog_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v2 + 205;
      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no more input handlers, destroying", buf, 0x16u);
    }
  }

  v5 = *(v2 + 120);
  if (v5)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL35nw_protocol_http2_transport_destroyP11nw_protocol_block_invoke;
    v80 = &__block_descriptor_tmp_33_41315;
    v81 = v2;
    nw_hash_table_apply(v5, buf);
    v6 = *(v2 + 120);
    if (v6)
    {
      _nw_hash_table_release(v6);
      *(v2 + 120) = 0;
    }
  }

  v7 = *(v2 + 112);
  if (v7)
  {
    _nw_hash_table_release(v7);
    *(v2 + 112) = 0;
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    v9 = *(v8 + 24);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v10();
        goto LABEL_18;
      }
    }
  }

  v33 = __nwlog_obj();
  v34 = *(v1 + 32);
  v35 = "invalid";
  if (v34)
  {
    v36 = *(v34 + 16);
    if (v36)
    {
      v35 = v36;
    }
  }

  *type = 136446466;
  v74 = "nw_protocol_http2_transport_destroy";
  v75 = 2082;
  v76 = v35;
  v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s protocol %{public}s has invalid remove_input_handler callback", type, 22);
  v72 = OS_LOG_TYPE_ERROR;
  v71 = 0;
  if (__nwlog_fault(v37, &v72, &v71))
  {
    if (v72 == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = v72;
      if (!os_log_type_enabled(v38, v72))
      {
        goto LABEL_118;
      }

      v40 = *(v1 + 32);
      v41 = "invalid";
      if (v40)
      {
        v42 = *(v40 + 16);
        if (v42)
        {
          v41 = v42;
        }
      }

      *type = 136446466;
      v74 = "nw_protocol_http2_transport_destroy";
      v75 = 2082;
      v76 = v41;
      v43 = "%{public}s protocol %{public}s has invalid remove_input_handler callback";
      goto LABEL_117;
    }

    if (v71 != 1)
    {
      v38 = __nwlog_obj();
      v39 = v72;
      if (!os_log_type_enabled(v38, v72))
      {
        goto LABEL_118;
      }

      v59 = *(v1 + 32);
      v60 = "invalid";
      if (v59)
      {
        v61 = *(v59 + 16);
        if (v61)
        {
          v60 = v61;
        }
      }

      *type = 136446466;
      v74 = "nw_protocol_http2_transport_destroy";
      v75 = 2082;
      v76 = v60;
      v43 = "%{public}s protocol %{public}s has invalid remove_input_handler callback, backtrace limit exceeded";
      goto LABEL_117;
    }

    v46 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = v72;
    v47 = os_log_type_enabled(v38, v72);
    if (v46)
    {
      if (v47)
      {
        v48 = *(v1 + 32);
        v49 = "invalid";
        if (v48)
        {
          v50 = *(v48 + 16);
          if (v50)
          {
            v49 = v50;
          }
        }

        *type = 136446722;
        v74 = "nw_protocol_http2_transport_destroy";
        v75 = 2082;
        v76 = v49;
        v77 = 2082;
        v78 = v46;
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s protocol %{public}s has invalid remove_input_handler callback, dumping backtrace:%{public}s", type, 0x20u);
      }

      free(v46);
      goto LABEL_118;
    }

    if (v47)
    {
      v66 = *(v1 + 32);
      v67 = "invalid";
      if (v66)
      {
        v68 = *(v66 + 16);
        if (v68)
        {
          v67 = v68;
        }
      }

      *type = 136446466;
      v74 = "nw_protocol_http2_transport_destroy";
      v75 = 2082;
      v76 = v67;
      v43 = "%{public}s protocol %{public}s has invalid remove_input_handler callback, no backtrace";
LABEL_117:
      _os_log_impl(&dword_181A37000, v38, v39, v43, type, 0x16u);
    }
  }

LABEL_118:
  if (v37)
  {
    free(v37);
  }

LABEL_18:
  nw_protocol_remove_instance(v1);
  v11 = *(v2 + 104);
  if (v11)
  {
    if (*v11)
    {
      v12 = *(*v11 + 8);
      if (v12)
      {
        v12();
LABEL_22:
        *(v2 + 104) = 0;
        goto LABEL_23;
      }
    }

    v51 = __nwlog_obj();
    v52 = *(v2 + 104);
    *type = 136446466;
    v74 = "nw_protocol_http2_transport_destroy";
    v75 = 2048;
    v76 = v52;
    LODWORD(v70) = 22;
    v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s listen protocol (%p) has invalid disconnected callback", type, v70);
    v72 = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (__nwlog_fault(v53, &v72, &v71))
    {
      if (v72 == OS_LOG_TYPE_FAULT)
      {
        v54 = __nwlog_obj();
        v55 = v72;
        if (!os_log_type_enabled(v54, v72))
        {
          goto LABEL_123;
        }

        v56 = *(v2 + 104);
        *type = 136446466;
        v74 = "nw_protocol_http2_transport_destroy";
        v75 = 2048;
        v76 = v56;
        v57 = "%{public}s listen protocol (%p) has invalid disconnected callback";
        goto LABEL_122;
      }

      if (v71 != 1)
      {
        v54 = __nwlog_obj();
        v55 = v72;
        if (!os_log_type_enabled(v54, v72))
        {
          goto LABEL_123;
        }

        v65 = *(v2 + 104);
        *type = 136446466;
        v74 = "nw_protocol_http2_transport_destroy";
        v75 = 2048;
        v76 = v65;
        v57 = "%{public}s listen protocol (%p) has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_122;
      }

      v62 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v55 = v72;
      v63 = os_log_type_enabled(v54, v72);
      if (v62)
      {
        if (v63)
        {
          v64 = *(v2 + 104);
          *type = 136446722;
          v74 = "nw_protocol_http2_transport_destroy";
          v75 = 2048;
          v76 = v64;
          v77 = 2082;
          v78 = v62;
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s listen protocol (%p) has invalid disconnected callback, dumping backtrace:%{public}s", type, 0x20u);
        }

        free(v62);
        goto LABEL_123;
      }

      if (v63)
      {
        v69 = *(v2 + 104);
        *type = 136446466;
        v74 = "nw_protocol_http2_transport_destroy";
        v75 = 2048;
        v76 = v69;
        v57 = "%{public}s listen protocol (%p) has invalid disconnected callback, no backtrace";
LABEL_122:
        _os_log_impl(&dword_181A37000, v54, v55, v57, type, 0x16u);
      }
    }

LABEL_123:
    if (v53)
    {
      free(v53);
    }

    goto LABEL_22;
  }

LABEL_23:
  nw_http2_transport_release_frame_array((v2 + 144));
  nw_http2_transport_release_frame_array((v2 + 128));
  nw_http2_transport_release_frame_array((v2 + 160));
  nw_http2_transport_release_frame_array((v2 + 176));
  *(v2 + 192) = 0;
  v13 = *(v2 + 88);
  if (v13)
  {
    os_release(v13);
    *(v2 + 88) = 0;
  }

  v14 = *(v2 + 96);
  if (v14)
  {
    os_release(v14);
    *(v2 + 96) = 0;
  }

  nghttp2_session_del();
LABEL_46:
  free(v2);
}

uint64_t ___ZL48nw_protocol_http2_transport_remove_input_handlerP11nw_protocolS0_b_block_invoke_31(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  object = nw_hash_node_get_object(a2);
  nw_protocol_set_input_handler(v3, object);
  **(a1 + 40) = **(*(a1 + 32) + 48);
  if (gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = (v7 + 205);
      }

      else
      {
        v8 = "";
      }

      v9 = *(*(a1 + 32) + 48);
      v10 = 136446722;
      v11 = "nw_protocol_http2_transport_remove_input_handler_block_invoke";
      v12 = 2082;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s reset default input handler to %p", &v10, 0x20u);
    }
  }

  return 0;
}

uint64_t ___ZL35nw_protocol_http2_transport_destroyP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v5 = object;
    if ((*(object + 36) & 1) == 0 || *(object + 32) == -1)
    {
      if (gLogDatapath == 1)
      {
        v27 = __nwlog_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 32);
          if (v28)
          {
            v29 = (v28 + 205);
          }

          else
          {
            v29 = "";
          }

          *buf = 136446466;
          v33 = "nw_protocol_http2_transport_destroy_block_invoke";
          v34 = 2082;
          v35 = v29;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s not closing already closed or invalid stream when destroying", buf, 0x16u);
        }
      }

      *(v5 + 36) &= ~1u;
      *(v5 + 32) = -1;
      nw_hash_table_remove_node(*(*(a1 + 32) + 120), a2);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = (v7 + 205);
        v9 = v7 == 0;
        v10 = *(v5 + 32);
        if (v9)
        {
          v8 = "";
        }

        *buf = 136446722;
        v33 = "nw_protocol_http2_transport_destroy_block_invoke";
        v34 = 2082;
        v35 = v8;
        v36 = 1024;
        LODWORD(v37) = v10;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s closing stream %d during destroy, did not have an active input_handler", buf, 0x1Cu);
      }

      nw_http2_transport_stream_close(*(a1 + 32), v5);
    }

    nw_http2_transport_release_frame_array(v5);
    nw_http2_transport_release_frame_array((v5 + 16));
    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = (v11 + 205);
  }

  else
  {
    v12 = "";
  }

  *buf = 136446722;
  v33 = "nw_protocol_http2_transport_destroy_block_invoke";
  v34 = 2082;
  v35 = v12;
  v36 = 2048;
  v37 = a2;
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s hash node %p didn't have a stream as extra", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v5, &type, &v30))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_42;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (v15 + 205);
    }

    else
    {
      v16 = "";
    }

    *buf = 136446722;
    v33 = "nw_protocol_http2_transport_destroy_block_invoke";
    v34 = 2082;
    v35 = v16;
    v36 = 2048;
    v37 = a2;
    v17 = "%{public}s %{public}s hash node %p didn't have a stream as extra";
    goto LABEL_41;
  }

  if (v30 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_42;
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = (v22 + 205);
    }

    else
    {
      v23 = "";
    }

    *buf = 136446722;
    v33 = "nw_protocol_http2_transport_destroy_block_invoke";
    v34 = 2082;
    v35 = v23;
    v36 = 2048;
    v37 = a2;
    v17 = "%{public}s %{public}s hash node %p didn't have a stream as extra, backtrace limit exceeded";
    goto LABEL_41;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = type;
  v19 = os_log_type_enabled(gLogObj, type);
  if (backtrace_string)
  {
    if (v19)
    {
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = (v20 + 205);
      }

      else
      {
        v21 = "";
      }

      *buf = 136446978;
      v33 = "nw_protocol_http2_transport_destroy_block_invoke";
      v34 = 2082;
      v35 = v21;
      v36 = 2048;
      v37 = a2;
      v38 = 2082;
      v39 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s %{public}s hash node %p didn't have a stream as extra, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(backtrace_string);
    if (v5)
    {
      goto LABEL_43;
    }

    return 1;
  }

  if (v19)
  {
    v24 = *(a1 + 32);
    if (v24)
    {
      v25 = (v24 + 205);
    }

    else
    {
      v25 = "";
    }

    *buf = 136446722;
    v33 = "nw_protocol_http2_transport_destroy_block_invoke";
    v34 = 2082;
    v35 = v25;
    v36 = 2048;
    v37 = a2;
    v17 = "%{public}s %{public}s hash node %p didn't have a stream as extra, no backtrace";
LABEL_41:
    _os_log_impl(&dword_181A37000, v13, v14, v17, buf, 0x20u);
  }

LABEL_42:
  if (v5)
  {
LABEL_43:
    free(v5);
  }

  return 1;
}

uint64_t nw_protocol_http2_transport_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v130 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v91 = __nwlog_obj();
    *buf = 136446210;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v118 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v92, &type, &v118))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = type;
      if (!os_log_type_enabled(v93, type))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null protocol";
      goto LABEL_204;
    }

    if (v118 != OS_LOG_TYPE_INFO)
    {
      v93 = __nwlog_obj();
      v94 = type;
      if (!os_log_type_enabled(v93, type))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = type;
    v101 = os_log_type_enabled(v93, type);
    if (!backtrace_string)
    {
      if (!v101)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_204;
    }

    if (!v101)
    {
      goto LABEL_185;
    }

    *buf = 136446466;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v122 = 2082;
    v123 = backtrace_string;
    v102 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_184:
    _os_log_impl(&dword_181A37000, v93, v94, v102, buf, 0x16u);
    goto LABEL_185;
  }

  handle = a1->handle;
  if (!handle)
  {
    v96 = __nwlog_obj();
    *buf = 136446210;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v96, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v118 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v92, &type, &v118))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = type;
      if (!os_log_type_enabled(v93, type))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null http2_transport";
      goto LABEL_204;
    }

    if (v118 != OS_LOG_TYPE_INFO)
    {
      v93 = __nwlog_obj();
      v94 = type;
      if (!os_log_type_enabled(v93, type))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null http2_transport, backtrace limit exceeded";
      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = type;
    v103 = os_log_type_enabled(v93, type);
    if (!backtrace_string)
    {
      if (!v103)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null http2_transport, no backtrace";
      goto LABEL_204;
    }

    if (!v103)
    {
      goto LABEL_185;
    }

    *buf = 136446466;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v122 = 2082;
    v123 = backtrace_string;
    v102 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
    goto LABEL_184;
  }

  if (!a2)
  {
    v97 = __nwlog_obj();
    *buf = 136446210;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v118 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v92, &type, &v118))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = type;
      if (!os_log_type_enabled(v93, type))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null input_protocol";
      goto LABEL_204;
    }

    if (v118 != OS_LOG_TYPE_INFO)
    {
      v93 = __nwlog_obj();
      v94 = type;
      if (!os_log_type_enabled(v93, type))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v95 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = type;
    v104 = os_log_type_enabled(v93, type);
    if (backtrace_string)
    {
      if (v104)
      {
        *buf = 136446466;
        v121 = "nw_protocol_http2_transport_add_input_handler";
        v122 = 2082;
        v123 = backtrace_string;
        v102 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_184;
      }

LABEL_185:
      free(backtrace_string);
      goto LABEL_205;
    }

    if (!v104)
    {
      goto LABEL_205;
    }

    *buf = 136446210;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v95 = "%{public}s called with null input_protocol, no backtrace";
LABEL_204:
    _os_log_impl(&dword_181A37000, v93, v94, v95, buf, 0xCu);
LABEL_205:
    if (v92)
    {
      free(v92);
    }

    return 0;
  }

  if (gLogDatapath == 1)
  {
    v98 = __nwlog_obj();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (gLogDatapath == 1)
  {
    v99 = __nwlog_obj();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      v124 = 2048;
      *v125 = a2;
      *&v125[8] = 1042;
      *&v125[10] = 16;
      *&v125[14] = 2098;
      *&v125[16] = a2;
      _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s incoming protocol %p has flow id %{public,uuid_t}.16P", buf, 0x30u);
    }
  }

  if (!handle[12])
  {
    callbacks = a2->callbacks;
    if (!callbacks || (get_remote_endpoint = callbacks->get_remote_endpoint) == 0 || (v7 = get_remote_endpoint(a2)) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      v18 = "%{public}s %{public}s failed to get remote endpoint from input_handler";
      goto LABEL_21;
    }

    handle[12] = os_retain(v7);
  }

  v8 = a2->callbacks;
  if (!v8 || (get_parameters = v8->get_parameters) == 0 || (v10 = get_parameters(a2)) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v122 = 2082;
    v123 = handle + 205;
    v18 = "%{public}s %{public}s couldn't get parameters from input_protocol";
LABEL_21:
    v19 = v16;
LABEL_143:
    _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
    return 0;
  }

  v11 = v10;
  v12 = handle + 205;
  if (!*(handle + 205))
  {
    v13 = v10;
    v14 = _nw_parameters_copy_protocol_options_with_level();

    if (v14)
    {
      v15 = v14;
      _nw_protocol_options_get_log_id_str(v15, handle + 205);

      os_release(v15);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v121 = "nw_protocol_http2_transport_add_input_handler";
        v122 = 2082;
        v123 = handle + 205;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s no http2_options found, cannot get log id", buf, 0x16u);
      }
    }
  }

  v21 = nw_parameters_copy_protocol_value(v11, a1, "incomingStreamId");
  if (!v21)
  {
    LODWORD(v24) = -1;
    goto LABEL_30;
  }

  v22 = v21;
  value = xpc_int64_get_value(v21);
  v24 = value;
  if (HIDWORD(value))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v122 = 2082;
    v123 = handle + 205;
    v124 = 2048;
    *v125 = v24;
    v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s invalid stream id supplied via protocol parameters: %lld", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v118 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v40, &type, &v118))
    {
      goto LABEL_86;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      v42 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_86;
      }

      *buf = 136446722;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = v12;
      v124 = 2048;
      *v125 = v24;
      v43 = "%{public}s %{public}s invalid stream id supplied via protocol parameters: %lld";
    }

    else if (v118 == OS_LOG_TYPE_INFO)
    {
      v48 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      v42 = type;
      v49 = os_log_type_enabled(gLogObj, type);
      if (v48)
      {
        if (v49)
        {
          *buf = 136446978;
          v121 = "nw_protocol_http2_transport_add_input_handler";
          v122 = 2082;
          v123 = v12;
          v124 = 2048;
          *v125 = v24;
          *&v125[8] = 2082;
          *&v125[10] = v48;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s %{public}s invalid stream id supplied via protocol parameters: %lld, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v48);
        goto LABEL_86;
      }

      if (!v49)
      {
LABEL_86:
        if (v40)
        {
          free(v40);
        }

        goto LABEL_88;
      }

      *buf = 136446722;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = v12;
      v124 = 2048;
      *v125 = v24;
      v43 = "%{public}s %{public}s invalid stream id supplied via protocol parameters: %lld, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      v42 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_86;
      }

      *buf = 136446722;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = v12;
      v124 = 2048;
      *v125 = v24;
      v43 = "%{public}s %{public}s invalid stream id supplied via protocol parameters: %lld, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0x20u);
    goto LABEL_86;
  }

  if ((value & 0x80000000) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      v124 = 1024;
      *v125 = v24;
      _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}s invalid incoming stream id detected: %d", buf, 0x1Cu);
    }

LABEL_88:
    xpc_release(v22);
    return 0;
  }

  if (gLogDatapath == 1)
  {
    v109 = __nwlog_obj();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      v124 = 1024;
      *v125 = v24;
      _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s found incoming stream id: %d", buf, 0x1Cu);
    }
  }

  xpc_release(v22);
LABEL_30:
  if (gLogDatapath == 1)
  {
    v105 = __nwlog_obj();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v121 = "nw_http2_transport_add_to_protocol_table";
      v122 = 2082;
      v123 = handle + 205;
      v124 = 2048;
      *v125 = a2;
      *&v125[8] = 1024;
      *&v125[10] = -999;
      _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for protocol %p, stream %d", buf, 0x26u);
    }
  }

  type = OS_LOG_TYPE_DEFAULT;
  internal = handle[14];
  if (!internal)
  {
    internal = nw_hash_table_create_internal(0x11u, 8, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
    if (internal)
    {
      *(internal + 56) &= ~2u;
      handle[14] = internal;
      goto LABEL_34;
    }

    handle[14] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v121 = "nw_http2_transport_add_to_protocol_table";
    v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_protocol_hash_table_create failed", buf, 12);
    v118 = OS_LOG_TYPE_ERROR;
    v117 = 0;
    if (__nwlog_fault(v53, &v118, &v117))
    {
      if (v118 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v54 = gLogObj;
        v55 = v118;
        if (!os_log_type_enabled(gLogObj, v118))
        {
          goto LABEL_138;
        }

        *buf = 136446210;
        v121 = "nw_http2_transport_add_to_protocol_table";
        v56 = "%{public}s nw_protocol_hash_table_create failed";
LABEL_137:
        _os_log_impl(&dword_181A37000, v54, v55, v56, buf, 0xCu);
        goto LABEL_138;
      }

      if (v117 != 1)
      {
        v54 = __nwlog_obj();
        v55 = v118;
        if (!os_log_type_enabled(v54, v118))
        {
          goto LABEL_138;
        }

        *buf = 136446210;
        v121 = "nw_http2_transport_add_to_protocol_table";
        v56 = "%{public}s nw_protocol_hash_table_create failed, backtrace limit exceeded";
        goto LABEL_137;
      }

      v63 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v55 = v118;
      v64 = os_log_type_enabled(v54, v118);
      if (!v63)
      {
        if (!v64)
        {
          goto LABEL_138;
        }

        *buf = 136446210;
        v121 = "nw_http2_transport_add_to_protocol_table";
        v56 = "%{public}s nw_protocol_hash_table_create failed, no backtrace";
        goto LABEL_137;
      }

      if (v64)
      {
        *buf = 136446466;
        v121 = "nw_http2_transport_add_to_protocol_table";
        v122 = 2082;
        v123 = v63;
        _os_log_impl(&dword_181A37000, v54, v55, "%{public}s nw_protocol_hash_table_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v63);
    }

LABEL_138:
    if (v53)
    {
      v80 = v53;
      goto LABEL_140;
    }

LABEL_141:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v86 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446466;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v122 = 2082;
    v123 = v12;
    v18 = "%{public}s %{public}s could not add protocol to protocol based hash table, cannot add input handler";
    v19 = v86;
    goto LABEL_143;
  }

LABEL_34:
  v26 = nw_hash_table_add_object(internal, a2, &type);
  if ((type & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    v121 = "nw_http2_transport_add_to_protocol_table";
    v122 = 2082;
    v123 = handle + 205;
    v124 = 1042;
    *v125 = 16;
    *&v125[4] = 2098;
    *&v125[6] = a2;
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s http2_transport already has input handler registered for %{public,uuid_t}.16P", buf, 38);
    v118 = OS_LOG_TYPE_ERROR;
    v117 = 0;
    if (!__nwlog_fault(v44, &v118, &v117))
    {
      goto LABEL_114;
    }

    if (v118 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      v46 = v118;
      if (!os_log_type_enabled(gLogObj, v118))
      {
        goto LABEL_114;
      }

      *buf = 136446978;
      v121 = "nw_http2_transport_add_to_protocol_table";
      v122 = 2082;
      v123 = v12;
      v124 = 1042;
      *v125 = 16;
      *&v125[4] = 2098;
      *&v125[6] = a2;
      v47 = "%{public}s %{public}s http2_transport already has input handler registered for %{public,uuid_t}.16P";
    }

    else if (v117 == 1)
    {
      v51 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      v46 = v118;
      v52 = os_log_type_enabled(gLogObj, v118);
      if (v51)
      {
        if (v52)
        {
          *buf = 136447234;
          v121 = "nw_http2_transport_add_to_protocol_table";
          v122 = 2082;
          v123 = v12;
          v124 = 1042;
          *v125 = 16;
          *&v125[4] = 2098;
          *&v125[6] = a2;
          *&v125[14] = 2082;
          *&v125[16] = v51;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s %{public}s http2_transport already has input handler registered for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v51);
LABEL_114:
        if (v44)
        {
          v80 = v44;
LABEL_140:
          free(v80);
          goto LABEL_141;
        }

        goto LABEL_141;
      }

      if (!v52)
      {
        goto LABEL_114;
      }

      *buf = 136446978;
      v121 = "nw_http2_transport_add_to_protocol_table";
      v122 = 2082;
      v123 = v12;
      v124 = 1042;
      *v125 = 16;
      *&v125[4] = 2098;
      *&v125[6] = a2;
      v47 = "%{public}s %{public}s http2_transport already has input handler registered for %{public,uuid_t}.16P, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      v46 = v118;
      if (!os_log_type_enabled(gLogObj, v118))
      {
        goto LABEL_114;
      }

      *buf = 136446978;
      v121 = "nw_http2_transport_add_to_protocol_table";
      v122 = 2082;
      v123 = v12;
      v124 = 1042;
      *v125 = 16;
      *&v125[4] = 2098;
      *&v125[6] = a2;
      v47 = "%{public}s %{public}s http2_transport already has input handler registered for %{public,uuid_t}.16P, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0x26u);
    goto LABEL_114;
  }

  if (gLogDatapath == 1)
  {
    v106 = v26;
    v107 = __nwlog_obj();
    v108 = os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG);
    v26 = v106;
    if (v108)
    {
      *buf = 136446722;
      v121 = "nw_http2_transport_add_to_protocol_table";
      v122 = 2082;
      v123 = handle + 205;
      v124 = 2048;
      *v125 = a2;
      _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s added protocol %p to protocol hash table", buf, 0x20u);
      v26 = v106;
    }
  }

  if (!v26)
  {
    goto LABEL_141;
  }

  v27 = v26;
  if (v24 != -1)
  {
    stream_node_from_id = nw_http2_transport_get_stream_node_from_id(handle, v24);
    if (stream_node_from_id)
    {
      v29 = stream_node_from_id;
      v30 = stream_node_from_id[2];
      if (v30)
      {
        if (stream_node_from_id[4])
        {
          v31 = __nwlog_obj();
          v32 = v29[4];
          v33 = *(v30 + 32);
          *buf = 136447490;
          v121 = "nw_protocol_http2_transport_add_input_handler";
          v122 = 2082;
          v123 = handle + 205;
          v124 = 2048;
          *v125 = a2;
          *&v125[8] = 2048;
          *&v125[10] = v32;
          *&v125[18] = 2048;
          *&v125[20] = v30;
          v126 = 1024;
          v127 = v33;
          v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s %{public}s adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d)", buf, 58);
          type = OS_LOG_TYPE_ERROR;
          v118 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v34, &type, &v118))
          {
            goto LABEL_153;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v35 = __nwlog_obj();
            v36 = type;
            if (!os_log_type_enabled(v35, type))
            {
              goto LABEL_153;
            }

            v37 = v29[4];
            v38 = *(v30 + 32);
            *buf = 136447490;
            v121 = "nw_protocol_http2_transport_add_input_handler";
            v122 = 2082;
            v123 = handle + 205;
            v124 = 2048;
            *v125 = a2;
            *&v125[8] = 2048;
            *&v125[10] = v37;
            *&v125[18] = 2048;
            *&v125[20] = v30;
            v126 = 1024;
            v127 = v38;
            v39 = "%{public}s %{public}s adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d)";
          }

          else if (v118 == OS_LOG_TYPE_INFO)
          {
            v81 = __nw_create_backtrace_string();
            v35 = __nwlog_obj();
            v36 = type;
            v82 = os_log_type_enabled(v35, type);
            if (v81)
            {
              if (v82)
              {
                v83 = v29[4];
                v84 = *(v30 + 32);
                *buf = 136447746;
                v121 = "nw_protocol_http2_transport_add_input_handler";
                v122 = 2082;
                v123 = handle + 205;
                v124 = 2048;
                *v125 = a2;
                *&v125[8] = 2048;
                *&v125[10] = v83;
                *&v125[18] = 2048;
                *&v125[20] = v30;
                v126 = 1024;
                v127 = v84;
                v128 = 2082;
                v129 = v81;
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s %{public}s adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), dumping backtrace:%{public}s", buf, 0x44u);
              }

              free(v81);
              goto LABEL_153;
            }

            if (!v82)
            {
LABEL_153:
              if (v34)
              {
                free(v34);
              }

              goto LABEL_155;
            }

            v89 = v29[4];
            v90 = *(v30 + 32);
            *buf = 136447490;
            v121 = "nw_protocol_http2_transport_add_input_handler";
            v122 = 2082;
            v123 = handle + 205;
            v124 = 2048;
            *v125 = a2;
            *&v125[8] = 2048;
            *&v125[10] = v89;
            *&v125[18] = 2048;
            *&v125[20] = v30;
            v126 = 1024;
            v127 = v90;
            v39 = "%{public}s %{public}s adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), no backtrace";
          }

          else
          {
            v35 = __nwlog_obj();
            v36 = type;
            if (!os_log_type_enabled(v35, type))
            {
              goto LABEL_153;
            }

            v87 = v29[4];
            v88 = *(v30 + 32);
            *buf = 136447490;
            v121 = "nw_protocol_http2_transport_add_input_handler";
            v122 = 2082;
            v123 = handle + 205;
            v124 = 2048;
            *v125 = a2;
            *&v125[8] = 2048;
            *&v125[10] = v87;
            *&v125[18] = 2048;
            *&v125[20] = v30;
            v126 = 1024;
            v127 = v88;
            v39 = "%{public}s %{public}s adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v35, v36, v39, buf, 0x3Au);
          goto LABEL_153;
        }

        v71 = v27;
        stream_node_from_id[4] = a2;
        v27[4] = v30;
        if (gLogDatapath == 1)
        {
          v74 = __nwlog_obj();
          v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG);
          v71 = v27;
          if (v75)
          {
            v76 = *(v30 + 32);
            *buf = 136447234;
            v121 = "nw_protocol_http2_transport_add_input_handler";
            v122 = 2082;
            v123 = handle + 205;
            v124 = 1024;
            *v125 = v24;
            *&v125[4] = 1024;
            *&v125[6] = v76;
            *&v125[10] = 2048;
            *&v125[12] = v30;
            v77 = "%{public}s %{public}s connected incoming stream id %d to existing stream %d (%p)";
            v78 = v74;
            v79 = 44;
LABEL_215:
            _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, v77, buf, v79);
            v71 = v27;
            goto LABEL_124;
          }
        }

        goto LABEL_124;
      }

      v65 = __nwlog_obj();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v121 = "nw_protocol_http2_transport_add_input_handler";
        v122 = 2082;
        v123 = handle + 205;
        v124 = 1024;
        *v125 = v24;
        v60 = "%{public}s %{public}s stream (id %d) not found in hash node";
        v61 = v65;
        v62 = 28;
        goto LABEL_91;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v59 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v121 = "nw_protocol_http2_transport_add_input_handler";
        v122 = 2082;
        v123 = handle + 205;
        v124 = 1024;
        *v125 = v24;
        *&v125[4] = 2048;
        *&v125[6] = a2;
        v60 = "%{public}s %{public}s could not find existing stream %d to connect protocol %p with";
        v61 = v59;
        v62 = 38;
LABEL_91:
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, v60, buf, v62);
      }
    }

LABEL_155:
    nw_http2_transport_remove_from_protocol_table(handle, a2);
    return 0;
  }

  if (gLogDatapath == 1)
  {
    v110 = __nwlog_obj();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s detected new stream initiated from this side of the connection, allocating new stream", buf, 0x16u);
    }
  }

  v57 = malloc_type_calloc(1uLL, 0x28uLL, 0xD313BD2AuLL);
  v58 = v57;
  if (v57)
  {
    *v57 = 0;
    v57[1] = v57;
    v57[2] = 0;
    v57[3] = v57 + 2;
    *(v57 + 36) &= 0xF0u;
  }

  else
  {
    v66 = __nwlog_obj();
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v122 = 2048;
    v123 = 1;
    v124 = 2048;
    *v125 = 40;
    v69 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
    result = __nwlog_should_abort(v69);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v69);
    nw_http2_transport_stream_init(0);
  }

  *(v58 + 32) = -1;
  if (_nw_parameters_get_server_mode(v11))
  {
    v70 = 8;
  }

  else
  {
    v70 = 0;
  }

  *(v58 + 36) = *(v58 + 36) & 0xF7 | v70;
  v71 = v27;
  v27[4] = v58;
  if ((*(v58 + 36) & 8) == 0)
  {
    goto LABEL_124;
  }

  if (a1->default_input_handler)
  {
    v72 = __nwlog_obj();
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
LABEL_105:
      nw_http2_transport_remove_from_protocol_table(handle, a2);
      free(v58);
      return 0;
    }

    *buf = 136446466;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v122 = 2082;
    v123 = handle + 205;
    v73 = "%{public}s %{public}s http2_transport has default_input_handler on the first stream in a listening connection. Is a connection trying to join while having server set on the parameters?";
LABEL_104:
    _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, v73, buf, 0x16u);
    goto LABEL_105;
  }

  if (gLogDatapath == 1)
  {
    v113 = __nwlog_obj();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s responder's first stream detected, overriding stream id to 1", buf, 0x16u);
    }
  }

  *(v58 + 32) = 1;
  if (!nw_http2_transport_add_to_id_table(handle, v58, a2))
  {
    v72 = __nwlog_obj();
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_105;
    }

    *buf = 136446466;
    v121 = "nw_protocol_http2_transport_add_input_handler";
    v122 = 2082;
    v123 = handle + 205;
    v73 = "%{public}s %{public}s Failed to add new stream to the id based hash table";
    goto LABEL_104;
  }

  v71 = v27;
  if (gLogDatapath == 1)
  {
    v114 = __nwlog_obj();
    v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG);
    v71 = v27;
    if (v115)
    {
      v116 = v27[4];
      *buf = 136446978;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      v124 = 2048;
      *v125 = v58;
      *&v125[8] = 2048;
      *&v125[10] = v116;
      v77 = "%{public}s %{public}s new stream is %p, stream pointer is %p";
      v78 = v114;
      v79 = 42;
      goto LABEL_215;
    }
  }

LABEL_124:
  a2->output_handler_context = v71;
  if (a2->output_handler)
  {
    if (a1->default_input_handler)
    {
      goto LABEL_126;
    }

LABEL_133:
    nw_protocol_set_input_handler(a1, a2);
    *handle = *a2->flow_id;
    v85 = handle[9];
    if (!v85)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

  nw_protocol_set_output_handler(a2, a1);
  if (!a1->default_input_handler)
  {
    goto LABEL_133;
  }

LABEL_126:
  v85 = handle[9];
  if (v85)
  {
LABEL_127:
    nw_queue_cancel_source(v85);
    handle[9] = 0;
  }

LABEL_128:
  if (!handle[11])
  {
    handle[11] = os_retain(v11);
  }

  if (gLogDatapath == 1)
  {
    v111 = __nwlog_obj();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
    {
      v112 = nw_hash_table_count(handle[14]);
      *buf = 136446978;
      v121 = "nw_protocol_http2_transport_add_input_handler";
      v122 = 2082;
      v123 = handle + 205;
      v124 = 2048;
      *v125 = a2;
      *&v125[8] = 1024;
      *&v125[10] = v112;
      _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s added input handler %p, have %u input handlers", buf, 0x26u);
    }
  }

  return 1;
}

void nw_protocol_http2_transport_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_http2_transport_input_finished";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v6, &v21, &v20))
    {
      goto LABEL_53;
    }

    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v21;
      if (!os_log_type_enabled(v7, v21))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v23 = "nw_protocol_http2_transport_input_finished";
      v9 = "%{public}s called with null protocol";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v21;
      v14 = os_log_type_enabled(v7, v21);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_protocol_http2_transport_input_finished";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_53:
        if (!v6)
        {
          return;
        }

        goto LABEL_54;
      }

      if (!v14)
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v23 = "nw_protocol_http2_transport_input_finished";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = v21;
      if (!os_log_type_enabled(v7, v21))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v23 = "nw_protocol_http2_transport_input_finished";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_52;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_http2_transport_input_finished";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http2_transport", buf, 12);
    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v6, &v21, &v20))
    {
      goto LABEL_53;
    }

    if (v21 != OS_LOG_TYPE_FAULT)
    {
      if (v20 != 1)
      {
        v7 = __nwlog_obj();
        v8 = v21;
        if (!os_log_type_enabled(v7, v21))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v23 = "nw_protocol_http2_transport_input_finished";
        v9 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_52;
      }

      v15 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v21;
      v16 = os_log_type_enabled(v7, v21);
      if (!v15)
      {
        if (!v16)
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v23 = "nw_protocol_http2_transport_input_finished";
        v9 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_52;
      }

      if (v16)
      {
        *buf = 136446466;
        v23 = "nw_protocol_http2_transport_input_finished";
        v24 = 2082;
        v25 = v15;
        v17 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_37:
        _os_log_impl(&dword_181A37000, v7, v8, v17, buf, 0x16u);
      }

LABEL_38:
      free(v15);
      if (!v6)
      {
        return;
      }

LABEL_54:
      free(v6);
      return;
    }

    v7 = __nwlog_obj();
    v8 = v21;
    if (!os_log_type_enabled(v7, v21))
    {
      goto LABEL_53;
    }

    *buf = 136446210;
    v23 = "nw_protocol_http2_transport_input_finished";
    v9 = "%{public}s called with null http2_transport";
LABEL_52:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_53;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_http2_transport_input_finished";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null other_protocol", buf, 12);
    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v6, &v21, &v20))
    {
      goto LABEL_53;
    }

    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v21;
      if (!os_log_type_enabled(v7, v21))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v23 = "nw_protocol_http2_transport_input_finished";
      v9 = "%{public}s called with null other_protocol";
      goto LABEL_52;
    }

    if (v20 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v21;
      if (!os_log_type_enabled(v7, v21))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v23 = "nw_protocol_http2_transport_input_finished";
      v9 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_52;
    }

    v15 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v21;
    v18 = os_log_type_enabled(v7, v21);
    if (!v15)
    {
      if (!v18)
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v23 = "nw_protocol_http2_transport_input_finished";
      v9 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_52;
    }

    if (v18)
    {
      *buf = 136446466;
      v23 = "nw_protocol_http2_transport_input_finished";
      v24 = 2082;
      v25 = v15;
      v17 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v23 = "nw_protocol_http2_transport_input_finished";
      v24 = 2082;
      v25 = handle + 205;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if ((handle[204] & 0x40) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "nw_protocol_http2_transport_input_finished";
      v24 = 2082;
      v25 = handle + 205;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s still waiting for listen handler, but input finished. Processing input anyway.", buf, 0x16u);
    }
  }

  nw_protocol_http2_transport_process_input(handle);
  v4 = *(handle + 14);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZL42nw_protocol_http2_transport_input_finishedP11nw_protocolS0__block_invoke;
  v19[3] = &__block_descriptor_tmp_28_41424;
  v19[4] = handle;
  nw_hash_table_apply(v4, v19);
}

uint64_t ___ZL42nw_protocol_http2_transport_input_finishedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (!object)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = (v15 + 205);
    }

    else
    {
      v16 = "";
    }

    *buf = 136446722;
    v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
    v63 = 2082;
    v64 = v16;
    v65 = 2048;
    v66 = a2;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s no object for hash node %p, skipping input_finished", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (__nwlog_fault(v17, &type, &v59))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_56;
        }

        v20 = *(a1 + 32);
        if (v20)
        {
          v21 = (v20 + 205);
        }

        else
        {
          v21 = "";
        }

        *buf = 136446722;
        v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
        v63 = 2082;
        v64 = v21;
        v65 = 2048;
        v66 = a2;
        v22 = "%{public}s %{public}s no object for hash node %p, skipping input_finished";
LABEL_55:
        _os_log_impl(&dword_181A37000, v18, v19, v22, buf, 0x20u);
        goto LABEL_56;
      }

      if (v59 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_56;
        }

        v40 = *(a1 + 32);
        if (v40)
        {
          v41 = (v40 + 205);
        }

        else
        {
          v41 = "";
        }

        *buf = 136446722;
        v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
        v63 = 2082;
        v64 = v41;
        v65 = 2048;
        v66 = a2;
        v22 = "%{public}s %{public}s no object for hash node %p, skipping input_finished, backtrace limit exceeded";
        goto LABEL_55;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      v37 = os_log_type_enabled(gLogObj, type);
      if (!backtrace_string)
      {
        if (!v37)
        {
          goto LABEL_56;
        }

        v42 = *(a1 + 32);
        if (v42)
        {
          v43 = (v42 + 205);
        }

        else
        {
          v43 = "";
        }

        *buf = 136446722;
        v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
        v63 = 2082;
        v64 = v43;
        v65 = 2048;
        v66 = a2;
        v22 = "%{public}s %{public}s no object for hash node %p, skipping input_finished, no backtrace";
        goto LABEL_55;
      }

      if (v37)
      {
        v38 = *(a1 + 32);
        if (v38)
        {
          v39 = (v38 + 205);
        }

        else
        {
          v39 = "";
        }

        *buf = 136446978;
        v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
        v63 = 2082;
        v64 = v39;
        v65 = 2048;
        v66 = a2;
        v67 = 2082;
        v68 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s %{public}s no object for hash node %p, skipping input_finished, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_56:
    if (v17)
    {
      v44 = v17;
LABEL_58:
      free(v44);
      return 1;
    }

    return 1;
  }

  v5 = object;
  v6 = *nw_hash_node_get_extra(a2);
  if (v6)
  {
    if (*(v6 + 36))
    {
      v35 = *(v5 + 24);
      if (!v35 || (v27 = *(v35 + 184)) == 0)
      {
        v49 = __nwlog_obj();
        v50 = *(v5 + 16);
        if (!v50)
        {
          v50 = "invalid";
        }

        *buf = 136446466;
        v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
        v63 = 2082;
        v64 = v50;
        v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s protocol %{public}s has invalid input_finished callback", buf, 22);
        type = OS_LOG_TYPE_ERROR;
        v59 = 0;
        if (__nwlog_fault(v30, &type, &v59))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v31 = __nwlog_obj();
            v32 = type;
            if (!os_log_type_enabled(v31, type))
            {
              goto LABEL_100;
            }

            v51 = *(v5 + 16);
            if (!v51)
            {
              v51 = "invalid";
            }

            *buf = 136446466;
            v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
            v63 = 2082;
            v64 = v51;
            v34 = "%{public}s protocol %{public}s has invalid input_finished callback";
            goto LABEL_99;
          }

          if (v59 != 1)
          {
            v31 = __nwlog_obj();
            v32 = type;
            if (!os_log_type_enabled(v31, type))
            {
              goto LABEL_100;
            }

            v56 = *(v5 + 16);
            if (!v56)
            {
              v56 = "invalid";
            }

            *buf = 136446466;
            v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
            v63 = 2082;
            v64 = v56;
            v34 = "%{public}s protocol %{public}s has invalid input_finished callback, backtrace limit exceeded";
            goto LABEL_99;
          }

          v53 = __nw_create_backtrace_string();
          v31 = __nwlog_obj();
          v32 = type;
          v54 = os_log_type_enabled(v31, type);
          if (!v53)
          {
            if (!v54)
            {
              goto LABEL_100;
            }

            v58 = *(v5 + 16);
            if (!v58)
            {
              v58 = "invalid";
            }

            *buf = 136446466;
            v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
            v63 = 2082;
            v64 = v58;
            v34 = "%{public}s protocol %{public}s has invalid input_finished callback, no backtrace";
            goto LABEL_99;
          }

          if (v54)
          {
            v55 = *(v5 + 16);
            if (!v55)
            {
              v55 = "invalid";
            }

            *buf = 136446722;
            v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
            v63 = 2082;
            v64 = v55;
            v65 = 2082;
            v66 = v53;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v53);
        }

LABEL_100:
        if (!v30)
        {
          return 1;
        }

        goto LABEL_101;
      }

LABEL_36:
      v27(v5, *(a1 + 32));
      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = (v8 + 205);
      v10 = v8 == 0;
      v11 = *(v6 + 32);
      if (v10)
      {
        v9 = "";
      }

      *buf = 136446722;
      v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
      v63 = 2082;
      v64 = v9;
      v65 = 1024;
      LODWORD(v66) = v11;
      v12 = "%{public}s %{public}s stream %d not open, masking input_finished with disconnected";
      v13 = v7;
      v14 = 28;
      goto LABEL_23;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      if (v24)
      {
        v25 = (v24 + 205);
      }

      else
      {
        v25 = "";
      }

      *buf = 136446466;
      v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
      v63 = 2082;
      v64 = v25;
      v12 = "%{public}s %{public}s input protocol has no stream, masking input_finished with disconnected";
      v13 = v23;
      v14 = 22;
LABEL_23:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }
  }

  v26 = *(v5 + 24);
  if (v26)
  {
    v27 = *(v26 + 48);
    if (v27)
    {
      goto LABEL_36;
    }
  }

  v28 = __nwlog_obj();
  v29 = *(v5 + 16);
  if (!v29)
  {
    v29 = "invalid";
  }

  *buf = 136446466;
  v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
  v63 = 2082;
  v64 = v29;
  v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v59 = 0;
  if (!__nwlog_fault(v30, &type, &v59))
  {
    goto LABEL_100;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v31 = __nwlog_obj();
    v32 = type;
    if (!os_log_type_enabled(v31, type))
    {
      goto LABEL_100;
    }

    v33 = *(v5 + 16);
    if (!v33)
    {
      v33 = "invalid";
    }

    *buf = 136446466;
    v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
    v63 = 2082;
    v64 = v33;
    v34 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_99:
    _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x16u);
    goto LABEL_100;
  }

  if (v59 != 1)
  {
    v31 = __nwlog_obj();
    v32 = type;
    if (!os_log_type_enabled(v31, type))
    {
      goto LABEL_100;
    }

    v52 = *(v5 + 16);
    if (!v52)
    {
      v52 = "invalid";
    }

    *buf = 136446466;
    v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
    v63 = 2082;
    v64 = v52;
    v34 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
    goto LABEL_99;
  }

  v46 = __nw_create_backtrace_string();
  v31 = __nwlog_obj();
  v32 = type;
  v47 = os_log_type_enabled(v31, type);
  if (!v46)
  {
    if (!v47)
    {
      goto LABEL_100;
    }

    v57 = *(v5 + 16);
    if (!v57)
    {
      v57 = "invalid";
    }

    *buf = 136446466;
    v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
    v63 = 2082;
    v64 = v57;
    v34 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
    goto LABEL_99;
  }

  if (v47)
  {
    v48 = *(v5 + 16);
    if (!v48)
    {
      v48 = "invalid";
    }

    *buf = 136446722;
    v62 = "nw_protocol_http2_transport_input_finished_block_invoke";
    v63 = 2082;
    v64 = v48;
    v65 = 2082;
    v66 = v46;
    _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v46);
  if (v30)
  {
LABEL_101:
    v44 = v30;
    goto LABEL_58;
  }

  return 1;
}

void nw_protocol_http2_transport_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_output_finished";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_output_finished";
      v11 = "%{public}s called with null protocol";
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v18 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v29 = "nw_protocol_http2_transport_output_finished";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_60:
        if (!v8)
        {
          return;
        }

        goto LABEL_61;
      }

      if (!v18)
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_output_finished";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_output_finished";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_59;
  }

  handle = a1->handle;
  if (!handle)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_output_finished";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_60;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_60;
        }

        *buf = 136446210;
        v29 = "nw_protocol_http2_transport_output_finished";
        v11 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_59;
      }

      v19 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v20 = os_log_type_enabled(v9, type);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_60;
        }

        *buf = 136446210;
        v29 = "nw_protocol_http2_transport_output_finished";
        v11 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_59;
      }

      if (v20)
      {
        *buf = 136446466;
        v29 = "nw_protocol_http2_transport_output_finished";
        v30 = 2082;
        v31 = v19;
        v21 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_42:
        _os_log_impl(&dword_181A37000, v9, v10, v21, buf, 0x16u);
      }

LABEL_43:
      free(v19);
      if (!v8)
      {
        return;
      }

LABEL_61:
      free(v8);
      return;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_60;
    }

    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_output_finished";
    v11 = "%{public}s called with null http2_transport";
LABEL_59:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_60;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_output_finished";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_output_finished";
      v11 = "%{public}s called with null other_protocol";
      goto LABEL_59;
    }

    if (v26 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_output_finished";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_59;
    }

    v19 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v22 = os_log_type_enabled(v9, type);
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_60;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_output_finished";
      v11 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_59;
    }

    if (v22)
    {
      *buf = 136446466;
      v29 = "nw_protocol_http2_transport_output_finished";
      v30 = 2082;
      v31 = v19;
      v21 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (gLogDatapath == 1)
  {
    v14 = a2;
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    a2 = v14;
    if (v16)
    {
      *buf = 136446466;
      v29 = "nw_protocol_http2_transport_output_finished";
      v30 = 2082;
      v31 = handle + 205;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a2 = v14;
    }
  }

  output_handler_context = a2->output_handler_context;
  if (!output_handler_context)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v29 = "nw_protocol_http2_transport_output_finished";
    v30 = 2082;
    v31 = handle + 205;
    v6 = "%{public}s %{public}s couldn't get output handler context during output_finished";
LABEL_13:
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x16u);
    return;
  }

  v4 = output_handler_context[4];
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v29 = "nw_protocol_http2_transport_output_finished";
    v30 = 2082;
    v31 = handle + 205;
    v6 = "%{public}s %{public}s couldn't get stream during output_finished";
    goto LABEL_13;
  }

  if (gLogDatapath == 1)
  {
    v23 = output_handler_context[4];
    v24 = __nwlog_obj();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    v4 = v23;
    if (v25)
    {
      *buf = 136446466;
      v29 = "nw_protocol_http2_transport_output_finished";
      v30 = 2082;
      v31 = handle + 205;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending non-deferred end stream", buf, 0x16u);
      v4 = v23;
    }
  }

  nw_http2_transport_send_end_stream(handle, v4);
}

void nw_protocol_http2_transport_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (gLogDatapath == 1)
      {
        v19 = __nwlog_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v32 = "nw_protocol_http2_transport_disconnected";
          v33 = 2082;
          v34 = handle + 205;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
        }
      }

      nw_protocol_remove_instance(a1);
      v4 = handle[13];
      if (!v4)
      {
        goto LABEL_8;
      }

      if (*v4)
      {
        v5 = *(*v4 + 8);
        if (v5)
        {
          v5();
LABEL_8:
          nw_http2_transport_connection_close(handle);
          return;
        }
      }

      v6 = __nwlog_obj();
      v7 = handle[13];
      *buf = 136446466;
      v32 = "nw_protocol_http2_transport_disconnected";
      v33 = 2048;
      v34 = v7;
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s listen protocol (%p) has invalid disconnected callback", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v29 = 0;
      if (__nwlog_fault(v8, &type, &v29))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (!os_log_type_enabled(v9, type))
          {
            goto LABEL_49;
          }

          v11 = handle[13];
          *buf = 136446466;
          v32 = "nw_protocol_http2_transport_disconnected";
          v33 = 2048;
          v34 = v11;
          v12 = "%{public}s listen protocol (%p) has invalid disconnected callback";
          goto LABEL_48;
        }

        if (v29 != 1)
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (!os_log_type_enabled(v9, type))
          {
            goto LABEL_49;
          }

          v27 = handle[13];
          *buf = 136446466;
          v32 = "nw_protocol_http2_transport_disconnected";
          v33 = 2048;
          v34 = v27;
          v12 = "%{public}s listen protocol (%p) has invalid disconnected callback, backtrace limit exceeded";
          goto LABEL_48;
        }

        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v21 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v21)
          {
            v22 = handle[13];
            *buf = 136446722;
            v32 = "nw_protocol_http2_transport_disconnected";
            v33 = 2048;
            v34 = v22;
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s listen protocol (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_49;
        }

        if (v21)
        {
          v28 = handle[13];
          *buf = 136446466;
          v32 = "nw_protocol_http2_transport_disconnected";
          v33 = 2048;
          v34 = v28;
          v12 = "%{public}s listen protocol (%p) has invalid disconnected callback, no backtrace";
LABEL_48:
          _os_log_impl(&dword_181A37000, v9, v10, v12, buf, 0x16u);
        }
      }

LABEL_49:
      if (v8)
      {
        free(v8);
      }

      goto LABEL_8;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_http2_transport_disconnected";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v14, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v32 = "nw_protocol_http2_transport_disconnected";
        v17 = "%{public}s called with null http2_transport";
        goto LABEL_55;
      }

      if (v29 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v32 = "nw_protocol_http2_transport_disconnected";
        v17 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_55;
      }

      v25 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v26 = os_log_type_enabled(v15, type);
      if (v25)
      {
        if (v26)
        {
          *buf = 136446466;
          v32 = "nw_protocol_http2_transport_disconnected";
          v33 = 2082;
          v34 = v25;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        if (v14)
        {
          goto LABEL_57;
        }

        return;
      }

      if (v26)
      {
        *buf = 136446210;
        v32 = "nw_protocol_http2_transport_disconnected";
        v17 = "%{public}s called with null http2_transport, no backtrace";
LABEL_55:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_protocol_http2_transport_disconnected";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v14, &type, &v29))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v32 = "nw_protocol_http2_transport_disconnected";
      v17 = "%{public}s called with null protocol";
      goto LABEL_55;
    }

    if (v29 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v32 = "nw_protocol_http2_transport_disconnected";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    v23 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v24 = os_log_type_enabled(v15, type);
    if (!v23)
    {
      if (!v24)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v32 = "nw_protocol_http2_transport_disconnected";
      v17 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_55;
    }

    if (v24)
    {
      *buf = 136446466;
      v32 = "nw_protocol_http2_transport_disconnected";
      v33 = 2082;
      v34 = v23;
      _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v23);
  }

LABEL_56:
  if (v14)
  {
LABEL_57:
    free(v14);
  }
}

void nw_protocol_http2_transport_connected(nw_protocol *a1, nw_protocol *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_connected";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v21, &type, &v39))
    {
      goto LABEL_100;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      v24 = "%{public}s called with null protocol";
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v31 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_transport_connected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_100:
        if (!v21)
        {
          return;
        }

        goto LABEL_101;
      }

      if (!v31)
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      v24 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      v24 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_99;
  }

  handle = a1->handle;
  if (!handle)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_connected";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v21, &type, &v39))
    {
      goto LABEL_100;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v39 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_connected";
        v24 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_99;
      }

      v32 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v33 = os_log_type_enabled(v22, type);
      if (!v32)
      {
        if (!v33)
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_transport_connected";
        v24 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_99;
      }

      if (v33)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_connected";
        *&buf[12] = 2082;
        *&buf[14] = v32;
        v34 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_68:
        _os_log_impl(&dword_181A37000, v22, v23, v34, buf, 0x16u);
      }

LABEL_69:
      free(v32);
      if (!v21)
      {
        return;
      }

LABEL_101:
      free(v21);
      return;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_100;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_connected";
    v24 = "%{public}s called with null http2_transport";
LABEL_99:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_100;
  }

  if (!a2)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_connected";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v21, &type, &v39))
    {
      goto LABEL_100;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      v24 = "%{public}s called with null other_protocol";
      goto LABEL_99;
    }

    if (v39 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      v24 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_99;
    }

    v32 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v35 = os_log_type_enabled(v22, type);
    if (!v32)
    {
      if (!v35)
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      v24 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_99;
    }

    if (v35)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      *&buf[12] = 2082;
      *&buf[14] = v32;
      v34 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  if (gLogDatapath == 1)
  {
    v27 = __nwlog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
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
        goto LABEL_9;
      }
    }
  }

  if (nw_hash_table_count(handle[14]))
  {
    v15 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_connected";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s %{public}s Have remaining input handlers, but no connected callback on the default input handler", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v16, &type, &v39))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_84;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      v19 = "%{public}s %{public}s Have remaining input handlers, but no connected callback on the default input handler";
    }

    else if (v39 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v29 = os_log_type_enabled(v17, type);
      if (v28)
      {
        if (v29)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http2_transport_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 205;
          *&buf[22] = 2082;
          v42 = v28;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}s Have remaining input handlers, but no connected callback on the default input handler, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v28);
        goto LABEL_84;
      }

      if (!v29)
      {
LABEL_84:
        if (v16)
        {
          free(v16);
        }

        goto LABEL_86;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      v19 = "%{public}s %{public}s Have remaining input handlers, but no connected callback on the default input handler, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_84;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      v19 = "%{public}s %{public}s Have remaining input handlers, but no connected callback on the default input handler, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0x16u);
    goto LABEL_84;
  }

LABEL_86:
  v37 = __nwlog_obj();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_transport_connected";
    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, "%{public}s No default input handler, skipping connected callback", buf, 0xCu);
  }

LABEL_9:
  if (a1->output_handler != a2)
  {
    if (gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        v9 = "%{public}s %{public}s connected protocol is not our output_handler, ignoring";
LABEL_24:
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, v9, buf, 0x16u);
        return;
      }
    }

    return;
  }

  if (gLogDatapath == 1)
  {
    v36 = __nwlog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if ((*(handle + 204) & 0x10) != 0)
  {
    if (!handle[13])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s no listen handler on server, deferring processing of input and connected state until listen handler is present", buf, 0x16u);
      }

      *(handle + 204) |= 0x40u;
      return;
    }

    if (gLogDatapath != 1)
    {
      goto LABEL_20;
    }

    v10 = __nwlog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http2_transport_process_connected";
    *&buf[12] = 2082;
    *&buf[14] = handle + 205;
    v11 = "%{public}s %{public}s listen handler present, processing input without waiting";
    goto LABEL_90;
  }

  if (gLogDatapath == 1)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_transport_process_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 205;
      v11 = "%{public}s %{public}s not server, processing input without waiting";
LABEL_90:
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x16u);
    }
  }

LABEL_20:
  v12 = *(handle + 204);
  *(handle + 204) = v12 & 0xBF;
  if ((v12 & 6) != 0)
  {
    if (gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        v9 = "%{public}s %{public}s tunnel already connected or closed, ignoring connected event";
        goto LABEL_24;
      }
    }
  }

  else
  {
    nw_http2_transport_send_settings(handle);
    *(handle + 204) |= 2u;
    if (gLogDatapath == 1)
    {
      v38 = __nwlog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_transport_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 205;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s http2 tunnel is now connected", buf, 0x16u);
      }
    }

    nw_protocol_http2_transport_process_input(handle);
    v13 = handle[14];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL45nw_protocol_http2_transport_process_connectedP27nw_protocol_http2_transport_block_invoke;
    v42 = &__block_descriptor_tmp_22_40985;
    v43 = handle;
    nw_hash_table_apply(v13, buf);
  }
}

BOOL nw_protocol_http2_transport_connect(nw_protocol *a1, nw_protocol *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_http2_transport_connect";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v22, &type, &v80))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null protocol";
      goto LABEL_125;
    }

    if (v80 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v61 = os_log_type_enabled(v41, type);
      if (backtrace_string)
      {
        if (!v61)
        {
          goto LABEL_38;
        }

        *buf = 136446466;
        v83 = "nw_protocol_http2_transport_connect";
        v84 = 2082;
        v85 = backtrace_string;
        v31 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_97;
      }

      if (!v61)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_125;
  }

  handle = a1->handle;
  if (!handle)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_http2_transport_connect";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v22, &type, &v80))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null http2_transport";
      goto LABEL_125;
    }

    if (v80 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v62 = os_log_type_enabled(v41, type);
      if (backtrace_string)
      {
        if (!v62)
        {
          goto LABEL_38;
        }

        *buf = 136446466;
        v83 = "nw_protocol_http2_transport_connect";
        v84 = 2082;
        v85 = backtrace_string;
        v31 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
        goto LABEL_97;
      }

      if (!v62)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null http2_transport, no backtrace";
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null http2_transport, backtrace limit exceeded";
    }

LABEL_125:
    v37 = v41;
    v38 = v42;
    v39 = 12;
    goto LABEL_55;
  }

  if (!a2)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_http2_transport_connect";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v22, &type, &v80))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null other_protocol";
      goto LABEL_125;
    }

    if (v80 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v64 = os_log_type_enabled(v41, type);
      if (backtrace_string)
      {
        if (!v64)
        {
          goto LABEL_38;
        }

        *buf = 136446466;
        v83 = "nw_protocol_http2_transport_connect";
        v84 = 2082;
        v85 = backtrace_string;
        v31 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_97:
        v32 = v41;
        v33 = v42;
        v34 = 22;
        goto LABEL_37;
      }

      if (!v64)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http2_transport_connect";
      v25 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_125;
  }

  if (gLogDatapath == 1)
  {
    v45 = a2;
    v46 = a1;
    v47 = __nwlog_obj();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
    a2 = v45;
    v49 = v48;
    a1 = v46;
    if (v49)
    {
      *buf = 136446466;
      v83 = "nw_protocol_http2_transport_connect";
      v84 = 2082;
      v85 = handle + 205;
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a1 = v46;
      a2 = v45;
    }
  }

  if ((handle[204] & 4) != 0)
  {
    if (gLogDatapath == 1)
    {
      v63 = __nwlog_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v83 = "nw_protocol_http2_transport_connect";
        v84 = 2082;
        v85 = handle + 205;
        _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s tunnel already closed, ignoring connect with success", buf, 0x16u);
      }
    }

    return 1;
  }

  output_handler_context = a2->output_handler_context;
  if ((handle[204] & 2) == 0)
  {
    if (!output_handler_context)
    {
      goto LABEL_10;
    }

    v4 = output_handler_context[4];
    if (v4)
    {
      *(v4 + 36) |= 2u;
      if (gLogDatapath == 1)
      {
        v73 = a1;
        v74 = __nwlog_obj();
        v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG);
        a1 = v73;
        if (v75)
        {
          v76 = *(v4 + 32);
          *buf = 136446978;
          v83 = "nw_protocol_http2_transport_connect";
          v84 = 2082;
          v85 = handle + 205;
          v86 = 1024;
          *v87 = v76;
          *&v87[4] = 2048;
          *&v87[6] = v4;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s marked stream id %d (%p) as waiting for connect", buf, 0x26u);
          a1 = v73;
        }
      }

LABEL_10:
      v5 = a1;
      output_handler = a1->output_handler;
      if (output_handler)
      {
        callbacks = output_handler->callbacks;
        if (callbacks)
        {
          connect = callbacks->connect;
          if (connect)
          {
            connect();
            return 1;
          }
        }
      }

      v50 = __nwlog_obj();
      v51 = v5->output_handler;
      v52 = "invalid";
      if (v51)
      {
        name = v51->identifier->name;
        if (name)
        {
          v52 = name;
        }
      }

      *buf = 136446466;
      v83 = "nw_protocol_http2_transport_connect";
      v84 = 2082;
      v85 = v52;
      v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s protocol %{public}s has invalid connect callback", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (__nwlog_fault(v54, &type, &v80))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v55 = __nwlog_obj();
          v56 = type;
          if (!os_log_type_enabled(v55, type))
          {
            goto LABEL_132;
          }

          v57 = v5->output_handler;
          v58 = "invalid";
          if (v57)
          {
            v59 = v57->identifier->name;
            if (v59)
            {
              v58 = v59;
            }
          }

          *buf = 136446466;
          v83 = "nw_protocol_http2_transport_connect";
          v84 = 2082;
          v85 = v58;
          v60 = "%{public}s protocol %{public}s has invalid connect callback";
          goto LABEL_131;
        }

        if (v80 != 1)
        {
          v55 = __nwlog_obj();
          v56 = type;
          if (!os_log_type_enabled(v55, type))
          {
            goto LABEL_132;
          }

          v70 = v5->output_handler;
          v71 = "invalid";
          if (v70)
          {
            v72 = v70->identifier->name;
            if (v72)
            {
              v71 = v72;
            }
          }

          *buf = 136446466;
          v83 = "nw_protocol_http2_transport_connect";
          v84 = 2082;
          v85 = v71;
          v60 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
          goto LABEL_131;
        }

        v65 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v56 = type;
        v66 = os_log_type_enabled(v55, type);
        if (v65)
        {
          if (v66)
          {
            v67 = v5->output_handler;
            v68 = "invalid";
            if (v67)
            {
              v69 = v67->identifier->name;
              if (v69)
              {
                v68 = v69;
              }
            }

            *buf = 136446722;
            v83 = "nw_protocol_http2_transport_connect";
            v84 = 2082;
            v85 = v68;
            v86 = 2082;
            *v87 = v65;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v65);
          goto LABEL_132;
        }

        if (v66)
        {
          v77 = v5->output_handler;
          v78 = "invalid";
          if (v77)
          {
            v79 = v77->identifier->name;
            if (v79)
            {
              v78 = v79;
            }
          }

          *buf = 136446466;
          v83 = "nw_protocol_http2_transport_connect";
          v84 = 2082;
          v85 = v78;
          v60 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
LABEL_131:
          _os_log_impl(&dword_181A37000, v55, v56, v60, buf, 0x16u);
        }
      }

LABEL_132:
      if (v54)
      {
        free(v54);
      }

      return 1;
    }

    v19 = a2;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = handle + 205;
    *buf = 136446722;
    v83 = "nw_protocol_http2_transport_connect";
    v84 = 2082;
    v85 = handle + 205;
    v86 = 2048;
    v21 = v19;
    *v87 = v19;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s hash node for protocol %p did not have stream as extra", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v22, &type, &v80))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446722;
        v83 = "nw_protocol_http2_transport_connect";
        v84 = 2082;
        v85 = v20;
        v86 = 2048;
        *v87 = v21;
        v25 = "%{public}s %{public}s hash node for protocol %p did not have stream as extra";
LABEL_50:
        v37 = v23;
        v38 = v24;
LABEL_54:
        v39 = 32;
LABEL_55:
        _os_log_impl(&dword_181A37000, v37, v38, v25, buf, v39);
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    if (v80 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446722;
        v83 = "nw_protocol_http2_transport_connect";
        v84 = 2082;
        v85 = v20;
        v86 = 2048;
        *v87 = v21;
        v25 = "%{public}s %{public}s hash node for protocol %p did not have stream as extra, backtrace limit exceeded";
        goto LABEL_50;
      }

LABEL_56:
      if (v22)
      {
        free(v22);
      }

      return 0;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v30 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446722;
        v83 = "nw_protocol_http2_transport_connect";
        v84 = 2082;
        v85 = v20;
        v86 = 2048;
        *v87 = v21;
        v25 = "%{public}s %{public}s hash node for protocol %p did not have stream as extra, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_56;
    }

    if (!v30)
    {
LABEL_38:
      free(backtrace_string);
      goto LABEL_56;
    }

    *buf = 136446978;
    v83 = "nw_protocol_http2_transport_connect";
    v84 = 2082;
    v85 = v20;
    v86 = 2048;
    *v87 = v21;
    *&v87[8] = 2082;
    *&v87[10] = backtrace_string;
    v31 = "%{public}s %{public}s hash node for protocol %p did not have stream as extra, dumping backtrace:%{public}s";
    v32 = v23;
    v33 = v24;
    v34 = 42;
LABEL_37:
    _os_log_impl(&dword_181A37000, v32, v33, v31, buf, v34);
    goto LABEL_38;
  }

  if (!output_handler_context)
  {
    v17 = a2;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    v83 = "nw_protocol_http2_transport_connect";
    v84 = 2082;
    v85 = handle + 205;
    v86 = 2048;
    *v87 = v17;
    v14 = "%{public}s %{public}s connect called on protocol %p which is not in protocol hash table";
    v15 = v18;
    v16 = 32;
LABEL_24:
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    return 0;
  }

  v10 = a2;
  v11 = output_handler_context[4];
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = handle + 205;
    *buf = 136446722;
    v83 = "nw_protocol_http2_transport_connect";
    v84 = 2082;
    v85 = handle + 205;
    v86 = 2048;
    *v87 = v10;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s hash node for protocol %p did not have stream as extra", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v22, &type, &v80))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_56;
      }

      *buf = 136446722;
      v83 = "nw_protocol_http2_transport_connect";
      v84 = 2082;
      v85 = v26;
      v86 = 2048;
      *v87 = v10;
      v25 = "%{public}s %{public}s hash node for protocol %p did not have stream as extra";
    }

    else if (v80 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v36 = os_log_type_enabled(v27, type);
      if (v35)
      {
        if (v36)
        {
          *buf = 136446978;
          v83 = "nw_protocol_http2_transport_connect";
          v84 = 2082;
          v85 = v26;
          v86 = 2048;
          *v87 = v10;
          *&v87[8] = 2082;
          *&v87[10] = v35;
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s %{public}s hash node for protocol %p did not have stream as extra, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v35);
        goto LABEL_56;
      }

      if (!v36)
      {
        goto LABEL_56;
      }

      *buf = 136446722;
      v83 = "nw_protocol_http2_transport_connect";
      v84 = 2082;
      v85 = v26;
      v86 = 2048;
      *v87 = v10;
      v25 = "%{public}s %{public}s hash node for protocol %p did not have stream as extra, no backtrace";
    }

    else
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_56;
      }

      *buf = 136446722;
      v83 = "nw_protocol_http2_transport_connect";
      v84 = 2082;
      v85 = v26;
      v86 = 2048;
      *v87 = v10;
      v25 = "%{public}s %{public}s hash node for protocol %p did not have stream as extra, backtrace limit exceeded";
    }

    v37 = v27;
    v38 = v28;
    goto LABEL_54;
  }

  if (nw_http2_transport_stream_connect(handle, output_handler_context[4], a2))
  {
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v13 = *(v11 + 32);
    *buf = 136446978;
    v83 = "nw_protocol_http2_transport_connect";
    v84 = 2082;
    v85 = handle + 205;
    v86 = 1024;
    *v87 = v13;
    *&v87[4] = 2048;
    *&v87[6] = v11;
    v14 = "%{public}s %{public}s nw_http2_transport_stream_connect failed for stream id %d (%p)";
    v15 = v12;
    v16 = 38;
    goto LABEL_24;
  }

  return result;
}

void nw_protocol_http2_transport_parameters_set_stream_receive_window_size(void *a1, uint64_t value)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = xpc_uint64_create(value);
    nw_parameters_set_protocol_value(a1, "streamReceiveWindow", v3);
    if (v3)
    {

      xpc_release(v3);
    }

    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http2_transport_parameters_set_stream_receive_window_size";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol_parameters", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_stream_receive_window_size";
      v8 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_stream_receive_window_size";
      v8 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_http2_transport_parameters_set_stream_receive_window_size";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_stream_receive_window_size";
      v8 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }
}

void nw_protocol_http2_transport_parameters_set_connection_receive_window_size(void *a1, uint64_t value)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = xpc_uint64_create(value);
    nw_parameters_set_protocol_value(a1, "connectionReceiveWindow", v3);
    if (v3)
    {

      xpc_release(v3);
    }

    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http2_transport_parameters_set_connection_receive_window_size";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol_parameters", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_connection_receive_window_size";
      v8 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_connection_receive_window_size";
      v8 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_http2_transport_parameters_set_connection_receive_window_size";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_connection_receive_window_size";
      v8 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }
}

void nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay(void *a1, uint64_t value)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = xpc_uint64_create(value);
    nw_parameters_set_protocol_value(a1, "tunnelTeardownDelay", v3);
    if (v3)
    {

      xpc_release(v3);
    }

    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol_parameters", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay";
      v8 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay";
      v8 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay";
      v8 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }
}

void sub_1826C0028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

NWConcrete_nw_proxy_config *nw_proxy_config_copy(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(NWConcrete_nw_proxy_config);
    v3 = v2;
    if (v2)
    {
      *v2->identifier = *(v1 + 56);
      *v2->fallback_agent_uuid = *(v1 + 72);
      objc_storeStrong(&v2->fallback_config, *(v1 + 11));
      objc_storeStrong(&v3->endpoint, *(v1 + 5));
      v5 = *(v1 + 6);
      if (v5)
      {
        v6 = _nw_array_copy(v5);
        resolved_endpoints = v3->resolved_endpoints;
        v3->resolved_endpoints = v6;
      }

      if (*(v1 + 1))
      {
        v8 = nw_dictionary_create(v5, v4);
        stacks = v3->stacks;
        v3->stacks = v8;

        v10 = *(v1 + 1);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __nw_proxy_config_copy_block_invoke;
        v47[3] = &unk_1E6A39A98;
        v48 = v3;
        nw_dictionary_apply(v10, v47);
      }

      objc_storeStrong(&v3->proxied_transports, *(v1 + 2));
      objc_storeStrong(&v3->required_protocols, *(v1 + 3));
      objc_storeStrong(&v3->remove_protocols, *(v1 + 4));
      v11 = *(v3 + 171);
      *&v3->mode = *(v1 + 19);
      v3->config_epoch = *(v1 + 84);
      v12 = *(v3 + 170) & 0xFE | v1[170] & 1;
      *(v3 + 170) = v12;
      v13 = v12 & 0xFFFFFFFD | (2 * ((v1[170] >> 1) & 1));
      *(v3 + 170) = v13;
      v14 = v13 & 0xFFFFFFFB | (4 * ((v1[170] >> 2) & 1));
      *(v3 + 170) = v14;
      v15 = v11 & 0xFFFFFFDF | (32 * ((v1[171] >> 5) & 1));
      *(v3 + 171) = v15;
      v16 = v14 & 0xFFFFFFEF | (16 * ((v1[170] >> 4) & 1));
      *(v3 + 170) = v16;
      v17 = v16 & 0xFFFFFFDF | (32 * ((v1[170] >> 5) & 1));
      *(v3 + 170) = v17;
      v18 = v17 & 0xFFFFFFF7 | (8 * ((v1[170] >> 3) & 1));
      *(v3 + 170) = v18;
      v19 = v18 & 0xFFFFFFBF | (((v1[170] >> 6) & 1) << 6);
      *(v3 + 170) = v19;
      *(v3 + 170) = v1[170] & 0x80 | v19 & 0x7F;
      v3->multipath_service = *(v1 + 40);
      v20 = v15 & 0xFFFFFFFD | (2 * ((v1[171] >> 1) & 1));
      *(v3 + 171) = v20;
      v21 = v20 & 0xFFFFFFFE | v1[171] & 1;
      *(v3 + 171) = v21;
      v22 = v21 & 0xFFFFFFFB | (4 * ((v1[171] >> 2) & 1));
      *(v3 + 171) = v22;
      v23 = v22 & 0xFFFFFFF7 | (8 * ((v1[171] >> 3) & 1));
      *(v3 + 171) = v23;
      *(v3 + 171) = v23 & 0xEF | v1[171] & 0x10;
      objc_storeStrong(&v3->match_domains, *(v1 + 15));
      objc_storeStrong(&v3->excluded_domains, *(v1 + 16));
      objc_storeStrong(&v3->preferred_domains, *(v1 + 17));
      objc_storeStrong(&v3->alternate_agents, *(v1 + 18));
      objc_storeStrong(&v3->pac_script, *(v1 + 14));
      v24 = *(v3 + 171) & 0xBF | (((v1[171] & 0x40) != 0) << 6);
      *(v3 + 171) = v24;
      *(v3 + 171) = v1[171] & 0x80 | v24 & 0x7F;
      *(v3 + 172) = *(v3 + 172) & 0xFD | v1[172] & 2;
      v25 = *(v1 + 13);
      if (v25)
      {
        v26 = v25;
        v27 = v26[2];

        password = nw_authentication_credential_get_password(*(v1 + 13));
        nw_proxy_config_set_username_and_password(&v3->super, v27, password);
      }

      v29 = v3;
      goto LABEL_17;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    *buf = 136446210;
    v52 = "nw_proxy_config_copy";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s [nw_proxy_config init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v31, &type, &v49))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v52 = "nw_proxy_config_copy";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s [nw_proxy_config init] failed", buf, 0xCu);
        }
      }

      else if (v49 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v36 = type;
        v37 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v37)
          {
            *buf = 136446466;
            v52 = "nw_proxy_config_copy";
            v53 = 2082;
            v54 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v36, "%{public}s [nw_proxy_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v31)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v37)
        {
          *buf = 136446210;
          v52 = "nw_proxy_config_copy";
          _os_log_impl(&dword_181A37000, v32, v36, "%{public}s [nw_proxy_config init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v38 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v52 = "nw_proxy_config_copy";
          _os_log_impl(&dword_181A37000, v32, v38, "%{public}s [nw_proxy_config init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v31)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    free(v31);
    goto LABEL_17;
  }

  v39 = __nwlog_obj();
  *buf = 136446210;
  v52 = "nw_proxy_config_copy";
  v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null existing_config", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (__nwlog_fault(v40, &type, &v49))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v52 = "nw_proxy_config_copy";
        _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null existing_config", buf, 0xCu);
      }
    }

    else if (v49 == 1)
    {
      v43 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v41, type);
      if (v43)
      {
        if (v45)
        {
          *buf = 136446466;
          v52 = "nw_proxy_config_copy";
          v53 = 2082;
          v54 = v43;
          _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null existing_config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        goto LABEL_47;
      }

      if (v45)
      {
        *buf = 136446210;
        v52 = "nw_proxy_config_copy";
        _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null existing_config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v52 = "nw_proxy_config_copy";
        _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null existing_config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_47:
  if (v40)
  {
    free(v40);
  }

  v3 = 0;
LABEL_18:

  return v3;
}

uint64_t __nw_proxy_config_copy_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = nw_protocol_stack_copy(a3);
  nw_dictionary_set_value(*(*(a1 + 32) + 8), a2, v5);

  return 1;
}

void nw_proxy_config_set_username_and_password(nw_proxy_config_t proxy_config, const char *username, const char *password)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = proxy_config;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_config_set_username_and_password";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_set_username_and_password";
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
          v25 = "nw_proxy_config_set_username_and_password";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v9);
        goto LABEL_5;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_proxy_config_set_username_and_password";
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
        v25 = "nw_proxy_config_set_username_and_password";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (username)
  {
    v6 = [[NWConcrete_nw_authentication_credential alloc] initWithType:?];
    isa = v5[13].isa;
    v5[13].isa = v6;

    nw_authentication_credential_set_username(v5[13].isa, username);
    if (password)
    {
      nw_authentication_credential_set_password(v5[13].isa, password);
    }

    goto LABEL_5;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_proxy_config_set_username_and_password";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null username", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_set_username_and_password";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null username", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_proxy_config_set_username_and_password";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null username, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
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
      v25 = "nw_proxy_config_set_username_and_password";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null username, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_proxy_config_set_username_and_password";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null username, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_40;
  }

LABEL_5:
}

NWConcrete_nw_proxy_config *nw_proxy_config_create_merged(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3[38] == 1)
  {
    if (v4[38] == 1)
    {
      v6 = nw_proxy_config_copy(v3);
      objc_storeStrong(&v6->endpoint, v5[5]);
      v7 = *(v6 + 171) & 0x7F;
      *(v6 + 171) = v7;
      if (*(v5 + 170))
      {
        *(v6 + 170) |= 1u;
        if ((*(v5 + 170) & 2) == 0)
        {
LABEL_5:
          if ((*(v5 + 171) & 0x20) == 0)
          {
LABEL_7:
            v6->multipath_service = *(v5 + 40);
            v8 = v7 & 0xFD | *(v5 + 171) & 2;
            *(v6 + 171) = v8;
            v9 = v8 & 0x7E | *(v5 + 171) & 1;
            *(v6 + 171) = v9;
            v10 = v9 & 0xFB | *(v5 + 171) & 4;
            *(v6 + 171) = v10;
            *(v6 + 171) = v10 & 0xF7 | *(v5 + 171) & 8;
            stacks = v6->stacks;
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __nw_proxy_config_create_merged_block_invoke;
            v26[3] = &unk_1E6A39A98;
            v27 = v5;
            nw_dictionary_apply(stacks, v26);

            goto LABEL_8;
          }

LABEL_6:
          v7 |= 0x20u;
          *(v6 + 171) = v7;
          goto LABEL_7;
        }
      }

      else if ((*(v5 + 170) & 2) == 0)
      {
        goto LABEL_5;
      }

      *(v6 + 170) |= 2u;
      if ((*(v5 + 171) & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_proxy_config_create_merged";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null (lower_config->mode == nw_proxy_mode_protocol)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v14, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v31 = "nw_proxy_config_create_merged";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null (lower_config->mode == nw_proxy_mode_protocol)", buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }

      if (v28 != 1)
      {
        v15 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v31 = "nw_proxy_config_create_merged";
          _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null (lower_config->mode == nw_proxy_mode_protocol), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_43;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v31 = "nw_proxy_config_create_merged";
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null (lower_config->mode == nw_proxy_mode_protocol), no backtrace", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if (v23)
      {
        *buf = 136446466;
        v31 = "nw_proxy_config_create_merged";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null (lower_config->mode == nw_proxy_mode_protocol), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  else
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_proxy_config_create_merged";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null (config->mode == nw_proxy_mode_protocol)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v14, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v31 = "nw_proxy_config_create_merged";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null (config->mode == nw_proxy_mode_protocol)", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if (v28 != 1)
      {
        v15 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v31 = "nw_proxy_config_create_merged";
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null (config->mode == nw_proxy_mode_protocol), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_43;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v31 = "nw_proxy_config_create_merged";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null (config->mode == nw_proxy_mode_protocol), no backtrace", buf, 0xCu);
        }

        goto LABEL_43;
      }

      if (v21)
      {
        *buf = 136446466;
        v31 = "nw_proxy_config_create_merged";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null (config->mode == nw_proxy_mode_protocol), dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_31:

      free(backtrace_string);
    }
  }

LABEL_44:
  if (v14)
  {
    free(v14);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

uint64_t __nw_proxy_config_create_merged_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_protocol_stack_copy_transport_protocol(v4);
  if (v5)
  {
    v6 = _nw_protocol_options_copy_definition();
  }

  else
  {
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    v6 = g_tcp_definition;
  }

  v7 = v6;
  v38 = 0;
  v8 = nw_proxy_config_copy_protocol_stack(*(a1 + 32), v6, &v38);
  if (v8)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__41721;
    v36 = __Block_byref_object_dispose__41722;
    v37 = 0;
    iterate_block[0] = MEMORY[0x1E69E9820];
    iterate_block[1] = 3221225472;
    iterate_block[2] = __nw_proxy_config_create_merged_block_invoke_27;
    iterate_block[3] = &unk_1E6A395C0;
    iterate_block[4] = &v32;
    nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__41721;
    v29[4] = __Block_byref_object_dispose__41722;
    v30 = 0;
    v9 = v33[5];
    if (v9)
    {
      v10 = v9;
      type = _nw_endpoint_get_type(v10);

      if (type == 4)
      {
        v12 = nw_endpoint_copy_host_port_endpoint_for_url(v33[5]);
        v13 = v33[5];
        v33[5] = v12;
      }

      if (nw_endpoint_get_type(v33[5]) == nw_endpoint_type_host)
      {
        hostname = nw_endpoint_get_hostname(v33[5]);
        v15 = strlen(hostname);
        port = nw_endpoint_get_port(v33[5]);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __nw_proxy_config_create_merged_block_invoke_2;
        v27[3] = &unk_1E6A32390;
        v28 = port;
        v27[5] = v15;
        v27[6] = hostname;
        v27[4] = v29;
        v17 = v8;
        v18 = v27;
        _nw_protocol_stack_iterate_application_protocols(v17, v18);
      }
    }

    if (v5 && v38 == 3)
    {
      nw_protocol_stack_append_application_protocol(v4, v5);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __nw_proxy_config_create_merged_block_invoke_4;
    v24[3] = &unk_1E6A323B8;
    v26 = v29;
    v19 = v4;
    v25 = v19;
    v20 = v8;
    v21 = v24;
    _nw_protocol_stack_iterate_application_protocols(v20, v21);

    v22 = _nw_protocol_stack_copy_transport_protocol();
    nw_protocol_stack_set_transport_protocol(v19, v22);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(&v32, 8);
  }

  return 1;
}

void sub_1826C1884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41721(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __nw_proxy_config_create_merged_block_invoke_27(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = nw_protocol_options_copy_proxy_endpoint(v4);
  if (v3)
  {
    if ((nw_protocol_options_proxy_endpoint_should_override_stack(v4) & 1) == 0)
    {
      nw_protocol_options_set_proxy_endpoint(v4, v3, 1);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  }
}

void __nw_proxy_config_create_merged_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __nw_proxy_config_create_merged_block_invoke_3;
  v7[3] = &unk_1E6A32368;
  v8 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = &v9;
  v7[5] = v5;
  v7[6] = v6;
  nw_protocol_options_enumerate_proxy_next_hops(v4, v7);
  if (*(v10 + 24) == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  _Block_object_dispose(&v9, 8);
}

void sub_1826C1AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __nw_proxy_config_create_merged_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    if (v5 != v3)
    {
      goto LABEL_7;
    }

    *(v4 + 40) = 0;
    v7 = v3;

    v3 = v7;
  }

  v8 = v3;
  v6 = nw_protocol_options_copy(v3);
  if (nw_protocol_options_is_masque(v6))
  {
    nw_masque_options_set_forced_protocol(v6, 0);
    nw_masque_options_set_target_endpoint(v6, 0);
  }

  nw_protocol_stack_append_application_protocol(*(a1 + 32), v6);

  v3 = v8;
LABEL_7:
}

void __nw_proxy_config_create_merged_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    endpoint = v3;
    type = nw_endpoint_get_type(v3);
    v4 = endpoint;
    if (type == nw_endpoint_type_host)
    {
      v6 = *(a1 + 56);
      port = nw_endpoint_get_port(endpoint);
      v4 = endpoint;
      if (v6 == port)
      {
        if ((hostname = nw_endpoint_get_hostname(endpoint), v9 = strlen(hostname), v10 = *(a1 + 40), v4 = endpoint, v9 > v10) && (v11 = strcmp(&hostname[v9 - v10], *(a1 + 48)), v4 = endpoint, !v11) || v9 == v10 && (v12 = strcmp(hostname, *(a1 + 48)), v4 = endpoint, !v12))
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }
      }
    }
  }
}

uint64_t nw_proxy_config_is_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    is_equal = 1;
    goto LABEL_34;
  }

  is_equal = 0;
  if (v3 && v4)
  {
    v7 = *(v3 + 1);
    v8 = *(v5 + 1);
    if (v7 != v8)
    {
      is_equal = 0;
      if (!v7 || !v8)
      {
        goto LABEL_34;
      }

      count = nw_dictionary_get_count(v7);
      if (count != nw_dictionary_get_count(*(v5 + 1)))
      {
        goto LABEL_33;
      }

      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      v10 = *(v3 + 1);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __nw_proxy_config_is_equal_block_invoke;
      v41[3] = &unk_1E6A3BF70;
      v42 = v5;
      v43 = &v44;
      nw_dictionary_apply(v10, v41);
      LOBYTE(v10) = *(v45 + 24);

      _Block_object_dispose(&v44, 8);
      if (v10)
      {
        goto LABEL_33;
      }
    }

    v11 = *(v3 + 6);
    v12 = *(v5 + 6);
    if (v11 != v12)
    {
      is_equal = 0;
      if (!v11 || !v12)
      {
        goto LABEL_34;
      }

      v13 = _nw_array_get_count(v11);
      v14 = *(v5 + 6);
      if (v14)
      {
        v14 = _nw_array_get_count(v14);
      }

      if (v13 != v14)
      {
        goto LABEL_33;
      }

      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      v15 = *(v3 + 6);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __nw_proxy_config_is_equal_block_invoke_2;
      v38[3] = &unk_1E6A3BB28;
      v16 = v5;
      v39 = v16;
      v40 = &v44;
      if (v15)
      {
        _nw_array_apply(v15, v38);
        v17 = *(v45 + 24);

        _Block_object_dispose(&v44, 8);
        if (v17)
        {
          goto LABEL_33;
        }
      }

      else
      {

        _Block_object_dispose(&v44, 8);
      }
    }

    v18 = *(v5 + 2);
    v19 = *(v3 + 2);
    v20 = v18;
    v21 = v20;
    v22 = v19 == v20;
    if (v19 != v20 && v19 && v20)
    {
      v22 = xpc_equal(v19, v20);
    }

    if (!v22)
    {
      goto LABEL_33;
    }

    if (!nw_unordered_xpc_array_is_equal(*(v3 + 3), *(v5 + 3)))
    {
      goto LABEL_33;
    }

    if (!nw_unordered_xpc_array_is_equal(*(v3 + 4), *(v5 + 4)))
    {
      goto LABEL_33;
    }

    v23 = *(v3 + 13);
    v24 = *(v5 + 13);
    if (v23 != v24 && !nw_authentication_credential_is_equal(v23, v24))
    {
      goto LABEL_33;
    }

    if (*(v3 + 38) != *(v5 + 38))
    {
      goto LABEL_33;
    }

    if (*(v3 + 39) != *(v5 + 39))
    {
      goto LABEL_33;
    }

    if (v3[84] != v5[84])
    {
      goto LABEL_33;
    }

    v25 = *(v5 + 170) ^ *(v3 + 170);
    if ((v25 & 7) != 0)
    {
      goto LABEL_33;
    }

    is_equal = 0;
    if (v25 <= 0x3F)
    {
      v27 = *(v5 + 171) ^ *(v3 + 171);
      if (!(v27 & 0x20 | v25 & 0x38))
      {
        is_equal = 0;
        if ((v27 & 0xFFFFFFDF) == 0 && *(v3 + 40) == *(v5 + 40))
        {
          if (((*(v5 + 172) ^ *(v3 + 172)) & 3) != 0 || uuid_compare(v3 + 56, v5 + 56) || uuid_compare(v3 + 72, v5 + 72) || !nw_proxy_config_is_equal(*(v3 + 11), *(v5 + 11)))
          {
            goto LABEL_33;
          }

          v28 = *(v3 + 15);
          v29 = *(v5 + 15);
          if (v28 != v29)
          {
            is_equal = 0;
            if (!v28 || !v29)
            {
              goto LABEL_34;
            }

            if (!xpc_equal(v28, v29))
            {
              goto LABEL_33;
            }
          }

          v30 = *(v3 + 16);
          v31 = *(v5 + 16);
          if (v30 != v31)
          {
            is_equal = 0;
            if (!v30 || !v31)
            {
              goto LABEL_34;
            }

            if (!xpc_equal(v30, v31))
            {
              goto LABEL_33;
            }
          }

          v32 = *(v3 + 17);
          v33 = *(v5 + 17);
          if (v32 != v33)
          {
            is_equal = 0;
            if (!v32 || !v33)
            {
              goto LABEL_34;
            }

            if (!xpc_equal(v32, v33))
            {
              goto LABEL_33;
            }
          }

          v34 = *(v3 + 18);
          v35 = *(v5 + 18);
          if (v34 != v35)
          {
            is_equal = 0;
            if (!v34 || !v35)
            {
              goto LABEL_34;
            }

            if (!xpc_equal(v34, v35))
            {
              goto LABEL_33;
            }
          }

          v36 = *(v3 + 14);
          v37 = *(v5 + 14);
          if (v36 == v37)
          {
LABEL_63:
            is_equal = nw_endpoint_is_equal(*(v3 + 5), *(v5 + 5), 0);
            goto LABEL_34;
          }

          is_equal = 0;
          if (v36 && v37)
          {
            if (xpc_equal(v36, v37))
            {
              goto LABEL_63;
            }

LABEL_33:
            is_equal = 0;
          }
        }
      }
    }
  }

LABEL_34:

  return is_equal;
}

void sub_1826C20E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_proxy_config_is_equal_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nw_dictionary_copy_value(*(*(a1 + 32) + 8), a2);
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

LABEL_9:
      v11 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_10;
    }

    is_equal = _nw_protocol_stack_is_equal(v7, v8, 0);

    if ((is_equal & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v11 = 1;
LABEL_10:

  return v11;
}

uint64_t __nw_proxy_config_is_equal_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  if (v6)
  {
    v7 = _nw_array_get_object_at_index(v6, a2);
  }

  else
  {
    v7 = 0;
  }

  is_equal = nw_endpoint_is_equal(v5, v7, 0);
  if ((is_equal & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return is_equal;
}

size_t nw_proxy_config_get_hash(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v3 = v1[5];
    v4 = v3;
    if (v3)
    {
      hash = _nw_endpoint_get_hash(v3);
    }

    else
    {
      hash = 0;
    }

    v27[3] ^= hash;
    v7 = v2[1];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __nw_proxy_config_get_hash_block_invoke;
    v25[3] = &unk_1E6A323E0;
    v25[4] = &v26;
    nw_dictionary_apply(v7, v25);
    v8 = v2[2];
    if (v8)
    {
      v9 = xpc_hash(v8);
      v27[3] ^= v9;
    }

    v10 = v2[3];
    if (v10)
    {
      v11 = xpc_hash(v10);
      v27[3] ^= v11;
    }

    v12 = v2[4];
    if (v12)
    {
      v13 = xpc_hash(v12);
      v27[3] ^= v13;
    }

    v14 = v2[14];
    if (v14)
    {
      v15 = xpc_hash(v14);
      v27[3] ^= v15;
    }

    v16 = v2[15];
    if (v16)
    {
      v17 = xpc_hash(v16);
      v27[3] ^= v17;
    }

    v18 = v2[16];
    if (v18)
    {
      v19 = xpc_hash(v18);
      v27[3] ^= v19;
    }

    v20 = v2[17];
    if (v20)
    {
      v21 = xpc_hash(v20);
      v27[3] ^= v21;
    }

    v22 = v2[18];
    if (v22)
    {
      v23 = xpc_hash(v22);
      v6 = v27[3] ^ v23;
      v27[3] = v6;
    }

    else
    {
      v6 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1826C2488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_proxy_config_get_hash_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  hash = a3;
  v5 = hash;
  if (hash)
  {
    hash = _nw_protocol_stack_get_hash();
  }

  *(*(*(a1 + 32) + 8) + 24) ^= hash;

  return 1;
}

void nw_proxy_config_set_type(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[39] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_set_type";
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
        v15 = "nw_proxy_config_set_type";
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
          v15 = "nw_proxy_config_set_type";
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
        v15 = "nw_proxy_config_set_type";
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
        v15 = "nw_proxy_config_set_type";
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

NWConcrete_nw_proxy_config *nw_proxy_config_create(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (!v4)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_proxy_config_create";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null proxy_endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v26, &type, &v40))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null proxy_endpoint", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v27, type);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          v43 = "nw_proxy_config_create";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v33, "%{public}s called with null proxy_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v26)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      if (v34)
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v27, v33, "%{public}s called with null proxy_endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null proxy_endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_60;
  }

  if (!v5)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_proxy_config_create";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null proxy_options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v26, &type, &v40))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null proxy_options", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v27, type);
      if (v35)
      {
        if (v37)
        {
          *buf = 136446466;
          v43 = "nw_proxy_config_create";
          v44 = 2082;
          v45 = v35;
          _os_log_impl(&dword_181A37000, v27, v36, "%{public}s called with null proxy_options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
LABEL_61:
        if (!v26)
        {
LABEL_63:
          v8 = 0;
          goto LABEL_27;
        }

LABEL_62:
        free(v26);
        goto LABEL_63;
      }

      if (v37)
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v27, v36, "%{public}s called with null proxy_options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null proxy_options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_60:

    goto LABEL_61;
  }

  v7 = objc_alloc_init(NWConcrete_nw_proxy_config);
  v8 = v7;
  if (v7)
  {
    v7->mode = 1;
    objc_storeStrong(&v7->endpoint, a1);
    v11 = nw_dictionary_create(v9, v10);
    stacks = v8->stacks;
    v8->stacks = v11;

    empty = _nw_protocol_stack_create_empty();
    nw_protocol_stack_append_application_protocol(empty, v6);
    v14 = v8->stacks;
    if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
    {
      v31 = v8->stacks;
      dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
      v14 = v31;
    }

    nw_dictionary_set_value(v14, nw_proxy_config_default_transport(void)::default_transport_string, empty);
    v15 = v8;

    goto LABEL_26;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  *buf = 136446210;
  v43 = "nw_proxy_config_create";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s [nw_proxy_config init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v17, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s [nw_proxy_config init] failed", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v20 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v21 = type;
      v22 = os_log_type_enabled(v18, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v43 = "nw_proxy_config_create";
          v44 = 2082;
          v45 = v20;
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s [nw_proxy_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (v22)
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v18, v21, "%{public}s [nw_proxy_config init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v43 = "nw_proxy_config_create";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s [nw_proxy_config init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v17)
  {
LABEL_25:
    free(v17);
  }

LABEL_26:

LABEL_27:
  return v8;
}

NWConcrete_nw_proxy_config *nw_proxy_config_create_with_stack(void *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = objc_alloc_init(NWConcrete_nw_proxy_config);
      v8 = v7;
      if (v7)
      {
        v7->mode = 1;
        objc_storeStrong(&v7->endpoint, a1);
        v11 = nw_dictionary_create(v9, v10);
        stacks = v8->stacks;
        v8->stacks = v11;

        v13 = v8->stacks;
        if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
        {
          v30 = v8->stacks;
          dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
          v13 = v30;
        }

        nw_dictionary_set_value(v13, nw_proxy_config_default_transport(void)::default_transport_string, v6);
        v14 = v8;
        goto LABEL_26;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      *buf = 136446210;
      v41 = "nw_proxy_config_create_with_stack";
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s [nw_proxy_config init] failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v16, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v41 = "nw_proxy_config_create_with_stack";
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [nw_proxy_config init] failed", buf, 0xCu);
          }
        }

        else if (v38 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v20 = type;
          v21 = os_log_type_enabled(v17, type);
          if (backtrace_string)
          {
            if (v21)
            {
              *buf = 136446466;
              v41 = "nw_proxy_config_create_with_stack";
              v42 = 2082;
              v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v17, v20, "%{public}s [nw_proxy_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v16)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          if (v21)
          {
            *buf = 136446210;
            v41 = "nw_proxy_config_create_with_stack";
            _os_log_impl(&dword_181A37000, v17, v20, "%{public}s [nw_proxy_config init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v41 = "nw_proxy_config_create_with_stack";
            _os_log_impl(&dword_181A37000, v17, v22, "%{public}s [nw_proxy_config init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v16)
      {
LABEL_26:

        goto LABEL_27;
      }

LABEL_25:
      free(v16);
      goto LABEL_26;
    }

    v28 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_proxy_config_create_with_stack";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null stack", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v25, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v41 = "nw_proxy_config_create_with_stack";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null stack", buf, 0xCu);
        }

LABEL_59:

        goto LABEL_60;
      }

      if (v38 != 1)
      {
        v26 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v41 = "nw_proxy_config_create_with_stack";
          _os_log_impl(&dword_181A37000, v26, v37, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_59;
      }

      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v26, type);
      if (!v31)
      {
        if (v35)
        {
          *buf = 136446210;
          v41 = "nw_proxy_config_create_with_stack";
          _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null stack, no backtrace", buf, 0xCu);
        }

        goto LABEL_59;
      }

      if (v35)
      {
        *buf = 136446466;
        v41 = "nw_proxy_config_create_with_stack";
        v42 = 2082;
        v43 = v31;
        _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_47;
    }
  }

  else
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_proxy_config_create_with_stack";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null proxy_endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v25, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v41 = "nw_proxy_config_create_with_stack";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null proxy_endpoint", buf, 0xCu);
        }

        goto LABEL_59;
      }

      if (v38 != 1)
      {
        v26 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v41 = "nw_proxy_config_create_with_stack";
          _os_log_impl(&dword_181A37000, v26, v36, "%{public}s called with null proxy_endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_59;
      }

      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v26, type);
      if (!v31)
      {
        if (v33)
        {
          *buf = 136446210;
          v41 = "nw_proxy_config_create_with_stack";
          _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null proxy_endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_59;
      }

      if (v33)
      {
        *buf = 136446466;
        v41 = "nw_proxy_config_create_with_stack";
        v42 = 2082;
        v43 = v31;
        _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null proxy_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_47:

      free(v31);
    }
  }

LABEL_60:
  if (v25)
  {
    free(v25);
  }

  v8 = 0;
LABEL_27:

  return v8;
}