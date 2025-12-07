void __nw_connection_used_tfo_block_invoke(uint64_t a1)
{
  buf.var100 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((v1[109] & 0x40) != 0)
  {
    v3 = v1;
    v4 = v3[2];

    if (nw_parameters_get_multipath(v4))
    {
      is_multipath = nw_endpoint_handler_is_multipath(*(*(a1 + 32) + 144));

      if (is_multipath)
      {
        v6 = nw_endpoint_handler_copy_multipath_tcp_info(*(*(a1 + 32) + 144));
        v7 = v6;
        if (v6)
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __nw_connection_used_tfo_block_invoke_2;
          applier[3] = &unk_1E6A3B898;
          applier[4] = *(a1 + 40);
          xpc_dictionary_apply(v6, applier);
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    v8 = nw_endpoint_handler_copy_connected_path(*(*(a1 + 32) + 144));
    v7 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = _nw_path_copy_direct_interface(v9);

      if (v10)
      {
        memset(&buf, 0, 424);
        if (nw_connection_get_tcp_info_for_connected_endpoint_locked(*(a1 + 32), &buf))
        {
          *(*(*(a1 + 40) + 8) + 24) = (buf.var43 & 0x1000000000) != 0;
        }
      }

      else
      {
        v13 = *(*(a1 + 32) + 16);
        if (v13 && !_nw_parameters_get_logging_disabled(v13))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v14 = gconnectionLogObj;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = *(*(a1 + 32) + 448);
            *&buf.var0 = 136446466;
            *&buf.var4 = "nw_connection_used_tfo_block_invoke";
            LOWORD(buf.var6) = 1024;
            *(&buf.var6 + 2) = v15;
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s [C%u] No connected interface", &buf.var0, 0x12u);
          }
        }

        v10 = 0;
      }
    }

    else
    {
      v11 = *(*(a1 + 32) + 16);
      if (!v11 || _nw_parameters_get_logging_disabled(v11))
      {
        v7 = 0;
        goto LABEL_26;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(a1 + 32) + 448);
        *&buf.var0 = 136446466;
        *&buf.var4 = "nw_connection_used_tfo_block_invoke";
        LOWORD(buf.var6) = 1024;
        *(&buf.var6 + 2) = v12;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [C%u] No connected path", &buf.var0, 0x12u);
      }
    }

LABEL_26:
  }
}

uint64_t nw_connection_get_tcp_info_for_connected_endpoint_locked(NWConcrete_nw_connection *a1, tcp_info *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = v3;
      if (nw_parameters_get_ip_protocol(v5->parameters) == 6)
      {
        v6 = nw_endpoint_handler_fillout_tcp_info(v5->parent_endpoint_handler, a2);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_7;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null tcp_info", buf, 12);

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
          v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null tcp_info", buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null tcp_info, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
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
          v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null tcp_info, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null tcp_info, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null connection", buf, 12);

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
          v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
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
          v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_connection_get_tcp_info_for_connected_endpoint_locked";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_27:

      free(backtrace_string);
    }
  }

LABEL_40:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_7:

  return v6;
}

uint64_t nw_connection_is_unlisted_tracker(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (v1)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_is_unlisted_tracker_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = &v18;
    v14 = v1;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_is_unlisted_tracker_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(v19 + 24);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_connection_is_unlisted_tracker";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v23 = "nw_connection_is_unlisted_tracker";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          v23 = "nw_connection_is_unlisted_tracker";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v23 = "nw_connection_is_unlisted_tracker";
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
        v23 = "nw_connection_is_unlisted_tracker";
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
  _Block_object_dispose(&v18, 8);

  return v3 & 1;
}

id nw_protocol_copy_quic_stream_definition()
{
  if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
  }

  v1 = nw_protocol_copy_quic_stream_definition_quic_definition;

  return v1;
}

id nw_protocol_implementation_get_remote(nw_protocol *a1)
{
  v86 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v2 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v3 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null instance", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v4, type, &v78))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v5 = __nwlog_obj();
            v6 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_remote";
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v78 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v5 = __nwlog_obj();
            v19 = type[0];
            v20 = os_log_type_enabled(v5, type[0]);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_get_remote";
                v80 = 2082;
                v81 = backtrace_string;
                _os_log_impl(&dword_181A37000, v5, v19, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v4)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            if (v20)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_remote";
              _os_log_impl(&dword_181A37000, v5, v19, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v5 = __nwlog_obj();
            v25 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_remote";
              _os_log_impl(&dword_181A37000, v5, v25, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v4)
        {
LABEL_44:
          v8 = 0;
          goto LABEL_45;
        }

LABEL_43:
        free(v4);
        goto LABEL_44;
      }

      v2 = *a1[1].flow_id;
    }

    v8 = &v2[1].output_handler;
    v9 = v2[1].handle;
    if (v9)
    {
      if (*(v9 + 10))
      {
        if (v2[6].output_handler)
        {
          v10 = v2[6].handle;
LABEL_46:

          goto LABEL_47;
        }

        if (v9[16] == 3)
        {
          some_node = nw_hash_table_get_some_node(*&v2[5].flow_id[8]);
          if (!some_node)
          {
            if ((SBYTE5(v2[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v26 = gLogObj;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_implementation_get_remote";
                v80 = 2082;
                v81 = &v2[7].output_handler_context + 7;
                v82 = 2080;
                v83 = " ";
                _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to find any flow", buf, 0x20u);
              }
            }

            goto LABEL_45;
          }

          v12 = *&some_node[4]._os_unfair_lock_opaque;
          if (!v12 || (v13 = v12[3]) == 0 || (v14 = *(v13 + 136)) == 0)
          {
LABEL_45:
            v10 = 0;
            goto LABEL_46;
          }

          v15 = v12[5];
          v16 = v12;
          if (v15 != &nw_protocol_ref_counted_handle)
          {
            if (v15 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v16) = 0;
              v17 = 1;
              goto LABEL_63;
            }

            v16 = v12[8];
            if (!v16)
            {
              v17 = 1;
LABEL_63:
              *buf = v12;
              buf[8] = v16;
              v10 = v14();
              if ((v17 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              goto LABEL_46;
            }
          }

          v31 = v16[11];
          v17 = 0;
          if (v31)
          {
            v16[11] = v31 + 1;
          }

          LOBYTE(v16) = -1;
          goto LABEL_63;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v22 = default_input_handler->handle;
          v23 = a1->default_input_handler;
          if (v22 != &nw_protocol_ref_counted_handle)
          {
            if (v22 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v23) = 0;
              v24 = 1;
              goto LABEL_54;
            }

            v23 = *default_input_handler[1].flow_id;
            if (!v23)
            {
              v24 = 1;
              goto LABEL_54;
            }
          }

          callbacks = v23[1].callbacks;
          v24 = 0;
          if (callbacks)
          {
            v23[1].callbacks = (&callbacks->add_input_handler + 1);
          }

          LOBYTE(v23) = -1;
LABEL_54:
          *type = default_input_handler;
          v77 = v23;
          v29 = default_input_handler->callbacks;
          if (v29)
          {
            get_remote_endpoint = v29->get_remote_endpoint;
            if (get_remote_endpoint)
            {
              v10 = get_remote_endpoint();
              if (v24)
              {
                goto LABEL_46;
              }

LABEL_57:
              nw::release_if_needed<nw_protocol *>(type);
              goto LABEL_46;
            }
          }

          v74 = v24;
          v52 = default_input_handler;
          v53 = __nwlog_obj();
          name = v52->identifier->name;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          if (!name)
          {
            name = "invalid";
          }

          v80 = 2082;
          v81 = name;
          v82 = 2048;
          v55 = v52;
          v83 = v52;
          v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, 32);

          v78 = OS_LOG_TYPE_ERROR;
          v75 = 0;
          if (__nwlog_fault(v56, &v78, &v75))
          {
            if (v78 == OS_LOG_TYPE_FAULT)
            {
              v57 = __nwlog_obj();
              v58 = v78;
              if (os_log_type_enabled(v57, v78))
              {
                v59 = v55->identifier->name;
                if (!v59)
                {
                  v59 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_remote_endpoint";
                v80 = 2082;
                v81 = v59;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v58, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, 0x20u);
              }

LABEL_156:

              goto LABEL_157;
            }

            if (v75 != 1)
            {
              v57 = __nwlog_obj();
              v70 = v78;
              if (os_log_type_enabled(v57, v78))
              {
                v71 = v55->identifier->name;
                if (!v71)
                {
                  v71 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_remote_endpoint";
                v80 = 2082;
                v81 = v71;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v70, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_156;
            }

            v64 = __nw_create_backtrace_string();
            v57 = __nwlog_obj();
            v65 = v78;
            v66 = os_log_type_enabled(v57, v78);
            if (!v64)
            {
              if (v66)
              {
                v73 = v55->identifier->name;
                if (!v73)
                {
                  v73 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_remote_endpoint";
                v80 = 2082;
                v81 = v73;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v65, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace", buf, 0x20u);
              }

              goto LABEL_156;
            }

            if (v66)
            {
              v67 = v55->identifier->name;
              if (!v67)
              {
                v67 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              v80 = 2082;
              v81 = v67;
              v82 = 2048;
              v83 = v55;
              v84 = 2082;
              v85 = v64;
              _os_log_impl(&dword_181A37000, v57, v65, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v64);
          }

LABEL_157:
          if (v56)
          {
            free(v56);
          }

          v10 = 0;
          if (v74)
          {
            goto LABEL_46;
          }

          goto LABEL_57;
        }

        v62 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_remote_endpoint";
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s called with null protocol", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v37, type, &v78))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v63 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v38, v63, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v78 != OS_LOG_TYPE_INFO)
        {
          v38 = __nwlog_obj();
          v72 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v38, v72, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v48 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v68 = type[0];
        v69 = os_log_type_enabled(v38, type[0]);
        if (!v48)
        {
          if (v69)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v38, v68, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v69)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          v80 = 2082;
          v81 = v48;
          _os_log_impl(&dword_181A37000, v38, v68, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v37, type, &v78))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v41 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_remote";
            _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v78 != OS_LOG_TYPE_INFO)
        {
          v38 = __nwlog_obj();
          v61 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_remote";
            _os_log_impl(&dword_181A37000, v38, v61, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v48 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v49 = type[0];
        v50 = os_log_type_enabled(v38, type[0]);
        if (!v48)
        {
          if (v50)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_remote";
            _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_remote";
          v80 = 2082;
          v81 = v48;
          _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v48);
      if (!v37)
      {
        goto LABEL_45;
      }

      goto LABEL_165;
    }

    v36 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_get_remote";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null instance->parent_definition", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v78 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v37, type, &v78))
    {
      goto LABEL_164;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v78 == OS_LOG_TYPE_INFO)
    {
      v45 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v46 = type[0];
      v47 = os_log_type_enabled(v38, type[0]);
      if (v45)
      {
        if (v47)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_remote";
          v80 = 2082;
          v81 = v45;
          _os_log_impl(&dword_181A37000, v38, v46, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v45);
LABEL_164:
        if (!v37)
        {
          goto LABEL_45;
        }

LABEL_165:
        free(v37);
        goto LABEL_45;
      }

      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        _os_log_impl(&dword_181A37000, v38, v46, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v60 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        _os_log_impl(&dword_181A37000, v38, v60, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_163:

    goto LABEL_164;
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_get_remote";
  v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v78 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v33, type, &v78))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v78 == OS_LOG_TYPE_INFO)
    {
      v42 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v43 = type[0];
      v44 = os_log_type_enabled(v34, type[0]);
      if (v42)
      {
        if (v44)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_remote";
          v80 = 2082;
          v81 = v42;
          _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_130;
      }

      if (v44)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_remote";
        _os_log_impl(&dword_181A37000, v34, v51, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_130:
  if (v33)
  {
    free(v33);
  }

  v10 = 0;
LABEL_47:

  return v10;
}

void sub_181CE1B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if ((v19 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

id nw_protocol_implementation_get_parameters(nw_protocol *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v2 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v3 = __nwlog_obj();
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null instance", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v70 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v4, type, &v70))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v5 = __nwlog_obj();
            v6 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              v72 = "nw_protocol_implementation_get_parameters";
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v70 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v5 = __nwlog_obj();
            v13 = type[0];
            v14 = os_log_type_enabled(v5, type[0]);
            if (backtrace_string)
            {
              if (v14)
              {
                *buf = 136446466;
                v72 = "nw_protocol_implementation_get_parameters";
                v73 = 2082;
                v74 = backtrace_string;
                _os_log_impl(&dword_181A37000, v5, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v4)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            if (v14)
            {
              *buf = 136446210;
              v72 = "nw_protocol_implementation_get_parameters";
              _os_log_impl(&dword_181A37000, v5, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v5 = __nwlog_obj();
            v19 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              v72 = "nw_protocol_implementation_get_parameters";
              _os_log_impl(&dword_181A37000, v5, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v4)
        {
LABEL_35:
          v8 = 0;
LABEL_36:
          v11 = 0;
          goto LABEL_37;
        }

LABEL_34:
        free(v4);
        goto LABEL_35;
      }

      v2 = *a1[1].flow_id;
    }

    v8 = &v2[1].output_handler;
    v9 = v2[1].handle;
    if (v9)
    {
      if (*(v9 + 10))
      {
        if (v2[6].output_handler)
        {
          output_handler_context = v2[6].output_handler_context;
LABEL_16:
          v11 = output_handler_context;
LABEL_37:

          goto LABEL_38;
        }

        if (v9[16] == 3)
        {
          output_handler_context = v2[2].identifier;
          goto LABEL_16;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v16 = default_input_handler->handle;
          v17 = a1->default_input_handler;
          if (v16 != &nw_protocol_ref_counted_handle)
          {
            if (v16 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v17) = 0;
              v18 = 1;
              goto LABEL_45;
            }

            v17 = *default_input_handler[1].flow_id;
            if (!v17)
            {
              v18 = 1;
              goto LABEL_45;
            }
          }

          callbacks = v17[1].callbacks;
          v18 = 0;
          if (callbacks)
          {
            v17[1].callbacks = (&callbacks->add_input_handler + 1);
          }

          LOBYTE(v17) = -1;
LABEL_45:
          *type = default_input_handler;
          v69 = v17;
          v22 = default_input_handler->callbacks;
          if (v22)
          {
            get_parameters = v22->get_parameters;
            if (get_parameters)
            {
              v11 = get_parameters();
              if (v18)
              {
                goto LABEL_37;
              }

LABEL_48:
              nw::release_if_needed<nw_protocol *>(type);
              goto LABEL_37;
            }
          }

          v66 = v18;
          v44 = default_input_handler;
          v45 = __nwlog_obj();
          name = v44->identifier->name;
          *buf = 136446722;
          v72 = "__nw_protocol_get_parameters";
          if (!name)
          {
            name = "invalid";
          }

          v73 = 2082;
          v74 = name;
          v75 = 2048;
          v47 = v44;
          v76 = v44;
          v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);

          v70 = OS_LOG_TYPE_ERROR;
          v67 = 0;
          if (__nwlog_fault(v48, &v70, &v67))
          {
            if (v70 == OS_LOG_TYPE_FAULT)
            {
              v49 = __nwlog_obj();
              v50 = v70;
              if (os_log_type_enabled(v49, v70))
              {
                v51 = v47->identifier->name;
                if (!v51)
                {
                  v51 = "invalid";
                }

                *buf = 136446722;
                v72 = "__nw_protocol_get_parameters";
                v73 = 2082;
                v74 = v51;
                v75 = 2048;
                v76 = v47;
                _os_log_impl(&dword_181A37000, v49, v50, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 0x20u);
              }

LABEL_140:

              goto LABEL_141;
            }

            if (v67 != 1)
            {
              v49 = __nwlog_obj();
              v62 = v70;
              if (os_log_type_enabled(v49, v70))
              {
                v63 = v47->identifier->name;
                if (!v63)
                {
                  v63 = "invalid";
                }

                *buf = 136446722;
                v72 = "__nw_protocol_get_parameters";
                v73 = 2082;
                v74 = v63;
                v75 = 2048;
                v76 = v47;
                _os_log_impl(&dword_181A37000, v49, v62, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_140;
            }

            v56 = __nw_create_backtrace_string();
            v49 = __nwlog_obj();
            v57 = v70;
            v58 = os_log_type_enabled(v49, v70);
            if (!v56)
            {
              if (v58)
              {
                v65 = v47->identifier->name;
                if (!v65)
                {
                  v65 = "invalid";
                }

                *buf = 136446722;
                v72 = "__nw_protocol_get_parameters";
                v73 = 2082;
                v74 = v65;
                v75 = 2048;
                v76 = v47;
                _os_log_impl(&dword_181A37000, v49, v57, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace", buf, 0x20u);
              }

              goto LABEL_140;
            }

            if (v58)
            {
              v59 = v47->identifier->name;
              if (!v59)
              {
                v59 = "invalid";
              }

              *buf = 136446978;
              v72 = "__nw_protocol_get_parameters";
              v73 = 2082;
              v74 = v59;
              v75 = 2048;
              v76 = v47;
              v77 = 2082;
              v78 = v56;
              _os_log_impl(&dword_181A37000, v49, v57, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v56);
          }

LABEL_141:
          if (v48)
          {
            free(v48);
          }

          v11 = 0;
          if (v66)
          {
            goto LABEL_37;
          }

          goto LABEL_48;
        }

        v54 = __nwlog_obj();
        *buf = 136446210;
        v72 = "__nw_protocol_get_parameters";
        v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null protocol", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v70 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v29, type, &v70))
        {
          goto LABEL_148;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v30 = __nwlog_obj();
          v55 = type[0];
          if (os_log_type_enabled(v30, type[0]))
          {
            *buf = 136446210;
            v72 = "__nw_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v30, v55, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_147;
        }

        if (v70 != OS_LOG_TYPE_INFO)
        {
          v30 = __nwlog_obj();
          v64 = type[0];
          if (os_log_type_enabled(v30, type[0]))
          {
            *buf = 136446210;
            v72 = "__nw_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v30, v64, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_147;
        }

        v40 = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v60 = type[0];
        v61 = os_log_type_enabled(v30, type[0]);
        if (!v40)
        {
          if (v61)
          {
            *buf = 136446210;
            v72 = "__nw_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v30, v60, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_147;
        }

        if (v61)
        {
          *buf = 136446466;
          v72 = "__nw_protocol_get_parameters";
          v73 = 2082;
          v74 = v40;
          _os_log_impl(&dword_181A37000, v30, v60, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v70 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v29, type, &v70))
        {
          goto LABEL_148;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v30 = __nwlog_obj();
          v33 = type[0];
          if (os_log_type_enabled(v30, type[0]))
          {
            *buf = 136446210;
            v72 = "nw_protocol_implementation_get_parameters";
            _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_147;
        }

        if (v70 != OS_LOG_TYPE_INFO)
        {
          v30 = __nwlog_obj();
          v53 = type[0];
          if (os_log_type_enabled(v30, type[0]))
          {
            *buf = 136446210;
            v72 = "nw_protocol_implementation_get_parameters";
            _os_log_impl(&dword_181A37000, v30, v53, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_147;
        }

        v40 = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v41 = type[0];
        v42 = os_log_type_enabled(v30, type[0]);
        if (!v40)
        {
          if (v42)
          {
            *buf = 136446210;
            v72 = "nw_protocol_implementation_get_parameters";
            _os_log_impl(&dword_181A37000, v30, v41, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_147;
        }

        if (v42)
        {
          *buf = 136446466;
          v72 = "nw_protocol_implementation_get_parameters";
          v73 = 2082;
          v74 = v40;
          _os_log_impl(&dword_181A37000, v30, v41, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v40);
      if (!v29)
      {
        goto LABEL_36;
      }

      goto LABEL_149;
    }

    v28 = __nwlog_obj();
    *buf = 136446210;
    v72 = "nw_protocol_implementation_get_parameters";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null instance->parent_definition", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v70 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, type, &v70))
    {
      goto LABEL_148;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (os_log_type_enabled(v30, type[0]))
      {
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v70 == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v38 = type[0];
      v39 = os_log_type_enabled(v30, type[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v72 = "nw_protocol_implementation_get_parameters";
          v73 = 2082;
          v74 = v37;
          _os_log_impl(&dword_181A37000, v30, v38, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
LABEL_148:
        if (!v29)
        {
          goto LABEL_36;
        }

LABEL_149:
        free(v29);
        goto LABEL_36;
      }

      if (v39)
      {
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        _os_log_impl(&dword_181A37000, v30, v38, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v30 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v30, type[0]))
      {
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        _os_log_impl(&dword_181A37000, v30, v52, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_147:

    goto LABEL_148;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  v72 = "nw_protocol_implementation_get_parameters";
  v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v70 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, type, &v70))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v70 == OS_LOG_TYPE_INFO)
    {
      v34 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v35 = type[0];
      v36 = os_log_type_enabled(v26, type[0]);
      if (v34)
      {
        if (v36)
        {
          *buf = 136446466;
          v72 = "nw_protocol_implementation_get_parameters";
          v73 = 2082;
          v74 = v34;
          _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_114;
      }

      if (v36)
      {
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        v72 = "nw_protocol_implementation_get_parameters";
        _os_log_impl(&dword_181A37000, v26, v43, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_114:
  if (v25)
  {
    free(v25);
  }

  v11 = 0;
LABEL_38:

  return v11;
}

void sub_181CE2A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if ((v16 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

void sub_181CE2A68(int a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  v3 = sub_181A93260();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      v6 = _Block_copy(v2);
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v7 = *(v5 + 104);
      *(v5 + 104) = v6;
      _Block_release(v7);
      os_unfair_lock_unlock((*(v5 + 248) + 16));
      _Block_release(v2);

      return;
    }
  }

  _Block_release(v2);
}

void nw_quic_connection_set_local_max_streams_unidirectional_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_local_max_streams_unidirectional_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_max_streams_unidirectional_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void sub_181CE2E08(int a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  v3 = sub_181A93260();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      v6 = _Block_copy(v2);
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v7 = *(v5 + 112);
      *(v5 + 112) = v6;
      _Block_release(v7);
      os_unfair_lock_unlock((*(v5 + 248) + 16));
      _Block_release(v2);

      return;
    }
  }

  _Block_release(v2);
}

void nw_quic_connection_set_close_with_error_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_close_with_error_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_close_with_error_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v15 = "nw_quic_connection_set_close_with_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v15 = "nw_quic_connection_set_close_with_error_handler";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_close_with_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_close_with_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void sub_181CE3190(int a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  v3 = sub_181A93260();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      v6 = _Block_copy(v2);
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v7 = *(v5 + 168);
      *(v5 + 168) = v6;
      _Block_release(v7);
      os_unfair_lock_unlock((*(v5 + 248) + 16));
      _Block_release(v2);

      return;
    }
  }

  _Block_release(v2);
}

void nw_quic_connection_set_keepalive_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_keepalive_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_keepalive_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v15 = "nw_quic_connection_set_keepalive_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v15 = "nw_quic_connection_set_keepalive_handler";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_keepalive_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_keepalive_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void sub_181CE3578(int a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390, &qword_182AF5568);
  v3 = sub_181A93260();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 64);

    if (v5)
    {
      v6 = _Block_copy(v2);
      os_unfair_lock_lock((*(v5 + 248) + 16));
      v7 = *(v5 + 192);
      *(v5 + 192) = v6;
      _Block_release(v7);
      os_unfair_lock_unlock((*(v5 + 248) + 16));
      _Block_release(v2);

      return;
    }
  }

  _Block_release(v2);
}

uint64_t nw_protocol_udp_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v212 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    handle = a1->handle;
    v5 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v201 = 1;
      goto LABEL_11;
    }

    v5 = *a1[1].flow_id;
    if (v5)
    {
LABEL_6:
      callbacks = v5[1].callbacks;
      v201 = 0;
      if (callbacks)
      {
        v5[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v201 = 1;
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
        v205 = "nw_protocol_udp_add_input_handler";
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v202 = 0;
        if (!__nwlog_fault(v8, &type, &v202))
        {
          goto LABEL_253;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_253;
          }

          *buf = 136446210;
          v205 = "nw_protocol_udp_add_input_handler";
          v11 = "%{public}s called with null udp";
          goto LABEL_251;
        }

        if (v202 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_253;
          }

          *buf = 136446210;
          v205 = "nw_protocol_udp_add_input_handler";
          v11 = "%{public}s called with null udp, backtrace limit exceeded";
          goto LABEL_251;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        v26 = os_log_type_enabled(gLogObj, type);
        if (!backtrace_string)
        {
          if (!v26)
          {
            goto LABEL_253;
          }

          *buf = 136446210;
          v205 = "nw_protocol_udp_add_input_handler";
          v11 = "%{public}s called with null udp, no backtrace";
          v109 = v24;
          v110 = v25;
          goto LABEL_252;
        }

        if (v26)
        {
          *buf = 136446466;
          v205 = "nw_protocol_udp_add_input_handler";
          v206 = 2082;
          v207 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_253:
        if (!v8)
        {
          goto LABEL_255;
        }

        goto LABEL_254;
      }

      v7 = *a1[1].flow_id;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler == a2)
    {
      nw_protocol_set_flow_id_from_protocol(v7, a2);
      if (v2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      nw_protocol_release(default_input_handler);
      v3->default_input_handler = v2;
      if (v2)
      {
        v13 = v2->handle;
        v14 = v2;
        if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *v2[1].flow_id) != 0)
        {
          v15 = v14[1].callbacks;
          if (v15)
          {
            v14[1].callbacks = (&v15->add_input_handler + 1);
          }
        }

        nw_protocol_set_flow_id_from_protocol(v7, v2);
LABEL_27:
        if (!v2->output_handler)
        {
          if (v7)
          {
            v2->output_handler = v7;
            v16 = v7->handle;
            v17 = v7;
            if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *v7[1].flow_id) != 0)
            {
              v18 = v17[1].callbacks;
              if (v18)
              {
                v17[1].callbacks = (&v18->add_input_handler + 1);
              }
            }
          }
        }

        v19 = v2->handle;
        v20 = v2;
        if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v20 = *v2[1].flow_id) != 0)
        {
          v32 = v20[1].callbacks;
          if (v32)
          {
            v21 = 0;
            v20[1].callbacks = (&v32->add_input_handler + 1);
            v22 = v2->callbacks;
            if (!v22)
            {
              goto LABEL_272;
            }
          }

          else
          {
            v21 = 0;
            v22 = v2->callbacks;
            if (!v22)
            {
              goto LABEL_272;
            }
          }
        }

        else
        {
          v21 = 1;
          v22 = v2->callbacks;
          if (!v22)
          {
            goto LABEL_272;
          }
        }

        get_local_endpoint = v22->get_local_endpoint;
        if (get_local_endpoint)
        {
          v34 = get_local_endpoint(v2);
LABEL_57:
          if ((v21 & 1) == 0)
          {
            v35 = v2->handle;
            v39 = v2;
            if (v35 == &nw_protocol_ref_counted_handle)
            {
              goto LABEL_66;
            }

            if (v35 != &nw_protocol_ref_counted_additional_handle)
            {
              goto LABEL_59;
            }

            v39 = *v2[1].flow_id;
            if (v39)
            {
LABEL_66:
              v40 = v39[1].callbacks;
              if (v40)
              {
                v41 = (v40 - 1);
                v39[1].callbacks = v41;
                if (!v41)
                {
                  v42 = *v39[1].flow_id;
                  if (v42)
                  {
                    *v39[1].flow_id = 0;
                    v42[2](v42);
                    _Block_release(v42);
                  }

                  if (v39[1].flow_id[8])
                  {
                    v43 = *v39[1].flow_id;
                    if (v43)
                    {
                      _Block_release(v43);
                    }
                  }

                  free(v39);
                }
              }
            }
          }

          v35 = v2->handle;
LABEL_59:
          v36 = v2;
          if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *v2[1].flow_id) != 0)
          {
            v44 = v36[1].callbacks;
            if (v44)
            {
              v37 = 0;
              v36[1].callbacks = (&v44->add_input_handler + 1);
              v38 = v2->callbacks;
              if (!v38)
              {
                goto LABEL_280;
              }
            }

            else
            {
              v37 = 0;
              v38 = v2->callbacks;
              if (!v38)
              {
                goto LABEL_280;
              }
            }
          }

          else
          {
            v37 = 1;
            v38 = v2->callbacks;
            if (!v38)
            {
              goto LABEL_280;
            }
          }

          get_remote_endpoint = v38->get_remote_endpoint;
          if (get_remote_endpoint)
          {
            v46 = get_remote_endpoint(v2);
            goto LABEL_81;
          }

LABEL_280:
          v154 = __nwlog_obj();
          name = v2->identifier->name;
          *buf = 136446722;
          v205 = "__nw_protocol_get_remote_endpoint";
          if (!name)
          {
            name = "invalid";
          }

          v206 = 2082;
          v207 = name;
          v208 = 2048;
          v209 = v2;
          LODWORD(v194) = 32;
          v156 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v154, 16, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, v194);
          type = OS_LOG_TYPE_ERROR;
          v202 = 0;
          if (!__nwlog_fault(v156, &type, &v202))
          {
            goto LABEL_347;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v157 = __nwlog_obj();
            v158 = type;
            if (os_log_type_enabled(v157, type))
            {
              v159 = v2->identifier->name;
              if (!v159)
              {
                v159 = "invalid";
              }

              *buf = 136446722;
              v205 = "__nw_protocol_get_remote_endpoint";
              v206 = 2082;
              v207 = v159;
              v208 = 2048;
              v209 = v2;
              v160 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_345:
              v188 = v157;
LABEL_346:
              _os_log_impl(&dword_181A37000, v188, v158, v160, buf, 0x20u);
            }
          }

          else if (v202 == 1)
          {
            v175 = v156;
            v176 = __nw_create_backtrace_string();
            v177 = __nwlog_obj();
            v158 = type;
            loga = v177;
            v178 = os_log_type_enabled(v177, type);
            if (v176)
            {
              if (v178)
              {
                v179 = v2->identifier->name;
                if (!v179)
                {
                  v179 = "invalid";
                }

                *buf = 136446978;
                v205 = "__nw_protocol_get_remote_endpoint";
                v206 = 2082;
                v207 = v179;
                v208 = 2048;
                v209 = v2;
                v210 = 2082;
                v211 = v176;
                _os_log_impl(&dword_181A37000, loga, v158, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v176);
              v156 = v175;
              goto LABEL_347;
            }

            v156 = v175;
            if (v178)
            {
              v192 = v2->identifier->name;
              if (!v192)
              {
                v192 = "invalid";
              }

              *buf = 136446722;
              v205 = "__nw_protocol_get_remote_endpoint";
              v206 = 2082;
              v207 = v192;
              v208 = 2048;
              v209 = v2;
              v160 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
              v188 = loga;
              goto LABEL_346;
            }
          }

          else
          {
            v157 = __nwlog_obj();
            v158 = type;
            if (os_log_type_enabled(v157, type))
            {
              v187 = v2->identifier->name;
              if (!v187)
              {
                v187 = "invalid";
              }

              *buf = 136446722;
              v205 = "__nw_protocol_get_remote_endpoint";
              v206 = 2082;
              v207 = v187;
              v208 = 2048;
              v209 = v2;
              v160 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
              goto LABEL_345;
            }
          }

LABEL_347:
          if (v156)
          {
            free(v156);
          }

          v46 = 0;
LABEL_81:
          if ((v37 & 1) == 0)
          {
            v47 = v2->handle;
            v48 = v2;
            if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v48 = *v2[1].flow_id) != 0)
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

          if (v34)
          {
            v53 = v34;
            v54 = _nw_endpoint_get_type(v53);

            if (v54 == 1)
            {
              if (v46)
              {
                v55 = v46;
                v56 = _nw_endpoint_get_type(v55);

                if (v56 == 1)
                {
                  v57 = v53;
                  port = _nw_endpoint_get_port(v57);

                  LOWORD(v7[2].output_handler_context) = __rev16(port);
                  v59 = v55;
                  v60 = _nw_endpoint_get_port(v59);

                  WORD1(v7[2].output_handler_context) = __rev16(v60);
                  v61 = v57;
                  address_family = _nw_endpoint_get_address_family(v61);

                  v63 = v59;
                  v64 = _nw_endpoint_get_address_family(v63);

                  v65 = address_family == 0;
                  if (v64 != 2)
                  {
                    v65 = 0;
                  }

                  v66 = address_family == 2 || v65;
                  if (v66)
                  {
                    v67 = 4;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  HIWORD(v7[2].output_handler_context) = v67 | HIWORD(v7[2].output_handler_context) & 0xFFFB;
                  v68 = v61;
                  address = _nw_endpoint_get_address(v68);

                  if (v66)
                  {
                    *v7[2].flow_id = *(address + 4);
                    if (v64 == 2)
                    {
                      v70 = v63;
                      v71 = _nw_endpoint_get_address(v70);

                      LODWORD(v7[2].identifier) = *(v71 + 4);
                    }
                  }

                  else
                  {
                    *v7[2].flow_id = *(address + 8);
                    if (v64 == 30)
                    {
                      v72 = v63;
                      v73 = _nw_endpoint_get_address(v72);

                      *&v7[2].identifier = *(v73 + 8);
                    }
                  }

                  v74 = v2->handle;
                  v75 = v2;
                  if (v74 == &nw_protocol_ref_counted_handle || v74 == &nw_protocol_ref_counted_additional_handle && (v75 = *v2[1].flow_id) != 0)
                  {
                    v78 = v75[1].callbacks;
                    if (v78)
                    {
                      v76 = 0;
                      v75[1].callbacks = (&v78->add_input_handler + 1);
                      v77 = v2->callbacks;
                      if (!v77)
                      {
                        goto LABEL_292;
                      }
                    }

                    else
                    {
                      v76 = 0;
                      v77 = v2->callbacks;
                      if (!v77)
                      {
                        goto LABEL_292;
                      }
                    }
                  }

                  else
                  {
                    v76 = 1;
                    v77 = v2->callbacks;
                    if (!v77)
                    {
                      goto LABEL_292;
                    }
                  }

                  get_parameters = v77->get_parameters;
                  if (get_parameters)
                  {
                    v80 = get_parameters(v2);
                    goto LABEL_121;
                  }

LABEL_292:
                  v162 = __nwlog_obj();
                  v163 = v2->identifier->name;
                  *buf = 136446722;
                  v205 = "__nw_protocol_get_parameters";
                  if (!v163)
                  {
                    v163 = "invalid";
                  }

                  v206 = 2082;
                  v207 = v163;
                  v208 = 2048;
                  v209 = v2;
                  LODWORD(v194) = 32;
                  v164 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, v194);
                  type = OS_LOG_TYPE_ERROR;
                  v202 = 0;
                  if (!__nwlog_fault(v164, &type, &v202))
                  {
                    goto LABEL_360;
                  }

                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v165 = __nwlog_obj();
                    v166 = type;
                    if (os_log_type_enabled(v165, type))
                    {
                      v167 = v2->identifier->name;
                      if (!v167)
                      {
                        v167 = "invalid";
                      }

                      *buf = 136446722;
                      v205 = "__nw_protocol_get_parameters";
                      v206 = 2082;
                      v207 = v167;
                      v208 = 2048;
                      v209 = v2;
                      v168 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_358:
                      v190 = v165;
LABEL_359:
                      _os_log_impl(&dword_181A37000, v190, v166, v168, buf, 0x20u);
                    }
                  }

                  else if (v202 == 1)
                  {
                    v181 = __nw_create_backtrace_string();
                    v182 = __nwlog_obj();
                    v166 = type;
                    logb = v182;
                    v183 = os_log_type_enabled(v182, type);
                    if (v181)
                    {
                      if (v183)
                      {
                        v184 = v2->identifier->name;
                        if (!v184)
                        {
                          v184 = "invalid";
                        }

                        *buf = 136446978;
                        v205 = "__nw_protocol_get_parameters";
                        v206 = 2082;
                        v207 = v184;
                        v208 = 2048;
                        v209 = v2;
                        v210 = 2082;
                        v211 = v181;
                        _os_log_impl(&dword_181A37000, logb, v166, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
                      }

                      free(v181);
                      goto LABEL_360;
                    }

                    if (v183)
                    {
                      v193 = v2->identifier->name;
                      if (!v193)
                      {
                        v193 = "invalid";
                      }

                      *buf = 136446722;
                      v205 = "__nw_protocol_get_parameters";
                      v206 = 2082;
                      v207 = v193;
                      v208 = 2048;
                      v209 = v2;
                      v168 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
                      v190 = logb;
                      goto LABEL_359;
                    }
                  }

                  else
                  {
                    v165 = __nwlog_obj();
                    v166 = type;
                    if (os_log_type_enabled(v165, type))
                    {
                      v189 = v2->identifier->name;
                      if (!v189)
                      {
                        v189 = "invalid";
                      }

                      *buf = 136446722;
                      v205 = "__nw_protocol_get_parameters";
                      v206 = 2082;
                      v207 = v189;
                      v208 = 2048;
                      v209 = v2;
                      v168 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
                      goto LABEL_358;
                    }
                  }

LABEL_360:
                  if (v164)
                  {
                    free(v164);
                  }

                  v80 = 0;
LABEL_121:
                  if ((v76 & 1) == 0)
                  {
                    v81 = v2->handle;
                    if (v81 == &nw_protocol_ref_counted_handle || v81 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
                    {
                      v82 = v2[1].callbacks;
                      if (v82)
                      {
                        v83 = (v82 - 1);
                        v2[1].callbacks = v83;
                        if (!v83)
                        {
                          v84 = *v2[1].flow_id;
                          if (v84)
                          {
                            *v2[1].flow_id = 0;
                            v84[2](v84);
                            _Block_release(v84);
                          }

                          if (v2[1].flow_id[8])
                          {
                            v85 = *v2[1].flow_id;
                            if (v85)
                            {
                              _Block_release(v85);
                            }
                          }

                          free(v2);
                        }
                      }
                    }
                  }

                  v86 = nw_parameters_copy_protocol_options_legacy(v80, v3);
                  if (v86)
                  {
                    v87 = v86;
                    _nw_protocol_options_get_log_id_str(v87, &v7[3]);

                    WORD2(v7[2].output_handler_context) = _nw_protocol_options_get_log_id_num(v87);
                    if (_nw_udp_options_get_prefer_no_checksum(v87))
                    {
                      v88 = 16;
                    }

                    else
                    {
                      v88 = 0;
                    }

                    HIWORD(v7[2].output_handler_context) = HIWORD(v7[2].output_handler_context) & 0xFFEF | v88;
                    if (_nw_udp_options_get_ignore_inbound_checksum(v87))
                    {
                      v89 = 64;
                    }

                    else
                    {
                      v89 = 0;
                    }

                    HIWORD(v7[2].output_handler_context) = HIWORD(v7[2].output_handler_context) & 0xFFBF | v89;
                    if (_nw_udp_options_get_no_metadata(v87))
                    {
                      v90 = 32;
                    }

                    else
                    {
                      v90 = 0;
                    }

                    HIWORD(v7[2].output_handler_context) = HIWORD(v7[2].output_handler_context) & 0xFFDF | v90;
                    os_release(v87);
                  }

                  if (nw_parameters_get_upper_transport_protocol(v80) == 253)
                  {
                    HIWORD(v7[2].output_handler_context) |= 0x80u;
                  }

                  v91 = v3->default_input_handler;
                  if (v91)
                  {
                    v92 = v91->callbacks;
                    if (v92)
                    {
                      get_path = v92->get_path;
                      if (get_path)
                      {
                        v94 = v91->handle;
                        v95 = v3->default_input_handler;
                        if (v94 == &nw_protocol_ref_counted_handle || v94 == &nw_protocol_ref_counted_additional_handle && (v95 = *v91[1].flow_id) != 0)
                        {
                          v99 = v95[1].callbacks;
                          if (v99)
                          {
                            v95[1].callbacks = (&v99->add_input_handler + 1);
                          }

                          v96 = get_path(v91);
                          v100 = v91->handle;
                          if (v100 == &nw_protocol_ref_counted_handle || v100 == &nw_protocol_ref_counted_additional_handle && (v91 = *v91[1].flow_id) != 0)
                          {
                            v101 = v91[1].callbacks;
                            if (v101)
                            {
                              v102 = (v101 - 1);
                              v91[1].callbacks = v102;
                              if (!v102)
                              {
                                v103 = v96;
                                v104 = *v91[1].flow_id;
                                if (v104)
                                {
                                  *v91[1].flow_id = 0;
                                  v104[2](v104);
                                  _Block_release(v104);
                                }

                                if (v91[1].flow_id[8])
                                {
                                  v105 = *v91[1].flow_id;
                                  if (v105)
                                  {
                                    _Block_release(v105);
                                  }
                                }

                                free(v91);
                                v96 = v103;
                              }
                            }
                          }
                        }

                        else
                        {
                          v96 = get_path(v3->default_input_handler);
                        }

                        if (v96)
                        {
                          v106 = v96;
                          effective_traffic_class = _nw_path_get_effective_traffic_class(v106);

                          LODWORD(v7[2].default_input_handler) = effective_traffic_class;
                          HIDWORD(v7[2].default_input_handler) = nw_path_get_maximum_datagram_size(v106);
                        }
                      }
                    }
                  }

                  if (_nw_signposts_once != -1)
                  {
                    dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
                  }

                  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
                  {
                    kdebug_trace();
                    result = 1;
                    if (v201)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = 1;
                    if (v201)
                    {
                      return result;
                    }
                  }

                  goto LABEL_256;
                }
              }

              v161 = __nwlog_obj();
              *buf = 136446210;
              v205 = "nw_protocol_udp_add_input_handler";
              LODWORD(v194) = 12;
              v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v161, 16, "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address)", buf, v194);
              type = OS_LOG_TYPE_ERROR;
              v202 = 0;
              if (!__nwlog_fault(v8, &type, &v202))
              {
                goto LABEL_253;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                v9 = __nwlog_obj();
                v10 = type;
                if (!os_log_type_enabled(v9, type))
                {
                  goto LABEL_253;
                }

                *buf = 136446210;
                v205 = "nw_protocol_udp_add_input_handler";
                v11 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address)";
                goto LABEL_251;
              }

              if (v202 == 1)
              {
                v133 = __nw_create_backtrace_string();
                v9 = __nwlog_obj();
                v10 = type;
                v180 = os_log_type_enabled(v9, type);
                if (v133)
                {
                  if (v180)
                  {
                    *buf = 136446466;
                    v205 = "nw_protocol_udp_add_input_handler";
                    v206 = 2082;
                    v207 = v133;
                    v135 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), dumping backtrace:%{public}s";
                    goto LABEL_244;
                  }

                  goto LABEL_245;
                }

                if (!v180)
                {
                  goto LABEL_253;
                }

                *buf = 136446210;
                v205 = "nw_protocol_udp_add_input_handler";
                v11 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), no backtrace";
              }

              else
              {
                v9 = __nwlog_obj();
                v10 = type;
                if (!os_log_type_enabled(v9, type))
                {
                  goto LABEL_253;
                }

                *buf = 136446210;
                v205 = "nw_protocol_udp_add_input_handler";
                v11 = "%{public}s called with null (remote_address && nw_endpoint_get_type(remote_address) == nw_endpoint_type_address), backtrace limit exceeded";
              }

LABEL_251:
              v109 = v9;
              v110 = v10;
LABEL_252:
              _os_log_impl(&dword_181A37000, v109, v110, v11, buf, 0xCu);
              goto LABEL_253;
            }
          }

LABEL_236:
          v132 = __nwlog_obj();
          *buf = 136446210;
          v205 = "nw_protocol_udp_add_input_handler";
          LODWORD(v194) = 12;
          v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address)", buf, v194);
          type = OS_LOG_TYPE_ERROR;
          v202 = 0;
          if (!__nwlog_fault(v8, &type, &v202))
          {
            goto LABEL_253;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v9 = __nwlog_obj();
            v10 = type;
            if (!os_log_type_enabled(v9, type))
            {
              goto LABEL_253;
            }

            *buf = 136446210;
            v205 = "nw_protocol_udp_add_input_handler";
            v11 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address)";
            goto LABEL_251;
          }

          if (v202 != 1)
          {
            v9 = __nwlog_obj();
            v10 = type;
            if (!os_log_type_enabled(v9, type))
            {
              goto LABEL_253;
            }

            *buf = 136446210;
            v205 = "nw_protocol_udp_add_input_handler";
            v11 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), backtrace limit exceeded";
            goto LABEL_251;
          }

          v133 = __nw_create_backtrace_string();
          v9 = __nwlog_obj();
          v10 = type;
          v134 = os_log_type_enabled(v9, type);
          if (!v133)
          {
            if (!v134)
            {
              goto LABEL_253;
            }

            *buf = 136446210;
            v205 = "nw_protocol_udp_add_input_handler";
            v11 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), no backtrace";
            goto LABEL_251;
          }

          if (v134)
          {
            *buf = 136446466;
            v205 = "nw_protocol_udp_add_input_handler";
            v206 = 2082;
            v207 = v133;
            v135 = "%{public}s called with null (local_address && nw_endpoint_get_type(local_address) == nw_endpoint_type_address), dumping backtrace:%{public}s";
LABEL_244:
            _os_log_impl(&dword_181A37000, v9, v10, v135, buf, 0x16u);
          }

LABEL_245:
          free(v133);
          if (!v8)
          {
LABEL_255:
            result = 0;
            if (v201)
            {
              return result;
            }

LABEL_256:
            v136 = v3->handle;
            if (v136 == &nw_protocol_ref_counted_handle || v136 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
            {
              v137 = v3[1].callbacks;
              if (v137)
              {
                v138 = (v137 - 1);
                v3[1].callbacks = v138;
                if (!v138)
                {
                  v139 = result;
                  v140 = *v3[1].flow_id;
                  if (v140)
                  {
                    *v3[1].flow_id = 0;
                    v140[2](v140);
                    _Block_release(v140);
                  }

                  if (v3[1].flow_id[8])
                  {
                    v141 = *v3[1].flow_id;
                    if (v141)
                    {
                      _Block_release(v141);
                    }
                  }

                  free(v3);
                  return v139;
                }
              }
            }

            return result;
          }

LABEL_254:
          free(v8);
          goto LABEL_255;
        }

LABEL_272:
        v147 = __nwlog_obj();
        v148 = v2->identifier->name;
        *buf = 136446722;
        v205 = "__nw_protocol_get_local_endpoint";
        if (!v148)
        {
          v148 = "invalid";
        }

        v206 = 2082;
        v207 = v148;
        v208 = 2048;
        v209 = v2;
        v149 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v147, 16, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback", buf, 32);
        type = OS_LOG_TYPE_ERROR;
        v202 = 0;
        if (!__nwlog_fault(v149, &type, &v202))
        {
          goto LABEL_338;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v150 = __nwlog_obj();
          v151 = type;
          if (os_log_type_enabled(v150, type))
          {
            v152 = v2->identifier->name;
            if (!v152)
            {
              v152 = "invalid";
            }

            *buf = 136446722;
            v205 = "__nw_protocol_get_local_endpoint";
            v206 = 2082;
            v207 = v152;
            v208 = 2048;
            v209 = v2;
            v153 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
LABEL_336:
            v186 = v150;
LABEL_337:
            _os_log_impl(&dword_181A37000, v186, v151, v153, buf, 0x20u);
          }
        }

        else if (v202 == 1)
        {
          v171 = __nw_create_backtrace_string();
          v172 = __nwlog_obj();
          v151 = type;
          log = v172;
          v173 = os_log_type_enabled(v172, type);
          if (v171)
          {
            if (v173)
            {
              v174 = v2->identifier->name;
              if (!v174)
              {
                v174 = "invalid";
              }

              *buf = 136446978;
              v205 = "__nw_protocol_get_local_endpoint";
              v206 = 2082;
              v207 = v174;
              v208 = 2048;
              v209 = v2;
              v210 = 2082;
              v211 = v171;
              _os_log_impl(&dword_181A37000, log, v151, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v171);
            goto LABEL_338;
          }

          if (v173)
          {
            v191 = v2->identifier->name;
            if (!v191)
            {
              v191 = "invalid";
            }

            *buf = 136446722;
            v205 = "__nw_protocol_get_local_endpoint";
            v206 = 2082;
            v207 = v191;
            v208 = 2048;
            v209 = v2;
            v153 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
            v186 = log;
            goto LABEL_337;
          }
        }

        else
        {
          v150 = __nwlog_obj();
          v151 = type;
          if (os_log_type_enabled(v150, type))
          {
            v185 = v2->identifier->name;
            if (!v185)
            {
              v185 = "invalid";
            }

            *buf = 136446722;
            v205 = "__nw_protocol_get_local_endpoint";
            v206 = 2082;
            v207 = v185;
            v208 = 2048;
            v209 = v2;
            v153 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
            goto LABEL_336;
          }
        }

LABEL_338:
        if (v149)
        {
          free(v149);
        }

        v34 = 0;
        goto LABEL_57;
      }

      nw_protocol_set_flow_id_from_protocol(v7, 0);
    }

    v27 = __nwlog_obj();
    *buf = 136446210;
    v205 = "__nw_protocol_get_output_handler";
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v202 = 0;
    if (__nwlog_fault(v28, &type, &v202))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_186;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_get_output_handler";
        v31 = "%{public}s called with null protocol";
LABEL_185:
        _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        goto LABEL_186;
      }

      if (v202 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_186;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_get_output_handler";
        v31 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_185;
      }

      v97 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v98 = os_log_type_enabled(v29, type);
      if (!v97)
      {
        if (!v98)
        {
          goto LABEL_186;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_get_output_handler";
        v31 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_185;
      }

      if (v98)
      {
        *buf = 136446466;
        v205 = "__nw_protocol_get_output_handler";
        v206 = 2082;
        v207 = v97;
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v97);
    }

LABEL_186:
    if (v28)
    {
      free(v28);
    }

    v111 = __nwlog_obj();
    *buf = 136446210;
    v205 = "__nw_protocol_set_output_handler";
    LODWORD(v195) = 12;
    v112 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v111, 16, "%{public}s called with null protocol", buf, v195);
    type = OS_LOG_TYPE_ERROR;
    v202 = 0;
    if (__nwlog_fault(v112, &type, &v202))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v113 = __nwlog_obj();
        v114 = type;
        if (!os_log_type_enabled(v113, type))
        {
          goto LABEL_202;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_set_output_handler";
        v115 = "%{public}s called with null protocol";
LABEL_201:
        _os_log_impl(&dword_181A37000, v113, v114, v115, buf, 0xCu);
        goto LABEL_202;
      }

      if (v202 != 1)
      {
        v113 = __nwlog_obj();
        v114 = type;
        if (!os_log_type_enabled(v113, type))
        {
          goto LABEL_202;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_set_output_handler";
        v115 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_201;
      }

      v116 = __nw_create_backtrace_string();
      v113 = __nwlog_obj();
      v114 = type;
      v117 = os_log_type_enabled(v113, type);
      if (!v116)
      {
        if (!v117)
        {
          goto LABEL_202;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_set_output_handler";
        v115 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_201;
      }

      if (v117)
      {
        *buf = 136446466;
        v205 = "__nw_protocol_set_output_handler";
        v206 = 2082;
        v207 = v116;
        _os_log_impl(&dword_181A37000, v113, v114, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v116);
    }

LABEL_202:
    if (v112)
    {
      free(v112);
    }

    v118 = __nwlog_obj();
    *buf = 136446210;
    v205 = "__nw_protocol_get_local_endpoint";
    LODWORD(v196) = 12;
    v119 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v118, 16, "%{public}s called with null protocol", buf, v196);
    type = OS_LOG_TYPE_ERROR;
    v202 = 0;
    if (__nwlog_fault(v119, &type, &v202))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v120 = __nwlog_obj();
        v121 = type;
        if (!os_log_type_enabled(v120, type))
        {
          goto LABEL_218;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_get_local_endpoint";
        v122 = "%{public}s called with null protocol";
LABEL_217:
        _os_log_impl(&dword_181A37000, v120, v121, v122, buf, 0xCu);
        goto LABEL_218;
      }

      if (v202 != 1)
      {
        v120 = __nwlog_obj();
        v121 = type;
        if (!os_log_type_enabled(v120, type))
        {
          goto LABEL_218;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_get_local_endpoint";
        v122 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_217;
      }

      v123 = __nw_create_backtrace_string();
      v120 = __nwlog_obj();
      v121 = type;
      v124 = os_log_type_enabled(v120, type);
      if (!v123)
      {
        if (!v124)
        {
          goto LABEL_218;
        }

        *buf = 136446210;
        v205 = "__nw_protocol_get_local_endpoint";
        v122 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_217;
      }

      if (v124)
      {
        *buf = 136446466;
        v205 = "__nw_protocol_get_local_endpoint";
        v206 = 2082;
        v207 = v123;
        _os_log_impl(&dword_181A37000, v120, v121, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v123);
    }

LABEL_218:
    if (v119)
    {
      free(v119);
    }

    v125 = __nwlog_obj();
    *buf = 136446210;
    v205 = "__nw_protocol_get_remote_endpoint";
    LODWORD(v197) = 12;
    v126 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v125, 16, "%{public}s called with null protocol", buf, v197);
    type = OS_LOG_TYPE_ERROR;
    v202 = 0;
    if (!__nwlog_fault(v126, &type, &v202))
    {
      goto LABEL_234;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v127 = __nwlog_obj();
      v128 = type;
      if (!os_log_type_enabled(v127, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v205 = "__nw_protocol_get_remote_endpoint";
      v129 = "%{public}s called with null protocol";
    }

    else if (v202 == 1)
    {
      v130 = __nw_create_backtrace_string();
      v127 = __nwlog_obj();
      v128 = type;
      v131 = os_log_type_enabled(v127, type);
      if (v130)
      {
        if (v131)
        {
          *buf = 136446466;
          v205 = "__nw_protocol_get_remote_endpoint";
          v206 = 2082;
          v207 = v130;
          _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v130);
        goto LABEL_234;
      }

      if (!v131)
      {
LABEL_234:
        if (v126)
        {
          free(v126);
        }

        goto LABEL_236;
      }

      *buf = 136446210;
      v205 = "__nw_protocol_get_remote_endpoint";
      v129 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v127 = __nwlog_obj();
      v128 = type;
      if (!os_log_type_enabled(v127, type))
      {
        goto LABEL_234;
      }

      *buf = 136446210;
      v205 = "__nw_protocol_get_remote_endpoint";
      v129 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v127, v128, v129, buf, 0xCu);
    goto LABEL_234;
  }

  v142 = __nwlog_obj();
  *buf = 136446210;
  v205 = "nw_protocol_udp_add_input_handler";
  v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v142, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v202 = 0;
  if (__nwlog_fault(v143, &type, &v202))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v144 = __nwlog_obj();
      v145 = type;
      if (os_log_type_enabled(v144, type))
      {
        *buf = 136446210;
        v205 = "nw_protocol_udp_add_input_handler";
        v146 = "%{public}s called with null protocol";
LABEL_365:
        _os_log_impl(&dword_181A37000, v144, v145, v146, buf, 0xCu);
      }
    }

    else if (v202 == 1)
    {
      v169 = __nw_create_backtrace_string();
      v144 = __nwlog_obj();
      v145 = type;
      v170 = os_log_type_enabled(v144, type);
      if (v169)
      {
        if (v170)
        {
          *buf = 136446466;
          v205 = "nw_protocol_udp_add_input_handler";
          v206 = 2082;
          v207 = v169;
          _os_log_impl(&dword_181A37000, v144, v145, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v169);
        goto LABEL_366;
      }

      if (v170)
      {
        *buf = 136446210;
        v205 = "nw_protocol_udp_add_input_handler";
        v146 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_365;
      }
    }

    else
    {
      v144 = __nwlog_obj();
      v145 = type;
      if (os_log_type_enabled(v144, type))
      {
        *buf = 136446210;
        v205 = "nw_protocol_udp_add_input_handler";
        v146 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_365;
      }
    }
  }

LABEL_366:
  if (v143)
  {
    free(v143);
  }

  return 0;
}

nw_protocol *nw_protocol_implementation_get_local(nw_protocol *a1)
{
  v86 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v2 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v3 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null instance", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v4, type, &v78))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v5 = __nwlog_obj();
            v6 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_local";
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v78 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v5 = __nwlog_obj();
            v19 = type[0];
            v20 = os_log_type_enabled(v5, type[0]);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_get_local";
                v80 = 2082;
                v81 = backtrace_string;
                _os_log_impl(&dword_181A37000, v5, v19, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v4)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            if (v20)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_local";
              _os_log_impl(&dword_181A37000, v5, v19, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v5 = __nwlog_obj();
            v25 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_local";
              _os_log_impl(&dword_181A37000, v5, v25, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v4)
        {
LABEL_44:
          v8 = 0;
          goto LABEL_45;
        }

LABEL_43:
        free(v4);
        goto LABEL_44;
      }

      v2 = *a1[1].flow_id;
    }

    v8 = &v2[1].output_handler;
    v9 = v2[1].handle;
    if (v9)
    {
      if (*(v9 + 10))
      {
        if (v2[6].output_handler)
        {
          v10 = v2[6].default_input_handler;
LABEL_46:

          goto LABEL_47;
        }

        if (v9[16] == 3)
        {
          some_node = nw_hash_table_get_some_node(*&v2[5].flow_id[8]);
          if (!some_node)
          {
            if ((SBYTE5(v2[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v26 = gLogObj;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_implementation_get_local";
                v80 = 2082;
                v81 = &v2[7].output_handler_context + 7;
                v82 = 2080;
                v83 = " ";
                _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to find any flow", buf, 0x20u);
              }
            }

            goto LABEL_45;
          }

          v12 = *&some_node[4]._os_unfair_lock_opaque;
          if (!v12 || (v13 = v12[3]) == 0 || (v14 = *(v13 + 128)) == 0)
          {
LABEL_45:
            v10 = 0;
            goto LABEL_46;
          }

          v15 = v12[5];
          v16 = v12;
          if (v15 != &nw_protocol_ref_counted_handle)
          {
            if (v15 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v16) = 0;
              v17 = 1;
              goto LABEL_63;
            }

            v16 = v12[8];
            if (!v16)
            {
              v17 = 1;
LABEL_63:
              *buf = v12;
              buf[8] = v16;
              v10 = v14();
              if ((v17 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              goto LABEL_46;
            }
          }

          v31 = v16[11];
          v17 = 0;
          if (v31)
          {
            v16[11] = v31 + 1;
          }

          LOBYTE(v16) = -1;
          goto LABEL_63;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v22 = default_input_handler->handle;
          v23 = a1->default_input_handler;
          if (v22 != &nw_protocol_ref_counted_handle)
          {
            if (v22 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v23) = 0;
              v24 = 1;
              goto LABEL_54;
            }

            v23 = *default_input_handler[1].flow_id;
            if (!v23)
            {
              v24 = 1;
              goto LABEL_54;
            }
          }

          callbacks = v23[1].callbacks;
          v24 = 0;
          if (callbacks)
          {
            v23[1].callbacks = (&callbacks->add_input_handler + 1);
          }

          LOBYTE(v23) = -1;
LABEL_54:
          *type = default_input_handler;
          v77 = v23;
          v29 = default_input_handler->callbacks;
          if (v29)
          {
            get_local_endpoint = v29->get_local_endpoint;
            if (get_local_endpoint)
            {
              v10 = get_local_endpoint();
              if (v24)
              {
                goto LABEL_46;
              }

LABEL_57:
              nw::release_if_needed<nw_protocol *>(type);
              goto LABEL_46;
            }
          }

          v74 = v24;
          v52 = default_input_handler;
          v53 = __nwlog_obj();
          name = v52->identifier->name;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_local_endpoint";
          if (!name)
          {
            name = "invalid";
          }

          v80 = 2082;
          v81 = name;
          v82 = 2048;
          v55 = v52;
          v83 = v52;
          v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback", buf, 32);

          v78 = OS_LOG_TYPE_ERROR;
          v75 = 0;
          if (__nwlog_fault(v56, &v78, &v75))
          {
            if (v78 == OS_LOG_TYPE_FAULT)
            {
              v57 = __nwlog_obj();
              v58 = v78;
              if (os_log_type_enabled(v57, v78))
              {
                v59 = v55->identifier->name;
                if (!v59)
                {
                  v59 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                v80 = 2082;
                v81 = v59;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v58, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback", buf, 0x20u);
              }

LABEL_156:

              goto LABEL_157;
            }

            if (v75 != 1)
            {
              v57 = __nwlog_obj();
              v70 = v78;
              if (os_log_type_enabled(v57, v78))
              {
                v71 = v55->identifier->name;
                if (!v71)
                {
                  v71 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                v80 = 2082;
                v81 = v71;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v70, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_156;
            }

            v64 = __nw_create_backtrace_string();
            v57 = __nwlog_obj();
            v65 = v78;
            v66 = os_log_type_enabled(v57, v78);
            if (!v64)
            {
              if (v66)
              {
                v73 = v55->identifier->name;
                if (!v73)
                {
                  v73 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                v80 = 2082;
                v81 = v73;
                v82 = 2048;
                v83 = v55;
                _os_log_impl(&dword_181A37000, v57, v65, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace", buf, 0x20u);
              }

              goto LABEL_156;
            }

            if (v66)
            {
              v67 = v55->identifier->name;
              if (!v67)
              {
                v67 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              v80 = 2082;
              v81 = v67;
              v82 = 2048;
              v83 = v55;
              v84 = 2082;
              v85 = v64;
              _os_log_impl(&dword_181A37000, v57, v65, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v64);
          }

LABEL_157:
          if (v56)
          {
            free(v56);
          }

          v10 = 0;
          if (v74)
          {
            goto LABEL_46;
          }

          goto LABEL_57;
        }

        v62 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s called with null protocol", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v37, type, &v78))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v63 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_local_endpoint";
            _os_log_impl(&dword_181A37000, v38, v63, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v78 != OS_LOG_TYPE_INFO)
        {
          v38 = __nwlog_obj();
          v72 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_local_endpoint";
            _os_log_impl(&dword_181A37000, v38, v72, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v48 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v68 = type[0];
        v69 = os_log_type_enabled(v38, type[0]);
        if (!v48)
        {
          if (v69)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_local_endpoint";
            _os_log_impl(&dword_181A37000, v38, v68, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v69)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_local_endpoint";
          v80 = 2082;
          v81 = v48;
          _os_log_impl(&dword_181A37000, v38, v68, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v78 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v37, type, &v78))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v41 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_local";
            _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v78 != OS_LOG_TYPE_INFO)
        {
          v38 = __nwlog_obj();
          v61 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_local";
            _os_log_impl(&dword_181A37000, v38, v61, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v48 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v49 = type[0];
        v50 = os_log_type_enabled(v38, type[0]);
        if (!v48)
        {
          if (v50)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_local";
            _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_local";
          v80 = 2082;
          v81 = v48;
          _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v48);
      if (!v37)
      {
        goto LABEL_45;
      }

      goto LABEL_165;
    }

    v36 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_get_local";
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null instance->parent_definition", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v78 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v37, type, &v78))
    {
      goto LABEL_164;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v78 == OS_LOG_TYPE_INFO)
    {
      v45 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v46 = type[0];
      v47 = os_log_type_enabled(v38, type[0]);
      if (v45)
      {
        if (v47)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_local";
          v80 = 2082;
          v81 = v45;
          _os_log_impl(&dword_181A37000, v38, v46, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v45);
LABEL_164:
        if (!v37)
        {
          goto LABEL_45;
        }

LABEL_165:
        free(v37);
        goto LABEL_45;
      }

      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v38, v46, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v60 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v38, v60, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_163:

    goto LABEL_164;
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_get_local";
  v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v78 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v33, type, &v78))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v78 == OS_LOG_TYPE_INFO)
    {
      v42 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v43 = type[0];
      v44 = os_log_type_enabled(v34, type[0]);
      if (v42)
      {
        if (v44)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_local";
          v80 = 2082;
          v81 = v42;
          _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        goto LABEL_130;
      }

      if (v44)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_local";
        _os_log_impl(&dword_181A37000, v34, v51, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_130:
  if (v33)
  {
    free(v33);
  }

  v10 = 0;
LABEL_47:

  return v10;
}

void sub_181CE6504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if ((v19 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

id nw_protocol_implementation_get_path(nw_protocol *a1)
{
  v87 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v2 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v3 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null instance", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v79 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v4, type, &v79))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v5 = __nwlog_obj();
            v6 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_path";
              _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v79 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v5 = __nwlog_obj();
            v20 = type[0];
            v21 = os_log_type_enabled(v5, type[0]);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_get_path";
                v81 = 2082;
                v82 = backtrace_string;
                _os_log_impl(&dword_181A37000, v5, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v4)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            if (v21)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_path";
              _os_log_impl(&dword_181A37000, v5, v20, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v5 = __nwlog_obj();
            v26 = type[0];
            if (os_log_type_enabled(v5, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_get_path";
              _os_log_impl(&dword_181A37000, v5, v26, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v4)
        {
LABEL_44:
          v8 = 0;
          goto LABEL_45;
        }

LABEL_43:
        free(v4);
        goto LABEL_44;
      }

      v2 = *a1[1].flow_id;
    }

    v8 = &v2[1].output_handler;
    v9 = v2[1].handle;
    if (v9)
    {
      if (*(v9 + 10))
      {
        v10 = *v2[6].flow_id;
        if (v10)
        {
          v11 = v10;
LABEL_46:

          goto LABEL_47;
        }

        if (v9[16] == 3)
        {
          some_node = nw_hash_table_get_some_node(*&v2[5].flow_id[8]);
          if (!some_node)
          {
            if ((SBYTE5(v2[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v27 = gLogObj;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_implementation_get_path";
                v81 = 2082;
                v82 = &v2[7].output_handler_context + 7;
                v83 = 2080;
                v84 = " ";
                _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to find any flow", buf, 0x20u);
              }
            }

            goto LABEL_45;
          }

          v13 = *&some_node[4]._os_unfair_lock_opaque;
          if (!v13 || (v14 = v13[3]) == 0 || (v15 = *(v14 + 120)) == 0)
          {
LABEL_45:
            v11 = 0;
            goto LABEL_46;
          }

          v16 = v13[5];
          v17 = v13;
          if (v16 != &nw_protocol_ref_counted_handle)
          {
            if (v16 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v17) = 0;
              v18 = 1;
              goto LABEL_63;
            }

            v17 = v13[8];
            if (!v17)
            {
              v18 = 1;
LABEL_63:
              *buf = v13;
              buf[8] = v17;
              v11 = v15();
              if ((v18 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              goto LABEL_46;
            }
          }

          v32 = v17[11];
          v18 = 0;
          if (v32)
          {
            v17[11] = v32 + 1;
          }

          LOBYTE(v17) = -1;
          goto LABEL_63;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v23 = default_input_handler->handle;
          v24 = a1->default_input_handler;
          if (v23 != &nw_protocol_ref_counted_handle)
          {
            if (v23 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v24) = 0;
              v25 = 1;
              goto LABEL_54;
            }

            v24 = *default_input_handler[1].flow_id;
            if (!v24)
            {
              v25 = 1;
              goto LABEL_54;
            }
          }

          callbacks = v24[1].callbacks;
          v25 = 0;
          if (callbacks)
          {
            v24[1].callbacks = (&callbacks->add_input_handler + 1);
          }

          LOBYTE(v24) = -1;
LABEL_54:
          *type = default_input_handler;
          v78 = v24;
          v30 = default_input_handler->callbacks;
          if (v30)
          {
            get_path = v30->get_path;
            if (get_path)
            {
              v11 = get_path();
              if (v25)
              {
                goto LABEL_46;
              }

LABEL_57:
              nw::release_if_needed<nw_protocol *>(type);
              goto LABEL_46;
            }
          }

          v75 = v25;
          v53 = default_input_handler;
          v54 = __nwlog_obj();
          name = v53->identifier->name;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_path";
          if (!name)
          {
            name = "invalid";
          }

          v81 = 2082;
          v82 = name;
          v83 = 2048;
          v56 = v53;
          v84 = v53;
          v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s protocol %{public}s (%p) has invalid get_path callback", buf, 32);

          v79 = OS_LOG_TYPE_ERROR;
          v76 = 0;
          if (__nwlog_fault(v57, &v79, &v76))
          {
            if (v79 == OS_LOG_TYPE_FAULT)
            {
              v58 = __nwlog_obj();
              v59 = v79;
              if (os_log_type_enabled(v58, v79))
              {
                v60 = v56->identifier->name;
                if (!v60)
                {
                  v60 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_path";
                v81 = 2082;
                v82 = v60;
                v83 = 2048;
                v84 = v56;
                _os_log_impl(&dword_181A37000, v58, v59, "%{public}s protocol %{public}s (%p) has invalid get_path callback", buf, 0x20u);
              }

LABEL_156:

              goto LABEL_157;
            }

            if (v76 != 1)
            {
              v58 = __nwlog_obj();
              v71 = v79;
              if (os_log_type_enabled(v58, v79))
              {
                v72 = v56->identifier->name;
                if (!v72)
                {
                  v72 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_path";
                v81 = 2082;
                v82 = v72;
                v83 = 2048;
                v84 = v56;
                _os_log_impl(&dword_181A37000, v58, v71, "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_156;
            }

            v65 = __nw_create_backtrace_string();
            v58 = __nwlog_obj();
            v66 = v79;
            v67 = os_log_type_enabled(v58, v79);
            if (!v65)
            {
              if (v67)
              {
                v74 = v56->identifier->name;
                if (!v74)
                {
                  v74 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_get_path";
                v81 = 2082;
                v82 = v74;
                v83 = 2048;
                v84 = v56;
                _os_log_impl(&dword_181A37000, v58, v66, "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace", buf, 0x20u);
              }

              goto LABEL_156;
            }

            if (v67)
            {
              v68 = v56->identifier->name;
              if (!v68)
              {
                v68 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_path";
              v81 = 2082;
              v82 = v68;
              v83 = 2048;
              v84 = v56;
              v85 = 2082;
              v86 = v65;
              _os_log_impl(&dword_181A37000, v58, v66, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v65);
          }

LABEL_157:
          if (v57)
          {
            free(v57);
          }

          v11 = 0;
          if (v75)
          {
            goto LABEL_46;
          }

          goto LABEL_57;
        }

        v63 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_path";
        v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s called with null protocol", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v79 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v38, type, &v79))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v39 = __nwlog_obj();
          v64 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_path";
            _os_log_impl(&dword_181A37000, v39, v64, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v79 != OS_LOG_TYPE_INFO)
        {
          v39 = __nwlog_obj();
          v73 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_path";
            _os_log_impl(&dword_181A37000, v39, v73, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v49 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v69 = type[0];
        v70 = os_log_type_enabled(v39, type[0]);
        if (!v49)
        {
          if (v70)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_path";
            _os_log_impl(&dword_181A37000, v39, v69, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v70)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_path";
          v81 = 2082;
          v82 = v49;
          _os_log_impl(&dword_181A37000, v39, v69, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v79 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v38, type, &v79))
        {
          goto LABEL_164;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v39 = __nwlog_obj();
          v42 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_path";
            _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v79 != OS_LOG_TYPE_INFO)
        {
          v39 = __nwlog_obj();
          v62 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_path";
            _os_log_impl(&dword_181A37000, v39, v62, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_163;
        }

        v49 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v50 = type[0];
        v51 = os_log_type_enabled(v39, type[0]);
        if (!v49)
        {
          if (v51)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_get_path";
            _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_163;
        }

        if (v51)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_path";
          v81 = 2082;
          v82 = v49;
          _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v49);
      if (!v38)
      {
        goto LABEL_45;
      }

      goto LABEL_165;
    }

    v37 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_get_path";
    v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null instance->parent_definition", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v79 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v38, type, &v79))
    {
      goto LABEL_164;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v79 == OS_LOG_TYPE_INFO)
    {
      v46 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v47 = type[0];
      v48 = os_log_type_enabled(v39, type[0]);
      if (v46)
      {
        if (v48)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_path";
          v81 = 2082;
          v82 = v46;
          _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v46);
LABEL_164:
        if (!v38)
        {
          goto LABEL_45;
        }

LABEL_165:
        free(v38);
        goto LABEL_45;
      }

      if (v48)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v61 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v39, v61, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_163:

    goto LABEL_164;
  }

  v33 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_get_path";
  v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v79 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v34, type, &v79))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v79 == OS_LOG_TYPE_INFO)
    {
      v43 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v44 = type[0];
      v45 = os_log_type_enabled(v35, type[0]);
      if (v43)
      {
        if (v45)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_get_path";
          v81 = 2082;
          v82 = v43;
          _os_log_impl(&dword_181A37000, v35, v44, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        goto LABEL_130;
      }

      if (v45)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v35, v44, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_get_path";
        _os_log_impl(&dword_181A37000, v35, v52, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_130:
  if (v34)
  {
    free(v34);
  }

  v11 = 0;
LABEL_47:

  return v11;
}

void sub_181CE7514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if ((v19 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_path_get_maximum_datagram_size(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    mtu = _nw_path_get_mtu(v1);
    v4 = mtu;
    if (mtu)
    {
      v5 = mtu;
    }

    else
    {
      v5 = 1500;
    }

    if (v5 >= 0x3C)
    {
      v6 = _nw_path_copy_endpoint(v2);
      v7 = v6;
      if (v6 && (v8 = v6, v9 = _nw_endpoint_get_type(v8), v8, v9 == 1) && (v10 = v8, address_family = _nw_endpoint_get_address_family(v10), v10, address_family == 2))
      {
        v12 = -20;
      }

      else
      {
        v12 = -40;
      }

      v13 = _nw_path_copy_parameters(v2);
      ip_protocol = nw_parameters_get_ip_protocol(v13);
      v15 = v5 + v12;

      if (ip_protocol == 17)
      {
        v16 = -8;
      }

      else
      {
        v16 = -20;
      }

      v4 = v16 + v15;
    }

    goto LABEL_15;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_path_get_maximum_datagram_size";
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v19, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v29 = "nw_path_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v29 = "nw_path_get_maximum_datagram_size";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v24)
      {
        *buf = 136446210;
        v29 = "nw_path_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v29 = "nw_path_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v19)
  {
    free(v19);
  }

  v4 = 0;
LABEL_15:

  return v4;
}

uint64_t nw_protocol_default_register_notification(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_default_register_notification";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v6, &type, &v12))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_register_notification";
      v9 = "%{public}s called with null protocol";
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
          v15 = "nw_protocol_default_register_notification";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v11)
      {
LABEL_22:
        if (v6)
        {
          free(v6);
        }

        return 0;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_register_notification";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_register_notification";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_22;
  }

  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 144);
  if (!v3)
  {
    return 0;
  }

  return v3();
}

void nw_protocol_implementation_connected(nw_protocol *a1, nw_protocol *a2)
{
  v160 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v6 = __nwlog_obj();
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null instance", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v143[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v7, type, v143))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v8 = __nwlog_obj();
            v9 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v149 = "nw_protocol_implementation_connected";
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v143[0] == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            v8 = __nwlog_obj();
            v33 = type[0];
            v34 = os_log_type_enabled(v8, type[0]);
            if (backtrace_string)
            {
              if (v34)
              {
                *buf = 136446466;
                v149 = "nw_protocol_implementation_connected";
                v150 = 2082;
                v151 = backtrace_string;
                _os_log_impl(&dword_181A37000, v8, v33, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v7)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            }

            if (v34)
            {
              *buf = 136446210;
              v149 = "nw_protocol_implementation_connected";
              _os_log_impl(&dword_181A37000, v8, v33, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v8 = __nwlog_obj();
            v35 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              v149 = "nw_protocol_implementation_connected";
              _os_log_impl(&dword_181A37000, v8, v35, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v7)
        {
LABEL_75:
          v11 = 0;
          goto LABEL_76;
        }

LABEL_74:
        free(v7);
        goto LABEL_75;
      }

      v5 = *a1[1].flow_id;
    }

    v10 = &v5[1].output_handler;
    v11 = v10;
    v12 = v5[1].handle;
    if (v12)
    {
      if (v12[10])
      {
        if (!*v5[6].flow_id)
        {
          v13 = nw_protocol_instance_copy_path(v10, -1);
          v14 = *v5[6].flow_id;
          *v5[6].flow_id = v13;
        }

        v141 = 0;
        v15 = nw_protocol_implementation_lookup_path_by_protocol(v11, a2, &v141);
        if (v15)
        {
          v16 = v15;
          if (*(v15 + 144) == 1)
          {
            if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v17 = gLogObj;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v18 = *(v16 + 16);
                v19 = *(v16 + 136);
                *buf = 136447490;
                v149 = "nw_protocol_implementation_connected";
                v150 = 2082;
                v151 = &v5[7].output_handler_context + 7;
                v152 = 2080;
                v153 = " ";
                v154 = 2048;
                v155 = v141;
                v156 = 2112;
                v157 = v18;
                v158 = 2112;
                v159 = v19;
                _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx is now established over %@:%@", buf, 0x3Eu);
              }
            }

            *(v16 + 144) = 3;
            callbacks = v5[6].callbacks;
            v21 = v141;
            if (callbacks == v141)
            {
              v5[6].identifier = callbacks;
            }

            v22 = v11;
            v23 = v22;
            v24 = *(*(v5[1].handle + 10) + 216);
            if (v24)
            {
              v24(v22, v21, 3, v5[6].callbacks == v21);
            }

            nw_protocol_implementation_read(v23, a2);
          }
        }

        if (*(v5[1].handle + 16) == 3)
        {
          v25 = *&v5[5].flow_id[8];
          v140[0] = MEMORY[0x1E69E9820];
          v140[1] = 3221225472;
          v140[2] = ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke;
          v140[3] = &__block_descriptor_40_e23_B16__0__nw_hash_node__8l;
          v140[4] = a2;
          nw_hash_table_apply(v25, v140);
          if (a1->output_handler == a2)
          {
            BYTE2(v5[7].output_handler_context) |= 0x20u;
            v26 = *&v5[5].flow_id[8];
            v138[0] = MEMORY[0x1E69E9820];
            v138[1] = 3221225472;
            v138[2] = ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke_2;
            v138[3] = &unk_1E6A3CDF8;
            v27 = v11;
            v139 = v27;
            nw_hash_table_apply(v26, v138);
            nw_protocol_implementation_read(v27, a1->output_handler);
          }

          goto LABEL_76;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v29 = default_input_handler->handle;
          v30 = a1->default_input_handler;
          if (v29 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_42;
          }

          if (v29 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v30) = 0;
            v31 = 1;
            goto LABEL_45;
          }

          v30 = *default_input_handler[1].flow_id;
          if (v30)
          {
LABEL_42:
            v36 = v30[1].callbacks;
            v31 = 0;
            if (v36)
            {
              v30[1].callbacks = (&v36->add_input_handler + 1);
            }

            LOBYTE(v30) = -1;
          }

          else
          {
            v31 = 1;
          }

LABEL_45:
          *type = default_input_handler;
          v147 = v30;
          if (a2)
          {
            v37 = a2->handle;
            v38 = a2;
            if (v37 != &nw_protocol_ref_counted_handle)
            {
              if (v37 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v38) = 0;
                v39 = 1;
                goto LABEL_53;
              }

              v38 = *a2[1].flow_id;
              if (!v38)
              {
                v39 = 1;
                goto LABEL_53;
              }
            }

            v40 = v38[1].callbacks;
            v39 = 0;
            if (v40)
            {
              v38[1].callbacks = (&v40->add_input_handler + 1);
            }

            LOBYTE(v38) = -1;
LABEL_53:
            *v143 = a2;
            v144 = v38;
            v41 = default_input_handler->callbacks;
            if (v41)
            {
              connected = v41->connected;
              if (connected)
              {
                connected();
LABEL_56:
                if ((v39 & 1) == 0)
                {
                  nw::release_if_needed<nw_protocol *>(v143);
                }

LABEL_58:
                if ((v31 & 1) == 0)
                {
                  nw::release_if_needed<nw_protocol *>(type);
                }

LABEL_60:
                if (a1->output_handler != a2)
                {
                  goto LABEL_76;
                }

                v43 = BYTE2(v5[7].output_handler_context);
                BYTE2(v5[7].output_handler_context) = v43 | 0x20;
                v44 = v5[1].handle;
                if (*(v44 + 16) != 1 && (v43 & 8) == 0)
                {
                  if ((v43 & 4) == 0)
                  {
                    if (*(v44[10] + 120))
                    {
                      BYTE2(v5[7].output_handler_context) = v43 | 0x24;
                      v45 = *(v44[10] + 120);
                      server_mode = nw_parameters_get_server_mode(v5[2].identifier->name);
                      v45(v11, -1, server_mode);
                      nw_protocol_implementation_read(v11, a1->output_handler);
                      goto LABEL_76;
                    }

                    v58 = __nwlog_obj();
                    *buf = 136446210;
                    v149 = "nw_protocol_implementation_connected";
                    LODWORD(v134) = 12;
                    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null instance->parent_definition->start", buf, v134);

                    type[0] = OS_LOG_TYPE_ERROR;
                    v143[0] = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v59, type, v143))
                    {
                      goto LABEL_118;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v60 = __nwlog_obj();
                      v61 = type[0];
                      if (os_log_type_enabled(v60, type[0]))
                      {
                        *buf = 136446210;
                        v149 = "nw_protocol_implementation_connected";
                        _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null instance->parent_definition->start", buf, 0xCu);
                      }

LABEL_117:

                      goto LABEL_118;
                    }

                    if (v143[0] != OS_LOG_TYPE_INFO)
                    {
                      v60 = __nwlog_obj();
                      v65 = type[0];
                      if (os_log_type_enabled(v60, type[0]))
                      {
                        *buf = 136446210;
                        v149 = "nw_protocol_implementation_connected";
                        _os_log_impl(&dword_181A37000, v60, v65, "%{public}s called with null instance->parent_definition->start, backtrace limit exceeded", buf, 0xCu);
                      }

                      goto LABEL_117;
                    }

                    v62 = __nw_create_backtrace_string();
                    v60 = __nwlog_obj();
                    v63 = type[0];
                    v64 = os_log_type_enabled(v60, type[0]);
                    if (!v62)
                    {
                      if (v64)
                      {
                        *buf = 136446210;
                        v149 = "nw_protocol_implementation_connected";
                        _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null instance->parent_definition->start, no backtrace", buf, 0xCu);
                      }

                      goto LABEL_117;
                    }

                    if (v64)
                    {
                      *buf = 136446466;
                      v149 = "nw_protocol_implementation_connected";
                      v150 = 2082;
                      v151 = v62;
                      _os_log_impl(&dword_181A37000, v60, v63, "%{public}s called with null instance->parent_definition->start, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    goto LABEL_107;
                  }

LABEL_76:

                  return;
                }

                BYTE2(v5[7].output_handler_context) = v43 | 0x28;
                v47 = a1->default_input_handler;
                if (v47)
                {
                  v48 = v47->handle;
                  v49 = a1->default_input_handler;
                  if (v48 == &nw_protocol_ref_counted_handle)
                  {
                    goto LABEL_81;
                  }

                  if (v48 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v49) = 0;
                    v50 = 1;
                    goto LABEL_84;
                  }

                  v49 = *v47[1].flow_id;
                  if (v49)
                  {
LABEL_81:
                    v51 = v49[1].callbacks;
                    v50 = 0;
                    if (v51)
                    {
                      v49[1].callbacks = (&v51->add_input_handler + 1);
                    }

                    LOBYTE(v49) = -1;
                  }

                  else
                  {
                    v50 = 1;
                  }

LABEL_84:
                  *type = v47;
                  v147 = v49;
                  v52 = a1->handle;
                  v53 = a1;
                  if (v52 != &nw_protocol_ref_counted_handle)
                  {
                    if (v52 != &nw_protocol_ref_counted_additional_handle)
                    {
                      LOBYTE(v53) = 0;
                      v54 = 1;
                      goto LABEL_91;
                    }

                    v53 = *a1[1].flow_id;
                    if (!v53)
                    {
                      v54 = 1;
                      goto LABEL_91;
                    }
                  }

                  v55 = v53[1].callbacks;
                  v54 = 0;
                  if (v55)
                  {
                    v53[1].callbacks = (&v55->add_input_handler + 1);
                  }

                  LOBYTE(v53) = -1;
LABEL_91:
                  *v143 = a1;
                  v144 = v53;
                  v56 = v47->callbacks;
                  if (v56)
                  {
                    v57 = v56->connected;
                    if (v57)
                    {
                      v57();
LABEL_94:
                      if ((v54 & 1) == 0)
                      {
                        nw::release_if_needed<nw_protocol *>(v143);
                      }

                      if ((v50 & 1) == 0)
                      {
                        nw::release_if_needed<nw_protocol *>(type);
                      }

                      goto LABEL_76;
                    }
                  }

                  v111 = v47;
                  v112 = __nwlog_obj();
                  name = v111->identifier->name;
                  *buf = 136446722;
                  v149 = "__nw_protocol_connected";
                  if (!name)
                  {
                    name = "invalid";
                  }

                  v150 = 2082;
                  v151 = name;
                  v152 = 2048;
                  v114 = v111;
                  v153 = v111;
                  LODWORD(v134) = 32;
                  v115 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, v134);

                  v145 = OS_LOG_TYPE_ERROR;
                  v142 = 0;
                  if (__nwlog_fault(v115, &v145, &v142))
                  {
                    if (v145 == OS_LOG_TYPE_FAULT)
                    {
                      v116 = __nwlog_obj();
                      v117 = v145;
                      if (os_log_type_enabled(v116, v145))
                      {
                        v118 = v114->identifier->name;
                        if (!v118)
                        {
                          v118 = "invalid";
                        }

                        *buf = 136446722;
                        v149 = "__nw_protocol_connected";
                        v150 = 2082;
                        v151 = v118;
                        v152 = 2048;
                        v153 = v114;
                        _os_log_impl(&dword_181A37000, v116, v117, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
                      }
                    }

                    else if (v142 == 1)
                    {
                      v123 = __nw_create_backtrace_string();
                      v116 = __nwlog_obj();
                      v124 = v145;
                      v125 = os_log_type_enabled(v116, v145);
                      if (v123)
                      {
                        if (v125)
                        {
                          v126 = v114->identifier->name;
                          if (!v126)
                          {
                            v126 = "invalid";
                          }

                          *buf = 136446978;
                          v149 = "__nw_protocol_connected";
                          v150 = 2082;
                          v151 = v126;
                          v152 = 2048;
                          v153 = v114;
                          v154 = 2082;
                          v155 = v123;
                          _os_log_impl(&dword_181A37000, v116, v124, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v123);
                        goto LABEL_274;
                      }

                      if (v125)
                      {
                        v133 = v114->identifier->name;
                        if (!v133)
                        {
                          v133 = "invalid";
                        }

                        *buf = 136446722;
                        v149 = "__nw_protocol_connected";
                        v150 = 2082;
                        v151 = v133;
                        v152 = 2048;
                        v153 = v114;
                        _os_log_impl(&dword_181A37000, v116, v124, "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v116 = __nwlog_obj();
                      v130 = v145;
                      if (os_log_type_enabled(v116, v145))
                      {
                        v131 = v114->identifier->name;
                        if (!v131)
                        {
                          v131 = "invalid";
                        }

                        *buf = 136446722;
                        v149 = "__nw_protocol_connected";
                        v150 = 2082;
                        v151 = v131;
                        v152 = 2048;
                        v153 = v114;
                        _os_log_impl(&dword_181A37000, v116, v130, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
                      }
                    }
                  }

LABEL_274:
                  if (v115)
                  {
                    free(v115);
                  }

                  goto LABEL_94;
                }

                v121 = __nwlog_obj();
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                LODWORD(v134) = 12;
                v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s called with null protocol", buf, v134);

                type[0] = OS_LOG_TYPE_ERROR;
                v143[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v59, type, v143))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v60 = __nwlog_obj();
                    v122 = type[0];
                    if (os_log_type_enabled(v60, type[0]))
                    {
                      *buf = 136446210;
                      v149 = "__nw_protocol_connected";
                      _os_log_impl(&dword_181A37000, v60, v122, "%{public}s called with null protocol", buf, 0xCu);
                    }

                    goto LABEL_117;
                  }

                  if (v143[0] != OS_LOG_TYPE_INFO)
                  {
                    v60 = __nwlog_obj();
                    v132 = type[0];
                    if (os_log_type_enabled(v60, type[0]))
                    {
                      *buf = 136446210;
                      v149 = "__nw_protocol_connected";
                      _os_log_impl(&dword_181A37000, v60, v132, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
                    }

                    goto LABEL_117;
                  }

                  v62 = __nw_create_backtrace_string();
                  v60 = __nwlog_obj();
                  v128 = type[0];
                  v129 = os_log_type_enabled(v60, type[0]);
                  if (!v62)
                  {
                    if (v129)
                    {
                      *buf = 136446210;
                      v149 = "__nw_protocol_connected";
                      _os_log_impl(&dword_181A37000, v60, v128, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
                    }

                    goto LABEL_117;
                  }

                  if (v129)
                  {
                    *buf = 136446466;
                    v149 = "__nw_protocol_connected";
                    v150 = 2082;
                    v151 = v62;
                    _os_log_impl(&dword_181A37000, v60, v128, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

LABEL_107:

                  goto LABEL_108;
                }

LABEL_118:
                if (!v59)
                {
                  goto LABEL_76;
                }

LABEL_119:
                free(v59);
                goto LABEL_76;
              }
            }

            v75 = default_input_handler;
            v76 = __nwlog_obj();
            v77 = v75->identifier->name;
            *buf = 136446722;
            v149 = "__nw_protocol_connected";
            if (!v77)
            {
              v77 = "invalid";
            }

            v150 = 2082;
            v151 = v77;
            v152 = 2048;
            *v135 = v75;
            v153 = v75;
            v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 32);

            v145 = OS_LOG_TYPE_ERROR;
            v142 = 0;
            v78 = v137;
            if (!__nwlog_fault(v137, &v145, &v142))
            {
LABEL_244:
              if (v78)
              {
                free(v78);
              }

              goto LABEL_56;
            }

            if (v145 == OS_LOG_TYPE_FAULT)
            {
              v79 = __nwlog_obj();
              v80 = v145;
              if (os_log_type_enabled(v79, v145))
              {
                v81 = *(*v135 + 16);
                if (!v81)
                {
                  v81 = "invalid";
                }

                *buf = 136446722;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v81;
                v152 = 2048;
                v153 = *v135;
                _os_log_impl(&dword_181A37000, v79, v80, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
              }
            }

            else if (v142 == 1)
            {
              v98 = __nw_create_backtrace_string();
              v79 = __nwlog_obj();
              HIDWORD(v134) = v145;
              v99 = os_log_type_enabled(v79, v145);
              if (v98)
              {
                if (v99)
                {
                  v100 = *(*v135 + 16);
                  if (!v100)
                  {
                    v100 = "invalid";
                  }

                  *buf = 136446978;
                  v149 = "__nw_protocol_connected";
                  v150 = 2082;
                  v151 = v100;
                  v152 = 2048;
                  v153 = *v135;
                  v154 = 2082;
                  v155 = v98;
                  _os_log_impl(&dword_181A37000, v79, BYTE4(v134), "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v98);
                goto LABEL_243;
              }

              if (v99)
              {
                v127 = *(*v135 + 16);
                if (!v127)
                {
                  v127 = "invalid";
                }

                *buf = 136446722;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v127;
                v152 = 2048;
                v153 = *v135;
                _os_log_impl(&dword_181A37000, v79, BYTE4(v134), "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              v79 = __nwlog_obj();
              v109 = v145;
              if (os_log_type_enabled(v79, v145))
              {
                v110 = *(*v135 + 16);
                if (!v110)
                {
                  v110 = "invalid";
                }

                *buf = 136446722;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v110;
                v152 = 2048;
                v153 = *v135;
                _os_log_impl(&dword_181A37000, v79, v109, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
              }
            }

LABEL_243:
            v78 = v137;
            goto LABEL_244;
          }

          v94 = __nwlog_obj();
          *buf = 136446210;
          v149 = "__nw_protocol_connected";
          v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s called with null other_protocol", buf, 12);

          v143[0] = OS_LOG_TYPE_ERROR;
          v145 = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v95, v143, &v145))
          {
            if (v143[0] == OS_LOG_TYPE_FAULT)
            {
              v96 = __nwlog_obj();
              v97 = v143[0];
              if (os_log_type_enabled(v96, v143[0]))
              {
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null other_protocol", buf, 0xCu);
              }
            }

            else if (v145 == OS_LOG_TYPE_INFO)
            {
              v107 = __nw_create_backtrace_string();
              v96 = __nwlog_obj();
              v136 = v143[0];
              v108 = os_log_type_enabled(v96, v143[0]);
              if (v107)
              {
                if (v108)
                {
                  *buf = 136446466;
                  v149 = "__nw_protocol_connected";
                  v150 = 2082;
                  v151 = v107;
                  _os_log_impl(&dword_181A37000, v96, v136, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v107);
                goto LABEL_259;
              }

              if (v108)
              {
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                _os_log_impl(&dword_181A37000, v96, v136, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v96 = __nwlog_obj();
              v120 = v143[0];
              if (os_log_type_enabled(v96, v143[0]))
              {
                *buf = 136446210;
                v149 = "__nw_protocol_connected";
                _os_log_impl(&dword_181A37000, v96, v120, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_259:
          if (v95)
          {
            free(v95);
          }

          goto LABEL_58;
        }

        v90 = __nwlog_obj();
        *buf = 136446210;
        v149 = "__nw_protocol_connected";
        v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v90, 16, "%{public}s called with null protocol", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        v143[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v91, type, v143))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v92 = __nwlog_obj();
            v93 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v149 = "__nw_protocol_connected";
              _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v143[0] == OS_LOG_TYPE_INFO)
          {
            v104 = __nw_create_backtrace_string();
            v92 = __nwlog_obj();
            v105 = type[0];
            v106 = os_log_type_enabled(v92, type[0]);
            if (v104)
            {
              if (v106)
              {
                *buf = 136446466;
                v149 = "__nw_protocol_connected";
                v150 = 2082;
                v151 = v104;
                _os_log_impl(&dword_181A37000, v92, v105, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v104);
              goto LABEL_249;
            }

            if (v106)
            {
              *buf = 136446210;
              v149 = "__nw_protocol_connected";
              _os_log_impl(&dword_181A37000, v92, v105, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v92 = __nwlog_obj();
            v119 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v149 = "__nw_protocol_connected";
              _os_log_impl(&dword_181A37000, v92, v119, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_249:
        if (v91)
        {
          free(v91);
        }

        goto LABEL_60;
      }

      v73 = __nwlog_obj();
      *buf = 136446210;
      v149 = "nw_protocol_implementation_connected";
      v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v143[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v59, type, v143))
      {
        goto LABEL_118;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v71 = __nwlog_obj();
        v74 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v74, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v143[0] == OS_LOG_TYPE_INFO)
      {
        v62 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v88 = type[0];
        v89 = os_log_type_enabled(v71, type[0]);
        if (v62)
        {
          if (v89)
          {
            *buf = 136446466;
            v149 = "nw_protocol_implementation_connected";
            v150 = 2082;
            v151 = v62;
            _os_log_impl(&dword_181A37000, v71, v88, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

LABEL_108:
          free(v62);
          if (!v59)
          {
            goto LABEL_76;
          }

          goto LABEL_119;
        }

        if (v89)
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v88, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v71 = __nwlog_obj();
        v103 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v103, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v70 = __nwlog_obj();
      *buf = 136446210;
      v149 = "nw_protocol_implementation_connected";
      v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null instance->parent_definition", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v143[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v59, type, v143))
      {
        goto LABEL_118;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v71 = __nwlog_obj();
        v72 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v143[0] == OS_LOG_TYPE_INFO)
      {
        v85 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v86 = type[0];
        v87 = os_log_type_enabled(v71, type[0]);
        if (v85)
        {
          if (v87)
          {
            *buf = 136446466;
            v149 = "nw_protocol_implementation_connected";
            v150 = 2082;
            v151 = v85;
            _os_log_impl(&dword_181A37000, v71, v86, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v85);
          goto LABEL_118;
        }

        if (v87)
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v86, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v71 = __nwlog_obj();
        v102 = type[0];
        if (os_log_type_enabled(v71, type[0]))
        {
          *buf = 136446210;
          v149 = "nw_protocol_implementation_connected";
          _os_log_impl(&dword_181A37000, v71, v102, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_118;
  }

  v66 = __nwlog_obj();
  *buf = 136446210;
  v149 = "nw_protocol_implementation_connected";
  v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v143[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v67, type, v143))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v68 = __nwlog_obj();
      v69 = type[0];
      if (os_log_type_enabled(v68, type[0]))
      {
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v143[0] == OS_LOG_TYPE_INFO)
    {
      v82 = __nw_create_backtrace_string();
      v68 = __nwlog_obj();
      v83 = type[0];
      v84 = os_log_type_enabled(v68, type[0]);
      if (v82)
      {
        if (v84)
        {
          *buf = 136446466;
          v149 = "nw_protocol_implementation_connected";
          v150 = 2082;
          v151 = v82;
          _os_log_impl(&dword_181A37000, v68, v83, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
        goto LABEL_212;
      }

      if (v84)
      {
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        _os_log_impl(&dword_181A37000, v68, v83, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v68 = __nwlog_obj();
      v101 = type[0];
      if (os_log_type_enabled(v68, type[0]))
      {
        *buf = 136446210;
        v149 = "nw_protocol_implementation_connected";
        _os_log_impl(&dword_181A37000, v68, v101, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_212:
  if (v67)
  {
    free(v67);
  }
}

void sub_181CE9780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if ((v35 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a30);
  }

  if ((v34 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a33);
  }

  _Unwind_Resume(a1);
}

unint64_t nw_quic_connection_get_datagram_variant_flow_id_enabled(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    datagram_variant_flow_id_enabled = _nw_quic_connection_get_datagram_variant_flow_id_enabled();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_variant_flow_id_enabled";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  datagram_variant_flow_id_enabled = 0;
LABEL_3:

  return datagram_variant_flow_id_enabled;
}

unint64_t _nw_quic_connection_get_datagram_variant_flow_id_enabled()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 5) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t nw_quic_connection_get_disable_ecn(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    disable_ecn = _nw_quic_connection_get_disable_ecn();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_disable_ecn";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_disable_ecn";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_disable_ecn";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_ecn";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_disable_ecn";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  disable_ecn = 0;
LABEL_3:

  return disable_ecn;
}

_OWORD *sub_181CE9D90(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v45 - v7;
  v8 = sub_182AD2738();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v45 - v12;
  v1[3] = xmmword_182AE8E90;
  v13 = *(v9 + 56);
  v50 = v9 + 56;
  v51 = qword_1ED411A90;
  v49 = v13;
  v13(v1 + qword_1ED411A90, 1, 1, v8);
  v58 = qword_1ED411A88;
  *(v1 + qword_1ED411A88) = 0;
  v14 = v1 + *(*v1 + 128);
  *v14 = 256;
  v15 = *(*v1 + 136);
  *(v1 + v15) = 0;
  v16 = *(*v1 + 144);
  *(v2 + v16) = 0;
  v17 = v2 + *(*v2 + 152);
  *v17 = 0;
  v17[8] = 1;
  v18 = v2 + *(*v2 + 160);
  *v18 = 0;
  v18[8] = 1;
  v19 = (v2 + *(*v2 + 168));
  *v19 = 0;
  v19[1] = 0;
  v57 = *(*v2 + 176);
  *(v2 + v57) = 0;
  v59 = *(*v2 + 184);
  *(v2 + v59) = 0;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  *(v2 + 8) = *(a1 + 16);
  v54 = v21;
  v55 = v20;
  *(v2 + 3) = v20;
  *(v2 + 4) = v21;
  v53 = v22;
  *(v2 + 40) = v22;
  v23 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = v23[1];
  swift_beginAccess();
  *v14 = v24;
  v14[1] = v23;
  v25 = *(*a1 + 136);
  swift_beginAccess();
  v26 = *(a1 + v25);
  swift_beginAccess();
  *(v2 + v15) = v26;
  v27 = *(*a1 + 144);
  swift_beginAccess();
  v28 = *(a1 + v27);
  swift_beginAccess();
  *(v2 + v16) = v28;
  v29 = qword_1ED411A90;
  swift_beginAccess();
  v30 = a1 + v29;
  v31 = v56;
  sub_181AB5D28(v30, v56, &qword_1EA838E00, &qword_182AFE8E0);
  v32 = v9;
  if ((*(v9 + 48))(v31, 1, v8) == 1)
  {
    sub_181F49A24(v55, v54, v53);

    v33 = v26;
    sub_181F49A88(v31, &qword_1EA838E00, &qword_182AFE8E0);
  }

  else
  {
    v34 = *(v9 + 32);
    v46 = v26;
    v35 = v48;
    v34(v48, v31, v8);
    sub_181F49A24(v55, v54, v53);

    v36 = v46;
    v37 = v47;
    sub_182AD2728();
    sub_182AD2718();
    (*(v32 + 8))(v35, v8);
    v38 = v52;
    v34(v52, v37, v8);
    v49(v38, 0, 1, v8);
    v39 = v51;
    swift_beginAccess();
    sub_181B2D2D8(v38, v2 + v39);
    swift_endAccess();
  }

  *(v2 + v58) = *(a1 + qword_1ED411A88);
  v40 = *(*a1 + 176);
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + v40);
  v41 = v57;
  swift_beginAccess();
  *(v2 + v41) = v40;
  v42 = *(*a1 + 184);
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v59;
  swift_beginAccess();
  *(v2 + v43) = v42;
  return v2;
}

unint64_t _nw_quic_connection_get_use_swift_tls()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 12) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __nw_sec_protocol_options_iterate_application_protocols_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v8 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(v4);
    v10 = (*(v8 + 16))(v8, string_ptr);
LABEL_8:
    v7 = v10;
    goto LABEL_9;
  }

  if (object_getClass(v4) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v4) == 2)
  {
    xpc_array_get_string(v4, 0);
    uint64 = xpc_array_get_uint64(v4, 1uLL);
    v6 = *(a1 + 40);
    if (!v6 || uint64 == v6)
    {
      v10 = (*(*(a1 + 32) + 16))();
      goto LABEL_8;
    }
  }

  v7 = 1;
LABEL_9:

  return v7;
}

void nw_quic_access_0rtt_state_on_queue(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
    }

    v5 = nw_protocol_copy_quic_connection_definition_quic_definition;
    if (v5)
    {
      cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v5);
      if (cached_content_for_protocol)
      {
        (*(v4 + 2))(v4, *(cached_content_for_protocol + 8), *(cached_content_for_protocol + 16));
      }

      else
      {
        (*(v4 + 2))(v4, 0, 0);
      }

LABEL_8:

      goto LABEL_9;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_access_0rtt_state_on_queue";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
LABEL_42:
      if (v13)
      {
        free(v13);
      }

      goto LABEL_8;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v16 = "%{public}s called with null definition";
LABEL_40:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
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
            v24 = "nw_quic_access_0rtt_state_on_queue";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (!v20)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v16 = "%{public}s called with null definition, no backtrace";
        goto LABEL_40;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v16 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_quic_access_0rtt_state_on_queue";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null association", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v8, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v11 = "%{public}s called with null association";
LABEL_34:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        v17 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v18 = os_log_type_enabled(v9, type);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_quic_access_0rtt_state_on_queue";
            v25 = 2082;
            v26 = v17;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          goto LABEL_36;
        }

        if (!v18)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v11 = "%{public}s called with null association, no backtrace";
        goto LABEL_34;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_0rtt_state_on_queue";
        v11 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:
  }

LABEL_36:
  if (v8)
  {
    free(v8);
  }

LABEL_9:
}

uint64_t nw_protocol_implementation_finalize_pending_frames(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1[26])
  {
    v7 = 1;
    goto LABEL_17;
  }

  if ((*(v1 + 413) & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v44 = "nw_protocol_implementation_finalize_pending_frames";
      v45 = 2082;
      v46 = v2 + 415;
      v47 = 2080;
      v48 = " ";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing outbound frames (batched)", buf, 0x20u);
    }
  }

  v3 = *(v2 - 8);
  if (!v3)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v44 = "__nw_protocol_finalize_output_frames";
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null protocol", buf, 12);

    v40[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v40, &type))
    {
      if (v40[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v40[0];
        if (os_log_type_enabled(v31, v40[0]))
        {
          *buf = 136446210;
          v44 = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v34 = v40[0];
        v35 = os_log_type_enabled(v31, v40[0]);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v44 = "__nw_protocol_finalize_output_frames";
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_72;
        }

        if (v35)
        {
          *buf = 136446210;
          v44 = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v36 = v40[0];
        if (os_log_type_enabled(v31, v40[0]))
        {
          *buf = 136446210;
          v44 = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v31, v36, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_72:
    if (v30)
    {
      free(v30);
    }

    v7 = 0;
    goto LABEL_17;
  }

  v4 = *(v3 + 5);
  v5 = *(v2 - 8);
  if (v4 != &nw_protocol_ref_counted_handle)
  {
    if (v4 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v5) = 0;
      v6 = 1;
      goto LABEL_13;
    }

    v5 = *(v3 + 8);
    if (!v5)
    {
      v6 = 1;
      goto LABEL_13;
    }
  }

  v8 = *(v5 + 88);
  v6 = 0;
  if (v8)
  {
    *(v5 + 88) = v8 + 1;
  }

  LOBYTE(v5) = -1;
LABEL_13:
  *v40 = v3;
  v41 = v5;
  v9 = *(v3 + 3);
  if (v9)
  {
    v10 = *(v9 + 96);
    if (v10)
    {
      v7 = v10();
      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v13 = v3;
  v14 = __nwlog_obj();
  v15 = *(v13 + 2);
  *buf = 136446722;
  v44 = "__nw_protocol_finalize_output_frames";
  if (!v15)
  {
    v15 = "invalid";
  }

  v45 = 2082;
  v46 = v15;
  v47 = 2048;
  v16 = v13;
  v48 = v13;
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v17, &type, &v39))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      v20 = *(v16 + 2);
      if (!v20)
      {
        v20 = "invalid";
      }

      *buf = 136446722;
      v44 = "__nw_protocol_finalize_output_frames";
      v45 = 2082;
      v46 = v20;
      v47 = 2048;
      v48 = v16;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 0x20u);
    }

LABEL_51:

    goto LABEL_52;
  }

  if (v39 != 1)
  {
    v18 = __nwlog_obj();
    v26 = type;
    if (os_log_type_enabled(v18, type))
    {
      v27 = *(v16 + 2);
      if (!v27)
      {
        v27 = "invalid";
      }

      *buf = 136446722;
      v44 = "__nw_protocol_finalize_output_frames";
      v45 = 2082;
      v46 = v27;
      v47 = 2048;
      v48 = v16;
      _os_log_impl(&dword_181A37000, v18, v26, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_51;
  }

  v22 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v23 = type;
  v24 = os_log_type_enabled(v18, type);
  if (!v22)
  {
    if (v24)
    {
      if (*(v16 + 2))
      {
        v28 = *(v16 + 2);
      }

      else
      {
        v28 = "invalid";
      }

      *buf = 136446722;
      v44 = "__nw_protocol_finalize_output_frames";
      v45 = 2082;
      v46 = v28;
      v47 = 2048;
      v48 = v16;
      _os_log_impl(&dword_181A37000, v18, v23, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", buf, 0x20u);
    }

    goto LABEL_51;
  }

  if (v24)
  {
    if (*(v16 + 2))
    {
      v25 = *(v16 + 2);
    }

    else
    {
      v25 = "invalid";
    }

    *buf = 136446978;
    v44 = "__nw_protocol_finalize_output_frames";
    v45 = 2082;
    v46 = v25;
    v47 = 2048;
    v48 = v16;
    v49 = 2082;
    v50 = v22;
    _os_log_impl(&dword_181A37000, v18, v23, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v22);
LABEL_52:
  if (v17)
  {
    free(v17);
  }

  v7 = 0;
  if ((v6 & 1) == 0)
  {
LABEL_16:
    nw::release_if_needed<nw_protocol *>(v40);
  }

LABEL_17:
  v11 = *(v2 + 37);
  if (v11)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __nw_protocol_implementation_finalize_pending_frames_block_invoke;
    v37[3] = &unk_1E6A3CDF8;
    v38 = v2;
    nw_hash_table_apply(v11, v37);
  }

  return v7;
}

void sub_181CEB118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if ((v20 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

void nw_protocol_udp_connected(nw_protocol *a1, nw_protocol *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v114 = "nw_protocol_udp_connected";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v111 = 0;
    if (!__nwlog_fault(v2, &type, &v111))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v114 = "nw_protocol_udp_connected";
      v41 = "%{public}s called with null protocol";
    }

    else if (v111 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v44 = os_log_type_enabled(v39, type);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          v114 = "nw_protocol_udp_connected";
          v115 = 2082;
          v116 = backtrace_string;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_183;
        }

        return;
      }

      if (!v44)
      {
LABEL_102:
        if (!v2)
        {
          return;
        }

        goto LABEL_183;
      }

      *buf = 136446210;
      v114 = "nw_protocol_udp_connected";
      v41 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v114 = "nw_protocol_udp_connected";
      v41 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
    goto LABEL_102;
  }

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
      v114 = "nw_protocol_udp_connected";
      v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null udp", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v111 = 0;
      if (!__nwlog_fault(v8, &type, &v111))
      {
        goto LABEL_41;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v114 = "nw_protocol_udp_connected";
        v11 = "%{public}s called with null udp";
        goto LABEL_39;
      }

      if (v111 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v114 = "nw_protocol_udp_connected";
        v11 = "%{public}s called with null udp, backtrace limit exceeded";
        goto LABEL_39;
      }

      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      v20 = os_log_type_enabled(gLogObj, type);
      if (v17)
      {
        if (v20)
        {
          *buf = 136446466;
          v114 = "nw_protocol_udp_connected";
          v115 = 2082;
          v116 = v17;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v17);
        if (!v8)
        {
          goto LABEL_172;
        }

LABEL_42:
        free(v8);
        goto LABEL_172;
      }

      if (v20)
      {
        *buf = 136446210;
        v114 = "nw_protocol_udp_connected";
        v11 = "%{public}s called with null udp, no backtrace";
        v21 = v18;
        v22 = v19;
        goto LABEL_40;
      }

LABEL_41:
      if (!v8)
      {
        goto LABEL_172;
      }

      goto LABEL_42;
    }

    v7 = *a1[1].flow_id;
  }

  if (gLogDatapath == 1)
  {
    v42 = __nwlog_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v114 = "nw_protocol_udp_connected";
      v115 = 2082;
      v116 = v7 + 3;
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Got a connected event from the lower layer", buf, 0x16u);
    }
  }

  if (!v2->default_input_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v114 = "nw_protocol_udp_connected";
      v115 = 2082;
      v116 = v7 + 3;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler found, ignoring connected call", buf, 0x16u);
    }

    goto LABEL_172;
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    if (v7[1].default_input_handler)
    {
      goto LABEL_136;
    }
  }

  else if (v7[1].default_input_handler)
  {
    goto LABEL_136;
  }

  default_input_handler = v2->default_input_handler;
  if (!default_input_handler)
  {
    v59 = __nwlog_obj();
    *buf = 136446210;
    v114 = "__nw_protocol_get_path";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v111 = 0;
    if (!__nwlog_fault(v60, &type, &v111))
    {
      goto LABEL_132;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v114 = "__nw_protocol_get_path";
      v63 = "%{public}s called with null protocol";
    }

    else if (v111 == 1)
    {
      v64 = __nw_create_backtrace_string();
      v61 = __nwlog_obj();
      v62 = type;
      v65 = os_log_type_enabled(v61, type);
      if (v64)
      {
        if (v65)
        {
          *buf = 136446466;
          v114 = "__nw_protocol_get_path";
          v115 = 2082;
          v116 = v64;
          _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v64);
        goto LABEL_132;
      }

      if (!v65)
      {
LABEL_132:
        if (v60)
        {
          free(v60);
        }

        goto LABEL_134;
      }

      *buf = 136446210;
      v114 = "__nw_protocol_get_path";
      v63 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (!os_log_type_enabled(v61, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v114 = "__nw_protocol_get_path";
      v63 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
    goto LABEL_132;
  }

  v13 = default_input_handler->handle;
  v14 = v2->default_input_handler;
  if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *default_input_handler[1].flow_id) != 0)
  {
    v23 = v14[1].callbacks;
    v15 = 0;
    if (v23)
    {
      v14[1].callbacks = (&v23->add_input_handler + 1);
    }
  }

  else
  {
    v15 = 1;
  }

  v24 = default_input_handler->callbacks;
  if (v24)
  {
    get_path = v24->get_path;
    if (get_path)
    {
      v26 = get_path(default_input_handler);
      if (v15)
      {
        goto LABEL_62;
      }

      goto LABEL_51;
    }
  }

  v45 = __nwlog_obj();
  name = default_input_handler->identifier->name;
  *buf = 136446722;
  v114 = "__nw_protocol_get_path";
  if (!name)
  {
    name = "invalid";
  }

  v115 = 2082;
  v116 = name;
  v117 = 2048;
  v118 = default_input_handler;
  type = OS_LOG_TYPE_ERROR;
  v111 = 0;
  v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s protocol %{public}s (%p) has invalid get_path callback", buf, 32);
  if (__nwlog_fault(v47, &type, &v111))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (!os_log_type_enabled(v48, type))
      {
        goto LABEL_110;
      }

      v50 = default_input_handler->identifier->name;
      if (!v50)
      {
        v50 = "invalid";
      }

      *buf = 136446722;
      v114 = "__nw_protocol_get_path";
      v115 = 2082;
      v116 = v50;
      v117 = 2048;
      v118 = default_input_handler;
      v51 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
LABEL_108:
      v57 = v48;
LABEL_109:
      _os_log_impl(&dword_181A37000, v57, v49, v51, buf, 0x20u);
      goto LABEL_110;
    }

    if (v111 != 1)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (!os_log_type_enabled(v48, type))
      {
        goto LABEL_110;
      }

      v56 = default_input_handler->identifier->name;
      if (!v56)
      {
        v56 = "invalid";
      }

      *buf = 136446722;
      v114 = "__nw_protocol_get_path";
      v115 = 2082;
      v116 = v56;
      v117 = 2048;
      v118 = default_input_handler;
      v51 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
      goto LABEL_108;
    }

    v52 = __nw_create_backtrace_string();
    v53 = __nwlog_obj();
    v49 = type;
    log = v53;
    v54 = os_log_type_enabled(v53, type);
    if (v52)
    {
      if (v54)
      {
        v55 = default_input_handler->identifier->name;
        if (!v55)
        {
          v55 = "invalid";
        }

        *buf = 136446978;
        v114 = "__nw_protocol_get_path";
        v115 = 2082;
        v116 = v55;
        v117 = 2048;
        v118 = default_input_handler;
        v119 = 2082;
        v120 = v52;
        _os_log_impl(&dword_181A37000, log, v49, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v52);
    }

    else if (v54)
    {
      v58 = default_input_handler->identifier->name;
      if (!v58)
      {
        v58 = "invalid";
      }

      *buf = 136446722;
      v114 = "__nw_protocol_get_path";
      v115 = 2082;
      v116 = v58;
      v117 = 2048;
      v118 = default_input_handler;
      v51 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
      v57 = log;
      goto LABEL_109;
    }
  }

LABEL_110:
  if (v47)
  {
    free(v47);
  }

  v26 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_51:
    v27 = default_input_handler->handle;
    if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
    {
      v28 = default_input_handler[1].callbacks;
      if (v28)
      {
        v29 = (v28 - 1);
        default_input_handler[1].callbacks = v29;
        if (!v29)
        {
          v30 = v26;
          v31 = *default_input_handler[1].flow_id;
          if (v31)
          {
            *default_input_handler[1].flow_id = 0;
            v31[2](v31);
            _Block_release(v31);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v32 = *default_input_handler[1].flow_id;
            if (v32)
            {
              _Block_release(v32);
            }
          }

          free(default_input_handler);
          v26 = v30;
        }
      }
    }
  }

LABEL_62:
  if (v26)
  {
    v33 = v26;
    v34 = os_retain(v26);
    v7[1].default_input_handler = v34;
    LODWORD(v7[2].default_input_handler) = nw_path_get_effective_traffic_class(v34);
    HIDWORD(v7[2].default_input_handler) = nw_path_get_maximum_datagram_size(v7[1].default_input_handler);
    nw_protocol_udp_update_flow_registration(&v7[1].output_handler);
    v35 = v33;
    csum_flags = _nw_path_get_csum_flags(v35);

    output_handler_context_high = HIWORD(v7[2].output_handler_context);
    if ((output_handler_context_high & 4) != 0 && (csum_flags & 4) != 0 || (output_handler_context_high & 4) == 0 && (csum_flags & 0x40) != 0)
    {
      HIWORD(v7[2].output_handler_context) = output_handler_context_high & 0xFEF7 | 0x100;
    }

    goto LABEL_136;
  }

LABEL_134:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v66 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v114 = "nw_protocol_udp_connected";
    v115 = 2082;
    v116 = v7 + 3;
    _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Unable to get path from input protocol, cannot publish UDP stats", buf, 0x16u);
  }

LABEL_136:
  v8 = v2->default_input_handler;
  if (!v8)
  {
    v105 = __nwlog_obj();
    *buf = 136446210;
    v114 = "__nw_protocol_connected";
    LODWORD(v108) = 12;
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null protocol", buf, v108);
    type = OS_LOG_TYPE_ERROR;
    v111 = 0;
    if (!__nwlog_fault(v8, &type, &v111))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v114 = "__nw_protocol_connected";
      v11 = "%{public}s called with null protocol";
    }

    else if (v111 == 1)
    {
      v106 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v107 = os_log_type_enabled(v9, type);
      if (v106)
      {
        if (v107)
        {
          *buf = 136446466;
          v114 = "__nw_protocol_connected";
          v115 = 2082;
          v116 = v106;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v106);
        if (v8)
        {
          goto LABEL_42;
        }

        goto LABEL_172;
      }

      if (!v107)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v114 = "__nw_protocol_connected";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v114 = "__nw_protocol_connected";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    v21 = v9;
    v22 = v10;
LABEL_40:
    _os_log_impl(&dword_181A37000, v21, v22, v11, buf, 0xCu);
    goto LABEL_41;
  }

  v67 = *(v8 + 40);
  v68 = v2->default_input_handler;
  if (v67 == &nw_protocol_ref_counted_handle || v67 == &nw_protocol_ref_counted_additional_handle && (v68 = *(v8 + 64)) != 0)
  {
    v70 = v68[1].callbacks;
    v69 = 0;
    if (v70)
    {
      v68[1].callbacks = (&v70->add_input_handler + 1);
    }
  }

  else
  {
    v69 = 1;
  }

  v71 = v2->handle;
  v72 = v2;
  if (v71 == &nw_protocol_ref_counted_handle || v71 == &nw_protocol_ref_counted_additional_handle && (v72 = *v2[1].flow_id) != 0)
  {
    v75 = v72[1].callbacks;
    if (v75)
    {
      v73 = 0;
      v72[1].callbacks = (&v75->add_input_handler + 1);
      v74 = *(v8 + 24);
      if (!v74)
      {
        goto LABEL_190;
      }
    }

    else
    {
      v73 = 0;
      v74 = *(v8 + 24);
      if (!v74)
      {
        goto LABEL_190;
      }
    }
  }

  else
  {
    v73 = 1;
    v74 = *(v8 + 24);
    if (!v74)
    {
      goto LABEL_190;
    }
  }

  v76 = *(v74 + 40);
  if (v76)
  {
    v76(v8, v2);
    goto LABEL_154;
  }

LABEL_190:
  v93 = __nwlog_obj();
  v94 = *(v8 + 16);
  *buf = 136446722;
  v114 = "__nw_protocol_connected";
  if (!v94)
  {
    v94 = "invalid";
  }

  v115 = 2082;
  v116 = v94;
  v117 = 2048;
  v118 = v8;
  LODWORD(v108) = 32;
  v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, v108);
  type = OS_LOG_TYPE_ERROR;
  v111 = 0;
  if (!__nwlog_fault(v95, &type, &v111))
  {
    goto LABEL_214;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v96 = __nwlog_obj();
    v97 = type;
    if (!os_log_type_enabled(v96, type))
    {
      goto LABEL_214;
    }

    v98 = *(v8 + 16);
    if (!v98)
    {
      v98 = "invalid";
    }

    *buf = 136446722;
    v114 = "__nw_protocol_connected";
    v115 = 2082;
    v116 = v98;
    v117 = 2048;
    v118 = v8;
    v99 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
    goto LABEL_213;
  }

  if (v111 != 1)
  {
    v96 = __nwlog_obj();
    v97 = type;
    if (!os_log_type_enabled(v96, type))
    {
      goto LABEL_214;
    }

    v103 = *(v8 + 16);
    if (!v103)
    {
      v103 = "invalid";
    }

    *buf = 136446722;
    v114 = "__nw_protocol_connected";
    v115 = 2082;
    v116 = v103;
    v117 = 2048;
    v118 = v8;
    v99 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    goto LABEL_213;
  }

  loga = v69;
  v100 = __nw_create_backtrace_string();
  v96 = __nwlog_obj();
  v97 = type;
  v101 = os_log_type_enabled(v96, type);
  if (v100)
  {
    if (v101)
    {
      v102 = *(v8 + 16);
      if (!v102)
      {
        v102 = "invalid";
      }

      *buf = 136446978;
      v114 = "__nw_protocol_connected";
      v115 = 2082;
      v116 = v102;
      v117 = 2048;
      v118 = v8;
      v119 = 2082;
      v120 = v100;
      _os_log_impl(&dword_181A37000, v96, v97, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v100);
    v69 = loga;
    goto LABEL_214;
  }

  v69 = loga;
  if (v101)
  {
    v104 = *(v8 + 16);
    if (!v104)
    {
      v104 = "invalid";
    }

    *buf = 136446722;
    v114 = "__nw_protocol_connected";
    v115 = 2082;
    v116 = v104;
    v117 = 2048;
    v118 = v8;
    v99 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
LABEL_213:
    _os_log_impl(&dword_181A37000, v96, v97, v99, buf, 0x20u);
  }

LABEL_214:
  if (v95)
  {
    free(v95);
  }

LABEL_154:
  if ((v73 & 1) == 0)
  {
    v77 = v2->handle;
    v78 = v2;
    if (v77 == &nw_protocol_ref_counted_handle || v77 == &nw_protocol_ref_counted_additional_handle && (v78 = *v2[1].flow_id) != 0)
    {
      v79 = v78[1].callbacks;
      if (v79)
      {
        v80 = (v79 - 1);
        v78[1].callbacks = v80;
        if (!v80)
        {
          v81 = *v78[1].flow_id;
          if (v81)
          {
            *v78[1].flow_id = 0;
            v81[2](v81);
            _Block_release(v81);
          }

          if (v78[1].flow_id[8])
          {
            v82 = *v78[1].flow_id;
            if (v82)
            {
              _Block_release(v82);
            }
          }

          free(v78);
        }
      }
    }
  }

  if ((v69 & 1) == 0)
  {
    v83 = *(v8 + 40);
    if (v83 == &nw_protocol_ref_counted_handle || v83 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v8 + 64)) != 0)
    {
      v84 = *(v8 + 88);
      if (v84)
      {
        v85 = v84 - 1;
        *(v8 + 88) = v85;
        if (!v85)
        {
          v91 = *(v8 + 64);
          if (v91)
          {
            *(v8 + 64) = 0;
            v91[2](v91);
            _Block_release(v91);
          }

          if (*(v8 + 72))
          {
            v92 = *(v8 + 64);
            if (v92)
            {
              _Block_release(v92);
            }
          }

          goto LABEL_42;
        }
      }
    }
  }

LABEL_172:
  if ((v5 & 1) == 0)
  {
    v86 = v2->handle;
    if (v86 == &nw_protocol_ref_counted_handle || v86 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v87 = v2[1].callbacks;
      if (v87)
      {
        v88 = (v87 - 1);
        v2[1].callbacks = v88;
        if (!v88)
        {
          v89 = *v2[1].flow_id;
          if (v89)
          {
            *v2[1].flow_id = 0;
            v89[2](v89);
            _Block_release(v89);
          }

          if (v2[1].flow_id[8])
          {
            v90 = *v2[1].flow_id;
            if (v90)
            {
              _Block_release(v90);
            }
          }

LABEL_183:
          free(v2);
        }
      }
    }
  }
}

uint64_t ___ZL36nw_protocol_implementation_connectedP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  v6 = *(extra + 52);
  if ((v6 & 0xC) != 4)
  {
    return 1;
  }

  if (*(*(*(*(a1 + 32) + 8) + 80) + 120))
  {
    v7 = extra;
    *(extra + 52) = v6 | 8;
    v8 = *(a1 + 32);
    v9 = *(*(v8[1] + 10) + 120);
    v10 = v8;
    if (nw_protocol_definition_get_message_is_stream(v8[1]))
    {
      if (*(v10 - 6) == object)
      {
        object = -2;
      }
    }

    v9(v10, object, *(v7 + 52) & 1);
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  v23 = "nw_protocol_implementation_connected_block_invoke_2";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null instance->parent_definition->start", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_implementation_connected_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null instance->parent_definition->start", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_protocol_implementation_connected_block_invoke";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null instance->parent_definition->start, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v13)
        {
          return 0;
        }

        goto LABEL_14;
      }

      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_protocol_implementation_connected_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null instance->parent_definition->start, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_implementation_connected_block_invoke";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null instance->parent_definition->start, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v13)
  {
LABEL_14:
    free(v13);
  }

  return 0;
}

unint64_t nw_quic_connection_get_datagram_quarter_stream_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    datagram_quarter_stream_id = _nw_quic_connection_get_datagram_quarter_stream_id();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_datagram_quarter_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  datagram_quarter_stream_id = 0;
LABEL_3:

  return datagram_quarter_stream_id;
}

unint64_t _nw_quic_connection_get_datagram_quarter_stream_id()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 6) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_phone_call_relay_optimization(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_get_phone_call_relay_optimization();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_phone_call_relay_optimization";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_phone_call_relay_optimization";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_phone_call_relay_optimization";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_phone_call_relay_optimization";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_phone_call_relay_optimization";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  v2 = 0;
LABEL_3:

  return v2;
}

unint64_t _nw_quic_connection_get_disable_ecn_echo()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 8) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_connection_get_enable_l4s(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    enable_l4s = _nw_quic_connection_get_enable_l4s();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_enable_l4s";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_enable_l4s";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_enable_l4s";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_enable_l4s";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_enable_l4s";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  enable_l4s = 0;
LABEL_3:

  return enable_l4s;
}

uint64_t _nw_quic_connection_get_enable_l4s_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v0 = sub_181AA8420();
  if (v0 && (v1 = *(*v0 + 128), v2 = v0, swift_beginAccess(), v3 = *(v2 + v1), , , v3) && (v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S), , v4 != 2))
  {
    return v4 & 1;
  }

  else
  {
    return 2;
  }
}

unint64_t nw_quic_connection_get_force_version_negotiation(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    force_version_negotiation = _nw_quic_connection_get_force_version_negotiation();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_force_version_negotiation";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_force_version_negotiation";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_force_version_negotiation";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_force_version_negotiation";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_force_version_negotiation";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  force_version_negotiation = 0;
LABEL_3:

  return force_version_negotiation;
}

unint64_t _nw_quic_connection_get_force_version_negotiation()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v1 = *(*result + 128);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v4 >> 4) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_instance_add_new_flow(void *a1, uint64_t a2, int a3, void *a4, void *a5, void *a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_protocol_instance_add_new_flow";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v43, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v53 = "nw_protocol_instance_add_new_flow";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v50 == 1)
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
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_80;
        }

        if (v48)
        {
          *buf = 136446210;
          v53 = "nw_protocol_instance_add_new_flow";
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v53 = "nw_protocol_instance_add_new_flow";
          _os_log_impl(&dword_181A37000, v44, v49, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_80:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_20;
  }

  v15 = *(v11 + 15);
  if (v15)
  {
    v16 = v15;
    v17 = v16;
    if ((v16[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v16[1]);
    }
  }

  if (nw_protocol_definition_get_variant(*(v11 + 1)) == 3)
  {
    v18 = _nw_parameters_copy();
    v19 = v18;
    if (v18)
    {
      _nw_parameters_set_server_mode(v18, a2);
      if (v13)
      {
        v13[2](v13, v19);
      }

      if (a3)
      {
        v20 = 3;
      }

      else
      {
        v20 = 1;
      }

      v11[412] = v20 | v11[412] & 0xFC;
      *(v11 + 31) = 0;
      objc_storeStrong(v11 + 32, a4);
      if (v14)
      {
        v21 = nw_connection_create_from_protocol_on_nw_queue(*(v11 + 5), v19, (v11 - 96));
        if (v21)
        {
          (*(v14 + 2))(v14, *(v11 + 31), v21);

LABEL_33:
          v11[412] &= 0xFCu;
          v30 = *(v11 + 32);
          *(v11 + 32) = 0;

          v23 = *(v11 + 31);
LABEL_59:

          goto LABEL_60;
        }

        if ((v11[413] & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = v11 + 415;
            v56 = 2080;
            v57 = " ";
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snw_connection_create_from_protocol_on_nw_queue failed", buf, 0x20u);
          }
        }
      }

      else
      {
        v28 = *(v11 + 3);
        if (v28)
        {
          if (*v28)
          {
            v29 = **v28;
            if (v29)
            {
              if (v29())
              {
                goto LABEL_33;
              }
            }
          }

          if ((v11[413] & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v53 = "nw_protocol_instance_add_new_flow";
              v54 = 2082;
              v55 = v11 + 415;
              v56 = 2080;
              v57 = " ";
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sListener rejected new flow", buf, 0x20u);
            }
          }
        }

        else if ((v11[413] & 0x80000000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = v11 + 415;
            v56 = 2080;
            v57 = " ";
            _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo listener registered, cannot accept new flow", buf, 0x20u);
          }
        }
      }

      v11[412] &= 0xFCu;
      v39 = *(v11 + 32);
      *(v11 + 32) = 0;

LABEL_58:
      v23 = 0;
      goto LABEL_59;
    }

    if (v11[413] < 0)
    {
      goto LABEL_58;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *buf = 136446722;
    v53 = "nw_protocol_instance_add_new_flow";
    v54 = 2082;
    v55 = v11 + 415;
    v56 = 2080;
    v57 = " ";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v25, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446722;
          v53 = "nw_protocol_instance_add_new_flow";
          v54 = 2082;
          v55 = v11 + 415;
          v56 = 2080;
          v57 = " ";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow", buf, 0x20u);
        }
      }

      else if (v50 == 1)
      {
        v31 = __nw_create_backtrace_string();
        if (v31)
        {
          v32 = v31;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = type;
          if (os_log_type_enabled(v33, type))
          {
            *buf = 136446978;
            v53 = "nw_protocol_instance_add_new_flow";
            v54 = 2082;
            v55 = v11 + 415;
            v56 = 2080;
            v57 = " ";
            v58 = 2082;
            v59 = v32;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v32);
          if (!v25)
          {
            goto LABEL_58;
          }

          goto LABEL_28;
        }

        v26 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446722;
          v53 = "nw_protocol_instance_add_new_flow";
          v54 = 2082;
          v55 = v11 + 415;
          v56 = 2080;
          v57 = " ";
          _os_log_impl(&dword_181A37000, v26, v41, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446722;
          v53 = "nw_protocol_instance_add_new_flow";
          v54 = 2082;
          v55 = v11 + 415;
          v56 = 2080;
          v57 = " ";
          _os_log_impl(&dword_181A37000, v26, v36, "%{public}s %{public}s%sInstance parameters are NULL when opening inbound flow, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v25)
    {
      goto LABEL_58;
    }

LABEL_28:
    free(v25);
    goto LABEL_58;
  }

  if ((v11[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v53 = "nw_protocol_instance_add_new_flow";
      v54 = 2082;
      v55 = v11 + 415;
      v56 = 2080;
      v57 = " ";
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot add new flows to a non-multiplexing protocol", buf, 0x20u);
    }
  }

LABEL_20:
  v23 = 0;
LABEL_60:

  return v23;
}

unint64_t nw_quic_connection_get_use_swift_tls(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    use_swift_tls = _nw_quic_connection_get_use_swift_tls();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_use_swift_tls";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_use_swift_tls";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_use_swift_tls";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_use_swift_tls";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_use_swift_tls";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  use_swift_tls = 0;
LABEL_3:

  return use_swift_tls;
}

uint64_t nw_quic_connection_get_tls_state(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_get_tls_state(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_tls_state";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_tls_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_tls_state";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_tls_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_tls_state";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  v2 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_quic_connection_get_idle_timeout(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    idle_timeout = _nw_quic_connection_get_idle_timeout();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_idle_timeout";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_idle_timeout";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v14 = "nw_quic_connection_get_idle_timeout";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_idle_timeout";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_idle_timeout";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

  idle_timeout = 0;
LABEL_3:

  return idle_timeout;
}