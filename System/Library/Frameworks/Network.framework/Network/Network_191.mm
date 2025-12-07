uint64_t nw_protocol_http1_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v58[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v16, &type, &v47))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null protocol";
    }

    else if (v47 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v28 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v50 = "nw_http1_get_http1_protocol";
          v51 = 2082;
          v52 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_90:
        if (!v16)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      if (!v28)
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_89;
  }

  handle = a1->handle;
  if (!handle)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v16, &type, &v47))
    {
      goto LABEL_90;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v47 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_90;
        }

        *buf = 136446210;
        v50 = "nw_http1_get_http1_protocol";
        v19 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_89;
      }

      v29 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v30 = os_log_type_enabled(v17, type);
      if (!v29)
      {
        if (!v30)
        {
          goto LABEL_90;
        }

        *buf = 136446210;
        v50 = "nw_http1_get_http1_protocol";
        v19 = "%{public}s called with null handle, no backtrace";
        goto LABEL_89;
      }

      if (!v30)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v50 = "nw_http1_get_http1_protocol";
      v51 = 2082;
      v52 = v29;
      v31 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_90;
    }

    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v19 = "%{public}s called with null handle";
LABEL_89:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    goto LABEL_90;
  }

  v3 = handle[6];
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_92;
    }

    v4 = *(handle + 2);
    if (v4)
    {
      handle = (v4 + 480);
      goto LABEL_10;
    }

    v33 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v16, &type, &v47))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null handle->http1_connection";
      goto LABEL_89;
    }

    if (v47 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_89;
    }

    v29 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v35 = os_log_type_enabled(v17, type);
    if (!v29)
    {
      if (!v35)
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_89;
    }

    if (v35)
    {
      *buf = 136446466;
      v50 = "nw_http1_get_http1_protocol";
      v51 = 2082;
      v52 = v29;
      v31 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

LABEL_55:
    free(v29);
    if (!v16)
    {
      goto LABEL_92;
    }

LABEL_91:
    free(v16);
    goto LABEL_92;
  }

  v5 = *(handle + 1);
  if (!v5)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v16, &type, &v47))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null handle->http1_stream";
      goto LABEL_89;
    }

    if (v47 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_89;
    }

    v29 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v34 = os_log_type_enabled(v17, type);
    if (!v29)
    {
      if (!v34)
      {
        goto LABEL_90;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v19 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_89;
    }

    if (!v34)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v50 = "nw_http1_get_http1_protocol";
    v51 = 2082;
    v52 = v29;
    v31 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v17, v18, v31, buf, 0x16u);
    goto LABEL_55;
  }

  handle = (v5 + 248);
LABEL_10:
  v6 = *handle;
  if (*handle)
  {
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v21 = a2;
      v22 = __nwlog_obj();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
      a2 = v21;
      if (v23)
      {
        v24 = *(v6 + 372);
        *buf = 136447234;
        v50 = "nw_protocol_http1_remove_listen_handler";
        v51 = 2082;
        v52 = (v6 + 74);
        v53 = 2080;
        v54 = " ";
        v55 = 1024;
        v56 = v24;
        v57 = 2048;
        v58[0] = v21;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with listen_protocol %p", buf, 0x30u);
        a2 = v21;
      }
    }

    if (*(v6 + 328) == a2)
    {
      *(v6 + 328) = 0;
      a2->protocol_handler = 0;
    }

    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(v6 + 372);
        *buf = 136446978;
        v50 = "nw_protocol_http1_remove_listen_handler";
        v51 = 2082;
        v52 = (v6 + 74);
        v53 = 2080;
        v54 = " ";
        v55 = 1024;
        v56 = v26;
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed protocol listen handler", buf, 0x26u);
      }
    }

    if ((*(v6 + 376) & 1) == 0)
    {
      *(v6 + 376) |= 0x10u;
      v7 = *(v6 + 208);
      while (v7)
      {
        v8 = v7;
        v7 = *(v7 + 592);
        v9 = *(v8 + 784);
        if (v9)
        {
          if (*v9)
          {
            dispatch_source_set_timer(*v9, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          }

          else
          {
            *(v9 + 32) = xmmword_182B08D40;
            if (*(v9 + 48) == 1 && *(v9 + 49) == 1)
            {
              nw_queue_source_run_timer(v9);
            }
          }
        }

        else if ((*(v8 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v11 = *(v8 + 488);
            if (v11)
            {
              LODWORD(v11) = *(v11 + 424);
            }

            v12 = *(*(v8 + 480) + 372);
            v13 = *(v8 + 860);
            *buf = 136447490;
            v50 = "nw_protocol_http1_remove_listen_handler";
            v51 = 2082;
            v52 = (v8 + 74);
            v53 = 2080;
            v54 = " ";
            v55 = 1024;
            v56 = v12;
            v57 = 1024;
            LODWORD(v58[0]) = v13;
            WORD2(v58[0]) = 1024;
            *(v58 + 6) = v11;
            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> no destroy timer on idle http1 connection when listen handler removed", buf, 0x32u);
          }
        }
      }
    }

    return 1;
  }

LABEL_92:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v50 = "nw_protocol_http1_remove_listen_handler";
  LODWORD(v46) = 12;
  v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v46);
  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (__nwlog_fault(v36, &type, &v47))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v50 = "nw_protocol_http1_remove_listen_handler";
        v39 = "%{public}s called with null http1";
LABEL_103:
        v44 = v37;
        v45 = v38;
LABEL_104:
        _os_log_impl(&dword_181A37000, v44, v45, v39, buf, 0xCu);
      }
    }

    else if (v47 == 1)
    {
      v40 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      v42 = type;
      v43 = os_log_type_enabled(gLogObj, type);
      if (v40)
      {
        if (v43)
        {
          *buf = 136446466;
          v50 = "nw_protocol_http1_remove_listen_handler";
          v51 = 2082;
          v52 = v40;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v40);
        goto LABEL_105;
      }

      if (v43)
      {
        *buf = 136446210;
        v50 = "nw_protocol_http1_remove_listen_handler";
        v39 = "%{public}s called with null http1, no backtrace";
        v44 = v41;
        v45 = v42;
        goto LABEL_104;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v50 = "nw_protocol_http1_remove_listen_handler";
        v39 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_103;
      }
    }
  }

LABEL_105:
  if (v36)
  {
    free(v36);
  }

  return 0;
}

BOOL nw_protocol_http1_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_http1_get_http1_protocol";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v47 = "nw_http1_get_http1_protocol";
      v15 = "%{public}s called with null protocol";
    }

    else
    {
      if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v18 = os_log_type_enabled(v13, type);
        if (!backtrace_string)
        {
          if (!v18)
          {
            goto LABEL_75;
          }

          *buf = 136446210;
          v47 = "nw_http1_get_http1_protocol";
          v15 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_74;
        }

        if (v18)
        {
          *buf = 136446466;
          v47 = "nw_http1_get_http1_protocol";
          v48 = 2082;
          v49 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_75;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v47 = "nw_http1_get_http1_protocol";
      v15 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_74;
  }

  handle = a1->handle;
  if (!handle)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_http1_get_http1_protocol";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v44 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v47 = "nw_http1_get_http1_protocol";
        v15 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_74;
      }

      v19 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v20 = os_log_type_enabled(v13, type);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v47 = "nw_http1_get_http1_protocol";
        v15 = "%{public}s called with null handle, no backtrace";
        goto LABEL_74;
      }

      if (!v20)
      {
        goto LABEL_38;
      }

      *buf = 136446466;
      v47 = "nw_http1_get_http1_protocol";
      v48 = 2082;
      v49 = v19;
      v21 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    v47 = "nw_http1_get_http1_protocol";
    v15 = "%{public}s called with null handle";
LABEL_74:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_75;
  }

  v4 = handle[6];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_77;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      handle = (v5 + 480);
      goto LABEL_10;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_http1_get_http1_protocol";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v12, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v47 = "nw_http1_get_http1_protocol";
        v15 = "%{public}s called with null handle->http1_connection";
        goto LABEL_74;
      }

      if (v44 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v47 = "nw_http1_get_http1_protocol";
        v15 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_74;
      }

      v19 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v32 = os_log_type_enabled(v13, type);
      if (!v19)
      {
        if (!v32)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v47 = "nw_http1_get_http1_protocol";
        v15 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_74;
      }

      if (v32)
      {
        *buf = 136446466;
        v47 = "nw_http1_get_http1_protocol";
        v48 = 2082;
        v49 = v19;
        v21 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

LABEL_38:
      free(v19);
      if (!v12)
      {
LABEL_77:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v47 = "nw_protocol_http1_add_listen_handler";
        LODWORD(v43) = 12;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v43);
        type = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (!__nwlog_fault(v33, &type, &v44))
        {
          goto LABEL_90;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          v35 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_90;
          }

          *buf = 136446210;
          v47 = "nw_protocol_http1_add_listen_handler";
          v36 = "%{public}s called with null http1";
        }

        else
        {
          if (v44 == 1)
          {
            v37 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            v39 = type;
            v40 = os_log_type_enabled(gLogObj, type);
            if (v37)
            {
              if (v40)
              {
                *buf = 136446466;
                v47 = "nw_protocol_http1_add_listen_handler";
                v48 = 2082;
                v49 = v37;
                _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v37);
              goto LABEL_90;
            }

            if (!v40)
            {
LABEL_90:
              if (v33)
              {
                free(v33);
              }

              return 0;
            }

            *buf = 136446210;
            v47 = "nw_protocol_http1_add_listen_handler";
            v36 = "%{public}s called with null http1, no backtrace";
            v41 = v38;
            v42 = v39;
LABEL_89:
            _os_log_impl(&dword_181A37000, v41, v42, v36, buf, 0xCu);
            goto LABEL_90;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          v35 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_90;
          }

          *buf = 136446210;
          v47 = "nw_protocol_http1_add_listen_handler";
          v36 = "%{public}s called with null http1, backtrace limit exceeded";
        }

        v41 = v34;
        v42 = v35;
        goto LABEL_89;
      }

LABEL_76:
      free(v12);
      goto LABEL_77;
    }

LABEL_75:
    if (!v12)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_http1_get_http1_protocol";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v47 = "nw_http1_get_http1_protocol";
      v15 = "%{public}s called with null handle->http1_stream";
      goto LABEL_74;
    }

    if (v44 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v47 = "nw_http1_get_http1_protocol";
      v15 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_74;
    }

    v19 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v31 = os_log_type_enabled(v13, type);
    if (!v19)
    {
      if (!v31)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v47 = "nw_http1_get_http1_protocol";
      v15 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_74;
    }

    if (!v31)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v47 = "nw_http1_get_http1_protocol";
    v48 = 2082;
    v49 = v19;
    v21 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v13, v14, v21, buf, 0x16u);
    goto LABEL_38;
  }

  handle = (v6 + 248);
LABEL_10:
  v7 = *handle;
  if (!*handle)
  {
    goto LABEL_77;
  }

  if (*(v7 + 328))
  {
    if ((*(v7 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v10 = *(v7 + 372);
      *buf = 136446978;
      v47 = "nw_protocol_http1_add_listen_handler";
      v48 = 2082;
      v49 = (v7 + 74);
      v50 = 2080;
      v51 = " ";
      v52 = 1024;
      v53 = v10;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> already have a listen handler, ignoring add", buf, 0x26u);
    }

    return 0;
  }

  if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v22 = a1;
    v23 = a3;
    v24 = a2;
    v25 = __nwlog_obj();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    a2 = v24;
    a3 = v23;
    v27 = v26;
    a1 = v22;
    if (v27)
    {
      v28 = *(v7 + 372);
      *buf = 136446978;
      v47 = "nw_protocol_http1_add_listen_handler";
      v48 = 2082;
      v49 = (v7 + 74);
      v50 = 2080;
      v51 = " ";
      v52 = 1024;
      v53 = v28;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol listen handler", buf, 0x26u);
      a2 = v24;
      a3 = v23;
      a1 = v22;
    }
  }

  *(v7 + 328) = a2;
  a2->protocol_handler = v7;
  if (a3)
  {
    nw_protocol_remove_instance(a1);
  }

  return 1;
}

uint64_t nw_protocol_http1_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http1_get_http1_protocol";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v88) = 0;
    if (!__nwlog_fault(v35, type, &v88))
    {
      goto LABEL_163;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v99 = "nw_http1_get_http1_protocol";
      v38 = "%{public}s called with null protocol";
    }

    else
    {
      if (v88 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type[0];
        v46 = os_log_type_enabled(v36, type[0]);
        if (!backtrace_string)
        {
          if (!v46)
          {
            goto LABEL_163;
          }

          *buf = 136446210;
          v99 = "nw_http1_get_http1_protocol";
          v38 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_162;
        }

        if (v46)
        {
          *buf = 136446466;
          v99 = "nw_http1_get_http1_protocol";
          v100 = 2082;
          v101 = backtrace_string;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_163;
      }

      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v99 = "nw_http1_get_http1_protocol";
      v38 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_162;
  }

  handle = a1->handle;
  if (!handle)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http1_get_http1_protocol";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v88) = 0;
    if (!__nwlog_fault(v35, type, &v88))
    {
      goto LABEL_163;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v88 != 1)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (!os_log_type_enabled(v36, type[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v99 = "nw_http1_get_http1_protocol";
        v38 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_162;
      }

      v47 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type[0];
      v48 = os_log_type_enabled(v36, type[0]);
      if (!v47)
      {
        if (!v48)
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v99 = "nw_http1_get_http1_protocol";
        v38 = "%{public}s called with null handle, no backtrace";
        goto LABEL_162;
      }

      if (!v48)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      v99 = "nw_http1_get_http1_protocol";
      v100 = 2082;
      v101 = v47;
      v49 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v36 = __nwlog_obj();
    v37 = type[0];
    if (!os_log_type_enabled(v36, type[0]))
    {
      goto LABEL_163;
    }

    *buf = 136446210;
    v99 = "nw_http1_get_http1_protocol";
    v38 = "%{public}s called with null handle";
LABEL_162:
    _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
    goto LABEL_163;
  }

  v4 = handle[6];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_165;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      handle = (v5 + 480);
      goto LABEL_10;
    }

    v64 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http1_get_http1_protocol";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v88) = 0;
    if (__nwlog_fault(v35, type, &v88))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (!os_log_type_enabled(v36, type[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v99 = "nw_http1_get_http1_protocol";
        v38 = "%{public}s called with null handle->http1_connection";
        goto LABEL_162;
      }

      if (v88 != 1)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (!os_log_type_enabled(v36, type[0]))
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v99 = "nw_http1_get_http1_protocol";
        v38 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_162;
      }

      v47 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type[0];
      v72 = os_log_type_enabled(v36, type[0]);
      if (!v47)
      {
        if (!v72)
        {
          goto LABEL_163;
        }

        *buf = 136446210;
        v99 = "nw_http1_get_http1_protocol";
        v38 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_162;
      }

      if (v72)
      {
        *buf = 136446466;
        v99 = "nw_http1_get_http1_protocol";
        v100 = 2082;
        v101 = v47;
        v49 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_71;
      }

LABEL_72:
      free(v47);
      if (!v35)
      {
LABEL_165:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v99 = "nw_protocol_http1_finalize_output_frames";
        LODWORD(v80) = 12;
        v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v80);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v88) = 0;
        if (__nwlog_fault(v41, type, &v88))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v42 = gLogObj;
            v43 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446210;
              v99 = "nw_protocol_http1_finalize_output_frames";
              v44 = "%{public}s called with null http1";
              goto LABEL_176;
            }
          }

          else if (v88 == 1)
          {
            v73 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v74 = gLogObj;
            v75 = type[0];
            v76 = os_log_type_enabled(gLogObj, type[0]);
            if (v73)
            {
              if (v76)
              {
                *buf = 136446466;
                v99 = "nw_protocol_http1_finalize_output_frames";
                v100 = 2082;
                v101 = v73;
                _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v73);
              goto LABEL_178;
            }

            if (v76)
            {
              *buf = 136446210;
              v99 = "nw_protocol_http1_finalize_output_frames";
              v44 = "%{public}s called with null http1, no backtrace";
              v77 = v74;
              v78 = v75;
              goto LABEL_177;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v42 = gLogObj;
            v43 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446210;
              v99 = "nw_protocol_http1_finalize_output_frames";
              v44 = "%{public}s called with null http1, backtrace limit exceeded";
              goto LABEL_176;
            }
          }
        }

        goto LABEL_178;
      }

LABEL_164:
      free(v35);
      goto LABEL_165;
    }

LABEL_163:
    if (!v35)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v63 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http1_get_http1_protocol";
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v88) = 0;
    if (!__nwlog_fault(v35, type, &v88))
    {
      goto LABEL_163;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v99 = "nw_http1_get_http1_protocol";
      v38 = "%{public}s called with null handle->http1_stream";
      goto LABEL_162;
    }

    if (v88 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v99 = "nw_http1_get_http1_protocol";
      v38 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_162;
    }

    v47 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type[0];
    v71 = os_log_type_enabled(v36, type[0]);
    if (!v47)
    {
      if (!v71)
      {
        goto LABEL_163;
      }

      *buf = 136446210;
      v99 = "nw_http1_get_http1_protocol";
      v38 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_162;
    }

    if (!v71)
    {
      goto LABEL_72;
    }

    *buf = 136446466;
    v99 = "nw_http1_get_http1_protocol";
    v100 = 2082;
    v101 = v47;
    v49 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_71:
    _os_log_impl(&dword_181A37000, v36, v37, v49, buf, 0x16u);
    goto LABEL_72;
  }

  handle = (v6 + 248);
LABEL_10:
  v7 = *handle;
  if (!v7)
  {
    goto LABEL_165;
  }

  if (a2)
  {
    *type = 0;
    v93 = type;
    v94 = 0x2000000000;
    v95 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2000000000;
    v91 = 0;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 0x40000000;
    v82 = ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v83 = &unk_1E6A32CB8;
    v86 = v7;
    v87 = a2;
    v84 = type;
    v85 = &v88;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v9 = *(tqh_first + 4);
      v10 = v82(v81);
      tqh_first = v9;
    }

    while ((v10 & 1) != 0);
    if (!a2->tqh_first)
    {
      goto LABEL_46;
    }

    if (*(v93 + 3))
    {
      v11 = v89[3];
      if (v11)
      {
        if ((*(v11 + 428) & 4) != 0)
        {
          if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v16 = __nwlog_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = v89[3];
              v18 = (v17 + 74);
              v19 = *(v17 + 256);
              v20 = *(*(v17 + 248) + 372);
              if (v19)
              {
                LODWORD(v19) = *(v19 + 860);
              }

              v21 = *(v17 + 424);
              *buf = 136447490;
              v99 = "nw_protocol_http1_finalize_output_frames";
              v100 = 2082;
              v101 = v18;
              v102 = 2080;
              v103 = " ";
              v104 = 1024;
              v105 = v20;
              v106 = 1024;
              v107 = v19;
              v108 = 1024;
              v109 = v21;
              _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> passing through frames", buf, 0x32u);
            }
          }

LABEL_40:
          v28 = a2->tqh_first;
          do
          {
            if (!v28)
            {
              break;
            }

            v29 = *(v28 + 4);
            v30 = ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_146(&__block_literal_global_149, v28);
            v28 = v29;
          }

          while ((v30 & 1) != 0);
          v31 = *(v93 + 3);
          if (v31)
          {
            v32 = *(v31 + 32);
LABEL_45:
            nw_protocol_finalize_output_frames(v32, a2);
LABEL_46:
            v33 = 1;
LABEL_47:
            _Block_object_dispose(&v88, 8);
            _Block_object_dispose(type, 8);
            return v33;
          }

          v56 = __nwlog_obj();
          *buf = 136446210;
          v99 = "nw_http1_get_output_handler";
          LODWORD(v80) = 12;
          v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s called with null connection", buf, v80);
          v97 = OS_LOG_TYPE_ERROR;
          v96 = 0;
          if (__nwlog_fault(v57, &v97, &v96))
          {
            if (v97 == OS_LOG_TYPE_FAULT)
            {
              v58 = __nwlog_obj();
              v59 = v97;
              if (os_log_type_enabled(v58, v97))
              {
                *buf = 136446210;
                v99 = "nw_http1_get_output_handler";
                v60 = "%{public}s called with null connection";
LABEL_154:
                _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
              }
            }

            else if (v96 == 1)
            {
              v69 = __nw_create_backtrace_string();
              v58 = __nwlog_obj();
              v59 = v97;
              v70 = os_log_type_enabled(v58, v97);
              if (v69)
              {
                if (v70)
                {
                  *buf = 136446466;
                  v99 = "nw_http1_get_output_handler";
                  v100 = 2082;
                  v101 = v69;
                  _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v69);
                goto LABEL_155;
              }

              if (v70)
              {
                *buf = 136446210;
                v99 = "nw_http1_get_output_handler";
                v60 = "%{public}s called with null connection, no backtrace";
                goto LABEL_154;
              }
            }

            else
            {
              v58 = __nwlog_obj();
              v59 = v97;
              if (os_log_type_enabled(v58, v97))
              {
                *buf = 136446210;
                v99 = "nw_http1_get_output_handler";
                v60 = "%{public}s called with null connection, backtrace limit exceeded";
                goto LABEL_154;
              }
            }
          }

LABEL_155:
          if (v57)
          {
            free(v57);
          }

          v32 = 0;
          goto LABEL_45;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v99 = "nw_protocol_http1_finalize_output_frames";
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s haven't sent headers, but we have someone else's frames to finalize", buf, 12);
        v97 = OS_LOG_TYPE_ERROR;
        v96 = 0;
        if (__nwlog_fault(v12, &v97, &v96))
        {
          if (v97 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = v97;
            if (!os_log_type_enabled(gLogObj, v97))
            {
              goto LABEL_38;
            }

            *buf = 136446210;
            v99 = "nw_protocol_http1_finalize_output_frames";
            v15 = "%{public}s haven't sent headers, but we have someone else's frames to finalize";
LABEL_36:
            v26 = v13;
            v27 = v14;
LABEL_37:
            _os_log_impl(&dword_181A37000, v26, v27, v15, buf, 0xCu);
            goto LABEL_38;
          }

          if (v96 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = v97;
            if (!os_log_type_enabled(gLogObj, v97))
            {
              goto LABEL_38;
            }

            *buf = 136446210;
            v99 = "nw_protocol_http1_finalize_output_frames";
            v15 = "%{public}s haven't sent headers, but we have someone else's frames to finalize, backtrace limit exceeded";
            goto LABEL_36;
          }

          v22 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v24 = v97;
          v25 = os_log_type_enabled(gLogObj, v97);
          if (v22)
          {
            if (v25)
            {
              *buf = 136446466;
              v99 = "nw_protocol_http1_finalize_output_frames";
              v100 = 2082;
              v101 = v22;
              _os_log_impl(&dword_181A37000, v23, v24, "%{public}s haven't sent headers, but we have someone else's frames to finalize, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v22);
            goto LABEL_38;
          }

          if (v25)
          {
            *buf = 136446210;
            v99 = "nw_protocol_http1_finalize_output_frames";
            v15 = "%{public}s haven't sent headers, but we have someone else's frames to finalize, no backtrace";
            v26 = v23;
            v27 = v24;
            goto LABEL_37;
          }
        }

LABEL_38:
        if (v12)
        {
          free(v12);
        }

        goto LABEL_40;
      }

      v55 = __nwlog_obj();
      *buf = 136446210;
      v99 = "nw_protocol_http1_finalize_output_frames";
      v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null http1_stream", buf, 12);
      v97 = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v51, &v97, &v96))
      {
        goto LABEL_149;
      }

      if (v97 == OS_LOG_TYPE_FAULT)
      {
        v52 = __nwlog_obj();
        v53 = v97;
        if (os_log_type_enabled(v52, v97))
        {
          *buf = 136446210;
          v99 = "nw_protocol_http1_finalize_output_frames";
          v54 = "%{public}s called with null http1_stream";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      if (v96 != 1)
      {
        v52 = __nwlog_obj();
        v53 = v97;
        if (os_log_type_enabled(v52, v97))
        {
          *buf = 136446210;
          v99 = "nw_protocol_http1_finalize_output_frames";
          v54 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      v65 = __nw_create_backtrace_string();
      v52 = __nwlog_obj();
      v53 = v97;
      v68 = os_log_type_enabled(v52, v97);
      if (!v65)
      {
        if (v68)
        {
          *buf = 136446210;
          v99 = "nw_protocol_http1_finalize_output_frames";
          v54 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      if (v68)
      {
        *buf = 136446466;
        v99 = "nw_protocol_http1_finalize_output_frames";
        v100 = 2082;
        v101 = v65;
        v67 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        goto LABEL_111;
      }
    }

    else
    {
      v50 = __nwlog_obj();
      *buf = 136446210;
      v99 = "nw_protocol_http1_finalize_output_frames";
      v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null http1_connection", buf, 12);
      v97 = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v51, &v97, &v96))
      {
        goto LABEL_149;
      }

      if (v97 == OS_LOG_TYPE_FAULT)
      {
        v52 = __nwlog_obj();
        v53 = v97;
        if (os_log_type_enabled(v52, v97))
        {
          *buf = 136446210;
          v99 = "nw_protocol_http1_finalize_output_frames";
          v54 = "%{public}s called with null http1_connection";
LABEL_148:
          _os_log_impl(&dword_181A37000, v52, v53, v54, buf, 0xCu);
        }

LABEL_149:
        if (v51)
        {
          free(v51);
        }

        v33 = 0;
        goto LABEL_47;
      }

      if (v96 != 1)
      {
        v52 = __nwlog_obj();
        v53 = v97;
        if (os_log_type_enabled(v52, v97))
        {
          *buf = 136446210;
          v99 = "nw_protocol_http1_finalize_output_frames";
          v54 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      v65 = __nw_create_backtrace_string();
      v52 = __nwlog_obj();
      v53 = v97;
      v66 = os_log_type_enabled(v52, v97);
      if (!v65)
      {
        if (v66)
        {
          *buf = 136446210;
          v99 = "nw_protocol_http1_finalize_output_frames";
          v54 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      if (v66)
      {
        *buf = 136446466;
        v99 = "nw_protocol_http1_finalize_output_frames";
        v100 = 2082;
        v101 = v65;
        v67 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
LABEL_111:
        _os_log_impl(&dword_181A37000, v52, v53, v67, buf, 0x16u);
      }
    }

    free(v65);
    goto LABEL_149;
  }

  v40 = __nwlog_obj();
  *buf = 136446210;
  v99 = "nw_protocol_http1_finalize_output_frames";
  v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null frames", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v88) = 0;
  if (__nwlog_fault(v41, type, &v88))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        v99 = "nw_protocol_http1_finalize_output_frames";
        v44 = "%{public}s called with null frames";
LABEL_176:
        v77 = v42;
        v78 = v43;
LABEL_177:
        _os_log_impl(&dword_181A37000, v77, v78, v44, buf, 0xCu);
      }
    }

    else if (v88 == 1)
    {
      v61 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = type[0];
      v62 = os_log_type_enabled(v42, type[0]);
      if (v61)
      {
        if (v62)
        {
          *buf = 136446466;
          v99 = "nw_protocol_http1_finalize_output_frames";
          v100 = 2082;
          v101 = v61;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null frames, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v61);
        goto LABEL_178;
      }

      if (v62)
      {
        *buf = 136446210;
        v99 = "nw_protocol_http1_finalize_output_frames";
        v44 = "%{public}s called with null frames, no backtrace";
        goto LABEL_176;
      }
    }

    else
    {
      v42 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v42, type[0]))
      {
        *buf = 136446210;
        v99 = "nw_protocol_http1_finalize_output_frames";
        v44 = "%{public}s called with null frames, backtrace limit exceeded";
        goto LABEL_176;
      }
    }
  }

LABEL_178:
  if (v41)
  {
    free(v41);
  }

  return 0;
}

uint64_t ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v184 = *MEMORY[0x1E69E9840];
  if (nw_frame_get_finalizer_context(a2) != a1[6])
  {
    finalizer_context = nw_frame_get_finalizer_context(a2);
    if (!finalizer_context)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s frame %p has no context", buf, 22);
      type[0] = OS_LOG_TYPE_ERROR;
      v176 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, type, &v176))
      {
        goto LABEL_95;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no context";
        goto LABEL_94;
      }

      if (v176 != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no context, backtrace limit exceeded";
        goto LABEL_94;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type[0];
      v17 = os_log_type_enabled(gLogObj, type[0]);
      if (!backtrace_string)
      {
        if (!v17)
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no context, no backtrace";
        goto LABEL_94;
      }

      if (v17)
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2082;
        v178 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s frame %p has no context, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
LABEL_95:
      if (!v12)
      {
LABEL_98:
        nw_frame_finalize(a2);
        return 1;
      }

      goto LABEL_96;
    }

    *(*(a1[4] + 8) + 24) = finalizer_context[1];
    *(*(a1[5] + 8) + 24) = *finalizer_context;
    *finalizer_context = 0;
    finalizer_context[1] = 0;
    if (a2)
    {
      *(a2 + 80) = *(finalizer_context + 1);
      goto LABEL_5;
    }

    v87 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_frame_unwrap_context";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s called with null frame", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v176 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v88, type, &v176))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v89 = __nwlog_obj();
        v90 = type[0];
        if (os_log_type_enabled(v89, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_frame_unwrap_context";
          v91 = "%{public}s called with null frame";
LABEL_204:
          _os_log_impl(&dword_181A37000, v89, v90, v91, buf, 0xCu);
        }
      }

      else if (v176 == OS_LOG_TYPE_INFO)
      {
        v92 = __nw_create_backtrace_string();
        v89 = __nwlog_obj();
        v90 = type[0];
        v93 = os_log_type_enabled(v89, type[0]);
        if (v92)
        {
          if (v93)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_frame_unwrap_context";
            *&buf[12] = 2082;
            *&buf[14] = v92;
            _os_log_impl(&dword_181A37000, v89, v90, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v92);
          goto LABEL_205;
        }

        if (v93)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_frame_unwrap_context";
          v91 = "%{public}s called with null frame, no backtrace";
          goto LABEL_204;
        }
      }

      else
      {
        v89 = __nwlog_obj();
        v90 = type[0];
        if (os_log_type_enabled(v89, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_frame_unwrap_context";
          v91 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_204;
        }
      }
    }

LABEL_205:
    if (!v88)
    {
LABEL_6:
      v5 = *(*(a1[4] + 8) + 24);
      if (v5)
      {
        v6 = *(a1[5] + 8);
        v7 = *(v6 + 24);
        if (v7)
        {
          if ((*(v7 + 428) & 0x200) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_28;
        }

        v18 = *(v5 + 488);
        if (v18)
        {
          *(v6 + 24) = v18;
          if ((*(*(*(a1[5] + 8) + 24) + 428) & 0x200) == 0)
          {
LABEL_110:
            v173[0] = MEMORY[0x1E69E9820];
            v173[1] = 0x40000000;
            v173[2] = ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_143;
            v173[3] = &__block_descriptor_tmp_144_43461;
            v65 = a1[6];
            v173[4] = a2;
            v173[5] = v65;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
            v178 = &unk_1E6A303F0;
            *&v179[8] = 3;
            LOBYTE(v180) = 1;
            *v179 = v173;
            os_unfair_lock_lock(&lock);
            (*&buf[16])(buf);
            os_unfair_lock_unlock(&lock);
            v66 = *(*(*(a1[5] + 8) + 24) + 352);
            v67 = nw_frame_unclaimed_length(a2);
            nw_http_transaction_metadata_increment_outbound_body_transfer_size(v66, v67);
            v68 = *(*(a1[5] + 8) + 24);
            v69 = nw_frame_unclaimed_length(a2);
            v70 = *(v68 + 176);
            *(v68 + 176) = &v69[v70];
            if (__CFADD__(v70, v69))
            {
              if (gLogDatapath == 1)
              {
                v110 = __nwlog_obj();
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                {
                  v111 = *(v68 + 176);
                  *buf = 136446978;
                  *&buf[4] = "increment_outbound_body_size";
                  *&buf[12] = 2082;
                  *&buf[14] = "outbound_body_size";
                  *&buf[22] = 2048;
                  v178 = v69;
                  *v179 = 2048;
                  *&v179[2] = v111;
                  _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                }
              }

              *(v68 + 176) = -1;
            }

            if (!nw_frame_is_metadata_complete(a2))
            {
              return 1;
            }

            v71 = *(*(a1[5] + 8) + 24);
            *(v71 + 428) |= 0x800u;
            v72 = *(*(*(a1[5] + 8) + 24) + 256);
            *(v72 + 872) |= 0x20u;
            nw_http_transaction_metadata_mark_outbound_message_end(*(*(*(a1[5] + 8) + 24) + 352));
            v73 = a1[5];
            v74 = *(*(v73 + 8) + 24);
            if (*(v74 + 168) != 1 || *(v74 + 160) == *(v74 + 176))
            {
              return 1;
            }

            if ((*(v74 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v76 = gLogObj;
              v77 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
              v73 = a1[5];
              if (v77)
              {
                v78 = *(*(v73 + 8) + 24);
                v79 = v78 + 74;
                v80 = *(v78 + 256);
                if (v80)
                {
                  LODWORD(v80) = *(v80 + 860);
                }

                v81 = *(*(v78 + 248) + 372);
                v82 = *(v78 + 424);
                if (*(v78 + 168) == 1)
                {
                  v83 = *(v78 + 160);
                }

                else
                {
                  v83 = -1;
                }

                v84 = *(v78 + 176);
                *buf = 136448002;
                *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = v79;
                *&buf[22] = 2080;
                v178 = " ";
                *v179 = 1024;
                *&v179[2] = v81;
                *&v179[6] = 1024;
                *&v179[8] = v80;
                LOWORD(v180) = 1024;
                *(&v180 + 2) = v82;
                HIWORD(v180) = 2048;
                v181 = v83;
                v182 = 2048;
                v183 = v84;
                _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                v73 = a1[5];
              }
            }

            nw_protocol_error(*(*(*(v73 + 8) + 24) + 48), *(*(v73 + 8) + 24));
            v85 = *(*(a1[5] + 8) + 24);
            nw_protocol_disconnected(*(v85 + 48), v85);
            return 0;
          }

LABEL_28:
          v19 = nw_frame_unclaimed_length(a2);
          *type = 0;
          nw_frame_get_buffer(a2, type);
          if (*(*(a1[4] + 8) + 24))
          {
            v21 = *type;
            if (*type)
            {
              v22 = -1;
              do
              {
                ++v22;
                v23 = v21 > 0xF;
                v21 >>= 4;
              }

              while (v23);
              v24 = v22 + 3;
              v25 = 7;
            }

            else
            {
              v25 = 7;
              v24 = 2;
            }

            goto LABEL_42;
          }

          v94 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
          LODWORD(v162) = 12;
          v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s called with null http1_connection", buf, v162);
          v176 = OS_LOG_TYPE_ERROR;
          v175 = 0;
          if (__nwlog_fault(v95, &v176, &v175))
          {
            if (v176 == OS_LOG_TYPE_FAULT)
            {
              v96 = __nwlog_obj();
              v97 = v176;
              if (os_log_type_enabled(v96, v176))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                v98 = "%{public}s called with null http1_connection";
LABEL_252:
                _os_log_impl(&dword_181A37000, v96, v97, v98, buf, 0xCu);
              }
            }

            else if (v175 == 1)
            {
              v126 = __nw_create_backtrace_string();
              v96 = __nwlog_obj();
              v97 = v176;
              v127 = os_log_type_enabled(v96, v176);
              if (v126)
              {
                if (v127)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                  *&buf[12] = 2082;
                  *&buf[14] = v126;
                  _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v126);
                goto LABEL_253;
              }

              if (v127)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                v98 = "%{public}s called with null http1_connection, no backtrace";
                goto LABEL_252;
              }
            }

            else
            {
              v96 = __nwlog_obj();
              v97 = v176;
              if (os_log_type_enabled(v96, v176))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                v98 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                goto LABEL_252;
              }
            }
          }

LABEL_253:
          if (v95)
          {
            free(v95);
          }

          v24 = 0;
          v25 = 0;
LABEL_42:
          nw_frame_unclaim(a2, v20, v24, v25);
          v28 = nw_frame_unclaimed_bytes(a2, 0);
          is_metadata_complete = nw_frame_is_metadata_complete(a2);
          v31 = is_metadata_complete;
          if (*(*(a1[4] + 8) + 24))
          {
            if (v19)
            {
              v32 = -1;
              v33 = v19;
              do
              {
                ++v32;
                v23 = v33 > 0xF;
                v33 >>= 4;
              }

              while (v23);
              v34 = v32 + 3;
            }

            else
            {
              v34 = 2;
            }

            if (is_metadata_complete)
            {
              v35 = 7;
            }

            else
            {
              v35 = 2;
            }

            if (v19)
            {
              goto LABEL_52;
            }

            goto LABEL_270;
          }

          v99 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
          LODWORD(v162) = 12;
          v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null http1_connection", buf, v162);
          v176 = OS_LOG_TYPE_ERROR;
          v175 = 0;
          if (__nwlog_fault(v100, &v176, &v175))
          {
            if (v176 == OS_LOG_TYPE_FAULT)
            {
              v101 = __nwlog_obj();
              v102 = v176;
              if (!os_log_type_enabled(v101, v176))
              {
                goto LABEL_213;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
              v103 = "%{public}s called with null http1_connection";
LABEL_211:
              v142 = v101;
LABEL_212:
              _os_log_impl(&dword_181A37000, v142, v102, v103, buf, 0xCu);
              goto LABEL_213;
            }

            if (v175 != 1)
            {
              v101 = __nwlog_obj();
              v102 = v176;
              if (!os_log_type_enabled(v101, v176))
              {
                goto LABEL_213;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
              v103 = "%{public}s called with null http1_connection, backtrace limit exceeded";
              goto LABEL_211;
            }

            v128 = __nw_create_backtrace_string();
            v129 = __nwlog_obj();
            v102 = v176;
            log = v129;
            v130 = os_log_type_enabled(v129, v176);
            if (v128)
            {
              if (v130)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
                *&buf[12] = 2082;
                *&buf[14] = v128;
                _os_log_impl(&dword_181A37000, log, v102, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v128);
            }

            else if (v130)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_get_chunked_extra_size";
              v103 = "%{public}s called with null http1_connection, no backtrace";
              v142 = log;
              goto LABEL_212;
            }
          }

LABEL_213:
          if (v100)
          {
            free(v100);
          }

          if (*(*(a1[4] + 8) + 24))
          {
            v35 = 0;
            v34 = 0;
            if (v19)
            {
LABEL_52:
              if (v28)
              {
                if (v34)
                {
                  v36 = v28 + v34 - 1;
                  *(v36 - 1) = 2573;
                  v37 = (v36 - 2);
                  v38 = v19;
                  do
                  {
                    if ((v38 & 0xF) >= 0xA)
                    {
                      v39 = (v38 & 0xF) + 55;
                    }

                    else
                    {
                      v39 = v38 & 0xF | 0x30;
                    }

                    *v37-- = v39;
                    v23 = v38 > 0xF;
                    v38 >>= 4;
                  }

                  while (v23);
                  goto LABEL_59;
                }

                v172 = v35;
                v169 = v19;
                v120 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                LODWORD(v162) = 12;
                v121 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v120, 16, "%{public}s called with null usable_size", buf, v162);
                v176 = OS_LOG_TYPE_ERROR;
                v175 = 0;
                v122 = v121;
                if (!__nwlog_fault(v121, &v176, &v175))
                {
                  goto LABEL_247;
                }

                if (v176 == OS_LOG_TYPE_FAULT)
                {
                  v123 = __nwlog_obj();
                  v124 = v176;
                  if (os_log_type_enabled(v123, v176))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    v125 = "%{public}s called with null usable_size";
LABEL_245:
                    v153 = v123;
                    v154 = v124;
LABEL_246:
                    _os_log_impl(&dword_181A37000, v153, v154, v125, buf, 0xCu);
                  }
                }

                else if (v175 == 1)
                {
                  v139 = __nw_create_backtrace_string();
                  v140 = __nwlog_obj();
                  v165 = v176;
                  v141 = os_log_type_enabled(v140, v176);
                  if (v139)
                  {
                    if (v141)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_connection_write_chunk_header";
                      *&buf[12] = 2082;
                      *&buf[14] = v139;
                      _os_log_impl(&dword_181A37000, v140, v165, "%{public}s called with null usable_size, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v139);
                    goto LABEL_247;
                  }

                  if (v141)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    v125 = "%{public}s called with null usable_size, no backtrace";
                    v153 = v140;
                    v154 = v165;
                    goto LABEL_246;
                  }
                }

                else
                {
                  v123 = __nwlog_obj();
                  v124 = v176;
                  if (os_log_type_enabled(v123, v176))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    v125 = "%{public}s called with null usable_size, backtrace limit exceeded";
                    goto LABEL_245;
                  }
                }

LABEL_247:
                if (v122)
                {
                  free(v122);
                }

                v34 = 0;
                goto LABEL_285;
              }

              v172 = v35;
              v169 = v19;
              v113 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              LODWORD(v162) = 12;
              v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s called with null buffer", buf, v162);
              v176 = OS_LOG_TYPE_ERROR;
              v175 = 0;
              v115 = v114;
              if (__nwlog_fault(v114, &v176, &v175))
              {
                if (v176 == OS_LOG_TYPE_FAULT)
                {
                  v116 = __nwlog_obj();
                  v117 = v176;
                  v118 = v116;
                  if (!os_log_type_enabled(v116, v176))
                  {
                    goto LABEL_283;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  v119 = "%{public}s called with null buffer";
LABEL_281:
                  v160 = v118;
                  v161 = v117;
LABEL_282:
                  _os_log_impl(&dword_181A37000, v160, v161, v119, buf, 0xCu);
                  goto LABEL_283;
                }

                if (v175 != 1)
                {
                  v118 = __nwlog_obj();
                  v117 = v176;
                  if (!os_log_type_enabled(v118, v176))
                  {
                    goto LABEL_283;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  v119 = "%{public}s called with null buffer, backtrace limit exceeded";
                  goto LABEL_281;
                }

                v137 = __nw_create_backtrace_string();
                v164 = __nwlog_obj();
                v163 = v176;
                v138 = os_log_type_enabled(v164, v176);
                if (v137)
                {
                  if (v138)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_connection_write_chunk_header";
                    *&buf[12] = 2082;
                    *&buf[14] = v137;
                    _os_log_impl(&dword_181A37000, v164, v163, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v137);
                  if (!v115)
                  {
                    goto LABEL_285;
                  }

                  goto LABEL_284;
                }

                if (v138)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  v119 = "%{public}s called with null buffer, no backtrace";
LABEL_288:
                  v160 = v164;
                  v161 = v163;
                  goto LABEL_282;
                }
              }

              goto LABEL_283;
            }

LABEL_270:
            v172 = v35;
            v169 = v19;
            v155 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_header";
            LODWORD(v162) = 12;
            v156 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v155, 16, "%{public}s called with null size", buf, v162);
            v176 = OS_LOG_TYPE_ERROR;
            v175 = 0;
            v115 = v156;
            if (!__nwlog_fault(v156, &v176, &v175))
            {
              goto LABEL_283;
            }

            if (v176 == OS_LOG_TYPE_FAULT)
            {
              v157 = __nwlog_obj();
              v117 = v176;
              v118 = v157;
              if (!os_log_type_enabled(v157, v176))
              {
                goto LABEL_283;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              v119 = "%{public}s called with null size";
              goto LABEL_281;
            }

            if (v175 != 1)
            {
              v118 = __nwlog_obj();
              v117 = v176;
              if (!os_log_type_enabled(v118, v176))
              {
                goto LABEL_283;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              v119 = "%{public}s called with null size, backtrace limit exceeded";
              goto LABEL_281;
            }

            v158 = __nw_create_backtrace_string();
            v164 = __nwlog_obj();
            v163 = v176;
            v159 = os_log_type_enabled(v164, v176);
            if (v158)
            {
              if (v159)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                *&buf[12] = 2082;
                *&buf[14] = v158;
                _os_log_impl(&dword_181A37000, v164, v163, "%{public}s called with null size, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v158);
            }

            else if (v159)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_header";
              v119 = "%{public}s called with null size, no backtrace";
              goto LABEL_288;
            }

LABEL_283:
            if (!v115)
            {
LABEL_285:
              v19 = v169;
              v35 = v172;
              goto LABEL_59;
            }

LABEL_284:
            free(v115);
            goto LABEL_285;
          }

          v143 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_write_chunk_header";
          LODWORD(v162) = 12;
          v144 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v143, 16, "%{public}s called with null http1_connection", buf, v162);
          v176 = OS_LOG_TYPE_ERROR;
          v175 = 0;
          if (__nwlog_fault(v144, &v176, &v175))
          {
            if (v176 == OS_LOG_TYPE_FAULT)
            {
              v145 = __nwlog_obj();
              v146 = v176;
              if (os_log_type_enabled(v145, v176))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                v147 = "%{public}s called with null http1_connection";
LABEL_229:
                v151 = v145;
LABEL_230:
                _os_log_impl(&dword_181A37000, v151, v146, v147, buf, 0xCu);
              }
            }

            else if (v175 == 1)
            {
              v148 = __nw_create_backtrace_string();
              v149 = __nwlog_obj();
              v146 = v176;
              logb = v149;
              v150 = os_log_type_enabled(v149, v176);
              if (v148)
              {
                if (v150)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_write_chunk_header";
                  *&buf[12] = 2082;
                  *&buf[14] = v148;
                  _os_log_impl(&dword_181A37000, logb, v146, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v148);
                goto LABEL_231;
              }

              if (v150)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                v147 = "%{public}s called with null http1_connection, no backtrace";
                v151 = logb;
                goto LABEL_230;
              }
            }

            else
            {
              v145 = __nwlog_obj();
              v146 = v176;
              if (os_log_type_enabled(v145, v176))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_header";
                v147 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                goto LABEL_229;
              }
            }
          }

LABEL_231:
          if (v144)
          {
            free(v144);
          }

          v35 = 0;
          v34 = 0;
LABEL_59:
          v40 = v34;
          if (v24 == v34)
          {
            v41 = 0;
            v42 = v19;
          }

          else
          {
            v42 = v19;
            memmove((v28 + v40), (v28 + v24), v19);
            v41 = v24 - v40;
          }

          if (*(*(a1[4] + 8) + 24))
          {
            if (v28)
            {
              v43 = v28 + v40 + v42;
              *v43 = 2573;
              if (v31)
              {
                *(v43 + 6) = 10;
                *(v43 + 2) = 218762544;
              }

LABEL_66:
              v44 = v41 + v25 - v35;
              if (!__CFADD__(v41, v25 - v35))
              {
                if (!v44)
                {
                  goto LABEL_110;
                }

                goto LABEL_109;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446978;
              *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
              v170 = v35;
              v45 = v25 - v35;
              *&buf[12] = 2082;
              *&buf[14] = "unused_bytes";
              *&buf[22] = 2048;
              v178 = v45;
              *v179 = 2048;
              *&v179[2] = v44;
              LODWORD(v162) = 42;
              v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v162);
              v176 = OS_LOG_TYPE_ERROR;
              v175 = 0;
              if (__nwlog_fault(v46, &v176, &v175))
              {
                if (v176 == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v47 = gLogObj;
                  v48 = v176;
                  if (os_log_type_enabled(gLogObj, v176))
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "unused_bytes";
                    *&buf[22] = 2048;
                    v178 = v45;
                    *v179 = 2048;
                    *&v179[2] = v44;
                    v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_105:
                    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x2Au);
                  }
                }

                else if (v175 == 1)
                {
                  v56 = __nw_create_backtrace_string();
                  v47 = __nwlog_obj();
                  v48 = v176;
                  v57 = os_log_type_enabled(v47, v176);
                  if (v56)
                  {
                    if (v57)
                    {
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                      *&buf[12] = 2082;
                      *&buf[14] = "unused_bytes";
                      *&buf[22] = 2048;
                      v178 = v45;
                      *v179 = 2048;
                      *&v179[2] = v44;
                      *&v179[10] = 2082;
                      v180 = v56;
                      _os_log_impl(&dword_181A37000, v47, v48, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v56);
                    goto LABEL_106;
                  }

                  if (v57)
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "unused_bytes";
                    *&buf[22] = 2048;
                    v178 = v45;
                    *v179 = 2048;
                    *&v179[2] = v44;
                    v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_105;
                  }
                }

                else
                {
                  v47 = __nwlog_obj();
                  v48 = v176;
                  if (os_log_type_enabled(v47, v176))
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
                    *&buf[12] = 2082;
                    *&buf[14] = "unused_bytes";
                    *&buf[22] = 2048;
                    v178 = v45;
                    *v179 = 2048;
                    *&v179[2] = v44;
                    v49 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_105;
                  }
                }
              }

LABEL_106:
              if (v46)
              {
                free(v46);
              }

              v35 = v170;
LABEL_109:
              v63 = v19 + v35;
              nw_frame_claim(a2, v30, v40 + v63, 0);
              nw_frame_collapse(a2);
              nw_frame_unclaim(a2, v64, v40 + v63, 0);
              goto LABEL_110;
            }

            v171 = v35;
            v104 = v19;
            v112 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            LODWORD(v162) = 12;
            v106 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s called with null buffer", buf, v162);
            v176 = OS_LOG_TYPE_ERROR;
            v175 = 0;
            if (__nwlog_fault(v106, &v176, &v175))
            {
              if (v176 == OS_LOG_TYPE_FAULT)
              {
                v107 = __nwlog_obj();
                v108 = v176;
                if (!os_log_type_enabled(v107, v176))
                {
                  goto LABEL_238;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                v109 = "%{public}s called with null buffer";
                goto LABEL_236;
              }

              if (v175 != 1)
              {
                v107 = __nwlog_obj();
                v108 = v176;
                if (!os_log_type_enabled(v107, v176))
                {
                  goto LABEL_238;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                v109 = "%{public}s called with null buffer, backtrace limit exceeded";
                goto LABEL_236;
              }

              v134 = __nw_create_backtrace_string();
              v135 = __nwlog_obj();
              v108 = v176;
              loga = v135;
              v136 = os_log_type_enabled(v135, v176);
              if (v134)
              {
                if (v136)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                  *&buf[12] = 2082;
                  *&buf[14] = v134;
                  _os_log_impl(&dword_181A37000, loga, v108, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v134);
                if (!v106)
                {
                  goto LABEL_240;
                }

                goto LABEL_239;
              }

              if (v136)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                v109 = "%{public}s called with null buffer, no backtrace";
                goto LABEL_264;
              }
            }
          }

          else
          {
            v171 = v35;
            v104 = v19;
            v105 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            LODWORD(v162) = 12;
            v106 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null http1_connection", buf, v162);
            v176 = OS_LOG_TYPE_ERROR;
            v175 = 0;
            if (!__nwlog_fault(v106, &v176, &v175))
            {
              goto LABEL_238;
            }

            if (v176 == OS_LOG_TYPE_FAULT)
            {
              v107 = __nwlog_obj();
              v108 = v176;
              if (!os_log_type_enabled(v107, v176))
              {
                goto LABEL_238;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_trailer";
              v109 = "%{public}s called with null http1_connection";
LABEL_236:
              v152 = v107;
LABEL_237:
              _os_log_impl(&dword_181A37000, v152, v108, v109, buf, 0xCu);
              goto LABEL_238;
            }

            if (v175 != 1)
            {
              v107 = __nwlog_obj();
              v108 = v176;
              if (!os_log_type_enabled(v107, v176))
              {
                goto LABEL_238;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_trailer";
              v109 = "%{public}s called with null http1_connection, backtrace limit exceeded";
              goto LABEL_236;
            }

            v131 = __nw_create_backtrace_string();
            v132 = __nwlog_obj();
            v108 = v176;
            loga = v132;
            v133 = os_log_type_enabled(v132, v176);
            if (v131)
            {
              if (v133)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                *&buf[12] = 2082;
                *&buf[14] = v131;
                _os_log_impl(&dword_181A37000, loga, v108, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v131);
            }

            else if (v133)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_write_chunk_trailer";
              v109 = "%{public}s called with null http1_connection, no backtrace";
LABEL_264:
              v152 = loga;
              goto LABEL_237;
            }
          }

LABEL_238:
          if (!v106)
          {
LABEL_240:
            v19 = v104;
            v35 = v171;
            goto LABEL_66;
          }

LABEL_239:
          free(v106);
          goto LABEL_240;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v50 = *(*(a1[4] + 8) + 24);
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v50;
        LODWORD(v162) = 22;
        v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream not found for connection %p", buf, v162);
        type[0] = OS_LOG_TYPE_ERROR;
        v176 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v51, type, &v176))
        {
          goto LABEL_131;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v52 = __nwlog_obj();
          v53 = type[0];
          if (os_log_type_enabled(v52, type[0]))
          {
            v54 = *(*(a1[4] + 8) + 24);
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v54;
            v55 = "%{public}s stream not found for connection %p";
LABEL_130:
            _os_log_impl(&dword_181A37000, v52, v53, v55, buf, 0x16u);
          }
        }

        else if (v176 == OS_LOG_TYPE_INFO)
        {
          v58 = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v53 = type[0];
          v59 = os_log_type_enabled(v52, type[0]);
          if (v58)
          {
            if (v59)
            {
              v60 = *(*(a1[4] + 8) + 24);
              *buf = 136446722;
              *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
              *&buf[12] = 2048;
              *&buf[14] = v60;
              *&buf[22] = 2082;
              v178 = v58;
              _os_log_impl(&dword_181A37000, v52, v53, "%{public}s stream not found for connection %p, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v58);
            goto LABEL_131;
          }

          if (v59)
          {
            v86 = *(*(a1[4] + 8) + 24);
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v86;
            v55 = "%{public}s stream not found for connection %p, no backtrace";
            goto LABEL_130;
          }
        }

        else
        {
          v52 = __nwlog_obj();
          v53 = type[0];
          if (os_log_type_enabled(v52, type[0]))
          {
            v62 = *(*(a1[4] + 8) + 24);
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v62;
            v55 = "%{public}s stream not found for connection %p, backtrace limit exceeded";
            goto LABEL_130;
          }
        }

LABEL_131:
        if (!v51)
        {
          goto LABEL_98;
        }

        v61 = v51;
        goto LABEL_97;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      LODWORD(v162) = 22;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s frame %p has no connection in its context", buf, v162);
      type[0] = OS_LOG_TYPE_ERROR;
      v176 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, type, &v176))
      {
        goto LABEL_95;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no connection in its context";
        goto LABEL_94;
      }

      if (v176 != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no connection in its context, backtrace limit exceeded";
        goto LABEL_94;
      }

      v26 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type[0];
      v27 = os_log_type_enabled(gLogObj, type[0]);
      if (v26)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2082;
          v178 = v26;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s frame %p has no connection in its context, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v26);
        if (!v12)
        {
          goto LABEL_98;
        }

LABEL_96:
        v61 = v12;
LABEL_97:
        free(v61);
        goto LABEL_98;
      }

      if (v27)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_finalize_output_frames_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v15 = "%{public}s frame %p has no connection in its context, no backtrace";
LABEL_94:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0x16u);
        goto LABEL_95;
      }

      goto LABEL_95;
    }

    finalizer_context = v88;
LABEL_5:
    free(finalizer_context);
    goto LABEL_6;
  }

  v8 = (a1[7] + 8);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v9)
  {
    v8 = (v9 + 40);
  }

  *v8 = v10;
  *v10 = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = 1;
  nw_frame_finalize(a2);
  return v11;
}

uint64_t ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_146(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v3)
  {
    v5 = (a2 + 120);
    do
    {
      v6 = *v3;
      v7 = v3[6];
      v8 = *v3;
      if (v7)
      {
        os_release(v7);
        v3[6] = 0;
        v8 = *v3;
      }

      v9 = v3[1];
      v10 = v8 + 1;
      if (!v8)
      {
        v10 = (a2 + 72);
      }

      *v10 = v9;
      *v9 = v8;
      if (v3 != v5)
      {
        free(v3);
      }

      v3 = v6;
    }

    while (v6);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = v4;
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
  return 1;
}

void ___ZL40nw_protocol_http1_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke_143(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v2 = nw_frame_unclaimed_bytes(*(a1 + 32), &v5);
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v3 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40) + 74;
    *buf = 136446978;
    v7 = v4;
    v8 = 2080;
    v9 = " ";
    v10 = 1040;
    v11 = v5;
    v12 = 2096;
    v13 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s%sH1 Outbound Body Data:\n%{network:data}.*P", buf, 0x26u);
  }
}

BOOL nw_protocol_http1_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v219 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v125 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_http1_get_http1_protocol";
    v126 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v125, 16, "%{public}s called with null protocol", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v126, &v206, &v205))
    {
      goto LABEL_311;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v127 = __nwlog_obj();
      v128 = v206;
      if (!os_log_type_enabled(v127, v206))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null protocol";
    }

    else if (v205 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v127 = __nwlog_obj();
      v128 = v206;
      v134 = os_log_type_enabled(v127, v206);
      if (backtrace_string)
      {
        if (v134)
        {
          *buf = 136446466;
          v208 = "nw_http1_get_http1_protocol";
          v209 = 2082;
          *v210 = backtrace_string;
          _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_311:
        if (!v126)
        {
          goto LABEL_313;
        }

LABEL_312:
        free(v126);
        goto LABEL_313;
      }

      if (!v134)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v127 = __nwlog_obj();
      v128 = v206;
      if (!os_log_type_enabled(v127, v206))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_310;
  }

  handle = a1->handle;
  if (!handle)
  {
    v130 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_http1_get_http1_protocol";
    v126 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s called with null handle", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v126, &v206, &v205))
    {
      goto LABEL_311;
    }

    if (v206 != OS_LOG_TYPE_FAULT)
    {
      if (v205 != 1)
      {
        v127 = __nwlog_obj();
        v128 = v206;
        if (!os_log_type_enabled(v127, v206))
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v208 = "nw_http1_get_http1_protocol";
        v129 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_310;
      }

      v135 = __nw_create_backtrace_string();
      v127 = __nwlog_obj();
      v128 = v206;
      v136 = os_log_type_enabled(v127, v206);
      if (!v135)
      {
        if (!v136)
        {
          goto LABEL_311;
        }

        *buf = 136446210;
        v208 = "nw_http1_get_http1_protocol";
        v129 = "%{public}s called with null handle, no backtrace";
        goto LABEL_310;
      }

      if (!v136)
      {
        goto LABEL_229;
      }

      *buf = 136446466;
      v208 = "nw_http1_get_http1_protocol";
      v209 = 2082;
      *v210 = v135;
      v137 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_228;
    }

    v127 = __nwlog_obj();
    v128 = v206;
    if (!os_log_type_enabled(v127, v206))
    {
      goto LABEL_311;
    }

    *buf = 136446210;
    v208 = "nw_http1_get_http1_protocol";
    v129 = "%{public}s called with null handle";
LABEL_310:
    _os_log_impl(&dword_181A37000, v127, v128, v129, buf, 0xCu);
    goto LABEL_311;
  }

  v9 = *(handle + 6);
  v10 = a1->handle;
  if (v9 == 1)
  {
    goto LABEL_10;
  }

  if (v9 != 2)
  {
    if (v9 != 3)
    {
LABEL_313:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v208 = "nw_protocol_http1_get_output_frames";
      LODWORD(v189) = 12;
      v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v189);
      v206 = OS_LOG_TYPE_ERROR;
      v205 = 0;
      if (!__nwlog_fault(v71, &v206, &v205))
      {
        goto LABEL_344;
      }

      if (v206 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = gLogObj;
        v73 = v206;
        if (os_log_type_enabled(gLogObj, v206))
        {
          *buf = 136446210;
          v208 = "nw_protocol_http1_get_output_frames";
          v74 = "%{public}s called with null http1";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      if (v205 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = gLogObj;
        v73 = v206;
        if (os_log_type_enabled(gLogObj, v206))
        {
          *buf = 136446210;
          v208 = "nw_protocol_http1_get_output_frames";
          v74 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      v170 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v171 = gLogObj;
      v172 = v206;
      v173 = os_log_type_enabled(gLogObj, v206);
      if (v170)
      {
        if (v173)
        {
          *buf = 136446466;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = v170;
          v174 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_338:
          _os_log_impl(&dword_181A37000, v171, v172, v174, buf, 0x16u);
        }

LABEL_339:
        free(v170);
        goto LABEL_344;
      }

      if (!v173)
      {
        goto LABEL_344;
      }

      *buf = 136446210;
      v208 = "nw_protocol_http1_get_output_frames";
      v74 = "%{public}s called with null http1, no backtrace";
LABEL_351:
      v176 = v171;
      v177 = v172;
      goto LABEL_343;
    }

    v11 = *(handle + 2);
    if (v11)
    {
      v10 = (v11 + 480);
      goto LABEL_10;
    }

    v148 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_http1_get_http1_protocol";
    v126 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v148, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v126, &v206, &v205))
    {
      goto LABEL_311;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v127 = __nwlog_obj();
      v128 = v206;
      if (!os_log_type_enabled(v127, v206))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null handle->http1_connection";
      goto LABEL_310;
    }

    if (v205 != 1)
    {
      v127 = __nwlog_obj();
      v128 = v206;
      if (!os_log_type_enabled(v127, v206))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_310;
    }

    v135 = __nw_create_backtrace_string();
    v127 = __nwlog_obj();
    v128 = v206;
    v155 = os_log_type_enabled(v127, v206);
    if (!v135)
    {
      if (!v155)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_310;
    }

    if (v155)
    {
      *buf = 136446466;
      v208 = "nw_http1_get_http1_protocol";
      v209 = 2082;
      *v210 = v135;
      v137 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_228;
    }

LABEL_229:
    free(v135);
    if (!v126)
    {
      goto LABEL_313;
    }

    goto LABEL_312;
  }

  v12 = *(handle + 1);
  if (!v12)
  {
    v147 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_http1_get_http1_protocol";
    v126 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v147, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v126, &v206, &v205))
    {
      goto LABEL_311;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v127 = __nwlog_obj();
      v128 = v206;
      if (!os_log_type_enabled(v127, v206))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null handle->http1_stream";
      goto LABEL_310;
    }

    if (v205 != 1)
    {
      v127 = __nwlog_obj();
      v128 = v206;
      if (!os_log_type_enabled(v127, v206))
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_310;
    }

    v135 = __nw_create_backtrace_string();
    v127 = __nwlog_obj();
    v128 = v206;
    v154 = os_log_type_enabled(v127, v206);
    if (!v135)
    {
      if (!v154)
      {
        goto LABEL_311;
      }

      *buf = 136446210;
      v208 = "nw_http1_get_http1_protocol";
      v129 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_310;
    }

    if (!v154)
    {
      goto LABEL_229;
    }

    *buf = 136446466;
    v208 = "nw_http1_get_http1_protocol";
    v209 = 2082;
    *v210 = v135;
    v137 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_228:
    _os_log_impl(&dword_181A37000, v127, v128, v137, buf, 0x16u);
    goto LABEL_229;
  }

  v10 = (v12 + 248);
LABEL_10:
  v13 = *v10;
  if (!*v10)
  {
    goto LABEL_313;
  }

  if (!a2)
  {
    v131 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_protocol_http1_get_output_frames";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v131, 16, "%{public}s called with null input_protocol", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v71, &v206, &v205))
    {
      goto LABEL_344;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = v206;
      if (os_log_type_enabled(v72, v206))
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s called with null input_protocol";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v205 != 1)
    {
      v72 = __nwlog_obj();
      v73 = v206;
      if (os_log_type_enabled(v72, v206))
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    v79 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = v206;
    v145 = os_log_type_enabled(v72, v206);
    if (!v79)
    {
      if (v145)
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v145)
    {
      *buf = 136446466;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v79;
      v81 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_104;
    }

LABEL_105:
    free(v79);
    goto LABEL_344;
  }

  if (!a6)
  {
    v132 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_protocol_http1_get_output_frames";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s called with null return_array", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v71, &v206, &v205))
    {
      goto LABEL_344;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = v206;
      if (os_log_type_enabled(v72, v206))
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s called with null return_array";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v205 != 1)
    {
      v72 = __nwlog_obj();
      v73 = v206;
      if (os_log_type_enabled(v72, v206))
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s called with null return_array, backtrace limit exceeded";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    v79 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = v206;
    v146 = os_log_type_enabled(v72, v206);
    if (!v79)
    {
      if (v146)
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s called with null return_array, no backtrace";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v146)
    {
      *buf = 136446466;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v79;
      v81 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  if (v9 != 2)
  {
    if (v9 != 3)
    {
LABEL_330:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v208 = "nw_protocol_http1_get_output_frames";
      LODWORD(v189) = 12;
      v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v189);
      v206 = OS_LOG_TYPE_ERROR;
      v205 = 0;
      if (!__nwlog_fault(v71, &v206, &v205))
      {
        goto LABEL_344;
      }

      if (v206 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = gLogObj;
        v73 = v206;
        if (os_log_type_enabled(gLogObj, v206))
        {
          *buf = 136446210;
          v208 = "nw_protocol_http1_get_output_frames";
          v74 = "%{public}s called with null http1_stream";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      if (v205 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = gLogObj;
        v73 = v206;
        if (os_log_type_enabled(gLogObj, v206))
        {
          *buf = 136446210;
          v208 = "nw_protocol_http1_get_output_frames";
          v74 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_342;
        }

        goto LABEL_344;
      }

      v170 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v171 = gLogObj;
      v172 = v206;
      v175 = os_log_type_enabled(gLogObj, v206);
      if (v170)
      {
        if (v175)
        {
          *buf = 136446466;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = v170;
          v174 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
          goto LABEL_338;
        }

        goto LABEL_339;
      }

      if (!v175)
      {
        goto LABEL_344;
      }

      *buf = 136446210;
      v208 = "nw_protocol_http1_get_output_frames";
      v74 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_351;
    }

    v14 = *(handle + 2);
    if (v14)
    {
      v15 = (v14 + 488);
      goto LABEL_18;
    }

    v149 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_http1_get_stream_for_protocol";
    v150 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v149, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (__nwlog_fault(v150, &v206, &v205))
    {
      if (v206 == OS_LOG_TYPE_FAULT)
      {
        v151 = __nwlog_obj();
        v152 = v206;
        if (!os_log_type_enabled(v151, v206))
        {
          goto LABEL_328;
        }

        *buf = 136446210;
        v208 = "nw_http1_get_stream_for_protocol";
        v153 = "%{public}s called with null handle->http1_connection";
        goto LABEL_327;
      }

      if (v205 != 1)
      {
        v151 = __nwlog_obj();
        v152 = v206;
        if (!os_log_type_enabled(v151, v206))
        {
          goto LABEL_328;
        }

        *buf = 136446210;
        v208 = "nw_http1_get_stream_for_protocol";
        v153 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_327;
      }

      v156 = __nw_create_backtrace_string();
      v151 = __nwlog_obj();
      v152 = v206;
      v157 = os_log_type_enabled(v151, v206);
      if (v156)
      {
        if (v157)
        {
          *buf = 136446466;
          v208 = "nw_http1_get_stream_for_protocol";
          v209 = 2082;
          *v210 = v156;
          _os_log_impl(&dword_181A37000, v151, v152, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v156);
        goto LABEL_328;
      }

      if (v157)
      {
        *buf = 136446210;
        v208 = "nw_http1_get_stream_for_protocol";
        v153 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_327:
        _os_log_impl(&dword_181A37000, v151, v152, v153, buf, 0xCu);
      }
    }

LABEL_328:
    if (v150)
    {
      free(v150);
    }

    goto LABEL_330;
  }

  v15 = (handle + 8);
LABEL_18:
  v16 = *v15;
  if (!*v15)
  {
    goto LABEL_330;
  }

  if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v138 = a6;
    v139 = a2;
    v140 = __nwlog_obj();
    v141 = os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG);
    a2 = v139;
    a6 = v138;
    if (v141)
    {
      v142 = *(v16 + 256);
      v143 = *(*(v16 + 248) + 372);
      if (v142)
      {
        v144 = *(v142 + 860);
      }

      else
      {
        v144 = 0;
      }

      v158 = *(v16 + 424);
      *buf = 136448258;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v16 + 74;
      *&v210[8] = 2080;
      *&v210[10] = " ";
      v211 = 1024;
      *v212 = v143;
      *&v212[4] = 1024;
      *&v212[6] = v144;
      LOWORD(v213) = 1024;
      *(&v213 + 2) = v158;
      HIWORD(v213) = 1024;
      v214 = a3;
      v215 = 1024;
      v216 = a4;
      v217 = 1024;
      v218 = a5;
      _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called with min bytes %u, max bytes %u, max frames %u", buf, 0x44u);
      a6 = v138;
      a2 = v139;
    }
  }

  v18 = *(v16 + 256);
  if (!v18)
  {
    if ((*(v16 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v25 = *(v16 + 256);
      v26 = *(*(v16 + 248) + 372);
      if (v25)
      {
        LODWORD(v25) = *(v25 + 860);
      }

      v27 = *(v16 + 424);
      *buf = 136447490;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v16 + 74;
      *&v210[8] = 2080;
      *&v210[10] = " ";
      v211 = 1024;
      *v212 = v26;
      *&v212[4] = 1024;
      *&v212[6] = v25;
      LOWORD(v213) = 1024;
      *(&v213 + 2) = v27;
      v24 = "%{public}s %{public}s%s<i%u:c%u:s%u> no connection, returning 0 frames";
      goto LABEL_33;
    }

    return 0;
  }

  if (v18[81])
  {
    if ((*(v16 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v21 = *(v16 + 256);
      v22 = *(*(v16 + 248) + 372);
      if (v21)
      {
        LODWORD(v21) = *(v21 + 860);
      }

      v23 = *(v16 + 424);
      *buf = 136447490;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v16 + 74;
      *&v210[8] = 2080;
      *&v210[10] = " ";
      v211 = 1024;
      *v212 = v22;
      *&v212[4] = 1024;
      *&v212[6] = v21;
      LOWORD(v213) = 1024;
      *(&v213 + 2) = v23;
      v24 = "%{public}s %{public}s%s<i%u:c%u:s%u> still sending the initial frame, returning 0 frames";
LABEL_33:
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, v24, buf, 0x32u);
      return 0;
    }

    return 0;
  }

  if ((*(v16 + 428) & 4) == 0)
  {
    if ((*(v16 + 428) & 0x100) != 0)
    {
      if ((*(v16 + 158) & 1) != 0 || gLogDatapath != 1)
      {
        return 0;
      }

      v19 = __nwlog_obj();
      result = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v52 = *(v16 + 256);
      v53 = *(*(v16 + 248) + 372);
      if (v52)
      {
        LODWORD(v52) = *(v52 + 860);
      }

      v54 = *(v16 + 424);
      *buf = 136447490;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v16 + 74;
      *&v210[8] = 2080;
      *&v210[10] = " ";
      v211 = 1024;
      *v212 = v53;
      *&v212[4] = 1024;
      *&v212[6] = v52;
      LOWORD(v213) = 1024;
      *(&v213 + 2) = v54;
      v24 = "%{public}s %{public}s%s<i%u:c%u:s%u> already vended initial outbound frame, cannot send more";
      goto LABEL_33;
    }

    if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v162 = a6;
      v163 = __nwlog_obj();
      v164 = os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG);
      a6 = v162;
      if (v164)
      {
        v165 = *(v16 + 256);
        v166 = *(*(v16 + 248) + 372);
        if (v165)
        {
          LODWORD(v165) = *(v165 + 860);
        }

        v167 = *(v16 + 424);
        *buf = 136447490;
        v208 = "nw_protocol_http1_get_output_frames";
        v209 = 2082;
        *v210 = v16 + 74;
        *&v210[8] = 2080;
        *&v210[10] = " ";
        v211 = 1024;
        *v212 = v166;
        *&v212[4] = 1024;
        *&v212[6] = v165;
        LOWORD(v213) = 1024;
        *(&v213 + 2) = v167;
        _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound headers not yet complete, creating frame", buf, 0x32u);
        a6 = v162;
      }
    }

    a6->tqh_first = 0;
    a6->tqh_last = &a6->tqh_first;
    if (a4 >= 0x20000)
    {
      v28 = 0x20000;
    }

    else
    {
      v28 = a4;
    }

    v200 = a6;
    if (a4 <= 0x20000)
    {
      if (!a4)
      {
        v56 = 0;
        v55 = 0;
        goto LABEL_78;
      }
    }

    else if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v29 = __nwlog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(v13 + 372);
        *buf = 136447490;
        v208 = "nw_protocol_http1_get_output_frames";
        v209 = 2082;
        *v210 = v13 + 74;
        *&v210[8] = 2080;
        *&v210[10] = " ";
        v211 = 1024;
        *v212 = v30;
        *&v212[4] = 1024;
        *&v212[6] = v28;
        LOWORD(v213) = 1024;
        *(&v213 + 2) = a4;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> capping output frame size to %u, original request was %u", buf, 0x32u);
      }
    }

    a4 = (v28 + 17);
    if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1 && (v168 = __nwlog_obj(), os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG)))
    {
      v169 = *(v13 + 372);
      *buf = 136447746;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v13 + 74;
      *&v210[8] = 2080;
      *&v210[10] = " ";
      v211 = 1024;
      *v212 = v169;
      *&v212[4] = 1024;
      *&v212[6] = v28 + 17;
      v213 = 0x4000000000A0400;
      v56 = 10;
      v55 = 7;
      v214 = 7;
      _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> adjusted output frame size is %u (start: %u, end: %u)", buf, 0x38u);
    }

    else
    {
      v55 = 7;
      v56 = 10;
    }

LABEL_78:
    frame = nw_frame_cache_create_frame(v18 + 87, a4);
    if (frame)
    {
      v59 = frame;
      if ((*(frame + 204) & 4) != 0)
      {
        v75 = *(frame + 216);
        *(frame + 208) = v18;
        *(frame + 216) = v75 & 0xFC;
LABEL_127:
        if (a4)
        {
          nw_frame_claim(v59, v58, v56, v55);
          if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v187 = __nwlog_obj();
            if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
            {
              v188 = *(v13 + 372);
              *buf = 136447746;
              v208 = "nw_protocol_http1_get_output_frames";
              v209 = 2082;
              *v210 = v13 + 74;
              *&v210[8] = 2080;
              *&v210[10] = " ";
              v211 = 1024;
              *v212 = v188;
              *&v212[4] = 1024;
              *&v212[6] = v56;
              LOWORD(v213) = 1024;
              *(&v213 + 2) = v55;
              HIWORD(v213) = 1024;
              v214 = a4;
              _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> claiming chunked encoding size (start: %u, end: %u) from frame of %u bytes", buf, 0x38u);
            }
          }
        }

        v59[2] = 0;
        v89 = v18[86];
        v59[3] = v89;
        *v89 = v59;
        v18[86] = v59 + 2;
        v59[10] = nw_http1_connection_output_frame_finalizer;
        v59[11] = v13;
        if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v178 = __nwlog_obj();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
          {
            v179 = *(v16 + 256);
            v180 = *(*(v16 + 248) + 372);
            if (v179)
            {
              LODWORD(v179) = *(v179 + 860);
            }

            v181 = *(v16 + 424);
            *buf = 136447746;
            v208 = "nw_protocol_http1_get_output_frames";
            v209 = 2082;
            *v210 = v16 + 74;
            *&v210[8] = 2080;
            *&v210[10] = " ";
            v211 = 1024;
            *v212 = v180;
            *&v212[4] = 1024;
            *&v212[6] = v179;
            LOWORD(v213) = 1024;
            *(&v213 + 2) = v181;
            HIWORD(v213) = 1024;
            v214 = a4;
            _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> returning 1 frame of %u bytes", buf, 0x38u);
          }
        }

        v59[4] = 0;
        tqh_last = v200->tqh_last;
        v59[5] = tqh_last;
        *tqh_last = v59;
        v200->tqh_last = (v59 + 4);
        *(v16 + 428) |= 0x100u;
        return 1;
      }

      typea = v56;
      v198 = v55;
      v60 = __nwlog_obj();
      *buf = 136446466;
      v208 = "nw_http1_frame_metadata_reset";
      v209 = 2048;
      *v210 = v59;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s frame %p has no metadata", buf, 22);
      v206 = OS_LOG_TYPE_ERROR;
      v205 = 0;
      if (__nwlog_fault(v61, &v206, &v205))
      {
        if (v206 == OS_LOG_TYPE_FAULT)
        {
          v62 = __nwlog_obj();
          v63 = v206;
          if (os_log_type_enabled(v62, v206))
          {
            *buf = 136446466;
            v208 = "nw_http1_frame_metadata_reset";
            v209 = 2048;
            *v210 = v59;
            v64 = "%{public}s frame %p has no metadata";
LABEL_122:
            v88 = v62;
LABEL_123:
            _os_log_impl(&dword_181A37000, v88, v63, v64, buf, 0x16u);
          }
        }

        else if (v205 == 1)
        {
          v82 = __nw_create_backtrace_string();
          v83 = __nwlog_obj();
          v63 = v206;
          log = v83;
          v84 = os_log_type_enabled(v83, v206);
          if (v82)
          {
            if (v84)
            {
              *buf = 136446722;
              v208 = "nw_http1_frame_metadata_reset";
              v209 = 2048;
              *v210 = v59;
              *&v210[8] = 2082;
              *&v210[10] = v82;
              _os_log_impl(&dword_181A37000, log, v63, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v82);
            goto LABEL_124;
          }

          if (v84)
          {
            *buf = 136446466;
            v208 = "nw_http1_frame_metadata_reset";
            v209 = 2048;
            *v210 = v59;
            v64 = "%{public}s frame %p has no metadata, no backtrace";
            v88 = log;
            goto LABEL_123;
          }
        }

        else
        {
          v62 = __nwlog_obj();
          v63 = v206;
          if (os_log_type_enabled(v62, v206))
          {
            *buf = 136446466;
            v208 = "nw_http1_frame_metadata_reset";
            v209 = 2048;
            *v210 = v59;
            v64 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
            goto LABEL_122;
          }
        }
      }

LABEL_124:
      v55 = v198;
      if (v61)
      {
        free(v61);
      }

      v56 = typea;
      goto LABEL_127;
    }

    v65 = __nwlog_obj();
    *buf = 136446466;
    v208 = "nw_protocol_http1_get_output_frames";
    v209 = 1024;
    *v210 = a4;
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s failed to create/reuse output frame of length %u", buf, 18);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v66, &v206, &v205))
    {
      goto LABEL_191;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = v206;
      if (os_log_type_enabled(v67, v206))
      {
        *buf = 136446466;
        v208 = "nw_protocol_http1_get_output_frames";
        v209 = 1024;
        *v210 = a4;
        v69 = "%{public}s failed to create/reuse output frame of length %u";
LABEL_190:
        _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0x12u);
      }
    }

    else if (v205 == 1)
    {
      v77 = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v68 = v206;
      v78 = os_log_type_enabled(v67, v206);
      if (v77)
      {
        if (v78)
        {
          *buf = 136446722;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 1024;
          *v210 = a4;
          *&v210[4] = 2082;
          *&v210[6] = v77;
          _os_log_impl(&dword_181A37000, v67, v68, "%{public}s failed to create/reuse output frame of length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v77);
        goto LABEL_191;
      }

      if (v78)
      {
        *buf = 136446466;
        v208 = "nw_protocol_http1_get_output_frames";
        v209 = 1024;
        *v210 = a4;
        v69 = "%{public}s failed to create/reuse output frame of length %u, no backtrace";
        goto LABEL_190;
      }
    }

    else
    {
      v67 = __nwlog_obj();
      v68 = v206;
      if (os_log_type_enabled(v67, v206))
      {
        *buf = 136446466;
        v208 = "nw_protocol_http1_get_output_frames";
        v209 = 1024;
        *v210 = a4;
        v69 = "%{public}s failed to create/reuse output frame of length %u, backtrace limit exceeded";
        goto LABEL_190;
      }
    }

LABEL_191:
    if (!v66)
    {
      return 0;
    }

    v124 = v66;
LABEL_346:
    free(v124);
    return 0;
  }

  if (a4 | a3 || (*(v16 + 428) & 0x200) == 0)
  {
    v39 = v18[4];
    if (!v39 || (v40 = *(v39 + 24)) == 0 || !*(v40 + 88))
    {
      v159 = __nwlog_obj();
      *buf = 136446210;
      v208 = "nw_protocol_http1_get_output_frames";
      v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s cannot get output frames, output handler missing callback", buf, 12);
      v206 = OS_LOG_TYPE_ERROR;
      v205 = 0;
      if (__nwlog_fault(v71, &v206, &v205))
      {
        if (v206 == OS_LOG_TYPE_FAULT)
        {
          v72 = __nwlog_obj();
          v73 = v206;
          if (os_log_type_enabled(v72, v206))
          {
            *buf = 136446210;
            v208 = "nw_protocol_http1_get_output_frames";
            v74 = "%{public}s cannot get output frames, output handler missing callback";
            goto LABEL_342;
          }
        }

        else
        {
          if (v205 != 1)
          {
            v72 = __nwlog_obj();
            v73 = v206;
            if (!os_log_type_enabled(v72, v206))
            {
              goto LABEL_344;
            }

            *buf = 136446210;
            v208 = "nw_protocol_http1_get_output_frames";
            v74 = "%{public}s cannot get output frames, output handler missing callback, backtrace limit exceeded";
            goto LABEL_342;
          }

          v160 = __nw_create_backtrace_string();
          v72 = __nwlog_obj();
          v73 = v206;
          v161 = os_log_type_enabled(v72, v206);
          if (v160)
          {
            if (v161)
            {
              *buf = 136446466;
              v208 = "nw_protocol_http1_get_output_frames";
              v209 = 2082;
              *v210 = v160;
              _os_log_impl(&dword_181A37000, v72, v73, "%{public}s cannot get output frames, output handler missing callback, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v160);
            goto LABEL_344;
          }

          if (v161)
          {
            *buf = 136446210;
            v208 = "nw_protocol_http1_get_output_frames";
            v74 = "%{public}s cannot get output frames, output handler missing callback, no backtrace";
            goto LABEL_342;
          }
        }
      }

      goto LABEL_344;
    }

    v41 = a5;
    if ((*(v16 + 428) & 0x200) == 0)
    {
LABEL_175:
      v114 = a6;
      output_frames = nw_protocol_get_output_frames(v18[4], a2, a3, a4, v41, a6);
      if ((*(v16 + 428) & 0x200) != 0)
      {
        v116 = v204;
        v204[0] = MEMORY[0x1E69E9820];
        v204[1] = 0x40000000;
        v204[2] = ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v204[3] = &__block_descriptor_tmp_125_43472;
        v204[4] = v16;
        v204[5] = v18;
        v204[6] = v114;
        v204[7] = v13;
      }

      else
      {
        v116 = v203;
        v203[0] = MEMORY[0x1E69E9820];
        v203[1] = 0x40000000;
        v203[2] = ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_126;
        v203[3] = &__block_descriptor_tmp_127;
        v203[4] = v16;
        v203[5] = v18;
      }

      tqh_first = v114->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v118 = *(tqh_first + 4);
        v119 = (v116[2])(v116);
        tqh_first = v118;
      }

      while ((v119 & 1) != 0);
      if ((*(v16 + 158) & 1) == 0)
      {
        result = output_frames;
        if (gLogDatapath != 1)
        {
          return result;
        }

        v120 = __nwlog_obj();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
        {
          v121 = *(v16 + 256);
          v122 = *(*(v16 + 248) + 372);
          if (v121)
          {
            LODWORD(v121) = *(v121 + 860);
          }

          v123 = *(v16 + 424);
          *buf = 136447746;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = v16 + 74;
          *&v210[8] = 2080;
          *&v210[10] = " ";
          v211 = 1024;
          *v212 = v122;
          *&v212[4] = 1024;
          *&v212[6] = v121;
          LOWORD(v213) = 1024;
          *(&v213 + 2) = v123;
          HIWORD(v213) = 1024;
          v214 = output_frames;
          _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound headers complete, returning %u frames from below", buf, 0x38u);
        }
      }

      return output_frames;
    }

    if (!a3)
    {
      goto LABEL_154;
    }

    v42 = 0;
    if (a4)
    {
      v43 = a4;
      do
      {
        ++v42;
        v44 = v43 > 0xF;
        v43 >>= 4;
      }

      while (v44);
    }

    v45 = __CFADD__(a3, v42 + 9);
    a3 = (a3 + v42 + 9);
    if (!v45)
    {
LABEL_154:
      if (!a4)
      {
        goto LABEL_175;
      }

      v101 = -1;
      v102 = a4;
      do
      {
        ++v101;
        v44 = v102 > 0xF;
        v102 >>= 4;
      }

      while (v44);
      v103 = (v101 + 10);
      v45 = __CFADD__(a4, v103);
      a4 = (a4 + v103);
      if (!v45)
      {
        goto LABEL_175;
      }

      v199 = a2;
      v202 = a6;
      v104 = __nwlog_obj();
      *buf = 136446978;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = "maximum_bytes";
      *&v210[8] = 2048;
      *&v210[10] = v103;
      v211 = 2048;
      *v212 = a4;
      LODWORD(v189) = 42;
      v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v189);
      v206 = OS_LOG_TYPE_ERROR;
      v205 = 0;
      typec = v105;
      if (!__nwlog_fault(v105, &v206, &v205))
      {
        goto LABEL_172;
      }

      if (v206 == OS_LOG_TYPE_FAULT)
      {
        v106 = __nwlog_obj();
        v107 = v206;
        if (os_log_type_enabled(v106, v206))
        {
          *buf = 136446978;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = "maximum_bytes";
          *&v210[8] = 2048;
          *&v210[10] = v103;
          v211 = 2048;
          *v212 = a4;
          v108 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_170:
          v112 = v106;
          v113 = v107;
LABEL_171:
          _os_log_impl(&dword_181A37000, v112, v113, v108, buf, 0x2Au);
        }
      }

      else if (v205 == 1)
      {
        v109 = __nw_create_backtrace_string();
        v110 = __nwlog_obj();
        logb = v206;
        v111 = os_log_type_enabled(v110, v206);
        if (v109)
        {
          if (v111)
          {
            *buf = 136447234;
            v208 = "nw_protocol_http1_get_output_frames";
            v209 = 2082;
            *v210 = "maximum_bytes";
            *&v210[8] = 2048;
            *&v210[10] = v103;
            v211 = 2048;
            *v212 = a4;
            *&v212[8] = 2082;
            v213 = v109;
            _os_log_impl(&dword_181A37000, v110, logb, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v109);
          goto LABEL_172;
        }

        if (v111)
        {
          *buf = 136446978;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = "maximum_bytes";
          *&v210[8] = 2048;
          *&v210[10] = v103;
          v211 = 2048;
          *v212 = a4;
          v108 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          v112 = v110;
          v113 = logb;
          goto LABEL_171;
        }
      }

      else
      {
        v106 = __nwlog_obj();
        v107 = v206;
        if (os_log_type_enabled(v106, v206))
        {
          *buf = 136446978;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = "maximum_bytes";
          *&v210[8] = 2048;
          *&v210[10] = v103;
          v211 = 2048;
          *v212 = a4;
          v108 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_170;
        }
      }

LABEL_172:
      if (typec)
      {
        free(typec);
      }

      a4 = 0xFFFFFFFFLL;
      a6 = v202;
      v41 = a5;
      a2 = v199;
      goto LABEL_175;
    }

    v197 = a2;
    v201 = a6;
    v46 = (v42 + 2);
    v47 = __nwlog_obj();
    *buf = 136446978;
    v208 = "nw_protocol_http1_get_output_frames";
    v209 = 2082;
    *v210 = "minimum_bytes";
    *&v210[8] = 2048;
    *type = v46 + 7;
    *&v210[10] = v46 + 7;
    v211 = 2048;
    *v212 = a3;
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (__nwlog_fault(v48, &v206, &v205))
    {
      if (v206 == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = v206;
        if (os_log_type_enabled(v49, v206))
        {
          *buf = 136446978;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = "minimum_bytes";
          *&v210[8] = 2048;
          *&v210[10] = *type;
          v211 = 2048;
          *v212 = a3;
          v51 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_149:
          v99 = v49;
          v100 = v50;
LABEL_150:
          _os_log_impl(&dword_181A37000, v99, v100, v51, buf, 0x2Au);
        }
      }

      else if (v205 == 1)
      {
        v96 = __nw_create_backtrace_string();
        v97 = __nwlog_obj();
        loga = v206;
        v98 = os_log_type_enabled(v97, v206);
        if (v96)
        {
          if (v98)
          {
            *buf = 136447234;
            v208 = "nw_protocol_http1_get_output_frames";
            v209 = 2082;
            *v210 = "minimum_bytes";
            *&v210[8] = 2048;
            *&v210[10] = *type;
            v211 = 2048;
            *v212 = a3;
            *&v212[8] = 2082;
            v213 = v96;
            _os_log_impl(&dword_181A37000, v97, loga, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v96);
          goto LABEL_151;
        }

        if (v98)
        {
          *buf = 136446978;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = "minimum_bytes";
          *&v210[8] = 2048;
          *&v210[10] = *type;
          v211 = 2048;
          *v212 = a3;
          v51 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          v99 = v97;
          v100 = loga;
          goto LABEL_150;
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v50 = v206;
        if (os_log_type_enabled(v49, v206))
        {
          *buf = 136446978;
          v208 = "nw_protocol_http1_get_output_frames";
          v209 = 2082;
          *v210 = "minimum_bytes";
          *&v210[8] = 2048;
          *&v210[10] = *type;
          v211 = 2048;
          *v212 = a3;
          v51 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_149;
        }
      }
    }

LABEL_151:
    if (v48)
    {
      free(v48);
    }

    a3 = 0xFFFFFFFFLL;
    a6 = v201;
    v41 = a5;
    a2 = v197;
    goto LABEL_154;
  }

  v31 = a6;
  v32 = nw_frame_cache_create_frame(v18 + 87, 0);
  if (!v32)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    v208 = "nw_protocol_http1_get_output_frames";
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s failed to create/reuse potential final output frame of length 0", buf, 12);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v71, &v206, &v205))
    {
      goto LABEL_344;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = v206;
      if (os_log_type_enabled(v72, v206))
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s failed to create/reuse potential final output frame of length 0";
LABEL_342:
        v176 = v72;
        v177 = v73;
LABEL_343:
        _os_log_impl(&dword_181A37000, v176, v177, v74, buf, 0xCu);
        goto LABEL_344;
      }

      goto LABEL_344;
    }

    if (v205 != 1)
    {
      v72 = __nwlog_obj();
      v73 = v206;
      if (os_log_type_enabled(v72, v206))
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s failed to create/reuse potential final output frame of length 0, backtrace limit exceeded";
        goto LABEL_342;
      }

LABEL_344:
      if (!v71)
      {
        return 0;
      }

      v124 = v71;
      goto LABEL_346;
    }

    v79 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = v206;
    v80 = os_log_type_enabled(v72, v206);
    if (!v79)
    {
      if (v80)
      {
        *buf = 136446210;
        v208 = "nw_protocol_http1_get_output_frames";
        v74 = "%{public}s failed to create/reuse potential final output frame of length 0, no backtrace";
        goto LABEL_342;
      }

      goto LABEL_344;
    }

    if (v80)
    {
      *buf = 136446466;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v79;
      v81 = "%{public}s failed to create/reuse potential final output frame of length 0, dumping backtrace:%{public}s";
LABEL_104:
      _os_log_impl(&dword_181A37000, v72, v73, v81, buf, 0x16u);
      goto LABEL_105;
    }

    goto LABEL_105;
  }

  v33 = v32;
  if ((*(v32 + 204) & 4) == 0)
  {
    v34 = __nwlog_obj();
    *buf = 136446466;
    v208 = "nw_http1_frame_metadata_reset";
    v209 = 2048;
    *v210 = v33;
    v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s frame %p has no metadata", buf, 22);
    v206 = OS_LOG_TYPE_ERROR;
    v205 = 0;
    if (!__nwlog_fault(v35, &v206, &v205))
    {
      goto LABEL_137;
    }

    if (v206 == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = v206;
      if (!os_log_type_enabled(v36, v206))
      {
        goto LABEL_137;
      }

      *buf = 136446466;
      v208 = "nw_http1_frame_metadata_reset";
      v209 = 2048;
      *v210 = v33;
      v38 = "%{public}s frame %p has no metadata";
    }

    else
    {
      if (v205 == 1)
      {
        v85 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        typeb = v206;
        v87 = os_log_type_enabled(v86, v206);
        if (v85)
        {
          if (v87)
          {
            *buf = 136446722;
            v208 = "nw_http1_frame_metadata_reset";
            v209 = 2048;
            *v210 = v33;
            *&v210[8] = 2082;
            *&v210[10] = v85;
            _os_log_impl(&dword_181A37000, v86, typeb, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v85);
          goto LABEL_137;
        }

        if (!v87)
        {
LABEL_137:
          if (v35)
          {
            free(v35);
          }

          goto LABEL_139;
        }

        *buf = 136446466;
        v208 = "nw_http1_frame_metadata_reset";
        v209 = 2048;
        *v210 = v33;
        v38 = "%{public}s frame %p has no metadata, no backtrace";
        v91 = v86;
        v92 = typeb;
LABEL_136:
        _os_log_impl(&dword_181A37000, v91, v92, v38, buf, 0x16u);
        goto LABEL_137;
      }

      v36 = __nwlog_obj();
      v37 = v206;
      if (!os_log_type_enabled(v36, v206))
      {
        goto LABEL_137;
      }

      *buf = 136446466;
      v208 = "nw_http1_frame_metadata_reset";
      v209 = 2048;
      *v210 = v33;
      v38 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
    }

    v91 = v36;
    v92 = v37;
    goto LABEL_136;
  }

  v76 = *(v32 + 216);
  *(v32 + 208) = v18;
  *(v32 + 216) = v76 & 0xFC | 2;
LABEL_139:
  v93 = v31;
  v33[2] = 0;
  v94 = v18[86];
  v33[3] = v94;
  *v94 = v33;
  v18[86] = v33 + 2;
  v33[10] = nw_http1_connection_output_frame_finalizer;
  v33[11] = v13;
  if ((*(v16 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v182 = __nwlog_obj();
    v183 = os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG);
    v93 = v31;
    if (v183)
    {
      v184 = *(v16 + 256);
      v185 = *(*(v16 + 248) + 372);
      if (v184)
      {
        LODWORD(v184) = *(v184 + 860);
      }

      v186 = *(v16 + 424);
      *buf = 136447490;
      v208 = "nw_protocol_http1_get_output_frames";
      v209 = 2082;
      *v210 = v16 + 74;
      *&v210[8] = 2080;
      *&v210[10] = " ";
      v211 = 1024;
      *v212 = v185;
      *&v212[4] = 1024;
      *&v212[6] = v184;
      LOWORD(v213) = 1024;
      *(&v213 + 2) = v186;
      _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> returning 1 frame of 0 bytes for potential complete context", buf, 0x32u);
      v93 = v31;
    }
  }

  v33[4] = 0;
  v95 = v93->tqh_last;
  v33[5] = v95;
  *v95 = v33;
  v93->tqh_last = (v33 + 4);
  return 1;
}

uint64_t ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v59 = "nw_protocol_http1_get_output_frames_block_invoke";
    v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v40, &type, &v56))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v59 = "nw_protocol_http1_get_output_frames_block_invoke";
      v43 = "%{public}s called with null frame";
    }

    else if (v56 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v50 = os_log_type_enabled(v41, type);
      if (backtrace_string)
      {
        if (v50)
        {
          *buf = 136446466;
          v59 = "nw_protocol_http1_get_output_frames_block_invoke";
          v60 = 2082;
          v61 = backtrace_string;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_72;
      }

      if (!v50)
      {
LABEL_72:
        if (v40)
        {
          free(v40);
        }

        return a2 != 0;
      }

      *buf = 136446210;
      v59 = "nw_protocol_http1_get_output_frames_block_invoke";
      v43 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      v59 = "nw_protocol_http1_get_output_frames_block_invoke";
      v43 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
    goto LABEL_72;
  }

  v55 = *(a1 + 32);
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x22D95518uLL);
  if (v5)
  {
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446722;
  v59 = "nw_http1_frame_wrap_context";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v60 = 2048;
  v61 = 1;
  v62 = 2048;
  v63 = 32;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
LABEL_8:
    v10 = *(a2 + 80);
    *v5 = v55;
    v5[1] = v10;
    *(a2 + 80) = nw_http1_wrapped_frame_finalizer;
    *(a2 + 88) = v5;
    if ((*(a2 + 205) & 1) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, v5))
    {
      return a2 != 0;
    }

    v11 = *(a2 + 48);
    if (!v11)
    {
      return a2 != 0;
    }

    if (*(a1 + 40))
    {
      v12 = -1;
      v13 = *(a2 + 48);
      do
      {
        ++v12;
        v14 = v13 > 0xF;
        v13 >>= 4;
      }

      while (v14);
      v15 = v12 + 3;
      v16 = 7;
      goto LABEL_16;
    }

    v44 = __nwlog_obj();
    *buf = 136446210;
    v59 = "nw_http1_connection_get_chunked_extra_size";
    LODWORD(v54) = 12;
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null http1_connection", buf, v54);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v45, &type, &v56))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446210;
          v59 = "nw_http1_connection_get_chunked_extra_size";
          v48 = "%{public}s called with null http1_connection";
LABEL_76:
          _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
        }
      }

      else if (v56 == 1)
      {
        v51 = v11;
        v52 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v47 = type;
        v53 = os_log_type_enabled(v46, type);
        if (v52)
        {
          if (v53)
          {
            *buf = 136446466;
            v59 = "nw_http1_connection_get_chunked_extra_size";
            v60 = 2082;
            v61 = v52;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v52);
          v11 = v51;
          goto LABEL_77;
        }

        v11 = v51;
        if (v53)
        {
          *buf = 136446210;
          v59 = "nw_http1_connection_get_chunked_extra_size";
          v48 = "%{public}s called with null http1_connection, no backtrace";
          goto LABEL_76;
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446210;
          v59 = "nw_http1_connection_get_chunked_extra_size";
          v48 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          goto LABEL_76;
        }
      }
    }

LABEL_77:
    if (v45)
    {
      free(v45);
    }

    v15 = 0;
    v16 = 0;
LABEL_16:
    if (v11 >= v16 + v15)
    {
      nw_frame_claim(a2, v4, v15, v16);
      if ((*(*(a1 + 56) + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v27 = __nwlog_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 56);
          v29 = v28 + 74;
          LODWORD(v28) = *(v28 + 372);
          *buf = 136447746;
          v59 = "nw_protocol_http1_get_output_frames_block_invoke";
          v60 = 2082;
          v61 = v29;
          v62 = 2080;
          v63 = " ";
          v64 = 1024;
          v65 = v28;
          v66 = 2048;
          *v67 = a2;
          *&v67[8] = 1024;
          *v68 = v15;
          *&v68[4] = 1024;
          *&v68[6] = v16;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> claimed chunk header from frame %p (start: %u, end: %u)", buf, 0x3Cu);
        }
      }

      return a2 != 0;
    }

    if ((*(*(a1 + 40) + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        v19 = v18 + 74;
        v20 = *(v18 + 488);
        v21 = *(*(v18 + 480) + 372);
        v22 = *(v18 + 860);
        if (v20)
        {
          LODWORD(v20) = *(v20 + 424);
        }

        *buf = 136448514;
        v59 = "nw_protocol_http1_get_output_frames_block_invoke";
        v60 = 2082;
        v61 = v19;
        v62 = 2080;
        v63 = " ";
        v64 = 1024;
        v65 = v21;
        v66 = 1024;
        *v67 = v22;
        *&v67[4] = 1024;
        *&v67[6] = v20;
        *v68 = 2048;
        *&v68[2] = a2;
        v69 = 1024;
        v70 = v11;
        v71 = 1024;
        v72 = v15;
        v73 = 1024;
        v74 = v16;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> frame is too small to fit chunk header: %p, raw length: %u, start space: %u, end space: %u", buf, 0x4Eu);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v59 = "nw_protocol_http1_get_output_frames_block_invoke";
    LODWORD(v54) = 12;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s frame is too small to fit chunk header", buf, v54);
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v23, &type, &v56))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v59 = "nw_protocol_http1_get_output_frames_block_invoke";
        v26 = "%{public}s frame is too small to fit chunk header";
LABEL_37:
        v34 = v24;
        v35 = v25;
LABEL_38:
        _os_log_impl(&dword_181A37000, v34, v35, v26, buf, 0xCu);
      }
    }

    else if (v56 == 1)
    {
      v30 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      v32 = type;
      v33 = os_log_type_enabled(gLogObj, type);
      if (v30)
      {
        if (v33)
        {
          *buf = 136446466;
          v59 = "nw_protocol_http1_get_output_frames_block_invoke";
          v60 = 2082;
          v61 = v30;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s frame is too small to fit chunk header, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        goto LABEL_39;
      }

      if (v33)
      {
        *buf = 136446210;
        v59 = "nw_protocol_http1_get_output_frames_block_invoke";
        v26 = "%{public}s frame is too small to fit chunk header, no backtrace";
        v34 = v31;
        v35 = v32;
        goto LABEL_38;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v59 = "nw_protocol_http1_get_output_frames_block_invoke";
        v26 = "%{public}s frame is too small to fit chunk header, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_39:
    if (v23)
    {
      free(v23);
    }

    v36 = (*(a1 + 48) + 8);
    v37 = *(a2 + 32);
    v38 = *(a2 + 40);
    if (v37)
    {
      v36 = (v37 + 40);
    }

    *v36 = v38;
    *v38 = v37;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    return a2 != 0;
  }

  __break(1u);
  return result;
}

uint64_t ___ZL35nw_protocol_http1_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_126(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http1_get_output_frames_block_invoke";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v10, &type, &v17))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http1_get_output_frames_block_invoke";
      v13 = "%{public}s called with null frame";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_protocol_http1_get_output_frames_block_invoke";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (!v15)
      {
LABEL_24:
        if (v10)
        {
          free(v10);
        }

        return a2 != 0;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http1_get_output_frames_block_invoke";
      v13 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http1_get_output_frames_block_invoke";
      v13 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_24;
  }

  v16 = *(a1 + 32);
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x22D95518uLL);
  if (v3)
  {
LABEL_8:
    v8 = *(a2 + 80);
    *v3 = v16;
    v3[1] = v8;
    *(a2 + 80) = nw_http1_wrapped_frame_finalizer;
    *(a2 + 88) = v3;
    return a2 != 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  *buf = 136446722;
  v20 = "nw_http1_frame_wrap_context";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v21 = 2048;
  v22 = 1;
  v23 = 2048;
  v24 = 32;
  v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    v3 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void nw_http1_wrapped_frame_finalizer(nw_frame *a1, BOOL a2, _OWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_http1_wrapped_frame_finalizer";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null frame", buf, 12);
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
      v17 = "nw_http1_wrapped_frame_finalizer";
      v8 = "%{public}s called with null frame";
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
          v17 = "nw_http1_wrapped_frame_finalizer";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v5)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v11)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_http1_wrapped_frame_finalizer";
      v8 = "%{public}s called with null frame, no backtrace";
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
      v17 = "nw_http1_wrapped_frame_finalizer";
      v8 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_34;
  }

  if (a3)
  {
    *(a1 + 5) = a3[1];
    free(a3);

    nw_frame_finalize(a1);
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http1_wrapped_frame_finalizer";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null context", buf, 12);
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
    v17 = "nw_http1_wrapped_frame_finalizer";
    v8 = "%{public}s called with null context";
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
    v17 = "nw_http1_wrapped_frame_finalizer";
    v8 = "%{public}s called with null context, backtrace limit exceeded";
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
    v17 = "nw_http1_wrapped_frame_finalizer";
    v8 = "%{public}s called with null context, no backtrace";
    goto LABEL_33;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_http1_wrapped_frame_finalizer";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
LABEL_35:
    free(v5);
  }
}

void nw_http1_connection_output_frame_finalizer(nw_frame *a1, uint64_t a2, void *a3)
{
  v667 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v165 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v166 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v165, 16, "%{public}s called with null frame", buf, 12);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v166, &v662, &v656))
    {
      goto LABEL_891;
    }

    if (v662 == 17)
    {
      v167 = __nwlog_obj();
      v168 = v662;
      if (!os_log_type_enabled(v167, v662))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null frame";
    }

    else if (v656 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v167 = __nwlog_obj();
      v168 = v662;
      v197 = os_log_type_enabled(v167, v662);
      if (backtrace_string)
      {
        if (v197)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_output_frame_finalizer";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v167, v168, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_891:
        if (!v166)
        {
          return;
        }

        goto LABEL_892;
      }

      if (!v197)
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v167 = __nwlog_obj();
      v168 = v662;
      if (!os_log_type_enabled(v167, v662))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    goto LABEL_890;
  }

  if (!a3)
  {
    v170 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v166 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v170, 16, "%{public}s called with null context", buf, 12);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v166, &v662, &v656))
    {
      goto LABEL_891;
    }

    if (v662 != 17)
    {
      if (v656 != 1)
      {
        v167 = __nwlog_obj();
        v168 = v662;
        if (!os_log_type_enabled(v167, v662))
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v169 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_890;
      }

      v198 = __nw_create_backtrace_string();
      v167 = __nwlog_obj();
      v168 = v662;
      v199 = os_log_type_enabled(v167, v662);
      if (!v198)
      {
        if (!v199)
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v169 = "%{public}s called with null context, no backtrace";
        goto LABEL_890;
      }

      if (!v199)
      {
        goto LABEL_845;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v198;
      v200 = "%{public}s called with null context, dumping backtrace:%{public}s";
      goto LABEL_844;
    }

    v167 = __nwlog_obj();
    v168 = v662;
    if (!os_log_type_enabled(v167, v662))
    {
      goto LABEL_891;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v169 = "%{public}s called with null context";
LABEL_890:
    _os_log_impl(&dword_181A37000, v167, v168, v169, buf, 0xCu);
    goto LABEL_891;
  }

  v4 = *(a1 + 102);
  if ((v4 & 4) != 0)
  {
    v5 = a1 + 208;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 4) == 0)
  {
    v171 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v166 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v171, 16, "%{public}s called with null metadata", buf, 12);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v166, &v662, &v656))
    {
      goto LABEL_891;
    }

    if (v662 != 17)
    {
      if (v656 != 1)
      {
        v167 = __nwlog_obj();
        v168 = v662;
        if (!os_log_type_enabled(v167, v662))
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v169 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_890;
      }

      v198 = __nw_create_backtrace_string();
      v167 = __nwlog_obj();
      v168 = v662;
      v201 = os_log_type_enabled(v167, v662);
      if (!v198)
      {
        if (!v201)
        {
          goto LABEL_891;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        v169 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_890;
      }

      if (!v201)
      {
        goto LABEL_845;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v198;
      v200 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_844;
    }

    v167 = __nwlog_obj();
    v168 = v662;
    if (!os_log_type_enabled(v167, v662))
    {
      goto LABEL_891;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v169 = "%{public}s called with null metadata";
    goto LABEL_890;
  }

  v6 = *v5;
  if (!*v5)
  {
    v172 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v166 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s called with null http1_connection", buf, 12);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v166, &v662, &v656))
    {
      goto LABEL_891;
    }

    if (v662 == 17)
    {
      v167 = __nwlog_obj();
      v168 = v662;
      if (!os_log_type_enabled(v167, v662))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null http1_connection";
      goto LABEL_890;
    }

    if (v656 != 1)
    {
      v167 = __nwlog_obj();
      v168 = v662;
      if (!os_log_type_enabled(v167, v662))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_890;
    }

    v198 = __nw_create_backtrace_string();
    v167 = __nwlog_obj();
    v168 = v662;
    v203 = os_log_type_enabled(v167, v662);
    if (!v198)
    {
      if (!v203)
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_890;
    }

    if (!v203)
    {
      goto LABEL_845;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    *&buf[12] = 2082;
    *&buf[14] = v198;
    v200 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
LABEL_844:
    _os_log_impl(&dword_181A37000, v167, v168, v200, buf, 0x16u);
    goto LABEL_845;
  }

  v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v173 = a2;
    v174 = __nwlog_obj();
    v175 = os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG);
    a2 = v173;
    if (v175)
    {
      v176 = *(v6 + 488);
      v177 = *(*(v6 + 480) + 372);
      v178 = *(v6 + 860);
      if (v176)
      {
        LODWORD(v176) = *(v176 + 424);
      }

      *buf = 136448002;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      if (v173)
      {
        v179 = "true";
      }

      else
      {
        v179 = "false";
      }

      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v177;
      *&v653[4] = 1024;
      *&v653[6] = v178;
      *v654 = 1024;
      *&v654[2] = v176;
      *&v654[6] = 2048;
      *&v654[8] = a1;
      *&v654[16] = 2080;
      v655 = v179;
      _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing output frame %p, success: %s", buf, 0x46u);
      a2 = v173;
    }
  }

  v8 = (v6 + 688);
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  if (v9)
  {
    v8 = (v9 + 24);
  }

  *v8 = v10;
  *v10 = v9;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v11 = *(v6 + 488);
  v642 = v6;
  if (!v11 || (*(v11 + 428) & 0x100) == 0)
  {
    v12 = 0;
    if (a2)
    {
      goto LABEL_15;
    }

LABEL_27:
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v204 = __nwlog_obj();
      if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
      {
        v205 = *(v6 + 488);
        v206 = *(*(v6 + 480) + 372);
        v207 = *(v6 + 860);
        if (v205)
        {
          LODWORD(v205) = *(v205 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v653 = v206;
        *&v653[4] = 1024;
        *&v653[6] = v207;
        *v654 = 1024;
        *&v654[2] = v205;
        _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> disposing of output frame, finalizer called with success == false", buf, 0x32u);
      }
    }

    if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, *(a1 + 11)))
    {
      v17 = *(a1 + 14);
      if (v17)
      {
        free(v17);
      }
    }

    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(a1);
    return;
  }

  if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v208 = a2;
    v209 = __nwlog_obj();
    v210 = os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG);
    v11 = *(v6 + 488);
    if (v210)
    {
      v211 = *(*(v6 + 480) + 372);
      v212 = *(v6 + 860);
      if (v11)
      {
        LODWORD(v11) = *(v11 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v211;
      *&v653[4] = 1024;
      *&v653[6] = v212;
      *v654 = 1024;
      *&v654[2] = v11;
      *&v654[6] = 1024;
      *&v654[8] = v208;
      _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> initial outbound frame finalized, success %u", buf, 0x38u);
      a2 = v208;
      v11 = *(v6 + 488);
    }

    else
    {
      a2 = v208;
    }
  }

  *(v11 + 428) &= ~0x100u;
  v12 = 1;
  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_15:
  v13 = *(v6 + 488);
  if (!v13)
  {
    v202 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_output_frame_finalizer";
    v166 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v202, 16, "%{public}s called with null http1_connection->current_stream", buf, 12);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v166, &v662, &v656))
    {
      goto LABEL_891;
    }

    if (v662 == 17)
    {
      v167 = __nwlog_obj();
      v168 = v662;
      if (!os_log_type_enabled(v167, v662))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null http1_connection->current_stream";
      goto LABEL_890;
    }

    if (v656 != 1)
    {
      v167 = __nwlog_obj();
      v168 = v662;
      if (!os_log_type_enabled(v167, v662))
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
      goto LABEL_890;
    }

    v198 = __nw_create_backtrace_string();
    v167 = __nwlog_obj();
    v168 = v662;
    v489 = os_log_type_enabled(v167, v662);
    if (!v198)
    {
      if (!v489)
      {
        goto LABEL_891;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      v169 = "%{public}s called with null http1_connection->current_stream, no backtrace";
      goto LABEL_890;
    }

    if (v489)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v198;
      v200 = "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s";
      goto LABEL_844;
    }

LABEL_845:
    free(v198);
    if (!v166)
    {
      return;
    }

LABEL_892:
    free(v166);
    return;
  }

  v14 = *(v13 + 428);
  if ((v5[8] & 2) != 0 && (v14 & 4) != 0)
  {
    v15 = *(a1 + 13);
    if (!v15 || v15 == *(a1 + 14) + *(a1 + 15))
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        if ((*(v16 + 66) & 0x40) != 0)
        {
          nw_protocol_output_finished(*(v6 + 488), *(v13 + 48));
        }
      }
    }

    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    nw_frame_cache_return_frame(v6 + 696, a1);
    return;
  }

  if ((v14 & 4) != 0)
  {
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v496 = __nwlog_obj();
      if (os_log_type_enabled(v496, OS_LOG_TYPE_DEBUG))
      {
        v497 = *(v6 + 488);
        v498 = *(*(v6 + 480) + 372);
        v499 = *(v6 + 860);
        if (v497)
        {
          LODWORD(v497) = *(v497 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v653 = v498;
        *&v653[4] = 1024;
        *&v653[6] = v499;
        *v654 = 1024;
        *&v654[2] = v497;
        *&v654[6] = 2048;
        *&v654[8] = a1;
        _os_log_impl(&dword_181A37000, v496, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound headers are already complete, sending contents of frame %p", buf, 0x3Cu);
      }
    }

    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v6 + 488);
        v25 = *(*(v6 + 480) + 372);
        v26 = *(v6 + 860);
        if (v24)
        {
          LODWORD(v24) = *(v24 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_http1_connection_enqueue_outbound_frame";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v653 = v25;
        *&v653[4] = 1024;
        *&v653[6] = v26;
        *v654 = 1024;
        *&v654[2] = v24;
        *&v654[6] = 2048;
        *&v654[8] = a1;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> enqueuing outbound frame %p", buf, 0x3Cu);
      }
    }

    goto LABEL_420;
  }

  if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v491 = __nwlog_obj();
    v492 = os_log_type_enabled(v491, OS_LOG_TYPE_DEBUG);
    v13 = *(v6 + 488);
    if (v492)
    {
      v493 = *(*(v6 + 480) + 372);
      v494 = *(v6 + 860);
      if (v13)
      {
        v495 = *(v13 + 424);
      }

      else
      {
        v495 = 0;
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v493;
      *&v653[4] = 1024;
      *&v653[6] = v494;
      *v654 = 1024;
      *&v654[2] = v495;
      _os_log_impl(&dword_181A37000, v491, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending outbound message", buf, 0x32u);
      v13 = *(v6 + 488);
    }

    if (!v13)
    {
      v542 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      v543 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v542, 16, "%{public}s called with null http1_stream", buf, 12);
      LOBYTE(v662) = 16;
      LOBYTE(v656) = 0;
      if (!__nwlog_fault(v543, &v662, &v656))
      {
        goto LABEL_937;
      }

      if (v662 == 17)
      {
        v544 = __nwlog_obj();
        v545 = v662;
        if (!os_log_type_enabled(v544, v662))
        {
          goto LABEL_937;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v546 = "%{public}s called with null http1_stream";
      }

      else
      {
        if (v656 == 1)
        {
          v547 = __nw_create_backtrace_string();
          v548 = __nwlog_obj();
          v549 = v662;
          v550 = os_log_type_enabled(v548, v662);
          if (v547)
          {
            if (v550)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              *&buf[12] = 2082;
              *&buf[14] = v547;
              _os_log_impl(&dword_181A37000, v548, v549, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v547);
            goto LABEL_937;
          }

          if (!v550)
          {
LABEL_937:
            if (v543)
            {
              free(v543);
            }

            goto LABEL_939;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v546 = "%{public}s called with null http1_stream, no backtrace";
          v551 = v548;
          v552 = v549;
LABEL_936:
          _os_log_impl(&dword_181A37000, v551, v552, v546, buf, 0xCu);
          goto LABEL_937;
        }

        v544 = __nwlog_obj();
        v545 = v662;
        if (!os_log_type_enabled(v544, v662))
        {
          goto LABEL_937;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v546 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      }

      v551 = v544;
      v552 = v545;
      goto LABEL_936;
    }
  }

  v631 = v12;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v18 = nw_protocol_copy_http_definition_http_definition;
  v19 = *(v13 + 384);
  v20 = nw_frame_copy_metadata_for_protocol(a1, v18);
  v21 = v20;
  if (!v19)
  {
    if (v20)
    {
      v21 = v20;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v27 = nw_protocol_metadata_matches_definition(v21, nw_protocol_copy_http_definition_http_definition);

      if (v27)
      {
        if (*(*(v13 + 248) + 376))
        {
          v45 = nw_http_metadata_copy_response(v21);
          if (v45)
          {
            v29 = v45;
            v30 = nw_http_response_copy(v45);
            metadata_for_response = nw_http_create_metadata_for_response(v30);
LABEL_77:
            *buf = metadata_for_response;
            nw::retained_ptr<nw_endpoint *>::operator=(v13 + 384, buf);
            if (v30)
            {
              os_release(v30);
            }

            os_release(v29);
            if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v568 = __nwlog_obj();
              if (os_log_type_enabled(v568, OS_LOG_TYPE_DEBUG))
              {
                v569 = *(v13 + 256);
                v570 = *(*(v13 + 248) + 372);
                if (v569)
                {
                  LODWORD(v569) = *(v569 + 860);
                }

                v571 = *(v13 + 424);
                *buf = 136447490;
                *&buf[4] = "nw_http1_stream_save_outbound_message";
                *&buf[12] = 2082;
                *&buf[14] = v13 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *v653 = v570;
                *&v653[4] = 1024;
                *&v653[6] = v569;
                *v654 = 1024;
                *&v654[2] = v571;
                _os_log_impl(&dword_181A37000, v568, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> saved outbound message", buf, 0x32u);
              }
            }

            v46 = *(a1 + 13);
            if ((!v46 || v46 == *(a1 + 14) + *(a1 + 15)) && (v47 = *(a1 + 8)) != 0)
            {
              v48 = (*(v47 + 66) >> 6) & 1;
            }

            else
            {
              LOBYTE(v48) = 0;
            }

            v49 = *(v13 + 384);
            if (v49)
            {
              if ((*(*(v13 + 248) + 376) & 1) == 0)
              {
                v50 = nw_http_metadata_copy_request(v49);
                if (nw_http_request_has_method(v50, "CONNECT"))
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2000000000;
                  buf[24] = 0;
                  v662 = MEMORY[0x1E69E9820];
                  v663 = 0x40000000;
                  v664 = ___ZL40nw_http1_stream_process_outbound_messageP15nw_http1_streamb_block_invoke;
                  v665 = &unk_1E6A32C30;
                  v666 = buf;
                  nw_http_request_access_extended_connect_protocol(v50, &v662);
                  if (*(*&buf[8] + 24) == 1)
                  {
                    nw_http_request_set_method(v50, "GET");
                    nw_http_request_set_extended_connect_protocol(v50);
                    nw_http_fields_append(v50, "Connection", "Upgrade");
                    nw_http_fields_append(v50, "Upgrade", "websocket");
                    if ((nw_http_fields_have_field_with_name(v50, "Sec-WebSocket-Key") & 1) == 0)
                    {
                      arc4random_buf(&__buf, 0x10uLL);
                      v51 = dispatch_data_create(&__buf, 0x10uLL, 0, *MEMORY[0x1E69E9658]);
                      v52 = dispatch_data_create_with_transform();
                      v656 = 0;
                      v657 = 0;
                      LOBYTE(v659) = 0;
                      v658 = 0;
                      nw_dispatch_data_copyout(v52, &v656, 24);
                      nw_http_fields_append(v50, "Sec-WebSocket-Key", &v656);
                      if (v52)
                      {
                        dispatch_release(v52);
                      }

                      if (v51)
                      {
                        dispatch_release(v51);
                      }
                    }
                  }

                  _Block_object_dispose(buf, 8);
                }

                if (!v50)
                {
                  has_method = 0;
                  v58 = 0;
                  goto LABEL_151;
                }

                if (nw_http_request_has_method(v50, "GET"))
                {
                  has_method = 1;
                }

                else
                {
                  has_method = nw_http_request_has_method(v50, "HEAD");
                }

                if ((*(*(v13 + 248) + 376) & 4) != 0)
                {
                  v74 = nw_parameters_copy_url_endpoint(*(v13 + 320));
                  if (v74)
                  {
                    v75 = v74;
                    nw_endpoint_get_url(v74);
                    nw_http_request_set_path(v50);
                    os_release(v75);
                  }
                }

                v58 = 0;
                goto LABEL_150;
              }

              v50 = nw_http_metadata_copy_response(v49);
              status_code = nw_http_response_get_status_code(v50);
              v57 = nw_http_metadata_copy_request(*(v13 + 368));
              if (status_code == 101)
              {
                *(v13 + 428) &= ~0x1000u;
                v58 = 1;
                goto LABEL_109;
              }

              v69 = v57;
              v70 = nw_http_request_has_method(v57, "CONNECT");
              if (status_code == 200)
              {
                v58 = v70;
              }

              else
              {
                v58 = 0;
              }

              if (((status_code - 200) < 0xFFFFFF9C) | v58 & 1)
              {
                v71 = 0;
              }

              else
              {
                v71 = 4096;
              }

              *(v13 + 428) = v71 | *(v13 + 428) & 0xEFFF;
              has_method = 1;
              if (status_code == 204 || status_code == 304)
              {
                v57 = v69;
                v6 = v642;
                if (!v57)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v57 = v69;
                if (((status_code - 200) < 0xFFFFFF9C) | v58 & 1)
                {
                  v6 = v642;
LABEL_109:
                  has_method = v58;
                  if (!v57)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_110;
                }

                v6 = v642;
                if (!v57)
                {
LABEL_111:
                  if (!v50)
                  {
LABEL_151:
                    v76 = nw_http_metadata_copy_header_fields(*(v13 + 384));
                    if ((nw_http_fields_have_field_with_name(v76, "Connection") & 1) == 0 && (*(v13 + 428) & 0x1000) == 0)
                    {
                      nw_http_fields_append(v76, "Connection", "keep-alive");
                    }

                    if (!(has_method & 1 | ((v48 & 1) == 0)) && (nw_http_fields_have_field_with_name(v76, "Content-Length") & 1) == 0)
                    {
                      nw_http_fields_append(v76, "Content-Length", "0");
                    }

                    if ((v48 & 1) == 0)
                    {
                      if ((nw_http_fields_have_field_with_name(v76, "Content-Length") | v58))
                      {
                        v77 = 0;
                      }

                      else
                      {
                        v77 = 512;
                      }

                      *(v13 + 428) = *(v13 + 428) & 0xFDFF | v77;
                      if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
                      {
                        v595 = __nwlog_obj();
                        if (os_log_type_enabled(v595, OS_LOG_TYPE_DEBUG))
                        {
                          v596 = *(v13 + 256);
                          v597 = *(*(v13 + 248) + 372);
                          if (v596)
                          {
                            LODWORD(v596) = *(v596 + 860);
                          }

                          v598 = *(v13 + 424);
                          v599 = "uses";
                          if ((*(v13 + 428) & 0x200) == 0)
                          {
                            v599 = "does not use";
                          }

                          *buf = 136447746;
                          *&buf[4] = "nw_http1_stream_process_outbound_message";
                          *&buf[12] = 2082;
                          *&buf[14] = v13 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *v653 = v597;
                          *&v653[4] = 1024;
                          *&v653[6] = v596;
                          *v654 = 1024;
                          *&v654[2] = v598;
                          *&v654[6] = 2080;
                          *&v654[8] = v599;
                          _os_log_impl(&dword_181A37000, v595, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound data %s chunked encoding", buf, 0x3Cu);
                          v6 = v642;
                        }
                      }

                      if ((*(v13 + 428) & 0x200) != 0)
                      {
                        nw_http_fields_set_value_by_name(v76, "Transfer-Encoding", "chunked");
                      }
                    }

                    if (v58)
                    {
                      v78 = 512;
                    }

                    else
                    {
                      v78 = 0;
                    }

                    *(*(v13 + 256) + 872) = *(*(v13 + 256) + 872) & 0xFDFF | v78;
                    if (v76)
                    {
                      os_release(v76);
                    }

LABEL_170:
                    nw_http_transaction_metadata_set_outbound_message(*(v13 + 352), *(v13 + 384), v13 + 74);
                    nw::http::content_length_manager::set_outbound_message((v13 + 160), *(v13 + 384));
                    os_release(v21);
                    v22 = 1;
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    goto LABEL_197;
                  }

LABEL_150:
                  os_release(v50);
                  goto LABEL_151;
                }
              }

LABEL_110:
              os_release(v57);
              goto LABEL_111;
            }

            v563 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_process_outbound_message";
            v564 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v563, 16, "%{public}s called with null http1_stream->outbound_message", buf, 12);
            LOBYTE(v662) = 16;
            LOBYTE(v656) = 0;
            if (__nwlog_fault(v564, &v662, &v656))
            {
              if (v662 == 17)
              {
                v565 = __nwlog_obj();
                v566 = v662;
                if (!os_log_type_enabled(v565, v662))
                {
                  goto LABEL_1061;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_process_outbound_message";
                v567 = "%{public}s called with null http1_stream->outbound_message";
LABEL_1059:
                v617 = v565;
                v618 = v566;
LABEL_1060:
                _os_log_impl(&dword_181A37000, v617, v618, v567, buf, 0xCu);
                goto LABEL_1061;
              }

              if (v656 != 1)
              {
                v565 = __nwlog_obj();
                v566 = v662;
                if (!os_log_type_enabled(v565, v662))
                {
                  goto LABEL_1061;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_process_outbound_message";
                v567 = "%{public}s called with null http1_stream->outbound_message, backtrace limit exceeded";
                goto LABEL_1059;
              }

              v591 = __nw_create_backtrace_string();
              v592 = __nwlog_obj();
              v593 = v662;
              v594 = os_log_type_enabled(v592, v662);
              if (v591)
              {
                if (v594)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_process_outbound_message";
                  *&buf[12] = 2082;
                  *&buf[14] = v591;
                  _os_log_impl(&dword_181A37000, v592, v593, "%{public}s called with null http1_stream->outbound_message, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v591);
                goto LABEL_1061;
              }

              if (v594)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_process_outbound_message";
                v567 = "%{public}s called with null http1_stream->outbound_message, no backtrace";
                v617 = v592;
                v618 = v593;
                goto LABEL_1060;
              }
            }

LABEL_1061:
            if (v564)
            {
              free(v564);
            }

            goto LABEL_170;
          }

          v68 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s did not find response on frame", buf, 12);
          LOBYTE(v662) = 16;
          LOBYTE(v656) = 0;
          if (__nwlog_fault(v64, &v662, &v656))
          {
            if (v662 == 17)
            {
              v65 = __nwlog_obj();
              v66 = v662;
              if (!os_log_type_enabled(v65, v662))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v67 = "%{public}s did not find response on frame";
              goto LABEL_190;
            }

            if (v656 != 1)
            {
              v65 = __nwlog_obj();
              v66 = v662;
              if (!os_log_type_enabled(v65, v662))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v67 = "%{public}s did not find response on frame, backtrace limit exceeded";
              goto LABEL_190;
            }

            v83 = __nw_create_backtrace_string();
            v80 = __nwlog_obj();
            v81 = v662;
            v84 = os_log_type_enabled(v80, v662);
            if (v83)
            {
              if (v84)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_save_outbound_message";
                *&buf[12] = 2082;
                *&buf[14] = v83;
                _os_log_impl(&dword_181A37000, v80, v81, "%{public}s did not find response on frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v83);
            }

            else if (v84)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v67 = "%{public}s did not find response on frame, no backtrace";
              goto LABEL_327;
            }
          }
        }

        else
        {
          v28 = nw_http_metadata_copy_request(v21);
          if (v28)
          {
            v29 = v28;
            v30 = nw_http_request_copy(v28);
            metadata_for_response = nw_http_create_metadata_for_request(v30);
            goto LABEL_77;
          }

          v63 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s did not find request on frame", buf, 12);
          LOBYTE(v662) = 16;
          LOBYTE(v656) = 0;
          if (__nwlog_fault(v64, &v662, &v656))
          {
            if (v662 == 17)
            {
              v65 = __nwlog_obj();
              v66 = v662;
              if (!os_log_type_enabled(v65, v662))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v67 = "%{public}s did not find request on frame";
LABEL_190:
              v85 = v65;
              v86 = v66;
LABEL_191:
              _os_log_impl(&dword_181A37000, v85, v86, v67, buf, 0xCu);
              goto LABEL_192;
            }

            if (v656 != 1)
            {
              v65 = __nwlog_obj();
              v66 = v662;
              if (!os_log_type_enabled(v65, v662))
              {
                goto LABEL_192;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v67 = "%{public}s did not find request on frame, backtrace limit exceeded";
              goto LABEL_190;
            }

            v79 = __nw_create_backtrace_string();
            v80 = __nwlog_obj();
            v81 = v662;
            v82 = os_log_type_enabled(v80, v662);
            if (v79)
            {
              if (v82)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_save_outbound_message";
                *&buf[12] = 2082;
                *&buf[14] = v79;
                _os_log_impl(&dword_181A37000, v80, v81, "%{public}s did not find request on frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v79);
              if (!v64)
              {
                goto LABEL_194;
              }

              goto LABEL_193;
            }

            if (v82)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_save_outbound_message";
              v67 = "%{public}s did not find request on frame, no backtrace";
LABEL_327:
              v85 = v80;
              v86 = v81;
              goto LABEL_191;
            }
          }
        }

LABEL_192:
        if (!v64)
        {
LABEL_194:
          v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_195:
          os_release(v21);
LABEL_196:
          v22 = 0;
          goto LABEL_197;
        }

LABEL_193:
        free(v64);
        goto LABEL_194;
      }

      v537 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      v538 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v537, 16, "%{public}s metadata must be http", buf, 12);
      LOBYTE(v662) = 16;
      LOBYTE(v656) = 0;
      if (__nwlog_fault(v538, &v662, &v656))
      {
        if (v662 == 17)
        {
          v539 = __nwlog_obj();
          v540 = v662;
          if (!os_log_type_enabled(v539, v662))
          {
            goto LABEL_1027;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v541 = "%{public}s metadata must be http";
LABEL_1025:
          v602 = v539;
          v603 = v540;
LABEL_1026:
          _os_log_impl(&dword_181A37000, v602, v603, v541, buf, 0xCu);
          goto LABEL_1027;
        }

        if (v656 != 1)
        {
          v539 = __nwlog_obj();
          v540 = v662;
          if (!os_log_type_enabled(v539, v662))
          {
            goto LABEL_1027;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v541 = "%{public}s metadata must be http, backtrace limit exceeded";
          goto LABEL_1025;
        }

        v574 = __nw_create_backtrace_string();
        v575 = __nwlog_obj();
        v576 = v662;
        v577 = os_log_type_enabled(v575, v662);
        if (v574)
        {
          if (v577)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_save_outbound_message";
            *&buf[12] = 2082;
            *&buf[14] = v574;
            _os_log_impl(&dword_181A37000, v575, v576, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v574);
          goto LABEL_1027;
        }

        if (v577)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          v541 = "%{public}s metadata must be http, no backtrace";
          v602 = v575;
          v603 = v576;
          goto LABEL_1026;
        }
      }

LABEL_1027:
      if (v538)
      {
        free(v538);
      }

      goto LABEL_194;
    }

    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_save_outbound_message";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s did not find outbound message on frame, dropping", buf, 12);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (__nwlog_fault(v41, &v662, &v656))
    {
      if (v662 == 17)
      {
        v42 = __nwlog_obj();
        v43 = v662;
        if (!os_log_type_enabled(v42, v662))
        {
          goto LABEL_140;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v44 = "%{public}s did not find outbound message on frame, dropping";
LABEL_138:
        v72 = v42;
        v73 = v43;
LABEL_139:
        _os_log_impl(&dword_181A37000, v72, v73, v44, buf, 0xCu);
        goto LABEL_140;
      }

      if (v656 != 1)
      {
        v42 = __nwlog_obj();
        v43 = v662;
        if (!os_log_type_enabled(v42, v662))
        {
          goto LABEL_140;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v44 = "%{public}s did not find outbound message on frame, dropping, backtrace limit exceeded";
        goto LABEL_138;
      }

      v59 = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v61 = v662;
      v62 = os_log_type_enabled(v60, v662);
      if (v59)
      {
        if (v62)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          *&buf[12] = 2082;
          *&buf[14] = v59;
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s did not find outbound message on frame, dropping, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v59);
        goto LABEL_140;
      }

      if (v62)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_save_outbound_message";
        v44 = "%{public}s did not find outbound message on frame, dropping, no backtrace";
        v72 = v60;
        v73 = v61;
        goto LABEL_139;
      }
    }

LABEL_140:
    if (v41)
    {
      free(v41);
    }

    goto LABEL_196;
  }

  v662 = 0;
  v663 = 0;
  nw_protocol_metadata_copy_identifier(v20, &v662);
  v656 = 0;
  v657 = 0;
  nw_protocol_metadata_copy_identifier(*(v13 + 384), &v656);
  if (v656 != v662 || v657 != v663)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447234;
    *&buf[4] = "nw_http1_stream_save_outbound_message";
    *&buf[12] = 1040;
    *&buf[14] = 16;
    *&buf[18] = 2096;
    *&buf[20] = &v656;
    *&buf[28] = 1040;
    *&buf[30] = 16;
    *v653 = 2096;
    *&v653[2] = &v662;
    v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P)", buf, 44);
    LOBYTE(__buf) = 16;
    LOBYTE(v650) = 0;
    if (!__nwlog_fault(v32, &__buf, &v650))
    {
      goto LABEL_103;
    }

    if (__buf == 17)
    {
      v33 = __nwlog_obj();
      v34 = __buf;
      if (!os_log_type_enabled(v33, __buf))
      {
        goto LABEL_103;
      }

      *buf = 136447234;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v656;
      *&buf[28] = 1040;
      *&buf[30] = 16;
      *v653 = 2096;
      *&v653[2] = &v662;
      v35 = "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P)";
    }

    else
    {
      if (v650 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = __buf;
        v39 = os_log_type_enabled(v37, __buf);
        if (v36)
        {
          if (v39)
          {
            *buf = 136447490;
            *&buf[4] = "nw_http1_stream_save_outbound_message";
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = &v656;
            *&buf[28] = 1040;
            *&buf[30] = 16;
            *v653 = 2096;
            *&v653[2] = &v662;
            *v654 = 2082;
            *&v654[2] = v36;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P), dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v36);
        }

        else if (v39)
        {
          *buf = 136447234;
          *&buf[4] = "nw_http1_stream_save_outbound_message";
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = &v656;
          *&buf[28] = 1040;
          *&buf[30] = 16;
          *v653 = 2096;
          *&v653[2] = &v662;
          v35 = "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P), no backtrace";
          v54 = v37;
          v55 = v38;
          goto LABEL_102;
        }

LABEL_103:
        if (v32)
        {
          free(v32);
        }

        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if (!v21)
        {
          goto LABEL_196;
        }

        goto LABEL_195;
      }

      v33 = __nwlog_obj();
      v34 = __buf;
      if (!os_log_type_enabled(v33, __buf))
      {
        goto LABEL_103;
      }

      *buf = 136447234;
      *&buf[4] = "nw_http1_stream_save_outbound_message";
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v656;
      *&buf[28] = 1040;
      *&buf[30] = 16;
      *v653 = 2096;
      *&v653[2] = &v662;
      v35 = "%{public}s existing metadata identifier does not match new metadata identifier (existing %{uuid_t}.16P != new %{uuid_t}.16P), backtrace limit exceeded";
    }

    v54 = v33;
    v55 = v34;
LABEL_102:
    _os_log_impl(&dword_181A37000, v54, v55, v35, buf, 0x2Cu);
    goto LABEL_103;
  }

  if (v21)
  {
    os_release(v21);
  }

  v22 = 1;
LABEL_197:
  if (v18)
  {
    os_release(v18);
  }

  if ((v22 & 1) == 0)
  {
LABEL_939:
    if ((*(v6 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v553 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v554 = *(v6 + 488);
        v555 = *(*(v6 + 480) + 372);
        v556 = *(v6 + 860);
        if (v554)
        {
          LODWORD(v554) = *(v554 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v653 = v555;
        *&v653[4] = 1024;
        *&v653[6] = v556;
        *v654 = 1024;
        *&v654[2] = v554;
        _os_log_impl(&dword_181A37000, v553, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> invalid message supplied to http1_connection, dropping", buf, 0x32u);
      }
    }

    if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, *(a1 + 11)))
    {
      v557 = *(a1 + 14);
      if (v557)
      {
        free(v557);
      }
    }

    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(a1);
    v558 = *(v6 + 488);
    if (v558)
    {
      v559 = *(v558 + 48);
    }

    else
    {
      v559 = 0;
    }

    nw_protocol_error(v559, v558);
    v560 = *(v6 + 488);
    if (v560)
    {
      nw_protocol_disconnected(*(v560 + 48), v560);
    }

    else
    {
      nw_protocol_disconnected(0, 0);
    }

    return;
  }

  *(*(v6 + 488) + 428) |= 0x4000u;
  v87 = *(a1 + 13);
  if (v87 && v87 != *(a1 + 14) + *(a1 + 15) || (v88 = *(a1 + 8)) == 0 || (*(v88 + 66) & 0x40) == 0)
  {
    v643 = 0;
    v89 = *(v6 + 488);
    if (v89)
    {
      goto LABEL_205;
    }

LABEL_294:
    v143 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    LODWORD(v629) = 12;
    v144 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v143, 16, "%{public}s called with null http1_stream", buf, v629);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v144, &v662, &v656))
    {
      goto LABEL_979;
    }

    if (v662 == 17)
    {
      v145 = __nwlog_obj();
      v146 = v662;
      if (os_log_type_enabled(v145, v662))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v147 = "%{public}s called with null http1_stream";
LABEL_977:
        v572 = v145;
        v573 = v146;
LABEL_978:
        _os_log_impl(&dword_181A37000, v572, v573, v147, buf, 0xCu);
      }

LABEL_979:
      if (v144)
      {
        free(v144);
      }

      v6 = v642;
      goto LABEL_417;
    }

    if (v656 != 1)
    {
      v145 = __nwlog_obj();
      v146 = v662;
      if (os_log_type_enabled(v145, v662))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v147 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_977;
      }

      goto LABEL_979;
    }

    v531 = __nw_create_backtrace_string();
    v532 = __nwlog_obj();
    v533 = v662;
    v534 = os_log_type_enabled(v532, v662);
    if (v531)
    {
      if (v534)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        *&buf[12] = 2082;
        *&buf[14] = v531;
        v535 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
LABEL_915:
        _os_log_impl(&dword_181A37000, v532, v533, v535, buf, 0x16u);
      }

LABEL_916:
      free(v531);
      goto LABEL_979;
    }

    if (!v534)
    {
      goto LABEL_979;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    v147 = "%{public}s called with null http1_stream, no backtrace";
LABEL_1050:
    v572 = v532;
    v573 = v533;
    goto LABEL_978;
  }

  if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v578 = __nwlog_obj();
    if (os_log_type_enabled(v578, OS_LOG_TYPE_DEBUG))
    {
      v579 = *(v642 + 488);
      v580 = *(*(v642 + 480) + 372);
      v581 = *(v642 + 860);
      if (v579)
      {
        LODWORD(v579) = *(v579 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_output_frame_finalizer";
      *&buf[12] = 2082;
      *&buf[14] = v642 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v580;
      *&v653[4] = 1024;
      *&v653[6] = v581;
      *v654 = 1024;
      *&v654[2] = v579;
      _os_log_impl(&dword_181A37000, v578, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> outbound message is headers only, setting complete for headers", buf, 0x32u);
    }

    v643 = 1;
    v6 = v642;
    v89 = *(v642 + 488);
    if (!v89)
    {
      goto LABEL_294;
    }
  }

  else
  {
    v643 = 1;
    v89 = *(v6 + 488);
    if (!v89)
    {
      goto LABEL_294;
    }
  }

LABEL_205:
  if (!*(v89 + 248))
  {
    v518 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    LODWORD(v629) = 12;
    v144 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v518, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v629);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v144, &v662, &v656))
    {
      goto LABEL_979;
    }

    if (v662 == 17)
    {
      v145 = __nwlog_obj();
      v146 = v662;
      if (os_log_type_enabled(v145, v662))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v147 = "%{public}s called with null http1_stream->protocol_http1";
        goto LABEL_977;
      }

      goto LABEL_979;
    }

    if (v656 != 1)
    {
      v145 = __nwlog_obj();
      v146 = v662;
      if (os_log_type_enabled(v145, v662))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v147 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
        goto LABEL_977;
      }

      goto LABEL_979;
    }

    v531 = __nw_create_backtrace_string();
    v532 = __nwlog_obj();
    v533 = v662;
    v536 = os_log_type_enabled(v532, v662);
    if (v531)
    {
      if (v536)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        *&buf[12] = 2082;
        *&buf[14] = v531;
        v535 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
        goto LABEL_915;
      }

      goto LABEL_916;
    }

    if (!v536)
    {
      goto LABEL_979;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    v147 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
    goto LABEL_1050;
  }

  if (!*(v89 + 256))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_send_outbound_headers";
    LODWORD(v629) = 12;
    v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Stream asked to send outbound headers without current connection", buf, v629);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v91, &v662, &v656))
    {
      goto LABEL_415;
    }

    if (v662 == 17)
    {
      v136 = __nwlog_obj();
      v137 = v662;
      if (!os_log_type_enabled(v136, v662))
      {
        goto LABEL_415;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      v138 = "%{public}s Stream asked to send outbound headers without current connection";
    }

    else
    {
      if (v656 == 1)
      {
        v148 = __nw_create_backtrace_string();
        v149 = __nwlog_obj();
        v150 = v662;
        v151 = os_log_type_enabled(v149, v662);
        if (v148)
        {
          if (v151)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_send_outbound_headers";
            *&buf[12] = 2082;
            *&buf[14] = v148;
            _os_log_impl(&dword_181A37000, v149, v150, "%{public}s Stream asked to send outbound headers without current connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v148);
          if (v91)
          {
            goto LABEL_416;
          }

          goto LABEL_417;
        }

        if (!v151)
        {
          goto LABEL_415;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        v138 = "%{public}s Stream asked to send outbound headers without current connection, no backtrace";
        v152 = v149;
        v153 = v150;
LABEL_307:
        _os_log_impl(&dword_181A37000, v152, v153, v138, buf, 0xCu);
        goto LABEL_415;
      }

      v136 = __nwlog_obj();
      v137 = v662;
      if (!os_log_type_enabled(v136, v662))
      {
        goto LABEL_415;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      v138 = "%{public}s Stream asked to send outbound headers without current connection, backtrace limit exceeded";
    }

    v152 = v136;
    v153 = v137;
    goto LABEL_307;
  }

  if ((*(v89 + 428) & 4) != 0)
  {
    if ((*(v89 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
    {
      v139 = __nwlog_obj();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        v140 = *(v89 + 256);
        v141 = *(*(v89 + 248) + 372);
        if (v140)
        {
          LODWORD(v140) = *(v140 + 860);
        }

        v142 = *(v89 + 424);
        *buf = 136447490;
        *&buf[4] = "nw_http1_stream_send_outbound_headers";
        *&buf[12] = 2082;
        *&buf[14] = v89 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v653 = v141;
        *&v653[4] = 1024;
        *&v653[6] = v140;
        *v654 = 1024;
        *&v654[2] = v142;
        _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already sent, skipping", buf, 0x32u);
        v6 = v642;
      }
    }

    goto LABEL_417;
  }

  v90 = *(v89 + 384);
  if (!v90)
  {
    goto LABEL_417;
  }

  v648 = 0;
  v91 = nw_http_metadata_legacy_serialize(v90, &v648);
  if ((*(v89 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v582 = __nwlog_obj();
    if (os_log_type_enabled(v582, OS_LOG_TYPE_DEBUG))
    {
      v583 = *(v89 + 256);
      v584 = *(*(v89 + 248) + 372);
      if (v583)
      {
        LODWORD(v583) = *(v583 + 860);
      }

      v585 = *(v89 + 424);
      *buf = 136448002;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      *&buf[12] = 2082;
      *&buf[14] = v89 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v584;
      *&v653[4] = 1024;
      *&v653[6] = v583;
      *v654 = 1024;
      *&v654[2] = v585;
      *&v654[6] = 2048;
      *&v654[8] = v91;
      *&v654[16] = 2048;
      v655 = v648;
      _os_log_impl(&dword_181A37000, v582, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> got buffer %p of length %zu bytes", buf, 0x46u);
      v6 = v642;
    }
  }

  v92 = v648;
  if (!v91 || !v648)
  {
    goto LABEL_365;
  }

  v93 = *(v89 + 256);
  v632 = v91;
  if (!v93)
  {
    v604 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    LODWORD(v629) = 12;
    v605 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v604, 16, "%{public}s called with null http1_connection", buf, v629);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v605, &v662, &v656))
    {
      goto LABEL_1099;
    }

    if (v662 == 17)
    {
      v606 = __nwlog_obj();
      v607 = v662;
      if (!os_log_type_enabled(v606, v662))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v608 = "%{public}s called with null http1_connection";
LABEL_1097:
      v627 = v606;
      v628 = v607;
LABEL_1098:
      _os_log_impl(&dword_181A37000, v627, v628, v608, buf, 0xCu);
      goto LABEL_1099;
    }

    if (v656 != 1)
    {
      v606 = __nwlog_obj();
      v607 = v662;
      if (!os_log_type_enabled(v606, v662))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v608 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_1097;
    }

    v619 = __nw_create_backtrace_string();
    v620 = __nwlog_obj();
    v621 = v662;
    v622 = os_log_type_enabled(v620, v662);
    if (v619)
    {
      if (v622)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 2082;
        *&buf[14] = v619;
        _os_log_impl(&dword_181A37000, v620, v621, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v619);
      goto LABEL_1099;
    }

    if (!v622)
    {
      goto LABEL_1099;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    v608 = "%{public}s called with null http1_connection, no backtrace";
LABEL_1110:
    v627 = v620;
    v628 = v621;
    goto LABEL_1098;
  }

  if (!v648)
  {
    v609 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    LODWORD(v629) = 12;
    v605 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v609, 16, "%{public}s called with null length", buf, v629);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v605, &v662, &v656))
    {
      goto LABEL_1099;
    }

    if (v662 == 17)
    {
      v606 = __nwlog_obj();
      v607 = v662;
      if (!os_log_type_enabled(v606, v662))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v608 = "%{public}s called with null length";
      goto LABEL_1097;
    }

    if (v656 != 1)
    {
      v606 = __nwlog_obj();
      v607 = v662;
      if (!os_log_type_enabled(v606, v662))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v608 = "%{public}s called with null length, backtrace limit exceeded";
      goto LABEL_1097;
    }

    v623 = __nw_create_backtrace_string();
    v620 = __nwlog_obj();
    v621 = v662;
    v624 = os_log_type_enabled(v620, v662);
    if (v623)
    {
      if (!v624)
      {
        goto LABEL_1078;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v623;
      v625 = "%{public}s called with null length, dumping backtrace:%{public}s";
      goto LABEL_1077;
    }

    if (!v624)
    {
      goto LABEL_1099;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    v608 = "%{public}s called with null length, no backtrace";
    goto LABEL_1110;
  }

  v647 = *(v93 + 32);
  if (!v647)
  {
    v610 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_send_bytes";
    LODWORD(v629) = 12;
    v605 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v610, 16, "%{public}s called with null output_handler", buf, v629);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (!__nwlog_fault(v605, &v662, &v656))
    {
      goto LABEL_1099;
    }

    if (v662 == 17)
    {
      v606 = __nwlog_obj();
      v607 = v662;
      if (!os_log_type_enabled(v606, v662))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v608 = "%{public}s called with null output_handler";
      goto LABEL_1097;
    }

    if (v656 != 1)
    {
      v606 = __nwlog_obj();
      v607 = v662;
      if (!os_log_type_enabled(v606, v662))
      {
        goto LABEL_1099;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v608 = "%{public}s called with null output_handler, backtrace limit exceeded";
      goto LABEL_1097;
    }

    v623 = __nw_create_backtrace_string();
    v620 = __nwlog_obj();
    v621 = v662;
    v626 = os_log_type_enabled(v620, v662);
    if (v623)
    {
      if (!v626)
      {
        goto LABEL_1078;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v623;
      v625 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
LABEL_1077:
      _os_log_impl(&dword_181A37000, v620, v621, v625, buf, 0x16u);
LABEL_1078:
      free(v623);
      if (!v605)
      {
        goto LABEL_1101;
      }

      goto LABEL_1100;
    }

    if (v626)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_send_bytes";
      v608 = "%{public}s called with null output_handler, no backtrace";
      goto LABEL_1110;
    }

LABEL_1099:
    if (!v605)
    {
LABEL_1101:
      LODWORD(v92) = 0;
      v6 = v642;
      goto LABEL_364;
    }

LABEL_1100:
    free(v605);
    goto LABEL_1101;
  }

  v630 = v89;
  v640 = v648;
  v646 = *(v89 + 256);
  if ((*(v93 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v611 = __nwlog_obj();
    if (os_log_type_enabled(v611, OS_LOG_TYPE_DEBUG))
    {
      v612 = *(v93 + 488);
      v613 = *(*(v93 + 480) + 372);
      v614 = *(v93 + 860);
      if (v612)
      {
        LODWORD(v612) = *(v612 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v93 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v613;
      *&v653[4] = 1024;
      *&v653[6] = v614;
      *v654 = 1024;
      *&v654[2] = v612;
      *&v654[6] = 1024;
      v92 = v640;
      *&v654[8] = v640;
      _os_log_impl(&dword_181A37000, v611, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending %u bytes", buf, 0x38u);
    }
  }

  v638 = v93 + 74;
  v94 = v91;
  v95 = v92;
  while (1)
  {
    __buf = 0;
    p_buf = &__buf;
    v650 = 0;
    v651 = &v650;
    output_frames = nw_protocol_get_output_frames(v647, v93, 1, v92, 0xFFFFFFFFLL, &__buf);
    v100 = __buf;
    if (!__buf || output_frames == 0)
    {
      break;
    }

    while (1)
    {
      v102 = *(v100 + 32);
      if (v102 || *(v100 + 40))
      {
        v103 = *(v100 + 112);
        if (!v103)
        {
          goto LABEL_236;
        }
      }

      else
      {
        v102 = 0;
        v103 = *(v100 + 112);
        if (!v103)
        {
          goto LABEL_236;
        }
      }

      if ((*(v100 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v100, *(v100 + 88)))
      {
        LODWORD(v103) = 0;
LABEL_236:
        v105 = 0;
        goto LABEL_237;
      }

      LODWORD(v103) = *(v100 + 52);
      v104 = *(v100 + 56);
      if (v103)
      {
        LODWORD(v103) = v103 - (v104 + *(v100 + 60));
      }

      v105 = (*(v100 + 112) + v104);
LABEL_237:
      v106 = v103 >= v95 ? v95 : v103;
      memcpy(v105, v94, v106);
      v95 -= v106;
      v94 += v106;
      if (!nw_frame_claim(v100, v107, v106, 0))
      {
        break;
      }

      nw_frame_collapse(v100);
      nw_frame_unclaim(v100, v108, v106, 0);
      v109 = *(v100 + 32);
      v110 = *(v100 + 40);
      p_p_buf = (v109 + 40);
      if (!v109)
      {
        p_p_buf = &p_buf;
      }

      *p_p_buf = v110;
      *v110 = v109;
      v112 = v651;
      *(v100 + 32) = 0;
      *(v100 + 40) = v112;
      *v112 = v100;
      v651 = (v100 + 32);
      if (v102)
      {
        v100 = v102;
        if (v95)
        {
          continue;
        }
      }

      goto LABEL_263;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_send_bytes";
    *&buf[12] = 1024;
    *&buf[14] = v106;
    LODWORD(v629) = 18;
    v113 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s claiming frame with %u bytes failed", buf, v629);
    LOBYTE(v656) = 16;
    v649 = 0;
    if (!__nwlog_fault(v113, &v656, &v649))
    {
      goto LABEL_261;
    }

    if (v656 == 17)
    {
      v114 = __nwlog_obj();
      v115 = v656;
      if (os_log_type_enabled(v114, v656))
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v106;
        v116 = v114;
        v117 = v115;
        v118 = "%{public}s claiming frame with %u bytes failed";
        goto LABEL_260;
      }

      goto LABEL_261;
    }

    if (v649 != 1)
    {
      v122 = __nwlog_obj();
      v123 = v656;
      if (!os_log_type_enabled(v122, v656))
      {
        goto LABEL_261;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 1024;
      *&buf[14] = v106;
      v116 = v122;
      v117 = v123;
      v118 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
      goto LABEL_260;
    }

    v119 = __nw_create_backtrace_string();
    v120 = __nwlog_obj();
    type = v656;
    v121 = os_log_type_enabled(v120, v656);
    if (v119)
    {
      if (v121)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v106;
        *&buf[18] = 2082;
        *&buf[20] = v119;
        _os_log_impl(&dword_181A37000, v120, type, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v119);
      goto LABEL_261;
    }

    if (v121)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 1024;
      *&buf[14] = v106;
      v116 = v120;
      v117 = type;
      v118 = "%{public}s claiming frame with %u bytes failed, no backtrace";
LABEL_260:
      _os_log_impl(&dword_181A37000, v116, v117, v118, buf, 0x12u);
    }

LABEL_261:
    if (v113)
    {
      free(v113);
    }

LABEL_263:
    v124 = v651[1];
    v125 = *v124;
    if (*v124)
    {
      nw_frame_set_metadata(*v124, 0, 0, v643);
      if (v643)
      {
        if ((*(v646 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v132 = __nwlog_obj();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            v133 = *(v646 + 488);
            if (v133)
            {
              LODWORD(v133) = *(v133 + 424);
            }

            v134 = *(*(v646 + 480) + 372);
            v135 = *(v646 + 860);
            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_send_bytes";
            *&buf[12] = 2082;
            *&buf[14] = v638;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *v653 = v134;
            *&v653[4] = 1024;
            *&v653[6] = v135;
            *v654 = 1024;
            *&v654[2] = v133;
            *&v654[6] = 2048;
            *&v654[8] = v125;
            _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> setting complete on last output frame %p", buf, 0x3Cu);
          }
        }
      }
    }

    nw_protocol_finalize_output_frames(v647, &v650);
    v92 = v640;
    v93 = v646;
    if (__buf)
    {
      v656 = 0;
      v657 = &v656;
      v658 = 0x2000000000;
      v659 = 0;
      v662 = MEMORY[0x1E69E9820];
      v663 = 0x40000000;
      v664 = ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke;
      v665 = &unk_1E6A32B10;
      v666 = &v656;
      do
      {
        v126 = __buf;
        if (!__buf)
        {
          break;
        }

        v127 = *(__buf + 32);
        v128 = *(__buf + 40);
        v129 = (v127 + 40);
        if (!v127)
        {
          v129 = &p_buf;
        }

        *v129 = v128;
        *v128 = v127;
        *(v126 + 32) = 0;
        *(v126 + 40) = 0;
      }

      while ((v664(&v662) & 1) != 0);
      if ((*(v646 + 158) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v130 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v131 = *(v646 + 488);
          if (v131)
          {
            LODWORD(v131) = *(v131 + 424);
          }

          v96 = *(*(v646 + 480) + 372);
          v97 = *(v646 + 860);
          v98 = *(v657 + 6);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_send_bytes";
          *&buf[12] = 2082;
          *&buf[14] = v638;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *v653 = v96;
          *&v653[4] = 1024;
          *&v653[6] = v97;
          *v654 = 1024;
          *&v654[2] = v131;
          *&v654[6] = 1024;
          *&v654[8] = v98;
          _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to use %u frames, marking as failed", buf, 0x38u);
        }
      }

      _Block_object_dispose(&v656, 8);
    }

    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    if (!v95)
    {
      v6 = v642;
      goto LABEL_364;
    }
  }

  v6 = v642;
  if (output_frames)
  {
    v154 = output_frames;
    v155 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_send_bytes";
    *&buf[12] = 1024;
    v156 = v154;
    *&buf[14] = v154;
    LODWORD(v629) = 18;
    v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v155, 16, "%{public}s output handler reported %u frames to write, but array is empty", buf, v629);
    LOBYTE(v656) = 16;
    v649 = 0;
    if (!__nwlog_fault(v157, &v656, &v649))
    {
      goto LABEL_355;
    }

    if (v656 != 17)
    {
      if (v649 == 1)
      {
        v161 = __nw_create_backtrace_string();
        v162 = __nwlog_obj();
        v163 = v656;
        v164 = os_log_type_enabled(v162, v656);
        if (v161)
        {
          if (v164)
          {
            *buf = 136446722;
            *&buf[4] = "nw_http1_connection_send_bytes";
            *&buf[12] = 1024;
            *&buf[14] = v154;
            *&buf[18] = 2082;
            *&buf[20] = v161;
            _os_log_impl(&dword_181A37000, v162, v163, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v161);
          v6 = v642;
          goto LABEL_355;
        }

        v6 = v642;
        if (!v164)
        {
          goto LABEL_355;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v154;
        v160 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
        v180 = v162;
        v181 = v163;
      }

      else
      {
        v158 = __nwlog_obj();
        v159 = v656;
        if (!os_log_type_enabled(v158, v656))
        {
          goto LABEL_355;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_send_bytes";
        *&buf[12] = 1024;
        *&buf[14] = v156;
        v160 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
LABEL_353:
        v180 = v158;
        v181 = v159;
      }

      _os_log_impl(&dword_181A37000, v180, v181, v160, buf, 0x12u);
      goto LABEL_355;
    }

    v158 = __nwlog_obj();
    v159 = v656;
    if (os_log_type_enabled(v158, v656))
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 1024;
      *&buf[14] = v156;
      v160 = "%{public}s output handler reported %u frames to write, but array is empty";
      goto LABEL_353;
    }

LABEL_355:
    if (v157)
    {
      free(v157);
    }

    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    LODWORD(v92) = v640;
  }

  v89 = v630;
  if ((*(v646 + 158) & 1) == 0)
  {
    v182 = __nwlog_obj();
    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
    {
      v183 = *(v646 + 488);
      v184 = *(*(v646 + 480) + 372);
      v185 = *(v646 + 860);
      if (v183)
      {
        LODWORD(v183) = *(v183 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_send_bytes";
      *&buf[12] = 2082;
      *&buf[14] = v638;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v184;
      *&v653[4] = 1024;
      *&v653[6] = v185;
      *v654 = 1024;
      *&v654[2] = v183;
      *&v654[6] = 1024;
      *&v654[8] = v92;
      _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
    }
  }

  LODWORD(v92) = v92 - v95;
LABEL_364:
  v92 = v92;
  v91 = v632;
  if (v648 == v92)
  {
LABEL_365:
    nw_http_transaction_metadata_increment_outbound_header_size(*(v89 + 352), v92);
    v186 = *(v89 + 428);
    if ((v186 & 0x1000) != 0)
    {
      *buf = 0;
      nw::retained_ptr<nw_endpoint *>::operator=(v89 + 384, buf);
    }

    else
    {
      *(v89 + 428) = v186 | 4;
      if (v643)
      {
        *(v89 + 428) = v186 | 0x804;
        *(*(v89 + 256) + 872) |= 0x20u;
        nw_http_transaction_metadata_mark_outbound_message_end(*(v89 + 352));
        if (*(v89 + 168) == 1 && *(v89 + 160) != *(v89 + 176))
        {
          if ((*(v89 + 158) & 1) == 0)
          {
            v187 = __nwlog_obj();
            if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
            {
              v188 = *(v89 + 256);
              if (v188)
              {
                LODWORD(v188) = *(v188 + 860);
              }

              v189 = *(*(v89 + 248) + 372);
              v190 = *(v89 + 424);
              if (*(v89 + 168) == 1)
              {
                v191 = *(v89 + 160);
              }

              else
              {
                v191 = -1;
              }

              v213 = *(v89 + 176);
              *buf = 136448002;
              *&buf[4] = "nw_http1_stream_send_outbound_headers";
              *&buf[12] = 2082;
              *&buf[14] = v89 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *v653 = v189;
              *&v653[4] = 1024;
              *&v653[6] = v188;
              *v654 = 1024;
              *&v654[2] = v190;
              *&v654[6] = 2048;
              *&v654[8] = v191;
              *&v654[16] = 2048;
              v655 = v213;
              _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
            }
          }

          nw_protocol_error(*(v89 + 48), v89);
          nw_protocol_disconnected(*(v89 + 48), v89);
        }
      }
    }
  }

  else if ((*(v89 + 158) & 1) == 0)
  {
    v192 = __nwlog_obj();
    if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
    {
      v193 = *(v89 + 256);
      v194 = *(*(v89 + 248) + 372);
      if (v193)
      {
        LODWORD(v193) = *(v193 + 860);
      }

      v195 = *(v89 + 424);
      *buf = 136447746;
      *&buf[4] = "nw_http1_stream_send_outbound_headers";
      *&buf[12] = 2082;
      *&buf[14] = v89 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v194;
      *&v653[4] = 1024;
      *&v653[6] = v193;
      *v654 = 1024;
      *&v654[2] = v195;
      *&v654[6] = 2048;
      *&v654[8] = v648;
      _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to send outbound headers of length %zu", buf, 0x3Cu);
    }
  }

LABEL_415:
  if (v91)
  {
LABEL_416:
    free(v91);
  }

LABEL_417:
  if (!nw_frame_unclaimed_length(a1))
  {
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    nw_frame_cache_return_frame(v6 + 696, a1);
    goto LABEL_751;
  }

  v12 = v631;
  if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v527 = __nwlog_obj();
    v12 = v631;
    if (os_log_type_enabled(v527, OS_LOG_TYPE_DEBUG))
    {
      v528 = *(v6 + 488);
      v529 = *(*(v6 + 480) + 372);
      v530 = *(v6 + 860);
      if (v528)
      {
        LODWORD(v528) = *(v528 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_enqueue_outbound_frame";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v529;
      *&v653[4] = 1024;
      *&v653[6] = v530;
      *v654 = 1024;
      *&v654[2] = v528;
      *&v654[6] = 2048;
      *&v654[8] = a1;
      _os_log_impl(&dword_181A37000, v527, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> enqueuing outbound frame %p", buf, 0x3Cu);
      v6 = v642;
      v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v12 = v631;
    }
  }

LABEL_420:
  *(a1 + 4) = 0;
  v214 = *(v6 + 656);
  *(a1 + 5) = v214;
  *v214 = a1;
  *(v6 + 656) = a1 + 32;
  if ((*(*(v6 + 488) + 428) & 4) == 0)
  {
    goto LABEL_771;
  }

  if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
  {
    v509 = __nwlog_obj();
    if (os_log_type_enabled(v509, OS_LOG_TYPE_DEBUG))
    {
      v510 = *(v6 + 488);
      v511 = *(*(v6 + 480) + 372);
      v512 = *(v6 + 860);
      if (v510)
      {
        LODWORD(v510) = *(v510 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *v653 = v511;
      *&v653[4] = 1024;
      *&v653[6] = v512;
      *v654 = 1024;
      *&v654[2] = v510;
      _os_log_impl(&dword_181A37000, v509, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining pending outbound frames", buf, 0x32u);
      v6 = v642;
      v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    }
  }

  if (*(v6 + 480))
  {
    v631 = v12;
    if (!*(v6 + 488))
    {
      v513 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      LODWORD(v629) = 12;
      v514 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v513, 16, "%{public}s called with null http1_connection->current_stream", buf, v629);
      LOBYTE(v662) = 16;
      LOBYTE(v656) = 0;
      if (!__nwlog_fault(v514, &v662, &v656))
      {
        goto LABEL_1084;
      }

      if (v662 == 17)
      {
        v515 = __nwlog_obj();
        v516 = v662;
        if (os_log_type_enabled(v515, v662))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          v517 = "%{public}s called with null http1_connection->current_stream";
          goto LABEL_1082;
        }

        goto LABEL_1084;
      }

      if (v656 != 1)
      {
        v515 = __nwlog_obj();
        v516 = v662;
        if (os_log_type_enabled(v515, v662))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          v517 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
          goto LABEL_1082;
        }

        goto LABEL_1084;
      }

      v523 = __nw_create_backtrace_string();
      v524 = __nwlog_obj();
      v525 = v662;
      v526 = os_log_type_enabled(v524, v662);
      if (v523)
      {
        if (v526)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = v523;
          _os_log_impl(&dword_181A37000, v524, v525, "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v523);
        goto LABEL_1084;
      }

      if (!v526)
      {
        goto LABEL_1084;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v517 = "%{public}s called with null http1_connection->current_stream, no backtrace";
      goto LABEL_1022;
    }

    v215 = (v6 + 648);
    v216 = *(v6 + 648);
    if (!v216)
    {
      goto LABEL_769;
    }

    v639 = (v6 + 656);
    v641 = v6 + 74;
    *typea = v6 + 648;
    while (2)
    {
      while (2)
      {
        v217 = *(v216 + 32);
        v218 = *(v216 + 40);
        v219 = (v217 + 40);
        if (!v217)
        {
          v219 = v639;
        }

        *v219 = v218;
        *v218 = v217;
        *(v216 + 32) = 0;
        *(v216 + 40) = 0;
        if (!*(v216 + 112) || (*(v216 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v216, *(v216 + 88)))
        {
          v222 = 0;
          v223 = 0;
        }

        else
        {
          v221 = *(v216 + 52);
          v220 = *(v216 + 56);
          if (v221)
          {
            v222 = (v221 - (v220 + *(v216 + 60)));
          }

          else
          {
            v222 = 0;
          }

          v223 = (*(v216 + 112) + v220);
        }

        if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
        {
          v364 = __nwlog_obj();
          if (os_log_type_enabled(v364, OS_LOG_TYPE_DEBUG))
          {
            v365 = *(v6 + 488);
            if (v365)
            {
              LODWORD(v365) = *(v365 + 424);
            }

            v366 = *(*(v6 + 480) + 372);
            v367 = *(v6 + 860);
            *buf = 136448002;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2082;
            *&buf[14] = v641;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *v653 = v366;
            *&v653[4] = 1024;
            *&v653[6] = v367;
            *v654 = 1024;
            *&v654[2] = v365;
            *&v654[6] = 2048;
            *&v654[8] = v216;
            *&v654[16] = 1024;
            LODWORD(v655) = v222;
            _os_log_impl(&dword_181A37000, v364, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining frame %p with length %u", buf, 0x42u);
          }
        }

        if (!v223 || !v222)
        {
          goto LABEL_427;
        }

        if ((*(*(v6 + 488) + 428) & 0x200) == 0)
        {
          goto LABEL_444;
        }

        if ((*(v216 + 204) & 4) == 0)
        {
          v234 = v215;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2048;
          v235 = v216;
          *&buf[14] = v216;
          LODWORD(v629) = 22;
          v236 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s frame %p has no metadata", buf, v629);
          LOBYTE(v662) = 16;
          LOBYTE(v656) = 0;
          if (!__nwlog_fault(v236, &v662, &v656))
          {
            goto LABEL_597;
          }

          if (v662 == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v237 = gLogObj;
            v238 = v662;
            if (os_log_type_enabled(gLogObj, v662))
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_connection_drain_outbound_frames";
              *&buf[12] = 2048;
              *&buf[14] = v235;
              v239 = v237;
              v240 = v238;
              v241 = "%{public}s frame %p has no metadata";
              goto LABEL_596;
            }

LABEL_597:
            if (v236)
            {
              free(v236);
            }

            v216 = v235;
            v215 = v234;
            if (!v235)
            {
              goto LABEL_769;
            }

            continue;
          }

          if (v656 == 1)
          {
            v300 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v301 = gLogObj;
            v302 = v662;
            v303 = os_log_type_enabled(gLogObj, v662);
            if (v300)
            {
              if (v303)
              {
                *buf = 136446722;
                *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                *&buf[12] = 2048;
                *&buf[14] = v235;
                *&buf[22] = 2082;
                *&buf[24] = v300;
                _os_log_impl(&dword_181A37000, v301, v302, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v300);
              goto LABEL_597;
            }

            if (!v303)
            {
              goto LABEL_597;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2048;
            *&buf[14] = v235;
            v239 = v301;
            v240 = v302;
            v241 = "%{public}s frame %p has no metadata, no backtrace";
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v308 = gLogObj;
            v309 = v662;
            if (!os_log_type_enabled(gLogObj, v662))
            {
              goto LABEL_597;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2048;
            *&buf[14] = v235;
            v239 = v308;
            v240 = v309;
            v241 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
          }

LABEL_596:
          _os_log_impl(&dword_181A37000, v239, v240, v241, buf, 0x16u);
          goto LABEL_597;
        }

        break;
      }

      if (*(v216 + 216))
      {
        goto LABEL_444;
      }

      nw_frame_unclaim(v216, a2, 0xAu, 7u);
      v295 = *(v216 + 112);
      if (!v295)
      {
        goto LABEL_556;
      }

      if ((*(v216 + 204) & 0x100) != 0 && g_channel_check_validity)
      {
        if (g_channel_check_validity(v216, *(v216 + 88)))
        {
          v295 = *(v216 + 112);
          goto LABEL_540;
        }

LABEL_556:
        v296 = 0;
        v297 = *(v216 + 64);
        if (!v297)
        {
LABEL_557:
          v298 = v222;
          v299 = 0;
          goto LABEL_558;
        }
      }

      else
      {
LABEL_540:
        v296 = v295 + *(v216 + 56);
        v297 = *(v216 + 64);
        if (!v297)
        {
          goto LABEL_557;
        }
      }

      v298 = v222;
      v299 = (*(v297 + 66) >> 6) & 1;
LABEL_558:
      v312 = -1;
      v313 = v298;
      do
      {
        v314 = v312++;
        v315 = v313 > 0xF;
        v313 >>= 4;
      }

      while (v315);
      if (v296)
      {
        v316 = (v296 + v312);
        *(v316 + 1) = 2573;
        v317 = v298;
        do
        {
          if ((v317 & 0xF) >= 0xA)
          {
            v318 = (v317 & 0xF) + 55;
          }

          else
          {
            v318 = v317 & 0xF | 0x30;
          }

          *v316-- = v318;
          v315 = v317 > 0xF;
          v317 >>= 4;
        }

        while (v315);
        goto LABEL_566;
      }

      v637 = v216;
      v403 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_write_chunk_header";
      LODWORD(v629) = 12;
      v404 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v403, 16, "%{public}s called with null buffer", buf, v629);
      LOBYTE(v662) = 16;
      LOBYTE(v656) = 0;
      if (!__nwlog_fault(v404, &v662, &v656))
      {
        goto LABEL_741;
      }

      if (v662 == 17)
      {
        v405 = __nwlog_obj();
        v406 = v662;
        if (os_log_type_enabled(v405, v662))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_write_chunk_header";
          v407 = v405;
          v408 = v406;
          v409 = "%{public}s called with null buffer";
          goto LABEL_740;
        }

        goto LABEL_741;
      }

      if (v656 != 1)
      {
        v430 = __nwlog_obj();
        v431 = v662;
        if (!os_log_type_enabled(v430, v662))
        {
          goto LABEL_741;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_write_chunk_header";
        v407 = v430;
        v408 = v431;
        v409 = "%{public}s called with null buffer, backtrace limit exceeded";
LABEL_740:
        _os_log_impl(&dword_181A37000, v407, v408, v409, buf, 0xCu);
        goto LABEL_741;
      }

      v418 = __nw_create_backtrace_string();
      v419 = __nwlog_obj();
      v420 = v662;
      v421 = os_log_type_enabled(v419, v662);
      if (v418)
      {
        if (v421)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_write_chunk_header";
          *&buf[12] = 2082;
          *&buf[14] = v418;
          _os_log_impl(&dword_181A37000, v419, v420, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v418);
        goto LABEL_741;
      }

      if (v421)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_write_chunk_header";
        v407 = v419;
        v408 = v420;
        v409 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_740;
      }

LABEL_741:
      if (v404)
      {
        free(v404);
      }

      v216 = v637;
LABEL_566:
      v319 = v312 + 3;
      if (v314 == 6)
      {
        v320 = 0;
        v321 = v298;
      }

      else
      {
        v321 = v298;
        memmove((v296 + v319), (v296 + 10), v298);
        v320 = 7 - v312;
      }

      v6 = v642;
      if (v296)
      {
        v322 = v296 + v319 + v321;
        *v322 = 2573;
        if (v299)
        {
          *(v322 + 6) = 10;
          *(v322 + 2) = 218762544;
          goto LABEL_572;
        }

        goto LABEL_578;
      }

      v410 = v216;
      v411 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_write_chunk_trailer";
      LODWORD(v629) = 12;
      v412 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v411, 16, "%{public}s called with null buffer", buf, v629);
      LOBYTE(v662) = 16;
      LOBYTE(v656) = 0;
      if (__nwlog_fault(v412, &v662, &v656))
      {
        if (v662 != 17)
        {
          if (v656 == 1)
          {
            v422 = __nw_create_backtrace_string();
            v423 = __nwlog_obj();
            v424 = v662;
            v425 = os_log_type_enabled(v423, v662);
            if (v422)
            {
              if (v425)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_write_chunk_trailer";
                *&buf[12] = 2082;
                *&buf[14] = v422;
                _os_log_impl(&dword_181A37000, v423, v424, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v422);
              goto LABEL_747;
            }

            if (!v425)
            {
              goto LABEL_747;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            v415 = v423;
            v416 = v424;
            v417 = "%{public}s called with null buffer, no backtrace";
          }

          else
          {
            v432 = __nwlog_obj();
            v433 = v662;
            if (!os_log_type_enabled(v432, v662))
            {
              goto LABEL_747;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_write_chunk_trailer";
            v415 = v432;
            v416 = v433;
            v417 = "%{public}s called with null buffer, backtrace limit exceeded";
          }

LABEL_746:
          _os_log_impl(&dword_181A37000, v415, v416, v417, buf, 0xCu);
          goto LABEL_747;
        }

        v413 = __nwlog_obj();
        v414 = v662;
        if (os_log_type_enabled(v413, v662))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_write_chunk_trailer";
          v415 = v413;
          v416 = v414;
          v417 = "%{public}s called with null buffer";
          goto LABEL_746;
        }
      }

LABEL_747:
      if (v412)
      {
        free(v412);
      }

      v6 = v642;
      v216 = v410;
LABEL_572:
      v323 = v299 ^ 1;
      if (*(v6 + 872) >= 0)
      {
        v323 = 1;
      }

      if ((v323 & 1) == 0)
      {
        if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v426 = __nwlog_obj();
          if (os_log_type_enabled(v426, OS_LOG_TYPE_DEBUG))
          {
            v427 = *(v6 + 488);
            if (v427)
            {
              LODWORD(v427) = *(v427 + 424);
            }

            v6 = v642;
            v428 = *(*(v642 + 480) + 372);
            v429 = *(v642 + 860);
            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2082;
            *&buf[14] = v641;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *v653 = v428;
            *&v653[4] = 1024;
            *&v653[6] = v429;
            *v654 = 1024;
            *&v654[2] = v427;
            *&v654[6] = 2048;
            *&v654[8] = v216;
            _os_log_impl(&dword_181A37000, v426, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> pending final chunk written to frame %p", buf, 0x3Cu);
          }
        }

        *(v6 + 872) &= ~0x8000u;
      }

LABEL_578:
      if (v299)
      {
        v324 = 0;
      }

      else
      {
        v324 = 5;
      }

      v325 = v320 + v324;
      if (!__CFADD__(v320, v324))
      {
        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        v332 = *typea;
        v222 = v298;
        if (!v325)
        {
LABEL_630:
          if (*(v216 + 112))
          {
            v215 = v332;
            if ((*(v216 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v216, *(v216 + 88)))
            {
              v222 = 0;
              v223 = 0;
              if ((*(v216 + 204) & 4) == 0)
              {
                goto LABEL_640;
              }
            }

            else
            {
              v349 = *(v216 + 52);
              v348 = *(v216 + 56);
              if (v349)
              {
                v222 = (v349 - (v348 + *(v216 + 60)));
              }

              else
              {
                v222 = 0;
              }

              v223 = (*(v216 + 112) + v348);
              if ((*(v216 + 204) & 4) == 0)
              {
LABEL_640:
                v645 = v222;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                *buf = 136446466;
                *&buf[4] = "nw_http1_frame_metadata_reset";
                *&buf[12] = 2048;
                v351 = v216;
                *&buf[14] = v216;
                LODWORD(v629) = 22;
                v352 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s frame %p has no metadata", buf, v629);
                LOBYTE(v662) = 16;
                LOBYTE(v656) = 0;
                if (!__nwlog_fault(v352, &v662, &v656))
                {
                  goto LABEL_654;
                }

                if (v662 != 17)
                {
                  if (v656 == 1)
                  {
                    v358 = __nw_create_backtrace_string();
                    v359 = __nwlog_obj();
                    v360 = v662;
                    v361 = os_log_type_enabled(v359, v662);
                    if (v358)
                    {
                      if (v361)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_frame_metadata_reset";
                        *&buf[12] = 2048;
                        *&buf[14] = v351;
                        *&buf[22] = 2082;
                        *&buf[24] = v358;
                        _os_log_impl(&dword_181A37000, v359, v360, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
                      }

                      free(v358);
                      goto LABEL_654;
                    }

                    if (!v361)
                    {
                      goto LABEL_654;
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_http1_frame_metadata_reset";
                    *&buf[12] = 2048;
                    *&buf[14] = v351;
                    v355 = v359;
                    v356 = v360;
                    v357 = "%{public}s frame %p has no metadata, no backtrace";
                  }

                  else
                  {
                    v362 = __nwlog_obj();
                    v363 = v662;
                    if (!os_log_type_enabled(v362, v662))
                    {
                      goto LABEL_654;
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_http1_frame_metadata_reset";
                    *&buf[12] = 2048;
                    *&buf[14] = v351;
                    v355 = v362;
                    v356 = v363;
                    v357 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
                  }

LABEL_653:
                  _os_log_impl(&dword_181A37000, v355, v356, v357, buf, 0x16u);
                  goto LABEL_654;
                }

                v353 = __nwlog_obj();
                v354 = v662;
                if (os_log_type_enabled(v353, v662))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_frame_metadata_reset";
                  *&buf[12] = 2048;
                  *&buf[14] = v351;
                  v355 = v353;
                  v356 = v354;
                  v357 = "%{public}s frame %p has no metadata";
                  goto LABEL_653;
                }

LABEL_654:
                if (v352)
                {
                  free(v352);
                }

                v216 = v351;
                v222 = v645;
                v215 = v332;
LABEL_444:
                v224 = *(v216 + 64);
                if (!v224)
                {
                  goto LABEL_459;
                }

                if ((*(v224 + 66) & 0x40) != 0 && (*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
                {
                  v393 = __nwlog_obj();
                  if (os_log_type_enabled(v393, OS_LOG_TYPE_DEBUG))
                  {
                    v394 = *(v6 + 488);
                    if (v394)
                    {
                      LODWORD(v394) = *(v394 + 424);
                    }

                    v6 = v642;
                    v395 = *(*(v642 + 480) + 372);
                    v396 = *(v642 + 860);
                    *buf = 136447746;
                    *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v641;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *v653 = v395;
                    *&v653[4] = 1024;
                    *&v653[6] = v396;
                    *v654 = 1024;
                    *&v654[2] = v394;
                    *&v654[6] = 2048;
                    *&v654[8] = v216;
                    _os_log_impl(&dword_181A37000, v393, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining output frame %p, complete", buf, 0x3Cu);
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v215 = *typea;
                  }
                }

                v225 = *(v216 + 64);
                if (v225)
                {
                  v644 = (*(v225 + 66) >> 6) & 1;
                  v635 = v216;
                  if (!v223)
                  {
                    goto LABEL_450;
                  }

LABEL_460:
                  if (v222)
                  {
                    v242 = *(v6 + 32);
                    if (v242)
                    {
                      if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
                      {
                        v374 = __nwlog_obj();
                        if (os_log_type_enabled(v374, OS_LOG_TYPE_DEBUG))
                        {
                          v375 = *(v6 + 488);
                          if (v375)
                          {
                            LODWORD(v375) = *(v375 + 424);
                          }

                          v376 = *(*(v6 + 480) + 372);
                          v377 = *(v6 + 860);
                          *buf = 136447746;
                          *&buf[4] = "nw_http1_connection_send_bytes";
                          *&buf[12] = 2082;
                          *&buf[14] = v641;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *v653 = v376;
                          *&v653[4] = 1024;
                          *&v653[6] = v377;
                          *v654 = 1024;
                          *&v654[2] = v375;
                          *&v654[6] = 1024;
                          *&v654[8] = v222;
                          _os_log_impl(&dword_181A37000, v374, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending %u bytes", buf, 0x38u);
                        }
                      }

                      v243 = v222;
LABEL_468:
                      __buf = 0;
                      p_buf = &__buf;
                      v650 = 0;
                      v651 = &v650;
                      v247 = v222;
                      v248 = nw_protocol_get_output_frames(v242, v6, 1, v222, 0xFFFFFFFFLL, &__buf);
                      v249 = __buf;
                      if (__buf)
                      {
                        v250 = v248 == 0;
                      }

                      else
                      {
                        v250 = 1;
                      }

                      if (v250)
                      {
                        if (v248)
                        {
                          v286 = v248;
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_connection_send_bytes";
                          *&buf[12] = 1024;
                          v287 = v286;
                          *&buf[14] = v286;
                          LODWORD(v629) = 18;
                          v288 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s output handler reported %u frames to write, but array is empty", buf, v629);
                          LOBYTE(v656) = 16;
                          LOBYTE(v648) = 0;
                          if (!__nwlog_fault(v288, &v656, &v648))
                          {
                            goto LABEL_604;
                          }

                          if (v656 != 17)
                          {
                            if (v648 == 1)
                            {
                              v304 = __nw_create_backtrace_string();
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v305 = gLogObj;
                              v306 = v656;
                              v307 = os_log_type_enabled(gLogObj, v656);
                              if (v304)
                              {
                                if (v307)
                                {
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_connection_send_bytes";
                                  *&buf[12] = 1024;
                                  *&buf[14] = v286;
                                  *&buf[18] = 2082;
                                  *&buf[20] = v304;
                                  _os_log_impl(&dword_181A37000, v305, v306, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v304);
                                goto LABEL_604;
                              }

                              if (!v307)
                              {
                                goto LABEL_604;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v286;
                              v291 = v305;
                              v292 = v306;
                              v293 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                            }

                            else
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v310 = gLogObj;
                              v311 = v656;
                              if (!os_log_type_enabled(gLogObj, v656))
                              {
                                goto LABEL_604;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v287;
                              v291 = v310;
                              v292 = v311;
                              v293 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
                            }

LABEL_603:
                            _os_log_impl(&dword_181A37000, v291, v292, v293, buf, 0x12u);
                            goto LABEL_604;
                          }

                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v289 = gLogObj;
                          v290 = v656;
                          if (os_log_type_enabled(gLogObj, v656))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 1024;
                            *&buf[14] = v287;
                            v291 = v289;
                            v292 = v290;
                            v293 = "%{public}s output handler reported %u frames to write, but array is empty";
                            goto LABEL_603;
                          }

LABEL_604:
                          if (v288)
                          {
                            free(v288);
                          }
                        }

                        v215 = *typea;
                        LODWORD(v222) = v247;
                        if ((*(v6 + 158) & 1) == 0)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v337 = gLogObj;
                          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                          {
                            v338 = *(v6 + 488);
                            if (v338)
                            {
                              LODWORD(v338) = *(v338 + 424);
                            }

                            v339 = *(*(v6 + 480) + 372);
                            v340 = *(v6 + 860);
                            *buf = 136447746;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 2082;
                            *&buf[14] = v641;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *v653 = v339;
                            *&v653[4] = 1024;
                            *&v653[6] = v340;
                            *v654 = 1024;
                            *&v654[2] = v338;
                            *&v654[6] = 1024;
                            *&v654[8] = v247;
                            _os_log_impl(&dword_181A37000, v337, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                          }
                        }

                        v341 = v247 - v243;
                        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        if (v341 == v247)
                        {
LABEL_612:
                          nw_http_transaction_metadata_increment_outbound_body_transfer_size(*(*(v6 + 488) + 352), v222);
                          v342 = *(v6 + 488);
                          v343 = *(v342 + 176);
                          *(v342 + 176) = v343 + v222;
                          if (__CFADD__(v343, v222))
                          {
                            if (BYTE1(v7[82].isa) == 1)
                            {
                              v391 = __nwlog_obj();
                              if (os_log_type_enabled(v391, OS_LOG_TYPE_DEBUG))
                              {
                                v392 = *(v342 + 176);
                                *buf = 136446978;
                                *&buf[4] = "increment_outbound_body_size";
                                *&buf[12] = 2082;
                                *&buf[14] = "outbound_body_size";
                                *&buf[22] = 2048;
                                *&buf[24] = v222;
                                *&buf[32] = 2048;
                                *v653 = v392;
                                _os_log_impl(&dword_181A37000, v391, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                              }
                            }

                            *(v342 + 176) = -1;
                          }

                          v216 = v635;
                          v344 = *(v635 + 64);
                          if (v344)
                          {
                            if ((*(v344 + 66) & 0x40) != 0)
                            {
                              *(*(v6 + 488) + 428) |= 0x800u;
                              *(v6 + 872) |= 0x20u;
                              nw_http_transaction_metadata_mark_outbound_message_end(*(*(v6 + 488) + 352));
                              v345 = *(v6 + 488);
                              if (*(v345 + 168) == 1 && *(v345 + 160) != *(v345 + 176))
                              {
                                if ((*(v345 + 158) & 1) == 0)
                                {
                                  v440 = __nwlog_obj();
                                  v441 = os_log_type_enabled(v440, OS_LOG_TYPE_ERROR);
                                  v345 = *(v6 + 488);
                                  if (v441)
                                  {
                                    v442 = *(v345 + 256);
                                    if (v442)
                                    {
                                      LODWORD(v442) = *(v442 + 860);
                                    }

                                    v443 = *(*(v345 + 248) + 372);
                                    v444 = *(v345 + 424);
                                    if (*(v345 + 168) == 1)
                                    {
                                      v445 = *(v345 + 160);
                                    }

                                    else
                                    {
                                      v445 = -1;
                                    }

                                    v446 = *(v345 + 176);
                                    *buf = 136448002;
                                    *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v345 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *v653 = v443;
                                    *&v653[4] = 1024;
                                    *&v653[6] = v442;
                                    *v654 = 1024;
                                    *&v654[2] = v444;
                                    *&v654[6] = 2048;
                                    *&v654[8] = v445;
                                    *&v654[16] = 2048;
                                    v655 = v446;
                                    _os_log_impl(&dword_181A37000, v440, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                    v345 = *(v6 + 488);
                                  }
                                }

                                nw_protocol_error(*(v345 + 48), v345);
                                nw_protocol_disconnected(*(*(v6 + 488) + 48), *(v6 + 488));
                                v438 = v635;
                                v439 = v222;
LABEL_768:
                                nw_frame_claim(v438, v228, v439, 0);
                                nw_frame_array_prepend(v215, 1, v216);
LABEL_769:
                                v447 = *(v6 + 872);
                                v12 = v631;
                                if ((v447 & 0x80000000) == 0 || *v215)
                                {
LABEL_771:
                                  if (v12)
                                  {
                                    goto LABEL_772;
                                  }

                                  return;
                                }

                                *(v6 + 872) = v447 & 0x7FFF;
                                if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
                                {
                                  v587 = __nwlog_obj();
                                  if (os_log_type_enabled(v587, OS_LOG_TYPE_DEBUG))
                                  {
                                    v588 = *(v6 + 488);
                                    v589 = *(*(v6 + 480) + 372);
                                    v590 = *(v6 + 860);
                                    if (v588)
                                    {
                                      LODWORD(v588) = *(v588 + 424);
                                    }

                                    *buf = 136447490;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v6 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *v653 = v589;
                                    *&v653[4] = 1024;
                                    *&v653[6] = v590;
                                    *v654 = 1024;
                                    *&v654[2] = v588;
                                    _os_log_impl(&dword_181A37000, v587, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> requesting new frame for final chunk", buf, 0x32u);
                                    v6 = v642;
                                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                                  }
                                }

                                v449 = *(v6 + 32);
                                if (v449)
                                {
                                  v662 = 0;
                                  v663 = &v662;
                                  v450 = nw_protocol_get_output_frames(v449, v6, 5, 5, 1, &v662);
                                  v451 = v450;
                                  v452 = v662;
                                  if (v662 && v450)
                                  {
                                    LODWORD(v656) = 0;
                                    v453 = nw_frame_unclaimed_bytes(v662, &v656);
                                    *v453 = 218762544;
                                    *(v453 + 4) = 10;
                                    if (nw_frame_claim(v452, v454, 5, 0))
                                    {
                                      nw_frame_collapse(v452);
                                      nw_frame_unclaim(v452, v455, 5u, 0);
                                      if (nw_protocol_finalize_output_frames(v449, &v662))
                                      {
                                        *(*(v6 + 488) + 428) |= 0x800u;
                                        *(v6 + 872) |= 0x20u;
                                        nw_http_transaction_metadata_mark_outbound_message_end(*(*(v6 + 488) + 352));
                                        v456 = *(v6 + 488);
                                        if (*(v456 + 168) == 1 && *(v456 + 160) != *(v456 + 176))
                                        {
                                          if ((*(v456 + 158) & 1) == 0)
                                          {
                                            v457 = __nwlog_obj();
                                            v458 = os_log_type_enabled(v457, OS_LOG_TYPE_ERROR);
                                            v456 = *(v6 + 488);
                                            if (v458)
                                            {
                                              v459 = *(v456 + 256);
                                              if (v459)
                                              {
                                                LODWORD(v459) = *(v459 + 860);
                                              }

                                              v460 = *(*(v456 + 248) + 372);
                                              v461 = *(v456 + 424);
                                              if (*(v456 + 168) == 1)
                                              {
                                                v462 = *(v456 + 160);
                                              }

                                              else
                                              {
                                                v462 = -1;
                                              }

                                              v490 = *(v456 + 176);
                                              *buf = 136448002;
                                              *&buf[4] = "nw_http1_connection_send_final_chunk";
                                              *&buf[12] = 2082;
                                              *&buf[14] = v456 + 74;
                                              *&buf[22] = 2080;
                                              *&buf[24] = " ";
                                              *&buf[32] = 1024;
                                              *v653 = v460;
                                              *&v653[4] = 1024;
                                              *&v653[6] = v459;
                                              *v654 = 1024;
                                              *&v654[2] = v461;
                                              *&v654[6] = 2048;
                                              *&v654[8] = v462;
                                              *&v654[16] = 2048;
                                              v655 = v490;
                                              _os_log_impl(&dword_181A37000, v457, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                              v456 = *(v6 + 488);
                                            }
                                          }

                                          nw_protocol_error(*(v456 + 48), v456);
                                          nw_protocol_disconnected(*(*(v6 + 488) + 48), *(v6 + 488));
                                        }
                                      }

                                      goto LABEL_751;
                                    }

                                    v468 = __nwlog_obj();
                                    *buf = 136446466;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    *&buf[12] = 1024;
                                    *&buf[14] = 5;
                                    LODWORD(v629) = 18;
                                    v469 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v468, 16, "%{public}s claiming frame with %u bytes failed", buf, v629);
                                    LOBYTE(__buf) = 16;
                                    LOBYTE(v650) = 0;
                                    if (__nwlog_fault(v469, &__buf, &v650))
                                    {
                                      if (__buf != 17)
                                      {
                                        if (v650 == 1)
                                        {
                                          v477 = __nw_create_backtrace_string();
                                          v478 = __nwlog_obj();
                                          v479 = __buf;
                                          v480 = os_log_type_enabled(v478, __buf);
                                          if (v477)
                                          {
                                            if (v480)
                                            {
                                              *buf = 136446722;
                                              *&buf[4] = "nw_http1_connection_send_final_chunk";
                                              *&buf[12] = 1024;
                                              *&buf[14] = 5;
                                              *&buf[18] = 2082;
                                              *&buf[20] = v477;
                                              _os_log_impl(&dword_181A37000, v478, v479, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                                            }

                                            free(v477);
                                            goto LABEL_826;
                                          }

                                          if (!v480)
                                          {
                                            goto LABEL_826;
                                          }

                                          *buf = 136446466;
                                          *&buf[4] = "nw_http1_connection_send_final_chunk";
                                          *&buf[12] = 1024;
                                          *&buf[14] = 5;
                                          v472 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                                          v487 = v478;
                                          v488 = v479;
                                        }

                                        else
                                        {
                                          v470 = __nwlog_obj();
                                          v471 = __buf;
                                          if (!os_log_type_enabled(v470, __buf))
                                          {
                                            goto LABEL_826;
                                          }

                                          *buf = 136446466;
                                          *&buf[4] = "nw_http1_connection_send_final_chunk";
                                          *&buf[12] = 1024;
                                          *&buf[14] = 5;
                                          v472 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
LABEL_824:
                                          v487 = v470;
                                          v488 = v471;
                                        }

                                        _os_log_impl(&dword_181A37000, v487, v488, v472, buf, 0x12u);
                                        goto LABEL_826;
                                      }

                                      v470 = __nwlog_obj();
                                      v471 = __buf;
                                      if (os_log_type_enabled(v470, __buf))
                                      {
                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_connection_send_final_chunk";
                                        *&buf[12] = 1024;
                                        *&buf[14] = 5;
                                        v472 = "%{public}s claiming frame with %u bytes failed";
                                        goto LABEL_824;
                                      }
                                    }

LABEL_826:
                                    if (v469)
                                    {
                                      free(v469);
                                    }

LABEL_751:
                                    if (v631)
                                    {
                                      goto LABEL_772;
                                    }

                                    return;
                                  }

                                  if (v450)
                                  {
                                    v463 = __nwlog_obj();
                                    *buf = 136446466;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    *&buf[12] = 1024;
                                    *&buf[14] = v451;
                                    LODWORD(v629) = 18;
                                    v464 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v463, 16, "%{public}s output handler reported %u frames to write, but array is empty", buf, v629);
                                    LOBYTE(v656) = 16;
                                    LOBYTE(__buf) = 0;
                                    if (!__nwlog_fault(v464, &v656, &__buf))
                                    {
                                      goto LABEL_815;
                                    }

                                    if (v656 != 17)
                                    {
                                      if (__buf == 1)
                                      {
                                        v473 = __nw_create_backtrace_string();
                                        v474 = __nwlog_obj();
                                        v475 = v656;
                                        v476 = os_log_type_enabled(v474, v656);
                                        if (v473)
                                        {
                                          if (v476)
                                          {
                                            *buf = 136446722;
                                            *&buf[4] = "nw_http1_connection_send_final_chunk";
                                            *&buf[12] = 1024;
                                            *&buf[14] = v451;
                                            *&buf[18] = 2082;
                                            *&buf[20] = v473;
                                            _os_log_impl(&dword_181A37000, v474, v475, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                          }

                                          free(v473);
                                          goto LABEL_815;
                                        }

                                        if (!v476)
                                        {
                                          goto LABEL_815;
                                        }

                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_connection_send_final_chunk";
                                        *&buf[12] = 1024;
                                        *&buf[14] = v451;
                                        v467 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                                        v481 = v474;
                                        v482 = v475;
                                      }

                                      else
                                      {
                                        v465 = __nwlog_obj();
                                        v466 = v656;
                                        if (!os_log_type_enabled(v465, v656))
                                        {
                                          goto LABEL_815;
                                        }

                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_connection_send_final_chunk";
                                        *&buf[12] = 1024;
                                        *&buf[14] = v451;
                                        v467 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
LABEL_813:
                                        v481 = v465;
                                        v482 = v466;
                                      }

                                      _os_log_impl(&dword_181A37000, v481, v482, v467, buf, 0x12u);
                                      goto LABEL_815;
                                    }

                                    v465 = __nwlog_obj();
                                    v466 = v656;
                                    if (os_log_type_enabled(v465, v656))
                                    {
                                      *buf = 136446466;
                                      *&buf[4] = "nw_http1_connection_send_final_chunk";
                                      *&buf[12] = 1024;
                                      *&buf[14] = v451;
                                      v467 = "%{public}s output handler reported %u frames to write, but array is empty";
                                      goto LABEL_813;
                                    }

LABEL_815:
                                    if (v464)
                                    {
                                      free(v464);
                                    }
                                  }

                                  if ((*(v6 + 158) & 1) == 0)
                                  {
                                    v483 = __nwlog_obj();
                                    if (os_log_type_enabled(v483, OS_LOG_TYPE_DEBUG))
                                    {
                                      v484 = *(v6 + 488);
                                      v485 = *(*(v6 + 480) + 372);
                                      v486 = *(v6 + 860);
                                      if (v484)
                                      {
                                        LODWORD(v484) = *(v484 + 424);
                                      }

                                      *buf = 136447746;
                                      *&buf[4] = "nw_http1_connection_send_final_chunk";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v6 + 74;
                                      *&buf[22] = 2080;
                                      *&buf[24] = " ";
                                      *&buf[32] = 1024;
                                      *v653 = v485;
                                      *&v653[4] = 1024;
                                      *&v653[6] = v486;
                                      *v654 = 1024;
                                      *&v654[2] = v484;
                                      *&v654[6] = 1024;
                                      *&v654[8] = 5;
                                      _os_log_impl(&dword_181A37000, v483, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                                    }
                                  }

                                  goto LABEL_751;
                                }

                                v586 = __nwlog_obj();
                                *buf = 136446210;
                                *&buf[4] = "nw_http1_connection_send_final_chunk";
                                LODWORD(v629) = 12;
                                v514 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v586, 16, "%{public}s called with null output_handler", buf, v629);
                                LOBYTE(v662) = 16;
                                LOBYTE(v656) = 0;
                                if (!__nwlog_fault(v514, &v662, &v656))
                                {
                                  goto LABEL_1084;
                                }

                                if (v662 == 17)
                                {
                                  v515 = __nwlog_obj();
                                  v516 = v662;
                                  if (os_log_type_enabled(v515, v662))
                                  {
                                    *buf = 136446210;
                                    *&buf[4] = "nw_http1_connection_send_final_chunk";
                                    v517 = "%{public}s called with null output_handler";
                                    goto LABEL_1082;
                                  }

LABEL_1084:
                                  if (v514)
                                  {
LABEL_1085:
                                    free(v514);
                                  }

LABEL_1086:
                                  v6 = v642;
                                  v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                                  goto LABEL_751;
                                }

                                if (v656 == 1)
                                {
                                  v615 = __nw_create_backtrace_string();
                                  v524 = __nwlog_obj();
                                  v525 = v662;
                                  v616 = os_log_type_enabled(v524, v662);
                                  if (v615)
                                  {
                                    if (v616)
                                    {
                                      *buf = 136446466;
                                      *&buf[4] = "nw_http1_connection_send_final_chunk";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v615;
                                      _os_log_impl(&dword_181A37000, v524, v525, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                                    }

                                    free(v615);
                                    if (v514)
                                    {
                                      goto LABEL_1085;
                                    }

                                    goto LABEL_1086;
                                  }

                                  if (!v616)
                                  {
                                    goto LABEL_1084;
                                  }

                                  *buf = 136446210;
                                  *&buf[4] = "nw_http1_connection_send_final_chunk";
                                  v517 = "%{public}s called with null output_handler, no backtrace";
LABEL_1022:
                                  v600 = v524;
                                  v601 = v525;
                                }

                                else
                                {
                                  v515 = __nwlog_obj();
                                  v516 = v662;
                                  if (!os_log_type_enabled(v515, v662))
                                  {
                                    goto LABEL_1084;
                                  }

                                  *buf = 136446210;
                                  *&buf[4] = "nw_http1_connection_send_final_chunk";
                                  v517 = "%{public}s called with null output_handler, backtrace limit exceeded";
LABEL_1082:
                                  v600 = v515;
                                  v601 = v516;
                                }

                                _os_log_impl(&dword_181A37000, v600, v601, v517, buf, 0xCu);
                                goto LABEL_1084;
                              }
                            }
                          }

LABEL_427:
                          *(v216 + 80) = 0;
                          *(v216 + 88) = 0;
                          nw_frame_cache_return_frame(v6 + 696, v216);
                          v216 = *v215;
                          if (!*v215)
                          {
                            goto LABEL_769;
                          }

                          continue;
                        }

LABEL_753:
                        if ((*(v6 + 158) & 1) == 0)
                        {
                          v434 = __nwlog_obj();
                          if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                          {
                            v435 = *(v6 + 488);
                            v436 = *(*(v6 + 480) + 372);
                            v437 = *(v6 + 860);
                            if (v435)
                            {
                              LODWORD(v435) = *(v435 + 424);
                            }

                            *buf = 136448002;
                            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
                            *&buf[12] = 2082;
                            *&buf[14] = v641;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *v653 = v436;
                            *&v653[4] = 1024;
                            *&v653[6] = v437;
                            *v654 = 1024;
                            *&v654[2] = v435;
                            *&v654[6] = 1024;
                            *&v654[8] = v222;
                            *&v654[12] = 1024;
                            *&v654[14] = v341;
                            _os_log_impl(&dword_181A37000, v434, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> could not send pending output frame of length %u sent %u", buf, 0x3Eu);
                          }
                        }

                        v216 = v635;
                        v438 = v635;
                        v439 = v341;
                        goto LABEL_768;
                      }

                      while (1)
                      {
                        v251 = *(v249 + 32);
                        if (v251 || *(v249 + 40))
                        {
                          v252 = *(v249 + 112);
                          if (!v252)
                          {
                            goto LABEL_482;
                          }
                        }

                        else
                        {
                          v251 = 0;
                          v252 = *(v249 + 112);
                          if (!v252)
                          {
                            goto LABEL_482;
                          }
                        }

                        if ((*(v249 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v249, *(v249 + 88)))
                        {
                          LODWORD(v252) = 0;
LABEL_482:
                          v254 = 0;
                          goto LABEL_483;
                        }

                        LODWORD(v252) = *(v249 + 52);
                        v253 = *(v249 + 56);
                        if (v252)
                        {
                          LODWORD(v252) = v252 - (v253 + *(v249 + 60));
                        }

                        v254 = (*(v249 + 112) + v253);
LABEL_483:
                        if (v252 >= v243)
                        {
                          v255 = v243;
                        }

                        else
                        {
                          v255 = v252;
                        }

                        memcpy(v254, v223, v255);
                        v243 -= v255;
                        v223 += v255;
                        if (!nw_frame_claim(v249, v256, v255, 0))
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_connection_send_bytes";
                          *&buf[12] = 1024;
                          *&buf[14] = v255;
                          LODWORD(v629) = 18;
                          v262 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s claiming frame with %u bytes failed", buf, v629);
                          LOBYTE(v656) = 16;
                          LOBYTE(v648) = 0;
                          if (!__nwlog_fault(v262, &v656, &v648))
                          {
                            goto LABEL_507;
                          }

                          if (v656 == 17)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v263 = gLogObj;
                            v264 = v656;
                            if (os_log_type_enabled(gLogObj, v656))
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v255;
                              v265 = v263;
                              v266 = v264;
                              v267 = "%{public}s claiming frame with %u bytes failed";
                              goto LABEL_506;
                            }

                            goto LABEL_507;
                          }

                          if (v648 != 1)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v272 = gLogObj;
                            v273 = v656;
                            if (!os_log_type_enabled(gLogObj, v656))
                            {
                              goto LABEL_507;
                            }

                            *buf = 136446466;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 1024;
                            *&buf[14] = v255;
                            v265 = v272;
                            v266 = v273;
                            v267 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
LABEL_506:
                            _os_log_impl(&dword_181A37000, v265, v266, v267, buf, 0x12u);
                            goto LABEL_507;
                          }

                          v268 = __nw_create_backtrace_string();
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v269 = gLogObj;
                          v270 = v656;
                          v271 = os_log_type_enabled(gLogObj, v656);
                          if (v268)
                          {
                            if (v271)
                            {
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_connection_send_bytes";
                              *&buf[12] = 1024;
                              *&buf[14] = v255;
                              *&buf[18] = 2082;
                              *&buf[20] = v268;
                              _os_log_impl(&dword_181A37000, v269, v270, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                            }

                            free(v268);
                            goto LABEL_507;
                          }

                          if (v271)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_http1_connection_send_bytes";
                            *&buf[12] = 1024;
                            *&buf[14] = v255;
                            v265 = v269;
                            v266 = v270;
                            v267 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                            goto LABEL_506;
                          }

LABEL_507:
                          if (v262)
                          {
                            free(v262);
                          }

                          v6 = v642;
LABEL_510:
                          v274 = v651[1];
                          v275 = *v274;
                          v222 = v247;
                          if (*v274)
                          {
                            nw_frame_set_metadata(*v274, 0, 0, v644);
                            if (v644)
                            {
                              if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
                              {
                                v282 = __nwlog_obj();
                                if (os_log_type_enabled(v282, OS_LOG_TYPE_DEBUG))
                                {
                                  v283 = *(v6 + 488);
                                  if (v283)
                                  {
                                    LODWORD(v283) = *(v283 + 424);
                                  }

                                  v284 = *(*(v6 + 480) + 372);
                                  v285 = *(v6 + 860);
                                  *buf = 136447746;
                                  *&buf[4] = "nw_http1_connection_send_bytes";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v641;
                                  *&buf[22] = 2080;
                                  *&buf[24] = " ";
                                  *&buf[32] = 1024;
                                  *v653 = v284;
                                  *&v653[4] = 1024;
                                  *&v653[6] = v285;
                                  *v654 = 1024;
                                  *&v654[2] = v283;
                                  *&v654[6] = 2048;
                                  *&v654[8] = v275;
                                  _os_log_impl(&dword_181A37000, v282, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> setting complete on last output frame %p", buf, 0x3Cu);
                                }
                              }
                            }
                          }

                          nw_protocol_finalize_output_frames(v242, &v650);
                          if (__buf)
                          {
                            v656 = 0;
                            v657 = &v656;
                            v658 = 0x2000000000;
                            v659 = 0;
                            v662 = MEMORY[0x1E69E9820];
                            v663 = 0x40000000;
                            v664 = ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke;
                            v665 = &unk_1E6A32B10;
                            v666 = &v656;
                            do
                            {
                              v276 = __buf;
                              if (!__buf)
                              {
                                break;
                              }

                              v277 = *(__buf + 32);
                              v278 = *(__buf + 40);
                              v279 = (v277 + 40);
                              if (!v277)
                              {
                                v279 = &p_buf;
                              }

                              *v279 = v278;
                              *v278 = v277;
                              *(v276 + 32) = 0;
                              *(v276 + 40) = 0;
                            }

                            while ((v664(&v662) & 1) != 0);
                            if ((*(v6 + 158) & 1) == 0)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v280 = gLogObj;
                              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                              {
                                v281 = *(v6 + 488);
                                if (v281)
                                {
                                  LODWORD(v281) = *(v281 + 424);
                                }

                                v244 = *(*(v6 + 480) + 372);
                                v245 = *(v6 + 860);
                                v246 = *(v657 + 6);
                                *buf = 136447746;
                                *&buf[4] = "nw_http1_connection_send_bytes";
                                *&buf[12] = 2082;
                                *&buf[14] = v641;
                                *&buf[22] = 2080;
                                *&buf[24] = " ";
                                *&buf[32] = 1024;
                                *v653 = v244;
                                *&v653[4] = 1024;
                                *&v653[6] = v245;
                                *v654 = 1024;
                                *&v654[2] = v281;
                                *&v654[6] = 1024;
                                *&v654[8] = v246;
                                _os_log_impl(&dword_181A37000, v280, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to use %u frames, marking as failed", buf, 0x38u);
                              }
                            }

                            _Block_object_dispose(&v656, 8);
                          }

                          if (!v243)
                          {
                            v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            v215 = *typea;
                            goto LABEL_612;
                          }

                          goto LABEL_468;
                        }

                        nw_frame_collapse(v249);
                        nw_frame_unclaim(v249, v257, v255, 0);
                        v258 = *(v249 + 32);
                        v259 = *(v249 + 40);
                        v260 = (v258 + 40);
                        if (!v258)
                        {
                          v260 = &p_buf;
                        }

                        *v260 = v259;
                        *v259 = v258;
                        v261 = v651;
                        *(v249 + 32) = 0;
                        *(v249 + 40) = v261;
                        *v261 = v249;
                        v651 = (v249 + 32);
                        if (v251)
                        {
                          v249 = v251;
                          if (v243)
                          {
                            continue;
                          }
                        }

                        goto LABEL_510;
                      }
                    }

                    v371 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    LODWORD(v629) = 12;
                    v227 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v371, 16, "%{public}s called with null output_handler", buf, v629);
                    LOBYTE(v656) = 16;
                    LOBYTE(__buf) = 0;
                    if (__nwlog_fault(v227, &v656, &__buf))
                    {
                      if (v656 == 17)
                      {
                        v372 = __nwlog_obj();
                        v373 = v656;
                        if (!os_log_type_enabled(v372, v656))
                        {
                          goto LABEL_714;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        v231 = v372;
                        v232 = v373;
                        v233 = "%{public}s called with null output_handler";
                        goto LABEL_713;
                      }

                      if (__buf != 1)
                      {
                        v401 = __nwlog_obj();
                        v402 = v656;
                        if (!os_log_type_enabled(v401, v656))
                        {
                          goto LABEL_714;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        v231 = v401;
                        v232 = v402;
                        v233 = "%{public}s called with null output_handler, backtrace limit exceeded";
                        goto LABEL_713;
                      }

                      v378 = __nw_create_backtrace_string();
                      v388 = __nwlog_obj();
                      v389 = v656;
                      v390 = os_log_type_enabled(v388, v656);
                      if (!v378)
                      {
                        v6 = v642;
                        v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        v215 = *typea;
                        if (!v390)
                        {
                          goto LABEL_714;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        v231 = v388;
                        v232 = v389;
                        v233 = "%{public}s called with null output_handler, no backtrace";
                        goto LABEL_713;
                      }

                      if (v390)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_connection_send_bytes";
                        *&buf[12] = 2082;
                        *&buf[14] = v378;
                        v382 = v388;
                        v383 = v389;
                        v384 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                        goto LABEL_685;
                      }

LABEL_686:
                      free(v378);
                      v6 = v642;
                      v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                      v215 = *typea;
                    }

LABEL_714:
                    if (v227)
                    {
                      free(v227);
                    }

                    v341 = 0;
                    if (!v222)
                    {
                      goto LABEL_612;
                    }

                    goto LABEL_753;
                  }

                  v368 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  LODWORD(v629) = 12;
                  v227 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v368, 16, "%{public}s called with null length", buf, v629);
                  LOBYTE(v656) = 16;
                  LOBYTE(__buf) = 0;
                  if (!__nwlog_fault(v227, &v656, &__buf))
                  {
                    goto LABEL_714;
                  }

                  if (v656 == 17)
                  {
                    v369 = __nwlog_obj();
                    v370 = v656;
                    if (!os_log_type_enabled(v369, v656))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v231 = v369;
                    v232 = v370;
                    v233 = "%{public}s called with null length";
                    goto LABEL_713;
                  }

                  if (__buf != 1)
                  {
                    v399 = __nwlog_obj();
                    v400 = v656;
                    if (!os_log_type_enabled(v399, v656))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v231 = v399;
                    v232 = v400;
                    v233 = "%{public}s called with null length, backtrace limit exceeded";
                    goto LABEL_713;
                  }

                  v378 = __nw_create_backtrace_string();
                  v385 = __nwlog_obj();
                  v386 = v656;
                  v387 = os_log_type_enabled(v385, v656);
                  if (!v378)
                  {
                    v6 = v642;
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v215 = *typea;
                    if (!v387)
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v231 = v385;
                    v232 = v386;
                    v233 = "%{public}s called with null length, no backtrace";
                    goto LABEL_713;
                  }

                  if (!v387)
                  {
                    goto LABEL_686;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  *&buf[12] = 2082;
                  *&buf[14] = v378;
                  v382 = v385;
                  v383 = v386;
                  v384 = "%{public}s called with null length, dumping backtrace:%{public}s";
                }

                else
                {
LABEL_459:
                  v644 = 0;
                  v635 = v216;
                  if (v223)
                  {
                    goto LABEL_460;
                  }

LABEL_450:
                  v226 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  LODWORD(v629) = 12;
                  v227 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v226, 16, "%{public}s called with null buffer", buf, v629);
                  LOBYTE(v656) = 16;
                  LOBYTE(__buf) = 0;
                  if (!__nwlog_fault(v227, &v656, &__buf))
                  {
                    goto LABEL_714;
                  }

                  if (v656 == 17)
                  {
                    v229 = __nwlog_obj();
                    v230 = v656;
                    if (!os_log_type_enabled(v229, v656))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v231 = v229;
                    v232 = v230;
                    v233 = "%{public}s called with null buffer";
LABEL_713:
                    _os_log_impl(&dword_181A37000, v231, v232, v233, buf, 0xCu);
                    goto LABEL_714;
                  }

                  if (__buf != 1)
                  {
                    v397 = __nwlog_obj();
                    v398 = v656;
                    if (!os_log_type_enabled(v397, v656))
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v231 = v397;
                    v232 = v398;
                    v233 = "%{public}s called with null buffer, backtrace limit exceeded";
                    goto LABEL_713;
                  }

                  v378 = __nw_create_backtrace_string();
                  v379 = __nwlog_obj();
                  v380 = v656;
                  v381 = os_log_type_enabled(v379, v656);
                  if (!v378)
                  {
                    v6 = v642;
                    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v215 = *typea;
                    if (!v381)
                    {
                      goto LABEL_714;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_send_bytes";
                    v231 = v379;
                    v232 = v380;
                    v233 = "%{public}s called with null buffer, no backtrace";
                    goto LABEL_713;
                  }

                  if (!v381)
                  {
                    goto LABEL_686;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_send_bytes";
                  *&buf[12] = 2082;
                  *&buf[14] = v378;
                  v382 = v379;
                  v383 = v380;
                  v384 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
                }

LABEL_685:
                _os_log_impl(&dword_181A37000, v382, v383, v384, buf, 0x16u);
                goto LABEL_686;
              }
            }
          }

          else
          {
            v223 = 0;
            v215 = v332;
            if ((*(v216 + 204) & 4) == 0)
            {
              goto LABEL_640;
            }
          }

          v350 = *(v216 + 216);
          *(v216 + 208) = v6;
          *(v216 + 216) = v350 & 0xFC | 1;
          goto LABEL_444;
        }

LABEL_629:
        nw_frame_claim(v216, v294, 0, v325);
        goto LABEL_630;
      }

      break;
    }

    v636 = v216;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_drain_outbound_frames";
    *&buf[12] = 2082;
    *&buf[14] = "unused_bytes";
    *&buf[22] = 2048;
    *&buf[24] = v324;
    *&buf[32] = 2048;
    *v653 = v320 + v324;
    LODWORD(v629) = 42;
    v326 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v629);
    LOBYTE(v662) = 16;
    LOBYTE(v656) = 0;
    if (__nwlog_fault(v326, &v662, &v656))
    {
      if (v662 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v327 = gLogObj;
        v328 = v662;
        if (os_log_type_enabled(gLogObj, v662))
        {
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = "unused_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v324;
          *&buf[32] = 2048;
          *v653 = v320 + v324;
          v329 = v327;
          v330 = v328;
          v331 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_625:
          _os_log_impl(&dword_181A37000, v329, v330, v331, buf, 0x2Au);
        }
      }

      else if (v656 == 1)
      {
        v333 = __nw_create_backtrace_string();
        v334 = __nwlog_obj();
        v335 = v662;
        v336 = os_log_type_enabled(v334, v662);
        if (v333)
        {
          if (v336)
          {
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_drain_outbound_frames";
            *&buf[12] = 2082;
            *&buf[14] = "unused_bytes";
            *&buf[22] = 2048;
            *&buf[24] = v324;
            *&buf[32] = 2048;
            *v653 = v325;
            *&v653[8] = 2082;
            *v654 = v333;
            _os_log_impl(&dword_181A37000, v334, v335, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v333);
          goto LABEL_626;
        }

        if (v336)
        {
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = "unused_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v324;
          *&buf[32] = 2048;
          *v653 = v325;
          v329 = v334;
          v330 = v335;
          v331 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_625;
        }
      }

      else
      {
        v346 = __nwlog_obj();
        v347 = v662;
        if (os_log_type_enabled(v346, v662))
        {
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_drain_outbound_frames";
          *&buf[12] = 2082;
          *&buf[14] = "unused_bytes";
          *&buf[22] = 2048;
          *&buf[24] = v324;
          *&buf[32] = 2048;
          *v653 = v320 + v324;
          v329 = v346;
          v330 = v347;
          v331 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_625;
        }
      }
    }

LABEL_626:
    if (v326)
    {
      free(v326);
    }

    LODWORD(v325) = -1;
    v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v332 = *typea;
    v216 = v636;
    v222 = v298;
    goto LABEL_629;
  }

  v504 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_connection_drain_outbound_frames";
  LODWORD(v629) = 12;
  v505 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v504, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v629);
  LOBYTE(v662) = 16;
  LOBYTE(v656) = 0;
  if (__nwlog_fault(v505, &v662, &v656))
  {
    if (v662 == 17)
    {
      v506 = __nwlog_obj();
      v507 = v662;
      if (!os_log_type_enabled(v506, v662))
      {
        goto LABEL_959;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v508 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_957:
      v561 = v506;
      v562 = v507;
LABEL_958:
      _os_log_impl(&dword_181A37000, v561, v562, v508, buf, 0xCu);
      goto LABEL_959;
    }

    if (v656 != 1)
    {
      v506 = __nwlog_obj();
      v507 = v662;
      if (!os_log_type_enabled(v506, v662))
      {
        goto LABEL_959;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v508 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
      goto LABEL_957;
    }

    v519 = __nw_create_backtrace_string();
    v520 = __nwlog_obj();
    v521 = v662;
    v522 = os_log_type_enabled(v520, v662);
    if (v519)
    {
      if (v522)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_drain_outbound_frames";
        *&buf[12] = 2082;
        *&buf[14] = v519;
        _os_log_impl(&dword_181A37000, v520, v521, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v519);
    }

    else if (v522)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_drain_outbound_frames";
      v508 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
      v561 = v520;
      v562 = v521;
      goto LABEL_958;
    }
  }

LABEL_959:
  if (v505)
  {
    free(v505);
  }

  v6 = v642;
  v7 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (v12)
  {
LABEL_772:
    if ((*(v6 + 158) & 1) == 0 && BYTE1(v7[82].isa) == 1)
    {
      v500 = __nwlog_obj();
      if (os_log_type_enabled(v500, OS_LOG_TYPE_DEBUG))
      {
        v501 = *(v6 + 488);
        v502 = *(*(v6 + 480) + 372);
        v503 = *(v6 + 860);
        if (v501)
        {
          LODWORD(v501) = *(v501 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_output_frame_finalizer";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *v653 = v502;
        *&v653[4] = 1024;
        *&v653[6] = v503;
        *v654 = 1024;
        *&v654[2] = v501;
        _os_log_impl(&dword_181A37000, v500, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> initial outbound frame finalized, triggering output_available", buf, 0x32u);
        v6 = v642;
      }
    }

    v448 = *(v6 + 488);
    if (v448)
    {
      nw_protocol_output_available(*(v448 + 48), v448);
    }

    else
    {
      nw_protocol_output_available(0, 0);
    }
  }
}