void ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_3(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_tls(a2))
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

uint64_t nw_protocol_http1_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http1_get_http1_protocol";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v29, &type, &v73))
    {
      goto LABEL_137;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v76 = "nw_http1_get_http1_protocol";
      v32 = "%{public}s called with null protocol";
    }

    else
    {
      if (v73 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v41 = os_log_type_enabled(v30, type);
        if (!backtrace_string)
        {
          if (!v41)
          {
            goto LABEL_137;
          }

          *buf = 136446210;
          v76 = "nw_http1_get_http1_protocol";
          v32 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_136;
        }

        if (v41)
        {
          *buf = 136446466;
          v76 = "nw_http1_get_http1_protocol";
          v77 = 2082;
          v78 = backtrace_string;
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_137;
      }

      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v76 = "nw_http1_get_http1_protocol";
      v32 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_136;
  }

  handle = a1->handle;
  if (!handle)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http1_get_http1_protocol";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v29, &type, &v73))
    {
      goto LABEL_137;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v73 != 1)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (!os_log_type_enabled(v30, type))
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v76 = "nw_http1_get_http1_protocol";
        v32 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_136;
      }

      v42 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = type;
      v43 = os_log_type_enabled(v30, type);
      if (!v42)
      {
        if (!v43)
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v76 = "nw_http1_get_http1_protocol";
        v32 = "%{public}s called with null handle, no backtrace";
        goto LABEL_136;
      }

      if (!v43)
      {
        goto LABEL_69;
      }

      *buf = 136446466;
      v76 = "nw_http1_get_http1_protocol";
      v77 = 2082;
      v78 = v42;
      v44 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_68;
    }

    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_137;
    }

    *buf = 136446210;
    v76 = "nw_http1_get_http1_protocol";
    v32 = "%{public}s called with null handle";
LABEL_136:
    _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
    goto LABEL_137;
  }

  v7 = *(handle + 6);
  v8 = a1->handle;
  if (v7 == 1)
  {
    goto LABEL_10;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      goto LABEL_139;
    }

    v9 = *(handle + 2);
    if (v9)
    {
      v8 = (v9 + 480);
      goto LABEL_10;
    }

    v54 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http1_get_http1_protocol";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (__nwlog_fault(v29, &type, &v73))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (!os_log_type_enabled(v30, type))
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v76 = "nw_http1_get_http1_protocol";
        v32 = "%{public}s called with null handle->http1_connection";
        goto LABEL_136;
      }

      if (v73 != 1)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (!os_log_type_enabled(v30, type))
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v76 = "nw_http1_get_http1_protocol";
        v32 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_136;
      }

      v42 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = type;
      v61 = os_log_type_enabled(v30, type);
      if (!v42)
      {
        if (!v61)
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v76 = "nw_http1_get_http1_protocol";
        v32 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_136;
      }

      if (v61)
      {
        *buf = 136446466;
        v76 = "nw_http1_get_http1_protocol";
        v77 = 2082;
        v78 = v42;
        v44 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_68;
      }

LABEL_69:
      free(v42);
      if (!v29)
      {
LABEL_139:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v76 = "nw_protocol_http1_replace_input_handler";
        LODWORD(v72) = 12;
        v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v72);
        type = OS_LOG_TYPE_ERROR;
        v73 = 0;
        if (!__nwlog_fault(v35, &type, &v73))
        {
          goto LABEL_170;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_170;
          }

          *buf = 136446210;
          v76 = "nw_protocol_http1_replace_input_handler";
          v38 = "%{public}s called with null http1";
        }

        else
        {
          if (v73 == 1)
          {
            v64 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v65 = gLogObj;
            v66 = type;
            v67 = os_log_type_enabled(gLogObj, type);
            if (v64)
            {
              if (v67)
              {
                *buf = 136446466;
                v76 = "nw_protocol_http1_replace_input_handler";
                v77 = 2082;
                v78 = v64;
                v68 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_164:
                _os_log_impl(&dword_181A37000, v65, v66, v68, buf, 0x16u);
              }

LABEL_165:
              free(v64);
              goto LABEL_170;
            }

            if (!v67)
            {
              goto LABEL_170;
            }

            *buf = 136446210;
            v76 = "nw_protocol_http1_replace_input_handler";
            v38 = "%{public}s called with null http1, no backtrace";
LABEL_176:
            v70 = v65;
            v71 = v66;
            goto LABEL_169;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_170;
          }

          *buf = 136446210;
          v76 = "nw_protocol_http1_replace_input_handler";
          v38 = "%{public}s called with null http1, backtrace limit exceeded";
        }

        goto LABEL_168;
      }

LABEL_138:
      free(v29);
      goto LABEL_139;
    }

LABEL_137:
    if (!v29)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  v10 = *(handle + 1);
  if (!v10)
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http1_get_http1_protocol";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v29, &type, &v73))
    {
      goto LABEL_137;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v76 = "nw_http1_get_http1_protocol";
      v32 = "%{public}s called with null handle->http1_stream";
      goto LABEL_136;
    }

    if (v73 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v76 = "nw_http1_get_http1_protocol";
      v32 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_136;
    }

    v42 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v60 = os_log_type_enabled(v30, type);
    if (!v42)
    {
      if (!v60)
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v76 = "nw_http1_get_http1_protocol";
      v32 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_136;
    }

    if (!v60)
    {
      goto LABEL_69;
    }

    *buf = 136446466;
    v76 = "nw_http1_get_http1_protocol";
    v77 = 2082;
    v78 = v42;
    v44 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_68:
    _os_log_impl(&dword_181A37000, v30, v31, v44, buf, 0x16u);
    goto LABEL_69;
  }

  v8 = (v10 + 248);
LABEL_10:
  if (!*v8)
  {
    goto LABEL_139;
  }

  if (!a2)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_protocol_http1_replace_input_handler";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null old_input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v35, &type, &v73))
    {
      goto LABEL_170;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v73 != 1)
      {
        v36 = __nwlog_obj();
        v37 = type;
        if (!os_log_type_enabled(v36, type))
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v76 = "nw_protocol_http1_replace_input_handler";
        v38 = "%{public}s called with null old_input_protocol, backtrace limit exceeded";
        goto LABEL_168;
      }

      v49 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v50 = os_log_type_enabled(v36, type);
      if (!v49)
      {
        if (!v50)
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v76 = "nw_protocol_http1_replace_input_handler";
        v38 = "%{public}s called with null old_input_protocol, no backtrace";
        goto LABEL_168;
      }

      if (v50)
      {
        *buf = 136446466;
        v76 = "nw_protocol_http1_replace_input_handler";
        v77 = 2082;
        v78 = v49;
        v51 = "%{public}s called with null old_input_protocol, dumping backtrace:%{public}s";
LABEL_83:
        _os_log_impl(&dword_181A37000, v36, v37, v51, buf, 0x16u);
      }

LABEL_84:
      free(v49);
      goto LABEL_170;
    }

    v36 = __nwlog_obj();
    v37 = type;
    if (!os_log_type_enabled(v36, type))
    {
      goto LABEL_170;
    }

    *buf = 136446210;
    v76 = "nw_protocol_http1_replace_input_handler";
    v38 = "%{public}s called with null old_input_protocol";
LABEL_168:
    v70 = v36;
    v71 = v37;
LABEL_169:
    _os_log_impl(&dword_181A37000, v70, v71, v38, buf, 0xCu);
    goto LABEL_170;
  }

  if (!a3)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_protocol_http1_replace_input_handler";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null new_input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v35, &type, &v73))
    {
      goto LABEL_170;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_170;
      }

      *buf = 136446210;
      v76 = "nw_protocol_http1_replace_input_handler";
      v38 = "%{public}s called with null new_input_protocol";
      goto LABEL_168;
    }

    if (v73 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_170;
      }

      *buf = 136446210;
      v76 = "nw_protocol_http1_replace_input_handler";
      v38 = "%{public}s called with null new_input_protocol, backtrace limit exceeded";
      goto LABEL_168;
    }

    v49 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type;
    v52 = os_log_type_enabled(v36, type);
    if (!v49)
    {
      if (!v52)
      {
        goto LABEL_170;
      }

      *buf = 136446210;
      v76 = "nw_protocol_http1_replace_input_handler";
      v38 = "%{public}s called with null new_input_protocol, no backtrace";
      goto LABEL_168;
    }

    if (v52)
    {
      *buf = 136446466;
      v76 = "nw_protocol_http1_replace_input_handler";
      v77 = 2082;
      v78 = v49;
      v51 = "%{public}s called with null new_input_protocol, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
LABEL_156:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v76 = "nw_protocol_http1_replace_input_handler";
      LODWORD(v72) = 12;
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v72);
      type = OS_LOG_TYPE_ERROR;
      v73 = 0;
      if (!__nwlog_fault(v35, &type, &v73))
      {
        goto LABEL_170;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v76 = "nw_protocol_http1_replace_input_handler";
        v38 = "%{public}s called with null http1_stream";
        goto LABEL_168;
      }

      if (v73 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v76 = "nw_protocol_http1_replace_input_handler";
        v38 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_168;
      }

      v64 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v65 = gLogObj;
      v66 = type;
      v69 = os_log_type_enabled(gLogObj, type);
      if (v64)
      {
        if (v69)
        {
          *buf = 136446466;
          v76 = "nw_protocol_http1_replace_input_handler";
          v77 = 2082;
          v78 = v64;
          v68 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
          goto LABEL_164;
        }

        goto LABEL_165;
      }

      if (!v69)
      {
LABEL_170:
        if (v35)
        {
          v27 = v35;
          goto LABEL_172;
        }

        return 0;
      }

      *buf = 136446210;
      v76 = "nw_protocol_http1_replace_input_handler";
      v38 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_176;
    }

    v11 = *(handle + 2);
    if (v11)
    {
      v12 = (v11 + 488);
      goto LABEL_18;
    }

    v55 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_http1_get_stream_for_protocol";
    v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (__nwlog_fault(v56, &type, &v73))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v57 = __nwlog_obj();
        v58 = type;
        if (!os_log_type_enabled(v57, type))
        {
          goto LABEL_154;
        }

        *buf = 136446210;
        v76 = "nw_http1_get_stream_for_protocol";
        v59 = "%{public}s called with null handle->http1_connection";
        goto LABEL_153;
      }

      if (v73 != 1)
      {
        v57 = __nwlog_obj();
        v58 = type;
        if (!os_log_type_enabled(v57, type))
        {
          goto LABEL_154;
        }

        *buf = 136446210;
        v76 = "nw_http1_get_stream_for_protocol";
        v59 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_153;
      }

      v62 = __nw_create_backtrace_string();
      v57 = __nwlog_obj();
      v58 = type;
      v63 = os_log_type_enabled(v57, type);
      if (v62)
      {
        if (v63)
        {
          *buf = 136446466;
          v76 = "nw_http1_get_stream_for_protocol";
          v77 = 2082;
          v78 = v62;
          _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v62);
        goto LABEL_154;
      }

      if (v63)
      {
        *buf = 136446210;
        v76 = "nw_http1_get_stream_for_protocol";
        v59 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_153:
        _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0xCu);
      }
    }

LABEL_154:
    if (v56)
    {
      free(v56);
    }

    goto LABEL_156;
  }

  v12 = (handle + 8);
LABEL_18:
  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_156;
  }

  if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v45 = __nwlog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(v13 + 256);
      v47 = *(*(v13 + 248) + 372);
      if (v46)
      {
        LODWORD(v46) = *(v46 + 860);
      }

      v48 = *(v13 + 424);
      *buf = 136448258;
      v76 = "nw_protocol_http1_replace_input_handler";
      v77 = 2082;
      v78 = (v13 + 74);
      v79 = 2080;
      v80 = " ";
      v81 = 1024;
      *v82 = v47;
      *&v82[4] = 1024;
      *&v82[6] = v46;
      v83 = 1024;
      v84 = v48;
      v85 = 2048;
      v86 = v13;
      v87 = 2048;
      v88 = a2;
      v89 = 2048;
      v90 = a3;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream %p with old protocol: %p and new protocol: %p", buf, 0x50u);
    }
  }

  if (a1->default_input_handler != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    default_input_handler = a1->default_input_handler;
    *buf = 136446722;
    v76 = "nw_protocol_http1_replace_input_handler";
    v77 = 2048;
    v78 = default_input_handler;
    v79 = 2048;
    v80 = a2;
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Old input handler does not match (%p != %p)", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (!__nwlog_fault(v15, &type, &v73))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      v18 = a1->default_input_handler;
      *buf = 136446722;
      v76 = "nw_protocol_http1_replace_input_handler";
      v77 = 2048;
      v78 = v18;
      v79 = 2048;
      v80 = a2;
      v19 = "%{public}s Old input handler does not match (%p != %p)";
    }

    else if (v73 == 1)
    {
      v22 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v23 = os_log_type_enabled(gLogObj, type);
      if (v22)
      {
        if (v23)
        {
          v24 = a1->default_input_handler;
          *buf = 136446978;
          v76 = "nw_protocol_http1_replace_input_handler";
          v77 = 2048;
          v78 = v24;
          v79 = 2048;
          v80 = a2;
          v81 = 2082;
          *v82 = v22;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Old input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v22);
LABEL_41:
        if (v15)
        {
          v27 = v15;
LABEL_172:
          free(v27);
          return 0;
        }

        return 0;
      }

      if (!v23)
      {
        goto LABEL_41;
      }

      v26 = a1->default_input_handler;
      *buf = 136446722;
      v76 = "nw_protocol_http1_replace_input_handler";
      v77 = 2048;
      v78 = v26;
      v79 = 2048;
      v80 = a2;
      v19 = "%{public}s Old input handler does not match (%p != %p), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      v25 = a1->default_input_handler;
      *buf = 136446722;
      v76 = "nw_protocol_http1_replace_input_handler";
      v77 = 2048;
      v78 = v25;
      v79 = 2048;
      v80 = a2;
      v19 = "%{public}s Old input handler does not match (%p != %p), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v16, v17, v19, buf, 0x20u);
    goto LABEL_41;
  }

  nw_protocol_set_input_handler(v13, a3);
  v20 = *(v13 + 256);
  if (v20)
  {
    nw_protocol_set_input_handler(v20, a3);
  }

  if (!a3->output_handler)
  {
    nw_protocol_set_output_handler(a3, v13);
  }

  return 1;
}

void ___ZL28nw_http1_add_idle_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke(void *a1)
{
  v241 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if ((*(v2 + 158) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = v4 + 74;
      v6 = *(v4 + 488);
      v7 = *(*(v4 + 480) + 372);
      v8 = *(v4 + 860);
      if (v6)
      {
        LODWORD(v6) = *(v6 + 424);
      }

      v9 = a1[5];
      *buf = 136447746;
      *&buf[4] = "nw_http1_add_idle_connection_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v5;
      *&buf[22] = 2080;
      v236 = " ";
      v237 = 1024;
      *v238 = v7;
      *&v238[4] = 1024;
      *&v238[6] = v8;
      *&v238[10] = 1024;
      *&v238[12] = v6;
      *&v238[16] = 2048;
      *&v238[18] = v9;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> idle connection timed out after %lldms, tearing down", buf, 0x3Cu);
    }

    v2 = a1[4];
  }

  v10 = a1[6];
  if (!v10)
  {
    v141 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_remove_idle_connection";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null http1", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v233[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v11, type, v233))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v142 = __nwlog_obj();
        v143 = type[0];
        if (os_log_type_enabled(v142, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_remove_idle_connection";
          v14 = "%{public}s called with null http1";
LABEL_362:
          v34 = v142;
          v35 = v143;
          v36 = 12;
          goto LABEL_40;
        }
      }

      else if (v233[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v142 = __nwlog_obj();
        v143 = type[0];
        v191 = os_log_type_enabled(v142, type[0]);
        if (backtrace_string)
        {
          if (v191)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v191)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_remove_idle_connection";
          v14 = "%{public}s called with null http1, no backtrace";
          goto LABEL_362;
        }
      }

      else
      {
        v142 = __nwlog_obj();
        v143 = type[0];
        if (os_log_type_enabled(v142, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_remove_idle_connection";
          v14 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_362;
        }
      }
    }

LABEL_41:
    if (!v11)
    {
      goto LABEL_57;
    }

    goto LABEL_42;
  }

  if (v2)
  {
    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v158 = __nwlog_obj();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
      {
        v159 = *(v2 + 488);
        v160 = *(*(v2 + 480) + 372);
        v161 = *(v2 + 860);
        if (v159)
        {
          LODWORD(v159) = *(v159 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v236 = " ";
        v237 = 1024;
        *v238 = v160;
        *&v238[4] = 1024;
        *&v238[6] = v161;
        *&v238[10] = 1024;
        *&v238[12] = v159;
        *&v238[16] = 2048;
        *&v238[18] = v2;
        _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
      }
    }

    if ((*(v2 + 874) & 8) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_http1_remove_idle_connection";
      *&buf[12] = 2048;
      *&buf[14] = v2;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connection %p not in idle list, cannot remove", buf, 22);
      type[0] = OS_LOG_TYPE_ERROR;
      v233[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v11, type, v233))
      {
        goto LABEL_41;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_41;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2048;
        *&buf[14] = v2;
        v14 = "%{public}s connection %p not in idle list, cannot remove";
LABEL_39:
        v34 = v12;
        v35 = v13;
        v36 = 22;
LABEL_40:
        _os_log_impl(&dword_181A37000, v34, v35, v14, buf, v36);
        goto LABEL_41;
      }

      if (v233[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_41;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2048;
        *&buf[14] = v2;
        v14 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
        goto LABEL_39;
      }

      v25 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type[0];
      v26 = os_log_type_enabled(gLogObj, type[0]);
      if (!v25)
      {
        if (!v26)
        {
          goto LABEL_41;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2048;
        *&buf[14] = v2;
        v14 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
        goto LABEL_39;
      }

      if (!v26)
      {
        goto LABEL_28;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http1_remove_idle_connection";
      *&buf[12] = 2048;
      *&buf[14] = v2;
      *&buf[22] = 2082;
      v236 = v25;
      v27 = "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s";
      v28 = v12;
      v29 = v13;
      v30 = 32;
      goto LABEL_27;
    }

    v15 = *(v2 + 592);
    v16 = *(v2 + 600);
    v17 = (v10 + 216);
    if (v15)
    {
      v17 = (v15 + 600);
    }

    *v17 = v16;
    *v16 = v15;
    *(v2 + 592) = 0u;
    v18 = *(v10 + 340);
    *(v10 + 340) = v18 - 1;
    if (v18)
    {
LABEL_51:
      *(v2 + 874) &= ~8u;
      if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v199 = __nwlog_obj();
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
        {
          v200 = *(v2 + 488);
          v201 = *(*(v2 + 480) + 372);
          v202 = *(v2 + 860);
          if (v200)
          {
            LODWORD(v200) = *(v200 + 424);
          }

          v203 = *(v10 + 340);
          *buf = 136448002;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = v2 + 74;
          *&buf[22] = 2080;
          v236 = " ";
          v237 = 1024;
          *v238 = v201;
          *&v238[4] = 1024;
          *&v238[6] = v202;
          *&v238[10] = 1024;
          *&v238[12] = v200;
          *&v238[16] = 2048;
          *&v238[18] = v2;
          v239 = 1024;
          LODWORD(v240) = v203;
          _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
        }
      }

      if (*(v2 + 784))
      {
        if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v207 = __nwlog_obj();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
          {
            v208 = *(v2 + 488);
            v209 = *(*(v2 + 480) + 372);
            v210 = *(v2 + 860);
            if (v208)
            {
              LODWORD(v208) = *(v208 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 74;
            *&buf[22] = 2080;
            v236 = " ";
            v237 = 1024;
            *v238 = v209;
            *&v238[4] = 1024;
            *&v238[6] = v210;
            *&v238[10] = 1024;
            *&v238[12] = v208;
            *&v238[16] = 2048;
            *&v238[18] = v2;
            _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
          }
        }

        nw_queue_cancel_source(*(v2 + 784));
        *(v2 + 784) = 0;
      }

      goto LABEL_57;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = *(v10 + 340);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_idle_connection";
    *&buf[12] = 2082;
    *&buf[14] = "http1->idle_connections_count";
    *&buf[22] = 2048;
    v236 = 1;
    v237 = 2048;
    *v238 = v19;
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v233[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v20, type, v233))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v23 = *(v10 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v236 = 1;
          v237 = 2048;
          *v238 = v23;
          v24 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_47:
          _os_log_impl(&dword_181A37000, v21, v22, v24, buf, 0x2Au);
        }
      }

      else if (v233[0] == OS_LOG_TYPE_INFO)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (v31)
        {
          if (v32)
          {
            v33 = *(v10 + 340);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->idle_connections_count";
            *&buf[22] = 2048;
            v236 = 1;
            v237 = 2048;
            *v238 = v33;
            *&v238[8] = 2082;
            *&v238[10] = v31;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v31);
          goto LABEL_48;
        }

        if (v32)
        {
          v38 = *(v10 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v236 = 1;
          v237 = 2048;
          *v238 = v38;
          v24 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_47;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v37 = *(v10 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v236 = 1;
          v237 = 2048;
          *v238 = v37;
          v24 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_47;
        }
      }
    }

LABEL_48:
    if (v20)
    {
      free(v20);
    }

    *(v10 + 340) = 0;
    goto LABEL_51;
  }

  v154 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_remove_idle_connection";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v154, 16, "%{public}s called with null http1_connection", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v233[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v11, type, v233))
  {
    goto LABEL_41;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v142 = __nwlog_obj();
    v143 = type[0];
    if (os_log_type_enabled(v142, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_remove_idle_connection";
      v14 = "%{public}s called with null http1_connection";
      goto LABEL_362;
    }

    goto LABEL_41;
  }

  if (v233[0] != OS_LOG_TYPE_INFO)
  {
    v142 = __nwlog_obj();
    v143 = type[0];
    if (os_log_type_enabled(v142, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_remove_idle_connection";
      v14 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_362;
    }

    goto LABEL_41;
  }

  v25 = __nw_create_backtrace_string();
  v142 = __nwlog_obj();
  v143 = type[0];
  v196 = os_log_type_enabled(v142, type[0]);
  if (!v25)
  {
    if (v196)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_remove_idle_connection";
      v14 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_362;
    }

    goto LABEL_41;
  }

  if (v196)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http1_remove_idle_connection";
    *&buf[12] = 2082;
    *&buf[14] = v25;
    v27 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
    v28 = v142;
    v29 = v143;
    v30 = 22;
LABEL_27:
    _os_log_impl(&dword_181A37000, v28, v29, v27, buf, v30);
  }

LABEL_28:
  free(v25);
  if (v11)
  {
LABEL_42:
    free(v11);
  }

LABEL_57:
  v39 = a1[4];
  if (v39)
  {
    v40 = *(v39 + 32);
    goto LABEL_59;
  }

  v144 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_get_output_handler";
  LODWORD(v226) = 12;
  v145 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v144, 16, "%{public}s called with null connection", buf, v226);
  type[0] = OS_LOG_TYPE_ERROR;
  v233[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v145, type, v233))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v146 = __nwlog_obj();
      v147 = type[0];
      if (!os_log_type_enabled(v146, type[0]))
      {
        goto LABEL_338;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_output_handler";
      v148 = "%{public}s called with null connection";
LABEL_337:
      _os_log_impl(&dword_181A37000, v146, v147, v148, buf, 0xCu);
      goto LABEL_338;
    }

    if (v233[0] != OS_LOG_TYPE_INFO)
    {
      v146 = __nwlog_obj();
      v147 = type[0];
      if (!os_log_type_enabled(v146, type[0]))
      {
        goto LABEL_338;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_output_handler";
      v148 = "%{public}s called with null connection, backtrace limit exceeded";
      goto LABEL_337;
    }

    v192 = __nw_create_backtrace_string();
    v146 = __nwlog_obj();
    v147 = type[0];
    v193 = os_log_type_enabled(v146, type[0]);
    if (!v192)
    {
      if (!v193)
      {
        goto LABEL_338;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_output_handler";
      v148 = "%{public}s called with null connection, no backtrace";
      goto LABEL_337;
    }

    if (v193)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_output_handler";
      *&buf[12] = 2082;
      *&buf[14] = v192;
      _os_log_impl(&dword_181A37000, v146, v147, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v192);
  }

LABEL_338:
  if (v145)
  {
    free(v145);
  }

  v39 = a1[4];
  if (v39)
  {
    v40 = 0;
    goto LABEL_59;
  }

  v218 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_get_output_protocol";
  LODWORD(v226) = 12;
  v219 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v218, 16, "%{public}s called with null connection", buf, v226);
  type[0] = OS_LOG_TYPE_ERROR;
  v233[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v219, type, v233))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v220 = __nwlog_obj();
      v221 = type[0];
      if (os_log_type_enabled(v220, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_output_protocol";
        v222 = "%{public}s called with null connection";
LABEL_356:
        _os_log_impl(&dword_181A37000, v220, v221, v222, buf, 0xCu);
      }
    }

    else if (v233[0] == OS_LOG_TYPE_INFO)
    {
      v223 = __nw_create_backtrace_string();
      v220 = __nwlog_obj();
      v221 = type[0];
      v224 = os_log_type_enabled(v220, type[0]);
      if (v223)
      {
        if (v224)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_output_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v223;
          _os_log_impl(&dword_181A37000, v220, v221, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v223);
        goto LABEL_357;
      }

      if (v224)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_output_protocol";
        v222 = "%{public}s called with null connection, no backtrace";
        goto LABEL_356;
      }
    }

    else
    {
      v220 = __nwlog_obj();
      v221 = type[0];
      if (os_log_type_enabled(v220, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_output_protocol";
        v222 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_356;
      }
    }
  }

LABEL_357:
  if (v219)
  {
    free(v219);
  }

  v40 = 0;
  v39 = 0;
LABEL_59:
  nw_protocol_output_finished(v40, v39);
  v41 = a1[6];
  if (!v41)
  {
    v149 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    LODWORD(v226) = 12;
    v150 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v149, 16, "%{public}s called with null http1", buf, v226);
    type[0] = OS_LOG_TYPE_ERROR;
    v233[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v150, type, v233))
    {
      goto LABEL_366;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_366;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v153 = "%{public}s called with null http1";
    }

    else if (v233[0] == OS_LOG_TYPE_INFO)
    {
      v194 = __nw_create_backtrace_string();
      v151 = __nwlog_obj();
      v152 = type[0];
      v195 = os_log_type_enabled(v151, type[0]);
      if (v194)
      {
        if (v195)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_tear_down_connection";
          *&buf[12] = 2082;
          *&buf[14] = v194;
          _os_log_impl(&dword_181A37000, v151, v152, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v194);
LABEL_366:
        if (!v150)
        {
          return;
        }

LABEL_367:
        free(v150);
        return;
      }

      if (!v195)
      {
        goto LABEL_366;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v153 = "%{public}s called with null http1, no backtrace";
    }

    else
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_366;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v153 = "%{public}s called with null http1, backtrace limit exceeded";
    }

LABEL_365:
    _os_log_impl(&dword_181A37000, v151, v152, v153, buf, 0xCu);
    goto LABEL_366;
  }

  v42 = a1[4];
  if (v42)
  {
    nw_http_connection_metadata_closed(*(v42 + 768));
    if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v162 = __nwlog_obj();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
      {
        v163 = *(v42 + 488);
        v164 = *(*(v42 + 480) + 372);
        v165 = *(v42 + 860);
        if (v163)
        {
          LODWORD(v163) = *(v163 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v42 + 74;
        *&buf[22] = 2080;
        v236 = " ";
        v237 = 1024;
        *v238 = v164;
        *&v238[4] = 1024;
        *&v238[6] = v165;
        *&v238[10] = 1024;
        *&v238[12] = v163;
        _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing unprocessed_input_frames", buf, 0x32u);
      }
    }

    v43 = (v42 + 616);
    if (gLogDatapath == 1)
    {
      v156 = __nwlog_obj();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v44 = *v43;
    if (*v43)
    {
      *(v44 + 40) = type;
      v45 = *(v42 + 624);
      *type = v44;
      v228 = v45;
      *(v42 + 616) = 0;
      *(v42 + 624) = v43;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v236 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v237) = 0;
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
          v49 = &v228;
        }

        *v49 = v48;
        *v48 = v47;
        *(v46 + 32) = 0;
        *(v46 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v166 = __nwlog_obj();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
      {
        v167 = *(v42 + 488);
        v168 = *(*(v42 + 480) + 372);
        v169 = *(v42 + 860);
        if (v167)
        {
          LODWORD(v167) = *(v167 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v42 + 74;
        *&buf[22] = 2080;
        v236 = " ";
        v237 = 1024;
        *v238 = v168;
        *&v238[4] = 1024;
        *&v238[6] = v169;
        *&v238[10] = 1024;
        *&v238[12] = v167;
        _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing processed_input_frames", buf, 0x32u);
      }
    }

    v50 = (v42 + 632);
    if (gLogDatapath == 1)
    {
      v157 = __nwlog_obj();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v51 = *v50;
    if (*v50)
    {
      *(v51 + 40) = type;
      v52 = *(v42 + 640);
      *type = v51;
      v228 = v52;
      *(v42 + 632) = 0;
      *(v42 + 640) = v50;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v236 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v237) = 0;
      do
      {
        v53 = *type;
        if (!*type)
        {
          break;
        }

        v54 = *(*type + 32);
        v55 = *(*type + 40);
        v56 = (v54 + 40);
        if (!v54)
        {
          v56 = &v228;
        }

        *v56 = v55;
        *v55 = v54;
        *(v53 + 32) = 0;
        *(v53 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v170 = __nwlog_obj();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
      {
        v171 = *(v42 + 488);
        v172 = *(*(v42 + 480) + 372);
        v173 = *(v42 + 860);
        if (v171)
        {
          LODWORD(v171) = *(v171 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v42 + 74;
        *&buf[22] = 2080;
        v236 = " ";
        v237 = 1024;
        *v238 = v172;
        *&v238[4] = 1024;
        *&v238[6] = v173;
        *&v238[10] = 1024;
        *&v238[12] = v171;
        _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removing pending_output_frames", buf, 0x32u);
      }
    }

    *type = MEMORY[0x1E69E9820];
    v228 = 0x40000000;
    v229 = ___ZL29nw_http1_tear_down_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke;
    v230 = &__block_descriptor_tmp_57_42875;
    v231 = v42;
    v57 = *(v42 + 648);
    do
    {
      if (!v57)
      {
        break;
      }

      v58 = *(v57 + 32);
      v59 = v229(type);
      v57 = v58;
    }

    while ((v59 & 1) != 0);
    nw_frame_cache_remove_all((v42 + 696));
    if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v174 = __nwlog_obj();
      if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
      {
        v175 = *(v42 + 488);
        v176 = *(*(v42 + 480) + 372);
        v177 = *(v42 + 860);
        if (v175)
        {
          LODWORD(v175) = *(v175 + 424);
        }

        v178 = *(v42 + 32);
        *buf = 136447746;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v42 + 74;
        *&buf[22] = 2080;
        v236 = " ";
        v237 = 1024;
        *v238 = v176;
        *&v238[4] = 1024;
        *&v238[6] = v177;
        *&v238[10] = 1024;
        *&v238[12] = v175;
        *&v238[16] = 2048;
        *&v238[18] = v178;
        _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> calling remove input handler on output handler %p", buf, 0x3Cu);
      }
    }

    v60 = *(v41 + 336);
    *(v41 + 336) = v60 - 1;
    if (v60)
    {
LABEL_104:
      if ((*(v41 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v179 = __nwlog_obj();
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
        {
          v180 = *(v41 + 372);
          v181 = *(v41 + 336);
          *buf = 136447490;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = v41 + 74;
          *&buf[22] = 2080;
          v236 = " ";
          v237 = 1024;
          *v238 = v180;
          *&v238[4] = 2048;
          *&v238[6] = v42;
          *&v238[14] = 1024;
          *&v238[16] = v181;
          _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed connection %p, now have %u connections", buf, 0x36u);
        }
      }

      if ((*(v42 + 872) & 0x800) == 0)
      {
LABEL_127:
        nw_protocol_remove_input_handler(*(v42 + 32), v42);
        nw_protocol_set_output_handler(v42, 0);
        if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v182 = __nwlog_obj();
          if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
          {
            v183 = *(v42 + 488);
            v184 = *(*(v42 + 480) + 372);
            v185 = *(v42 + 860);
            if (v183)
            {
              LODWORD(v183) = *(v183 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v42 + 74;
            *&buf[22] = 2080;
            v236 = " ";
            v237 = 1024;
            *v238 = v184;
            *&v238[4] = 1024;
            *&v238[6] = v185;
            *&v238[10] = 1024;
            *&v238[12] = v183;
            *&v238[16] = 2048;
            *&v238[18] = v42;
            _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> destroying %p", buf, 0x3Cu);
          }
        }

        v84 = *(v42 + 760);
        if (v84)
        {
          v85 = *(v42 + 752);
          if (v85)
          {
            os_release(v85);
            v84 = *(v42 + 760);
          }
        }

        *(v42 + 752) = 0;
        *(v42 + 760) = v84 | 1;
        v86 = *(v42 + 744);
        if (v86)
        {
          v87 = *(v42 + 736);
          if (v87)
          {
            os_release(v87);
            v86 = *(v42 + 744);
          }
        }

        *(v42 + 736) = 0;
        *(v42 + 744) = v86 | 1;
        v88 = *(v42 + 488);
        if (!v88 || (v89 = *(v88 + 256), v89 != v42))
        {
LABEL_137:
          *(v42 + 488) = 0;
          if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v186 = __nwlog_obj();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
            {
              v187 = *(v42 + 488);
              v188 = *(*(v42 + 480) + 372);
              v189 = *(v42 + 860);
              if (v187)
              {
                LODWORD(v187) = *(v187 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v42 + 74;
              *&buf[22] = 2080;
              v236 = " ";
              v237 = 1024;
              *v238 = v188;
              *&v238[4] = 1024;
              *&v238[6] = v189;
              *&v238[10] = 1024;
              *&v238[12] = v187;
              _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing frame arrays", buf, 0x32u);
            }
          }

          if (!*(v42 + 680))
          {
LABEL_161:
            if (!*(v42 + 664))
            {
LABEL_177:
              nw_frame_cache_destroy((v42 + 696));
              v116 = *(v42 + 528);
              if (v116)
              {
                v117 = *(v42 + 544);
                if (v117)
                {
                  nw_association_unregister(v116, v117);
                }
              }

              v118 = *(v42 + 800);
              if (v118)
              {
                free(v118);
                *(v42 + 800) = 0;
              }

              *(v42 + 840) = 0;
              v119 = *(v42 + 808);
              if (v119)
              {
                free(v119);
                *(v42 + 808) = 0;
              }

              *(v42 + 844) = 0;
              v120 = *(v42 + 816);
              if (v120)
              {
                free(v120);
                *(v42 + 816) = 0;
              }

              *(v42 + 848) = 0;
              v121 = *(v42 + 824);
              if (v121)
              {
                free(v121);
                *(v42 + 824) = 0;
              }

              *(v42 + 852) = 0;
              v122 = *(v42 + 832);
              if (v122)
              {
                free(v122);
                *(v42 + 832) = 0;
              }

              *(v42 + 856) = 0;
              (*(*(v42 + 608) + 16))();
              v123 = *(v42 + 608);
              if (v123)
              {
                _Block_release(v123);
                *(v42 + 608) = 0;
              }

              nw_http1_connection::~nw_http1_connection(v42);
              free(v124);
              if (!*(v41 + 336) && !*(v41 + 344))
              {
                nw_protocol_http1_destroy(v41, v41);
              }

              return;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_destroy";
            LODWORD(v226) = 12;
            v106 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s input frame array is not empty when http1 connection is destroyed", buf, v226);
            v233[0] = OS_LOG_TYPE_ERROR;
            v232 = 0;
            if (__nwlog_fault(v106, v233, &v232))
            {
              if (v233[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v107 = gLogObj;
                v108 = v233[0];
                if (!os_log_type_enabled(gLogObj, v233[0]))
                {
                  goto LABEL_175;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v109 = "%{public}s input frame array is not empty when http1 connection is destroyed";
LABEL_173:
                v114 = v107;
                v115 = v108;
LABEL_174:
                _os_log_impl(&dword_181A37000, v114, v115, v109, buf, 0xCu);
                goto LABEL_175;
              }

              if (v232 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v107 = gLogObj;
                v108 = v233[0];
                if (!os_log_type_enabled(gLogObj, v233[0]))
                {
                  goto LABEL_175;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v109 = "%{public}s input frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
                goto LABEL_173;
              }

              v110 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v111 = gLogObj;
              v112 = v233[0];
              v113 = os_log_type_enabled(gLogObj, v233[0]);
              if (v110)
              {
                if (v113)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_destroy";
                  *&buf[12] = 2082;
                  *&buf[14] = v110;
                  _os_log_impl(&dword_181A37000, v111, v112, "%{public}s input frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v110);
                goto LABEL_175;
              }

              if (v113)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v109 = "%{public}s input frame array is not empty when http1 connection is destroyed, no backtrace";
                v114 = v111;
                v115 = v112;
                goto LABEL_174;
              }
            }

LABEL_175:
            if (v106)
            {
              free(v106);
            }

            goto LABEL_177;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_destroy";
          LODWORD(v226) = 12;
          v90 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s output frame array is not empty when http1 connection is destroyed", buf, v226);
          v233[0] = OS_LOG_TYPE_ERROR;
          v232 = 0;
          if (__nwlog_fault(v90, v233, &v232))
          {
            if (v233[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v91 = gLogObj;
              v92 = v233[0];
              if (!os_log_type_enabled(gLogObj, v233[0]))
              {
                goto LABEL_159;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v93 = "%{public}s output frame array is not empty when http1 connection is destroyed";
LABEL_157:
              v104 = v91;
              v105 = v92;
LABEL_158:
              _os_log_impl(&dword_181A37000, v104, v105, v93, buf, 0xCu);
              goto LABEL_159;
            }

            if (v232 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v91 = gLogObj;
              v92 = v233[0];
              if (!os_log_type_enabled(gLogObj, v233[0]))
              {
                goto LABEL_159;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v93 = "%{public}s output frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
              goto LABEL_157;
            }

            v94 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v95 = gLogObj;
            v96 = v233[0];
            v97 = os_log_type_enabled(gLogObj, v233[0]);
            if (v94)
            {
              if (v97)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_destroy";
                *&buf[12] = 2082;
                *&buf[14] = v94;
                _os_log_impl(&dword_181A37000, v95, v96, "%{public}s output frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v94);
              goto LABEL_159;
            }

            if (v97)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v93 = "%{public}s output frame array is not empty when http1 connection is destroyed, no backtrace";
              v104 = v95;
              v105 = v96;
              goto LABEL_158;
            }
          }

LABEL_159:
          if (v90)
          {
            free(v90);
          }

          goto LABEL_161;
        }

        if (*(v88 + 248))
        {
          if (v89[61] == v88)
          {
            if ((*(v88 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v125 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v126 = *(v88 + 256);
                v127 = *(*(v88 + 248) + 372);
                if (v126)
                {
                  LODWORD(v126) = *(v126 + 860);
                }

                v128 = *(v88 + 424);
                *buf = 136448002;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2082;
                *&buf[14] = v88 + 74;
                *&buf[22] = 2080;
                v236 = " ";
                v237 = 1024;
                *v238 = v127;
                *&v238[4] = 1024;
                *&v238[6] = v126;
                *&v238[10] = 1024;
                *&v238[12] = v128;
                *&v238[16] = 2048;
                *&v238[18] = v88;
                v239 = 2048;
                v240 = v42;
                _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
              }
            }

            v129 = v89 + 79;
            if (gLogDatapath == 1)
            {
              v225 = __nwlog_obj();
              if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              }
            }

            v130 = *v129;
            if (*v129)
            {
              *(v130 + 40) = v233;
              v131 = v89[80];
              *v233 = v130;
              v234 = v131;
              v89[79] = 0;
              v89[80] = v129;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
              v236 = &__block_descriptor_tmp_21_49595;
              LOBYTE(v237) = 0;
              do
              {
                v132 = *v233;
                if (!*v233)
                {
                  break;
                }

                v133 = *(*v233 + 32);
                v134 = *(*v233 + 40);
                v135 = (v133 + 40);
                if (!v133)
                {
                  v135 = &v234;
                }

                *v135 = v134;
                *v134 = v133;
                *(v132 + 32) = 0;
                *(v132 + 40) = 0;
              }

              while (((*&buf[16])(buf) & 1) != 0);
            }

            *(v88 + 256) = 0;
            v89[61] = 0;
            nw_protocol_set_output_handler(v88, 0);
            nw_protocol_set_input_handler(v89, 0);
            goto LABEL_137;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = v89[61];
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v42;
          *&buf[22] = 2048;
          v236 = v88;
          v237 = 2048;
          *v238 = v98;
          LODWORD(v226) = 42;
          v99 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p does not already have stream %p, has %p", buf, v226);
          v233[0] = OS_LOG_TYPE_ERROR;
          v232 = 0;
          if (__nwlog_fault(v99, v233, &v232))
          {
            if (v233[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v100 = gLogObj;
              v101 = v233[0];
              if (!os_log_type_enabled(gLogObj, v233[0]))
              {
                goto LABEL_223;
              }

              v102 = v89[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v42;
              *&buf[22] = 2048;
              v236 = v88;
              v237 = 2048;
              *v238 = v102;
              v103 = "%{public}s Connection %p does not already have stream %p, has %p";
              goto LABEL_222;
            }

            if (v232 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v100 = gLogObj;
              v101 = v233[0];
              if (!os_log_type_enabled(gLogObj, v233[0]))
              {
                goto LABEL_223;
              }

              v139 = v89[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v42;
              *&buf[22] = 2048;
              v236 = v88;
              v237 = 2048;
              *v238 = v139;
              v103 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
              goto LABEL_222;
            }

            v136 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v100 = gLogObj;
            v101 = v233[0];
            v137 = os_log_type_enabled(gLogObj, v233[0]);
            if (v136)
            {
              if (v137)
              {
                v138 = v89[61];
                *buf = 136447234;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2048;
                *&buf[14] = v42;
                *&buf[22] = 2048;
                v236 = v88;
                v237 = 2048;
                *v238 = v138;
                *&v238[8] = 2082;
                *&v238[10] = v136;
                _os_log_impl(&dword_181A37000, v100, v101, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v136);
              goto LABEL_223;
            }

            if (v137)
            {
              v140 = v89[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v42;
              *&buf[22] = 2048;
              v236 = v88;
              v237 = 2048;
              *v238 = v140;
              v103 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
LABEL_222:
              _os_log_impl(&dword_181A37000, v100, v101, v103, buf, 0x2Au);
            }
          }

LABEL_223:
          if (v99)
          {
            free(v99);
          }

          goto LABEL_137;
        }

        v211 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        LODWORD(v226) = 12;
        v212 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v211, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v226);
        v233[0] = OS_LOG_TYPE_ERROR;
        v232 = 0;
        if (__nwlog_fault(v212, v233, &v232))
        {
          if (v233[0] == OS_LOG_TYPE_FAULT)
          {
            v213 = __nwlog_obj();
            v214 = v233[0];
            if (!os_log_type_enabled(v213, v233[0]))
            {
              goto LABEL_375;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v215 = "%{public}s called with null http1_stream->protocol_http1";
            goto LABEL_374;
          }

          if (v232 != 1)
          {
            v213 = __nwlog_obj();
            v214 = v233[0];
            if (!os_log_type_enabled(v213, v233[0]))
            {
              goto LABEL_375;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v215 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            goto LABEL_374;
          }

          v216 = __nw_create_backtrace_string();
          v213 = __nwlog_obj();
          v214 = v233[0];
          v217 = os_log_type_enabled(v213, v233[0]);
          if (v216)
          {
            if (v217)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2082;
              *&buf[14] = v216;
              _os_log_impl(&dword_181A37000, v213, v214, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v216);
            goto LABEL_375;
          }

          if (v217)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v215 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
LABEL_374:
            _os_log_impl(&dword_181A37000, v213, v214, v215, buf, 0xCu);
          }
        }

LABEL_375:
        if (v212)
        {
          free(v212);
        }

        goto LABEL_137;
      }

      v72 = *(v41 + 368);
      *(v41 + 368) = v72 - 1;
      if (v72)
      {
LABEL_125:
        if ((*(v41 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v204 = __nwlog_obj();
          if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
          {
            v205 = *(v41 + 372);
            v206 = *(v41 + 368) + *(v41 + 364);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = v41 + 74;
            *&buf[22] = 2080;
            v236 = " ";
            v237 = 1024;
            *v238 = v205;
            *&v238[4] = 1024;
            *&v238[6] = v206;
            *&v238[10] = 2048;
            *&v238[12] = v42;
            _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> decreased connection pool width to %u after removing non-reusable connection %p", buf, 0x36u);
          }
        }

        goto LABEL_127;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v73 = *(v41 + 368);
      *buf = 136446978;
      *&buf[4] = "nw_http1_remove_connection";
      *&buf[12] = 2082;
      *&buf[14] = "http1->nonresuable_connections";
      *&buf[22] = 2048;
      v236 = 1;
      v237 = 2048;
      *v238 = v73;
      LODWORD(v226) = 42;
      v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v226);
      v233[0] = OS_LOG_TYPE_ERROR;
      v232 = 0;
      if (__nwlog_fault(v74, v233, &v232))
      {
        if (v233[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v75 = gLogObj;
          v76 = v233[0];
          if (os_log_type_enabled(gLogObj, v233[0]))
          {
            v77 = *(v41 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v236 = 1;
            v237 = 2048;
            *v238 = v77;
            v78 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_121:
            _os_log_impl(&dword_181A37000, v75, v76, v78, buf, 0x2Au);
          }
        }

        else if (v232 == 1)
        {
          v79 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v75 = gLogObj;
          v76 = v233[0];
          v80 = os_log_type_enabled(gLogObj, v233[0]);
          if (v79)
          {
            if (v80)
            {
              v81 = *(v41 + 368);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_connection";
              *&buf[12] = 2082;
              *&buf[14] = "http1->nonresuable_connections";
              *&buf[22] = 2048;
              v236 = 1;
              v237 = 2048;
              *v238 = v81;
              *&v238[8] = 2082;
              *&v238[10] = v79;
              _os_log_impl(&dword_181A37000, v75, v76, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v79);
            goto LABEL_122;
          }

          if (v80)
          {
            v83 = *(v41 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v236 = 1;
            v237 = 2048;
            *v238 = v83;
            v78 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_121;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v75 = gLogObj;
          v76 = v233[0];
          if (os_log_type_enabled(gLogObj, v233[0]))
          {
            v82 = *(v41 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v236 = 1;
            v237 = 2048;
            *v238 = v82;
            v78 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      if (v74)
      {
        free(v74);
      }

      *(v41 + 368) = 0;
      goto LABEL_125;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v61 = *(v41 + 336);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_connection";
    *&buf[12] = 2082;
    *&buf[14] = "http1->connections_count";
    *&buf[22] = 2048;
    v236 = 1;
    v237 = 2048;
    *v238 = v61;
    LODWORD(v226) = 42;
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v226);
    v233[0] = OS_LOG_TYPE_ERROR;
    v232 = 0;
    if (__nwlog_fault(v62, v233, &v232))
    {
      if (v233[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        v64 = v233[0];
        if (os_log_type_enabled(gLogObj, v233[0]))
        {
          v65 = *(v41 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v236 = 1;
          v237 = 2048;
          *v238 = v65;
          v66 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_100:
          _os_log_impl(&dword_181A37000, v63, v64, v66, buf, 0x2Au);
        }
      }

      else if (v232 == 1)
      {
        v67 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        v64 = v233[0];
        v68 = os_log_type_enabled(gLogObj, v233[0]);
        if (v67)
        {
          if (v68)
          {
            v69 = *(v41 + 336);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->connections_count";
            *&buf[22] = 2048;
            v236 = 1;
            v237 = 2048;
            *v238 = v69;
            *&v238[8] = 2082;
            *&v238[10] = v67;
            _os_log_impl(&dword_181A37000, v63, v64, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v67);
          goto LABEL_101;
        }

        if (v68)
        {
          v71 = *(v41 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v236 = 1;
          v237 = 2048;
          *v238 = v71;
          v66 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_100;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        v64 = v233[0];
        if (os_log_type_enabled(gLogObj, v233[0]))
        {
          v70 = *(v41 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v236 = 1;
          v237 = 2048;
          *v238 = v70;
          v66 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_100;
        }
      }
    }

LABEL_101:
    if (v62)
    {
      free(v62);
    }

    *(v41 + 336) = 0;
    goto LABEL_104;
  }

  v155 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_tear_down_connection";
  LODWORD(v226) = 12;
  v150 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v155, 16, "%{public}s called with null http1_connection", buf, v226);
  type[0] = OS_LOG_TYPE_ERROR;
  v233[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v150, type, v233))
  {
    goto LABEL_366;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v151 = __nwlog_obj();
    v152 = type[0];
    if (!os_log_type_enabled(v151, type[0]))
    {
      goto LABEL_366;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    v153 = "%{public}s called with null http1_connection";
    goto LABEL_365;
  }

  if (v233[0] != OS_LOG_TYPE_INFO)
  {
    v151 = __nwlog_obj();
    v152 = type[0];
    if (!os_log_type_enabled(v151, type[0]))
    {
      goto LABEL_366;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    v153 = "%{public}s called with null http1_connection, backtrace limit exceeded";
    goto LABEL_365;
  }

  v197 = __nw_create_backtrace_string();
  v151 = __nwlog_obj();
  v152 = type[0];
  v198 = os_log_type_enabled(v151, type[0]);
  if (!v197)
  {
    if (!v198)
    {
      goto LABEL_366;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    v153 = "%{public}s called with null http1_connection, no backtrace";
    goto LABEL_365;
  }

  if (v198)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http1_tear_down_connection";
    *&buf[12] = 2082;
    *&buf[14] = v197;
    _os_log_impl(&dword_181A37000, v151, v152, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v197);
  if (v150)
  {
    goto LABEL_367;
  }
}

uint64_t nw_protocol_http1_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v365 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null protocol", buf, 12);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, aBlock, v334))
    {
      goto LABEL_576;
    }

    if (aBlock[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = aBlock[0];
      if (!os_log_type_enabled(v67, aBlock[0]))
      {
        goto LABEL_576;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v69 = "%{public}s called with null protocol";
    }

    else
    {
      if (v334[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v67 = __nwlog_obj();
        v68 = aBlock[0];
        v89 = os_log_type_enabled(v67, aBlock[0]);
        if (!backtrace_string)
        {
          if (!v89)
          {
            goto LABEL_576;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v69 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_575;
        }

        if (v89)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_576;
      }

      v67 = __nwlog_obj();
      v68 = aBlock[0];
      if (!os_log_type_enabled(v67, aBlock[0]))
      {
        goto LABEL_576;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v69 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_575:
    _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0xCu);
    goto LABEL_576;
  }

  handle = a1->handle;
  if (!handle)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null handle", buf, 12);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, aBlock, v334))
    {
      goto LABEL_576;
    }

    if (aBlock[0] == 17)
    {
      v67 = __nwlog_obj();
      v68 = aBlock[0];
      if (!os_log_type_enabled(v67, aBlock[0]))
      {
        goto LABEL_576;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v69 = "%{public}s called with null handle";
    }

    else
    {
      if (v334[0] == OS_LOG_TYPE_INFO)
      {
        v90 = __nw_create_backtrace_string();
        v67 = __nwlog_obj();
        v68 = aBlock[0];
        v91 = os_log_type_enabled(v67, aBlock[0]);
        if (!v90)
        {
          if (!v91)
          {
            goto LABEL_576;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v69 = "%{public}s called with null handle, no backtrace";
          goto LABEL_575;
        }

        if (v91)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v90;
          _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v90);
        if (!v66)
        {
LABEL_578:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          LODWORD(v330) = 12;
          v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v330);
          aBlock[0] = 16;
          v334[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v72, aBlock, v334))
          {
            if (aBlock[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v73 = gLogObj;
              v74 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_add_input_handler";
                v75 = "%{public}s called with null http1";
                goto LABEL_589;
              }
            }

            else if (v334[0] == OS_LOG_TYPE_INFO)
            {
              v324 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v325 = gLogObj;
              v326 = aBlock[0];
              v327 = os_log_type_enabled(gLogObj, aBlock[0]);
              if (v324)
              {
                if (v327)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_http1_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v324;
                  _os_log_impl(&dword_181A37000, v325, v326, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v324);
                goto LABEL_591;
              }

              if (v327)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_add_input_handler";
                v75 = "%{public}s called with null http1, no backtrace";
                v328 = v325;
                v329 = v326;
                goto LABEL_590;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v73 = gLogObj;
              v74 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_add_input_handler";
                v75 = "%{public}s called with null http1, backtrace limit exceeded";
                goto LABEL_589;
              }
            }
          }

          goto LABEL_591;
        }

LABEL_577:
        free(v66);
        goto LABEL_578;
      }

      v67 = __nwlog_obj();
      v68 = aBlock[0];
      if (!os_log_type_enabled(v67, aBlock[0]))
      {
        goto LABEL_576;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v69 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    goto LABEL_575;
  }

  v4 = a2;
  v5 = handle[6];
  if (v5 == 1)
  {
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_578;
    }

    v6 = *(handle + 2);
    if (v6)
    {
      handle = (v6 + 480);
      goto LABEL_10;
    }

    v109 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v66, aBlock, v334))
    {
      if (aBlock[0] == 17)
      {
        v67 = __nwlog_obj();
        v68 = aBlock[0];
        if (!os_log_type_enabled(v67, aBlock[0]))
        {
          goto LABEL_576;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v69 = "%{public}s called with null handle->http1_connection";
        goto LABEL_575;
      }

      if (v334[0] != OS_LOG_TYPE_INFO)
      {
        v67 = __nwlog_obj();
        v68 = aBlock[0];
        if (!os_log_type_enabled(v67, aBlock[0]))
        {
          goto LABEL_576;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v69 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_575;
      }

      v118 = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v68 = aBlock[0];
      v121 = os_log_type_enabled(v67, aBlock[0]);
      if (!v118)
      {
        if (!v121)
        {
          goto LABEL_576;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v69 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_575;
      }

      if (v121)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v118;
        v120 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_194;
      }

      goto LABEL_195;
    }

LABEL_576:
    if (!v66)
    {
      goto LABEL_578;
    }

    goto LABEL_577;
  }

  v7 = *(handle + 1);
  if (!v7)
  {
    v108 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v66, aBlock, v334))
    {
      goto LABEL_576;
    }

    if (aBlock[0] != 17)
    {
      if (v334[0] != OS_LOG_TYPE_INFO)
      {
        v67 = __nwlog_obj();
        v68 = aBlock[0];
        if (!os_log_type_enabled(v67, aBlock[0]))
        {
          goto LABEL_576;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v69 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_575;
      }

      v118 = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v68 = aBlock[0];
      v119 = os_log_type_enabled(v67, aBlock[0]);
      if (!v118)
      {
        if (!v119)
        {
          goto LABEL_576;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v69 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_575;
      }

      if (v119)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v118;
        v120 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_194:
        _os_log_impl(&dword_181A37000, v67, v68, v120, buf, 0x16u);
      }

LABEL_195:
      free(v118);
      if (!v66)
      {
        goto LABEL_578;
      }

      goto LABEL_577;
    }

    v67 = __nwlog_obj();
    v68 = aBlock[0];
    if (!os_log_type_enabled(v67, aBlock[0]))
    {
      goto LABEL_576;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v69 = "%{public}s called with null handle->http1_stream";
    goto LABEL_575;
  }

  handle = (v7 + 248);
LABEL_10:
  v8 = *handle;
  if (!*handle)
  {
    goto LABEL_578;
  }

  if (!a2)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_add_input_handler";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null input_protocol", buf, 12);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v72, aBlock, v334))
    {
      if (aBlock[0] == 17)
      {
        v73 = __nwlog_obj();
        v74 = aBlock[0];
        if (os_log_type_enabled(v73, aBlock[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          v75 = "%{public}s called with null input_protocol";
LABEL_589:
          v328 = v73;
          v329 = v74;
LABEL_590:
          _os_log_impl(&dword_181A37000, v328, v329, v75, buf, 0xCu);
        }
      }

      else if (v334[0] == OS_LOG_TYPE_INFO)
      {
        v92 = __nw_create_backtrace_string();
        v73 = __nwlog_obj();
        v74 = aBlock[0];
        v93 = os_log_type_enabled(v73, aBlock[0]);
        if (v92)
        {
          if (v93)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v92;
            _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v92);
          goto LABEL_591;
        }

        if (v93)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          v75 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_589;
        }
      }

      else
      {
        v73 = __nwlog_obj();
        v74 = aBlock[0];
        if (os_log_type_enabled(v73, aBlock[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          v75 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_589;
        }
      }
    }

LABEL_591:
    if (v72)
    {
      free(v72);
    }

    return 0;
  }

  v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v8 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v81 = __nwlog_obj();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      v82 = *(v8 + 372);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http1_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v8 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v82;
      *&buf[38] = 2048;
      *&buf[40] = v4;
      _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with input_protocol %p", buf, 0x30u);
    }
  }

  parameters = nw_protocol_get_parameters(v4);
  v11 = *(v8 + 264);
  v332 = v4;
  if (!v11)
  {
    nw_protocol_plugin_name_set_name(v8 + 64, a1, parameters);
    v12 = _nw_parameters_shallow_copy(parameters, 1);
    v13 = nw_parameters_copy_protocol_options_legacy(v12, v8);
    v14 = v13;
    if (v13)
    {
      is_websocket = nw_http_messaging_options_is_websocket(v13);
      if (is_websocket)
      {
        v16 = 8;
      }

      else
      {
        v16 = 0;
      }

      *(v8 + 376) = *(v8 + 376) & 0xF7 | v16;
      if (is_websocket)
      {
        connection_pool_width = 1;
      }

      else
      {
        connection_pool_width = nw_http1_get_connection_pool_width(v14);
      }

      *(v8 + 364) = connection_pool_width;
      *(v8 + 192) = 1000 * nw_http1_get_idle_timeout(v14);
      *(v8 + 372) = nw_protocol_get_next_instance_id();
      top_id = _nw_protocol_options_get_top_id(v14);
      if ((*(v8 + 158) & 1) == 0)
      {
        v21 = top_id;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v23 = *(v8 + 372);
          *buf = 136447490;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v23;
          *&buf[38] = 1024;
          *&buf[40] = v23;
          *&buf[44] = 1024;
          *&buf[46] = v21;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created HTTP/1 and assigned instance ID: %u from C%u", buf, 0x32u);
        }
      }

      v24 = nw_parameters_copy_default_protocol_stack(v12);
      v25 = _nw_protocol_options_copy(v14);
      if (nw_protocol_copy_http1_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
      }

      v26 = nw_protocol_copy_http1_definition_http1_definition;
      nw_parameters_set_protocol_instance(v25, v27, v8);
      if (v26)
      {
        os_release(v26);
      }

      nw_protocol_stack_replace_protocol_with_handle(v24, v8, v25);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      buf[24] = 0;
      iterate_block[0] = MEMORY[0x1E69E9820];
      iterate_block[1] = 0x40000000;
      iterate_block[2] = ___ZL35nw_protocol_http1_add_input_handlerP11nw_protocolS0__block_invoke;
      iterate_block[3] = &unk_1E6A32A20;
      iterate_block[4] = buf;
      iterate_block[5] = v8;
      nw_protocol_stack_iterate_application_protocols(v24, iterate_block);
      _Block_object_dispose(buf, 8);
      v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      if (v25)
      {
        os_release(v25);
      }

      v4 = v332;
      if (v24)
      {
        os_release(v24);
      }
    }

    else if ((*(v8 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v19 = *(v8 + 372);
        *buf = 136447490;
        *&buf[4] = "nw_protocol_http1_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v19;
        *&buf[38] = 2048;
        *&buf[40] = v12;
        *&buf[48] = 2048;
        *&buf[50] = parameters;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> failed to find http1 options in new parameters %p, copy of %p", buf, 0x3Au);
      }
    }

    v28 = *(v8 + 272);
    if (v28)
    {
      v29 = *(v8 + 264);
      if (v29)
      {
        os_release(v29);
        v28 = *(v8 + 272);
      }
    }

    *(v8 + 264) = v12;
    *(v8 + 272) = v28 | 1;
    if (v14)
    {
      os_release(v14);
    }
  }

  proxy_applied = nw_parameters_get_proxy_applied(parameters);
  v31 = 296;
  if ((v11 == 0) | proxy_applied & 1)
  {
    v31 = 280;
  }

  v32 = *(v8 + v31);
  if (!v32)
  {
    v76 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s called with null endpoint", buf, 12);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v77, aBlock, v334))
    {
      goto LABEL_212;
    }

    if (aBlock[0] != 17)
    {
      if (v334[0] != OS_LOG_TYPE_INFO)
      {
        v78 = __nwlog_obj();
        v79 = aBlock[0];
        if (!os_log_type_enabled(v78, aBlock[0]))
        {
          goto LABEL_212;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_create";
        v80 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_211;
      }

      v94 = __nw_create_backtrace_string();
      v78 = __nwlog_obj();
      v79 = aBlock[0];
      v95 = os_log_type_enabled(v78, aBlock[0]);
      if (!v94)
      {
        v4 = v332;
        if (!v95)
        {
          goto LABEL_212;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_create";
        v80 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_211;
      }

      if (v95)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_create";
        *&buf[12] = 2082;
        *&buf[14] = v94;
        v96 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_148:
        _os_log_impl(&dword_181A37000, v78, v79, v96, buf, 0x16u);
      }

LABEL_149:
      free(v94);
      v4 = v332;
      goto LABEL_212;
    }

    v78 = __nwlog_obj();
    v79 = aBlock[0];
    if (!os_log_type_enabled(v78, aBlock[0]))
    {
      goto LABEL_212;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v80 = "%{public}s called with null endpoint";
LABEL_211:
    _os_log_impl(&dword_181A37000, v78, v79, v80, buf, 0xCu);
LABEL_212:
    if (v77)
    {
      free(v77);
    }

    v34 = 0;
    v60 = a1->handle;
    if (v60)
    {
LABEL_83:
      if (v60[6] == 2)
      {
        if (v34)
        {
          if (parameters)
          {
            v61 = parameters;
            v62 = _nw_parameters_copy_protocol_options_with_level();

            if (v62)
            {
              if ((*(v34 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v110 = __nwlog_obj();
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                {
                  v111 = *(v34 + 256);
                  v112 = *(*(v34 + 248) + 372);
                  if (v111)
                  {
                    LODWORD(v111) = *(v111 + 860);
                  }

                  v113 = *(v34 + 424);
                  *buf = 136448770;
                  *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                  *&buf[12] = 2082;
                  *&buf[14] = v34 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v112;
                  *&buf[38] = 1024;
                  *&buf[40] = v111;
                  *&buf[44] = 1024;
                  *&buf[46] = v113;
                  *&buf[50] = 2048;
                  *&buf[52] = v34;
                  *&buf[60] = 2048;
                  *&buf[62] = v8;
                  *&buf[70] = 2048;
                  *&buf[72] = a1;
                  *v359 = 2048;
                  *&v359[2] = v61;
                  v360 = 2048;
                  v361 = v62;
                  _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                  v4 = v332;
                }
              }

              if (nw_protocol_copy_http1_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
              }

              v63 = nw_protocol_copy_http1_definition_http1_definition;
              v64 = v62;
              _nw_protocol_options_set_instance(v64, v8);

              if (v63)
              {
                os_release(v63);
              }

              os_release(v64);
            }

            goto LABEL_232;
          }

          v103 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          LODWORD(v330) = 12;
          v104 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s called with null parameters", buf, v330);
          aBlock[0] = 16;
          v334[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v104, aBlock, v334))
          {
            if (aBlock[0] == 17)
            {
              v105 = __nwlog_obj();
              v106 = aBlock[0];
              if (!os_log_type_enabled(v105, aBlock[0]))
              {
                goto LABEL_569;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              v107 = "%{public}s called with null parameters";
              goto LABEL_568;
            }

            if (v334[0] != OS_LOG_TYPE_INFO)
            {
              v105 = __nwlog_obj();
              v106 = aBlock[0];
              if (!os_log_type_enabled(v105, aBlock[0]))
              {
                goto LABEL_569;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              v107 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_568;
            }

            v116 = __nw_create_backtrace_string();
            v105 = __nwlog_obj();
            v106 = aBlock[0];
            v117 = os_log_type_enabled(v105, aBlock[0]);
            if (v116)
            {
              if (v117)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                *&buf[12] = 2082;
                *&buf[14] = v116;
                _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v116);
              v4 = v332;
              goto LABEL_569;
            }

            v4 = v332;
            if (v117)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              v107 = "%{public}s called with null parameters, no backtrace";
LABEL_568:
              _os_log_impl(&dword_181A37000, v105, v106, v107, buf, 0xCu);
            }
          }

LABEL_569:
          if (v104)
          {
            free(v104);
          }

LABEL_232:
          nw_protocol_set_input_handler(v34, v4);
          *v34 = *v4->flow_id;
          if (v4->output_handler)
          {
            if ((*(v8 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v129 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v130 = *(v8 + 372);
                *buf = 136446978;
                *&buf[4] = "nw_http1_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v8 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v130;
                _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Output handler already exists for protocol being added as input handler", buf, 0x26u);
              }
            }
          }

          else
          {
            nw_protocol_set_output_handler(v4, v34);
          }

          v131 = *(v34 + 320);
          if (v131)
          {
            v132 = v131;
            v133 = _nw_parameters_copy_protocol_options_with_level();

            if (v133)
            {
              if ((*(v34 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v299 = __nwlog_obj();
                if (os_log_type_enabled(v299, OS_LOG_TYPE_DEBUG))
                {
                  v300 = *(v34 + 256);
                  v301 = *(*(v34 + 248) + 372);
                  if (v300)
                  {
                    LODWORD(v300) = *(v300 + 860);
                  }

                  v302 = *(v34 + 424);
                  *buf = 136448770;
                  *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                  *&buf[12] = 2082;
                  *&buf[14] = v34 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v301;
                  *&buf[38] = 1024;
                  *&buf[40] = v300;
                  *&buf[44] = 1024;
                  *&buf[46] = v302;
                  *&buf[50] = 2048;
                  *&buf[52] = v34;
                  *&buf[60] = 2048;
                  *&buf[62] = v34;
                  *&buf[70] = 2048;
                  *&buf[72] = v8;
                  *v359 = 2048;
                  *&v359[2] = v132;
                  v360 = 2048;
                  v361 = v133;
                  _os_log_impl(&dword_181A37000, v299, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                  v4 = v332;
                }
              }

              if (nw_protocol_copy_http1_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
              }

              v134 = nw_protocol_copy_http1_definition_http1_definition;
              v135 = v133;
              _nw_protocol_options_set_instance(v135, v34);

              if (v134)
              {
                os_release(v134);
              }

              os_release(v135);
            }

            v136 = nw_parameters_copy_default_protocol_stack(*(v34 + 320));
            v349[0] = 0;
            v349[1] = v349;
            v349[2] = 0x2000000000;
            v350 = 0;
            *v353 = 0;
            *&v353[8] = v353;
            *&v353[16] = 0x3802000000;
            v354 = __Block_byref_object_copy__42960;
            v355 = __Block_byref_object_dispose__42961;
            object = 0;
            v357 |= 1u;
            *v342 = MEMORY[0x1E69E9820];
            v343 = 0x40000000;
            v344 = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke;
            v345 = &unk_1E6A32A70;
            v346 = v349;
            v347 = v353;
            v348 = v34;
            nw_protocol_stack_iterate_application_protocols(v136, v342);
            v137 = *(v34 + 320);
            if (*(*&v353[8] + 40) || (has_transforms = nw_parameters_has_transforms(v137), v137 = *(v34 + 320), !has_transforms))
            {
              v139 = _nw_parameters_shallow_copy(v137, 1);
              v140 = *(v34 + 328);
              if ((v140 & 1) != 0 && *(v34 + 320))
              {
                v141 = v139;
                os_release(*(v34 + 320));
                v139 = v141;
                v140 = *(v34 + 328);
              }

              *(v34 + 320) = v139;
              *(v34 + 328) = v140 | 1;
            }

            else
            {
              *v334 = MEMORY[0x1E69E9820];
              v335 = 0x40000000;
              v336 = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_2;
              v337 = &unk_1E6A32AC0;
              v338 = v353;
              v339 = v349;
              v340 = v34;
              v341 = v8;
              nw_parameters_enumerate_transformed_parameters(v137, v334);
              v139 = *(v34 + 320);
            }

            *v359 = 0;
            memset(buf, 0, sizeof(buf));
            v142 = nw_parameters_copy_protocol_options_legacy(v139, v34);
            v143 = v142;
            if (v142)
            {
              v144 = v142;
              _nw_protocol_options_get_log_id_str(v144, buf);
            }

            else if ((*(v34 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v145 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v146 = *(v34 + 256);
                v147 = *(*(v34 + 248) + 372);
                if (v146)
                {
                  LODWORD(v146) = *(v146 + 860);
                }

                v148 = *(v34 + 424);
                *aBlock = 136448002;
                *&aBlock[4] = "nw_http1_stream_add_input_handler";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v34 + 74;
                *&aBlock[22] = 2080;
                v363 = " ";
                *v364 = 1024;
                *&v364[2] = v147;
                *&v364[6] = 1024;
                *&v364[8] = v146;
                *&v364[12] = 1024;
                *&v364[14] = v148;
                *&v364[18] = 2048;
                *&v364[20] = v34;
                *&v364[28] = 2048;
                *&v364[30] = v132;
                _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Failed to access options for protocol %p, parameters %p", aBlock, 0x46u);
              }
            }

            if ((*(v8 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v280 = __nwlog_obj();
              if (os_log_type_enabled(v280, OS_LOG_TYPE_DEBUG))
              {
                v281 = *(v8 + 372);
                *aBlock = 136447234;
                *&aBlock[4] = "nw_http1_add_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v8 + 74;
                *&aBlock[22] = 2080;
                v363 = " ";
                *v364 = 1024;
                *&v364[2] = v281;
                *&v364[6] = 2048;
                *&v364[8] = v34;
                _os_log_impl(&dword_181A37000, v280, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", aBlock, 0x30u);
              }
            }

            *(v34 + 280) = 0;
            v149 = *(v8 + 240);
            *(v34 + 288) = v149;
            *v149 = v34;
            *(v8 + 240) = v34 + 280;
            v150 = *(v8 + 344) + 1;
            *(v8 + 344) = v150;
            if (v150 == v150 << 31 >> 31)
            {
LABEL_280:
              v162 = *(v8 + 356) + 1;
              *(v8 + 356) = v162;
              if (v162 == v162 << 31 >> 31)
              {
                goto LABEL_298;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v163 = *(v8 + 356);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_add_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->next_stream_log_num";
              *&aBlock[22] = 2048;
              v363 = 1;
              *v364 = 2048;
              *&v364[2] = v163;
              LODWORD(v330) = 42;
              v164 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", aBlock, v330);
              type = OS_LOG_TYPE_ERROR;
              v351 = 0;
              if (__nwlog_fault(v164, &type, &v351))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v165 = gLogObj;
                  v166 = type;
                  if (os_log_type_enabled(gLogObj, type))
                  {
                    v167 = *(v8 + 356);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->next_stream_log_num";
                    *&aBlock[22] = 2048;
                    v363 = 1;
                    *v364 = 2048;
                    *&v364[2] = v167;
                    v168 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_294:
                    _os_log_impl(&dword_181A37000, v165, v166, v168, aBlock, 0x2Au);
                  }
                }

                else if (v351 == 1)
                {
                  v169 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v165 = gLogObj;
                  v166 = type;
                  v170 = os_log_type_enabled(gLogObj, type);
                  if (v169)
                  {
                    if (v170)
                    {
                      v171 = *(v8 + 356);
                      *aBlock = 136447234;
                      *&aBlock[4] = "nw_http1_add_stream";
                      *&aBlock[12] = 2082;
                      *&aBlock[14] = "http1->next_stream_log_num";
                      *&aBlock[22] = 2048;
                      v363 = 1;
                      *v364 = 2048;
                      *&v364[2] = v171;
                      *&v364[10] = 2082;
                      *&v364[12] = v169;
                      _os_log_impl(&dword_181A37000, v165, v166, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                    }

                    free(v169);
                    goto LABEL_295;
                  }

                  if (v170)
                  {
                    v173 = *(v8 + 356);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->next_stream_log_num";
                    *&aBlock[22] = 2048;
                    v363 = 1;
                    *v364 = 2048;
                    *&v364[2] = v173;
                    v168 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_294;
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v165 = gLogObj;
                  v166 = type;
                  if (os_log_type_enabled(gLogObj, type))
                  {
                    v172 = *(v8 + 356);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->next_stream_log_num";
                    *&aBlock[22] = 2048;
                    v363 = 1;
                    *v364 = 2048;
                    *&v364[2] = v172;
                    v168 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_294;
                  }
                }
              }

LABEL_295:
              if (v164)
              {
                free(v164);
              }

              LODWORD(v162) = -1;
              *(v8 + 356) = -1;
              v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              v4 = v332;
LABEL_298:
              *(v34 + 424) = v162;
              if ((*(v34 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
              {
                v282 = __nwlog_obj();
                if (os_log_type_enabled(v282, OS_LOG_TYPE_DEBUG))
                {
                  v283 = *(v34 + 256);
                  v284 = *(*(v34 + 248) + 372);
                  if (v283)
                  {
                    LODWORD(v283) = *(v283 + 860);
                  }

                  v285 = *(v34 + 424);
                  v286 = *(v8 + 344);
                  *aBlock = 136448258;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = v34 + 74;
                  *&aBlock[22] = 2080;
                  v363 = " ";
                  *v364 = 1024;
                  *&v364[2] = v284;
                  *&v364[6] = 1024;
                  *&v364[8] = v283;
                  *&v364[12] = 1024;
                  *&v364[14] = v285;
                  *&v364[18] = 1024;
                  *&v364[20] = v285;
                  *&v364[24] = 2048;
                  *&v364[26] = v34;
                  *&v364[34] = 1024;
                  *&v364[36] = v286;
                  _os_log_impl(&dword_181A37000, v282, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added stream %u (%p), now have %u streams", aBlock, 0x48u);
                }
              }

              nw_protocol_plugin_name_set_name(v34 + 64, v34, v132);
              if (buf[0])
              {
                if (*(v8 + 158))
                {
                  goto LABEL_308;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v174 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_308;
                }

                v175 = *(v8 + 372);
                v176 = *(v8 + 344);
                *aBlock = 136447746;
                *&aBlock[4] = "nw_http1_stream_add_input_handler";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v8 + 74;
                *&aBlock[22] = 2080;
                v363 = " ";
                *v364 = 1024;
                *&v364[2] = v175;
                *&v364[6] = 2048;
                *&v364[8] = v4;
                *&v364[16] = 2082;
                *&v364[18] = buf;
                *&v364[26] = 1024;
                *&v364[28] = v176;
                v177 = "%{public}s %{public}s%s<i%u> added input handler %p from %{public}s, now have %u input handlers";
                v178 = v174;
                v179 = 64;
              }

              else
              {
                if (*(v8 + 158))
                {
                  goto LABEL_308;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v180 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_308;
                }

                v181 = *(v8 + 372);
                v182 = *(v8 + 344);
                *aBlock = 136447490;
                *&aBlock[4] = "nw_http1_stream_add_input_handler";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v8 + 74;
                *&aBlock[22] = 2080;
                v363 = " ";
                *v364 = 1024;
                *&v364[2] = v181;
                *&v364[6] = 2048;
                *&v364[8] = v4;
                *&v364[16] = 1024;
                *&v364[18] = v182;
                v177 = "%{public}s %{public}s%s<i%u> added input handler %p, now have %u input handlers";
                v178 = v180;
                v179 = 54;
              }

              _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEFAULT, v177, aBlock, v179);
LABEL_308:
              if (v143)
              {
                os_release(v143);
              }

              _Block_object_dispose(v353, 8);
              if ((v357 & 1) != 0 && object)
              {
                os_release(object);
              }

              _Block_object_dispose(v349, 8);
              if (v136)
              {
                os_release(v136);
              }

              goto LABEL_315;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v151 = *(v8 + 344);
            *aBlock = 136446978;
            *&aBlock[4] = "nw_http1_add_stream";
            *&aBlock[12] = 2082;
            *&aBlock[14] = "http1->streams_count";
            *&aBlock[22] = 2048;
            v363 = 1;
            *v364 = 2048;
            *&v364[2] = v151;
            LODWORD(v330) = 42;
            v152 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", aBlock, v330);
            type = OS_LOG_TYPE_ERROR;
            v351 = 0;
            if (__nwlog_fault(v152, &type, &v351))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v153 = gLogObj;
                v154 = type;
                if (os_log_type_enabled(gLogObj, type))
                {
                  v155 = *(v8 + 344);
                  *aBlock = 136446978;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->streams_count";
                  *&aBlock[22] = 2048;
                  v363 = 1;
                  *v364 = 2048;
                  *&v364[2] = v155;
                  v156 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_276:
                  _os_log_impl(&dword_181A37000, v153, v154, v156, aBlock, 0x2Au);
                }
              }

              else if (v351 == 1)
              {
                v157 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v153 = gLogObj;
                v154 = type;
                v158 = os_log_type_enabled(gLogObj, type);
                if (v157)
                {
                  if (v158)
                  {
                    v159 = *(v8 + 344);
                    *aBlock = 136447234;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->streams_count";
                    *&aBlock[22] = 2048;
                    v363 = 1;
                    *v364 = 2048;
                    *&v364[2] = v159;
                    *&v364[10] = 2082;
                    *&v364[12] = v157;
                    _os_log_impl(&dword_181A37000, v153, v154, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                  }

                  free(v157);
                  goto LABEL_277;
                }

                if (v158)
                {
                  v161 = *(v8 + 344);
                  *aBlock = 136446978;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->streams_count";
                  *&aBlock[22] = 2048;
                  v363 = 1;
                  *v364 = 2048;
                  *&v364[2] = v161;
                  v156 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_276;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v153 = gLogObj;
                v154 = type;
                if (os_log_type_enabled(gLogObj, type))
                {
                  v160 = *(v8 + 344);
                  *aBlock = 136446978;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->streams_count";
                  *&aBlock[22] = 2048;
                  v363 = 1;
                  *v364 = 2048;
                  *&v364[2] = v160;
                  v156 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_276;
                }
              }
            }

LABEL_277:
            if (v152)
            {
              free(v152);
            }

            *(v8 + 344) = -1;
            v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            v4 = v332;
            goto LABEL_280;
          }

          v275 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_add_input_handler";
          LODWORD(v330) = 12;
          v276 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v275, 16, "%{public}s called with null http1_stream->parameters", buf, v330);
          aBlock[0] = 16;
          v353[0] = 0;
          if (__nwlog_fault(v276, aBlock, v353))
          {
            if (aBlock[0] == 17)
            {
              v277 = __nwlog_obj();
              v278 = aBlock[0];
              if (!os_log_type_enabled(v277, aBlock[0]))
              {
                goto LABEL_532;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              v279 = "%{public}s called with null http1_stream->parameters";
              goto LABEL_531;
            }

            if (v353[0] != 1)
            {
              v277 = __nwlog_obj();
              v278 = aBlock[0];
              if (!os_log_type_enabled(v277, aBlock[0]))
              {
                goto LABEL_532;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              v279 = "%{public}s called with null http1_stream->parameters, backtrace limit exceeded";
              goto LABEL_531;
            }

            v303 = __nw_create_backtrace_string();
            v277 = __nwlog_obj();
            v278 = aBlock[0];
            v304 = os_log_type_enabled(v277, aBlock[0]);
            if (v303)
            {
              if (v304)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v303;
                _os_log_impl(&dword_181A37000, v277, v278, "%{public}s called with null http1_stream->parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v303);
              goto LABEL_532;
            }

            if (v304)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              v279 = "%{public}s called with null http1_stream->parameters, no backtrace";
LABEL_531:
              _os_log_impl(&dword_181A37000, v277, v278, v279, buf, 0xCu);
            }
          }

LABEL_532:
          if (v276)
          {
            free(v276);
          }

LABEL_315:
          v183 = 0;
          v184 = *(v8 + 224);
          if (!v184)
          {
            return 1;
          }

LABEL_316:
          if ((*(v184 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
          {
            v290 = __nwlog_obj();
            if (os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
            {
              v291 = *(v184 + 488);
              v292 = *(*(v184 + 480) + 372);
              v293 = *(v184 + 860);
              if (v291)
              {
                LODWORD(v291) = *(v291 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2082;
              *&buf[14] = v184 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v292;
              *&buf[38] = 1024;
              *&buf[40] = v293;
              *&buf[44] = 1024;
              *&buf[46] = v291;
              *&buf[50] = 2048;
              *&buf[52] = v184;
              _os_log_impl(&dword_181A37000, v290, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
            }
          }

          if ((*(v184 + 874) & 8) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446466;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2048;
            *&buf[14] = v184;
            LODWORD(v330) = 22;
            v185 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connection %p not in idle list, cannot remove", buf, v330);
            aBlock[0] = 16;
            v334[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v185, aBlock, v334))
            {
              if (aBlock[0] == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v186 = gLogObj;
                v187 = aBlock[0];
                if (os_log_type_enabled(gLogObj, aBlock[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v184;
                  v188 = "%{public}s connection %p not in idle list, cannot remove";
LABEL_344:
                  _os_log_impl(&dword_181A37000, v186, v187, v188, buf, 0x16u);
                }
              }

              else if (v334[0] == OS_LOG_TYPE_INFO)
              {
                v199 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v186 = gLogObj;
                v187 = aBlock[0];
                v200 = os_log_type_enabled(gLogObj, aBlock[0]);
                if (v199)
                {
                  if (v200)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_remove_idle_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v184;
                    *&buf[22] = 2082;
                    *&buf[24] = v199;
                    _os_log_impl(&dword_181A37000, v186, v187, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                  }

                  free(v199);
                  goto LABEL_345;
                }

                if (v200)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v184;
                  v188 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
                  goto LABEL_344;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v186 = gLogObj;
                v187 = aBlock[0];
                if (os_log_type_enabled(gLogObj, aBlock[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v184;
                  v188 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
                  goto LABEL_344;
                }
              }
            }

LABEL_345:
            if (v185)
            {
              free(v185);
            }

            v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            goto LABEL_362;
          }

          v189 = *(v184 + 592);
          v190 = *(v184 + 600);
          v191 = (v8 + 216);
          if (v189)
          {
            v191 = (v189 + 600);
          }

          *v191 = v190;
          *v190 = v189;
          *(v184 + 592) = 0u;
          v192 = *(v8 + 340);
          *(v8 + 340) = v192 - 1;
          if (v192)
          {
LABEL_356:
            *(v184 + 874) &= ~8u;
            if ((*(v184 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
            {
              v305 = __nwlog_obj();
              if (os_log_type_enabled(v305, OS_LOG_TYPE_DEBUG))
              {
                v306 = *(v184 + 488);
                v307 = *(*(v184 + 480) + 372);
                v308 = *(v184 + 860);
                if (v306)
                {
                  LODWORD(v306) = *(v306 + 424);
                }

                v309 = *(v8 + 340);
                *buf = 136448002;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = v184 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v307;
                *&buf[38] = 1024;
                *&buf[40] = v308;
                *&buf[44] = 1024;
                *&buf[46] = v306;
                *&buf[50] = 2048;
                *&buf[52] = v184;
                *&buf[60] = 1024;
                *&buf[62] = v309;
                _os_log_impl(&dword_181A37000, v305, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
              }
            }

            if (*(v184 + 784))
            {
              if ((*(v184 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
              {
                v313 = __nwlog_obj();
                if (os_log_type_enabled(v313, OS_LOG_TYPE_DEBUG))
                {
                  v314 = *(v184 + 488);
                  v315 = *(*(v184 + 480) + 372);
                  v316 = *(v184 + 860);
                  if (v314)
                  {
                    LODWORD(v314) = *(v314 + 424);
                  }

                  *buf = 136447746;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v184 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v315;
                  *&buf[38] = 1024;
                  *&buf[40] = v316;
                  *&buf[44] = 1024;
                  *&buf[46] = v314;
                  *&buf[50] = 2048;
                  *&buf[52] = v184;
                  _os_log_impl(&dword_181A37000, v313, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
                }
              }

              nw_queue_cancel_source(*(v184 + 784));
              *(v184 + 784) = 0;
            }

LABEL_362:
            if (v183)
            {
              v287 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              LODWORD(v330) = 12;
              v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v287, 16, "%{public}s called with null http1_stream", buf, v330);
              aBlock[0] = 16;
              v334[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v207, aBlock, v334))
              {
                if (aBlock[0] == 17)
                {
                  v288 = __nwlog_obj();
                  v289 = aBlock[0];
                  if (os_log_type_enabled(v288, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v211 = "%{public}s called with null http1_stream";
LABEL_542:
                    v239 = v288;
                    v240 = v289;
                    v241 = 12;
                    goto LABEL_403;
                  }
                }

                else if (v334[0] == OS_LOG_TYPE_INFO)
                {
                  v310 = __nw_create_backtrace_string();
                  v288 = __nwlog_obj();
                  v289 = aBlock[0];
                  v311 = os_log_type_enabled(v288, aBlock[0]);
                  if (v310)
                  {
                    if (v311)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v310;
                      _os_log_impl(&dword_181A37000, v288, v289, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v310);
                  }

                  else if (v311)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v211 = "%{public}s called with null http1_stream, no backtrace";
                    goto LABEL_542;
                  }
                }

                else
                {
                  v288 = __nwlog_obj();
                  v289 = aBlock[0];
                  if (os_log_type_enabled(v288, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v211 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                    goto LABEL_542;
                  }
                }
              }
            }

            else
            {
              if (*(v34 + 248))
              {
                if (*(v184 + 488))
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v206 = *(v184 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v184;
                  *&buf[22] = 2048;
                  *&buf[24] = v206;
                  LODWORD(v330) = 32;
                  v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p already has a stream (%p)", buf, v330);
                  aBlock[0] = 16;
                  v334[0] = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v207, aBlock, v334))
                  {
                    goto LABEL_404;
                  }

                  if (aBlock[0] == 17)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v208 = gLogObj;
                    v209 = aBlock[0];
                    if (!os_log_type_enabled(gLogObj, aBlock[0]))
                    {
                      goto LABEL_404;
                    }

                    v210 = *(v184 + 488);
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v184;
                    *&buf[22] = 2048;
                    *&buf[24] = v210;
                    v211 = "%{public}s Connection %p already has a stream (%p)";
LABEL_402:
                    v239 = v208;
                    v240 = v209;
                    v241 = 32;
LABEL_403:
                    _os_log_impl(&dword_181A37000, v239, v240, v211, buf, v241);
                    goto LABEL_404;
                  }

                  if (v334[0] != OS_LOG_TYPE_INFO)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v208 = gLogObj;
                    v209 = aBlock[0];
                    if (!os_log_type_enabled(gLogObj, aBlock[0]))
                    {
                      goto LABEL_404;
                    }

                    v222 = *(v184 + 488);
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v184;
                    *&buf[22] = 2048;
                    *&buf[24] = v222;
                    v211 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                    goto LABEL_402;
                  }

                  v215 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v208 = gLogObj;
                  v209 = aBlock[0];
                  v216 = os_log_type_enabled(gLogObj, aBlock[0]);
                  if (!v215)
                  {
                    if (!v216)
                    {
                      goto LABEL_404;
                    }

                    v238 = *(v184 + 488);
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v184;
                    *&buf[22] = 2048;
                    *&buf[24] = v238;
                    v211 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                    goto LABEL_402;
                  }

                  if (v216)
                  {
                    v217 = *(v184 + 488);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v184;
                    *&buf[22] = 2048;
                    *&buf[24] = v217;
                    *&buf[32] = 2082;
                    *&buf[34] = v215;
                    v218 = "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s";
                    v219 = v208;
                    v220 = v209;
                    v221 = 42;
LABEL_376:
                    _os_log_impl(&dword_181A37000, v219, v220, v218, buf, v221);
                    goto LABEL_377;
                  }

                  goto LABEL_377;
                }

                *(v34 + 256) = v184;
                *(v184 + 488) = v34;
                v212 = *(v34 + 320);
                if (v212)
                {
                  v213 = os_retain(v212);
                  v214 = *(v184 + 744);
                  if ((v214 & 1) == 0)
                  {
                    goto LABEL_384;
                  }
                }

                else
                {
                  v213 = 0;
                  v214 = *(v184 + 744);
                  if ((v214 & 1) == 0)
                  {
                    goto LABEL_384;
                  }
                }

                v223 = *(v184 + 736);
                if (v223)
                {
                  os_release(v223);
                  v214 = *(v184 + 744);
                }

LABEL_384:
                *(v184 + 736) = v213;
                *(v184 + 744) = v214 | 1;
                if ((*(*(v34 + 248) + 376) & 2) == 0)
                {
                  goto LABEL_440;
                }

                v224 = nw_parameters_copy_default_protocol_stack(*(v34 + 320));
                *v334 = 0;
                v335 = v334;
                v336 = 0x2000000000;
                LOBYTE(v337) = 0;
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3802000000;
                *&buf[24] = __Block_byref_object_copy__42960;
                *&buf[32] = __Block_byref_object_dispose__42961;
                *&buf[40] = 0;
                buf[48] |= 1u;
                *aBlock = MEMORY[0x1E69E9820];
                *&aBlock[8] = 0x40000000;
                *&aBlock[16] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                v363 = &unk_1E6A32930;
                *v364 = v334;
                *&v364[8] = buf;
                *&v364[16] = v34;
                nw_protocol_stack_iterate_application_protocols(v224, aBlock);
                if (*(*&buf[8] + 40))
                {
                  v225 = v184;
                  while (1)
                  {
                    v225 = *(v225 + 32);
                    if (!v225)
                    {
                      break;
                    }

                    if (nw_protocol_is_tls_over_stream(v225))
                    {
                      v226 = *(*&buf[8] + 40);
                      v227 = nw_protocol_boringssl_copy_definition();
                      nw_parameters_set_protocol_instance(v226, v228, v225);
                      if (v227)
                      {
                        os_release(v227);
                      }

                      v229 = 1;
                      goto LABEL_434;
                    }
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  *v353 = 136446210;
                  *&v353[4] = "nw_http1_stream_associate_with_connection";
                  LODWORD(v330) = 12;
                  v234 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s tls should have been in the stack but could not find it", v353, v330);
                  v342[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v349[0]) = 0;
                  if (!__nwlog_fault(v234, v342, v349))
                  {
                    goto LABEL_430;
                  }

                  if (v342[0] == OS_LOG_TYPE_FAULT)
                  {
                    v235 = __nwlog_obj();
                    v236 = v342[0];
                    if (os_log_type_enabled(v235, v342[0]))
                    {
                      *v353 = 136446210;
                      *&v353[4] = "nw_http1_stream_associate_with_connection";
                      v237 = "%{public}s tls should have been in the stack but could not find it";
LABEL_429:
                      _os_log_impl(&dword_181A37000, v235, v236, v237, v353, 0xCu);
                    }
                  }

                  else if (LOBYTE(v349[0]) == 1)
                  {
                    v244 = __nw_create_backtrace_string();
                    v235 = __nwlog_obj();
                    v236 = v342[0];
                    v245 = os_log_type_enabled(v235, v342[0]);
                    if (v244)
                    {
                      if (v245)
                      {
                        *v353 = 136446466;
                        *&v353[4] = "nw_http1_stream_associate_with_connection";
                        *&v353[12] = 2082;
                        *&v353[14] = v244;
                        _os_log_impl(&dword_181A37000, v235, v236, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v353, 0x16u);
                      }

                      free(v244);
                      goto LABEL_430;
                    }

                    if (v245)
                    {
                      *v353 = 136446210;
                      *&v353[4] = "nw_http1_stream_associate_with_connection";
                      v237 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                      goto LABEL_429;
                    }
                  }

                  else
                  {
                    v235 = __nwlog_obj();
                    v236 = v342[0];
                    if (os_log_type_enabled(v235, v342[0]))
                    {
                      *v353 = 136446210;
                      *&v353[4] = "nw_http1_stream_associate_with_connection";
                      v237 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                      goto LABEL_429;
                    }
                  }

LABEL_430:
                  if (v234)
                  {
                    free(v234);
                  }

                  v229 = 0;
LABEL_433:
                  v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_434:
                  _Block_object_dispose(buf, 8);
                  if ((buf[48] & 1) != 0 && *&buf[40])
                  {
                    os_release(*&buf[40]);
                  }

                  _Block_object_dispose(v334, 8);
                  if (v224)
                  {
                    os_release(v224);
                  }

                  if (!v229)
                  {
                    goto LABEL_468;
                  }

LABEL_440:
                  v246 = *(v34 + 32);
                  if (!v246 || v246 == *(v184 + 32))
                  {
LABEL_458:
                    nw_protocol_set_output_handler(v34, *(v184 + 32));
                    nw_protocol_set_input_handler(v184, *(v34 + 48));
                    *v34 = *v184;
                    v263 = *(v34 + 96);
                    v264 = *(v34 + 112);
                    v265 = *(v34 + 128);
                    *(v184 + 144) = *(v34 + 144);
                    v266 = *(v34 + 80);
                    *(v184 + 64) = *(v34 + 64);
                    *(v184 + 80) = v266;
                    *(v184 + 112) = v264;
                    *(v184 + 128) = v265;
                    *(v184 + 96) = v263;
                    *(v184 + 872) &= 0xFFD7u;
                    *(v184 + 864) = 1;
                    if ((*(v184 + 158) & 1) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v267 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                      {
                        v268 = *(v184 + 488);
                        v269 = *(*(v184 + 480) + 372);
                        v270 = *(v184 + 860);
                        if (v268)
                        {
                          LODWORD(v268) = *(v268 + 424);
                        }

                        *buf = 136447490;
                        *&buf[4] = "nw_http1_update_connection_input_state";
                        *&buf[12] = 2082;
                        *&buf[14] = v184 + 74;
                        *&buf[22] = 2080;
                        *&buf[24] = " ";
                        *&buf[32] = 1024;
                        *&buf[34] = v269;
                        *&buf[38] = 1024;
                        *&buf[40] = v270;
                        *&buf[44] = 1024;
                        *&buf[46] = v268;
                        _os_log_impl(&dword_181A37000, v267, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                      }
                    }

                    if ((*(v34 + 158) & 1) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v271 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                      {
                        v272 = *(v34 + 256);
                        v273 = *(*(v34 + 248) + 372);
                        if (v272)
                        {
                          LODWORD(v272) = *(v272 + 860);
                        }

                        v274 = *(v34 + 424);
                        *buf = 136448002;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2082;
                        *&buf[14] = v34 + 74;
                        *&buf[22] = 2080;
                        *&buf[24] = " ";
                        *&buf[32] = 1024;
                        *&buf[34] = v273;
                        *&buf[38] = 1024;
                        *&buf[40] = v272;
                        *&buf[44] = 1024;
                        *&buf[46] = v274;
                        *&buf[50] = 2048;
                        *&buf[52] = v34;
                        *&buf[60] = 2048;
                        *&buf[62] = v184;
                        _os_log_impl(&dword_181A37000, v271, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                      }
                    }

                    goto LABEL_468;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v247 = *(v34 + 32);
                  v248 = *(v184 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v247;
                  *&buf[22] = 2048;
                  *&buf[24] = v34;
                  *&buf[32] = 2048;
                  *&buf[34] = v248;
                  LODWORD(v330) = 42;
                  v249 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v330);
                  v334[0] = OS_LOG_TYPE_ERROR;
                  v353[0] = 0;
                  if (__nwlog_fault(v249, v334, v353))
                  {
                    if (v334[0] == OS_LOG_TYPE_FAULT)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v250 = gLogObj;
                      v251 = v334[0];
                      if (!os_log_type_enabled(gLogObj, v334[0]))
                      {
                        goto LABEL_456;
                      }

                      v252 = *(v34 + 32);
                      v253 = *(v184 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v252;
                      *&buf[22] = 2048;
                      *&buf[24] = v34;
                      *&buf[32] = 2048;
                      *&buf[34] = v253;
                      v254 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                      goto LABEL_455;
                    }

                    if (v353[0] != 1)
                    {
                      v250 = __nwlog_obj();
                      v251 = v334[0];
                      if (!os_log_type_enabled(v250, v334[0]))
                      {
                        goto LABEL_456;
                      }

                      v259 = *(v34 + 32);
                      v260 = *(v184 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v259;
                      *&buf[22] = 2048;
                      *&buf[24] = v34;
                      *&buf[32] = 2048;
                      *&buf[34] = v260;
                      v254 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                      goto LABEL_455;
                    }

                    v255 = __nw_create_backtrace_string();
                    v250 = __nwlog_obj();
                    v251 = v334[0];
                    v256 = os_log_type_enabled(v250, v334[0]);
                    if (v255)
                    {
                      if (v256)
                      {
                        v257 = *(v34 + 32);
                        v258 = *(v184 + 32);
                        *buf = 136447234;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v257;
                        *&buf[22] = 2048;
                        *&buf[24] = v34;
                        *&buf[32] = 2048;
                        *&buf[34] = v258;
                        *&buf[42] = 2082;
                        *&buf[44] = v255;
                        _os_log_impl(&dword_181A37000, v250, v251, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v255);
                      goto LABEL_456;
                    }

                    if (v256)
                    {
                      v261 = *(v34 + 32);
                      v262 = *(v184 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v261;
                      *&buf[22] = 2048;
                      *&buf[24] = v34;
                      *&buf[32] = 2048;
                      *&buf[34] = v262;
                      v254 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_455:
                      _os_log_impl(&dword_181A37000, v250, v251, v254, buf, 0x2Au);
                    }
                  }

LABEL_456:
                  if (v249)
                  {
                    free(v249);
                  }

                  goto LABEL_458;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                *v353 = 136446210;
                *&v353[4] = "nw_http1_stream_associate_with_connection";
                LODWORD(v330) = 12;
                v230 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s unable to find tls options", v353, v330);
                v342[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v349[0]) = 0;
                if (__nwlog_fault(v230, v342, v349))
                {
                  if (v342[0] == OS_LOG_TYPE_FAULT)
                  {
                    v231 = __nwlog_obj();
                    v232 = v342[0];
                    if (os_log_type_enabled(v231, v342[0]))
                    {
                      *v353 = 136446210;
                      *&v353[4] = "nw_http1_stream_associate_with_connection";
                      v233 = "%{public}s unable to find tls options";
LABEL_423:
                      _os_log_impl(&dword_181A37000, v231, v232, v233, v353, 0xCu);
                    }
                  }

                  else if (LOBYTE(v349[0]) == 1)
                  {
                    v242 = __nw_create_backtrace_string();
                    v231 = __nwlog_obj();
                    v232 = v342[0];
                    v243 = os_log_type_enabled(v231, v342[0]);
                    if (v242)
                    {
                      if (v243)
                      {
                        *v353 = 136446466;
                        *&v353[4] = "nw_http1_stream_associate_with_connection";
                        *&v353[12] = 2082;
                        *&v353[14] = v242;
                        _os_log_impl(&dword_181A37000, v231, v232, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v353, 0x16u);
                      }

                      free(v242);
                      goto LABEL_424;
                    }

                    if (v243)
                    {
                      *v353 = 136446210;
                      *&v353[4] = "nw_http1_stream_associate_with_connection";
                      v233 = "%{public}s unable to find tls options, no backtrace";
                      goto LABEL_423;
                    }
                  }

                  else
                  {
                    v231 = __nwlog_obj();
                    v232 = v342[0];
                    if (os_log_type_enabled(v231, v342[0]))
                    {
                      *v353 = 136446210;
                      *&v353[4] = "nw_http1_stream_associate_with_connection";
                      v233 = "%{public}s unable to find tls options, backtrace limit exceeded";
                      goto LABEL_423;
                    }
                  }
                }

LABEL_424:
                if (v230)
                {
                  free(v230);
                }

                v229 = 1;
                goto LABEL_433;
              }

              v294 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              LODWORD(v330) = 12;
              v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v294, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v330);
              aBlock[0] = 16;
              v334[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v207, aBlock, v334))
              {
                if (aBlock[0] == 17)
                {
                  v288 = __nwlog_obj();
                  v289 = aBlock[0];
                  if (os_log_type_enabled(v288, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v211 = "%{public}s called with null http1_stream->protocol_http1";
                    goto LABEL_542;
                  }
                }

                else if (v334[0] == OS_LOG_TYPE_INFO)
                {
                  v215 = __nw_create_backtrace_string();
                  v288 = __nwlog_obj();
                  v289 = aBlock[0];
                  v312 = os_log_type_enabled(v288, aBlock[0]);
                  if (v215)
                  {
                    if (v312)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v215;
                      v218 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
                      v219 = v288;
                      v220 = v289;
                      v221 = 22;
                      goto LABEL_376;
                    }

LABEL_377:
                    free(v215);
                    if (!v207)
                    {
                      goto LABEL_468;
                    }

                    goto LABEL_405;
                  }

                  if (v312)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v211 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                    goto LABEL_542;
                  }
                }

                else
                {
                  v288 = __nwlog_obj();
                  v289 = aBlock[0];
                  if (os_log_type_enabled(v288, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v211 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                    goto LABEL_542;
                  }
                }
              }
            }

LABEL_404:
            if (!v207)
            {
LABEL_468:
              *(v8 + 224) = 0;
              *(v34 + 428) |= 8u;
              if ((*(v34 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
              {
                v295 = __nwlog_obj();
                if (os_log_type_enabled(v295, OS_LOG_TYPE_DEBUG))
                {
                  v296 = *(v34 + 256);
                  v297 = *(*(v34 + 248) + 372);
                  if (v296)
                  {
                    LODWORD(v296) = *(v296 + 860);
                  }

                  v298 = *(v34 + 424);
                  *buf = 136447746;
                  *&buf[4] = "nw_protocol_http1_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v34 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v297;
                  *&buf[38] = 1024;
                  *&buf[40] = v296;
                  *&buf[44] = 1024;
                  *&buf[46] = v298;
                  *&buf[50] = 2048;
                  *&buf[52] = v184;
                  _os_log_impl(&dword_181A37000, v295, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> attached to connection %p which triggered new flow, pending connected", buf, 0x3Cu);
                }
              }

              return 1;
            }

LABEL_405:
            free(v207);
            goto LABEL_468;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v193 = *(v8 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v193;
          LODWORD(v330) = 42;
          v194 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v330);
          aBlock[0] = 16;
          v334[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v194, aBlock, v334))
          {
            if (aBlock[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v195 = gLogObj;
              v196 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                v197 = *(v8 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v197;
                v198 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_352:
                _os_log_impl(&dword_181A37000, v195, v196, v198, buf, 0x2Au);
              }
            }

            else if (v334[0] == OS_LOG_TYPE_INFO)
            {
              v201 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v195 = gLogObj;
              v196 = aBlock[0];
              v202 = os_log_type_enabled(gLogObj, aBlock[0]);
              if (v201)
              {
                if (v202)
                {
                  v203 = *(v8 + 340);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->idle_connections_count";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v203;
                  *&buf[42] = 2082;
                  *&buf[44] = v201;
                  _os_log_impl(&dword_181A37000, v195, v196, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v201);
                goto LABEL_353;
              }

              if (v202)
              {
                v205 = *(v8 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v205;
                v198 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_352;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v195 = gLogObj;
              v196 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                v204 = *(v8 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v204;
                v198 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_352;
              }
            }
          }

LABEL_353:
          if (v194)
          {
            free(v194);
          }

          *(v8 + 340) = 0;
          v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_356;
        }

        v97 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_replace_protocol_instance";
        LODWORD(v330) = 12;
        v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null http1_stream", buf, v330);
        aBlock[0] = 16;
        v334[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v98, aBlock, v334))
        {
          goto LABEL_546;
        }

        if (aBlock[0] == 17)
        {
          v99 = __nwlog_obj();
          v100 = aBlock[0];
          if (!os_log_type_enabled(v99, aBlock[0]))
          {
            goto LABEL_546;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          v101 = "%{public}s called with null http1_stream";
        }

        else if (v334[0] == OS_LOG_TYPE_INFO)
        {
          v114 = __nw_create_backtrace_string();
          v99 = __nwlog_obj();
          v100 = aBlock[0];
          v115 = os_log_type_enabled(v99, aBlock[0]);
          if (v114)
          {
            if (v115)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              *&buf[12] = 2082;
              *&buf[14] = v114;
              _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v114);
            goto LABEL_546;
          }

          if (!v115)
          {
LABEL_546:
            if (v98)
            {
              free(v98);
            }

            goto LABEL_548;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          v101 = "%{public}s called with null http1_stream, no backtrace";
        }

        else
        {
          v99 = __nwlog_obj();
          v100 = aBlock[0];
          if (!os_log_type_enabled(v99, aBlock[0]))
          {
            goto LABEL_546;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          v101 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v99, v100, v101, buf, 0xCu);
        goto LABEL_546;
      }

LABEL_231:
      if (v34)
      {
        goto LABEL_232;
      }

LABEL_548:
      v317 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_add_input_handler";
      LODWORD(v330) = 12;
      v318 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v317, 16, "%{public}s called with null http1_stream", buf, v330);
      aBlock[0] = 16;
      v353[0] = 0;
      if (!__nwlog_fault(v318, aBlock, v353))
      {
        goto LABEL_562;
      }

      if (aBlock[0] == 17)
      {
        v319 = __nwlog_obj();
        v320 = aBlock[0];
        if (!os_log_type_enabled(v319, aBlock[0]))
        {
          goto LABEL_562;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_add_input_handler";
        v321 = "%{public}s called with null http1_stream";
      }

      else if (v353[0] == 1)
      {
        v322 = __nw_create_backtrace_string();
        v319 = __nwlog_obj();
        v320 = aBlock[0];
        v323 = os_log_type_enabled(v319, aBlock[0]);
        if (v322)
        {
          if (v323)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v322;
            _os_log_impl(&dword_181A37000, v319, v320, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v322);
LABEL_562:
          if (v318)
          {
            free(v318);
          }

          v183 = 1;
          v184 = *(v8 + 224);
          if (!v184)
          {
            return 1;
          }

          goto LABEL_316;
        }

        if (!v323)
        {
          goto LABEL_562;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_add_input_handler";
        v321 = "%{public}s called with null http1_stream, no backtrace";
      }

      else
      {
        v319 = __nwlog_obj();
        v320 = aBlock[0];
        if (!os_log_type_enabled(v319, aBlock[0]))
        {
          goto LABEL_562;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_add_input_handler";
        v321 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v319, v320, v321, buf, 0xCu);
      goto LABEL_562;
    }

LABEL_215:
    v122 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_handle_type_for_protocol";
    LODWORD(v330) = 12;
    v123 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v122, 16, "%{public}s called with null handle", buf, v330);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v123, aBlock, v334))
    {
      goto LABEL_229;
    }

    if (aBlock[0] == 17)
    {
      v124 = __nwlog_obj();
      v125 = aBlock[0];
      if (!os_log_type_enabled(v124, aBlock[0]))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_handle_type_for_protocol";
      v126 = "%{public}s called with null handle";
    }

    else if (v334[0] == OS_LOG_TYPE_INFO)
    {
      v127 = __nw_create_backtrace_string();
      v124 = __nwlog_obj();
      v125 = aBlock[0];
      v128 = os_log_type_enabled(v124, aBlock[0]);
      if (v127)
      {
        if (v128)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_handle_type_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v127;
          _os_log_impl(&dword_181A37000, v124, v125, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v127);
        v4 = v332;
        goto LABEL_229;
      }

      if (!v128)
      {
LABEL_229:
        if (v123)
        {
          free(v123);
        }

        goto LABEL_231;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_handle_type_for_protocol";
      v126 = "%{public}s called with null handle, no backtrace";
    }

    else
    {
      v124 = __nwlog_obj();
      v125 = aBlock[0];
      if (!os_log_type_enabled(v124, aBlock[0]))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_handle_type_for_protocol";
      v126 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v124, v125, v126, buf, 0xCu);
    goto LABEL_229;
  }

  if (!parameters)
  {
    v83 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null parameters", buf, 12);
    aBlock[0] = 16;
    v334[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v77, aBlock, v334))
    {
      goto LABEL_212;
    }

    if (aBlock[0] == 17)
    {
      v78 = __nwlog_obj();
      v79 = aBlock[0];
      if (!os_log_type_enabled(v78, aBlock[0]))
      {
        goto LABEL_212;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_create";
      v80 = "%{public}s called with null parameters";
      goto LABEL_211;
    }

    if (v334[0] != OS_LOG_TYPE_INFO)
    {
      v78 = __nwlog_obj();
      v79 = aBlock[0];
      if (!os_log_type_enabled(v78, aBlock[0]))
      {
        goto LABEL_212;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_create";
      v80 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_211;
    }

    v94 = __nw_create_backtrace_string();
    v78 = __nwlog_obj();
    v79 = aBlock[0];
    v102 = os_log_type_enabled(v78, aBlock[0]);
    if (v94)
    {
      if (v102)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_create";
        *&buf[12] = 2082;
        *&buf[14] = v94;
        v96 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
        goto LABEL_148;
      }

      goto LABEL_149;
    }

    v4 = v332;
    if (!v102)
    {
      goto LABEL_212;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v80 = "%{public}s called with null parameters, no backtrace";
    goto LABEL_211;
  }

  v33 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x23DFB97CuLL);
  v34 = v33;
  if (v33)
  {
    v33[25] = 0u;
    v33[26] = 0u;
    v33[23] = 0u;
    v33[24] = 0u;
    v33[21] = 0u;
    v33[22] = 0u;
    v33[19] = 0u;
    v33[20] = 0u;
    v33[17] = 0u;
    v33[18] = 0u;
    v33[15] = 0u;
    v33[16] = 0u;
    v33[13] = 0u;
    v33[14] = 0u;
    v33[11] = 0u;
    v33[12] = 0u;
    v33[9] = 0u;
    v33[10] = 0u;
    v33[7] = 0u;
    v33[8] = 0u;
    v33[5] = 0u;
    v33[6] = 0u;
    v33[3] = 0u;
    v33[4] = 0u;
    v33[1] = 0u;
    v33[2] = 0u;
    *v33 = 0u;
    goto LABEL_56;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v35 = gLogObj;
  v36 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_http1_stream_create";
  if (v36)
  {
    v37 = 3;
  }

  else
  {
    v37 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  *&buf[24] = 432;
  v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v38);
  if (!result)
  {
    free(v38);
    MEMORY[0x1A0] = 0u;
    MEMORY[0x190] = 0u;
    MEMORY[0x180] = 0u;
    MEMORY[0x170] = 0u;
    MEMORY[0x160] = 0u;
    MEMORY[0x150] = 0u;
    MEMORY[0x140] = 0u;
    MEMORY[0x130] = 0u;
    MEMORY[0x120] = 0u;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xF0] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0xA8] = 0;
    MEMORY[0xB0] = 0;
    MEMORY[0xB8] = 0;
    MEMORY[0xC8] = 0;
    MEMORY[0xD1] = 0;
    MEMORY[0x108] = 0;
    MEMORY[0x140] = 0;
    MEMORY[0x148] = 0;
    MEMORY[0x150] = 0;
    MEMORY[0x158] = 0;
    MEMORY[0x160] = 0;
    MEMORY[0x168] = 0;
    MEMORY[0x170] = 0;
    MEMORY[0x178] = 0;
    MEMORY[0x180] = 0;
    MEMORY[0x188] = 0;
    MEMORY[0x190] = 0;
    MEMORY[0x198] = 0;
    MEMORY[0x1A0] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v40 = gLogObj;
    v41 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR) ? 3 : 2;
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    LODWORD(v331) = 12;
    v42 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s strict_placement_new(nw_http1_stream, strict_calloc(1, sizeof(nw_http1_stream)),) failed", buf, v331);
    result = __nwlog_should_abort(v42);
    if (!result)
    {
      free(v42);
      v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v4 = v332;
LABEL_56:
      *(v34 + 16) = *(v8 + 16);
      if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
      }

      *(v34 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
      *(v34 + 240) = 2;
      *(v34 + 224) = v34;
      *(v34 + 40) = v34 + 216;
      *(v34 + 248) = v8;
      nw_protocol_set_input_handler(v34, v4);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      *&buf[24] = v34;
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 0x40000000;
      *&aBlock[16] = ___ZL22nw_http1_stream_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
      v363 = &unk_1E6A32A48;
      *v364 = buf;
      *(v34 + 312) = _Block_copy(aBlock);
      _Block_object_dispose(buf, 8);
      v43 = os_retain(v32);
      v44 = *(v34 + 344);
      if ((v44 & 1) != 0 && *(v34 + 336))
      {
        v45 = v43;
        os_release(*(v34 + 336));
        v43 = v45;
        v44 = *(v34 + 344);
      }

      *(v34 + 336) = v43;
      *(v34 + 344) = v44 | 1;
      v46 = os_retain(parameters);
      v47 = *(v34 + 328);
      if ((v47 & 1) != 0 && *(v34 + 320))
      {
        v48 = v46;
        os_release(*(v34 + 320));
        v46 = v48;
        v47 = *(v34 + 328);
      }

      *(v34 + 320) = v46;
      *(v34 + 328) = v47 | 1;
      if ((*(v34 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v84 = __nwlog_obj();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          v85 = *(v34 + 256);
          v86 = *(*(v34 + 248) + 372);
          if (v85)
          {
            LODWORD(v85) = *(v85 + 860);
          }

          v87 = *(v34 + 424);
          *buf = 136447746;
          *&buf[4] = "nw_http1_stream_create";
          *&buf[12] = 2082;
          *&buf[14] = v34 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v86;
          *&buf[38] = 1024;
          *&buf[40] = v85;
          *&buf[44] = 1024;
          *&buf[46] = v87;
          *&buf[50] = 2048;
          *&buf[52] = v34;
          _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
        }
      }

      v49 = _nw_parameters_copy_context();
      v50 = *(v34 + 272);
      if ((v50 & 1) != 0 && *(v34 + 264))
      {
        v51 = v49;
        os_release(*(v34 + 264));
        v49 = v51;
        v50 = *(v34 + 272);
      }

      *(v34 + 264) = v49;
      *(v34 + 272) = v50 | 1;
      v52 = _nw_http_parsed_fields_create();
      v53 = *(v34 + 408);
      if ((v53 & 1) != 0 && *(v34 + 400))
      {
        v54 = v52;
        os_release(*(v34 + 400));
        v52 = v54;
        v53 = *(v34 + 408);
      }

      *(v34 + 400) = v52;
      *(v34 + 408) = v53 | 1;
      *(v34 + 208) = *(v8 + 376) & 1;
      v55 = parameters;
      v56 = _nw_parameters_copy_protocol_options_with_level();

      if (!v56 || (singleton = nw_http_messaging_options_copy_transaction_metadata(v56)) == 0)
      {
        if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
        }

        singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_http_transaction_definition_definition);
      }

      v58 = *(v34 + 360);
      if ((v58 & 1) != 0 && *(v34 + 352))
      {
        v59 = singleton;
        os_release(*(v34 + 352));
        singleton = v59;
        v58 = *(v34 + 360);
      }

      *(v34 + 352) = singleton;
      *(v34 + 360) = v58 | 1;
      if (v56)
      {
        os_release(v56);
      }

      v60 = a1->handle;
      if (v60)
      {
        goto LABEL_83;
      }

      goto LABEL_215;
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZL35nw_protocol_http1_add_input_handlerP11nw_protocolS0__block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    result = nw_protocol_options_is_tls(a2);
    if (result)
    {
      *(*(a1 + 40) + 376) |= 2u;
    }
  }

  else
  {
    result = nw_protocol_options_get_protocol_handle(a2);
    if (result == *(a1 + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

void nw_protocol_http1_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v284 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v159 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v160 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s called with null protocol", buf, 12);
    v283[0] = 16;
    v275[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v160, v283, v275))
    {
      goto LABEL_430;
    }

    if (v283[0] == 17)
    {
      v161 = __nwlog_obj();
      v162 = v283[0];
      if (!os_log_type_enabled(v161, v283[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null protocol";
    }

    else if (v275[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v161 = __nwlog_obj();
      v162 = v283[0];
      v170 = os_log_type_enabled(v161, v283[0]);
      if (backtrace_string)
      {
        if (v170)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v161, v162, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_430:
        if (!v160)
        {
          goto LABEL_432;
        }

LABEL_431:
        free(v160);
        goto LABEL_432;
      }

      if (!v170)
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v161 = __nwlog_obj();
      v162 = v283[0];
      if (!os_log_type_enabled(v161, v283[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_429;
  }

  handle = a1->handle;
  if (!handle)
  {
    v164 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v160 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v164, 16, "%{public}s called with null handle", buf, 12);
    v283[0] = 16;
    v275[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v160, v283, v275))
    {
      goto LABEL_430;
    }

    if (v283[0] != 17)
    {
      if (v275[0] != OS_LOG_TYPE_INFO)
      {
        v161 = __nwlog_obj();
        v162 = v283[0];
        if (!os_log_type_enabled(v161, v283[0]))
        {
          goto LABEL_430;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v163 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_429;
      }

      v171 = __nw_create_backtrace_string();
      v161 = __nwlog_obj();
      v162 = v283[0];
      v172 = os_log_type_enabled(v161, v283[0]);
      if (!v171)
      {
        if (!v172)
        {
          goto LABEL_430;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v163 = "%{public}s called with null handle, no backtrace";
        goto LABEL_429;
      }

      if (!v172)
      {
        goto LABEL_306;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v171;
      v173 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_305;
    }

    v161 = __nwlog_obj();
    v162 = v283[0];
    if (!os_log_type_enabled(v161, v283[0]))
    {
      goto LABEL_430;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v163 = "%{public}s called with null handle";
LABEL_429:
    _os_log_impl(&dword_181A37000, v161, v162, v163, buf, 0xCu);
    goto LABEL_430;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_432:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      LODWORD(v271) = 12;
      v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v271);
      v283[0] = 16;
      v275[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v50, v283, v275))
      {
        goto LABEL_445;
      }

      if (v283[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        v52 = v283[0];
        if (!os_log_type_enabled(gLogObj, v283[0]))
        {
          goto LABEL_445;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_disconnected";
        v53 = "%{public}s called with null http1";
        goto LABEL_443;
      }

      if (v275[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        v52 = v283[0];
        if (!os_log_type_enabled(gLogObj, v283[0]))
        {
          goto LABEL_445;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_disconnected";
        v53 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_443;
      }

      v227 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v60 = gLogObj;
      v61 = v283[0];
      v228 = os_log_type_enabled(gLogObj, v283[0]);
      if (v227)
      {
        if (v228)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v227;
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v227);
        goto LABEL_445;
      }

      if (!v228)
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null http1, no backtrace";
      goto LABEL_450;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v179 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v160 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v179, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v283[0] = 16;
    v275[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v160, v283, v275))
    {
      goto LABEL_430;
    }

    if (v283[0] == 17)
    {
      v161 = __nwlog_obj();
      v162 = v283[0];
      if (!os_log_type_enabled(v161, v283[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null handle->http1_connection";
      goto LABEL_429;
    }

    if (v275[0] != OS_LOG_TYPE_INFO)
    {
      v161 = __nwlog_obj();
      v162 = v283[0];
      if (!os_log_type_enabled(v161, v283[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_429;
    }

    v171 = __nw_create_backtrace_string();
    v161 = __nwlog_obj();
    v162 = v283[0];
    v181 = os_log_type_enabled(v161, v283[0]);
    if (!v171)
    {
      if (!v181)
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_429;
    }

    if (v181)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v171;
      v173 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_305;
    }

LABEL_306:
    free(v171);
    if (!v160)
    {
      goto LABEL_432;
    }

    goto LABEL_431;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v178 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v160 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v178, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v283[0] = 16;
    v275[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v160, v283, v275))
    {
      goto LABEL_430;
    }

    if (v283[0] == 17)
    {
      v161 = __nwlog_obj();
      v162 = v283[0];
      if (!os_log_type_enabled(v161, v283[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null handle->http1_stream";
      goto LABEL_429;
    }

    if (v275[0] != OS_LOG_TYPE_INFO)
    {
      v161 = __nwlog_obj();
      v162 = v283[0];
      if (!os_log_type_enabled(v161, v283[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_429;
    }

    v171 = __nw_create_backtrace_string();
    v161 = __nwlog_obj();
    v162 = v283[0];
    v180 = os_log_type_enabled(v161, v283[0]);
    if (!v171)
    {
      if (!v180)
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v163 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_429;
    }

    if (!v180)
    {
      goto LABEL_306;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v171;
    v173 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_305:
    _os_log_impl(&dword_181A37000, v161, v162, v173, buf, 0x16u);
    goto LABEL_306;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_432;
  }

  if (!a2)
  {
    v165 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_disconnected";
    v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v165, 16, "%{public}s called with null other_protocol", buf, 12);
    v283[0] = 16;
    v275[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v50, v283, v275))
    {
      goto LABEL_445;
    }

    if (v283[0] == 17)
    {
      v51 = __nwlog_obj();
      v52 = v283[0];
      if (!os_log_type_enabled(v51, v283[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null other_protocol";
      goto LABEL_443;
    }

    if (v275[0] != OS_LOG_TYPE_INFO)
    {
      v51 = __nwlog_obj();
      v52 = v283[0];
      if (!os_log_type_enabled(v51, v283[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_443;
    }

    v174 = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = v283[0];
    v175 = os_log_type_enabled(v51, v283[0]);
    if (!v174)
    {
      if (!v175)
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_443;
    }

    if (!v175)
    {
      goto LABEL_313;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_disconnected";
    *&buf[12] = 2082;
    *&buf[14] = v174;
    v176 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_312:
    _os_log_impl(&dword_181A37000, v51, v52, v176, buf, 0x16u);
LABEL_313:
    free(v174);
    if (!v50)
    {
      return;
    }

    goto LABEL_446;
  }

  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v7 = *(handle + 1);
      if (v7)
      {
        if ((*(v7 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v9 = *(v7 + 256);
            v10 = *(*(v7 + 248) + 372);
            if (v9)
            {
              LODWORD(v9) = *(v9 + 860);
            }

            v11 = *(v7 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http1_disconnected";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v10;
            *&buf[38] = 1024;
            *&buf[40] = v9;
            LOWORD(v280) = 1024;
            *(&v280 + 2) = v11;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> initial stream disconnected", buf, 0x32u);
          }
        }

        nw_protocol_disconnected(*(v7 + 48), v7);
        return;
      }

      v269 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v269, 16, "%{public}s called with null http1_stream", buf, 12);
      v283[0] = 16;
      v275[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v50, v283, v275))
      {
        goto LABEL_445;
      }

      if (v283[0] == 17)
      {
        v51 = __nwlog_obj();
        v52 = v283[0];
        if (os_log_type_enabled(v51, v283[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_disconnected";
          v53 = "%{public}s called with null http1_stream";
LABEL_443:
          v229 = v51;
          v230 = v52;
LABEL_444:
          _os_log_impl(&dword_181A37000, v229, v230, v53, buf, 0xCu);
          goto LABEL_445;
        }

        goto LABEL_445;
      }

      if (v275[0] != OS_LOG_TYPE_INFO)
      {
        v51 = __nwlog_obj();
        v52 = v283[0];
        if (os_log_type_enabled(v51, v283[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_disconnected";
          v53 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_443;
        }

LABEL_445:
        if (!v50)
        {
          return;
        }

        goto LABEL_446;
      }

      v174 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = v283[0];
      v270 = os_log_type_enabled(v51, v283[0]);
      if (!v174)
      {
        if (v270)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_disconnected";
          v53 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_443;
        }

        goto LABEL_445;
      }

      if (!v270)
      {
        goto LABEL_313;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http1_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v174;
      v176 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
      goto LABEL_312;
    }

    goto LABEL_90;
  }

  v12 = *(handle + 2);
  if (!v12)
  {
LABEL_90:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_disconnected";
    v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_connection", buf, 12);
    v283[0] = 16;
    v275[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v50, v283, v275))
    {
      goto LABEL_445;
    }

    if (v283[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      v52 = v283[0];
      if (!os_log_type_enabled(gLogObj, v283[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null http1_connection";
      goto LABEL_443;
    }

    if (v275[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      v52 = v283[0];
      if (!os_log_type_enabled(gLogObj, v283[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_443;
    }

    v59 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v60 = gLogObj;
    v61 = v283[0];
    v62 = os_log_type_enabled(gLogObj, v283[0]);
    if (v59)
    {
      if (v62)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_disconnected";
        *&buf[12] = 2082;
        *&buf[14] = v59;
        _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v59);
      if (!v50)
      {
        return;
      }

LABEL_446:
      free(v50);
      return;
    }

    if (!v62)
    {
      goto LABEL_445;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_disconnected";
    v53 = "%{public}s called with null http1_connection, no backtrace";
LABEL_450:
    v229 = v60;
    v230 = v61;
    goto LABEL_444;
  }

  if ((*(v12 + 872) & 0x2000) != 0)
  {
    if (*(v12 + 158))
    {
      goto LABEL_111;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v54 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_111;
    }

    v55 = *(v12 + 488);
    v56 = *(*(v12 + 480) + 372);
    v57 = *(v12 + 860);
    if (v55)
    {
      LODWORD(v55) = *(v55 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v56;
    *&buf[38] = 1024;
    *&buf[40] = v57;
    LOWORD(v280) = 1024;
    *(&v280 + 2) = v55;
    v58 = "%{public}s %{public}s%s<i%u:c%u:s%u> input already finished, returning";
LABEL_110:
    _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, v58, buf, 0x32u);
    goto LABEL_111;
  }

  *(v12 + 872) |= 0x2000u;
  if ((*(v12 + 874) & 4) != 0)
  {
    if (*(v12 + 158))
    {
      goto LABEL_111;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v54 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_111;
    }

    v63 = *(v12 + 488);
    v64 = *(*(v12 + 480) + 372);
    v65 = *(v12 + 860);
    if (v63)
    {
      LODWORD(v63) = *(v63 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v64;
    *&buf[38] = 1024;
    *&buf[40] = v65;
    LOWORD(v280) = 1024;
    *(&v280 + 2) = v63;
    v58 = "%{public}s %{public}s%s<i%u:c%u:s%u> already getting input frames, returning";
    goto LABEL_110;
  }

  v13 = 0;
  *v275 = 0;
  v276 = v275;
  do
  {
    input_frames = nw_protocol_get_input_frames(*(v12 + 32), v12, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v275);
    v15 = *v275;
    if (!*v275)
    {
      goto LABEL_27;
    }

    v274 = v13;
    if (gLogDatapath == 1)
    {
      v48 = __nwlog_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447746;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 2048;
        *&buf[14] = v15;
        *&buf[22] = 2048;
        *&buf[24] = v275;
        *&buf[32] = 2048;
        *&buf[34] = v12 + 616;
        *&buf[42] = 1024;
        LODWORD(v280) = 1;
        WORD2(v280) = 1024;
        *(&v280 + 6) = 1;
        WORD5(v280) = 1024;
        HIDWORD(v280) = 1;
        _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
      }
    }

    v16 = 0;
    *v283 = 0;
    *&v283[8] = v283;
    do
    {
      v17 = v15;
      v18 = v15 + 32;
      v15 = *(v15 + 32);
      if (!v15 && !*(v17 + 40))
      {
        v15 = 0;
      }

      if (gLogDatapath == 1)
      {
        v23 = __nwlog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(v17 + 52);
          if (v24)
          {
            v24 -= *(v17 + 56) + *(v17 + 60);
          }

          if (v15)
          {
            v25 = *(v15 + 52);
            if (v25)
            {
              v25 -= *(v15 + 56) + *(v15 + 60);
            }
          }

          else
          {
            v25 = 0;
          }

          *buf = 136447234;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 2048;
          *&buf[14] = v17;
          *&buf[22] = 1024;
          *&buf[24] = v24;
          *&buf[28] = 2048;
          *&buf[30] = v15;
          *&buf[38] = 1024;
          *&buf[40] = v25;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
        }
      }

      v19 = *(v17 + 32);
      v20 = *(v17 + 40);
      v21 = (v19 + 40);
      if (!v19)
      {
        v21 = &v276;
      }

      *v21 = v20;
      *v20 = v19;
      v22 = *&v283[8];
      *(v17 + 32) = 0;
      *(v17 + 40) = v22;
      *v22 = v17;
      *&v283[8] = v18;
      ++v16;
    }

    while (v15);
    if (v16)
    {
      if (gLogDatapath == 1)
      {
        v49 = __nwlog_obj();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v16;
          _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
        }
      }

      v26 = *v283;
      v27 = v16;
      if (!*v283)
      {
        goto LABEL_68;
      }

      v27 = v16;
      do
      {
        v28 = v26;
        v29 = (v26 + 32);
        v26 = *(v26 + 32);
        if (!v26 && !*(v28 + 40))
        {
          v26 = 0;
        }

        if (gLogDatapath == 1)
        {
          log = __nwlog_obj();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v34 = *(v28 + 52);
            if (v34)
            {
              v34 -= *(v28 + 56) + *(v28 + 60);
            }

            if (v26)
            {
              v35 = *(v26 + 52);
              if (v35)
              {
                v35 -= *(v26 + 56) + *(v26 + 60);
              }
            }

            else
            {
              v35 = 0;
            }

            *buf = 136447234;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v28;
            *&buf[22] = 1024;
            *&buf[24] = v34;
            *&buf[28] = 2048;
            *&buf[30] = v26;
            *&buf[38] = 1024;
            *&buf[40] = v35;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
          }
        }

        v30 = *(v28 + 32);
        v31 = *(v28 + 40);
        v32 = (v30 + 40);
        if (!v30)
        {
          v32 = &v283[8];
        }

        *v32 = v31;
        *v31 = v30;
        *v29 = 0;
        v29[1] = 0;
        v33 = *(v12 + 624);
        *(v28 + 40) = v33;
        *v33 = v28;
        *(v12 + 624) = v29;
        --v27;
      }

      while (v26);
      if (v27)
      {
LABEL_68:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v27;
        LODWORD(v271) = 18;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s failed to deliver all temp frames, remaining %u frames", buf, v271);
        type = OS_LOG_TYPE_ERROR;
        v277 = 0;
        if (!__nwlog_fault(v36, &type, &v277))
        {
          goto LABEL_82;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_82;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          v39 = v37;
          v40 = v38;
          v41 = "%{public}s failed to deliver all temp frames, remaining %u frames";
        }

        else if (v277 == 1)
        {
          v42 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v43 = type;
          loga = gLogObj;
          v44 = os_log_type_enabled(gLogObj, type);
          if (v42)
          {
            if (v44)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v27;
              *&buf[18] = 2082;
              *&buf[20] = v42;
              _os_log_impl(&dword_181A37000, loga, v43, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v42);
            goto LABEL_82;
          }

          if (!v44)
          {
LABEL_82:
            if (v36)
            {
              free(v36);
            }

            goto LABEL_25;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          v39 = loga;
          v40 = v43;
          v41 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = gLogObj;
          v46 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_82;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          v39 = v45;
          v40 = v46;
          v41 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0x12u);
        goto LABEL_82;
      }
    }

LABEL_25:
    if (gLogDatapath == 1)
    {
      v47 = __nwlog_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 2048;
        *&buf[20] = v275;
        *&buf[28] = 2048;
        *&buf[30] = v12 + 616;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s moved %u frames from %p to %p", buf, 0x26u);
      }
    }

    v13 = v274;
LABEL_27:
    v13 += input_frames;
  }

  while (input_frames);
  if (gLogDatapath == 1)
  {
    v207 = __nwlog_obj();
    if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v78 = *v275;
  if (*v275)
  {
    *(*v275 + 40) = v283;
    *v283 = v78;
    *&v283[8] = v276;
    *v275 = 0;
    v276 = v275;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_21_49595;
    buf[32] = 0;
    do
    {
      v79 = *v283;
      if (!*v283)
      {
        break;
      }

      v80 = *(*v283 + 32);
      v81 = *(*v283 + 40);
      v82 = (v80 + 40);
      if (!v80)
      {
        v82 = &v283[8];
      }

      *v82 = v81;
      *v81 = v80;
      *(v79 + 32) = 0;
      *(v79 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v83 = *(v12 + 872);
  if ((v83 & 0x6000) == 0x2000 && !*(v12 + 616))
  {
    *(v12 + 872) = v83 | 0x4000;
    if (*(v12 + 488))
    {
      if (*(v12 + 868) && llhttp_message_needs_eof(v12 + 200))
      {
        if ((v83 & 4) == 0)
        {
          v113 = 5;
          if (*(v12 + 158))
          {
            goto LABEL_136;
          }

          goto LABEL_213;
        }

LABEL_406:
        if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v232 = __nwlog_obj();
          if (os_log_type_enabled(v232, OS_LOG_TYPE_DEBUG))
          {
            v233 = *(v12 + 488);
            v234 = *(*(v12 + 480) + 372);
            v235 = *(v12 + 860);
            if (v233)
            {
              LODWORD(v233) = *(v233 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v234;
            *&buf[38] = 1024;
            *&buf[40] = v235;
            LOWORD(v280) = 1024;
            *(&v280 + 2) = v233;
            _os_log_impl(&dword_181A37000, v232, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> signaled eof and terminated message successfully", buf, 0x32u);
          }
        }

        *(v12 + 874) |= 1u;
        goto LABEL_136;
      }

      v118 = llhttp_finish(v12 + 200);
      v119 = *(v12 + 872);
      if ((v119 & 4) != 0)
      {
        goto LABEL_406;
      }

      v113 = v118;
      if (!v118)
      {
        goto LABEL_406;
      }

      if (v118 != 14)
      {
        goto LABEL_212;
      }

      v120 = *(v12 + 488);
      if (v120)
      {
        v113 = 14;
        if ((v119 & 1) != 0 && (*(v120 + 428) & 2) == 0 && !*(v12 + 848) && !*(v12 + 852) && !*(v12 + 856))
        {
          if ((v119 & 2) != 0 && *(v12 + 800))
          {
            if (!*(v12 + 808))
            {
              v217 = strdup("");
              if (!v217)
              {
                v266 = __nwlog_obj();
                if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
                {
                  v267 = 3;
                }

                else
                {
                  v267 = 2;
                }

                *buf = 136446210;
                *&buf[4] = "strict_strdup";
                LODWORD(v271) = 12;
                v268 = _os_log_send_and_compose_impl(v267, 0, 0, 0, &dword_181A37000, v266, 16, "%{public}s strdup() failed", buf, v271);
                if (__nwlog_should_abort(v268))
                {
                  __break(1u);
                  return;
                }

                free(v268);
              }

              *(v12 + 808) = v217;
            }

            nw_http1_on_header_value_complete(v12 + 200);
          }

          nw_http1_on_headers_complete(v12 + 200);
          nw_http1_on_message_complete(v12 + 200);
          goto LABEL_406;
        }

LABEL_212:
        if (*(v12 + 158))
        {
          goto LABEL_136;
        }

        goto LABEL_213;
      }

      v245 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_recover_incomplete_header";
      LODWORD(v271) = 12;
      v246 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v245, 16, "%{public}s called with null http1_stream", buf, v271);
      v283[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v246, v283, &type))
      {
        if (v283[0] == 17)
        {
          v247 = __nwlog_obj();
          v248 = v283[0];
          if (!os_log_type_enabled(v247, v283[0]))
          {
            goto LABEL_535;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v249 = "%{public}s called with null http1_stream";
LABEL_534:
          _os_log_impl(&dword_181A37000, v247, v248, v249, buf, 0xCu);
          goto LABEL_535;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v247 = __nwlog_obj();
          v248 = v283[0];
          if (!os_log_type_enabled(v247, v283[0]))
          {
            goto LABEL_535;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v249 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_534;
        }

        v259 = __nw_create_backtrace_string();
        v247 = __nwlog_obj();
        v248 = v283[0];
        v260 = os_log_type_enabled(v247, v283[0]);
        if (!v259)
        {
          if (!v260)
          {
            goto LABEL_535;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v249 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_534;
        }

        if (v260)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          *&buf[12] = 2082;
          *&buf[14] = v259;
          _os_log_impl(&dword_181A37000, v247, v248, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v259);
      }

LABEL_535:
      if (v246)
      {
        free(v246);
      }

      v113 = 14;
      if (*(v12 + 158))
      {
        goto LABEL_136;
      }

LABEL_213:
      v121 = __nwlog_obj();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        v122 = *(v12 + 488);
        if (v122)
        {
          LODWORD(v122) = *(v122 + 424);
        }

        if (v113 >= 0x24)
        {
          abort();
        }

        v123 = *(*(v12 + 480) + 372);
        v124 = *(v12 + 860);
        v125 = off_1E6A35BE0[v113];
        *buf = 136447746;
        *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v123;
        *&buf[38] = 1024;
        *&buf[40] = v124;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v122;
        WORD3(v280) = 2080;
        *(&v280 + 1) = v125;
        _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> parser eof did not terminate full message with errno: %s, deferring input error", buf, 0x3Cu);
      }

      goto LABEL_136;
    }

    if ((v83 & 0x100) != 0)
    {
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v151 = __nwlog_obj();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
        {
          v152 = *(v12 + 488);
          v153 = *(*(v12 + 480) + 372);
          v154 = *(v12 + 860);
          if (v152)
          {
            LODWORD(v152) = *(v152 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_close";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v153;
          *&buf[38] = 1024;
          *&buf[40] = v154;
          LOWORD(v280) = 1024;
          *(&v280 + 2) = v152;
          _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
        }
      }

      goto LABEL_136;
    }

    *(v12 + 872) = v83 | 0x4100;
    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v241 = __nwlog_obj();
      if (os_log_type_enabled(v241, OS_LOG_TYPE_DEBUG))
      {
        v242 = *(v12 + 488);
        v243 = *(*(v12 + 480) + 372);
        v244 = *(v12 + 860);
        if (v242)
        {
          LODWORD(v242) = *(v242 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v243;
        *&buf[38] = 1024;
        *&buf[40] = v244;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v242;
        _os_log_impl(&dword_181A37000, v241, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v126 = *(v12 + 480);
    if (!v126)
    {
      v236 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      LODWORD(v271) = 12;
      v237 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v236, 16, "%{public}s called with null http1", buf, v271);
      v283[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v237, v283, &type))
      {
        goto LABEL_545;
      }

      if (v283[0] == 17)
      {
        v238 = __nwlog_obj();
        v239 = v283[0];
        if (!os_log_type_enabled(v238, v283[0]))
        {
          goto LABEL_545;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v240 = "%{public}s called with null http1";
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v251 = __nw_create_backtrace_string();
        v238 = __nwlog_obj();
        v239 = v283[0];
        v252 = os_log_type_enabled(v238, v283[0]);
        if (v251)
        {
          if (v252)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v251;
            _os_log_impl(&dword_181A37000, v238, v239, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v251);
          goto LABEL_545;
        }

        if (!v252)
        {
          goto LABEL_545;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v240 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v238 = __nwlog_obj();
        v239 = v283[0];
        if (!os_log_type_enabled(v238, v283[0]))
        {
          goto LABEL_545;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v240 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v265 = buf;
LABEL_544:
      _os_log_impl(&dword_181A37000, v238, v239, v240, v265, 0xCu);
      goto LABEL_545;
    }

    if ((*(v12 + 872) & 0x800) != 0)
    {
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v155 = __nwlog_obj();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
        {
          v156 = *(v12 + 488);
          v157 = *(*(v12 + 480) + 372);
          v158 = *(v12 + 860);
          if (v156)
          {
            LODWORD(v156) = *(v156 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v157;
          *&buf[38] = 1024;
          *&buf[40] = v158;
          LOWORD(v280) = 1024;
          *(&v280 + 2) = v156;
          _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_361;
    }

    *(v12 + 872) |= 0x800u;
    v127 = *(v126 + 368) + 1;
    *(v126 + 368) = v127;
    if (v127 == v127 << 31 >> 31)
    {
LABEL_356:
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v253 = __nwlog_obj();
        if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
        {
          v254 = *(v12 + 488);
          v255 = *(*(v12 + 480) + 372);
          v256 = *(v12 + 860);
          if (v254)
          {
            LODWORD(v254) = *(v254 + 424);
          }

          v257 = *(v126 + 368) + *(v126 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v255;
          *&buf[38] = 1024;
          *&buf[40] = v256;
          LOWORD(v280) = 1024;
          *(&v280 + 2) = v254;
          WORD3(v280) = 1024;
          DWORD2(v280) = v257;
          _os_log_impl(&dword_181A37000, v253, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v197 = *(v12 + 496);
      if (!v197)
      {
        v250 = __nwlog_obj();
        *v283 = 136446210;
        *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v271) = 12;
        v237 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v250, 16, "%{public}s called with null http1_connection->context", v283, v271);
        type = OS_LOG_TYPE_ERROR;
        v277 = 0;
        if (!__nwlog_fault(v237, &type, &v277))
        {
          goto LABEL_545;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v238 = __nwlog_obj();
          v239 = type;
          if (!os_log_type_enabled(v238, type))
          {
            goto LABEL_545;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v240 = "%{public}s called with null http1_connection->context";
LABEL_543:
          v265 = v283;
          goto LABEL_544;
        }

        if (v277 != 1)
        {
          v238 = __nwlog_obj();
          v239 = type;
          if (!os_log_type_enabled(v238, type))
          {
            goto LABEL_545;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v240 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_543;
        }

        v261 = __nw_create_backtrace_string();
        v238 = __nwlog_obj();
        v239 = type;
        v262 = os_log_type_enabled(v238, type);
        if (!v261)
        {
          if (!v262)
          {
            goto LABEL_545;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v240 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_543;
        }

        if (v262)
        {
          *v283 = 136446466;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v283[12] = 2082;
          *&v283[14] = v261;
          v263 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_520:
          _os_log_impl(&dword_181A37000, v238, v239, v263, v283, 0x16u);
        }

LABEL_521:
        free(v261);
        if (!v237)
        {
LABEL_361:
          if (!*(v12 + 488))
          {
            v200 = *(v12 + 784);
            if (v200)
            {
              nw_queue_set_timer_values(v200, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
            }

            else
            {
              if ((*(v12 + 158) & 1) == 0)
              {
                v201 = __nwlog_obj();
                if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                {
                  v202 = *(v12 + 488);
                  v203 = *(*(v12 + 480) + 372);
                  v204 = *(v12 + 860);
                  if (v202)
                  {
                    LODWORD(v202) = *(v202 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v12 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v203;
                  *&buf[38] = 1024;
                  *&buf[40] = v204;
                  LOWORD(v280) = 1024;
                  *(&v280 + 2) = v202;
                  _os_log_impl(&dword_181A37000, v201, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                }
              }

              v205 = *(v12 + 608);
              v206 = *(v12 + 496);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A32780;
              *&buf[32] = v205;
              nw_queue_context_async(v206, buf);
            }
          }

          goto LABEL_136;
        }

LABEL_546:
        free(v237);
        goto LABEL_361;
      }

      v198 = *(v12 + 480);
      if (v198)
      {
        v199 = *(v198 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v199;
        nw_queue_context_async(v197, buf);
        goto LABEL_361;
      }

      v258 = __nwlog_obj();
      *v283 = 136446210;
      *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v271) = 12;
      v237 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v258, 16, "%{public}s called with null http1", v283, v271);
      type = OS_LOG_TYPE_ERROR;
      v277 = 0;
      if (__nwlog_fault(v237, &type, &v277))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v238 = __nwlog_obj();
          v239 = type;
          if (!os_log_type_enabled(v238, type))
          {
            goto LABEL_545;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v240 = "%{public}s called with null http1";
          goto LABEL_543;
        }

        if (v277 != 1)
        {
          v238 = __nwlog_obj();
          v239 = type;
          if (!os_log_type_enabled(v238, type))
          {
            goto LABEL_545;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v240 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_543;
        }

        v261 = __nw_create_backtrace_string();
        v238 = __nwlog_obj();
        v239 = type;
        v264 = os_log_type_enabled(v238, type);
        if (!v261)
        {
          if (!v264)
          {
            goto LABEL_545;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v240 = "%{public}s called with null http1, no backtrace";
          goto LABEL_543;
        }

        if (v264)
        {
          *v283 = 136446466;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v283[12] = 2082;
          *&v283[14] = v261;
          v263 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_520;
        }

        goto LABEL_521;
      }

LABEL_545:
      if (!v237)
      {
        goto LABEL_361;
      }

      goto LABEL_546;
    }

    v128 = __nwlog_obj();
    v129 = *(v126 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v129;
    LODWORD(v271) = 42;
    v130 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v128, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v271);
    v283[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v130, v283, &type))
    {
      if (v283[0] == 17)
      {
        v131 = __nwlog_obj();
        v132 = v283[0];
        if (os_log_type_enabled(v131, v283[0]))
        {
          v133 = *(v126 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v133;
          v134 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_352:
          _os_log_impl(&dword_181A37000, v131, v132, v134, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v166 = __nw_create_backtrace_string();
        v131 = __nwlog_obj();
        v132 = v283[0];
        v167 = os_log_type_enabled(v131, v283[0]);
        if (v166)
        {
          if (v167)
          {
            v168 = *(v126 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v168;
            *&buf[42] = 2082;
            *&v280 = v166;
            _os_log_impl(&dword_181A37000, v131, v132, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v166);
          goto LABEL_353;
        }

        if (v167)
        {
          v196 = *(v126 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v196;
          v134 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_352;
        }
      }

      else
      {
        v131 = __nwlog_obj();
        v132 = v283[0];
        if (os_log_type_enabled(v131, v283[0]))
        {
          v177 = *(v126 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v177;
          v134 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_352;
        }
      }
    }

LABEL_353:
    if (v130)
    {
      free(v130);
    }

    *(v126 + 368) = -1;
    goto LABEL_356;
  }

LABEL_136:
  v84 = *(v12 + 616);
  v85 = *(v12 + 632);
  v86 = *(v12 + 872);
  v87 = v86 & 0x204;
  if ((v86 & 0x2000) != 0)
  {
    v97 = v84 | v85;
    v98 = (v86 >> 9) & 1;
    if (v87 == 4)
    {
      v98 = 1;
    }

    if (v97)
    {
      v99 = 1;
    }

    else
    {
      v99 = v98 == 0;
    }

    if (v99)
    {
      if (v87 == 4)
      {
        goto LABEL_179;
      }

      if (v97)
      {
        goto LABEL_179;
      }

      *(v12 + 864) = 5;
      if (*(v12 + 158))
      {
        goto LABEL_179;
      }

      v88 = __nwlog_obj();
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_179;
      }

      v100 = *(v12 + 488);
      v101 = *(*(v12 + 480) + 372);
      v102 = *(v12 + 860);
      if (v100)
      {
        LODWORD(v100) = *(v100 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v101;
      *&buf[38] = 1024;
      *&buf[40] = v102;
      LOWORD(v280) = 1024;
      *(&v280 + 2) = v100;
      v92 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection error";
    }

    else
    {
      *(v12 + 864) = 4;
      if (*(v12 + 158))
      {
        goto LABEL_179;
      }

      v88 = __nwlog_obj();
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_179;
      }

      v106 = *(v12 + 488);
      v107 = *(*(v12 + 480) + 372);
      v108 = *(v12 + 860);
      if (v106)
      {
        LODWORD(v106) = *(v106 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v107;
      *&buf[38] = 1024;
      *&buf[40] = v108;
      LOWORD(v280) = 1024;
      *(&v280 + 2) = v106;
      v92 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection complete";
    }

LABEL_178:
    _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, v92, buf, 0x32u);
    goto LABEL_179;
  }

  if (v87 != 4)
  {
    if (*(v12 + 158))
    {
      goto LABEL_179;
    }

    v88 = __nwlog_obj();
    if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_179;
    }

    v103 = *(v12 + 488);
    v104 = *(*(v12 + 480) + 372);
    v105 = *(v12 + 860);
    if (v103)
    {
      LODWORD(v103) = *(v103 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v104;
    *&buf[38] = 1024;
    *&buf[40] = v105;
    LOWORD(v280) = 1024;
    *(&v280 + 2) = v103;
    v92 = "%{public}s %{public}s%s<i%u:c%u:s%u> no change to http1 connection state";
    goto LABEL_178;
  }

  if (v84 | v85)
  {
    if (!v84)
    {
      goto LABEL_179;
    }

    if (v85)
    {
      goto LABEL_179;
    }

    *(v12 + 864) = 3;
    if (*(v12 + 158))
    {
      goto LABEL_179;
    }

    v88 = __nwlog_obj();
    if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_179;
    }

    v114 = *(v12 + 488);
    v115 = *(*(v12 + 480) + 372);
    v116 = *(v12 + 860);
    if (v114)
    {
      LODWORD(v114) = *(v114 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v115;
    *&buf[38] = 1024;
    *&buf[40] = v116;
    LOWORD(v280) = 1024;
    *(&v280 + 2) = v114;
    v92 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream pending";
    goto LABEL_178;
  }

  *(v12 + 864) = 2;
  if ((*(v12 + 158) & 1) == 0)
  {
    v88 = __nwlog_obj();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      v89 = *(v12 + 488);
      v90 = *(*(v12 + 480) + 372);
      v91 = *(v12 + 860);
      if (v89)
      {
        LODWORD(v89) = *(v89 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v90;
      *&buf[38] = 1024;
      *&buf[40] = v91;
      LOWORD(v280) = 1024;
      *(&v280 + 2) = v89;
      v92 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream complete";
      goto LABEL_178;
    }
  }

LABEL_179:
  if (*(v12 + 864) == 1)
  {
    if (v13)
    {
      v109 = *(v12 + 488);
      if (v109)
      {
        nw_protocol_input_available(*(v109 + 48), v109);
      }
    }
  }

LABEL_111:
  if ((*(v12 + 872) & 0x100) != 0)
  {
    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v74 = __nwlog_obj();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(v12 + 488);
        v76 = *(*(v12 + 480) + 372);
        v77 = *(v12 + 860);
        if (v75)
        {
          LODWORD(v75) = *(v75 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v76;
        *&buf[38] = 1024;
        *&buf[40] = v77;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v75;
        _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
      }
    }
  }

  else
  {
    *(v12 + 872) |= 0x100u;
    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v187 = __nwlog_obj();
      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
      {
        v188 = *(v12 + 488);
        v189 = *(*(v12 + 480) + 372);
        v190 = *(v12 + 860);
        if (v188)
        {
          LODWORD(v188) = *(v188 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v189;
        *&buf[38] = 1024;
        *&buf[40] = v190;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v188;
        _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v66 = *(v12 + 480);
    if (!v66)
    {
      v182 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      LODWORD(v271) = 12;
      v183 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v182, 16, "%{public}s called with null http1", buf, v271);
      v283[0] = 16;
      v275[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v183, v283, v275))
      {
        goto LABEL_470;
      }

      if (v283[0] == 17)
      {
        v184 = __nwlog_obj();
        v185 = v283[0];
        if (!os_log_type_enabled(v184, v283[0]))
        {
          goto LABEL_470;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v186 = "%{public}s called with null http1";
      }

      else if (v275[0] == OS_LOG_TYPE_INFO)
      {
        v209 = __nw_create_backtrace_string();
        v184 = __nwlog_obj();
        v185 = v283[0];
        v210 = os_log_type_enabled(v184, v283[0]);
        if (v209)
        {
          if (v210)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v209;
            _os_log_impl(&dword_181A37000, v184, v185, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v209);
          goto LABEL_470;
        }

        if (!v210)
        {
LABEL_470:
          if (!v183)
          {
            goto LABEL_239;
          }

          goto LABEL_471;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v186 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v184 = __nwlog_obj();
        v185 = v283[0];
        if (!os_log_type_enabled(v184, v283[0]))
        {
          goto LABEL_470;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v186 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v231 = buf;
      goto LABEL_469;
    }

    if ((*(v12 + 872) & 0x800) == 0)
    {
      *(v12 + 872) |= 0x800u;
      v67 = *(v66 + 368) + 1;
      *(v66 + 368) = v67;
      if (v67 != v67 << 31 >> 31)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v68 = *(v66 + 368);
        *buf = 136446978;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = "http1->nonresuable_connections";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v68;
        LODWORD(v271) = 42;
        v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v271);
        v283[0] = 16;
        v275[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v69, v283, v275))
        {
          goto LABEL_231;
        }

        if (v283[0] != 17)
        {
          if (v275[0] == OS_LOG_TYPE_INFO)
          {
            v110 = __nw_create_backtrace_string();
            v70 = __nwlog_obj();
            v71 = v283[0];
            v111 = os_log_type_enabled(v70, v283[0]);
            if (v110)
            {
              if (v111)
              {
                v112 = *(v66 + 368);
                *buf = 136447234;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v112;
                *&buf[42] = 2082;
                *&v280 = v110;
                _os_log_impl(&dword_181A37000, v70, v71, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v110);
              goto LABEL_231;
            }

            if (!v111)
            {
              goto LABEL_231;
            }

            v135 = *(v66 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v135;
            v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          }

          else
          {
            v70 = __nwlog_obj();
            v71 = v283[0];
            if (!os_log_type_enabled(v70, v283[0]))
            {
              goto LABEL_231;
            }

            v117 = *(v66 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v117;
            v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          }

LABEL_230:
          _os_log_impl(&dword_181A37000, v70, v71, v73, buf, 0x2Au);
          goto LABEL_231;
        }

        v70 = __nwlog_obj();
        v71 = v283[0];
        if (os_log_type_enabled(v70, v283[0]))
        {
          v72 = *(v66 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v72;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
          goto LABEL_230;
        }

LABEL_231:
        if (v69)
        {
          free(v69);
        }

        *(v66 + 368) = -1;
      }

      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v211 = __nwlog_obj();
        if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
        {
          v212 = *(v12 + 488);
          v213 = *(*(v12 + 480) + 372);
          v214 = *(v12 + 860);
          if (v212)
          {
            LODWORD(v212) = *(v212 + 424);
          }

          v215 = *(v66 + 368) + *(v66 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v213;
          *&buf[38] = 1024;
          *&buf[40] = v214;
          LOWORD(v280) = 1024;
          *(&v280 + 2) = v212;
          WORD3(v280) = 1024;
          DWORD2(v280) = v215;
          _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v136 = *(v12 + 496);
      if (v136)
      {
        v137 = *(v12 + 480);
        if (v137)
        {
          v138 = *(v137 + 200);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
          *&buf[24] = &unk_1E6A327A8;
          *&buf[32] = v138;
          nw_queue_context_async(v136, buf);
          goto LABEL_239;
        }

        v216 = __nwlog_obj();
        *v283 = 136446210;
        *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v271) = 12;
        v183 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v216, 16, "%{public}s called with null http1", v283, v271);
        v275[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v183, v275, &type))
        {
          goto LABEL_470;
        }

        if (v275[0] == OS_LOG_TYPE_FAULT)
        {
          v184 = __nwlog_obj();
          v185 = v275[0];
          if (os_log_type_enabled(v184, v275[0]))
          {
            *v283 = 136446210;
            *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
            v186 = "%{public}s called with null http1";
            goto LABEL_468;
          }

          goto LABEL_470;
        }

        if (type == OS_LOG_TYPE_INFO)
        {
          v223 = __nw_create_backtrace_string();
          v184 = __nwlog_obj();
          v185 = v275[0];
          v226 = os_log_type_enabled(v184, v275[0]);
          if (v223)
          {
            if (v226)
            {
              *v283 = 136446466;
              *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              *&v283[12] = 2082;
              *&v283[14] = v223;
              v225 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_422:
              _os_log_impl(&dword_181A37000, v184, v185, v225, v283, 0x16u);
            }

            goto LABEL_423;
          }

          if (!v226)
          {
            goto LABEL_470;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v186 = "%{public}s called with null http1, no backtrace";
        }

        else
        {
          v184 = __nwlog_obj();
          v185 = v275[0];
          if (!os_log_type_enabled(v184, v275[0]))
          {
            goto LABEL_470;
          }

          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v186 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_468:
        v231 = v283;
LABEL_469:
        _os_log_impl(&dword_181A37000, v184, v185, v186, v231, 0xCu);
        goto LABEL_470;
      }

      v208 = __nwlog_obj();
      *v283 = 136446210;
      *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v271) = 12;
      v183 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v208, 16, "%{public}s called with null http1_connection->context", v283, v271);
      v275[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v183, v275, &type))
      {
        goto LABEL_470;
      }

      if (v275[0] == OS_LOG_TYPE_FAULT)
      {
        v184 = __nwlog_obj();
        v185 = v275[0];
        if (os_log_type_enabled(v184, v275[0]))
        {
          *v283 = 136446210;
          *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v186 = "%{public}s called with null http1_connection->context";
          goto LABEL_468;
        }

        goto LABEL_470;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v184 = __nwlog_obj();
        v185 = v275[0];
        if (!os_log_type_enabled(v184, v275[0]))
        {
          goto LABEL_470;
        }

        *v283 = 136446210;
        *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v186 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
        goto LABEL_468;
      }

      v223 = __nw_create_backtrace_string();
      v184 = __nwlog_obj();
      v185 = v275[0];
      v224 = os_log_type_enabled(v184, v275[0]);
      if (!v223)
      {
        if (!v224)
        {
          goto LABEL_470;
        }

        *v283 = 136446210;
        *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v186 = "%{public}s called with null http1_connection->context, no backtrace";
        goto LABEL_468;
      }

      if (v224)
      {
        *v283 = 136446466;
        *&v283[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v283[12] = 2082;
        *&v283[14] = v223;
        v225 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
        goto LABEL_422;
      }

LABEL_423:
      free(v223);
      if (!v183)
      {
        goto LABEL_239;
      }

LABEL_471:
      free(v183);
      goto LABEL_239;
    }

    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v93 = __nwlog_obj();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        v94 = *(v12 + 488);
        v95 = *(*(v12 + 480) + 372);
        v96 = *(v12 + 860);
        if (v94)
        {
          LODWORD(v94) = *(v94 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v95;
        *&buf[38] = 1024;
        *&buf[40] = v96;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v94;
        _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
      }
    }

LABEL_239:
    if (!*(v12 + 488))
    {
      v144 = *(v12 + 784);
      if (v144)
      {
        if (*v144)
        {
          dispatch_source_set_timer(*v144, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          *(v144 + 32) = xmmword_182B08D40;
          if (*(v144 + 48) == 1 && *(v144 + 49) == 1)
          {
            nw_queue_source_run_timer(v144);
          }
        }
      }

      else
      {
        if ((*(v12 + 158) & 1) == 0)
        {
          v145 = __nwlog_obj();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
          {
            v146 = *(v12 + 488);
            v147 = *(*(v12 + 480) + 372);
            v148 = *(v12 + 860);
            if (v146)
            {
              LODWORD(v146) = *(v146 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_close";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v147;
            *&buf[38] = 1024;
            *&buf[40] = v148;
            LOWORD(v280) = 1024;
            *(&v280 + 2) = v146;
            _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
          }
        }

        v149 = *(v12 + 608);
        v150 = *(v12 + 496);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A32780;
        *&buf[32] = v149;
        nw_queue_context_async(v150, buf);
      }
    }
  }

  v139 = *(v12 + 488);
  if (v139)
  {
    if ((*(v12 + 864) & 0xFFFFFFFE) == 4 || (*(v139 + 428) & 0x20) != 0)
    {
      if ((*(v12 + 158) & 1) != 0 || gLogDatapath != 1)
      {
        goto LABEL_248;
      }

      v191 = __nwlog_obj();
      v192 = os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG);
      v139 = *(v12 + 488);
      if (v192)
      {
        v193 = *(*(v12 + 480) + 372);
        v194 = *(v12 + 860);
        if (v139)
        {
          v195 = *(v139 + 424);
        }

        else
        {
          v195 = 0;
        }

        *buf = 136448002;
        *&buf[4] = "nw_protocol_http1_disconnected";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v193;
        *&buf[38] = 1024;
        *&buf[40] = v194;
        LOWORD(v280) = 1024;
        *(&v280 + 2) = v195;
        WORD3(v280) = 2048;
        *(&v280 + 1) = v12;
        v281 = 2048;
        v282 = v139;
        _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection %p sending disconnected to current stream (%p)", buf, 0x46u);
        v139 = *(v12 + 488);
      }

      if (v139)
      {
LABEL_248:
        nw_protocol_disconnected(*(v139 + 48), v139);
      }

      else
      {
        nw_protocol_disconnected(0, 0);
      }
    }

    else
    {
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v218 = __nwlog_obj();
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
        {
          v219 = *(v12 + 488);
          v220 = *(*(v12 + 480) + 372);
          v221 = *(v12 + 860);
          if (v219)
          {
            v222 = *(v219 + 424);
          }

          else
          {
            v222 = 0;
          }

          *buf = 136448002;
          *&buf[4] = "nw_protocol_http1_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v220;
          *&buf[38] = 1024;
          *&buf[40] = v221;
          LOWORD(v280) = 1024;
          *(&v280 + 2) = v222;
          WORD3(v280) = 2048;
          *(&v280 + 1) = v12;
          v281 = 2048;
          v282 = v219;
          _os_log_impl(&dword_181A37000, v218, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection %p not sending disconnected up to current stream (%p), input still available", buf, 0x46u);
        }
      }

      *(v12 + 872) |= 0x80u;
    }
  }

  else if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v140 = __nwlog_obj();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
    {
      v141 = *(v12 + 488);
      v142 = *(*(v12 + 480) + 372);
      v143 = *(v12 + 860);
      if (v141)
      {
        LODWORD(v141) = *(v141 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_protocol_http1_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v142;
      *&buf[38] = 1024;
      *&buf[40] = v143;
      LOWORD(v280) = 1024;
      *(&v280 + 2) = v141;
      _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> no stream on http connection, just closing", buf, 0x32u);
    }
  }
}

void nw_protocol_http1_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v1088 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v441 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v442 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v441, 16, "%{public}s called with null protocol", buf, 12);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v442, iterate_block, aBlock))
    {
      goto LABEL_1289;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v443 = __nwlog_obj();
      v444 = iterate_block[0];
      if (!os_log_type_enabled(v443, iterate_block[0]))
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null protocol";
      goto LABEL_1288;
    }

    if (aBlock[0] != 1)
    {
      v443 = __nwlog_obj();
      v444 = iterate_block[0];
      if (!os_log_type_enabled(v443, iterate_block[0]))
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_1288;
    }

    backtrace_string = __nw_create_backtrace_string();
    v443 = __nwlog_obj();
    v444 = iterate_block[0];
    v451 = os_log_type_enabled(v443, iterate_block[0]);
    if (!backtrace_string)
    {
      if (!v451)
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_1288;
    }

    if (v451)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      _os_log_impl(&dword_181A37000, v443, v444, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_1289;
  }

  handle = a1->handle;
  if (!handle)
  {
    v446 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v442 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v446, 16, "%{public}s called with null handle", buf, 12);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v442, iterate_block, aBlock))
    {
      goto LABEL_1289;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v443 = __nwlog_obj();
      v444 = iterate_block[0];
      if (!os_log_type_enabled(v443, iterate_block[0]))
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null handle";
      goto LABEL_1288;
    }

    if (aBlock[0] != 1)
    {
      v443 = __nwlog_obj();
      v444 = iterate_block[0];
      if (!os_log_type_enabled(v443, iterate_block[0]))
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null handle, backtrace limit exceeded";
      goto LABEL_1288;
    }

    v452 = __nw_create_backtrace_string();
    v443 = __nwlog_obj();
    v444 = iterate_block[0];
    v453 = os_log_type_enabled(v443, iterate_block[0]);
    if (v452)
    {
      if (v453)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v452;
        _os_log_impl(&dword_181A37000, v443, v444, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v452);
      if (!v442)
      {
        goto LABEL_1291;
      }

      goto LABEL_1290;
    }

    if (v453)
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null handle, no backtrace";
      goto LABEL_1288;
    }

LABEL_1289:
    if (!v442)
    {
      goto LABEL_1291;
    }

LABEL_1290:
    free(v442);
    goto LABEL_1291;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_1291:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      LODWORD(v1056) = 12;
      v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v1056);
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (!__nwlog_fault(v95, iterate_block, aBlock))
      {
        goto LABEL_1323;
      }

      if (LOBYTE(iterate_block[0]) == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v96 = gLogObj;
        v97 = iterate_block[0];
        if (!os_log_type_enabled(gLogObj, iterate_block[0]))
        {
          goto LABEL_1323;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        v98 = "%{public}s called with null http1";
        goto LABEL_1321;
      }

      if (aBlock[0] != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v96 = gLogObj;
        v97 = iterate_block[0];
        if (!os_log_type_enabled(gLogObj, iterate_block[0]))
        {
          goto LABEL_1323;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        v98 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_1321;
      }

      v792 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v793 = gLogObj;
      v794 = iterate_block[0];
      v795 = os_log_type_enabled(gLogObj, iterate_block[0]);
      if (!v792)
      {
        if (!v795)
        {
          goto LABEL_1323;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        v98 = "%{public}s called with null http1, no backtrace";
        goto LABEL_1328;
      }

      if (v795)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v792;
        _os_log_impl(&dword_181A37000, v793, v794, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v792);
LABEL_1323:
      if (!v95)
      {
        return;
      }

      goto LABEL_1324;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v616 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v442 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v616, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v442, iterate_block, aBlock))
    {
      goto LABEL_1289;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v443 = __nwlog_obj();
      v444 = iterate_block[0];
      if (!os_log_type_enabled(v443, iterate_block[0]))
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null handle->http1_connection";
      goto LABEL_1288;
    }

    if (aBlock[0] != 1)
    {
      v443 = __nwlog_obj();
      v444 = iterate_block[0];
      if (!os_log_type_enabled(v443, iterate_block[0]))
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_1288;
    }

    v692 = __nw_create_backtrace_string();
    v443 = __nwlog_obj();
    v444 = iterate_block[0];
    v695 = os_log_type_enabled(v443, iterate_block[0]);
    if (!v692)
    {
      if (!v695)
      {
        goto LABEL_1289;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v445 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_1288;
    }

    if (v695)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v692;
      v694 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_1132;
    }

    goto LABEL_1133;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v615 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v442 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v615, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v442, iterate_block, aBlock))
    {
      goto LABEL_1289;
    }

    if (LOBYTE(iterate_block[0]) != 17)
    {
      if (aBlock[0] != 1)
      {
        v443 = __nwlog_obj();
        v444 = iterate_block[0];
        if (!os_log_type_enabled(v443, iterate_block[0]))
        {
          goto LABEL_1289;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        v445 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_1288;
      }

      v692 = __nw_create_backtrace_string();
      v443 = __nwlog_obj();
      v444 = iterate_block[0];
      v693 = os_log_type_enabled(v443, iterate_block[0]);
      if (!v692)
      {
        if (!v693)
        {
          goto LABEL_1289;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        v445 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_1288;
      }

      if (v693)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v692;
        v694 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_1132:
        _os_log_impl(&dword_181A37000, v443, v444, v694, buf, 0x16u);
      }

LABEL_1133:
      free(v692);
      if (!v442)
      {
        goto LABEL_1291;
      }

      goto LABEL_1290;
    }

    v443 = __nwlog_obj();
    v444 = iterate_block[0];
    if (!os_log_type_enabled(v443, iterate_block[0]))
    {
      goto LABEL_1289;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v445 = "%{public}s called with null handle->http1_stream";
LABEL_1288:
    _os_log_impl(&dword_181A37000, v443, v444, v445, buf, 0xCu);
    goto LABEL_1289;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!*v4)
  {
    goto LABEL_1291;
  }

  if (!a2)
  {
    v448 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v448, 16, "%{public}s called with null other_protocol", buf, 12);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v95, iterate_block, aBlock))
    {
      goto LABEL_1323;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v96 = __nwlog_obj();
      v97 = iterate_block[0];
      if (!os_log_type_enabled(v96, iterate_block[0]))
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null other_protocol";
      goto LABEL_1321;
    }

    if (aBlock[0] != 1)
    {
      v96 = __nwlog_obj();
      v97 = iterate_block[0];
      if (!os_log_type_enabled(v96, iterate_block[0]))
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_1321;
    }

    v106 = __nw_create_backtrace_string();
    v96 = __nwlog_obj();
    v97 = iterate_block[0];
    v466 = os_log_type_enabled(v96, iterate_block[0]);
    if (!v106)
    {
      if (!v466)
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_1321;
    }

    if (!v466)
    {
      goto LABEL_168;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v106;
    v108 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_167;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_1309;
    }

    v8 = *(handle + 2);
    if (v8)
    {
      v9 = (v8 + 488);
      goto LABEL_17;
    }

    v617 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_stream_for_protocol";
    v618 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v617, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v618, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v619 = __nwlog_obj();
        v620 = iterate_block[0];
        if (!os_log_type_enabled(v619, iterate_block[0]))
        {
          goto LABEL_1307;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_stream_for_protocol";
        v621 = "%{public}s called with null handle->http1_connection";
        goto LABEL_1306;
      }

      if (aBlock[0] != 1)
      {
        v619 = __nwlog_obj();
        v620 = iterate_block[0];
        if (!os_log_type_enabled(v619, iterate_block[0]))
        {
          goto LABEL_1307;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_stream_for_protocol";
        v621 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_1306;
      }

      v696 = __nw_create_backtrace_string();
      v619 = __nwlog_obj();
      v620 = iterate_block[0];
      v697 = os_log_type_enabled(v619, iterate_block[0]);
      if (v696)
      {
        if (v697)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_get_stream_for_protocol";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v696;
          _os_log_impl(&dword_181A37000, v619, v620, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v696);
        goto LABEL_1307;
      }

      if (v697)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_stream_for_protocol";
        v621 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_1306:
        _os_log_impl(&dword_181A37000, v619, v620, v621, buf, 0xCu);
      }
    }

LABEL_1307:
    if (v618)
    {
      free(v618);
    }

LABEL_1309:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    LODWORD(v1056) = 12;
    v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v1056);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v95, iterate_block, aBlock))
    {
      goto LABEL_1323;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v96 = gLogObj;
      v97 = iterate_block[0];
      if (!os_log_type_enabled(gLogObj, iterate_block[0]))
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null http1_stream";
      goto LABEL_1321;
    }

    if (aBlock[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v96 = gLogObj;
      v97 = iterate_block[0];
      if (!os_log_type_enabled(gLogObj, iterate_block[0]))
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_1321;
    }

    v796 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v793 = gLogObj;
    v794 = iterate_block[0];
    v797 = os_log_type_enabled(gLogObj, iterate_block[0]);
    if (v796)
    {
      if (v797)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v796;
        _os_log_impl(&dword_181A37000, v793, v794, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v796);
      if (!v95)
      {
        return;
      }

LABEL_1324:
      free(v95);
      return;
    }

    if (v797)
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null http1_stream, no backtrace";
LABEL_1328:
      v798 = v793;
      v799 = v794;
      goto LABEL_1322;
    }

    goto LABEL_1323;
  }

  v9 = (handle + 8);
LABEL_17:
  v10 = *v9;
  if (!*v9)
  {
    goto LABEL_1309;
  }

  if (!*(v10 + 248))
  {
    v454 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v454, 16, "%{public}s called with null http1_stream->protocol_http1", buf, 12);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v95, iterate_block, aBlock))
    {
      goto LABEL_1323;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v96 = __nwlog_obj();
      v97 = iterate_block[0];
      if (!os_log_type_enabled(v96, iterate_block[0]))
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null http1_stream->protocol_http1";
      goto LABEL_1321;
    }

    if (aBlock[0] != 1)
    {
      v96 = __nwlog_obj();
      v97 = iterate_block[0];
      if (!os_log_type_enabled(v96, iterate_block[0]))
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
      goto LABEL_1321;
    }

    v106 = __nw_create_backtrace_string();
    v96 = __nwlog_obj();
    v97 = iterate_block[0];
    v622 = os_log_type_enabled(v96, iterate_block[0]);
    if (!v106)
    {
      if (!v622)
      {
        goto LABEL_1323;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v98 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
      goto LABEL_1321;
    }

    if (!v622)
    {
      goto LABEL_168;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v106;
    v108 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
LABEL_167:
    _os_log_impl(&dword_181A37000, v96, v97, v108, buf, 0x16u);
LABEL_168:
    free(v106);
    if (!v95)
    {
      return;
    }

    goto LABEL_1324;
  }

  v11 = *(v10 + 428);
  *(v10 + 428) = v11 | 0x20;
  v12 = *(v10 + 256);
  v1065 = v7;
  if (v12)
  {
    v13 = *(v12 + 480);
    if (v13)
    {
      v14 = *(v12 + 488);
      if (v14)
      {
        if ((*(v14 + 428) & 0x4000) != 0)
        {
          v28 = *(v12 + 872);
          if ((v28 & 4) == 0)
          {
            if (*(v12 + 158))
            {
              goto LABEL_99;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_99;
            }

            v17 = __nwlog_obj();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_99;
            }

            v29 = *(v12 + 488);
            v30 = *(*(v12 + 480) + 372);
            v31 = *(v12 + 860);
            if (v29)
            {
              LODWORD(v29) = *(v29 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v30;
            *&v1082[6] = 1024;
            *&v1082[8] = v31;
            *&v1082[12] = 1024;
            *&v1082[14] = v29;
            v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the message is not complete";
            goto LABEL_1383;
          }

          if ((v28 & 0x20) == 0)
          {
            if (*(v12 + 158))
            {
              goto LABEL_99;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_99;
            }

            v17 = __nwlog_obj();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_99;
            }

            v35 = *(v12 + 488);
            v36 = *(*(v12 + 480) + 372);
            v37 = *(v12 + 860);
            if (v35)
            {
              LODWORD(v35) = *(v35 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v36;
            *&v1082[6] = 1024;
            *&v1082[8] = v37;
            *&v1082[12] = 1024;
            *&v1082[14] = v35;
            v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the outbound message is not complete";
            goto LABEL_1383;
          }

          if ((v28 & 8) == 0)
          {
            if (*(v12 + 158))
            {
              goto LABEL_99;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_99;
            }

            v17 = __nwlog_obj();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_99;
            }

            v46 = *(v12 + 488);
            v47 = *(*(v12 + 480) + 372);
            v48 = *(v12 + 860);
            if (v46)
            {
              LODWORD(v46) = *(v46 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v47;
            *&v1082[6] = 1024;
            *&v1082[8] = v48;
            *&v1082[12] = 1024;
            *&v1082[14] = v46;
            v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because keep alive is false";
            goto LABEL_1383;
          }
        }

        else if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v658 = __nwlog_obj();
          v659 = os_log_type_enabled(v658, OS_LOG_TYPE_DEBUG);
          v13 = *(v12 + 480);
          if (v659)
          {
            v660 = *(v13 + 372);
            v661 = *(v12 + 860);
            v662 = *(v12 + 488);
            if (v662)
            {
              LODWORD(v662) = *(v662 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v660;
            *&v1082[6] = 1024;
            *&v1082[8] = v661;
            *&v1082[12] = 1024;
            *&v1082[14] = v662;
            _os_log_impl(&dword_181A37000, v658, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection may be reusable because the current stream didn't use it", buf, 0x32u);
            v13 = *(v12 + 480);
          }
        }

        v15 = *(v13 + 376);
        if ((v15 & 0x10) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v32 = *(v12 + 488);
          v33 = *(*(v12 + 480) + 372);
          v34 = *(v12 + 860);
          if (v32)
          {
            LODWORD(v32) = *(v32 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v33;
          *&v1082[6] = 1024;
          *&v1082[8] = v34;
          *&v1082[12] = 1024;
          *&v1082[14] = v32;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because pool is closed for new connections";
          goto LABEL_1383;
        }

        v16 = *(v12 + 872);
        if ((v16 & 0x200) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v43 = *(v12 + 488);
          v44 = *(*(v12 + 480) + 372);
          v45 = *(v12 + 860);
          if (v43)
          {
            LODWORD(v43) = *(v43 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v44;
          *&v1082[6] = 1024;
          *&v1082[8] = v45;
          *&v1082[12] = 1024;
          *&v1082[14] = v43;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was upgraded";
          goto LABEL_1383;
        }

        if ((v16 & 0x40) == 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v18 = *(v12 + 488);
          v19 = *(*(v12 + 480) + 372);
          v20 = *(v12 + 860);
          if (v18)
          {
            LODWORD(v18) = *(v18 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v19;
          *&v1082[6] = 1024;
          *&v1082[8] = v20;
          *&v1082[12] = 1024;
          *&v1082[14] = v18;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was never connected";
LABEL_1383:
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, v21, buf, 0x32u);
LABEL_99:
          nw_protocol_disconnect(*(v12 + 32), v12);
          v27 = v1065;
LABEL_100:
          if ((*(v27 + 376) & 1) == 0 || (*(v12 + 874) & 2) == 0)
          {
            goto LABEL_102;
          }

          if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v751 = __nwlog_obj();
            v752 = os_log_type_enabled(v751, OS_LOG_TYPE_DEBUG);
            v27 = v1065;
            if (v752)
            {
              v753 = *(v12 + 488);
              v754 = *(*(v12 + 480) + 372);
              v755 = *(v12 + 860);
              if (v753)
              {
                LODWORD(v753) = *(v753 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_protocol_http1_disconnect";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v12 + 74;
              HIWORD(buf[2]) = 2080;
              v1081 = " ";
              *v1082 = 1024;
              *&v1082[2] = v754;
              *&v1082[6] = 1024;
              *&v1082[8] = v755;
              *&v1082[12] = 1024;
              *&v1082[14] = v753;
              *&v1082[18] = 2048;
              *&v1082[20] = v12;
              _os_log_impl(&dword_181A37000, v751, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> triggering new flow on server connection %p, more input available", buf, 0x3Cu);
              v27 = v1065;
            }
          }

          if ((*(v27 + 376) & 1) == 0)
          {
            if (*(v27 + 158))
            {
              return;
            }

            if (gLogDatapath != 1)
            {
              return;
            }

            v68 = __nwlog_obj();
            if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v71 = *(v1065 + 372);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_new_flow_valid";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v1065 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v71;
            v70 = "%{public}s %{public}s%s<i%u> called when not in server mode, ignoring";
            goto LABEL_258;
          }

          v72 = *(v27 + 328);
          if (v72)
          {
            v73 = *v72;
            if (v73 && *v73)
            {
              if (*(v27 + 264))
              {
                v74 = _nw_parameters_copy();
                *(v1065 + 224) = v12;
                if ((***(v1065 + 328))(*(v1065 + 328), *(v1065 + 280), v74) && *(v12 + 488) && !*(v1065 + 224))
                {
                  if ((*(v1065 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v972 = __nwlog_obj();
                    if (os_log_type_enabled(v972, OS_LOG_TYPE_DEBUG))
                    {
                      v973 = *(v1065 + 372);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v1065 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1081 = " ";
                      *v1082 = 1024;
                      *&v1082[2] = v973;
                      _os_log_impl(&dword_181A37000, v972, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> sucessfully associated new flow stream with connection, awaiting connected", buf, 0x26u);
                    }
                  }

                  *(v12 + 874) &= ~2u;
                  goto LABEL_757;
                }

                if ((*(v1065 + 158) & 1) == 0)
                {
                  v75 = __nwlog_obj();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    v76 = *(v1065 + 372);
                    LODWORD(buf[0]) = 136447234;
                    *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v1065 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1081 = " ";
                    *v1082 = 1024;
                    *&v1082[2] = v76;
                    *&v1082[6] = 2048;
                    *&v1082[8] = v12;
                    _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler didn't accept the new flow, closing connection %p", buf, 0x30u);
                  }
                }

                if ((*(v12 + 872) & 0x100) != 0)
                {
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v102 = __nwlog_obj();
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                    {
                      v103 = *(v12 + 488);
                      v104 = *(*(v12 + 480) + 372);
                      v105 = *(v12 + 860);
                      if (v103)
                      {
                        LODWORD(v103) = *(v103 + 424);
                      }

                      LODWORD(buf[0]) = 136447490;
                      *(buf + 4) = "nw_http1_connection_close";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1081 = " ";
                      *v1082 = 1024;
                      *&v1082[2] = v104;
                      *&v1082[6] = 1024;
                      *&v1082[8] = v105;
                      *&v1082[12] = 1024;
                      *&v1082[14] = v103;
                      _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
                    }
                  }

                  goto LABEL_757;
                }

                *(v12 + 872) |= 0x100u;
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v915 = __nwlog_obj();
                  if (os_log_type_enabled(v915, OS_LOG_TYPE_DEBUG))
                  {
                    v916 = *(v12 + 488);
                    v917 = *(*(v12 + 480) + 372);
                    v918 = *(v12 + 860);
                    if (v916)
                    {
                      LODWORD(v916) = *(v916 + 424);
                    }

                    LODWORD(buf[0]) = 136447490;
                    *(buf + 4) = "nw_http1_connection_close";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1081 = " ";
                    *v1082 = 1024;
                    *&v1082[2] = v917;
                    *&v1082[6] = 1024;
                    *&v1082[8] = v918;
                    *&v1082[12] = 1024;
                    *&v1082[14] = v916;
                    _os_log_impl(&dword_181A37000, v915, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
                  }
                }

                v77 = *(v12 + 480);
                if (!v77)
                {
                  v910 = __nwlog_obj();
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                  LODWORD(v1056) = 12;
                  v911 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v910, 16, "%{public}s called with null http1", buf, v1056);
                  LOBYTE(iterate_block[0]) = 16;
                  aBlock[0] = 0;
                  if (!__nwlog_fault(v911, iterate_block, aBlock))
                  {
                    goto LABEL_1795;
                  }

                  if (LOBYTE(iterate_block[0]) == 17)
                  {
                    v912 = __nwlog_obj();
                    v913 = iterate_block[0];
                    if (!os_log_type_enabled(v912, iterate_block[0]))
                    {
                      goto LABEL_1795;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    v914 = "%{public}s called with null http1";
                  }

                  else if (aBlock[0] == 1)
                  {
                    v938 = __nw_create_backtrace_string();
                    v912 = __nwlog_obj();
                    v913 = iterate_block[0];
                    v939 = os_log_type_enabled(v912, iterate_block[0]);
                    if (v938)
                    {
                      if (v939)
                      {
                        LODWORD(buf[0]) = 136446466;
                        *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v938;
                        v940 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                        v941 = buf;
LABEL_1598:
                        _os_log_impl(&dword_181A37000, v912, v913, v940, v941, 0x16u);
                        goto LABEL_1599;
                      }

                      goto LABEL_1599;
                    }

                    if (!v939)
                    {
                      goto LABEL_1795;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    v914 = "%{public}s called with null http1, no backtrace";
                  }

                  else
                  {
                    v912 = __nwlog_obj();
                    v913 = iterate_block[0];
                    if (!os_log_type_enabled(v912, iterate_block[0]))
                    {
                      goto LABEL_1795;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    v914 = "%{public}s called with null http1, backtrace limit exceeded";
                  }

                  v1011 = buf;
LABEL_1794:
                  _os_log_impl(&dword_181A37000, v912, v913, v914, v1011, 0xCu);
                  goto LABEL_1795;
                }

                if ((*(v12 + 872) & 0x800) != 0)
                {
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v118 = __nwlog_obj();
                    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
                    {
                      v119 = *(v12 + 488);
                      v120 = *(*(v12 + 480) + 372);
                      v121 = *(v12 + 860);
                      if (v119)
                      {
                        LODWORD(v119) = *(v119 + 424);
                      }

                      LODWORD(buf[0]) = 136447490;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1081 = " ";
                      *v1082 = 1024;
                      *&v1082[2] = v120;
                      *&v1082[6] = 1024;
                      *&v1082[8] = v121;
                      *&v1082[12] = 1024;
                      *&v1082[14] = v119;
                      _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
                      if (*(v12 + 488))
                      {
                        goto LABEL_757;
                      }

                      goto LABEL_749;
                    }
                  }

LABEL_748:
                  if (*(v12 + 488))
                  {
LABEL_757:
                    if (v74)
                    {
                      os_release(v74);
                    }

                    return;
                  }

LABEL_749:
                  v459 = *(v12 + 784);
                  if (v459)
                  {
                    nw_queue_set_timer_values(v459, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                  }

                  else
                  {
                    if ((*(v12 + 158) & 1) == 0)
                    {
                      v460 = __nwlog_obj();
                      if (os_log_type_enabled(v460, OS_LOG_TYPE_ERROR))
                      {
                        v461 = *(v12 + 488);
                        v462 = *(*(v12 + 480) + 372);
                        v463 = *(v12 + 860);
                        if (v461)
                        {
                          LODWORD(v461) = *(v461 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_connection_close";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v12 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1081 = " ";
                        *v1082 = 1024;
                        *&v1082[2] = v462;
                        *&v1082[6] = 1024;
                        *&v1082[8] = v463;
                        *&v1082[12] = 1024;
                        *&v1082[14] = v461;
                        _os_log_impl(&dword_181A37000, v460, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                      }
                    }

                    v464 = *(v12 + 608);
                    v465 = *(v12 + 496);
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                    v1081 = &unk_1E6A32780;
                    *v1082 = v464;
                    nw_queue_context_async(v465, buf);
                  }

                  goto LABEL_757;
                }

                *(v12 + 872) |= 0x800u;
                v78 = *(v77 + 368) + 1;
                *(v77 + 368) = v78;
                if (v78 == v78 << 31 >> 31)
                {
LABEL_743:
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v942 = __nwlog_obj();
                    if (os_log_type_enabled(v942, OS_LOG_TYPE_DEBUG))
                    {
                      v943 = *(v12 + 488);
                      v944 = *(*(v12 + 480) + 372);
                      v945 = *(v12 + 860);
                      if (v943)
                      {
                        LODWORD(v943) = *(v943 + 424);
                      }

                      v946 = *(v77 + 368) + *(v77 + 364);
                      LODWORD(buf[0]) = 136447746;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1081 = " ";
                      *v1082 = 1024;
                      *&v1082[2] = v944;
                      *&v1082[6] = 1024;
                      *&v1082[8] = v945;
                      *&v1082[12] = 1024;
                      *&v1082[14] = v943;
                      *&v1082[18] = 1024;
                      *&v1082[20] = v946;
                      _os_log_impl(&dword_181A37000, v942, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
                    }
                  }

                  v456 = *(v12 + 496);
                  if (v456)
                  {
                    v457 = *(v12 + 480);
                    if (v457)
                    {
                      v458 = *(v457 + 200);
                      buf[0] = MEMORY[0x1E69E9820];
                      buf[1] = 0x40000000;
                      buf[2] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
                      v1081 = &unk_1E6A327A8;
                      *v1082 = v458;
                      nw_queue_context_async(v456, buf);
                      goto LABEL_748;
                    }

                    v947 = __nwlog_obj();
                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    LODWORD(v1056) = 12;
                    v911 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v947, 16, "%{public}s called with null http1", iterate_block, v1056);
                    aBlock[0] = 16;
                    v1077[0] = 0;
                    if (!__nwlog_fault(v911, aBlock, v1077))
                    {
LABEL_1795:
                      if (v911)
                      {
                        free(v911);
                      }

                      if (*(v12 + 488))
                      {
                        goto LABEL_757;
                      }

                      goto LABEL_749;
                    }

                    if (aBlock[0] == 17)
                    {
                      v912 = __nwlog_obj();
                      v913 = aBlock[0];
                      if (!os_log_type_enabled(v912, aBlock[0]))
                      {
                        goto LABEL_1795;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v914 = "%{public}s called with null http1";
                      goto LABEL_1793;
                    }

                    if (v1077[0] != 1)
                    {
                      v912 = __nwlog_obj();
                      v913 = aBlock[0];
                      if (!os_log_type_enabled(v912, aBlock[0]))
                      {
                        goto LABEL_1795;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v914 = "%{public}s called with null http1, backtrace limit exceeded";
                      goto LABEL_1793;
                    }

                    v938 = __nw_create_backtrace_string();
                    v912 = __nwlog_obj();
                    v913 = aBlock[0];
                    v975 = os_log_type_enabled(v912, aBlock[0]);
                    if (!v938)
                    {
                      if (!v975)
                      {
                        goto LABEL_1795;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v914 = "%{public}s called with null http1, no backtrace";
                      goto LABEL_1793;
                    }

                    if (v975)
                    {
                      LODWORD(iterate_block[0]) = 136446466;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      WORD2(iterate_block[1]) = 2082;
                      *(&iterate_block[1] + 6) = v938;
                      v940 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                      goto LABEL_1597;
                    }
                  }

                  else
                  {
                    v937 = __nwlog_obj();
                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    LODWORD(v1056) = 12;
                    v911 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v937, 16, "%{public}s called with null http1_connection->context", iterate_block, v1056);
                    aBlock[0] = 16;
                    v1077[0] = 0;
                    if (!__nwlog_fault(v911, aBlock, v1077))
                    {
                      goto LABEL_1795;
                    }

                    if (aBlock[0] == 17)
                    {
                      v912 = __nwlog_obj();
                      v913 = aBlock[0];
                      if (!os_log_type_enabled(v912, aBlock[0]))
                      {
                        goto LABEL_1795;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v914 = "%{public}s called with null http1_connection->context";
LABEL_1793:
                      v1011 = iterate_block;
                      goto LABEL_1794;
                    }

                    if (v1077[0] != 1)
                    {
                      v912 = __nwlog_obj();
                      v913 = aBlock[0];
                      if (!os_log_type_enabled(v912, aBlock[0]))
                      {
                        goto LABEL_1795;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v914 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
                      goto LABEL_1793;
                    }

                    v938 = __nw_create_backtrace_string();
                    v912 = __nwlog_obj();
                    v913 = aBlock[0];
                    v974 = os_log_type_enabled(v912, aBlock[0]);
                    if (!v938)
                    {
                      if (!v974)
                      {
                        goto LABEL_1795;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v914 = "%{public}s called with null http1_connection->context, no backtrace";
                      goto LABEL_1793;
                    }

                    if (v974)
                    {
                      LODWORD(iterate_block[0]) = 136446466;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      WORD2(iterate_block[1]) = 2082;
                      *(&iterate_block[1] + 6) = v938;
                      v940 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_1597:
                      v941 = iterate_block;
                      goto LABEL_1598;
                    }
                  }

LABEL_1599:
                  free(v938);
                  goto LABEL_1795;
                }

                v79 = __nwlog_obj();
                v80 = *(v77 + 368);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = "http1->nonresuable_connections";
                HIWORD(buf[2]) = 2048;
                v1081 = 1;
                *v1082 = 2048;
                *&v1082[2] = v80;
                LODWORD(v1056) = 42;
                v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v1056);
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (__nwlog_fault(v81, iterate_block, aBlock))
                {
                  if (LOBYTE(iterate_block[0]) == 17)
                  {
                    v82 = __nwlog_obj();
                    v83 = iterate_block[0];
                    if (os_log_type_enabled(v82, iterate_block[0]))
                    {
                      v84 = *(v77 + 368);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v84;
                      v85 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_739:
                      _os_log_impl(&dword_181A37000, v82, v83, v85, buf, 0x2Au);
                    }
                  }

                  else if (aBlock[0] == 1)
                  {
                    v129 = __nw_create_backtrace_string();
                    v82 = __nwlog_obj();
                    v83 = iterate_block[0];
                    v130 = os_log_type_enabled(v82, iterate_block[0]);
                    if (v129)
                    {
                      if (v130)
                      {
                        v131 = *(v77 + 368);
                        LODWORD(buf[0]) = 136447234;
                        *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->nonresuable_connections";
                        HIWORD(buf[2]) = 2048;
                        v1081 = 1;
                        *v1082 = 2048;
                        *&v1082[2] = v131;
                        *&v1082[10] = 2082;
                        *&v1082[12] = v129;
                        _os_log_impl(&dword_181A37000, v82, v83, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v129);
                      goto LABEL_740;
                    }

                    if (v130)
                    {
                      v455 = *(v77 + 368);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v455;
                      v85 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                      goto LABEL_739;
                    }
                  }

                  else
                  {
                    v82 = __nwlog_obj();
                    v83 = iterate_block[0];
                    if (os_log_type_enabled(v82, iterate_block[0]))
                    {
                      v440 = *(v77 + 368);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v440;
                      v85 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                      goto LABEL_739;
                    }
                  }
                }

LABEL_740:
                if (v81)
                {
                  free(v81);
                }

                *(v77 + 368) = -1;
                goto LABEL_743;
              }

              if ((*(v27 + 158) & 1) == 0)
              {
                v92 = __nwlog_obj();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                {
                  v93 = *(v1065 + 372);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v1065 + 74;
                  HIWORD(buf[2]) = 2080;
                  v1081 = " ";
                  *v1082 = 1024;
                  *&v1082[2] = v93;
                  _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> http1->parameters is NULL when opening responder stream", buf, 0x26u);
                }
              }

              v94 = __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
              LODWORD(v1056) = 12;
              v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s http1->parameters is NULL when opening responder stream", buf, v1056);
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (!__nwlog_fault(v95, iterate_block, aBlock))
              {
                goto LABEL_1323;
              }

              if (LOBYTE(iterate_block[0]) == 17)
              {
                v96 = __nwlog_obj();
                v97 = iterate_block[0];
                if (!os_log_type_enabled(v96, iterate_block[0]))
                {
                  goto LABEL_1323;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                v98 = "%{public}s http1->parameters is NULL when opening responder stream";
LABEL_1321:
                v798 = v96;
                v799 = v97;
LABEL_1322:
                _os_log_impl(&dword_181A37000, v798, v799, v98, buf, 0xCu);
                goto LABEL_1323;
              }

              if (aBlock[0] != 1)
              {
                v96 = __nwlog_obj();
                v97 = iterate_block[0];
                if (!os_log_type_enabled(v96, iterate_block[0]))
                {
                  goto LABEL_1323;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                v98 = "%{public}s http1->parameters is NULL when opening responder stream, backtrace limit exceeded";
                goto LABEL_1321;
              }

              v106 = __nw_create_backtrace_string();
              v96 = __nwlog_obj();
              v97 = iterate_block[0];
              v107 = os_log_type_enabled(v96, iterate_block[0]);
              if (!v106)
              {
                if (!v107)
                {
                  goto LABEL_1323;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                v98 = "%{public}s http1->parameters is NULL when opening responder stream, no backtrace";
                goto LABEL_1321;
              }

              if (!v107)
              {
                goto LABEL_168;
              }

              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v106;
              v108 = "%{public}s http1->parameters is NULL when opening responder stream, dumping backtrace:%{public}s";
              goto LABEL_167;
            }

            if ((*(v27 + 158) & 1) == 0)
            {
              v756 = __nwlog_obj();
              if (os_log_type_enabled(v756, OS_LOG_TYPE_ERROR))
              {
                v757 = *(v1065 + 372);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_new_flow_valid";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v1065 + 74;
                HIWORD(buf[2]) = 2080;
                v1081 = " ";
                *v1082 = 1024;
                *&v1082[2] = v757;
                _os_log_impl(&dword_181A37000, v756, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
              }
            }

            if ((*(v12 + 872) & 0x100) == 0)
            {
              *(v12 + 872) |= 0x100u;
              if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v1038 = __nwlog_obj();
                if (os_log_type_enabled(v1038, OS_LOG_TYPE_DEBUG))
                {
                  v1039 = *(v12 + 488);
                  v1040 = *(*(v12 + 480) + 372);
                  v1041 = *(v12 + 860);
                  if (v1039)
                  {
                    LODWORD(v1039) = *(v1039 + 424);
                  }

                  LODWORD(buf[0]) = 136447490;
                  *(buf + 4) = "nw_http1_connection_close";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v12 + 74;
                  HIWORD(buf[2]) = 2080;
                  v1081 = " ";
                  *v1082 = 1024;
                  *&v1082[2] = v1040;
                  *&v1082[6] = 1024;
                  *&v1082[8] = v1041;
                  *&v1082[12] = 1024;
                  *&v1082[14] = v1039;
                  _os_log_impl(&dword_181A37000, v1038, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
                }
              }

              v758 = *(v12 + 480);
              if (!v758)
              {
                goto LABEL_1827;
              }

              if ((*(v12 + 872) & 0x800) != 0)
              {
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v841 = __nwlog_obj();
                  if (os_log_type_enabled(v841, OS_LOG_TYPE_DEBUG))
                  {
                    v842 = *(v12 + 488);
                    v843 = *(*(v12 + 480) + 372);
                    v844 = *(v12 + 860);
                    if (v842)
                    {
                      LODWORD(v842) = *(v842 + 424);
                    }

                    LODWORD(buf[0]) = 136447490;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1081 = " ";
                    *v1082 = 1024;
                    *&v1082[2] = v843;
                    *&v1082[6] = 1024;
                    *&v1082[8] = v844;
                    *&v1082[12] = 1024;
                    *&v1082[14] = v842;
                    _os_log_impl(&dword_181A37000, v841, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
                  }
                }

                goto LABEL_1769;
              }

              *(v12 + 872) |= 0x800u;
              v759 = *(v758 + 368) + 1;
              *(v758 + 368) = v759;
              if (v759 == v759 << 31 >> 31)
              {
LABEL_1764:
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v1045 = __nwlog_obj();
                  if (os_log_type_enabled(v1045, OS_LOG_TYPE_DEBUG))
                  {
                    v1046 = *(v12 + 488);
                    v1047 = *(*(v12 + 480) + 372);
                    v1048 = *(v12 + 860);
                    if (v1046)
                    {
                      LODWORD(v1046) = *(v1046 + 424);
                    }

                    v1049 = *(v758 + 368) + *(v758 + 364);
                    LODWORD(buf[0]) = 136447746;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1081 = " ";
                    *v1082 = 1024;
                    *&v1082[2] = v1047;
                    *&v1082[6] = 1024;
                    *&v1082[8] = v1048;
                    *&v1082[12] = 1024;
                    *&v1082[14] = v1046;
                    *&v1082[18] = 1024;
                    *&v1082[20] = v1049;
                    _os_log_impl(&dword_181A37000, v1045, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
                  }
                }

                v1013 = *(v12 + 496);
                if (v1013)
                {
                  v1014 = *(v12 + 480);
                  if (v1014)
                  {
                    v1015 = *(v1014 + 200);
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
                    v1081 = &unk_1E6A327A8;
                    *v1082 = v1015;
                    nw_queue_context_async(v1013, buf);
                    goto LABEL_1769;
                  }

                  v1050 = __nwlog_obj();
                  LODWORD(iterate_block[0]) = 136446210;
                  *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                  LODWORD(v1056) = 12;
                  v1034 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1050, 16, "%{public}s called with null http1", iterate_block, v1056);
                  aBlock[0] = 16;
                  v1077[0] = 0;
                  if (!__nwlog_fault(v1034, aBlock, v1077))
                  {
                    goto LABEL_1878;
                  }

                  if (aBlock[0] == 17)
                  {
                    v1035 = __nwlog_obj();
                    v1036 = aBlock[0];
                    if (!os_log_type_enabled(v1035, aBlock[0]))
                    {
                      goto LABEL_1878;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v1037 = "%{public}s called with null http1";
                    goto LABEL_1876;
                  }

                  if (v1077[0] != 1)
                  {
                    v1035 = __nwlog_obj();
                    v1036 = aBlock[0];
                    if (!os_log_type_enabled(v1035, aBlock[0]))
                    {
                      goto LABEL_1878;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v1037 = "%{public}s called with null http1, backtrace limit exceeded";
                    goto LABEL_1876;
                  }

                  v1051 = __nw_create_backtrace_string();
                  v1035 = __nwlog_obj();
                  v1036 = aBlock[0];
                  v1054 = os_log_type_enabled(v1035, aBlock[0]);
                  if (!v1051)
                  {
                    if (!v1054)
                    {
                      goto LABEL_1878;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v1037 = "%{public}s called with null http1, no backtrace";
                    goto LABEL_1876;
                  }

                  if (v1054)
                  {
                    LODWORD(iterate_block[0]) = 136446466;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    WORD2(iterate_block[1]) = 2082;
                    *(&iterate_block[1] + 6) = v1051;
                    v1053 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                    goto LABEL_1862;
                  }
                }

                else
                {
                  v1042 = __nwlog_obj();
                  LODWORD(iterate_block[0]) = 136446210;
                  *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                  LODWORD(v1056) = 12;
                  v1034 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1042, 16, "%{public}s called with null http1_connection->context", iterate_block, v1056);
                  aBlock[0] = 16;
                  v1077[0] = 0;
                  if (!__nwlog_fault(v1034, aBlock, v1077))
                  {
                    goto LABEL_1878;
                  }

                  if (aBlock[0] == 17)
                  {
                    v1035 = __nwlog_obj();
                    v1036 = aBlock[0];
                    if (!os_log_type_enabled(v1035, aBlock[0]))
                    {
                      goto LABEL_1878;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v1037 = "%{public}s called with null http1_connection->context";
LABEL_1876:
                    v1055 = iterate_block;
                    goto LABEL_1877;
                  }

                  if (v1077[0] != 1)
                  {
                    v1035 = __nwlog_obj();
                    v1036 = aBlock[0];
                    if (!os_log_type_enabled(v1035, aBlock[0]))
                    {
                      goto LABEL_1878;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v1037 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
                    goto LABEL_1876;
                  }

                  v1051 = __nw_create_backtrace_string();
                  v1035 = __nwlog_obj();
                  v1036 = aBlock[0];
                  v1052 = os_log_type_enabled(v1035, aBlock[0]);
                  if (!v1051)
                  {
                    if (!v1052)
                    {
                      goto LABEL_1878;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v1037 = "%{public}s called with null http1_connection->context, no backtrace";
                    goto LABEL_1876;
                  }

                  if (v1052)
                  {
                    LODWORD(iterate_block[0]) = 136446466;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    WORD2(iterate_block[1]) = 2082;
                    *(&iterate_block[1] + 6) = v1051;
                    v1053 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_1862:
                    _os_log_impl(&dword_181A37000, v1035, v1036, v1053, iterate_block, 0x16u);
                  }
                }

                free(v1051);
                if (!v1034)
                {
LABEL_1769:
                  if (!*(v12 + 488))
                  {
                    v1016 = *(v12 + 784);
                    if (v1016)
                    {
                      nw_queue_set_timer_values(v1016, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                    }

                    else
                    {
                      if ((*(v12 + 158) & 1) == 0)
                      {
                        v1017 = __nwlog_obj();
                        if (os_log_type_enabled(v1017, OS_LOG_TYPE_ERROR))
                        {
                          v1018 = *(v12 + 488);
                          v1019 = *(*(v12 + 480) + 372);
                          v1020 = *(v12 + 860);
                          if (v1018)
                          {
                            LODWORD(v1018) = *(v1018 + 424);
                          }

                          LODWORD(buf[0]) = 136447490;
                          *(buf + 4) = "nw_http1_connection_close";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v12 + 74;
                          HIWORD(buf[2]) = 2080;
                          v1081 = " ";
                          *v1082 = 1024;
                          *&v1082[2] = v1019;
                          *&v1082[6] = 1024;
                          *&v1082[8] = v1020;
                          *&v1082[12] = 1024;
                          *&v1082[14] = v1018;
                          _os_log_impl(&dword_181A37000, v1017, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                        }
                      }

                      v1021 = *(v12 + 608);
                      v1022 = *(v12 + 496);
                      buf[0] = MEMORY[0x1E69E9820];
                      buf[1] = 0x40000000;
                      buf[2] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                      v1081 = &unk_1E6A32780;
                      *v1082 = v1021;
                      nw_queue_context_async(v1022, buf);
                    }
                  }

                  return;
                }

LABEL_1879:
                free(v1034);
                goto LABEL_1769;
              }

              v760 = __nwlog_obj();
              v761 = *(v758 + 368);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->nonresuable_connections";
              HIWORD(buf[2]) = 2048;
              v1081 = 1;
              *v1082 = 2048;
              *&v1082[2] = v761;
              LODWORD(v1056) = 42;
              v762 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v760, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v1056);
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (__nwlog_fault(v762, iterate_block, aBlock))
              {
                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v763 = __nwlog_obj();
                  v764 = iterate_block[0];
                  if (os_log_type_enabled(v763, iterate_block[0]))
                  {
                    v765 = *(v758 + 368);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->nonresuable_connections";
                    HIWORD(buf[2]) = 2048;
                    v1081 = 1;
                    *v1082 = 2048;
                    *&v1082[2] = v765;
                    v766 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_1760:
                    _os_log_impl(&dword_181A37000, v763, v764, v766, buf, 0x2Au);
                  }
                }

                else if (aBlock[0] == 1)
                {
                  v948 = __nw_create_backtrace_string();
                  v763 = __nwlog_obj();
                  v764 = iterate_block[0];
                  v949 = os_log_type_enabled(v763, iterate_block[0]);
                  if (v948)
                  {
                    if (v949)
                    {
                      v950 = *(v758 + 368);
                      LODWORD(buf[0]) = 136447234;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v950;
                      *&v1082[10] = 2082;
                      *&v1082[12] = v948;
                      _os_log_impl(&dword_181A37000, v763, v764, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v948);
                    goto LABEL_1761;
                  }

                  if (v949)
                  {
                    v1012 = *(v758 + 368);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->nonresuable_connections";
                    HIWORD(buf[2]) = 2048;
                    v1081 = 1;
                    *v1082 = 2048;
                    *&v1082[2] = v1012;
                    v766 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_1760;
                  }
                }

                else
                {
                  v763 = __nwlog_obj();
                  v764 = iterate_block[0];
                  if (os_log_type_enabled(v763, iterate_block[0]))
                  {
                    v976 = *(v758 + 368);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->nonresuable_connections";
                    HIWORD(buf[2]) = 2048;
                    v1081 = 1;
                    *v1082 = 2048;
                    *&v1082[2] = v976;
                    v766 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_1760;
                  }
                }
              }

LABEL_1761:
              if (v762)
              {
                free(v762);
              }

              *(v758 + 368) = -1;
              goto LABEL_1764;
            }

            if (*(v12 + 158))
            {
              return;
            }

            if (gLogDatapath != 1)
            {
              return;
            }

            v86 = __nwlog_obj();
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v789 = *(v12 + 488);
            v790 = *(*(v12 + 480) + 372);
            v791 = *(v12 + 860);
            if (v789)
            {
              LODWORD(v789) = *(v789 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_close";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v790;
            *&v1082[6] = 1024;
            *&v1082[8] = v791;
            *&v1082[12] = 1024;
            *&v1082[14] = v789;
            v70 = "%{public}s %{public}s%s<i%u:c%u:s%u> already closed";
          }

          else
          {
            if (*(v12 + 158))
            {
              return;
            }

            v86 = __nwlog_obj();
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v87 = *(v12 + 488);
            v88 = *(*(v12 + 480) + 372);
            v89 = *(v12 + 860);
            if (v87)
            {
              LODWORD(v87) = *(v87 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_new_flow_valid";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v88;
            *&v1082[6] = 1024;
            *&v1082[8] = v89;
            *&v1082[12] = 1024;
            *&v1082[14] = v87;
            v70 = "%{public}s %{public}s%s<i%u:c%u:s%u> called without listen handler, ignoring";
          }

          v90 = v86;
          v91 = 50;
LABEL_259:
          _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, v70, buf, v91);
          return;
        }

        if ((*(v12 + 872) & 0x100) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v851 = *(v12 + 488);
          v852 = *(*(v12 + 480) + 372);
          v853 = *(v12 + 860);
          if (v851)
          {
            LODWORD(v851) = *(v851 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v852;
          *&v1082[6] = 1024;
          *&v1082[8] = v853;
          *&v1082[12] = 1024;
          *&v1082[14] = v851;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it has been closed";
          goto LABEL_1383;
        }

        if (*(v12 + 864) == 4)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v49 = *(v12 + 488);
          v50 = *(*(v12 + 480) + 372);
          v51 = *(v12 + 860);
          if (v49)
          {
            LODWORD(v49) = *(v49 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v50;
          *&v1082[6] = 1024;
          *&v1082[8] = v51;
          *&v1082[12] = 1024;
          *&v1082[14] = v49;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because input has finished from below";
          goto LABEL_1383;
        }

        if ((v15 & 8) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v125 = *(v12 + 488);
          v126 = *(*(v12 + 480) + 372);
          v127 = *(v12 + 860);
          if (v125)
          {
            LODWORD(v125) = *(v125 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v126;
          *&v1082[6] = 1024;
          *&v1082[8] = v127;
          *&v1082[12] = 1024;
          *&v1082[14] = v125;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it is websocket";
          goto LABEL_1383;
        }

        if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v962 = __nwlog_obj();
          if (os_log_type_enabled(v962, OS_LOG_TYPE_DEBUG))
          {
            v963 = *(v12 + 488);
            v964 = *(*(v12 + 480) + 372);
            v965 = *(v12 + 860);
            if (v963)
            {
              LODWORD(v963) = *(v963 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v964;
            *&v1082[6] = 1024;
            *&v1082[8] = v965;
            *&v1082[12] = 1024;
            *&v1082[14] = v963;
            _os_log_impl(&dword_181A37000, v962, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection can be reused", buf, 0x32u);
          }
        }

        v109 = *(v12 + 488);
        if (v109)
        {
          if (*(v109 + 248))
          {
            v110 = *(v109 + 256);
            if (v110)
            {
              if (*(v110 + 488) == v109)
              {
                if ((*(v109 + 158) & 1) == 0)
                {
                  v132 = __nwlog_obj();
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
                  {
                    v133 = *(v109 + 256);
                    v134 = *(*(v109 + 248) + 372);
                    if (v133)
                    {
                      LODWORD(v133) = *(v133 + 860);
                    }

                    v135 = *(v109 + 424);
                    LODWORD(buf[0]) = 136448002;
                    *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v109 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1081 = " ";
                    *v1082 = 1024;
                    *&v1082[2] = v134;
                    *&v1082[6] = 1024;
                    *&v1082[8] = v133;
                    *&v1082[12] = 1024;
                    *&v1082[14] = v135;
                    *&v1082[18] = 2048;
                    *&v1082[20] = v109;
                    *&v1082[28] = 2048;
                    *&v1082[30] = v110;
                    _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
                  }
                }

                if (gLogDatapath == 1)
                {
                  v996 = __nwlog_obj();
                  if (os_log_type_enabled(v996, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_protocol_finalize_temp_frame_array";
                    _os_log_impl(&dword_181A37000, v996, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
                  }
                }

                nw_frame_array_finalize(v110 + 632, 1, 0);
                *(v109 + 256) = 0;
                *(v110 + 488) = 0;
                nw_protocol_set_output_handler(v109, 0);
                nw_protocol_set_input_handler(v110, 0);
                v136 = *(v12 + 480);
                if (v136)
                {
                  goto LABEL_769;
                }

                goto LABEL_1809;
              }

              v111 = __nwlog_obj();
              v112 = *(v110 + 488);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v110;
              HIWORD(buf[2]) = 2048;
              v1081 = v109;
              *v1082 = 2048;
              *&v1082[2] = v112;
              v113 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v111, 16, "%{public}s Connection %p does not already have stream %p, has %p", buf, 42);
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (__nwlog_fault(v113, iterate_block, aBlock))
              {
                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v114 = __nwlog_obj();
                  v115 = iterate_block[0];
                  if (!os_log_type_enabled(v114, iterate_block[0]))
                  {
                    goto LABEL_766;
                  }

                  v116 = *(v110 + 488);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v110;
                  HIWORD(buf[2]) = 2048;
                  v1081 = v109;
                  *v1082 = 2048;
                  *&v1082[2] = v116;
                  v117 = "%{public}s Connection %p does not already have stream %p, has %p";
LABEL_765:
                  _os_log_impl(&dword_181A37000, v114, v115, v117, buf, 0x2Au);
                  goto LABEL_766;
                }

                if (aBlock[0] != 1)
                {
                  v114 = __nwlog_obj();
                  v115 = iterate_block[0];
                  if (!os_log_type_enabled(v114, iterate_block[0]))
                  {
                    goto LABEL_766;
                  }

                  v447 = *(v110 + 488);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v110;
                  HIWORD(buf[2]) = 2048;
                  v1081 = v109;
                  *v1082 = 2048;
                  *&v1082[2] = v447;
                  v117 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
                  goto LABEL_765;
                }

                v137 = __nw_create_backtrace_string();
                v114 = __nwlog_obj();
                v115 = iterate_block[0];
                v138 = os_log_type_enabled(v114, iterate_block[0]);
                if (!v137)
                {
                  if (!v138)
                  {
                    goto LABEL_766;
                  }

                  v467 = *(v110 + 488);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v110;
                  HIWORD(buf[2]) = 2048;
                  v1081 = v109;
                  *v1082 = 2048;
                  *&v1082[2] = v467;
                  v117 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
                  goto LABEL_765;
                }

                if (v138)
                {
                  v139 = *(v110 + 488);
                  LODWORD(buf[0]) = 136447234;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v110;
                  HIWORD(buf[2]) = 2048;
                  v1081 = v109;
                  *v1082 = 2048;
                  *&v1082[2] = v139;
                  *&v1082[10] = 2082;
                  *&v1082[12] = v137;
                  _os_log_impl(&dword_181A37000, v114, v115, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v137);
              }

LABEL_766:
              if (v113)
              {
                free(v113);
              }

              v136 = *(v12 + 480);
              if (v136)
              {
LABEL_769:
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v968 = __nwlog_obj();
                  if (os_log_type_enabled(v968, OS_LOG_TYPE_DEBUG))
                  {
                    v969 = *(v12 + 488);
                    v970 = *(*(v12 + 480) + 372);
                    v971 = *(v12 + 860);
                    if (v969)
                    {
                      LODWORD(v969) = *(v969 + 424);
                    }

                    LODWORD(buf[0]) = 136447746;
                    *(buf + 4) = "nw_http1_add_idle_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1081 = " ";
                    *v1082 = 1024;
                    *&v1082[2] = v970;
                    *&v1082[6] = 1024;
                    *&v1082[8] = v971;
                    *&v1082[12] = 1024;
                    *&v1082[14] = v969;
                    *&v1082[18] = 2048;
                    *&v1082[20] = v12;
                    _os_log_impl(&dword_181A37000, v968, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection (%p)", buf, 0x3Cu);
                  }
                }

                if ((*(v12 + 874) & 8) == 0)
                {
                  v468 = (v136 + 208);
                  v469 = *(v136 + 208);
                  *(v12 + 592) = v469;
                  if (v469)
                  {
                    v470 = (v469 + 600);
                  }

                  else
                  {
                    v470 = (v136 + 216);
                  }

                  *v470 = v12 + 592;
                  *v468 = v12;
                  *(v12 + 600) = v468;
                  v471 = *(v136 + 340) + 1;
                  *(v136 + 340) = v471;
                  if (v471 == v471 << 31 >> 31)
                  {
                    goto LABEL_1092;
                  }

                  v472 = __nwlog_obj();
                  v473 = *(v136 + 340);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->idle_connections_count";
                  HIWORD(buf[2]) = 2048;
                  v1081 = 1;
                  *v1082 = 2048;
                  *&v1082[2] = v473;
                  LODWORD(v1056) = 42;
                  v474 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v472, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v1056);
                  LOBYTE(iterate_block[0]) = 16;
                  aBlock[0] = 0;
                  if (__nwlog_fault(v474, iterate_block, aBlock))
                  {
                    if (LOBYTE(iterate_block[0]) == 17)
                    {
                      v475 = __nwlog_obj();
                      v476 = iterate_block[0];
                      if (os_log_type_enabled(v475, iterate_block[0]))
                      {
                        v477 = *(v136 + 340);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_add_idle_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->idle_connections_count";
                        HIWORD(buf[2]) = 2048;
                        v1081 = 1;
                        *v1082 = 2048;
                        *&v1082[2] = v477;
                        v478 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_1088:
                        _os_log_impl(&dword_181A37000, v475, v476, v478, buf, 0x2Au);
                      }
                    }

                    else if (aBlock[0] == 1)
                    {
                      v481 = __nw_create_backtrace_string();
                      v475 = __nwlog_obj();
                      v476 = iterate_block[0];
                      v482 = os_log_type_enabled(v475, iterate_block[0]);
                      if (v481)
                      {
                        if (v482)
                        {
                          v483 = *(v136 + 340);
                          LODWORD(buf[0]) = 136447234;
                          *(buf + 4) = "nw_http1_add_idle_connection";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = "http1->idle_connections_count";
                          HIWORD(buf[2]) = 2048;
                          v1081 = 1;
                          *v1082 = 2048;
                          *&v1082[2] = v483;
                          *&v1082[10] = 2082;
                          *&v1082[12] = v481;
                          _os_log_impl(&dword_181A37000, v475, v476, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v481);
                        goto LABEL_1089;
                      }

                      if (v482)
                      {
                        v666 = *(v136 + 340);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_add_idle_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->idle_connections_count";
                        HIWORD(buf[2]) = 2048;
                        v1081 = 1;
                        *v1082 = 2048;
                        *&v1082[2] = v666;
                        v478 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                        goto LABEL_1088;
                      }
                    }

                    else
                    {
                      v475 = __nwlog_obj();
                      v476 = iterate_block[0];
                      if (os_log_type_enabled(v475, iterate_block[0]))
                      {
                        v484 = *(v136 + 340);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_add_idle_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->idle_connections_count";
                        HIWORD(buf[2]) = 2048;
                        v1081 = 1;
                        *v1082 = 2048;
                        *&v1082[2] = v484;
                        v478 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                        goto LABEL_1088;
                      }
                    }
                  }

LABEL_1089:
                  if (v474)
                  {
                    free(v474);
                  }

                  *(v136 + 340) = -1;
LABEL_1092:
                  *(v12 + 874) |= 8u;
                  *(v12 + 872) &= 0xFFFAu;
                  v667 = *(v12 + 800);
                  if (v667)
                  {
                    free(v667);
                    *(v12 + 800) = 0;
                  }

                  *(v12 + 840) = 0;
                  v668 = *(v12 + 808);
                  if (v668)
                  {
                    free(v668);
                    *(v12 + 808) = 0;
                  }

                  *(v12 + 844) = 0;
                  v669 = *(v12 + 816);
                  if (v669)
                  {
                    free(v669);
                    *(v12 + 816) = 0;
                  }

                  *(v12 + 848) = 0;
                  v670 = *(v12 + 824);
                  if (v670)
                  {
                    free(v670);
                    *(v12 + 824) = 0;
                  }

                  *(v12 + 852) = 0;
                  v671 = *(v12 + 832);
                  if (v671)
                  {
                    free(v671);
                    *(v12 + 832) = 0;
                  }

                  *(v12 + 856) = 0;
                  v672 = *(v12 + 872);
                  if ((v672 & 0x10) != 0)
                  {
                    if (*(v12 + 224) == 21)
                    {
                      *(v12 + 224) = 0;
                    }

                    *(v12 + 872) = v672 & 0xFFEF;
                    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                    {
                      v676 = __nwlog_obj();
                      if (os_log_type_enabled(v676, OS_LOG_TYPE_DEBUG))
                      {
                        v1023 = *(v12 + 488);
                        v1024 = *(*(v12 + 480) + 372);
                        v1025 = *(v12 + 860);
                        if (v1023)
                        {
                          LODWORD(v1023) = *(v1023 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_connection_reset_for_new_message";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v12 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1081 = " ";
                        *v1082 = 1024;
                        *&v1082[2] = v1024;
                        *&v1082[6] = 1024;
                        *&v1082[8] = v1025;
                        *&v1082[12] = 1024;
                        *&v1082[14] = v1023;
                        v680 = "%{public}s %{public}s%s<i%u:c%u:s%u> Unpausing parser, input for next stream available";
                        goto LABEL_1784;
                      }
                    }
                  }

                  else
                  {
                    *(v12 + 200) = 0u;
                    v673 = *(v12 + 272);
                    v674 = *(v12 + 248);
                    v675 = *(v12 + 278);
                    *(v12 + 248) = 0u;
                    *(v12 + 264) = 0u;
                    *(v12 + 216) = 0u;
                    *(v12 + 232) = 0u;
                    *(v12 + 280) = 0;
                    *(v12 + 272) = v673;
                    *(v12 + 248) = v674;
                    *(v12 + 256) = 237;
                    *(v12 + 278) = v675;
                    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                    {
                      v676 = __nwlog_obj();
                      if (os_log_type_enabled(v676, OS_LOG_TYPE_DEBUG))
                      {
                        v677 = *(v12 + 488);
                        v678 = *(*(v12 + 480) + 372);
                        v679 = *(v12 + 860);
                        if (v677)
                        {
                          LODWORD(v677) = *(v677 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_connection_reset_for_new_message";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v12 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1081 = " ";
                        *v1082 = 1024;
                        *&v1082[2] = v678;
                        *&v1082[6] = 1024;
                        *&v1082[8] = v679;
                        *&v1082[12] = 1024;
                        *&v1082[14] = v677;
                        v680 = "%{public}s %{public}s%s<i%u:c%u:s%u> Resetting parser, no current available input for next stream";
LABEL_1784:
                        _os_log_impl(&dword_181A37000, v676, OS_LOG_TYPE_DEBUG, v680, buf, 0x32u);
                      }
                    }
                  }

                  v681 = *(v12 + 784);
                  if (v681)
                  {
                    nw_queue_cancel_source(v681);
                  }

                  v682 = *(v12 + 192);
                  channel_flow_count = nw_context_get_channel_flow_count(*(v12 + 496));
                  iterate_block[0] = MEMORY[0x1E69E9820];
                  iterate_block[1] = 0x40000000;
                  iterate_block[2] = ___ZL28nw_http1_add_idle_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke;
                  v1084 = &__block_descriptor_tmp_88_43975;
                  if (channel_flow_count <= 0x19F)
                  {
                    v684 = v682;
                  }

                  else
                  {
                    v684 = 1000;
                  }

                  v1085 = v12;
                  v1086 = v684;
                  v1087 = v136;
                  source = nw_queue_context_create_source(0, 2, 3, 0, iterate_block, 0);
                  *(v12 + 784) = source;
                  v686 = dispatch_time(0x8000000000000000, 1000000 * v684);
                  nw_queue_set_timer_values(source, v686, 0xFFFFFFFFFFFFFFFFLL, 1000 * v684);
                  nw_queue_activate_source(*(v12 + 784));
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v687 = __nwlog_obj();
                    if (os_log_type_enabled(v687, OS_LOG_TYPE_DEBUG))
                    {
                      v688 = *(v12 + 488);
                      v689 = *(*(v12 + 480) + 372);
                      v690 = *(v12 + 860);
                      if (v688)
                      {
                        LODWORD(v688) = *(v688 + 424);
                      }

                      v691 = *(v136 + 340);
                      LODWORD(buf[0]) = 136448258;
                      *(buf + 4) = "nw_http1_add_idle_connection";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1081 = " ";
                      *v1082 = 1024;
                      *&v1082[2] = v689;
                      *&v1082[6] = 1024;
                      *&v1082[8] = v690;
                      *&v1082[12] = 1024;
                      *&v1082[14] = v688;
                      *&v1082[18] = 2048;
                      *&v1082[20] = v12;
                      *&v1082[28] = 2048;
                      *&v1082[30] = v684;
                      *&v1082[38] = 1024;
                      *&v1082[40] = v691;
                      v404 = "%{public}s %{public}s%s<i%u:c%u:s%u> added idle connection %p and started destroy timer for %lldms, now have %u idle connections";
                      v405 = v687;
                      v406 = 76;
LABEL_645:
                      _os_log_impl(&dword_181A37000, v405, OS_LOG_TYPE_DEBUG, v404, buf, v406);
                      goto LABEL_811;
                    }
                  }

                  goto LABEL_811;
                }

                v479 = __nwlog_obj();
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_add_idle_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v12;
                LODWORD(v1056) = 22;
                v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v479, 16, "%{public}s connection %p already in idle list, cannot add twice", buf, v1056);
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (!__nwlog_fault(v39, iterate_block, aBlock))
                {
                  goto LABEL_809;
                }

                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v40 = __nwlog_obj();
                  v41 = iterate_block[0];
                  if (!os_log_type_enabled(v40, iterate_block[0]))
                  {
                    goto LABEL_809;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v12;
                  v42 = "%{public}s connection %p already in idle list, cannot add twice";
                  goto LABEL_807;
                }

                if (aBlock[0] != 1)
                {
                  v40 = __nwlog_obj();
                  v41 = iterate_block[0];
                  if (!os_log_type_enabled(v40, iterate_block[0]))
                  {
                    goto LABEL_809;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v12;
                  v42 = "%{public}s connection %p already in idle list, cannot add twice, backtrace limit exceeded";
                  goto LABEL_807;
                }

                v99 = __nw_create_backtrace_string();
                v40 = __nwlog_obj();
                v41 = iterate_block[0];
                v480 = os_log_type_enabled(v40, iterate_block[0]);
                if (!v99)
                {
                  if (!v480)
                  {
                    goto LABEL_809;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v12;
                  v42 = "%{public}s connection %p already in idle list, cannot add twice, no backtrace";
                  goto LABEL_807;
                }

                if (!v480)
                {
                  goto LABEL_155;
                }

                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_add_idle_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v12;
                HIWORD(buf[2]) = 2082;
                v1081 = v99;
                v101 = "%{public}s connection %p already in idle list, cannot add twice, dumping backtrace:%{public}s";
                goto LABEL_154;
              }

LABEL_1809:
              v1026 = __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_add_idle_connection";
              LODWORD(v1056) = 12;
              v1027 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1026, 16, "%{public}s called with null http1", buf, v1056);
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (!__nwlog_fault(v1027, iterate_block, aBlock))
              {
                goto LABEL_1823;
              }

              if (LOBYTE(iterate_block[0]) == 17)
              {
                v1028 = __nwlog_obj();
                v1029 = iterate_block[0];
                if (!os_log_type_enabled(v1028, iterate_block[0]))
                {
                  goto LABEL_1823;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_idle_connection";
                v1030 = "%{public}s called with null http1";
              }

              else if (aBlock[0] == 1)
              {
                v1031 = __nw_create_backtrace_string();
                v1028 = __nwlog_obj();
                v1029 = iterate_block[0];
                v1032 = os_log_type_enabled(v1028, iterate_block[0]);
                if (v1031)
                {
                  if (v1032)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_add_idle_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v1031;
                    _os_log_impl(&dword_181A37000, v1028, v1029, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v1031);
                  goto LABEL_1823;
                }

                if (!v1032)
                {
LABEL_1823:
                  if (v1027)
                  {
                    free(v1027);
                  }

                  goto LABEL_811;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_idle_connection";
                v1030 = "%{public}s called with null http1, no backtrace";
              }

              else
              {
                v1028 = __nwlog_obj();
                v1029 = iterate_block[0];
                if (!os_log_type_enabled(v1028, iterate_block[0]))
                {
                  goto LABEL_1823;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_idle_connection";
                v1030 = "%{public}s called with null http1, backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v1028, v1029, v1030, buf, 0xCu);
              goto LABEL_1823;
            }

            v967 = __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v958 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v967, 16, "%{public}s called with null http1_connection", buf, 12);
            LOBYTE(iterate_block[0]) = 16;
            aBlock[0] = 0;
            if (!__nwlog_fault(v958, iterate_block, aBlock))
            {
LABEL_1806:
              if (v958)
              {
                free(v958);
              }

              v136 = *(v12 + 480);
              if (v136)
              {
                goto LABEL_769;
              }

              goto LABEL_1809;
            }

            if (LOBYTE(iterate_block[0]) == 17)
            {
              v959 = __nwlog_obj();
              v960 = iterate_block[0];
              if (!os_log_type_enabled(v959, iterate_block[0]))
              {
                goto LABEL_1806;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              v961 = "%{public}s called with null http1_connection";
              goto LABEL_1805;
            }

            if (aBlock[0] != 1)
            {
              v959 = __nwlog_obj();
              v960 = iterate_block[0];
              if (!os_log_type_enabled(v959, iterate_block[0]))
              {
                goto LABEL_1806;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              v961 = "%{public}s called with null http1_connection, backtrace limit exceeded";
              goto LABEL_1805;
            }

            v991 = __nw_create_backtrace_string();
            v959 = __nwlog_obj();
            v960 = iterate_block[0];
            v995 = os_log_type_enabled(v959, iterate_block[0]);
            if (!v991)
            {
              if (!v995)
              {
                goto LABEL_1806;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              v961 = "%{public}s called with null http1_connection, no backtrace";
              goto LABEL_1805;
            }

            if (v995)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v991;
              v993 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
              goto LABEL_1680;
            }

LABEL_1681:
            free(v991);
            goto LABEL_1806;
          }

          v966 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          v958 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v966, 16, "%{public}s called with null http1_stream->protocol_http1", buf, 12);
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (!__nwlog_fault(v958, iterate_block, aBlock))
          {
            goto LABEL_1806;
          }

          if (LOBYTE(iterate_block[0]) == 17)
          {
            v959 = __nwlog_obj();
            v960 = iterate_block[0];
            if (!os_log_type_enabled(v959, iterate_block[0]))
            {
              goto LABEL_1806;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v961 = "%{public}s called with null http1_stream->protocol_http1";
            goto LABEL_1805;
          }

          if (aBlock[0] != 1)
          {
            v959 = __nwlog_obj();
            v960 = iterate_block[0];
            if (!os_log_type_enabled(v959, iterate_block[0]))
            {
              goto LABEL_1806;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v961 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            goto LABEL_1805;
          }

          v991 = __nw_create_backtrace_string();
          v959 = __nwlog_obj();
          v960 = iterate_block[0];
          v994 = os_log_type_enabled(v959, iterate_block[0]);
          if (!v991)
          {
            if (!v994)
            {
              goto LABEL_1806;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v961 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
            goto LABEL_1805;
          }

          if (!v994)
          {
            goto LABEL_1681;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v991;
          v993 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
        }

        else
        {
          v957 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          v958 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v957, 16, "%{public}s called with null http1_stream", buf, 12);
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (!__nwlog_fault(v958, iterate_block, aBlock))
          {
            goto LABEL_1806;
          }

          if (LOBYTE(iterate_block[0]) == 17)
          {
            v959 = __nwlog_obj();
            v960 = iterate_block[0];
            if (!os_log_type_enabled(v959, iterate_block[0]))
            {
              goto LABEL_1806;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v961 = "%{public}s called with null http1_stream";
LABEL_1805:
            _os_log_impl(&dword_181A37000, v959, v960, v961, buf, 0xCu);
            goto LABEL_1806;
          }

          if (aBlock[0] != 1)
          {
            v959 = __nwlog_obj();
            v960 = iterate_block[0];
            if (!os_log_type_enabled(v959, iterate_block[0]))
            {
              goto LABEL_1806;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v961 = "%{public}s called with null http1_stream, backtrace limit exceeded";
            goto LABEL_1805;
          }

          v991 = __nw_create_backtrace_string();
          v959 = __nwlog_obj();
          v960 = iterate_block[0];
          v992 = os_log_type_enabled(v959, iterate_block[0]);
          if (!v991)
          {
            if (!v992)
            {
              goto LABEL_1806;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v961 = "%{public}s called with null http1_stream, no backtrace";
            goto LABEL_1805;
          }

          if (!v992)
          {
            goto LABEL_1681;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v991;
          v993 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        }

LABEL_1680:
        _os_log_impl(&dword_181A37000, v959, v960, v993, buf, 0x16u);
        goto LABEL_1681;
      }

      v488 = __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_disconnect";
      v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v488, 16, "%{public}s called with null http1_connection->current_stream", buf, 12);
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (!__nwlog_fault(v39, iterate_block, aBlock))
      {
        goto LABEL_809;
      }

      if (LOBYTE(iterate_block[0]) == 17)
      {
        v486 = __nwlog_obj();
        v487 = iterate_block[0];
        if (!os_log_type_enabled(v486, iterate_block[0]))
        {
          goto LABEL_809;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->current_stream";
        goto LABEL_1281;
      }

      if (aBlock[0] == 1)
      {
        v656 = __nw_create_backtrace_string();
        v486 = __nwlog_obj();
        v487 = iterate_block[0];
        v657 = os_log_type_enabled(v486, iterate_block[0]);
        if (v656)
        {
          if (v657)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_disconnect";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v656;
            _os_log_impl(&dword_181A37000, v486, v487, "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v656);
          if (!v39)
          {
            goto LABEL_811;
          }

LABEL_810:
          free(v39);
          goto LABEL_811;
        }

        if (v657)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_disconnect";
          v42 = "%{public}s called with null http1_connection->current_stream, no backtrace";
          goto LABEL_1281;
        }

LABEL_809:
        if (!v39)
        {
          goto LABEL_811;
        }

        goto LABEL_810;
      }

      v486 = __nwlog_obj();
      v487 = iterate_block[0];
      if (!os_log_type_enabled(v486, iterate_block[0]))
      {
        goto LABEL_809;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_disconnect";
      v42 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
    }

    else
    {
      v485 = __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_disconnect";
      v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v485, 16, "%{public}s called with null http1_connection->protocol_http1", buf, 12);
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (!__nwlog_fault(v39, iterate_block, aBlock))
      {
        goto LABEL_809;
      }

      if (LOBYTE(iterate_block[0]) == 17)
      {
        v486 = __nwlog_obj();
        v487 = iterate_block[0];
        if (!os_log_type_enabled(v486, iterate_block[0]))
        {
          goto LABEL_809;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->protocol_http1";
        goto LABEL_1281;
      }

      if (aBlock[0] == 1)
      {
        v654 = __nw_create_backtrace_string();
        v486 = __nwlog_obj();
        v487 = iterate_block[0];
        v655 = os_log_type_enabled(v486, iterate_block[0]);
        if (v654)
        {
          if (v655)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_disconnect";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v654;
            _os_log_impl(&dword_181A37000, v486, v487, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v654);
          goto LABEL_809;
        }

        if (!v655)
        {
          goto LABEL_809;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
      }

      else
      {
        v486 = __nwlog_obj();
        v487 = iterate_block[0];
        if (!os_log_type_enabled(v486, iterate_block[0]))
        {
          goto LABEL_809;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
      }
    }

LABEL_1281:
    v489 = v486;
    v490 = v487;
    v491 = 12;
    goto LABEL_808;
  }

  if (*(v10 + 32))
  {
    if ((*(v10 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v23 = *(v10 + 256);
        v24 = *(*(v10 + 248) + 372);
        if (v23)
        {
          LODWORD(v23) = *(v23 + 860);
        }

        v25 = *(v10 + 424);
        LODWORD(buf[0]) = 136447490;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v10 + 74;
        HIWORD(buf[2]) = 2080;
        v1081 = " ";
        *v1082 = 1024;
        *&v1082[2] = v24;
        *&v1082[6] = 1024;
        *&v1082[8] = v23;
        *&v1082[12] = 1024;
        *&v1082[14] = v25;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> disconnecting the initial stream without connecting", buf, 0x32u);
      }
    }

    nw_protocol_disconnect(*(v10 + 32), v10);
    v27 = v1065;
    goto LABEL_102;
  }

  if ((v11 & 0x2000) == 0)
  {
    goto LABEL_811;
  }

  if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v781 = __nwlog_obj();
    v782 = os_log_type_enabled(v781, OS_LOG_TYPE_DEBUG);
    v7 = v1065;
    if (v782)
    {
      v783 = *(v1065 + 372);
      v784 = *(v10 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v1065 + 74;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v783;
      *&v1082[6] = 1024;
      *&v1082[8] = v784;
      *&v1082[12] = 2048;
      *&v1082[14] = v10;
      _os_log_impl(&dword_181A37000, v781, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
      v7 = v1065;
    }
  }

  if ((*(v10 + 428) & 0x2000) == 0)
  {
    v38 = __nwlog_obj();
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v10;
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v39, iterate_block, aBlock))
    {
      goto LABEL_809;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v40 = __nwlog_obj();
      v41 = iterate_block[0];
      if (!os_log_type_enabled(v40, iterate_block[0]))
      {
        goto LABEL_809;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v10;
      v42 = "%{public}s stream %p not in pending list, cannot remove";
    }

    else if (aBlock[0] == 1)
    {
      v99 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = iterate_block[0];
      v100 = os_log_type_enabled(v40, iterate_block[0]);
      if (v99)
      {
        if (!v100)
        {
          goto LABEL_155;
        }

        LODWORD(buf[0]) = 136446722;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v10;
        HIWORD(buf[2]) = 2082;
        v1081 = v99;
        v101 = "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s";
LABEL_154:
        _os_log_impl(&dword_181A37000, v40, v41, v101, buf, 0x20u);
LABEL_155:
        free(v99);
        if (!v39)
        {
          goto LABEL_811;
        }

        goto LABEL_810;
      }

      if (!v100)
      {
        goto LABEL_809;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v10;
      v42 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
    }

    else
    {
      v40 = __nwlog_obj();
      v41 = iterate_block[0];
      if (!os_log_type_enabled(v40, iterate_block[0]))
      {
        goto LABEL_809;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v10;
      v42 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
    }

LABEL_807:
    v489 = v40;
    v490 = v41;
    v491 = 22;
LABEL_808:
    _os_log_impl(&dword_181A37000, v489, v490, v42, buf, v491);
    goto LABEL_809;
  }

  v52 = *(v10 + 296);
  v53 = *(v10 + 304);
  v54 = (v7 + 256);
  if (v52)
  {
    v54 = (v52 + 304);
  }

  *v54 = v53;
  *v53 = v52;
  *(v10 + 296) = 0;
  *(v10 + 304) = 0;
  v55 = *(v7 + 348);
  *(v7 + 348) = v55 - 1;
  if (!v55)
  {
    v56 = v7;
    v57 = __nwlog_obj();
    v58 = *(v56 + 348);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->pending_stream_count";
    HIWORD(buf[2]) = 2048;
    v1081 = 1;
    *v1082 = 2048;
    *&v1082[2] = v58;
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v59, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v60 = __nwlog_obj();
        v61 = iterate_block[0];
        if (os_log_type_enabled(v60, iterate_block[0]))
        {
          v62 = *(v1065 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v62;
          v63 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_635:
          _os_log_impl(&dword_181A37000, v60, v61, v63, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v122 = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v61 = iterate_block[0];
        v123 = os_log_type_enabled(v60, iterate_block[0]);
        if (v122)
        {
          if (v123)
          {
            v124 = *(v1065 + 348);
            LODWORD(buf[0]) = 136447234;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1081 = 1;
            *v1082 = 2048;
            *&v1082[2] = v124;
            *&v1082[10] = 2082;
            *&v1082[12] = v122;
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v122);
          goto LABEL_636;
        }

        if (v123)
        {
          v398 = *(v1065 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v398;
          v63 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_635;
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v61 = iterate_block[0];
        if (os_log_type_enabled(v60, iterate_block[0]))
        {
          v128 = *(v1065 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v128;
          v63 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_635;
        }
      }
    }

LABEL_636:
    if (v59)
    {
      free(v59);
    }

    *(v1065 + 348) = 0;
  }

  *(v10 + 428) &= ~0x2000u;
  if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v399 = __nwlog_obj();
    if (os_log_type_enabled(v399, OS_LOG_TYPE_DEBUG))
    {
      v400 = *(v10 + 256);
      v401 = *(*(v10 + 248) + 372);
      if (v400)
      {
        LODWORD(v400) = *(v400 + 860);
      }

      v402 = *(v10 + 424);
      v403 = *(v1065 + 348);
      LODWORD(buf[0]) = 136448258;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v10 + 74;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v401;
      *&v1082[6] = 1024;
      *&v1082[8] = v400;
      *&v1082[12] = 1024;
      *&v1082[14] = v402;
      *&v1082[18] = 1024;
      *&v1082[20] = v402;
      *&v1082[24] = 2048;
      *&v1082[26] = v10;
      *&v1082[34] = 1024;
      *&v1082[36] = v403;
      v404 = "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams";
      v405 = v399;
      v406 = 72;
      goto LABEL_645;
    }
  }

LABEL_811:
  nw_protocol_disconnected(*(v10 + 48), v10);
  v27 = v1065;
  if (v12)
  {
    goto LABEL_100;
  }

LABEL_102:
  v64 = *(v27 + 248);
  if (!v64)
  {
    if (*(v27 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v69 = *(v1065 + 372);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v1065 + 74;
    HIWORD(buf[2]) = 2080;
    v1081 = " ";
    *v1082 = 1024;
    *&v1082[2] = v69;
    v70 = "%{public}s %{public}s%s<i%u> no pending streams, nothing to do";
    goto LABEL_258;
  }

  v1064 = *(v27 + 248);
  if ((*(v64 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v609 = __nwlog_obj();
    v610 = os_log_type_enabled(v609, OS_LOG_TYPE_DEBUG);
    v27 = v1065;
    if (v610)
    {
      v611 = v64 + 74;
      v612 = *(v64 + 256);
      v613 = *(*(v64 + 248) + 372);
      if (v612)
      {
        LODWORD(v612) = *(v612 + 860);
      }

      v64 = v1064;
      v614 = *(v1064 + 424);
      LODWORD(buf[0]) = 136448002;
      *(buf + 4) = "nw_http1_get_next_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v611;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v613;
      *&v1082[6] = 1024;
      *&v1082[8] = v612;
      *&v1082[12] = 1024;
      *&v1082[14] = v614;
      *&v1082[18] = 1024;
      *&v1082[20] = v614;
      *&v1082[24] = 2048;
      *&v1082[26] = v1064;
      _os_log_impl(&dword_181A37000, v609, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> found stream %u (%p)", buf, 0x42u);
      v27 = v1065;
    }
  }

  v65 = *(v27 + 208);
  if (!v65)
  {
LABEL_246:
    if ((*(v27 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v663 = __nwlog_obj();
      v664 = os_log_type_enabled(v663, OS_LOG_TYPE_DEBUG);
      v27 = v1065;
      if (v664)
      {
        v665 = *(v1065 + 372);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_get_next_idle_connection";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v1065 + 74;
        HIWORD(buf[2]) = 2080;
        v1081 = " ";
        *v1082 = 1024;
        *&v1082[2] = v665;
        _os_log_impl(&dword_181A37000, v663, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no idle connections", buf, 0x26u);
        v27 = v1065;
      }
    }

    if (*(v64 + 256))
    {
      if (*(v64 + 158))
      {
        goto LABEL_255;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v148 = gLogObj;
      v149 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      v27 = v1065;
      if (!v149)
      {
        goto LABEL_255;
      }

      v150 = *(v64 + 256);
      v151 = *(*(v64 + 248) + 372);
      if (v150)
      {
        LODWORD(v150) = *(v150 + 860);
      }

      v152 = *(v64 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v64 + 74;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v151;
      *&v1082[6] = 1024;
      *&v1082[8] = v150;
      *&v1082[12] = 1024;
      *&v1082[14] = v152;
      v153 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
      v154 = v148;
      v155 = 50;
LABEL_254:
      _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_DEBUG, v153, buf, v155);
      v27 = v1065;
LABEL_255:
      if (*(v27 + 158))
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v68 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v156 = *(v1065 + 372);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v1065 + 74;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v156;
      v70 = "%{public}s %{public}s%s<i%u> cannot make new connection, waiting for other requests to finish";
LABEL_258:
      v90 = v68;
      v91 = 38;
      goto LABEL_259;
    }

    if ((*(v64 + 428) & 0x10) == 0)
    {
      if (*(v27 + 336) + *(v27 + 352) >= (*(v27 + 368) + *(v27 + 364)))
      {
        if (*(v64 + 158))
        {
          goto LABEL_255;
        }

        v181 = __nwlog_obj();
        v182 = os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG);
        v27 = v1065;
        if (!v182)
        {
          goto LABEL_255;
        }

        v183 = *(v64 + 256);
        v184 = *(*(v64 + 248) + 372);
        if (v183)
        {
          LODWORD(v183) = *(v183 + 860);
        }

        v185 = *(v64 + 424);
        v186 = *(v1065 + 364);
        LODWORD(buf[0]) = 136447746;
        *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v64 + 74;
        HIWORD(buf[2]) = 2080;
        v1081 = " ";
        *v1082 = 1024;
        *&v1082[2] = v184;
        *&v1082[6] = 1024;
        *&v1082[8] = v183;
        *&v1082[12] = 1024;
        *&v1082[14] = v185;
        *&v1082[18] = 1024;
        *&v1082[20] = v186;
        v153 = "%{public}s %{public}s%s<i%u:c%u:s%u> already at max connection width %u, cannot create new connection";
        v154 = v181;
        v155 = 56;
        goto LABEL_254;
      }

      if ((*(v64 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v845 = __nwlog_obj();
        v846 = os_log_type_enabled(v845, OS_LOG_TYPE_DEBUG);
        v27 = v1065;
        if (v846)
        {
          v847 = v64 + 74;
          v848 = *(v64 + 256);
          v849 = *(*(v64 + 248) + 372);
          if (v848)
          {
            LODWORD(v848) = *(v848 + 860);
          }

          v64 = v1064;
          v850 = *(v1064 + 424);
          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v847;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v849;
          *&v1082[6] = 1024;
          *&v1082[8] = v848;
          *&v1082[12] = 1024;
          *&v1082[14] = v850;
          _os_log_impl(&dword_181A37000, v845, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> width allows new connection, creating", buf, 0x32u);
          v27 = v1065;
        }
      }

      if ((*(v64 + 428) & 0x2000) == 0)
      {
LABEL_821:
        if (*(v64 + 32))
        {
          if ((*(v64 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v864 = __nwlog_obj();
            if (os_log_type_enabled(v864, OS_LOG_TYPE_DEBUG))
            {
              v865 = v64 + 74;
              v866 = *(v64 + 256);
              v867 = *(*(v64 + 248) + 372);
              if (v866)
              {
                LODWORD(v866) = *(v866 + 860);
              }

              v64 = v1064;
              v868 = *(v1064 + 424);
              v869 = *(v1064 + 32);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_establish_new_connection_for_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v865;
              HIWORD(buf[2]) = 2080;
              v1081 = " ";
              *v1082 = 1024;
              *&v1082[2] = v867;
              *&v1082[6] = 1024;
              *&v1082[8] = v866;
              *&v1082[12] = 1024;
              *&v1082[14] = v868;
              *&v1082[18] = 2048;
              *&v1082[20] = v869;
              _os_log_impl(&dword_181A37000, v864, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using already established output handler %p", buf, 0x3Cu);
            }
          }

          v493 = *(v64 + 32);
          if (v493)
          {
            v494 = *(v64 + 336);
            if (v494)
            {
              v495 = *(v64 + 320);
              if (v495)
              {
                v496 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
                v497 = v496;
                if (v496)
                {
                  bzero(v496, 0x370uLL);
                  nw_http1_connection::nw_http1_connection(v497);
                  goto LABEL_847;
                }

                v509 = __nwlog_obj();
                v510 = os_log_type_enabled(v509, OS_LOG_TYPE_ERROR);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_connection_create";
                v12 = 2;
                if (v510)
                {
                  v511 = 3;
                }

                else
                {
                  v511 = 2;
                }

                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = 1;
                HIWORD(buf[2]) = 2048;
                v1081 = 880;
                LODWORD(v1056) = 32;
                v512 = _os_log_send_and_compose_impl(v511, 0, 0, 0, &dword_181A37000, v509, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v1056);
                if (!__nwlog_should_abort(v512))
                {
                  free(v512);
                  bzero(0, 0x370uLL);
                  nw_http1_connection::nw_http1_connection(0);
                  v513 = __nwlog_obj();
                  v514 = os_log_type_enabled(v513, OS_LOG_TYPE_ERROR) ? 3 : 2;
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  LODWORD(v1056) = 12;
                  v515 = _os_log_send_and_compose_impl(v514, 0, 0, 0, &dword_181A37000, v513, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v1056);
                  if (!__nwlog_should_abort(v515))
                  {
                    free(v515);
                    v64 = v1064;
LABEL_847:
                    v516 = v1065;
                    if (nw_protocol_http1_identifier::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
                      v516 = v1065;
                    }

                    *(v497 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
                    if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
                    {
                      dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
                      v516 = v1065;
                    }

                    *(v497 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
                    *(v497 + 184) = 3;
                    *(v497 + 176) = v497;
                    *(v497 + 40) = v497 + 160;
                    *(v497 + 480) = v516;
                    nw_protocol_set_output_handler(v497, v493);
                    buf[0] = os_retain(v494);
                    nw::retained_ptr<nw_endpoint *>::operator=(v497 + 752, buf);
                    buf[0] = os_retain(v495);
                    nw::retained_ptr<nw_endpoint *>::operator=(v497 + 736, buf);
                    buf[0] = _nw_parameters_copy_context();
                    nw::retained_ptr<nw_endpoint *>::operator=(v497 + 496, buf);
                    *(v497 + 192) = *(v516 + 192);
                    v517 = *(v497 + 496);
                    iterate_block[0] = MEMORY[0x1E69E9820];
                    iterate_block[1] = 0x40000000;
                    iterate_block[2] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
                    v1084 = &__block_descriptor_tmp_43_43000;
                    v1085 = v497;
                    buf[0] = nw_http_connection_create_metadata(v517, iterate_block, 0);
                    nw::retained_ptr<nw_endpoint *>::operator=(v497 + 768, buf);
                    nw_http_connection_metadata_set_version(*(v497 + 768), 3);
                    nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v497 + 768), *(v516 + 312));
                    *(v497 + 616) = 0;
                    *(v497 + 624) = v497 + 616;
                    *(v497 + 632) = 0;
                    *(v497 + 640) = v497 + 632;
                    *(v497 + 648) = 0;
                    *(v497 + 656) = v497 + 648;
                    *(v497 + 664) = 0;
                    *(v497 + 672) = v497 + 664;
                    *(v497 + 680) = 0;
                    *(v497 + 688) = v497 + 680;
                    nw_frame_cache_init((v497 + 696), v497, 256, 0x40000, 16);
                    v518 = *(v497 + 480);
                    if (v518)
                    {
                      *(v497 + 360) = 0u;
                      *(v497 + 376) = 0u;
                      *(v497 + 392) = 0u;
                      *(v497 + 408) = 0u;
                      *(v497 + 424) = 0u;
                      *(v497 + 440) = 0u;
                      *(v497 + 328) = 0u;
                      *(v497 + 344) = 0u;
                      *(v497 + 296) = nw_http1_on_message_begin;
                      *(v497 + 384) = nw_http1_on_message_complete;
                      *(v497 + 368) = nw_http1_on_headers_complete;
                      *(v497 + 472) = nw_http1_on_reset;
                      *(v497 + 320) = nw_http1_on_method;
                      *(v497 + 408) = nw_http1_on_method_complete;
                      *(v497 + 304) = nw_http1_on_url;
                      *(v497 + 392) = nw_http1_on_url_complete;
                      *(v497 + 312) = nw_http1_on_status;
                      *(v497 + 400) = nw_http1_on_status_complete;
                      *(v497 + 336) = nw_http1_on_header_field;
                      *(v497 + 424) = nw_http1_on_header_field_complete;
                      *(v497 + 344) = nw_http1_on_header_value;
                      *(v497 + 432) = nw_http1_on_header_value_complete;
                      *(v497 + 376) = nw_http1_on_body;
                      *(v497 + 456) = nw_http1_on_chunk_header;
                      *(v497 + 464) = nw_http1_on_chunk_complete;
                      v519 = *(v518 + 376);
                      *(v497 + 248) = 0u;
                      *(v497 + 200) = 0u;
                      *(v497 + 264) = 0u;
                      *(v497 + 232) = 0u;
                      *(v497 + 216) = 0u;
                      if (v519)
                      {
                        v520 = 1;
                      }

                      else
                      {
                        v520 = 2;
                      }

                      *(v497 + 272) = v520;
                      *(v497 + 280) = 0;
                      *(v497 + 288) = v497 + 296;
                      *(v497 + 278) = 16131;
                      *(v497 + 248) = v497;
                      *(v497 + 256) = 237;
                      if ((*(v497 + 158) & 1) == 0)
                      {
                        v521 = __nwlog_obj();
                        if (os_log_type_enabled(v521, OS_LOG_TYPE_DEBUG))
                        {
                          v522 = *(v497 + 488);
                          v523 = *(*(v497 + 480) + 372);
                          v524 = *(v497 + 860);
                          if (v522)
                          {
                            LODWORD(v522) = *(v522 + 424);
                          }

                          LODWORD(buf[0]) = 136448258;
                          *(buf + 4) = "nw_http1_connection_log_parser_version";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v497 + 74;
                          HIWORD(buf[2]) = 2080;
                          v1081 = " ";
                          *v1082 = 1024;
                          *&v1082[2] = v523;
                          *&v1082[6] = 1024;
                          *&v1082[8] = v524;
                          *&v1082[12] = 1024;
                          *&v1082[14] = v522;
                          *&v1082[18] = 1024;
                          *&v1082[20] = 9;
                          *&v1082[24] = 1024;
                          *&v1082[26] = 2;
                          *&v1082[30] = 1024;
                          *&v1082[32] = 1;
                          _os_log_impl(&dword_181A37000, v521, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
                        }
                      }

                      goto LABEL_860;
                    }

                    v878 = __nwlog_obj();
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_parser_init";
                    LODWORD(v1056) = 12;
                    v879 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v878, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v1056);
                    v1077[0] = 16;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v879, v1077, type))
                    {
                      if (v1077[0] == 17)
                      {
                        v880 = __nwlog_obj();
                        v881 = v1077[0];
                        if (os_log_type_enabled(v880, v1077[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_connection_parser_init";
                          v882 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1738:
                          _os_log_impl(&dword_181A37000, v880, v881, v882, buf, 0xCu);
                        }
                      }

                      else if (type[0] == OS_LOG_TYPE_INFO)
                      {
                        v931 = __nw_create_backtrace_string();
                        v880 = __nwlog_obj();
                        v881 = v1077[0];
                        v932 = os_log_type_enabled(v880, v1077[0]);
                        if (v931)
                        {
                          if (v932)
                          {
                            LODWORD(buf[0]) = 136446466;
                            *(buf + 4) = "nw_http1_connection_parser_init";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = v931;
                            _os_log_impl(&dword_181A37000, v880, v881, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v931);
                          goto LABEL_1739;
                        }

                        if (v932)
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_connection_parser_init";
                          v882 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                          goto LABEL_1738;
                        }
                      }

                      else
                      {
                        v880 = __nwlog_obj();
                        v881 = v1077[0];
                        if (os_log_type_enabled(v880, v1077[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_connection_parser_init";
                          v882 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                          goto LABEL_1738;
                        }
                      }
                    }

LABEL_1739:
                    if (v879)
                    {
                      free(v879);
                    }

                    v64 = v1064;
LABEL_860:
                    buf[0] = 0;
                    buf[1] = buf;
                    buf[2] = 0x2000000000;
                    v1081 = v497;
                    *aBlock = MEMORY[0x1E69E9820];
                    *&aBlock[8] = 0x40000000;
                    *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
                    v1073 = &unk_1E6A32758;
                    *v1074 = buf;
                    *(v497 + 608) = _Block_copy(aBlock);
                    _Block_object_dispose(buf, 8);
                    if ((*(v497 + 158) & 1) == 0 && gLogDatapath == 1)
                    {
                      v893 = __nwlog_obj();
                      if (os_log_type_enabled(v893, OS_LOG_TYPE_DEBUG))
                      {
                        v894 = *(v497 + 488);
                        v895 = *(*(v497 + 480) + 372);
                        v896 = *(v497 + 860);
                        if (v894)
                        {
                          LODWORD(v894) = *(v894 + 424);
                        }

                        LODWORD(buf[0]) = 136447746;
                        *(buf + 4) = "nw_http1_connection_create";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v497 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1081 = " ";
                        *v1082 = 1024;
                        *&v1082[2] = v895;
                        *&v1082[6] = 1024;
                        *&v1082[8] = v896;
                        *&v1082[12] = 1024;
                        *&v1082[14] = v894;
                        *&v1082[18] = 2048;
                        *&v1082[20] = v497;
                        _os_log_impl(&dword_181A37000, v893, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                        v64 = v1064;
                      }
                    }

                    nw_protocol_replace_input_handler(v493, v64, v497);
                    *v497 = *v493;
                    v525 = *(v497 + 736);
                    if (v525)
                    {
                      v526 = v1065;
                      if (!*(v497 + 528))
                      {
                        v527 = _nw_parameters_copy_context();
                        buf[0] = nw_path_copy_flow_registration(v527, v497);
                        v528 = (v497 + 560);
                        nw::retained_ptr<nw_endpoint *>::operator=(v497 + 560, buf);
                        v529 = *(v497 + 560);
                        if (v529)
                        {
                          v530 = nw_path_flow_registration_copy_endpoint(v529);
                          v531 = nw_path_flow_registration_copy_parameters(*v528);
                          buf[0] = nw_endpoint_copy_association_with_evaluator(v530, v531, 0);
                          nw::retained_ptr<nw_endpoint *>::operator=(v497 + 528, buf);
                          if (*(v497 + 528))
                          {
                            buf[0] = nw_protocol_instance_stub_create(v497);
                            nw::retained_ptr<nw_endpoint *>::operator=(v497 + 544, buf);
                            nw_association_register_internal(*(v497 + 528), v525, *(v497 + 544), 0, 0, &__block_literal_global_69_43019);
                            v532 = nw_association_copy_current_path(*(v497 + 528), v531);
                            if (v532)
                            {
                              v533 = v532;
                              v534 = nw_path_copy_for_flow_registration(v532, *v528);
                              if (v534)
                              {
                                v535 = v534;
                                if (*(v497 + 512) != v534)
                                {
                                  buf[0] = os_retain(v534);
                                  nw::retained_ptr<nw_endpoint *>::operator=(v497 + 512, buf);
                                }

                                if (nw_path_has_flows(v535))
                                {
                                  v536 = 4096;
                                }

                                else
                                {
                                  v536 = 0;
                                }

                                *(v497 + 872) = *(v497 + 872) & 0xEFFF | v536;
                                v537 = _nw_parameters_copy_effective_proxy_config(v525);
                                if (v537)
                                {
                                  v538 = v537;
                                  if (nw_path_has_proxy_config(v533, v537))
                                  {
                                    buf[0] = os_retain(v538);
                                    nw::retained_ptr<nw_endpoint *>::operator=(v497 + 576, buf);
                                  }

                                  os_release(v538);
                                }

                                os_release(v535);
                              }

                              os_release(v533);
                            }
                          }

                          if (v531)
                          {
                            os_release(v531);
                          }

                          v64 = v1064;
                          if (v530)
                          {
                            os_release(v530);
                          }
                        }

                        v526 = v1065;
                        if (v527)
                        {
                          os_release(v527);
                          v526 = v1065;
                        }
                      }

                      v539 = *(v497 + 512);
                      if (v539)
                      {
LABEL_886:
                        v540 = _nw_path_uses_interface_type(v539, 2u);
                        v526 = v1065;
                        if (v540)
                        {
                          *(v497 + 192) = 1000;
                        }
                      }

LABEL_888:
                      v541 = *(v526 + 336) + 1;
                      *(v526 + 336) = v541;
                      if (v541 == v541 << 31 >> 31)
                      {
                        goto LABEL_913;
                      }

                      v542 = v526;
                      v543 = __nwlog_obj();
                      v544 = *(v542 + 336);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->connections_count";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v544;
                      LODWORD(v1056) = 42;
                      v545 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v543, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v1056);
                      LOBYTE(iterate_block[0]) = 16;
                      aBlock[0] = 0;
                      if (__nwlog_fault(v545, iterate_block, aBlock))
                      {
                        if (LOBYTE(iterate_block[0]) == 17)
                        {
                          v546 = __nwlog_obj();
                          v547 = iterate_block[0];
                          if (os_log_type_enabled(v546, iterate_block[0]))
                          {
                            v548 = *(v1065 + 336);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->connections_count";
                            HIWORD(buf[2]) = 2048;
                            v1081 = 1;
                            *v1082 = 2048;
                            *&v1082[2] = v548;
                            v549 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_909:
                            _os_log_impl(&dword_181A37000, v546, v547, v549, buf, 0x2Au);
                          }
                        }

                        else if (aBlock[0] == 1)
                        {
                          v550 = __nw_create_backtrace_string();
                          v546 = __nwlog_obj();
                          v547 = iterate_block[0];
                          v551 = os_log_type_enabled(v546, iterate_block[0]);
                          if (v550)
                          {
                            if (v551)
                            {
                              v552 = *(v1065 + 336);
                              LODWORD(buf[0]) = 136447234;
                              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = "http1->connections_count";
                              HIWORD(buf[2]) = 2048;
                              v1081 = 1;
                              *v1082 = 2048;
                              *&v1082[2] = v552;
                              *&v1082[10] = 2082;
                              *&v1082[12] = v550;
                              _os_log_impl(&dword_181A37000, v546, v547, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v550);
                            goto LABEL_910;
                          }

                          if (v551)
                          {
                            v558 = *(v1065 + 336);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->connections_count";
                            HIWORD(buf[2]) = 2048;
                            v1081 = 1;
                            *v1082 = 2048;
                            *&v1082[2] = v558;
                            v549 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_909;
                          }
                        }

                        else
                        {
                          v546 = __nwlog_obj();
                          v547 = iterate_block[0];
                          if (os_log_type_enabled(v546, iterate_block[0]))
                          {
                            v556 = *(v1065 + 336);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->connections_count";
                            HIWORD(buf[2]) = 2048;
                            v1081 = 1;
                            *v1082 = 2048;
                            *&v1082[2] = v556;
                            v549 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_909;
                          }
                        }
                      }

LABEL_910:
                      if (v545)
                      {
                        free(v545);
                      }

                      v526 = v1065;
                      *(v1065 + 336) = -1;
                      v64 = v1064;
LABEL_913:
                      v559 = *(v526 + 360) + 1;
                      *(v526 + 360) = v559;
                      if (v559 == v559 << 31 >> 31)
                      {
                        goto LABEL_931;
                      }

                      v560 = v526;
                      v561 = __nwlog_obj();
                      v562 = *(v560 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v562;
                      LODWORD(v1056) = 42;
                      v563 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v561, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v1056);
                      LOBYTE(iterate_block[0]) = 16;
                      aBlock[0] = 0;
                      if (__nwlog_fault(v563, iterate_block, aBlock))
                      {
                        if (LOBYTE(iterate_block[0]) == 17)
                        {
                          v564 = __nwlog_obj();
                          v565 = iterate_block[0];
                          if (os_log_type_enabled(v564, iterate_block[0]))
                          {
                            v566 = *(v1065 + 360);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->next_connection_log_num";
                            HIWORD(buf[2]) = 2048;
                            v1081 = 1;
                            *v1082 = 2048;
                            *&v1082[2] = v566;
                            v567 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_927:
                            _os_log_impl(&dword_181A37000, v564, v565, v567, buf, 0x2Au);
                          }
                        }

                        else if (aBlock[0] == 1)
                        {
                          v568 = __nw_create_backtrace_string();
                          v564 = __nwlog_obj();
                          v565 = iterate_block[0];
                          v569 = os_log_type_enabled(v564, iterate_block[0]);
                          if (v568)
                          {
                            if (v569)
                            {
                              v570 = *(v1065 + 360);
                              LODWORD(buf[0]) = 136447234;
                              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = "http1->next_connection_log_num";
                              HIWORD(buf[2]) = 2048;
                              v1081 = 1;
                              *v1082 = 2048;
                              *&v1082[2] = v570;
                              *&v1082[10] = 2082;
                              *&v1082[12] = v568;
                              _os_log_impl(&dword_181A37000, v564, v565, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v568);
                            goto LABEL_928;
                          }

                          if (v569)
                          {
                            v572 = *(v1065 + 360);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->next_connection_log_num";
                            HIWORD(buf[2]) = 2048;
                            v1081 = 1;
                            *v1082 = 2048;
                            *&v1082[2] = v572;
                            v567 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_927;
                          }
                        }

                        else
                        {
                          v564 = __nwlog_obj();
                          v565 = iterate_block[0];
                          if (os_log_type_enabled(v564, iterate_block[0]))
                          {
                            v571 = *(v1065 + 360);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->next_connection_log_num";
                            HIWORD(buf[2]) = 2048;
                            v1081 = 1;
                            *v1082 = 2048;
                            *&v1082[2] = v571;
                            v567 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_927;
                          }
                        }
                      }

LABEL_928:
                      if (v563)
                      {
                        free(v563);
                      }

                      LODWORD(v559) = -1;
                      *(v1065 + 360) = -1;
                      v64 = v1064;
LABEL_931:
                      *(v497 + 860) = v559;
                      if ((*(v497 + 158) & 1) == 0 && gLogDatapath == 1)
                      {
                        v897 = __nwlog_obj();
                        if (os_log_type_enabled(v897, OS_LOG_TYPE_DEBUG))
                        {
                          v898 = *(v497 + 488);
                          v899 = *(*(v497 + 480) + 372);
                          v900 = *(v497 + 860);
                          if (v898)
                          {
                            LODWORD(v898) = *(v898 + 424);
                          }

                          v901 = *(v1065 + 336);
                          LODWORD(buf[0]) = 136448002;
                          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v497 + 74;
                          HIWORD(buf[2]) = 2080;
                          v1081 = " ";
                          *v1082 = 1024;
                          *&v1082[2] = v899;
                          *&v1082[6] = 1024;
                          *&v1082[8] = v900;
                          *&v1082[12] = 1024;
                          *&v1082[14] = v898;
                          *&v1082[18] = 2048;
                          *&v1082[20] = v497;
                          *&v1082[28] = 1024;
                          *&v1082[30] = v901;
                          _os_log_impl(&dword_181A37000, v897, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                          v64 = v1064;
                        }
                      }

                      if (*(v64 + 248))
                      {
                        if (*(v497 + 488))
                        {
                          v573 = __nwlog_obj();
                          v574 = *(v497 + 488);
                          LODWORD(buf[0]) = 136446722;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2048;
                          *(&buf[1] + 6) = v497;
                          HIWORD(buf[2]) = 2048;
                          v1081 = v574;
                          LODWORD(v1056) = 32;
                          v575 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v573, 16, "%{public}s Connection %p already has a stream (%p)", buf, v1056);
                          aBlock[0] = 16;
                          v1077[0] = 0;
                          if (__nwlog_fault(v575, aBlock, v1077))
                          {
                            if (aBlock[0] == 17)
                            {
                              v576 = __nwlog_obj();
                              v577 = aBlock[0];
                              if (os_log_type_enabled(v576, aBlock[0]))
                              {
                                v578 = *(v497 + 488);
                                LODWORD(buf[0]) = 136446722;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v497;
                                HIWORD(buf[2]) = 2048;
                                v1081 = v578;
                                v579 = "%{public}s Connection %p already has a stream (%p)";
LABEL_965:
                                _os_log_impl(&dword_181A37000, v576, v577, v579, buf, 0x20u);
                              }
                            }

                            else if (v1077[0] == 1)
                            {
                              v586 = __nw_create_backtrace_string();
                              v576 = __nwlog_obj();
                              v577 = aBlock[0];
                              v587 = os_log_type_enabled(v576, aBlock[0]);
                              if (v586)
                              {
                                if (v587)
                                {
                                  v588 = *(v497 + 488);
                                  LODWORD(buf[0]) = 136446978;
                                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                  WORD2(buf[1]) = 2048;
                                  *(&buf[1] + 6) = v497;
                                  HIWORD(buf[2]) = 2048;
                                  v1081 = v588;
                                  *v1082 = 2082;
                                  *&v1082[2] = v586;
                                  _os_log_impl(&dword_181A37000, v576, v577, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                                }

                                free(v586);
                                goto LABEL_966;
                              }

                              if (v587)
                              {
                                v600 = *(v497 + 488);
                                LODWORD(buf[0]) = 136446722;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v497;
                                HIWORD(buf[2]) = 2048;
                                v1081 = v600;
                                v579 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                                goto LABEL_965;
                              }
                            }

                            else
                            {
                              v576 = __nwlog_obj();
                              v577 = aBlock[0];
                              if (os_log_type_enabled(v576, aBlock[0]))
                              {
                                v589 = *(v497 + 488);
                                LODWORD(buf[0]) = 136446722;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v497;
                                HIWORD(buf[2]) = 2048;
                                v1081 = v589;
                                v579 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                                goto LABEL_965;
                              }
                            }
                          }

LABEL_966:
                          if (v575)
                          {
                            free(v575);
                          }

                          v601 = 0;
                          goto LABEL_969;
                        }

                        *(v64 + 256) = v497;
                        *(v497 + 488) = v64;
                        v580 = *(v64 + 320);
                        if (v580)
                        {
                          v580 = os_retain(v580);
                        }

                        buf[0] = v580;
                        nw::retained_ptr<nw_endpoint *>::operator=(v497 + 736, buf);
                        if ((*(*(v64 + 248) + 376) & 2) == 0)
                        {
                          goto LABEL_1160;
                        }

                        v581 = nw_parameters_copy_default_protocol_stack(*(v64 + 320));
                        *aBlock = 0;
                        *&aBlock[8] = aBlock;
                        *&aBlock[16] = 0x2000000000;
                        LOBYTE(v1073) = 0;
                        buf[0] = 0;
                        buf[1] = buf;
                        buf[2] = 0x3802000000;
                        v1081 = __Block_byref_object_copy__42960;
                        *v1082 = __Block_byref_object_dispose__42961;
                        *&v1082[8] = 0;
                        v1082[16] |= 1u;
                        iterate_block[0] = MEMORY[0x1E69E9820];
                        iterate_block[1] = 0x40000000;
                        iterate_block[2] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                        v1084 = &unk_1E6A32930;
                        v1085 = aBlock;
                        v1086 = buf;
                        v1087 = v64;
                        nw_protocol_stack_iterate_application_protocols(v581, iterate_block);
                        if (*(buf[1] + 40))
                        {
                          v582 = v497;
                          while (1)
                          {
                            v582 = *(v582 + 32);
                            if (!v582)
                            {
                              break;
                            }

                            if (nw_protocol_is_tls_over_stream(v582))
                            {
                              v583 = *(buf[1] + 40);
                              v584 = nw_protocol_boringssl_copy_definition();
                              nw_parameters_set_protocol_instance(v583, v585, v582);
                              if (v584)
                              {
                                os_release(v584);
                              }

                              goto LABEL_1147;
                            }
                          }

                          v595 = __nwlog_obj();
                          *v1077 = 136446210;
                          *&v1077[4] = "nw_http1_stream_associate_with_connection";
                          LODWORD(v1056) = 12;
                          v596 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v595, 16, "%{public}s tls should have been in the stack but could not find it", v1077, v1056);
                          type[0] = OS_LOG_TYPE_ERROR;
                          v1071 = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v596, type, &v1071))
                          {
                            goto LABEL_1151;
                          }

                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v597 = __nwlog_obj();
                            v598 = type[0];
                            if (os_log_type_enabled(v597, type[0]))
                            {
                              *v1077 = 136446210;
                              *&v1077[4] = "nw_http1_stream_associate_with_connection";
                              v599 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1150:
                              _os_log_impl(&dword_181A37000, v597, v598, v599, v1077, 0xCu);
                            }
                          }

                          else if (v1071 == OS_LOG_TYPE_INFO)
                          {
                            v604 = __nw_create_backtrace_string();
                            v597 = __nwlog_obj();
                            v598 = type[0];
                            v605 = os_log_type_enabled(v597, type[0]);
                            if (v604)
                            {
                              if (v605)
                              {
                                *v1077 = 136446466;
                                *&v1077[4] = "nw_http1_stream_associate_with_connection";
                                *&v1077[12] = 2082;
                                *&v1077[14] = v604;
                                _os_log_impl(&dword_181A37000, v597, v598, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1077, 0x16u);
                              }

                              free(v604);
                              v64 = v1064;
                              goto LABEL_1151;
                            }

                            v64 = v1064;
                            if (v605)
                            {
                              *v1077 = 136446210;
                              *&v1077[4] = "nw_http1_stream_associate_with_connection";
                              v599 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                              goto LABEL_1150;
                            }
                          }

                          else
                          {
                            v597 = __nwlog_obj();
                            v598 = type[0];
                            if (os_log_type_enabled(v597, type[0]))
                            {
                              *v1077 = 136446210;
                              *&v1077[4] = "nw_http1_stream_associate_with_connection";
                              v599 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                              goto LABEL_1150;
                            }
                          }

LABEL_1151:
                          if (v596)
                          {
                            free(v596);
                          }

                          v698 = 0;
                          goto LABEL_1154;
                        }

                        v590 = __nwlog_obj();
                        *v1077 = 136446210;
                        *&v1077[4] = "nw_http1_stream_associate_with_connection";
                        LODWORD(v1056) = 12;
                        v591 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v590, 16, "%{public}s unable to find tls options", v1077, v1056);
                        type[0] = OS_LOG_TYPE_ERROR;
                        v1071 = OS_LOG_TYPE_DEFAULT;
                        if (__nwlog_fault(v591, type, &v1071))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v592 = __nwlog_obj();
                            v593 = type[0];
                            if (os_log_type_enabled(v592, type[0]))
                            {
                              *v1077 = 136446210;
                              *&v1077[4] = "nw_http1_stream_associate_with_connection";
                              v594 = "%{public}s unable to find tls options";
LABEL_1144:
                              _os_log_impl(&dword_181A37000, v592, v593, v594, v1077, 0xCu);
                            }
                          }

                          else if (v1071 == OS_LOG_TYPE_INFO)
                          {
                            v602 = __nw_create_backtrace_string();
                            v592 = __nwlog_obj();
                            v593 = type[0];
                            v603 = os_log_type_enabled(v592, type[0]);
                            if (v602)
                            {
                              if (v603)
                              {
                                *v1077 = 136446466;
                                *&v1077[4] = "nw_http1_stream_associate_with_connection";
                                *&v1077[12] = 2082;
                                *&v1077[14] = v602;
                                _os_log_impl(&dword_181A37000, v592, v593, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1077, 0x16u);
                              }

                              free(v602);
                              v64 = v1064;
                            }

                            else
                            {
                              v64 = v1064;
                              if (v603)
                              {
                                *v1077 = 136446210;
                                *&v1077[4] = "nw_http1_stream_associate_with_connection";
                                v594 = "%{public}s unable to find tls options, no backtrace";
                                goto LABEL_1144;
                              }
                            }
                          }

                          else
                          {
                            v592 = __nwlog_obj();
                            v593 = type[0];
                            if (os_log_type_enabled(v592, type[0]))
                            {
                              *v1077 = 136446210;
                              *&v1077[4] = "nw_http1_stream_associate_with_connection";
                              v594 = "%{public}s unable to find tls options, backtrace limit exceeded";
                              goto LABEL_1144;
                            }
                          }
                        }

                        if (v591)
                        {
                          free(v591);
                        }

LABEL_1147:
                        v698 = 1;
LABEL_1154:
                        _Block_object_dispose(buf, 8);
                        if ((v1082[16] & 1) != 0 && *&v1082[8])
                        {
                          os_release(*&v1082[8]);
                        }

                        _Block_object_dispose(aBlock, 8);
                        if (v581)
                        {
                          os_release(v581);
                        }

                        if (!v698)
                        {
LABEL_1189:
                          v601 = 0;
                          if (*(v64 + 158))
                          {
                            goto LABEL_1194;
                          }

LABEL_1190:
                          v729 = __nwlog_obj();
                          if (os_log_type_enabled(v729, OS_LOG_TYPE_DEBUG))
                          {
                            v730 = *(v64 + 256);
                            v731 = *(*(v64 + 248) + 372);
                            if (v730)
                            {
                              LODWORD(v730) = *(v730 + 860);
                            }

                            v732 = *(v64 + 424);
                            LODWORD(buf[0]) = 136448258;
                            *(buf + 4) = "nw_http1_start_new_connection_for_stream";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = v64 + 74;
                            HIWORD(buf[2]) = 2080;
                            v1081 = " ";
                            *v1082 = 1024;
                            *&v1082[2] = v731;
                            *&v1082[6] = 1024;
                            *&v1082[8] = v730;
                            *&v1082[12] = 1024;
                            *&v1082[14] = v732;
                            *&v1082[18] = 2048;
                            *&v1082[20] = v497;
                            *&v1082[28] = 1024;
                            *&v1082[30] = v732;
                            *&v1082[34] = 2048;
                            *&v1082[36] = v64;
                            _os_log_impl(&dword_181A37000, v729, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                          }

LABEL_1194:
                          *(v64 + 428) |= 1u;
                          v733 = nw_protocol_copy_info(v493);
                          v498 = v733;
                          if (v733)
                          {
                            object = _nw_array_copy_last_object(v733);
                            v735 = object;
                            if (object)
                            {
                              if (nw_protocol_metadata_is_tls(object))
                              {
                                v735 = v735;
                                nw_http_connection_metadata_set_sec_metadata(*(v497 + 768), v735);
                                os_release(v735);
                              }

                              v736 = 0;
LABEL_1201:
                              if (!v601)
                              {
                                goto LABEL_1202;
                              }

                              v859 = __nwlog_obj();
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              LODWORD(v1056) = 12;
                              v860 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v859, 16, "%{public}s called with null connection", buf, v1056);
                              LOBYTE(iterate_block[0]) = 16;
                              aBlock[0] = 0;
                              if (__nwlog_fault(v860, iterate_block, aBlock))
                              {
                                if (LOBYTE(iterate_block[0]) == 17)
                                {
                                  v861 = __nwlog_obj();
                                  v862 = iterate_block[0];
                                  if (os_log_type_enabled(v861, iterate_block[0]))
                                  {
                                    LODWORD(buf[0]) = 136446210;
                                    *(buf + 4) = "nw_http1_get_output_protocol";
                                    v863 = "%{public}s called with null connection";
LABEL_1692:
                                    _os_log_impl(&dword_181A37000, v861, v862, v863, buf, 0xCu);
                                  }
                                }

                                else if (aBlock[0] == 1)
                                {
                                  v925 = __nw_create_backtrace_string();
                                  v861 = __nwlog_obj();
                                  v862 = iterate_block[0];
                                  v926 = os_log_type_enabled(v861, iterate_block[0]);
                                  if (v925)
                                  {
                                    if (v926)
                                    {
                                      LODWORD(buf[0]) = 136446466;
                                      *(buf + 4) = "nw_http1_get_output_protocol";
                                      WORD2(buf[1]) = 2082;
                                      *(&buf[1] + 6) = v925;
                                      _os_log_impl(&dword_181A37000, v861, v862, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                                    }

                                    free(v925);
                                    goto LABEL_1693;
                                  }

                                  if (v926)
                                  {
                                    LODWORD(buf[0]) = 136446210;
                                    *(buf + 4) = "nw_http1_get_output_protocol";
                                    v863 = "%{public}s called with null connection, no backtrace";
                                    goto LABEL_1692;
                                  }
                                }

                                else
                                {
                                  v861 = __nwlog_obj();
                                  v862 = iterate_block[0];
                                  if (os_log_type_enabled(v861, iterate_block[0]))
                                  {
                                    LODWORD(buf[0]) = 136446210;
                                    *(buf + 4) = "nw_http1_get_output_protocol";
                                    v863 = "%{public}s called with null connection, backtrace limit exceeded";
                                    goto LABEL_1692;
                                  }
                                }
                              }

LABEL_1693:
                              if (v860)
                              {
                                free(v860);
                              }

                              v497 = 0;
LABEL_1202:
                              nw_protocol_connect(v493, v497);
                              if ((v736 & 1) == 0)
                              {
                                os_release(v735);
                              }

                              if (!v498)
                              {
                                return;
                              }

                              goto LABEL_1205;
                            }
                          }

                          else
                          {
                            v735 = 0;
                          }

                          v736 = 1;
                          goto LABEL_1201;
                        }

LABEL_1160:
                        v699 = *(v64 + 32);
                        if (!v699 || v699 == *(v497 + 32))
                        {
LABEL_1179:
                          nw_protocol_set_output_handler(v64, *(v497 + 32));
                          nw_protocol_set_input_handler(v497, *(v64 + 48));
                          *v64 = *v497;
                          v717 = *(v64 + 96);
                          v718 = *(v64 + 112);
                          v719 = *(v64 + 128);
                          *(v497 + 144) = *(v64 + 144);
                          v720 = *(v64 + 80);
                          *(v497 + 64) = *(v64 + 64);
                          *(v497 + 80) = v720;
                          *(v497 + 112) = v718;
                          *(v497 + 128) = v719;
                          *(v497 + 96) = v717;
                          *(v497 + 872) &= 0xFFD7u;
                          *(v497 + 864) = 1;
                          if ((*(v497 + 158) & 1) == 0)
                          {
                            v721 = __nwlog_obj();
                            if (os_log_type_enabled(v721, OS_LOG_TYPE_DEBUG))
                            {
                              v722 = *(v497 + 488);
                              v723 = *(*(v497 + 480) + 372);
                              v724 = *(v497 + 860);
                              if (v722)
                              {
                                LODWORD(v722) = *(v722 + 424);
                              }

                              LODWORD(buf[0]) = 136447490;
                              *(buf + 4) = "nw_http1_update_connection_input_state";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = v497 + 74;
                              HIWORD(buf[2]) = 2080;
                              v1081 = " ";
                              *v1082 = 1024;
                              *&v1082[2] = v723;
                              *&v1082[6] = 1024;
                              *&v1082[8] = v724;
                              *&v1082[12] = 1024;
                              *&v1082[14] = v722;
                              _os_log_impl(&dword_181A37000, v721, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                            }
                          }

                          if ((*(v64 + 158) & 1) == 0)
                          {
                            v725 = __nwlog_obj();
                            if (os_log_type_enabled(v725, OS_LOG_TYPE_INFO))
                            {
                              v726 = *(v64 + 256);
                              v727 = *(*(v64 + 248) + 372);
                              if (v726)
                              {
                                LODWORD(v726) = *(v726 + 860);
                              }

                              v728 = *(v64 + 424);
                              LODWORD(buf[0]) = 136448002;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = v64 + 74;
                              HIWORD(buf[2]) = 2080;
                              v1081 = " ";
                              *v1082 = 1024;
                              *&v1082[2] = v727;
                              *&v1082[6] = 1024;
                              *&v1082[8] = v726;
                              *&v1082[12] = 1024;
                              *&v1082[14] = v728;
                              *&v1082[18] = 2048;
                              *&v1082[20] = v64;
                              *&v1082[28] = 2048;
                              *&v1082[30] = v497;
                              _os_log_impl(&dword_181A37000, v725, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                            }
                          }

                          goto LABEL_1189;
                        }

                        v700 = __nwlog_obj();
                        v701 = *(v64 + 32);
                        v702 = *(v497 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v701;
                        HIWORD(buf[2]) = 2048;
                        v1081 = v64;
                        *v1082 = 2048;
                        *&v1082[2] = v702;
                        LODWORD(v1056) = 42;
                        v703 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v700, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v1056);
                        aBlock[0] = 16;
                        v1077[0] = 0;
                        if (__nwlog_fault(v703, aBlock, v1077))
                        {
                          if (aBlock[0] == 17)
                          {
                            v704 = __nwlog_obj();
                            v705 = aBlock[0];
                            if (os_log_type_enabled(v704, aBlock[0]))
                            {
                              v706 = *(v1064 + 32);
                              v707 = *(v497 + 32);
                              LODWORD(buf[0]) = 136446978;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2048;
                              *(&buf[1] + 6) = v706;
                              HIWORD(buf[2]) = 2048;
                              v1081 = v1064;
                              *v1082 = 2048;
                              *&v1082[2] = v707;
                              v708 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_1175:
                              _os_log_impl(&dword_181A37000, v704, v705, v708, buf, 0x2Au);
                            }
                          }

                          else if (v1077[0] == 1)
                          {
                            v709 = __nw_create_backtrace_string();
                            v704 = __nwlog_obj();
                            v705 = aBlock[0];
                            v710 = os_log_type_enabled(v704, aBlock[0]);
                            if (v709)
                            {
                              if (v710)
                              {
                                v711 = *(v1064 + 32);
                                v712 = *(v497 + 32);
                                LODWORD(buf[0]) = 136447234;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v711;
                                HIWORD(buf[2]) = 2048;
                                v1081 = v1064;
                                *v1082 = 2048;
                                *&v1082[2] = v712;
                                *&v1082[10] = 2082;
                                *&v1082[12] = v709;
                                _os_log_impl(&dword_181A37000, v704, v705, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v709);
                              goto LABEL_1176;
                            }

                            if (v710)
                            {
                              v715 = *(v1064 + 32);
                              v716 = *(v497 + 32);
                              LODWORD(buf[0]) = 136446978;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2048;
                              *(&buf[1] + 6) = v715;
                              HIWORD(buf[2]) = 2048;
                              v1081 = v1064;
                              *v1082 = 2048;
                              *&v1082[2] = v716;
                              v708 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                              goto LABEL_1175;
                            }
                          }

                          else
                          {
                            v704 = __nwlog_obj();
                            v705 = aBlock[0];
                            if (os_log_type_enabled(v704, aBlock[0]))
                            {
                              v713 = *(v1064 + 32);
                              v714 = *(v497 + 32);
                              LODWORD(buf[0]) = 136446978;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2048;
                              *(&buf[1] + 6) = v713;
                              HIWORD(buf[2]) = 2048;
                              v1081 = v1064;
                              *v1082 = 2048;
                              *&v1082[2] = v714;
                              v708 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                              goto LABEL_1175;
                            }
                          }
                        }

LABEL_1176:
                        if (v703)
                        {
                          free(v703);
                        }

                        v64 = v1064;
                        goto LABEL_1179;
                      }

                      v888 = __nwlog_obj();
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      LODWORD(v1056) = 12;
                      v889 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v888, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v1056);
                      aBlock[0] = 16;
                      v1077[0] = 0;
                      if (!__nwlog_fault(v889, aBlock, v1077))
                      {
                        goto LABEL_1752;
                      }

                      if (aBlock[0] == 17)
                      {
                        v890 = __nwlog_obj();
                        v891 = aBlock[0];
                        if (os_log_type_enabled(v890, aBlock[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          v892 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1751:
                          _os_log_impl(&dword_181A37000, v890, v891, v892, buf, 0xCu);
                        }
                      }

                      else if (v1077[0] == 1)
                      {
                        v935 = __nw_create_backtrace_string();
                        v890 = __nwlog_obj();
                        v891 = aBlock[0];
                        v936 = os_log_type_enabled(v890, aBlock[0]);
                        if (v935)
                        {
                          if (v936)
                          {
                            LODWORD(buf[0]) = 136446466;
                            *(buf + 4) = "nw_http1_stream_associate_with_connection";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = v935;
                            _os_log_impl(&dword_181A37000, v890, v891, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v935);
                          goto LABEL_1752;
                        }

                        if (v936)
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          v892 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                          goto LABEL_1751;
                        }
                      }

                      else
                      {
                        v890 = __nwlog_obj();
                        v891 = aBlock[0];
                        if (os_log_type_enabled(v890, aBlock[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          v892 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                          goto LABEL_1751;
                        }
                      }

LABEL_1752:
                      if (v889)
                      {
                        free(v889);
                      }

                      v601 = 0;
                      goto LABEL_969;
                    }

                    v883 = __nwlog_obj();
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_protocol_http1_set_up_association";
                    LODWORD(v1056) = 12;
                    v884 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v883, 16, "%{public}s called with null parameters", buf, v1056);
                    LOBYTE(iterate_block[0]) = 16;
                    aBlock[0] = 0;
                    if (__nwlog_fault(v884, iterate_block, aBlock))
                    {
                      if (LOBYTE(iterate_block[0]) == 17)
                      {
                        v885 = __nwlog_obj();
                        v886 = iterate_block[0];
                        if (!os_log_type_enabled(v885, iterate_block[0]))
                        {
                          goto LABEL_1745;
                        }

                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        v887 = "%{public}s called with null parameters";
LABEL_1744:
                        _os_log_impl(&dword_181A37000, v885, v886, v887, buf, 0xCu);
                        goto LABEL_1745;
                      }

                      if (aBlock[0] != 1)
                      {
                        v885 = __nwlog_obj();
                        v886 = iterate_block[0];
                        if (!os_log_type_enabled(v885, iterate_block[0]))
                        {
                          goto LABEL_1745;
                        }

                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        v887 = "%{public}s called with null parameters, backtrace limit exceeded";
                        goto LABEL_1744;
                      }

                      v933 = __nw_create_backtrace_string();
                      v885 = __nwlog_obj();
                      v886 = iterate_block[0];
                      v934 = os_log_type_enabled(v885, iterate_block[0]);
                      if (!v933)
                      {
                        if (!v934)
                        {
                          goto LABEL_1745;
                        }

                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        v887 = "%{public}s called with null parameters, no backtrace";
                        goto LABEL_1744;
                      }

                      if (v934)
                      {
                        LODWORD(buf[0]) = 136446466;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v933;
                        _os_log_impl(&dword_181A37000, v885, v886, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v933);
                    }

LABEL_1745:
                    if (v884)
                    {
                      free(v884);
                    }

                    v526 = v1065;
                    v64 = v1064;
                    v539 = *(v497 + 512);
                    if (v539)
                    {
                      goto LABEL_886;
                    }

                    goto LABEL_888;
                  }
                }

                goto LABEL_1826;
              }

              v873 = __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_connection_create";
              LODWORD(v1056) = 12;
              v855 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v873, 16, "%{public}s called with null parameters", buf, v1056);
              v1077[0] = 16;
              type[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v855, v1077, type))
              {
                if (v1077[0] == 17)
                {
                  v856 = __nwlog_obj();
                  v857 = v1077[0];
                  if (!os_log_type_enabled(v856, v1077[0]))
                  {
                    goto LABEL_1701;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  v858 = "%{public}s called with null parameters";
                  goto LABEL_1700;
                }

                if (type[0] != OS_LOG_TYPE_INFO)
                {
                  v856 = __nwlog_obj();
                  v857 = v1077[0];
                  if (!os_log_type_enabled(v856, v1077[0]))
                  {
                    goto LABEL_1701;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  v858 = "%{public}s called with null parameters, backtrace limit exceeded";
                  goto LABEL_1700;
                }

                v927 = __nw_create_backtrace_string();
                v856 = __nwlog_obj();
                v857 = v1077[0];
                v930 = os_log_type_enabled(v856, v1077[0]);
                if (!v927)
                {
                  if (!v930)
                  {
                    goto LABEL_1701;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  v858 = "%{public}s called with null parameters, no backtrace";
                  goto LABEL_1700;
                }

                if (v930)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_connection_create";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v927;
                  v929 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
                  goto LABEL_1498;
                }

                goto LABEL_1499;
              }

LABEL_1701:
              if (!v855)
              {
                goto LABEL_1703;
              }

              goto LABEL_1702;
            }

            v870 = __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            LODWORD(v1056) = 12;
            v855 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v870, 16, "%{public}s called with null endpoint", buf, v1056);
            v1077[0] = 16;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v855, v1077, type))
            {
              goto LABEL_1701;
            }

            if (v1077[0] != 17)
            {
              if (type[0] != OS_LOG_TYPE_INFO)
              {
                v856 = __nwlog_obj();
                v857 = v1077[0];
                if (!os_log_type_enabled(v856, v1077[0]))
                {
                  goto LABEL_1701;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v858 = "%{public}s called with null endpoint, backtrace limit exceeded";
                goto LABEL_1700;
              }

              v927 = __nw_create_backtrace_string();
              v856 = __nwlog_obj();
              v857 = v1077[0];
              v928 = os_log_type_enabled(v856, v1077[0]);
              if (!v927)
              {
                if (!v928)
                {
                  goto LABEL_1701;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v858 = "%{public}s called with null endpoint, no backtrace";
                goto LABEL_1700;
              }

              if (v928)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_connection_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v927;
                v929 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1498:
                _os_log_impl(&dword_181A37000, v856, v857, v929, buf, 0x16u);
              }

LABEL_1499:
              free(v927);
              if (!v855)
              {
LABEL_1703:
                v997 = __nwlog_obj();
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                LODWORD(v1058) = 12;
                v998 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v997, 16, "%{public}s called with null http1_connection", buf, v1058);
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (!__nwlog_fault(v998, iterate_block, aBlock))
                {
                  goto LABEL_1717;
                }

                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v999 = __nwlog_obj();
                  v1000 = iterate_block[0];
                  if (!os_log_type_enabled(v999, iterate_block[0]))
                  {
                    goto LABEL_1717;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  v1001 = "%{public}s called with null http1_connection";
                }

                else if (aBlock[0] == 1)
                {
                  v1002 = __nw_create_backtrace_string();
                  v999 = __nwlog_obj();
                  v1000 = iterate_block[0];
                  v1003 = os_log_type_enabled(v999, iterate_block[0]);
                  if (v1002)
                  {
                    if (v1003)
                    {
                      LODWORD(buf[0]) = 136446466;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v1002;
                      _os_log_impl(&dword_181A37000, v999, v1000, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v1002);
LABEL_1717:
                    if (v998)
                    {
                      free(v998);
                    }

                    v1004 = __nwlog_obj();
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    LODWORD(v1060) = 12;
                    v1005 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1004, 16, "%{public}s called with null http1_connection", buf, v1060);
                    aBlock[0] = 16;
                    v1077[0] = 0;
                    if (!__nwlog_fault(v1005, aBlock, v1077))
                    {
                      goto LABEL_1733;
                    }

                    if (aBlock[0] == 17)
                    {
                      v1006 = __nwlog_obj();
                      v1007 = aBlock[0];
                      if (os_log_type_enabled(v1006, aBlock[0]))
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        v1008 = "%{public}s called with null http1_connection";
LABEL_1732:
                        _os_log_impl(&dword_181A37000, v1006, v1007, v1008, buf, 0xCu);
                      }
                    }

                    else if (v1077[0] == 1)
                    {
                      v1009 = __nw_create_backtrace_string();
                      v1006 = __nwlog_obj();
                      v1007 = aBlock[0];
                      v1010 = os_log_type_enabled(v1006, aBlock[0]);
                      if (v1009)
                      {
                        if (v1010)
                        {
                          LODWORD(buf[0]) = 136446466;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v1009;
                          _os_log_impl(&dword_181A37000, v1006, v1007, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v1009);
                        goto LABEL_1733;
                      }

                      if (v1010)
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        v1008 = "%{public}s called with null http1_connection, no backtrace";
                        goto LABEL_1732;
                      }
                    }

                    else
                    {
                      v1006 = __nwlog_obj();
                      v1007 = aBlock[0];
                      if (os_log_type_enabled(v1006, aBlock[0]))
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        v1008 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                        goto LABEL_1732;
                      }
                    }

LABEL_1733:
                    if (v1005)
                    {
                      free(v1005);
                    }

                    v497 = 0;
                    v601 = 1;
LABEL_969:
                    v64 = v1064;
                    if (*(v1064 + 158))
                    {
                      goto LABEL_1194;
                    }

                    goto LABEL_1190;
                  }

                  if (!v1003)
                  {
                    goto LABEL_1717;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  v1001 = "%{public}s called with null http1_connection, no backtrace";
                }

                else
                {
                  v999 = __nwlog_obj();
                  v1000 = iterate_block[0];
                  if (!os_log_type_enabled(v999, iterate_block[0]))
                  {
                    goto LABEL_1717;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  v1001 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                }

                _os_log_impl(&dword_181A37000, v999, v1000, v1001, buf, 0xCu);
                goto LABEL_1717;
              }

LABEL_1702:
              free(v855);
              goto LABEL_1703;
            }

            v856 = __nwlog_obj();
            v857 = v1077[0];
            if (!os_log_type_enabled(v856, v1077[0]))
            {
              goto LABEL_1701;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v858 = "%{public}s called with null endpoint";
          }

          else
          {
            v854 = __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            LODWORD(v1056) = 12;
            v855 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v854, 16, "%{public}s called with null output_handler", buf, v1056);
            v1077[0] = 16;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v855, v1077, type))
            {
              goto LABEL_1701;
            }

            if (v1077[0] != 17)
            {
              if (type[0] != OS_LOG_TYPE_INFO)
              {
                v856 = __nwlog_obj();
                v857 = v1077[0];
                if (!os_log_type_enabled(v856, v1077[0]))
                {
                  goto LABEL_1701;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v858 = "%{public}s called with null output_handler, backtrace limit exceeded";
                goto LABEL_1700;
              }

              v923 = __nw_create_backtrace_string();
              v856 = __nwlog_obj();
              v857 = v1077[0];
              v924 = os_log_type_enabled(v856, v1077[0]);
              if (!v923)
              {
                if (!v924)
                {
                  goto LABEL_1701;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v858 = "%{public}s called with null output_handler, no backtrace";
                goto LABEL_1700;
              }

              if (v924)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_connection_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v923;
                _os_log_impl(&dword_181A37000, v856, v857, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v923);
              goto LABEL_1701;
            }

            v856 = __nwlog_obj();
            v857 = v1077[0];
            if (!os_log_type_enabled(v856, v1077[0]))
            {
              goto LABEL_1701;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v858 = "%{public}s called with null output_handler";
          }

LABEL_1700:
          _os_log_impl(&dword_181A37000, v856, v857, v858, buf, 0xCu);
          goto LABEL_1701;
        }

        v498 = nw_parameters_copy_default_protocol_stack(*(v64 + 320));
        *type = 0;
        v1068 = type;
        v1069 = 0x2000000000;
        v1070 = 0;
        buf[0] = 0;
        buf[1] = buf;
        buf[2] = 0x3802000000;
        v1081 = __Block_byref_object_copy__42960;
        *v1082 = __Block_byref_object_dispose__42961;
        *&v1082[8] = 0;
        v1082[16] |= 1u;
        iterate_block[0] = MEMORY[0x1E69E9820];
        iterate_block[1] = 0x40000000;
        iterate_block[2] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke;
        v1084 = &unk_1E6A328B8;
        v1085 = type;
        v1086 = buf;
        v1087 = v64;
        nw_protocol_stack_iterate_application_protocols(v498, iterate_block);
        v499 = *(buf[1] + 40);
        if (v499)
        {
          v500 = v499;
          *aBlock = 0;
          *&aBlock[8] = aBlock;
          *&aBlock[16] = 0x2000000000;
          LOBYTE(v1073) = 0;
          *v1077 = MEMORY[0x1E69E9820];
          *&v1077[8] = 0x40000000;
          *&v1077[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_2;
          v1078 = &unk_1E6A328E0;
          v1079 = aBlock;
          nw_sec_protocol_options_iterate_application_protocols(v500, 1, v1077);
          if (*(*&aBlock[8] + 24) == 1)
          {
            sec_protocol_options_clear_tls_application_protocols();
            sec_protocol_options_add_tls_application_protocol(v500, "http/1.1");
          }

          _Block_object_dispose(aBlock, 8);
          os_release(v500);
        }

        nw_protocol_stack_remove_protocols_before_handle_and_make_persistent(v498, v64);
        *(v64 + 428) |= 0x10u;
        v501 = *(v1065 + 352) + 1;
        *(v1065 + 352) = v501;
        if (v501 == v501 << 31 >> 31)
        {
LABEL_987:
          v607 = *(v64 + 312);
          v608 = *(v64 + 264);
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_76;
          v1073 = &unk_1E6A32908;
          *v1074 = v607;
          nw_queue_context_async(v608, aBlock);
          _Block_object_dispose(buf, 8);
          if ((v1082[16] & 1) != 0 && *&v1082[8])
          {
            os_release(*&v1082[8]);
          }

          _Block_object_dispose(type, 8);
          if (!v498)
          {
            return;
          }

LABEL_1205:
          os_release(v498);
          return;
        }

        v502 = __nwlog_obj();
        v503 = *(v1065 + 352);
        *aBlock = 136446978;
        *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
        *&aBlock[12] = 2082;
        *&aBlock[14] = "http1->pending_output_handler_count";
        *&aBlock[22] = 2048;
        v1073 = 1;
        *v1074 = 2048;
        *&v1074[2] = v503;
        LODWORD(v1056) = 42;
        v504 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v502, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", aBlock, v1056);
        v1071 = OS_LOG_TYPE_ERROR;
        v1066 = 0;
        if (__nwlog_fault(v504, &v1071, &v1066))
        {
          if (v1071 == OS_LOG_TYPE_FAULT)
          {
            v505 = __nwlog_obj();
            v506 = v1071;
            if (os_log_type_enabled(v505, v1071))
            {
              v507 = *(v1065 + 352);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->pending_output_handler_count";
              *&aBlock[22] = 2048;
              v1073 = 1;
              *v1074 = 2048;
              *&v1074[2] = v507;
              v508 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_983:
              _os_log_impl(&dword_181A37000, v505, v506, v508, aBlock, 0x2Au);
            }
          }

          else if (v1066 == 1)
          {
            v553 = __nw_create_backtrace_string();
            v505 = __nwlog_obj();
            v506 = v1071;
            v554 = os_log_type_enabled(v505, v1071);
            if (v553)
            {
              if (v554)
              {
                v555 = *(v1065 + 352);
                *aBlock = 136447234;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v1073 = 1;
                *v1074 = 2048;
                *&v1074[2] = v555;
                v1075 = 2082;
                v1076 = v553;
                _os_log_impl(&dword_181A37000, v505, v506, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
              }

              free(v553);
              goto LABEL_984;
            }

            if (v554)
            {
              v606 = *(v1065 + 352);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->pending_output_handler_count";
              *&aBlock[22] = 2048;
              v1073 = 1;
              *v1074 = 2048;
              *&v1074[2] = v606;
              v508 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_983;
            }
          }

          else
          {
            v505 = __nwlog_obj();
            v506 = v1071;
            if (os_log_type_enabled(v505, v1071))
            {
              v557 = *(v1065 + 352);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->pending_output_handler_count";
              *&aBlock[22] = 2048;
              v1073 = 1;
              *v1074 = 2048;
              *&v1074[2] = v557;
              v508 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_983;
            }
          }
        }

LABEL_984:
        if (v504)
        {
          free(v504);
        }

        *(v1065 + 352) = -1;
        v64 = v1064;
        goto LABEL_987;
      }

      if ((*(v27 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v919 = __nwlog_obj();
        v920 = os_log_type_enabled(v919, OS_LOG_TYPE_DEBUG);
        v27 = v1065;
        if (v920)
        {
          v921 = *(v1065 + 372);
          v922 = *(v64 + 424);
          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v1065 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v921;
          *&v1082[6] = 1024;
          *&v1082[8] = v922;
          *&v1082[12] = 2048;
          *&v1082[14] = v64;
          _os_log_impl(&dword_181A37000, v919, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
          v27 = v1065;
        }
      }

      if ((*(v64 + 428) & 0x2000) == 0)
      {
        v157 = __nwlog_obj();
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v64;
        LODWORD(v1056) = 22;
        v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v157, 16, "%{public}s stream %p not in pending list, cannot remove", buf, v1056);
        LOBYTE(iterate_block[0]) = 16;
        aBlock[0] = 0;
        if (!__nwlog_fault(v158, iterate_block, aBlock))
        {
          goto LABEL_714;
        }

        if (LOBYTE(iterate_block[0]) == 17)
        {
          v159 = __nwlog_obj();
          v160 = iterate_block[0];
          if (!os_log_type_enabled(v159, iterate_block[0]))
          {
            goto LABEL_714;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v64;
          v161 = "%{public}s stream %p not in pending list, cannot remove";
        }

        else if (aBlock[0] == 1)
        {
          v266 = __nw_create_backtrace_string();
          v159 = __nwlog_obj();
          v160 = iterate_block[0];
          v267 = os_log_type_enabled(v159, iterate_block[0]);
          if (v266)
          {
            if (v267)
            {
              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v64;
              HIWORD(buf[2]) = 2082;
              v1081 = v266;
              _os_log_impl(&dword_181A37000, v159, v160, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v266);
            goto LABEL_714;
          }

          if (!v267)
          {
LABEL_714:
            if (v158)
            {
              free(v158);
            }

            goto LABEL_821;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v64;
          v161 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
        }

        else
        {
          v159 = __nwlog_obj();
          v160 = iterate_block[0];
          if (!os_log_type_enabled(v159, iterate_block[0]))
          {
            goto LABEL_714;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v64;
          v161 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0x16u);
        goto LABEL_714;
      }

      v253 = *(v64 + 296);
      v254 = *(v64 + 304);
      v255 = (v27 + 256);
      if (v253)
      {
        v255 = (v253 + 304);
      }

      *v255 = v254;
      *v254 = v253;
      *(v64 + 296) = 0;
      *(v64 + 304) = 0;
      v256 = *(v27 + 348);
      *(v27 + 348) = v256 - 1;
      if (v256)
      {
LABEL_819:
        *(v64 + 428) &= ~0x2000u;
        if ((*(v64 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v951 = __nwlog_obj();
          if (os_log_type_enabled(v951, OS_LOG_TYPE_DEBUG))
          {
            v952 = v64 + 74;
            v953 = *(v64 + 256);
            v954 = *(*(v64 + 248) + 372);
            if (v953)
            {
              LODWORD(v953) = *(v953 + 860);
            }

            v64 = v1064;
            v955 = *(v1064 + 424);
            v956 = *(v1065 + 348);
            LODWORD(buf[0]) = 136448258;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v952;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v954;
            *&v1082[6] = 1024;
            *&v1082[8] = v953;
            *&v1082[12] = 1024;
            *&v1082[14] = v955;
            *&v1082[18] = 1024;
            *&v1082[20] = v955;
            *&v1082[24] = 2048;
            *&v1082[26] = v1064;
            *&v1082[34] = 1024;
            *&v1082[36] = v956;
            _os_log_impl(&dword_181A37000, v951, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
          }
        }

        goto LABEL_821;
      }

      v257 = v27;
      v258 = __nwlog_obj();
      v259 = *(v257 + 348);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = "http1->pending_stream_count";
      HIWORD(buf[2]) = 2048;
      v1081 = 1;
      *v1082 = 2048;
      *&v1082[2] = v259;
      LODWORD(v1056) = 42;
      v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v258, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v1056);
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (__nwlog_fault(v260, iterate_block, aBlock))
      {
        if (LOBYTE(iterate_block[0]) == 17)
        {
          v261 = __nwlog_obj();
          v262 = iterate_block[0];
          if (os_log_type_enabled(v261, iterate_block[0]))
          {
            v263 = *(v1065 + 348);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1081 = 1;
            *v1082 = 2048;
            *&v1082[2] = v263;
            v264 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_815:
            _os_log_impl(&dword_181A37000, v261, v262, v264, buf, 0x2Au);
          }
        }

        else if (aBlock[0] == 1)
        {
          v392 = __nw_create_backtrace_string();
          v261 = __nwlog_obj();
          v262 = iterate_block[0];
          v393 = os_log_type_enabled(v261, iterate_block[0]);
          if (v392)
          {
            if (v393)
            {
              v394 = *(v1065 + 348);
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v1081 = 1;
              *v1082 = 2048;
              *&v1082[2] = v394;
              *&v1082[10] = 2082;
              *&v1082[12] = v392;
              _os_log_impl(&dword_181A37000, v261, v262, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v392);
            goto LABEL_816;
          }

          if (v393)
          {
            v492 = *(v1065 + 348);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1081 = 1;
            *v1082 = 2048;
            *&v1082[2] = v492;
            v264 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_815;
          }
        }

        else
        {
          v261 = __nwlog_obj();
          v262 = iterate_block[0];
          if (os_log_type_enabled(v261, iterate_block[0]))
          {
            v449 = *(v1065 + 348);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1081 = 1;
            *v1082 = 2048;
            *&v1082[2] = v449;
            v264 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_815;
          }
        }
      }

LABEL_816:
      if (v260)
      {
        free(v260);
      }

      *(v1065 + 348) = 0;
      goto LABEL_819;
    }

    if (!*(v64 + 32))
    {
      if (*(v64 + 158))
      {
        goto LABEL_255;
      }

      if (gLogDatapath != 1)
      {
        goto LABEL_255;
      }

      v187 = __nwlog_obj();
      v188 = os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG);
      v27 = v1065;
      if (!v188)
      {
        goto LABEL_255;
      }

      v189 = *(v64 + 256);
      v190 = *(*(v64 + 248) + 372);
      if (v189)
      {
        LODWORD(v189) = *(v189 + 860);
      }

      v191 = *(v1064 + 424);
      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v64 + 74;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v190;
      *&v1082[6] = 1024;
      *&v1082[8] = v189;
      *&v1082[12] = 1024;
      *&v1082[14] = v191;
      *&v1082[18] = 2048;
      *&v1082[20] = v1064;
      v153 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
      v154 = v187;
      v155 = 60;
      goto LABEL_254;
    }

    if ((*(v64 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v805 = __nwlog_obj();
      if (os_log_type_enabled(v805, OS_LOG_TYPE_DEBUG))
      {
        v806 = v64 + 74;
        v807 = *(v64 + 256);
        v808 = *(*(v64 + 248) + 372);
        if (v807)
        {
          LODWORD(v807) = *(v807 + 860);
        }

        v64 = v1064;
        v809 = *(v1064 + 424);
        v810 = *(v1064 + 32);
        LODWORD(buf[0]) = 136448002;
        *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v806;
        HIWORD(buf[2]) = 2080;
        v1081 = " ";
        *v1082 = 1024;
        *&v1082[2] = v808;
        *&v1082[6] = 1024;
        *&v1082[8] = v807;
        *&v1082[12] = 1024;
        *&v1082[14] = v809;
        *&v1082[18] = 2048;
        *&v1082[20] = v1064;
        *&v1082[28] = 2048;
        *&v1082[30] = v810;
        _os_log_impl(&dword_181A37000, v805, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
      }
    }

    v174 = *(v64 + 32);
    if (v174)
    {
      v175 = *(v64 + 336);
      if (v175)
      {
        v176 = *(v64 + 320);
        if (v176)
        {
          v177 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
          v178 = v177;
          if (v177)
          {
            bzero(v177, 0x370uLL);
            nw_http1_connection::nw_http1_connection(v178);
          }

          else
          {
            v195 = __nwlog_obj();
            v196 = os_log_type_enabled(v195, OS_LOG_TYPE_ERROR);
            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "nw_http1_connection_create";
            v12 = 2;
            if (v196)
            {
              v197 = 3;
            }

            else
            {
              v197 = 2;
            }

            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = 1;
            HIWORD(buf[2]) = 2048;
            v1081 = 880;
            LODWORD(v1056) = 32;
            v198 = _os_log_send_and_compose_impl(v197, 0, 0, 0, &dword_181A37000, v195, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v1056);
            if (__nwlog_should_abort(v198) || ((free(v198), bzero(0, 0x370uLL), nw_http1_connection::nw_http1_connection(0), v199 = __nwlog_obj(), !os_log_type_enabled(v199, OS_LOG_TYPE_ERROR)) ? (v200 = 2) : (v200 = 3), LODWORD(buf[0]) = 136446210, *(buf + 4) = "nw_http1_connection_create", LODWORD(v1056) = 12, v201 = _os_log_send_and_compose_impl(v200, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v1056), __nwlog_should_abort(v201)))
            {
LABEL_1826:
              __break(1u);
LABEL_1827:
              v1033 = __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
              LODWORD(v1056) = 12;
              v1034 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1033, 16, "%{public}s called with null http1", buf, v1056);
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (!__nwlog_fault(v1034, iterate_block, aBlock))
              {
                goto LABEL_1878;
              }

              if (LOBYTE(iterate_block[0]) == 17)
              {
                v1035 = __nwlog_obj();
                v1036 = iterate_block[0];
                if (!os_log_type_enabled(v1035, iterate_block[0]))
                {
                  goto LABEL_1878;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                v1037 = "%{public}s called with null http1";
LABEL_1871:
                v1055 = buf;
LABEL_1877:
                _os_log_impl(&dword_181A37000, v1035, v1036, v1037, v1055, 0xCu);
                goto LABEL_1878;
              }

              if (aBlock[0] != 1)
              {
                v1035 = __nwlog_obj();
                v1036 = iterate_block[0];
                if (!os_log_type_enabled(v1035, iterate_block[0]))
                {
                  goto LABEL_1878;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                v1037 = "%{public}s called with null http1, backtrace limit exceeded";
                goto LABEL_1871;
              }

              v1043 = __nw_create_backtrace_string();
              v1035 = __nwlog_obj();
              v1036 = iterate_block[0];
              v1044 = os_log_type_enabled(v1035, iterate_block[0]);
              if (!v1043)
              {
                if (!v1044)
                {
                  goto LABEL_1878;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                v1037 = "%{public}s called with null http1, no backtrace";
                goto LABEL_1871;
              }

              if (v1044)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v1043;
                _os_log_impl(&dword_181A37000, v1035, v1036, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v1043);
LABEL_1878:
              if (!v1034)
              {
                goto LABEL_1769;
              }

              goto LABEL_1879;
            }

            free(v201);
            v64 = v1064;
          }

          v202 = v1065;
          if (nw_protocol_http1_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
            v202 = v1065;
          }

          *(v178 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
          if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
            v202 = v1065;
          }

          *(v178 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
          *(v178 + 184) = 3;
          *(v178 + 176) = v178;
          *(v178 + 40) = v178 + 160;
          *(v178 + 480) = v202;
          nw_protocol_set_output_handler(v178, v174);
          v203 = os_retain(v175);
          v204 = *(v178 + 760);
          if ((v204 & 1) != 0 && *(v178 + 752))
          {
            v205 = v203;
            os_release(*(v178 + 752));
            v203 = v205;
            v204 = *(v178 + 760);
          }

          *(v178 + 752) = v203;
          *(v178 + 760) = v204 | 1;
          v206 = os_retain(v176);
          v207 = *(v178 + 744);
          if ((v207 & 1) != 0 && *(v178 + 736))
          {
            v208 = v206;
            os_release(*(v178 + 736));
            v206 = v208;
            v207 = *(v178 + 744);
          }

          *(v178 + 736) = v206;
          *(v178 + 744) = v207 | 1;
          v209 = _nw_parameters_copy_context();
          v210 = *(v178 + 504);
          if (v210)
          {
            v211 = v1065;
            if (*(v178 + 496))
            {
              v212 = v209;
              os_release(*(v178 + 496));
              v211 = v1065;
              v209 = v212;
              v210 = *(v178 + 504);
            }
          }

          else
          {
            v211 = v1065;
          }

          *(v178 + 496) = v209;
          *(v178 + 504) = v210 | 1;
          *(v178 + 192) = *(v211 + 192);
          iterate_block[0] = MEMORY[0x1E69E9820];
          iterate_block[1] = 0x40000000;
          iterate_block[2] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
          v1084 = &__block_descriptor_tmp_43_43000;
          v1085 = v178;
          metadata = nw_http_connection_create_metadata(v209, iterate_block, 0);
          v214 = *(v178 + 776);
          if ((v214 & 1) != 0 && *(v178 + 768))
          {
            v215 = metadata;
            os_release(*(v178 + 768));
            metadata = v215;
            v214 = *(v178 + 776);
          }

          *(v178 + 768) = metadata;
          *(v178 + 776) = v214 | 1;
          nw_http_connection_metadata_set_version(metadata, 3);
          nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v178 + 768), *(v1065 + 312));
          *(v178 + 616) = 0;
          *(v178 + 624) = v178 + 616;
          *(v178 + 632) = 0;
          *(v178 + 640) = v178 + 632;
          *(v178 + 648) = 0;
          *(v178 + 656) = v178 + 648;
          *(v178 + 664) = 0;
          *(v178 + 672) = v178 + 664;
          *(v178 + 680) = 0;
          *(v178 + 688) = v178 + 680;
          nw_frame_cache_init((v178 + 696), v178, 256, 0x40000, 16);
          v216 = *(v178 + 480);
          if (v216)
          {
            *(v178 + 360) = 0u;
            *(v178 + 376) = 0u;
            *(v178 + 392) = 0u;
            *(v178 + 408) = 0u;
            *(v178 + 424) = 0u;
            *(v178 + 440) = 0u;
            *(v178 + 328) = 0u;
            *(v178 + 344) = 0u;
            *(v178 + 296) = nw_http1_on_message_begin;
            *(v178 + 384) = nw_http1_on_message_complete;
            *(v178 + 368) = nw_http1_on_headers_complete;
            *(v178 + 472) = nw_http1_on_reset;
            *(v178 + 320) = nw_http1_on_method;
            *(v178 + 408) = nw_http1_on_method_complete;
            *(v178 + 304) = nw_http1_on_url;
            *(v178 + 392) = nw_http1_on_url_complete;
            *(v178 + 312) = nw_http1_on_status;
            *(v178 + 400) = nw_http1_on_status_complete;
            *(v178 + 336) = nw_http1_on_header_field;
            *(v178 + 424) = nw_http1_on_header_field_complete;
            *(v178 + 344) = nw_http1_on_header_value;
            *(v178 + 432) = nw_http1_on_header_value_complete;
            *(v178 + 376) = nw_http1_on_body;
            *(v178 + 456) = nw_http1_on_chunk_header;
            *(v178 + 464) = nw_http1_on_chunk_complete;
            v217 = *(v216 + 376);
            *(v178 + 248) = 0u;
            *(v178 + 200) = 0u;
            *(v178 + 264) = 0u;
            *(v178 + 232) = 0u;
            *(v178 + 216) = 0u;
            if (v217)
            {
              v218 = 1;
            }

            else
            {
              v218 = 2;
            }

            *(v178 + 272) = v218;
            *(v178 + 280) = 0;
            *(v178 + 288) = v178 + 296;
            *(v178 + 278) = 16131;
            *(v178 + 248) = v178;
            *(v178 + 256) = 237;
            if ((*(v178 + 158) & 1) == 0)
            {
              v219 = __nwlog_obj();
              if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
              {
                v220 = *(v178 + 488);
                v221 = *(*(v178 + 480) + 372);
                v222 = *(v178 + 860);
                if (v220)
                {
                  LODWORD(v220) = *(v220 + 424);
                }

                LODWORD(buf[0]) = 136448258;
                *(buf + 4) = "nw_http1_connection_log_parser_version";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v178 + 74;
                HIWORD(buf[2]) = 2080;
                v1081 = " ";
                *v1082 = 1024;
                *&v1082[2] = v221;
                *&v1082[6] = 1024;
                *&v1082[8] = v222;
                *&v1082[12] = 1024;
                *&v1082[14] = v220;
                *&v1082[18] = 1024;
                *&v1082[20] = 9;
                *&v1082[24] = 1024;
                *&v1082[26] = 2;
                *&v1082[30] = 1024;
                *&v1082[32] = 1;
                _os_log_impl(&dword_181A37000, v219, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
              }
            }

            goto LABEL_345;
          }

          v813 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_parser_init";
          LODWORD(v1056) = 12;
          v814 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v813, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v1056);
          v1077[0] = 16;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v814, v1077, type))
          {
            if (v1077[0] == 17)
            {
              v815 = __nwlog_obj();
              v816 = v1077[0];
              if (os_log_type_enabled(v815, v1077[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v817 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1647:
                _os_log_impl(&dword_181A37000, v815, v816, v817, buf, 0xCu);
              }
            }

            else if (type[0] == OS_LOG_TYPE_INFO)
            {
              v902 = __nw_create_backtrace_string();
              v815 = __nwlog_obj();
              v816 = v1077[0];
              v903 = os_log_type_enabled(v815, v1077[0]);
              if (v902)
              {
                if (v903)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_connection_parser_init";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v902;
                  _os_log_impl(&dword_181A37000, v815, v816, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v902);
                goto LABEL_1648;
              }

              if (v903)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v817 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                goto LABEL_1647;
              }
            }

            else
            {
              v815 = __nwlog_obj();
              v816 = v1077[0];
              if (os_log_type_enabled(v815, v1077[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v817 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                goto LABEL_1647;
              }
            }
          }

LABEL_1648:
          if (v814)
          {
            free(v814);
          }

          v64 = v1064;
LABEL_345:
          buf[0] = 0;
          buf[1] = buf;
          buf[2] = 0x2000000000;
          v1081 = v178;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
          v1073 = &unk_1E6A32758;
          *v1074 = buf;
          *(v178 + 608) = _Block_copy(aBlock);
          _Block_object_dispose(buf, 8);
          if ((*(v178 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v827 = __nwlog_obj();
            if (os_log_type_enabled(v827, OS_LOG_TYPE_DEBUG))
            {
              v828 = *(v178 + 488);
              v829 = *(*(v178 + 480) + 372);
              v830 = *(v178 + 860);
              if (v828)
              {
                LODWORD(v828) = *(v828 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_connection_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v178 + 74;
              HIWORD(buf[2]) = 2080;
              v1081 = " ";
              *v1082 = 1024;
              *&v1082[2] = v829;
              *&v1082[6] = 1024;
              *&v1082[8] = v830;
              *&v1082[12] = 1024;
              *&v1082[14] = v828;
              *&v1082[18] = 2048;
              *&v1082[20] = v178;
              _os_log_impl(&dword_181A37000, v827, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
              v64 = v1064;
            }
          }

          nw_protocol_replace_input_handler(v174, v64, v178);
          *v178 = *v174;
          v223 = *(v178 + 736);
          if (v223)
          {
            v224 = v1065;
            if (*(v178 + 528))
            {
              goto LABEL_371;
            }

            v225 = _nw_parameters_copy_context();
            buf[0] = nw_path_copy_flow_registration(v225, v178);
            v226 = (v178 + 560);
            nw::retained_ptr<nw_endpoint *>::operator=(v178 + 560, buf);
            v227 = *(v178 + 560);
            if (v227)
            {
              v228 = nw_path_flow_registration_copy_endpoint(v227);
              v229 = nw_path_flow_registration_copy_parameters(*v226);
              buf[0] = nw_endpoint_copy_association_with_evaluator(v228, v229, 0);
              nw::retained_ptr<nw_endpoint *>::operator=(v178 + 528, buf);
              if (*(v178 + 528))
              {
                buf[0] = nw_protocol_instance_stub_create(v178);
                nw::retained_ptr<nw_endpoint *>::operator=(v178 + 544, buf);
                nw_association_register_internal(*(v178 + 528), v223, *(v178 + 544), 0, 0, &__block_literal_global_69_43019);
                v230 = nw_association_copy_current_path(*(v178 + 528), v229);
                if (v230)
                {
                  v231 = v230;
                  v232 = nw_path_copy_for_flow_registration(v230, *v226);
                  if (v232)
                  {
                    v233 = v232;
                    if (*(v178 + 512) != v232)
                    {
                      buf[0] = os_retain(v232);
                      nw::retained_ptr<nw_endpoint *>::operator=(v178 + 512, buf);
                    }

                    if (nw_path_has_flows(v233))
                    {
                      v234 = 4096;
                    }

                    else
                    {
                      v234 = 0;
                    }

                    *(v178 + 872) = *(v178 + 872) & 0xEFFF | v234;
                    v235 = _nw_parameters_copy_effective_proxy_config(v223);
                    if (v235)
                    {
                      v236 = v235;
                      if (nw_path_has_proxy_config(v231, v235))
                      {
                        buf[0] = os_retain(v236);
                        nw::retained_ptr<nw_endpoint *>::operator=(v178 + 576, buf);
                      }

                      os_release(v236);
                    }

                    os_release(v233);
                  }

                  os_release(v231);
                }
              }

              if (v229)
              {
                os_release(v229);
              }

              if (v228)
              {
                os_release(v228);
              }
            }

            v224 = v1065;
            if (!v225)
            {
LABEL_371:
              v237 = *(v178 + 512);
              if (v237)
              {
                v238 = _nw_path_uses_interface_type(v237, 2u);
                v224 = v1065;
                if (v238)
                {
                  *(v178 + 192) = 1000;
                }
              }

              v239 = *(v224 + 336) + 1;
              *(v224 + 336) = v239;
              v240 = v1064;
              if (v239 == v239 << 31 >> 31)
              {
LABEL_522:
                v328 = *(v224 + 360) + 1;
                *(v224 + 360) = v328;
                if (v328 == v328 << 31 >> 31)
                {
                  goto LABEL_540;
                }

                v329 = v224;
                v330 = __nwlog_obj();
                v331 = *(v329 + 360);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = "http1->next_connection_log_num";
                HIWORD(buf[2]) = 2048;
                v1081 = 1;
                *v1082 = 2048;
                *&v1082[2] = v331;
                LODWORD(v1056) = 42;
                v332 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v330, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v1056);
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (__nwlog_fault(v332, iterate_block, aBlock))
                {
                  if (LOBYTE(iterate_block[0]) == 17)
                  {
                    v333 = __nwlog_obj();
                    v334 = iterate_block[0];
                    if (os_log_type_enabled(v333, iterate_block[0]))
                    {
                      v335 = *(v1065 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v335;
                      v336 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_536:
                      _os_log_impl(&dword_181A37000, v333, v334, v336, buf, 0x2Au);
                    }
                  }

                  else if (aBlock[0] == 1)
                  {
                    v337 = __nw_create_backtrace_string();
                    v333 = __nwlog_obj();
                    v334 = iterate_block[0];
                    v338 = os_log_type_enabled(v333, iterate_block[0]);
                    if (v337)
                    {
                      if (v338)
                      {
                        v339 = *(v1065 + 360);
                        LODWORD(buf[0]) = 136447234;
                        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->next_connection_log_num";
                        HIWORD(buf[2]) = 2048;
                        v1081 = 1;
                        *v1082 = 2048;
                        *&v1082[2] = v339;
                        *&v1082[10] = 2082;
                        *&v1082[12] = v337;
                        _os_log_impl(&dword_181A37000, v333, v334, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v337);
                      v240 = v1064;
                      goto LABEL_537;
                    }

                    v240 = v1064;
                    if (v338)
                    {
                      v341 = *(v1065 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v341;
                      v336 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                      goto LABEL_536;
                    }
                  }

                  else
                  {
                    v333 = __nwlog_obj();
                    v334 = iterate_block[0];
                    if (os_log_type_enabled(v333, iterate_block[0]))
                    {
                      v340 = *(v1065 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v340;
                      v336 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                      goto LABEL_536;
                    }
                  }
                }

LABEL_537:
                if (v332)
                {
                  free(v332);
                }

                LODWORD(v328) = -1;
                *(v1065 + 360) = -1;
LABEL_540:
                *(v178 + 860) = v328;
                if ((*(v178 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v831 = __nwlog_obj();
                  if (os_log_type_enabled(v831, OS_LOG_TYPE_DEBUG))
                  {
                    v832 = *(v178 + 488);
                    v833 = *(*(v178 + 480) + 372);
                    v834 = *(v178 + 860);
                    if (v832)
                    {
                      LODWORD(v832) = *(v832 + 424);
                    }

                    v835 = *(v1065 + 336);
                    LODWORD(buf[0]) = 136448002;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v178 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1081 = " ";
                    *v1082 = 1024;
                    *&v1082[2] = v833;
                    *&v1082[6] = 1024;
                    *&v1082[8] = v834;
                    *&v1082[12] = 1024;
                    *&v1082[14] = v832;
                    *&v1082[18] = 2048;
                    *&v1082[20] = v178;
                    *&v1082[28] = 1024;
                    *&v1082[30] = v835;
                    _os_log_impl(&dword_181A37000, v831, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                    v240 = v1064;
                  }
                }

                if (*(v240 + 248))
                {
                  if (*(v178 + 488))
                  {
                    v342 = __nwlog_obj();
                    v343 = *(v178 + 488);
                    LODWORD(buf[0]) = 136446722;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v178;
                    HIWORD(buf[2]) = 2048;
                    v1081 = v343;
                    LODWORD(v1056) = 32;
                    v344 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v342, 16, "%{public}s Connection %p already has a stream (%p)", buf, v1056);
                    aBlock[0] = 16;
                    v1077[0] = 0;
                    if (!__nwlog_fault(v344, aBlock, v1077))
                    {
                      goto LABEL_575;
                    }

                    if (aBlock[0] == 17)
                    {
                      v345 = __nwlog_obj();
                      v346 = aBlock[0];
                      if (!os_log_type_enabled(v345, aBlock[0]))
                      {
                        goto LABEL_575;
                      }

                      v347 = *(v178 + 488);
                      LODWORD(buf[0]) = 136446722;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v178;
                      HIWORD(buf[2]) = 2048;
                      v1081 = v347;
                      v348 = "%{public}s Connection %p already has a stream (%p)";
                    }

                    else if (v1077[0] == 1)
                    {
                      v355 = __nw_create_backtrace_string();
                      v345 = __nwlog_obj();
                      v346 = aBlock[0];
                      v356 = os_log_type_enabled(v345, aBlock[0]);
                      if (v355)
                      {
                        if (v356)
                        {
                          v357 = *(v178 + 488);
                          LODWORD(buf[0]) = 136446978;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2048;
                          *(&buf[1] + 6) = v178;
                          HIWORD(buf[2]) = 2048;
                          v1081 = v357;
                          *v1082 = 2082;
                          *&v1082[2] = v355;
                          _os_log_impl(&dword_181A37000, v345, v346, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v355);
LABEL_575:
                        if (!v344)
                        {
LABEL_577:
                          v240 = v1064;
                          goto LABEL_578;
                        }

LABEL_576:
                        free(v344);
                        goto LABEL_577;
                      }

                      if (!v356)
                      {
                        goto LABEL_575;
                      }

                      v369 = *(v178 + 488);
                      LODWORD(buf[0]) = 136446722;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v178;
                      HIWORD(buf[2]) = 2048;
                      v1081 = v369;
                      v348 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                    }

                    else
                    {
                      v345 = __nwlog_obj();
                      v346 = aBlock[0];
                      if (!os_log_type_enabled(v345, aBlock[0]))
                      {
                        goto LABEL_575;
                      }

                      v358 = *(v178 + 488);
                      LODWORD(buf[0]) = 136446722;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v178;
                      HIWORD(buf[2]) = 2048;
                      v1081 = v358;
                      v348 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                    }

                    _os_log_impl(&dword_181A37000, v345, v346, v348, buf, 0x20u);
                    goto LABEL_575;
                  }

                  *(v240 + 256) = v178;
                  *(v178 + 488) = v240;
                  v349 = *(v240 + 320);
                  if (v349)
                  {
                    v349 = os_retain(v349);
                  }

                  buf[0] = v349;
                  nw::retained_ptr<nw_endpoint *>::operator=(v178 + 736, buf);
                  if ((*(*(v240 + 248) + 376) & 2) == 0)
                  {
                    goto LABEL_1038;
                  }

                  v350 = nw_parameters_copy_default_protocol_stack(*(v240 + 320));
                  *aBlock = 0;
                  *&aBlock[8] = aBlock;
                  *&aBlock[16] = 0x2000000000;
                  LOBYTE(v1073) = 0;
                  buf[0] = 0;
                  buf[1] = buf;
                  buf[2] = 0x3802000000;
                  v1081 = __Block_byref_object_copy__42960;
                  *v1082 = __Block_byref_object_dispose__42961;
                  *&v1082[8] = 0;
                  v1082[16] |= 1u;
                  iterate_block[0] = MEMORY[0x1E69E9820];
                  iterate_block[1] = 0x40000000;
                  iterate_block[2] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                  v1084 = &unk_1E6A32930;
                  v1085 = aBlock;
                  v1086 = buf;
                  v1087 = v240;
                  nw_protocol_stack_iterate_application_protocols(v350, iterate_block);
                  if (*(buf[1] + 40))
                  {
                    v351 = v178;
                    while (1)
                    {
                      v351 = *(v351 + 32);
                      if (!v351)
                      {
                        break;
                      }

                      if (nw_protocol_is_tls_over_stream(v351))
                      {
                        v352 = *(buf[1] + 40);
                        v353 = nw_protocol_boringssl_copy_definition();
                        nw_parameters_set_protocol_instance(v352, v354, v351);
                        if (v353)
                        {
                          os_release(v353);
                        }

                        goto LABEL_1025;
                      }
                    }

                    v364 = __nwlog_obj();
                    *v1077 = 136446210;
                    *&v1077[4] = "nw_http1_stream_associate_with_connection";
                    LODWORD(v1056) = 12;
                    v365 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v364, 16, "%{public}s tls should have been in the stack but could not find it", v1077, v1056);
                    type[0] = OS_LOG_TYPE_ERROR;
                    v1071 = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v365, type, &v1071))
                    {
                      goto LABEL_1029;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v366 = __nwlog_obj();
                      v367 = type[0];
                      if (os_log_type_enabled(v366, type[0]))
                      {
                        *v1077 = 136446210;
                        *&v1077[4] = "nw_http1_stream_associate_with_connection";
                        v368 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1028:
                        _os_log_impl(&dword_181A37000, v366, v367, v368, v1077, 0xCu);
                      }
                    }

                    else if (v1071 == OS_LOG_TYPE_INFO)
                    {
                      v438 = __nw_create_backtrace_string();
                      v366 = __nwlog_obj();
                      v367 = type[0];
                      v439 = os_log_type_enabled(v366, type[0]);
                      if (v438)
                      {
                        if (v439)
                        {
                          *v1077 = 136446466;
                          *&v1077[4] = "nw_http1_stream_associate_with_connection";
                          *&v1077[12] = 2082;
                          *&v1077[14] = v438;
                          _os_log_impl(&dword_181A37000, v366, v367, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1077, 0x16u);
                        }

                        free(v438);
                        v240 = v1064;
                        goto LABEL_1029;
                      }

                      v240 = v1064;
                      if (v439)
                      {
                        *v1077 = 136446210;
                        *&v1077[4] = "nw_http1_stream_associate_with_connection";
                        v368 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                        goto LABEL_1028;
                      }
                    }

                    else
                    {
                      v366 = __nwlog_obj();
                      v367 = type[0];
                      if (os_log_type_enabled(v366, type[0]))
                      {
                        *v1077 = 136446210;
                        *&v1077[4] = "nw_http1_stream_associate_with_connection";
                        v368 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                        goto LABEL_1028;
                      }
                    }

LABEL_1029:
                    if (v365)
                    {
                      free(v365);
                    }

                    v623 = 0;
                    goto LABEL_1032;
                  }

                  v359 = __nwlog_obj();
                  *v1077 = 136446210;
                  *&v1077[4] = "nw_http1_stream_associate_with_connection";
                  LODWORD(v1056) = 12;
                  v360 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v359, 16, "%{public}s unable to find tls options", v1077, v1056);
                  type[0] = OS_LOG_TYPE_ERROR;
                  v1071 = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v360, type, &v1071))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v361 = __nwlog_obj();
                      v362 = type[0];
                      if (os_log_type_enabled(v361, type[0]))
                      {
                        *v1077 = 136446210;
                        *&v1077[4] = "nw_http1_stream_associate_with_connection";
                        v363 = "%{public}s unable to find tls options";
LABEL_1022:
                        _os_log_impl(&dword_181A37000, v361, v362, v363, v1077, 0xCu);
                      }
                    }

                    else if (v1071 == OS_LOG_TYPE_INFO)
                    {
                      v396 = __nw_create_backtrace_string();
                      v361 = __nwlog_obj();
                      v362 = type[0];
                      v397 = os_log_type_enabled(v361, type[0]);
                      if (v396)
                      {
                        if (v397)
                        {
                          *v1077 = 136446466;
                          *&v1077[4] = "nw_http1_stream_associate_with_connection";
                          *&v1077[12] = 2082;
                          *&v1077[14] = v396;
                          _os_log_impl(&dword_181A37000, v361, v362, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1077, 0x16u);
                        }

                        free(v396);
                        v240 = v1064;
                      }

                      else
                      {
                        v240 = v1064;
                        if (v397)
                        {
                          *v1077 = 136446210;
                          *&v1077[4] = "nw_http1_stream_associate_with_connection";
                          v363 = "%{public}s unable to find tls options, no backtrace";
                          goto LABEL_1022;
                        }
                      }
                    }

                    else
                    {
                      v361 = __nwlog_obj();
                      v362 = type[0];
                      if (os_log_type_enabled(v361, type[0]))
                      {
                        *v1077 = 136446210;
                        *&v1077[4] = "nw_http1_stream_associate_with_connection";
                        v363 = "%{public}s unable to find tls options, backtrace limit exceeded";
                        goto LABEL_1022;
                      }
                    }
                  }

                  if (v360)
                  {
                    free(v360);
                  }

LABEL_1025:
                  v623 = 1;
LABEL_1032:
                  _Block_object_dispose(buf, 8);
                  if ((v1082[16] & 1) != 0 && *&v1082[8])
                  {
                    os_release(*&v1082[8]);
                  }

                  _Block_object_dispose(aBlock, 8);
                  if (v350)
                  {
                    os_release(v350);
                  }

                  if (!v623)
                  {
LABEL_578:
                    if ((*(v240 + 158) & 1) == 0)
                    {
                      v370 = __nwlog_obj();
                      if (os_log_type_enabled(v370, OS_LOG_TYPE_DEBUG))
                      {
                        v371 = *(v240 + 256);
                        v372 = *(*(v240 + 248) + 372);
                        if (v371)
                        {
                          LODWORD(v371) = *(v371 + 860);
                        }

                        v373 = *(v240 + 424);
                        LODWORD(buf[0]) = 136448258;
                        *(buf + 4) = "nw_http1_start_new_connection_for_stream";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v240 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1081 = " ";
                        *v1082 = 1024;
                        *&v1082[2] = v372;
                        *&v1082[6] = 1024;
                        *&v1082[8] = v371;
                        *&v1082[12] = 1024;
                        *&v1082[14] = v373;
                        *&v1082[18] = 2048;
                        *&v1082[20] = v178;
                        *&v1082[28] = 1024;
                        *&v1082[30] = v373;
                        *&v1082[34] = 2048;
                        *&v1082[36] = v240;
                        _os_log_impl(&dword_181A37000, v370, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                      }
                    }

                    *(v240 + 428) |= 1u;
                    v374 = nw_protocol_copy_info(v174);
                    v375 = v374;
                    if (v374)
                    {
                      v376 = _nw_array_copy_last_object(v374);
                      v377 = v376;
                      if (v376)
                      {
                        if (nw_protocol_metadata_is_tls(v376))
                        {
                          v377 = v377;
                          nw_http_connection_metadata_set_sec_metadata(*(v178 + 768), v377);
                          os_release(v377);
                          nw_protocol_connect(v174, v178);
                          goto LABEL_596;
                        }

                        v378 = 0;
LABEL_590:
                        if (v178)
                        {
                          nw_protocol_connect(v174, v178);
                          goto LABEL_592;
                        }

                        v836 = __nwlog_obj();
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_get_output_protocol";
                        LODWORD(v1056) = 12;
                        v837 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v836, 16, "%{public}s called with null connection", buf, v1056);
                        LOBYTE(iterate_block[0]) = 16;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v837, iterate_block, aBlock))
                        {
                          if (LOBYTE(iterate_block[0]) == 17)
                          {
                            v838 = __nwlog_obj();
                            v839 = iterate_block[0];
                            if (os_log_type_enabled(v838, iterate_block[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v840 = "%{public}s called with null connection";
LABEL_1664:
                              _os_log_impl(&dword_181A37000, v838, v839, v840, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v908 = __nw_create_backtrace_string();
                            v838 = __nwlog_obj();
                            v839 = iterate_block[0];
                            v909 = os_log_type_enabled(v838, iterate_block[0]);
                            if (v908)
                            {
                              if (v909)
                              {
                                LODWORD(buf[0]) = 136446466;
                                *(buf + 4) = "nw_http1_get_output_protocol";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = v908;
                                _os_log_impl(&dword_181A37000, v838, v839, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v908);
                              goto LABEL_1665;
                            }

                            if (v909)
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v840 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1664;
                            }
                          }

                          else
                          {
                            v838 = __nwlog_obj();
                            v839 = iterate_block[0];
                            if (os_log_type_enabled(v838, iterate_block[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v840 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1664;
                            }
                          }
                        }

LABEL_1665:
                        if (v837)
                        {
                          free(v837);
                        }

                        nw_protocol_connect(v174, 0);
                        v240 = v1064;
LABEL_592:
                        if (v377)
                        {
                          v379 = v378;
                        }

                        else
                        {
                          v379 = 1;
                        }

                        if (v379)
                        {
LABEL_597:
                          if (v375)
                          {
                            os_release(v375);
                          }

                          *(v240 + 428) &= ~0x10u;
                          v380 = *(v1065 + 352);
                          *(v1065 + 352) = v380 - 1;
                          if (v380)
                          {
                            return;
                          }

                          v381 = __nwlog_obj();
                          v382 = *(v1065 + 352);
                          LODWORD(buf[0]) = 136446978;
                          *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = "http1->pending_output_handler_count";
                          HIWORD(buf[2]) = 2048;
                          v1081 = 1;
                          *v1082 = 2048;
                          *&v1082[2] = v382;
                          LODWORD(v1056) = 42;
                          v383 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v381, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v1056);
                          LOBYTE(iterate_block[0]) = 16;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v383, iterate_block, aBlock))
                          {
                            if (LOBYTE(iterate_block[0]) == 17)
                            {
                              v384 = __nwlog_obj();
                              v385 = iterate_block[0];
                              if (os_log_type_enabled(v384, iterate_block[0]))
                              {
                                v386 = *(v1065 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v1081 = 1;
                                *v1082 = 2048;
                                *&v1082[2] = v386;
                                v387 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_624:
                                _os_log_impl(&dword_181A37000, v384, v385, v387, buf, 0x2Au);
                              }
                            }

                            else if (aBlock[0] == 1)
                            {
                              v388 = __nw_create_backtrace_string();
                              v384 = __nwlog_obj();
                              v385 = iterate_block[0];
                              v389 = os_log_type_enabled(v384, iterate_block[0]);
                              if (v388)
                              {
                                if (v389)
                                {
                                  v390 = *(v1065 + 352);
                                  LODWORD(buf[0]) = 136447234;
                                  *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                  WORD2(buf[1]) = 2082;
                                  *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                  HIWORD(buf[2]) = 2048;
                                  v1081 = 1;
                                  *v1082 = 2048;
                                  *&v1082[2] = v390;
                                  *&v1082[10] = 2082;
                                  *&v1082[12] = v388;
                                  _os_log_impl(&dword_181A37000, v384, v385, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                                }

                                free(v388);
                                goto LABEL_625;
                              }

                              if (v389)
                              {
                                v395 = *(v1065 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v1081 = 1;
                                *v1082 = 2048;
                                *&v1082[2] = v395;
                                v387 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                                goto LABEL_624;
                              }
                            }

                            else
                            {
                              v384 = __nwlog_obj();
                              v385 = iterate_block[0];
                              if (os_log_type_enabled(v384, iterate_block[0]))
                              {
                                v391 = *(v1065 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v1081 = 1;
                                *v1082 = 2048;
                                *&v1082[2] = v391;
                                v387 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                                goto LABEL_624;
                              }
                            }
                          }

LABEL_625:
                          if (v383)
                          {
                            free(v383);
                          }

                          *(v1065 + 352) = 0;
                          return;
                        }

LABEL_596:
                        os_release(v377);
                        goto LABEL_597;
                      }
                    }

                    else
                    {
                      v377 = 0;
                    }

                    v378 = 1;
                    goto LABEL_590;
                  }

LABEL_1038:
                  v624 = *(v240 + 32);
                  if (!v624 || v624 == *(v178 + 32))
                  {
LABEL_1057:
                    nw_protocol_set_output_handler(v240, *(v178 + 32));
                    nw_protocol_set_input_handler(v178, *(v240 + 48));
                    *v240 = *v178;
                    v642 = *(v240 + 96);
                    v643 = *(v240 + 112);
                    v644 = *(v240 + 128);
                    *(v178 + 144) = *(v240 + 144);
                    v645 = *(v240 + 80);
                    *(v178 + 64) = *(v240 + 64);
                    *(v178 + 80) = v645;
                    *(v178 + 112) = v643;
                    *(v178 + 128) = v644;
                    *(v178 + 96) = v642;
                    *(v178 + 872) &= 0xFFD7u;
                    *(v178 + 864) = 1;
                    if ((*(v178 + 158) & 1) == 0)
                    {
                      v646 = __nwlog_obj();
                      if (os_log_type_enabled(v646, OS_LOG_TYPE_DEBUG))
                      {
                        v647 = *(v178 + 488);
                        v648 = *(*(v178 + 480) + 372);
                        v649 = *(v178 + 860);
                        if (v647)
                        {
                          LODWORD(v647) = *(v647 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_update_connection_input_state";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v178 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1081 = " ";
                        *v1082 = 1024;
                        *&v1082[2] = v648;
                        *&v1082[6] = 1024;
                        *&v1082[8] = v649;
                        *&v1082[12] = 1024;
                        *&v1082[14] = v647;
                        _os_log_impl(&dword_181A37000, v646, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                      }
                    }

                    if ((*(v240 + 158) & 1) == 0)
                    {
                      v650 = __nwlog_obj();
                      if (os_log_type_enabled(v650, OS_LOG_TYPE_INFO))
                      {
                        v651 = *(v240 + 256);
                        v652 = *(*(v240 + 248) + 372);
                        if (v651)
                        {
                          LODWORD(v651) = *(v651 + 860);
                        }

                        v653 = *(v240 + 424);
                        LODWORD(buf[0]) = 136448002;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v240 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1081 = " ";
                        *v1082 = 1024;
                        *&v1082[2] = v652;
                        *&v1082[6] = 1024;
                        *&v1082[8] = v651;
                        *&v1082[12] = 1024;
                        *&v1082[14] = v653;
                        *&v1082[18] = 2048;
                        *&v1082[20] = v240;
                        *&v1082[28] = 2048;
                        *&v1082[30] = v178;
                        _os_log_impl(&dword_181A37000, v650, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                      }
                    }

                    goto LABEL_578;
                  }

                  v625 = __nwlog_obj();
                  v626 = *(v240 + 32);
                  v627 = *(v178 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v626;
                  HIWORD(buf[2]) = 2048;
                  v1081 = v240;
                  *v1082 = 2048;
                  *&v1082[2] = v627;
                  LODWORD(v1056) = 42;
                  v628 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v625, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v1056);
                  aBlock[0] = 16;
                  v1077[0] = 0;
                  if (__nwlog_fault(v628, aBlock, v1077))
                  {
                    if (aBlock[0] == 17)
                    {
                      v629 = __nwlog_obj();
                      v630 = aBlock[0];
                      if (os_log_type_enabled(v629, aBlock[0]))
                      {
                        v631 = *(v1064 + 32);
                        v632 = *(v178 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v631;
                        HIWORD(buf[2]) = 2048;
                        v1081 = v1064;
                        *v1082 = 2048;
                        *&v1082[2] = v632;
                        v633 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_1053:
                        _os_log_impl(&dword_181A37000, v629, v630, v633, buf, 0x2Au);
                      }
                    }

                    else if (v1077[0] == 1)
                    {
                      v634 = __nw_create_backtrace_string();
                      v629 = __nwlog_obj();
                      v630 = aBlock[0];
                      v635 = os_log_type_enabled(v629, aBlock[0]);
                      if (v634)
                      {
                        if (v635)
                        {
                          v636 = *(v1064 + 32);
                          v637 = *(v178 + 32);
                          LODWORD(buf[0]) = 136447234;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2048;
                          *(&buf[1] + 6) = v636;
                          HIWORD(buf[2]) = 2048;
                          v1081 = v1064;
                          *v1082 = 2048;
                          *&v1082[2] = v637;
                          *&v1082[10] = 2082;
                          *&v1082[12] = v634;
                          _os_log_impl(&dword_181A37000, v629, v630, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v634);
                        goto LABEL_1054;
                      }

                      if (v635)
                      {
                        v640 = *(v1064 + 32);
                        v641 = *(v178 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v640;
                        HIWORD(buf[2]) = 2048;
                        v1081 = v1064;
                        *v1082 = 2048;
                        *&v1082[2] = v641;
                        v633 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                        goto LABEL_1053;
                      }
                    }

                    else
                    {
                      v629 = __nwlog_obj();
                      v630 = aBlock[0];
                      if (os_log_type_enabled(v629, aBlock[0]))
                      {
                        v638 = *(v1064 + 32);
                        v639 = *(v178 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v638;
                        HIWORD(buf[2]) = 2048;
                        v1081 = v1064;
                        *v1082 = 2048;
                        *&v1082[2] = v639;
                        v633 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                        goto LABEL_1053;
                      }
                    }
                  }

LABEL_1054:
                  if (v628)
                  {
                    free(v628);
                  }

                  v240 = v1064;
                  goto LABEL_1057;
                }

                v823 = __nwlog_obj();
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                LODWORD(v1056) = 12;
                v344 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v823, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v1056);
                aBlock[0] = 16;
                v1077[0] = 0;
                if (__nwlog_fault(v344, aBlock, v1077))
                {
                  if (aBlock[0] == 17)
                  {
                    v824 = __nwlog_obj();
                    v825 = aBlock[0];
                    if (!os_log_type_enabled(v824, aBlock[0]))
                    {
                      goto LABEL_1660;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    v826 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1659:
                    _os_log_impl(&dword_181A37000, v824, v825, v826, buf, 0xCu);
                    goto LABEL_1660;
                  }

                  if (v1077[0] != 1)
                  {
                    v824 = __nwlog_obj();
                    v825 = aBlock[0];
                    if (!os_log_type_enabled(v824, aBlock[0]))
                    {
                      goto LABEL_1660;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    v826 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                    goto LABEL_1659;
                  }

                  v906 = __nw_create_backtrace_string();
                  v824 = __nwlog_obj();
                  v825 = aBlock[0];
                  v907 = os_log_type_enabled(v824, aBlock[0]);
                  if (!v906)
                  {
                    if (!v907)
                    {
                      goto LABEL_1660;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    v826 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                    goto LABEL_1659;
                  }

                  if (v907)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v906;
                    _os_log_impl(&dword_181A37000, v824, v825, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v906);
                }

LABEL_1660:
                if (!v344)
                {
                  goto LABEL_577;
                }

                goto LABEL_576;
              }

              v241 = v224;
              v242 = __nwlog_obj();
              v243 = *(v241 + 336);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->connections_count";
              HIWORD(buf[2]) = 2048;
              v1081 = 1;
              *v1082 = 2048;
              *&v1082[2] = v243;
              LODWORD(v1056) = 42;
              v244 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v242, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v1056);
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (__nwlog_fault(v244, iterate_block, aBlock))
              {
                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v245 = __nwlog_obj();
                  v246 = iterate_block[0];
                  if (os_log_type_enabled(v245, iterate_block[0]))
                  {
                    v247 = *(v1065 + 336);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v1081 = 1;
                    *v1082 = 2048;
                    *&v1082[2] = v247;
                    v248 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_518:
                    _os_log_impl(&dword_181A37000, v245, v246, v248, buf, 0x2Au);
                  }
                }

                else if (aBlock[0] == 1)
                {
                  v250 = __nw_create_backtrace_string();
                  v245 = __nwlog_obj();
                  v246 = iterate_block[0];
                  v251 = os_log_type_enabled(v245, iterate_block[0]);
                  if (v250)
                  {
                    if (v251)
                    {
                      v252 = *(v1065 + 336);
                      LODWORD(buf[0]) = 136447234;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->connections_count";
                      HIWORD(buf[2]) = 2048;
                      v1081 = 1;
                      *v1082 = 2048;
                      *&v1082[2] = v252;
                      *&v1082[10] = 2082;
                      *&v1082[12] = v250;
                      _os_log_impl(&dword_181A37000, v245, v246, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v250);
                    v240 = v1064;
                    goto LABEL_519;
                  }

                  v240 = v1064;
                  if (v251)
                  {
                    v327 = *(v1065 + 336);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v1081 = 1;
                    *v1082 = 2048;
                    *&v1082[2] = v327;
                    v248 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_518;
                  }
                }

                else
                {
                  v245 = __nwlog_obj();
                  v246 = iterate_block[0];
                  if (os_log_type_enabled(v245, iterate_block[0]))
                  {
                    v265 = *(v1065 + 336);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v1081 = 1;
                    *v1082 = 2048;
                    *&v1082[2] = v265;
                    v248 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_518;
                  }
                }
              }

LABEL_519:
              if (v244)
              {
                free(v244);
              }

              v224 = v1065;
              *(v1065 + 336) = -1;
              goto LABEL_522;
            }

            os_release(v225);
LABEL_370:
            v224 = v1065;
            goto LABEL_371;
          }

          v818 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_http1_set_up_association";
          LODWORD(v1056) = 12;
          v819 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v818, 16, "%{public}s called with null parameters", buf, v1056);
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (__nwlog_fault(v819, iterate_block, aBlock))
          {
            if (LOBYTE(iterate_block[0]) == 17)
            {
              v820 = __nwlog_obj();
              v821 = iterate_block[0];
              if (!os_log_type_enabled(v820, iterate_block[0]))
              {
                goto LABEL_1654;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v822 = "%{public}s called with null parameters";
              goto LABEL_1653;
            }

            if (aBlock[0] != 1)
            {
              v820 = __nwlog_obj();
              v821 = iterate_block[0];
              if (!os_log_type_enabled(v820, iterate_block[0]))
              {
                goto LABEL_1654;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v822 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1653;
            }

            v904 = __nw_create_backtrace_string();
            v820 = __nwlog_obj();
            v821 = iterate_block[0];
            v905 = os_log_type_enabled(v820, iterate_block[0]);
            if (v904)
            {
              if (v905)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_protocol_http1_set_up_association";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v904;
                _os_log_impl(&dword_181A37000, v820, v821, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v904);
              goto LABEL_1654;
            }

            if (v905)
            {
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v822 = "%{public}s called with null parameters, no backtrace";
LABEL_1653:
              _os_log_impl(&dword_181A37000, v820, v821, v822, buf, 0xCu);
            }
          }

LABEL_1654:
          if (v819)
          {
            free(v819);
          }

          goto LABEL_370;
        }

        v812 = __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        LODWORD(v1056) = 12;
        v801 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v812, 16, "%{public}s called with null parameters", buf, v1056);
        v1077[0] = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v801, v1077, type))
        {
          if (v1077[0] == 17)
          {
            v802 = __nwlog_obj();
            v803 = v1077[0];
            if (!os_log_type_enabled(v802, v1077[0]))
            {
              goto LABEL_1609;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v804 = "%{public}s called with null parameters";
            goto LABEL_1608;
          }

          if (type[0] != OS_LOG_TYPE_INFO)
          {
            v802 = __nwlog_obj();
            v803 = v1077[0];
            if (!os_log_type_enabled(v802, v1077[0]))
            {
              goto LABEL_1609;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v804 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_1608;
          }

          v874 = __nw_create_backtrace_string();
          v802 = __nwlog_obj();
          v803 = v1077[0];
          v877 = os_log_type_enabled(v802, v1077[0]);
          if (!v874)
          {
            if (!v877)
            {
              goto LABEL_1609;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v804 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_1608;
          }

          if (v877)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_create";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v874;
            v876 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
            goto LABEL_1423;
          }

          goto LABEL_1424;
        }

LABEL_1609:
        if (!v801)
        {
          goto LABEL_1611;
        }

        goto LABEL_1610;
      }

      v811 = __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      LODWORD(v1056) = 12;
      v801 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v811, 16, "%{public}s called with null endpoint", buf, v1056);
      v1077[0] = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v801, v1077, type))
      {
        goto LABEL_1609;
      }

      if (v1077[0] != 17)
      {
        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v802 = __nwlog_obj();
          v803 = v1077[0];
          if (!os_log_type_enabled(v802, v1077[0]))
          {
            goto LABEL_1609;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v804 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_1608;
        }

        v874 = __nw_create_backtrace_string();
        v802 = __nwlog_obj();
        v803 = v1077[0];
        v875 = os_log_type_enabled(v802, v1077[0]);
        if (!v874)
        {
          if (!v875)
          {
            goto LABEL_1609;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v804 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_1608;
        }

        if (v875)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v874;
          v876 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1423:
          _os_log_impl(&dword_181A37000, v802, v803, v876, buf, 0x16u);
        }

LABEL_1424:
        free(v874);
        if (!v801)
        {
LABEL_1611:
          v977 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          LODWORD(v1057) = 12;
          v978 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v977, 16, "%{public}s called with null http1_connection", buf, v1057);
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (!__nwlog_fault(v978, iterate_block, aBlock))
          {
            goto LABEL_1625;
          }

          if (LOBYTE(iterate_block[0]) == 17)
          {
            v979 = __nwlog_obj();
            v980 = iterate_block[0];
            if (!os_log_type_enabled(v979, iterate_block[0]))
            {
              goto LABEL_1625;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v981 = "%{public}s called with null http1_connection";
          }

          else if (aBlock[0] == 1)
          {
            v982 = __nw_create_backtrace_string();
            v979 = __nwlog_obj();
            v980 = iterate_block[0];
            v983 = os_log_type_enabled(v979, iterate_block[0]);
            if (v982)
            {
              if (v983)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v982;
                _os_log_impl(&dword_181A37000, v979, v980, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v982);
LABEL_1625:
              if (v978)
              {
                free(v978);
              }

              v984 = __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              LODWORD(v1059) = 12;
              v985 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v984, 16, "%{public}s called with null http1_connection", buf, v1059);
              aBlock[0] = 16;
              v1077[0] = 0;
              if (!__nwlog_fault(v985, aBlock, v1077))
              {
                goto LABEL_1641;
              }

              if (aBlock[0] == 17)
              {
                v986 = __nwlog_obj();
                v987 = aBlock[0];
                if (os_log_type_enabled(v986, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v988 = "%{public}s called with null http1_connection";
LABEL_1640:
                  _os_log_impl(&dword_181A37000, v986, v987, v988, buf, 0xCu);
                }
              }

              else if (v1077[0] == 1)
              {
                v989 = __nw_create_backtrace_string();
                v986 = __nwlog_obj();
                v987 = aBlock[0];
                v990 = os_log_type_enabled(v986, aBlock[0]);
                if (v989)
                {
                  if (v990)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v989;
                    _os_log_impl(&dword_181A37000, v986, v987, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v989);
                  goto LABEL_1641;
                }

                if (v990)
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v988 = "%{public}s called with null http1_connection, no backtrace";
                  goto LABEL_1640;
                }
              }

              else
              {
                v986 = __nwlog_obj();
                v987 = aBlock[0];
                if (os_log_type_enabled(v986, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v988 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  goto LABEL_1640;
                }
              }

LABEL_1641:
              if (v985)
              {
                free(v985);
              }

              v178 = 0;
              goto LABEL_577;
            }

            if (!v983)
            {
              goto LABEL_1625;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v981 = "%{public}s called with null http1_connection, no backtrace";
          }

          else
          {
            v979 = __nwlog_obj();
            v980 = iterate_block[0];
            if (!os_log_type_enabled(v979, iterate_block[0]))
            {
              goto LABEL_1625;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v981 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v979, v980, v981, buf, 0xCu);
          goto LABEL_1625;
        }

LABEL_1610:
        free(v801);
        goto LABEL_1611;
      }

      v802 = __nwlog_obj();
      v803 = v1077[0];
      if (!os_log_type_enabled(v802, v1077[0]))
      {
        goto LABEL_1609;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v804 = "%{public}s called with null endpoint";
    }

    else
    {
      v800 = __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      LODWORD(v1056) = 12;
      v801 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v800, 16, "%{public}s called with null output_handler", buf, v1056);
      v1077[0] = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v801, v1077, type))
      {
        goto LABEL_1609;
      }

      if (v1077[0] != 17)
      {
        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v802 = __nwlog_obj();
          v803 = v1077[0];
          if (!os_log_type_enabled(v802, v1077[0]))
          {
            goto LABEL_1609;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v804 = "%{public}s called with null output_handler, backtrace limit exceeded";
          goto LABEL_1608;
        }

        v871 = __nw_create_backtrace_string();
        v802 = __nwlog_obj();
        v803 = v1077[0];
        v872 = os_log_type_enabled(v802, v1077[0]);
        if (!v871)
        {
          if (!v872)
          {
            goto LABEL_1609;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v804 = "%{public}s called with null output_handler, no backtrace";
          goto LABEL_1608;
        }

        if (v872)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v871;
          _os_log_impl(&dword_181A37000, v802, v803, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v871);
        goto LABEL_1609;
      }

      v802 = __nwlog_obj();
      v803 = v1077[0];
      if (!os_log_type_enabled(v802, v1077[0]))
      {
        goto LABEL_1609;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v804 = "%{public}s called with null output_handler";
    }

LABEL_1608:
    _os_log_impl(&dword_181A37000, v802, v803, v804, buf, 0xCu);
    goto LABEL_1609;
  }

  v66 = 0;
  v67 = v27 + 74;
  *&v26 = 136447234;
  do
  {
    v141 = v65;
    v65 = *(v65 + 592);
    if ((*(v141 + 872) & 0x800) == 0)
    {
      if ((*(v27 + 158) & 1) != 0 || gLogDatapath != 1)
      {
        goto LABEL_231;
      }

      v1061 = v67;
      v1062 = v26;
      v142 = __nwlog_obj();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
      {
        v140 = *(v1065 + 372);
        LODWORD(buf[0]) = v1062;
        *(buf + 4) = "nw_http1_get_next_idle_connection";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v1061;
        HIWORD(buf[2]) = 2080;
        v1081 = " ";
        *v1082 = 1024;
        *&v1082[2] = v140;
        *&v1082[6] = 2048;
        *&v1082[8] = v141;
        _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> found idle connection connection %p", buf, 0x30u);
        v67 = v1061;
        v26 = v1062;
        v27 = v1065;
LABEL_231:
        v66 = v141;
        continue;
      }

      v66 = v141;
      v27 = v1065;
      v26 = v1062;
      v67 = v1061;
    }
  }

  while (v65);
  v64 = v1064;
  if (!v66)
  {
    goto LABEL_246;
  }

  v143 = v67;
  v1063 = v26;
  if ((*(v66 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v742 = __nwlog_obj();
    v743 = os_log_type_enabled(v742, OS_LOG_TYPE_DEBUG);
    v27 = v1065;
    if (v743)
    {
      v744 = *(v66 + 488);
      v745 = *(*(v66 + 480) + 372);
      v746 = *(v66 + 860);
      if (v744)
      {
        LODWORD(v744) = *(v744 + 424);
      }

      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v66 + 74;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v745;
      *&v1082[6] = 1024;
      *&v1082[8] = v746;
      *&v1082[12] = 1024;
      *&v1082[14] = v744;
      *&v1082[18] = 2048;
      *&v1082[20] = v66;
      _os_log_impl(&dword_181A37000, v742, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
      v27 = v1065;
      v64 = v1064;
    }
  }

  if ((*(v66 + 874) & 8) != 0)
  {
    v162 = *(v66 + 592);
    v163 = *(v66 + 600);
    v164 = (v27 + 216);
    if (v162)
    {
      v164 = (v162 + 600);
    }

    *v164 = v163;
    *v163 = v162;
    *(v66 + 592) = 0u;
    v165 = *(v27 + 340);
    *(v27 + 340) = v165 - 1;
    if (v165)
    {
      goto LABEL_412;
    }

    v166 = v27;
    v167 = __nwlog_obj();
    v168 = *(v166 + 340);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_idle_connection";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->idle_connections_count";
    HIWORD(buf[2]) = 2048;
    v1081 = 1;
    *v1082 = 2048;
    *&v1082[2] = v168;
    LODWORD(v1056) = 42;
    v169 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v167, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v1056);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v169, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v170 = __nwlog_obj();
        v171 = iterate_block[0];
        if (os_log_type_enabled(v170, iterate_block[0]))
        {
          v172 = *(v1065 + 340);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->idle_connections_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v172;
          v173 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_408:
          _os_log_impl(&dword_181A37000, v170, v171, v173, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v192 = __nw_create_backtrace_string();
        v170 = __nwlog_obj();
        v171 = iterate_block[0];
        v193 = os_log_type_enabled(v170, iterate_block[0]);
        if (v192)
        {
          if (v193)
          {
            v194 = *(v1065 + 340);
            LODWORD(buf[0]) = v1063;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v1081 = 1;
            *v1082 = 2048;
            *&v1082[2] = v194;
            *&v1082[10] = 2082;
            *&v1082[12] = v192;
            _os_log_impl(&dword_181A37000, v170, v171, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v192);
          goto LABEL_409;
        }

        if (v193)
        {
          v268 = *(v1065 + 340);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->idle_connections_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v268;
          v173 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_408;
        }
      }

      else
      {
        v170 = __nwlog_obj();
        v171 = iterate_block[0];
        if (os_log_type_enabled(v170, iterate_block[0]))
        {
          v249 = *(v1065 + 340);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->idle_connections_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v249;
          v173 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_408;
        }
      }
    }

LABEL_409:
    if (v169)
    {
      free(v169);
    }

    v27 = v1065;
    *(v1065 + 340) = 0;
    v64 = v1064;
LABEL_412:
    *(v66 + 874) &= ~8u;
    if ((*(v66 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v767 = __nwlog_obj();
      v768 = os_log_type_enabled(v767, OS_LOG_TYPE_DEBUG);
      v27 = v1065;
      if (v768)
      {
        v769 = *(v66 + 488);
        v770 = *(*(v66 + 480) + 372);
        v771 = *(v66 + 860);
        if (v769)
        {
          LODWORD(v769) = *(v769 + 424);
        }

        v772 = *(v1065 + 340);
        LODWORD(buf[0]) = 136448002;
        *(buf + 4) = "nw_http1_remove_idle_connection";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v66 + 74;
        HIWORD(buf[2]) = 2080;
        v1081 = " ";
        *v1082 = 1024;
        *&v1082[2] = v770;
        *&v1082[6] = 1024;
        *&v1082[8] = v771;
        *&v1082[12] = 1024;
        *&v1082[14] = v769;
        *&v1082[18] = 2048;
        *&v1082[20] = v66;
        *&v1082[28] = 1024;
        *&v1082[30] = v772;
        _os_log_impl(&dword_181A37000, v767, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
        v27 = v1065;
        v64 = v1064;
      }
    }

    if (*(v66 + 784))
    {
      if ((*(v66 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v785 = __nwlog_obj();
        if (os_log_type_enabled(v785, OS_LOG_TYPE_DEBUG))
        {
          v786 = *(v66 + 488);
          v787 = *(*(v66 + 480) + 372);
          v788 = *(v66 + 860);
          if (v786)
          {
            LODWORD(v786) = *(v786 + 424);
          }

          LODWORD(buf[0]) = 136447746;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v66 + 74;
          HIWORD(buf[2]) = 2080;
          v1081 = " ";
          *v1082 = 1024;
          *&v1082[2] = v787;
          *&v1082[6] = 1024;
          *&v1082[8] = v788;
          *&v1082[12] = 1024;
          *&v1082[14] = v786;
          *&v1082[18] = 2048;
          *&v1082[20] = v66;
          _os_log_impl(&dword_181A37000, v785, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
          v64 = v1064;
        }
      }

      nw_queue_cancel_source(*(v66 + 784));
      *(v66 + 784) = 0;
      v27 = v1065;
    }

    goto LABEL_418;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446466;
  *(buf + 4) = "nw_http1_remove_idle_connection";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = v66;
  LODWORD(v1056) = 22;
  v144 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connection %p not in idle list, cannot remove", buf, v1056);
  LOBYTE(iterate_block[0]) = 16;
  aBlock[0] = 0;
  if (!__nwlog_fault(v144, iterate_block, aBlock))
  {
    goto LABEL_382;
  }

  if (LOBYTE(iterate_block[0]) != 17)
  {
    if (aBlock[0] == 1)
    {
      v179 = __nw_create_backtrace_string();
      v145 = __nwlog_obj();
      v146 = iterate_block[0];
      v180 = os_log_type_enabled(v145, iterate_block[0]);
      if (v179)
      {
        if (v180)
        {
          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v66;
          HIWORD(buf[2]) = 2082;
          v1081 = v179;
          _os_log_impl(&dword_181A37000, v145, v146, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v179);
        goto LABEL_382;
      }

      if (!v180)
      {
        goto LABEL_382;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v66;
      v147 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
    }

    else
    {
      v145 = __nwlog_obj();
      v146 = iterate_block[0];
      if (!os_log_type_enabled(v145, iterate_block[0]))
      {
        goto LABEL_382;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v66;
      v147 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
    }

LABEL_381:
    _os_log_impl(&dword_181A37000, v145, v146, v147, buf, 0x16u);
    goto LABEL_382;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v145 = gLogObj;
  v146 = iterate_block[0];
  if (os_log_type_enabled(gLogObj, iterate_block[0]))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_http1_remove_idle_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v66;
    v147 = "%{public}s connection %p not in idle list, cannot remove";
    goto LABEL_381;
  }

LABEL_382:
  if (v144)
  {
    free(v144);
  }

  v27 = v1065;
  v64 = v1064;
LABEL_418:
  if ((*(v27 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v747 = __nwlog_obj();
    v748 = os_log_type_enabled(v747, OS_LOG_TYPE_DEBUG);
    v27 = v1065;
    if (v748)
    {
      v749 = *(v1065 + 372);
      v750 = *(v64 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v143;
      HIWORD(buf[2]) = 2080;
      v1081 = " ";
      *v1082 = 1024;
      *&v1082[2] = v749;
      *&v1082[6] = 1024;
      *&v1082[8] = v750;
      *&v1082[12] = 2048;
      *&v1082[14] = v64;
      _os_log_impl(&dword_181A37000, v747, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
      v27 = v1065;
    }
  }

  if ((*(v64 + 428) & 0x2000) != 0)
  {
    v273 = *(v64 + 296);
    v274 = *(v64 + 304);
    v275 = (v27 + 256);
    if (v273)
    {
      v275 = (v273 + 304);
    }

    *v275 = v274;
    *v274 = v273;
    *(v64 + 296) = 0;
    *(v64 + 304) = 0;
    v276 = *(v27 + 348);
    *(v27 + 348) = v276 - 1;
    if (v276)
    {
      goto LABEL_457;
    }

    v277 = v27;
    v278 = __nwlog_obj();
    v279 = *(v277 + 348);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->pending_stream_count";
    HIWORD(buf[2]) = 2048;
    v1081 = 1;
    *v1082 = 2048;
    *&v1082[2] = v279;
    LODWORD(v1056) = 42;
    v280 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v278, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v1056);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v280, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v281 = __nwlog_obj();
        v282 = iterate_block[0];
        if (os_log_type_enabled(v281, iterate_block[0]))
        {
          v283 = *(v1065 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v283;
          v284 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_453:
          _os_log_impl(&dword_181A37000, v281, v282, v284, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v287 = __nw_create_backtrace_string();
        v281 = __nwlog_obj();
        v282 = iterate_block[0];
        v288 = os_log_type_enabled(v281, iterate_block[0]);
        if (v287)
        {
          if (v288)
          {
            v289 = *(v1065 + 348);
            LODWORD(buf[0]) = v1063;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1081 = 1;
            *v1082 = 2048;
            *&v1082[2] = v289;
            *&v1082[10] = 2082;
            *&v1082[12] = v287;
            _os_log_impl(&dword_181A37000, v281, v282, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v287);
          goto LABEL_454;
        }

        if (v288)
        {
          v291 = *(v1065 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v291;
          v284 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_453;
        }
      }

      else
      {
        v281 = __nwlog_obj();
        v282 = iterate_block[0];
        if (os_log_type_enabled(v281, iterate_block[0]))
        {
          v290 = *(v1065 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1081 = 1;
          *v1082 = 2048;
          *&v1082[2] = v290;
          v284 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_453;
        }
      }
    }

LABEL_454:
    if (v280)
    {
      free(v280);
    }

    *(v1065 + 348) = 0;
    v64 = v1064;
LABEL_457:
    *(v64 + 428) &= ~0x2000u;
    if ((*(v64 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v773 = __nwlog_obj();
      if (os_log_type_enabled(v773, OS_LOG_TYPE_DEBUG))
      {
        v774 = v64 + 74;
        v775 = *(v64 + 256);
        v776 = *(*(v64 + 248) + 372);
        if (v775)
        {
          LODWORD(v775) = *(v775 + 860);
        }

        v64 = v1064;
        v777 = *(v1064 + 424);
        v778 = *(v1065 + 348);
        LODWORD(buf[0]) = 136448258;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v774;
        HIWORD(buf[2]) = 2080;
        v1081 = " ";
        *v1082 = 1024;
        *&v1082[2] = v776;
        *&v1082[6] = 1024;
        *&v1082[8] = v775;
        *&v1082[12] = 1024;
        *&v1082[14] = v777;
        *&v1082[18] = 1024;
        *&v1082[20] = v777;
        *&v1082[24] = 2048;
        *&v1082[26] = v1064;
        *&v1082[34] = 1024;
        *&v1082[36] = v778;
        _os_log_impl(&dword_181A37000, v773, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
      }
    }

    goto LABEL_459;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446466;
  *(buf + 4) = "nw_http1_remove_pending_stream";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = v64;
  LODWORD(v1056) = 22;
  v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p not in pending list, cannot remove", buf, v1056);
  LOBYTE(iterate_block[0]) = 16;
  aBlock[0] = 0;
  if (!__nwlog_fault(v269, iterate_block, aBlock))
  {
    goto LABEL_447;
  }

  if (LOBYTE(iterate_block[0]) != 17)
  {
    if (aBlock[0] == 1)
    {
      v285 = __nw_create_backtrace_string();
      v270 = __nwlog_obj();
      v271 = iterate_block[0];
      v286 = os_log_type_enabled(v270, iterate_block[0]);
      if (v285)
      {
        if (v286)
        {
          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v64;
          HIWORD(buf[2]) = 2082;
          v1081 = v285;
          _os_log_impl(&dword_181A37000, v270, v271, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v285);
        goto LABEL_447;
      }

      if (!v286)
      {
        goto LABEL_447;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v64;
      v272 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
    }

    else
    {
      v270 = __nwlog_obj();
      v271 = iterate_block[0];
      if (!os_log_type_enabled(v270, iterate_block[0]))
      {
        goto LABEL_447;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v64;
      v272 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
    }

LABEL_446:
    _os_log_impl(&dword_181A37000, v270, v271, v272, buf, 0x16u);
    goto LABEL_447;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v270 = gLogObj;
  v271 = iterate_block[0];
  if (os_log_type_enabled(gLogObj, iterate_block[0]))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v64;
    v272 = "%{public}s stream %p not in pending list, cannot remove";
    goto LABEL_446;
  }

LABEL_447:
  if (v269)
  {
    free(v269);
  }

LABEL_459:
  if (!*(v64 + 248))
  {
    v737 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    LODWORD(v1056) = 12;
    v738 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v737, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v1056);
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v738, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v739 = __nwlog_obj();
        v740 = iterate_block[0];
        if (os_log_type_enabled(v739, iterate_block[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v741 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1386:
          _os_log_impl(&dword_181A37000, v739, v740, v741, buf, 0xCu);
        }
      }

      else if (aBlock[0] == 1)
      {
        v779 = __nw_create_backtrace_string();
        v739 = __nwlog_obj();
        v740 = iterate_block[0];
        v780 = os_log_type_enabled(v739, iterate_block[0]);
        if (v779)
        {
          if (v780)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v779;
            _os_log_impl(&dword_181A37000, v739, v740, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v779);
          goto LABEL_1387;
        }

        if (v780)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v741 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
          goto LABEL_1386;
        }
      }

      else
      {
        v739 = __nwlog_obj();
        v740 = iterate_block[0];
        if (os_log_type_enabled(v739, iterate_block[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v741 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
          goto LABEL_1386;
        }
      }
    }

LABEL_1387:
    if (v738)
    {
      free(v738);
    }

    v64 = v1064;
    goto LABEL_687;
  }

  if (!*(v66 + 488))
  {
    *(v64 + 256) = v66;
    *(v66 + 488) = v64;
    v298 = *(v64 + 320);
    if (v298)
    {
      v299 = os_retain(v298);
    }

    else
    {
      v299 = 0;
    }

    v304 = *(v66 + 744);
    if (v304)
    {
      v305 = *(v66 + 736);
      if (v305)
      {
        os_release(v305);
        v304 = *(v66 + 744);
      }
    }

    *(v66 + 736) = v299;
    *(v66 + 744) = v304 | 1;
    if ((*(*(v64 + 248) + 376) & 2) == 0)
    {
      goto LABEL_659;
    }

    v306 = nw_parameters_copy_default_protocol_stack(*(v64 + 320));
    *aBlock = 0;
    *&aBlock[8] = aBlock;
    *&aBlock[16] = 0x2000000000;
    LOBYTE(v1073) = 0;
    buf[0] = 0;
    buf[1] = buf;
    buf[2] = 0x3802000000;
    v1081 = __Block_byref_object_copy__42960;
    *v1082 = __Block_byref_object_dispose__42961;
    *&v1082[8] = 0;
    v1082[16] |= 1u;
    iterate_block[0] = MEMORY[0x1E69E9820];
    iterate_block[1] = 0x40000000;
    iterate_block[2] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
    v1084 = &unk_1E6A32930;
    v1085 = aBlock;
    v1086 = buf;
    v1087 = v64;
    nw_protocol_stack_iterate_application_protocols(v306, iterate_block);
    if (*(buf[1] + 40))
    {
      v307 = v66;
      while (1)
      {
        v307 = *(v307 + 32);
        if (!v307)
        {
          break;
        }

        if (nw_protocol_is_tls_over_stream(v307))
        {
          v308 = *(buf[1] + 40);
          v309 = nw_protocol_boringssl_copy_definition();
          nw_parameters_set_protocol_instance(v308, v310, v307);
          if (v309)
          {
            os_release(v309);
          }

          v311 = 1;
          goto LABEL_653;
        }
      }

      v317 = __nwlog_obj();
      *v1077 = 136446210;
      *&v1077[4] = "nw_http1_stream_associate_with_connection";
      LODWORD(v1056) = 12;
      v318 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v317, 16, "%{public}s tls should have been in the stack but could not find it", v1077, v1056);
      type[0] = OS_LOG_TYPE_ERROR;
      v1071 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v318, type, &v1071))
      {
        goto LABEL_649;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v319 = __nwlog_obj();
        v320 = type[0];
        if (os_log_type_enabled(v319, type[0]))
        {
          *v1077 = 136446210;
          *&v1077[4] = "nw_http1_stream_associate_with_connection";
          v321 = "%{public}s tls should have been in the stack but could not find it";
LABEL_648:
          _os_log_impl(&dword_181A37000, v319, v320, v321, v1077, 0xCu);
        }
      }

      else if (v1071 == OS_LOG_TYPE_INFO)
      {
        v325 = __nw_create_backtrace_string();
        v319 = __nwlog_obj();
        v320 = type[0];
        v326 = os_log_type_enabled(v319, type[0]);
        if (v325)
        {
          if (v326)
          {
            *v1077 = 136446466;
            *&v1077[4] = "nw_http1_stream_associate_with_connection";
            *&v1077[12] = 2082;
            *&v1077[14] = v325;
            _os_log_impl(&dword_181A37000, v319, v320, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1077, 0x16u);
          }

          free(v325);
          goto LABEL_649;
        }

        if (v326)
        {
          *v1077 = 136446210;
          *&v1077[4] = "nw_http1_stream_associate_with_connection";
          v321 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
          goto LABEL_648;
        }
      }

      else
      {
        v319 = __nwlog_obj();
        v320 = type[0];
        if (os_log_type_enabled(v319, type[0]))
        {
          *v1077 = 136446210;
          *&v1077[4] = "nw_http1_stream_associate_with_connection";
          v321 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
          goto LABEL_648;
        }
      }

LABEL_649:
      if (v318)
      {
        free(v318);
      }

      v311 = 0;
LABEL_652:
      v64 = v1064;
LABEL_653:
      _Block_object_dispose(buf, 8);
      if ((v1082[16] & 1) != 0 && *&v1082[8])
      {
        os_release(*&v1082[8]);
      }

      _Block_object_dispose(aBlock, 8);
      if (v306)
      {
        os_release(v306);
      }

      if (!v311)
      {
        goto LABEL_687;
      }

LABEL_659:
      v407 = *(v64 + 32);
      if (!v407 || v407 == *(v66 + 32))
      {
LABEL_677:
        nw_protocol_set_output_handler(v64, *(v66 + 32));
        nw_protocol_set_input_handler(v66, *(v64 + 48));
        *v64 = *v66;
        v425 = *(v64 + 96);
        v426 = *(v64 + 112);
        v427 = *(v64 + 128);
        *(v66 + 144) = *(v64 + 144);
        v428 = *(v64 + 80);
        *(v66 + 64) = *(v64 + 64);
        *(v66 + 80) = v428;
        *(v66 + 112) = v426;
        *(v66 + 128) = v427;
        *(v66 + 96) = v425;
        *(v66 + 872) &= 0xFFD7u;
        *(v66 + 864) = 1;
        if ((*(v66 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v429 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            v430 = *(v66 + 488);
            v431 = *(*(v66 + 480) + 372);
            v432 = *(v66 + 860);
            if (v430)
            {
              LODWORD(v430) = *(v430 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_update_connection_input_state";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v66 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v431;
            *&v1082[6] = 1024;
            *&v1082[8] = v432;
            *&v1082[12] = 1024;
            *&v1082[14] = v430;
            _os_log_impl(&dword_181A37000, v429, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
          }
        }

        if ((*(v64 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v433 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v434 = *(v64 + 256);
            v435 = *(*(v64 + 248) + 372);
            if (v434)
            {
              LODWORD(v434) = *(v434 + 860);
            }

            v436 = *(v64 + 424);
            LODWORD(buf[0]) = 136448002;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v64 + 74;
            HIWORD(buf[2]) = 2080;
            v1081 = " ";
            *v1082 = 1024;
            *&v1082[2] = v435;
            *&v1082[6] = 1024;
            *&v1082[8] = v434;
            *&v1082[12] = 1024;
            *&v1082[14] = v436;
            *&v1082[18] = 2048;
            *&v1082[20] = v64;
            *&v1082[28] = 2048;
            *&v1082[30] = v66;
            _os_log_impl(&dword_181A37000, v433, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
          }
        }

        goto LABEL_687;
      }

      v408 = __nwlog_obj();
      v409 = *(v64 + 32);
      v410 = *(v66 + 32);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v409;
      HIWORD(buf[2]) = 2048;
      v1081 = v64;
      *v1082 = 2048;
      *&v1082[2] = v410;
      LODWORD(v1056) = 42;
      v411 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v408, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v1056);
      aBlock[0] = 16;
      v1077[0] = 0;
      if (__nwlog_fault(v411, aBlock, v1077))
      {
        if (aBlock[0] == 17)
        {
          v412 = __nwlog_obj();
          v413 = aBlock[0];
          if (!os_log_type_enabled(v412, aBlock[0]))
          {
            goto LABEL_675;
          }

          v414 = *(v64 + 32);
          v415 = *(v66 + 32);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v414;
          HIWORD(buf[2]) = 2048;
          v1081 = v64;
          *v1082 = 2048;
          *&v1082[2] = v415;
          v416 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
          goto LABEL_674;
        }

        if (v1077[0] != 1)
        {
          v412 = __nwlog_obj();
          v413 = aBlock[0];
          if (!os_log_type_enabled(v412, aBlock[0]))
          {
            goto LABEL_675;
          }

          v421 = *(v64 + 32);
          v422 = *(v66 + 32);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v421;
          HIWORD(buf[2]) = 2048;
          v1081 = v64;
          *v1082 = 2048;
          *&v1082[2] = v422;
          v416 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
          goto LABEL_674;
        }

        v417 = __nw_create_backtrace_string();
        v412 = __nwlog_obj();
        v413 = aBlock[0];
        v418 = os_log_type_enabled(v412, aBlock[0]);
        if (v417)
        {
          if (v418)
          {
            v419 = *(v64 + 32);
            v420 = *(v66 + 32);
            LODWORD(buf[0]) = v1063;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v419;
            HIWORD(buf[2]) = 2048;
            v1081 = v64;
            *v1082 = 2048;
            *&v1082[2] = v420;
            *&v1082[10] = 2082;
            *&v1082[12] = v417;
            _os_log_impl(&dword_181A37000, v412, v413, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v417);
          goto LABEL_675;
        }

        if (v418)
        {
          v423 = *(v64 + 32);
          v424 = *(v66 + 32);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v423;
          HIWORD(buf[2]) = 2048;
          v1081 = v64;
          *v1082 = 2048;
          *&v1082[2] = v424;
          v416 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_674:
          _os_log_impl(&dword_181A37000, v412, v413, v416, buf, 0x2Au);
        }
      }

LABEL_675:
      if (v411)
      {
        free(v411);
      }

      goto LABEL_677;
    }

    v312 = __nwlog_obj();
    *v1077 = 136446210;
    *&v1077[4] = "nw_http1_stream_associate_with_connection";
    LODWORD(v1056) = 12;
    v313 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v312, 16, "%{public}s unable to find tls options", v1077, v1056);
    type[0] = OS_LOG_TYPE_ERROR;
    v1071 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v313, type, &v1071))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v314 = __nwlog_obj();
        v315 = type[0];
        if (os_log_type_enabled(v314, type[0]))
        {
          *v1077 = 136446210;
          *&v1077[4] = "nw_http1_stream_associate_with_connection";
          v316 = "%{public}s unable to find tls options";
LABEL_618:
          _os_log_impl(&dword_181A37000, v314, v315, v316, v1077, 0xCu);
        }
      }

      else if (v1071 == OS_LOG_TYPE_INFO)
      {
        v323 = __nw_create_backtrace_string();
        v314 = __nwlog_obj();
        v315 = type[0];
        v324 = os_log_type_enabled(v314, type[0]);
        if (v323)
        {
          if (v324)
          {
            *v1077 = 136446466;
            *&v1077[4] = "nw_http1_stream_associate_with_connection";
            *&v1077[12] = 2082;
            *&v1077[14] = v323;
            _os_log_impl(&dword_181A37000, v314, v315, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1077, 0x16u);
          }

          free(v323);
          goto LABEL_619;
        }

        if (v324)
        {
          *v1077 = 136446210;
          *&v1077[4] = "nw_http1_stream_associate_with_connection";
          v316 = "%{public}s unable to find tls options, no backtrace";
          goto LABEL_618;
        }
      }

      else
      {
        v314 = __nwlog_obj();
        v315 = type[0];
        if (os_log_type_enabled(v314, type[0]))
        {
          *v1077 = 136446210;
          *&v1077[4] = "nw_http1_stream_associate_with_connection";
          v316 = "%{public}s unable to find tls options, backtrace limit exceeded";
          goto LABEL_618;
        }
      }
    }

LABEL_619:
    if (v313)
    {
      free(v313);
    }

    v311 = 1;
    goto LABEL_652;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v292 = *(v66 + 488);
  LODWORD(buf[0]) = 136446722;
  *(buf + 4) = "nw_http1_stream_associate_with_connection";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = v66;
  HIWORD(buf[2]) = 2048;
  v1081 = v292;
  LODWORD(v1056) = 32;
  v293 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p already has a stream (%p)", buf, v1056);
  LOBYTE(iterate_block[0]) = 16;
  aBlock[0] = 0;
  if (!__nwlog_fault(v293, iterate_block, aBlock))
  {
    goto LABEL_497;
  }

  if (LOBYTE(iterate_block[0]) != 17)
  {
    if (aBlock[0] == 1)
    {
      v300 = __nw_create_backtrace_string();
      v294 = __nwlog_obj();
      v295 = iterate_block[0];
      v301 = os_log_type_enabled(v294, iterate_block[0]);
      if (v300)
      {
        if (v301)
        {
          v302 = *(v66 + 488);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v66;
          HIWORD(buf[2]) = 2048;
          v1081 = v302;
          *v1082 = 2082;
          *&v1082[2] = v300;
          _os_log_impl(&dword_181A37000, v294, v295, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v300);
        goto LABEL_497;
      }

      if (!v301)
      {
        goto LABEL_497;
      }

      v322 = *(v66 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v66;
      HIWORD(buf[2]) = 2048;
      v1081 = v322;
      v297 = "%{public}s Connection %p already has a stream (%p), no backtrace";
    }

    else
    {
      v294 = __nwlog_obj();
      v295 = iterate_block[0];
      if (!os_log_type_enabled(v294, iterate_block[0]))
      {
        goto LABEL_497;
      }

      v303 = *(v66 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v66;
      HIWORD(buf[2]) = 2048;
      v1081 = v303;
      v297 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
    }

LABEL_496:
    _os_log_impl(&dword_181A37000, v294, v295, v297, buf, 0x20u);
    goto LABEL_497;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v294 = gLogObj;
  v295 = iterate_block[0];
  if (os_log_type_enabled(gLogObj, iterate_block[0]))
  {
    v296 = *(v66 + 488);
    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v66;
    HIWORD(buf[2]) = 2048;
    v1081 = v296;
    v297 = "%{public}s Connection %p already has a stream (%p)";
    goto LABEL_496;
  }

LABEL_497:
  if (v293)
  {
    free(v293);
  }

LABEL_687:
  *(v64 + 428) |= 0x8000u;
  v437 = *(v64 + 352);
  buf[0] = MEMORY[0x1E69E9820];
  buf[1] = 0x40000000;
  buf[2] = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke;
  v1081 = &__block_descriptor_tmp_55_42980;
  *v1082 = v64;
  nw_http_transaction_metadata_set_event_handler(v437, buf);
  if (*(v64 + 428))
  {
    nw_http_transaction_metadata_set_first_on_connection(*(v64 + 352));
    nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v66 + 768));
  }

  nw_http_transaction_metadata_set_connection_metadata(*(v64 + 352), *(v66 + 768));
  nw_protocol_connected(*(v64 + 48), v64);
}