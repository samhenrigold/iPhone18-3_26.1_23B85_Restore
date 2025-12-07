uint64_t nw_protocol_http1_copy_info(uint64_t a1, int a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v20, &type, &v54))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null protocol";
    }

    else
    {
      if (v54 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v26 = os_log_type_enabled(v21, type);
        if (!backtrace_string)
        {
          if (!v26)
          {
            goto LABEL_96;
          }

          *buf = 136446210;
          v57 = "nw_http1_get_http1_protocol";
          v23 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_95;
        }

        if (v26)
        {
          *buf = 136446466;
          v57 = "nw_http1_get_http1_protocol";
          v58 = 2082;
          v59 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_96;
      }

      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_95;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v20, &type, &v54))
    {
      goto LABEL_96;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v54 != 1)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_95;
      }

      v27 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v28 = os_log_type_enabled(v21, type);
      if (!v27)
      {
        if (!v28)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle, no backtrace";
        goto LABEL_95;
      }

      if (!v28)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v57 = "nw_http1_get_http1_protocol";
      v58 = 2082;
      v59 = v27;
      v29 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v21 = __nwlog_obj();
    v22 = type;
    if (!os_log_type_enabled(v21, type))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v23 = "%{public}s called with null handle";
LABEL_95:
    _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
    goto LABEL_96;
  }

  v3 = *(v2 + 24);
  v4 = *(a1 + 40);
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_98;
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v31 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v20, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle->http1_connection";
        goto LABEL_95;
      }

      if (v54 != 1)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_95;
      }

      v27 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v38 = os_log_type_enabled(v21, type);
      if (!v27)
      {
        if (!v38)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_95;
      }

      if (v38)
      {
        *buf = 136446466;
        v57 = "nw_http1_get_http1_protocol";
        v58 = 2082;
        v59 = v27;
        v29 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_49;
      }

LABEL_50:
      free(v27);
      if (!v20)
      {
LABEL_98:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v57 = "nw_protocol_http1_copy_info";
        LODWORD(v53) = 12;
        v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v53);
        type = OS_LOG_TYPE_ERROR;
        v54 = 0;
        if (!__nwlog_fault(v41, &type, &v54))
        {
          goto LABEL_130;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v42 = gLogObj;
          v43 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v57 = "nw_protocol_http1_copy_info";
          v44 = "%{public}s called with null http1";
        }

        else
        {
          if (v54 == 1)
          {
            v45 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v46 = gLogObj;
            v47 = type;
            v48 = os_log_type_enabled(gLogObj, type);
            if (!v45)
            {
              if (!v48)
              {
                goto LABEL_130;
              }

              *buf = 136446210;
              v57 = "nw_protocol_http1_copy_info";
              v44 = "%{public}s called with null http1, no backtrace";
              goto LABEL_136;
            }

            if (v48)
            {
              *buf = 136446466;
              v57 = "nw_protocol_http1_copy_info";
              v58 = 2082;
              v59 = v45;
              _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v45);
LABEL_130:
            if (!v41)
            {
              return 0;
            }

LABEL_131:
            free(v41);
            return 0;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v42 = gLogObj;
          v43 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v57 = "nw_protocol_http1_copy_info";
          v44 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_128:
        v51 = v42;
        v52 = v43;
LABEL_129:
        _os_log_impl(&dword_181A37000, v51, v52, v44, buf, 0xCu);
        goto LABEL_130;
      }

LABEL_97:
      free(v20);
      goto LABEL_98;
    }

LABEL_96:
    if (!v20)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v6 = *(v2 + 8);
  if (!v6)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v20, &type, &v54))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null handle->http1_stream";
      goto LABEL_95;
    }

    if (v54 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_95;
    }

    v27 = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v37 = os_log_type_enabled(v21, type);
    if (!v27)
    {
      if (!v37)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v57 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_95;
    }

    if (!v37)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v57 = "nw_http1_get_http1_protocol";
    v58 = 2082;
    v59 = v27;
    v29 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_49:
    _os_log_impl(&dword_181A37000, v21, v22, v29, buf, 0x16u);
    goto LABEL_50;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!v7)
  {
    goto LABEL_98;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_116;
    }

    v8 = *(v2 + 16);
    if (v8)
    {
      v9 = (v8 + 488);
      goto LABEL_16;
    }

    v32 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_http1_get_stream_for_protocol";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v33, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (!os_log_type_enabled(v34, type))
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v36 = "%{public}s called with null handle->http1_connection";
        goto LABEL_113;
      }

      if (v54 != 1)
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (!os_log_type_enabled(v34, type))
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v36 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_113;
      }

      v39 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v40 = os_log_type_enabled(v34, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v57 = "nw_http1_get_stream_for_protocol";
          v58 = 2082;
          v59 = v39;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        goto LABEL_114;
      }

      if (v40)
      {
        *buf = 136446210;
        v57 = "nw_http1_get_stream_for_protocol";
        v36 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_113:
        _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
      }
    }

LABEL_114:
    if (v33)
    {
      free(v33);
    }

LABEL_116:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v57 = "nw_protocol_http1_copy_info";
    LODWORD(v53) = 12;
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v53);
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v41, &type, &v54))
    {
      goto LABEL_130;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      v43 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v57 = "nw_protocol_http1_copy_info";
      v44 = "%{public}s called with null http1_stream";
      goto LABEL_128;
    }

    if (v54 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      v43 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v57 = "nw_protocol_http1_copy_info";
      v44 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_128;
    }

    v49 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    v47 = type;
    v50 = os_log_type_enabled(gLogObj, type);
    if (v49)
    {
      if (v50)
      {
        *buf = 136446466;
        v57 = "nw_protocol_http1_copy_info";
        v58 = 2082;
        v59 = v49;
        _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v49);
      if (!v41)
      {
        return 0;
      }

      goto LABEL_131;
    }

    if (v50)
    {
      *buf = 136446210;
      v57 = "nw_protocol_http1_copy_info";
      v44 = "%{public}s called with null http1_stream, no backtrace";
LABEL_136:
      v51 = v46;
      v52 = v47;
      goto LABEL_129;
    }

    goto LABEL_130;
  }

  v9 = (v2 + 8);
LABEL_16:
  v10 = *v9;
  if (!*v9)
  {
    goto LABEL_116;
  }

  if (a2 == 253)
  {
    return *(v7 + 328);
  }

  v12 = *(v10 + 256);
  if (!v12)
  {
    if (a2 == 255)
    {
      goto LABEL_25;
    }

    return 0;
  }

  result = nw_protocol_common_copy_info(v12, a2);
  if (a2 != 255)
  {
    return result;
  }

  if (!result)
  {
LABEL_25:
    result = _nw_array_create();
    v14 = *(v10 + 256);
    if (!v14)
    {
      goto LABEL_29;
    }

LABEL_26:
    v15 = *(v14 + 768);
    if (v15)
    {
      if (!result)
      {
        return result;
      }

      v16 = result;
      _nw_array_append(result, v15);
      result = v16;
    }

    goto LABEL_29;
  }

  v14 = *(v10 + 256);
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_29:
  v17 = *(v10 + 352);
  if (v17)
  {
    if (result)
    {
      v18 = result;
      _nw_array_append(result, v17);
      return v18;
    }
  }

  return result;
}

void nw_protocol_http1_notify(void *a1, uint64_t a2, int a3)
{
  v126 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_http1_get_http1_protocol";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (!__nwlog_fault(v51, &type, &v110))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v113 = "nw_http1_get_http1_protocol";
      v54 = "%{public}s called with null protocol";
    }

    else
    {
      if (v110 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v52 = __nwlog_obj();
        v53 = type;
        v58 = os_log_type_enabled(v52, type);
        if (!backtrace_string)
        {
          if (!v58)
          {
            goto LABEL_177;
          }

          *buf = 136446210;
          v113 = "nw_http1_get_http1_protocol";
          v54 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_176;
        }

        if (v58)
        {
          *buf = 136446466;
          v113 = "nw_http1_get_http1_protocol";
          v114 = 2082;
          v115 = backtrace_string;
          _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_177;
      }

      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v113 = "nw_http1_get_http1_protocol";
      v54 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_176;
  }

  v3 = a1[5];
  if (!v3)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_http1_get_http1_protocol";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (!__nwlog_fault(v51, &type, &v110))
    {
      goto LABEL_177;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v110 != 1)
      {
        v52 = __nwlog_obj();
        v53 = type;
        if (!os_log_type_enabled(v52, type))
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_http1_protocol";
        v54 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_176;
      }

      v59 = __nw_create_backtrace_string();
      v52 = __nwlog_obj();
      v53 = type;
      v60 = os_log_type_enabled(v52, type);
      if (!v59)
      {
        if (!v60)
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_http1_protocol";
        v54 = "%{public}s called with null handle, no backtrace";
        goto LABEL_176;
      }

      if (!v60)
      {
        goto LABEL_104;
      }

      *buf = 136446466;
      v113 = "nw_http1_get_http1_protocol";
      v114 = 2082;
      v115 = v59;
      v61 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_103;
    }

    v52 = __nwlog_obj();
    v53 = type;
    if (!os_log_type_enabled(v52, type))
    {
      goto LABEL_177;
    }

    *buf = 136446210;
    v113 = "nw_http1_get_http1_protocol";
    v54 = "%{public}s called with null handle";
LABEL_176:
    _os_log_impl(&dword_181A37000, v52, v53, v54, buf, 0xCu);
    goto LABEL_177;
  }

  v4 = *(v3 + 24);
  v5 = a1[5];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_179;
    }

    v6 = *(v3 + 16);
    if (v6)
    {
      v5 = (v6 + 480);
      goto LABEL_10;
    }

    v67 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_http1_get_http1_protocol";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (__nwlog_fault(v51, &type, &v110))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v52 = __nwlog_obj();
        v53 = type;
        if (!os_log_type_enabled(v52, type))
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_http1_protocol";
        v54 = "%{public}s called with null handle->http1_connection";
        goto LABEL_176;
      }

      if (v110 != 1)
      {
        v52 = __nwlog_obj();
        v53 = type;
        if (!os_log_type_enabled(v52, type))
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_http1_protocol";
        v54 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_176;
      }

      v59 = __nw_create_backtrace_string();
      v52 = __nwlog_obj();
      v53 = type;
      v69 = os_log_type_enabled(v52, type);
      if (!v59)
      {
        if (!v69)
        {
          goto LABEL_177;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_http1_protocol";
        v54 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_176;
      }

      if (v69)
      {
        *buf = 136446466;
        v113 = "nw_http1_get_http1_protocol";
        v114 = 2082;
        v115 = v59;
        v61 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_103;
      }

LABEL_104:
      free(v59);
      if (!v51)
      {
LABEL_179:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        LODWORD(v109) = 12;
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v109);
        type = OS_LOG_TYPE_ERROR;
        v110 = 0;
        if (!__nwlog_fault(v12, &type, &v110))
        {
          goto LABEL_287;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v113 = "nw_protocol_http1_notify";
          v15 = "%{public}s called with null http1";
        }

        else
        {
          if (v110 == 1)
          {
            v89 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v90 = gLogObj;
            v91 = type;
            v92 = os_log_type_enabled(gLogObj, type);
            if (v89)
            {
              if (v92)
              {
                *buf = 136446466;
                v113 = "nw_protocol_http1_notify";
                v114 = 2082;
                v115 = v89;
                _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v89);
LABEL_287:
              if (!v12)
              {
                return;
              }

              goto LABEL_288;
            }

            if (!v92)
            {
              goto LABEL_287;
            }

            *buf = 136446210;
            v113 = "nw_protocol_http1_notify";
            v15 = "%{public}s called with null http1, no backtrace";
            v93 = v90;
            v94 = v91;
LABEL_286:
            _os_log_impl(&dword_181A37000, v93, v94, v15, buf, 0xCu);
            goto LABEL_287;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v113 = "nw_protocol_http1_notify";
          v15 = "%{public}s called with null http1, backtrace limit exceeded";
        }

        goto LABEL_285;
      }

LABEL_178:
      free(v51);
      goto LABEL_179;
    }

LABEL_177:
    if (!v51)
    {
      goto LABEL_179;
    }

    goto LABEL_178;
  }

  v7 = *(v3 + 8);
  if (!v7)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_http1_get_http1_protocol";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (!__nwlog_fault(v51, &type, &v110))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v113 = "nw_http1_get_http1_protocol";
      v54 = "%{public}s called with null handle->http1_stream";
      goto LABEL_176;
    }

    if (v110 != 1)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (!os_log_type_enabled(v52, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v113 = "nw_http1_get_http1_protocol";
      v54 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_176;
    }

    v59 = __nw_create_backtrace_string();
    v52 = __nwlog_obj();
    v53 = type;
    v68 = os_log_type_enabled(v52, type);
    if (!v59)
    {
      if (!v68)
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v113 = "nw_http1_get_http1_protocol";
      v54 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_176;
    }

    if (!v68)
    {
      goto LABEL_104;
    }

    *buf = 136446466;
    v113 = "nw_http1_get_http1_protocol";
    v114 = 2082;
    v115 = v59;
    v61 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_103:
    _os_log_impl(&dword_181A37000, v52, v53, v61, buf, 0x16u);
    goto LABEL_104;
  }

  v5 = (v7 + 248);
LABEL_10:
  if (!*v5)
  {
    goto LABEL_179;
  }

  if (!a2)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_protocol_http1_notify";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (!__nwlog_fault(v12, &type, &v110))
    {
      goto LABEL_287;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null other_protocol";
    }

    else if (v110 == 1)
    {
      v62 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v63 = os_log_type_enabled(v13, type);
      if (v62)
      {
        if (!v63)
        {
          goto LABEL_279;
        }

        *buf = 136446466;
        v113 = "nw_protocol_http1_notify";
        v114 = 2082;
        v115 = v62;
        v64 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
        goto LABEL_278;
      }

      if (!v63)
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_285;
  }

  if (a3 > 15)
  {
    if (a3 == 21)
    {
      return;
    }

    if (a3 != 26)
    {
      if (a3 == 16)
      {
        goto LABEL_35;
      }

LABEL_31:
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v16 = (v3 + 16);
          goto LABEL_66;
        }

LABEL_270:
        v107 = __nwlog_obj();
        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        LODWORD(v109) = 12;
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v107, 16, "%{public}s called with null http1_connection", buf, v109);
        type = OS_LOG_TYPE_ERROR;
        v110 = 0;
        if (!__nwlog_fault(v12, &type, &v110))
        {
          goto LABEL_287;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v13 = __nwlog_obj();
          v14 = type;
          if (!os_log_type_enabled(v13, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v113 = "nw_protocol_http1_notify";
          v15 = "%{public}s called with null http1_connection";
          goto LABEL_285;
        }

        if (v110 != 1)
        {
          v13 = __nwlog_obj();
          v14 = type;
          if (!os_log_type_enabled(v13, type))
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v113 = "nw_protocol_http1_notify";
          v15 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_285;
        }

        v62 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v108 = os_log_type_enabled(v13, type);
        if (!v62)
        {
          if (!v108)
          {
            goto LABEL_287;
          }

          *buf = 136446210;
          v113 = "nw_protocol_http1_notify";
          v15 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_285;
        }

        if (!v108)
        {
          goto LABEL_279;
        }

        goto LABEL_277;
      }

      v42 = *(v3 + 8);
      if (v42)
      {
        v16 = (v42 + 256);
LABEL_66:
        v43 = *v16;
        if (*v16)
        {
          v44 = *(v43 + 488);
          if (v44)
          {
            v35 = *(v44 + 48);
            goto LABEL_69;
          }

          if (*(v43 + 158))
          {
            return;
          }

          v37 = __nwlog_obj();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          v46 = *(v43 + 488);
          if (v46)
          {
            LODWORD(v46) = *(v46 + 424);
          }

          v47 = *(*(v43 + 480) + 372);
          v48 = *(v43 + 860);
          if (a3 > 0x1E)
          {
            v49 = "unknown";
          }

          else
          {
            v49 = off_1E6A33500[a3];
          }

          *buf = 136447746;
          v113 = "nw_protocol_http1_notify";
          v114 = 2082;
          v115 = (v43 + 74);
          v116 = 2080;
          v117 = " ";
          v118 = 1024;
          v119 = v47;
          v120 = 1024;
          v121 = v48;
          v122 = 1024;
          v123 = v46;
          v124 = 2080;
          v125 = v49;
          v31 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping notification type %s";
          goto LABEL_80;
        }

        goto LABEL_270;
      }

      v95 = __nwlog_obj();
      *buf = 136446210;
      v113 = "nw_http1_get_connection_for_protocol";
      v96 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v95, 16, "%{public}s called with null handle->http1_stream", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (__nwlog_fault(v96, &type, &v110))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v97 = __nwlog_obj();
          v98 = type;
          if (!os_log_type_enabled(v97, type))
          {
            goto LABEL_268;
          }

          *buf = 136446210;
          v113 = "nw_http1_get_connection_for_protocol";
          v99 = "%{public}s called with null handle->http1_stream";
          goto LABEL_267;
        }

        if (v110 != 1)
        {
          v97 = __nwlog_obj();
          v98 = type;
          if (!os_log_type_enabled(v97, type))
          {
            goto LABEL_268;
          }

          *buf = 136446210;
          v113 = "nw_http1_get_connection_for_protocol";
          v99 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
          goto LABEL_267;
        }

        v102 = __nw_create_backtrace_string();
        v97 = __nwlog_obj();
        v98 = type;
        v103 = os_log_type_enabled(v97, type);
        if (v102)
        {
          if (v103)
          {
            *buf = 136446466;
            v113 = "nw_http1_get_connection_for_protocol";
            v114 = 2082;
            v115 = v102;
            _os_log_impl(&dword_181A37000, v97, v98, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v102);
          goto LABEL_268;
        }

        if (v103)
        {
          *buf = 136446210;
          v113 = "nw_http1_get_connection_for_protocol";
          v99 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_267:
          _os_log_impl(&dword_181A37000, v97, v98, v99, buf, 0xCu);
        }
      }

LABEL_268:
      if (v96)
      {
        free(v96);
      }

      goto LABEL_270;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v10 = (v3 + 16);
        goto LABEL_46;
      }

LABEL_234:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      LODWORD(v109) = 12;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_connection", buf, v109);
      type = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (!__nwlog_fault(v12, &type, &v110))
      {
        goto LABEL_287;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        v15 = "%{public}s called with null http1_connection";
        goto LABEL_285;
      }

      if (v110 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        v15 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_285;
      }

      v62 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v105 = os_log_type_enabled(v13, type);
      if (!v62)
      {
        if (!v105)
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        v15 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_285;
      }

      if (!v105)
      {
        goto LABEL_279;
      }

LABEL_277:
      *buf = 136446466;
      v113 = "nw_protocol_http1_notify";
      v114 = 2082;
      v115 = v62;
      v64 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_278;
    }

    v21 = *(v3 + 8);
    if (v21)
    {
      v10 = (v21 + 256);
LABEL_46:
      v22 = *v10;
      if (*v10)
      {
        v23 = *(v22 + 488);
        if (!v23)
        {
          return;
        }

        v24 = *(v23 + 32);
        if (!v24)
        {
          return;
        }

        v25 = *(v22 + 32);
        if (v25 == v24)
        {
          return;
        }

        nw_protocol_set_output_handler(*(v22 + 488), v25);
        if (*(v23 + 158))
        {
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v27 = *(v23 + 256);
        v28 = *(*(v23 + 248) + 372);
        if (v27)
        {
          LODWORD(v27) = *(v27 + 860);
        }

        v29 = *(v23 + 424);
        v30 = *(v22 + 32);
        *buf = 136447746;
        v113 = "nw_protocol_http1_notify";
        v114 = 2082;
        v115 = (v23 + 74);
        v116 = 2080;
        v117 = " ";
        v118 = 1024;
        v119 = v28;
        v120 = 1024;
        v121 = v27;
        v122 = 1024;
        v123 = v29;
        v124 = 2048;
        v125 = v30;
        v31 = "%{public}s %{public}s%s<i%u:c%u:s%u> Output handler for stream replaced to: %p";
        v32 = v26;
LABEL_81:
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, v31, buf, 0x3Cu);
        return;
      }

      goto LABEL_234;
    }

    v75 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_http1_get_connection_for_protocol";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (__nwlog_fault(v76, &type, &v110))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v77 = __nwlog_obj();
        v78 = type;
        if (!os_log_type_enabled(v77, type))
        {
          goto LABEL_232;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_connection_for_protocol";
        v79 = "%{public}s called with null handle->http1_stream";
        goto LABEL_231;
      }

      if (v110 != 1)
      {
        v77 = __nwlog_obj();
        v78 = type;
        if (!os_log_type_enabled(v77, type))
        {
          goto LABEL_232;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_connection_for_protocol";
        v79 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_231;
      }

      v87 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = type;
      v88 = os_log_type_enabled(v77, type);
      if (v87)
      {
        if (v88)
        {
          *buf = 136446466;
          v113 = "nw_http1_get_connection_for_protocol";
          v114 = 2082;
          v115 = v87;
          _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v87);
        goto LABEL_232;
      }

      if (v88)
      {
        *buf = 136446210;
        v113 = "nw_http1_get_connection_for_protocol";
        v79 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_231:
        _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
      }
    }

LABEL_232:
    if (v76)
    {
      free(v76);
    }

    goto LABEL_234;
  }

  if (a3 <= 12)
  {
    if (a3 == 7)
    {
      return;
    }

    if (a3)
    {
      goto LABEL_31;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_protocol_http1_notify";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null type", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (!__nwlog_fault(v12, &type, &v110))
    {
      goto LABEL_287;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null type";
    }

    else if (v110 == 1)
    {
      v62 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v65 = os_log_type_enabled(v13, type);
      if (v62)
      {
        if (!v65)
        {
          goto LABEL_279;
        }

        *buf = 136446466;
        v113 = "nw_protocol_http1_notify";
        v114 = 2082;
        v115 = v62;
        v64 = "%{public}s called with null type, dumping backtrace:%{public}s";
        goto LABEL_278;
      }

      if (!v65)
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null type, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null type, backtrace limit exceeded";
    }

LABEL_285:
    v93 = v13;
    v94 = v14;
    goto LABEL_286;
  }

  if (a3 == 15)
  {
    if (v4 == 2)
    {
      v9 = (v3 + 8);
LABEL_40:
      v19 = *v9;
      if (v19)
      {
        v20 = *(v19 + 48);

        nw_protocol_reset(a1, v20);
        return;
      }

LABEL_217:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      LODWORD(v109) = 12;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v109);
      type = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (!__nwlog_fault(v12, &type, &v110))
      {
        goto LABEL_287;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        v15 = "%{public}s called with null http1_stream";
        goto LABEL_285;
      }

      if (v110 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        v15 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_285;
      }

      v62 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v104 = os_log_type_enabled(v13, type);
      if (!v62)
      {
        if (!v104)
        {
          goto LABEL_287;
        }

        *buf = 136446210;
        v113 = "nw_protocol_http1_notify";
        v15 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_285;
      }

      if (v104)
      {
        goto LABEL_224;
      }

      goto LABEL_279;
    }

    if (v4 != 3)
    {
      goto LABEL_217;
    }

    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = (v8 + 488);
      goto LABEL_40;
    }

    v70 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_http1_get_stream_for_protocol";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (__nwlog_fault(v71, &type, &v110))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v72 = __nwlog_obj();
        v73 = type;
        if (!os_log_type_enabled(v72, type))
        {
          goto LABEL_215;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_stream_for_protocol";
        v74 = "%{public}s called with null handle->http1_connection";
        goto LABEL_214;
      }

      if (v110 != 1)
      {
        v72 = __nwlog_obj();
        v73 = type;
        if (!os_log_type_enabled(v72, type))
        {
          goto LABEL_215;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_stream_for_protocol";
        v74 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_214;
      }

      v85 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = type;
      v86 = os_log_type_enabled(v72, type);
      if (v85)
      {
        if (v86)
        {
          *buf = 136446466;
          v113 = "nw_http1_get_stream_for_protocol";
          v114 = 2082;
          v115 = v85;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v85);
        goto LABEL_215;
      }

      if (v86)
      {
        *buf = 136446210;
        v113 = "nw_http1_get_stream_for_protocol";
        v74 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_214:
        _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
      }
    }

LABEL_215:
    if (v71)
    {
      free(v71);
    }

    goto LABEL_217;
  }

  if (a3 != 13)
  {
    goto LABEL_31;
  }

LABEL_35:
  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_253;
    }

    v17 = *(v3 + 16);
    if (v17)
    {
      v18 = (v17 + 488);
      goto LABEL_56;
    }

    v80 = __nwlog_obj();
    *buf = 136446210;
    v113 = "nw_http1_get_stream_for_protocol";
    v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (__nwlog_fault(v81, &type, &v110))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v82 = __nwlog_obj();
        v83 = type;
        if (!os_log_type_enabled(v82, type))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_stream_for_protocol";
        v84 = "%{public}s called with null handle->http1_connection";
        goto LABEL_250;
      }

      if (v110 != 1)
      {
        v82 = __nwlog_obj();
        v83 = type;
        if (!os_log_type_enabled(v82, type))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        v113 = "nw_http1_get_stream_for_protocol";
        v84 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_250;
      }

      v100 = __nw_create_backtrace_string();
      v82 = __nwlog_obj();
      v83 = type;
      v101 = os_log_type_enabled(v82, type);
      if (v100)
      {
        if (v101)
        {
          *buf = 136446466;
          v113 = "nw_http1_get_stream_for_protocol";
          v114 = 2082;
          v115 = v100;
          _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v100);
        goto LABEL_251;
      }

      if (v101)
      {
        *buf = 136446210;
        v113 = "nw_http1_get_stream_for_protocol";
        v84 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_250:
        _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
      }
    }

LABEL_251:
    if (v81)
    {
      free(v81);
    }

LABEL_253:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v113 = "nw_protocol_http1_notify";
    LODWORD(v109) = 12;
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v109);
    type = OS_LOG_TYPE_ERROR;
    v110 = 0;
    if (!__nwlog_fault(v12, &type, &v110))
    {
      goto LABEL_287;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null http1_stream";
      goto LABEL_285;
    }

    if (v110 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_285;
    }

    v62 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v106 = os_log_type_enabled(v13, type);
    if (!v62)
    {
      if (!v106)
      {
        goto LABEL_287;
      }

      *buf = 136446210;
      v113 = "nw_protocol_http1_notify";
      v15 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_285;
    }

    if (v106)
    {
LABEL_224:
      *buf = 136446466;
      v113 = "nw_protocol_http1_notify";
      v114 = 2082;
      v115 = v62;
      v64 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_278:
      _os_log_impl(&dword_181A37000, v13, v14, v64, buf, 0x16u);
    }

LABEL_279:
    free(v62);
    if (!v12)
    {
      return;
    }

LABEL_288:
    free(v12);
    return;
  }

  v18 = (v3 + 8);
LABEL_56:
  v33 = *v18;
  if (!*v18)
  {
    goto LABEL_253;
  }

  v34 = *(v33 + 256);
  if (!v34)
  {
    if (*(v33 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v38 = *(v33 + 256);
    v39 = *(*(v33 + 248) + 372);
    if (v38)
    {
      LODWORD(v38) = *(v38 + 860);
    }

    v40 = off_1E6A33500[a3];
    v41 = *(v33 + 424);
    *buf = 136447746;
    v113 = "nw_protocol_http1_notify";
    v114 = 2082;
    v115 = (v33 + 74);
    v116 = 2080;
    v117 = " ";
    v118 = 1024;
    v119 = v39;
    v120 = 1024;
    v121 = v38;
    v122 = 1024;
    v123 = v41;
    v124 = 2080;
    v125 = v40;
    v31 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping notification type %s";
LABEL_80:
    v32 = v37;
    goto LABEL_81;
  }

  v35 = *(v34 + 32);
LABEL_69:

  nw_protocol_notify(v35, a2, a3);
}

void nw_protocol_http1_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v305 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v173 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v173, 16, "%{public}s called with null protocol", buf, 12);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v174, v304, v298))
    {
      goto LABEL_422;
    }

    if (v304[0] == 17)
    {
      v175 = __nwlog_obj();
      v176 = v304[0];
      if (!os_log_type_enabled(v175, v304[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v177 = "%{public}s called with null protocol";
    }

    else
    {
      if (v298[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v175 = __nwlog_obj();
        v176 = v304[0];
        v185 = os_log_type_enabled(v175, v304[0]);
        if (!backtrace_string)
        {
          if (!v185)
          {
            goto LABEL_422;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v177 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_421;
        }

        if (v185)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v175, v176, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_422;
      }

      v175 = __nwlog_obj();
      v176 = v304[0];
      if (!os_log_type_enabled(v175, v304[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v177 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_421;
  }

  handle = a1->handle;
  if (!handle)
  {
    v178 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v178, 16, "%{public}s called with null handle", buf, 12);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v174, v304, v298))
    {
      goto LABEL_422;
    }

    if (v304[0] != 17)
    {
      if (v298[0] != OS_LOG_TYPE_INFO)
      {
        v175 = __nwlog_obj();
        v176 = v304[0];
        if (!os_log_type_enabled(v175, v304[0]))
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v177 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_421;
      }

      v186 = __nw_create_backtrace_string();
      v175 = __nwlog_obj();
      v176 = v304[0];
      v187 = os_log_type_enabled(v175, v304[0]);
      if (!v186)
      {
        if (!v187)
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v177 = "%{public}s called with null handle, no backtrace";
        goto LABEL_421;
      }

      if (!v187)
      {
        goto LABEL_302;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v186;
      v188 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_301;
    }

    v175 = __nwlog_obj();
    v176 = v304[0];
    if (!os_log_type_enabled(v175, v304[0]))
    {
      goto LABEL_422;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v177 = "%{public}s called with null handle";
LABEL_421:
    _os_log_impl(&dword_181A37000, v175, v176, v177, buf, 0xCu);
    goto LABEL_422;
  }

  v5 = *(handle + 6);
  v6 = a1->handle;
  if (v5 == 1)
  {
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_424;
    }

    v7 = *(handle + 2);
    if (v7)
    {
      v6 = (v7 + 480);
      goto LABEL_10;
    }

    v203 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v203, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v174, v304, v298))
    {
      if (v304[0] == 17)
      {
        v175 = __nwlog_obj();
        v176 = v304[0];
        if (!os_log_type_enabled(v175, v304[0]))
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v177 = "%{public}s called with null handle->http1_connection";
        goto LABEL_421;
      }

      if (v298[0] != OS_LOG_TYPE_INFO)
      {
        v175 = __nwlog_obj();
        v176 = v304[0];
        if (!os_log_type_enabled(v175, v304[0]))
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v177 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_421;
      }

      v186 = __nw_create_backtrace_string();
      v175 = __nwlog_obj();
      v176 = v304[0];
      v211 = os_log_type_enabled(v175, v304[0]);
      if (!v186)
      {
        if (!v211)
        {
          goto LABEL_422;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v177 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_421;
      }

      if (v211)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v186;
        v188 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_301;
      }

LABEL_302:
      free(v186);
      if (!v174)
      {
LABEL_424:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_error";
        LODWORD(v291) = 12;
        v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v291);
        v304[0] = 16;
        v298[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v180, v304, v298))
        {
          goto LABEL_456;
        }

        if (v304[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v181 = gLogObj;
          v182 = v304[0];
          if (!os_log_type_enabled(gLogObj, v304[0]))
          {
            goto LABEL_456;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_error";
          v183 = "%{public}s called with null http1";
        }

        else
        {
          if (v298[0] == OS_LOG_TYPE_INFO)
          {
            v241 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v242 = gLogObj;
            v243 = v304[0];
            v244 = os_log_type_enabled(gLogObj, v304[0]);
            if (!v241)
            {
              if (!v244)
              {
                goto LABEL_456;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_error";
              v183 = "%{public}s called with null http1, no backtrace";
              goto LABEL_461;
            }

            if (v244)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_error";
              *&buf[12] = 2082;
              *&buf[14] = v241;
              _os_log_impl(&dword_181A37000, v242, v243, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v241);
LABEL_456:
            if (!v180)
            {
              return;
            }

            goto LABEL_457;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v181 = gLogObj;
          v182 = v304[0];
          if (!os_log_type_enabled(gLogObj, v304[0]))
          {
            goto LABEL_456;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_error";
          v183 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_454:
        v247 = v181;
        v248 = v182;
LABEL_455:
        _os_log_impl(&dword_181A37000, v247, v248, v183, buf, 0xCu);
        goto LABEL_456;
      }

LABEL_423:
      free(v174);
      goto LABEL_424;
    }

LABEL_422:
    if (!v174)
    {
      goto LABEL_424;
    }

    goto LABEL_423;
  }

  v8 = *(handle + 1);
  if (!v8)
  {
    v202 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v202, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v174, v304, v298))
    {
      goto LABEL_422;
    }

    if (v304[0] == 17)
    {
      v175 = __nwlog_obj();
      v176 = v304[0];
      if (!os_log_type_enabled(v175, v304[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v177 = "%{public}s called with null handle->http1_stream";
      goto LABEL_421;
    }

    if (v298[0] != OS_LOG_TYPE_INFO)
    {
      v175 = __nwlog_obj();
      v176 = v304[0];
      if (!os_log_type_enabled(v175, v304[0]))
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v177 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_421;
    }

    v186 = __nw_create_backtrace_string();
    v175 = __nwlog_obj();
    v176 = v304[0];
    v210 = os_log_type_enabled(v175, v304[0]);
    if (!v186)
    {
      if (!v210)
      {
        goto LABEL_422;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v177 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_421;
    }

    if (!v210)
    {
      goto LABEL_302;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v186;
    v188 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_301:
    _os_log_impl(&dword_181A37000, v175, v176, v188, buf, 0x16u);
    goto LABEL_302;
  }

  v6 = (v8 + 248);
LABEL_10:
  if (!*v6)
  {
    goto LABEL_424;
  }

  if (!a2)
  {
    v179 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_error";
    v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v179, 16, "%{public}s called with null other_protocol", buf, 12);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v180, v304, v298))
    {
      goto LABEL_456;
    }

    if (v304[0] == 17)
    {
      v181 = __nwlog_obj();
      v182 = v304[0];
      if (!os_log_type_enabled(v181, v304[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v183 = "%{public}s called with null other_protocol";
    }

    else if (v298[0] == OS_LOG_TYPE_INFO)
    {
      v197 = __nw_create_backtrace_string();
      v181 = __nwlog_obj();
      v182 = v304[0];
      v198 = os_log_type_enabled(v181, v304[0]);
      if (v197)
      {
        if (v198)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_error";
          *&buf[12] = 2082;
          *&buf[14] = v197;
          _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v197);
        if (!v180)
        {
          return;
        }

LABEL_457:
        free(v180);
        return;
      }

      if (!v198)
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v183 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v181 = __nwlog_obj();
      v182 = v304[0];
      if (!os_log_type_enabled(v181, v304[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v183 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_454;
  }

  if (v5 == 2)
  {
    v10 = *(handle + 1);
    if (v10)
    {
      v9 = (v10 + 256);
      goto LABEL_17;
    }

    v204 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v205 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v204, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v205, v304, v298))
    {
      if (v304[0] == 17)
      {
        v206 = __nwlog_obj();
        v207 = v304[0];
        if (!os_log_type_enabled(v206, v304[0]))
        {
          goto LABEL_440;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v208 = "%{public}s called with null handle->http1_stream";
        goto LABEL_439;
      }

      if (v298[0] != OS_LOG_TYPE_INFO)
      {
        v206 = __nwlog_obj();
        v207 = v304[0];
        if (!os_log_type_enabled(v206, v304[0]))
        {
          goto LABEL_440;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v208 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_439;
      }

      v212 = __nw_create_backtrace_string();
      v206 = __nwlog_obj();
      v207 = v304[0];
      v213 = os_log_type_enabled(v206, v304[0]);
      if (v212)
      {
        if (v213)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_connection_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v212;
          _os_log_impl(&dword_181A37000, v206, v207, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v212);
        goto LABEL_440;
      }

      if (v213)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v208 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_439:
        _os_log_impl(&dword_181A37000, v206, v207, v208, buf, 0xCu);
      }
    }

LABEL_440:
    if (v205)
    {
      free(v205);
    }

LABEL_442:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_error";
    LODWORD(v291) = 12;
    v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_connection", buf, v291);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v180, v304, v298))
    {
      goto LABEL_456;
    }

    if (v304[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v181 = gLogObj;
      v182 = v304[0];
      if (!os_log_type_enabled(gLogObj, v304[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v183 = "%{public}s called with null http1_connection";
      goto LABEL_454;
    }

    if (v298[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v181 = gLogObj;
      v182 = v304[0];
      if (!os_log_type_enabled(gLogObj, v304[0]))
      {
        goto LABEL_456;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v183 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_454;
    }

    v245 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v242 = gLogObj;
    v243 = v304[0];
    v246 = os_log_type_enabled(gLogObj, v304[0]);
    if (v245)
    {
      if (v246)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v245;
        _os_log_impl(&dword_181A37000, v242, v243, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v245);
      if (!v180)
      {
        return;
      }

      goto LABEL_457;
    }

    if (v246)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_error";
      v183 = "%{public}s called with null http1_connection, no backtrace";
LABEL_461:
      v247 = v242;
      v248 = v243;
      goto LABEL_455;
    }

    goto LABEL_456;
  }

  if (v5 != 3)
  {
    goto LABEL_442;
  }

  v9 = (handle + 16);
LABEL_17:
  v11 = *v9;
  if (!*v9)
  {
    goto LABEL_442;
  }

  if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v189 = a1;
    v190 = a2;
    v191 = __nwlog_obj();
    v192 = os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG);
    a2 = v190;
    v193 = v192;
    a1 = v189;
    if (v193)
    {
      v194 = *(v11 + 488);
      v195 = *(*(v11 + 480) + 372);
      v196 = *(v11 + 860);
      if (v194)
      {
        LODWORD(v194) = *(v194 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_protocol_http1_error";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v195;
      *&buf[38] = 1024;
      *&buf[40] = v196;
      *v303 = 1024;
      *&v303[2] = v194;
      *&v303[6] = 1024;
      *&v303[8] = a3;
      _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called with error %d", buf, 0x38u);
      a1 = v189;
      a2 = v190;
    }
  }

  if (!a3)
  {
    if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(v11 + 488);
        v19 = *(*(v11 + 480) + 372);
        v20 = *(v11 + 860);
        if (v18)
        {
          LODWORD(v18) = *(v18 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v19;
        *&buf[38] = 1024;
        *&buf[40] = v20;
        *v303 = 1024;
        *&v303[2] = v18;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> suppressing error 0", buf, 0x32u);
      }
    }

    return;
  }

  if (*(v11 + 868))
  {
    if ((*(v11 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v13 = *(v11 + 488);
        v14 = *(*(v11 + 480) + 372);
        v15 = *(v11 + 860);
        if (v13)
        {
          LODWORD(v13) = *(v13 + 424);
        }

        v16 = *(v11 + 868);
        *buf = 136448002;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v14;
        *&buf[38] = 1024;
        *&buf[40] = v15;
        *v303 = 1024;
        *&v303[2] = v13;
        *&v303[6] = 1024;
        *&v303[8] = a3;
        *&v303[12] = 1024;
        *&v303[14] = v16;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> suppressing received error: %d, connection error already set to: %d", buf, 0x3Eu);
      }
    }

    return;
  }

  *(v11 + 868) = a3;
  v295 = a1;
  v296 = a2;
  if ((*(v11 + 872) & 0x2000) != 0)
  {
    if (*(v11 + 158))
    {
      goto LABEL_112;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v58 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    v59 = *(v11 + 488);
    v60 = *(*(v11 + 480) + 372);
    v61 = *(v11 + 860);
    if (v59)
    {
      LODWORD(v59) = *(v59 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v60;
    *&buf[38] = 1024;
    *&buf[40] = v61;
    *v303 = 1024;
    *&v303[2] = v59;
    v62 = "%{public}s %{public}s%s<i%u:c%u:s%u> input already finished, returning";
LABEL_111:
    _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, v62, buf, 0x32u);
    goto LABEL_112;
  }

  *(v11 + 872) |= 0x2000u;
  if ((*(v11 + 874) & 4) != 0)
  {
    if (*(v11 + 158))
    {
      goto LABEL_112;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v58 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_112;
    }

    v63 = *(v11 + 488);
    v64 = *(*(v11 + 480) + 372);
    v65 = *(v11 + 860);
    if (v63)
    {
      LODWORD(v63) = *(v63 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v64;
    *&buf[38] = 1024;
    *&buf[40] = v65;
    *v303 = 1024;
    *&v303[2] = v63;
    v62 = "%{public}s %{public}s%s<i%u:c%u:s%u> already getting input frames, returning";
    goto LABEL_111;
  }

  v292 = a3;
  v21 = 0;
  *v298 = 0;
  v299 = v298;
  do
  {
    input_frames = nw_protocol_get_input_frames(*(v11 + 32), v11, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v298);
    v23 = *v298;
    if (!*v298)
    {
      goto LABEL_38;
    }

    v297 = v21;
    if (gLogDatapath == 1)
    {
      v56 = __nwlog_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447746;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2048;
        *&buf[24] = v298;
        *&buf[32] = 2048;
        *&buf[34] = v11 + 616;
        *&buf[42] = 1024;
        *v303 = 1;
        *&v303[4] = 1024;
        *&v303[6] = 1;
        *&v303[10] = 1024;
        *&v303[12] = 1;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
      }
    }

    v24 = 0;
    *v304 = 0;
    *&v304[8] = v304;
    do
    {
      v25 = v23;
      v26 = v23 + 32;
      v23 = *(v23 + 32);
      if (!v23 && !*(v25 + 40))
      {
        v23 = 0;
      }

      if (gLogDatapath == 1)
      {
        v31 = __nwlog_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = *(v25 + 52);
          if (v32)
          {
            v32 -= *(v25 + 56) + *(v25 + 60);
          }

          if (v23)
          {
            v33 = *(v23 + 52);
            if (v33)
            {
              v33 -= *(v23 + 56) + *(v23 + 60);
            }
          }

          else
          {
            v33 = 0;
          }

          *buf = 136447234;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 2048;
          *&buf[14] = v25;
          *&buf[22] = 1024;
          *&buf[24] = v32;
          *&buf[28] = 2048;
          *&buf[30] = v23;
          *&buf[38] = 1024;
          *&buf[40] = v33;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
        }
      }

      v27 = *(v25 + 32);
      v28 = *(v25 + 40);
      v29 = (v27 + 40);
      if (!v27)
      {
        v29 = &v299;
      }

      *v29 = v28;
      *v28 = v27;
      v30 = *&v304[8];
      *(v25 + 32) = 0;
      *(v25 + 40) = v30;
      *v30 = v25;
      *&v304[8] = v26;
      ++v24;
    }

    while (v23);
    if (v24)
    {
      if (gLogDatapath == 1)
      {
        v57 = __nwlog_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
        }
      }

      v34 = *v304;
      v35 = v24;
      if (!*v304)
      {
        goto LABEL_79;
      }

      v35 = v24;
      do
      {
        v36 = v34;
        v37 = (v34 + 32);
        v34 = *(v34 + 32);
        if (!v34 && !*(v36 + 40))
        {
          v34 = 0;
        }

        if (gLogDatapath == 1)
        {
          log = __nwlog_obj();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v42 = *(v36 + 52);
            if (v42)
            {
              v42 -= *(v36 + 56) + *(v36 + 60);
            }

            if (v34)
            {
              v43 = *(v34 + 52);
              if (v43)
              {
                v43 -= *(v34 + 56) + *(v34 + 60);
              }
            }

            else
            {
              v43 = 0;
            }

            *buf = 136447234;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v36;
            *&buf[22] = 1024;
            *&buf[24] = v42;
            *&buf[28] = 2048;
            *&buf[30] = v34;
            *&buf[38] = 1024;
            *&buf[40] = v43;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
          }
        }

        v38 = *(v36 + 32);
        v39 = *(v36 + 40);
        v40 = (v38 + 40);
        if (!v38)
        {
          v40 = &v304[8];
        }

        *v40 = v39;
        *v39 = v38;
        *v37 = 0;
        v37[1] = 0;
        v41 = *(v11 + 624);
        *(v36 + 40) = v41;
        *v41 = v36;
        *(v11 + 624) = v37;
        --v35;
      }

      while (v34);
      if (v35)
      {
LABEL_79:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v35;
        LODWORD(v291) = 18;
        v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s failed to deliver all temp frames, remaining %u frames", buf, v291);
        type = OS_LOG_TYPE_ERROR;
        v300 = 0;
        if (!__nwlog_fault(v44, &type, &v300))
        {
          goto LABEL_93;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = gLogObj;
          v46 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_93;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v35;
          v47 = v45;
          v48 = v46;
          v49 = "%{public}s failed to deliver all temp frames, remaining %u frames";
        }

        else if (v300 == 1)
        {
          v50 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v51 = gLogObj;
          loga = type;
          v52 = os_log_type_enabled(gLogObj, type);
          if (v50)
          {
            if (v52)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v35;
              *&buf[18] = 2082;
              *&buf[20] = v50;
              _os_log_impl(&dword_181A37000, v51, loga, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v50);
            goto LABEL_93;
          }

          if (!v52)
          {
LABEL_93:
            if (v44)
            {
              free(v44);
            }

            goto LABEL_36;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v35;
          v47 = v51;
          v48 = loga;
          v49 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          v54 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_93;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v35;
          v47 = v53;
          v48 = v54;
          v49 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x12u);
        goto LABEL_93;
      }
    }

LABEL_36:
    if (gLogDatapath == 1)
    {
      v55 = __nwlog_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        *&buf[18] = 2048;
        *&buf[20] = v298;
        *&buf[28] = 2048;
        *&buf[30] = v11 + 616;
        _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s moved %u frames from %p to %p", buf, 0x26u);
      }
    }

    v21 = v297;
LABEL_38:
    v21 += input_frames;
  }

  while (input_frames);
  if (gLogDatapath == 1)
  {
    v230 = __nwlog_obj();
    if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v230, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v94 = *v298;
  if (*v298)
  {
    *(*v298 + 40) = v304;
    *v304 = v94;
    *&v304[8] = v299;
    *v298 = 0;
    v299 = v298;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_21_49595;
    buf[32] = 0;
    do
    {
      v95 = *v304;
      if (!*v304)
      {
        break;
      }

      v96 = *(*v304 + 32);
      v97 = *(*v304 + 40);
      v98 = (v96 + 40);
      if (!v96)
      {
        v98 = &v304[8];
      }

      *v98 = v97;
      *v97 = v96;
      *(v95 + 32) = 0;
      *(v95 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v99 = *(v11 + 872);
  a3 = v292;
  if ((v99 & 0x6000) == 0x2000 && !*(v11 + 616))
  {
    *(v11 + 872) = v99 | 0x4000;
    if (*(v11 + 488))
    {
      if (*(v11 + 868) && llhttp_message_needs_eof(v11 + 200))
      {
        if ((v99 & 4) == 0)
        {
          v129 = 5;
          goto LABEL_226;
        }

LABEL_414:
        if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v254 = __nwlog_obj();
          if (os_log_type_enabled(v254, OS_LOG_TYPE_DEBUG))
          {
            v255 = *(v11 + 488);
            v256 = *(*(v11 + 480) + 372);
            v257 = *(v11 + 860);
            if (v255)
            {
              LODWORD(v255) = *(v255 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v11 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v256;
            *&buf[38] = 1024;
            *&buf[40] = v257;
            *v303 = 1024;
            *&v303[2] = v255;
            _os_log_impl(&dword_181A37000, v254, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> signaled eof and terminated message successfully", buf, 0x32u);
            a3 = v292;
          }
        }

        *(v11 + 874) |= 1u;
        goto LABEL_151;
      }

      v134 = llhttp_finish(v11 + 200);
      v135 = *(v11 + 872);
      if ((v135 & 4) != 0)
      {
        goto LABEL_414;
      }

      v129 = v134;
      if (!v134)
      {
        goto LABEL_414;
      }

      if (v134 != 14)
      {
        goto LABEL_226;
      }

      v136 = *(v11 + 488);
      if (v136)
      {
        v129 = 14;
        if ((v135 & 1) == 0 || (*(v136 + 428) & 2) != 0 || *(v11 + 848) || *(v11 + 852))
        {
LABEL_226:
          if ((*(v11 + 158) & 1) == 0)
          {
            v137 = __nwlog_obj();
            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              v138 = *(v11 + 488);
              if (v138)
              {
                LODWORD(v138) = *(v138 + 424);
              }

              if (v129 >= 0x24)
              {
                abort();
              }

              v139 = *(*(v11 + 480) + 372);
              v140 = *(v11 + 860);
              v141 = off_1E6A35BE0[v129];
              *buf = 136447746;
              *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v139;
              *&buf[38] = 1024;
              *&buf[40] = v140;
              *v303 = 1024;
              *&v303[2] = v138;
              *&v303[6] = 2080;
              *&v303[8] = v141;
              _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> parser eof did not terminate full message with errno: %s, deferring input error", buf, 0x3Cu);
            }
          }

          goto LABEL_151;
        }

        if (!*(v11 + 856))
        {
          if ((v135 & 2) != 0 && *(v11 + 800))
          {
            if (!*(v11 + 808))
            {
              v240 = strdup("");
              if (!v240)
              {
                v288 = __nwlog_obj();
                if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
                {
                  v289 = 3;
                }

                else
                {
                  v289 = 2;
                }

                *buf = 136446210;
                *&buf[4] = "strict_strdup";
                LODWORD(v291) = 12;
                v290 = _os_log_send_and_compose_impl(v289, 0, 0, 0, &dword_181A37000, v288, 16, "%{public}s strdup() failed", buf, v291);
                if (__nwlog_should_abort(v290))
                {
                  __break(1u);
                  return;
                }

                free(v290);
              }

              *(v11 + 808) = v240;
            }

            nw_http1_on_header_value_complete(v11 + 200);
          }

          nw_http1_on_headers_complete(v11 + 200);
          nw_http1_on_message_complete(v11 + 200);
          a3 = v292;
          goto LABEL_414;
        }

LABEL_225:
        a3 = v292;
        goto LABEL_226;
      }

      v267 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_recover_incomplete_header";
      LODWORD(v291) = 12;
      v268 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v267, 16, "%{public}s called with null http1_stream", buf, v291);
      v304[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v268, v304, &type))
      {
        if (v304[0] == 17)
        {
          v269 = __nwlog_obj();
          v270 = v304[0];
          if (os_log_type_enabled(v269, v304[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_recover_incomplete_header";
            v271 = "%{public}s called with null http1_stream";
LABEL_553:
            _os_log_impl(&dword_181A37000, v269, v270, v271, buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v281 = __nw_create_backtrace_string();
          v269 = __nwlog_obj();
          v270 = v304[0];
          v282 = os_log_type_enabled(v269, v304[0]);
          if (v281)
          {
            if (v282)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_recover_incomplete_header";
              *&buf[12] = 2082;
              *&buf[14] = v281;
              _os_log_impl(&dword_181A37000, v269, v270, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v281);
            goto LABEL_554;
          }

          if (v282)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_recover_incomplete_header";
            v271 = "%{public}s called with null http1_stream, no backtrace";
            goto LABEL_553;
          }
        }

        else
        {
          v269 = __nwlog_obj();
          v270 = v304[0];
          if (os_log_type_enabled(v269, v304[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_recover_incomplete_header";
            v271 = "%{public}s called with null http1_stream, backtrace limit exceeded";
            goto LABEL_553;
          }
        }
      }

LABEL_554:
      if (v268)
      {
        free(v268);
      }

      v129 = 14;
      goto LABEL_225;
    }

    if ((v99 & 0x100) != 0)
    {
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v165 = __nwlog_obj();
        if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
        {
          v166 = *(v11 + 488);
          v167 = *(*(v11 + 480) + 372);
          v168 = *(v11 + 860);
          if (v166)
          {
            LODWORD(v166) = *(v166 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_close";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v167;
          *&buf[38] = 1024;
          *&buf[40] = v168;
          *v303 = 1024;
          *&v303[2] = v166;
          _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
          a3 = v292;
        }
      }

      goto LABEL_151;
    }

    *(v11 + 872) = v99 | 0x4100;
    if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v263 = __nwlog_obj();
      if (os_log_type_enabled(v263, OS_LOG_TYPE_DEBUG))
      {
        v264 = *(v11 + 488);
        v265 = *(*(v11 + 480) + 372);
        v266 = *(v11 + 860);
        if (v264)
        {
          LODWORD(v264) = *(v264 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v265;
        *&buf[38] = 1024;
        *&buf[40] = v266;
        *v303 = 1024;
        *&v303[2] = v264;
        _os_log_impl(&dword_181A37000, v263, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
        a3 = v292;
      }
    }

    v142 = *(v11 + 480);
    if (!v142)
    {
      v258 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      LODWORD(v291) = 12;
      v259 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v258, 16, "%{public}s called with null http1", buf, v291);
      v304[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v259, v304, &type))
      {
        goto LABEL_563;
      }

      if (v304[0] == 17)
      {
        v260 = __nwlog_obj();
        v261 = v304[0];
        if (!os_log_type_enabled(v260, v304[0]))
        {
          goto LABEL_563;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v262 = "%{public}s called with null http1";
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v273 = __nw_create_backtrace_string();
        v260 = __nwlog_obj();
        v261 = v304[0];
        v274 = os_log_type_enabled(v260, v304[0]);
        if (v273)
        {
          if (v274)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v273;
            _os_log_impl(&dword_181A37000, v260, v261, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v273);
          goto LABEL_563;
        }

        if (!v274)
        {
          goto LABEL_563;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v262 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v260 = __nwlog_obj();
        v261 = v304[0];
        if (!os_log_type_enabled(v260, v304[0]))
        {
          goto LABEL_563;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v262 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v287 = buf;
LABEL_562:
      _os_log_impl(&dword_181A37000, v260, v261, v262, v287, 0xCu);
      goto LABEL_563;
    }

    if ((*(v11 + 872) & 0x800) != 0)
    {
      if ((*(v11 + 158) & 1) != 0 || gLogDatapath != 1 || (v169 = __nwlog_obj(), !os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG)))
      {
LABEL_379:
        if (*(v11 + 488))
        {
          goto LABEL_151;
        }

LABEL_380:
        v223 = *(v11 + 784);
        if (v223)
        {
          nw_queue_set_timer_values(v223, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          if ((*(v11 + 158) & 1) == 0)
          {
            v224 = __nwlog_obj();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
            {
              v225 = *(v11 + 488);
              v226 = *(*(v11 + 480) + 372);
              v227 = *(v11 + 860);
              if (v225)
              {
                LODWORD(v225) = *(v225 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_close";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v226;
              *&buf[38] = 1024;
              *&buf[40] = v227;
              *v303 = 1024;
              *&v303[2] = v225;
              _os_log_impl(&dword_181A37000, v224, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
              a3 = v292;
            }
          }

          v228 = *(v11 + 608);
          v229 = *(v11 + 496);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
          *&buf[24] = &unk_1E6A32780;
          *&buf[32] = v228;
          nw_queue_context_async(v229, buf);
        }

        goto LABEL_151;
      }

      v170 = *(v11 + 488);
      v171 = *(*(v11 + 480) + 372);
      v172 = *(v11 + 860);
      if (v170)
      {
        LODWORD(v170) = *(v170 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v171;
      *&buf[38] = 1024;
      *&buf[40] = v172;
      *v303 = 1024;
      *&v303[2] = v170;
      _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
      goto LABEL_565;
    }

    *(v11 + 872) |= 0x800u;
    v143 = *(v142 + 368) + 1;
    *(v142 + 368) = v143;
    if (v143 == v143 << 31 >> 31)
    {
LABEL_374:
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v275 = __nwlog_obj();
        if (os_log_type_enabled(v275, OS_LOG_TYPE_DEBUG))
        {
          v276 = *(v11 + 488);
          v277 = *(*(v11 + 480) + 372);
          v278 = *(v11 + 860);
          if (v276)
          {
            LODWORD(v276) = *(v276 + 424);
          }

          v279 = *(v142 + 368) + *(v142 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v277;
          *&buf[38] = 1024;
          *&buf[40] = v278;
          *v303 = 1024;
          *&v303[2] = v276;
          *&v303[6] = 1024;
          *&v303[8] = v279;
          _os_log_impl(&dword_181A37000, v275, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
          a3 = v292;
        }
      }

      v220 = *(v11 + 496);
      if (!v220)
      {
        v272 = __nwlog_obj();
        *v304 = 136446210;
        *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v291) = 12;
        v259 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v272, 16, "%{public}s called with null http1_connection->context", v304, v291);
        type = OS_LOG_TYPE_ERROR;
        v300 = 0;
        if (!__nwlog_fault(v259, &type, &v300))
        {
          goto LABEL_563;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v260 = __nwlog_obj();
          v261 = type;
          if (!os_log_type_enabled(v260, type))
          {
            goto LABEL_563;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v262 = "%{public}s called with null http1_connection->context";
LABEL_561:
          v287 = v304;
          goto LABEL_562;
        }

        if (v300 != 1)
        {
          v260 = __nwlog_obj();
          v261 = type;
          if (!os_log_type_enabled(v260, type))
          {
            goto LABEL_563;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v262 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_561;
        }

        v283 = __nw_create_backtrace_string();
        v260 = __nwlog_obj();
        v261 = type;
        v284 = os_log_type_enabled(v260, type);
        if (!v283)
        {
          if (!v284)
          {
            goto LABEL_563;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v262 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_561;
        }

        if (!v284)
        {
          goto LABEL_540;
        }

        *v304 = 136446466;
        *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v304[12] = 2082;
        *&v304[14] = v283;
        v285 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
        goto LABEL_539;
      }

      v221 = *(v11 + 480);
      if (v221)
      {
        v222 = *(v221 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v222;
        nw_queue_context_async(v220, buf);
        goto LABEL_379;
      }

      v280 = __nwlog_obj();
      *v304 = 136446210;
      *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v291) = 12;
      v259 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v280, 16, "%{public}s called with null http1", v304, v291);
      type = OS_LOG_TYPE_ERROR;
      v300 = 0;
      if (__nwlog_fault(v259, &type, &v300))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v260 = __nwlog_obj();
          v261 = type;
          if (!os_log_type_enabled(v260, type))
          {
            goto LABEL_563;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v262 = "%{public}s called with null http1";
          goto LABEL_561;
        }

        if (v300 != 1)
        {
          v260 = __nwlog_obj();
          v261 = type;
          if (!os_log_type_enabled(v260, type))
          {
            goto LABEL_563;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v262 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_561;
        }

        v283 = __nw_create_backtrace_string();
        v260 = __nwlog_obj();
        v261 = type;
        v286 = os_log_type_enabled(v260, type);
        if (!v283)
        {
          if (!v286)
          {
            goto LABEL_563;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v262 = "%{public}s called with null http1, no backtrace";
          goto LABEL_561;
        }

        if (!v286)
        {
          goto LABEL_540;
        }

        *v304 = 136446466;
        *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v304[12] = 2082;
        *&v304[14] = v283;
        v285 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_539:
        _os_log_impl(&dword_181A37000, v260, v261, v285, v304, 0x16u);
LABEL_540:
        free(v283);
        if (v259)
        {
LABEL_564:
          free(v259);
        }

LABEL_565:
        a3 = v292;
        if (*(v11 + 488))
        {
          goto LABEL_151;
        }

        goto LABEL_380;
      }

LABEL_563:
      if (!v259)
      {
        goto LABEL_565;
      }

      goto LABEL_564;
    }

    v144 = __nwlog_obj();
    v145 = *(v142 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v145;
    LODWORD(v291) = 42;
    v146 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v144, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v291);
    v304[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v146, v304, &type))
    {
      if (v304[0] == 17)
      {
        v147 = __nwlog_obj();
        v148 = v304[0];
        if (os_log_type_enabled(v147, v304[0]))
        {
          v149 = *(v142 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v149;
          v150 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_370:
          _os_log_impl(&dword_181A37000, v147, v148, v150, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v199 = __nw_create_backtrace_string();
        v147 = __nwlog_obj();
        v148 = v304[0];
        v200 = os_log_type_enabled(v147, v304[0]);
        if (v199)
        {
          if (v200)
          {
            v201 = *(v142 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v201;
            *&buf[42] = 2082;
            *v303 = v199;
            _os_log_impl(&dword_181A37000, v147, v148, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v199);
          a3 = v292;
          goto LABEL_371;
        }

        a3 = v292;
        if (v200)
        {
          v219 = *(v142 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v219;
          v150 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_370;
        }
      }

      else
      {
        v147 = __nwlog_obj();
        v148 = v304[0];
        if (os_log_type_enabled(v147, v304[0]))
        {
          v209 = *(v142 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v209;
          v150 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_370;
        }
      }
    }

LABEL_371:
    if (v146)
    {
      free(v146);
    }

    *(v142 + 368) = -1;
    goto LABEL_374;
  }

LABEL_151:
  v100 = *(v11 + 616);
  v101 = *(v11 + 632);
  v102 = *(v11 + 872);
  v103 = v102 & 0x204;
  if ((v102 & 0x2000) != 0)
  {
    v113 = v100 | v101;
    v114 = (v102 >> 9) & 1;
    if (v103 == 4)
    {
      v114 = 1;
    }

    if (v113)
    {
      v115 = 1;
    }

    else
    {
      v115 = v114 == 0;
    }

    if (v115)
    {
      if (v103 == 4)
      {
        goto LABEL_190;
      }

      if (v113)
      {
        goto LABEL_190;
      }

      *(v11 + 864) = 5;
      if (*(v11 + 158))
      {
        goto LABEL_190;
      }

      v104 = __nwlog_obj();
      if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_190;
      }

      v116 = *(v11 + 488);
      v117 = *(*(v11 + 480) + 372);
      v118 = *(v11 + 860);
      if (v116)
      {
        LODWORD(v116) = *(v116 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v117;
      *&buf[38] = 1024;
      *&buf[40] = v118;
      *v303 = 1024;
      *&v303[2] = v116;
      v108 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection error";
    }

    else
    {
      *(v11 + 864) = 4;
      if (*(v11 + 158))
      {
        goto LABEL_190;
      }

      v104 = __nwlog_obj();
      if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_190;
      }

      v122 = *(v11 + 488);
      v123 = *(*(v11 + 480) + 372);
      v124 = *(v11 + 860);
      if (v122)
      {
        LODWORD(v122) = *(v122 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v123;
      *&buf[38] = 1024;
      *&buf[40] = v124;
      *v303 = 1024;
      *&v303[2] = v122;
      v108 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection complete";
    }

LABEL_189:
    _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, v108, buf, 0x32u);
    goto LABEL_190;
  }

  if (v103 != 4)
  {
    if (*(v11 + 158))
    {
      goto LABEL_190;
    }

    v104 = __nwlog_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_190;
    }

    v119 = *(v11 + 488);
    v120 = *(*(v11 + 480) + 372);
    v121 = *(v11 + 860);
    if (v119)
    {
      LODWORD(v119) = *(v119 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v120;
    *&buf[38] = 1024;
    *&buf[40] = v121;
    *v303 = 1024;
    *&v303[2] = v119;
    v108 = "%{public}s %{public}s%s<i%u:c%u:s%u> no change to http1 connection state";
    goto LABEL_189;
  }

  if (v100 | v101)
  {
    if (!v100)
    {
      goto LABEL_190;
    }

    if (v101)
    {
      goto LABEL_190;
    }

    *(v11 + 864) = 3;
    if (*(v11 + 158))
    {
      goto LABEL_190;
    }

    v104 = __nwlog_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_190;
    }

    v130 = *(v11 + 488);
    v131 = *(*(v11 + 480) + 372);
    v132 = *(v11 + 860);
    if (v130)
    {
      LODWORD(v130) = *(v130 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v131;
    *&buf[38] = 1024;
    *&buf[40] = v132;
    *v303 = 1024;
    *&v303[2] = v130;
    v108 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream pending";
    goto LABEL_189;
  }

  *(v11 + 864) = 2;
  if ((*(v11 + 158) & 1) == 0)
  {
    v104 = __nwlog_obj();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      v105 = *(v11 + 488);
      v106 = *(*(v11 + 480) + 372);
      v107 = *(v11 + 860);
      if (v105)
      {
        LODWORD(v105) = *(v105 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v11 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v106;
      *&buf[38] = 1024;
      *&buf[40] = v107;
      *v303 = 1024;
      *&v303[2] = v105;
      v108 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream complete";
      goto LABEL_189;
    }
  }

LABEL_190:
  if (*(v11 + 864) == 1)
  {
    if (v21)
    {
      v125 = *(v11 + 488);
      if (v125)
      {
        nw_protocol_input_available(*(v125 + 48), v125);
      }
    }
  }

LABEL_112:
  v66 = *(v11 + 488);
  if (!v66)
  {
    if ((*(v11 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v74 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(v11 + 488);
        v76 = *(*(v11 + 480) + 372);
        v77 = *(v11 + 860);
        if (v75)
        {
          LODWORD(v75) = *(v75 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v76;
        *&buf[38] = 1024;
        *&buf[40] = v77;
        *v303 = 1024;
        *&v303[2] = v75;
        *&v303[6] = 1024;
        *&v303[8] = a3;
        v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> not passing up error %d, no stream";
        v79 = v74;
        v80 = 56;
        goto LABEL_133;
      }
    }

LABEL_134:
    if (a3 != 57)
    {
      return;
    }

LABEL_135:
    v85 = *(v11 + 480);
    if (!v85)
    {
      v214 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      LODWORD(v291) = 12;
      v215 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v214, 16, "%{public}s called with null http1", buf, v291);
      v304[0] = 16;
      v298[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v215, v304, v298))
      {
        goto LABEL_489;
      }

      if (v304[0] == 17)
      {
        v216 = __nwlog_obj();
        v217 = v304[0];
        if (!os_log_type_enabled(v216, v304[0]))
        {
          goto LABEL_489;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v218 = "%{public}s called with null http1";
      }

      else if (v298[0] == OS_LOG_TYPE_INFO)
      {
        v232 = __nw_create_backtrace_string();
        v216 = __nwlog_obj();
        v217 = v304[0];
        v233 = os_log_type_enabled(v216, v304[0]);
        if (v232)
        {
          if (v233)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v232;
            _os_log_impl(&dword_181A37000, v216, v217, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v232);
          goto LABEL_489;
        }

        if (!v233)
        {
          goto LABEL_489;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v218 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v216 = __nwlog_obj();
        v217 = v304[0];
        if (!os_log_type_enabled(v216, v304[0]))
        {
          goto LABEL_489;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v218 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v253 = buf;
LABEL_488:
      _os_log_impl(&dword_181A37000, v216, v217, v218, v253, 0xCu);
      goto LABEL_489;
    }

    if ((*(v11 + 872) & 0x800) != 0)
    {
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v109 = __nwlog_obj();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          v110 = *(v11 + 488);
          v111 = *(*(v11 + 480) + 372);
          v112 = *(v11 + 860);
          if (v110)
          {
            LODWORD(v110) = *(v110 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v111;
          *&buf[38] = 1024;
          *&buf[40] = v112;
          *v303 = 1024;
          *&v303[2] = v110;
          _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_253;
    }

    *(v11 + 872) |= 0x800u;
    v86 = *(v85 + 368) + 1;
    *(v85 + 368) = v86;
    if (v86 == v86 << 31 >> 31)
    {
LABEL_248:
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v234 = __nwlog_obj();
        if (os_log_type_enabled(v234, OS_LOG_TYPE_DEBUG))
        {
          v235 = *(v11 + 488);
          v236 = *(*(v11 + 480) + 372);
          v237 = *(v11 + 860);
          if (v235)
          {
            LODWORD(v235) = *(v235 + 424);
          }

          v238 = *(v85 + 368) + *(v85 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v236;
          *&buf[38] = 1024;
          *&buf[40] = v237;
          *v303 = 1024;
          *&v303[2] = v235;
          *&v303[6] = 1024;
          *&v303[8] = v238;
          _os_log_impl(&dword_181A37000, v234, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v152 = *(v11 + 496);
      if (!v152)
      {
        v231 = __nwlog_obj();
        *v304 = 136446210;
        *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v291) = 12;
        v215 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v231, 16, "%{public}s called with null http1_connection->context", v304, v291);
        v298[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v215, v298, &type))
        {
          goto LABEL_489;
        }

        if (v298[0] == OS_LOG_TYPE_FAULT)
        {
          v216 = __nwlog_obj();
          v217 = v298[0];
          if (!os_log_type_enabled(v216, v298[0]))
          {
            goto LABEL_489;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v218 = "%{public}s called with null http1_connection->context";
LABEL_487:
          v253 = v304;
          goto LABEL_488;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v216 = __nwlog_obj();
          v217 = v298[0];
          if (!os_log_type_enabled(v216, v298[0]))
          {
            goto LABEL_489;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v218 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_487;
        }

        v249 = __nw_create_backtrace_string();
        v216 = __nwlog_obj();
        v217 = v298[0];
        v250 = os_log_type_enabled(v216, v298[0]);
        if (!v249)
        {
          if (!v250)
          {
            goto LABEL_489;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v218 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_487;
        }

        if (v250)
        {
          *v304 = 136446466;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v304[12] = 2082;
          *&v304[14] = v249;
          v251 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_473:
          _os_log_impl(&dword_181A37000, v216, v217, v251, v304, 0x16u);
        }

LABEL_474:
        free(v249);
        if (!v215)
        {
LABEL_253:
          v155 = *(v11 + 488);
          if (v155)
          {
            if (*(v11 + 158))
            {
              goto LABEL_260;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v156 = gLogObj;
            v157 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            v155 = *(v11 + 488);
            if (v157)
            {
              v158 = *(*(v11 + 480) + 372);
              v159 = *(v11 + 860);
              if (v155)
              {
                LODWORD(v155) = *(v155 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_protocol_http1_error";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v158;
              *&buf[38] = 1024;
              *&buf[40] = v159;
              *v303 = 1024;
              *&v303[2] = v155;
              *&v303[6] = 1024;
              *&v303[8] = 57;
              _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> received %d from below, sending disconnected above", buf, 0x38u);
              v155 = *(v11 + 488);
            }

            if (v155)
            {
LABEL_260:
              v160 = *(v155 + 48);
            }

            else
            {
              v160 = 0;
            }

            nw_protocol_disconnected(v160, v295);
          }

          else if ((*(v11 + 158) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v161 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v162 = *(v11 + 488);
              v163 = *(*(v11 + 480) + 372);
              v164 = *(v11 + 860);
              if (v162)
              {
                LODWORD(v162) = *(v162 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_protocol_http1_error";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v163;
              *&buf[38] = 1024;
              *&buf[40] = v164;
              *v303 = 1024;
              *&v303[2] = v162;
              *&v303[6] = 1024;
              *&v303[8] = 57;
              _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> received %d from below, marking connection as not re-usable", buf, 0x38u);
            }
          }

          return;
        }

LABEL_490:
        free(v215);
        goto LABEL_253;
      }

      v153 = *(v11 + 480);
      if (v153)
      {
        v154 = *(v153 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v154;
        nw_queue_context_async(v152, buf);
        goto LABEL_253;
      }

      v239 = __nwlog_obj();
      *v304 = 136446210;
      *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v291) = 12;
      v215 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v239, 16, "%{public}s called with null http1", v304, v291);
      v298[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v215, v298, &type))
      {
        if (v298[0] == OS_LOG_TYPE_FAULT)
        {
          v216 = __nwlog_obj();
          v217 = v298[0];
          if (!os_log_type_enabled(v216, v298[0]))
          {
            goto LABEL_489;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v218 = "%{public}s called with null http1";
          goto LABEL_487;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v216 = __nwlog_obj();
          v217 = v298[0];
          if (!os_log_type_enabled(v216, v298[0]))
          {
            goto LABEL_489;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v218 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_487;
        }

        v249 = __nw_create_backtrace_string();
        v216 = __nwlog_obj();
        v217 = v298[0];
        v252 = os_log_type_enabled(v216, v298[0]);
        if (!v249)
        {
          if (!v252)
          {
            goto LABEL_489;
          }

          *v304 = 136446210;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v218 = "%{public}s called with null http1, no backtrace";
          goto LABEL_487;
        }

        if (v252)
        {
          *v304 = 136446466;
          *&v304[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v304[12] = 2082;
          *&v304[14] = v249;
          v251 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_473;
        }

        goto LABEL_474;
      }

LABEL_489:
      if (!v215)
      {
        goto LABEL_253;
      }

      goto LABEL_490;
    }

    v87 = __nwlog_obj();
    v88 = *(v85 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v88;
    LODWORD(v291) = 42;
    v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v291);
    v304[0] = 16;
    v298[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v89, v304, v298))
    {
      if (v304[0] == 17)
      {
        v90 = __nwlog_obj();
        v91 = v304[0];
        if (os_log_type_enabled(v90, v304[0]))
        {
          v92 = *(v85 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v92;
          v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_244:
          _os_log_impl(&dword_181A37000, v90, v91, v93, buf, 0x2Au);
        }
      }

      else if (v298[0] == OS_LOG_TYPE_INFO)
      {
        v126 = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v91 = v304[0];
        v127 = os_log_type_enabled(v90, v304[0]);
        if (v126)
        {
          if (v127)
          {
            v128 = *(v85 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v128;
            *&buf[42] = 2082;
            *v303 = v126;
            _os_log_impl(&dword_181A37000, v90, v91, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v126);
          goto LABEL_245;
        }

        if (v127)
        {
          v151 = *(v85 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v151;
          v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_244;
        }
      }

      else
      {
        v90 = __nwlog_obj();
        v91 = v304[0];
        if (os_log_type_enabled(v90, v304[0]))
        {
          v133 = *(v85 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v133;
          v93 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_244;
        }
      }
    }

LABEL_245:
    if (v89)
    {
      free(v89);
    }

    *(v85 + 368) = -1;
    goto LABEL_248;
  }

  if (*(v11 + 874))
  {
    v67 = *(v11 + 158);
    goto LABEL_128;
  }

  v67 = *(v11 + 158);
  if ((*(v11 + 872) & 4) != 0)
  {
LABEL_128:
    if ((v67 & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v81 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v82 = *(v11 + 488);
        v83 = *(*(v11 + 480) + 372);
        v84 = *(v11 + 860);
        if (v82)
        {
          LODWORD(v82) = *(v82 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_protocol_http1_error";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v83;
        *&buf[38] = 1024;
        *&buf[40] = v84;
        *v303 = 1024;
        *&v303[2] = v82;
        v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> not passing up error because stream finished";
        v79 = v81;
        v80 = 50;
LABEL_133:
        _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, v78, buf, v80);
        goto LABEL_134;
      }
    }

    goto LABEL_134;
  }

  if (*(v11 + 158))
  {
    v72 = v296;
    goto LABEL_121;
  }

  v68 = __nwlog_obj();
  v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG);
  v66 = *(v11 + 488);
  if (v69)
  {
    v70 = *(*(v11 + 480) + 372);
    v71 = *(v11 + 860);
    if (v66)
    {
      LODWORD(v66) = *(v66 + 424);
    }

    *buf = 136447746;
    *&buf[4] = "nw_protocol_http1_error";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v70;
    *&buf[38] = 1024;
    *&buf[40] = v71;
    *v303 = 1024;
    *&v303[2] = v66;
    *&v303[6] = 1024;
    *&v303[8] = a3;
    _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> passing up error: %d", buf, 0x38u);
    v66 = *(v11 + 488);
  }

  v72 = v296;
  if (v66)
  {
LABEL_121:
    v73 = *(v66 + 48);
  }

  else
  {
    v73 = 0;
  }

  nw_protocol_error(v73, v72);
  if (a3 == 57)
  {
    goto LABEL_135;
  }
}

uint64_t nw_http1_on_header_value_complete(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_on_header_value_complete";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null parser", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v29, &type, &v42))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v45 = "nw_http1_on_header_value_complete";
          v32 = "%{public}s called with null parser, backtrace limit exceeded";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = type;
      v37 = os_log_type_enabled(v30, type);
      if (!backtrace_string)
      {
        if (v37)
        {
          *buf = 136446210;
          v45 = "nw_http1_on_header_value_complete";
          v32 = "%{public}s called with null parser, no backtrace";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (!v37)
      {
        goto LABEL_74;
      }

      *buf = 136446466;
      v45 = "nw_http1_on_header_value_complete";
      v46 = 2082;
      v47 = backtrace_string;
      v38 = "%{public}s called with null parser, dumping backtrace:%{public}s";
      goto LABEL_73;
    }

    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v45 = "nw_http1_on_header_value_complete";
    v32 = "%{public}s called with null parser";
LABEL_91:
    _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
    goto LABEL_92;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_on_header_value_complete";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v29, &type, &v42))
    {
      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v45 = "nw_http1_on_header_value_complete";
          v32 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = type;
      v39 = os_log_type_enabled(v30, type);
      if (!backtrace_string)
      {
        if (v39)
        {
          *buf = 136446210;
          v45 = "nw_http1_on_header_value_complete";
          v32 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (!v39)
      {
        goto LABEL_74;
      }

      *buf = 136446466;
      v45 = "nw_http1_on_header_value_complete";
      v46 = 2082;
      v47 = backtrace_string;
      v38 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_73;
    }

    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    v45 = "nw_http1_on_header_value_complete";
    v32 = "%{public}s called with null http1_connection";
    goto LABEL_91;
  }

  v2 = *(v1 + 488);
  if (!v2)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_on_header_value_complete";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v29, &type, &v42))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      v45 = "nw_http1_on_header_value_complete";
      v32 = "%{public}s called with null http1_stream";
      goto LABEL_91;
    }

    if (v42 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v45 = "nw_http1_on_header_value_complete";
        v32 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v40 = os_log_type_enabled(v30, type);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        v45 = "nw_http1_on_header_value_complete";
        v32 = "%{public}s called with null http1_stream, no backtrace";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (!v40)
    {
      goto LABEL_74;
    }

    *buf = 136446466;
    v45 = "nw_http1_on_header_value_complete";
    v46 = 2082;
    v47 = backtrace_string;
    v38 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_73:
    _os_log_impl(&dword_181A37000, v30, v31, v38, buf, 0x16u);
    goto LABEL_74;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_http1_on_header_value_complete";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null parsed_fields", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v29, &type, &v42))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v45 = "nw_http1_on_header_value_complete";
        v32 = "%{public}s called with null parsed_fields";
        goto LABEL_91;
      }

LABEL_92:
      if (v29)
      {
        free(v29);
      }

      return 0xFFFFFFFFLL;
    }

    if (v42 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v45 = "nw_http1_on_header_value_complete";
        v32 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v41 = os_log_type_enabled(v30, type);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446210;
        v45 = "nw_http1_on_header_value_complete";
        v32 = "%{public}s called with null parsed_fields, no backtrace";
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (v41)
    {
      *buf = 136446466;
      v45 = "nw_http1_on_header_value_complete";
      v46 = 2082;
      v47 = backtrace_string;
      v38 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
      goto LABEL_73;
    }

LABEL_74:
    free(backtrace_string);
    goto LABEL_92;
  }

  v4 = *(v1 + 808);
  v5 = *(v1 + 844);
  if (v5)
  {
    v6 = &v4[v5];
    while (1)
    {
      v7 = *v4;
      if (v7 != 32 && v7 != 9)
      {
        break;
      }

      ++v4;
      LODWORD(v5) = v5 - 1;
      if (!v5)
      {
        v9 = 0;
        v4 = v6;
        goto LABEL_23;
      }
    }

    while (1)
    {
      v10 = (v5 - 1);
      v11 = v4[v10];
      if (v11 != 32 && v11 != 9)
      {
        break;
      }

      LODWORD(v5) = v5 - 1;
      if (!v10)
      {
        LODWORD(v5) = 0;
        break;
      }
    }

    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

LABEL_23:
  v13 = *(v1 + 840);
  if ((*(*(v1 + 480) + 376) & 1) != 0 && v13 == 4 && !strncasecmp(*(v1 + 800), "Host", v13))
  {
    v14 = ":authority";
    v15 = v3;
    v16 = -1;
  }

  else
  {
    v14 = *(v1 + 800);
    v15 = v3;
    v16 = v13;
  }

  if ((nw_http_parsed_fields_add(v15, v14, v16, v4, v9, 0) & 1) == 0)
  {
    if (*(v1 + 840))
    {
      if (*(v1 + 844))
      {
        if ((*(v1 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v18 = *(v1 + 488);
            v19 = *(*(v1 + 480) + 372);
            v20 = *(v1 + 860);
            if (v18)
            {
              LODWORD(v18) = *(v18 + 424);
            }

            v21 = *(v1 + 840);
            v22 = *(v1 + 800);
            v23 = *(v1 + 844);
            v24 = *(v1 + 808);
            *buf = 136448515;
            v45 = "nw_http1_on_header_value_complete";
            v46 = 2082;
            v47 = (v1 + 74);
            v48 = 2080;
            v49 = " ";
            v50 = 1024;
            v51 = v19;
            v52 = 1024;
            v53 = v20;
            v54 = 1024;
            v55 = v18;
            v56 = 1040;
            v57 = v21;
            v58 = 2085;
            v59 = v22;
            v60 = 1040;
            v61 = v23;
            v62 = 2085;
            v63 = v24;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> discarded invalid header %{sensitive}.*s with value %{sensitive}.*s", buf, 0x52u);
          }
        }
      }
    }
  }

  v25 = *(v1 + 800);
  if (v25)
  {
    free(v25);
    *(v1 + 800) = 0;
  }

  *(v1 + 840) = 0;
  v26 = *(v1 + 808);
  if (v26)
  {
    free(v26);
    *(v1 + 808) = 0;
  }

  result = 0;
  *(v1 + 844) = 0;
  return result;
}

uint64_t nw_http1_on_headers_complete(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v60 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null parser", applier, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v85[0]) = 0;
    if (!__nwlog_fault(v61, type, v85))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null parser";
      goto LABEL_149;
    }

    if (LOBYTE(v85[0]) != 1)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null parser, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type[0];
    v69 = os_log_type_enabled(v62, type[0]);
    if (!backtrace_string)
    {
      if (!v69)
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null parser, no backtrace";
      goto LABEL_149;
    }

    if (!v69)
    {
      goto LABEL_127;
    }

    *applier = 136446466;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v70 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_126:
    _os_log_impl(&dword_181A37000, v62, v63, v70, applier, 0x16u);
    goto LABEL_127;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v65 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null http1_connection", applier, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v85[0]) = 0;
    if (!__nwlog_fault(v61, type, v85))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null http1_connection";
      goto LABEL_149;
    }

    if (LOBYTE(v85[0]) != 1)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type[0];
    v71 = os_log_type_enabled(v62, type[0]);
    if (!backtrace_string)
    {
      if (!v71)
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_149;
    }

    if (!v71)
    {
      goto LABEL_127;
    }

    *applier = 136446466;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v70 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
    goto LABEL_126;
  }

  v2 = *(v1 + 488);
  if (!v2)
  {
    v66 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null http1_stream", applier, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v85[0]) = 0;
    if (!__nwlog_fault(v61, type, v85))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null http1_stream";
      goto LABEL_149;
    }

    if (LOBYTE(v85[0]) != 1)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type[0];
    v72 = os_log_type_enabled(v62, type[0]);
    if (!backtrace_string)
    {
      if (!v72)
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_149;
    }

    if (!v72)
    {
      goto LABEL_127;
    }

    *applier = 136446466;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = backtrace_string;
    v70 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
    goto LABEL_126;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    v67 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null parsed_fields", applier, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v85[0]) = 0;
    if (!__nwlog_fault(v61, type, v85))
    {
      goto LABEL_150;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null parsed_fields";
      goto LABEL_149;
    }

    if (LOBYTE(v85[0]) != 1)
    {
      v62 = __nwlog_obj();
      v63 = type[0];
      if (!os_log_type_enabled(v62, type[0]))
      {
        goto LABEL_150;
      }

      *applier = 136446210;
      *&applier[4] = "nw_http1_on_headers_complete";
      v64 = "%{public}s called with null parsed_fields, backtrace limit exceeded";
      goto LABEL_149;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type[0];
    v73 = os_log_type_enabled(v62, type[0]);
    if (backtrace_string)
    {
      if (v73)
      {
        *applier = 136446466;
        *&applier[4] = "nw_http1_on_headers_complete";
        *&applier[12] = 2082;
        *&applier[14] = backtrace_string;
        v70 = "%{public}s called with null parsed_fields, dumping backtrace:%{public}s";
        goto LABEL_126;
      }

LABEL_127:
      free(backtrace_string);
      goto LABEL_150;
    }

    if (!v73)
    {
      goto LABEL_150;
    }

    *applier = 136446210;
    *&applier[4] = "nw_http1_on_headers_complete";
    v64 = "%{public}s called with null parsed_fields, no backtrace";
LABEL_149:
    _os_log_impl(&dword_181A37000, v62, v63, v64, applier, 0xCu);
LABEL_150:
    if (v61)
    {
      free(v61);
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 74) && *(a1 + 75))
  {
    v4 = *(a1 + 82);
    if ((v4 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    if (*(v1 + 158))
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v4 = *(a1 + 82);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (*(a1 + 72) == 1 || (v10 = *(a1 + 84), (v10 - 100) < 0x64) || v10 == 204 || v10 == 304 || (v4 & 0x40) != 0)
  {
    if (*(v1 + 158))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v4 & 0x208) == 0x200)
  {
    goto LABEL_10;
  }

  if ((v4 & 0x28) != 0)
  {
    if (*(v1 + 158))
    {
      goto LABEL_27;
    }

LABEL_26:
    if (gLogDatapath == 1)
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v74 = *(v1 + 488);
        v75 = *(*(v1 + 480) + 372);
        v76 = *(v1 + 860);
        if (v74)
        {
          LODWORD(v74) = *(v74 + 424);
        }

        *applier = 136447490;
        *&applier[4] = "nw_http1_on_headers_complete";
        *&applier[12] = 2082;
        *&applier[14] = v1 + 74;
        *&applier[22] = 2080;
        v97 = " ";
        LOWORD(v98) = 1024;
        *(&v98 + 2) = v75;
        HIWORD(v98) = 1024;
        LODWORD(v99) = v76;
        WORD2(v99) = 1024;
        *(&v99 + 6) = v74;
        v9 = "%{public}s %{public}s%s<i%u:c%u:s%u> http (headers) should keep alive";
LABEL_132:
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, v9, applier, 0x32u);
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  if (*(v1 + 158))
  {
    goto LABEL_27;
  }

LABEL_11:
  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(v1 + 488);
      v7 = *(*(v1 + 480) + 372);
      v8 = *(v1 + 860);
      if (v6)
      {
        LODWORD(v6) = *(v6 + 424);
      }

      *applier = 136447490;
      *&applier[4] = "nw_http1_on_headers_complete";
      *&applier[12] = 2082;
      *&applier[14] = v1 + 74;
      *&applier[22] = 2080;
      v97 = " ";
      LOWORD(v98) = 1024;
      *(&v98 + 2) = v7;
      HIWORD(v98) = 1024;
      LODWORD(v99) = v8;
      WORD2(v99) = 1024;
      *(&v99 + 6) = v6;
      v9 = "%{public}s %{public}s%s<i%u:c%u:s%u> http (headers) should not keep alive";
      goto LABEL_132;
    }
  }

LABEL_27:
  v11 = *(*(v2 + 248) + 376);
  v12 = v3;
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    _nw_http_parsed_fields_copy_response(v12);
    v15 = v14;

    if (v15)
    {
      v16 = v15;
      status_code = _nw_http_response_get_status_code(v16);

      if (*(v2 + 416))
      {
        v18 = v16;
        _nw_http_response_set_reason_phrase();

        v19 = *(v2 + 416);
        if (v19)
        {
          free(v19);
          *(v2 + 416) = 0;
        }
      }

      if ((*(*(v2 + 248) + 376) & 8) != 0)
      {
        v20 = nw_http_metadata_copy_request(*(v2 + 384));
        if (status_code == 101)
        {
          if (v20)
          {
            v21 = v20;
            v22 = v20;
            v23 = _nw_http_fields_copy_value_by_name();

            if (v23)
            {
              v84 = 0;
              v24 = asprintf(&v84, "%s%s", v23, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
              free(v23);
              if (v24 != -1)
              {
                *md = 0;
                v94 = 0;
                v95 = 0;
                CC_SHA1(v84, v24, md);
                if (v84)
                {
                  free(v84);
                  v84 = 0;
                }

                v25 = dispatch_data_create(md, 0x14uLL, 0, *MEMORY[0x1E69E9658]);
                v26 = dispatch_data_create_with_transform();
                *__s1 = 0;
                v91 = 0;
                memset(v92, 0, sizeof(v92));
                *type = 0;
                v87 = type;
                v88 = 0x2000000000;
                v89 = 0;
                v85[0] = 0;
                v85[1] = v85;
                v85[2] = 0x2000000000;
                v85[3] = __s1;
                if (v26)
                {
                  *applier = MEMORY[0x1E69E9820];
                  *&applier[8] = 0x40000000;
                  *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
                  v97 = &unk_1E6A34348;
                  *&v99 = v85;
                  *(&v99 + 1) = 28;
                  v98 = type;
                  v27 = v26;
                  dispatch_data_apply(v26, applier);
                  _Block_object_dispose(v85, 8);
                  _Block_object_dispose(type, 8);
                  dispatch_release(v27);
                }

                else
                {
                  _Block_object_dispose(v85, 8);
                  _Block_object_dispose(type, 8);
                }

                if (v25)
                {
                  dispatch_release(v25);
                }

                v57 = v16;
                v58 = _nw_http_fields_copy_value_by_name();

                if (!v58)
                {
                  goto LABEL_88;
                }

                v59 = strcmp(__s1, v58);
                free(v58);
                v20 = v21;
                if (v59)
                {
                  goto LABEL_88;
                }

                goto LABEL_59;
              }

              if ((*(v1 + 158) & 1) != 0 || (v49 = __nwlog_obj(), !os_log_type_enabled(v49, OS_LOG_TYPE_ERROR)))
              {
LABEL_88:
                os_release(v22);
LABEL_89:
                os_release(v16);
                return 0xFFFFFFFFLL;
              }

              v54 = *(v1 + 488);
              v55 = *(*(v1 + 480) + 372);
              v56 = *(v1 + 860);
              if (v54)
              {
                LODWORD(v54) = *(v54 + 424);
              }

              *applier = 136447490;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              *&applier[12] = 2082;
              *&applier[14] = v1 + 74;
              *&applier[22] = 2080;
              v97 = " ";
              LOWORD(v98) = 1024;
              *(&v98 + 2) = v55;
              HIWORD(v98) = 1024;
              LODWORD(v99) = v56;
              WORD2(v99) = 1024;
              *(&v99 + 6) = v54;
              v53 = "%{public}s %{public}s%s<i%u:c%u:s%u> failed to concatenate client key";
            }

            else
            {
              if (*(v1 + 158))
              {
                goto LABEL_88;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v49 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              v50 = *(v1 + 488);
              v51 = *(*(v1 + 480) + 372);
              v52 = *(v1 + 860);
              if (v50)
              {
                LODWORD(v50) = *(v50 + 424);
              }

              *applier = 136447490;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              *&applier[12] = 2082;
              *&applier[14] = v1 + 74;
              *&applier[22] = 2080;
              v97 = " ";
              LOWORD(v98) = 1024;
              *(&v98 + 2) = v51;
              HIWORD(v98) = 1024;
              LODWORD(v99) = v52;
              WORD2(v99) = 1024;
              *(&v99 + 6) = v50;
              v53 = "%{public}s %{public}s%s<i%u:c%u:s%u> missing expected request header sec_websocket_key";
            }

            _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, v53, applier, 0x32u);
            goto LABEL_88;
          }

          v77 = __nwlog_obj();
          *applier = 136446210;
          *&applier[4] = "nw_http1_verify_sec_websocket_accept";
          v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null request", applier, 12);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v85[0]) = 0;
          if (__nwlog_fault(v78, type, v85))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v79 = __nwlog_obj();
              v80 = type[0];
              if (!os_log_type_enabled(v79, type[0]))
              {
                goto LABEL_166;
              }

              *applier = 136446210;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              v81 = "%{public}s called with null request";
              goto LABEL_165;
            }

            if (LOBYTE(v85[0]) != 1)
            {
              v79 = __nwlog_obj();
              v80 = type[0];
              if (!os_log_type_enabled(v79, type[0]))
              {
                goto LABEL_166;
              }

              *applier = 136446210;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              v81 = "%{public}s called with null request, backtrace limit exceeded";
              goto LABEL_165;
            }

            v82 = __nw_create_backtrace_string();
            v79 = __nwlog_obj();
            v80 = type[0];
            v83 = os_log_type_enabled(v79, type[0]);
            if (v82)
            {
              if (v83)
              {
                *applier = 136446466;
                *&applier[4] = "nw_http1_verify_sec_websocket_accept";
                *&applier[12] = 2082;
                *&applier[14] = v82;
                _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null request, dumping backtrace:%{public}s", applier, 0x16u);
              }

              free(v82);
              goto LABEL_166;
            }

            if (v83)
            {
              *applier = 136446210;
              *&applier[4] = "nw_http1_verify_sec_websocket_accept";
              v81 = "%{public}s called with null request, no backtrace";
LABEL_165:
              _os_log_impl(&dword_181A37000, v79, v80, v81, applier, 0xCu);
            }
          }

LABEL_166:
          if (v78)
          {
            free(v78);
          }

          goto LABEL_89;
        }

        if (v20)
        {
LABEL_59:
          os_release(v20);
        }
      }

      metadata_for_response = nw_http_create_metadata_for_response(v16);
      v42 = *(v2 + 376);
      if ((v42 & 1) != 0 && *(v2 + 368))
      {
        v43 = metadata_for_response;
        os_release(*(v2 + 368));
        metadata_for_response = v43;
        v42 = *(v2 + 376);
      }

      *(v2 + 368) = metadata_for_response;
      *(v2 + 376) = v42 | 1;
      os_release(v16);
      nw_http_metadata_set_version(*(v2 + 368), 3);
      if ((status_code - 100) <= 0x63 && status_code != 101)
      {
        goto LABEL_65;
      }

      goto LABEL_46;
    }

    if (*(v1 + 158))
    {
      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v34 = *(v1 + 488);
    v35 = *(*(v1 + 480) + 372);
    v36 = *(v1 + 860);
    if (v34)
    {
      LODWORD(v34) = *(v34 + 424);
    }

    *applier = 136447490;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = v1 + 74;
    *&applier[22] = 2080;
    v97 = " ";
    LOWORD(v98) = 1024;
    *(&v98 + 2) = v35;
    HIWORD(v98) = 1024;
    LODWORD(v99) = v36;
    WORD2(v99) = 1024;
    *(&v99 + 6) = v34;
    v37 = "%{public}s %{public}s%s<i%u:c%u:s%u> invalid response received";
LABEL_57:
    _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, v37, applier, 0x32u);
    return 0xFFFFFFFFLL;
  }

  _nw_http_parsed_fields_copy_request(v12);
  v29 = v28;

  if (!v29)
  {
    if (*(v1 + 158))
    {
      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    v38 = *(v1 + 488);
    v39 = *(*(v1 + 480) + 372);
    v40 = *(v1 + 860);
    if (v38)
    {
      LODWORD(v38) = *(v38 + 424);
    }

    *applier = 136447490;
    *&applier[4] = "nw_http1_on_headers_complete";
    *&applier[12] = 2082;
    *&applier[14] = v1 + 74;
    *&applier[22] = 2080;
    v97 = " ";
    LOWORD(v98) = 1024;
    *(&v98 + 2) = v39;
    HIWORD(v98) = 1024;
    LODWORD(v99) = v40;
    WORD2(v99) = 1024;
    *(&v99 + 6) = v38;
    v37 = "%{public}s %{public}s%s<i%u:c%u:s%u> invalid request received";
    goto LABEL_57;
  }

  metadata_for_request = nw_http_create_metadata_for_request(v29);
  v31 = *(v2 + 376);
  if ((v31 & 1) != 0 && *(v2 + 368))
  {
    v32 = metadata_for_request;
    os_release(*(v2 + 368));
    metadata_for_request = v32;
    v31 = *(v2 + 376);
  }

  *(v2 + 368) = metadata_for_request;
  *(v2 + 376) = v31 | 1;
  os_release(v29);
  nw_http_metadata_set_version(*(v2 + 368), 3);
LABEL_46:
  *(v2 + 428) |= 2u;
LABEL_65:
  nw_http_transaction_metadata_set_inbound_message(*(v2 + 352), *(v2 + 368), v2 + 74);
  if (*(*(v2 + 248) + 376))
  {
    return 21;
  }

  v44 = *(v2 + 384);
  if (!v44)
  {
    return 21;
  }

  v45 = nw_http_metadata_copy_request(v44);
  result = 21;
  if (v45)
  {
    v47 = v45;
    has_method = _nw_http_request_has_method(v47, "HEAD");

    os_release(v47);
    if (has_method)
    {
      return 1;
    }

    else
    {
      return 21;
    }
  }

  return result;
}

uint64_t nw_http1_on_message_complete(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(v2 + 488);
          v17 = *(*(v2 + 480) + 372);
          v18 = *(v2 + 860);
          if (v16)
          {
            LODWORD(v16) = *(v16 + 424);
          }

          *buf = 136447490;
          v31 = "nw_http1_on_message_complete";
          v32 = 2082;
          v33 = (v2 + 74);
          v34 = 2080;
          v35 = " ";
          v36 = 1024;
          v37 = v17;
          v38 = 1024;
          v39 = v18;
          v40 = 1024;
          v41 = v16;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> message is complete", buf, 0x32u);
        }
      }

      v3 = nw_http_parsed_fields_copy_trailer_fields(*(*(v2 + 488) + 400));
      if (nw_http_fields_get_count(v3))
      {
        if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v19 = __nwlog_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(v2 + 488);
            v21 = *(*(v2 + 480) + 372);
            v22 = *(v2 + 860);
            if (v20)
            {
              LODWORD(v20) = *(v20 + 424);
            }

            *buf = 136447490;
            v31 = "nw_http1_on_message_complete";
            v32 = 2082;
            v33 = (v2 + 74);
            v34 = 2080;
            v35 = " ";
            v36 = 1024;
            v37 = v21;
            v38 = 1024;
            v39 = v22;
            v40 = 1024;
            v41 = v20;
            _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> received trailer fields", buf, 0x32u);
          }
        }

        nw_http_metadata_set_trailer_fields(*(*(v2 + 488) + 368), v3);
      }

      *(v2 + 872) |= 4u;
      if (*(a1 + 74) && *(a1 + 75))
      {
        v4 = *(a1 + 82);
        if ((v4 & 2) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = *(a1 + 82);
        if ((v4 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (*(a1 + 72) == 1 || (v6 = *(a1 + 84), (v6 - 100) < 0x64) || v6 == 204 || v6 == 304 || (v4 & 0x40) != 0)
      {
        if (gLogDatapath)
        {
          goto LABEL_60;
        }

        goto LABEL_26;
      }

      if ((v4 & 0x208) != 0x200)
      {
        if ((v4 & 0x28) != 0)
        {
          if (gLogDatapath)
          {
LABEL_60:
            v27 = __nwlog_obj();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              v31 = "nw_http1_on_message_complete";
              _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s http should keep alive", buf, 0xCu);
            }
          }

LABEL_26:
          v5 = *(v2 + 872) | 8;
          goto LABEL_27;
        }

        if (gLogDatapath)
        {
          goto LABEL_32;
        }

        goto LABEL_15;
      }

LABEL_14:
      if (gLogDatapath)
      {
LABEL_32:
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v31 = "nw_http1_on_message_complete";
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s http should not keep alive", buf, 0xCu);
        }
      }

LABEL_15:
      v5 = *(v2 + 872) & 0xFFF7;
LABEL_27:
      *(v2 + 872) = v5;
      nw_http_transaction_metadata_mark_inbound_message_end(*(*(v2 + 488) + 352));
      if (v3)
      {
        os_release(v3);
      }

      return 0;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_http1_on_message_complete";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_http1_on_message_complete";
        v13 = "%{public}s called with null http1_connection";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_http1_on_message_complete";
        v13 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v26 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v31 = "nw_http1_on_message_complete";
        v13 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v26)
    {
      *buf = 136446466;
      v31 = "nw_http1_on_message_complete";
      v32 = 2082;
      v33 = backtrace_string;
      v25 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_http1_on_message_complete";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null parser", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v10, &type, &v28))
  {
    goto LABEL_71;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_http1_on_message_complete";
        v13 = "%{public}s called with null parser, backtrace limit exceeded";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v24 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v31 = "nw_http1_on_message_complete";
        v13 = "%{public}s called with null parser, no backtrace";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_http1_on_message_complete";
      v32 = 2082;
      v33 = backtrace_string;
      v25 = "%{public}s called with null parser, dumping backtrace:%{public}s";
LABEL_58:
      _os_log_impl(&dword_181A37000, v11, v12, v25, buf, 0x16u);
    }

LABEL_59:
    free(backtrace_string);
    goto LABEL_71;
  }

  v11 = __nwlog_obj();
  v12 = type;
  if (os_log_type_enabled(v11, type))
  {
    *buf = 136446210;
    v31 = "nw_http1_on_message_complete";
    v13 = "%{public}s called with null parser";
LABEL_70:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
  }

LABEL_71:
  if (v10)
  {
    free(v10);
  }

  return 0xFFFFFFFFLL;
}

void ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke(uint64_t a1)
{
  v747 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    return;
  }

  v3 = v1;
  v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  v724 = v1;
  if ((*(v1 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v286 = __nwlog_obj();
    v287 = os_log_type_enabled(v286, OS_LOG_TYPE_DEBUG);
    v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v3 = v724;
    if (v287)
    {
      v288 = *(v724 + 372);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream_async_block_invoke";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v724 + 74;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v288;
      _os_log_impl(&dword_181A37000, v286, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> space opened in connection pool, checking for pending streams", buf, 0x26u);
      v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v3 = v724;
    }
  }

  v5 = *(v3 + 248);
  if (!v5)
  {
    if (*(v3 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v28 = *(v724 + 372);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v724 + 74;
    HIWORD(buf[2]) = 2080;
    v745 = " ";
    *v746 = 1024;
    *&v746[2] = v28;
    v27 = "%{public}s %{public}s%s<i%u> no pending streams, nothing to do";
LABEL_40:
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, v27, buf, 0x26u);
    return;
  }

  v723 = *(v3 + 248);
  if ((*(v5 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v407 = __nwlog_obj();
    v408 = os_log_type_enabled(v407, OS_LOG_TYPE_DEBUG);
    v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v3 = v724;
    if (v408)
    {
      v409 = v5 + 74;
      v410 = *(v5 + 256);
      v411 = *(*(v5 + 248) + 372);
      if (v410)
      {
        LODWORD(v410) = *(v410 + 860);
      }

      v5 = v723;
      v412 = *(v723 + 424);
      LODWORD(buf[0]) = 136448002;
      *(buf + 4) = "nw_http1_get_next_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v409;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v411;
      *&v746[6] = 1024;
      *&v746[8] = v410;
      *&v746[12] = 1024;
      *&v746[14] = v412;
      *&v746[18] = 1024;
      *&v746[20] = v412;
      *&v746[24] = 2048;
      *&v746[26] = v723;
      _os_log_impl(&dword_181A37000, v407, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> found stream %u (%p)", buf, 0x42u);
      v3 = v724;
      v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    }
  }

  v6 = *(v3 + 208);
  if (v6)
  {
    v7 = 0;
    v8 = v3 + 74;
    *&v2 = 136447234;
    do
    {
      v9 = v6;
      v6 = *(v6 + 592);
      if ((*(v9 + 872) & 0x800) == 0)
      {
        if ((*(v3 + 158) & 1) != 0 || BYTE1(v4[82].isa) != 1)
        {
          v7 = v9;
        }

        else
        {
          v717 = v8;
          v719 = v2;
          v10 = __nwlog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = *(v724 + 372);
            LODWORD(buf[0]) = v719;
            *(buf + 4) = "nw_http1_get_next_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v717;
            HIWORD(buf[2]) = 2080;
            v745 = " ";
            *v746 = 1024;
            *&v746[2] = v11;
            *&v746[6] = 2048;
            *&v746[8] = v9;
            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> found idle connection connection %p", buf, 0x30u);
            v8 = v717;
            v2 = v719;
            v3 = v724;
            v7 = v9;
            v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

          else
          {
            v7 = v9;
            v3 = v724;
            v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            v2 = v719;
            v8 = v717;
          }
        }
      }
    }

    while (v6);
    v5 = v723;
    if (v7)
    {
      v718 = v8;
      v720 = v2;
      if ((*(v7 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
      {
        v516 = v4;
        v517 = __nwlog_obj();
        v518 = os_log_type_enabled(v517, OS_LOG_TYPE_DEBUG);
        v4 = v516;
        v3 = v724;
        if (v518)
        {
          v519 = *(v7 + 488);
          v520 = *(*(v7 + 480) + 372);
          v521 = *(v7 + 860);
          if (v519)
          {
            LODWORD(v519) = *(v519 + 424);
          }

          LODWORD(buf[0]) = 136447746;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 74;
          HIWORD(buf[2]) = 2080;
          v745 = " ";
          *v746 = 1024;
          *&v746[2] = v520;
          *&v746[6] = 1024;
          *&v746[8] = v521;
          *&v746[12] = 1024;
          *&v746[14] = v519;
          *&v746[18] = 2048;
          *&v746[20] = v7;
          _os_log_impl(&dword_181A37000, v517, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
          v5 = v723;
          v3 = v724;
          v4 = v516;
        }
      }

      if ((*(v7 + 874) & 8) == 0)
      {
        v12 = v4;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_remove_idle_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v7;
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connection %p not in idle list, cannot remove", buf, 22);
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (__nwlog_fault(v13, type, aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v7;
              v16 = "%{public}s connection %p not in idle list, cannot remove";
LABEL_161:
              _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x16u);
            }
          }

          else if (aBlock[0] == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v15 = type[0];
            v54 = os_log_type_enabled(v14, type[0]);
            if (backtrace_string)
            {
              if (v54)
              {
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_remove_idle_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v7;
                HIWORD(buf[2]) = 2082;
                v745 = backtrace_string;
                _os_log_impl(&dword_181A37000, v14, v15, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              goto LABEL_162;
            }

            if (v54)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v7;
              v16 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
              goto LABEL_161;
            }
          }

          else
          {
            v14 = __nwlog_obj();
            v15 = type[0];
            if (os_log_type_enabled(v14, type[0]))
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v7;
              v16 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
              goto LABEL_161;
            }
          }
        }

LABEL_162:
        if (v13)
        {
          free(v13);
        }

        v5 = v723;
        v3 = v724;
        v4 = v12;
        goto LABEL_198;
      }

      v35 = *(v7 + 592);
      v36 = *(v7 + 600);
      v37 = (v3 + 216);
      if (v35)
      {
        v37 = (v35 + 600);
      }

      *v37 = v36;
      *v36 = v35;
      *(v7 + 592) = 0u;
      v38 = *(v3 + 340);
      *(v3 + 340) = v38 - 1;
      if (v38)
      {
LABEL_192:
        *(v7 + 874) &= ~8u;
        if ((*(v7 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
        {
          v527 = v4;
          v528 = __nwlog_obj();
          v529 = os_log_type_enabled(v528, OS_LOG_TYPE_DEBUG);
          v4 = v527;
          v3 = v724;
          if (v529)
          {
            v530 = *(v7 + 488);
            v531 = *(*(v7 + 480) + 372);
            v532 = *(v7 + 860);
            if (v530)
            {
              LODWORD(v530) = *(v530 + 424);
            }

            v533 = *(v724 + 340);
            LODWORD(buf[0]) = 136448002;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v7 + 74;
            HIWORD(buf[2]) = 2080;
            v745 = " ";
            *v746 = 1024;
            *&v746[2] = v531;
            *&v746[6] = 1024;
            *&v746[8] = v532;
            *&v746[12] = 1024;
            *&v746[14] = v530;
            *&v746[18] = 2048;
            *&v746[20] = v7;
            *&v746[28] = 1024;
            *&v746[30] = v533;
            _os_log_impl(&dword_181A37000, v528, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
            v3 = v724;
            v5 = v723;
            v4 = v527;
          }
        }

        if (*(v7 + 784))
        {
          if ((*(v7 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
          {
            v542 = v4;
            v543 = __nwlog_obj();
            v544 = os_log_type_enabled(v543, OS_LOG_TYPE_DEBUG);
            v4 = v542;
            if (v544)
            {
              v545 = *(v7 + 488);
              v546 = *(*(v7 + 480) + 372);
              v547 = *(v7 + 860);
              if (v545)
              {
                LODWORD(v545) = *(v545 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v7 + 74;
              HIWORD(buf[2]) = 2080;
              v745 = " ";
              *v746 = 1024;
              *&v746[2] = v546;
              *&v746[6] = 1024;
              *&v746[8] = v547;
              *&v746[12] = 1024;
              *&v746[14] = v545;
              *&v746[18] = 2048;
              *&v746[20] = v7;
              _os_log_impl(&dword_181A37000, v543, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
              v5 = v723;
              v4 = v542;
            }
          }

          v145 = v4;
          nw_queue_cancel_source(*(v7 + 784));
          v4 = v145;
          *(v7 + 784) = 0;
          v3 = v724;
        }

LABEL_198:
        if ((*(v3 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
        {
          v522 = v4;
          v523 = __nwlog_obj();
          v524 = os_log_type_enabled(v523, OS_LOG_TYPE_DEBUG);
          v4 = v522;
          v3 = v724;
          if (v524)
          {
            v525 = *(v724 + 372);
            v526 = *(v5 + 424);
            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v718;
            HIWORD(buf[2]) = 2080;
            v745 = " ";
            *v746 = 1024;
            *&v746[2] = v525;
            *&v746[6] = 1024;
            *&v746[8] = v526;
            *&v746[12] = 2048;
            *&v746[14] = v5;
            _os_log_impl(&dword_181A37000, v523, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
            v4 = v522;
            v3 = v724;
          }
        }

        if ((*(v5 + 428) & 0x2000) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v5;
          LODWORD(v710) = 22;
          v146 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p not in pending list, cannot remove", buf, v710);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v146, type, aBlock))
          {
            goto LABEL_227;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v147 = gLogObj;
            v148 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_227;
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v5;
            v149 = "%{public}s stream %p not in pending list, cannot remove";
          }

          else if (aBlock[0] == 1)
          {
            v162 = __nw_create_backtrace_string();
            v147 = __nwlog_obj();
            v148 = type[0];
            v163 = os_log_type_enabled(v147, type[0]);
            if (v162)
            {
              if (v163)
              {
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_remove_pending_stream";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v5;
                HIWORD(buf[2]) = 2082;
                v745 = v162;
                _os_log_impl(&dword_181A37000, v147, v148, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v162);
              goto LABEL_227;
            }

            if (!v163)
            {
LABEL_227:
              if (v146)
              {
                free(v146);
              }

              goto LABEL_239;
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v5;
            v149 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
          }

          else
          {
            v147 = __nwlog_obj();
            v148 = type[0];
            if (!os_log_type_enabled(v147, type[0]))
            {
              goto LABEL_227;
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v5;
            v149 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v147, v148, v149, buf, 0x16u);
          goto LABEL_227;
        }

        v150 = *(v5 + 296);
        v151 = *(v5 + 304);
        v152 = (v3 + 256);
        if (v150)
        {
          v152 = (v150 + 304);
        }

        *v152 = v151;
        *v151 = v150;
        *(v5 + 296) = 0;
        *(v5 + 304) = 0;
        v153 = *(v3 + 348);
        *(v3 + 348) = v153 - 1;
        if (v153)
        {
LABEL_237:
          *(v5 + 428) &= ~0x2000u;
          if ((*(v5 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
          {
            v534 = __nwlog_obj();
            if (os_log_type_enabled(v534, OS_LOG_TYPE_DEBUG))
            {
              v535 = v5 + 74;
              v536 = *(v5 + 256);
              v537 = *(*(v5 + 248) + 372);
              if (v536)
              {
                LODWORD(v536) = *(v536 + 860);
              }

              v5 = v723;
              v538 = *(v723 + 424);
              v539 = *(v724 + 348);
              LODWORD(buf[0]) = 136448258;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v535;
              HIWORD(buf[2]) = 2080;
              v745 = " ";
              *v746 = 1024;
              *&v746[2] = v537;
              *&v746[6] = 1024;
              *&v746[8] = v536;
              *&v746[12] = 1024;
              *&v746[14] = v538;
              *&v746[18] = 1024;
              *&v746[20] = v538;
              *&v746[24] = 2048;
              *&v746[26] = v723;
              *&v746[34] = 1024;
              *&v746[36] = v539;
              _os_log_impl(&dword_181A37000, v534, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
            }
          }

LABEL_239:
          if (*(v5 + 248))
          {
            if (*(v7 + 488))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v169 = *(v7 + 488);
              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v7;
              HIWORD(buf[2]) = 2048;
              v745 = v169;
              LODWORD(v710) = 32;
              v170 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p already has a stream (%p)", buf, v710);
              type[0] = OS_LOG_TYPE_ERROR;
              aBlock[0] = 0;
              if (!__nwlog_fault(v170, type, aBlock))
              {
                goto LABEL_277;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v171 = gLogObj;
                v172 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_277;
                }

                v173 = *(v7 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v7;
                HIWORD(buf[2]) = 2048;
                v745 = v173;
                v174 = "%{public}s Connection %p already has a stream (%p)";
              }

              else if (aBlock[0] == 1)
              {
                v178 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v171 = gLogObj;
                v172 = type[0];
                v179 = os_log_type_enabled(gLogObj, type[0]);
                if (v178)
                {
                  if (v179)
                  {
                    v180 = *(v7 + 488);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v7;
                    HIWORD(buf[2]) = 2048;
                    v745 = v180;
                    *v746 = 2082;
                    *&v746[2] = v178;
                    _os_log_impl(&dword_181A37000, v171, v172, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v178);
                  goto LABEL_277;
                }

                if (!v179)
                {
LABEL_277:
                  if (v170)
                  {
                    free(v170);
                  }

LABEL_415:
                  *(v5 + 428) |= 0x8000u;
                  v282 = *(v5 + 352);
                  buf[0] = MEMORY[0x1E69E9820];
                  buf[1] = 0x40000000;
                  buf[2] = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke;
                  v745 = &__block_descriptor_tmp_55_42980;
                  *v746 = v5;
                  nw_http_transaction_metadata_set_event_handler(v282, buf);
                  if (*(v5 + 428))
                  {
                    nw_http_transaction_metadata_set_first_on_connection(*(v5 + 352));
                    nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v7 + 768));
                  }

                  nw_http_transaction_metadata_set_connection_metadata(*(v5 + 352), *(v7 + 768));
                  nw_protocol_connected(*(v5 + 48), v5);
                  return;
                }

                v199 = *(v7 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v7;
                HIWORD(buf[2]) = 2048;
                v745 = v199;
                v174 = "%{public}s Connection %p already has a stream (%p), no backtrace";
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v171 = gLogObj;
                v172 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_277;
                }

                v181 = *(v7 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v7;
                HIWORD(buf[2]) = 2048;
                v745 = v181;
                v174 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v171, v172, v174, buf, 0x20u);
              goto LABEL_277;
            }

            *(v5 + 256) = v7;
            *(v7 + 488) = v5;
            v175 = *(v5 + 320);
            if (v175)
            {
              v176 = os_retain(v175);
              v177 = *(v7 + 744);
              if ((v177 & 1) == 0)
              {
                goto LABEL_258;
              }
            }

            else
            {
              v176 = 0;
              v177 = *(v7 + 744);
              if ((v177 & 1) == 0)
              {
                goto LABEL_258;
              }
            }

            v182 = *(v7 + 736);
            if (v182)
            {
              os_release(v182);
              v177 = *(v7 + 744);
            }

LABEL_258:
            *(v7 + 736) = v176;
            *(v7 + 744) = v177 | 1;
            if ((*(*(v5 + 248) + 376) & 2) == 0)
            {
              goto LABEL_387;
            }

            v183 = nw_parameters_copy_default_protocol_stack(*(v5 + 320));
            *aBlock = 0;
            *&aBlock[8] = aBlock;
            *&aBlock[16] = 0x2000000000;
            LOBYTE(v739) = 0;
            buf[0] = 0;
            buf[1] = buf;
            buf[2] = 0x3802000000;
            v745 = __Block_byref_object_copy__42960;
            *v746 = __Block_byref_object_dispose__42961;
            *&v746[8] = 0;
            v746[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v732 = 0x40000000;
            v733 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
            v734 = &unk_1E6A32930;
            v735 = aBlock;
            v736 = buf;
            v737 = v5;
            nw_protocol_stack_iterate_application_protocols(v183, type);
            if (*(buf[1] + 40))
            {
              v184 = v7;
              while (1)
              {
                v184 = *(v184 + 32);
                if (!v184)
                {
                  break;
                }

                if (nw_protocol_is_tls_over_stream(v184))
                {
                  v185 = *(buf[1] + 40);
                  v186 = nw_protocol_boringssl_copy_definition();
                  nw_parameters_set_protocol_instance(v185, v187, v184);
                  if (v186)
                  {
                    os_release(v186);
                  }

                  v188 = 1;
                  goto LABEL_381;
                }
              }

              v194 = __nwlog_obj();
              LODWORD(v743[0]) = 136446210;
              *(v743 + 4) = "nw_http1_stream_associate_with_connection";
              LODWORD(v710) = 12;
              v195 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v194, 16, "%{public}s tls should have been in the stack but could not find it", v743, v710);
              v726[0] = OS_LOG_TYPE_ERROR;
              v730 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v195, v726, &v730))
              {
                goto LABEL_377;
              }

              if (v726[0] == OS_LOG_TYPE_FAULT)
              {
                v196 = __nwlog_obj();
                v197 = v726[0];
                if (os_log_type_enabled(v196, v726[0]))
                {
                  LODWORD(v743[0]) = 136446210;
                  *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                  v198 = "%{public}s tls should have been in the stack but could not find it";
LABEL_376:
                  _os_log_impl(&dword_181A37000, v196, v197, v198, v743, 0xCu);
                }
              }

              else if (v730 == OS_LOG_TYPE_INFO)
              {
                v202 = __nw_create_backtrace_string();
                v196 = __nwlog_obj();
                v197 = v726[0];
                v203 = os_log_type_enabled(v196, v726[0]);
                if (v202)
                {
                  if (v203)
                  {
                    LODWORD(v743[0]) = 136446466;
                    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(v743[1]) = 2082;
                    *(&v743[1] + 6) = v202;
                    _os_log_impl(&dword_181A37000, v196, v197, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v743, 0x16u);
                  }

                  free(v202);
                  goto LABEL_377;
                }

                if (v203)
                {
                  LODWORD(v743[0]) = 136446210;
                  *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                  v198 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                  goto LABEL_376;
                }
              }

              else
              {
                v196 = __nwlog_obj();
                v197 = v726[0];
                if (os_log_type_enabled(v196, v726[0]))
                {
                  LODWORD(v743[0]) = 136446210;
                  *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                  v198 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                  goto LABEL_376;
                }
              }

LABEL_377:
              if (v195)
              {
                free(v195);
              }

              v188 = 0;
LABEL_380:
              v5 = v723;
LABEL_381:
              _Block_object_dispose(buf, 8);
              if ((v746[16] & 1) != 0 && *&v746[8])
              {
                os_release(*&v746[8]);
              }

              _Block_object_dispose(aBlock, 8);
              if (v183)
              {
                os_release(v183);
              }

              if (!v188)
              {
                goto LABEL_415;
              }

LABEL_387:
              v252 = *(v5 + 32);
              if (!v252 || v252 == *(v7 + 32))
              {
LABEL_405:
                nw_protocol_set_output_handler(v5, *(v7 + 32));
                nw_protocol_set_input_handler(v7, *(v5 + 48));
                *v5 = *v7;
                v270 = *(v5 + 96);
                v271 = *(v5 + 112);
                v272 = *(v5 + 128);
                *(v7 + 144) = *(v5 + 144);
                v273 = *(v5 + 80);
                *(v7 + 64) = *(v5 + 64);
                *(v7 + 80) = v273;
                *(v7 + 112) = v271;
                *(v7 + 128) = v272;
                *(v7 + 96) = v270;
                *(v7 + 872) &= 0xFFD7u;
                *(v7 + 864) = 1;
                if ((*(v7 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v274 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    v275 = *(v7 + 488);
                    v276 = *(*(v7 + 480) + 372);
                    v277 = *(v7 + 860);
                    if (v275)
                    {
                      LODWORD(v275) = *(v275 + 424);
                    }

                    LODWORD(buf[0]) = 136447490;
                    *(buf + 4) = "nw_http1_update_connection_input_state";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v7 + 74;
                    HIWORD(buf[2]) = 2080;
                    v745 = " ";
                    *v746 = 1024;
                    *&v746[2] = v276;
                    *&v746[6] = 1024;
                    *&v746[8] = v277;
                    *&v746[12] = 1024;
                    *&v746[14] = v275;
                    _os_log_impl(&dword_181A37000, v274, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                  }
                }

                if ((*(v5 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v278 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v279 = *(v5 + 256);
                    v280 = *(*(v5 + 248) + 372);
                    if (v279)
                    {
                      LODWORD(v279) = *(v279 + 860);
                    }

                    v281 = *(v5 + 424);
                    LODWORD(buf[0]) = 136448002;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v5 + 74;
                    HIWORD(buf[2]) = 2080;
                    v745 = " ";
                    *v746 = 1024;
                    *&v746[2] = v280;
                    *&v746[6] = 1024;
                    *&v746[8] = v279;
                    *&v746[12] = 1024;
                    *&v746[14] = v281;
                    *&v746[18] = 2048;
                    *&v746[20] = v5;
                    *&v746[28] = 2048;
                    *&v746[30] = v7;
                    _os_log_impl(&dword_181A37000, v278, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                  }
                }

                goto LABEL_415;
              }

              v253 = __nwlog_obj();
              v254 = *(v5 + 32);
              v255 = *(v7 + 32);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v254;
              HIWORD(buf[2]) = 2048;
              v745 = v5;
              *v746 = 2048;
              *&v746[2] = v255;
              LODWORD(v710) = 42;
              v256 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v253, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v710);
              aBlock[0] = 16;
              LOBYTE(v743[0]) = 0;
              if (__nwlog_fault(v256, aBlock, v743))
              {
                if (aBlock[0] == 17)
                {
                  v257 = __nwlog_obj();
                  v258 = aBlock[0];
                  if (!os_log_type_enabled(v257, aBlock[0]))
                  {
                    goto LABEL_403;
                  }

                  v259 = *(v5 + 32);
                  v260 = *(v7 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v259;
                  HIWORD(buf[2]) = 2048;
                  v745 = v5;
                  *v746 = 2048;
                  *&v746[2] = v260;
                  v261 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                  goto LABEL_402;
                }

                if (LOBYTE(v743[0]) != 1)
                {
                  v257 = __nwlog_obj();
                  v258 = aBlock[0];
                  if (!os_log_type_enabled(v257, aBlock[0]))
                  {
                    goto LABEL_403;
                  }

                  v266 = *(v5 + 32);
                  v267 = *(v7 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v266;
                  HIWORD(buf[2]) = 2048;
                  v745 = v5;
                  *v746 = 2048;
                  *&v746[2] = v267;
                  v261 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                  goto LABEL_402;
                }

                v262 = __nw_create_backtrace_string();
                v257 = __nwlog_obj();
                v258 = aBlock[0];
                v263 = os_log_type_enabled(v257, aBlock[0]);
                if (v262)
                {
                  if (v263)
                  {
                    v264 = *(v5 + 32);
                    v265 = *(v7 + 32);
                    LODWORD(buf[0]) = v720;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v264;
                    HIWORD(buf[2]) = 2048;
                    v745 = v5;
                    *v746 = 2048;
                    *&v746[2] = v265;
                    *&v746[10] = 2082;
                    *&v746[12] = v262;
                    _os_log_impl(&dword_181A37000, v257, v258, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v262);
                  goto LABEL_403;
                }

                if (v263)
                {
                  v268 = *(v5 + 32);
                  v269 = *(v7 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v268;
                  HIWORD(buf[2]) = 2048;
                  v745 = v5;
                  *v746 = 2048;
                  *&v746[2] = v269;
                  v261 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_402:
                  _os_log_impl(&dword_181A37000, v257, v258, v261, buf, 0x2Au);
                }
              }

LABEL_403:
              if (v256)
              {
                free(v256);
              }

              goto LABEL_405;
            }

            v189 = __nwlog_obj();
            LODWORD(v743[0]) = 136446210;
            *(v743 + 4) = "nw_http1_stream_associate_with_connection";
            LODWORD(v710) = 12;
            v190 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v189, 16, "%{public}s unable to find tls options", v743, v710);
            v726[0] = OS_LOG_TYPE_ERROR;
            v730 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v190, v726, &v730))
            {
              if (v726[0] == OS_LOG_TYPE_FAULT)
              {
                v191 = __nwlog_obj();
                v192 = v726[0];
                if (os_log_type_enabled(v191, v726[0]))
                {
                  LODWORD(v743[0]) = 136446210;
                  *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                  v193 = "%{public}s unable to find tls options";
LABEL_365:
                  _os_log_impl(&dword_181A37000, v191, v192, v193, v743, 0xCu);
                }
              }

              else if (v730 == OS_LOG_TYPE_INFO)
              {
                v200 = __nw_create_backtrace_string();
                v191 = __nwlog_obj();
                v192 = v726[0];
                v201 = os_log_type_enabled(v191, v726[0]);
                if (v200)
                {
                  if (v201)
                  {
                    LODWORD(v743[0]) = 136446466;
                    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(v743[1]) = 2082;
                    *(&v743[1] + 6) = v200;
                    _os_log_impl(&dword_181A37000, v191, v192, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v743, 0x16u);
                  }

                  free(v200);
                  goto LABEL_366;
                }

                if (v201)
                {
                  LODWORD(v743[0]) = 136446210;
                  *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                  v193 = "%{public}s unable to find tls options, no backtrace";
                  goto LABEL_365;
                }
              }

              else
              {
                v191 = __nwlog_obj();
                v192 = v726[0];
                if (os_log_type_enabled(v191, v726[0]))
                {
                  LODWORD(v743[0]) = 136446210;
                  *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                  v193 = "%{public}s unable to find tls options, backtrace limit exceeded";
                  goto LABEL_365;
                }
              }
            }

LABEL_366:
            if (v190)
            {
              free(v190);
            }

            v188 = 1;
            goto LABEL_380;
          }

          v511 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          LODWORD(v710) = 12;
          v512 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v511, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v710);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v512, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v513 = __nwlog_obj();
              v514 = type[0];
              if (os_log_type_enabled(v513, type[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v515 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_847:
                _os_log_impl(&dword_181A37000, v513, v514, v515, buf, 0xCu);
              }
            }

            else if (aBlock[0] == 1)
            {
              v540 = __nw_create_backtrace_string();
              v513 = __nwlog_obj();
              v514 = type[0];
              v541 = os_log_type_enabled(v513, type[0]);
              if (v540)
              {
                if (v541)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v540;
                  _os_log_impl(&dword_181A37000, v513, v514, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v540);
                goto LABEL_848;
              }

              if (v541)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v515 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                goto LABEL_847;
              }
            }

            else
            {
              v513 = __nwlog_obj();
              v514 = type[0];
              if (os_log_type_enabled(v513, type[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v515 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                goto LABEL_847;
              }
            }
          }

LABEL_848:
          if (v512)
          {
            free(v512);
          }

          v5 = v723;
          goto LABEL_415;
        }

        v154 = v4;
        v155 = v3;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v156 = *(v155 + 348);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->pending_stream_count";
        HIWORD(buf[2]) = 2048;
        v745 = 1;
        *v746 = 2048;
        *&v746[2] = v156;
        LODWORD(v710) = 42;
        v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v710);
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (__nwlog_fault(v157, type, aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v158 = __nwlog_obj();
            v159 = type[0];
            if (os_log_type_enabled(v158, type[0]))
            {
              v160 = *(v724 + 348);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v745 = 1;
              *v746 = 2048;
              *&v746[2] = v160;
              v161 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_233:
              _os_log_impl(&dword_181A37000, v158, v159, v161, buf, 0x2Au);
            }
          }

          else if (aBlock[0] == 1)
          {
            v164 = __nw_create_backtrace_string();
            v158 = __nwlog_obj();
            v159 = type[0];
            v165 = os_log_type_enabled(v158, type[0]);
            if (v164)
            {
              if (v165)
              {
                v166 = *(v724 + 348);
                LODWORD(buf[0]) = v720;
                *(buf + 4) = "nw_http1_remove_pending_stream";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = "http1->pending_stream_count";
                HIWORD(buf[2]) = 2048;
                v745 = 1;
                *v746 = 2048;
                *&v746[2] = v166;
                *&v746[10] = 2082;
                *&v746[12] = v164;
                _os_log_impl(&dword_181A37000, v158, v159, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v164);
              goto LABEL_234;
            }

            if (v165)
            {
              v168 = *(v724 + 348);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v745 = 1;
              *v746 = 2048;
              *&v746[2] = v168;
              v161 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_233;
            }
          }

          else
          {
            v158 = __nwlog_obj();
            v159 = type[0];
            if (os_log_type_enabled(v158, type[0]))
            {
              v167 = *(v724 + 348);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v745 = 1;
              *v746 = 2048;
              *&v746[2] = v167;
              v161 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_233;
            }
          }
        }

LABEL_234:
        if (v157)
        {
          free(v157);
        }

        *(v724 + 348) = 0;
        v5 = v723;
        v4 = v154;
        goto LABEL_237;
      }

      v39 = v4;
      v40 = v3;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = *(v40 + 340);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = "http1->idle_connections_count";
      HIWORD(buf[2]) = 2048;
      v745 = 1;
      *v746 = 2048;
      *&v746[2] = v41;
      v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
      type[0] = OS_LOG_TYPE_ERROR;
      aBlock[0] = 0;
      if (__nwlog_fault(v42, type, aBlock))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (os_log_type_enabled(v43, type[0]))
          {
            v45 = *(v724 + 340);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v745 = 1;
            *v746 = 2048;
            *&v746[2] = v45;
            v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_188:
            _os_log_impl(&dword_181A37000, v43, v44, v46, buf, 0x2Au);
          }
        }

        else if (aBlock[0] == 1)
        {
          v66 = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = type[0];
          v67 = os_log_type_enabled(v43, type[0]);
          if (v66)
          {
            if (v67)
            {
              v68 = *(v724 + 340);
              LODWORD(buf[0]) = v720;
              *(buf + 4) = "nw_http1_remove_idle_connection";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->idle_connections_count";
              HIWORD(buf[2]) = 2048;
              v745 = 1;
              *v746 = 2048;
              *&v746[2] = v68;
              *&v746[10] = 2082;
              *&v746[12] = v66;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v66);
            goto LABEL_189;
          }

          if (v67)
          {
            v144 = *(v724 + 340);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v745 = 1;
            *v746 = 2048;
            *&v746[2] = v144;
            v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_188;
          }
        }

        else
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (os_log_type_enabled(v43, type[0]))
          {
            v124 = *(v724 + 340);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v745 = 1;
            *v746 = 2048;
            *&v746[2] = v124;
            v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_188;
          }
        }
      }

LABEL_189:
      if (v42)
      {
        free(v42);
      }

      v3 = v724;
      *(v724 + 340) = 0;
      v5 = v723;
      v4 = v39;
      goto LABEL_192;
    }
  }

  if ((*(v3 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
  {
    v467 = v4;
    v468 = __nwlog_obj();
    v469 = os_log_type_enabled(v468, OS_LOG_TYPE_DEBUG);
    v4 = v467;
    v3 = v724;
    if (v469)
    {
      v470 = *(v724 + 372);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_get_next_idle_connection";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v724 + 74;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v470;
      _os_log_impl(&dword_181A37000, v468, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no idle connections", buf, 0x26u);
      v4 = v467;
      v3 = v724;
    }
  }

  if (*(v5 + 256))
  {
    if (*(v5 + 158))
    {
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    v3 = v724;
    if (!v18)
    {
      goto LABEL_34;
    }

    v19 = *(v5 + 256);
    v20 = *(*(v5 + 248) + 372);
    if (v19)
    {
      LODWORD(v19) = *(v19 + 860);
    }

    v21 = *(v5 + 424);
    LODWORD(buf[0]) = 136447490;
    *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v5 + 74;
    HIWORD(buf[2]) = 2080;
    v745 = " ";
    *v746 = 1024;
    *&v746[2] = v20;
    *&v746[6] = 1024;
    *&v746[8] = v19;
    *&v746[12] = 1024;
    *&v746[14] = v21;
    v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
    v23 = v17;
    v24 = 50;
LABEL_33:
    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
    v3 = v724;
LABEL_34:
    if (*(v3 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v26 = *(v724 + 372);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v724 + 74;
    HIWORD(buf[2]) = 2080;
    v745 = " ";
    *v746 = 1024;
    *&v746[2] = v26;
    v27 = "%{public}s %{public}s%s<i%u> cannot make new connection, waiting for other requests to finish";
    goto LABEL_40;
  }

  if ((*(v5 + 428) & 0x10) != 0)
  {
    if (!*(v5 + 32))
    {
      if (*(v5 + 158))
      {
        goto LABEL_34;
      }

      if (BYTE1(v4[82].isa) != 1)
      {
        goto LABEL_34;
      }

      v61 = __nwlog_obj();
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);
      v3 = v724;
      if (!v62)
      {
        goto LABEL_34;
      }

      v63 = *(v5 + 256);
      v64 = *(*(v5 + 248) + 372);
      if (v63)
      {
        LODWORD(v63) = *(v63 + 860);
      }

      v65 = *(v723 + 424);
      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v5 + 74;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v64;
      *&v746[6] = 1024;
      *&v746[8] = v63;
      *&v746[12] = 1024;
      *&v746[14] = v65;
      *&v746[18] = 2048;
      *&v746[20] = v723;
      v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
      v23 = v61;
      v24 = 60;
      goto LABEL_33;
    }

    if ((*(v5 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
    {
      v553 = v4;
      v554 = __nwlog_obj();
      v555 = os_log_type_enabled(v554, OS_LOG_TYPE_DEBUG);
      v4 = v553;
      if (v555)
      {
        v556 = v5 + 74;
        v557 = *(v5 + 256);
        v558 = *(*(v5 + 248) + 372);
        if (v557)
        {
          LODWORD(v557) = *(v557 + 860);
        }

        v5 = v723;
        v559 = *(v723 + 424);
        v560 = *(v723 + 32);
        LODWORD(buf[0]) = 136448002;
        *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v556;
        HIWORD(buf[2]) = 2080;
        v745 = " ";
        *v746 = 1024;
        *&v746[2] = v558;
        *&v746[6] = 1024;
        *&v746[8] = v557;
        *&v746[12] = 1024;
        *&v746[14] = v559;
        *&v746[18] = 2048;
        *&v746[20] = v723;
        *&v746[28] = 2048;
        *&v746[30] = v560;
        _os_log_impl(&dword_181A37000, v554, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
        v4 = v553;
      }
    }

    v47 = *(v5 + 32);
    v721 = v47;
    if (v47)
    {
      v48 = *(v5 + 336);
      if (v48)
      {
        v49 = *(v5 + 320);
        if (v49)
        {
          v50 = v4;
          v51 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
          v52 = v51;
          if (v51)
          {
            bzero(v51, 0x370uLL);
            nw_http1_connection::nw_http1_connection(v52);
          }

          else
          {
            v69 = __nwlog_obj();
            v70 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "nw_http1_connection_create";
            if (v70)
            {
              v71 = 3;
            }

            else
            {
              v71 = 2;
            }

            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = 1;
            HIWORD(buf[2]) = 2048;
            v745 = 880;
            v72 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
            if (__nwlog_should_abort(v72))
            {
              goto LABEL_1134;
            }

            free(v72);
            bzero(0, 0x370uLL);
            nw_http1_connection::nw_http1_connection(0);
            v73 = __nwlog_obj();
            v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR) ? 3 : 2;
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            LODWORD(v711) = 12;
            v75 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v711);
            if (__nwlog_should_abort(v75))
            {
              goto LABEL_1134;
            }

            free(v75);
            v5 = v723;
          }

          v76 = v724;
          if (nw_protocol_http1_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
            v76 = v724;
          }

          *(v52 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
          if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
            v76 = v724;
          }

          *(v52 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
          *(v52 + 184) = 3;
          *(v52 + 176) = v52;
          *(v52 + 40) = v52 + 160;
          *(v52 + 480) = v76;
          nw_protocol_set_output_handler(v52, v47);
          v77 = os_retain(v48);
          v78 = *(v52 + 760);
          if ((v78 & 1) != 0 && *(v52 + 752))
          {
            v79 = v77;
            os_release(*(v52 + 752));
            v77 = v79;
            v78 = *(v52 + 760);
          }

          *(v52 + 752) = v77;
          *(v52 + 760) = v78 | 1;
          v80 = os_retain(v49);
          v81 = *(v52 + 744);
          if ((v81 & 1) != 0 && *(v52 + 736))
          {
            v82 = v80;
            os_release(*(v52 + 736));
            v80 = v82;
            v81 = *(v52 + 744);
          }

          *(v52 + 736) = v80;
          *(v52 + 744) = v81 | 1;
          v83 = _nw_parameters_copy_context();
          v84 = *(v52 + 504);
          if (v84)
          {
            v85 = v724;
            if (*(v52 + 496))
            {
              v86 = v83;
              os_release(*(v52 + 496));
              v85 = v724;
              v83 = v86;
              v84 = *(v52 + 504);
            }
          }

          else
          {
            v85 = v724;
          }

          *(v52 + 496) = v83;
          *(v52 + 504) = v84 | 1;
          *(v52 + 192) = *(v85 + 192);
          *type = MEMORY[0x1E69E9820];
          v732 = 0x40000000;
          v733 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
          v734 = &__block_descriptor_tmp_43_43000;
          v735 = v52;
          metadata = nw_http_connection_create_metadata(v83, type, 0);
          v88 = *(v52 + 776);
          if ((v88 & 1) != 0 && *(v52 + 768))
          {
            v89 = metadata;
            os_release(*(v52 + 768));
            metadata = v89;
            v88 = *(v52 + 776);
          }

          *(v52 + 768) = metadata;
          *(v52 + 776) = v88 | 1;
          nw_http_connection_metadata_set_version(metadata, 3);
          nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v52 + 768), *(v724 + 312));
          *(v52 + 616) = 0;
          *(v52 + 624) = v52 + 616;
          *(v52 + 632) = 0;
          *(v52 + 640) = v52 + 632;
          *(v52 + 648) = 0;
          *(v52 + 656) = v52 + 648;
          *(v52 + 664) = 0;
          *(v52 + 672) = v52 + 664;
          *(v52 + 680) = 0;
          *(v52 + 688) = v52 + 680;
          nw_frame_cache_init((v52 + 696), v52, 256, 0x40000, 16);
          v90 = *(v52 + 480);
          if (v90)
          {
            *(v52 + 360) = 0u;
            *(v52 + 376) = 0u;
            *(v52 + 392) = 0u;
            *(v52 + 408) = 0u;
            *(v52 + 424) = 0u;
            *(v52 + 440) = 0u;
            *(v52 + 328) = 0u;
            *(v52 + 344) = 0u;
            *(v52 + 296) = nw_http1_on_message_begin;
            *(v52 + 384) = nw_http1_on_message_complete;
            *(v52 + 368) = nw_http1_on_headers_complete;
            *(v52 + 472) = nw_http1_on_reset;
            *(v52 + 320) = nw_http1_on_method;
            *(v52 + 408) = nw_http1_on_method_complete;
            *(v52 + 304) = nw_http1_on_url;
            *(v52 + 392) = nw_http1_on_url_complete;
            *(v52 + 312) = nw_http1_on_status;
            *(v52 + 400) = nw_http1_on_status_complete;
            *(v52 + 336) = nw_http1_on_header_field;
            *(v52 + 424) = nw_http1_on_header_field_complete;
            *(v52 + 344) = nw_http1_on_header_value;
            *(v52 + 432) = nw_http1_on_header_value_complete;
            *(v52 + 376) = nw_http1_on_body;
            *(v52 + 456) = nw_http1_on_chunk_header;
            *(v52 + 464) = nw_http1_on_chunk_complete;
            v91 = *(v90 + 376);
            *(v52 + 248) = 0u;
            *(v52 + 200) = 0u;
            *(v52 + 264) = 0u;
            *(v52 + 232) = 0u;
            *(v52 + 216) = 0u;
            if (v91)
            {
              v92 = 1;
            }

            else
            {
              v92 = 2;
            }

            *(v52 + 272) = v92;
            *(v52 + 280) = 0;
            *(v52 + 288) = v52 + 296;
            *(v52 + 278) = 16131;
            *(v52 + 248) = v52;
            *(v52 + 256) = 237;
            if ((*(v52 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v93 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v94 = *(v52 + 488);
                v95 = *(*(v52 + 480) + 372);
                v96 = *(v52 + 860);
                if (v94)
                {
                  LODWORD(v94) = *(v94 + 424);
                }

                LODWORD(buf[0]) = 136448258;
                *(buf + 4) = "nw_http1_connection_log_parser_version";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v52 + 74;
                HIWORD(buf[2]) = 2080;
                v745 = " ";
                *v746 = 1024;
                *&v746[2] = v95;
                *&v746[6] = 1024;
                *&v746[8] = v96;
                *&v746[12] = 1024;
                *&v746[14] = v94;
                *&v746[18] = 1024;
                *&v746[20] = 9;
                *&v746[24] = 1024;
                *&v746[26] = 2;
                *&v746[30] = 1024;
                *&v746[32] = 1;
                _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
              }
            }

            goto LABEL_126;
          }

          v563 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_parser_init";
          LODWORD(v710) = 12;
          v564 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v563, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v710);
          LOBYTE(v743[0]) = 16;
          v726[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v564, v743, v726))
          {
            if (LOBYTE(v743[0]) == 17)
            {
              v565 = __nwlog_obj();
              v566 = v743[0];
              if (os_log_type_enabled(v565, v743[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v567 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1043:
                _os_log_impl(&dword_181A37000, v565, v566, v567, buf, 0xCu);
              }
            }

            else if (v726[0] == OS_LOG_TYPE_INFO)
            {
              v647 = __nw_create_backtrace_string();
              v565 = __nwlog_obj();
              v566 = v743[0];
              v648 = os_log_type_enabled(v565, v743[0]);
              if (v647)
              {
                if (v648)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_connection_parser_init";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v647;
                  _os_log_impl(&dword_181A37000, v565, v566, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v647);
                goto LABEL_1044;
              }

              if (v648)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v567 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                goto LABEL_1043;
              }
            }

            else
            {
              v565 = __nwlog_obj();
              v566 = v743[0];
              if (os_log_type_enabled(v565, v743[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v567 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                goto LABEL_1043;
              }
            }
          }

LABEL_1044:
          if (v564)
          {
            free(v564);
          }

          v5 = v723;
LABEL_126:
          buf[0] = 0;
          buf[1] = buf;
          buf[2] = 0x2000000000;
          v745 = v52;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
          v739 = &unk_1E6A32758;
          *v740 = buf;
          *(v52 + 608) = _Block_copy(aBlock);
          _Block_object_dispose(buf, 8);
          if ((*(v52 + 158) & 1) == 0 && BYTE1(v50[82].isa) == 1)
          {
            v578 = __nwlog_obj();
            if (os_log_type_enabled(v578, OS_LOG_TYPE_DEBUG))
            {
              v579 = *(v52 + 488);
              v580 = *(*(v52 + 480) + 372);
              v581 = *(v52 + 860);
              if (v579)
              {
                LODWORD(v579) = *(v579 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_connection_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v52 + 74;
              HIWORD(buf[2]) = 2080;
              v745 = " ";
              *v746 = 1024;
              *&v746[2] = v580;
              *&v746[6] = 1024;
              *&v746[8] = v581;
              *&v746[12] = 1024;
              *&v746[14] = v579;
              *&v746[18] = 2048;
              *&v746[20] = v52;
              _os_log_impl(&dword_181A37000, v578, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
              v5 = v723;
            }
          }

          nw_protocol_replace_input_handler(v47, v5, v52);
          *v52 = *v47;
          v97 = *(v52 + 736);
          if (v97)
          {
            v98 = v724;
            v99 = v50;
            if (!*(v52 + 528))
            {
              v100 = _nw_parameters_copy_context();
              buf[0] = nw_path_copy_flow_registration(v100, v52);
              v101 = (v52 + 560);
              nw::retained_ptr<nw_endpoint *>::operator=(v52 + 560, buf);
              v102 = *(v52 + 560);
              if (v102)
              {
                v103 = nw_path_flow_registration_copy_endpoint(v102);
                v104 = nw_path_flow_registration_copy_parameters(*v101);
                buf[0] = nw_endpoint_copy_association_with_evaluator(v103, v104, 0);
                nw::retained_ptr<nw_endpoint *>::operator=(v52 + 528, buf);
                if (*(v52 + 528))
                {
                  buf[0] = nw_protocol_instance_stub_create(v52);
                  nw::retained_ptr<nw_endpoint *>::operator=(v52 + 544, buf);
                  nw_association_register_internal(*(v52 + 528), v97, *(v52 + 544), 0, 0, &__block_literal_global_69_43019);
                  v105 = nw_association_copy_current_path(*(v52 + 528), v104);
                  if (v105)
                  {
                    v106 = v105;
                    v107 = nw_path_copy_for_flow_registration(v105, *v101);
                    if (v107)
                    {
                      v108 = v107;
                      if (*(v52 + 512) != v107)
                      {
                        buf[0] = os_retain(v107);
                        nw::retained_ptr<nw_endpoint *>::operator=(v52 + 512, buf);
                      }

                      if (nw_path_has_flows(v108))
                      {
                        v109 = 4096;
                      }

                      else
                      {
                        v109 = 0;
                      }

                      *(v52 + 872) = *(v52 + 872) & 0xEFFF | v109;
                      v110 = _nw_parameters_copy_effective_proxy_config(v97);
                      if (v110)
                      {
                        v111 = v110;
                        if (nw_path_has_proxy_config(v106, v110))
                        {
                          buf[0] = os_retain(v111);
                          nw::retained_ptr<nw_endpoint *>::operator=(v52 + 576, buf);
                        }

                        os_release(v111);
                      }

                      os_release(v108);
                    }

                    os_release(v106);
                  }
                }

                if (v104)
                {
                  os_release(v104);
                }

                v5 = v723;
                if (v103)
                {
                  os_release(v103);
                }
              }

              v98 = v724;
              v99 = v50;
              if (v100)
              {
                os_release(v100);
                v99 = v50;
                v98 = v724;
              }
            }

            v112 = *(v52 + 512);
            if (v112)
            {
LABEL_152:
              v113 = _nw_path_uses_interface_type(v112, 2u);
              v99 = v50;
              v98 = v724;
              if (v113)
              {
                *(v52 + 192) = 1000;
              }
            }

LABEL_154:
            v114 = *(v98 + 336) + 1;
            *(v98 + 336) = v114;
            v115 = v721;
            if (v114 == v114 << 31 >> 31)
            {
              goto LABEL_302;
            }

            v116 = v98;
            v117 = __nwlog_obj();
            v118 = *(v116 + 336);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->connections_count";
            HIWORD(buf[2]) = 2048;
            v745 = 1;
            *v746 = 2048;
            *&v746[2] = v118;
            LODWORD(v710) = 42;
            v119 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v710);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v119, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v120 = __nwlog_obj();
                v121 = type[0];
                if (os_log_type_enabled(v120, type[0]))
                {
                  v122 = *(v724 + 336);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->connections_count";
                  HIWORD(buf[2]) = 2048;
                  v745 = 1;
                  *v746 = 2048;
                  *&v746[2] = v122;
                  v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_298:
                  _os_log_impl(&dword_181A37000, v120, v121, v123, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v125 = __nw_create_backtrace_string();
                v120 = __nwlog_obj();
                v121 = type[0];
                v126 = os_log_type_enabled(v120, type[0]);
                if (v125)
                {
                  if (v126)
                  {
                    v127 = *(v724 + 336);
                    LODWORD(buf[0]) = 136447234;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v745 = 1;
                    *v746 = 2048;
                    *&v746[2] = v127;
                    *&v746[10] = 2082;
                    *&v746[12] = v125;
                    _os_log_impl(&dword_181A37000, v120, v121, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v125);
                  v5 = v723;
                  goto LABEL_299;
                }

                v5 = v723;
                if (v126)
                {
                  v204 = *(v724 + 336);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->connections_count";
                  HIWORD(buf[2]) = 2048;
                  v745 = 1;
                  *v746 = 2048;
                  *&v746[2] = v204;
                  v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_298;
                }
              }

              else
              {
                v120 = __nwlog_obj();
                v121 = type[0];
                if (os_log_type_enabled(v120, type[0]))
                {
                  v141 = *(v724 + 336);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->connections_count";
                  HIWORD(buf[2]) = 2048;
                  v745 = 1;
                  *v746 = 2048;
                  *&v746[2] = v141;
                  v123 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_298;
                }
              }
            }

LABEL_299:
            if (v119)
            {
              free(v119);
            }

            v98 = v724;
            *(v724 + 336) = -1;
            v99 = v50;
            v115 = v721;
LABEL_302:
            v205 = *(v98 + 360) + 1;
            *(v98 + 360) = v205;
            if (v205 == v205 << 31 >> 31)
            {
              goto LABEL_320;
            }

            v206 = v98;
            v207 = __nwlog_obj();
            v208 = *(v206 + 360);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->next_connection_log_num";
            HIWORD(buf[2]) = 2048;
            v745 = 1;
            *v746 = 2048;
            *&v746[2] = v208;
            LODWORD(v710) = 42;
            v209 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v207, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v710);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v209, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v210 = __nwlog_obj();
                v211 = type[0];
                if (os_log_type_enabled(v210, type[0]))
                {
                  v212 = *(v724 + 360);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->next_connection_log_num";
                  HIWORD(buf[2]) = 2048;
                  v745 = 1;
                  *v746 = 2048;
                  *&v746[2] = v212;
                  v213 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_316:
                  _os_log_impl(&dword_181A37000, v210, v211, v213, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v214 = __nw_create_backtrace_string();
                v210 = __nwlog_obj();
                v211 = type[0];
                v215 = os_log_type_enabled(v210, type[0]);
                if (v214)
                {
                  if (v215)
                  {
                    v216 = *(v724 + 360);
                    LODWORD(buf[0]) = 136447234;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->next_connection_log_num";
                    HIWORD(buf[2]) = 2048;
                    v745 = 1;
                    *v746 = 2048;
                    *&v746[2] = v216;
                    *&v746[10] = 2082;
                    *&v746[12] = v214;
                    _os_log_impl(&dword_181A37000, v210, v211, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v214);
                  v5 = v723;
                  goto LABEL_317;
                }

                v5 = v723;
                if (v215)
                {
                  v218 = *(v724 + 360);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->next_connection_log_num";
                  HIWORD(buf[2]) = 2048;
                  v745 = 1;
                  *v746 = 2048;
                  *&v746[2] = v218;
                  v213 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_316;
                }
              }

              else
              {
                v210 = __nwlog_obj();
                v211 = type[0];
                if (os_log_type_enabled(v210, type[0]))
                {
                  v217 = *(v724 + 360);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->next_connection_log_num";
                  HIWORD(buf[2]) = 2048;
                  v745 = 1;
                  *v746 = 2048;
                  *&v746[2] = v217;
                  v213 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_316;
                }
              }
            }

LABEL_317:
            if (v209)
            {
              free(v209);
            }

            LODWORD(v205) = -1;
            *(v724 + 360) = -1;
            v99 = v50;
            v115 = v721;
LABEL_320:
            *(v52 + 860) = v205;
            if ((*(v52 + 158) & 1) == 0 && BYTE1(v99[82].isa) == 1)
            {
              v582 = __nwlog_obj();
              if (os_log_type_enabled(v582, OS_LOG_TYPE_DEBUG))
              {
                v583 = *(v52 + 488);
                v584 = *(*(v52 + 480) + 372);
                v585 = *(v52 + 860);
                if (v583)
                {
                  LODWORD(v583) = *(v583 + 424);
                }

                v586 = *(v724 + 336);
                LODWORD(buf[0]) = 136448002;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v52 + 74;
                HIWORD(buf[2]) = 2080;
                v745 = " ";
                *v746 = 1024;
                *&v746[2] = v584;
                *&v746[6] = 1024;
                *&v746[8] = v585;
                *&v746[12] = 1024;
                *&v746[14] = v583;
                *&v746[18] = 2048;
                *&v746[20] = v52;
                *&v746[28] = 1024;
                *&v746[30] = v586;
                _os_log_impl(&dword_181A37000, v582, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                v5 = v723;
                v115 = v721;
              }
            }

            if (*(v5 + 248))
            {
              if (*(v52 + 488))
              {
                v219 = __nwlog_obj();
                v220 = *(v52 + 488);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v52;
                HIWORD(buf[2]) = 2048;
                v745 = v220;
                LODWORD(v710) = 32;
                v221 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v219, 16, "%{public}s Connection %p already has a stream (%p)", buf, v710);
                aBlock[0] = 16;
                LOBYTE(v743[0]) = 0;
                if (!__nwlog_fault(v221, aBlock, v743))
                {
                  goto LABEL_355;
                }

                if (aBlock[0] == 17)
                {
                  v222 = __nwlog_obj();
                  v223 = aBlock[0];
                  if (!os_log_type_enabled(v222, aBlock[0]))
                  {
                    goto LABEL_355;
                  }

                  v224 = *(v52 + 488);
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v52;
                  HIWORD(buf[2]) = 2048;
                  v745 = v224;
                  v225 = "%{public}s Connection %p already has a stream (%p)";
                }

                else if (LOBYTE(v743[0]) == 1)
                {
                  v232 = __nw_create_backtrace_string();
                  v222 = __nwlog_obj();
                  v223 = aBlock[0];
                  v233 = os_log_type_enabled(v222, aBlock[0]);
                  if (v232)
                  {
                    if (v233)
                    {
                      v234 = *(v52 + 488);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v52;
                      HIWORD(buf[2]) = 2048;
                      v745 = v234;
                      *v746 = 2082;
                      *&v746[2] = v232;
                      _os_log_impl(&dword_181A37000, v222, v223, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v232);
                    v5 = v723;
LABEL_355:
                    if (v221)
                    {
                      free(v221);
                      if (*(v5 + 158))
                      {
                        goto LABEL_673;
                      }

                      goto LABEL_669;
                    }

LABEL_668:
                    if (*(v5 + 158))
                    {
                      goto LABEL_673;
                    }

LABEL_669:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v444 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      v445 = *(v5 + 256);
                      v446 = *(*(v5 + 248) + 372);
                      if (v445)
                      {
                        LODWORD(v445) = *(v445 + 860);
                      }

                      v447 = *(v5 + 424);
                      LODWORD(buf[0]) = 136448258;
                      *(buf + 4) = "nw_http1_start_new_connection_for_stream";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v5 + 74;
                      HIWORD(buf[2]) = 2080;
                      v745 = " ";
                      *v746 = 1024;
                      *&v746[2] = v446;
                      *&v746[6] = 1024;
                      *&v746[8] = v445;
                      *&v746[12] = 1024;
                      *&v746[14] = v447;
                      *&v746[18] = 2048;
                      *&v746[20] = v52;
                      *&v746[28] = 1024;
                      *&v746[30] = v447;
                      *&v746[34] = 2048;
                      *&v746[36] = v5;
                      _os_log_impl(&dword_181A37000, v444, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                    }

LABEL_673:
                    *(v5 + 428) |= 1u;
                    v448 = nw_protocol_copy_info(v115);
                    v449 = v448;
                    if (v448)
                    {
                      object = _nw_array_copy_last_object(v448);
                      v451 = object;
                      if (object)
                      {
                        if (nw_protocol_metadata_is_tls(object))
                        {
                          v451 = v451;
                          nw_http_connection_metadata_set_sec_metadata(*(v52 + 768), v451);
                          os_release(v451);
                          nw_protocol_connect(v115, v52);
                          goto LABEL_686;
                        }

                        v452 = 0;
LABEL_680:
                        if (v52)
                        {
                          nw_protocol_connect(v115, v52);
                          goto LABEL_682;
                        }

                        v587 = __nwlog_obj();
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_get_output_protocol";
                        LODWORD(v710) = 12;
                        v588 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v587, 16, "%{public}s called with null connection", buf, v710);
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v588, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v589 = __nwlog_obj();
                            v590 = type[0];
                            if (os_log_type_enabled(v589, type[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v591 = "%{public}s called with null connection";
LABEL_1061:
                              _os_log_impl(&dword_181A37000, v589, v590, v591, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v653 = __nw_create_backtrace_string();
                            v589 = __nwlog_obj();
                            v590 = type[0];
                            v654 = os_log_type_enabled(v589, type[0]);
                            if (v653)
                            {
                              if (v654)
                              {
                                LODWORD(buf[0]) = 136446466;
                                *(buf + 4) = "nw_http1_get_output_protocol";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = v653;
                                _os_log_impl(&dword_181A37000, v589, v590, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v653);
                              goto LABEL_1062;
                            }

                            if (v654)
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v591 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1061;
                            }
                          }

                          else
                          {
                            v589 = __nwlog_obj();
                            v590 = type[0];
                            if (os_log_type_enabled(v589, type[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v591 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1061;
                            }
                          }
                        }

LABEL_1062:
                        if (v588)
                        {
                          free(v588);
                        }

                        nw_protocol_connect(v721, 0);
                        v5 = v723;
LABEL_682:
                        if (v451)
                        {
                          v453 = v452;
                        }

                        else
                        {
                          v453 = 1;
                        }

                        if (v453)
                        {
LABEL_687:
                          if (v449)
                          {
                            os_release(v449);
                          }

                          *(v5 + 428) &= ~0x10u;
                          v454 = *(v724 + 352);
                          *(v724 + 352) = v454 - 1;
                          if (v454)
                          {
                            return;
                          }

                          v455 = __nwlog_obj();
                          v456 = *(v724 + 352);
                          LODWORD(buf[0]) = 136446978;
                          *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = "http1->pending_output_handler_count";
                          HIWORD(buf[2]) = 2048;
                          v745 = 1;
                          *v746 = 2048;
                          *&v746[2] = v456;
                          LODWORD(v710) = 42;
                          v457 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v455, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v710);
                          type[0] = OS_LOG_TYPE_ERROR;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v457, type, aBlock))
                          {
                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              v458 = __nwlog_obj();
                              v459 = type[0];
                              if (os_log_type_enabled(v458, type[0]))
                              {
                                v460 = *(v724 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v745 = 1;
                                *v746 = 2048;
                                *&v746[2] = v460;
                                v461 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_703:
                                _os_log_impl(&dword_181A37000, v458, v459, v461, buf, 0x2Au);
                              }
                            }

                            else if (aBlock[0] == 1)
                            {
                              v462 = __nw_create_backtrace_string();
                              v458 = __nwlog_obj();
                              v459 = type[0];
                              v463 = os_log_type_enabled(v458, type[0]);
                              if (v462)
                              {
                                if (v463)
                                {
                                  v464 = *(v724 + 352);
                                  LODWORD(buf[0]) = 136447234;
                                  *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                  WORD2(buf[1]) = 2082;
                                  *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                  HIWORD(buf[2]) = 2048;
                                  v745 = 1;
                                  *v746 = 2048;
                                  *&v746[2] = v464;
                                  *&v746[10] = 2082;
                                  *&v746[12] = v462;
                                  _os_log_impl(&dword_181A37000, v458, v459, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                                }

                                free(v462);
                                goto LABEL_704;
                              }

                              if (v463)
                              {
                                v466 = *(v724 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v745 = 1;
                                *v746 = 2048;
                                *&v746[2] = v466;
                                v461 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                                goto LABEL_703;
                              }
                            }

                            else
                            {
                              v458 = __nwlog_obj();
                              v459 = type[0];
                              if (os_log_type_enabled(v458, type[0]))
                              {
                                v465 = *(v724 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v745 = 1;
                                *v746 = 2048;
                                *&v746[2] = v465;
                                v461 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                                goto LABEL_703;
                              }
                            }
                          }

LABEL_704:
                          if (v457)
                          {
                            free(v457);
                          }

                          *(v724 + 352) = 0;
                          return;
                        }

LABEL_686:
                        os_release(v451);
                        goto LABEL_687;
                      }
                    }

                    else
                    {
                      v451 = 0;
                    }

                    v452 = 1;
                    goto LABEL_680;
                  }

                  v5 = v723;
                  if (!v233)
                  {
                    goto LABEL_355;
                  }

                  v246 = *(v52 + 488);
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v52;
                  HIWORD(buf[2]) = 2048;
                  v745 = v246;
                  v225 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                }

                else
                {
                  v222 = __nwlog_obj();
                  v223 = aBlock[0];
                  if (!os_log_type_enabled(v222, aBlock[0]))
                  {
                    goto LABEL_355;
                  }

                  v235 = *(v52 + 488);
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v52;
                  HIWORD(buf[2]) = 2048;
                  v745 = v235;
                  v225 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                }

                _os_log_impl(&dword_181A37000, v222, v223, v225, buf, 0x20u);
                goto LABEL_355;
              }

              *(v5 + 256) = v52;
              *(v52 + 488) = v5;
              v226 = *(v5 + 320);
              if (v226)
              {
                v226 = os_retain(v226);
              }

              buf[0] = v226;
              nw::retained_ptr<nw_endpoint *>::operator=(v52 + 736, buf);
              if ((*(*(v5 + 248) + 376) & 2) == 0)
              {
LABEL_640:
                v414 = *(v5 + 32);
                if (!v414 || v414 == *(v52 + 32))
                {
LABEL_658:
                  nw_protocol_set_output_handler(v5, *(v52 + 32));
                  nw_protocol_set_input_handler(v52, *(v5 + 48));
                  *v5 = *v52;
                  v432 = *(v5 + 96);
                  v433 = *(v5 + 112);
                  v434 = *(v5 + 128);
                  *(v52 + 144) = *(v5 + 144);
                  v435 = *(v5 + 80);
                  *(v52 + 64) = *(v5 + 64);
                  *(v52 + 80) = v435;
                  *(v52 + 112) = v433;
                  *(v52 + 128) = v434;
                  *(v52 + 96) = v432;
                  *(v52 + 872) &= 0xFFD7u;
                  *(v52 + 864) = 1;
                  if ((*(v52 + 158) & 1) == 0)
                  {
                    v436 = __nwlog_obj();
                    if (os_log_type_enabled(v436, OS_LOG_TYPE_DEBUG))
                    {
                      v437 = *(v52 + 488);
                      v438 = *(*(v52 + 480) + 372);
                      v439 = *(v52 + 860);
                      if (v437)
                      {
                        LODWORD(v437) = *(v437 + 424);
                      }

                      LODWORD(buf[0]) = 136447490;
                      *(buf + 4) = "nw_http1_update_connection_input_state";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v52 + 74;
                      HIWORD(buf[2]) = 2080;
                      v745 = " ";
                      *v746 = 1024;
                      *&v746[2] = v438;
                      *&v746[6] = 1024;
                      *&v746[8] = v439;
                      *&v746[12] = 1024;
                      *&v746[14] = v437;
                      _os_log_impl(&dword_181A37000, v436, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                    }
                  }

                  if ((*(v5 + 158) & 1) == 0)
                  {
                    v440 = __nwlog_obj();
                    if (os_log_type_enabled(v440, OS_LOG_TYPE_INFO))
                    {
                      v441 = *(v5 + 256);
                      v442 = *(*(v5 + 248) + 372);
                      if (v441)
                      {
                        LODWORD(v441) = *(v441 + 860);
                      }

                      v443 = *(v5 + 424);
                      LODWORD(buf[0]) = 136448002;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v5 + 74;
                      HIWORD(buf[2]) = 2080;
                      v745 = " ";
                      *v746 = 1024;
                      *&v746[2] = v442;
                      *&v746[6] = 1024;
                      *&v746[8] = v441;
                      *&v746[12] = 1024;
                      *&v746[14] = v443;
                      *&v746[18] = 2048;
                      *&v746[20] = v5;
                      *&v746[28] = 2048;
                      *&v746[30] = v52;
                      _os_log_impl(&dword_181A37000, v440, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                    }
                  }

                  goto LABEL_668;
                }

                v415 = __nwlog_obj();
                v416 = *(v5 + 32);
                v417 = *(v52 + 32);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v416;
                HIWORD(buf[2]) = 2048;
                v745 = v5;
                *v746 = 2048;
                *&v746[2] = v417;
                LODWORD(v710) = 42;
                v418 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v415, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v710);
                aBlock[0] = 16;
                LOBYTE(v743[0]) = 0;
                if (__nwlog_fault(v418, aBlock, v743))
                {
                  if (aBlock[0] == 17)
                  {
                    v419 = __nwlog_obj();
                    v420 = aBlock[0];
                    if (!os_log_type_enabled(v419, aBlock[0]))
                    {
                      goto LABEL_656;
                    }

                    v421 = *(v5 + 32);
                    v422 = *(v52 + 32);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v421;
                    HIWORD(buf[2]) = 2048;
                    v745 = v5;
                    *v746 = 2048;
                    *&v746[2] = v422;
                    v423 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                    goto LABEL_655;
                  }

                  if (LOBYTE(v743[0]) != 1)
                  {
                    v419 = __nwlog_obj();
                    v420 = aBlock[0];
                    if (!os_log_type_enabled(v419, aBlock[0]))
                    {
                      goto LABEL_656;
                    }

                    v428 = *(v5 + 32);
                    v429 = *(v52 + 32);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v428;
                    HIWORD(buf[2]) = 2048;
                    v745 = v5;
                    *v746 = 2048;
                    *&v746[2] = v429;
                    v423 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                    goto LABEL_655;
                  }

                  v424 = __nw_create_backtrace_string();
                  v419 = __nwlog_obj();
                  v420 = aBlock[0];
                  v425 = os_log_type_enabled(v419, aBlock[0]);
                  if (v424)
                  {
                    if (v425)
                    {
                      v426 = *(v723 + 32);
                      v427 = *(v52 + 32);
                      LODWORD(buf[0]) = 136447234;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v426;
                      HIWORD(buf[2]) = 2048;
                      v745 = v723;
                      *v746 = 2048;
                      *&v746[2] = v427;
                      *&v746[10] = 2082;
                      *&v746[12] = v424;
                      _os_log_impl(&dword_181A37000, v419, v420, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v424);
                    v5 = v723;
                    goto LABEL_656;
                  }

                  v5 = v723;
                  if (v425)
                  {
                    v430 = *(v723 + 32);
                    v431 = *(v52 + 32);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v430;
                    HIWORD(buf[2]) = 2048;
                    v745 = v723;
                    *v746 = 2048;
                    *&v746[2] = v431;
                    v423 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_655:
                    _os_log_impl(&dword_181A37000, v419, v420, v423, buf, 0x2Au);
                  }
                }

LABEL_656:
                if (v418)
                {
                  free(v418);
                }

                goto LABEL_658;
              }

              v227 = nw_parameters_copy_default_protocol_stack(*(v5 + 320));
              *aBlock = 0;
              *&aBlock[8] = aBlock;
              *&aBlock[16] = 0x2000000000;
              LOBYTE(v739) = 0;
              buf[0] = 0;
              buf[1] = buf;
              buf[2] = 0x3802000000;
              v745 = __Block_byref_object_copy__42960;
              *v746 = __Block_byref_object_dispose__42961;
              *&v746[8] = 0;
              v746[16] |= 1u;
              *type = MEMORY[0x1E69E9820];
              v732 = 0x40000000;
              v733 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
              v734 = &unk_1E6A32930;
              v735 = aBlock;
              v736 = buf;
              v737 = v5;
              nw_protocol_stack_iterate_application_protocols(v227, type);
              if (*(buf[1] + 40))
              {
                v228 = v52;
                while (1)
                {
                  v228 = *(v228 + 32);
                  if (!v228)
                  {
                    break;
                  }

                  if (nw_protocol_is_tls_over_stream(v228))
                  {
                    v229 = *(buf[1] + 40);
                    v230 = nw_protocol_boringssl_copy_definition();
                    nw_parameters_set_protocol_instance(v229, v231, v228);
                    if (v230)
                    {
                      os_release(v230);
                    }

                    goto LABEL_627;
                  }
                }

                v241 = __nwlog_obj();
                LODWORD(v743[0]) = 136446210;
                *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                LODWORD(v710) = 12;
                v242 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v241, 16, "%{public}s tls should have been in the stack but could not find it", v743, v710);
                v726[0] = OS_LOG_TYPE_ERROR;
                v730 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v242, v726, &v730))
                {
                  goto LABEL_631;
                }

                if (v726[0] == OS_LOG_TYPE_FAULT)
                {
                  v243 = __nwlog_obj();
                  v244 = v726[0];
                  if (os_log_type_enabled(v243, v726[0]))
                  {
                    LODWORD(v743[0]) = 136446210;
                    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                    v245 = "%{public}s tls should have been in the stack but could not find it";
LABEL_630:
                    _os_log_impl(&dword_181A37000, v243, v244, v245, v743, 0xCu);
                  }
                }

                else if (v730 == OS_LOG_TYPE_INFO)
                {
                  v283 = __nw_create_backtrace_string();
                  v243 = __nwlog_obj();
                  v244 = v726[0];
                  v284 = os_log_type_enabled(v243, v726[0]);
                  if (v283)
                  {
                    if (v284)
                    {
                      LODWORD(v743[0]) = 136446466;
                      *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(v743[1]) = 2082;
                      *(&v743[1] + 6) = v283;
                      _os_log_impl(&dword_181A37000, v243, v244, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v743, 0x16u);
                    }

                    free(v283);
                    v115 = v721;
                    goto LABEL_631;
                  }

                  v115 = v721;
                  if (v284)
                  {
                    LODWORD(v743[0]) = 136446210;
                    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                    v245 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                    goto LABEL_630;
                  }
                }

                else
                {
                  v243 = __nwlog_obj();
                  v244 = v726[0];
                  if (os_log_type_enabled(v243, v726[0]))
                  {
                    LODWORD(v743[0]) = 136446210;
                    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                    v245 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                    goto LABEL_630;
                  }
                }

LABEL_631:
                if (v242)
                {
                  free(v242);
                }

                v413 = 0;
                goto LABEL_634;
              }

              v236 = __nwlog_obj();
              LODWORD(v743[0]) = 136446210;
              *(v743 + 4) = "nw_http1_stream_associate_with_connection";
              LODWORD(v710) = 12;
              v237 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v236, 16, "%{public}s unable to find tls options", v743, v710);
              v726[0] = OS_LOG_TYPE_ERROR;
              v730 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v237, v726, &v730))
              {
                if (v726[0] == OS_LOG_TYPE_FAULT)
                {
                  v238 = __nwlog_obj();
                  v239 = v726[0];
                  if (os_log_type_enabled(v238, v726[0]))
                  {
                    LODWORD(v743[0]) = 136446210;
                    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                    v240 = "%{public}s unable to find tls options";
LABEL_624:
                    _os_log_impl(&dword_181A37000, v238, v239, v240, v743, 0xCu);
                  }
                }

                else if (v730 == OS_LOG_TYPE_INFO)
                {
                  v250 = __nw_create_backtrace_string();
                  v238 = __nwlog_obj();
                  v239 = v726[0];
                  v251 = os_log_type_enabled(v238, v726[0]);
                  if (v250)
                  {
                    if (v251)
                    {
                      LODWORD(v743[0]) = 136446466;
                      *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(v743[1]) = 2082;
                      *(&v743[1] + 6) = v250;
                      _os_log_impl(&dword_181A37000, v238, v239, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v743, 0x16u);
                    }

                    free(v250);
                    v115 = v721;
                  }

                  else
                  {
                    v115 = v721;
                    if (v251)
                    {
                      LODWORD(v743[0]) = 136446210;
                      *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                      v240 = "%{public}s unable to find tls options, no backtrace";
                      goto LABEL_624;
                    }
                  }
                }

                else
                {
                  v238 = __nwlog_obj();
                  v239 = v726[0];
                  if (os_log_type_enabled(v238, v726[0]))
                  {
                    LODWORD(v743[0]) = 136446210;
                    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
                    v240 = "%{public}s unable to find tls options, backtrace limit exceeded";
                    goto LABEL_624;
                  }
                }
              }

              if (v237)
              {
                free(v237);
              }

LABEL_627:
              v413 = 1;
LABEL_634:
              v5 = v723;
              _Block_object_dispose(buf, 8);
              if ((v746[16] & 1) != 0 && *&v746[8])
              {
                os_release(*&v746[8]);
              }

              _Block_object_dispose(aBlock, 8);
              if (v227)
              {
                os_release(v227);
              }

              if (!v413)
              {
                goto LABEL_668;
              }

              goto LABEL_640;
            }

            v573 = __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            LODWORD(v710) = 12;
            v574 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v573, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v710);
            aBlock[0] = 16;
            LOBYTE(v743[0]) = 0;
            if (!__nwlog_fault(v574, aBlock, v743))
            {
              goto LABEL_1057;
            }

            if (aBlock[0] == 17)
            {
              v575 = __nwlog_obj();
              v576 = aBlock[0];
              if (!os_log_type_enabled(v575, aBlock[0]))
              {
                goto LABEL_1057;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v577 = "%{public}s called with null http1_stream->protocol_http1";
            }

            else if (LOBYTE(v743[0]) == 1)
            {
              v651 = __nw_create_backtrace_string();
              v575 = __nwlog_obj();
              v576 = aBlock[0];
              v652 = os_log_type_enabled(v575, aBlock[0]);
              if (v651)
              {
                if (v652)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v651;
                  _os_log_impl(&dword_181A37000, v575, v576, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v651);
                goto LABEL_1057;
              }

              if (!v652)
              {
LABEL_1057:
                if (v574)
                {
                  free(v574);
                }

                goto LABEL_1039;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v577 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
            }

            else
            {
              v575 = __nwlog_obj();
              v576 = aBlock[0];
              if (!os_log_type_enabled(v575, aBlock[0]))
              {
                goto LABEL_1057;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v577 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v575, v576, v577, buf, 0xCu);
            goto LABEL_1057;
          }

          v568 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_http1_set_up_association";
          LODWORD(v710) = 12;
          v569 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v568, 16, "%{public}s called with null parameters", buf, v710);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v569, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v570 = __nwlog_obj();
              v571 = type[0];
              if (!os_log_type_enabled(v570, type[0]))
              {
                goto LABEL_1050;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v572 = "%{public}s called with null parameters";
LABEL_1049:
              _os_log_impl(&dword_181A37000, v570, v571, v572, buf, 0xCu);
              goto LABEL_1050;
            }

            if (aBlock[0] != 1)
            {
              v570 = __nwlog_obj();
              v571 = type[0];
              if (!os_log_type_enabled(v570, type[0]))
              {
                goto LABEL_1050;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v572 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1049;
            }

            v649 = __nw_create_backtrace_string();
            v570 = __nwlog_obj();
            v571 = type[0];
            v650 = os_log_type_enabled(v570, type[0]);
            if (!v649)
            {
              if (!v650)
              {
                goto LABEL_1050;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v572 = "%{public}s called with null parameters, no backtrace";
              goto LABEL_1049;
            }

            if (v650)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v649;
              _os_log_impl(&dword_181A37000, v570, v571, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v649);
          }

LABEL_1050:
          if (v569)
          {
            free(v569);
          }

          v5 = v723;
          v98 = v724;
          v99 = v50;
          v112 = *(v52 + 512);
          if (v112)
          {
            goto LABEL_152;
          }

          goto LABEL_154;
        }

        v562 = __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        v549 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v562, 16, "%{public}s called with null parameters", buf, 12);
        LOBYTE(v743[0]) = 16;
        v726[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v549, v743, v726))
        {
          if (LOBYTE(v743[0]) == 17)
          {
            v550 = __nwlog_obj();
            v551 = v743[0];
            if (!os_log_type_enabled(v550, v743[0]))
            {
              goto LABEL_1004;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v552 = "%{public}s called with null parameters";
            goto LABEL_1003;
          }

          if (v726[0] != OS_LOG_TYPE_INFO)
          {
            v550 = __nwlog_obj();
            v551 = v743[0];
            if (!os_log_type_enabled(v550, v743[0]))
            {
              goto LABEL_1004;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v552 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_1003;
          }

          v619 = __nw_create_backtrace_string();
          v550 = __nwlog_obj();
          v551 = v743[0];
          v622 = os_log_type_enabled(v550, v743[0]);
          if (!v619)
          {
            if (!v622)
            {
              goto LABEL_1004;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v552 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_1003;
          }

          if (v622)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_create";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v619;
            v621 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
            goto LABEL_884;
          }

          goto LABEL_885;
        }

LABEL_1004:
        if (!v549)
        {
          goto LABEL_1006;
        }

        goto LABEL_1005;
      }

      v561 = __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v549 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v561, 16, "%{public}s called with null endpoint", buf, 12);
      LOBYTE(v743[0]) = 16;
      v726[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v549, v743, v726))
      {
        goto LABEL_1004;
      }

      if (LOBYTE(v743[0]) != 17)
      {
        if (v726[0] != OS_LOG_TYPE_INFO)
        {
          v550 = __nwlog_obj();
          v551 = v743[0];
          if (!os_log_type_enabled(v550, v743[0]))
          {
            goto LABEL_1004;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v552 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_1003;
        }

        v619 = __nw_create_backtrace_string();
        v550 = __nwlog_obj();
        v551 = v743[0];
        v620 = os_log_type_enabled(v550, v743[0]);
        if (!v619)
        {
          if (!v620)
          {
            goto LABEL_1004;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v552 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_1003;
        }

        if (v620)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v619;
          v621 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_884:
          _os_log_impl(&dword_181A37000, v550, v551, v621, buf, 0x16u);
        }

LABEL_885:
        free(v619);
        if (!v549)
        {
LABEL_1006:
          v682 = __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          LODWORD(v713) = 12;
          v683 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v682, 16, "%{public}s called with null http1_connection", buf, v713);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v683, type, aBlock))
          {
            goto LABEL_1020;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v684 = __nwlog_obj();
            v685 = type[0];
            if (!os_log_type_enabled(v684, type[0]))
            {
              goto LABEL_1020;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v686 = "%{public}s called with null http1_connection";
          }

          else if (aBlock[0] == 1)
          {
            v687 = __nw_create_backtrace_string();
            v684 = __nwlog_obj();
            v685 = type[0];
            v688 = os_log_type_enabled(v684, type[0]);
            if (v687)
            {
              if (v688)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v687;
                _os_log_impl(&dword_181A37000, v684, v685, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v687);
LABEL_1020:
              if (v683)
              {
                free(v683);
              }

              v689 = __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              LODWORD(v715) = 12;
              v690 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v689, 16, "%{public}s called with null http1_connection", buf, v715);
              aBlock[0] = 16;
              LOBYTE(v743[0]) = 0;
              if (!__nwlog_fault(v690, aBlock, v743))
              {
                goto LABEL_1036;
              }

              if (aBlock[0] == 17)
              {
                v691 = __nwlog_obj();
                v692 = aBlock[0];
                if (os_log_type_enabled(v691, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v693 = "%{public}s called with null http1_connection";
LABEL_1035:
                  _os_log_impl(&dword_181A37000, v691, v692, v693, buf, 0xCu);
                }
              }

              else if (LOBYTE(v743[0]) == 1)
              {
                v694 = __nw_create_backtrace_string();
                v691 = __nwlog_obj();
                v692 = aBlock[0];
                v695 = os_log_type_enabled(v691, aBlock[0]);
                if (v694)
                {
                  if (v695)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v694;
                    _os_log_impl(&dword_181A37000, v691, v692, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v694);
                  goto LABEL_1036;
                }

                if (v695)
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v693 = "%{public}s called with null http1_connection, no backtrace";
                  goto LABEL_1035;
                }
              }

              else
              {
                v691 = __nwlog_obj();
                v692 = aBlock[0];
                if (os_log_type_enabled(v691, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v693 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  goto LABEL_1035;
                }
              }

LABEL_1036:
              if (v690)
              {
                free(v690);
              }

              v52 = 0;
LABEL_1039:
              v5 = v723;
              v115 = v721;
              if (*(v723 + 158))
              {
                goto LABEL_673;
              }

              goto LABEL_669;
            }

            if (!v688)
            {
              goto LABEL_1020;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v686 = "%{public}s called with null http1_connection, no backtrace";
          }

          else
          {
            v684 = __nwlog_obj();
            v685 = type[0];
            if (!os_log_type_enabled(v684, type[0]))
            {
              goto LABEL_1020;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v686 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v684, v685, v686, buf, 0xCu);
          goto LABEL_1020;
        }

LABEL_1005:
        free(v549);
        goto LABEL_1006;
      }

      v550 = __nwlog_obj();
      v551 = v743[0];
      if (!os_log_type_enabled(v550, v743[0]))
      {
        goto LABEL_1004;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v552 = "%{public}s called with null endpoint";
    }

    else
    {
      v548 = __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v549 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v548, 16, "%{public}s called with null output_handler", buf, 12);
      LOBYTE(v743[0]) = 16;
      v726[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v549, v743, v726))
      {
        goto LABEL_1004;
      }

      if (LOBYTE(v743[0]) != 17)
      {
        if (v726[0] != OS_LOG_TYPE_INFO)
        {
          v550 = __nwlog_obj();
          v551 = v743[0];
          if (!os_log_type_enabled(v550, v743[0]))
          {
            goto LABEL_1004;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v552 = "%{public}s called with null output_handler, backtrace limit exceeded";
          goto LABEL_1003;
        }

        v616 = __nw_create_backtrace_string();
        v550 = __nwlog_obj();
        v551 = v743[0];
        v617 = os_log_type_enabled(v550, v743[0]);
        if (!v616)
        {
          if (!v617)
          {
            goto LABEL_1004;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v552 = "%{public}s called with null output_handler, no backtrace";
          goto LABEL_1003;
        }

        if (v617)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v616;
          _os_log_impl(&dword_181A37000, v550, v551, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v616);
        goto LABEL_1004;
      }

      v550 = __nwlog_obj();
      v551 = v743[0];
      if (!os_log_type_enabled(v550, v743[0]))
      {
        goto LABEL_1004;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v552 = "%{public}s called with null output_handler";
    }

LABEL_1003:
    _os_log_impl(&dword_181A37000, v550, v551, v552, buf, 0xCu);
    goto LABEL_1004;
  }

  if (*(v3 + 336) + *(v3 + 352) >= (*(v3 + 368) + *(v3 + 364)))
  {
    if (*(v5 + 158))
    {
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v55 = gLogObj;
    v56 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    v3 = v724;
    if (!v56)
    {
      goto LABEL_34;
    }

    v57 = *(v5 + 256);
    v58 = *(*(v5 + 248) + 372);
    if (v57)
    {
      LODWORD(v57) = *(v57 + 860);
    }

    v59 = *(v5 + 424);
    v60 = *(v724 + 364);
    LODWORD(buf[0]) = 136447746;
    *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v5 + 74;
    HIWORD(buf[2]) = 2080;
    v745 = " ";
    *v746 = 1024;
    *&v746[2] = v58;
    *&v746[6] = 1024;
    *&v746[8] = v57;
    *&v746[12] = 1024;
    *&v746[14] = v59;
    *&v746[18] = 1024;
    *&v746[20] = v60;
    v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> already at max connection width %u, cannot create new connection";
    v23 = v55;
    v24 = 56;
    goto LABEL_33;
  }

  if ((*(v5 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
  {
    v592 = v4;
    v593 = __nwlog_obj();
    v594 = os_log_type_enabled(v593, OS_LOG_TYPE_DEBUG);
    v4 = v592;
    v3 = v724;
    if (v594)
    {
      v595 = v5 + 74;
      v596 = *(v5 + 256);
      v597 = *(*(v5 + 248) + 372);
      if (v596)
      {
        LODWORD(v596) = *(v596 + 860);
      }

      v5 = v723;
      v598 = *(v723 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v595;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v597;
      *&v746[6] = 1024;
      *&v746[8] = v596;
      *&v746[12] = 1024;
      *&v746[14] = v598;
      _os_log_impl(&dword_181A37000, v593, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> width allows new connection, creating", buf, 0x32u);
      v3 = v724;
      v4 = v592;
    }
  }

  if ((*(v5 + 428) & 0x2000) != 0)
  {
    if ((*(v3 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
    {
      v655 = v4;
      v656 = __nwlog_obj();
      v657 = os_log_type_enabled(v656, OS_LOG_TYPE_DEBUG);
      v4 = v655;
      v3 = v724;
      if (v657)
      {
        v658 = *(v724 + 372);
        v659 = *(v5 + 424);
        LODWORD(buf[0]) = 136447490;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v724 + 74;
        HIWORD(buf[2]) = 2080;
        v745 = " ";
        *v746 = 1024;
        *&v746[2] = v658;
        *&v746[6] = 1024;
        *&v746[8] = v659;
        *&v746[12] = 2048;
        *&v746[14] = v5;
        _os_log_impl(&dword_181A37000, v656, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
        v4 = v655;
        v3 = v724;
      }
    }

    if ((*(v5 + 428) & 0x2000) == 0)
    {
      v29 = v4;
      v30 = __nwlog_obj();
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v5;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
      type[0] = OS_LOG_TYPE_ERROR;
      aBlock[0] = 0;
      if (__nwlog_fault(v31, type, aBlock))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v32 = __nwlog_obj();
          v33 = type[0];
          if (os_log_type_enabled(v32, type[0]))
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v5;
            v34 = "%{public}s stream %p not in pending list, cannot remove";
LABEL_426:
            _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x16u);
          }
        }

        else if (aBlock[0] == 1)
        {
          v142 = __nw_create_backtrace_string();
          v32 = __nwlog_obj();
          v33 = type[0];
          v143 = os_log_type_enabled(v32, type[0]);
          if (v142)
          {
            if (v143)
            {
              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v5;
              HIWORD(buf[2]) = 2082;
              v745 = v142;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v142);
            goto LABEL_427;
          }

          if (v143)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v5;
            v34 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
            goto LABEL_426;
          }
        }

        else
        {
          v32 = __nwlog_obj();
          v33 = type[0];
          if (os_log_type_enabled(v32, type[0]))
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v5;
            v34 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
            goto LABEL_426;
          }
        }
      }

LABEL_427:
      if (v31)
      {
        free(v31);
      }

      v4 = v29;
      goto LABEL_446;
    }

    v128 = *(v5 + 296);
    v129 = *(v5 + 304);
    v130 = (v3 + 256);
    if (v128)
    {
      v130 = (v128 + 304);
    }

    *v130 = v129;
    *v129 = v128;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
    v131 = *(v3 + 348);
    *(v3 + 348) = v131 - 1;
    if (v131)
    {
      goto LABEL_444;
    }

    v132 = v4;
    v133 = v3;
    v134 = __nwlog_obj();
    v135 = *(v133 + 348);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->pending_stream_count";
    HIWORD(buf[2]) = 2048;
    v745 = 1;
    *v746 = 2048;
    *&v746[2] = v135;
    v136 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v134, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (__nwlog_fault(v136, type, aBlock))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v137 = __nwlog_obj();
        v138 = type[0];
        if (os_log_type_enabled(v137, type[0]))
        {
          v139 = *(v724 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v745 = 1;
          *v746 = 2048;
          *&v746[2] = v139;
          v140 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_440:
          _os_log_impl(&dword_181A37000, v137, v138, v140, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v247 = __nw_create_backtrace_string();
        v137 = __nwlog_obj();
        v138 = type[0];
        v248 = os_log_type_enabled(v137, type[0]);
        if (v247)
        {
          if (v248)
          {
            v249 = *(v724 + 348);
            LODWORD(buf[0]) = 136447234;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v745 = 1;
            *v746 = 2048;
            *&v746[2] = v249;
            *&v746[10] = 2082;
            *&v746[12] = v247;
            _os_log_impl(&dword_181A37000, v137, v138, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v247);
          goto LABEL_441;
        }

        if (v248)
        {
          v289 = *(v724 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v745 = 1;
          *v746 = 2048;
          *&v746[2] = v289;
          v140 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_440;
        }
      }

      else
      {
        v137 = __nwlog_obj();
        v138 = type[0];
        if (os_log_type_enabled(v137, type[0]))
        {
          v285 = *(v724 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v745 = 1;
          *v746 = 2048;
          *&v746[2] = v285;
          v140 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_440;
        }
      }
    }

LABEL_441:
    if (v136)
    {
      free(v136);
    }

    *(v724 + 348) = 0;
    v5 = v723;
    v4 = v132;
LABEL_444:
    *(v5 + 428) &= ~0x2000u;
    if ((*(v5 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
    {
      v674 = v4;
      v675 = __nwlog_obj();
      v676 = os_log_type_enabled(v675, OS_LOG_TYPE_DEBUG);
      v4 = v674;
      if (v676)
      {
        v677 = v5 + 74;
        v678 = *(v5 + 256);
        v679 = *(*(v5 + 248) + 372);
        if (v678)
        {
          LODWORD(v678) = *(v678 + 860);
        }

        v5 = v723;
        v680 = *(v723 + 424);
        v681 = *(v724 + 348);
        LODWORD(buf[0]) = 136448258;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v677;
        HIWORD(buf[2]) = 2080;
        v745 = " ";
        *v746 = 1024;
        *&v746[2] = v679;
        *&v746[6] = 1024;
        *&v746[8] = v678;
        *&v746[12] = 1024;
        *&v746[14] = v680;
        *&v746[18] = 1024;
        *&v746[20] = v680;
        *&v746[24] = 2048;
        *&v746[26] = v723;
        *&v746[34] = 1024;
        *&v746[36] = v681;
        _os_log_impl(&dword_181A37000, v675, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
        v4 = v674;
      }
    }
  }

LABEL_446:
  if (!*(v5 + 32))
  {
    v295 = nw_parameters_copy_default_protocol_stack(*(v5 + 320));
    *v726 = 0;
    v727 = v726;
    v728 = 0x2000000000;
    v729 = 0;
    buf[0] = 0;
    buf[1] = buf;
    buf[2] = 0x3802000000;
    v745 = __Block_byref_object_copy__42960;
    *v746 = __Block_byref_object_dispose__42961;
    *&v746[8] = 0;
    v746[16] |= 1u;
    *type = MEMORY[0x1E69E9820];
    v732 = 0x40000000;
    v733 = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke;
    v734 = &unk_1E6A328B8;
    v735 = v726;
    v736 = buf;
    v737 = v5;
    nw_protocol_stack_iterate_application_protocols(v295, type);
    v296 = *(buf[1] + 40);
    if (v296)
    {
      v297 = v296;
      *aBlock = 0;
      *&aBlock[8] = aBlock;
      *&aBlock[16] = 0x2000000000;
      LOBYTE(v739) = 0;
      v743[0] = MEMORY[0x1E69E9820];
      v743[1] = 0x40000000;
      v743[2] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_2;
      v743[3] = &unk_1E6A328E0;
      v743[4] = aBlock;
      nw_sec_protocol_options_iterate_application_protocols(v297, 1, v743);
      if (*(*&aBlock[8] + 24) == 1)
      {
        sec_protocol_options_clear_tls_application_protocols();
        sec_protocol_options_add_tls_application_protocol(v297, "http/1.1");
      }

      _Block_object_dispose(aBlock, 8);
      os_release(v297);
    }

    nw_protocol_stack_remove_protocols_before_handle_and_make_persistent(v295, v5);
    *(v5 + 428) |= 0x10u;
    v298 = *(v724 + 352) + 1;
    *(v724 + 352) = v298;
    if (v298 == v298 << 31 >> 31)
    {
LABEL_609:
      v405 = *(v5 + 312);
      v406 = *(v5 + 264);
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 0x40000000;
      *&aBlock[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_76;
      v739 = &unk_1E6A32908;
      *v740 = v405;
      nw_queue_context_async(v406, aBlock);
      _Block_object_dispose(buf, 8);
      if ((v746[16] & 1) != 0 && *&v746[8])
      {
        os_release(*&v746[8]);
      }

      _Block_object_dispose(v726, 8);
      if (v295)
      {
        goto LABEL_771;
      }

      return;
    }

    v299 = __nwlog_obj();
    v300 = *(v724 + 352);
    *aBlock = 136446978;
    *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
    *&aBlock[12] = 2082;
    *&aBlock[14] = "http1->pending_output_handler_count";
    *&aBlock[22] = 2048;
    v739 = 1;
    *v740 = 2048;
    *&v740[2] = v300;
    LODWORD(v710) = 42;
    v301 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v299, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", aBlock, v710);
    v730 = OS_LOG_TYPE_ERROR;
    v725 = 0;
    if (__nwlog_fault(v301, &v730, &v725))
    {
      if (v730 == OS_LOG_TYPE_FAULT)
      {
        v302 = __nwlog_obj();
        v303 = v730;
        if (os_log_type_enabled(v302, v730))
        {
          v304 = *(v724 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v739 = 1;
          *v740 = 2048;
          *&v740[2] = v304;
          v305 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_605:
          _os_log_impl(&dword_181A37000, v302, v303, v305, aBlock, 0x2Au);
        }
      }

      else if (v725 == 1)
      {
        v352 = __nw_create_backtrace_string();
        v302 = __nwlog_obj();
        v303 = v730;
        v353 = os_log_type_enabled(v302, v730);
        if (v352)
        {
          if (v353)
          {
            v354 = *(v724 + 352);
            *aBlock = 136447234;
            *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
            *&aBlock[12] = 2082;
            *&aBlock[14] = "http1->pending_output_handler_count";
            *&aBlock[22] = 2048;
            v739 = 1;
            *v740 = 2048;
            *&v740[2] = v354;
            v741 = 2082;
            v742 = v352;
            _os_log_impl(&dword_181A37000, v302, v303, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
          }

          free(v352);
          goto LABEL_606;
        }

        if (v353)
        {
          v404 = *(v724 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v739 = 1;
          *v740 = 2048;
          *&v740[2] = v404;
          v305 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_605;
        }
      }

      else
      {
        v302 = __nwlog_obj();
        v303 = v730;
        if (os_log_type_enabled(v302, v730))
        {
          v356 = *(v724 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v739 = 1;
          *v740 = 2048;
          *&v740[2] = v356;
          v305 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_605;
        }
      }
    }

LABEL_606:
    if (v301)
    {
      free(v301);
    }

    *(v724 + 352) = -1;
    v5 = v723;
    goto LABEL_609;
  }

  if ((*(v5 + 158) & 1) == 0 && BYTE1(v4[82].isa) == 1)
  {
    v609 = __nwlog_obj();
    if (os_log_type_enabled(v609, OS_LOG_TYPE_DEBUG))
    {
      v610 = v5 + 74;
      v611 = *(v5 + 256);
      v612 = *(*(v5 + 248) + 372);
      if (v611)
      {
        LODWORD(v611) = *(v611 + 860);
      }

      v5 = v723;
      v613 = *(v723 + 424);
      v614 = *(v723 + 32);
      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_establish_new_connection_for_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v610;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v612;
      *&v746[6] = 1024;
      *&v746[8] = v611;
      *&v746[12] = 1024;
      *&v746[14] = v613;
      *&v746[18] = 2048;
      *&v746[20] = v614;
      _os_log_impl(&dword_181A37000, v609, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using already established output handler %p", buf, 0x3Cu);
    }
  }

  v290 = *(v5 + 32);
  v722 = v290;
  if (!v290)
  {
    v599 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    LODWORD(v710) = 12;
    v600 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v599, 16, "%{public}s called with null output_handler", buf, v710);
    LOBYTE(v743[0]) = 16;
    v726[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v600, v743, v726))
    {
      goto LABEL_1078;
    }

    if (LOBYTE(v743[0]) == 17)
    {
      v601 = __nwlog_obj();
      v602 = v743[0];
      if (!os_log_type_enabled(v601, v743[0]))
      {
        goto LABEL_1078;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v603 = "%{public}s called with null output_handler";
    }

    else if (v726[0] == OS_LOG_TYPE_INFO)
    {
      v660 = __nw_create_backtrace_string();
      v601 = __nwlog_obj();
      v602 = v743[0];
      v661 = os_log_type_enabled(v601, v743[0]);
      if (v660)
      {
        if (v661)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v660;
          _os_log_impl(&dword_181A37000, v601, v602, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v660);
LABEL_1078:
        if (!v600)
        {
          goto LABEL_1080;
        }

        goto LABEL_1079;
      }

      if (!v661)
      {
        goto LABEL_1078;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v603 = "%{public}s called with null output_handler, no backtrace";
    }

    else
    {
      v601 = __nwlog_obj();
      v602 = v743[0];
      if (!os_log_type_enabled(v601, v743[0]))
      {
        goto LABEL_1078;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v603 = "%{public}s called with null output_handler, backtrace limit exceeded";
    }

    goto LABEL_1077;
  }

  v291 = *(v5 + 336);
  if (!v291)
  {
    v615 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    LODWORD(v710) = 12;
    v600 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v615, 16, "%{public}s called with null endpoint", buf, v710);
    LOBYTE(v743[0]) = 16;
    v726[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v600, v743, v726))
    {
      goto LABEL_1078;
    }

    if (LOBYTE(v743[0]) != 17)
    {
      if (v726[0] != OS_LOG_TYPE_INFO)
      {
        v601 = __nwlog_obj();
        v602 = v743[0];
        if (!os_log_type_enabled(v601, v743[0]))
        {
          goto LABEL_1078;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        v603 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_1077;
      }

      v664 = __nw_create_backtrace_string();
      v601 = __nwlog_obj();
      v602 = v743[0];
      v665 = os_log_type_enabled(v601, v743[0]);
      if (!v664)
      {
        if (!v665)
        {
          goto LABEL_1078;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        v603 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_1077;
      }

      if (v665)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_connection_create";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v664;
        v666 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_951:
        _os_log_impl(&dword_181A37000, v601, v602, v666, buf, 0x16u);
      }

LABEL_952:
      free(v664);
      if (!v600)
      {
LABEL_1080:
        v696 = __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        LODWORD(v714) = 12;
        v697 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v696, 16, "%{public}s called with null http1_connection", buf, v714);
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (!__nwlog_fault(v697, type, aBlock))
        {
          goto LABEL_1094;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v698 = __nwlog_obj();
          v699 = type[0];
          if (!os_log_type_enabled(v698, type[0]))
          {
            goto LABEL_1094;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v700 = "%{public}s called with null http1_connection";
        }

        else if (aBlock[0] == 1)
        {
          v701 = __nw_create_backtrace_string();
          v698 = __nwlog_obj();
          v699 = type[0];
          v702 = os_log_type_enabled(v698, type[0]);
          if (v701)
          {
            if (v702)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v701;
              _os_log_impl(&dword_181A37000, v698, v699, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v701);
LABEL_1094:
            if (v697)
            {
              free(v697);
            }

            v703 = __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            LODWORD(v716) = 12;
            v704 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v703, 16, "%{public}s called with null http1_connection", buf, v716);
            aBlock[0] = 16;
            LOBYTE(v743[0]) = 0;
            if (!__nwlog_fault(v704, aBlock, v743))
            {
              goto LABEL_1110;
            }

            if (aBlock[0] == 17)
            {
              v705 = __nwlog_obj();
              v706 = aBlock[0];
              if (os_log_type_enabled(v705, aBlock[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v707 = "%{public}s called with null http1_connection";
LABEL_1109:
                _os_log_impl(&dword_181A37000, v705, v706, v707, buf, 0xCu);
              }
            }

            else if (LOBYTE(v743[0]) == 1)
            {
              v708 = __nw_create_backtrace_string();
              v705 = __nwlog_obj();
              v706 = aBlock[0];
              v709 = os_log_type_enabled(v705, aBlock[0]);
              if (v708)
              {
                if (v709)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v708;
                  _os_log_impl(&dword_181A37000, v705, v706, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v708);
                goto LABEL_1110;
              }

              if (v709)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v707 = "%{public}s called with null http1_connection, no backtrace";
                goto LABEL_1109;
              }
            }

            else
            {
              v705 = __nwlog_obj();
              v706 = aBlock[0];
              if (os_log_type_enabled(v705, aBlock[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v707 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                goto LABEL_1109;
              }
            }

LABEL_1110:
            if (v704)
            {
              free(v704);
            }

            v294 = 0;
            v502 = 1;
LABEL_1132:
            v340 = v723;
            v290 = v722;
            if (*(v723 + 158))
            {
              goto LABEL_760;
            }

            goto LABEL_756;
          }

          if (!v702)
          {
            goto LABEL_1094;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v700 = "%{public}s called with null http1_connection, no backtrace";
        }

        else
        {
          v698 = __nwlog_obj();
          v699 = type[0];
          if (!os_log_type_enabled(v698, type[0]))
          {
            goto LABEL_1094;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v700 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v698, v699, v700, buf, 0xCu);
        goto LABEL_1094;
      }

LABEL_1079:
      free(v600);
      goto LABEL_1080;
    }

    v601 = __nwlog_obj();
    v602 = v743[0];
    if (!os_log_type_enabled(v601, v743[0]))
    {
      goto LABEL_1078;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    v603 = "%{public}s called with null endpoint";
LABEL_1077:
    _os_log_impl(&dword_181A37000, v601, v602, v603, buf, 0xCu);
    goto LABEL_1078;
  }

  v292 = *(v5 + 320);
  if (!v292)
  {
    v618 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_connection_create";
    LODWORD(v710) = 12;
    v600 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v618, 16, "%{public}s called with null parameters", buf, v710);
    LOBYTE(v743[0]) = 16;
    v726[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v600, v743, v726))
    {
      goto LABEL_1078;
    }

    if (LOBYTE(v743[0]) == 17)
    {
      v601 = __nwlog_obj();
      v602 = v743[0];
      if (!os_log_type_enabled(v601, v743[0]))
      {
        goto LABEL_1078;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v603 = "%{public}s called with null parameters";
      goto LABEL_1077;
    }

    if (v726[0] != OS_LOG_TYPE_INFO)
    {
      v601 = __nwlog_obj();
      v602 = v743[0];
      if (!os_log_type_enabled(v601, v743[0]))
      {
        goto LABEL_1078;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v603 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_1077;
    }

    v664 = __nw_create_backtrace_string();
    v601 = __nwlog_obj();
    v602 = v743[0];
    v667 = os_log_type_enabled(v601, v743[0]);
    if (!v664)
    {
      if (!v667)
      {
        goto LABEL_1078;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v603 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_1077;
    }

    if (v667)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_connection_create";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v664;
      v666 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_951;
    }

    goto LABEL_952;
  }

  v293 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
  v294 = v293;
  if (v293)
  {
    bzero(v293, 0x370uLL);
    nw_http1_connection::nw_http1_connection(v294);
    goto LABEL_472;
  }

  v306 = __nwlog_obj();
  v307 = os_log_type_enabled(v306, OS_LOG_TYPE_ERROR);
  LODWORD(buf[0]) = 136446722;
  *(buf + 4) = "nw_http1_connection_create";
  if (v307)
  {
    v308 = 3;
  }

  else
  {
    v308 = 2;
  }

  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = 1;
  HIWORD(buf[2]) = 2048;
  v745 = 880;
  LODWORD(v710) = 32;
  v309 = _os_log_send_and_compose_impl(v308, 0, 0, 0, &dword_181A37000, v306, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v710);
  if (__nwlog_should_abort(v309) || ((free(v309), bzero(0, 0x370uLL), nw_http1_connection::nw_http1_connection(0), v310 = __nwlog_obj(), !os_log_type_enabled(v310, OS_LOG_TYPE_ERROR)) ? (v311 = 2) : (v311 = 3), LODWORD(buf[0]) = 136446210, *(buf + 4) = "nw_http1_connection_create", LODWORD(v712) = 12, v312 = _os_log_send_and_compose_impl(v311, 0, 0, 0, &dword_181A37000, v310, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v712), __nwlog_should_abort(v312)))
  {
LABEL_1134:
    __break(1u);
    return;
  }

  free(v312);
  v5 = v723;
LABEL_472:
  v313 = v724;
  if (nw_protocol_http1_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
    v313 = v724;
  }

  *(v294 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
  if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
    v313 = v724;
  }

  *(v294 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
  *(v294 + 184) = 3;
  *(v294 + 176) = v294;
  *(v294 + 40) = v294 + 160;
  *(v294 + 480) = v313;
  nw_protocol_set_output_handler(v294, v290);
  buf[0] = os_retain(v291);
  nw::retained_ptr<nw_endpoint *>::operator=(v294 + 752, buf);
  buf[0] = os_retain(v292);
  nw::retained_ptr<nw_endpoint *>::operator=(v294 + 736, buf);
  buf[0] = _nw_parameters_copy_context();
  nw::retained_ptr<nw_endpoint *>::operator=(v294 + 496, buf);
  *(v294 + 192) = *(v313 + 192);
  v314 = *(v294 + 496);
  *type = MEMORY[0x1E69E9820];
  v732 = 0x40000000;
  v733 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
  v734 = &__block_descriptor_tmp_43_43000;
  v735 = v294;
  buf[0] = nw_http_connection_create_metadata(v314, type, 0);
  nw::retained_ptr<nw_endpoint *>::operator=(v294 + 768, buf);
  nw_http_connection_metadata_set_version(*(v294 + 768), 3);
  nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v294 + 768), *(v313 + 312));
  *(v294 + 616) = 0;
  *(v294 + 624) = v294 + 616;
  *(v294 + 632) = 0;
  *(v294 + 640) = v294 + 632;
  *(v294 + 648) = 0;
  *(v294 + 656) = v294 + 648;
  *(v294 + 664) = 0;
  *(v294 + 672) = v294 + 664;
  *(v294 + 680) = 0;
  *(v294 + 688) = v294 + 680;
  nw_frame_cache_init((v294 + 696), v294, 256, 0x40000, 16);
  v315 = *(v294 + 480);
  if (v315)
  {
    *(v294 + 360) = 0u;
    *(v294 + 376) = 0u;
    *(v294 + 392) = 0u;
    *(v294 + 408) = 0u;
    *(v294 + 424) = 0u;
    *(v294 + 440) = 0u;
    *(v294 + 328) = 0u;
    *(v294 + 344) = 0u;
    *(v294 + 296) = nw_http1_on_message_begin;
    *(v294 + 384) = nw_http1_on_message_complete;
    *(v294 + 368) = nw_http1_on_headers_complete;
    *(v294 + 472) = nw_http1_on_reset;
    *(v294 + 320) = nw_http1_on_method;
    *(v294 + 408) = nw_http1_on_method_complete;
    *(v294 + 304) = nw_http1_on_url;
    *(v294 + 392) = nw_http1_on_url_complete;
    *(v294 + 312) = nw_http1_on_status;
    *(v294 + 400) = nw_http1_on_status_complete;
    *(v294 + 336) = nw_http1_on_header_field;
    *(v294 + 424) = nw_http1_on_header_field_complete;
    *(v294 + 344) = nw_http1_on_header_value;
    *(v294 + 432) = nw_http1_on_header_value_complete;
    *(v294 + 376) = nw_http1_on_body;
    *(v294 + 456) = nw_http1_on_chunk_header;
    *(v294 + 464) = nw_http1_on_chunk_complete;
    v316 = *(v315 + 376);
    *(v294 + 248) = 0u;
    *(v294 + 200) = 0u;
    *(v294 + 264) = 0u;
    *(v294 + 232) = 0u;
    *(v294 + 216) = 0u;
    if (v316)
    {
      v317 = 1;
    }

    else
    {
      v317 = 2;
    }

    *(v294 + 272) = v317;
    *(v294 + 280) = 0;
    *(v294 + 288) = v294 + 296;
    *(v294 + 278) = 16131;
    *(v294 + 248) = v294;
    *(v294 + 256) = 237;
    if ((*(v294 + 158) & 1) == 0)
    {
      v318 = __nwlog_obj();
      if (os_log_type_enabled(v318, OS_LOG_TYPE_DEBUG))
      {
        v319 = *(v294 + 488);
        v320 = *(*(v294 + 480) + 372);
        v321 = *(v294 + 860);
        if (v319)
        {
          LODWORD(v319) = *(v319 + 424);
        }

        LODWORD(buf[0]) = 136448258;
        *(buf + 4) = "nw_http1_connection_log_parser_version";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v294 + 74;
        HIWORD(buf[2]) = 2080;
        v745 = " ";
        *v746 = 1024;
        *&v746[2] = v320;
        *&v746[6] = 1024;
        *&v746[8] = v321;
        *&v746[12] = 1024;
        *&v746[14] = v319;
        *&v746[18] = 1024;
        *&v746[20] = 9;
        *&v746[24] = 1024;
        *&v746[26] = 2;
        *&v746[30] = 1024;
        *&v746[32] = 1;
        _os_log_impl(&dword_181A37000, v318, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
      }
    }

    goto LABEL_485;
  }

  v623 = __nwlog_obj();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "nw_http1_connection_parser_init";
  LODWORD(v710) = 12;
  v624 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v623, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v710);
  LOBYTE(v743[0]) = 16;
  v726[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v624, v743, v726))
  {
    if (LOBYTE(v743[0]) == 17)
    {
      v625 = __nwlog_obj();
      v626 = v743[0];
      if (os_log_type_enabled(v625, v743[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_parser_init";
        v627 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1115:
        _os_log_impl(&dword_181A37000, v625, v626, v627, buf, 0xCu);
      }
    }

    else if (v726[0] == OS_LOG_TYPE_INFO)
    {
      v668 = __nw_create_backtrace_string();
      v625 = __nwlog_obj();
      v626 = v743[0];
      v669 = os_log_type_enabled(v625, v743[0]);
      if (v668)
      {
        if (v669)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_parser_init";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v668;
          _os_log_impl(&dword_181A37000, v625, v626, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v668);
        goto LABEL_1116;
      }

      if (v669)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_parser_init";
        v627 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
        goto LABEL_1115;
      }
    }

    else
    {
      v625 = __nwlog_obj();
      v626 = v743[0];
      if (os_log_type_enabled(v625, v743[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_parser_init";
        v627 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
        goto LABEL_1115;
      }
    }
  }

LABEL_1116:
  if (v624)
  {
    free(v624);
  }

  v5 = v723;
LABEL_485:
  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x2000000000;
  v745 = v294;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 0x40000000;
  *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
  v739 = &unk_1E6A32758;
  *v740 = buf;
  *(v294 + 608) = _Block_copy(aBlock);
  _Block_object_dispose(buf, 8);
  if ((*(v294 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v638 = __nwlog_obj();
    if (os_log_type_enabled(v638, OS_LOG_TYPE_DEBUG))
    {
      v639 = *(v294 + 488);
      v640 = *(*(v294 + 480) + 372);
      v641 = *(v294 + 860);
      if (v639)
      {
        LODWORD(v639) = *(v639 + 424);
      }

      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_connection_create";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v294 + 74;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v640;
      *&v746[6] = 1024;
      *&v746[8] = v641;
      *&v746[12] = 1024;
      *&v746[14] = v639;
      *&v746[18] = 2048;
      *&v746[20] = v294;
      _os_log_impl(&dword_181A37000, v638, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
      v5 = v723;
    }
  }

  nw_protocol_replace_input_handler(v290, v5, v294);
  *v294 = *v290;
  v322 = *(v294 + 736);
  if (!v322)
  {
    v628 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_set_up_association";
    LODWORD(v710) = 12;
    v629 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v628, 16, "%{public}s called with null parameters", buf, v710);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v629, type, aBlock))
    {
      goto LABEL_1122;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v630 = __nwlog_obj();
      v631 = type[0];
      if (!os_log_type_enabled(v630, type[0]))
      {
        goto LABEL_1122;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_set_up_association";
      v632 = "%{public}s called with null parameters";
    }

    else if (aBlock[0] == 1)
    {
      v670 = __nw_create_backtrace_string();
      v630 = __nwlog_obj();
      v631 = type[0];
      v671 = os_log_type_enabled(v630, type[0]);
      if (v670)
      {
        if (v671)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_protocol_http1_set_up_association";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v670;
          _os_log_impl(&dword_181A37000, v630, v631, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v670);
LABEL_1122:
        if (v629)
        {
          free(v629);
        }

        v323 = v724;
        v324 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        v337 = *(v294 + 512);
        if (v337)
        {
          goto LABEL_511;
        }

        goto LABEL_513;
      }

      if (!v671)
      {
        goto LABEL_1122;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_set_up_association";
      v632 = "%{public}s called with null parameters, no backtrace";
    }

    else
    {
      v630 = __nwlog_obj();
      v631 = type[0];
      if (!os_log_type_enabled(v630, type[0]))
      {
        goto LABEL_1122;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_set_up_association";
      v632 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v630, v631, v632, buf, 0xCu);
    goto LABEL_1122;
  }

  v323 = v724;
  v324 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (!*(v294 + 528))
  {
    v325 = _nw_parameters_copy_context();
    buf[0] = nw_path_copy_flow_registration(v325, v294);
    v326 = (v294 + 560);
    nw::retained_ptr<nw_endpoint *>::operator=(v294 + 560, buf);
    v327 = *(v294 + 560);
    if (v327)
    {
      v328 = nw_path_flow_registration_copy_endpoint(v327);
      v329 = nw_path_flow_registration_copy_parameters(*v326);
      buf[0] = nw_endpoint_copy_association_with_evaluator(v328, v329, 0);
      nw::retained_ptr<nw_endpoint *>::operator=(v294 + 528, buf);
      if (*(v294 + 528))
      {
        buf[0] = nw_protocol_instance_stub_create(v294);
        nw::retained_ptr<nw_endpoint *>::operator=(v294 + 544, buf);
        nw_association_register_internal(*(v294 + 528), v322, *(v294 + 544), 0, 0, &__block_literal_global_69_43019);
        v330 = nw_association_copy_current_path(*(v294 + 528), v329);
        if (v330)
        {
          v331 = v330;
          v332 = nw_path_copy_for_flow_registration(v330, *v326);
          if (v332)
          {
            v333 = v332;
            if (*(v294 + 512) != v332)
            {
              buf[0] = os_retain(v332);
              nw::retained_ptr<nw_endpoint *>::operator=(v294 + 512, buf);
            }

            if (nw_path_has_flows(v333))
            {
              v334 = 4096;
            }

            else
            {
              v334 = 0;
            }

            *(v294 + 872) = *(v294 + 872) & 0xEFFF | v334;
            v335 = _nw_parameters_copy_effective_proxy_config(v322);
            if (v335)
            {
              v336 = v335;
              if (nw_path_has_proxy_config(v331, v335))
              {
                buf[0] = os_retain(v336);
                nw::retained_ptr<nw_endpoint *>::operator=(v294 + 576, buf);
              }

              os_release(v336);
            }

            os_release(v333);
          }

          os_release(v331);
        }
      }

      if (v329)
      {
        os_release(v329);
      }

      v290 = v722;
      if (v328)
      {
        os_release(v328);
      }
    }

    v323 = v724;
    v324 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    if (v325)
    {
      os_release(v325);
      v324 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v323 = v724;
    }
  }

  v337 = *(v294 + 512);
  if (v337)
  {
LABEL_511:
    v338 = _nw_path_uses_interface_type(v337, 2u);
    v324 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v323 = v724;
    if (v338)
    {
      *(v294 + 192) = 1000;
    }
  }

LABEL_513:
  v339 = *(v323 + 336) + 1;
  *(v323 + 336) = v339;
  v340 = v723;
  if (v339 == v339 << 31 >> 31)
  {
    goto LABEL_538;
  }

  v341 = v323;
  v342 = __nwlog_obj();
  v343 = *(v341 + 336);
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = "http1->connections_count";
  HIWORD(buf[2]) = 2048;
  v745 = 1;
  *v746 = 2048;
  *&v746[2] = v343;
  LODWORD(v710) = 42;
  v344 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v342, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v710);
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (__nwlog_fault(v344, type, aBlock))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v345 = __nwlog_obj();
      v346 = type[0];
      if (os_log_type_enabled(v345, type[0]))
      {
        v347 = *(v724 + 336);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->connections_count";
        HIWORD(buf[2]) = 2048;
        v745 = 1;
        *v746 = 2048;
        *&v746[2] = v347;
        v348 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_534:
        _os_log_impl(&dword_181A37000, v345, v346, v348, buf, 0x2Au);
      }
    }

    else if (aBlock[0] == 1)
    {
      v349 = __nw_create_backtrace_string();
      v345 = __nwlog_obj();
      v346 = type[0];
      v350 = os_log_type_enabled(v345, type[0]);
      if (v349)
      {
        if (v350)
        {
          v351 = *(v724 + 336);
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->connections_count";
          HIWORD(buf[2]) = 2048;
          v745 = 1;
          *v746 = 2048;
          *&v746[2] = v351;
          *&v746[10] = 2082;
          *&v746[12] = v349;
          _os_log_impl(&dword_181A37000, v345, v346, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v349);
        v340 = v723;
        goto LABEL_535;
      }

      v340 = v723;
      if (v350)
      {
        v357 = *(v724 + 336);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->connections_count";
        HIWORD(buf[2]) = 2048;
        v745 = 1;
        *v746 = 2048;
        *&v746[2] = v357;
        v348 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_534;
      }
    }

    else
    {
      v345 = __nwlog_obj();
      v346 = type[0];
      if (os_log_type_enabled(v345, type[0]))
      {
        v355 = *(v724 + 336);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->connections_count";
        HIWORD(buf[2]) = 2048;
        v745 = 1;
        *v746 = 2048;
        *&v746[2] = v355;
        v348 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_534;
      }
    }
  }

LABEL_535:
  if (v344)
  {
    free(v344);
  }

  v323 = v724;
  *(v724 + 336) = -1;
  v324 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  v290 = v722;
LABEL_538:
  v358 = *(v323 + 360) + 1;
  *(v323 + 360) = v358;
  if (v358 == v358 << 31 >> 31)
  {
    goto LABEL_556;
  }

  v359 = v323;
  v360 = __nwlog_obj();
  v361 = *(v359 + 360);
  LODWORD(buf[0]) = 136446978;
  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = "http1->next_connection_log_num";
  HIWORD(buf[2]) = 2048;
  v745 = 1;
  *v746 = 2048;
  *&v746[2] = v361;
  LODWORD(v710) = 42;
  v362 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v360, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v710);
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (__nwlog_fault(v362, type, aBlock))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v363 = __nwlog_obj();
      v364 = type[0];
      if (os_log_type_enabled(v363, type[0]))
      {
        v365 = *(v724 + 360);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->next_connection_log_num";
        HIWORD(buf[2]) = 2048;
        v745 = 1;
        *v746 = 2048;
        *&v746[2] = v365;
        v366 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_552:
        _os_log_impl(&dword_181A37000, v363, v364, v366, buf, 0x2Au);
      }
    }

    else if (aBlock[0] == 1)
    {
      v367 = __nw_create_backtrace_string();
      v363 = __nwlog_obj();
      v364 = type[0];
      v368 = os_log_type_enabled(v363, type[0]);
      if (v367)
      {
        if (v368)
        {
          v369 = *(v724 + 360);
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->next_connection_log_num";
          HIWORD(buf[2]) = 2048;
          v745 = 1;
          *v746 = 2048;
          *&v746[2] = v369;
          *&v746[10] = 2082;
          *&v746[12] = v367;
          _os_log_impl(&dword_181A37000, v363, v364, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v367);
        v340 = v723;
        goto LABEL_553;
      }

      v340 = v723;
      if (v368)
      {
        v371 = *(v724 + 360);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->next_connection_log_num";
        HIWORD(buf[2]) = 2048;
        v745 = 1;
        *v746 = 2048;
        *&v746[2] = v371;
        v366 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_552;
      }
    }

    else
    {
      v363 = __nwlog_obj();
      v364 = type[0];
      if (os_log_type_enabled(v363, type[0]))
      {
        v370 = *(v724 + 360);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = "http1->next_connection_log_num";
        HIWORD(buf[2]) = 2048;
        v745 = 1;
        *v746 = 2048;
        *&v746[2] = v370;
        v366 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_552;
      }
    }
  }

LABEL_553:
  if (v362)
  {
    free(v362);
  }

  LODWORD(v358) = -1;
  *(v724 + 360) = -1;
  v324 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  v290 = v722;
LABEL_556:
  *(v294 + 860) = v358;
  if ((*(v294 + 158) & 1) == 0 && BYTE1(v324[82].isa) == 1)
  {
    v642 = __nwlog_obj();
    if (os_log_type_enabled(v642, OS_LOG_TYPE_DEBUG))
    {
      v643 = *(v294 + 488);
      v644 = *(*(v294 + 480) + 372);
      v645 = *(v294 + 860);
      if (v643)
      {
        LODWORD(v643) = *(v643 + 424);
      }

      v646 = *(v724 + 336);
      LODWORD(buf[0]) = 136448002;
      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v294 + 74;
      HIWORD(buf[2]) = 2080;
      v745 = " ";
      *v746 = 1024;
      *&v746[2] = v644;
      *&v746[6] = 1024;
      *&v746[8] = v645;
      *&v746[12] = 1024;
      *&v746[14] = v643;
      *&v746[18] = 2048;
      *&v746[20] = v294;
      *&v746[28] = 1024;
      *&v746[30] = v646;
      _os_log_impl(&dword_181A37000, v642, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
      v340 = v723;
      v290 = v722;
    }
  }

  if (!*(v340 + 248))
  {
    v633 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    LODWORD(v710) = 12;
    v634 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v633, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v710);
    aBlock[0] = 16;
    LOBYTE(v743[0]) = 0;
    if (__nwlog_fault(v634, aBlock, v743))
    {
      if (aBlock[0] == 17)
      {
        v635 = __nwlog_obj();
        v636 = aBlock[0];
        if (os_log_type_enabled(v635, aBlock[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v637 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1128:
          _os_log_impl(&dword_181A37000, v635, v636, v637, buf, 0xCu);
        }
      }

      else if (LOBYTE(v743[0]) == 1)
      {
        v672 = __nw_create_backtrace_string();
        v635 = __nwlog_obj();
        v636 = aBlock[0];
        v673 = os_log_type_enabled(v635, aBlock[0]);
        if (v672)
        {
          if (v673)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v672;
            _os_log_impl(&dword_181A37000, v635, v636, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v672);
          goto LABEL_1129;
        }

        if (v673)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v637 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
          goto LABEL_1128;
        }
      }

      else
      {
        v635 = __nwlog_obj();
        v636 = aBlock[0];
        if (os_log_type_enabled(v635, aBlock[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v637 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
          goto LABEL_1128;
        }
      }
    }

LABEL_1129:
    if (v634)
    {
      free(v634);
    }

    v502 = 0;
    goto LABEL_1132;
  }

  if (*(v294 + 488))
  {
    v372 = __nwlog_obj();
    v373 = *(v294 + 488);
    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v294;
    HIWORD(buf[2]) = 2048;
    v745 = v373;
    LODWORD(v710) = 32;
    v374 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v372, 16, "%{public}s Connection %p already has a stream (%p)", buf, v710);
    aBlock[0] = 16;
    LOBYTE(v743[0]) = 0;
    if (!__nwlog_fault(v374, aBlock, v743))
    {
      goto LABEL_591;
    }

    if (aBlock[0] == 17)
    {
      v375 = __nwlog_obj();
      v376 = aBlock[0];
      if (!os_log_type_enabled(v375, aBlock[0]))
      {
        goto LABEL_591;
      }

      v377 = *(v294 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v294;
      HIWORD(buf[2]) = 2048;
      v745 = v377;
      v378 = "%{public}s Connection %p already has a stream (%p)";
    }

    else if (LOBYTE(v743[0]) == 1)
    {
      v385 = __nw_create_backtrace_string();
      v375 = __nwlog_obj();
      v376 = aBlock[0];
      v386 = os_log_type_enabled(v375, aBlock[0]);
      if (v385)
      {
        if (v386)
        {
          v387 = *(v294 + 488);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v294;
          HIWORD(buf[2]) = 2048;
          v745 = v387;
          *v746 = 2082;
          *&v746[2] = v385;
          _os_log_impl(&dword_181A37000, v375, v376, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v385);
        goto LABEL_591;
      }

      if (!v386)
      {
LABEL_591:
        if (v374)
        {
          free(v374);
        }

        goto LABEL_755;
      }

      v399 = *(v294 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v294;
      HIWORD(buf[2]) = 2048;
      v745 = v399;
      v378 = "%{public}s Connection %p already has a stream (%p), no backtrace";
    }

    else
    {
      v375 = __nwlog_obj();
      v376 = aBlock[0];
      if (!os_log_type_enabled(v375, aBlock[0]))
      {
        goto LABEL_591;
      }

      v388 = *(v294 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v294;
      HIWORD(buf[2]) = 2048;
      v745 = v388;
      v378 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v375, v376, v378, buf, 0x20u);
    goto LABEL_591;
  }

  *(v340 + 256) = v294;
  *(v294 + 488) = v340;
  v379 = *(v340 + 320);
  if (v379)
  {
    v379 = os_retain(v379);
  }

  buf[0] = v379;
  nw::retained_ptr<nw_endpoint *>::operator=(v294 + 736, buf);
  if ((*(*(v340 + 248) + 376) & 2) == 0)
  {
LABEL_727:
    v472 = *(v340 + 32);
    if (!v472 || v472 == *(v294 + 32))
    {
LABEL_745:
      nw_protocol_set_output_handler(v340, *(v294 + 32));
      nw_protocol_set_input_handler(v294, *(v340 + 48));
      *v340 = *v294;
      v490 = *(v340 + 96);
      v491 = *(v340 + 112);
      v492 = *(v340 + 128);
      *(v294 + 144) = *(v340 + 144);
      v493 = *(v340 + 80);
      *(v294 + 64) = *(v340 + 64);
      *(v294 + 80) = v493;
      *(v294 + 112) = v491;
      *(v294 + 128) = v492;
      *(v294 + 96) = v490;
      *(v294 + 872) &= 0xFFD7u;
      *(v294 + 864) = 1;
      if ((*(v294 + 158) & 1) == 0)
      {
        v494 = __nwlog_obj();
        if (os_log_type_enabled(v494, OS_LOG_TYPE_DEBUG))
        {
          v495 = *(v294 + 488);
          v496 = *(*(v294 + 480) + 372);
          v497 = *(v294 + 860);
          if (v495)
          {
            LODWORD(v495) = *(v495 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_update_connection_input_state";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v294 + 74;
          HIWORD(buf[2]) = 2080;
          v745 = " ";
          *v746 = 1024;
          *&v746[2] = v496;
          *&v746[6] = 1024;
          *&v746[8] = v497;
          *&v746[12] = 1024;
          *&v746[14] = v495;
          _os_log_impl(&dword_181A37000, v494, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
        }
      }

      if ((*(v340 + 158) & 1) == 0)
      {
        v498 = __nwlog_obj();
        if (os_log_type_enabled(v498, OS_LOG_TYPE_INFO))
        {
          v499 = *(v340 + 256);
          v500 = *(*(v340 + 248) + 372);
          if (v499)
          {
            LODWORD(v499) = *(v499 + 860);
          }

          v501 = *(v340 + 424);
          LODWORD(buf[0]) = 136448002;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v340 + 74;
          HIWORD(buf[2]) = 2080;
          v745 = " ";
          *v746 = 1024;
          *&v746[2] = v500;
          *&v746[6] = 1024;
          *&v746[8] = v499;
          *&v746[12] = 1024;
          *&v746[14] = v501;
          *&v746[18] = 2048;
          *&v746[20] = v340;
          *&v746[28] = 2048;
          *&v746[30] = v294;
          _os_log_impl(&dword_181A37000, v498, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
        }
      }

      goto LABEL_755;
    }

    v473 = __nwlog_obj();
    v474 = *(v340 + 32);
    v475 = *(v294 + 32);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v474;
    HIWORD(buf[2]) = 2048;
    v745 = v340;
    *v746 = 2048;
    *&v746[2] = v475;
    LODWORD(v710) = 42;
    v476 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v473, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v710);
    aBlock[0] = 16;
    LOBYTE(v743[0]) = 0;
    if (__nwlog_fault(v476, aBlock, v743))
    {
      if (aBlock[0] == 17)
      {
        v477 = __nwlog_obj();
        v478 = aBlock[0];
        if (!os_log_type_enabled(v477, aBlock[0]))
        {
          goto LABEL_743;
        }

        v479 = *(v340 + 32);
        v480 = *(v294 + 32);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_stream_associate_with_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v479;
        HIWORD(buf[2]) = 2048;
        v745 = v340;
        *v746 = 2048;
        *&v746[2] = v480;
        v481 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
        goto LABEL_742;
      }

      if (LOBYTE(v743[0]) != 1)
      {
        v477 = __nwlog_obj();
        v478 = aBlock[0];
        if (!os_log_type_enabled(v477, aBlock[0]))
        {
          goto LABEL_743;
        }

        v486 = *(v340 + 32);
        v487 = *(v294 + 32);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_stream_associate_with_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v486;
        HIWORD(buf[2]) = 2048;
        v745 = v340;
        *v746 = 2048;
        *&v746[2] = v487;
        v481 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
        goto LABEL_742;
      }

      v482 = __nw_create_backtrace_string();
      v477 = __nwlog_obj();
      v478 = aBlock[0];
      v483 = os_log_type_enabled(v477, aBlock[0]);
      if (v482)
      {
        if (v483)
        {
          v484 = *(v340 + 32);
          v485 = *(v294 + 32);
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v484;
          HIWORD(buf[2]) = 2048;
          v745 = v340;
          *v746 = 2048;
          *&v746[2] = v485;
          *&v746[10] = 2082;
          *&v746[12] = v482;
          _os_log_impl(&dword_181A37000, v477, v478, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v482);
        goto LABEL_743;
      }

      if (v483)
      {
        v488 = *(v340 + 32);
        v489 = *(v294 + 32);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_stream_associate_with_connection";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v488;
        HIWORD(buf[2]) = 2048;
        v745 = v340;
        *v746 = 2048;
        *&v746[2] = v489;
        v481 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_742:
        _os_log_impl(&dword_181A37000, v477, v478, v481, buf, 0x2Au);
      }
    }

LABEL_743:
    if (v476)
    {
      free(v476);
    }

    goto LABEL_745;
  }

  v380 = nw_parameters_copy_default_protocol_stack(*(v340 + 320));
  *aBlock = 0;
  *&aBlock[8] = aBlock;
  *&aBlock[16] = 0x2000000000;
  LOBYTE(v739) = 0;
  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x3802000000;
  v745 = __Block_byref_object_copy__42960;
  *v746 = __Block_byref_object_dispose__42961;
  *&v746[8] = 0;
  v746[16] |= 1u;
  *type = MEMORY[0x1E69E9820];
  v732 = 0x40000000;
  v733 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
  v734 = &unk_1E6A32930;
  v735 = aBlock;
  v736 = buf;
  v737 = v340;
  nw_protocol_stack_iterate_application_protocols(v380, type);
  if (*(buf[1] + 40))
  {
    v381 = v294;
    while (1)
    {
      v381 = *(v381 + 32);
      if (!v381)
      {
        break;
      }

      if (nw_protocol_is_tls_over_stream(v381))
      {
        v382 = *(buf[1] + 40);
        v383 = nw_protocol_boringssl_copy_definition();
        nw_parameters_set_protocol_instance(v382, v384, v381);
        if (v383)
        {
          os_release(v383);
        }

        goto LABEL_714;
      }
    }

    v394 = __nwlog_obj();
    LODWORD(v743[0]) = 136446210;
    *(v743 + 4) = "nw_http1_stream_associate_with_connection";
    LODWORD(v710) = 12;
    v395 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v394, 16, "%{public}s tls should have been in the stack but could not find it", v743, v710);
    v726[0] = OS_LOG_TYPE_ERROR;
    v730 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v395, v726, &v730))
    {
      goto LABEL_718;
    }

    if (v726[0] == OS_LOG_TYPE_FAULT)
    {
      v396 = __nwlog_obj();
      v397 = v726[0];
      if (os_log_type_enabled(v396, v726[0]))
      {
        LODWORD(v743[0]) = 136446210;
        *(v743 + 4) = "nw_http1_stream_associate_with_connection";
        v398 = "%{public}s tls should have been in the stack but could not find it";
LABEL_717:
        _os_log_impl(&dword_181A37000, v396, v397, v398, v743, 0xCu);
      }
    }

    else if (v730 == OS_LOG_TYPE_INFO)
    {
      v402 = __nw_create_backtrace_string();
      v396 = __nwlog_obj();
      v397 = v726[0];
      v403 = os_log_type_enabled(v396, v726[0]);
      if (v402)
      {
        if (v403)
        {
          LODWORD(v743[0]) = 136446466;
          *(v743 + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(v743[1]) = 2082;
          *(&v743[1] + 6) = v402;
          _os_log_impl(&dword_181A37000, v396, v397, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v743, 0x16u);
        }

        free(v402);
        v340 = v723;
        goto LABEL_718;
      }

      v340 = v723;
      if (v403)
      {
        LODWORD(v743[0]) = 136446210;
        *(v743 + 4) = "nw_http1_stream_associate_with_connection";
        v398 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
        goto LABEL_717;
      }
    }

    else
    {
      v396 = __nwlog_obj();
      v397 = v726[0];
      if (os_log_type_enabled(v396, v726[0]))
      {
        LODWORD(v743[0]) = 136446210;
        *(v743 + 4) = "nw_http1_stream_associate_with_connection";
        v398 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
        goto LABEL_717;
      }
    }

LABEL_718:
    if (v395)
    {
      free(v395);
    }

    v471 = 0;
    goto LABEL_721;
  }

  v389 = __nwlog_obj();
  LODWORD(v743[0]) = 136446210;
  *(v743 + 4) = "nw_http1_stream_associate_with_connection";
  LODWORD(v710) = 12;
  v390 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v389, 16, "%{public}s unable to find tls options", v743, v710);
  v726[0] = OS_LOG_TYPE_ERROR;
  v730 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v390, v726, &v730))
  {
    if (v726[0] == OS_LOG_TYPE_FAULT)
    {
      v391 = __nwlog_obj();
      v392 = v726[0];
      if (os_log_type_enabled(v391, v726[0]))
      {
        LODWORD(v743[0]) = 136446210;
        *(v743 + 4) = "nw_http1_stream_associate_with_connection";
        v393 = "%{public}s unable to find tls options";
LABEL_711:
        _os_log_impl(&dword_181A37000, v391, v392, v393, v743, 0xCu);
      }
    }

    else if (v730 == OS_LOG_TYPE_INFO)
    {
      v400 = __nw_create_backtrace_string();
      v391 = __nwlog_obj();
      v392 = v726[0];
      v401 = os_log_type_enabled(v391, v726[0]);
      if (v400)
      {
        if (v401)
        {
          LODWORD(v743[0]) = 136446466;
          *(v743 + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(v743[1]) = 2082;
          *(&v743[1] + 6) = v400;
          _os_log_impl(&dword_181A37000, v391, v392, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v743, 0x16u);
        }

        free(v400);
        v340 = v723;
      }

      else
      {
        v340 = v723;
        if (v401)
        {
          LODWORD(v743[0]) = 136446210;
          *(v743 + 4) = "nw_http1_stream_associate_with_connection";
          v393 = "%{public}s unable to find tls options, no backtrace";
          goto LABEL_711;
        }
      }
    }

    else
    {
      v391 = __nwlog_obj();
      v392 = v726[0];
      if (os_log_type_enabled(v391, v726[0]))
      {
        LODWORD(v743[0]) = 136446210;
        *(v743 + 4) = "nw_http1_stream_associate_with_connection";
        v393 = "%{public}s unable to find tls options, backtrace limit exceeded";
        goto LABEL_711;
      }
    }
  }

  if (v390)
  {
    free(v390);
  }

LABEL_714:
  v471 = 1;
LABEL_721:
  _Block_object_dispose(buf, 8);
  if ((v746[16] & 1) != 0 && *&v746[8])
  {
    os_release(*&v746[8]);
  }

  _Block_object_dispose(aBlock, 8);
  if (v380)
  {
    os_release(v380);
  }

  if (v471)
  {
    goto LABEL_727;
  }

LABEL_755:
  v502 = 0;
  if (*(v340 + 158))
  {
    goto LABEL_760;
  }

LABEL_756:
  v503 = __nwlog_obj();
  if (os_log_type_enabled(v503, OS_LOG_TYPE_DEBUG))
  {
    v504 = *(v340 + 256);
    v505 = *(*(v340 + 248) + 372);
    if (v504)
    {
      LODWORD(v504) = *(v504 + 860);
    }

    v506 = *(v340 + 424);
    LODWORD(buf[0]) = 136448258;
    *(buf + 4) = "nw_http1_start_new_connection_for_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v340 + 74;
    HIWORD(buf[2]) = 2080;
    v745 = " ";
    *v746 = 1024;
    *&v746[2] = v505;
    *&v746[6] = 1024;
    *&v746[8] = v504;
    *&v746[12] = 1024;
    *&v746[14] = v506;
    *&v746[18] = 2048;
    *&v746[20] = v294;
    *&v746[28] = 1024;
    *&v746[30] = v506;
    *&v746[34] = 2048;
    *&v746[36] = v340;
    _os_log_impl(&dword_181A37000, v503, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
  }

LABEL_760:
  *(v340 + 428) |= 1u;
  v507 = nw_protocol_copy_info(v290);
  v295 = v507;
  if (!v507)
  {
    v509 = 0;
    goto LABEL_766;
  }

  v508 = _nw_array_copy_last_object(v507);
  v509 = v508;
  if (!v508)
  {
LABEL_766:
    v510 = 1;
    goto LABEL_767;
  }

  if (nw_protocol_metadata_is_tls(v508))
  {
    v509 = v509;
    nw_http_connection_metadata_set_sec_metadata(*(v294 + 768), v509);
    os_release(v509);
  }

  v510 = 0;
LABEL_767:
  if (!v502)
  {
    goto LABEL_768;
  }

  v604 = __nwlog_obj();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "nw_http1_get_output_protocol";
  LODWORD(v710) = 12;
  v605 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v604, 16, "%{public}s called with null connection", buf, v710);
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (__nwlog_fault(v605, type, aBlock))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v606 = __nwlog_obj();
      v607 = type[0];
      if (os_log_type_enabled(v606, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_output_protocol";
        v608 = "%{public}s called with null connection";
LABEL_1069:
        _os_log_impl(&dword_181A37000, v606, v607, v608, buf, 0xCu);
      }
    }

    else if (aBlock[0] == 1)
    {
      v662 = __nw_create_backtrace_string();
      v606 = __nwlog_obj();
      v607 = type[0];
      v663 = os_log_type_enabled(v606, type[0]);
      if (v662)
      {
        if (v663)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_get_output_protocol";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v662;
          _os_log_impl(&dword_181A37000, v606, v607, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v662);
        goto LABEL_1070;
      }

      if (v663)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_output_protocol";
        v608 = "%{public}s called with null connection, no backtrace";
        goto LABEL_1069;
      }
    }

    else
    {
      v606 = __nwlog_obj();
      v607 = type[0];
      if (os_log_type_enabled(v606, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_output_protocol";
        v608 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_1069;
      }
    }
  }

LABEL_1070:
  if (v605)
  {
    free(v605);
  }

  v294 = 0;
  v290 = v722;
LABEL_768:
  nw_protocol_connect(v290, v294);
  if ((v510 & 1) == 0)
  {
    os_release(v509);
  }

  if (v295)
  {
LABEL_771:
    os_release(v295);
  }
}