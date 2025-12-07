id nw_http_connection_metadata_get_establishment_report(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_connection_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v4 = nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__75915;
    v31 = __Block_byref_object_dispose__75916;
    v32 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v24 = __nw_http_connection_metadata_get_establishment_report_block_invoke;
    v25 = &unk_1E6A3A858;
    v26 = buf;
    if (v3)
    {
      if (_nw_protocol_metadata_get_handle())
      {
        (v24)(v23);
      }

LABEL_7:
      v5 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v11 = __nwlog_obj();
    *v33 = 136446210;
    v34 = "nw_protocol_metadata_access_handle";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null metadata", v33, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *v33 = 136446210;
          v34 = "nw_protocol_metadata_access_handle";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null metadata", v33, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *v33 = 136446466;
            v34 = "nw_protocol_metadata_access_handle";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null metadata, dumping backtrace:%{public}s", v33, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (v20)
        {
          *v33 = 136446210;
          v34 = "nw_protocol_metadata_access_handle";
          _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null metadata, no backtrace", v33, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *v33 = 136446210;
          v34 = "nw_protocol_metadata_access_handle";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null metadata, backtrace limit exceeded", v33, 0xCu);
        }
      }
    }

LABEL_44:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_7;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s metadata must be http_connection", buf, 12);

  v33[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v8, v33, &type))
  {
    if (v33[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = v33[0];
      if (os_log_type_enabled(v9, v33[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s metadata must be http_connection", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v15 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = v33[0];
      v17 = os_log_type_enabled(v9, v33[0]);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        goto LABEL_38;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v21 = v33[0];
      if (os_log_type_enabled(v9, v33[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_38:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_8:

  return v5;
}

void sub_181F0092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http_connection_metadata_set_privacy_stance(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_privacy_stance";
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
        v22 = "nw_http_connection_metadata_set_privacy_stance";
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
          v22 = "nw_http_connection_metadata_set_privacy_stance";
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
        v22 = "nw_http_connection_metadata_set_privacy_stance";
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
        v22 = "nw_http_connection_metadata_set_privacy_stance";
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
    v16 = __nw_http_connection_metadata_set_privacy_stance_block_invoke;
    v17 = &__block_descriptor_36_e9_B16__0_v8l;
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
  v22 = "nw_http_connection_metadata_set_privacy_stance";
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
      v22 = "nw_http_connection_metadata_set_privacy_stance";
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
      v22 = "nw_http_connection_metadata_set_privacy_stance";
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
      v22 = "nw_http_connection_metadata_set_privacy_stance";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_privacy_stance";
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

uint64_t __nw_http_connection_metadata_set_path_block_invoke(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = nw_path_copy_effective_remote_endpoint(*(a1 + 32));
  v5 = *(a2 + 216);
  *(a2 + 216) = v4;

  v6 = nw_path_copy_effective_local_endpoint(*(a1 + 32));
  v7 = *(a2 + 208);
  *(a2 + 208) = v6;

  v8 = nw_path_copy_interface(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    name = _nw_interface_get_name(v8);
    if (name)
    {
      v11 = strdup(name);
      if (v11)
      {
LABEL_4:
        *(a2 + 200) = v11;
        goto LABEL_5;
      }
    }

    else
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v28 = 136446210;
      v29 = "strict_strdup";
      v27 = 12;
      v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s strict_strdup called with NULL string", &v28, v27);

      result = __nwlog_should_abort(v21);
      if (result)
      {
        goto LABEL_22;
      }

      free(v21);
      v11 = strdup(0);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v22 = v11;
    v23 = __nwlog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v28 = 136446210;
    v29 = "strict_strdup";
    LODWORD(v26) = 12;
    v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s strdup() failed", &v28, v26);

    result = __nwlog_should_abort(v25);
    if (!result)
    {
      free(v25);
      v11 = v22;
      goto LABEL_4;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_5:
  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  v14 = _nw_path_uses_interface_type(v13, 2u);
  LOWORD(v13) = *(a2 + 224);
  v15 = (a2 + 224);
  *v15 = v13 & 0xFFFE | v14;
  if (_nw_path_is_expensive(*v12))
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *v15 = *v15 & 0xFFFD | v16;
  if (_nw_path_is_constrained(*v12))
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  *v15 = *v15 & 0xFFFB | v17;

  return 1;
}

void nw_protocol_plugins_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v186 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    v179 = "nw_protocol_plugins_disconnect";
    v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v176 = 0;
    if (!__nwlog_fault(v100, &type, &v176))
    {
      goto LABEL_329;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v101 = __nwlog_obj();
      v102 = type;
      if (!os_log_type_enabled(v101, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v179 = "nw_protocol_plugins_disconnect";
      v103 = "%{public}s called with null protocol";
    }

    else if (v176 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v101 = __nwlog_obj();
      v102 = type;
      v131 = os_log_type_enabled(v101, type);
      if (backtrace_string)
      {
        if (v131)
        {
          *buf = 136446466;
          v179 = "nw_protocol_plugins_disconnect";
          v180 = 2082;
          v181 = backtrace_string;
          _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_329:
        if (!v100)
        {
          return;
        }

        goto LABEL_330;
      }

      if (!v131)
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v179 = "nw_protocol_plugins_disconnect";
      v103 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v101 = __nwlog_obj();
      v102 = type;
      if (!os_log_type_enabled(v101, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v179 = "nw_protocol_plugins_disconnect";
      v103 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_328;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    v104 = __nwlog_obj();
    *buf = 136446210;
    v179 = "nw_protocol_plugins_disconnect";
    v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v176 = 0;
    if (!__nwlog_fault(v100, &type, &v176))
    {
      goto LABEL_329;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v176 != 1)
      {
        v101 = __nwlog_obj();
        v102 = type;
        if (!os_log_type_enabled(v101, type))
        {
          goto LABEL_329;
        }

        *buf = 136446210;
        v179 = "nw_protocol_plugins_disconnect";
        v103 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_328;
      }

      v132 = __nw_create_backtrace_string();
      v101 = __nwlog_obj();
      v102 = type;
      v133 = os_log_type_enabled(v101, type);
      if (!v132)
      {
        if (!v133)
        {
          goto LABEL_329;
        }

        *buf = 136446210;
        v179 = "nw_protocol_plugins_disconnect";
        v103 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_328;
      }

      if (v133)
      {
        *buf = 136446466;
        v179 = "nw_protocol_plugins_disconnect";
        v180 = 2082;
        v181 = v132;
        v134 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
LABEL_253:
        _os_log_impl(&dword_181A37000, v101, v102, v134, buf, 0x16u);
      }

LABEL_254:
      free(v132);
      if (!v100)
      {
        return;
      }

LABEL_330:
      v78 = v100;
LABEL_196:
      free(v78);
      return;
    }

    v101 = __nwlog_obj();
    v102 = type;
    if (!os_log_type_enabled(v101, type))
    {
      goto LABEL_329;
    }

    *buf = 136446210;
    v179 = "nw_protocol_plugins_disconnect";
    v103 = "%{public}s called with null protocol->handle";
LABEL_328:
    _os_log_impl(&dword_181A37000, v101, v102, v103, buf, 0xCu);
    goto LABEL_329;
  }

  v4 = a2;
  if (!a2)
  {
    v105 = __nwlog_obj();
    *buf = 136446210;
    v179 = "nw_protocol_plugins_handle_disconnect";
    v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v176 = 0;
    if (!__nwlog_fault(v100, &type, &v176))
    {
      goto LABEL_329;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v101 = __nwlog_obj();
      v102 = type;
      if (!os_log_type_enabled(v101, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v179 = "nw_protocol_plugins_handle_disconnect";
      v103 = "%{public}s called with null other_protocol";
      goto LABEL_328;
    }

    if (v176 != 1)
    {
      v101 = __nwlog_obj();
      v102 = type;
      if (!os_log_type_enabled(v101, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v179 = "nw_protocol_plugins_handle_disconnect";
      v103 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_328;
    }

    v132 = __nw_create_backtrace_string();
    v101 = __nwlog_obj();
    v102 = type;
    v135 = os_log_type_enabled(v101, type);
    if (!v132)
    {
      if (!v135)
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v179 = "nw_protocol_plugins_handle_disconnect";
      v103 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_328;
    }

    if (v135)
    {
      *buf = 136446466;
      v179 = "nw_protocol_plugins_handle_disconnect";
      v180 = 2082;
      v181 = v132;
      v134 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_253;
    }

    goto LABEL_254;
  }

  if (gLogDatapath == 1)
  {
    v106 = __nwlog_obj();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      name = v2->identifier->name;
      if (!name)
      {
        name = "invalid";
      }

      *buf = 136446722;
      v179 = "nw_protocol_plugins_handle_disconnect";
      v180 = 2080;
      v181 = name;
      v182 = 2048;
      v183 = v2;
      _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
    }
  }

  v5 = handle[11];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (gLogDatapath == 1)
  {
    v122 = __nwlog_obj();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v179 = "nw_protocol_plugin_retry_disconnect";
      v180 = 2048;
      v181 = v2;
      _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_DEBUG, "%{public}s called %p", buf, 0x16u);
    }
  }

  v6 = *(v5 + 108);
  *(v5 + 108) = v6 | 0x80;
  if ((v6 & 0x20) != 0)
  {
    if (gLogDatapath == 1)
    {
      v151 = __nwlog_obj();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v179 = "nw_protocol_plugin_retry_disconnect";
        v180 = 2048;
        v181 = v2;
        v182 = 2048;
        v183 = v4;
        _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %p sending disconnected immediately to %p as async reissue is pending", buf, 0x20u);
      }
    }

    v13 = v4->handle;
    v14 = v4;
    if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *v4[1].flow_id) != 0)
    {
      callbacks = v14[1].callbacks;
      v15 = 0;
      if (callbacks)
      {
        v14[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v15 = 1;
    }

    v20 = v2->handle;
    v21 = v2;
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v21 = *v2[1].flow_id) != 0)
    {
      v24 = v21[1].callbacks;
      if (v24)
      {
        v22 = 0;
        v21[1].callbacks = (&v24->add_input_handler + 1);
        v23 = v4->callbacks;
        if (!v23)
        {
          goto LABEL_232;
        }
      }

      else
      {
        v22 = 0;
        v23 = v4->callbacks;
        if (!v23)
        {
          goto LABEL_232;
        }
      }
    }

    else
    {
      v22 = 1;
      v23 = v4->callbacks;
      if (!v23)
      {
        goto LABEL_232;
      }
    }

    disconnected = v23->disconnected;
    if (disconnected)
    {
      disconnected(v4, v2);
LABEL_41:
      if ((v22 & 1) == 0)
      {
        v26 = v2->handle;
        if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
        {
          v27 = v2[1].callbacks;
          if (v27)
          {
            v28 = (v27 - 1);
            v2[1].callbacks = v28;
            if (!v28)
            {
              v29 = *v2[1].flow_id;
              if (v29)
              {
                *v2[1].flow_id = 0;
                v29[2](v29);
                _Block_release(v29);
              }

              if (v2[1].flow_id[8])
              {
                v30 = *v2[1].flow_id;
                if (v30)
                {
                  _Block_release(v30);
                }
              }

              free(v2);
            }
          }
        }
      }

      if (v15)
      {
        return;
      }

      v31 = v4->handle;
      if (v31 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_188;
      }

      if (v31 != &nw_protocol_ref_counted_additional_handle)
      {
        return;
      }

      goto LABEL_187;
    }

LABEL_232:
    v123 = __nwlog_obj();
    v124 = v4->identifier->name;
    *buf = 136446722;
    v179 = "__nw_protocol_disconnected";
    if (!v124)
    {
      v124 = "invalid";
    }

    v180 = 2082;
    v181 = v124;
    v182 = 2048;
    v183 = v4;
    v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v123, 16, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v176 = 0;
    if (!__nwlog_fault(v125, &type, &v176))
    {
      goto LABEL_364;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v126 = __nwlog_obj();
      v127 = type;
      if (!os_log_type_enabled(v126, type))
      {
        goto LABEL_364;
      }

      v128 = v4->identifier->name;
      if (!v128)
      {
        v128 = "invalid";
      }

      *buf = 136446722;
      v179 = "__nw_protocol_disconnected";
      v180 = 2082;
      v181 = v128;
      v182 = 2048;
      v183 = v4;
      v129 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
    }

    else if (v176 == 1)
    {
      log = v22;
      v152 = __nw_create_backtrace_string();
      v126 = __nwlog_obj();
      v127 = type;
      v153 = os_log_type_enabled(v126, type);
      if (v152)
      {
        if (v153)
        {
          v154 = v4->identifier->name;
          if (!v154)
          {
            v154 = "invalid";
          }

          *buf = 136446978;
          v179 = "__nw_protocol_disconnected";
          v180 = 2082;
          v181 = v154;
          v182 = 2048;
          v183 = v4;
          v184 = 2082;
          v185 = v152;
          _os_log_impl(&dword_181A37000, v126, v127, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v152);
        v22 = log;
        goto LABEL_364;
      }

      v22 = log;
      if (!v153)
      {
LABEL_364:
        if (v125)
        {
          free(v125);
        }

        goto LABEL_41;
      }

      v171 = v4->identifier->name;
      if (!v171)
      {
        v171 = "invalid";
      }

      *buf = 136446722;
      v179 = "__nw_protocol_disconnected";
      v180 = 2082;
      v181 = v171;
      v182 = 2048;
      v183 = v4;
      v129 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
    }

    else
    {
      v126 = __nwlog_obj();
      v127 = type;
      if (!os_log_type_enabled(v126, type))
      {
        goto LABEL_364;
      }

      v164 = v4->identifier->name;
      if (!v164)
      {
        v164 = "invalid";
      }

      *buf = 136446722;
      v179 = "__nw_protocol_disconnected";
      v180 = 2082;
      v181 = v164;
      v182 = 2048;
      v183 = v4;
      v129 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v126, v127, v129, buf, 0x20u);
    goto LABEL_364;
  }

  if (((*(v5 + 40))(v2, v4) & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      v163 = __nwlog_obj();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v179 = "nw_protocol_plugin_retry_disconnect";
        v180 = 2048;
        v181 = v2;
        v182 = 2048;
        v183 = v4;
        _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %p sending disconnected immediately to %p without disconnect", buf, 0x20u);
      }
    }

    v16 = v4->handle;
    v17 = v4;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *v4[1].flow_id) != 0)
    {
      v38 = v17[1].callbacks;
      v18 = 0;
      if (v38)
      {
        v17[1].callbacks = (&v38->add_input_handler + 1);
      }
    }

    else
    {
      v18 = 1;
    }

    v85 = v2->handle;
    v86 = v2;
    if (v85 == &nw_protocol_ref_counted_handle || v85 == &nw_protocol_ref_counted_additional_handle && (v86 = *v2[1].flow_id) != 0)
    {
      v87 = v86[1].callbacks;
      if (v87)
      {
        v82 = 0;
        v86[1].callbacks = (&v87->add_input_handler + 1);
        v83 = v4->callbacks;
        if (!v83)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v82 = 0;
        v83 = v4->callbacks;
        if (!v83)
        {
          goto LABEL_214;
        }
      }
    }

    else
    {
      v82 = 1;
      v83 = v4->callbacks;
      if (!v83)
      {
        goto LABEL_214;
      }
    }

LABEL_170:
    v88 = v83->disconnected;
    if (v88)
    {
      v88(v4, v2);
LABEL_172:
      if ((v82 & 1) == 0)
      {
        v89 = v2->handle;
        if (v89 == &nw_protocol_ref_counted_handle || v89 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
        {
          v90 = v2[1].callbacks;
          if (v90)
          {
            v91 = (v90 - 1);
            v2[1].callbacks = v91;
            if (!v91)
            {
              v92 = *v2[1].flow_id;
              if (v92)
              {
                *v2[1].flow_id = 0;
                v92[2](v92);
                _Block_release(v92);
              }

              if (v2[1].flow_id[8])
              {
                v93 = *v2[1].flow_id;
                if (v93)
                {
                  _Block_release(v93);
                }
              }

              free(v2);
            }
          }
        }
      }

      if (v18)
      {
        return;
      }

      v94 = v4->handle;
      if (v94 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_188;
      }

      if (v94 != &nw_protocol_ref_counted_additional_handle)
      {
        return;
      }

LABEL_187:
      v4 = *v4[1].flow_id;
      if (!v4)
      {
        return;
      }

LABEL_188:
      v95 = v4[1].callbacks;
      if (v95)
      {
        v96 = (v95 - 1);
        v4[1].callbacks = v96;
        if (!v96)
        {
          v97 = *v4[1].flow_id;
          if (v97)
          {
            *v4[1].flow_id = 0;
            v97[2](v97);
            _Block_release(v97);
          }

          if (v4[1].flow_id[8])
          {
            v98 = *v4[1].flow_id;
            if (v98)
            {
              _Block_release(v98);
            }
          }

          v78 = v4;
          goto LABEL_196;
        }
      }

      return;
    }

LABEL_214:
    v108 = __nwlog_obj();
    v109 = v4->identifier->name;
    *buf = 136446722;
    v179 = "__nw_protocol_disconnected";
    if (!v109)
    {
      v109 = "invalid";
    }

    v180 = 2082;
    v181 = v109;
    v182 = 2048;
    v183 = v4;
    LODWORD(v173) = 32;
    v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, v173);
    type = OS_LOG_TYPE_ERROR;
    v176 = 0;
    if (!__nwlog_fault(v110, &type, &v176))
    {
      goto LABEL_350;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v112 = type;
      if (!os_log_type_enabled(v111, type))
      {
        goto LABEL_350;
      }

      v113 = v4->identifier->name;
      if (!v113)
      {
        v113 = "invalid";
      }

      *buf = 136446722;
      v179 = "__nw_protocol_disconnected";
      v180 = 2082;
      v181 = v113;
      v182 = 2048;
      v183 = v4;
      v114 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
    }

    else if (v176 == 1)
    {
      v136 = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v112 = type;
      v137 = os_log_type_enabled(v111, type);
      if (v136)
      {
        if (v137)
        {
          v138 = v4->identifier->name;
          if (!v138)
          {
            v138 = "invalid";
          }

          *buf = 136446978;
          v179 = "__nw_protocol_disconnected";
          v180 = 2082;
          v181 = v138;
          v182 = 2048;
          v183 = v4;
          v184 = 2082;
          v185 = v136;
          _os_log_impl(&dword_181A37000, v111, v112, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v136);
        goto LABEL_350;
      }

      if (!v137)
      {
LABEL_350:
        if (v110)
        {
          free(v110);
        }

        goto LABEL_172;
      }

      v169 = v4->identifier->name;
      if (!v169)
      {
        v169 = "invalid";
      }

      *buf = 136446722;
      v179 = "__nw_protocol_disconnected";
      v180 = 2082;
      v181 = v169;
      v182 = 2048;
      v183 = v4;
      v114 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
    }

    else
    {
      v111 = __nwlog_obj();
      v112 = type;
      if (!os_log_type_enabled(v111, type))
      {
        goto LABEL_350;
      }

      v155 = v4->identifier->name;
      if (!v155)
      {
        v155 = "invalid";
      }

      *buf = 136446722;
      v179 = "__nw_protocol_disconnected";
      v180 = 2082;
      v181 = v155;
      v182 = 2048;
      v183 = v4;
      v114 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v111, v112, v114, buf, 0x20u);
    goto LABEL_350;
  }

LABEL_9:
  v7 = handle[9];
  if (v7)
  {
    if (gLogDatapath == 1)
    {
      v139 = __nwlog_obj();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        v140 = v2->identifier->name;
        if (!v140)
        {
          v140 = "invalid";
        }

        *buf = 136446722;
        v179 = "nw_protocol_plugin_metadata_disconnect";
        v180 = 2048;
        v181 = v2;
        v182 = 2080;
        v183 = v140;
        _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s protocol %p:%s disconnect", buf, 0x20u);
      }
    }

    v8 = *(v7 + 142);
    if (v8)
    {
      *(v7 + 140) = 3;
    }

    *(v7 + 142) = v8 & 0xDE;
    if ((v8 & 8) != 0)
    {
      if (gLogDatapath == 1)
      {
        v156 = __nwlog_obj();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
        {
          v157 = v2->identifier->name;
          if (!v157)
          {
            v157 = "invalid";
          }

          *buf = 136446722;
          v179 = "nw_protocol_plugin_metadata_disconnect";
          v180 = 2048;
          v181 = v2;
          v182 = 2080;
          v183 = v157;
          _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEBUG, "%{public}s protocol %p:%s sending disconnected immediately as it had previously received disconnected", buf, 0x20u);
        }
      }

      *(v7 + 142) &= ~8u;
      output_handler = v2->output_handler;
      v9 = v2->handle;
      v11 = v2;
      if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v11 = *v2[1].flow_id) != 0)
      {
        v32 = v11[1].callbacks;
        if (v32)
        {
          v12 = 0;
          v11[1].callbacks = (&v32->add_input_handler + 1);
          if (output_handler)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v12 = 0;
          if (output_handler)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v12 = 1;
        if (output_handler)
        {
LABEL_60:
          v33 = *(output_handler + 40);
          v34 = output_handler;
          if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v34 = *(output_handler + 64)) != 0)
          {
            v37 = *(v34 + 88);
            if (v37)
            {
              v35 = 0;
              *(v34 + 88) = v37 + 1;
              v36 = v2->callbacks;
              if (!v36)
              {
                goto LABEL_267;
              }
            }

            else
            {
              v35 = 0;
              v36 = v2->callbacks;
              if (!v36)
              {
                goto LABEL_267;
              }
            }
          }

          else
          {
            v35 = 1;
            v36 = v2->callbacks;
            if (!v36)
            {
              goto LABEL_267;
            }
          }

          v43 = v36->disconnected;
          if (v43)
          {
            v43(v2, output_handler);
            goto LABEL_79;
          }

LABEL_267:
          v141 = __nwlog_obj();
          v142 = v2->identifier->name;
          *buf = 136446722;
          v179 = "__nw_protocol_disconnected";
          if (!v142)
          {
            v142 = "invalid";
          }

          v180 = 2082;
          v181 = v142;
          v182 = 2048;
          v183 = v2;
          v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, 32);
          type = OS_LOG_TYPE_ERROR;
          v176 = 0;
          if (!__nwlog_fault(v143, &type, &v176))
          {
            goto LABEL_343;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v144 = __nwlog_obj();
            v145 = type;
            if (!os_log_type_enabled(v144, type))
            {
              goto LABEL_343;
            }

            v146 = v2->identifier->name;
            if (!v146)
            {
              v146 = "invalid";
            }

            *buf = 136446722;
            v179 = "__nw_protocol_disconnected";
            v180 = 2082;
            v181 = v146;
            v182 = 2048;
            v183 = v2;
            v147 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
          }

          else
          {
            if (v176 == 1)
            {
              v159 = __nw_create_backtrace_string();
              v160 = __nwlog_obj();
              v145 = type;
              loga = v160;
              v161 = os_log_type_enabled(v160, type);
              if (v159)
              {
                if (v161)
                {
                  v162 = v2->identifier->name;
                  if (!v162)
                  {
                    v162 = "invalid";
                  }

                  *buf = 136446978;
                  v179 = "__nw_protocol_disconnected";
                  v180 = 2082;
                  v181 = v162;
                  v182 = 2048;
                  v183 = v2;
                  v184 = 2082;
                  v185 = v159;
                  _os_log_impl(&dword_181A37000, loga, v145, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v159);
                goto LABEL_343;
              }

              if (!v161)
              {
LABEL_343:
                if (v143)
                {
                  free(v143);
                }

LABEL_79:
                if ((v35 & 1) == 0)
                {
                  v44 = *(output_handler + 40);
                  if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (output_handler = *(output_handler + 64)) != 0)
                  {
                    v45 = *(output_handler + 88);
                    if (v45)
                    {
                      v46 = v45 - 1;
                      *(output_handler + 88) = v46;
                      if (!v46)
                      {
                        v47 = *(output_handler + 64);
                        if (v47)
                        {
                          *(output_handler + 64) = 0;
                          v47[2](v47);
                          _Block_release(v47);
                        }

                        if (*(output_handler + 72))
                        {
                          v48 = *(output_handler + 64);
                          if (v48)
                          {
                            _Block_release(v48);
                          }
                        }

                        goto LABEL_90;
                      }
                    }
                  }
                }

                goto LABEL_91;
              }

              v172 = v2->identifier->name;
              if (!v172)
              {
                v172 = "invalid";
              }

              *buf = 136446722;
              v179 = "__nw_protocol_disconnected";
              v180 = 2082;
              v181 = v172;
              v182 = 2048;
              v183 = v2;
              v147 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
              v168 = loga;
LABEL_342:
              _os_log_impl(&dword_181A37000, v168, v145, v147, buf, 0x20u);
              goto LABEL_343;
            }

            v144 = __nwlog_obj();
            v145 = type;
            if (!os_log_type_enabled(v144, type))
            {
              goto LABEL_343;
            }

            v167 = v2->identifier->name;
            if (!v167)
            {
              v167 = "invalid";
            }

            *buf = 136446722;
            v179 = "__nw_protocol_disconnected";
            v180 = 2082;
            v181 = v167;
            v182 = 2048;
            v183 = v2;
            v147 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
          }

          v168 = v144;
          goto LABEL_342;
        }
      }

      v39 = __nwlog_obj();
      *buf = 136446210;
      v179 = "__nw_protocol_disconnected";
      output_handler = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null other_protocol", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v176 = 0;
      if (__nwlog_fault(output_handler, &type, &v176))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v40 = __nwlog_obj();
          v41 = type;
          if (!os_log_type_enabled(v40, type))
          {
            goto LABEL_375;
          }

          *buf = 136446210;
          v179 = "__nw_protocol_disconnected";
          v42 = "%{public}s called with null other_protocol";
          goto LABEL_374;
        }

        if (v176 != 1)
        {
          v40 = __nwlog_obj();
          v41 = type;
          if (!os_log_type_enabled(v40, type))
          {
            goto LABEL_375;
          }

          *buf = 136446210;
          v179 = "__nw_protocol_disconnected";
          v42 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_374;
        }

        v165 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v166 = os_log_type_enabled(v40, type);
        if (v165)
        {
          if (v166)
          {
            *buf = 136446466;
            v179 = "__nw_protocol_disconnected";
            v180 = 2082;
            v181 = v165;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v165);
          if (!output_handler)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        if (v166)
        {
          *buf = 136446210;
          v179 = "__nw_protocol_disconnected";
          v42 = "%{public}s called with null other_protocol, no backtrace";
LABEL_374:
          _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
        }
      }

LABEL_375:
      if (output_handler)
      {
LABEL_90:
        free(output_handler);
      }

LABEL_91:
      if ((v12 & 1) == 0)
      {
        v49 = v2->handle;
        v50 = v2;
        if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v50 = *v2[1].flow_id) != 0)
        {
          v51 = v50[1].callbacks;
          if (v51)
          {
            v52 = (v51 - 1);
            v50[1].callbacks = v52;
            if (!v52)
            {
              v53 = *v50[1].flow_id;
              if (v53)
              {
                *v50[1].flow_id = 0;
                v53[2](v53);
                _Block_release(v53);
              }

              if (v50[1].flow_id[8])
              {
                v54 = *v50[1].flow_id;
                if (v54)
                {
                  _Block_release(v54);
                }
              }

              free(v50);
            }
          }
        }
      }
    }
  }

  v55 = v2->output_handler;
  if (!v55)
  {
    v59 = v4->handle;
    v60 = v4;
    if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v60 = *v4[1].flow_id) != 0)
    {
      v79 = v60[1].callbacks;
      v18 = 0;
      if (v79)
      {
        v60[1].callbacks = (&v79->add_input_handler + 1);
      }
    }

    else
    {
      v18 = 1;
    }

    v80 = v2->handle;
    v81 = v2;
    if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v81 = *v2[1].flow_id) != 0)
    {
      v84 = v81[1].callbacks;
      if (v84)
      {
        v82 = 0;
        v81[1].callbacks = (&v84->add_input_handler + 1);
        v83 = v4->callbacks;
        if (!v83)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v82 = 0;
        v83 = v4->callbacks;
        if (!v83)
        {
          goto LABEL_214;
        }
      }
    }

    else
    {
      v82 = 1;
      v83 = v4->callbacks;
      if (!v83)
      {
        goto LABEL_214;
      }
    }

    goto LABEL_170;
  }

  v56 = v55->handle;
  v57 = v2->output_handler;
  if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v57 = *v55[1].flow_id) != 0)
  {
    v61 = v57[1].callbacks;
    v58 = 0;
    if (v61)
    {
      v57[1].callbacks = (&v61->add_input_handler + 1);
    }
  }

  else
  {
    v58 = 1;
  }

  v62 = v2->handle;
  v63 = v2;
  if (v62 == &nw_protocol_ref_counted_handle || v62 == &nw_protocol_ref_counted_additional_handle && (v63 = *v2[1].flow_id) != 0)
  {
    v66 = v63[1].callbacks;
    if (v66)
    {
      v64 = 0;
      v63[1].callbacks = (&v66->add_input_handler + 1);
      v65 = v55->callbacks;
      if (!v65)
      {
        goto LABEL_222;
      }
    }

    else
    {
      v64 = 0;
      v65 = v55->callbacks;
      if (!v65)
      {
        goto LABEL_222;
      }
    }
  }

  else
  {
    v64 = 1;
    v65 = v55->callbacks;
    if (!v65)
    {
      goto LABEL_222;
    }
  }

  disconnect = v65->disconnect;
  if (disconnect)
  {
    disconnect(v55, v2);
    goto LABEL_124;
  }

LABEL_222:
  v115 = __nwlog_obj();
  v116 = v55->identifier->name;
  *buf = 136446722;
  v179 = "__nw_protocol_disconnect";
  if (!v116)
  {
    v116 = "invalid";
  }

  v180 = 2082;
  v181 = v116;
  v182 = 2048;
  v183 = v55;
  LODWORD(v173) = 32;
  v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s protocol %{public}s (%p) has invalid disconnect callback", buf, v173);
  type = OS_LOG_TYPE_ERROR;
  v176 = 0;
  if (!__nwlog_fault(v117, &type, &v176))
  {
    goto LABEL_357;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v118 = __nwlog_obj();
    v119 = type;
    if (!os_log_type_enabled(v118, type))
    {
      goto LABEL_357;
    }

    v120 = v55->identifier->name;
    if (!v120)
    {
      v120 = "invalid";
    }

    *buf = 136446722;
    v179 = "__nw_protocol_disconnect";
    v180 = 2082;
    v181 = v120;
    v182 = 2048;
    v183 = v55;
    v121 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback";
    goto LABEL_356;
  }

  if (v176 != 1)
  {
    v118 = __nwlog_obj();
    v119 = type;
    if (!os_log_type_enabled(v118, type))
    {
      goto LABEL_357;
    }

    v158 = v55->identifier->name;
    if (!v158)
    {
      v158 = "invalid";
    }

    *buf = 136446722;
    v179 = "__nw_protocol_disconnect";
    v180 = 2082;
    v181 = v158;
    v182 = 2048;
    v183 = v55;
    v121 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback, backtrace limit exceeded";
    goto LABEL_356;
  }

  v148 = __nw_create_backtrace_string();
  v118 = __nwlog_obj();
  v119 = type;
  v149 = os_log_type_enabled(v118, type);
  if (v148)
  {
    if (v149)
    {
      v150 = v55->identifier->name;
      if (!v150)
      {
        v150 = "invalid";
      }

      *buf = 136446978;
      v179 = "__nw_protocol_disconnect";
      v180 = 2082;
      v181 = v150;
      v182 = 2048;
      v183 = v55;
      v184 = 2082;
      v185 = v148;
      _os_log_impl(&dword_181A37000, v118, v119, "%{public}s protocol %{public}s (%p) has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v148);
    goto LABEL_357;
  }

  if (v149)
  {
    v170 = v55->identifier->name;
    if (!v170)
    {
      v170 = "invalid";
    }

    *buf = 136446722;
    v179 = "__nw_protocol_disconnect";
    v180 = 2082;
    v181 = v170;
    v182 = 2048;
    v183 = v55;
    v121 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback, no backtrace";
LABEL_356:
    _os_log_impl(&dword_181A37000, v118, v119, v121, buf, 0x20u);
  }

LABEL_357:
  if (v117)
  {
    free(v117);
  }

LABEL_124:
  if ((v64 & 1) == 0)
  {
    v68 = v2->handle;
    if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v69 = v2[1].callbacks;
      if (v69)
      {
        v70 = (v69 - 1);
        v2[1].callbacks = v70;
        if (!v70)
        {
          v71 = *v2[1].flow_id;
          if (v71)
          {
            *v2[1].flow_id = 0;
            v71[2](v71);
            _Block_release(v71);
          }

          if (v2[1].flow_id[8])
          {
            v72 = *v2[1].flow_id;
            if (v72)
            {
              _Block_release(v72);
            }
          }

          free(v2);
        }
      }
    }
  }

  if ((v58 & 1) == 0)
  {
    v73 = v55->handle;
    if (v73 == &nw_protocol_ref_counted_handle || v73 == &nw_protocol_ref_counted_additional_handle && (v55 = *v55[1].flow_id) != 0)
    {
      v74 = v55[1].callbacks;
      if (v74)
      {
        v75 = (v74 - 1);
        v55[1].callbacks = v75;
        if (!v75)
        {
          v76 = *v55[1].flow_id;
          if (v76)
          {
            *v55[1].flow_id = 0;
            v76[2](v76);
            _Block_release(v76);
          }

          if (v55[1].flow_id[8])
          {
            v77 = *v55[1].flow_id;
            if (v77)
            {
              _Block_release(v77);
            }
          }

          v78 = v55;
          goto LABEL_196;
        }
      }
    }
  }
}

uint64_t nw_protocol_http_client_create::$_4::__invoke(nw_protocol_http_client_create::$_4 *this, nw_protocol *a2, nw_protocol *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v32 = "operator()";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &type, &v29))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null protocol";
      goto LABEL_70;
    }

    if (v29 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_70;
    }

    if (!v15)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v32 = "operator()";
    v33 = 2082;
    v34 = backtrace_string;
    v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v9, v10, v16, buf, 0x16u);
    goto LABEL_38;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v32 = "operator()";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http_client", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &type, &v29))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null http_client";
      goto LABEL_70;
    }

    if (v29 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null http_client, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v17 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (!v17)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null http_client, no backtrace";
      goto LABEL_70;
    }

    if (!v17)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v32 = "operator()";
    v33 = 2082;
    v34 = backtrace_string;
    v16 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
    goto LABEL_37;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v32 = "operator()";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &type, &v29))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null other_protocol";
      goto LABEL_70;
    }

    if (v29 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v32 = "operator()";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v18 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        v32 = "operator()";
        v33 = 2082;
        v34 = backtrace_string;
        v16 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

LABEL_38:
      free(backtrace_string);
      goto LABEL_71;
    }

    if (!v18)
    {
      goto LABEL_71;
    }

    *buf = 136446210;
    v32 = "operator()";
    v11 = "%{public}s called with null other_protocol, no backtrace";
LABEL_70:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
LABEL_71:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  if (*(v3 + 48) != a2)
  {
    return 0;
  }

  v5 = *(v3 + 472);
  if (v5)
  {
    if (nw_protocol_copy_http_client_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    if (nw_protocol_metadata_matches_definition(v5, nw_protocol_copy_http_client_definition_definition))
    {
      handle = _nw_protocol_metadata_get_handle();
      if (handle)
      {
        __nw_http_client_metadata_mark_end_block_invoke(&__block_literal_global_90, handle);
      }

      goto LABEL_12;
    }

    v24 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_http_client_metadata_mark_end";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s metadata must be http_client", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v20, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v32 = "nw_http_client_metadata_mark_end";
          v23 = "%{public}s metadata must be http_client";
          goto LABEL_81;
        }
      }

      else
      {
        if (v29 == 1)
        {
          v27 = __nw_create_backtrace_string();
          v21 = __nwlog_obj();
          v22 = type;
          v28 = os_log_type_enabled(v21, type);
          if (v27)
          {
            if (v28)
            {
              *buf = 136446466;
              v32 = "nw_http_client_metadata_mark_end";
              v33 = 2082;
              v34 = v27;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v27);
            if (!v20)
            {
              goto LABEL_12;
            }

            goto LABEL_84;
          }

          if (!v28)
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v32 = "nw_http_client_metadata_mark_end";
          v23 = "%{public}s metadata must be http_client, no backtrace";
          goto LABEL_81;
        }

        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v32 = "nw_http_client_metadata_mark_end";
          v23 = "%{public}s metadata must be http_client, backtrace limit exceeded";
          goto LABEL_81;
        }
      }

      goto LABEL_82;
    }
  }

  else
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_http_client_metadata_mark_end";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v20, &type, &v29))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v32 = "nw_http_client_metadata_mark_end";
        v23 = "%{public}s called with null metadata";
LABEL_81:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
      }

LABEL_82:

      goto LABEL_83;
    }

    if (v29 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v32 = "nw_http_client_metadata_mark_end";
        v23 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    v25 = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v26 = os_log_type_enabled(v21, type);
    if (!v25)
    {
      if (v26)
      {
        *buf = 136446210;
        v32 = "nw_http_client_metadata_mark_end";
        v23 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    if (v26)
    {
      *buf = 136446466;
      v32 = "nw_http_client_metadata_mark_end";
      v33 = 2082;
      v34 = v25;
      _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v25);
  }

LABEL_83:
  if (v20)
  {
LABEL_84:
    free(v20);
  }

LABEL_12:

  return 1;
}

BOOL __nw_http_client_metadata_mark_end_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    mach_get_times();
    *(a2 + 8) = 1;
    *(a2 + 16) = 0 - *MEMORY[0x1E695E468] + 0 * 0.000000001;
    v4 = *(a2 + 24);
    if (v4)
    {
      object = _nw_array_copy_last_object(v4);
      v6 = object;
      if (object)
      {
        nw_http_transaction_metadata_set_end_time(object, *(a2 + 8));
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v2 == 0;
}

void ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke(uint64_t a1, void *a2, int a3)
{
  v113[2] = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(a2);
      v11 = *(a1 + 32);
      if (v11)
      {
        if ((*(v11 + 190) & 0x10) != 0)
        {
          return;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v12 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v13 = *(a1 + 32);
        v14 = (v13 + 191);
        v15 = "";
        v16 = v13 == 0;
        if (!v13)
        {
          v14 = "";
        }

        v19 = v13 + 176;
        v17 = *(v13 + 176);
        v18 = *(v19 + 4);
        if (!v16)
        {
          v15 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v14;
        v108 = 2080;
        v109 = v15;
        v110 = 1024;
        v111 = v18;
        v112 = 1024;
        LODWORD(v113[0]) = v17;
        WORD2(v113[0]) = 2048;
        *(v113 + 6) = outbound_body_size;
        v20 = "%{public}s %{public}s%s<i%u:s%d> finished sending {body_bytes=%llu}";
LABEL_45:
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, v20, buf, 0x36u);
        return;
      }

      v74 = *(a1 + 40);
      if (v74 && (*(v74 + 379) & 1) != 0)
      {
        return;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v67 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v75 = *(a1 + 40);
      v76 = (v75 + 380);
      v77 = "";
      v78 = v75 == 0;
      v79 = *(v75 + 360);
      v105 = "nw_http2_stream_connect_block_invoke";
      if (v78)
      {
        v76 = "";
      }

      v106 = 2082;
      *buf = 136447234;
      if (!v78)
      {
        v77 = " ";
      }

      v107 = v76;
      v108 = 2080;
      v109 = v77;
      v110 = 1024;
      v111 = v79;
      v112 = 2048;
      v113[0] = outbound_body_size;
      v73 = "%{public}s %{public}s%s<i%u> finished sending {body_bytes=%llu}";
LABEL_107:
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_INFO, v73, buf, 0x30u);
      return;
    }

    outbound_message = nw_http_transaction_metadata_get_outbound_message(a2);
    v22 = nw_http_metadata_copy_request(outbound_message);
    v47 = nw_http_metadata_copy_response(outbound_message);
    if (v22)
    {
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 0x40000000;
      v102[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_2;
      v102[3] = &__block_descriptor_tmp_39_88117;
      v103 = *(a1 + 32);
      v48 = v22;
      v49 = v102;
      _nw_http_request_access_method(v48, v49);
    }

    if (v47)
    {
      v26 = v47;
      status_code = _nw_http_response_get_status_code(v26);

      v51 = *(a1 + 32);
      if (v51)
      {
        if ((*(v51 + 190) & 0x10) != 0)
        {
          goto LABEL_61;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v29 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          goto LABEL_61;
        }

        v52 = *(a1 + 32);
        v53 = (v52 + 191);
        v54 = "";
        v55 = v52 == 0;
        if (!v52)
        {
          v53 = "";
        }

        v58 = v52 + 176;
        v56 = *(v52 + 176);
        v57 = *(v58 + 4);
        if (!v55)
        {
          v54 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v53;
        v108 = 2080;
        v109 = v54;
        v110 = 1024;
        v111 = v57;
        v112 = 1024;
        LODWORD(v113[0]) = v56;
        WORD2(v113[0]) = 1024;
        *(v113 + 6) = status_code;
        v37 = "%{public}s %{public}s%s<i%u:s%d> sending response header {status=%hu}";
LABEL_59:
        v59 = v29;
        v60 = 50;
LABEL_60:
        _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, v37, buf, v60);
LABEL_61:
        os_release(v26);
        goto LABEL_62;
      }

      v87 = *(a1 + 40);
      if (v87 && (*(v87 + 379) & 1) != 0)
      {
        goto LABEL_61;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v81 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v88 = *(a1 + 40);
      v89 = "";
      v90 = v88 == 0;
      v91 = *(v88 + 360);
      v92 = (v88 + 380);
      v105 = "nw_http2_stream_connect_block_invoke";
      v106 = 2082;
      if (v90)
      {
        v92 = "";
      }

      *buf = 136447234;
      if (!v90)
      {
        v89 = " ";
      }

      v107 = v92;
      v108 = 2080;
      v109 = v89;
      v110 = 1024;
      v111 = v91;
      v112 = 1024;
      LODWORD(v113[0]) = status_code;
      v37 = "%{public}s %{public}s%s<i%u> sending response header {status=%hu}";
LABEL_128:
      v59 = v81;
      v60 = 44;
      goto LABEL_60;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          return;
        }

        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 0x40000000;
        v96 = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_42;
        v97 = &__block_descriptor_tmp_44_88127;
        v98 = a2;
        v99 = *(a1 + 32);
        v5 = nw_http_transaction_metadata_get_outbound_message(a2);
        v6 = v5;
        if (v5)
        {
          v7 = nw_http_metadata_copy_request(v5);
          v8 = nw_http_metadata_copy_response(v6);
          inbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
          if (!inbound_message)
          {
            goto LABEL_70;
          }

          if (v7)
          {
            if (v8)
            {
              goto LABEL_71;
            }

LABEL_69:
            v8 = nw_http_metadata_copy_response(inbound_message);
LABEL_70:
            if (!v8)
            {
              v63 = 0;
              if (!v7)
              {
                goto LABEL_85;
              }

              goto LABEL_74;
            }

LABEL_71:
            v8 = v8;
            v63 = _nw_http_response_get_status_code(v8);

            if (!v7)
            {
LABEL_85:
              v96(v95, "", v63);
              v64 = 0;
              if (!inbound_message)
              {
LABEL_76:
                if (v6)
                {
                  os_release(v6);
                }

                if (v8)
                {
                  os_release(v8);
                }

                if (v64)
                {
                  v61 = v64;
                  goto LABEL_82;
                }

                return;
              }

LABEL_75:
              os_release(inbound_message);
              goto LABEL_76;
            }

LABEL_74:
            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 0x40000000;
            v93[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_45;
            v93[3] = &unk_1E6A3C428;
            v93[4] = v95;
            v94 = v63;
            v64 = v7;
            v65 = v93;
            _nw_http_request_access_method(v64, v65);

            if (!inbound_message)
            {
              goto LABEL_76;
            }

            goto LABEL_75;
          }
        }

        else
        {
          v62 = nw_http_transaction_metadata_get_inbound_message(a2);
          v8 = 0;
          if (!v62)
          {
            v63 = 0;
            inbound_message = 0;
            goto LABEL_85;
          }

          inbound_message = v62;
        }

        v7 = nw_http_metadata_copy_request(inbound_message);
        if (v8)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(a2);
      v39 = *(a1 + 32);
      if (v39)
      {
        if ((*(v39 + 190) & 0x10) != 0)
        {
          return;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v12 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v40 = *(a1 + 32);
        v41 = (v40 + 191);
        v42 = "";
        v43 = v40 == 0;
        if (!v40)
        {
          v41 = "";
        }

        v46 = v40 + 176;
        v44 = *(v40 + 176);
        v45 = *(v46 + 4);
        if (!v43)
        {
          v42 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v41;
        v108 = 2080;
        v109 = v42;
        v110 = 1024;
        v111 = v45;
        v112 = 1024;
        LODWORD(v113[0]) = v44;
        WORD2(v113[0]) = 2048;
        *(v113 + 6) = inbound_body_size;
        v20 = "%{public}s %{public}s%s<i%u:s%d> finished receiving {body_bytes=%llu}";
        goto LABEL_45;
      }

      v66 = *(a1 + 40);
      if (v66 && (*(v66 + 379) & 1) != 0)
      {
        return;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v67 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v68 = *(a1 + 40);
      v69 = (v68 + 380);
      v70 = "";
      v71 = v68 == 0;
      v72 = *(v68 + 360);
      v105 = "nw_http2_stream_connect_block_invoke";
      if (v71)
      {
        v69 = "";
      }

      v106 = 2082;
      *buf = 136447234;
      if (!v71)
      {
        v70 = " ";
      }

      v107 = v69;
      v108 = 2080;
      v109 = v70;
      v110 = 1024;
      v111 = v72;
      v112 = 2048;
      v113[0] = inbound_body_size;
      v73 = "%{public}s %{public}s%s<i%u> finished receiving {body_bytes=%llu}";
      goto LABEL_107;
    }

    outbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
    v22 = nw_http_metadata_copy_request(outbound_message);
    v23 = nw_http_metadata_copy_response(outbound_message);
    if (v22)
    {
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 0x40000000;
      v100[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_40;
      v100[3] = &__block_descriptor_tmp_41_88122;
      v101 = *(a1 + 32);
      v24 = v22;
      v25 = v100;
      _nw_http_request_access_method(v24, v25);
    }

    if (v23)
    {
      v26 = v23;
      v27 = _nw_http_response_get_status_code(v26);

      v28 = *(a1 + 32);
      if (v28)
      {
        if ((*(v28 + 190) & 0x10) != 0)
        {
          goto LABEL_61;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v29 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          goto LABEL_61;
        }

        v30 = *(a1 + 32);
        v31 = (v30 + 191);
        v32 = "";
        v33 = v30 == 0;
        if (!v30)
        {
          v31 = "";
        }

        v36 = v30 + 176;
        v34 = *(v30 + 176);
        v35 = *(v36 + 4);
        if (!v33)
        {
          v32 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v31;
        v108 = 2080;
        v109 = v32;
        v110 = 1024;
        v111 = v35;
        v112 = 1024;
        LODWORD(v113[0]) = v34;
        WORD2(v113[0]) = 1024;
        *(v113 + 6) = v27;
        v37 = "%{public}s %{public}s%s<i%u:s%d> receiving response header {status=%hu}";
        goto LABEL_59;
      }

      v80 = *(a1 + 40);
      if (v80 && (*(v80 + 379) & 1) != 0)
      {
        goto LABEL_61;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v81 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v82 = *(a1 + 40);
      v83 = "";
      v84 = v82 == 0;
      v85 = *(v82 + 360);
      v86 = (v82 + 380);
      v105 = "nw_http2_stream_connect_block_invoke";
      v106 = 2082;
      if (v84)
      {
        v86 = "";
      }

      *buf = 136447234;
      if (!v84)
      {
        v83 = " ";
      }

      v107 = v86;
      v108 = 2080;
      v109 = v83;
      v110 = 1024;
      v111 = v85;
      v112 = 1024;
      LODWORD(v113[0]) = v27;
      v37 = "%{public}s %{public}s%s<i%u> receiving response header {status=%hu}";
      goto LABEL_128;
    }
  }

LABEL_62:
  if (v22)
  {
    os_release(v22);
  }

  if (outbound_message)
  {
    v61 = outbound_message;
LABEL_82:
    os_release(v61);
  }
}

uint64_t nw_protocol_http_retry_create::$_5::__invoke(nw_protocol_http_retry_create::$_5 *this, nw_protocol *a2, nw_protocol *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = *(this + 5);
    if (v3)
    {
      *(v3 + 572) |= 4u;
      return 1;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_retry", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_retry";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_retry, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_retry, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "operator()";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null http_retry, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "operator()";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "operator()";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v18 = "operator()";
    v9 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void nw_protocol_http2_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_http2_disconnect";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v17, &type, &v45))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v48 = "nw_protocol_http2_disconnect";
      v20 = "%{public}s called with null protocol";
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v26 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v48 = "nw_protocol_http2_disconnect";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_88:
        if (!v17)
        {
          return;
        }

        goto LABEL_89;
      }

      if (!v26)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v48 = "nw_protocol_http2_disconnect";
      v20 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v48 = "nw_protocol_http2_disconnect";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_87;
  }

  handle = a1->handle;
  if (!handle)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_http2_disconnect";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v17, &type, &v45))
    {
      goto LABEL_88;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v48 = "nw_protocol_http2_disconnect";
        v20 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_87;
      }

      v27 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v28 = os_log_type_enabled(v18, type);
      if (!v27)
      {
        if (!v28)
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v48 = "nw_protocol_http2_disconnect";
        v20 = "%{public}s called with null http2, no backtrace";
        goto LABEL_87;
      }

      if (v28)
      {
        *buf = 136446466;
        v48 = "nw_protocol_http2_disconnect";
        v49 = 2082;
        v50 = v27;
        v29 = "%{public}s called with null http2, dumping backtrace:%{public}s";
LABEL_53:
        _os_log_impl(&dword_181A37000, v18, v19, v29, buf, 0x16u);
      }

LABEL_54:
      free(v27);
      if (!v17)
      {
        return;
      }

LABEL_89:
      v43 = v17;
LABEL_90:
      free(v43);
      return;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_88;
    }

    *buf = 136446210;
    v48 = "nw_protocol_http2_disconnect";
    v20 = "%{public}s called with null http2";
LABEL_87:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_88;
  }

  if (!a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_http2_disconnect";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v17, &type, &v45))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v48 = "nw_protocol_http2_disconnect";
      v20 = "%{public}s called with null other_protocol";
      goto LABEL_87;
    }

    if (v45 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v48 = "nw_protocol_http2_disconnect";
      v20 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_87;
    }

    v27 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v30 = os_log_type_enabled(v18, type);
    if (!v27)
    {
      if (!v30)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v48 = "nw_protocol_http2_disconnect";
      v20 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_87;
    }

    if (v30)
    {
      *buf = 136446466;
      v48 = "nw_protocol_http2_disconnect";
      v49 = 2082;
      v50 = v27;
      v29 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v23 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v24 = handle[90];
      *buf = 136446978;
      v48 = "nw_protocol_http2_disconnect";
      v49 = 2082;
      v50 = (handle + 95);
      v51 = 2080;
      v52 = " ";
      v53 = 1024;
      v54 = v24;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  output_handler_context = a2->output_handler_context;
  if (!output_handler_context)
  {
    if (*(handle + 379))
    {
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = handle[90];
    *buf = 136446978;
    v48 = "nw_protocol_http2_disconnect";
    v49 = 2082;
    v50 = (handle + 95);
    v51 = 2080;
    v52 = " ";
    v53 = 1024;
    v54 = v10;
    v11 = "%{public}s %{public}s%s<i%u> attempting to disconnect on protocol that doesn't have entry in table, ignoring";
    v12 = v9;
    v13 = 38;
LABEL_22:
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    return;
  }

  v5 = output_handler_context[4];
  if (!v5)
  {
    if (*(handle + 379))
    {
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v14 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = handle[90];
    *buf = 136447490;
    v48 = "nw_protocol_http2_disconnect";
    v49 = 2082;
    v50 = (handle + 95);
    v51 = 2080;
    v52 = " ";
    v53 = 1024;
    v54 = v15;
    v55 = 2048;
    v56 = a2;
    v57 = 2048;
    v58 = output_handler_context;
    v11 = "%{public}s %{public}s%s<i%u> protocol (%p) node (%p) has no stream pointer as extra";
    v12 = v14;
    v13 = 58;
    goto LABEL_22;
  }

  nw_http2_stream_close(handle, output_handler_context[4]);
  v6 = *(v5 + 188);
  if ((v6 & 0x40) != 0)
  {
    return;
  }

  *(v5 + 188) = v6 | 0x40;
  callbacks = a2->callbacks;
  if (callbacks)
  {
    disconnected = callbacks->disconnected;
    if (disconnected)
    {
      disconnected(a2, handle);
      return;
    }
  }

  v31 = __nwlog_obj();
  identifier = a2->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v48 = "nw_protocol_http2_disconnect";
  v49 = 2082;
  v50 = identifier;
  v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (!__nwlog_fault(v33, &type, &v45))
  {
    goto LABEL_96;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v34 = __nwlog_obj();
    v35 = type;
    if (!os_log_type_enabled(v34, type))
    {
      goto LABEL_96;
    }

    v36 = a2->identifier;
    if (!v36)
    {
      v36 = "invalid";
    }

    *buf = 136446466;
    v48 = "nw_protocol_http2_disconnect";
    v49 = 2082;
    v50 = v36;
    v37 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_95:
    _os_log_impl(&dword_181A37000, v34, v35, v37, buf, 0x16u);
    goto LABEL_96;
  }

  if (v45 != 1)
  {
    v34 = __nwlog_obj();
    v35 = type;
    v41 = os_log_type_enabled(v34, type);
    v42 = "invalid";
    if (!v41)
    {
      goto LABEL_96;
    }

    if (a2->identifier)
    {
      v42 = a2->identifier;
    }

    *buf = 136446466;
    v48 = "nw_protocol_http2_disconnect";
    v49 = 2082;
    v50 = v42;
    v37 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
    goto LABEL_95;
  }

  v38 = __nw_create_backtrace_string();
  v34 = __nwlog_obj();
  v35 = type;
  v39 = os_log_type_enabled(v34, type);
  if (!v38)
  {
    v44 = "invalid";
    if (!v39)
    {
      goto LABEL_96;
    }

    if (a2->identifier)
    {
      v44 = a2->identifier;
    }

    *buf = 136446466;
    v48 = "nw_protocol_http2_disconnect";
    v49 = 2082;
    v50 = v44;
    v37 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
    goto LABEL_95;
  }

  if (v39)
  {
    v40 = "invalid";
    if (a2->identifier)
    {
      v40 = a2->identifier;
    }

    *buf = 136446722;
    v48 = "nw_protocol_http2_disconnect";
    v49 = 2082;
    v50 = v40;
    v51 = 2082;
    v52 = v38;
    _os_log_impl(&dword_181A37000, v34, v35, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v38);
LABEL_96:
  if (v33)
  {
    v43 = v33;
    goto LABEL_90;
  }
}

void nw_http2_drain_output_frames(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 379) & 1) != 0)
  {
    goto LABEL_5;
  }

  if (gLogDatapath == 1)
  {
    v8 = a1;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    v10 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    a1 = v8;
    if (v10)
    {
      v11 = " ";
      v12 = *(v8 + 360);
      v27 = "nw_http2_drain_output_frames";
      v28 = 2082;
      v13 = (v8 + 380);
      *buf = 136446978;
      if (!v8)
      {
        v13 = "";
      }

      v29 = v13;
      if (!v8)
      {
        v11 = "";
      }

      v30 = 2080;
      v31 = v11;
      v32 = 1024;
      v33 = v12;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      a1 = v8;
      goto LABEL_5;
    }
  }

  if (a1)
  {
LABEL_5:
    v1 = (a1 + 377);
    if ((*(a1 + 377) & 0x400) != 0)
    {
      if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
      {
        v20 = a1;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(v20 + 360);
          *buf = 136446978;
          v27 = "nw_http2_drain_output_frames";
          v28 = 2082;
          v29 = (v20 + 380);
          v30 = 2080;
          v31 = " ";
          v32 = 1024;
          v33 = v22;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> already draining output frames, skipping", buf, 0x26u);
        }
      }
    }

    else
    {
      *v1 = *(a1 + 377) | 0x400;
      if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
      {
        v16 = a1;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v17 = gconnectionLogObj;
        v18 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
        a1 = v16;
        if (v18)
        {
          v19 = *(v16 + 360);
          *buf = 136446978;
          v27 = "nw_http2_drain_output_frames";
          v28 = 2082;
          v29 = (v16 + 380);
          v30 = 2080;
          v31 = " ";
          v32 = 1024;
          v33 = v19;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> draining output frames", buf, 0x26u);
          a1 = v16;
        }
      }

      v2 = *(a1 + 152);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = ___ZL28nw_http2_drain_output_framesP17nw_protocol_http2_block_invoke;
      v23[3] = &__block_descriptor_tmp_29_87137;
      v23[4] = a1;
      nw_hash_table_apply(v2, v23);
      *v1 &= ~0x400u;
    }

    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_http2_drain_output_frames";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null http2", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v4, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v27 = "nw_http2_drain_output_frames";
      v7 = "%{public}s called with null http2";
      goto LABEL_41;
    }

    if (v24 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v27 = "nw_http2_drain_output_frames";
      v7 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v15 = os_log_type_enabled(v5, type);
    if (backtrace_string)
    {
      if (v15)
      {
        *buf = 136446466;
        v27 = "nw_http2_drain_output_frames";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_42;
    }

    if (v15)
    {
      *buf = 136446210;
      v27 = "nw_http2_drain_output_frames";
      v7 = "%{public}s called with null http2, no backtrace";
LABEL_41:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_42:
  if (v4)
  {
    free(v4);
  }
}

void nw_http2_stream_close(uint64_t a1, uint64_t a2)
{
  v114 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v78 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v80 = *(a2 + 176);
        v79 = *(a2 + 180);
        *buf = 136447234;
        v103 = "nw_http2_stream_close";
        v104 = 2082;
        v105 = (a2 + 191);
        v106 = 2080;
        v107 = " ";
        v108 = 1024;
        *v109 = v79;
        *&v109[4] = 1024;
        *&v109[6] = v80;
        _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called", buf, 0x2Cu);
      }
    }
  }

  else
  {
    if (a1 && (*(a1 + 379) & 1) != 0)
    {
      goto LABEL_127;
    }

    if (gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v68 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v69 = (a1 + 380);
        v70 = *(a1 + 360);
        *buf = 136446978;
        v103 = "nw_http2_stream_close";
        v104 = 2082;
        if (!a1)
        {
          v69 = "";
        }

        v105 = v69;
        if (a1)
        {
          v71 = " ";
        }

        else
        {
          v71 = "";
        }

        v106 = 2080;
        v107 = v71;
        v108 = 1024;
        *v109 = v70;
        _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        goto LABEL_127;
      }
    }
  }

  if (!a1)
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_http2_stream_close";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v73, &type, &v100))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v103 = "nw_http2_stream_close";
      v76 = "%{public}s called with null http2";
      goto LABEL_176;
    }

    if (v100 != 1)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v103 = "nw_http2_stream_close";
      v76 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_176;
    }

    backtrace_string = __nw_create_backtrace_string();
    v74 = __nwlog_obj();
    v75 = type;
    v82 = os_log_type_enabled(v74, type);
    if (!backtrace_string)
    {
      if (!v82)
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v103 = "nw_http2_stream_close";
      v76 = "%{public}s called with null http2, no backtrace";
      goto LABEL_176;
    }

    if (v82)
    {
      *buf = 136446466;
      v103 = "nw_http2_stream_close";
      v104 = 2082;
      v105 = backtrace_string;
      _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_177;
  }

  if (!a2)
  {
LABEL_127:
    v72 = __nwlog_obj();
    *buf = 136446210;
    v103 = "nw_http2_stream_close";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v73, &type, &v100))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v103 = "nw_http2_stream_close";
      v76 = "%{public}s called with null stream";
      goto LABEL_176;
    }

    if (v100 != 1)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v103 = "nw_http2_stream_close";
      v76 = "%{public}s called with null stream, backtrace limit exceeded";
      goto LABEL_176;
    }

    v83 = __nw_create_backtrace_string();
    v74 = __nwlog_obj();
    v75 = type;
    v84 = os_log_type_enabled(v74, type);
    if (v83)
    {
      if (v84)
      {
        *buf = 136446466;
        v103 = "nw_http2_stream_close";
        v104 = 2082;
        v105 = v83;
        _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v83);
      if (!v73)
      {
        return;
      }

LABEL_178:
      free(v73);
      return;
    }

    if (v84)
    {
      *buf = 136446210;
      v103 = "nw_http2_stream_close";
      v76 = "%{public}s called with null stream, no backtrace";
LABEL_176:
      _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
    }

LABEL_177:
    if (!v73)
    {
      return;
    }

    goto LABEL_178;
  }

  v4 = (a2 + 176);
  v5 = *(a2 + 188);
  if (*(a2 + 176) != -1)
  {
    if ((v5 & 1) == 0)
    {
      if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v6 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(a2 + 176);
          v7 = *(a2 + 180);
          *buf = 136447234;
          v103 = "nw_http2_stream_close";
          v104 = 2082;
          v105 = (a2 + 191);
          v106 = 2080;
          v107 = " ";
          v108 = 1024;
          *v109 = v7;
          *&v109[4] = 1024;
          *&v109[6] = v8;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> not sending RST_STREAM, since we are already closed from nghttp2's perspective", buf, 0x2Cu);
        }
      }

LABEL_36:
      if ((*(a2 + 188) & 0x400) == 0)
      {
        v24 = *(a2 + 32);
        if (v24)
        {
          v25 = mach_continuous_approximate_time();
          v26 = v25 <= 1 ? 1 : v25;
          v27 = nw_delta_nanos(v24, v26);
          if (v27 > 1000000000 * networkd_settings_get_int64_with_default(nw_setting_proxy_setup_threshold_seconds, 5))
          {
            v28 = (*(a1 + 364))++ + 1;
            if ((v28 & 0x10000) != 0)
            {
              if (gLogDatapath == 1)
              {
                v98 = __nwlog_obj();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                {
                  v99 = *(a1 + 364);
                  *buf = 136446978;
                  v103 = "nw_http2_stream_close";
                  v104 = 2082;
                  v105 = "http2->stream_stall_count";
                  v106 = 2048;
                  v107 = 1;
                  v108 = 2048;
                  *v109 = v99;
                  _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                }
              }

              *(a1 + 364) = -1;
            }

            if ((*(a2 + 190) & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v29 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
              {
                v31 = *(a2 + 176);
                v30 = *(a2 + 180);
                v32 = *(a1 + 364);
                *buf = 136447490;
                v103 = "nw_http2_stream_close";
                v104 = 2082;
                v105 = (a2 + 191);
                v106 = 2080;
                v107 = " ";
                v108 = 1024;
                *v109 = v30;
                *&v109[4] = 1024;
                *&v109[6] = v31;
                v110 = 1024;
                v111 = v32;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%d> stream setup stalls incremented to %u", buf, 0x32u);
              }
            }
          }
        }
      }

      if (*(a2 + 176) != -1)
      {
        if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v85 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v87 = *(a2 + 176);
            v86 = *(a2 + 180);
            *buf = 136447746;
            v103 = "nw_http2_remove_from_id_table";
            v104 = 2082;
            v105 = (a2 + 191);
            v106 = 2080;
            v107 = " ";
            v108 = 1024;
            *v109 = v86;
            *&v109[4] = 1024;
            *&v109[6] = v87;
            v110 = 1024;
            v111 = v87;
            v112 = 2048;
            v113 = a2;
            _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called for stream %d (%p)", buf, 0x3Cu);
          }
        }

        v33 = *(a1 + 160);
        if (v33)
        {
          node = nw_hash_table_get_node(v33, a2 + 176, 4);
          if (node)
          {
            if (nw_hash_table_remove_node(*(a1 + 160), node))
            {
              if ((*(a2 + 190) & 0x10) != 0 || gLogDatapath != 1)
              {
                goto LABEL_111;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v35 = gconnectionLogObj;
              if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_111;
              }

              v37 = *(a2 + 176);
              v36 = *(a2 + 180);
              *buf = 136447490;
              v103 = "nw_http2_remove_from_id_table";
              v104 = 2082;
              v105 = (a2 + 191);
              v106 = 2080;
              v107 = " ";
              v108 = 1024;
              *v109 = v36;
              *&v109[4] = 1024;
              *&v109[6] = v37;
              v110 = 1024;
              v111 = v37;
              v38 = "%{public}s %{public}s%s<i%u:s%d> removed stream %d from id based table";
LABEL_110:
              _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, v38, buf, 0x32u);
LABEL_111:
              if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v88 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v90 = *(a2 + 176);
                  v89 = *(a2 + 180);
                  *buf = 136447490;
                  v103 = "nw_http2_stream_close";
                  v104 = 2082;
                  v105 = (a2 + 191);
                  v106 = 2080;
                  v107 = " ";
                  v108 = 1024;
                  *v109 = v89;
                  *&v109[4] = 1024;
                  *&v109[6] = v90;
                  v110 = 1024;
                  v111 = v90;
                  _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> removed stream %d from id based table", buf, 0x32u);
                }
              }

              *v4 = -1;
              return;
            }

            if ((*(a2 + 190) & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v51 = *(a2 + 176);
              v50 = *(a2 + 180);
              *buf = 136447490;
              v103 = "nw_http2_remove_from_id_table";
              v104 = 2082;
              v105 = (a2 + 191);
              v106 = 2080;
              v107 = " ";
              v108 = 1024;
              *v109 = v50;
              *&v109[4] = 1024;
              *&v109[6] = v51;
              v110 = 1024;
              v111 = v51;
              v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table", buf, 50);
              type = OS_LOG_TYPE_ERROR;
              v100 = 0;
              if (!__nwlog_fault(v52, &type, &v100))
              {
                goto LABEL_103;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v53 = gconnectionLogObj;
                v54 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_103;
                }

                v56 = *(a2 + 176);
                v55 = *(a2 + 180);
                *buf = 136447490;
                v103 = "nw_http2_remove_from_id_table";
                v104 = 2082;
                v105 = (a2 + 191);
                v106 = 2080;
                v107 = " ";
                v108 = 1024;
                *v109 = v55;
                *&v109[4] = 1024;
                *&v109[6] = v56;
                v110 = 1024;
                v111 = v56;
                v57 = "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table";
              }

              else if (v100 == 1)
              {
                v58 = __nw_create_backtrace_string();
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v53 = gconnectionLogObj;
                v54 = type;
                v59 = os_log_type_enabled(gconnectionLogObj, type);
                if (v58)
                {
                  if (v59)
                  {
                    v61 = *(a2 + 176);
                    v60 = *(a2 + 180);
                    *buf = 136447746;
                    v103 = "nw_http2_remove_from_id_table";
                    v104 = 2082;
                    v105 = (a2 + 191);
                    v106 = 2080;
                    v107 = " ";
                    v108 = 1024;
                    *v109 = v60;
                    *&v109[4] = 1024;
                    *&v109[6] = v61;
                    v110 = 1024;
                    v111 = v61;
                    v112 = 2082;
                    v113 = v58;
                    _os_log_impl(&dword_181A37000, v53, v54, "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table, dumping backtrace:%{public}s", buf, 0x3Cu);
                  }

                  free(v58);
                  goto LABEL_103;
                }

                if (!v59)
                {
LABEL_103:
                  if (v52)
                  {
                    free(v52);
                  }

                  goto LABEL_105;
                }

                v65 = *(a2 + 176);
                v64 = *(a2 + 180);
                *buf = 136447490;
                v103 = "nw_http2_remove_from_id_table";
                v104 = 2082;
                v105 = (a2 + 191);
                v106 = 2080;
                v107 = " ";
                v108 = 1024;
                *v109 = v64;
                *&v109[4] = 1024;
                *&v109[6] = v65;
                v110 = 1024;
                v111 = v65;
                v57 = "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table, no backtrace";
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v53 = gconnectionLogObj;
                v54 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_103;
                }

                v63 = *(a2 + 176);
                v62 = *(a2 + 180);
                *buf = 136447490;
                v103 = "nw_http2_remove_from_id_table";
                v104 = 2082;
                v105 = (a2 + 191);
                v106 = 2080;
                v107 = " ";
                v108 = 1024;
                *v109 = v62;
                *&v109[4] = 1024;
                *&v109[6] = v63;
                v110 = 1024;
                v111 = v63;
                v57 = "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table, backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v53, v54, v57, buf, 0x32u);
              goto LABEL_103;
            }

LABEL_105:
            if ((*(a2 + 190) & 0x10) != 0)
            {
              goto LABEL_111;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v35 = gconnectionLogObj;
            if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_111;
            }

            v67 = *(a2 + 176);
            v66 = *(a2 + 180);
            *buf = 136447490;
            v103 = "nw_http2_stream_close";
            v104 = 2082;
            v105 = (a2 + 191);
            v106 = 2080;
            v107 = " ";
            v108 = 1024;
            *v109 = v66;
            *&v109[4] = 1024;
            *&v109[6] = v67;
            v110 = 1024;
            v111 = v67;
            v38 = "%{public}s %{public}s%s<i%u:s%d> did not remove stream %d from id table";
            goto LABEL_110;
          }

          if ((*(a2 + 190) & 0x10) != 0)
          {
            goto LABEL_105;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v47 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
          {
            goto LABEL_105;
          }

          v49 = *(a2 + 176);
          v48 = *(a2 + 180);
          *buf = 136447490;
          v103 = "nw_http2_remove_from_id_table";
          v104 = 2082;
          v105 = (a2 + 191);
          v106 = 2080;
          v107 = " ";
          v108 = 1024;
          *v109 = v48;
          *&v109[4] = 1024;
          *&v109[6] = v49;
          v110 = 1024;
          v111 = v49;
          v44 = "%{public}s %{public}s%s<i%u:s%d> stream %d is not present in id based table, will not remove";
          v45 = v47;
          v46 = OS_LOG_TYPE_INFO;
        }

        else
        {
          if ((*(a2 + 190) & 0x10) != 0)
          {
            goto LABEL_105;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v41 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_105;
          }

          v43 = *(a2 + 176);
          v42 = *(a2 + 180);
          *buf = 136447490;
          v103 = "nw_http2_remove_from_id_table";
          v104 = 2082;
          v105 = (a2 + 191);
          v106 = 2080;
          v107 = " ";
          v108 = 1024;
          *v109 = v42;
          *&v109[4] = 1024;
          *&v109[6] = v43;
          v110 = 1024;
          v111 = v43;
          v44 = "%{public}s %{public}s%s<i%u:s%d> id based table is NULL, cannot remove stream %d";
          v45 = v41;
          v46 = OS_LOG_TYPE_ERROR;
        }

        _os_log_impl(&dword_181A37000, v45, v46, v44, buf, 0x32u);
        goto LABEL_105;
      }

      if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v9 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v40 = *(a2 + 176);
          v39 = *(a2 + 180);
          *buf = 136447234;
          v103 = "nw_http2_stream_close";
          v104 = 2082;
          v105 = (a2 + 191);
          v106 = 2080;
          v107 = " ";
          v108 = 1024;
          *v109 = v39;
          *&v109[4] = 1024;
          *&v109[6] = v40;
          v12 = "%{public}s %{public}s%s<i%u:s%d> stream id is -1, skipping removal from id based table";
          goto LABEL_68;
        }
      }

      return;
    }

    *(a2 + 188) = v5 & 0xFFDE;
    if ((*(a2 + 190) & 0x10) != 0 || gLogDatapath != 1)
    {
      goto LABEL_22;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v91 = gconnectionLogObj;
    v92 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    v93 = *v4;
    if (v92)
    {
      v94 = *(a2 + 180);
      *buf = 136447234;
      v103 = "nw_http2_stream_send_rst_stream";
      v104 = 2082;
      v105 = (a2 + 191);
      v106 = 2080;
      v107 = " ";
      v108 = 1024;
      *v109 = v94;
      *&v109[4] = 1024;
      *&v109[6] = v93;
      _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called", buf, 0x2Cu);
      v93 = *(a2 + 176);
    }

    if (v93 == -1)
    {
      if ((*(a2 + 190) & 0x10) != 0)
      {
        goto LABEL_35;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v95 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v97 = *(a2 + 176);
      v96 = *(a2 + 180);
      *buf = 136447490;
      v103 = "nw_http2_stream_send_rst_stream";
      v104 = 2082;
      v105 = (a2 + 191);
      v106 = 2080;
      v107 = " ";
      v108 = 1024;
      *v109 = v96;
      *&v109[4] = 1024;
      *&v109[6] = v97;
      v110 = 1024;
      v111 = v97;
      v17 = "%{public}s %{public}s%s<i%u:s%d> cannot send RST_STREAM for stream with invalid stream id %d";
      v18 = v95;
      v19 = OS_LOG_TYPE_ERROR;
    }

    else
    {
LABEL_22:
      nw_http_transaction_metadata_get_error_code(*(a2 + 96));
      if (nghttp2_submit_rst_stream())
      {
        if ((*(a2 + 190) & 0x10) != 0)
        {
          goto LABEL_35;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        v15 = *(a2 + 176);
        v14 = *(a2 + 180);
        v16 = nghttp2_strerror();
        *buf = 136447746;
        v103 = "nw_http2_stream_send_rst_stream";
        v104 = 2082;
        v105 = (a2 + 191);
        v106 = 2080;
        v107 = " ";
        v108 = 1024;
        *v109 = v14;
        *&v109[4] = 1024;
        *&v109[6] = v15;
        v110 = 1024;
        v111 = v15;
        v112 = 2082;
        v113 = v16;
        v17 = "%{public}s %{public}s%s<i%u:s%d> Failed to submit RST_STREAM on stream %d: %{public}s";
        v18 = v13;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 60;
LABEL_34:
        _os_log_impl(&dword_181A37000, v18, v19, v17, buf, v20);
LABEL_35:
        nw_http2_session_send(a1);
        goto LABEL_36;
      }

      if ((*(a2 + 190) & 0x10) != 0)
      {
        goto LABEL_35;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v21 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v23 = *(a2 + 176);
      v22 = *(a2 + 180);
      *buf = 136447490;
      v103 = "nw_http2_stream_send_rst_stream";
      v104 = 2082;
      v105 = (a2 + 191);
      v106 = 2080;
      v107 = " ";
      v108 = 1024;
      *v109 = v22;
      *&v109[4] = 1024;
      *&v109[6] = v23;
      v110 = 1024;
      v111 = v23;
      v17 = "%{public}s %{public}s%s<i%u:s%d> Submitted RST_STREAM on stream %d";
      v18 = v21;
      v19 = OS_LOG_TYPE_INFO;
    }

    v20 = 50;
    goto LABEL_34;
  }

  *(a2 + 188) = v5 & 0xFFFE;
  if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 176);
      v10 = *(a2 + 180);
      *buf = 136447234;
      v103 = "nw_http2_stream_close";
      v104 = 2082;
      v105 = (a2 + 191);
      v106 = 2080;
      v107 = " ";
      v108 = 1024;
      *v109 = v10;
      *&v109[4] = 1024;
      *&v109[6] = v11;
      v12 = "%{public}s %{public}s%s<i%u:s%d> stream id is -1, skipping rst_stream and removal from id based table";
LABEL_68:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, v12, buf, 0x2Cu);
    }
  }
}

void nw_protocol_plugins_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v45) = 0;
    if (!__nwlog_fault(v21, type, &v45))
    {
      goto LABEL_92;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugins_disconnected";
      v24 = "%{public}s called with null protocol";
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type[0];
      v34 = os_log_type_enabled(v22, type[0]);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugins_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_92:
        if (!v21)
        {
          return;
        }

LABEL_93:
        free(v21);
        return;
      }

      if (!v34)
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugins_disconnected";
      v24 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type[0];
      if (!os_log_type_enabled(v22, type[0]))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugins_disconnected";
      v24 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_91:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_92;
  }

  handle = a1->handle;
  if (handle)
  {
    if (a2)
    {
      if (gLogDatapath == 1)
      {
        v31 = __nwlog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          identifier = a1->identifier;
          if (!identifier)
          {
            identifier = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_plugins_handle_disconnected";
          *&buf[12] = 2080;
          *&buf[14] = identifier;
          *&buf[22] = 2048;
          v50 = a1;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
        }
      }

      v5 = *(handle + 11);
      if (v5 && (*(v5 + 108) & 0x20) != 0)
      {
        goto LABEL_22;
      }

      v6 = *(handle + 9);
      if (v6)
      {
        v7 = *(v6 + 142);
        if ((v7 & 2) == 0)
        {
          if (nw_protocol_plugin_metadata_handle_eof(*(handle + 9), a1))
          {
            v5 = *(handle + 11);
            goto LABEL_11;
          }

          v7 = *(v6 + 142);
        }

        v10 = 0;
        *(v6 + 142) = v7 | 8;
        goto LABEL_23;
      }

LABEL_11:
      if (v5)
      {
        v8 = *(v5 + 108);
        if ((v8 & 0x80) == 0)
        {
          if ((v8 & 0x10) == 0)
          {
            if ((v8 & 1) == 0)
            {
              v9 = *(v5 + 48);
              if (v9)
              {
                v10 = v9(a1, a2, *(v5 + 104) != 0) ^ 1;
                goto LABEL_23;
              }

              goto LABEL_18;
            }

            if (gLogDatapath == 1)
            {
              v42 = v5;
              v43 = __nwlog_obj();
              v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
              v5 = v42;
              if (v44)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_plugin_retry_disconnected";
                _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s holding onto disconnected because getting input frames", buf, 0xCu);
                v5 = v42;
              }
            }

            v10 = 0;
            *(v5 + 108) |= 2u;
LABEL_23:
            v11 = *(handle + 9);
            if (v11)
            {
              if (BYTE6(v11[8].tqh_last))
              {
                nw_protocol_plugin_metadata_deep_copy_input_frame_array(*(handle + 9));
                nw_protocol_plugin_metadata_deep_copy_input_frame_array(v11 + 1);
                if ((v10 & 1) == 0)
                {
                  return;
                }
              }

              else
              {
                tqh_last = &v45;
                v45 = 0;
                v46 = &v45;
                tqh_first = v11->tqh_first;
                if (v11->tqh_first)
                {
                  *(tqh_first + 5) = &v45;
                  tqh_last = v11->tqh_last;
                  v45 = tqh_first;
                  v46 = tqh_last;
                  v11->tqh_first = 0;
                  v11->tqh_last = &v11->tqh_first;
                }

                v14 = v11[1].tqh_first;
                if (v14)
                {
                  *tqh_last = v14;
                  *(v11[1].tqh_first + 5) = tqh_last;
                  v46 = v11[1].tqh_last;
                  v11[1].tqh_first = 0;
                  v11[1].tqh_last = &v11[1].tqh_first;
                }

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

                v15 = v45;
                if (v45)
                {
                  *(v45 + 5) = type;
                  *type = v15;
                  v48 = v46;
                  v45 = 0;
                  v46 = &v45;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                  v50 = &__block_descriptor_tmp_21_49595;
                  v51 = 0;
                  do
                  {
                    v16 = *type;
                    if (!*type)
                    {
                      break;
                    }

                    v17 = *(*type + 32);
                    v18 = *(*type + 40);
                    v19 = (v17 + 40);
                    if (!v17)
                    {
                      v19 = &v48;
                    }

                    *v19 = v18;
                    *v18 = v17;
                    *(v16 + 32) = 0;
                    *(v16 + 40) = 0;
                  }

                  while (((*&buf[16])(buf) & 1) != 0);
                }

                if ((v10 & 1) == 0)
                {
                  return;
                }
              }
            }

            else if (!v10)
            {
              return;
            }

LABEL_41:
            nw_protocol_common_disconnected(a1, a2);
            return;
          }

          if (gLogDatapath == 1)
          {
            v41 = __nwlog_obj();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_plugin_retry_disconnected";
              _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s holding onto disconnected because reissuing", buf, 0xCu);
              v10 = 0;
              goto LABEL_23;
            }
          }

LABEL_22:
          v10 = 0;
          goto LABEL_23;
        }

        if (gLogDatapath == 1)
        {
          v40 = __nwlog_obj();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_plugin_retry_disconnected";
            _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s sending disconnected because disconnect was received", buf, 0xCu);
            v10 = 1;
            goto LABEL_23;
          }
        }
      }

LABEL_18:
      v10 = 1;
      goto LABEL_23;
    }

    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_handle_disconnected";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null other_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v45) = 0;
    if (__nwlog_fault(v27, type, &v45))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type[0];
        if (!os_log_type_enabled(v28, type[0]))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugins_handle_disconnected";
        v30 = "%{public}s called with null other_protocol";
        goto LABEL_96;
      }

      if (v45 != 1)
      {
        v28 = __nwlog_obj();
        v29 = type[0];
        if (!os_log_type_enabled(v28, type[0]))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugins_handle_disconnected";
        v30 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_96;
      }

      v37 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type[0];
      v38 = os_log_type_enabled(v28, type[0]);
      if (v37)
      {
        if (v38)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugins_handle_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v37;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_97;
      }

      if (v38)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugins_handle_disconnected";
        v30 = "%{public}s called with null other_protocol, no backtrace";
LABEL_96:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
      }
    }

LABEL_97:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_41;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_plugins_disconnected";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null protocol->handle", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v45) = 0;
  if (!__nwlog_fault(v21, type, &v45))
  {
    goto LABEL_92;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v22 = __nwlog_obj();
    v23 = type[0];
    if (!os_log_type_enabled(v22, type[0]))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v24 = "%{public}s called with null protocol->handle";
    goto LABEL_91;
  }

  if (v45 != 1)
  {
    v22 = __nwlog_obj();
    v23 = type[0];
    if (!os_log_type_enabled(v22, type[0]))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v24 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
    goto LABEL_91;
  }

  v35 = __nw_create_backtrace_string();
  v22 = __nwlog_obj();
  v23 = type[0];
  v36 = os_log_type_enabled(v22, type[0]);
  if (!v35)
  {
    if (!v36)
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v24 = "%{public}s called with null protocol->handle, no backtrace";
    goto LABEL_91;
  }

  if (v36)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    *&buf[12] = 2082;
    *&buf[14] = v35;
    _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v35);
  if (v21)
  {
    goto LABEL_93;
  }
}

BOOL nw_protocol_plugin_metadata_handle_eof(uint64_t *a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 142);
  if (*(a1 + 140) == 3 || (v3 & 0x10) != 0)
  {
    goto LABEL_19;
  }

  v39 = -1;
  v40 = 0;
  v37 = 0;
  v38 = -1;
  v36 = 0;
  v34 = 0;
  v35 = &v34;
  if (*a1)
  {
    if (gLogDatapath == 1)
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_handle_eof";
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s resuming saved input frames", buf, 0xCu);
      }
    }

    v6 = a2[6];
    if (v6)
    {
      v7 = a1[12];
      if (v7)
      {
        *type = 0;
        v42 = type;
        v43 = 0x2000000000;
        v44 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
        v47 = &unk_1E6A2BE58;
        v50 = a1;
        v51 = &v39;
        v59 = 1;
        v52 = a1;
        v53 = &v34;
        v54 = &v40;
        v55 = &v36;
        v48 = type;
        v49 = &v38;
        v56 = a2;
        v57 = v7;
        v58 = v6;
        v8 = *a1;
        do
        {
          if (!v8)
          {
            break;
          }

          v9 = *(v8 + 32);
          v10 = (*&buf[16])(buf);
          v8 = v9;
        }

        while ((v10 & 1) != 0);
        v11 = *(v42 + 6);
        _Block_object_dispose(type, 8);
LABEL_14:
        v37 = v11;
        if (v34)
        {
          v12 = a1[3];
          *v12 = v34;
          v13 = v35;
          *(v34 + 40) = v12;
          a1[3] = v13;
        }

        goto LABEL_16;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null processor", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v45 = 0;
      if (__nwlog_fault(v19, type, &v45))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type[0];
          if (!os_log_type_enabled(v20, type[0]))
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          v22 = "%{public}s called with null processor";
LABEL_51:
          _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
          goto LABEL_52;
        }

        if (v45 != 1)
        {
          v20 = __nwlog_obj();
          v21 = type[0];
          if (!os_log_type_enabled(v20, type[0]))
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          v22 = "%{public}s called with null processor, backtrace limit exceeded";
          goto LABEL_51;
        }

        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type[0];
        v30 = os_log_type_enabled(v20, type[0]);
        if (!backtrace_string)
        {
          if (!v30)
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          v22 = "%{public}s called with null processor, no backtrace";
          goto LABEL_51;
        }

        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null processor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

LABEL_52:
      if (v19)
      {
        v33 = v19;
LABEL_59:
        free(v33);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

    v23 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v45 = 0;
    v25 = v24;
    if (__nwlog_fault(v24, type, &v45))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type[0];
        if (!os_log_type_enabled(v26, type[0]))
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v28 = "%{public}s called with null input_protocol";
LABEL_56:
        _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        goto LABEL_57;
      }

      if (v45 != 1)
      {
        v26 = __nwlog_obj();
        v27 = type[0];
        if (!os_log_type_enabled(v26, type[0]))
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v28 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_56;
      }

      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type[0];
      v32 = os_log_type_enabled(v26, type[0]);
      if (!v31)
      {
        if (!v32)
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v28 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_56;
      }

      if (v32)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        *&buf[12] = 2082;
        *&buf[14] = v31;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v31);
    }

LABEL_57:
    if (v25)
    {
      v33 = v25;
      goto LABEL_59;
    }

LABEL_60:
    v11 = 0;
    goto LABEL_14;
  }

LABEL_16:
  while (1)
  {
    v34 = 0;
    v35 = &v34;
    nw_protocol_plugin_metadata_get_and_process_frames(a1, a2, a2[6], v40, &v40, &v39, &v38, &v37, &v36, a1[12], &v34);
    if (!v34)
    {
      break;
    }

    v14 = a1[3];
    *v14 = v34;
    v15 = v35;
    *(v34 + 40) = v14;
    a1[3] = v15;
    v34 = 0;
    v35 = &v34;
    v36 = 0;
  }

  v3 = *(a1 + 142) | 0x10;
  *(a1 + 142) = v3;
LABEL_19:
  if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if (v3)
  {
    return *(a1 + 140) != 2;
  }

  return 1;
}

void nw_protocol_common_disconnected(void *a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_common_disconnected";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (!__nwlog_fault(v3, &type, &v51))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v54 = "nw_protocol_common_disconnected";
      v9 = "%{public}s called with null protocol";
      goto LABEL_56;
    }

    if (v51 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v46 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v46)
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        v54 = "nw_protocol_common_disconnected";
        v55 = 2082;
        v56 = backtrace_string;
        v47 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_94;
      }

      if (!v46)
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v54 = "nw_protocol_common_disconnected";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v54 = "nw_protocol_common_disconnected";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_56:
    v31 = v7;
    v32 = v8;
LABEL_57:
    _os_log_impl(&dword_181A37000, v31, v32, v9, buf, 0xCu);
    goto LABEL_58;
  }

  if (a2)
  {
    v2 = a1;
    v3 = a1[6];
    if (v3)
    {
      v4 = *(v3 + 40);
      v5 = a1[6];
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v3 + 64)) != 0)
      {
        v14 = *(v5 + 88);
        v6 = 0;
        if (v14)
        {
          *(v5 + 88) = v14 + 1;
        }
      }

      else
      {
        v6 = 1;
      }

      v15 = a1[5];
      v16 = a1;
      if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v16 = a1[8]) != 0)
      {
        v19 = v16[11];
        if (v19)
        {
          v17 = 0;
          v16[11] = v19 + 1;
          v18 = *(v3 + 24);
          if (!v18)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v17 = 0;
          v18 = *(v3 + 24);
          if (!v18)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        v17 = 1;
        v18 = *(v3 + 24);
        if (!v18)
        {
          goto LABEL_63;
        }
      }

      v20 = *(v18 + 48);
      if (v20)
      {
        v20(v3, a1);
        goto LABEL_31;
      }

LABEL_63:
      v33 = __nwlog_obj();
      v34 = *(v3 + 16);
      *buf = 136446722;
      v54 = "__nw_protocol_disconnected";
      if (!v34)
      {
        v34 = "invalid";
      }

      v55 = 2082;
      v56 = v34;
      v57 = 2048;
      v58 = v3;
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, 32);
      type = OS_LOG_TYPE_ERROR;
      v51 = 0;
      if (!__nwlog_fault(v35, &type, &v51))
      {
        goto LABEL_110;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (!os_log_type_enabled(v36, type))
        {
          goto LABEL_110;
        }

        v38 = *(v3 + 16);
        if (!v38)
        {
          v38 = "invalid";
        }

        *buf = 136446722;
        v54 = "__nw_protocol_disconnected";
        v55 = 2082;
        v56 = v38;
        v57 = 2048;
        v58 = v3;
        v39 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
      }

      else if (v51 == 1)
      {
        v42 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type;
        v43 = os_log_type_enabled(v36, type);
        if (v42)
        {
          if (v43)
          {
            v44 = *(v3 + 16);
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446978;
            v54 = "__nw_protocol_disconnected";
            v55 = 2082;
            v56 = v44;
            v57 = 2048;
            v58 = v3;
            v59 = 2082;
            v60 = v42;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v42);
          goto LABEL_110;
        }

        if (!v43)
        {
LABEL_110:
          if (v35)
          {
            free(v35);
          }

LABEL_31:
          if ((v17 & 1) == 0)
          {
            v21 = v2[5];
            if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
            {
              v22 = v2[11];
              if (v22)
              {
                v23 = v22 - 1;
                v2[11] = v23;
                if (!v23)
                {
                  v24 = v2[8];
                  if (v24)
                  {
                    v2[8] = 0;
                    v24[2](v24);
                    _Block_release(v24);
                  }

                  if (v2[9])
                  {
                    v25 = v2[8];
                    if (v25)
                    {
                      _Block_release(v25);
                    }
                  }

                  free(v2);
                }
              }
            }
          }

          if ((v6 & 1) == 0)
          {
            v26 = *(v3 + 40);
            if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v27 = *(v3 + 88);
              if (v27)
              {
                v28 = v27 - 1;
                *(v3 + 88) = v28;
                if (!v28)
                {
                  v29 = *(v3 + 64);
                  if (v29)
                  {
                    *(v3 + 64) = 0;
                    v29[2](v29);
                    _Block_release(v29);
                  }

                  if (*(v3 + 72))
                  {
                    v30 = *(v3 + 64);
                    if (v30)
                    {
                      _Block_release(v30);
                    }
                  }

                  goto LABEL_59;
                }
              }
            }
          }

          return;
        }

        v50 = *(v3 + 16);
        if (!v50)
        {
          v50 = "invalid";
        }

        *buf = 136446722;
        v54 = "__nw_protocol_disconnected";
        v55 = 2082;
        v56 = v50;
        v57 = 2048;
        v58 = v3;
        v39 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (!os_log_type_enabled(v36, type))
        {
          goto LABEL_110;
        }

        v49 = *(v3 + 16);
        if (!v49)
        {
          v49 = "invalid";
        }

        *buf = 136446722;
        v54 = "__nw_protocol_disconnected";
        v55 = 2082;
        v56 = v49;
        v57 = 2048;
        v58 = v3;
        v39 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v36, v37, v39, buf, 0x20u);
      goto LABEL_110;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v54 = "nw_protocol_common_disconnected";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s disconnected requires a default input handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v3, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_58;
        }

        *buf = 136446210;
        v54 = "nw_protocol_common_disconnected";
        v9 = "%{public}s disconnected requires a default input handler";
        goto LABEL_56;
      }

      if (v51 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_58;
        }

        *buf = 136446210;
        v54 = "nw_protocol_common_disconnected";
        v9 = "%{public}s disconnected requires a default input handler, backtrace limit exceeded";
        goto LABEL_56;
      }

      v10 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(gLogObj, type);
      if (v10)
      {
        if (v13)
        {
          *buf = 136446466;
          v54 = "nw_protocol_common_disconnected";
          v55 = 2082;
          v56 = v10;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s disconnected requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v10);
        if (v3)
        {
          goto LABEL_59;
        }

        return;
      }

      if (v13)
      {
        *buf = 136446210;
        v54 = "nw_protocol_common_disconnected";
        v9 = "%{public}s disconnected requires a default input handler, no backtrace";
        v31 = v11;
        v32 = v12;
        goto LABEL_57;
      }
    }

LABEL_58:
    if (!v3)
    {
      return;
    }

    goto LABEL_59;
  }

  v41 = __nwlog_obj();
  *buf = 136446210;
  v54 = "nw_protocol_common_disconnected";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null other_protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (!__nwlog_fault(v3, &type, &v51))
  {
    goto LABEL_58;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v54 = "nw_protocol_common_disconnected";
    v9 = "%{public}s called with null other_protocol";
    goto LABEL_56;
  }

  if (v51 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v54 = "nw_protocol_common_disconnected";
    v9 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    goto LABEL_56;
  }

  backtrace_string = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v48 = os_log_type_enabled(v7, type);
  if (!backtrace_string)
  {
    if (!v48)
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v54 = "nw_protocol_common_disconnected";
    v9 = "%{public}s called with null other_protocol, no backtrace";
    goto LABEL_56;
  }

  if (!v48)
  {
    goto LABEL_95;
  }

  *buf = 136446466;
  v54 = "nw_protocol_common_disconnected";
  v55 = 2082;
  v56 = backtrace_string;
  v47 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_94:
  _os_log_impl(&dword_181A37000, v7, v8, v47, buf, 0x16u);
LABEL_95:
  free(backtrace_string);
  if (v3)
  {
LABEL_59:
    free(v3);
  }
}

BOOL nw_http2_remove_from_protocol_table(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 360);
      *buf = 136447234;
      v29 = "nw_http2_remove_from_protocol_table";
      v30 = 2082;
      v31 = a1 + 380;
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v23;
      v36 = 2048;
      v37 = a2;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for input handler %p", buf, 0x30u);
    }
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    node = nw_hash_table_get_node(v4, a2, 8);
    if (node)
    {
      if (nw_hash_table_remove_node(*(a1 + 152), node))
      {
        *(a2 + 56) = 0;
        if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v25 = *(a1 + 360);
            *buf = 136447234;
            v29 = "nw_http2_remove_from_protocol_table";
            v30 = 2082;
            v31 = a1 + 380;
            v32 = 2080;
            v33 = " ";
            v34 = 1024;
            v35 = v25;
            v36 = 2048;
            v37 = a2;
            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed protocol %p from protocol based table", buf, 0x30u);
          }
        }

        return 1;
      }

      if ((*(a1 + 379) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = *(a1 + 360);
        *buf = 136447234;
        v29 = "nw_http2_remove_from_protocol_table";
        v30 = 2082;
        v31 = a1 + 380;
        v32 = 2080;
        v33 = " ";
        v34 = 1024;
        v35 = v11;
        v36 = 2048;
        v37 = a2;
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table", buf, 48);
        type = OS_LOG_TYPE_ERROR;
        v26 = 0;
        if (!__nwlog_fault(v12, &type, &v26))
        {
          goto LABEL_43;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v13 = gconnectionLogObj;
          v14 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_43;
          }

          v15 = *(a1 + 360);
          *buf = 136447234;
          v29 = "nw_http2_remove_from_protocol_table";
          v30 = 2082;
          v31 = a1 + 380;
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v15;
          v36 = 2048;
          v37 = a2;
          v16 = "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table";
        }

        else if (v26 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v13 = gconnectionLogObj;
          v14 = type;
          v18 = os_log_type_enabled(gconnectionLogObj, type);
          if (backtrace_string)
          {
            if (v18)
            {
              v19 = *(a1 + 360);
              *buf = 136447490;
              v29 = "nw_http2_remove_from_protocol_table";
              v30 = 2082;
              v31 = a1 + 380;
              v32 = 2080;
              v33 = " ";
              v34 = 1024;
              v35 = v19;
              v36 = 2048;
              v37 = a2;
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v13, v14, "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table, dumping backtrace:%{public}s", buf, 0x3Au);
            }

            free(backtrace_string);
            goto LABEL_43;
          }

          if (!v18)
          {
LABEL_43:
            if (v12)
            {
              free(v12);
            }

            return 0;
          }

          v21 = *(a1 + 360);
          *buf = 136447234;
          v29 = "nw_http2_remove_from_protocol_table";
          v30 = 2082;
          v31 = a1 + 380;
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v21;
          v36 = 2048;
          v37 = a2;
          v16 = "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table, no backtrace";
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v13 = gconnectionLogObj;
          v14 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_43;
          }

          v20 = *(a1 + 360);
          *buf = 136447234;
          v29 = "nw_http2_remove_from_protocol_table";
          v30 = 2082;
          v31 = a1 + 380;
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v20;
          v36 = 2048;
          v37 = a2;
          v16 = "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x30u);
        goto LABEL_43;
      }

      return 0;
    }

    if (*(a1 + 379))
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10 = *(a1 + 360);
      *buf = 136447234;
      v29 = "nw_http2_remove_from_protocol_table";
      v30 = 2082;
      v31 = a1 + 380;
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v10;
      v36 = 2048;
      v37 = a2;
      v9 = "%{public}s %{public}s%s<i%u> protocol %p is not present in id based table, cannot remove";
      goto LABEL_19;
    }
  }

  else
  {
    if (*(a1 + 379))
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v8 = *(a1 + 360);
      *buf = 136447234;
      v29 = "nw_http2_remove_from_protocol_table";
      v30 = 2082;
      v31 = a1 + 380;
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v8;
      v36 = 2048;
      v37 = a2;
      v9 = "%{public}s %{public}s%s<i%u> protocol based table is NULL, cannot remove protocol %p";
LABEL_19:
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x30u);
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_http_redirect_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v17[3] = &__block_descriptor_tmp_68;
      v17[4] = handle;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v15[3] = &__block_descriptor_tmp_69;
      v16 = a3;
      v15[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v17, v15);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_redirect_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_redirect", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &v19, &v18))
    {
      goto LABEL_32;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_redirect_remove_input_handler";
        v9 = "%{public}s called with null http_redirect";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_redirect_remove_input_handler";
        v9 = "%{public}s called with null http_redirect, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
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
        v21 = "nw_protocol_http_redirect_remove_input_handler";
        v9 = "%{public}s called with null http_redirect, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_redirect_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null http_redirect, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http_redirect_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v6, &v19, &v18))
  {
    goto LABEL_32;
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
        v21 = "nw_protocol_http_redirect_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
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
        v21 = "nw_protocol_http_redirect_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_redirect_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = v19;
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 136446210;
    v21 = "nw_protocol_http_redirect_remove_input_handler";
    v9 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v2 + 232);
    if (v4)
    {
      _Block_release(v4);
      v3 = *(v2 + 240);
    }
  }

  *(v2 + 232) = 0;
  *(v2 + 240) = v3 | 1;
  v5 = *(v2 + 280);
  if (v5)
  {
    v6 = *(v2 + 272);
    if (v6)
    {
      _Block_release(v6);
      v5 = *(v2 + 280);
    }
  }

  *(v2 + 272) = 0;
  *(v2 + 280) = v5 | 1;
  v7 = *(a1 + 32);
  if ((*(v7 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    v7 = *(a1 + 32);
    if (v16)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_sniffing_remove_input_handler_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 114;
      *&buf[22] = 2080;
      v20 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfinalizing pending input frames", buf, 0x20u);
      v7 = *(a1 + 32);
    }
  }

  if (gLogDatapath == 1)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v8 = *(v7 + 328);
  if (v8)
  {
    *(v8 + 40) = &v17;
    v9 = *(v7 + 336);
    v17 = v8;
    v18 = v9;
    *(v7 + 328) = 0;
    *(v7 + 336) = v7 + 328;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v20 = &__block_descriptor_tmp_21_49595;
    v21 = 0;
    do
    {
      v10 = v17;
      if (!v17)
      {
        break;
      }

      v11 = *(v17 + 32);
      v12 = *(v17 + 40);
      v13 = (v11 + 40);
      if (!v11)
      {
        v13 = &v18;
      }

      *v13 = v12;
      *v12 = v11;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }
}

void ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
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

void ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
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

uint64_t nw_protocol_http_security_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[198] & 1) == 0 && gLogDatapath == 1)
      {
        v11 = a3;
        v12 = a2;
        v13 = a1;
        v14 = __nwlog_obj();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        a2 = v12;
        a3 = v11;
        v16 = v15;
        a1 = v13;
        if (v16)
        {
          *buf = 136446722;
          v27 = "nw_protocol_http_security_remove_input_handler";
          v28 = 2082;
          v29 = handle + 114;
          v30 = 2080;
          v31 = " ";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
          a1 = v13;
          a2 = v12;
          a3 = v11;
        }
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v23[3] = &__block_descriptor_tmp_79;
      v23[4] = handle;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v21[3] = &__block_descriptor_tmp_80_29337;
      v22 = a3;
      v21[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v23, v21);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_http_security_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_security", buf, 12);
    v25 = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v6, &v25, &v24))
    {
      goto LABEL_36;
    }

    if (v25 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v25;
      if (os_log_type_enabled(v7, v25))
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_security_remove_input_handler";
        v9 = "%{public}s called with null http_security";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v24 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v25;
      if (os_log_type_enabled(v7, v25))
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_security_remove_input_handler";
        v9 = "%{public}s called with null http_security, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v25;
    v20 = os_log_type_enabled(v7, v25);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_security_remove_input_handler";
        v9 = "%{public}s called with null http_security, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v20)
    {
      *buf = 136446466;
      v27 = "nw_protocol_http_security_remove_input_handler";
      v28 = 2082;
      v29 = backtrace_string;
      v19 = "%{public}s called with null http_security, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_http_security_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v25 = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v6, &v25, &v24))
  {
    goto LABEL_36;
  }

  if (v25 != OS_LOG_TYPE_FAULT)
  {
    if (v24 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v25;
      if (os_log_type_enabled(v7, v25))
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_security_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v25;
    v18 = os_log_type_enabled(v7, v25);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_security_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v18)
    {
      *buf = 136446466;
      v27 = "nw_protocol_http_security_remove_input_handler";
      v28 = 2082;
      v29 = backtrace_string;
      v19 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v19, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v7 = __nwlog_obj();
  v8 = v25;
  if (os_log_type_enabled(v7, v25))
  {
    *buf = 136446210;
    v27 = "nw_protocol_http_security_remove_input_handler";
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

void ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (v2 + 504);
  if (gLogDatapath == 1)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v4 = *v3;
  if (*v3)
  {
    *(v4 + 40) = &v21;
    v5 = *(v2 + 512);
    v21 = v4;
    v22 = v5;
    *(v2 + 504) = 0;
    *(v2 + 512) = v3;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v24 = &__block_descriptor_tmp_21_49595;
    v25 = 0;
    do
    {
      v6 = v21;
      if (!v21)
      {
        break;
      }

      v7 = *(v21 + 32);
      v8 = *(v21 + 40);
      v9 = (v7 + 40);
      if (!v7)
      {
        v9 = &v22;
      }

      *v9 = v8;
      *v8 = v7;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v10 = *(a1 + 32);
  if ((*(v10 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    v10 = *(a1 + 32);
    if (v16)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_encoding_remove_input_handler_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 114;
      *&buf[22] = 2080;
      v24 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sremoving finalized_output_frames", buf, 0x20u);
      v10 = *(a1 + 32);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_52;
  v19 = &__block_descriptor_tmp_53_35815;
  v20 = v10;
  v11 = *(v10 + 488);
  do
  {
    if (!v11)
    {
      break;
    }

    v12 = *(v11 + 32);
    v13 = v18(v17);
    v11 = v12;
  }

  while ((v13 & 1) != 0);
  nw_frame_cache_remove_all((*(a1 + 32) + 336));
}

uint64_t nw_protocol_http_encoding_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v17[3] = &__block_descriptor_tmp_54_35801;
      v17[4] = handle;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v15[3] = &__block_descriptor_tmp_55_35802;
      v16 = a3;
      v15[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v17, v15);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_encoding_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_encoding", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &v19, &v18))
    {
      goto LABEL_32;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_encoding_remove_input_handler";
        v9 = "%{public}s called with null http_encoding";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v19;
      if (os_log_type_enabled(v7, v19))
      {
        *buf = 136446210;
        v21 = "nw_protocol_http_encoding_remove_input_handler";
        v9 = "%{public}s called with null http_encoding, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
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
        v21 = "nw_protocol_http_encoding_remove_input_handler";
        v9 = "%{public}s called with null http_encoding, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_encoding_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_http_encoding_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v6, &v19, &v18))
  {
    goto LABEL_32;
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
        v21 = "nw_protocol_http_encoding_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
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
        v21 = "nw_protocol_http_encoding_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_encoding_remove_input_handler";
      v22 = 2082;
      v23 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = v19;
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 136446210;
    v21 = "nw_protocol_http_encoding_remove_input_handler";
    v9 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
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

uint64_t nw_protocol_http_retry_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[198] & 1) == 0 && gLogDatapath == 1)
      {
        v11 = a3;
        v12 = a2;
        v13 = a1;
        v14 = __nwlog_obj();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        a2 = v12;
        a3 = v11;
        v16 = v15;
        a1 = v13;
        if (v16)
        {
          *buf = 136446722;
          v27 = "nw_protocol_http_retry_remove_input_handler";
          v28 = 2082;
          v29 = handle + 114;
          v30 = 2080;
          v31 = " ";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
          a1 = v13;
          a2 = v12;
          a3 = v11;
        }
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v23[3] = &__block_descriptor_tmp_35_44651;
      v23[4] = handle;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v21[3] = &__block_descriptor_tmp_36_44652;
      v22 = a3;
      v21[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v23, v21);
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_http_retry_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_retry", buf, 12);
    v25 = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v6, &v25, &v24))
    {
      goto LABEL_36;
    }

    if (v25 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v25;
      if (os_log_type_enabled(v7, v25))
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_retry_remove_input_handler";
        v9 = "%{public}s called with null http_retry";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v24 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v25;
      if (os_log_type_enabled(v7, v25))
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_retry_remove_input_handler";
        v9 = "%{public}s called with null http_retry, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v25;
    v20 = os_log_type_enabled(v7, v25);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_retry_remove_input_handler";
        v9 = "%{public}s called with null http_retry, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v20)
    {
      *buf = 136446466;
      v27 = "nw_protocol_http_retry_remove_input_handler";
      v28 = 2082;
      v29 = backtrace_string;
      v19 = "%{public}s called with null http_retry, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_http_retry_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  v25 = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v6, &v25, &v24))
  {
    goto LABEL_36;
  }

  if (v25 != OS_LOG_TYPE_FAULT)
  {
    if (v24 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v25;
      if (os_log_type_enabled(v7, v25))
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_retry_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v25;
    v18 = os_log_type_enabled(v7, v25);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_protocol_http_retry_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v18)
    {
      *buf = 136446466;
      v27 = "nw_protocol_http_retry_remove_input_handler";
      v28 = 2082;
      v29 = backtrace_string;
      v19 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v19, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v7 = __nwlog_obj();
  v8 = v25;
  if (os_log_type_enabled(v7, v25))
  {
    *buf = 136446210;
    v27 = "nw_protocol_http_retry_remove_input_handler";
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

void ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
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
  v4 = *(v3 + 384);
  if (v4)
  {
    v5 = *(v3 + 376);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 384);
    }
  }

  *(v3 + 376) = 0;
  *(v3 + 384) = v4 | 1;
  v6 = *(v3 + 424);
  if (v6)
  {
    v7 = *(v3 + 416);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 424);
    }
  }

  *(v3 + 416) = 0;
  *(v3 + 424) = v6 | 1;
}

uint64_t nw_protocol_http_cookie_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http_cookie_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v6, &v27, &v26))
    {
      goto LABEL_49;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v27;
      if (!os_log_type_enabled(v7, v27))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http_cookie_remove_input_handler";
      v9 = "%{public}s called with null protocol";
LABEL_48:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_49;
    }

    if (v26 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v27;
      if (os_log_type_enabled(v7, v27))
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_cookie_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v27;
    v19 = os_log_type_enabled(v7, v27);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_cookie_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v19)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v29 = "nw_protocol_http_cookie_remove_input_handler";
    v30 = 2082;
    v31 = backtrace_string;
    v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v7, v8, v20, buf, 0x16u);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http_cookie_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_cookie", buf, 12);
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v6, &v27, &v26))
    {
      goto LABEL_49;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v27;
      if (!os_log_type_enabled(v7, v27))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http_cookie_remove_input_handler";
      v9 = "%{public}s called with null http_cookie";
      goto LABEL_48;
    }

    if (v26 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v27;
      if (os_log_type_enabled(v7, v27))
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_cookie_remove_input_handler";
        v9 = "%{public}s called with null http_cookie, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v27;
    v21 = os_log_type_enabled(v7, v27);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_cookie_remove_input_handler";
        v9 = "%{public}s called with null http_cookie, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v29 = "nw_protocol_http_cookie_remove_input_handler";
    v30 = 2082;
    v31 = backtrace_string;
    v20 = "%{public}s called with null http_cookie, dumping backtrace:%{public}s";
    goto LABEL_34;
  }

  if (a2)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v12 = a3;
      v13 = a2;
      v14 = a1;
      v15 = __nwlog_obj();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      a2 = v13;
      a3 = v12;
      v17 = v16;
      a1 = v14;
      if (v17)
      {
        *buf = 136446722;
        v29 = "nw_protocol_http_cookie_remove_input_handler";
        v30 = 2082;
        v31 = handle + 114;
        v32 = 2080;
        v33 = " ";
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        a1 = v14;
        a2 = v13;
        a3 = v12;
      }
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke;
    v25[3] = &__block_descriptor_tmp_29;
    v25[4] = handle;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
    v23[3] = &__block_descriptor_tmp_30_16449;
    v24 = a3;
    v23[4] = a1;
    v23[5] = handle;
    return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v25, v23);
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_protocol_http_cookie_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null input_protocol", buf, 12);
  v27 = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v6, &v27, &v26))
  {
    goto LABEL_49;
  }

  if (v27 != OS_LOG_TYPE_FAULT)
  {
    if (v26 != 1)
    {
      v7 = __nwlog_obj();
      v8 = v27;
      if (os_log_type_enabled(v7, v27))
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_cookie_remove_input_handler";
        v9 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = v27;
    v22 = os_log_type_enabled(v7, v27);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_cookie_remove_input_handler";
        v9 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v22)
    {
      *buf = 136446466;
      v29 = "nw_protocol_http_cookie_remove_input_handler";
      v30 = 2082;
      v31 = backtrace_string;
      v20 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

LABEL_35:
    free(backtrace_string);
    goto LABEL_49;
  }

  v7 = __nwlog_obj();
  v8 = v27;
  if (os_log_type_enabled(v7, v27))
  {
    *buf = 136446210;
    v29 = "nw_protocol_http_cookie_remove_input_handler";
    v9 = "%{public}s called with null input_protocol";
    goto LABEL_48;
  }

LABEL_49:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v2 = __nwlog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = 136446210;
      v4 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s called", &v3, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v1 + 200));
  *(v1 + 328) = 0;
}

uint64_t nw_protocol_http_connection_state_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_http_connection_state_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v6, &type, &v25))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_connection_state_remove_input_handler";
      v9 = "%{public}s called with null protocol";
LABEL_48:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_49;
    }

    if (v25 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_http_connection_state_remove_input_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
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
        v28 = "nw_protocol_http_connection_state_remove_input_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v19)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v28 = "nw_protocol_http_connection_state_remove_input_handler";
    v29 = 2082;
    v30 = backtrace_string;
    v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v7, v8, v20, buf, 0x16u);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_http_connection_state_remove_input_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_connection_state", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v6, &type, &v25))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_connection_state_remove_input_handler";
      v9 = "%{public}s called with null http_connection_state";
      goto LABEL_48;
    }

    if (v25 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_http_connection_state_remove_input_handler";
        v9 = "%{public}s called with null http_connection_state, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v21 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v28 = "nw_protocol_http_connection_state_remove_input_handler";
        v9 = "%{public}s called with null http_connection_state, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v28 = "nw_protocol_http_connection_state_remove_input_handler";
    v29 = 2082;
    v30 = backtrace_string;
    v20 = "%{public}s called with null http_connection_state, dumping backtrace:%{public}s";
    goto LABEL_34;
  }

  if (a2)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v12 = a3;
      v13 = a2;
      v14 = a1;
      v15 = __nwlog_obj();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      a2 = v13;
      a3 = v12;
      v17 = v16;
      a1 = v14;
      if (v17)
      {
        *buf = 136446722;
        v28 = "nw_protocol_http_connection_state_remove_input_handler";
        v29 = 2082;
        v30 = handle + 114;
        v31 = 2080;
        v32 = " ";
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        a1 = v14;
        a2 = v13;
        a3 = v12;
      }
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = ___ZL54nw_protocol_http_connection_state_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
    v23[3] = &__block_descriptor_tmp_28_74035;
    v24 = a3;
    v23[4] = a1;
    v23[5] = handle;
    return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, &__block_literal_global_27_74036, v23);
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_http_connection_state_remove_input_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null input_protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v6, &type, &v25))
  {
    goto LABEL_49;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v25 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_http_connection_state_remove_input_handler";
        v9 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v22 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v28 = "nw_protocol_http_connection_state_remove_input_handler";
        v9 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v22)
    {
      *buf = 136446466;
      v28 = "nw_protocol_http_connection_state_remove_input_handler";
      v29 = 2082;
      v30 = backtrace_string;
      v20 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

LABEL_35:
    free(backtrace_string);
    goto LABEL_49;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v28 = "nw_protocol_http_connection_state_remove_input_handler";
    v9 = "%{public}s called with null input_protocol";
    goto LABEL_48;
  }

LABEL_49:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

BOOL nw_protocol_http2_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    v106 = "nw_protocol_http2_remove_input_handler";
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v103 = 0;
    if (!__nwlog_fault(v69, &type, &v103))
    {
      goto LABEL_208;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (!os_log_type_enabled(v70, type))
      {
        goto LABEL_208;
      }

      *buf = 136446210;
      v106 = "nw_protocol_http2_remove_input_handler";
      v72 = "%{public}s called with null protocol";
LABEL_207:
      _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0xCu);
      goto LABEL_208;
    }

    if (v103 != 1)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v70, type))
      {
        *buf = 136446210;
        v106 = "nw_protocol_http2_remove_input_handler";
        v72 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    backtrace_string = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v71 = type;
    v86 = os_log_type_enabled(v70, type);
    if (!backtrace_string)
    {
      if (v86)
      {
        *buf = 136446210;
        v106 = "nw_protocol_http2_remove_input_handler";
        v72 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    if (!v86)
    {
      goto LABEL_164;
    }

    *buf = 136446466;
    v106 = "nw_protocol_http2_remove_input_handler";
    v107 = 2082;
    v108 = backtrace_string;
    v87 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_163:
    _os_log_impl(&dword_181A37000, v70, v71, v87, buf, 0x16u);
    goto LABEL_164;
  }

  handle = a1->handle;
  if (!handle)
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    v106 = "nw_protocol_http2_remove_input_handler";
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v103 = 0;
    if (!__nwlog_fault(v69, &type, &v103))
    {
      goto LABEL_208;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (!os_log_type_enabled(v70, type))
      {
        goto LABEL_208;
      }

      *buf = 136446210;
      v106 = "nw_protocol_http2_remove_input_handler";
      v72 = "%{public}s called with null http2";
      goto LABEL_207;
    }

    if (v103 != 1)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v70, type))
      {
        *buf = 136446210;
        v106 = "nw_protocol_http2_remove_input_handler";
        v72 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    backtrace_string = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v71 = type;
    v88 = os_log_type_enabled(v70, type);
    if (!backtrace_string)
    {
      if (v88)
      {
        *buf = 136446210;
        v106 = "nw_protocol_http2_remove_input_handler";
        v72 = "%{public}s called with null http2, no backtrace";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    if (!v88)
    {
      goto LABEL_164;
    }

    *buf = 136446466;
    v106 = "nw_protocol_http2_remove_input_handler";
    v107 = 2082;
    v108 = backtrace_string;
    v87 = "%{public}s called with null http2, dumping backtrace:%{public}s";
    goto LABEL_163;
  }

  if (!a2)
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    v106 = "nw_protocol_http2_remove_input_handler";
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v103 = 0;
    if (!__nwlog_fault(v69, &type, &v103))
    {
      goto LABEL_208;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v70, type))
      {
        *buf = 136446210;
        v106 = "nw_protocol_http2_remove_input_handler";
        v72 = "%{public}s called with null input_protocol";
        goto LABEL_207;
      }

LABEL_208:
      if (!v69)
      {
        return 0;
      }

      v67 = v69;
      goto LABEL_120;
    }

    if (v103 != 1)
    {
      v70 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v70, type))
      {
        *buf = 136446210;
        v106 = "nw_protocol_http2_remove_input_handler";
        v72 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    backtrace_string = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v71 = type;
    v89 = os_log_type_enabled(v70, type);
    if (!backtrace_string)
    {
      if (v89)
      {
        *buf = 136446210;
        v106 = "nw_protocol_http2_remove_input_handler";
        v72 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    if (v89)
    {
      *buf = 136446466;
      v106 = "nw_protocol_http2_remove_input_handler";
      v107 = 2082;
      v108 = backtrace_string;
      v87 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_163;
    }

LABEL_164:
    free(backtrace_string);
    goto LABEL_208;
  }

  v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v80 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v81 = *(handle + 90);
      *buf = 136447234;
      v106 = "nw_protocol_http2_remove_input_handler";
      v107 = 2082;
      v108 = handle + 380;
      v109 = 2080;
      v110 = " ";
      v111 = 1024;
      v112 = v81;
      v113 = 2048;
      *v114 = a2;
      _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with input_protocol %p", buf, 0x30u);
    }
  }

  v6 = a1->handle;
  if (!v6)
  {
    v75 = __nwlog_obj();
    *buf = 136446210;
    v106 = "nw_http2_remove_input_handler";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v103 = 0;
    if (!__nwlog_fault(v76, &type, &v103))
    {
      goto LABEL_215;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v106 = "nw_http2_remove_input_handler";
      v79 = "%{public}s called with null http2";
      goto LABEL_214;
    }

    if (v103 != 1)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v106 = "nw_http2_remove_input_handler";
      v79 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_214;
    }

    v90 = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = type;
    v91 = os_log_type_enabled(v77, type);
    if (!v90)
    {
      if (!v91)
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v106 = "nw_http2_remove_input_handler";
      v79 = "%{public}s called with null http2, no backtrace";
      goto LABEL_214;
    }

    if (v91)
    {
      *buf = 136446466;
      v106 = "nw_http2_remove_input_handler";
      v107 = 2082;
      v108 = v90;
      _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v90);
LABEL_215:
    if (!v76)
    {
      goto LABEL_20;
    }

    goto LABEL_216;
  }

  if (!*(handle + 19))
  {
    v82 = __nwlog_obj();
    *buf = 136446210;
    v106 = "nw_http2_remove_input_handler";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s called with null table", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v103 = 0;
    if (!__nwlog_fault(v76, &type, &v103))
    {
      goto LABEL_215;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v106 = "nw_http2_remove_input_handler";
      v79 = "%{public}s called with null table";
      goto LABEL_214;
    }

    if (v103 != 1)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v106 = "nw_http2_remove_input_handler";
      v79 = "%{public}s called with null table, backtrace limit exceeded";
      goto LABEL_214;
    }

    v92 = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = type;
    v93 = os_log_type_enabled(v77, type);
    if (v92)
    {
      if (v93)
      {
        *buf = 136446466;
        v106 = "nw_http2_remove_input_handler";
        v107 = 2082;
        v108 = v92;
        _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v92);
      if (!v76)
      {
        goto LABEL_20;
      }

LABEL_216:
      free(v76);
      goto LABEL_20;
    }

    if (v93)
    {
      *buf = 136446210;
      v106 = "nw_http2_remove_input_handler";
      v79 = "%{public}s called with null table, no backtrace";
LABEL_214:
      _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
      goto LABEL_215;
    }

    goto LABEL_215;
  }

  if ((v6[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v83 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v84 = *(v6 + 90);
      *buf = 136446978;
      v106 = "nw_http2_remove_input_handler";
      v107 = 2082;
      v108 = v6 + 380;
      v109 = 2080;
      v110 = " ";
      v111 = 1024;
      v112 = v84;
      _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  output_handler_context = a2->output_handler_context;
  if (output_handler_context)
  {
    v8 = output_handler_context[4];
    if (v8)
    {
      nw_http_transaction_metadata_mark_end(*(v8 + 96));
      v9 = *(v8 + 188);
      *(v8 + 188) = v9 & 0xFFFB;
      if ((v9 & 1) != 0 || *(v8 + 176) != -1)
      {
        nw_http2_stream_close(v6, v8);
        goto LABEL_36;
      }

      if ((*(v8 + 190) & 0x10) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(v8 + 176);
          v22 = *(v8 + 180);
          *buf = 136447234;
          v106 = "nw_http2_remove_input_handler";
          v107 = 2082;
          v108 = (v8 + 191);
          v109 = 2080;
          v110 = " ";
          v111 = 1024;
          v112 = v22;
          v113 = 1024;
          *v114 = v23;
          v17 = "%{public}s %{public}s%s<i%u:s%d> not closing already closed stream";
          v18 = v21;
          v19 = OS_LOG_TYPE_DEBUG;
          v20 = 44;
          goto LABEL_35;
        }
      }
    }

    else if ((v6[379] & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        v16 = *(v6 + 90);
        *buf = 136446978;
        v106 = "nw_http2_remove_input_handler";
        v107 = 2082;
        v108 = v6 + 380;
        v109 = 2080;
        v110 = " ";
        v111 = 1024;
        v112 = v16;
        v17 = "%{public}s %{public}s%s<i%u> stream not found as extra";
        v18 = v15;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 38;
LABEL_35:
        _os_log_impl(&dword_181A37000, v18, v19, v17, buf, v20);
      }
    }

LABEL_36:
    if (nw_http2_remove_from_protocol_table(v6, a2))
    {
      nw_protocol_set_output_handler(a2, 0);
      if (!v8)
      {
        if (v6[379])
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v8)
      {
        if ((v6[379] & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v94 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            v95 = *(v6 + 90);
            *buf = 136447234;
            v106 = "nw_http2_remove_input_handler";
            v107 = 2082;
            v108 = v6 + 380;
            v109 = 2080;
            v110 = " ";
            v111 = 1024;
            v112 = v95;
            v113 = 2048;
            *v114 = a2;
            _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> unable to remove protocol %p from protocol table", buf, 0x30u);
          }
        }

        nw_protocol_set_output_handler(a2, 0);
        if (v6[379])
        {
LABEL_63:
          v41 = *(handle + 19);
          if (v41)
          {
            v42 = handle + 377;
            if ((*(handle + 377) & 0xC) == 0 && a1->default_input_handler == a2)
            {
              if ((handle[379] & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v43 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  v44 = *(handle + 90);
                  *buf = 136446978;
                  v106 = "nw_protocol_http2_remove_input_handler";
                  v107 = 2082;
                  v108 = handle + 380;
                  v109 = 2080;
                  v110 = " ";
                  v111 = 1024;
                  v112 = v44;
                  _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
                }
              }

              *v42 |= 8u;
              nw_protocol_remove_instance(a1);
              nw_protocol_http2_notify(a1, a1, 0x16u, 0, 0);
              v41 = *(handle + 19);
            }

            v45 = nw_hash_table_count(v41);
            if (v45)
            {
              if ((handle[379] & 1) == 0 && BYTE1(v5[82].isa) == 1)
              {
                v96 = v45;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v97 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v98 = *(handle + 90);
                  *buf = 136447234;
                  v106 = "nw_protocol_http2_remove_input_handler";
                  v107 = 2082;
                  v108 = handle + 380;
                  v109 = 2080;
                  v110 = " ";
                  v111 = 1024;
                  v112 = v98;
                  v113 = 1024;
                  *v114 = v96;
                  _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> not destroying, still have %u input handlers", buf, 0x2Cu);
                }
              }

              if (a1->default_input_handler == a2)
              {
                nw_protocol_set_input_handler(a1, 0);
                v46 = *(handle + 19);
                v101[0] = MEMORY[0x1E69E9820];
                v101[1] = 0x40000000;
                v101[2] = ___ZL38nw_protocol_http2_remove_input_handlerP11nw_protocolS0_b_block_invoke_64;
                v101[3] = &__block_descriptor_tmp_65_88693;
                v101[4] = a1;
                v101[5] = handle;
                nw_hash_table_apply(v46, v101);
              }
            }

            else
            {
              if ((handle[379] & 1) == 0 && BYTE1(v5[82].isa) == 1)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v99 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v100 = *(handle + 90);
                  *buf = 136446978;
                  v106 = "nw_protocol_http2_remove_input_handler";
                  v107 = 2082;
                  v108 = handle + 380;
                  v109 = 2080;
                  v110 = " ";
                  v111 = 1024;
                  v112 = v100;
                  _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no more input handlers, scheduling destroy", buf, 0x26u);
                }
              }

              nw_protocol_set_input_handler(a1, 0);
              nw_frame_cache_remove_all(handle + 25);
              v53 = *(handle + 11);
              if (v53)
              {
                nw_queue_cancel_source(v53);
              }

              v102[0] = MEMORY[0x1E69E9820];
              v102[1] = 0x40000000;
              v102[2] = ___ZL38nw_protocol_http2_remove_input_handlerP11nw_protocolS0_b_block_invoke;
              v102[3] = &__block_descriptor_tmp_63_88690;
              v102[4] = a1;
              *(handle + 11) = nw_queue_context_create_source(0, 2, 3, 0, v102, 0);
              v54 = *(handle + 10);
              if (nw_protocol_http2_accept(a1, v55, *(handle + 13)))
              {
                if (nw_context_get_channel_flow_count(*(handle + 16)) <= 0x19F)
                {
                  v56 = v54;
                }

                else
                {
                  v56 = 1000;
                }
              }

              else
              {
                if ((handle[379] & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v60 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                  {
                    v61 = *(handle + 90);
                    *buf = 136446978;
                    v106 = "nw_protocol_http2_remove_input_handler";
                    v107 = 2082;
                    v108 = handle + 380;
                    v109 = 2080;
                    v110 = " ";
                    v111 = 1024;
                    v112 = v61;
                    _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> cannot accept input handlers, destroying immediately", buf, 0x26u);
                  }
                }

                v56 = 0;
              }

              v62 = *(handle + 11);
              v63 = dispatch_time(0x8000000000000000, 1000000 * v56);
              nw_queue_set_timer_values(v62, v63, 0xFFFFFFFFFFFFFFFFLL, 1000 * v56);
              nw_queue_activate_source(*(handle + 11));
              v64 = *(handle + 42);
              if (v64)
              {
                nw_queue_cancel_source(v64);
                *(handle + 42) = 0;
              }

              *v42 &= ~0x8000u;
            }

            return 1;
          }

          if (handle[379])
          {
            return 0;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v47 = *(handle + 90);
          *buf = 136447234;
          v106 = "nw_protocol_http2_remove_input_handler";
          v107 = 2082;
          v108 = handle + 380;
          v109 = 2080;
          v110 = " ";
          v111 = 1024;
          v112 = v47;
          v113 = 2048;
          *v114 = a2;
          v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p", buf, 48);
          type = OS_LOG_TYPE_ERROR;
          v103 = 0;
          if (__nwlog_fault(v48, &type, &v103))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v49 = gconnectionLogObj;
              v50 = type;
              if (os_log_type_enabled(gconnectionLogObj, type))
              {
                v51 = *(handle + 90);
                *buf = 136447234;
                v106 = "nw_protocol_http2_remove_input_handler";
                v107 = 2082;
                v108 = handle + 380;
                v109 = 2080;
                v110 = " ";
                v111 = 1024;
                v112 = v51;
                v113 = 2048;
                *v114 = a2;
                v52 = "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p";
LABEL_117:
                _os_log_impl(&dword_181A37000, v49, v50, v52, buf, 0x30u);
              }
            }

            else if (v103 == 1)
            {
              v57 = __nw_create_backtrace_string();
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v49 = gconnectionLogObj;
              v50 = type;
              v58 = os_log_type_enabled(gconnectionLogObj, type);
              if (!v57)
              {
                if (!v58)
                {
                  goto LABEL_118;
                }

                v66 = *(handle + 90);
                *buf = 136447234;
                v106 = "nw_protocol_http2_remove_input_handler";
                v107 = 2082;
                v108 = handle + 380;
                v109 = 2080;
                v110 = " ";
                v111 = 1024;
                v112 = v66;
                v113 = 2048;
                *v114 = a2;
                v52 = "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p, no backtrace";
                goto LABEL_117;
              }

              if (v58)
              {
                v59 = *(handle + 90);
                *buf = 136447490;
                v106 = "nw_protocol_http2_remove_input_handler";
                v107 = 2082;
                v108 = handle + 380;
                v109 = 2080;
                v110 = " ";
                v111 = 1024;
                v112 = v59;
                v113 = 2048;
                *v114 = a2;
                *&v114[8] = 2082;
                *&v114[10] = v57;
                _os_log_impl(&dword_181A37000, v49, v50, "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p, dumping backtrace:%{public}s", buf, 0x3Au);
              }

              free(v57);
            }

            else
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v49 = gconnectionLogObj;
              v50 = type;
              if (os_log_type_enabled(gconnectionLogObj, type))
              {
                v65 = *(handle + 90);
                *buf = 136447234;
                v106 = "nw_protocol_http2_remove_input_handler";
                v107 = 2082;
                v108 = handle + 380;
                v109 = 2080;
                v110 = " ";
                v111 = 1024;
                v112 = v65;
                v113 = 2048;
                *v114 = a2;
                v52 = "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p, backtrace limit exceeded";
                goto LABEL_117;
              }
            }
          }

LABEL_118:
          if (v48)
          {
            v67 = v48;
LABEL_120:
            free(v67);
          }

          return 0;
        }

LABEL_39:
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(v6 + 90);
          v26 = nw_hash_table_count(*(v6 + 19));
          *buf = 136447490;
          v106 = "nw_http2_remove_input_handler";
          v107 = 2082;
          v108 = v6 + 380;
          v109 = 2080;
          v110 = " ";
          v111 = 1024;
          v112 = v25;
          v113 = 2048;
          *v114 = a2;
          *&v114[8] = 1024;
          *&v114[10] = v26;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed input handler %p, now have %u input handlers", buf, 0x36u);
        }

        goto LABEL_63;
      }

      if ((*(v8 + 190) & 0x10) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v27 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          v29 = *(v8 + 176);
          v28 = *(v8 + 180);
          *buf = 136447490;
          v106 = "nw_http2_remove_input_handler";
          v107 = 2082;
          v108 = (v8 + 191);
          v109 = 2080;
          v110 = " ";
          v111 = 1024;
          v112 = v28;
          v113 = 1024;
          *v114 = v29;
          *&v114[4] = 2048;
          *&v114[6] = a2;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> unable to remove protocol %p from protocol table", buf, 0x36u);
        }
      }

      nw_protocol_set_output_handler(a2, 0);
    }

    if (*(v8 + 191))
    {
      if ((*(v8 + 190) & 0x10) != 0)
      {
        goto LABEL_62;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_62;
      }

      v31 = *(v8 + 176);
      v32 = *(v8 + 180);
      v33 = nw_hash_table_count(*(v6 + 19));
      *buf = 136448002;
      v106 = "nw_http2_remove_input_handler";
      v107 = 2082;
      v108 = (v8 + 191);
      v109 = 2080;
      v110 = " ";
      v111 = 1024;
      v112 = v32;
      v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v113 = 1024;
      *v114 = v31;
      *&v114[4] = 2048;
      *&v114[6] = a2;
      *&v114[14] = 2080;
      *&v114[16] = v8 + 191;
      v115 = 1024;
      v116 = v33;
      v34 = "%{public}s %{public}s%s<i%u:s%d> removed input handler %p, originally from %s, now have %u input handlers";
      v35 = v30;
      v36 = 70;
    }

    else
    {
      if ((*(v8 + 190) & 0x10) != 0)
      {
        goto LABEL_62;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v37 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_62;
      }

      v39 = *(v8 + 176);
      v38 = *(v8 + 180);
      v40 = nw_hash_table_count(*(v6 + 19));
      *buf = 136447746;
      v106 = "nw_http2_remove_input_handler";
      v107 = 2082;
      v108 = (v8 + 191);
      v109 = 2080;
      v110 = " ";
      v111 = 1024;
      v112 = v38;
      v113 = 1024;
      *v114 = v39;
      v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      *&v114[4] = 2048;
      *&v114[6] = a2;
      *&v114[14] = 1024;
      *&v114[16] = v40;
      v34 = "%{public}s %{public}s%s<i%u:s%d> removed input handler %p, now have %u input handlers";
      v35 = v37;
      v36 = 60;
    }

    _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, v34, buf, v36);
LABEL_62:
    nw_http2_stream_destroy(v8);
    goto LABEL_63;
  }

  if ((v6[379] & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = *(v6 + 90);
      *buf = 136447234;
      v106 = "nw_http2_remove_input_handler";
      v107 = 2082;
      v108 = v6 + 380;
      v109 = 2080;
      v110 = " ";
      v111 = 1024;
      v112 = v11;
      v113 = 2048;
      *v114 = a2;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler context doesn't exist on protocol %p", buf, 0x30u);
    }
  }

LABEL_20:
  if (handle[379])
  {
    return 0;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v12 = gconnectionLogObj;
  result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v14 = *(handle + 90);
    *buf = 136447490;
    v106 = "nw_protocol_http2_remove_input_handler";
    v107 = 2082;
    v108 = handle + 380;
    v109 = 2080;
    v110 = " ";
    v111 = 1024;
    v112 = v14;
    v113 = 1042;
    *v114 = 16;
    *&v114[4] = 2098;
    *&v114[6] = a2;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> http2 does not have input handler registered for %{public,uuid_t}.16P", buf, 0x36u);
    return 0;
  }

  return result;
}

void nw_http2_stream_destroy(void **a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 190) & 0x20) != 0)
  {
    nw_http_transaction_metadata_set_event_handler(a1[12], 0);
  }

  if (gLogDatapath == 1)
  {
    v18 = __nwlog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v2 = *a1;
  if (*a1)
  {
    *(v2 + 40) = &v20;
    v3 = a1[1];
    v20 = v2;
    v21 = v3;
    *a1 = 0;
    a1[1] = a1;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v23 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v24 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v25) = 0;
    do
    {
      v4 = v20;
      if (!v20)
      {
        break;
      }

      v5 = *(v20 + 32);
      v6 = *(v20 + 40);
      v7 = (v5 + 40);
      if (!v5)
      {
        v7 = &v21;
      }

      *v7 = v6;
      *v6 = v5;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
    }

    while ((v23(&buf) & 1) != 0);
  }

  if (gLogDatapath == 1)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_release_master_frame_array";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 0x40000000;
  v23 = ___ZL38nw_protocol_release_master_frame_arrayP16nw_frame_array_s_block_invoke;
  v24 = &__block_descriptor_tmp_33_87356;
  v25 = a1 + 2;
  v8 = a1[2];
  do
  {
    if (!v8)
    {
      break;
    }

    v9 = v8[2];
    v10 = v23(&buf);
    v8 = v9;
  }

  while ((v10 & 1) != 0);
  v11 = a1[12];
  if (v11)
  {
    os_release(v11);
    a1[12] = 0;
  }

  v12 = a1[13];
  if (v12)
  {
    os_release(v12);
    a1[13] = 0;
  }

  v13 = a1[14];
  if (v13)
  {
    os_release(v13);
    a1[14] = 0;
  }

  v14 = *(a1 + 94);
  *(a1 + 44) = -1;
  *(a1 + 94) = v14 & 0xEF66;
  if (a1[21])
  {
    v15 = a1[20];
    if (v15)
    {
      os_release(v15);
    }
  }

  a1[20] = 0;
  if (a1[19])
  {
    v16 = a1[18];
    if (v16)
    {
      os_release(v16);
    }
  }

  a1[18] = 0;
  v17 = a1[15];
  if (v17)
  {
    a1[16] = v17;
    operator delete(v17);
  }

  free(a1);
}

uint64_t nw_protocol_http2_accept(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http2_accept";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v29, &type, &v40))
    {
      goto LABEL_82;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v40 != 1)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (!os_log_type_enabled(v30, type))
        {
          goto LABEL_82;
        }

        *buf = 136446210;
        v43 = "nw_protocol_http2_accept";
        v32 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_81;
      }

      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = type;
      v37 = os_log_type_enabled(v30, type);
      if (!backtrace_string)
      {
        if (!v37)
        {
          goto LABEL_82;
        }

        *buf = 136446210;
        v43 = "nw_protocol_http2_accept";
        v32 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_81;
      }

      if (v37)
      {
        *buf = 136446466;
        v43 = "nw_protocol_http2_accept";
        v44 = 2082;
        v45 = backtrace_string;
        v38 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_71:
        _os_log_impl(&dword_181A37000, v30, v31, v38, buf, 0x16u);
      }

LABEL_72:
      free(backtrace_string);
      goto LABEL_82;
    }

    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v43 = "nw_protocol_http2_accept";
    v32 = "%{public}s called with null protocol";
LABEL_81:
    _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
LABEL_82:
    if (v29)
    {
      free(v29);
    }

    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http2_accept";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null http2", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v29, &type, &v40))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_82;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_accept";
      v32 = "%{public}s called with null http2";
      goto LABEL_81;
    }

    if (v40 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_82;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_accept";
      v32 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v39 = os_log_type_enabled(v30, type);
    if (backtrace_string)
    {
      if (v39)
      {
        *buf = 136446466;
        v43 = "nw_protocol_http2_accept";
        v44 = 2082;
        v45 = backtrace_string;
        v38 = "%{public}s called with null http2, dumping backtrace:%{public}s";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (!v39)
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v43 = "nw_protocol_http2_accept";
    v32 = "%{public}s called with null http2, no backtrace";
    goto LABEL_81;
  }

  if ((*(v3 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v34 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(v3 + 360);
      *buf = 136446978;
      v43 = "nw_protocol_http2_accept";
      v44 = 2082;
      v45 = (v3 + 380);
      v46 = 2080;
      v47 = " ";
      v48 = 1024;
      v49 = v35;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if ((*(v3 + 377) & 4) == 0)
  {
    v5 = *(v3 + 64);
    if (v5)
    {
      v6 = mach_continuous_time();
      v7 = v6 <= 1 ? 1 : v6;
      v8 = nw_delta_nanos(v5, v7);
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_proxy_setup_threshold_seconds, 5);
      if (v8 > 1000000000 * int64_with_default)
      {
        if ((*(v3 + 379) & 1) == 0)
        {
          v10 = int64_with_default;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v11 = gconnectionLogObj;
          result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
          if (result)
          {
            v13 = *(v3 + 360);
            *buf = 136447234;
            v43 = "nw_protocol_http2_accept";
            v44 = 2082;
            v45 = (v3 + 380);
            v46 = 2080;
            v47 = " ";
            v48 = 1024;
            v49 = v13;
            v50 = 2048;
            v51 = v10;
            v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http2 connection not ready within %lld seconds";
            v15 = v11;
            v16 = 48;
LABEL_48:
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
            return 0;
          }

          return result;
        }

        return 0;
      }
    }
  }

  if (!*(v3 + 364) || networkd_settings_get_int64_with_default(nw_setting_proxy_maximum_stall_count, 5) >= *(v3 + 364))
  {
    v20 = *(v3 + 377);
    if ((v20 & 2) != 0)
    {
      if (*(v3 + 379))
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v25 = *(v3 + 360);
      *buf = 136446978;
      v43 = "nw_protocol_http2_accept";
      v44 = 2082;
      v45 = (v3 + 380);
      v46 = 2080;
      v47 = " ";
      v48 = 1024;
      v49 = v25;
      v14 = "%{public}s %{public}s%s<i%u> cannot accept new streams after receiving a goaway";
    }

    else if ((v20 & 8) != 0)
    {
      if (*(v3 + 379))
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v26 = *(v3 + 360);
      *buf = 136446978;
      v43 = "nw_protocol_http2_accept";
      v44 = 2082;
      v45 = (v3 + 380);
      v46 = 2080;
      v47 = " ";
      v48 = 1024;
      v49 = v26;
      v14 = "%{public}s %{public}s%s<i%u> cannot accept new streams after the tunnel is closed";
    }

    else
    {
      if ((v20 & 0x40) == 0)
      {
        if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
        }

        v21 = nw_parameters_copy_protocol_options_for_definition(a3, nw_protocol_copy_http_messaging_definition_definition);
        if (!v21)
        {
          return 1;
        }

        v22 = v21;
        is_websocket = nw_http_messaging_options_is_websocket(v21);
        os_release(v22);
        if (!is_websocket)
        {
          return 1;
        }

        result = nw_http_connection_metadata_get_connect_enabled(*(v3 + 256));
        if (result)
        {
          return 1;
        }

        return result;
      }

      if (*(v3 + 379))
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v27 = *(v3 + 360);
      *buf = 136446978;
      v43 = "nw_protocol_http2_accept";
      v44 = 2082;
      v45 = (v3 + 380);
      v46 = 2080;
      v47 = " ";
      v48 = 1024;
      v49 = v27;
      v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http2 has a better alternate path";
    }

    v15 = v24;
    v16 = 38;
    goto LABEL_48;
  }

  if (*(v3 + 379))
  {
    return 0;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v17 = gconnectionLogObj;
  result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v18 = *(v3 + 360);
    v19 = *(v3 + 364);
    *buf = 136447234;
    v43 = "nw_protocol_http2_accept";
    v44 = 2082;
    v45 = (v3 + 380);
    v46 = 2080;
    v47 = " ";
    v48 = 1024;
    v49 = v18;
    v50 = 1024;
    LODWORD(v51) = v19;
    v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http2 connection has hit %u stalls";
    v15 = v17;
    v16 = 44;
    goto LABEL_48;
  }

  return result;
}