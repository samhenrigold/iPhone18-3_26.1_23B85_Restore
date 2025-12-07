uint64_t nw_socket_get_path(nw_protocol *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v47 = "nw_socket_get_path";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (!__nwlog_fault(v7, &type, &v44))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_path";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v44 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v47 = "nw_socket_get_path";
                v48 = 2082;
                v49 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v47 = "nw_socket_get_path";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_path";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[15];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v47 = "nw_socket_get_path";
        v48 = 2082;
        v49 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_socket_get_path";
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v38, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_path";
        v41 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
      }
    }

    else if (v44 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v43 = os_log_type_enabled(v39, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v47 = "nw_socket_get_path";
          v48 = 2082;
          v49 = v42;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_84;
      }

      if (v43)
      {
        *buf = 136446210;
        v47 = "nw_socket_get_path";
        v41 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_path";
        v41 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v38)
  {
    free(v38);
  }

  return 0;
}

unint64_t _nw_ip_options_get_use_minimum_mtu()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v1 = (result + *(*result + 128));
    result = swift_beginAccess();
    v2 = *v1 | (*(v1 + 4) << 32);
    if (v2 == 3)
    {
      __break(1u);
    }

    else
    {

      return HIDWORD(v2) & 1;
    }
  }

  return result;
}

uint64_t nw_socket_set_bidirectional_tcp_sockopts(uint64_t a1, uint64_t a2)
{
  v114 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v94 = __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s called with null socket_handler", buf, 12);
    v109[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v95, v109, type))
    {
      goto LABEL_322;
    }

    if (v109[0] == OS_LOG_TYPE_FAULT)
    {
      v96 = __nwlog_obj();
      v97 = v109[0];
      if (!os_log_type_enabled(v96, v109[0]))
      {
        goto LABEL_322;
      }

      *buf = 136446210;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v98 = "%{public}s called with null socket_handler";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v96 = __nwlog_obj();
      v97 = v109[0];
      v100 = os_log_type_enabled(v96, v109[0]);
      if (backtrace_string)
      {
        if (v100)
        {
          *buf = 136446466;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 2082;
          *v113 = backtrace_string;
          _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_322;
      }

      if (!v100)
      {
LABEL_322:
        if (v95)
        {
          free(v95);
        }

        return 0;
      }

      *buf = 136446210;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v98 = "%{public}s called with null socket_handler, no backtrace";
    }

    else
    {
      v96 = __nwlog_obj();
      v97 = v109[0];
      if (!os_log_type_enabled(v96, v109[0]))
      {
        goto LABEL_322;
      }

      *buf = 136446210;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v98 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v96, v97, v98, buf, 0xCu);
    goto LABEL_322;
  }

  if (*(a1 + 320) == 1)
  {
    if ((*(a1 + 317) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 2082;
        *v113 = a1 + 324;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Ignoring TCP options for UNIX socket", buf, 0x16u);
        return 1;
      }
    }

    return 1;
  }

  *v109 = 1;
  if (_nw_tcp_options_get_reduce_buffering())
  {
    v5 = 0x2000;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 317) = *(a1 + 317) & 0xDFFF | v5;
  if (_nw_tcp_options_get_no_delay())
  {
    nw_socket_set_no_delay(a1, 1);
  }

  if (_nw_tcp_options_get_no_push())
  {
    nw_socket_set_no_push(a1, 1);
  }

  if (_nw_tcp_options_get_disable_ack_stretching() && setsockopt(*(a1 + 188), 6, 259, v109, 4u))
  {
    v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 2082;
      *v113 = a1 + 324;
      *&v113[8] = 1024;
      *&v113[10] = v6;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (v6 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = 22;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_40;
    }

    *buf = 136446466;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 1024;
    *v113 = v6;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    v107[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v9, type, v107))
    {
      goto LABEL_38;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_38;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v6;
      v12 = "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d";
    }

    else if (v107[0] == OS_LOG_TYPE_INFO)
    {
      v13 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v14 = os_log_type_enabled(v10, type[0]);
      if (v13)
      {
        if (v14)
        {
          *buf = 136446722;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = v6;
          *&v113[4] = 2082;
          *&v113[6] = v13;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v13);
        goto LABEL_38;
      }

      if (!v14)
      {
LABEL_38:
        if (v9)
        {
          free(v9);
        }

        goto LABEL_40;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v6;
      v12 = "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (!os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_38;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v6;
      v12 = "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x12u);
    goto LABEL_38;
  }

LABEL_40:
  if (!_nw_tcp_options_get_no_options() || !setsockopt(*(a1 + 188), 6, 8, v109, 4u))
  {
    goto LABEL_65;
  }

  v15 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v16 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 2082;
    *v113 = a1 + 324;
    *&v113[8] = 1024;
    *&v113[10] = v15;
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if (v15 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = 22;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_65;
  }

  *buf = 136446466;
  v111 = "nw_socket_set_bidirectional_tcp_sockopts";
  v112 = 1024;
  *v113 = v15;
  LODWORD(v101) = 18;
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d", buf, v101);
  type[0] = OS_LOG_TYPE_ERROR;
  v107[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v18, type, v107))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_63;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v15;
      v21 = "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d";
      goto LABEL_62;
    }

    if (v107[0] != OS_LOG_TYPE_INFO)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (!os_log_type_enabled(v19, type[0]))
      {
        goto LABEL_63;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v15;
      v21 = "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_62;
    }

    v22 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type[0];
    v23 = os_log_type_enabled(v19, type[0]);
    if (v22)
    {
      if (v23)
      {
        *buf = 136446722;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v15;
        *&v113[4] = 2082;
        *&v113[6] = v22;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v22);
      goto LABEL_63;
    }

    if (v23)
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v15;
      v21 = "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d, no backtrace";
LABEL_62:
      _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0x12u);
    }
  }

LABEL_63:
  if (v18)
  {
    free(v18);
  }

LABEL_65:
  if (!_nw_tcp_options_get_no_timewait() || !setsockopt(*(a1 + 188), 6, 520, v109, 4u))
  {
    goto LABEL_90;
  }

  v24 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v25 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 2082;
    *v113 = a1 + 324;
    *&v113[8] = 1024;
    *&v113[10] = v24;
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = gLogObj;
  if (v24 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = 22;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_90;
  }

  *buf = 136446466;
  v111 = "nw_socket_set_bidirectional_tcp_sockopts";
  v112 = 1024;
  *v113 = v24;
  LODWORD(v101) = 18;
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d", buf, v101);
  type[0] = OS_LOG_TYPE_ERROR;
  v107[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v27, type, v107))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_88;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v24;
      v30 = "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d";
      goto LABEL_87;
    }

    if (v107[0] != OS_LOG_TYPE_INFO)
    {
      v28 = __nwlog_obj();
      v29 = type[0];
      if (!os_log_type_enabled(v28, type[0]))
      {
        goto LABEL_88;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v24;
      v30 = "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_87;
    }

    v31 = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = type[0];
    v32 = os_log_type_enabled(v28, type[0]);
    if (v31)
    {
      if (v32)
      {
        *buf = 136446722;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v24;
        *&v113[4] = 2082;
        *&v113[6] = v31;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v31);
      goto LABEL_88;
    }

    if (v32)
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v24;
      v30 = "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, no backtrace";
LABEL_87:
      _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0x12u);
    }
  }

LABEL_88:
  if (v27)
  {
    free(v27);
  }

LABEL_90:
  maximum_segment_size = _nw_tcp_options_get_maximum_segment_size();
  if (maximum_segment_size)
  {
    nw_socket_set_maximum_segment_size(a1, maximum_segment_size);
  }

  *type = _nw_tcp_options_get_retransmit_connection_drop_time();
  if (*type && setsockopt(*(a1 + 188), 6, 128, type, 4u))
  {
    v34 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v35 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 2082;
      *v113 = a1 + 324;
      *&v113[8] = 1024;
      *&v113[10] = v34;
      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (v34 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = 22;
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_117;
    }

    *buf = 136446466;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 1024;
    *v113 = v34;
    LODWORD(v101) = 18;
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d", buf, v101);
    v107[0] = OS_LOG_TYPE_ERROR;
    v106[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v37, v107, v106))
    {
      goto LABEL_115;
    }

    if (v107[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      v39 = v107[0];
      if (!os_log_type_enabled(gLogObj, v107[0]))
      {
        goto LABEL_115;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v34;
      v40 = "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d";
    }

    else if (v106[0] == OS_LOG_TYPE_INFO)
    {
      v41 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      v39 = v107[0];
      v42 = os_log_type_enabled(gLogObj, v107[0]);
      if (v41)
      {
        if (v42)
        {
          *buf = 136446722;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = v34;
          *&v113[4] = 2082;
          *&v113[6] = v41;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v41);
        goto LABEL_115;
      }

      if (!v42)
      {
LABEL_115:
        if (v37)
        {
          free(v37);
        }

        goto LABEL_117;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v34;
      v40 = "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      v39 = v107[0];
      if (!os_log_type_enabled(gLogObj, v107[0]))
      {
        goto LABEL_115;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v34;
      v40 = "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0x12u);
    goto LABEL_115;
  }

LABEL_117:
  if (!_nw_tcp_options_get_retransmit_fin_drop() || !setsockopt(*(a1 + 188), 6, 256, v109, 4u))
  {
    goto LABEL_142;
  }

  v43 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v44 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 2082;
    *v113 = a1 + 324;
    *&v113[8] = 1024;
    *&v113[10] = v43;
    _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v45 = gLogObj;
  if (v43 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = 22;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_142;
  }

  *buf = 136446466;
  v111 = "nw_socket_set_bidirectional_tcp_sockopts";
  v112 = 1024;
  *v113 = v43;
  LODWORD(v101) = 18;
  v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d", buf, v101);
  v107[0] = OS_LOG_TYPE_ERROR;
  v106[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v46, v107, v106))
  {
    if (v107[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v47 = gLogObj;
      v48 = v107[0];
      if (!os_log_type_enabled(gLogObj, v107[0]))
      {
        goto LABEL_140;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v43;
      v49 = "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d";
      goto LABEL_139;
    }

    if (v106[0] != OS_LOG_TYPE_INFO)
    {
      v47 = __nwlog_obj();
      v48 = v107[0];
      if (!os_log_type_enabled(v47, v107[0]))
      {
        goto LABEL_140;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v43;
      v49 = "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_139;
    }

    v50 = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = v107[0];
    v51 = os_log_type_enabled(v47, v107[0]);
    if (v50)
    {
      if (v51)
      {
        *buf = 136446722;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v43;
        *&v113[4] = 2082;
        *&v113[6] = v50;
        _os_log_impl(&dword_181A37000, v47, v48, "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v50);
      goto LABEL_140;
    }

    if (v51)
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v43;
      v49 = "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, no backtrace";
LABEL_139:
      _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x12u);
    }
  }

LABEL_140:
  if (v46)
  {
    free(v46);
  }

LABEL_142:
  *v107 = _nw_tcp_options_get_persist_timeout();
  if (!*v107 || !setsockopt(*(a1 + 188), 6, 64, v107, 4u))
  {
    goto LABEL_167;
  }

  v52 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v53 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 2082;
    *v113 = a1 + 324;
    *&v113[8] = 1024;
    *&v113[10] = v52;
    _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v54 = gLogObj;
  if (v52 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = 22;
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_167;
  }

  *buf = 136446466;
  v111 = "nw_socket_set_bidirectional_tcp_sockopts";
  v112 = 1024;
  *v113 = v52;
  LODWORD(v101) = 18;
  v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d", buf, v101);
  v106[0] = OS_LOG_TYPE_ERROR;
  v105[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v55, v106, v105))
  {
    if (v106[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v56 = gLogObj;
      v57 = v106[0];
      if (!os_log_type_enabled(gLogObj, v106[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v52;
      v58 = "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d";
      goto LABEL_164;
    }

    if (v105[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v56 = gLogObj;
      v57 = v106[0];
      if (!os_log_type_enabled(gLogObj, v106[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v52;
      v58 = "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_164;
    }

    v59 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v56 = gLogObj;
    v57 = v106[0];
    v60 = os_log_type_enabled(gLogObj, v106[0]);
    if (v59)
    {
      if (v60)
      {
        *buf = 136446722;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v52;
        *&v113[4] = 2082;
        *&v113[6] = v59;
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v59);
      goto LABEL_165;
    }

    if (v60)
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v52;
      v58 = "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_164:
      _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0x12u);
    }
  }

LABEL_165:
  if (v55)
  {
    free(v55);
  }

LABEL_167:
  if (!_nw_tcp_options_get_enable_background_traffic_management() || !setsockopt(*(a1 + 188), 0xFFFF, 4357, v109, 4u))
  {
    goto LABEL_192;
  }

  v61 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v62 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 2082;
    *v113 = a1 + 324;
    *&v113[8] = 1024;
    *&v113[10] = v61;
    _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v63 = gLogObj;
  if (v61 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = 22;
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_192;
  }

  *buf = 136446466;
  v111 = "nw_socket_set_bidirectional_tcp_sockopts";
  v112 = 1024;
  *v113 = v61;
  LODWORD(v101) = 18;
  v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d", buf, v101);
  v106[0] = OS_LOG_TYPE_ERROR;
  v105[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v64, v106, v105))
  {
    if (v106[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v65 = gLogObj;
      v66 = v106[0];
      if (!os_log_type_enabled(gLogObj, v106[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v61;
      v67 = "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d";
      goto LABEL_189;
    }

    if (v105[0] != OS_LOG_TYPE_INFO)
    {
      v65 = __nwlog_obj();
      v66 = v106[0];
      if (!os_log_type_enabled(v65, v106[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v61;
      v67 = "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_189;
    }

    v68 = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v66 = v106[0];
    v69 = os_log_type_enabled(v65, v106[0]);
    if (v68)
    {
      if (v69)
      {
        *buf = 136446722;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v61;
        *&v113[4] = 2082;
        *&v113[6] = v68;
        _os_log_impl(&dword_181A37000, v65, v66, "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v68);
      goto LABEL_190;
    }

    if (v69)
    {
      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v61;
      v67 = "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d, no backtrace";
LABEL_189:
      _os_log_impl(&dword_181A37000, v65, v66, v67, buf, 0x12u);
    }
  }

LABEL_190:
  if (v64)
  {
    free(v64);
  }

LABEL_192:
  if (!_nw_tcp_options_get_enable_keepalive())
  {
    goto LABEL_200;
  }

  if ((setsockopt(*(a1 + 188), 0xFFFF, 8, v109, 4u) & 0x80000000) == 0)
  {
    *v106 = _nw_tcp_options_get_keepalive_idle_time();
    if (*v106 && setsockopt(*(a1 + 188), 6, 16, v106, 4u) < 0)
    {
      v80 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v81 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 2082;
        *v113 = a1 + 324;
        *&v113[8] = 1024;
        *&v113[10] = v80;
        _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d", buf, 0x1Cu);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v72 = gLogObj;
      if (v80 == 22)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = 22;
          v73 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d";
          goto LABEL_250;
        }

        goto LABEL_306;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v80;
      LODWORD(v101) = 18;
      v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d", buf, v101);
      v105[0] = OS_LOG_TYPE_ERROR;
      v103[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v76, v105, v103))
      {
        goto LABEL_304;
      }

      if (v105[0] == OS_LOG_TYPE_FAULT)
      {
        v77 = __nwlog_obj();
        v78 = v105[0];
        if (!os_log_type_enabled(v77, v105[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v80;
        v79 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d";
        goto LABEL_303;
      }

      if (v103[0] != OS_LOG_TYPE_INFO)
      {
        v77 = __nwlog_obj();
        v78 = v105[0];
        if (!os_log_type_enabled(v77, v105[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v80;
        v79 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_303;
      }

      v84 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = v105[0];
      v91 = os_log_type_enabled(v77, v105[0]);
      if (!v84)
      {
        if (!v91)
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v80;
        v79 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d, no backtrace";
        goto LABEL_303;
      }

      if (!v91)
      {
        goto LABEL_285;
      }

      *buf = 136446722;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v80;
      *&v113[4] = 2082;
      *&v113[6] = v84;
      v86 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d, dumping backtrace:%{public}s";
    }

    else
    {
      *v105 = _nw_tcp_options_get_keepalive_interval();
      if (!*v105 || (setsockopt(*(a1 + 188), 6, 257, v105, 4u) & 0x80000000) == 0)
      {
        *v103 = _nw_tcp_options_get_keepalive_count();
        if (!*v103 || (setsockopt(*(a1 + 188), 6, 258, v103, 4u) & 0x80000000) == 0)
        {
LABEL_200:
          if (!_nw_tcp_options_get_enable_keepalive_offload() || (setsockopt(*(a1 + 188), 6, 529, v109, 4u) & 0x80000000) == 0)
          {
            return 1;
          }

          v74 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v75 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v111 = "nw_socket_set_bidirectional_tcp_sockopts";
            v112 = 2082;
            *v113 = a1 + 324;
            *&v113[8] = 1024;
            *&v113[10] = v74;
            _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d", buf, 0x1Cu);
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v72 = gLogObj;
          if (v74 == 22)
          {
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v111 = "nw_socket_set_bidirectional_tcp_sockopts";
              v112 = 1024;
              *v113 = 22;
              v73 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d";
              goto LABEL_250;
            }

            goto LABEL_306;
          }

          *buf = 136446466;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = v74;
          LODWORD(v101) = 18;
          v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d", buf, v101);
          v106[0] = OS_LOG_TYPE_ERROR;
          v105[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v76, v106, v105))
          {
            goto LABEL_304;
          }

          if (v106[0] == OS_LOG_TYPE_FAULT)
          {
            v77 = __nwlog_obj();
            v78 = v106[0];
            if (!os_log_type_enabled(v77, v106[0]))
            {
              goto LABEL_304;
            }

            *buf = 136446466;
            v111 = "nw_socket_set_bidirectional_tcp_sockopts";
            v112 = 1024;
            *v113 = v74;
            v79 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d";
          }

          else if (v105[0] == OS_LOG_TYPE_INFO)
          {
            v89 = __nw_create_backtrace_string();
            v77 = __nwlog_obj();
            v78 = v106[0];
            v90 = os_log_type_enabled(v77, v106[0]);
            if (v89)
            {
              if (v90)
              {
                *buf = 136446722;
                v111 = "nw_socket_set_bidirectional_tcp_sockopts";
                v112 = 1024;
                *v113 = v74;
                *&v113[4] = 2082;
                *&v113[6] = v89;
                _os_log_impl(&dword_181A37000, v77, v78, "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v89);
LABEL_304:
              if (!v76)
              {
                goto LABEL_306;
              }

LABEL_305:
              free(v76);
              goto LABEL_306;
            }

            if (!v90)
            {
              goto LABEL_304;
            }

            *buf = 136446466;
            v111 = "nw_socket_set_bidirectional_tcp_sockopts";
            v112 = 1024;
            *v113 = v74;
            v79 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d, no backtrace";
          }

          else
          {
            v77 = __nwlog_obj();
            v78 = v106[0];
            if (!os_log_type_enabled(v77, v106[0]))
            {
              goto LABEL_304;
            }

            *buf = 136446466;
            v111 = "nw_socket_set_bidirectional_tcp_sockopts";
            v112 = 1024;
            *v113 = v74;
            v79 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d, backtrace limit exceeded";
          }

LABEL_303:
          _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0x12u);
          goto LABEL_304;
        }

        v87 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v88 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 2082;
          *v113 = a1 + 324;
          *&v113[8] = 1024;
          *&v113[10] = v87;
          _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d", buf, 0x1Cu);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = gLogObj;
        if (v87 == 22)
        {
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v111 = "nw_socket_set_bidirectional_tcp_sockopts";
            v112 = 1024;
            *v113 = 22;
            v73 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d";
            goto LABEL_250;
          }

          goto LABEL_306;
        }

        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v87;
        LODWORD(v101) = 18;
        v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d", buf, v101);
        v104 = OS_LOG_TYPE_ERROR;
        v102 = 0;
        if (!__nwlog_fault(v76, &v104, &v102))
        {
          goto LABEL_304;
        }

        if (v104 == OS_LOG_TYPE_FAULT)
        {
          v77 = __nwlog_obj();
          v78 = v104;
          if (!os_log_type_enabled(v77, v104))
          {
            goto LABEL_304;
          }

          *buf = 136446466;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = v87;
          v79 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d";
          goto LABEL_303;
        }

        if (v102 != 1)
        {
          v77 = __nwlog_obj();
          v78 = v104;
          if (!os_log_type_enabled(v77, v104))
          {
            goto LABEL_304;
          }

          *buf = 136446466;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = v87;
          v79 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_303;
        }

        v84 = __nw_create_backtrace_string();
        v77 = __nwlog_obj();
        v78 = v104;
        v93 = os_log_type_enabled(v77, v104);
        if (!v84)
        {
          if (!v93)
          {
            goto LABEL_304;
          }

          *buf = 136446466;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = v87;
          v79 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d, no backtrace";
          goto LABEL_303;
        }

        if (v93)
        {
          *buf = 136446722;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = v87;
          *&v113[4] = 2082;
          *&v113[6] = v84;
          v86 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d, dumping backtrace:%{public}s";
          goto LABEL_284;
        }

LABEL_285:
        free(v84);
        if (!v76)
        {
          goto LABEL_306;
        }

        goto LABEL_305;
      }

      v82 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v83 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 2082;
        *v113 = a1 + 324;
        *&v113[8] = 1024;
        *&v113[10] = v82;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d", buf, 0x1Cu);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v72 = gLogObj;
      if (v82 == 22)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v111 = "nw_socket_set_bidirectional_tcp_sockopts";
          v112 = 1024;
          *v113 = 22;
          v73 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d";
          goto LABEL_250;
        }

        goto LABEL_306;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v82;
      LODWORD(v101) = 18;
      v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d", buf, v101);
      v103[0] = OS_LOG_TYPE_ERROR;
      v104 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v76, v103, &v104))
      {
        goto LABEL_304;
      }

      if (v103[0] == OS_LOG_TYPE_FAULT)
      {
        v77 = __nwlog_obj();
        v78 = v103[0];
        if (!os_log_type_enabled(v77, v103[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v82;
        v79 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d";
        goto LABEL_303;
      }

      if (v104 != OS_LOG_TYPE_INFO)
      {
        v77 = __nwlog_obj();
        v78 = v103[0];
        if (!os_log_type_enabled(v77, v103[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v82;
        v79 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_303;
      }

      v84 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = v103[0];
      v92 = os_log_type_enabled(v77, v103[0]);
      if (!v84)
      {
        if (!v92)
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v111 = "nw_socket_set_bidirectional_tcp_sockopts";
        v112 = 1024;
        *v113 = v82;
        v79 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d, no backtrace";
        goto LABEL_303;
      }

      if (!v92)
      {
        goto LABEL_285;
      }

      *buf = 136446722;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v82;
      *&v113[4] = 2082;
      *&v113[6] = v84;
      v86 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d, dumping backtrace:%{public}s";
    }

LABEL_284:
    _os_log_impl(&dword_181A37000, v77, v78, v86, buf, 0x1Cu);
    goto LABEL_285;
  }

  v70 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v71 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 2082;
    *v113 = a1 + 324;
    *&v113[8] = 1024;
    *&v113[10] = v70;
    _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v72 = gLogObj;
  if (v70 != 22)
  {
    *buf = 136446466;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 1024;
    *v113 = v70;
    LODWORD(v101) = 18;
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d", buf, v101);
    v106[0] = OS_LOG_TYPE_ERROR;
    v105[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v76, v106, v105))
    {
      goto LABEL_304;
    }

    if (v106[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v77 = gLogObj;
      v78 = v106[0];
      if (!os_log_type_enabled(gLogObj, v106[0]))
      {
        goto LABEL_304;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v70;
      v79 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d";
      goto LABEL_303;
    }

    if (v105[0] != OS_LOG_TYPE_INFO)
    {
      v77 = __nwlog_obj();
      v78 = v106[0];
      if (!os_log_type_enabled(v77, v106[0]))
      {
        goto LABEL_304;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v70;
      v79 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_303;
    }

    v84 = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = v106[0];
    v85 = os_log_type_enabled(v77, v106[0]);
    if (!v84)
    {
      if (!v85)
      {
        goto LABEL_304;
      }

      *buf = 136446466;
      v111 = "nw_socket_set_bidirectional_tcp_sockopts";
      v112 = 1024;
      *v113 = v70;
      v79 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d, no backtrace";
      goto LABEL_303;
    }

    if (!v85)
    {
      goto LABEL_285;
    }

    *buf = 136446722;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 1024;
    *v113 = v70;
    *&v113[4] = 2082;
    *&v113[6] = v84;
    v86 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d, dumping backtrace:%{public}s";
    goto LABEL_284;
  }

  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v111 = "nw_socket_set_bidirectional_tcp_sockopts";
    v112 = 1024;
    *v113 = 22;
    v73 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d";
LABEL_250:
    _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, v73, buf, 0x12u);
  }

LABEL_306:
  nw_socket_internal_error(a1);
  return 0;
}

uint64_t nw_socket_set_no_delay(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 192) != 2)
  {
    return 22;
  }

  v15 = a2;
  if (!setsockopt(*(a1 + 188), 6, 1, &v15, 4u))
  {
    return 0;
  }

  v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v17 = "nw_socket_set_no_delay";
    v18 = 2082;
    *v19 = a1 + 324;
    *&v19[8] = 1024;
    *&v19[10] = v3;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (v3 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = 22;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d", buf, 0x12u);
    }

    return v3;
  }

  *buf = 136446466;
  v17 = "nw_socket_set_no_delay";
  v18 = 1024;
  *v19 = v3;
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d", buf, 18);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = v3;
      v9 = "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d";
      goto LABEL_25;
    }

    if (v13 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = v3;
      v9 = "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446722;
        v17 = "nw_socket_set_no_delay";
        v18 = 1024;
        *v19 = v3;
        *&v19[4] = 2082;
        *&v19[6] = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = v3;
      v9 = "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x12u);
    }
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }

  return v3;
}

unint64_t _nw_tcp_options_get_disable_ecn()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
  result = sub_181AA8420();
  if (result)
  {
    v1 = result + *(*result + 128);
    result = swift_beginAccess();
    v2 = *(v1 + 40);
    if (v2 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v2 >> 47) & 1;
    }
  }

  return result;
}

uint64_t nw_endpoint_get_alternate_port(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    alternate_port = _nw_endpoint_get_alternate_port(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_alternate_port";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null endpoint", buf, 12);

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
        v16 = "nw_endpoint_get_alternate_port";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_get_alternate_port";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_alternate_port";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_alternate_port";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  alternate_port = 0;
LABEL_3:

  return alternate_port;
}

uint64_t _nw_endpoint_get_alternate_port(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2))
  {
    return 0;
  }

  else
  {
    return *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort);
  }
}

uint64_t nw_path_uses_interface_subtype(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = _nw_path_uses_interface_subtype(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_uses_interface_subtype";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null path", buf, 12);

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
        v18 = "nw_path_uses_interface_subtype";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null path", buf, 0xCu);
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
          v18 = "nw_path_uses_interface_subtype";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_path_uses_interface_subtype";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_uses_interface_subtype";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_3:

  return v5;
}

uint64_t nw_context_get_do_not_log_trackers(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[38]._os_unfair_lock_opaque & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      os_unfair_lock_lock(v2 + 22);
      v3 = BYTE1(v2[38]._os_unfair_lock_opaque) & 1;
      os_unfair_lock_unlock(v2 + 22);
    }

    else
    {
      v3 = BYTE1(v2[38]._os_unfair_lock_opaque) & 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void nw_protocol_socket_set_necp_attributes(uint64_t a1, char *a2, void *a3)
{
  v189 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    domain_for_policy = _nw_endpoint_get_domain_for_policy(v5);

    if (domain_for_policy)
    {
      v8 = 0;
      v9 = strlen(domain_for_policy) + 6;
      goto LABEL_6;
    }
  }

  else
  {
    domain_for_policy = 0;
  }

  v9 = 0;
  v8 = 1;
LABEL_6:
  account_id = nw_parameters_get_account_id(a2);
  v11 = account_id;
  if (account_id)
  {
    v9 += strlen(account_id) + 6;
  }

  v12 = v6;
  v13 = v12;
  if (v6)
  {
    tracker_owner = _nw_endpoint_get_tracker_owner(v12);

    if (tracker_owner)
    {
      v175 = 0;
      v9 += strlen(tracker_owner) + 6;
      goto LABEL_13;
    }
  }

  else
  {
    tracker_owner = 0;
  }

  v175 = 1;
LABEL_13:
  v173 = a2;
  attribution_context = nw_parameters_get_attribution_context(a2);
  v16 = attribution_context;
  if (attribution_context)
  {
    v9 += strlen(attribution_context) + 6;
  }

  v17 = v13;
  v18 = v17;
  if (v6)
  {
    known_tracker_name = _nw_endpoint_get_known_tracker_name(v17);

    if (known_tracker_name)
    {
      v174 = 0;
      v20 = v9 + strlen(known_tracker_name);
      v9 = v20 + 6;
      if (v20 == -6)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  else
  {
    known_tracker_name = 0;
  }

  v174 = 1;
  if (!v9)
  {
    return;
  }

LABEL_21:
  v171 = v6;
  __s = known_tracker_name;
  v170 = v18;
  v21 = nw_calloc_type<unsigned char>(v9);
  v22 = &v21[v9];
  v177 = v21;
  v176 = v22;
  if (v8)
  {
    goto LABEL_44;
  }

  v23 = strlen(domain_for_policy);
  if (!v21)
  {
    v114 = __nwlog_obj();
    *buf = 136446210;
    v181 = "nw_necp_append_tlv";
    v115 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v114, 16, "%{public}s called with null tlv_start", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v115, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v116 = __nwlog_obj();
        v117 = type;
        if (os_log_type_enabled(v116, type))
        {
          *buf = 136446210;
          v181 = "nw_necp_append_tlv";
          v118 = "%{public}s called with null tlv_start";
LABEL_311:
          _os_log_impl(&dword_181A37000, v116, v117, v118, buf, 0xCu);
        }
      }

      else
      {
        v151 = a1;
        if (v178 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v116 = __nwlog_obj();
          v117 = type;
          v153 = os_log_type_enabled(v116, type);
          if (backtrace_string)
          {
            if (v153)
            {
              *buf = 136446466;
              v181 = "nw_necp_append_tlv";
              v182 = 2082;
              *v183 = backtrace_string;
              _os_log_impl(&dword_181A37000, v116, v117, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            a1 = v151;
            goto LABEL_312;
          }

          a1 = v151;
          if (v153)
          {
            *buf = 136446210;
            v181 = "nw_necp_append_tlv";
            v118 = "%{public}s called with null tlv_start, no backtrace";
            goto LABEL_311;
          }
        }

        else
        {
          v116 = __nwlog_obj();
          v117 = type;
          if (os_log_type_enabled(v116, type))
          {
            *buf = 136446210;
            v181 = "nw_necp_append_tlv";
            v118 = "%{public}s called with null tlv_start, backtrace limit exceeded";
            goto LABEL_311;
          }
        }
      }
    }

LABEL_312:
    if (v115)
    {
      free(v115);
    }

    v21 = 0;
    goto LABEL_43;
  }

  v24 = (v23 + 1);
  if (v24 + 5 <= v9)
  {
    *v21 = 7;
    *(v21 + 1) = v24;
    if (v23 != -1)
    {
      memcpy(v21 + 5, domain_for_policy, v24);
    }

    v21 += v24 + 5;
    goto LABEL_43;
  }

  v166 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136447490;
  v181 = "nw_necp_append_tlv";
  v182 = 2048;
  *v183 = v21;
  *&v183[8] = 2048;
  *v184 = v24 + 5;
  *&v184[8] = 2048;
  *&v184[10] = &v21[v9];
  *&v184[18] = 1024;
  *&v184[20] = 7;
  *&v184[24] = 1024;
  *&v184[26] = v24;
  v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 54);
  type = OS_LOG_TYPE_ERROR;
  v178 = 0;
  if (__nwlog_fault(v25, &type, &v178))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136447490;
        v181 = "nw_necp_append_tlv";
        v182 = 2048;
        *v183 = v21;
        *&v183[8] = 2048;
        *v184 = v24 + 5;
        *&v184[8] = 2048;
        *&v184[10] = &v21[v9];
        *&v184[18] = 1024;
        *&v184[20] = 7;
        *&v184[24] = 1024;
        *&v184[26] = v24;
        v28 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_38:
        v31 = v26;
LABEL_39:
        _os_log_impl(&dword_181A37000, v31, v27, v28, buf, 0x36u);
      }
    }

    else if (v178 == 1)
    {
      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = type;
      log = gLogObj;
      v30 = os_log_type_enabled(gLogObj, type);
      if (v29)
      {
        if (v30)
        {
          *buf = 136447746;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v24 + 5;
          *&v184[8] = 2048;
          *&v184[10] = &v21[v9];
          *&v184[18] = 1024;
          *&v184[20] = 7;
          *&v184[24] = 1024;
          *&v184[26] = v24;
          *&v184[30] = 2082;
          *&v184[32] = v29;
          _os_log_impl(&dword_181A37000, log, v27, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v29);
        goto LABEL_40;
      }

      if (v30)
      {
        *buf = 136447490;
        v181 = "nw_necp_append_tlv";
        v182 = 2048;
        *v183 = v21;
        *&v183[8] = 2048;
        *v184 = v24 + 5;
        *&v184[8] = 2048;
        *&v184[10] = &v21[v9];
        *&v184[18] = 1024;
        *&v184[20] = 7;
        *&v184[24] = 1024;
        *&v184[26] = v24;
        v28 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
        v31 = log;
        goto LABEL_39;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136447490;
        v181 = "nw_necp_append_tlv";
        v182 = 2048;
        *v183 = v21;
        *&v183[8] = 2048;
        *v184 = v24 + 5;
        *&v184[8] = 2048;
        *&v184[10] = &v21[v9];
        *&v184[18] = 1024;
        *&v184[20] = 7;
        *&v184[24] = 1024;
        *&v184[26] = v24;
        v28 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
        goto LABEL_38;
      }
    }
  }

LABEL_40:
  if (v25)
  {
    free(v25);
  }

  v21 = 0;
  a1 = v166;
LABEL_43:
  v22 = v176;
LABEL_44:
  if (!v11)
  {
    goto LABEL_70;
  }

  v32 = strlen(v11);
  if (!v21)
  {
    v93 = __nwlog_obj();
    *buf = 136446210;
    v181 = "nw_necp_append_tlv";
    LODWORD(v164) = 12;
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null tlv_start", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v94, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v95 = __nwlog_obj();
        v96 = type;
        if (os_log_type_enabled(v95, type))
        {
          *buf = 136446210;
          v181 = "nw_necp_append_tlv";
          v97 = "%{public}s called with null tlv_start";
LABEL_287:
          _os_log_impl(&dword_181A37000, v95, v96, v97, buf, 0xCu);
        }
      }

      else
      {
        v141 = a1;
        if (v178 == 1)
        {
          v142 = __nw_create_backtrace_string();
          v95 = __nwlog_obj();
          v96 = type;
          v143 = os_log_type_enabled(v95, type);
          if (v142)
          {
            if (v143)
            {
              *buf = 136446466;
              v181 = "nw_necp_append_tlv";
              v182 = 2082;
              *v183 = v142;
              _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v142);
            a1 = v141;
            goto LABEL_288;
          }

          a1 = v141;
          if (v143)
          {
            *buf = 136446210;
            v181 = "nw_necp_append_tlv";
            v97 = "%{public}s called with null tlv_start, no backtrace";
            goto LABEL_287;
          }
        }

        else
        {
          v95 = __nwlog_obj();
          v96 = type;
          if (os_log_type_enabled(v95, type))
          {
            *buf = 136446210;
            v181 = "nw_necp_append_tlv";
            v97 = "%{public}s called with null tlv_start, backtrace limit exceeded";
            goto LABEL_287;
          }
        }
      }
    }

LABEL_288:
    if (!v94)
    {
      goto LABEL_69;
    }

    v40 = v94;
    goto LABEL_68;
  }

  v33 = (v32 + 1);
  if (v21 >= v22)
  {
    v169 = a1;
    v103 = __nwlog_obj();
    *buf = 136447234;
    v181 = "nw_necp_append_tlv";
    v182 = 2048;
    *v183 = v21;
    *&v183[8] = 2048;
    *v184 = v22;
    *&v184[8] = 1024;
    *&v184[10] = 8;
    *&v184[14] = 1024;
    *&v184[16] = v33;
    LODWORD(v164) = 44;
    v104 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (!__nwlog_fault(v104, &type, &v178))
    {
      goto LABEL_299;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v105 = __nwlog_obj();
      v106 = type;
      if (!os_log_type_enabled(v105, type))
      {
        goto LABEL_299;
      }

      *buf = 136447234;
      v181 = "nw_necp_append_tlv";
      v182 = 2048;
      *v183 = v21;
      *&v183[8] = 2048;
      *v184 = v176;
      *&v184[8] = 1024;
      *&v184[10] = 8;
      *&v184[14] = 1024;
      *&v184[16] = v33;
      v107 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
    }

    else if (v178 == 1)
    {
      v147 = __nw_create_backtrace_string();
      v105 = __nwlog_obj();
      v106 = type;
      v148 = os_log_type_enabled(v105, type);
      if (v147)
      {
        if (v148)
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 8;
          *&v184[14] = 1024;
          *&v184[16] = v33;
          *&v184[20] = 2082;
          *&v184[22] = v147;
          _os_log_impl(&dword_181A37000, v105, v106, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
        }

        free(v147);
LABEL_299:
        if (v104)
        {
          free(v104);
        }

        v21 = 0;
        a1 = v169;
        v22 = v176;
        if (v175)
        {
          goto LABEL_98;
        }

        goto LABEL_71;
      }

      if (!v148)
      {
        goto LABEL_299;
      }

      *buf = 136447234;
      v181 = "nw_necp_append_tlv";
      v182 = 2048;
      *v183 = v21;
      *&v183[8] = 2048;
      *v184 = v176;
      *&v184[8] = 1024;
      *&v184[10] = 8;
      *&v184[14] = 1024;
      *&v184[16] = v33;
      v107 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
    }

    else
    {
      v105 = __nwlog_obj();
      v106 = type;
      if (!os_log_type_enabled(v105, type))
      {
        goto LABEL_299;
      }

      *buf = 136447234;
      v181 = "nw_necp_append_tlv";
      v182 = 2048;
      *v183 = v21;
      *&v183[8] = 2048;
      *v184 = v176;
      *&v184[8] = 1024;
      *&v184[10] = 8;
      *&v184[14] = 1024;
      *&v184[16] = v33;
      v107 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v105, v106, v107, buf, 0x2Cu);
    goto LABEL_299;
  }

  if (v22 - v21 < v33 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v181 = "nw_necp_append_tlv";
    v182 = 2048;
    *v183 = v21;
    *&v183[8] = 2048;
    *v184 = v33 + 5;
    *&v184[8] = 2048;
    *&v184[10] = v22;
    *&v184[18] = 1024;
    *&v184[20] = 8;
    *&v184[24] = 1024;
    *&v184[26] = v33;
    LODWORD(v164) = 54;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v34, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v33 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 8;
          *&v184[24] = 1024;
          *&v184[26] = v33;
          v37 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_65:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0x36u);
        }
      }

      else if (v178 == 1)
      {
        v167 = a1;
        v38 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        v39 = os_log_type_enabled(gLogObj, type);
        if (v38)
        {
          if (v39)
          {
            *buf = 136447746;
            v181 = "nw_necp_append_tlv";
            v182 = 2048;
            *v183 = v21;
            *&v183[8] = 2048;
            *v184 = v33 + 5;
            *&v184[8] = 2048;
            *&v184[10] = v176;
            *&v184[18] = 1024;
            *&v184[20] = 8;
            *&v184[24] = 1024;
            *&v184[26] = v33;
            *&v184[30] = 2082;
            *&v184[32] = v38;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
          }

          free(v38);
          a1 = v167;
          goto LABEL_66;
        }

        a1 = v167;
        if (v39)
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v33 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 8;
          *&v184[24] = 1024;
          *&v184[26] = v33;
          v37 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
          goto LABEL_65;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v33 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 8;
          *&v184[24] = 1024;
          *&v184[26] = v33;
          v37 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_65;
        }
      }
    }

LABEL_66:
    if (!v34)
    {
LABEL_69:
      v21 = 0;
      v22 = v176;
LABEL_70:
      if (v175)
      {
        goto LABEL_98;
      }

      goto LABEL_71;
    }

    v40 = v34;
LABEL_68:
    free(v40);
    goto LABEL_69;
  }

  *v21 = 8;
  *(v21 + 1) = v33;
  if (v32 != -1)
  {
    memcpy(v21 + 5, v11, v33);
  }

  v21 += v33 + 5;
  if (v175)
  {
    goto LABEL_98;
  }

LABEL_71:
  v41 = strlen(tracker_owner);
  if (!v21)
  {
    v119 = __nwlog_obj();
    *buf = 136446210;
    v181 = "nw_necp_append_tlv";
    LODWORD(v164) = 12;
    v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v119, 16, "%{public}s called with null tlv_start", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v120, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v121 = __nwlog_obj();
        v122 = type;
        if (os_log_type_enabled(v121, type))
        {
          *buf = 136446210;
          v181 = "nw_necp_append_tlv";
          v123 = "%{public}s called with null tlv_start";
LABEL_317:
          _os_log_impl(&dword_181A37000, v121, v122, v123, buf, 0xCu);
        }
      }

      else
      {
        v154 = a1;
        if (v178 == 1)
        {
          v155 = __nw_create_backtrace_string();
          v121 = __nwlog_obj();
          v122 = type;
          v156 = os_log_type_enabled(v121, type);
          if (v155)
          {
            if (v156)
            {
              *buf = 136446466;
              v181 = "nw_necp_append_tlv";
              v182 = 2082;
              *v183 = v155;
              _os_log_impl(&dword_181A37000, v121, v122, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v155);
            a1 = v154;
            goto LABEL_318;
          }

          a1 = v154;
          if (v156)
          {
            *buf = 136446210;
            v181 = "nw_necp_append_tlv";
            v123 = "%{public}s called with null tlv_start, no backtrace";
            goto LABEL_317;
          }
        }

        else
        {
          v121 = __nwlog_obj();
          v122 = type;
          if (os_log_type_enabled(v121, type))
          {
            *buf = 136446210;
            v181 = "nw_necp_append_tlv";
            v123 = "%{public}s called with null tlv_start, backtrace limit exceeded";
            goto LABEL_317;
          }
        }
      }
    }

LABEL_318:
    if (!v120)
    {
      goto LABEL_96;
    }

    v49 = v120;
    goto LABEL_95;
  }

  v42 = (v41 + 1);
  if (v21 >= v22)
  {
    v129 = a1;
    v130 = __nwlog_obj();
    *buf = 136447234;
    v181 = "nw_necp_append_tlv";
    v182 = 2048;
    *v183 = v21;
    *&v183[8] = 2048;
    *v184 = v22;
    *&v184[8] = 1024;
    *&v184[10] = 11;
    *&v184[14] = 1024;
    *&v184[16] = v42;
    LODWORD(v164) = 44;
    v131 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v131, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v132 = __nwlog_obj();
        v133 = type;
        if (os_log_type_enabled(v132, type))
        {
          *buf = 136447234;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 11;
          *&v184[14] = 1024;
          *&v184[16] = v42;
          v134 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
LABEL_327:
          _os_log_impl(&dword_181A37000, v132, v133, v134, buf, 0x2Cu);
        }
      }

      else if (v178 == 1)
      {
        v160 = __nw_create_backtrace_string();
        v132 = __nwlog_obj();
        v133 = type;
        v161 = os_log_type_enabled(v132, type);
        if (v160)
        {
          if (v161)
          {
            *buf = 136447490;
            v181 = "nw_necp_append_tlv";
            v182 = 2048;
            *v183 = v21;
            *&v183[8] = 2048;
            *v184 = v176;
            *&v184[8] = 1024;
            *&v184[10] = 11;
            *&v184[14] = 1024;
            *&v184[16] = v42;
            *&v184[20] = 2082;
            *&v184[22] = v160;
            _os_log_impl(&dword_181A37000, v132, v133, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v160);
          goto LABEL_328;
        }

        if (v161)
        {
          *buf = 136447234;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 11;
          *&v184[14] = 1024;
          *&v184[16] = v42;
          v134 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
          goto LABEL_327;
        }
      }

      else
      {
        v132 = __nwlog_obj();
        v133 = type;
        if (os_log_type_enabled(v132, type))
        {
          *buf = 136447234;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 11;
          *&v184[14] = 1024;
          *&v184[16] = v42;
          v134 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_327;
        }
      }
    }

LABEL_328:
    if (v131)
    {
      free(v131);
    }

    v21 = 0;
    a1 = v129;
    goto LABEL_97;
  }

  if (v22 - v21 < v42 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v181 = "nw_necp_append_tlv";
    v182 = 2048;
    *v183 = v21;
    *&v183[8] = 2048;
    *v184 = v42 + 5;
    *&v184[8] = 2048;
    *&v184[10] = v22;
    *&v184[18] = 1024;
    *&v184[20] = 11;
    *&v184[24] = 1024;
    *&v184[26] = v42;
    LODWORD(v164) = 54;
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v43, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v42 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 11;
          *&v184[24] = 1024;
          *&v184[26] = v42;
          v46 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_92:
          _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0x36u);
        }
      }

      else if (v178 == 1)
      {
        v168 = a1;
        v47 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        v48 = os_log_type_enabled(gLogObj, type);
        if (v47)
        {
          if (v48)
          {
            *buf = 136447746;
            v181 = "nw_necp_append_tlv";
            v182 = 2048;
            *v183 = v21;
            *&v183[8] = 2048;
            *v184 = v42 + 5;
            *&v184[8] = 2048;
            *&v184[10] = v176;
            *&v184[18] = 1024;
            *&v184[20] = 11;
            *&v184[24] = 1024;
            *&v184[26] = v42;
            *&v184[30] = 2082;
            *&v184[32] = v47;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
          }

          free(v47);
          a1 = v168;
          goto LABEL_93;
        }

        a1 = v168;
        if (v48)
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v42 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 11;
          *&v184[24] = 1024;
          *&v184[26] = v42;
          v46 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
          goto LABEL_92;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v42 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 11;
          *&v184[24] = 1024;
          *&v184[26] = v42;
          v46 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_92;
        }
      }
    }

LABEL_93:
    if (!v43)
    {
LABEL_96:
      v21 = 0;
LABEL_97:
      v22 = v176;
      goto LABEL_98;
    }

    v49 = v43;
LABEL_95:
    free(v49);
    goto LABEL_96;
  }

  *v21 = 11;
  *(v21 + 1) = v42;
  if (v41 != -1)
  {
    memcpy(v21 + 5, tracker_owner, v42);
  }

  v21 += v42 + 5;
LABEL_98:
  if (!v16)
  {
    goto LABEL_109;
  }

  v50 = strlen(v16);
  if (v21)
  {
    v51 = (v50 + 1);
    if (v21 < v22)
    {
      if (v22 - v21 < v51 + 5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136447490;
        v181 = "nw_necp_append_tlv";
        v182 = 2048;
        *v183 = v21;
        *&v183[8] = 2048;
        *v184 = v51 + 5;
        *&v184[8] = 2048;
        *&v184[10] = v22;
        *&v184[18] = 1024;
        *&v184[20] = 13;
        *&v184[24] = 1024;
        *&v184[26] = v51;
        LODWORD(v164) = 54;
        v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v164);
        type = OS_LOG_TYPE_ERROR;
        v178 = 0;
        if (__nwlog_fault(v52, &type, &v178))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            v54 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136447490;
              v181 = "nw_necp_append_tlv";
              v182 = 2048;
              *v183 = v21;
              *&v183[8] = 2048;
              *v184 = v51 + 5;
              *&v184[8] = 2048;
              *&v184[10] = v176;
              *&v184[18] = 1024;
              *&v184[20] = 13;
              *&v184[24] = 1024;
              *&v184[26] = v51;
              v55 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_120:
              _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0x36u);
            }
          }

          else if (v178 == 1)
          {
            v57 = a1;
            v58 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            v54 = type;
            v59 = os_log_type_enabled(gLogObj, type);
            if (v58)
            {
              if (v59)
              {
                *buf = 136447746;
                v181 = "nw_necp_append_tlv";
                v182 = 2048;
                *v183 = v21;
                *&v183[8] = 2048;
                *v184 = v51 + 5;
                *&v184[8] = 2048;
                *&v184[10] = v176;
                *&v184[18] = 1024;
                *&v184[20] = 13;
                *&v184[24] = 1024;
                *&v184[26] = v51;
                *&v184[30] = 2082;
                *&v184[32] = v58;
                _os_log_impl(&dword_181A37000, v53, v54, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
              }

              free(v58);
              a1 = v57;
              goto LABEL_121;
            }

            a1 = v57;
            if (v59)
            {
              *buf = 136447490;
              v181 = "nw_necp_append_tlv";
              v182 = 2048;
              *v183 = v21;
              *&v183[8] = 2048;
              *v184 = v51 + 5;
              *&v184[8] = 2048;
              *&v184[10] = v176;
              *&v184[18] = 1024;
              *&v184[20] = 13;
              *&v184[24] = 1024;
              *&v184[26] = v51;
              v55 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
              goto LABEL_120;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            v54 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136447490;
              v181 = "nw_necp_append_tlv";
              v182 = 2048;
              *v183 = v21;
              *&v183[8] = 2048;
              *v184 = v51 + 5;
              *&v184[8] = 2048;
              *&v184[10] = v176;
              *&v184[18] = 1024;
              *&v184[20] = 13;
              *&v184[24] = 1024;
              *&v184[26] = v51;
              v55 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
              goto LABEL_120;
            }
          }
        }

LABEL_121:
        if (v52)
        {
          free(v52);
        }

        v21 = 0;
        v56 = v177;
        goto LABEL_124;
      }

      *v21 = 13;
      *(v21 + 1) = v51;
      if (v50 != -1)
      {
        memcpy(v21 + 5, v16, v51);
      }

      v21 += v51 + 5;
LABEL_109:
      v56 = v177;
      if (v174)
      {
        goto LABEL_147;
      }

      goto LABEL_125;
    }

    v108 = a1;
    v109 = __nwlog_obj();
    *buf = 136447234;
    v181 = "nw_necp_append_tlv";
    v182 = 2048;
    *v183 = v21;
    *&v183[8] = 2048;
    *v184 = v22;
    *&v184[8] = 1024;
    *&v184[10] = 13;
    *&v184[14] = 1024;
    *&v184[16] = v51;
    LODWORD(v164) = 44;
    v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    v56 = v177;
    if (!__nwlog_fault(v110, &type, &v178))
    {
      goto LABEL_306;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v112 = type;
      if (os_log_type_enabled(v111, type))
      {
        *buf = 136447234;
        v181 = "nw_necp_append_tlv";
        v182 = 2048;
        *v183 = v21;
        *&v183[8] = 2048;
        *v184 = v176;
        *&v184[8] = 1024;
        *&v184[10] = 13;
        *&v184[14] = 1024;
        *&v184[16] = v51;
        v113 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
LABEL_305:
        _os_log_impl(&dword_181A37000, v111, v112, v113, buf, 0x2Cu);
      }
    }

    else if (v178 == 1)
    {
      v149 = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v112 = type;
      v150 = os_log_type_enabled(v111, type);
      if (v149)
      {
        if (v150)
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 13;
          *&v184[14] = 1024;
          *&v184[16] = v51;
          *&v184[20] = 2082;
          *&v184[22] = v149;
          _os_log_impl(&dword_181A37000, v111, v112, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
        }

        free(v149);
        v56 = v177;
        goto LABEL_306;
      }

      v56 = v177;
      if (v150)
      {
        *buf = 136447234;
        v181 = "nw_necp_append_tlv";
        v182 = 2048;
        *v183 = v21;
        *&v183[8] = 2048;
        *v184 = v176;
        *&v184[8] = 1024;
        *&v184[10] = 13;
        *&v184[14] = 1024;
        *&v184[16] = v51;
        v113 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
        goto LABEL_305;
      }
    }

    else
    {
      v111 = __nwlog_obj();
      v112 = type;
      v56 = v177;
      if (os_log_type_enabled(v111, type))
      {
        *buf = 136447234;
        v181 = "nw_necp_append_tlv";
        v182 = 2048;
        *v183 = v21;
        *&v183[8] = 2048;
        *v184 = v176;
        *&v184[8] = 1024;
        *&v184[10] = 13;
        *&v184[14] = 1024;
        *&v184[16] = v51;
        v113 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
        goto LABEL_305;
      }
    }

LABEL_306:
    if (v110)
    {
      free(v110);
    }

    v21 = 0;
    a1 = v108;
    goto LABEL_124;
  }

  v98 = __nwlog_obj();
  *buf = 136446210;
  v181 = "nw_necp_append_tlv";
  LODWORD(v164) = 12;
  v99 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v98, 16, "%{public}s called with null tlv_start", buf, v164);
  type = OS_LOG_TYPE_ERROR;
  v178 = 0;
  v56 = v177;
  if (__nwlog_fault(v99, &type, &v178))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v100 = __nwlog_obj();
      v101 = type;
      if (os_log_type_enabled(v100, type))
      {
        *buf = 136446210;
        v181 = "nw_necp_append_tlv";
        v102 = "%{public}s called with null tlv_start";
LABEL_292:
        _os_log_impl(&dword_181A37000, v100, v101, v102, buf, 0xCu);
      }
    }

    else
    {
      v144 = a1;
      if (v178 == 1)
      {
        v145 = __nw_create_backtrace_string();
        v100 = __nwlog_obj();
        v101 = type;
        v146 = os_log_type_enabled(v100, type);
        if (v145)
        {
          if (v146)
          {
            *buf = 136446466;
            v181 = "nw_necp_append_tlv";
            v182 = 2082;
            *v183 = v145;
            _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v145);
          a1 = v144;
          v56 = v177;
          goto LABEL_293;
        }

        a1 = v144;
        v56 = v177;
        if (v146)
        {
          *buf = 136446210;
          v181 = "nw_necp_append_tlv";
          v102 = "%{public}s called with null tlv_start, no backtrace";
          goto LABEL_292;
        }
      }

      else
      {
        v100 = __nwlog_obj();
        v101 = type;
        if (os_log_type_enabled(v100, type))
        {
          *buf = 136446210;
          v181 = "nw_necp_append_tlv";
          v102 = "%{public}s called with null tlv_start, backtrace limit exceeded";
          goto LABEL_292;
        }
      }
    }
  }

LABEL_293:
  if (v99)
  {
    free(v99);
  }

  v21 = 0;
LABEL_124:
  v22 = v176;
  if (v174)
  {
    goto LABEL_147;
  }

LABEL_125:
  v60 = strlen(__s);
  if (!v21)
  {
    v124 = __nwlog_obj();
    *buf = 136446210;
    v181 = "nw_necp_append_tlv";
    LODWORD(v164) = 12;
    v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v124, 16, "%{public}s called with null tlv_start", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (!__nwlog_fault(v125, &type, &v178))
    {
      goto LABEL_323;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v126 = __nwlog_obj();
      v127 = type;
      if (!os_log_type_enabled(v126, type))
      {
        goto LABEL_323;
      }

      *buf = 136446210;
      v181 = "nw_necp_append_tlv";
      v128 = "%{public}s called with null tlv_start";
    }

    else
    {
      v157 = a1;
      if (v178 == 1)
      {
        v158 = __nw_create_backtrace_string();
        v126 = __nwlog_obj();
        v127 = type;
        v159 = os_log_type_enabled(v126, type);
        if (v158)
        {
          if (v159)
          {
            *buf = 136446466;
            v181 = "nw_necp_append_tlv";
            v182 = 2082;
            *v183 = v158;
            _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v158);
          a1 = v157;
          v56 = v177;
          goto LABEL_323;
        }

        a1 = v157;
        v56 = v177;
        if (!v159)
        {
LABEL_323:
          if (v125)
          {
            free(v125);
          }

          goto LABEL_147;
        }

        *buf = 136446210;
        v181 = "nw_necp_append_tlv";
        v128 = "%{public}s called with null tlv_start, no backtrace";
      }

      else
      {
        v126 = __nwlog_obj();
        v127 = type;
        v56 = v177;
        if (!os_log_type_enabled(v126, type))
        {
          goto LABEL_323;
        }

        *buf = 136446210;
        v181 = "nw_necp_append_tlv";
        v128 = "%{public}s called with null tlv_start, backtrace limit exceeded";
      }
    }

    _os_log_impl(&dword_181A37000, v126, v127, v128, buf, 0xCu);
    goto LABEL_323;
  }

  v61 = (v60 + 1);
  if (v21 >= v22)
  {
    v135 = a1;
    v136 = __nwlog_obj();
    *buf = 136447234;
    v181 = "nw_necp_append_tlv";
    v182 = 2048;
    *v183 = v21;
    *&v183[8] = 2048;
    *v184 = v22;
    *&v184[8] = 1024;
    *&v184[10] = 12;
    *&v184[14] = 1024;
    *&v184[16] = v61;
    LODWORD(v164) = 44;
    v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v136, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v137, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v138 = __nwlog_obj();
        v139 = type;
        if (os_log_type_enabled(v138, type))
        {
          *buf = 136447234;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 12;
          *&v184[14] = 1024;
          *&v184[16] = v61;
          v140 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
LABEL_333:
          _os_log_impl(&dword_181A37000, v138, v139, v140, buf, 0x2Cu);
        }
      }

      else if (v178 == 1)
      {
        v162 = __nw_create_backtrace_string();
        v138 = __nwlog_obj();
        v139 = type;
        v163 = os_log_type_enabled(v138, type);
        if (v162)
        {
          if (v163)
          {
            *buf = 136447490;
            v181 = "nw_necp_append_tlv";
            v182 = 2048;
            *v183 = v21;
            *&v183[8] = 2048;
            *v184 = v176;
            *&v184[8] = 1024;
            *&v184[10] = 12;
            *&v184[14] = 1024;
            *&v184[16] = v61;
            *&v184[20] = 2082;
            *&v184[22] = v162;
            _os_log_impl(&dword_181A37000, v138, v139, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v162);
          v56 = v177;
          goto LABEL_334;
        }

        v56 = v177;
        if (v163)
        {
          *buf = 136447234;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 12;
          *&v184[14] = 1024;
          *&v184[16] = v61;
          v140 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
          goto LABEL_333;
        }
      }

      else
      {
        v138 = __nwlog_obj();
        v139 = type;
        v56 = v177;
        if (os_log_type_enabled(v138, type))
        {
          *buf = 136447234;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v176;
          *&v184[8] = 1024;
          *&v184[10] = 12;
          *&v184[14] = 1024;
          *&v184[16] = v61;
          v140 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_333;
        }
      }
    }

LABEL_334:
    if (v137)
    {
      free(v137);
    }

    a1 = v135;
    goto LABEL_147;
  }

  if (v22 - v21 < v61 + 5)
  {
    v62 = a1;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v181 = "nw_necp_append_tlv";
    v182 = 2048;
    *v183 = v21;
    *&v183[8] = 2048;
    *v184 = v61 + 5;
    *&v184[8] = 2048;
    *&v184[10] = v22;
    *&v184[18] = 1024;
    *&v184[20] = 12;
    *&v184[24] = 1024;
    *&v184[26] = v61;
    LODWORD(v164) = 54;
    v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v164);
    type = OS_LOG_TYPE_ERROR;
    v178 = 0;
    if (__nwlog_fault(v63, &type, &v178))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v61 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 12;
          *&v184[24] = 1024;
          *&v184[26] = v61;
          v66 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_143:
          _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0x36u);
        }
      }

      else if (v178 == 1)
      {
        v67 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = type;
        v68 = os_log_type_enabled(gLogObj, type);
        if (v67)
        {
          if (v68)
          {
            *buf = 136447746;
            v181 = "nw_necp_append_tlv";
            v182 = 2048;
            *v183 = v21;
            *&v183[8] = 2048;
            *v184 = v61 + 5;
            *&v184[8] = 2048;
            *&v184[10] = v176;
            *&v184[18] = 1024;
            *&v184[20] = 12;
            *&v184[24] = 1024;
            *&v184[26] = v61;
            *&v184[30] = 2082;
            *&v184[32] = v67;
            _os_log_impl(&dword_181A37000, v64, v65, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
          }

          free(v67);
          v56 = v177;
          goto LABEL_144;
        }

        v56 = v177;
        if (v68)
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v61 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 12;
          *&v184[24] = 1024;
          *&v184[26] = v61;
          v66 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
          goto LABEL_143;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v181 = "nw_necp_append_tlv";
          v182 = 2048;
          *v183 = v21;
          *&v183[8] = 2048;
          *v184 = v61 + 5;
          *&v184[8] = 2048;
          *&v184[10] = v176;
          *&v184[18] = 1024;
          *&v184[20] = 12;
          *&v184[24] = 1024;
          *&v184[26] = v61;
          v66 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_143;
        }
      }
    }

LABEL_144:
    if (v63)
    {
      free(v63);
    }

    a1 = v62;
    goto LABEL_147;
  }

  *v21 = 12;
  *(v21 + 1) = v61;
  if (v60 != -1)
  {
    memcpy(v21 + 5, __s, v61);
  }

LABEL_147:
  if ((setsockopt(*(a1 + 188), 0xFFFF, 4361, v56, v9) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG) || gLogFDOverride != -1)
    {
      v69 = _nw_parameters_copy_extended_description(v173);
      if ((*(a1 + 317) & 0x80) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v70 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v71 = *(a1 + 188);
          v72 = v170;
          v73 = v72;
          v74 = a1;
          if (v171)
          {
            logging_description = _nw_endpoint_get_logging_description(v72);

            v76 = v73;
            v77 = _nw_endpoint_get_known_tracker_name(v76);

            v78 = _nw_endpoint_get_tracker_owner(v76);
          }

          else
          {
            v77 = 0;
            v78 = 0;
            logging_description = "<NULL>";
          }

          *buf = 136448258;
          v181 = "nw_protocol_socket_set_necp_attributes";
          v182 = 2082;
          *v183 = v74 + 324;
          *&v183[8] = 1024;
          *v184 = v71;
          *&v184[4] = 2082;
          *&v184[6] = v69;
          *&v184[14] = 2082;
          *&v184[16] = logging_description;
          *&v184[24] = 2080;
          *&v184[26] = v77;
          *&v184[34] = 2080;
          *&v184[36] = v78;
          v185 = 1040;
          v186 = v9;
          v187 = 2096;
          v56 = v177;
          v188 = v177;
          _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s setsockopt %d SO_NECP_ATTRIBUTES\nparameters: %{public}s, endpoint: %{public}s %s %s\n%{network:data}.*P", buf, 0x54u);
        }
      }

      if (v69)
      {
        free(v69);
      }
    }

LABEL_176:
    if (!v56)
    {
      return;
    }

    goto LABEL_177;
  }

  v79 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v79 == 22 || v79 == 42)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v80 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_176;
    }

    v81 = *(a1 + 188);
    *buf = 136447234;
    v181 = "nw_protocol_socket_set_necp_attributes";
    v182 = 1024;
    *v183 = v81;
    *&v183[4] = 1040;
    *&v183[6] = v9;
    *v184 = 2096;
    *&v184[2] = v56;
    *&v184[10] = 1024;
    *&v184[12] = v79;
    _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_ERROR, "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d", buf, 0x28u);
    if (!v56)
    {
      return;
    }

LABEL_177:
    free(v56);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v82 = *(a1 + 188);
  *buf = 136447234;
  v181 = "nw_protocol_socket_set_necp_attributes";
  v182 = 1024;
  *v183 = v82;
  *&v183[4] = 1040;
  *&v183[6] = v9;
  *v184 = 2096;
  *&v184[2] = v56;
  *&v184[10] = 1024;
  *&v184[12] = v79;
  LODWORD(v164) = 40;
  v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d", buf, v164);
  type = OS_LOG_TYPE_ERROR;
  v178 = 0;
  if (__nwlog_fault(v83, &type, &v178))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v84 = gLogObj;
      v85 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_182;
      }

      v86 = *(a1 + 188);
      *buf = 136447234;
      v181 = "nw_protocol_socket_set_necp_attributes";
      v182 = 1024;
      *v183 = v86;
      *&v183[4] = 1040;
      *&v183[6] = v9;
      *v184 = 2096;
      *&v184[2] = v177;
      *&v184[10] = 1024;
      *&v184[12] = v79;
      v87 = "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d";
LABEL_181:
      _os_log_impl(&dword_181A37000, v84, v85, v87, buf, 0x28u);
      goto LABEL_182;
    }

    if (v178 != 1)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (!os_log_type_enabled(v84, type))
      {
        goto LABEL_182;
      }

      v91 = *(a1 + 188);
      *buf = 136447234;
      v181 = "nw_protocol_socket_set_necp_attributes";
      v182 = 1024;
      *v183 = v91;
      *&v183[4] = 1040;
      *&v183[6] = v9;
      *v184 = 2096;
      *&v184[2] = v177;
      *&v184[10] = 1024;
      *&v184[12] = v79;
      v87 = "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_181;
    }

    v88 = __nw_create_backtrace_string();
    v84 = __nwlog_obj();
    v85 = type;
    v89 = os_log_type_enabled(v84, type);
    if (!v88)
    {
      if (!v89)
      {
        goto LABEL_182;
      }

      v92 = *(a1 + 188);
      *buf = 136447234;
      v181 = "nw_protocol_socket_set_necp_attributes";
      v182 = 1024;
      *v183 = v92;
      *&v183[4] = 1040;
      *&v183[6] = v9;
      *v184 = 2096;
      *&v184[2] = v177;
      *&v184[10] = 1024;
      *&v184[12] = v79;
      v87 = "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d, no backtrace";
      goto LABEL_181;
    }

    if (v89)
    {
      v90 = *(a1 + 188);
      *buf = 136447490;
      v181 = "nw_protocol_socket_set_necp_attributes";
      v182 = 1024;
      *v183 = v90;
      *&v183[4] = 1040;
      *&v183[6] = v9;
      *v184 = 2096;
      *&v184[2] = v177;
      *&v184[10] = 1024;
      *&v184[12] = v79;
      *&v184[16] = 2082;
      *&v184[18] = v88;
      _os_log_impl(&dword_181A37000, v84, v85, "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x32u);
    }

    free(v88);
  }

LABEL_182:
  if (v83)
  {
    free(v83);
  }

  v56 = v177;
  if (v177)
  {
    goto LABEL_177;
  }
}

uint64_t nw_socket_connect(nw_protocol *a1, nw_protocol *a2)
{
  v202 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v5 = 1;
      goto LABEL_11;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v5 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        LOBYTE(type.sae_srcif) = 16;
        v178[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v8, &type, v178))
        {
          goto LABEL_53;
        }

        if (LOBYTE(type.sae_srcif) == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          sae_srcif = type.sae_srcif;
          if (!os_log_type_enabled(gLogObj, type.sae_srcif))
          {
            goto LABEL_53;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_connect";
          v11 = "%{public}s called with null socket_handler";
LABEL_51:
          v26 = v9;
          v27 = sae_srcif;
LABEL_52:
          _os_log_impl(&dword_181A37000, v26, v27, v11, buf, 0xCu);
          goto LABEL_53;
        }

        if (v178[0] != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          sae_srcif = type.sae_srcif;
          if (!os_log_type_enabled(gLogObj, type.sae_srcif))
          {
            goto LABEL_53;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_connect";
          v11 = "%{public}s called with null socket_handler, backtrace limit exceeded";
          goto LABEL_51;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type.sae_srcif;
        v20 = os_log_type_enabled(gLogObj, type.sae_srcif);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_connect";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (!v20)
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v11 = "%{public}s called with null socket_handler, no backtrace";
        goto LABEL_60;
      }

      v7 = *a1[1].flow_id;
    }

    if ((HIDWORD(v7[4].callbacks) & 0x80000000) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_socket_connect";
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler->fd", buf, 12);
      LOBYTE(type.sae_srcif) = 16;
      v178[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v8, &type, v178))
      {
        goto LABEL_53;
      }

      if (LOBYTE(type.sae_srcif) == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        sae_srcif = type.sae_srcif;
        if (!os_log_type_enabled(gLogObj, type.sae_srcif))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v11 = "%{public}s called with null socket_handler->fd";
        goto LABEL_51;
      }

      if (v178[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        sae_srcif = type.sae_srcif;
        if (!os_log_type_enabled(gLogObj, type.sae_srcif))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v11 = "%{public}s called with null socket_handler->fd, backtrace limit exceeded";
        goto LABEL_51;
      }

      v21 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type.sae_srcif;
      v22 = os_log_type_enabled(gLogObj, type.sae_srcif);
      if (v21)
      {
        if (v22)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_connect";
          *&buf[12] = 2082;
          *&buf[14] = v21;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null socket_handler->fd, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        if (!v8)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (!v22)
      {
LABEL_53:
        if (!v8)
        {
LABEL_55:
          result = 0;
          goto LABEL_309;
        }

LABEL_54:
        free(v8);
        goto LABEL_55;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_connect";
      v11 = "%{public}s called with null socket_handler->fd, no backtrace";
LABEL_60:
      v26 = v18;
      v27 = v19;
      goto LABEL_52;
    }

    p_output_handler = &v7[1].output_handler;
    v13 = (&v7[6].callbacks + 5);
    v14 = *(&v7[6].callbacks + 5);
    if (v14)
    {
      goto LABEL_156;
    }

    if (v7[3].output_handler)
    {
      if ((v14 & 0x80) != 0)
      {
        goto LABEL_308;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_308;
      }

      *buf = 136446466;
      *&buf[4] = "nw_socket_setup_input_events";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 420;
      v16 = "%{public}s %{public}s Already set up input event notification";
      goto LABEL_26;
    }

    if ((v14 & 0x80) == 0 && gLogDatapath == 1)
    {
      v152 = a2;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v153 = gconnectionLogObj;
      v154 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      a2 = v152;
      if (v154)
      {
        callbacks_high = HIDWORD(v7[4].callbacks);
        *buf = 136446722;
        *&buf[4] = "nw_socket_setup_input_events";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 420;
        *&buf[22] = 1024;
        LODWORD(v189) = callbacks_high;
        _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Setting up read events on %d", buf, 0x1Cu);
        a2 = v152;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    *&v189 = __Block_byref_object_copy__67231;
    *(&v189 + 1) = __Block_byref_object_dispose__67232;
    v23 = v7->handle;
    v24 = v7;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *v7[1].flow_id) != 0)
    {
      v29 = v24[1].callbacks;
      if (v29)
      {
        v24[1].callbacks = (&v29->add_input_handler + 1);
      }

      *v190 = v7;
      v25 = v190[8] | 1;
    }

    else
    {
      *v190 = v7;
      v25 = v190[8] & 0xFE;
    }

    v190[8] = v25;
    v173 = a2;
    *&type.sae_srcif = 0;
    type.sae_srcaddr = &type;
    *&type.sae_srcaddrlen = 0x3802000000;
    type.sae_dstaddr = __Block_byref_object_copy__37_67233;
    *&type.sae_dstaddrlen = __Block_byref_object_dispose__38_67234;
    default_input_handler = v7[2].default_input_handler;
    if (default_input_handler)
    {
      default_input_handler = os_retain(default_input_handler);
    }

    object = default_input_handler;
    v187 |= 1u;
    v31 = v7[3].default_input_handler;
    v32 = HIDWORD(v7[4].callbacks);
    *v178 = MEMORY[0x1E69E9820];
    v179 = 0x40000000;
    v180 = ___ZL28nw_socket_setup_input_eventsP9nw_socket_block_invoke;
    v181 = &unk_1E6A398E0;
    p_type = &type;
    v184 = &v7[1].output_handler;
    v182 = buf;
    source = nw_queue_context_create_source(v31, v32, 1, 0, v178, 0);
    v7[3].output_handler = source;
    if (source)
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      *v13 &= ~0x400u;
      nw_queue_resume_source(v7[3].output_handler);
      goto LABEL_92;
    }

    v34 = __nwlog_obj();
    *v198 = 136446210;
    v199 = "nw_socket_setup_input_events";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s nw_queue_context_create_source input_source failed", v198, 12);
    v177 = OS_LOG_TYPE_ERROR;
    v176 = 0;
    if (__nwlog_fault(v35, &v177, &v176))
    {
      if (v177 == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = v177;
        if (os_log_type_enabled(v36, v177))
        {
          *v198 = 136446210;
          v199 = "nw_socket_setup_input_events";
          v38 = "%{public}s nw_queue_context_create_source input_source failed";
LABEL_87:
          _os_log_impl(&dword_181A37000, v36, v37, v38, v198, 0xCu);
        }
      }

      else if (v176 == 1)
      {
        v39 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = v177;
        v40 = os_log_type_enabled(v36, v177);
        if (v39)
        {
          if (v40)
          {
            *v198 = 136446466;
            v199 = "nw_socket_setup_input_events";
            v200 = 2082;
            v201 = v39;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s nw_queue_context_create_source input_source failed, dumping backtrace:%{public}s", v198, 0x16u);
          }

          free(v39);
          goto LABEL_88;
        }

        if (v40)
        {
          *v198 = 136446210;
          v199 = "nw_socket_setup_input_events";
          v38 = "%{public}s nw_queue_context_create_source input_source failed, no backtrace";
          goto LABEL_87;
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = v177;
        if (os_log_type_enabled(v36, v177))
        {
          *v198 = 136446210;
          v199 = "nw_socket_setup_input_events";
          v38 = "%{public}s nw_queue_context_create_source input_source failed, backtrace limit exceeded";
          goto LABEL_87;
        }
      }
    }

LABEL_88:
    if (v35)
    {
      free(v35);
    }

    name = v7[3].identifier->name;
    p_output_handler = &v7[1].output_handler;
    if (name)
    {
      nw_queue_cancel_source(name);
      v7[3].identifier = 0;
    }

LABEL_92:
    _Block_object_dispose(&type, 8);
    if ((v187 & 1) != 0 && object)
    {
      os_release(object);
    }

    _Block_object_dispose(buf, 8);
    if (v190[8])
    {
      v42 = *v190;
      if (*v190)
      {
        v43 = *(*v190 + 40);
        if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (v42 = *(*v190 + 64)) != 0)
        {
          v44 = *(v42 + 88);
          if (v44)
          {
            v45 = v44 - 1;
            *(v42 + 88) = v45;
            if (!v45)
            {
              v46 = *(v42 + 64);
              if (v46)
              {
                *(v42 + 64) = 0;
                v46[2](v46);
                _Block_release(v46);
              }

              if (*(v42 + 72))
              {
                v47 = *(v42 + 64);
                if (v47)
                {
                  _Block_release(v47);
                }
              }

              free(v42);
            }
          }
        }
      }
    }

    if (!source)
    {
      goto LABEL_308;
    }

    if (v7[3].handle)
    {
      if ((*v13 & 0x80) != 0)
      {
        goto LABEL_308;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_308;
      }

      *buf = 136446466;
      *&buf[4] = "nw_socket_setup_output_events";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 420;
      v16 = "%{public}s %{public}s Already set up output event notification";
LABEL_26:
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
LABEL_308:
      result = 0;
      goto LABEL_309;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    *&v189 = __Block_byref_object_copy__67231;
    *(&v189 + 1) = __Block_byref_object_dispose__67232;
    *&type.sae_srcif = v7;
    nw::share(v190, &type);
    *&type.sae_srcif = 0;
    type.sae_srcaddr = &type;
    *&type.sae_srcaddrlen = 0x3802000000;
    type.sae_dstaddr = __Block_byref_object_copy__37_67233;
    *&type.sae_dstaddrlen = __Block_byref_object_dispose__38_67234;
    v48 = v7[2].default_input_handler;
    if (v48)
    {
      v48 = os_retain(v48);
    }

    object = v48;
    v187 |= 1u;
    v49 = v7[3].default_input_handler;
    v50 = HIDWORD(v7[4].callbacks);
    *v178 = MEMORY[0x1E69E9820];
    v179 = 0x40000000;
    v180 = ___ZL29nw_socket_setup_output_eventsP9nw_socket_block_invoke;
    v181 = &unk_1E6A39908;
    p_type = buf;
    v184 = p_output_handler;
    v182 = &type;
    v51 = nw_queue_context_create_source(v49, v50, 2, 0, v178, 0);
    v7[3].handle = v51;
    if (v51)
    {
      *v13 &= ~0x800u;
LABEL_137:
      _Block_object_dispose(&type, 8);
      if ((v187 & 1) != 0 && object)
      {
        os_release(object);
      }

      _Block_object_dispose(buf, 8);
      if (v190[8])
      {
        v60 = *v190;
        if (*v190)
        {
          v61 = *(*v190 + 40);
          if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v60 = *(*v190 + 64)) != 0)
          {
            v62 = *(v60 + 88);
            if (v62)
            {
              v63 = v62 - 1;
              *(v60 + 88) = v63;
              if (!v63)
              {
                v64 = *(v60 + 64);
                if (v64)
                {
                  *(v60 + 64) = 0;
                  v64[2](v64);
                  _Block_release(v64);
                }

                if (*(v60 + 72))
                {
                  v65 = *(v60 + 64);
                  if (v65)
                  {
                    _Block_release(v65);
                  }
                }

                free(v60);
              }
            }
          }
        }
      }

      if (!v51)
      {
        goto LABEL_308;
      }

      result = nw_socket_add_socket_events(p_output_handler, 1, HIDWORD(v7[4].output_handler), 1);
      if (!result)
      {
        goto LABEL_309;
      }

      v14 = *v13 | 1;
      *v13 = v14;
      a2 = v173;
LABEL_156:
      if ((v14 & 4) != 0)
      {
        if (a2)
        {
          v77 = a2->callbacks;
          if (v77)
          {
            connected = v77->connected;
            if (connected)
            {
              connected(a2, v2);
              result = 1;
              goto LABEL_309;
            }
          }
        }
      }

      else
      {
        if ((v14 & 2) == 0)
        {
          v174 = a2;
          remote = nw_socket_get_remote(v2);
          address = nw_endpoint_get_address(remote);
          if (address)
          {
            v68 = address;
            v69 = mach_continuous_time();
            if (v69 <= 1)
            {
              v70 = 1;
            }

            else
            {
              v70 = v69;
            }

            *v7[2].flow_id = v70;
            if (_nw_signposts_once != -1)
            {
              dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
            }

            if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
            {
              kdebug_trace();
            }

            sa_family = v68->sa_family;
            if (sa_family != 30 && sa_family != 2)
            {
              v85 = connect(HIDWORD(v7[4].callbacks), v68, v68->sa_len);
              if (v85 < 0)
              {
                v86 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                *v13 |= 2u;
                v87 = "connect";
                goto LABEL_269;
              }

              v86 = 0;
              v87 = "connect";
LABEL_268:
              v116 = *v13;
              *v13 |= 2u;
              if (!v85)
              {
                if ((v116 & 0x80000000) == 0)
                {
                  *v13 = v116 | 6;
                }

                nw_socket_add_socket_events(p_output_handler, 1, HIDWORD(v7[4].output_handler), 1);
                nw_socket_fillout_socket_properties(v2);
                nw_socket_internal_connect(p_output_handler);
                result = 1;
                goto LABEL_309;
              }

LABEL_269:
              result = 1;
              if ((v85 & 0x80000000) == 0 || v86 == 36)
              {
                goto LABEL_309;
              }

              if (v86 == 47 && LODWORD(v7[4].output_handler) == 2)
              {
                v117 = v68->sa_family;
                if (v117 == 30)
                {
                  if (v68->sa_data[6] == 255)
                  {
LABEL_276:
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v118 = gconnectionLogObj;
                    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_307;
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v7 + 420;
                    *&buf[22] = 2082;
                    *&v189 = v87;
                    WORD4(v189) = 1024;
                    *(&v189 + 10) = 47;
                    v119 = "%{public}s %{public}s %{public}s failed: multicast addresses not supported on stream sockets %{darwin.errno}d";
                    goto LABEL_306;
                  }
                }

                else if (v117 == 2 && (*&v68->sa_data[2] & 0xF0) == 0xE0)
                {
                  goto LABEL_276;
                }
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v120 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                v121 = HIDWORD(v7[4].callbacks);
                v122 = *v13 < 0;
                *buf = 136447490;
                *&buf[4] = "nw_socket_connect";
                if (v122)
                {
                  v123 = ", tfo";
                }

                else
                {
                  v123 = "";
                }

                *&buf[12] = 2082;
                *&buf[14] = v7 + 420;
                *&buf[22] = 2082;
                *&v189 = v87;
                WORD4(v189) = 1024;
                *(&v189 + 10) = v121;
                HIWORD(v189) = 2082;
                *v190 = v123;
                *&v190[8] = 1024;
                LODWORD(v191) = v86;
                _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_ERROR, "%{public}s %{public}s %{public}s failed (fd %d%{public}s) %{darwin.errno}d", buf, 0x36u);
              }

              if (v86 <= 0x3D && ((1 << v86) & 0x300F004000002046) != 0 || v86 - 64 <= 0x26 && ((1 << (v86 - 64)) & 0x4000000003) != 0)
              {
                v118 = __nwlog_obj();
                if (!os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                {
LABEL_307:
                  nw_socket_internal_error(p_output_handler);
                  goto LABEL_308;
                }

                v124 = " (tfo)";
                *&buf[4] = "nw_socket_connect";
                v125 = *v13;
                *buf = 136446978;
                *&buf[12] = 2082;
                if (v125 >= 0)
                {
                  v124 = "";
                }

                *&buf[14] = v87;
                *&buf[22] = 2082;
                *&v189 = v124;
                WORD4(v189) = 1024;
                *(&v189 + 10) = v86;
                v119 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d";
LABEL_306:
                _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, v119, buf, 0x26u);
                goto LABEL_307;
              }

              v172 = p_output_handler;
              v132 = __nwlog_obj();
              v133 = *v13;
              *buf = 136446978;
              *&buf[4] = "nw_socket_connect";
              *&buf[12] = 2082;
              if (v133 < 0)
              {
                v134 = " (tfo)";
              }

              else
              {
                v134 = "";
              }

              *&buf[14] = v87;
              *&buf[22] = 2082;
              *&v189 = v134;
              WORD4(v189) = 1024;
              *(&v189 + 10) = v86;
              LODWORD(v164) = 38;
              v135 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s %{public}s failed%{public}s %{darwin.errno}d", buf, v164);
              LOBYTE(type.sae_srcif) = 16;
              v178[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v135, &type, v178))
              {
                if (LOBYTE(type.sae_srcif) == 17)
                {
                  v136 = __nwlog_obj();
                  v137 = type.sae_srcif;
                  if (os_log_type_enabled(v136, type.sae_srcif))
                  {
                    v138 = " (tfo)";
                    if (*v13 >= 0)
                    {
                      v138 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v87;
                    *&buf[22] = 2082;
                    *&v189 = v138;
                    WORD4(v189) = 1024;
                    *(&v189 + 10) = v86;
                    v139 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d";
LABEL_357:
                    _os_log_impl(&dword_181A37000, v136, v137, v139, buf, 0x26u);
                  }
                }

                else if (v178[0] == OS_LOG_TYPE_INFO)
                {
                  v145 = __nw_create_backtrace_string();
                  v136 = __nwlog_obj();
                  v137 = type.sae_srcif;
                  v146 = os_log_type_enabled(v136, type.sae_srcif);
                  if (v145)
                  {
                    if (v146)
                    {
                      v147 = " (tfo)";
                      if (*v13 >= 0)
                      {
                        v147 = "";
                      }

                      *buf = 136447234;
                      *&buf[4] = "nw_socket_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v87;
                      *&buf[22] = 2082;
                      *&v189 = v147;
                      WORD4(v189) = 1024;
                      *(&v189 + 10) = v86;
                      HIWORD(v189) = 2082;
                      *v190 = v145;
                      _os_log_impl(&dword_181A37000, v136, v137, "%{public}s %{public}s failed%{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x30u);
                    }

                    free(v145);
                    goto LABEL_358;
                  }

                  if (v146)
                  {
                    v151 = " (tfo)";
                    if (*v13 >= 0)
                    {
                      v151 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v87;
                    *&buf[22] = 2082;
                    *&v189 = v151;
                    WORD4(v189) = 1024;
                    *(&v189 + 10) = v86;
                    v139 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d, no backtrace";
                    goto LABEL_357;
                  }
                }

                else
                {
                  v136 = __nwlog_obj();
                  v137 = type.sae_srcif;
                  if (os_log_type_enabled(v136, type.sae_srcif))
                  {
                    v150 = " (tfo)";
                    if (*v13 >= 0)
                    {
                      v150 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v87;
                    *&buf[22] = 2082;
                    *&v189 = v150;
                    WORD4(v189) = 1024;
                    *(&v189 + 10) = v86;
                    v139 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d, backtrace limit exceeded";
                    goto LABEL_357;
                  }
                }
              }

LABEL_358:
              if (v135)
              {
                free(v135);
              }

              p_output_handler = v172;
              goto LABEL_307;
            }

            v171 = p_output_handler;
            if ((*v13 & 0x20) != 0)
            {
              v165 = 0;
              v168 = 0;
              v74 = 0;
              goto LABEL_199;
            }

            local = nw_socket_get_local(v2);
            v73 = SHIBYTE(v7[6].callbacks) >= 0 || local == 0;
            v74 = !v73;
            if (v73)
            {
              goto LABEL_185;
            }

            v75 = local;
            if (nw_endpoint_get_type(local) != nw_endpoint_type_address)
            {
              v74 = 0;
              local = v75;
              goto LABEL_211;
            }

            memset(&type, 0, 28);
            if (nw_endpoint_fillout_v4v6_address(v75, &type))
            {
              if ((*v13 & 0x80) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v76 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_socket_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 420;
                  *&buf[22] = 2112;
                  *&v189 = v75;
                  _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_INFO, "%{public}s %{public}s resetting local port for local endpoint %@", buf, 0x20u);
                }
              }

              local = nw_endpoint_create_address_with_port(&type, "0");
LABEL_185:
              if (!local)
              {
                v165 = 0;
                v168 = 0;
LABEL_199:
                v84 = 0;
LABEL_212:
                parameters = nw_socket_get_parameters(v2);
                path = nw_socket_get_path(v2);
                v92 = nw_path_copy_scoped_interface(path);
                v166 = v74;
                if (v92 || (v92 = nw_parameters_copy_required_interface(parameters)) != 0 || (v92 = nw_endpoint_copy_interface(remote)) != 0)
                {
                  v169 = v92;
                  index = _nw_interface_get_index(v92);
                  v167 = 0;
                }

                else
                {
                  v169 = 0;
                  index = 0;
                  v167 = 1;
                }

                v94 = nw_parameters_copy_default_protocol_stack(parameters);
                v95 = nw_protocol_stack_copy_transport_protocol(v94);
                if (v95)
                {
                  v96 = v95;
                  if (_nw_protocol_options_is_tcp())
                  {
                    if (nw_parameters_get_fast_open_enabled(parameters) || _nw_tcp_options_get_enable_fast_open() && !nw_protocol_input_handler_is_connection_flow(v174))
                    {
                      *v13 |= 0x8000u;
                      if (_nw_tcp_options_get_no_fast_open_cookie())
                      {
                        v97 = 7;
                      }

                      else
                      {
                        v97 = 3;
                      }
                    }

                    else
                    {
                      v97 = 0;
                      *v13 &= ~0x8000u;
                    }
                  }

                  else
                  {
                    v97 = 0;
                  }

                  os_release(v96);
                }

                else
                {
                  v97 = 0;
                }

                if (v94)
                {
                  os_release(v94);
                }

                *(&type.sae_srcif + 1) = 0;
                memset(&type.sae_srcaddrlen, 0, 24);
                type.sae_srcif = index;
                type.sae_srcaddr = v84;
                if (v84)
                {
                  sa_len = v84->sa_len;
                }

                else
                {
                  sa_len = 0;
                }

                p_output_handler = v171;
                type.sae_srcaddrlen = sa_len;
                type.sae_dstaddr = v68;
                type.sae_dstaddrlen = v68->sa_len;
                v99 = *v13;
                if ((*v13 & 0x100) != 0)
                {
                  if ((v99 & 0x80) != 0)
                  {
                    goto LABEL_245;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v104 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_245;
                  }

                  v105 = HIDWORD(v7[4].callbacks);
                  *buf = 136448258;
                  *&buf[4] = "nw_socket_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 420;
                  *&buf[22] = 1024;
                  LODWORD(v189) = v105;
                  WORD2(v189) = 1024;
                  *(&v189 + 6) = type.sae_srcif;
                  WORD5(v189) = 1040;
                  HIDWORD(v189) = type.sae_srcaddrlen;
                  *v190 = 2096;
                  *&v190[2] = type.sae_srcaddr;
                  LOWORD(v191) = 1040;
                  *(&v191 + 2) = type.sae_dstaddrlen;
                  WORD3(v191) = 2096;
                  *(&v191 + 1) = type.sae_dstaddr;
                  v192 = 1024;
                  LODWORD(sae_dstaddr) = v97;
                  v102 = v104;
                  v103 = OS_LOG_TYPE_DEFAULT;
                }

                else
                {
                  if ((v99 & 0x80) != 0)
                  {
                    goto LABEL_245;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v100 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_245;
                  }

                  v101 = HIDWORD(v7[4].callbacks);
                  *buf = 136448258;
                  *&buf[4] = "nw_socket_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 420;
                  *&buf[22] = 1024;
                  LODWORD(v189) = v101;
                  WORD2(v189) = 1024;
                  *(&v189 + 6) = type.sae_srcif;
                  WORD5(v189) = 1040;
                  HIDWORD(v189) = type.sae_srcaddrlen;
                  *v190 = 2096;
                  *&v190[2] = type.sae_srcaddr;
                  LOWORD(v191) = 1040;
                  *(&v191 + 2) = type.sae_dstaddrlen;
                  WORD3(v191) = 2096;
                  *(&v191 + 1) = type.sae_dstaddr;
                  v192 = 1024;
                  LODWORD(sae_dstaddr) = v97;
                  v102 = v100;
                  v103 = OS_LOG_TYPE_DEBUG;
                }

                _os_log_impl(&dword_181A37000, v102, v103, "%{public}s %{public}s Calling connectx(%d, [srcif=%u, srcaddr=%{network:sockaddr}.*P, dstaddr=%{network:sockaddr}.*P], SAE_ASSOCID_ANY, %#x, NULL, 0, NULL, SAE_CONNID_ANY)", buf, 0x48u);
LABEL_245:
                v85 = connectx(HIDWORD(v7[4].callbacks), &type, 0, v97, 0, 0, 0, 0);
                v86 = 0;
                v106 = v169;
                if (v85 < 0)
                {
                  v86 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                  if (v86 != 36)
                  {
                    v107 = v7[2].default_input_handler;
                    v175[0] = MEMORY[0x1E69E9820];
                    v175[1] = 0x40000000;
                    v175[2] = ___ZL17nw_socket_connectP11nw_protocolS0__block_invoke;
                    v175[3] = &__block_descriptor_tmp_29_68218;
                    v175[4] = v171;
                    fd = nw_fd_wrapper_get_fd(v107, v175);
                    is_guarded = nw_fd_wrapper_is_guarded(v7[2].default_input_handler);
                    v110 = " (guarded, corrupt)";
                    if (fd)
                    {
                      v110 = " (guarded)";
                    }

                    v111 = " (corrupt)";
                    if (fd)
                    {
                      v111 = "";
                    }

                    if (is_guarded)
                    {
                      v112 = v110;
                    }

                    else
                    {
                      v112 = v111;
                    }

                    if ((*v13 & 0x80) == 0)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v113 = gconnectionLogObj;
                      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                      {
                        v114 = HIDWORD(v7[4].callbacks);
                        *buf = 136448771;
                        *&buf[4] = "nw_socket_connect";
                        *&buf[12] = 2082;
                        *&buf[14] = v7 + 420;
                        *&buf[22] = 1024;
                        LODWORD(v189) = v114;
                        WORD2(v189) = 2082;
                        *(&v189 + 6) = v112;
                        HIWORD(v189) = 1024;
                        *v190 = type.sae_srcif;
                        *&v190[4] = 1040;
                        *&v190[6] = type.sae_srcaddrlen;
                        LOWORD(v191) = 2101;
                        *(&v191 + 2) = type.sae_srcaddr;
                        WORD5(v191) = 1040;
                        HIDWORD(v191) = type.sae_dstaddrlen;
                        v192 = 2101;
                        sae_dstaddr = type.sae_dstaddr;
                        v194 = 1024;
                        v195 = v97;
                        v196 = 1024;
                        v197 = v86;
                        _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}s connectx(%d%{public}s, [srcif=%u, srcaddr=%{sensitive,network:sockaddr}.*P, dstaddr=%{sensitive,network:sockaddr}.*P], SAE_ASSOCID_ANY, %#x, NULL, 0, NULL, SAE_CONNID_ANY) failed: %{darwin.errno}d", buf, 0x58u);
                      }
                    }

                    p_output_handler = v171;
                    v106 = v169;
                  }
                }

                v115 = v167;
                if (!v106)
                {
                  v115 = 1;
                }

                if ((v115 & 1) == 0)
                {
                  os_release(v106);
                }

                if (v168 && (v165 & v166) != 0)
                {
                  os_release(v168);
                }

                v87 = "connectx";
                goto LABEL_268;
              }

LABEL_211:
              v168 = local;
              v84 = nw_endpoint_get_address(local);
              v165 = 1;
              goto LABEL_212;
            }

            v157 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_socket_connect";
            LODWORD(v164) = 12;
            v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v157, 16, "%{public}s called with null success", buf, v164);
            v178[0] = OS_LOG_TYPE_ERROR;
            v198[0] = 0;
            if (__nwlog_fault(v158, v178, v198))
            {
              if (v178[0] == OS_LOG_TYPE_FAULT)
              {
                v159 = __nwlog_obj();
                v160 = v178[0];
                if (os_log_type_enabled(v159, v178[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_socket_connect";
                  v161 = "%{public}s called with null success";
LABEL_388:
                  _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0xCu);
                }
              }

              else if (v198[0] == 1)
              {
                v162 = __nw_create_backtrace_string();
                v159 = __nwlog_obj();
                v160 = v178[0];
                v163 = os_log_type_enabled(v159, v178[0]);
                if (v162)
                {
                  if (v163)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v162;
                    _os_log_impl(&dword_181A37000, v159, v160, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v162);
                  goto LABEL_389;
                }

                if (v163)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_socket_connect";
                  v161 = "%{public}s called with null success, no backtrace";
                  goto LABEL_388;
                }
              }

              else
              {
                v159 = __nwlog_obj();
                v160 = v178[0];
                if (os_log_type_enabled(v159, v178[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_socket_connect";
                  v161 = "%{public}s called with null success, backtrace limit exceeded";
                  goto LABEL_388;
                }
              }
            }

LABEL_389:
            if (v158)
            {
              free(v158);
            }

            result = 0;
            goto LABEL_309;
          }

          v79 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_socket_connect";
          LODWORD(v164) = 12;
          v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s called with null remote", buf, v164);
          LOBYTE(type.sae_srcif) = 16;
          v178[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v80, &type, v178))
          {
            if (LOBYTE(type.sae_srcif) == 17)
            {
              v81 = __nwlog_obj();
              v82 = type.sae_srcif;
              if (!os_log_type_enabled(v81, type.sae_srcif))
              {
                goto LABEL_287;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_connect";
              v83 = "%{public}s called with null remote";
              goto LABEL_286;
            }

            if (v178[0] != OS_LOG_TYPE_INFO)
            {
              v81 = __nwlog_obj();
              v82 = type.sae_srcif;
              if (!os_log_type_enabled(v81, type.sae_srcif))
              {
                goto LABEL_287;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_connect";
              v83 = "%{public}s called with null remote, backtrace limit exceeded";
              goto LABEL_286;
            }

            v88 = __nw_create_backtrace_string();
            v81 = __nwlog_obj();
            v82 = type.sae_srcif;
            v89 = os_log_type_enabled(v81, type.sae_srcif);
            if (v88)
            {
              if (v89)
              {
                *buf = 136446466;
                *&buf[4] = "nw_socket_connect";
                *&buf[12] = 2082;
                *&buf[14] = v88;
                _os_log_impl(&dword_181A37000, v81, v82, "%{public}s called with null remote, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v88);
              goto LABEL_287;
            }

            if (v89)
            {
              *buf = 136446210;
              *&buf[4] = "nw_socket_connect";
              v83 = "%{public}s called with null remote, no backtrace";
LABEL_286:
              _os_log_impl(&dword_181A37000, v81, v82, v83, buf, 0xCu);
            }
          }

LABEL_287:
          if (v80)
          {
            free(v80);
          }

          goto LABEL_308;
        }

        if ((v14 & 0x80) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v156 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_connect";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 420;
            _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Suppressing duplicate connect call", buf, 0x16u);
            result = 1;
LABEL_309:
            if ((v5 & 1) == 0)
            {
              v126 = v2->handle;
              if (v126 == &nw_protocol_ref_counted_handle || v126 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
              {
                v127 = v2[1].callbacks;
                if (v127)
                {
                  v128 = (v127 - 1);
                  v2[1].callbacks = v128;
                  if (!v128)
                  {
                    v129 = result;
                    v130 = *v2[1].flow_id;
                    if (v130)
                    {
                      *v2[1].flow_id = 0;
                      v130[2](v130);
                      _Block_release(v130);
                    }

                    if (v2[1].flow_id[8])
                    {
                      v131 = *v2[1].flow_id;
                      if (v131)
                      {
                        _Block_release(v131);
                      }
                    }

                    free(v2);
                    return v129;
                  }
                }
              }
            }

            return result;
          }
        }
      }

      result = 1;
      goto LABEL_309;
    }

    v170 = p_output_handler;
    v52 = __nwlog_obj();
    *v198 = 136446210;
    v199 = "nw_socket_setup_output_events";
    LODWORD(v164) = 12;
    v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s nw_queue_context_create_source output_source failed", v198, v164);
    v177 = OS_LOG_TYPE_ERROR;
    v176 = 0;
    if (__nwlog_fault(v53, &v177, &v176))
    {
      if (v177 == OS_LOG_TYPE_FAULT)
      {
        v54 = __nwlog_obj();
        v55 = v177;
        if (os_log_type_enabled(v54, v177))
        {
          *v198 = 136446210;
          v199 = "nw_socket_setup_output_events";
          v56 = "%{public}s nw_queue_context_create_source output_source failed";
LABEL_132:
          _os_log_impl(&dword_181A37000, v54, v55, v56, v198, 0xCu);
        }
      }

      else if (v176 == 1)
      {
        v57 = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v55 = v177;
        v58 = os_log_type_enabled(v54, v177);
        if (v57)
        {
          if (v58)
          {
            *v198 = 136446466;
            v199 = "nw_socket_setup_output_events";
            v200 = 2082;
            v201 = v57;
            _os_log_impl(&dword_181A37000, v54, v55, "%{public}s nw_queue_context_create_source output_source failed, dumping backtrace:%{public}s", v198, 0x16u);
          }

          free(v57);
          goto LABEL_133;
        }

        if (v58)
        {
          *v198 = 136446210;
          v199 = "nw_socket_setup_output_events";
          v56 = "%{public}s nw_queue_context_create_source output_source failed, no backtrace";
          goto LABEL_132;
        }
      }

      else
      {
        v54 = __nwlog_obj();
        v55 = v177;
        if (os_log_type_enabled(v54, v177))
        {
          *v198 = 136446210;
          v199 = "nw_socket_setup_output_events";
          v56 = "%{public}s nw_queue_context_create_source output_source failed, backtrace limit exceeded";
          goto LABEL_132;
        }
      }
    }

LABEL_133:
    if (v53)
    {
      free(v53);
    }

    v59 = v7[3].identifier->name;
    p_output_handler = v170;
    if (v59)
    {
      nw_queue_cancel_source(v59);
      v7[3].identifier = 0;
    }

    goto LABEL_137;
  }

  v140 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socket_connect";
  v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s called with null protocol", buf, 12);
  LOBYTE(type.sae_srcif) = 16;
  v178[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v141, &type, v178))
  {
    if (LOBYTE(type.sae_srcif) == 17)
    {
      v142 = __nwlog_obj();
      v143 = type.sae_srcif;
      if (os_log_type_enabled(v142, type.sae_srcif))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v144 = "%{public}s called with null protocol";
LABEL_363:
        _os_log_impl(&dword_181A37000, v142, v143, v144, buf, 0xCu);
      }
    }

    else if (v178[0] == OS_LOG_TYPE_INFO)
    {
      v148 = __nw_create_backtrace_string();
      v142 = __nwlog_obj();
      v143 = type.sae_srcif;
      v149 = os_log_type_enabled(v142, type.sae_srcif);
      if (v148)
      {
        if (v149)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_connect";
          *&buf[12] = 2082;
          *&buf[14] = v148;
          _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v148);
        goto LABEL_364;
      }

      if (v149)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v144 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_363;
      }
    }

    else
    {
      v142 = __nwlog_obj();
      v143 = type.sae_srcif;
      if (os_log_type_enabled(v142, type.sae_srcif))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v144 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_363;
      }
    }
  }

LABEL_364:
  if (v141)
  {
    free(v141);
  }

  return 0;
}

void nw_queue_resume_source(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_queue_resume_source";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null source", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v5, &type, &v12))
    {
      goto LABEL_30;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_queue_resume_source";
        v8 = "%{public}s called with null source";
LABEL_28:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_queue_resume_source";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (!v10)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        v15 = "nw_queue_resume_source";
        v8 = "%{public}s called with null source, no backtrace";
        goto LABEL_28;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_queue_resume_source";
        v8 = "%{public}s called with null source, backtrace limit exceeded";
        goto LABEL_28;
      }
    }

LABEL_29:

LABEL_30:
    if (v5)
    {
      free(v5);
    }

    return;
  }

  if (*a1)
  {
    v1 = *a1;

    dispatch_resume(v1);
    return;
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v2 = a1;
    nw_queue_source_run_timer(a1);
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v2 = a1;
    nw_context_queue_source_block(*(a1 + 8), v3);
LABEL_12:
    *(v2 + 49) = 1;
    return;
  }

  if (gLogDatapath == 1)
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v15 = "nw_queue_resume_source";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Cancelled, not resuming source", buf, 0xCu);
    }
  }
}

uint64_t nw_socket_add_socket_events(uint64_t a1, int a2, int a3, char a4)
{
  v4 = a3;
  v79 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 112);
  v8 = *(a1 + 196);
  v9 = v8 | a3;
  v10 = v8 & ~a3;
  if (a2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  *(a1 + 196) = v11;
  if ((a4 & 1) == 0 && (*(a1 + 317) & 4) == 0 || *(a1 + 200) == v11)
  {
    return 1;
  }

  *v75 = 0;
  *&v75[8] = v75;
  *&v75[16] = 0x3802000000;
  *&v75[24] = __Block_byref_object_copy__67231;
  v76 = __Block_byref_object_dispose__67232;
  v12 = *(a1 - 56);
  v13 = a1 - 96;
  if (v12 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_11;
  }

  if (v12 != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v13) = 0;
    goto LABEL_14;
  }

  v13 = *(a1 - 32);
  if (v13)
  {
LABEL_11:
    v14 = *(v13 + 88);
    if (v14)
    {
      *(v13 + 88) = v14 + 1;
    }

    LOBYTE(v13) = -1;
  }

LABEL_14:
  v77 = a1 - 96;
  v78 = v13;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3802000000;
  v68[3] = __Block_byref_object_copy__37_67233;
  v68[4] = __Block_byref_object_dispose__38_67234;
  v15 = *(a1 + 80);
  if (v15)
  {
    v15 = os_retain(v15);
    v16 = v70 | 1;
  }

  else
  {
    v16 = -1;
  }

  object = v15;
  v70 = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 188);
  *v61 = MEMORY[0x1E69E9820];
  v62 = 0x40000000;
  v63 = ___ZL34nw_socket_init_socket_event_sourceP9nw_socketj_block_invoke;
  v64 = &unk_1E6A39930;
  v66 = v68;
  v67 = a1;
  v65 = v75;
  source = nw_queue_context_create_source(v17, v18, 4, v11, v61, 0);
  v20 = source;
  *(a1 + 112) = source;
  if (source)
  {
    nw_queue_activate_source(source);
    goto LABEL_34;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v72 = "nw_socket_init_socket_event_source";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_queue_context_create_source failed", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v59 = 0;
  if (__nwlog_fault(v21, &type, &v59))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v72 = "nw_socket_init_socket_event_source";
      v24 = "%{public}s nw_queue_context_create_source failed";
LABEL_30:
      v28 = v22;
      v29 = v23;
LABEL_31:
      _os_log_impl(&dword_181A37000, v28, v29, v24, buf, 0xCu);
      goto LABEL_32;
    }

    if (v59 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v72 = "nw_socket_init_socket_event_source";
      v24 = "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded";
      goto LABEL_30;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    HIDWORD(v58) = type;
    v27 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v27)
      {
        *buf = 136446466;
        v72 = "nw_socket_init_socket_event_source";
        v73 = 2082;
        v74 = backtrace_string;
        _os_log_impl(&dword_181A37000, v26, BYTE4(v58), "%{public}s nw_queue_context_create_source failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_32;
    }

    if (v27)
    {
      *buf = 136446210;
      v72 = "nw_socket_init_socket_event_source";
      v24 = "%{public}s nw_queue_context_create_source failed, no backtrace";
      v28 = v26;
      v29 = BYTE4(v58);
      goto LABEL_31;
    }
  }

LABEL_32:
  if (v21)
  {
    free(v21);
  }

LABEL_34:
  _Block_object_dispose(v68, 8);
  if ((v70 & 1) != 0 && object)
  {
    os_release(object);
  }

  _Block_object_dispose(v75, 8);
  if (v78)
  {
    v30 = v77;
    if (v77)
    {
      v31 = *(v77 + 40);
      if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v30 = *(v77 + 64)) != 0)
      {
        v32 = *(v30 + 88);
        if (v32)
        {
          v33 = v32 - 1;
          *(v30 + 88) = v33;
          if (!v33)
          {
            v34 = *(v30 + 64);
            if (v34)
            {
              *(v30 + 64) = 0;
              v34[2](v34);
              _Block_release(v34);
            }

            if (*(v30 + 72))
            {
              v35 = *(v30 + 64);
              if (v35)
              {
                _Block_release(v35);
              }
            }

            free(v30);
          }
        }
      }
    }
  }

  if (v20)
  {
    if (v7)
    {
      nw_queue_cancel_source(v7);
    }

    *(a1 + 200) = v11;
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_88;
    }

    v36 = *(a1 + 208);
    if (!a2)
    {
      v36 = 0;
    }

    LODWORD(v68[0]) = v36;
    if (!setsockopt(*(a1 + 188), 6, 517, v68, 4u))
    {
LABEL_88:
      if ((v4 & 0x200) == 0)
      {
        return 1;
      }

      v48 = *(a1 + 212);
      if (!a2)
      {
        v48 = 0;
      }

      LODWORD(v68[0]) = v48;
      if (!setsockopt(*(a1 + 188), 6, 519, v68, 4u))
      {
        return 1;
      }

      v49 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v50 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *v75 = 136446722;
        *&v75[4] = "nw_socket_set_adaptive_write_timeout";
        *&v75[12] = 2082;
        *&v75[14] = a1 + 324;
        *&v75[22] = 1024;
        *&v75[24] = v49;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d", v75, 0x1Cu);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      if (v49 == 22)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *v75 = 136446466;
          *&v75[4] = "nw_socket_set_adaptive_write_timeout";
          *&v75[12] = 1024;
          *&v75[14] = 22;
          _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d", v75, 0x12u);
        }

        return 1;
      }

      *v75 = 136446466;
      *&v75[4] = "nw_socket_set_adaptive_write_timeout";
      *&v75[12] = 1024;
      *&v75[14] = v49;
      LODWORD(v58) = 18;
      v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d", v75, v58);
      v61[0] = OS_LOG_TYPE_ERROR;
      buf[0] = 0;
      if (__nwlog_fault(v52, v61, buf))
      {
        if (v61[0] == OS_LOG_TYPE_FAULT)
        {
          v53 = __nwlog_obj();
          v54 = v61[0];
          if (!os_log_type_enabled(v53, v61[0]))
          {
            goto LABEL_113;
          }

          *v75 = 136446466;
          *&v75[4] = "nw_socket_set_adaptive_write_timeout";
          *&v75[12] = 1024;
          *&v75[14] = v49;
          v55 = "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d";
          goto LABEL_112;
        }

        if (buf[0] != 1)
        {
          v53 = __nwlog_obj();
          v54 = v61[0];
          if (!os_log_type_enabled(v53, v61[0]))
          {
            goto LABEL_113;
          }

          *v75 = 136446466;
          *&v75[4] = "nw_socket_set_adaptive_write_timeout";
          *&v75[12] = 1024;
          *&v75[14] = v49;
          v55 = "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_112;
        }

        v56 = __nw_create_backtrace_string();
        v53 = __nwlog_obj();
        v54 = v61[0];
        v57 = os_log_type_enabled(v53, v61[0]);
        if (v56)
        {
          if (v57)
          {
            *v75 = 136446722;
            *&v75[4] = "nw_socket_set_adaptive_write_timeout";
            *&v75[12] = 1024;
            *&v75[14] = v49;
            *&v75[18] = 2082;
            *&v75[20] = v56;
            _os_log_impl(&dword_181A37000, v53, v54, "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", v75, 0x1Cu);
          }

          free(v56);
          goto LABEL_113;
        }

        if (v57)
        {
          *v75 = 136446466;
          *&v75[4] = "nw_socket_set_adaptive_write_timeout";
          *&v75[12] = 1024;
          *&v75[14] = v49;
          v55 = "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_112:
          _os_log_impl(&dword_181A37000, v53, v54, v55, v75, 0x12u);
        }
      }

LABEL_113:
      if (v52)
      {
        free(v52);
      }

      return 1;
    }

    v37 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v38 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *v75 = 136446722;
      *&v75[4] = "nw_socket_set_adaptive_read_timeout";
      *&v75[12] = 2082;
      *&v75[14] = a1 + 324;
      *&v75[22] = 1024;
      *&v75[24] = v37;
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d", v75, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (v37 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *v75 = 136446466;
        *&v75[4] = "nw_socket_set_adaptive_read_timeout";
        *&v75[12] = 1024;
        *&v75[14] = 22;
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d", v75, 0x12u);
      }

      goto LABEL_88;
    }

    *v75 = 136446466;
    *&v75[4] = "nw_socket_set_adaptive_read_timeout";
    *&v75[12] = 1024;
    *&v75[14] = v37;
    LODWORD(v58) = 18;
    v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d", v75, v58);
    v61[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (__nwlog_fault(v42, v61, buf))
    {
      if (v61[0] == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = v61[0];
        if (!os_log_type_enabled(v43, v61[0]))
        {
          goto LABEL_86;
        }

        *v75 = 136446466;
        *&v75[4] = "nw_socket_set_adaptive_read_timeout";
        *&v75[12] = 1024;
        *&v75[14] = v37;
        v45 = "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d";
        goto LABEL_85;
      }

      if (buf[0] != 1)
      {
        v43 = __nwlog_obj();
        v44 = v61[0];
        if (!os_log_type_enabled(v43, v61[0]))
        {
          goto LABEL_86;
        }

        *v75 = 136446466;
        *&v75[4] = "nw_socket_set_adaptive_read_timeout";
        *&v75[12] = 1024;
        *&v75[14] = v37;
        v45 = "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_85;
      }

      v46 = __nw_create_backtrace_string();
      v43 = __nwlog_obj();
      v44 = v61[0];
      v47 = os_log_type_enabled(v43, v61[0]);
      if (v46)
      {
        if (v47)
        {
          *v75 = 136446722;
          *&v75[4] = "nw_socket_set_adaptive_read_timeout";
          *&v75[12] = 1024;
          *&v75[14] = v37;
          *&v75[18] = 2082;
          *&v75[20] = v46;
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", v75, 0x1Cu);
        }

        free(v46);
        goto LABEL_86;
      }

      if (v47)
      {
        *v75 = 136446466;
        *&v75[4] = "nw_socket_set_adaptive_read_timeout";
        *&v75[12] = 1024;
        *&v75[14] = v37;
        v45 = "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_85:
        _os_log_impl(&dword_181A37000, v43, v44, v45, v75, 0x12u);
      }
    }

LABEL_86:
    if (v42)
    {
      free(v42);
    }

    goto LABEL_88;
  }

  if ((*(a1 + 317) & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v40 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      *v75 = 136446466;
      *&v75[4] = "nw_socket_add_socket_events";
      *&v75[12] = 2082;
      *&v75[14] = a1 + 324;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s error in adding socket event source", v75, 0x16u);
    }
  }

  result = 0;
  *(a1 + 112) = v7;
  return result;
}

uint64_t nw_socket_get_remote(nw_protocol *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v47 = "nw_socket_get_remote";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (!__nwlog_fault(v7, &type, &v44))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_remote";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v44 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v47 = "nw_socket_get_remote";
                v48 = 2082;
                v49 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v47 = "nw_socket_get_remote";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_remote";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[17];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v47 = "nw_socket_get_remote";
        v48 = 2082;
        v49 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_socket_get_remote";
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v38, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_remote";
        v41 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
      }
    }

    else if (v44 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v43 = os_log_type_enabled(v39, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v47 = "nw_socket_get_remote";
          v48 = 2082;
          v49 = v42;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_84;
      }

      if (v43)
      {
        *buf = 136446210;
        v47 = "nw_socket_get_remote";
        v41 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_remote";
        v41 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v38)
  {
    free(v38);
  }

  return 0;
}

uint64_t nw_socket_get_local(nw_protocol *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v47 = "nw_socket_get_local";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (!__nwlog_fault(v7, &type, &v44))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_local";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v44 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v47 = "nw_socket_get_local";
                v48 = 2082;
                v49 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v47 = "nw_socket_get_local";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_local";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[16];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v47 = "nw_socket_get_local";
        v48 = 2082;
        v49 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_socket_get_local";
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v38, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_local";
        v41 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
      }
    }

    else if (v44 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v43 = os_log_type_enabled(v39, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v47 = "nw_socket_get_local";
          v48 = 2082;
          v49 = v42;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_84;
      }

      if (v43)
      {
        *buf = 136446210;
        v47 = "nw_socket_get_local";
        v41 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_local";
        v41 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v38)
  {
    free(v38);
  }

  return 0;
}

uint64_t nw_socket_get_parameters(nw_protocol *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v47 = "nw_socket_get_parameters";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (!__nwlog_fault(v7, &type, &v44))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_parameters";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v44 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v47 = "nw_socket_get_parameters";
                v48 = 2082;
                v49 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v47 = "nw_socket_get_parameters";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v47 = "nw_socket_get_parameters";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[14];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v47 = "nw_socket_get_parameters";
        v48 = 2082;
        v49 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_socket_get_parameters";
  v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v38, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_parameters";
        v41 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
      }
    }

    else if (v44 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v43 = os_log_type_enabled(v39, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v47 = "nw_socket_get_parameters";
          v48 = 2082;
          v49 = v42;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_84;
      }

      if (v43)
      {
        *buf = 136446210;
        v47 = "nw_socket_get_parameters";
        v41 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v47 = "nw_socket_get_parameters";
        v41 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v38)
  {
    free(v38);
  }

  return 0;
}

char *nw_path_copy_scoped_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_scoped_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_scoped_interface";
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
        v16 = "nw_path_copy_scoped_interface";
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
          v16 = "nw_path_copy_scoped_interface";
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
        v16 = "nw_path_copy_scoped_interface";
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
        v16 = "nw_path_copy_scoped_interface";
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

void ___ZL26nw_path_watch_necp_changesPU24objcproto13OS_nw_context8NSObject_block_invoke(uint64_t a1)
{
  globals_for_path = nw_context_get_globals_for_path(*(a1 + 32));
  os_unfair_lock_lock(globals_for_path + 29);
  os_unfair_lock_opaque = globals_for_path[30]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(globals_for_path + 29);
  v4 = *(a1 + 32);

  nw_path_necp_check_for_updates(v4, 0, os_unfair_lock_opaque);
}

void sub_181D2BB58(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 0x10) == 0)
    {
      v6 = v5 | 0x10;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    v6 = v5 & 0xFFEF;
    goto LABEL_6;
  }
}

void sub_181D2BBD8(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 0x20) == 0)
    {
      v6 = v5 | 0x20;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    v6 = v5 & 0xFFDF;
    goto LABEL_6;
  }
}

uint64_t nw_socket_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_socket_updated_path";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v29, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v38 = "nw_socket_updated_path";
          v32 = "%{public}s called with null protocol";
LABEL_61:
          _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v34 = os_log_type_enabled(v30, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            v38 = "nw_socket_updated_path";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_62;
        }

        if (v34)
        {
          *buf = 136446210;
          v38 = "nw_socket_updated_path";
          v32 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_61;
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v38 = "nw_socket_updated_path";
          v32 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_61;
        }
      }
    }

LABEL_62:
    if (v29)
    {
      free(v29);
    }

    return 0;
  }

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
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v9 = *a1[1].flow_id;
LABEL_18:
    effective_traffic_class = nw_path_get_effective_traffic_class(a3);
    nw_socket_set_traffic_class(&v9[1].output_handler, effective_traffic_class);
    if (LODWORD(v9[4].identifier) != 9216)
    {
      LODWORD(v9[4].identifier) = nw_path_get_maximum_datagram_size(a3);
    }

    result = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_34;
    }

    return result;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v38 = "nw_socket_updated_path";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v10, &type, &v35))
  {
    goto LABEL_31;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_31;
    }

    *buf = 136446210;
    v38 = "nw_socket_updated_path";
    v13 = "%{public}s called with null socket_handler";
LABEL_29:
    v20 = v11;
    v21 = v12;
LABEL_30:
    _os_log_impl(&dword_181A37000, v20, v21, v13, buf, 0xCu);
    goto LABEL_31;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_31;
    }

    *buf = 136446210;
    v38 = "nw_socket_updated_path";
    v13 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    goto LABEL_29;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  v18 = type;
  v19 = os_log_type_enabled(gLogObj, type);
  if (v16)
  {
    if (v19)
    {
      *buf = 136446466;
      v38 = "nw_socket_updated_path";
      v39 = 2082;
      v40 = v16;
      _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v16);
  }

  else if (v19)
  {
    *buf = 136446210;
    v38 = "nw_socket_updated_path";
    v13 = "%{public}s called with null socket_handler, no backtrace";
    v20 = v17;
    v21 = v18;
    goto LABEL_30;
  }

LABEL_31:
  if (v10)
  {
    free(v10);
  }

  result = 0;
  if ((v7 & 1) == 0)
  {
LABEL_34:
    v22 = v4->handle;
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v4 = *v4[1].flow_id) != 0)
    {
      v23 = v4[1].callbacks;
      if (v23)
      {
        v24 = (v23 - 1);
        v4[1].callbacks = v24;
        if (!v24)
        {
          v25 = result;
          v26 = *v4[1].flow_id;
          if (v26)
          {
            *v4[1].flow_id = 0;
            v26[2](v26);
            _Block_release(v26);
          }

          if (v4[1].flow_id[8])
          {
            v27 = *v4[1].flow_id;
            if (v27)
            {
              _Block_release(v27);
            }
          }

          free(v4);
          return v25;
        }
      }
    }
  }

  return result;
}

uint64_t nw_protocol_default_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_default_updated_path";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v8, &type, &v14))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v17 = "nw_protocol_default_updated_path";
      v11 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
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
          v17 = "nw_protocol_default_updated_path";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v13)
      {
LABEL_22:
        if (v8)
        {
          free(v8);
        }

        return 0;
      }

      *buf = 136446210;
      v17 = "nw_protocol_default_updated_path";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v17 = "nw_protocol_default_updated_path";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
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

  updated_path = callbacks->updated_path;
  if (!updated_path)
  {
    return 0;
  }

  return updated_path();
}

BOOL l4s_enabled_by_developer(void)
{
  v0 = networkd_settings_copy_value_of_type(nw_setting_enable_l4s, 0);
  v1 = v0;
  if (v0 && object_getClass(v0) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v1);

    if (value == 1)
    {
      return 1;
    }
  }

  else
  {
  }

  if (nw_settings_get_l4s_enabled_internal::onceToken != -1)
  {
    dispatch_once(&nw_settings_get_l4s_enabled_internal::onceToken, &__block_literal_global_67004);
  }

  return nw_settings_get_l4s_enabled_internal::l4s_setting == 1;
}

void nw_proxy_config_enumerate_resolved_endpoints(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_enumerate_resolved_endpoints";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_resolved_endpoints";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
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
          v26 = "nw_proxy_config_enumerate_resolved_endpoints";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_resolved_endpoints";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_resolved_endpoints";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    v6 = v3[6];
    if (v6)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_proxy_config_enumerate_resolved_endpoints_block_invoke;
      aBlock[3] = &unk_1E6A3CD30;
      v22 = v4;
      _nw_array_apply(v6, aBlock);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_enumerate_resolved_endpoints";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null enumerator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_resolved_endpoints";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_resolved_endpoints";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
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
      v26 = "nw_proxy_config_enumerate_resolved_endpoints";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_enumerate_resolved_endpoints";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t nw_endpoint_proxy_get_success_count(NWConcrete_nw_endpoint_handler *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    nw_endpoint_handler_initialize_association(v3);
    v4 = v3[7];

    if (!v4)
    {
      goto LABEL_7;
    }

    if (nw_protocol_copy_proxy_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_proxy_definition(void)::onceToken, &__block_literal_global_26677);
    }

    cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v4, nw_protocol_copy_proxy_definition(void)::proxy_definition);
    if (cached_content_for_protocol)
    {
      v6 = *cached_content_for_protocol;
    }

    else
    {
LABEL_7:
      v6 = 0;
    }

    goto LABEL_9;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_endpoint_proxy_get_success_count";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null child_handler", buf, 12);

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
        v19 = "nw_endpoint_proxy_get_success_count";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null child_handler", buf, 0xCu);
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
          v19 = "nw_endpoint_proxy_get_success_count";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null child_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_endpoint_proxy_get_success_count";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null child_handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_endpoint_proxy_get_success_count";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null child_handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

unint64_t nw_endpoint_proxy_get_timeout_nanos(NWConcrete_nw_endpoint_handler *a1, int a2)
{
  v3 = a1;
  v4 = &nw_setting_proxy_fast_rtt_delay_factor;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v4 = &nw_setting_proxy_rtt_delay_factor;
    v5 = 4;
  }

  int64_with_default = networkd_settings_get_int64_with_default(*v4, v5);
  if (v3)
  {
    v7 = nw_endpoint_handler_get_child_timeout_nanos(v3) * int64_with_default;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 250000000 * int64_with_default;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  v8 = networkd_settings_get_int64_with_default(nw_setting_proxy_fast_max_delay_ms, 10000);
  if (v7 >= 1000000 * v8)
  {
    v7 = 1000000 * v8;
  }

LABEL_8:

  return v7;
}

void nw_parameters_set_account_id(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_account_id(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_account_id";
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
        v12 = "nw_parameters_set_account_id";
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
            v12 = "nw_parameters_set_account_id";
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
        v12 = "nw_parameters_set_account_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_account_id";
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

uint64_t nw_socket_set_traffic_class(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if (*(a1 + 184) == a2)
  {
    return 0;
  }

  if (!setsockopt(*(a1 + 188), 0xFFFF, 4230, &v15, 4u))
  {
    v2 = 0;
    *(a1 + 184) = v15;
    return v2;
  }

  v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v17 = "nw_socket_set_traffic_class";
    v18 = 2082;
    *v19 = a1 + 324;
    *&v19[8] = 1024;
    *&v19[10] = v2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (v2 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = 22;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d", buf, 0x12u);
    }

    return v2;
  }

  *buf = 136446466;
  v17 = "nw_socket_set_traffic_class";
  v18 = 1024;
  *v19 = v2;
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d", buf, 18);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = v2;
      v9 = "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d";
      goto LABEL_25;
    }

    if (v13 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = v2;
      v9 = "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446722;
        v17 = "nw_socket_set_traffic_class";
        v18 = 1024;
        *v19 = v2;
        *&v19[4] = 2082;
        *&v19[6] = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = v2;
      v9 = "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x12u);
    }
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }

  return v2;
}

void ___ZL34nw_socket_init_socket_event_sourceP9nw_socketj_block_invoke(uint64_t a1)
{
  v115 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_socket_handle_socket_event";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
    type[0] = 16;
    v110[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v10, type, v110))
    {
      goto LABEL_67;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_handle_socket_event";
      v13 = "%{public}s called with null socket_handler";
    }

    else
    {
      if (v110[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type[0];
        v17 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_handle_socket_event";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_67;
        }

        if (!v17)
        {
LABEL_67:
          if (v10)
          {
            free(v10);
          }

          return;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_handle_socket_event";
        v13 = "%{public}s called with null socket_handler, no backtrace";
        v29 = v15;
        v30 = v16;
LABEL_66:
        _os_log_impl(&dword_181A37000, v29, v30, v13, buf, 0xCu);
        goto LABEL_67;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_handle_socket_event";
      v13 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    }

    v29 = v11;
    v30 = v12;
    goto LABEL_66;
  }

  v2 = (v1 + 317);
  if ((*(v1 + 317) & 0x4000) != 0)
  {
    return;
  }

  v4 = *(v1 + 196) & nw_queue_source_get_data(*(v1 + 112));
  if (!v4)
  {
    return;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socket_handle_socket_event";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      *&buf[22] = 1024;
      LODWORD(v112) = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Event mask: %#x", buf, 0x1Cu);
    }
  }

  v6 = v4 & 1;
  if ((v4 & 1) == 0)
  {
    v9 = 0;
    v8 = 60;
    if ((v4 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "nw_socket_handle_socket_event";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received CONNRESET event", buf, 0x16u);
    }
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v8 = 54;
  v9 = 54;
  if ((v4 & 8) != 0)
  {
LABEL_32:
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socket_handle_socket_event";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received TIMEOUT event", buf, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v6 = 1;
    v9 = v8;
  }

LABEL_43:
  v106 = v9;
  if ((v4 & 0x800) == 0)
  {
    goto LABEL_120;
  }

  v19 = *v2;
  if ((*v2 & 0x40) == 0)
  {
    if ((v19 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v20 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socket_handle_socket_event";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received CONNECTED event", buf, 0x16u);
      }
    }

    v105 = *v2;
    *v2 = v105 & 0x7FFB | 4;
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (*(v1 + 192) != 2 || (*v2 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    *type = 0x4000;
    if (!setsockopt(*(v1 + 188), 6, 513, type, 4u))
    {
      if ((*v2 & 0x80) != 0)
      {
        goto LABEL_57;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v54 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_57;
      }

      *buf = 136446722;
      *&buf[4] = "nw_socket_setup_notsent_lowat";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      *&buf[22] = 1024;
      LODWORD(v112) = *type;
      v38 = "%{public}s %{public}s Set TCP_NOTSENT_LOWAT(%u)";
      v39 = v54;
      v40 = OS_LOG_TYPE_DEBUG;
      v41 = 28;
      goto LABEL_115;
    }

    v32 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v1 + 188);
      *buf = 136447234;
      *&buf[4] = "nw_socket_setup_notsent_lowat";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      *&buf[22] = 1024;
      LODWORD(v112) = *type;
      WORD2(v112) = 1024;
      *(&v112 + 6) = v34;
      WORD5(v112) = 1024;
      HIDWORD(v112) = v32;
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d", buf, 0x28u);
    }

    v35 = __nwlog_obj();
    v36 = v35;
    if (v32 == 22)
    {
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      v37 = *(v1 + 188);
      *buf = 136446978;
      *&buf[4] = "nw_socket_setup_notsent_lowat";
      *&buf[12] = 1024;
      *&buf[14] = *type;
      *&buf[18] = 1024;
      *&buf[20] = v37;
      LOWORD(v112) = 1024;
      *(&v112 + 2) = 22;
      v38 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d";
      v39 = v36;
      v40 = OS_LOG_TYPE_ERROR;
      v41 = 30;
LABEL_115:
      _os_log_impl(&dword_181A37000, v39, v40, v38, buf, v41);
LABEL_57:
      v21 = *(v1 + 196) & 0xFFFFF7FF;
      *(v1 + 196) = v21;
      nw_socket_add_socket_events(v1, 1, v21, 1);
      v22 = v1 - 96;
      nw_socket_fillout_socket_properties((v1 - 96));
      nw_socket_internal_connect(v1);
      v23 = *(v1 + 56);
      if (v23)
      {
        v24 = *(v23 + 24);
        if (v24)
        {
          v25 = *(v24 + 112);
          if (v25)
          {
            v26 = *(v23 + 40);
            v27 = *(v1 + 56);
            if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v27 = *(v23 + 64)) != 0)
            {
              v42 = *(v27 + 88);
              if (v42)
              {
                *(v27 + 88) = v42 + 1;
              }

              v28 = v25(v23);
              v43 = *(v23 + 40);
              if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (v23 = *(v23 + 64)) != 0)
              {
                v44 = *(v23 + 88);
                if (v44)
                {
                  v45 = v44 - 1;
                  *(v23 + 88) = v45;
                  if (!v45)
                  {
                    v104 = v28;
                    v46 = *(v23 + 64);
                    if (v46)
                    {
                      *(v23 + 64) = 0;
                      v46[2](v46);
                      _Block_release(v46);
                    }

                    if (*(v23 + 72))
                    {
                      v47 = *(v23 + 64);
                      if (v47)
                      {
                        _Block_release(v47);
                      }
                    }

                    free(v23);
                    v28 = v104;
                  }
                }
              }
            }

            else
            {
              v28 = v25(*(v1 + 56));
            }

            if (v28)
            {
              v48 = _nw_parameters_copy_default_protocol_stack();
              v49 = nw_protocol_stack_copy_transport_protocol(v48);
              if (v49)
              {
                v50 = v49;
                if (_nw_protocol_options_is_tcp())
                {
                  maximum_segment_size = _nw_tcp_options_get_maximum_segment_size();
                  if (maximum_segment_size)
                  {
                    nw_socket_set_maximum_segment_size(v1, maximum_segment_size);
                  }
                }

                os_release(v50);
              }

              if (v48)
              {
                os_release(v48);
              }
            }
          }
        }
      }

      if (v105 < 0)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x2000000000;
        v52 = *(v1 - 56);
        v53 = v1 - 96;
        if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (v53 = *(v1 - 32)) != 0)
        {
          v55 = *(v53 + 88);
          if (v55)
          {
            *(v53 + 88) = v55 + 1;
          }
        }

        else
        {
          v22 = 0;
        }

        *&type[24] = v22;
        v56 = *(v1 + 144);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL29nw_socket_handle_socket_eventP9nw_socket_block_invoke;
        *&v112 = &unk_1E6A39958;
        *(&v112 + 1) = type;
        v113 = v1;
        nw_queue_context_async(v56, buf);
        _Block_object_dispose(type, 8);
      }

      goto LABEL_120;
    }

    v89 = *(v1 + 188);
    *buf = 136446978;
    *&buf[4] = "nw_socket_setup_notsent_lowat";
    *&buf[12] = 1024;
    *&buf[14] = *type;
    *&buf[18] = 1024;
    *&buf[20] = v89;
    LOWORD(v112) = 1024;
    *(&v112 + 2) = v32;
    v90 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d", buf, 30);
    v110[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v109) = 0;
    if (__nwlog_fault(v90, v110, &v109))
    {
      if (v110[0] == OS_LOG_TYPE_FAULT)
      {
        v91 = __nwlog_obj();
        v92 = v110[0];
        if (!os_log_type_enabled(v91, v110[0]))
        {
          goto LABEL_255;
        }

        v93 = *(v1 + 188);
        *buf = 136446978;
        *&buf[4] = "nw_socket_setup_notsent_lowat";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v93;
        LOWORD(v112) = 1024;
        *(&v112 + 2) = v32;
        v94 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d";
LABEL_253:
        v100 = v91;
        v101 = v92;
LABEL_254:
        _os_log_impl(&dword_181A37000, v100, v101, v94, buf, 0x1Eu);
        goto LABEL_255;
      }

      if (v109 != 1)
      {
        v91 = __nwlog_obj();
        v92 = v110[0];
        if (!os_log_type_enabled(v91, v110[0]))
        {
          goto LABEL_255;
        }

        v99 = *(v1 + 188);
        *buf = 136446978;
        *&buf[4] = "nw_socket_setup_notsent_lowat";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v99;
        LOWORD(v112) = 1024;
        *(&v112 + 2) = v32;
        v94 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_253;
      }

      v95 = __nw_create_backtrace_string();
      v96 = __nwlog_obj();
      HIDWORD(v103) = v110[0];
      v97 = os_log_type_enabled(v96, v110[0]);
      if (v95)
      {
        if (v97)
        {
          v98 = *(v1 + 188);
          *buf = 136447234;
          *&buf[4] = "nw_socket_setup_notsent_lowat";
          *&buf[12] = 1024;
          *&buf[14] = *type;
          *&buf[18] = 1024;
          *&buf[20] = v98;
          LOWORD(v112) = 1024;
          *(&v112 + 2) = v32;
          WORD3(v112) = 2082;
          *(&v112 + 1) = v95;
          _os_log_impl(&dword_181A37000, v96, BYTE4(v103), "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x28u);
        }

        free(v95);
        goto LABEL_255;
      }

      if (v97)
      {
        v102 = *(v1 + 188);
        *buf = 136446978;
        *&buf[4] = "nw_socket_setup_notsent_lowat";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v102;
        LOWORD(v112) = 1024;
        *(&v112 + 2) = v32;
        v94 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d, no backtrace";
        v100 = v96;
        v101 = BYTE4(v103);
        goto LABEL_254;
      }
    }

LABEL_255:
    if (v90)
    {
      free(v90);
    }

    goto LABEL_57;
  }

  if ((v19 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v31 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "nw_socket_handle_socket_event";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received CONNECTED event, but ignoring because disconnect has been requested", buf, 0x16u);
    }
  }

LABEL_120:
  if ((v4 & 0x1000) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v71 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received DISCONNECTED event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

LABEL_198:
    if ((~v4 & 6) != 0)
    {
      goto LABEL_203;
    }

    goto LABEL_199;
  }

  if (v6)
  {
    goto LABEL_198;
  }

  if ((v4 & 2) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v57 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received READ_CLOSE event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    nw_socket_input_finished((v1 - 96), v3);
  }

  if ((v4 & 4) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v58 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received WRITE_CLOSE event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }
  }

  if ((~v4 & 6) == 0)
  {
LABEL_199:
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      v72 = *(v1 + 112);
      if (!v72)
      {
LABEL_205:
        v109 = 4;
        *v110 = -1;
        if (!getsockopt(*(v1 + 188), 0xFFFF, 4103, v110, &v109))
        {
          v80 = *v110;
          if (*v110)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v81 = gconnectionLogObj;
            if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_237;
            }

            *type = 136446722;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 2082;
            *&type[14] = v1 + 324;
            *&type[22] = 1024;
            *&type[24] = v80;
            v82 = "%{public}s %{public}s Socket SO_ERROR %{darwin.errno}d";
            v83 = v81;
            v84 = OS_LOG_TYPE_ERROR;
            v85 = 28;
          }

          else
          {
            if ((*v2 & 0x80) != 0)
            {
              goto LABEL_237;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v88 = gconnectionLogObj;
            if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_237;
            }

            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 2082;
            *&type[14] = v1 + 324;
            v82 = "%{public}s %{public}s Socket SO_ERROR: 0";
            v83 = v88;
            v84 = OS_LOG_TYPE_DEFAULT;
            v85 = 22;
          }

          _os_log_impl(&dword_181A37000, v83, v84, v82, type, v85);
LABEL_237:
          if (*v110 || v106)
          {
            nw_socket_internal_error(v1);
          }

          nw_socket_internal_disconnect(v1);
          return;
        }

        v73 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        *v110 = v73;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v74 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *type = 136446722;
          *&type[4] = "nw_socket_handle_socket_event";
          *&type[12] = 2082;
          *&type[14] = v1 + 324;
          *&type[22] = 1024;
          *&type[24] = v73;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt SO_ERROR failed %{darwin.errno}d", type, 0x1Cu);
        }

        v75 = *v110;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 1024;
        *&type[14] = v75;
        LODWORD(v103) = 18;
        v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d", type, v103);
        v108 = OS_LOG_TYPE_ERROR;
        v107 = 0;
        if (__nwlog_fault(v76, &v108, &v107))
        {
          if (v108 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v77 = gLogObj;
            v78 = v108;
            if (!os_log_type_enabled(gLogObj, v108))
            {
              goto LABEL_235;
            }

            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 1024;
            *&type[14] = v75;
            v79 = "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d";
            goto LABEL_234;
          }

          if (v107 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v77 = gLogObj;
            v78 = v108;
            if (!os_log_type_enabled(gLogObj, v108))
            {
              goto LABEL_235;
            }

            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 1024;
            *&type[14] = v75;
            v79 = "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_234;
          }

          v86 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v77 = gLogObj;
          v78 = v108;
          v87 = os_log_type_enabled(gLogObj, v108);
          if (v86)
          {
            if (v87)
            {
              *type = 136446722;
              *&type[4] = "nw_socket_handle_socket_event";
              *&type[12] = 1024;
              *&type[14] = v75;
              *&type[18] = 2082;
              *&type[20] = v86;
              _os_log_impl(&dword_181A37000, v77, v78, "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
            }

            free(v86);
            goto LABEL_235;
          }

          if (v87)
          {
            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 1024;
            *&type[14] = v75;
            v79 = "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d, no backtrace";
LABEL_234:
            _os_log_impl(&dword_181A37000, v77, v78, v79, type, 0x12u);
          }
        }

LABEL_235:
        if (v76)
        {
          free(v76);
        }

        goto LABEL_237;
      }

LABEL_204:
      nw_queue_cancel_source(v72);
      *(v1 + 112) = 0;
      goto LABEL_205;
    }

LABEL_203:
    v72 = *(v1 + 112);
    if (!v72)
    {
      goto LABEL_205;
    }

    goto LABEL_204;
  }

  if ((v4 & 0x100) == 0)
  {
    goto LABEL_160;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v59 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      *type = 136446466;
      *&type[4] = "nw_socket_handle_socket_event";
      *&type[12] = 2082;
      *&type[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Socket received KEEPALIVE event", type, 0x16u);
    }
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    v60 = *(v1 + 56);
    if (!v60)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v60 = *(v1 + 56);
    if (!v60)
    {
      goto LABEL_160;
    }
  }

  v61 = *(v60 + 24);
  if (v61)
  {
    v62 = *(v61 + 160);
    if (v62)
    {
      v62();
    }
  }

LABEL_160:
  if ((v4 & 0x400) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v63 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received ADAPTIVE_READ_TIMEOUT event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      v64 = *(v1 + 56);
      if (v64)
      {
        goto LABEL_171;
      }
    }

    else
    {
      v64 = *(v1 + 56);
      if (v64)
      {
LABEL_171:
        v65 = *(v64 + 24);
        if (v65)
        {
          v66 = *(v65 + 160);
          if (v66)
          {
            v66();
          }
        }
      }
    }
  }

  if ((v4 & 0x200) == 0)
  {
    return;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v67 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *type = 136446466;
      *&type[4] = "nw_socket_handle_socket_event";
      *&type[12] = 2082;
      *&type[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received ADAPTIVE_WRITE_TIMEOUT event", type, 0x16u);
    }
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    v68 = *(v1 + 56);
    if (!v68)
    {
      return;
    }
  }

  else
  {
    v68 = *(v1 + 56);
    if (!v68)
    {
      return;
    }
  }

  v69 = *(v68 + 24);
  if (v69)
  {
    v70 = *(v69 + 160);
    if (v70)
    {
      v70();
    }
  }
}