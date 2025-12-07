void nw_protocol_http1_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v414 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v121 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s called with null protocol", buf, 12);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v122, v412, v408))
    {
      goto LABEL_453;
    }

    if (v412[0] == 17)
    {
      v123 = __nwlog_obj();
      v124 = v412[0];
      if (!os_log_type_enabled(v123, v412[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null protocol";
    }

    else if (v408[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v124 = v412[0];
      v135 = os_log_type_enabled(v123, v412[0]);
      if (backtrace_string)
      {
        if (v135)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v123, v124, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_453:
        if (!v122)
        {
          goto LABEL_455;
        }

LABEL_454:
        free(v122);
        goto LABEL_455;
      }

      if (!v135)
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v123 = __nwlog_obj();
      v124 = v412[0];
      if (!os_log_type_enabled(v123, v412[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_452;
  }

  handle = a1->handle;
  if (!handle)
  {
    v126 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v126, 16, "%{public}s called with null handle", buf, 12);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v122, v412, v408))
    {
      goto LABEL_453;
    }

    if (v412[0] != 17)
    {
      if (v408[0] != OS_LOG_TYPE_INFO)
      {
        v123 = __nwlog_obj();
        v124 = v412[0];
        if (!os_log_type_enabled(v123, v412[0]))
        {
          goto LABEL_453;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v125 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_452;
      }

      v136 = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v124 = v412[0];
      v137 = os_log_type_enabled(v123, v412[0]);
      if (!v136)
      {
        if (!v137)
        {
          goto LABEL_453;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v125 = "%{public}s called with null handle, no backtrace";
        goto LABEL_452;
      }

      if (!v137)
      {
        goto LABEL_235;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v136;
      v138 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_234;
    }

    v123 = __nwlog_obj();
    v124 = v412[0];
    if (!os_log_type_enabled(v123, v412[0]))
    {
      goto LABEL_453;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v125 = "%{public}s called with null handle";
LABEL_452:
    _os_log_impl(&dword_181A37000, v123, v124, v125, buf, 0xCu);
    goto LABEL_453;
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
LABEL_455:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      LODWORD(v397) = 12;
      v128 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v397);
      v412[0] = 16;
      v408[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v128, v412, v408))
      {
        goto LABEL_487;
      }

      if (v412[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v129 = gLogObj;
        v130 = v412[0];
        if (!os_log_type_enabled(gLogObj, v412[0]))
        {
          goto LABEL_487;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_available";
        v131 = "%{public}s called with null http1";
        goto LABEL_485;
      }

      if (v408[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v129 = gLogObj;
        v130 = v412[0];
        if (!os_log_type_enabled(gLogObj, v412[0]))
        {
          goto LABEL_487;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_available";
        v131 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_485;
      }

      v243 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v244 = gLogObj;
      v245 = v412[0];
      v246 = os_log_type_enabled(gLogObj, v412[0]);
      if (!v243)
      {
        if (!v246)
        {
          goto LABEL_487;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_available";
        v131 = "%{public}s called with null http1, no backtrace";
        goto LABEL_492;
      }

      if (v246)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v243;
        _os_log_impl(&dword_181A37000, v244, v245, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v243);
LABEL_487:
      if (!v128)
      {
        return;
      }

      goto LABEL_488;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v178 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v178, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v122, v412, v408))
    {
      goto LABEL_453;
    }

    if (v412[0] == 17)
    {
      v123 = __nwlog_obj();
      v124 = v412[0];
      if (!os_log_type_enabled(v123, v412[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null handle->http1_connection";
      goto LABEL_452;
    }

    if (v408[0] != OS_LOG_TYPE_INFO)
    {
      v123 = __nwlog_obj();
      v124 = v412[0];
      if (!os_log_type_enabled(v123, v412[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_452;
    }

    v136 = __nw_create_backtrace_string();
    v123 = __nwlog_obj();
    v124 = v412[0];
    v196 = os_log_type_enabled(v123, v412[0]);
    if (!v136)
    {
      if (!v196)
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_452;
    }

    if (v196)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v136;
      v138 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_234;
    }

LABEL_235:
    free(v136);
    if (!v122)
    {
      goto LABEL_455;
    }

    goto LABEL_454;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v177 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v177, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v122, v412, v408))
    {
      goto LABEL_453;
    }

    if (v412[0] == 17)
    {
      v123 = __nwlog_obj();
      v124 = v412[0];
      if (!os_log_type_enabled(v123, v412[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null handle->http1_stream";
      goto LABEL_452;
    }

    if (v408[0] != OS_LOG_TYPE_INFO)
    {
      v123 = __nwlog_obj();
      v124 = v412[0];
      if (!os_log_type_enabled(v123, v412[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_452;
    }

    v136 = __nw_create_backtrace_string();
    v123 = __nwlog_obj();
    v124 = v412[0];
    v195 = os_log_type_enabled(v123, v412[0]);
    if (!v136)
    {
      if (!v195)
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v125 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_452;
    }

    if (!v195)
    {
      goto LABEL_235;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v136;
    v138 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_234:
    _os_log_impl(&dword_181A37000, v123, v124, v138, buf, 0x16u);
    goto LABEL_235;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!*v4)
  {
    goto LABEL_455;
  }

  if (!a2)
  {
    v127 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_available";
    v128 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v127, 16, "%{public}s called with null other_protocol", buf, 12);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v128, v412, v408))
    {
      goto LABEL_487;
    }

    if (v412[0] == 17)
    {
      v129 = __nwlog_obj();
      v130 = v412[0];
      if (!os_log_type_enabled(v129, v412[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v131 = "%{public}s called with null other_protocol";
LABEL_485:
      v249 = v129;
      v250 = v130;
LABEL_486:
      _os_log_impl(&dword_181A37000, v249, v250, v131, buf, 0xCu);
      goto LABEL_487;
    }

    if (v408[0] != OS_LOG_TYPE_INFO)
    {
      v129 = __nwlog_obj();
      v130 = v412[0];
      if (!os_log_type_enabled(v129, v412[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v131 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_485;
    }

    v139 = __nw_create_backtrace_string();
    v129 = __nwlog_obj();
    v130 = v412[0];
    v140 = os_log_type_enabled(v129, v412[0]);
    if (!v139)
    {
      if (!v140)
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v131 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_485;
    }

    if (!v140)
    {
      goto LABEL_301;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_input_available";
    *&buf[12] = 2082;
    *&buf[14] = v139;
    v141 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_300;
  }

  if (v3 == 2)
  {
    v9 = *(handle + 1);
    if (v9)
    {
      v8 = (v9 + 256);
      goto LABEL_17;
    }

    v179 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v179, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v180, v412, v408))
    {
      if (v412[0] == 17)
      {
        v181 = __nwlog_obj();
        v182 = v412[0];
        if (!os_log_type_enabled(v181, v412[0]))
        {
          goto LABEL_471;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v183 = "%{public}s called with null handle->http1_stream";
        goto LABEL_470;
      }

      if (v408[0] != OS_LOG_TYPE_INFO)
      {
        v181 = __nwlog_obj();
        v182 = v412[0];
        if (!os_log_type_enabled(v181, v412[0]))
        {
          goto LABEL_471;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v183 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_470;
      }

      v197 = __nw_create_backtrace_string();
      v181 = __nwlog_obj();
      v182 = v412[0];
      v198 = os_log_type_enabled(v181, v412[0]);
      if (v197)
      {
        if (v198)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_connection_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v197;
          _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v197);
        goto LABEL_471;
      }

      if (v198)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v183 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_470:
        _os_log_impl(&dword_181A37000, v181, v182, v183, buf, 0xCu);
      }
    }

LABEL_471:
    if (v180)
    {
      free(v180);
    }

LABEL_473:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_available";
    LODWORD(v397) = 12;
    v128 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_connection", buf, v397);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v128, v412, v408))
    {
      goto LABEL_487;
    }

    if (v412[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v129 = gLogObj;
      v130 = v412[0];
      if (!os_log_type_enabled(gLogObj, v412[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v131 = "%{public}s called with null http1_connection";
      goto LABEL_485;
    }

    if (v408[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v129 = gLogObj;
      v130 = v412[0];
      if (!os_log_type_enabled(gLogObj, v412[0]))
      {
        goto LABEL_487;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v131 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_485;
    }

    v247 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v244 = gLogObj;
    v245 = v412[0];
    v248 = os_log_type_enabled(gLogObj, v412[0]);
    if (v247)
    {
      if (v248)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v247;
        _os_log_impl(&dword_181A37000, v244, v245, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v247);
      if (!v128)
      {
        return;
      }

LABEL_488:
      free(v128);
      return;
    }

    if (v248)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_available";
      v131 = "%{public}s called with null http1_connection, no backtrace";
LABEL_492:
      v249 = v244;
      v250 = v245;
      goto LABEL_486;
    }

    goto LABEL_487;
  }

  if (v3 != 3)
  {
    goto LABEL_473;
  }

  v8 = (handle + 16);
LABEL_17:
  v10 = *v8;
  if (!*v8)
  {
    goto LABEL_473;
  }

  v11 = *(v10 + 488);
  if (!v11)
  {
    if ((*(v7 + 376) & 1) == 0)
    {
      if (*(v10 + 158))
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v15 = *(v10 + 488);
      v16 = *(*(v10 + 480) + 372);
      v17 = *(v10 + 860);
      if (v15)
      {
        LODWORD(v15) = *(v15 + 424);
      }

      identifier = "invalid";
      if (a2->identifier)
      {
        identifier = a2->identifier;
      }

LABEL_44:
      *buf = 136447746;
      *&buf[4] = "nw_protocol_http1_input_available";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v16;
      *&buf[38] = 1024;
      *&buf[40] = v17;
      *&buf[44] = 1024;
      *&buf[46] = v15;
      *&buf[50] = 2080;
      *&buf[52] = identifier;
      v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> ignoring input_available from %s";
      v23 = v14;
      v24 = 60;
LABEL_45:
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
      return;
    }

    if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v199 = __nwlog_obj();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
      {
        v200 = *(v10 + 488);
        v201 = *(*(v10 + 480) + 372);
        v202 = *(v10 + 860);
        if (v200)
        {
          LODWORD(v200) = *(v200 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v201;
        *&buf[38] = 1024;
        *&buf[40] = v202;
        *&buf[44] = 1024;
        *&buf[46] = v200;
        *&buf[50] = 2048;
        *&buf[52] = v10;
        _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called on idle server connection %p, triggering new flow", buf, 0x3Cu);
      }
    }

    if ((*(v7 + 376) & 1) == 0)
    {
      if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v25 = __nwlog_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(v7 + 372);
          *buf = 136446978;
          *&buf[4] = "nw_http1_new_flow_valid";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v26;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called when not in server mode, ignoring", buf, 0x26u);
        }
      }

      goto LABEL_250;
    }

    v27 = *(v7 + 328);
    if (!v27)
    {
      if (*(v10 + 158))
      {
        goto LABEL_250;
      }

      v29 = __nwlog_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_250;
      }

      v40 = *(v10 + 488);
      v41 = *(*(v10 + 480) + 372);
      v42 = *(v10 + 860);
      if (v40)
      {
        LODWORD(v40) = *(v40 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_new_flow_valid";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v41;
      *&buf[38] = 1024;
      *&buf[40] = v42;
      *&buf[44] = 1024;
      *&buf[46] = v40;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> called without listen handler, ignoring";
      goto LABEL_82;
    }

    v28 = *v27;
    if (v28 && *v28)
    {
      if ((*(v10 + 874) & 2) != 0 || (*(v10 + 872) & 0x14) != 0 && *(v10 + 616))
      {
        if (*(v10 + 158))
        {
          goto LABEL_250;
        }

        if (gLogDatapath != 1)
        {
          goto LABEL_250;
        }

        v29 = __nwlog_obj();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_250;
        }

        v30 = *(v10 + 488);
        v31 = *(*(v10 + 480) + 372);
        v32 = *(v10 + 860);
        if (v30)
        {
          LODWORD(v30) = *(v30 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_detect_next_request";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v31;
        *&buf[38] = 1024;
        *&buf[40] = v32;
        *&buf[44] = 1024;
        *&buf[46] = v30;
        v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> not attempting to read more on connection awaiting a new flow, awaiting disconnect or remove_input_handler";
        goto LABEL_82;
      }

      *v408 = 0;
      v409 = v408;
      if (nw_protocol_get_input_frames(*(v10 + 32), v10, 1, 0xFFFFFFFFLL, 1, v408))
      {
        if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v264 = __nwlog_obj();
          if (os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG))
          {
            v265 = *(v10 + 488);
            v266 = *(*(v10 + 480) + 372);
            v267 = *(v10 + 860);
            if (v265)
            {
              LODWORD(v265) = *(v265 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_detect_next_request";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v266;
            *&buf[38] = 1024;
            *&buf[40] = v267;
            *&buf[44] = 1024;
            *&buf[46] = v265;
            _os_log_impl(&dword_181A37000, v264, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> received a frame for non-idle connection, deferring new flow", buf, 0x32u);
          }
        }

        v44 = *v408;
        if (!*v408)
        {
          if (*(v10 + 158))
          {
            goto LABEL_249;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_249;
          }

          v81 = __nwlog_obj();
          if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_249;
          }

          v82 = *(v10 + 488);
          v83 = *(*(v10 + 480) + 372);
          v84 = *(v10 + 860);
          if (v82)
          {
            LODWORD(v82) = *(v82 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_move_frame_array_to_unprocessed_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v83;
          *&buf[38] = 1024;
          *&buf[40] = v84;
          *&buf[44] = 1024;
          *&buf[46] = v82;
          v85 = "%{public}s %{public}s%s<i%u:c%u:s%u> no additional body frames to move";
          v86 = v81;
          v87 = 50;
          goto LABEL_538;
        }

        if (gLogDatapath == 1)
        {
          v280 = __nwlog_obj();
          if (os_log_type_enabled(v280, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447746;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v44;
            *&buf[22] = 2048;
            *&buf[24] = v408;
            *&buf[32] = 2048;
            *&buf[34] = v10 + 616;
            *&buf[42] = 1024;
            *&buf[44] = 1;
            *&buf[48] = 1024;
            *&buf[50] = 1;
            *&buf[54] = 1024;
            *&buf[56] = 1;
            _os_log_impl(&dword_181A37000, v280, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
          }
        }

        v45 = 0;
        *v412 = 0;
        *&v412[8] = v412;
        *&v43 = 136447234;
        do
        {
          v46 = v44;
          v47 = v44 + 32;
          v44 = *(v44 + 32);
          if (!v44 && !*(v46 + 40))
          {
            v44 = 0;
          }

          if (gLogDatapath == 1)
          {
            v402 = v43;
            log = __nwlog_obj();
            v52 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
            v43 = v402;
            if (v52)
            {
              v53 = *(v46 + 52);
              if (v53)
              {
                v53 -= *(v46 + 56) + *(v46 + 60);
              }

              if (v44)
              {
                v54 = *(v44 + 52);
                if (v54)
                {
                  v54 -= *(v44 + 56) + *(v44 + 60);
                }
              }

              else
              {
                v54 = 0;
              }

              *buf = v402;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 1024;
              *&buf[24] = v53;
              *&buf[28] = 2048;
              *&buf[30] = v44;
              *&buf[38] = 1024;
              *&buf[40] = v54;
              _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
              v43 = v402;
            }
          }

          v48 = *(v46 + 32);
          v49 = *(v46 + 40);
          v50 = (v48 + 40);
          if (!v48)
          {
            v50 = &v409;
          }

          *v50 = v49;
          *v49 = v48;
          v51 = *&v412[8];
          *(v46 + 32) = 0;
          *(v46 + 40) = v51;
          *v51 = v46;
          *&v412[8] = v47;
          ++v45;
        }

        while (v44);
        if (!v45)
        {
          goto LABEL_248;
        }

        if (gLogDatapath == 1)
        {
          v406 = v43;
          v286 = __nwlog_obj();
          v287 = os_log_type_enabled(v286, OS_LOG_TYPE_DEBUG);
          v43 = v406;
          if (v287)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v45;
            _os_log_impl(&dword_181A37000, v286, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
            v43 = v406;
          }
        }

        v67 = *v412;
        v68 = v45;
        if (*v412)
        {
          v68 = v45;
          do
          {
            v69 = v67;
            v70 = (v67 + 32);
            v67 = *(v67 + 32);
            if (!v67 && !*(v69 + 40))
            {
              v67 = 0;
            }

            if (gLogDatapath == 1)
            {
              v404 = v43;
              logb = __nwlog_obj();
              v75 = os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG);
              v43 = v404;
              if (v75)
              {
                v76 = *(v69 + 52);
                if (v76)
                {
                  v76 -= *(v69 + 56) + *(v69 + 60);
                }

                if (v67)
                {
                  v77 = *(v67 + 52);
                  if (v77)
                  {
                    v77 -= *(v67 + 56) + *(v67 + 60);
                  }
                }

                else
                {
                  v77 = 0;
                }

                *buf = v404;
                *&buf[4] = "nw_http1_move_frame_array";
                *&buf[12] = 2048;
                *&buf[14] = v69;
                *&buf[22] = 1024;
                *&buf[24] = v76;
                *&buf[28] = 2048;
                *&buf[30] = v67;
                *&buf[38] = 1024;
                *&buf[40] = v77;
                _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
                v43 = v404;
              }
            }

            v71 = *(v69 + 32);
            v72 = *(v69 + 40);
            v73 = (v71 + 40);
            if (!v71)
            {
              v73 = &v412[8];
            }

            *v73 = v72;
            *v72 = v71;
            *v70 = 0;
            v70[1] = 0;
            v74 = *(v10 + 624);
            *(v69 + 40) = v74;
            *v74 = v69;
            *(v10 + 624) = v70;
            --v68;
          }

          while (v67);
          if (!v68)
          {
LABEL_248:
            if (gLogDatapath != 1)
            {
              goto LABEL_249;
            }

            v281 = __nwlog_obj();
            if (!os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_249;
            }

            *buf = 136446978;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v45;
            *&buf[18] = 2048;
            *&buf[20] = v408;
            *&buf[28] = 2048;
            *&buf[30] = v10 + 616;
            v85 = "%{public}s moved %u frames from %p to %p";
            v86 = v281;
            v87 = 38;
LABEL_538:
            _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, v85, buf, v87);
LABEL_249:
            *(v10 + 874) |= 2u;
            goto LABEL_250;
          }
        }

        v102 = __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v68;
        v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s failed to deliver all temp frames, remaining %u frames", buf, 18);
        type = OS_LOG_TYPE_ERROR;
        v410 = 0;
        if (__nwlog_fault(v103, &type, &v410))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v104 = __nwlog_obj();
            v105 = type;
            if (!os_log_type_enabled(v104, type))
            {
              goto LABEL_246;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            v106 = "%{public}s failed to deliver all temp frames, remaining %u frames";
            goto LABEL_245;
          }

          if (v410 != 1)
          {
            v104 = __nwlog_obj();
            v105 = type;
            if (!os_log_type_enabled(v104, type))
            {
              goto LABEL_246;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            v106 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
            goto LABEL_245;
          }

          v114 = __nw_create_backtrace_string();
          v104 = __nwlog_obj();
          v105 = type;
          v115 = os_log_type_enabled(v104, type);
          if (v114)
          {
            if (v115)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v68;
              *&buf[18] = 2082;
              *&buf[20] = v114;
              _os_log_impl(&dword_181A37000, v104, v105, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v114);
            goto LABEL_246;
          }

          if (v115)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            v106 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
LABEL_245:
            _os_log_impl(&dword_181A37000, v104, v105, v106, buf, 0x12u);
          }
        }

LABEL_246:
        if (v103)
        {
          free(v103);
        }

        goto LABEL_248;
      }

      if (*(v10 + 158))
      {
        goto LABEL_250;
      }

      if (gLogDatapath != 1)
      {
        goto LABEL_250;
      }

      v29 = __nwlog_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_250;
      }

      v78 = *(v10 + 488);
      v79 = *(*(v10 + 480) + 372);
      v80 = *(v10 + 860);
      if (v78)
      {
        LODWORD(v78) = *(v78 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_detect_next_request";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v79;
      *&buf[38] = 1024;
      *&buf[40] = v80;
      *&buf[44] = 1024;
      *&buf[46] = v78;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> read 0 frames on non-idle connection, not deferring new flow";
LABEL_82:
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, v33, buf, 0x32u);
      goto LABEL_250;
    }

    if ((*(v7 + 158) & 1) == 0)
    {
      v203 = __nwlog_obj();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
      {
        v204 = *(v7 + 372);
        *buf = 136446978;
        *&buf[4] = "nw_http1_new_flow_valid";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v204;
        _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
      }
    }

    if ((*(v10 + 872) & 0x100) != 0)
    {
      if (*(v10 + 158))
      {
        goto LABEL_250;
      }

      if (gLogDatapath != 1)
      {
        goto LABEL_250;
      }

      v29 = __nwlog_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_250;
      }

      v229 = *(v10 + 488);
      v230 = *(*(v10 + 480) + 372);
      v231 = *(v10 + 860);
      if (v229)
      {
        LODWORD(v229) = *(v229 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_close";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v230;
      *&buf[38] = 1024;
      *&buf[40] = v231;
      *&buf[44] = 1024;
      *&buf[46] = v229;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> already closed";
      goto LABEL_82;
    }

    *(v10 + 872) |= 0x100u;
    if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v350 = __nwlog_obj();
      if (os_log_type_enabled(v350, OS_LOG_TYPE_DEBUG))
      {
        v351 = *(v10 + 488);
        v352 = *(*(v10 + 480) + 372);
        v353 = *(v10 + 860);
        if (v351)
        {
          LODWORD(v351) = *(v351 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v352;
        *&buf[38] = 1024;
        *&buf[40] = v353;
        *&buf[44] = 1024;
        *&buf[46] = v351;
        _os_log_impl(&dword_181A37000, v350, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v205 = *(v10 + 480);
    if (!v205)
    {
      v345 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v346 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v345, 16, "%{public}s called with null http1", buf, 12);
      v412[0] = 16;
      v408[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v346, v412, v408))
      {
        goto LABEL_776;
      }

      if (v412[0] == 17)
      {
        v347 = __nwlog_obj();
        v348 = v412[0];
        if (!os_log_type_enabled(v347, v412[0]))
        {
          goto LABEL_776;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v349 = "%{public}s called with null http1";
      }

      else if (v408[0] == OS_LOG_TYPE_INFO)
      {
        v364 = __nw_create_backtrace_string();
        v347 = __nwlog_obj();
        v348 = v412[0];
        v365 = os_log_type_enabled(v347, v412[0]);
        if (v364)
        {
          if (v365)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v364;
            _os_log_impl(&dword_181A37000, v347, v348, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v364);
          goto LABEL_776;
        }

        if (!v365)
        {
          goto LABEL_776;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v349 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v347 = __nwlog_obj();
        v348 = v412[0];
        if (!os_log_type_enabled(v347, v412[0]))
        {
          goto LABEL_776;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v349 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v395 = buf;
LABEL_775:
      _os_log_impl(&dword_181A37000, v347, v348, v349, v395, 0xCu);
      goto LABEL_776;
    }

    if ((*(v10 + 872) & 0x800) != 0)
    {
      if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v252 = __nwlog_obj();
        if (os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG))
        {
          v253 = *(v10 + 488);
          v254 = *(*(v10 + 480) + 372);
          v255 = *(v10 + 860);
          if (v253)
          {
            LODWORD(v253) = *(v253 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v254;
          *&buf[38] = 1024;
          *&buf[40] = v255;
          *&buf[44] = 1024;
          *&buf[46] = v253;
          _os_log_impl(&dword_181A37000, v252, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_611;
    }

    *(v10 + 872) |= 0x800u;
    v206 = *(v205 + 368) + 1;
    *(v205 + 368) = v206;
    if (v206 == v206 << 31 >> 31)
    {
LABEL_606:
      if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v366 = __nwlog_obj();
        if (os_log_type_enabled(v366, OS_LOG_TYPE_DEBUG))
        {
          v367 = *(v10 + 488);
          v368 = *(*(v10 + 480) + 372);
          v369 = *(v10 + 860);
          if (v367)
          {
            LODWORD(v367) = *(v367 + 424);
          }

          v370 = *(v205 + 368) + *(v205 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v368;
          *&buf[38] = 1024;
          *&buf[40] = v369;
          *&buf[44] = 1024;
          *&buf[46] = v367;
          *&buf[50] = 1024;
          *&buf[52] = v370;
          _os_log_impl(&dword_181A37000, v366, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v317 = *(v10 + 496);
      if (!v317)
      {
        v363 = __nwlog_obj();
        *v412 = 136446210;
        *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        LODWORD(v397) = 12;
        v346 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v363, 16, "%{public}s called with null http1_connection->context", v412, v397);
        v408[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v346, v408, &type))
        {
          goto LABEL_776;
        }

        if (v408[0] == OS_LOG_TYPE_FAULT)
        {
          v347 = __nwlog_obj();
          v348 = v408[0];
          if (!os_log_type_enabled(v347, v408[0]))
          {
            goto LABEL_776;
          }

          *v412 = 136446210;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v349 = "%{public}s called with null http1_connection->context";
LABEL_774:
          v395 = v412;
          goto LABEL_775;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v347 = __nwlog_obj();
          v348 = v408[0];
          if (!os_log_type_enabled(v347, v408[0]))
          {
            goto LABEL_776;
          }

          *v412 = 136446210;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v349 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_774;
        }

        v383 = __nw_create_backtrace_string();
        v347 = __nwlog_obj();
        v348 = v408[0];
        v384 = os_log_type_enabled(v347, v408[0]);
        if (!v383)
        {
          if (!v384)
          {
            goto LABEL_776;
          }

          *v412 = 136446210;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v349 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_774;
        }

        if (v384)
        {
          *v412 = 136446466;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v412[12] = 2082;
          *&v412[14] = v383;
          v385 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_730:
          _os_log_impl(&dword_181A37000, v347, v348, v385, v412, 0x16u);
        }

LABEL_731:
        free(v383);
        if (!v346)
        {
LABEL_611:
          if (!*(v10 + 488))
          {
            v320 = *(v10 + 784);
            if (v320)
            {
              nw_queue_set_timer_values(v320, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
            }

            else
            {
              if ((*(v10 + 158) & 1) == 0)
              {
                v321 = __nwlog_obj();
                if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
                {
                  v322 = *(v10 + 488);
                  v323 = *(*(v10 + 480) + 372);
                  v324 = *(v10 + 860);
                  if (v322)
                  {
                    LODWORD(v322) = *(v322 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v10 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v323;
                  *&buf[38] = 1024;
                  *&buf[40] = v324;
                  *&buf[44] = 1024;
                  *&buf[46] = v322;
                  _os_log_impl(&dword_181A37000, v321, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                }
              }

              v325 = *(v10 + 608);
              v326 = *(v10 + 496);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A32780;
              *&buf[32] = v325;
              nw_queue_context_async(v326, buf);
            }
          }

LABEL_250:
          if ((*(v10 + 874) & 2) == 0)
          {
            return;
          }

          if ((*(v7 + 376) & 1) == 0)
          {
            if (*(v7 + 158))
            {
              return;
            }

            v12 = gLogDatapath;
            goto LABEL_254;
          }

          v144 = *(v7 + 328);
          if (!v144)
          {
            goto LABEL_277;
          }

          v145 = *v144;
          if (v145 && *v145)
          {
            if (*(v7 + 264))
            {
              v146 = _nw_parameters_copy();
              *(v7 + 224) = v10;
              if ((***(v7 + 328))(*(v7 + 328), *(v7 + 280), v146) && *(v10 + 488) && !*(v7 + 224))
              {
                if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v306 = __nwlog_obj();
                  if (os_log_type_enabled(v306, OS_LOG_TYPE_DEBUG))
                  {
                    v307 = *(v7 + 372);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_attempt_trigger_new_flow";
                    *&buf[12] = 2082;
                    *&buf[14] = v7 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v307;
                    _os_log_impl(&dword_181A37000, v306, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> sucessfully associated new flow stream with connection, awaiting connected", buf, 0x26u);
                  }
                }

                *(v10 + 874) &= ~2u;
                goto LABEL_359;
              }

              if ((*(v7 + 158) & 1) == 0)
              {
                v147 = __nwlog_obj();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                {
                  v148 = *(v7 + 372);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_attempt_trigger_new_flow";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v148;
                  *&buf[38] = 2048;
                  *&buf[40] = v10;
                  _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler didn't accept the new flow, closing connection %p", buf, 0x30u);
                }
              }

              if ((*(v10 + 872) & 0x100) != 0)
              {
                if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v164 = __nwlog_obj();
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
                  {
                    v165 = *(v10 + 488);
                    v166 = *(*(v10 + 480) + 372);
                    v167 = *(v10 + 860);
                    if (v165)
                    {
                      LODWORD(v165) = *(v165 + 424);
                    }

                    *buf = 136447490;
                    *&buf[4] = "nw_http1_connection_close";
                    *&buf[12] = 2082;
                    *&buf[14] = v10 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v166;
                    *&buf[38] = 1024;
                    *&buf[40] = v167;
                    *&buf[44] = 1024;
                    *&buf[46] = v165;
                    _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
                  }
                }

                goto LABEL_359;
              }

              *(v10 + 872) |= 0x100u;
              if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v273 = __nwlog_obj();
                if (os_log_type_enabled(v273, OS_LOG_TYPE_DEBUG))
                {
                  v274 = *(v10 + 488);
                  v275 = *(*(v10 + 480) + 372);
                  v276 = *(v10 + 860);
                  if (v274)
                  {
                    LODWORD(v274) = *(v274 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v10 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v275;
                  *&buf[38] = 1024;
                  *&buf[40] = v276;
                  *&buf[44] = 1024;
                  *&buf[46] = v274;
                  _os_log_impl(&dword_181A37000, v273, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
                }
              }

              v149 = *(v10 + 480);
              if (!v149)
              {
                v268 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                LODWORD(v397) = 12;
                v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v268, 16, "%{public}s called with null http1", buf, v397);
                v412[0] = 16;
                v408[0] = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v269, v412, v408))
                {
                  goto LABEL_667;
                }

                if (v412[0] == 17)
                {
                  v270 = __nwlog_obj();
                  v271 = v412[0];
                  if (!os_log_type_enabled(v270, v412[0]))
                  {
                    goto LABEL_667;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  v272 = "%{public}s called with null http1";
                }

                else if (v408[0] == OS_LOG_TYPE_INFO)
                {
                  v289 = __nw_create_backtrace_string();
                  v270 = __nwlog_obj();
                  v271 = v412[0];
                  v290 = os_log_type_enabled(v270, v412[0]);
                  if (v289)
                  {
                    if (v290)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                      *&buf[12] = 2082;
                      *&buf[14] = v289;
                      _os_log_impl(&dword_181A37000, v270, v271, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v289);
                    goto LABEL_667;
                  }

                  if (!v290)
                  {
                    goto LABEL_667;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  v272 = "%{public}s called with null http1, no backtrace";
                }

                else
                {
                  v270 = __nwlog_obj();
                  v271 = v412[0];
                  if (!os_log_type_enabled(v270, v412[0]))
                  {
                    goto LABEL_667;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  v272 = "%{public}s called with null http1, backtrace limit exceeded";
                }

                v327 = buf;
LABEL_666:
                _os_log_impl(&dword_181A37000, v270, v271, v272, v327, 0xCu);
                goto LABEL_667;
              }

              if ((*(v10 + 872) & 0x800) != 0)
              {
                if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v169 = __nwlog_obj();
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                  {
                    v170 = *(v10 + 488);
                    v171 = *(*(v10 + 480) + 372);
                    v172 = *(v10 + 860);
                    if (v170)
                    {
                      LODWORD(v170) = *(v170 + 424);
                    }

                    *buf = 136447490;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = v10 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v171;
                    *&buf[38] = 1024;
                    *&buf[40] = v172;
                    *&buf[44] = 1024;
                    *&buf[46] = v170;
                    _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
                  }
                }

                goto LABEL_350;
              }

              *(v10 + 872) |= 0x800u;
              v150 = *(v149 + 368) + 1;
              *(v149 + 368) = v150;
              if (v150 == v150 << 31 >> 31)
              {
LABEL_345:
                if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v291 = __nwlog_obj();
                  if (os_log_type_enabled(v291, OS_LOG_TYPE_DEBUG))
                  {
                    v292 = *(v10 + 488);
                    v293 = *(*(v10 + 480) + 372);
                    v294 = *(v10 + 860);
                    if (v292)
                    {
                      LODWORD(v292) = *(v292 + 424);
                    }

                    v295 = *(v149 + 368) + *(v149 + 364);
                    *buf = 136447746;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = v10 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v293;
                    *&buf[38] = 1024;
                    *&buf[40] = v294;
                    *&buf[44] = 1024;
                    *&buf[46] = v292;
                    *&buf[50] = 1024;
                    *&buf[52] = v295;
                    _os_log_impl(&dword_181A37000, v291, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
                  }
                }

                v185 = *(v10 + 496);
                if (!v185)
                {
                  v288 = __nwlog_obj();
                  *v412 = 136446210;
                  *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  LODWORD(v397) = 12;
                  v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v288, 16, "%{public}s called with null http1_connection->context", v412, v397);
                  v408[0] = OS_LOG_TYPE_ERROR;
                  type = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v269, v408, &type))
                  {
                    goto LABEL_667;
                  }

                  if (v408[0] == OS_LOG_TYPE_FAULT)
                  {
                    v270 = __nwlog_obj();
                    v271 = v408[0];
                    if (!os_log_type_enabled(v270, v408[0]))
                    {
                      goto LABEL_667;
                    }

                    *v412 = 136446210;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v272 = "%{public}s called with null http1_connection->context";
LABEL_665:
                    v327 = v412;
                    goto LABEL_666;
                  }

                  if (type != OS_LOG_TYPE_INFO)
                  {
                    v270 = __nwlog_obj();
                    v271 = v408[0];
                    if (!os_log_type_enabled(v270, v408[0]))
                    {
                      goto LABEL_667;
                    }

                    *v412 = 136446210;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v272 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
                    goto LABEL_665;
                  }

                  v308 = __nw_create_backtrace_string();
                  v270 = __nwlog_obj();
                  v271 = v408[0];
                  v309 = os_log_type_enabled(v270, v408[0]);
                  if (!v308)
                  {
                    if (!v309)
                    {
                      goto LABEL_667;
                    }

                    *v412 = 136446210;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v272 = "%{public}s called with null http1_connection->context, no backtrace";
                    goto LABEL_665;
                  }

                  if (v309)
                  {
                    *v412 = 136446466;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    *&v412[12] = 2082;
                    *&v412[14] = v308;
                    v310 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_591:
                    _os_log_impl(&dword_181A37000, v270, v271, v310, v412, 0x16u);
                  }

LABEL_592:
                  free(v308);
                  if (!v269)
                  {
LABEL_350:
                    if (!*(v10 + 488))
                    {
                      v188 = *(v10 + 784);
                      if (v188)
                      {
                        nw_queue_set_timer_values(v188, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                      }

                      else
                      {
                        if ((*(v10 + 158) & 1) == 0)
                        {
                          v189 = __nwlog_obj();
                          if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                          {
                            v190 = *(v10 + 488);
                            v191 = *(*(v10 + 480) + 372);
                            v192 = *(v10 + 860);
                            if (v190)
                            {
                              LODWORD(v190) = *(v190 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_close";
                            *&buf[12] = 2082;
                            *&buf[14] = v10 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v191;
                            *&buf[38] = 1024;
                            *&buf[40] = v192;
                            *&buf[44] = 1024;
                            *&buf[46] = v190;
                            _os_log_impl(&dword_181A37000, v189, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                          }
                        }

                        v193 = *(v10 + 608);
                        v194 = *(v10 + 496);
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 0x40000000;
                        *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                        *&buf[24] = &unk_1E6A32780;
                        *&buf[32] = v193;
                        nw_queue_context_async(v194, buf);
                      }
                    }

LABEL_359:
                    if (v146)
                    {
                      os_release(v146);
                    }

                    return;
                  }

LABEL_668:
                  free(v269);
                  goto LABEL_350;
                }

                v186 = *(v10 + 480);
                if (v186)
                {
                  v187 = *(v186 + 200);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
                  *&buf[24] = &unk_1E6A327A8;
                  *&buf[32] = v187;
                  nw_queue_context_async(v185, buf);
                  goto LABEL_350;
                }

                v296 = __nwlog_obj();
                *v412 = 136446210;
                *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                LODWORD(v397) = 12;
                v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v296, 16, "%{public}s called with null http1", v412, v397);
                v408[0] = OS_LOG_TYPE_ERROR;
                type = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v269, v408, &type))
                {
                  if (v408[0] == OS_LOG_TYPE_FAULT)
                  {
                    v270 = __nwlog_obj();
                    v271 = v408[0];
                    if (!os_log_type_enabled(v270, v408[0]))
                    {
                      goto LABEL_667;
                    }

                    *v412 = 136446210;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v272 = "%{public}s called with null http1";
                    goto LABEL_665;
                  }

                  if (type != OS_LOG_TYPE_INFO)
                  {
                    v270 = __nwlog_obj();
                    v271 = v408[0];
                    if (!os_log_type_enabled(v270, v408[0]))
                    {
                      goto LABEL_667;
                    }

                    *v412 = 136446210;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v272 = "%{public}s called with null http1, backtrace limit exceeded";
                    goto LABEL_665;
                  }

                  v308 = __nw_create_backtrace_string();
                  v270 = __nwlog_obj();
                  v271 = v408[0];
                  v311 = os_log_type_enabled(v270, v408[0]);
                  if (!v308)
                  {
                    if (!v311)
                    {
                      goto LABEL_667;
                    }

                    *v412 = 136446210;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v272 = "%{public}s called with null http1, no backtrace";
                    goto LABEL_665;
                  }

                  if (v311)
                  {
                    *v412 = 136446466;
                    *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                    *&v412[12] = 2082;
                    *&v412[14] = v308;
                    v310 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                    goto LABEL_591;
                  }

                  goto LABEL_592;
                }

LABEL_667:
                if (!v269)
                {
                  goto LABEL_350;
                }

                goto LABEL_668;
              }

              v151 = __nwlog_obj();
              v152 = *(v149 + 368);
              *buf = 136446978;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = "http1->nonresuable_connections";
              *&buf[22] = 2048;
              *&buf[24] = 1;
              *&buf[32] = 2048;
              *&buf[34] = v152;
              LODWORD(v397) = 42;
              v153 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v151, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v397);
              v412[0] = 16;
              v408[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v153, v412, v408))
              {
                if (v412[0] == 17)
                {
                  v154 = __nwlog_obj();
                  v155 = v412[0];
                  if (os_log_type_enabled(v154, v412[0]))
                  {
                    v156 = *(v149 + 368);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v156;
                    v157 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_341:
                    _os_log_impl(&dword_181A37000, v154, v155, v157, buf, 0x2Au);
                  }
                }

                else if (v408[0] == OS_LOG_TYPE_INFO)
                {
                  v173 = __nw_create_backtrace_string();
                  v154 = __nwlog_obj();
                  v155 = v412[0];
                  v174 = os_log_type_enabled(v154, v412[0]);
                  if (v173)
                  {
                    if (v174)
                    {
                      v175 = *(v149 + 368);
                      *buf = 136447234;
                      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                      *&buf[12] = 2082;
                      *&buf[14] = "http1->nonresuable_connections";
                      *&buf[22] = 2048;
                      *&buf[24] = 1;
                      *&buf[32] = 2048;
                      *&buf[34] = v175;
                      *&buf[42] = 2082;
                      *&buf[44] = v173;
                      _os_log_impl(&dword_181A37000, v154, v155, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v173);
                    goto LABEL_342;
                  }

                  if (v174)
                  {
                    v184 = *(v149 + 368);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v184;
                    v157 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_341;
                  }
                }

                else
                {
                  v154 = __nwlog_obj();
                  v155 = v412[0];
                  if (os_log_type_enabled(v154, v412[0]))
                  {
                    v176 = *(v149 + 368);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v176;
                    v157 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_341;
                  }
                }
              }

LABEL_342:
              if (v153)
              {
                free(v153);
              }

              *(v149 + 368) = -1;
              goto LABEL_345;
            }

            if ((*(v7 + 158) & 1) == 0)
            {
              v161 = __nwlog_obj();
              if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
              {
                v162 = *(v7 + 372);
                *buf = 136446978;
                *&buf[4] = "nw_http1_attempt_trigger_new_flow";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v162;
                _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> http1->parameters is NULL when opening responder stream", buf, 0x26u);
              }
            }

            v163 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_attempt_trigger_new_flow";
            LODWORD(v397) = 12;
            v128 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s http1->parameters is NULL when opening responder stream", buf, v397);
            v412[0] = 16;
            v408[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v128, v412, v408))
            {
              goto LABEL_487;
            }

            if (v412[0] == 17)
            {
              v129 = __nwlog_obj();
              v130 = v412[0];
              if (!os_log_type_enabled(v129, v412[0]))
              {
                goto LABEL_487;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_attempt_trigger_new_flow";
              v131 = "%{public}s http1->parameters is NULL when opening responder stream";
              goto LABEL_485;
            }

            if (v408[0] != OS_LOG_TYPE_INFO)
            {
              v129 = __nwlog_obj();
              v130 = v412[0];
              if (!os_log_type_enabled(v129, v412[0]))
              {
                goto LABEL_487;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_attempt_trigger_new_flow";
              v131 = "%{public}s http1->parameters is NULL when opening responder stream, backtrace limit exceeded";
              goto LABEL_485;
            }

            v139 = __nw_create_backtrace_string();
            v129 = __nwlog_obj();
            v130 = v412[0];
            v168 = os_log_type_enabled(v129, v412[0]);
            if (!v139)
            {
              if (!v168)
              {
                goto LABEL_487;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_attempt_trigger_new_flow";
              v131 = "%{public}s http1->parameters is NULL when opening responder stream, no backtrace";
              goto LABEL_485;
            }

            if (!v168)
            {
              goto LABEL_301;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http1_attempt_trigger_new_flow";
            *&buf[12] = 2082;
            *&buf[14] = v139;
            v141 = "%{public}s http1->parameters is NULL when opening responder stream, dumping backtrace:%{public}s";
LABEL_300:
            _os_log_impl(&dword_181A37000, v129, v130, v141, buf, 0x16u);
LABEL_301:
            free(v139);
            if (!v128)
            {
              return;
            }

            goto LABEL_488;
          }

          if ((*(v7 + 158) & 1) == 0)
          {
            v218 = __nwlog_obj();
            if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
            {
              v219 = *(v7 + 372);
              *buf = 136446978;
              *&buf[4] = "nw_http1_new_flow_valid";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v219;
              _os_log_impl(&dword_181A37000, v218, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
            }
          }

          if ((*(v10 + 872) & 0x100) != 0)
          {
            if (*(v10 + 158))
            {
              return;
            }

            v251 = gLogDatapath;
            goto LABEL_503;
          }

          *(v10 + 872) |= 0x100u;
          if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v359 = __nwlog_obj();
            if (os_log_type_enabled(v359, OS_LOG_TYPE_DEBUG))
            {
              v360 = *(v10 + 488);
              v361 = *(*(v10 + 480) + 372);
              v362 = *(v10 + 860);
              if (v360)
              {
                LODWORD(v360) = *(v360 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_close";
              *&buf[12] = 2082;
              *&buf[14] = v10 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v361;
              *&buf[38] = 1024;
              *&buf[40] = v362;
              *&buf[44] = 1024;
              *&buf[46] = v360;
              _os_log_impl(&dword_181A37000, v359, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
            }
          }

          v220 = *(v10 + 480);
          if (!v220)
          {
            v354 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            LODWORD(v397) = 12;
            v341 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v354, 16, "%{public}s called with null http1", buf, v397);
            v412[0] = 16;
            v408[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v341, v412, v408))
            {
              goto LABEL_784;
            }

            if (v412[0] == 17)
            {
LABEL_710:
              v342 = __nwlog_obj();
              v343 = v412[0];
              if (!os_log_type_enabled(v342, v412[0]))
              {
                goto LABEL_784;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              v344 = "%{public}s called with null http1";
LABEL_769:
              v396 = buf;
LABEL_783:
              _os_log_impl(&dword_181A37000, v342, v343, v344, v396, 0xCu);
              goto LABEL_784;
            }

            if (v408[0] == OS_LOG_TYPE_INFO)
            {
              v355 = __nw_create_backtrace_string();
              v342 = __nwlog_obj();
              v343 = v412[0];
              v356 = os_log_type_enabled(v342, v412[0]);
              if (v355)
              {
                if (!v356)
                {
                  goto LABEL_743;
                }

                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v355;
                v357 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                v358 = buf;
                goto LABEL_742;
              }

              goto LABEL_767;
            }

LABEL_750:
            v342 = __nwlog_obj();
            v343 = v412[0];
            if (!os_log_type_enabled(v342, v412[0]))
            {
              goto LABEL_784;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            v344 = "%{public}s called with null http1, backtrace limit exceeded";
            goto LABEL_769;
          }

          if ((*(v10 + 872) & 0x800) != 0)
          {
            if (*(v10 + 158))
            {
              goto LABEL_638;
            }

            v259 = gLogDatapath;
            goto LABEL_512;
          }

          *(v10 + 872) |= 0x800u;
          v221 = *(v220 + 368) + 1;
          *(v220 + 368) = v221;
          if (v221 == v221 << 31 >> 31)
          {
LABEL_633:
            if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v378 = __nwlog_obj();
              if (os_log_type_enabled(v378, OS_LOG_TYPE_DEBUG))
              {
                v379 = *(v10 + 488);
                v380 = *(*(v10 + 480) + 372);
                v381 = *(v10 + 860);
                if (v379)
                {
                  LODWORD(v379) = *(v379 + 424);
                }

                v382 = *(v220 + 368) + *(v220 + 364);
                *buf = 136447746;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v10 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v380;
                *&buf[38] = 1024;
                *&buf[40] = v381;
                *&buf[44] = 1024;
                *&buf[46] = v379;
                *&buf[50] = 1024;
                *&buf[52] = v382;
                _os_log_impl(&dword_181A37000, v378, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
              }
            }

            v329 = *(v10 + 496);
            if (v329)
            {
              v330 = *(v10 + 480);
              if (!v330)
              {
                goto LABEL_657;
              }

              goto LABEL_637;
            }

LABEL_704:
            v372 = __nwlog_obj();
            *v412 = 136446210;
            *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
            LODWORD(v397) = 12;
            v341 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v372, 16, "%{public}s called with null http1_connection->context", v412, v397);
            v408[0] = OS_LOG_TYPE_ERROR;
            type = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v341, v408, &type))
            {
              goto LABEL_784;
            }

            if (v408[0] == OS_LOG_TYPE_FAULT)
            {
              v342 = __nwlog_obj();
              v343 = v408[0];
              if (!os_log_type_enabled(v342, v408[0]))
              {
                goto LABEL_784;
              }

              *v412 = 136446210;
              *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              v344 = "%{public}s called with null http1_connection->context";
              goto LABEL_782;
            }

            if (type != OS_LOG_TYPE_INFO)
            {
              v342 = __nwlog_obj();
              v343 = v408[0];
              if (!os_log_type_enabled(v342, v408[0]))
              {
                goto LABEL_784;
              }

              *v412 = 136446210;
              *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              v344 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
              goto LABEL_782;
            }

            v355 = __nw_create_backtrace_string();
            v342 = __nwlog_obj();
            v343 = v408[0];
            v387 = os_log_type_enabled(v342, v408[0]);
            if (!v355)
            {
              if (!v387)
              {
                goto LABEL_784;
              }

              *v412 = 136446210;
              *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              v344 = "%{public}s called with null http1_connection->context, no backtrace";
              goto LABEL_782;
            }

            if (v387)
            {
              *v412 = 136446466;
              *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              *&v412[12] = 2082;
              *&v412[14] = v355;
              v357 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_741:
              v358 = v412;
LABEL_742:
              _os_log_impl(&dword_181A37000, v342, v343, v357, v358, 0x16u);
            }

LABEL_743:
            free(v355);
            if (!v341)
            {
LABEL_638:
              if (!*(v10 + 488))
              {
                v332 = *(v10 + 784);
                if (v332)
                {
                  nw_queue_set_timer_values(v332, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                }

                else
                {
                  if ((*(v10 + 158) & 1) == 0)
                  {
                    v333 = __nwlog_obj();
                    if (os_log_type_enabled(v333, OS_LOG_TYPE_ERROR))
                    {
                      v334 = *(v10 + 488);
                      v335 = *(*(v10 + 480) + 372);
                      v336 = *(v10 + 860);
                      if (v334)
                      {
                        LODWORD(v334) = *(v334 + 424);
                      }

                      *buf = 136447490;
                      *&buf[4] = "nw_http1_connection_close";
                      *&buf[12] = 2082;
                      *&buf[14] = v10 + 74;
                      *&buf[22] = 2080;
                      *&buf[24] = " ";
                      *&buf[32] = 1024;
                      *&buf[34] = v335;
                      *&buf[38] = 1024;
                      *&buf[40] = v336;
                      *&buf[44] = 1024;
                      *&buf[46] = v334;
                      _os_log_impl(&dword_181A37000, v333, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                    }
                  }

                  v337 = *(v10 + 608);
                  v338 = *(v10 + 496);
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                  *&buf[24] = &unk_1E6A32780;
                  *&buf[32] = v337;
                  nw_queue_context_async(v338, buf);
                }
              }

              return;
            }

LABEL_785:
            free(v341);
            goto LABEL_638;
          }

          v222 = __nwlog_obj();
          v223 = *(v220 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v223;
          LODWORD(v397) = 42;
          v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v222, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v397);
          v412[0] = 16;
          v408[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v224, v412, v408))
          {
            if (v412[0] == 17)
            {
              v225 = __nwlog_obj();
              v226 = v412[0];
              if (os_log_type_enabled(v225, v412[0]))
              {
                v227 = *(v220 + 368);
                *buf = 136446978;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v227;
                v228 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_629:
                _os_log_impl(&dword_181A37000, v225, v226, v228, buf, 0x2Au);
              }
            }

            else if (v408[0] == OS_LOG_TYPE_INFO)
            {
              v297 = __nw_create_backtrace_string();
              v225 = __nwlog_obj();
              v226 = v412[0];
              v298 = os_log_type_enabled(v225, v412[0]);
              if (v297)
              {
                if (v298)
                {
                  v299 = *(v220 + 368);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v299;
                  *&buf[42] = 2082;
                  *&buf[44] = v297;
                  _os_log_impl(&dword_181A37000, v225, v226, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v297);
                goto LABEL_630;
              }

              if (v298)
              {
                v328 = *(v220 + 368);
                *buf = 136446978;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v328;
                v228 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_629;
              }
            }

            else
            {
              v225 = __nwlog_obj();
              v226 = v412[0];
              if (os_log_type_enabled(v225, v412[0]))
              {
                v312 = *(v220 + 368);
                *buf = 136446978;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v312;
                v228 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_629;
              }
            }
          }

LABEL_630:
          if (v224)
          {
            free(v224);
          }

          *(v220 + 368) = -1;
          goto LABEL_633;
        }

LABEL_777:
        free(v346);
        goto LABEL_611;
      }

      v318 = *(v10 + 480);
      if (v318)
      {
        v319 = *(v318 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v319;
        nw_queue_context_async(v317, buf);
        goto LABEL_611;
      }

      v371 = __nwlog_obj();
      *v412 = 136446210;
      *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      LODWORD(v397) = 12;
      v346 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v371, 16, "%{public}s called with null http1", v412, v397);
      v408[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v346, v408, &type))
      {
        if (v408[0] == OS_LOG_TYPE_FAULT)
        {
          v347 = __nwlog_obj();
          v348 = v408[0];
          if (!os_log_type_enabled(v347, v408[0]))
          {
            goto LABEL_776;
          }

          *v412 = 136446210;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v349 = "%{public}s called with null http1";
          goto LABEL_774;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v347 = __nwlog_obj();
          v348 = v408[0];
          if (!os_log_type_enabled(v347, v408[0]))
          {
            goto LABEL_776;
          }

          *v412 = 136446210;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v349 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_774;
        }

        v383 = __nw_create_backtrace_string();
        v347 = __nwlog_obj();
        v348 = v408[0];
        v386 = os_log_type_enabled(v347, v408[0]);
        if (!v383)
        {
          if (!v386)
          {
            goto LABEL_776;
          }

          *v412 = 136446210;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v349 = "%{public}s called with null http1, no backtrace";
          goto LABEL_774;
        }

        if (v386)
        {
          *v412 = 136446466;
          *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v412[12] = 2082;
          *&v412[14] = v383;
          v385 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_730;
        }

        goto LABEL_731;
      }

LABEL_776:
      if (!v346)
      {
        goto LABEL_611;
      }

      goto LABEL_777;
    }

    v207 = __nwlog_obj();
    v208 = *(v205 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v208;
    v209 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v207, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    v412[0] = 16;
    v408[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v209, v412, v408))
    {
      if (v412[0] == 17)
      {
        v210 = __nwlog_obj();
        v211 = v412[0];
        if (os_log_type_enabled(v210, v412[0]))
        {
          v212 = *(v205 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v212;
          v213 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_602:
          _os_log_impl(&dword_181A37000, v210, v211, v213, buf, 0x2Au);
        }
      }

      else if (v408[0] == OS_LOG_TYPE_INFO)
      {
        v277 = __nw_create_backtrace_string();
        v210 = __nwlog_obj();
        v211 = v412[0];
        v278 = os_log_type_enabled(v210, v412[0]);
        if (v277)
        {
          if (v278)
          {
            v279 = *(v205 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v279;
            *&buf[42] = 2082;
            *&buf[44] = v277;
            _os_log_impl(&dword_181A37000, v210, v211, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v277);
          goto LABEL_603;
        }

        if (v278)
        {
          v316 = *(v205 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v316;
          v213 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_602;
        }
      }

      else
      {
        v210 = __nwlog_obj();
        v211 = v412[0];
        if (os_log_type_enabled(v210, v412[0]))
        {
          v300 = *(v205 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v300;
          v213 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_602;
        }
      }
    }

LABEL_603:
    if (v209)
    {
      free(v209);
    }

    *(v205 + 368) = -1;
    goto LABEL_606;
  }

  if ((*(v10 + 872) & 0x204) != 4)
  {
    v19 = *(v11 + 48);
    v20 = *(v10 + 488);

    nw_protocol_input_available(v19, v20);
    return;
  }

  if ((*(v7 + 376) & 1) == 0 || (*(v10 + 874) & 2) != 0)
  {
    if (*(v10 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v15 = *(v10 + 488);
    v16 = *(*(v10 + 480) + 372);
    v17 = *(v10 + 860);
    if (v15)
    {
      LODWORD(v15) = *(v15 + 424);
    }

    identifier = "invalid";
    if (a2->identifier)
    {
      identifier = a2->identifier;
    }

    goto LABEL_44;
  }

  if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v214 = __nwlog_obj();
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
    {
      v215 = *(v10 + 488);
      v216 = *(*(v10 + 480) + 372);
      v217 = *(v10 + 860);
      if (v215)
      {
        LODWORD(v215) = *(v215 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_protocol_http1_input_available";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v216;
      *&buf[38] = 1024;
      *&buf[40] = v217;
      *&buf[44] = 1024;
      *&buf[46] = v215;
      *&buf[50] = 2048;
      *&buf[52] = v10;
      _os_log_impl(&dword_181A37000, v214, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> active server connection %p got input_available after completing input, checking to defer new_flow", buf, 0x3Cu);
    }
  }

  if (*(v7 + 376))
  {
    v34 = *(v7 + 328);
    if (v34)
    {
      v35 = *v34;
      if (v35 && *v35)
      {
        if ((*(v10 + 874) & 2) != 0 || (*(v10 + 872) & 0x14) != 0 && *(v10 + 616))
        {
          if (*(v10 + 158))
          {
            return;
          }

          if (gLogDatapath != 1)
          {
            return;
          }

          v36 = __nwlog_obj();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          v37 = *(v10 + 488);
          v38 = *(*(v10 + 480) + 372);
          v39 = *(v10 + 860);
          if (v37)
          {
            LODWORD(v37) = *(v37 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_detect_next_request";
          *&buf[12] = 2082;
          *&buf[14] = v10 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v38;
          *&buf[38] = 1024;
          *&buf[40] = v39;
          *&buf[44] = 1024;
          *&buf[46] = v37;
          v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> not attempting to read more on connection awaiting a new flow, awaiting disconnect or remove_input_handler";
          goto LABEL_282;
        }

        *v408 = 0;
        v409 = v408;
        if (nw_protocol_get_input_frames(*(v10 + 32), v10, 1, 0xFFFFFFFFLL, 1, v408))
        {
          if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v282 = __nwlog_obj();
            if (os_log_type_enabled(v282, OS_LOG_TYPE_DEBUG))
            {
              v283 = *(v10 + 488);
              v284 = *(*(v10 + 480) + 372);
              v285 = *(v10 + 860);
              if (v283)
              {
                LODWORD(v283) = *(v283 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_detect_next_request";
              *&buf[12] = 2082;
              *&buf[14] = v10 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v284;
              *&buf[38] = 1024;
              *&buf[40] = v285;
              *&buf[44] = 1024;
              *&buf[46] = v283;
              _os_log_impl(&dword_181A37000, v282, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> received a frame for non-idle connection, deferring new flow", buf, 0x32u);
            }
          }

          v56 = *v408;
          if (!*v408)
          {
            if (*(v10 + 158))
            {
              goto LABEL_369;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_369;
            }

            v107 = __nwlog_obj();
            if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_369;
            }

            v108 = *(v10 + 488);
            v109 = *(*(v10 + 480) + 372);
            v110 = *(v10 + 860);
            if (v108)
            {
              LODWORD(v108) = *(v108 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_move_frame_array_to_unprocessed_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v109;
            *&buf[38] = 1024;
            *&buf[40] = v110;
            *&buf[44] = 1024;
            *&buf[46] = v108;
            v111 = "%{public}s %{public}s%s<i%u:c%u:s%u> no additional body frames to move";
            v112 = v107;
            v113 = 50;
            goto LABEL_578;
          }

          if (gLogDatapath == 1)
          {
            v304 = __nwlog_obj();
            if (os_log_type_enabled(v304, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447746;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 2048;
              *&buf[14] = v56;
              *&buf[22] = 2048;
              *&buf[24] = v408;
              *&buf[32] = 2048;
              *&buf[34] = v10 + 616;
              *&buf[42] = 1024;
              *&buf[44] = 1;
              *&buf[48] = 1024;
              *&buf[50] = 1;
              *&buf[54] = 1024;
              *&buf[56] = 1;
              _os_log_impl(&dword_181A37000, v304, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
            }
          }

          v57 = 0;
          *v412 = 0;
          *&v412[8] = v412;
          *&v55 = 136447234;
          do
          {
            v58 = v56;
            v59 = v56 + 32;
            v56 = *(v56 + 32);
            if (!v56 && !*(v58 + 40))
            {
              v56 = 0;
            }

            if (gLogDatapath == 1)
            {
              v403 = v55;
              loga = __nwlog_obj();
              v64 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
              v55 = v403;
              if (v64)
              {
                v65 = *(v58 + 52);
                if (v65)
                {
                  v65 -= *(v58 + 56) + *(v58 + 60);
                }

                if (v56)
                {
                  v66 = *(v56 + 52);
                  if (v66)
                  {
                    v66 -= *(v56 + 56) + *(v56 + 60);
                  }
                }

                else
                {
                  v66 = 0;
                }

                *buf = v403;
                *&buf[4] = "nw_http1_move_frame_array";
                *&buf[12] = 2048;
                *&buf[14] = v58;
                *&buf[22] = 1024;
                *&buf[24] = v65;
                *&buf[28] = 2048;
                *&buf[30] = v56;
                *&buf[38] = 1024;
                *&buf[40] = v66;
                _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
                v55 = v403;
              }
            }

            v60 = *(v58 + 32);
            v61 = *(v58 + 40);
            v62 = (v60 + 40);
            if (!v60)
            {
              v62 = &v409;
            }

            *v62 = v61;
            *v61 = v60;
            v63 = *&v412[8];
            *(v58 + 32) = 0;
            *(v58 + 40) = v63;
            *v63 = v58;
            *&v412[8] = v59;
            ++v57;
          }

          while (v56);
          if (!v57)
          {
            goto LABEL_368;
          }

          if (gLogDatapath == 1)
          {
            v407 = v55;
            v313 = __nwlog_obj();
            v314 = os_log_type_enabled(v313, OS_LOG_TYPE_DEBUG);
            v55 = v407;
            if (v314)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v57;
              _os_log_impl(&dword_181A37000, v313, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
              v55 = v407;
            }
          }

          v88 = *v412;
          v89 = v57;
          if (*v412)
          {
            v89 = v57;
            do
            {
              v90 = v88;
              v91 = (v88 + 32);
              v88 = *(v88 + 32);
              if (!v88 && !*(v90 + 40))
              {
                v88 = 0;
              }

              if (gLogDatapath == 1)
              {
                v405 = v55;
                logc = __nwlog_obj();
                v96 = os_log_type_enabled(logc, OS_LOG_TYPE_DEBUG);
                v55 = v405;
                if (v96)
                {
                  v97 = *(v90 + 52);
                  if (v97)
                  {
                    v97 -= *(v90 + 56) + *(v90 + 60);
                  }

                  if (v88)
                  {
                    v98 = *(v88 + 52);
                    if (v98)
                    {
                      v98 -= *(v88 + 56) + *(v88 + 60);
                    }
                  }

                  else
                  {
                    v98 = 0;
                  }

                  *buf = v405;
                  *&buf[4] = "nw_http1_move_frame_array";
                  *&buf[12] = 2048;
                  *&buf[14] = v90;
                  *&buf[22] = 1024;
                  *&buf[24] = v97;
                  *&buf[28] = 2048;
                  *&buf[30] = v88;
                  *&buf[38] = 1024;
                  *&buf[40] = v98;
                  _os_log_impl(&dword_181A37000, logc, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
                  v55 = v405;
                }
              }

              v92 = *(v90 + 32);
              v93 = *(v90 + 40);
              v94 = (v92 + 40);
              if (!v92)
              {
                v94 = &v412[8];
              }

              *v94 = v93;
              *v93 = v92;
              *v91 = 0;
              v91[1] = 0;
              v95 = *(v10 + 624);
              *(v90 + 40) = v95;
              *v95 = v90;
              *(v10 + 624) = v91;
              --v89;
            }

            while (v88);
            if (!v89)
            {
LABEL_368:
              if (gLogDatapath != 1)
              {
                goto LABEL_369;
              }

              v305 = __nwlog_obj();
              if (!os_log_type_enabled(v305, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_369;
              }

              *buf = 136446978;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v57;
              *&buf[18] = 2048;
              *&buf[20] = v408;
              *&buf[28] = 2048;
              *&buf[30] = v10 + 616;
              v111 = "%{public}s moved %u frames from %p to %p";
              v112 = v305;
              v113 = 38;
LABEL_578:
              _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, v111, buf, v113);
LABEL_369:
              *(v10 + 874) |= 2u;
              return;
            }
          }

          v116 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v89;
          v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v116, 16, "%{public}s failed to deliver all temp frames, remaining %u frames", buf, 18);
          type = OS_LOG_TYPE_ERROR;
          v410 = 0;
          if (__nwlog_fault(v117, &type, &v410))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v118 = __nwlog_obj();
              v119 = type;
              if (!os_log_type_enabled(v118, type))
              {
                goto LABEL_366;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v89;
              v120 = "%{public}s failed to deliver all temp frames, remaining %u frames";
              goto LABEL_365;
            }

            if (v410 != 1)
            {
              v118 = __nwlog_obj();
              v119 = type;
              if (!os_log_type_enabled(v118, type))
              {
                goto LABEL_366;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v89;
              v120 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
              goto LABEL_365;
            }

            v132 = __nw_create_backtrace_string();
            v118 = __nwlog_obj();
            v119 = type;
            v133 = os_log_type_enabled(v118, type);
            if (v132)
            {
              if (v133)
              {
                *buf = 136446722;
                *&buf[4] = "nw_http1_move_frame_array";
                *&buf[12] = 1024;
                *&buf[14] = v89;
                *&buf[18] = 2082;
                *&buf[20] = v132;
                _os_log_impl(&dword_181A37000, v118, v119, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v132);
              goto LABEL_366;
            }

            if (v133)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v89;
              v120 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
LABEL_365:
              _os_log_impl(&dword_181A37000, v118, v119, v120, buf, 0x12u);
            }
          }

LABEL_366:
          if (v117)
          {
            free(v117);
          }

          goto LABEL_368;
        }

        if (*(v10 + 158))
        {
          return;
        }

        if (gLogDatapath != 1)
        {
          return;
        }

        v36 = __nwlog_obj();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v99 = *(v10 + 488);
        v100 = *(*(v10 + 480) + 372);
        v101 = *(v10 + 860);
        if (v99)
        {
          LODWORD(v99) = *(v99 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_detect_next_request";
        *&buf[12] = 2082;
        *&buf[14] = v10 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v100;
        *&buf[38] = 1024;
        *&buf[40] = v101;
        *&buf[44] = 1024;
        *&buf[46] = v99;
        v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> read 0 frames on non-idle connection, not deferring new flow";
LABEL_282:
        v23 = v36;
        v24 = 50;
        goto LABEL_45;
      }

      if ((*(v7 + 158) & 1) == 0)
      {
        v232 = __nwlog_obj();
        if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
        {
          v233 = *(v7 + 372);
          *buf = 136446978;
          *&buf[4] = "nw_http1_new_flow_valid";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v233;
          _os_log_impl(&dword_181A37000, v232, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
        }
      }

      if ((*(v10 + 872) & 0x100) == 0)
      {
        *(v10 + 872) |= 0x100u;
        if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v374 = __nwlog_obj();
          if (os_log_type_enabled(v374, OS_LOG_TYPE_DEBUG))
          {
            v375 = *(v10 + 488);
            v376 = *(*(v10 + 480) + 372);
            v377 = *(v10 + 860);
            if (v375)
            {
              LODWORD(v375) = *(v375 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_close";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v376;
            *&buf[38] = 1024;
            *&buf[40] = v377;
            *&buf[44] = 1024;
            *&buf[46] = v375;
            _os_log_impl(&dword_181A37000, v374, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
          }
        }

        v234 = *(v10 + 480);
        if (v234)
        {
          if ((*(v10 + 872) & 0x800) == 0)
          {
            *(v10 + 872) |= 0x800u;
            v235 = *(v234 + 368) + 1;
            *(v234 + 368) = v235;
            if (v235 == v235 << 31 >> 31)
            {
              goto LABEL_653;
            }

            v236 = __nwlog_obj();
            v237 = *(v234 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v237;
            v238 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v236, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
            v412[0] = 16;
            v408[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v238, v412, v408))
            {
              if (v412[0] == 17)
              {
                v239 = __nwlog_obj();
                v240 = v412[0];
                if (os_log_type_enabled(v239, v412[0]))
                {
                  v241 = *(v234 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v241;
                  v242 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_649:
                  _os_log_impl(&dword_181A37000, v239, v240, v242, buf, 0x2Au);
                }
              }

              else if (v408[0] == OS_LOG_TYPE_INFO)
              {
                v301 = __nw_create_backtrace_string();
                v239 = __nwlog_obj();
                v240 = v412[0];
                v302 = os_log_type_enabled(v239, v412[0]);
                if (v301)
                {
                  if (v302)
                  {
                    v303 = *(v234 + 368);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->nonresuable_connections";
                    *&buf[22] = 2048;
                    *&buf[24] = 1;
                    *&buf[32] = 2048;
                    *&buf[34] = v303;
                    *&buf[42] = 2082;
                    *&buf[44] = v301;
                    _os_log_impl(&dword_181A37000, v239, v240, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v301);
                  goto LABEL_650;
                }

                if (v302)
                {
                  v339 = *(v234 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v339;
                  v242 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_649;
                }
              }

              else
              {
                v239 = __nwlog_obj();
                v240 = v412[0];
                if (os_log_type_enabled(v239, v412[0]))
                {
                  v315 = *(v234 + 368);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->nonresuable_connections";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v315;
                  v242 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_649;
                }
              }
            }

LABEL_650:
            if (v238)
            {
              free(v238);
            }

            *(v234 + 368) = -1;
LABEL_653:
            if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v390 = __nwlog_obj();
              if (os_log_type_enabled(v390, OS_LOG_TYPE_DEBUG))
              {
                v391 = *(v10 + 488);
                v392 = *(*(v10 + 480) + 372);
                v393 = *(v10 + 860);
                if (v391)
                {
                  LODWORD(v391) = *(v391 + 424);
                }

                v394 = *(v234 + 368) + *(v234 + 364);
                *buf = 136447746;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = v10 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v392;
                *&buf[38] = 1024;
                *&buf[40] = v393;
                *&buf[44] = 1024;
                *&buf[46] = v391;
                *&buf[50] = 1024;
                *&buf[52] = v394;
                _os_log_impl(&dword_181A37000, v390, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
              }
            }

            v329 = *(v10 + 496);
            if (v329)
            {
              v330 = *(v10 + 480);
              if (!v330)
              {
LABEL_657:
                v340 = __nwlog_obj();
                *v412 = 136446210;
                *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                LODWORD(v397) = 12;
                v341 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v340, 16, "%{public}s called with null http1", v412, v397);
                v408[0] = OS_LOG_TYPE_ERROR;
                type = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v341, v408, &type))
                {
                  goto LABEL_784;
                }

                if (v408[0] == OS_LOG_TYPE_FAULT)
                {
                  v342 = __nwlog_obj();
                  v343 = v408[0];
                  if (!os_log_type_enabled(v342, v408[0]))
                  {
                    goto LABEL_784;
                  }

                  *v412 = 136446210;
                  *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v344 = "%{public}s called with null http1";
LABEL_782:
                  v396 = v412;
                  goto LABEL_783;
                }

                if (type != OS_LOG_TYPE_INFO)
                {
                  v342 = __nwlog_obj();
                  v343 = v408[0];
                  if (!os_log_type_enabled(v342, v408[0]))
                  {
                    goto LABEL_784;
                  }

                  *v412 = 136446210;
                  *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v344 = "%{public}s called with null http1, backtrace limit exceeded";
                  goto LABEL_782;
                }

                v355 = __nw_create_backtrace_string();
                v342 = __nwlog_obj();
                v343 = v408[0];
                v388 = os_log_type_enabled(v342, v408[0]);
                if (!v355)
                {
                  if (!v388)
                  {
                    goto LABEL_784;
                  }

                  *v412 = 136446210;
                  *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v344 = "%{public}s called with null http1, no backtrace";
                  goto LABEL_782;
                }

                if (v388)
                {
                  *v412 = 136446466;
                  *&v412[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
                  *&v412[12] = 2082;
                  *&v412[14] = v355;
                  v357 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                  goto LABEL_741;
                }

                goto LABEL_743;
              }

LABEL_637:
              v331 = *(v330 + 200);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A327A8;
              *&buf[32] = v331;
              nw_queue_context_async(v329, buf);
              goto LABEL_638;
            }

            goto LABEL_704;
          }

          if (*(v10 + 158))
          {
            goto LABEL_638;
          }

          v259 = gLogDatapath;
LABEL_512:
          if (v259 == 1)
          {
            v260 = __nwlog_obj();
            if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
            {
              v261 = *(v10 + 488);
              v262 = *(*(v10 + 480) + 372);
              v263 = *(v10 + 860);
              if (v261)
              {
                LODWORD(v261) = *(v261 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = v10 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v262;
              *&buf[38] = 1024;
              *&buf[40] = v263;
              *&buf[44] = 1024;
              *&buf[46] = v261;
              _os_log_impl(&dword_181A37000, v260, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
            }
          }

          goto LABEL_638;
        }

        v373 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v341 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v373, 16, "%{public}s called with null http1", buf, 12);
        v412[0] = 16;
        v408[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v341, v412, v408))
        {
          goto LABEL_784;
        }

        if (v412[0] == 17)
        {
          goto LABEL_710;
        }

        if (v408[0] == OS_LOG_TYPE_INFO)
        {
          v389 = __nw_create_backtrace_string();
          v342 = __nwlog_obj();
          v343 = v412[0];
          v356 = os_log_type_enabled(v342, v412[0]);
          if (v389)
          {
            if (v356)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
              *&buf[12] = 2082;
              *&buf[14] = v389;
              _os_log_impl(&dword_181A37000, v342, v343, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v389);
LABEL_784:
            if (!v341)
            {
              goto LABEL_638;
            }

            goto LABEL_785;
          }

LABEL_767:
          if (!v356)
          {
            goto LABEL_784;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          v344 = "%{public}s called with null http1, no backtrace";
          goto LABEL_769;
        }

        goto LABEL_750;
      }

      if (*(v10 + 158))
      {
        return;
      }

      v251 = gLogDatapath;
LABEL_503:
      if (v251 != 1)
      {
        return;
      }

      v36 = __nwlog_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v256 = *(v10 + 488);
      v257 = *(*(v10 + 480) + 372);
      v258 = *(v10 + 860);
      if (v256)
      {
        LODWORD(v256) = *(v256 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_connection_close";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v257;
      *&buf[38] = 1024;
      *&buf[40] = v258;
      *&buf[44] = 1024;
      *&buf[46] = v256;
      v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> already closed";
      goto LABEL_282;
    }

LABEL_277:
    if (*(v10 + 158))
    {
      return;
    }

    v36 = __nwlog_obj();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v158 = *(v10 + 488);
    v159 = *(*(v10 + 480) + 372);
    v160 = *(v10 + 860);
    if (v158)
    {
      LODWORD(v158) = *(v158 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_new_flow_valid";
    *&buf[12] = 2082;
    *&buf[14] = v10 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v159;
    *&buf[38] = 1024;
    *&buf[40] = v160;
    *&buf[44] = 1024;
    *&buf[46] = v158;
    v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> called without listen handler, ignoring";
    goto LABEL_282;
  }

  if (*(v7 + 158))
  {
    return;
  }

  v12 = gLogDatapath;
LABEL_254:
  if (v12 == 1)
  {
    v142 = __nwlog_obj();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
    {
      v143 = *(v7 + 372);
      *buf = 136446978;
      *&buf[4] = "nw_http1_new_flow_valid";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v143;
      v22 = "%{public}s %{public}s%s<i%u> called when not in server mode, ignoring";
      v23 = v142;
      v24 = 38;
      goto LABEL_45;
    }
  }
}

uint64_t nw_protocol_http1_reset(nw_protocol *a1, nw_protocol *a2)
{
  v508 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v277 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v278 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v277, 16, "%{public}s called with null protocol", buf, 12);
    aBlock[0] = 16;
    v483[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v278, aBlock, v483))
    {
      goto LABEL_678;
    }

    if (aBlock[0] == 17)
    {
      v279 = __nwlog_obj();
      v280 = aBlock[0];
      if (!os_log_type_enabled(v279, aBlock[0]))
      {
        goto LABEL_678;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v281 = "%{public}s called with null protocol";
    }

    else
    {
      if (v483[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v279 = __nwlog_obj();
        v280 = aBlock[0];
        v297 = os_log_type_enabled(v279, aBlock[0]);
        if (!backtrace_string)
        {
          if (!v297)
          {
            goto LABEL_678;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v281 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_677;
        }

        if (v297)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v279, v280, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_678;
      }

      v279 = __nwlog_obj();
      v280 = aBlock[0];
      if (!os_log_type_enabled(v279, aBlock[0]))
      {
        goto LABEL_678;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v281 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_677:
    _os_log_impl(&dword_181A37000, v279, v280, v281, buf, 0xCu);
    goto LABEL_678;
  }

  handle = a1->handle;
  if (!handle)
  {
    v282 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v278 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v282, 16, "%{public}s called with null handle", buf, 12);
    aBlock[0] = 16;
    v483[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v278, aBlock, v483))
    {
      goto LABEL_678;
    }

    if (aBlock[0] == 17)
    {
      v279 = __nwlog_obj();
      v280 = aBlock[0];
      if (!os_log_type_enabled(v279, aBlock[0]))
      {
        goto LABEL_678;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v281 = "%{public}s called with null handle";
    }

    else
    {
      if (v483[0] == OS_LOG_TYPE_INFO)
      {
        v298 = __nw_create_backtrace_string();
        v279 = __nwlog_obj();
        v280 = aBlock[0];
        v299 = os_log_type_enabled(v279, aBlock[0]);
        if (!v298)
        {
          if (!v299)
          {
            goto LABEL_678;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v281 = "%{public}s called with null handle, no backtrace";
          goto LABEL_677;
        }

        if (v299)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v298;
          _os_log_impl(&dword_181A37000, v279, v280, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v298);
        if (!v278)
        {
LABEL_680:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_reset";
          LODWORD(v473) = 12;
          v284 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v473);
          aBlock[0] = 16;
          v483[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v284, aBlock, v483))
          {
            goto LABEL_711;
          }

          if (aBlock[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v285 = gLogObj;
            v286 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_711;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_reset";
            v287 = "%{public}s called with null http1";
          }

          else
          {
            if (v483[0] == OS_LOG_TYPE_INFO)
            {
              v419 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v420 = gLogObj;
              v421 = aBlock[0];
              v422 = os_log_type_enabled(gLogObj, aBlock[0]);
              if (v419)
              {
                if (v422)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_http1_reset";
                  *&buf[12] = 2082;
                  *&buf[14] = v419;
                  v423 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_705:
                  _os_log_impl(&dword_181A37000, v420, v421, v423, buf, 0x16u);
                }

LABEL_706:
                free(v419);
                goto LABEL_711;
              }

              if (!v422)
              {
                goto LABEL_711;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_reset";
              v287 = "%{public}s called with null http1, no backtrace";
LABEL_716:
              v425 = v420;
              v426 = v421;
              goto LABEL_710;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v285 = gLogObj;
            v286 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_711;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_reset";
            v287 = "%{public}s called with null http1, backtrace limit exceeded";
          }

LABEL_709:
          v425 = v285;
          v426 = v286;
LABEL_710:
          _os_log_impl(&dword_181A37000, v425, v426, v287, buf, 0xCu);
          goto LABEL_711;
        }

LABEL_679:
        free(v278);
        goto LABEL_680;
      }

      v279 = __nwlog_obj();
      v280 = aBlock[0];
      if (!os_log_type_enabled(v279, aBlock[0]))
      {
        goto LABEL_678;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v281 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    goto LABEL_677;
  }

  v4 = *(handle + 6);
  v5 = a1->handle;
  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_680;
    }

    v6 = *(handle + 2);
    if (v6)
    {
      v5 = (v6 + 480);
      goto LABEL_10;
    }

    v357 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v278 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v357, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    aBlock[0] = 16;
    v483[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v278, aBlock, v483))
    {
      if (aBlock[0] == 17)
      {
        v279 = __nwlog_obj();
        v280 = aBlock[0];
        if (!os_log_type_enabled(v279, aBlock[0]))
        {
          goto LABEL_678;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v281 = "%{public}s called with null handle->http1_connection";
        goto LABEL_677;
      }

      if (v483[0] != OS_LOG_TYPE_INFO)
      {
        v279 = __nwlog_obj();
        v280 = aBlock[0];
        if (!os_log_type_enabled(v279, aBlock[0]))
        {
          goto LABEL_678;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v281 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_677;
      }

      v385 = __nw_create_backtrace_string();
      v279 = __nwlog_obj();
      v280 = aBlock[0];
      v388 = os_log_type_enabled(v279, aBlock[0]);
      if (!v385)
      {
        if (!v388)
        {
          goto LABEL_678;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v281 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_677;
      }

      if (v388)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v385;
        v387 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_570;
      }

      goto LABEL_571;
    }

LABEL_678:
    if (!v278)
    {
      goto LABEL_680;
    }

    goto LABEL_679;
  }

  v7 = *(handle + 1);
  if (!v7)
  {
    v356 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v278 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v356, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    aBlock[0] = 16;
    v483[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v278, aBlock, v483))
    {
      goto LABEL_678;
    }

    if (aBlock[0] != 17)
    {
      if (v483[0] != OS_LOG_TYPE_INFO)
      {
        v279 = __nwlog_obj();
        v280 = aBlock[0];
        if (!os_log_type_enabled(v279, aBlock[0]))
        {
          goto LABEL_678;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v281 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_677;
      }

      v385 = __nw_create_backtrace_string();
      v279 = __nwlog_obj();
      v280 = aBlock[0];
      v386 = os_log_type_enabled(v279, aBlock[0]);
      if (!v385)
      {
        if (!v386)
        {
          goto LABEL_678;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v281 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_677;
      }

      if (v386)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v385;
        v387 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_570:
        _os_log_impl(&dword_181A37000, v279, v280, v387, buf, 0x16u);
      }

LABEL_571:
      free(v385);
      if (!v278)
      {
        goto LABEL_680;
      }

      goto LABEL_679;
    }

    v279 = __nwlog_obj();
    v280 = aBlock[0];
    if (!os_log_type_enabled(v279, aBlock[0]))
    {
      goto LABEL_678;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v281 = "%{public}s called with null handle->http1_stream";
    goto LABEL_677;
  }

  v5 = (v7 + 248);
LABEL_10:
  v8 = *v5;
  if (!*v5)
  {
    goto LABEL_680;
  }

  if (!a2)
  {
    v283 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_reset";
    v284 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v283, 16, "%{public}s called with null other_protocol", buf, 12);
    aBlock[0] = 16;
    v483[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v284, aBlock, v483))
    {
      goto LABEL_711;
    }

    if (aBlock[0] == 17)
    {
      v285 = __nwlog_obj();
      v286 = aBlock[0];
      if (!os_log_type_enabled(v285, aBlock[0]))
      {
        goto LABEL_711;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_reset";
      v287 = "%{public}s called with null other_protocol";
    }

    else if (v483[0] == OS_LOG_TYPE_INFO)
    {
      v338 = __nw_create_backtrace_string();
      v285 = __nwlog_obj();
      v286 = aBlock[0];
      v339 = os_log_type_enabled(v285, aBlock[0]);
      if (v338)
      {
        if (v339)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_reset";
          *&buf[12] = 2082;
          *&buf[14] = v338;
          _os_log_impl(&dword_181A37000, v285, v286, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v338);
        goto LABEL_711;
      }

      if (!v339)
      {
        goto LABEL_711;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_reset";
      v287 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v285 = __nwlog_obj();
      v286 = aBlock[0];
      if (!os_log_type_enabled(v285, aBlock[0]))
      {
        goto LABEL_711;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_reset";
      v287 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_709;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_697;
    }

    v9 = *(handle + 2);
    if (v9)
    {
      v10 = (v9 + 488);
      goto LABEL_17;
    }

    v358 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_stream_for_protocol";
    v359 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v358, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    aBlock[0] = 16;
    v483[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v359, aBlock, v483))
    {
      if (aBlock[0] == 17)
      {
        v360 = __nwlog_obj();
        v361 = aBlock[0];
        if (!os_log_type_enabled(v360, aBlock[0]))
        {
          goto LABEL_695;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        v362 = "%{public}s called with null handle->http1_connection";
        goto LABEL_694;
      }

      if (v483[0] != OS_LOG_TYPE_INFO)
      {
        v360 = __nwlog_obj();
        v361 = aBlock[0];
        if (!os_log_type_enabled(v360, aBlock[0]))
        {
          goto LABEL_695;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        v362 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_694;
      }

      v389 = __nw_create_backtrace_string();
      v360 = __nwlog_obj();
      v361 = aBlock[0];
      v390 = os_log_type_enabled(v360, aBlock[0]);
      if (v389)
      {
        if (v390)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v389;
          _os_log_impl(&dword_181A37000, v360, v361, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v389);
        goto LABEL_695;
      }

      if (v390)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        v362 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_694:
        _os_log_impl(&dword_181A37000, v360, v361, v362, buf, 0xCu);
      }
    }

LABEL_695:
    if (v359)
    {
      free(v359);
    }

    goto LABEL_697;
  }

  v10 = (handle + 8);
LABEL_17:
  v11 = *v10;
  if (*v10)
  {
    v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v305 = __nwlog_obj();
      if (os_log_type_enabled(v305, OS_LOG_TYPE_DEBUG))
      {
        v306 = *(v11 + 256);
        v307 = *(*(v11 + 248) + 372);
        if (v306)
        {
          LODWORD(v306) = *(v306 + 860);
        }

        v308 = *(v11 + 424);
        *buf = 136448002;
        *&buf[4] = "nw_protocol_http1_reset";
        *&buf[12] = 2082;
        *&buf[14] = v11 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v307;
        *&buf[38] = 1024;
        *&buf[40] = v306;
        *&buf[44] = 1024;
        *&buf[46] = v308;
        *&buf[50] = 2048;
        *&buf[52] = v11;
        *&buf[60] = 2048;
        *&buf[62] = a2;
        _os_log_impl(&dword_181A37000, v305, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream %p with replacement protocol: %p", buf, 0x46u);
      }
    }

    nw_protocol_set_output_handler(a2, 0);
    nw_protocol_set_input_handler(v11, 0);
    v13 = *(v11 + 336);
    if (v13)
    {
      v14 = os_retain(v13);
    }

    else
    {
      v14 = 0;
    }

    v481 = a2;
    v15 = *(v11 + 320);
    if (v15)
    {
      v16 = os_retain(v15);
    }

    else
    {
      v16 = 0;
    }

    v480 = v16;
    if ((*(v11 + 428) & 0x2000) == 0)
    {
LABEL_67:
      v41 = *(v11 + 256);
      v479 = v41;
      if (!v41)
      {
        goto LABEL_102;
      }

      if (*(v11 + 248))
      {
        if (*(v41 + 488) == v11)
        {
          if ((*(v11 + 158) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v48 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v49 = *(v11 + 256);
              v50 = *(*(v11 + 248) + 372);
              if (v49)
              {
                LODWORD(v49) = *(v49 + 860);
              }

              v51 = *(v11 + 424);
              *buf = 136448002;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v50;
              *&buf[38] = 1024;
              *&buf[40] = v49;
              *&buf[44] = 1024;
              *&buf[46] = v51;
              *&buf[50] = 2048;
              *&buf[52] = v11;
              *&buf[60] = 2048;
              *&buf[62] = v479;
              _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
            }
          }

          v52 = v479;
          v53 = (v479 + 632);
          if (gLogDatapath == 1)
          {
            v396 = __nwlog_obj();
            v397 = os_log_type_enabled(v396, OS_LOG_TYPE_DEBUG);
            v52 = v479;
            if (v397)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_finalize_temp_frame_array";
              _os_log_impl(&dword_181A37000, v396, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              v52 = v479;
            }
          }

          v54 = *v53;
          if (*v53)
          {
            *(v54 + 40) = aBlock;
            v55 = v52[80];
            *aBlock = v54;
            *&aBlock[8] = v55;
            v52[79] = 0;
            v52[80] = v53;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_21_49595;
            buf[32] = 0;
            do
            {
              v56 = *aBlock;
              if (!*aBlock)
              {
                break;
              }

              v57 = *(*aBlock + 32);
              v58 = *(*aBlock + 40);
              v59 = (v57 + 40);
              if (!v57)
              {
                v59 = &aBlock[8];
              }

              *v59 = v58;
              *v58 = v57;
              *(v56 + 32) = 0;
              *(v56 + 40) = 0;
            }

            while (((*&buf[16])(buf) & 1) != 0);
            v52 = v479;
          }

          *(v11 + 256) = 0;
          v52[61] = 0;
          nw_protocol_set_output_handler(v11, 0);
          nw_protocol_set_input_handler(v479, 0);
          goto LABEL_102;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v42 = *(v41 + 488);
        *buf = 136446978;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        *&buf[12] = 2048;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        *&buf[24] = v11;
        *&buf[32] = 2048;
        *&buf[34] = v42;
        LODWORD(v473) = 42;
        v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p does not already have stream %p, has %p", buf, v473);
        aBlock[0] = 16;
        v483[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v43, aBlock, v483))
        {
          goto LABEL_100;
        }

        if (aBlock[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          v45 = aBlock[0];
          if (!os_log_type_enabled(gLogObj, aBlock[0]))
          {
            goto LABEL_100;
          }

          v46 = *(v479 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v479;
          *&buf[22] = 2048;
          *&buf[24] = v11;
          *&buf[32] = 2048;
          *&buf[34] = v46;
          v47 = "%{public}s Connection %p does not already have stream %p, has %p";
          goto LABEL_98;
        }

        if (v483[0] != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          v45 = aBlock[0];
          if (!os_log_type_enabled(gLogObj, aBlock[0]))
          {
            goto LABEL_100;
          }

          v63 = *(v479 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v479;
          *&buf[22] = 2048;
          *&buf[24] = v11;
          *&buf[32] = 2048;
          *&buf[34] = v63;
          v47 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
          goto LABEL_98;
        }

        v60 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = aBlock[0];
        v61 = os_log_type_enabled(gLogObj, aBlock[0]);
        if (v60)
        {
          if (v61)
          {
            v62 = *(v479 + 488);
            *buf = 136447234;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            *&buf[12] = 2048;
            *&buf[14] = v479;
            *&buf[22] = 2048;
            *&buf[24] = v11;
            *&buf[32] = 2048;
            *&buf[34] = v62;
            *&buf[42] = 2082;
            *&buf[44] = v60;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v60);
          v16 = v480;
          if (v43)
          {
            goto LABEL_101;
          }

          goto LABEL_102;
        }

        v16 = v480;
        if (v61)
        {
          v64 = *(v479 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v479;
          *&buf[22] = 2048;
          *&buf[24] = v11;
          *&buf[32] = 2048;
          *&buf[34] = v64;
          v47 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
LABEL_98:
          v65 = v44;
          v66 = v45;
          v67 = 42;
LABEL_99:
          _os_log_impl(&dword_181A37000, v65, v66, v47, buf, v67);
        }

LABEL_100:
        if (v43)
        {
LABEL_101:
          free(v43);
        }

LABEL_102:
        if ((v8[158] & 1) == 0 && gLogDatapath == 1)
        {
          v309 = __nwlog_obj();
          if (os_log_type_enabled(v309, OS_LOG_TYPE_DEBUG))
          {
            v310 = *(v8 + 93);
            v311 = *(v11 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = v8 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v310;
            *&buf[38] = 1024;
            *&buf[40] = v311;
            *&buf[44] = 2048;
            *&buf[46] = v11;
            _os_log_impl(&dword_181A37000, v309, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
          }
        }

        v68 = *(v11 + 280);
        v69 = *(v11 + 288);
        v70 = v8 + 240;
        if (v68)
        {
          v70 = (v68 + 288);
        }

        *v70 = v69;
        *v69 = v68;
        *(v11 + 280) = 0;
        *(v11 + 288) = 0;
        v71 = *(v8 + 86);
        *(v8 + 86) = v71 - 1;
        if (v71)
        {
          if ((*(v11 + 428) & 0x10) == 0)
          {
            goto LABEL_142;
          }

          goto LABEL_125;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = *(v8 + 86);
        *buf = 136446978;
        *&buf[4] = "nw_http1_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = "http1->streams_count";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v72;
        LODWORD(v473) = 42;
        v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v473);
        aBlock[0] = 16;
        v483[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v73, aBlock, v483))
        {
          if (aBlock[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v74 = gLogObj;
            v75 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_122;
            }

            v76 = *(v8 + 86);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->streams_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v76;
            v77 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_120:
            v84 = v74;
            v85 = v75;
LABEL_121:
            _os_log_impl(&dword_181A37000, v84, v85, v77, buf, 0x2Au);
            goto LABEL_122;
          }

          if (v483[0] != OS_LOG_TYPE_INFO)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v74 = gLogObj;
            v75 = aBlock[0];
            if (!os_log_type_enabled(gLogObj, aBlock[0]))
            {
              goto LABEL_122;
            }

            v83 = *(v8 + 86);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->streams_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v83;
            v77 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_120;
          }

          v78 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v79 = gLogObj;
          v80 = aBlock[0];
          v81 = os_log_type_enabled(gLogObj, aBlock[0]);
          if (v78)
          {
            if (v81)
            {
              v82 = *(v8 + 86);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->streams_count";
              *&buf[22] = 2048;
              *&buf[24] = 1;
              *&buf[32] = 2048;
              *&buf[34] = v82;
              *&buf[42] = 2082;
              *&buf[44] = v78;
              _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v78);
          }

          else if (v81)
          {
            v229 = *(v8 + 86);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->streams_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v229;
            v77 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            v84 = v79;
            v85 = v80;
            goto LABEL_121;
          }
        }

LABEL_122:
        if (v73)
        {
          free(v73);
        }

        *(v8 + 86) = 0;
        v16 = v480;
        v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if ((*(v11 + 428) & 0x10) == 0)
        {
LABEL_142:
          if ((*(v11 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
          {
            v312 = __nwlog_obj();
            if (os_log_type_enabled(v312, OS_LOG_TYPE_DEBUG))
            {
              v313 = *(v11 + 256);
              v314 = *(*(v11 + 248) + 372);
              if (v313)
              {
                LODWORD(v313) = *(v313 + 860);
              }

              v315 = *(v11 + 424);
              v316 = *(v8 + 86);
              *buf = 136448258;
              *&buf[4] = "nw_http1_remove_stream";
              *&buf[12] = 2082;
              *&buf[14] = v11 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v314;
              *&buf[38] = 1024;
              *&buf[40] = v313;
              *&buf[44] = 1024;
              *&buf[46] = v315;
              *&buf[50] = 1024;
              *&buf[52] = v315;
              *&buf[56] = 2048;
              *&buf[58] = v11;
              *&buf[66] = 1024;
              *&buf[68] = v316;
              _os_log_impl(&dword_181A37000, v312, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed stream %u (%p), now have %u streams", buf, 0x48u);
            }
          }

          if (v14)
          {
            if (v16)
            {
              v101 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x23DFB97CuLL);
              v102 = v101;
              if (v101)
              {
                v101[25] = 0u;
                v101[26] = 0u;
                v101[23] = 0u;
                v101[24] = 0u;
                v101[21] = 0u;
                v101[22] = 0u;
                v101[19] = 0u;
                v101[20] = 0u;
                v101[17] = 0u;
                v101[18] = 0u;
                v101[15] = 0u;
                v101[16] = 0u;
                v101[13] = 0u;
                v101[14] = 0u;
                v101[11] = 0u;
                v101[12] = 0u;
                v101[9] = 0u;
                v101[10] = 0u;
                v101[7] = 0u;
                v101[8] = 0u;
                v101[5] = 0u;
                v101[6] = 0u;
                v101[3] = 0u;
                v101[4] = 0u;
                v101[1] = 0u;
                v101[2] = 0u;
                *v101 = 0u;
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v103 = gLogObj;
                v104 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_create";
                v105 = 2;
                if (v104)
                {
                  v106 = 3;
                }

                else
                {
                  v106 = 2;
                }

                *&buf[12] = 2048;
                *&buf[14] = 1;
                *&buf[22] = 2048;
                *&buf[24] = 432;
                LODWORD(v473) = 32;
                v107 = _os_log_send_and_compose_impl(v106, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v473);
                if (__nwlog_should_abort(v107) || ((free(v107), MEMORY[0x1A0] = 0u, MEMORY[0x190] = 0u, MEMORY[0x180] = 0u, MEMORY[0x170] = 0u, MEMORY[0x160] = 0u, MEMORY[0x150] = 0u, MEMORY[0x140] = 0u, MEMORY[0x130] = 0u, MEMORY[0x120] = 0u, MEMORY[0x110] = 0u, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0xA0] = 0u, MEMORY[0] = 0u, MEMORY[0xA8] = 0, MEMORY[0xB0] = 0, MEMORY[0xB8] = 0, MEMORY[0xC8] = 0, MEMORY[0xD1] = 0, MEMORY[0x108] = 0, MEMORY[0x140] = 0, MEMORY[0x148] = 0, MEMORY[0x150] = 0, MEMORY[0x158] = 0, MEMORY[0x160] = 0, MEMORY[0x168] = 0, MEMORY[0x170] = 0, MEMORY[0x178] = 0, MEMORY[0x180] = 0, MEMORY[0x188] = 0, MEMORY[0x190] = 0, MEMORY[0x198] = 0, MEMORY[0x1A0] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v108 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v109 = 2) : (v109 = 3), *buf = 136446210, *&buf[4] = "nw_http1_stream_create", LODWORD(v474) = 12, v107 = _os_log_send_and_compose_impl(v109, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s strict_placement_new(nw_http1_stream, strict_calloc(1, sizeof(nw_http1_stream)),) failed", buf, v474), __nwlog_should_abort(v107)))
                {
                  __break(1u);
                  goto LABEL_785;
                }

                free(v107);
                v16 = v480;
                v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              }

              *(v102 + 16) = *(v8 + 2);
              if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
              {
                dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
              }

              *(v102 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
              *(v102 + 240) = 2;
              *(v102 + 224) = v102;
              *(v102 + 40) = v102 + 216;
              *(v102 + 248) = v8;
              nw_protocol_set_input_handler(v102, v481);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              *&buf[24] = v102;
              *aBlock = MEMORY[0x1E69E9820];
              *&aBlock[8] = 0x40000000;
              *&aBlock[16] = ___ZL22nw_http1_stream_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
              v506 = &unk_1E6A32A48;
              *v507 = buf;
              *(v102 + 312) = _Block_copy(aBlock);
              _Block_object_dispose(buf, 8);
              v110 = os_retain(v14);
              v111 = *(v102 + 344);
              if ((v111 & 1) != 0 && *(v102 + 336))
              {
                v112 = v110;
                os_release(*(v102 + 336));
                v110 = v112;
                v111 = *(v102 + 344);
              }

              *(v102 + 336) = v110;
              *(v102 + 344) = v111 | 1;
              v113 = os_retain(v16);
              v114 = *(v102 + 328);
              if ((v114 & 1) != 0 && *(v102 + 320))
              {
                v115 = v113;
                os_release(*(v102 + 320));
                v113 = v115;
                v114 = *(v102 + 328);
              }

              *(v102 + 320) = v113;
              *(v102 + 328) = v114 | 1;
              if ((*(v102 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
              {
                v327 = __nwlog_obj();
                if (os_log_type_enabled(v327, OS_LOG_TYPE_DEBUG))
                {
                  v328 = *(v102 + 256);
                  v329 = *(*(v102 + 248) + 372);
                  if (v328)
                  {
                    LODWORD(v328) = *(v328 + 860);
                  }

                  v330 = *(v102 + 424);
                  *buf = 136447746;
                  *&buf[4] = "nw_http1_stream_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v102 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v329;
                  *&buf[38] = 1024;
                  *&buf[40] = v328;
                  *&buf[44] = 1024;
                  *&buf[46] = v330;
                  *&buf[50] = 2048;
                  *&buf[52] = v102;
                  _os_log_impl(&dword_181A37000, v327, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                }
              }

              v116 = _nw_parameters_copy_context();
              v117 = *(v102 + 272);
              if ((v117 & 1) != 0 && *(v102 + 264))
              {
                v118 = v116;
                os_release(*(v102 + 264));
                v116 = v118;
                v117 = *(v102 + 272);
              }

              *(v102 + 264) = v116;
              *(v102 + 272) = v117 | 1;
              v119 = _nw_http_parsed_fields_create();
              v120 = *(v102 + 408);
              if ((v120 & 1) != 0 && *(v102 + 400))
              {
                v121 = v119;
                os_release(*(v102 + 400));
                v119 = v121;
                v120 = *(v102 + 408);
              }

              *(v102 + 400) = v119;
              *(v102 + 408) = v120 | 1;
              *(v102 + 208) = v8[376] & 1;
              v122 = v16;
              v123 = _nw_parameters_copy_protocol_options_with_level();

              if (!v123 || (singleton = nw_http_messaging_options_copy_transaction_metadata(v123)) == 0)
              {
                if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
                {
                  dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
                }

                singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_http_transaction_definition_definition);
              }

              v125 = *(v102 + 360);
              if ((v125 & 1) != 0 && *(v102 + 352))
              {
                v126 = singleton;
                os_release(*(v102 + 352));
                singleton = v126;
                v125 = *(v102 + 360);
              }

              *(v102 + 352) = singleton;
              *(v102 + 360) = v125 | 1;
              if (v123)
              {
                os_release(v123);
              }

              v127 = v122;
              v128 = _nw_parameters_copy_protocol_options_with_level();

              if (v128)
              {
                if ((*(v102 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v343 = __nwlog_obj();
                  if (os_log_type_enabled(v343, OS_LOG_TYPE_DEBUG))
                  {
                    v344 = *(v102 + 256);
                    v345 = *(*(v102 + 248) + 372);
                    if (v344)
                    {
                      LODWORD(v344) = *(v344 + 860);
                    }

                    v346 = *(v102 + 424);
                    *buf = 136448770;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    *&buf[12] = 2082;
                    *&buf[14] = v102 + 74;
                    *&buf[22] = 2080;
                    *&buf[24] = " ";
                    *&buf[32] = 1024;
                    *&buf[34] = v345;
                    *&buf[38] = 1024;
                    *&buf[40] = v344;
                    *&buf[44] = 1024;
                    *&buf[46] = v346;
                    *&buf[50] = 2048;
                    *&buf[52] = v102;
                    *&buf[60] = 2048;
                    *&buf[62] = v8;
                    *&buf[70] = 2048;
                    *&buf[72] = v11;
                    *v502 = 2048;
                    *&v502[2] = v127;
                    v503 = 2048;
                    v504 = v128;
                    _os_log_impl(&dword_181A37000, v343, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                  }
                }

                if (nw_protocol_copy_http1_definition_onceToken != -1)
                {
                  dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
                }

                v129 = nw_protocol_copy_http1_definition_http1_definition;
                v130 = v128;
                _nw_protocol_options_set_instance(v130, v8);

                if (v129)
                {
                  os_release(v129);
                }

                os_release(v130);
              }

              nw_protocol_set_input_handler(v102, v481);
              *v102 = *v481->flow_id;
              nw_protocol_set_output_handler(v481, v102);
              v131 = *(v102 + 320);
              if (v131)
              {
                v478 = v14;
                v132 = v131;
                v133 = _nw_parameters_copy_protocol_options_with_level();

                v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (v133)
                {
                  if ((*(v102 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v347 = __nwlog_obj();
                    if (os_log_type_enabled(v347, OS_LOG_TYPE_DEBUG))
                    {
                      v348 = *(v102 + 256);
                      v349 = *(*(v102 + 248) + 372);
                      if (v348)
                      {
                        LODWORD(v348) = *(v348 + 860);
                      }

                      v350 = *(v102 + 424);
                      *buf = 136448770;
                      *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                      *&buf[12] = 2082;
                      *&buf[14] = v102 + 74;
                      *&buf[22] = 2080;
                      *&buf[24] = " ";
                      *&buf[32] = 1024;
                      *&buf[34] = v349;
                      *&buf[38] = 1024;
                      *&buf[40] = v348;
                      *&buf[44] = 1024;
                      *&buf[46] = v350;
                      *&buf[50] = 2048;
                      *&buf[52] = v102;
                      *&buf[60] = 2048;
                      *&buf[62] = v102;
                      *&buf[70] = 2048;
                      *&buf[72] = v8;
                      *v502 = 2048;
                      *&v502[2] = v132;
                      v503 = 2048;
                      v504 = v133;
                      _os_log_impl(&dword_181A37000, v347, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                    }
                  }

                  if (nw_protocol_copy_http1_definition_onceToken != -1)
                  {
                    dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
                  }

                  v134 = nw_protocol_copy_http1_definition_http1_definition;
                  v135 = v133;
                  _nw_protocol_options_set_instance(v135, v102);

                  if (v134)
                  {
                    os_release(v134);
                  }

                  os_release(v135);
                }

                v136 = nw_parameters_copy_default_protocol_stack(*(v102 + 320));
                v492[0] = 0;
                v492[1] = v492;
                v492[2] = 0x2000000000;
                v493 = 0;
                *v496 = 0;
                *&v496[8] = v496;
                *&v496[16] = 0x3802000000;
                v497 = __Block_byref_object_copy__42960;
                v498 = __Block_byref_object_dispose__42961;
                object = 0;
                v500 |= 1u;
                iterate_block[0] = MEMORY[0x1E69E9820];
                iterate_block[1] = 0x40000000;
                iterate_block[2] = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke;
                iterate_block[3] = &unk_1E6A32A70;
                iterate_block[4] = v492;
                iterate_block[5] = v496;
                iterate_block[6] = v102;
                nw_protocol_stack_iterate_application_protocols(v136, iterate_block);
                v137 = *(v102 + 320);
                if (*(*&v496[8] + 40))
                {
                  v138 = _nw_parameters_shallow_copy(v137, 1);
                  v139 = *(v102 + 328);
                  v16 = v480;
                  if ((v139 & 1) == 0)
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  has_transforms = nw_parameters_has_transforms(v137);
                  v141 = *(v102 + 320);
                  v16 = v480;
                  if (has_transforms)
                  {
                    *v483 = MEMORY[0x1E69E9820];
                    v484 = 0x40000000;
                    v485 = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_2;
                    v486 = &unk_1E6A32AC0;
                    v487 = v496;
                    v488 = v492;
                    v489 = v102;
                    v490 = v8;
                    nw_parameters_enumerate_transformed_parameters(v141, v483);
                    v138 = *(v102 + 320);
                    goto LABEL_209;
                  }

                  v138 = _nw_parameters_shallow_copy(v141, 1);
                  v139 = *(v102 + 328);
                  if ((v139 & 1) == 0)
                  {
LABEL_208:
                    *(v102 + 320) = v138;
                    *(v102 + 328) = v139 | 1;
LABEL_209:
                    *v502 = 0;
                    memset(buf, 0, sizeof(buf));
                    v143 = nw_parameters_copy_protocol_options_legacy(v138, v102);
                    v144 = v143;
                    if (v143)
                    {
                      v145 = v143;
                      _nw_protocol_options_get_log_id_str(v145, buf);
                    }

                    else if ((*(v102 + 158) & 1) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v146 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                      {
                        v147 = *(v102 + 256);
                        v148 = *(*(v102 + 248) + 372);
                        if (v147)
                        {
                          LODWORD(v147) = *(v147 + 860);
                        }

                        v149 = *(v102 + 424);
                        *aBlock = 136448002;
                        *&aBlock[4] = "nw_http1_stream_add_input_handler";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v102 + 74;
                        *&aBlock[22] = 2080;
                        v506 = " ";
                        *v507 = 1024;
                        *&v507[2] = v148;
                        *&v507[6] = 1024;
                        *&v507[8] = v147;
                        *&v507[12] = 1024;
                        *&v507[14] = v149;
                        *&v507[18] = 2048;
                        *&v507[20] = v102;
                        *&v507[28] = 2048;
                        *&v507[30] = v132;
                        _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Failed to access options for protocol %p, parameters %p", aBlock, 0x46u);
                      }
                    }

                    if ((v8[158] & 1) == 0 && gLogDatapath == 1)
                    {
                      v331 = __nwlog_obj();
                      if (os_log_type_enabled(v331, OS_LOG_TYPE_DEBUG))
                      {
                        v332 = *(v8 + 93);
                        *aBlock = 136447234;
                        *&aBlock[4] = "nw_http1_add_stream";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v8 + 74;
                        *&aBlock[22] = 2080;
                        v506 = " ";
                        *v507 = 1024;
                        *&v507[2] = v332;
                        *&v507[6] = 2048;
                        *&v507[8] = v102;
                        _os_log_impl(&dword_181A37000, v331, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", aBlock, 0x30u);
                      }
                    }

                    *(v102 + 280) = 0;
                    v150 = *(v8 + 30);
                    *(v102 + 288) = v150;
                    *v150 = v102;
                    *(v8 + 30) = v102 + 280;
                    v151 = *(v8 + 86) + 1;
                    *(v8 + 86) = v151;
                    v477 = v136;
                    if (v151 == v151 << 31 >> 31)
                    {
LABEL_236:
                      v163 = *(v8 + 89) + 1;
                      *(v8 + 89) = v163;
                      if (v163 == v163 << 31 >> 31)
                      {
                        goto LABEL_254;
                      }

                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v164 = *(v8 + 89);
                      *aBlock = 136446978;
                      *&aBlock[4] = "nw_http1_add_stream";
                      *&aBlock[12] = 2082;
                      *&aBlock[14] = "http1->next_stream_log_num";
                      *&aBlock[22] = 2048;
                      v506 = 1;
                      *v507 = 2048;
                      *&v507[2] = v164;
                      LODWORD(v473) = 42;
                      v165 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", aBlock, v473);
                      type = OS_LOG_TYPE_ERROR;
                      v494 = 0;
                      if (__nwlog_fault(v165, &type, &v494))
                      {
                        if (type == OS_LOG_TYPE_FAULT)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v166 = gLogObj;
                          v167 = type;
                          if (os_log_type_enabled(gLogObj, type))
                          {
                            v168 = *(v8 + 89);
                            *aBlock = 136446978;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->next_stream_log_num";
                            *&aBlock[22] = 2048;
                            v506 = 1;
                            *v507 = 2048;
                            *&v507[2] = v168;
                            v169 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_250:
                            _os_log_impl(&dword_181A37000, v166, v167, v169, aBlock, 0x2Au);
                          }
                        }

                        else if (v494 == 1)
                        {
                          v170 = __nw_create_backtrace_string();
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v166 = gLogObj;
                          v167 = type;
                          v171 = os_log_type_enabled(gLogObj, type);
                          if (v170)
                          {
                            if (v171)
                            {
                              v172 = *(v8 + 89);
                              *aBlock = 136447234;
                              *&aBlock[4] = "nw_http1_add_stream";
                              *&aBlock[12] = 2082;
                              *&aBlock[14] = "http1->next_stream_log_num";
                              *&aBlock[22] = 2048;
                              v506 = 1;
                              *v507 = 2048;
                              *&v507[2] = v172;
                              *&v507[10] = 2082;
                              *&v507[12] = v170;
                              _os_log_impl(&dword_181A37000, v166, v167, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                            }

                            free(v170);
                            v16 = v480;
                            goto LABEL_251;
                          }

                          v16 = v480;
                          if (v171)
                          {
                            v174 = *(v8 + 89);
                            *aBlock = 136446978;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->next_stream_log_num";
                            *&aBlock[22] = 2048;
                            v506 = 1;
                            *v507 = 2048;
                            *&v507[2] = v174;
                            v169 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_250;
                          }
                        }

                        else
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v166 = gLogObj;
                          v167 = type;
                          if (os_log_type_enabled(gLogObj, type))
                          {
                            v173 = *(v8 + 89);
                            *aBlock = 136446978;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->next_stream_log_num";
                            *&aBlock[22] = 2048;
                            v506 = 1;
                            *v507 = 2048;
                            *&v507[2] = v173;
                            v169 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_250;
                          }
                        }
                      }

LABEL_251:
                      if (v165)
                      {
                        free(v165);
                      }

                      LODWORD(v163) = -1;
                      *(v8 + 89) = -1;
                      v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                      v136 = v477;
LABEL_254:
                      *(v102 + 424) = v163;
                      if ((*(v102 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
                      {
                        v333 = __nwlog_obj();
                        if (os_log_type_enabled(v333, OS_LOG_TYPE_DEBUG))
                        {
                          v334 = *(v102 + 256);
                          v335 = *(*(v102 + 248) + 372);
                          if (v334)
                          {
                            LODWORD(v334) = *(v334 + 860);
                          }

                          v336 = *(v102 + 424);
                          v337 = *(v8 + 86);
                          *aBlock = 136448258;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = v102 + 74;
                          *&aBlock[22] = 2080;
                          v506 = " ";
                          *v507 = 1024;
                          *&v507[2] = v335;
                          *&v507[6] = 1024;
                          *&v507[8] = v334;
                          *&v507[12] = 1024;
                          *&v507[14] = v336;
                          *&v507[18] = 1024;
                          *&v507[20] = v336;
                          *&v507[24] = 2048;
                          *&v507[26] = v102;
                          *&v507[34] = 1024;
                          *&v507[36] = v337;
                          _os_log_impl(&dword_181A37000, v333, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added stream %u (%p), now have %u streams", aBlock, 0x48u);
                        }
                      }

                      nw_protocol_plugin_name_set_name(v102 + 64, v102, v132);
                      if (buf[0])
                      {
                        v14 = v478;
                        if (v8[158])
                        {
                          goto LABEL_264;
                        }

                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v175 = gLogObj;
                        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_264;
                        }

                        v176 = *(v8 + 93);
                        v177 = *(v8 + 86);
                        *aBlock = 136447746;
                        *&aBlock[4] = "nw_http1_stream_add_input_handler";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v8 + 74;
                        *&aBlock[22] = 2080;
                        v506 = " ";
                        *v507 = 1024;
                        *&v507[2] = v176;
                        *&v507[6] = 2048;
                        *&v507[8] = v481;
                        *&v507[16] = 2082;
                        *&v507[18] = buf;
                        *&v507[26] = 1024;
                        *&v507[28] = v177;
                        v178 = "%{public}s %{public}s%s<i%u> added input handler %p from %{public}s, now have %u input handlers";
                        v179 = v175;
                        v180 = 64;
                      }

                      else
                      {
                        v14 = v478;
                        if (v8[158])
                        {
                          goto LABEL_264;
                        }

                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v181 = gLogObj;
                        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_264;
                        }

                        v182 = *(v8 + 93);
                        v183 = *(v8 + 86);
                        *aBlock = 136447490;
                        *&aBlock[4] = "nw_http1_stream_add_input_handler";
                        *&aBlock[12] = 2082;
                        *&aBlock[14] = v8 + 74;
                        *&aBlock[22] = 2080;
                        v506 = " ";
                        *v507 = 1024;
                        *&v507[2] = v182;
                        *&v507[6] = 2048;
                        *&v507[8] = v481;
                        *&v507[16] = 1024;
                        *&v507[18] = v183;
                        v178 = "%{public}s %{public}s%s<i%u> added input handler %p, now have %u input handlers";
                        v179 = v181;
                        v180 = 54;
                      }

                      _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEFAULT, v178, aBlock, v180);
LABEL_264:
                      if (v144)
                      {
                        os_release(v144);
                      }

                      _Block_object_dispose(v496, 8);
                      if ((v500 & 1) != 0 && object)
                      {
                        os_release(object);
                      }

                      _Block_object_dispose(v492, 8);
                      if (!v136)
                      {
LABEL_272:
                        if (*(v11 + 158))
                        {
                          goto LABEL_274;
                        }

                        goto LABEL_273;
                      }

                      os_release(v136);
LABEL_271:
                      LODWORD(v136) = 0;
                      goto LABEL_272;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v152 = *(v8 + 86);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->streams_count";
                    *&aBlock[22] = 2048;
                    v506 = 1;
                    *v507 = 2048;
                    *&v507[2] = v152;
                    LODWORD(v473) = 42;
                    v153 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", aBlock, v473);
                    type = OS_LOG_TYPE_ERROR;
                    v494 = 0;
                    if (__nwlog_fault(v153, &type, &v494))
                    {
                      if (type == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v154 = gLogObj;
                        v155 = type;
                        if (os_log_type_enabled(gLogObj, type))
                        {
                          v156 = *(v8 + 86);
                          *aBlock = 136446978;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = "http1->streams_count";
                          *&aBlock[22] = 2048;
                          v506 = 1;
                          *v507 = 2048;
                          *&v507[2] = v156;
                          v157 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_232:
                          _os_log_impl(&dword_181A37000, v154, v155, v157, aBlock, 0x2Au);
                        }
                      }

                      else if (v494 == 1)
                      {
                        v158 = __nw_create_backtrace_string();
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v154 = gLogObj;
                        v155 = type;
                        v159 = os_log_type_enabled(gLogObj, type);
                        if (v158)
                        {
                          if (v159)
                          {
                            v160 = *(v8 + 86);
                            *aBlock = 136447234;
                            *&aBlock[4] = "nw_http1_add_stream";
                            *&aBlock[12] = 2082;
                            *&aBlock[14] = "http1->streams_count";
                            *&aBlock[22] = 2048;
                            v506 = 1;
                            *v507 = 2048;
                            *&v507[2] = v160;
                            *&v507[10] = 2082;
                            *&v507[12] = v158;
                            _os_log_impl(&dword_181A37000, v154, v155, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                          }

                          free(v158);
                          v16 = v480;
                          goto LABEL_233;
                        }

                        v16 = v480;
                        if (v159)
                        {
                          v162 = *(v8 + 86);
                          *aBlock = 136446978;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = "http1->streams_count";
                          *&aBlock[22] = 2048;
                          v506 = 1;
                          *v507 = 2048;
                          *&v507[2] = v162;
                          v157 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                          goto LABEL_232;
                        }
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v154 = gLogObj;
                        v155 = type;
                        if (os_log_type_enabled(gLogObj, type))
                        {
                          v161 = *(v8 + 86);
                          *aBlock = 136446978;
                          *&aBlock[4] = "nw_http1_add_stream";
                          *&aBlock[12] = 2082;
                          *&aBlock[14] = "http1->streams_count";
                          *&aBlock[22] = 2048;
                          v506 = 1;
                          *v507 = 2048;
                          *&v507[2] = v161;
                          v157 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                          goto LABEL_232;
                        }
                      }
                    }

LABEL_233:
                    if (v153)
                    {
                      free(v153);
                    }

                    *(v8 + 86) = -1;
                    v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                    v136 = v477;
                    goto LABEL_236;
                  }
                }

                if (*(v102 + 320))
                {
                  v142 = v138;
                  os_release(*(v102 + 320));
                  v138 = v142;
                  v139 = *(v102 + 328);
                }

                goto LABEL_208;
              }

              v322 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              LODWORD(v473) = 12;
              v323 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v322, 16, "%{public}s called with null http1_stream->parameters", buf, v473);
              aBlock[0] = 16;
              v496[0] = 0;
              v16 = v480;
              v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (__nwlog_fault(v323, aBlock, v496))
              {
                if (aBlock[0] == 17)
                {
                  v324 = __nwlog_obj();
                  v325 = aBlock[0];
                  if (!os_log_type_enabled(v324, aBlock[0]))
                  {
                    goto LABEL_657;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_add_input_handler";
                  v326 = "%{public}s called with null http1_stream->parameters";
                  goto LABEL_656;
                }

                if (v496[0] != 1)
                {
                  v324 = __nwlog_obj();
                  v325 = aBlock[0];
                  if (!os_log_type_enabled(v324, aBlock[0]))
                  {
                    goto LABEL_657;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_add_input_handler";
                  v326 = "%{public}s called with null http1_stream->parameters, backtrace limit exceeded";
                  goto LABEL_656;
                }

                v370 = __nw_create_backtrace_string();
                v324 = __nwlog_obj();
                v325 = aBlock[0];
                v371 = os_log_type_enabled(v324, aBlock[0]);
                if (v370)
                {
                  if (v371)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v370;
                    _os_log_impl(&dword_181A37000, v324, v325, "%{public}s called with null http1_stream->parameters, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v370);
                  v16 = v480;
                  goto LABEL_657;
                }

                v16 = v480;
                if (v371)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_add_input_handler";
                  v326 = "%{public}s called with null http1_stream->parameters, no backtrace";
LABEL_656:
                  _os_log_impl(&dword_181A37000, v324, v325, v326, buf, 0xCu);
                }
              }

LABEL_657:
              if (v323)
              {
                free(v323);
              }

              goto LABEL_271;
            }

            v317 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_create";
            LODWORD(v473) = 12;
            v301 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v317, 16, "%{public}s called with null parameters", buf, v473);
            v483[0] = OS_LOG_TYPE_ERROR;
            v496[0] = 0;
            if (__nwlog_fault(v301, v483, v496))
            {
              if (v483[0] == OS_LOG_TYPE_FAULT)
              {
                v302 = __nwlog_obj();
                v303 = v483[0];
                if (!os_log_type_enabled(v302, v483[0]))
                {
                  goto LABEL_618;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_create";
                v304 = "%{public}s called with null parameters";
                goto LABEL_617;
              }

              if (v496[0] != 1)
              {
                v302 = __nwlog_obj();
                v303 = v483[0];
                if (!os_log_type_enabled(v302, v483[0]))
                {
                  goto LABEL_618;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_create";
                v304 = "%{public}s called with null parameters, backtrace limit exceeded";
                goto LABEL_617;
              }

              v368 = __nw_create_backtrace_string();
              v302 = __nwlog_obj();
              v303 = v483[0];
              v369 = os_log_type_enabled(v302, v483[0]);
              if (v368)
              {
                if (v369)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v368;
                  _os_log_impl(&dword_181A37000, v302, v303, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v368);
                v16 = v480;
                v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (!v301)
                {
LABEL_620:
                  v400 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                  LODWORD(v475) = 12;
                  v401 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v400, 16, "%{public}s called with null http1_stream", buf, v475);
                  aBlock[0] = 16;
                  v483[0] = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v401, aBlock, v483))
                  {
                    goto LABEL_634;
                  }

                  if (aBlock[0] == 17)
                  {
                    v402 = __nwlog_obj();
                    v403 = aBlock[0];
                    if (!os_log_type_enabled(v402, aBlock[0]))
                    {
                      goto LABEL_634;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    v404 = "%{public}s called with null http1_stream";
                  }

                  else if (v483[0] == OS_LOG_TYPE_INFO)
                  {
                    v405 = __nw_create_backtrace_string();
                    v402 = __nwlog_obj();
                    v403 = aBlock[0];
                    v406 = os_log_type_enabled(v402, aBlock[0]);
                    if (v405)
                    {
                      if (v406)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                        *&buf[12] = 2082;
                        *&buf[14] = v405;
                        _os_log_impl(&dword_181A37000, v402, v403, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v405);
                      v16 = v480;
LABEL_634:
                      if (v401)
                      {
                        free(v401);
                      }

                      v407 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_stream_add_input_handler";
                      LODWORD(v476) = 12;
                      v408 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v407, 16, "%{public}s called with null http1_stream", buf, v476);
                      aBlock[0] = 16;
                      v496[0] = 0;
                      if (__nwlog_fault(v408, aBlock, v496))
                      {
                        if (aBlock[0] == 17)
                        {
                          v409 = __nwlog_obj();
                          v410 = aBlock[0];
                          if (!os_log_type_enabled(v409, aBlock[0]))
                          {
                            goto LABEL_650;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          v411 = "%{public}s called with null http1_stream";
LABEL_649:
                          _os_log_impl(&dword_181A37000, v409, v410, v411, buf, 0xCu);
                          goto LABEL_650;
                        }

                        if (v496[0] != 1)
                        {
                          v409 = __nwlog_obj();
                          v410 = aBlock[0];
                          if (!os_log_type_enabled(v409, aBlock[0]))
                          {
                            goto LABEL_650;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          v411 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                          goto LABEL_649;
                        }

                        v412 = __nw_create_backtrace_string();
                        v409 = __nwlog_obj();
                        v410 = aBlock[0];
                        v413 = os_log_type_enabled(v409, aBlock[0]);
                        if (!v412)
                        {
                          v16 = v480;
                          if (!v413)
                          {
                            goto LABEL_650;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          v411 = "%{public}s called with null http1_stream, no backtrace";
                          goto LABEL_649;
                        }

                        if (v413)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_stream_add_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v412;
                          _os_log_impl(&dword_181A37000, v409, v410, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v412);
                        v16 = v480;
                      }

LABEL_650:
                      if (v408)
                      {
                        free(v408);
                      }

                      v102 = 0;
                      LODWORD(v136) = 1;
                      if (*(v11 + 158))
                      {
LABEL_274:
                        if (*(v11 + 428) < 0)
                        {
                          nw_http_transaction_metadata_set_event_handler(*(v11 + 352), 0);
                          v184 = *(v11 + 344);
                          if ((v184 & 1) == 0)
                          {
                            goto LABEL_280;
                          }
                        }

                        else
                        {
                          v184 = *(v11 + 344);
                          if ((v184 & 1) == 0)
                          {
                            goto LABEL_280;
                          }
                        }

                        v185 = *(v11 + 336);
                        if (v185)
                        {
                          os_release(v185);
                          v184 = *(v11 + 344);
                        }

LABEL_280:
                        *(v11 + 336) = 0;
                        *(v11 + 344) = v184 | 1;
                        v186 = *(v11 + 328);
                        if (v186)
                        {
                          v187 = *(v11 + 320);
                          if (v187)
                          {
                            os_release(v187);
                            v186 = *(v11 + 328);
                          }
                        }

                        *(v11 + 320) = 0;
                        *(v11 + 328) = v186 | 1;
                        v188 = *(v11 + 376);
                        if (v188)
                        {
                          v189 = *(v11 + 368);
                          if (v189)
                          {
                            os_release(v189);
                            v188 = *(v11 + 376);
                          }
                        }

                        *(v11 + 368) = 0;
                        *(v11 + 376) = v188 | 1;
                        v190 = *(v11 + 392);
                        if (v190)
                        {
                          v191 = *(v11 + 384);
                          if (v191)
                          {
                            os_release(v191);
                            v190 = *(v11 + 392);
                          }
                        }

                        *(v11 + 384) = 0;
                        *(v11 + 392) = v190 | 1;
                        v192 = *(v11 + 256);
                        if (v192 && *(v192 + 488) == v11)
                        {
                          *(v192 + 488) = 0;
                        }

                        *(v11 + 256) = 0;
                        (*(*(v11 + 312) + 16))();
                        v193 = *(v11 + 312);
                        if (v193)
                        {
                          _Block_release(v193);
                          *(v11 + 312) = 0;
                        }

                        nw_http1_stream::~nw_http1_stream(v11);
                        free(v194);
                        v195 = v479;
                        if (!v479)
                        {
                          goto LABEL_342;
                        }

                        v196 = *(v479 + 488);
                        if (!v196 || (*(v196 + 428) & 0x4000) != 0)
                        {
                          v202 = *(v479 + 872);
                          if ((v202 & 4) == 0)
                          {
                            if (*(v479 + 158))
                            {
                              goto LABEL_341;
                            }

                            if (BYTE1(v12[82].isa) != 1)
                            {
                              goto LABEL_341;
                            }

                            v203 = __nwlog_obj();
                            v204 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                            v195 = v479;
                            if (!v204)
                            {
                              goto LABEL_341;
                            }

                            v205 = *(v479 + 488);
                            v206 = *(*(v479 + 480) + 372);
                            v207 = *(v479 + 860);
                            if (v205)
                            {
                              LODWORD(v205) = *(v205 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v479 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v206;
                            *&buf[38] = 1024;
                            *&buf[40] = v207;
                            *&buf[44] = 1024;
                            *&buf[46] = v205;
                            v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the message is not complete";
                            goto LABEL_663;
                          }

                          if ((v202 & 0x20) == 0)
                          {
                            if (*(v479 + 158))
                            {
                              goto LABEL_341;
                            }

                            if (BYTE1(v12[82].isa) != 1)
                            {
                              goto LABEL_341;
                            }

                            v203 = __nwlog_obj();
                            v209 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                            v195 = v479;
                            if (!v209)
                            {
                              goto LABEL_341;
                            }

                            v210 = *(v479 + 488);
                            v211 = *(*(v479 + 480) + 372);
                            v212 = *(v479 + 860);
                            if (v210)
                            {
                              LODWORD(v210) = *(v210 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v479 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v211;
                            *&buf[38] = 1024;
                            *&buf[40] = v212;
                            *&buf[44] = 1024;
                            *&buf[46] = v210;
                            v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the outbound message is not complete";
                            goto LABEL_663;
                          }

                          if ((v202 & 8) == 0)
                          {
                            if (*(v479 + 158))
                            {
                              goto LABEL_341;
                            }

                            if (BYTE1(v12[82].isa) != 1)
                            {
                              goto LABEL_341;
                            }

                            v203 = __nwlog_obj();
                            v213 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                            v195 = v479;
                            if (!v213)
                            {
                              goto LABEL_341;
                            }

                            v214 = *(v479 + 488);
                            v215 = *(*(v479 + 480) + 372);
                            v216 = *(v479 + 860);
                            if (v214)
                            {
                              LODWORD(v214) = *(v214 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v479 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v215;
                            *&buf[38] = 1024;
                            *&buf[40] = v216;
                            *&buf[44] = 1024;
                            *&buf[46] = v214;
                            v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because keep alive is false";
                            goto LABEL_663;
                          }
                        }

                        else if ((*(v479 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
                        {
                          v197 = __nwlog_obj();
                          v198 = os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (v198)
                          {
                            v199 = *(v479 + 488);
                            v200 = *(*(v479 + 480) + 372);
                            v201 = *(v479 + 860);
                            if (v199)
                            {
                              LODWORD(v199) = *(v199 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v479 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v200;
                            *&buf[38] = 1024;
                            *&buf[40] = v201;
                            *&buf[44] = 1024;
                            *&buf[46] = v199;
                            _os_log_impl(&dword_181A37000, v197, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection may be reusable because the current stream didn't use it", buf, 0x32u);
                            v16 = v480;
                            v195 = v479;
                            v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          }
                        }

                        if ((*(*(v195 + 480) + 376) & 0x10) != 0)
                        {
                          if (*(v195 + 158))
                          {
                            goto LABEL_341;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_341;
                          }

                          v203 = __nwlog_obj();
                          v222 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v222)
                          {
                            goto LABEL_341;
                          }

                          v223 = *(v479 + 488);
                          v224 = *(*(v479 + 480) + 372);
                          v225 = *(v479 + 860);
                          if (v223)
                          {
                            LODWORD(v223) = *(v223 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v224;
                          *&buf[38] = 1024;
                          *&buf[40] = v225;
                          *&buf[44] = 1024;
                          *&buf[46] = v223;
                          v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because pool is closed for new connections";
                          goto LABEL_663;
                        }

                        v217 = *(v195 + 872);
                        if ((v217 & 0x200) != 0)
                        {
                          if (*(v195 + 158))
                          {
                            goto LABEL_341;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_341;
                          }

                          v203 = __nwlog_obj();
                          v414 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v414)
                          {
                            goto LABEL_341;
                          }

                          v415 = *(v479 + 488);
                          v416 = *(*(v479 + 480) + 372);
                          v417 = *(v479 + 860);
                          if (v415)
                          {
                            LODWORD(v415) = *(v415 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v416;
                          *&buf[38] = 1024;
                          *&buf[40] = v417;
                          *&buf[44] = 1024;
                          *&buf[46] = v415;
                          v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was upgraded";
                          goto LABEL_663;
                        }

                        if ((v217 & 0x40) == 0)
                        {
                          if (*(v195 + 158))
                          {
                            goto LABEL_341;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_341;
                          }

                          v203 = __nwlog_obj();
                          v218 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v218)
                          {
                            goto LABEL_341;
                          }

                          v219 = *(v479 + 488);
                          v220 = *(*(v479 + 480) + 372);
                          v221 = *(v479 + 860);
                          if (v219)
                          {
                            LODWORD(v219) = *(v219 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v220;
                          *&buf[38] = 1024;
                          *&buf[40] = v221;
                          *&buf[44] = 1024;
                          *&buf[46] = v219;
                          v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was never connected";
LABEL_663:
                          _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_DEBUG, v208, buf, 0x32u);
                          v16 = v480;
                          v195 = v479;
LABEL_341:
                          v226 = *(v195 + 608);
                          v227 = *(v195 + 496);
                          v482[0] = MEMORY[0x1E69E9820];
                          v482[1] = 0x40000000;
                          v482[2] = ___ZL23nw_protocol_http1_resetP11nw_protocolS0__block_invoke;
                          v482[3] = &unk_1E6A32AE8;
                          v482[4] = v226;
                          nw_queue_context_async(v227, v482);
LABEL_342:
                          if (v16)
                          {
                            os_release(v16);
                          }

                          if (v14)
                          {
                            os_release(v14);
                          }

                          return 1;
                        }

                        if ((*(v195 + 872) & 0x100) != 0)
                        {
                          if (*(v195 + 158))
                          {
                            goto LABEL_341;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_341;
                          }

                          v203 = __nwlog_obj();
                          v235 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v235)
                          {
                            goto LABEL_341;
                          }

                          v236 = *(v479 + 488);
                          v237 = *(*(v479 + 480) + 372);
                          v238 = *(v479 + 860);
                          if (v236)
                          {
                            LODWORD(v236) = *(v236 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v237;
                          *&buf[38] = 1024;
                          *&buf[40] = v238;
                          *&buf[44] = 1024;
                          *&buf[46] = v236;
                          v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it has been closed";
                          goto LABEL_663;
                        }

                        if (*(v195 + 864) == 4)
                        {
                          if (*(v195 + 158))
                          {
                            goto LABEL_341;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_341;
                          }

                          v203 = __nwlog_obj();
                          v230 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v230)
                          {
                            goto LABEL_341;
                          }

                          v231 = *(v479 + 488);
                          v232 = *(*(v479 + 480) + 372);
                          v233 = *(v479 + 860);
                          if (v231)
                          {
                            LODWORD(v231) = *(v231 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v232;
                          *&buf[38] = 1024;
                          *&buf[40] = v233;
                          *&buf[44] = 1024;
                          *&buf[46] = v231;
                          v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because input has finished from below";
                          goto LABEL_663;
                        }

                        if ((*(*(v195 + 480) + 376) & 8) != 0)
                        {
                          if (*(v195 + 158))
                          {
                            goto LABEL_341;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_341;
                          }

                          v203 = __nwlog_obj();
                          v256 = os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v256)
                          {
                            goto LABEL_341;
                          }

                          v257 = *(v479 + 488);
                          v258 = *(*(v479 + 480) + 372);
                          v259 = *(v479 + 860);
                          if (v257)
                          {
                            LODWORD(v257) = *(v257 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_can_be_reused";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v258;
                          *&buf[38] = 1024;
                          *&buf[40] = v259;
                          *&buf[44] = 1024;
                          *&buf[46] = v257;
                          v208 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it is websocket";
                          goto LABEL_663;
                        }

                        if ((*(v195 + 158) & 1) == 0 && BYTE1(v12[82].isa) == 1)
                        {
                          v461 = __nwlog_obj();
                          v462 = os_log_type_enabled(v461, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (v462)
                          {
                            v463 = *(v479 + 488);
                            v464 = *(*(v479 + 480) + 372);
                            v465 = *(v479 + 860);
                            if (v463)
                            {
                              LODWORD(v463) = *(v463 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_connection_can_be_reused";
                            *&buf[12] = 2082;
                            *&buf[14] = v479 + 74;
                            *&buf[22] = 2080;
                            *&buf[24] = " ";
                            *&buf[32] = 1024;
                            *&buf[34] = v464;
                            *&buf[38] = 1024;
                            *&buf[40] = v465;
                            *&buf[44] = 1024;
                            *&buf[46] = v463;
                            _os_log_impl(&dword_181A37000, v461, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection can be reused", buf, 0x32u);
                            v16 = v480;
                            v195 = v479;
                            v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          }
                        }

                        *(v195 + 872) &= 0xFFFAu;
                        v240 = *(v195 + 800);
                        if (v240)
                        {
                          free(v240);
                          v195 = v479;
                          *(v479 + 800) = 0;
                        }

                        *(v195 + 840) = 0;
                        v241 = *(v195 + 808);
                        if (v241)
                        {
                          free(v241);
                          v195 = v479;
                          *(v479 + 808) = 0;
                        }

                        *(v195 + 844) = 0;
                        v242 = *(v195 + 816);
                        if (v242)
                        {
                          free(v242);
                          v195 = v479;
                          *(v479 + 816) = 0;
                        }

                        *(v195 + 848) = 0;
                        v243 = *(v195 + 824);
                        if (v243)
                        {
                          free(v243);
                          v195 = v479;
                          *(v479 + 824) = 0;
                        }

                        *(v195 + 852) = 0;
                        v244 = *(v195 + 832);
                        if (v244)
                        {
                          free(v244);
                          v195 = v479;
                          *(v479 + 832) = 0;
                        }

                        *(v195 + 856) = 0;
                        v245 = *(v195 + 872);
                        if ((v245 & 0x10) != 0)
                        {
                          if (*(v195 + 224) == 21)
                          {
                            *(v195 + 224) = 0;
                          }

                          *(v195 + 872) = v245 & 0xFFEF;
                          if (*(v195 + 158))
                          {
                            goto LABEL_397;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_397;
                          }

                          v250 = __nwlog_obj();
                          v467 = os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v467)
                          {
                            goto LABEL_397;
                          }

                          v468 = *(v479 + 488);
                          v469 = *(*(v479 + 480) + 372);
                          v470 = *(v479 + 860);
                          if (v468)
                          {
                            LODWORD(v468) = *(v468 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_reset_for_new_message";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v469;
                          *&buf[38] = 1024;
                          *&buf[40] = v470;
                          *&buf[44] = 1024;
                          *&buf[46] = v468;
                          v255 = "%{public}s %{public}s%s<i%u:c%u:s%u> Unpausing parser, input for next stream available";
                        }

                        else
                        {
                          *(v195 + 200) = 0u;
                          v246 = v195 + 200;
                          v247 = *(v195 + 272);
                          v248 = *(v195 + 248);
                          v249 = *(v246 + 78);
                          *(v246 + 48) = 0u;
                          *(v246 + 64) = 0u;
                          *(v246 + 16) = 0u;
                          *(v246 + 32) = 0u;
                          *(v246 + 80) = 0;
                          *(v246 + 72) = v247;
                          *(v246 + 48) = v248;
                          *(v246 + 56) = 237;
                          v195 = v479;
                          *(v246 + 78) = v249;
                          if (*(v246 - 42))
                          {
                            goto LABEL_397;
                          }

                          if (BYTE1(v12[82].isa) != 1)
                          {
                            goto LABEL_397;
                          }

                          v250 = __nwlog_obj();
                          v251 = os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG);
                          v195 = v479;
                          if (!v251)
                          {
                            goto LABEL_397;
                          }

                          v252 = *(v479 + 488);
                          v253 = *(*(v479 + 480) + 372);
                          v254 = *(v479 + 860);
                          if (v252)
                          {
                            LODWORD(v252) = *(v252 + 424);
                          }

                          *buf = 136447490;
                          *&buf[4] = "nw_http1_connection_reset_for_new_message";
                          *&buf[12] = 2082;
                          *&buf[14] = v479 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v253;
                          *&buf[38] = 1024;
                          *&buf[40] = v254;
                          *&buf[44] = 1024;
                          *&buf[46] = v252;
                          v255 = "%{public}s %{public}s%s<i%u:c%u:s%u> Resetting parser, no current available input for next stream";
                        }

                        _os_log_impl(&dword_181A37000, v250, OS_LOG_TYPE_DEBUG, v255, buf, 0x32u);
                        v16 = v480;
                        v195 = v479;
LABEL_397:
                        if (!v136)
                        {
                          if (*(v102 + 248))
                          {
                            if (*(v195 + 488))
                            {
                              v260 = v195;
                              v261 = __nwlog_obj();
                              v262 = *(v260 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v260;
                              *&buf[22] = 2048;
                              *&buf[24] = v262;
                              LODWORD(v473) = 32;
                              v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v261, 16, "%{public}s Connection %p already has a stream (%p)", buf, v473);
                              aBlock[0] = 16;
                              v483[0] = OS_LOG_TYPE_DEFAULT;
                              if (!__nwlog_fault(v107, aBlock, v483))
                              {
                                goto LABEL_547;
                              }

                              if (aBlock[0] == 17)
                              {
                                v263 = __nwlog_obj();
                                v264 = aBlock[0];
                                if (os_log_type_enabled(v263, aBlock[0]))
                                {
                                  v265 = *(v479 + 488);
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v479;
                                  *&buf[22] = 2048;
                                  *&buf[24] = v265;
                                  v266 = "%{public}s Connection %p already has a stream (%p)";
LABEL_545:
                                  v378 = v263;
                                  v379 = v264;
                                  v380 = 32;
LABEL_546:
                                  _os_log_impl(&dword_181A37000, v378, v379, v266, buf, v380);
                                  goto LABEL_547;
                                }

                                goto LABEL_547;
                              }

                              if (v483[0] != OS_LOG_TYPE_INFO)
                              {
                                v263 = __nwlog_obj();
                                v264 = aBlock[0];
                                if (os_log_type_enabled(v263, aBlock[0]))
                                {
                                  v288 = *(v479 + 488);
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v479;
                                  *&buf[22] = 2048;
                                  *&buf[24] = v288;
                                  v266 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                                  goto LABEL_545;
                                }

LABEL_547:
                                if (v107)
                                {
                                  free(v107);
                                }

                                v16 = v480;
                                goto LABEL_342;
                              }

                              v270 = __nw_create_backtrace_string();
                              v263 = __nwlog_obj();
                              v264 = aBlock[0];
                              v271 = os_log_type_enabled(v263, aBlock[0]);
                              if (!v270)
                              {
                                if (v271)
                                {
                                  v377 = *(v479 + 488);
                                  *buf = 136446722;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v479;
                                  *&buf[22] = 2048;
                                  *&buf[24] = v377;
                                  v266 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                                  goto LABEL_545;
                                }

                                goto LABEL_547;
                              }

                              if (!v271)
                              {
LABEL_411:
                                free(v270);
                                goto LABEL_547;
                              }

                              v272 = *(v479 + 488);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v479;
                              *&buf[22] = 2048;
                              *&buf[24] = v272;
                              *&buf[32] = 2082;
                              *&buf[34] = v270;
                              v273 = "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s";
                              v274 = v263;
                              v275 = v264;
                              v276 = 42;
LABEL_410:
                              _os_log_impl(&dword_181A37000, v274, v275, v273, buf, v276);
                              goto LABEL_411;
                            }

                            *(v102 + 256) = v195;
                            *(v195 + 488) = v102;
                            v267 = *(v102 + 320);
                            if (v267)
                            {
                              v268 = os_retain(v267);
                              v195 = v479;
                              v269 = v268;
                            }

                            else
                            {
                              v269 = 0;
                            }

                            v289 = *(v195 + 744);
                            if (v289)
                            {
                              v290 = *(v195 + 736);
                              if (v290)
                              {
                                os_release(v290);
                                v195 = v479;
                                v289 = *(v479 + 744);
                              }
                            }

                            *(v195 + 736) = v269;
                            *(v195 + 744) = v289 | 1;
                            if ((*(*(v102 + 248) + 376) & 2) == 0)
                            {
LABEL_729:
                              v427 = *(v102 + 32);
                              v428 = v479;
                              if (!v427 || v427 == *(v479 + 32))
                              {
LABEL_748:
                                nw_protocol_set_output_handler(v102, *(v428 + 32));
                                nw_protocol_set_input_handler(v428, *(v102 + 48));
                                *v102 = *v428;
                                v446 = *(v102 + 96);
                                v447 = *(v102 + 112);
                                v448 = *(v102 + 128);
                                *(v428 + 144) = *(v102 + 144);
                                v449 = *(v102 + 80);
                                *(v428 + 64) = *(v102 + 64);
                                *(v428 + 80) = v449;
                                *(v428 + 112) = v447;
                                *(v428 + 128) = v448;
                                *(v428 + 96) = v446;
                                *(v428 + 872) &= 0xFFD7u;
                                *(v428 + 864) = 1;
                                if ((*(v428 + 158) & 1) == 0)
                                {
                                  v450 = __nwlog_obj();
                                  if (os_log_type_enabled(v450, OS_LOG_TYPE_DEBUG))
                                  {
                                    v451 = *(v479 + 488);
                                    v452 = *(*(v479 + 480) + 372);
                                    v453 = *(v479 + 860);
                                    if (v451)
                                    {
                                      LODWORD(v451) = *(v451 + 424);
                                    }

                                    *buf = 136447490;
                                    *&buf[4] = "nw_http1_update_connection_input_state";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v479 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *&buf[34] = v452;
                                    *&buf[38] = 1024;
                                    *&buf[40] = v453;
                                    *&buf[44] = 1024;
                                    *&buf[46] = v451;
                                    _os_log_impl(&dword_181A37000, v450, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                                  }
                                }

                                if ((*(v102 + 158) & 1) == 0)
                                {
                                  v454 = __nwlog_obj();
                                  if (os_log_type_enabled(v454, OS_LOG_TYPE_INFO))
                                  {
                                    v455 = *(v102 + 256);
                                    v456 = *(*(v102 + 248) + 372);
                                    if (v455)
                                    {
                                      LODWORD(v455) = *(v455 + 860);
                                    }

                                    v457 = *(v102 + 424);
                                    *buf = 136448002;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2082;
                                    *&buf[14] = v102 + 74;
                                    *&buf[22] = 2080;
                                    *&buf[24] = " ";
                                    *&buf[32] = 1024;
                                    *&buf[34] = v456;
                                    *&buf[38] = 1024;
                                    *&buf[40] = v455;
                                    *&buf[44] = 1024;
                                    *&buf[46] = v457;
                                    *&buf[50] = 2048;
                                    *&buf[52] = v102;
                                    *&buf[60] = 2048;
                                    *&buf[62] = v479;
                                    _os_log_impl(&dword_181A37000, v454, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                                  }
                                }

                                goto LABEL_342;
                              }

                              v429 = __nwlog_obj();
                              v430 = *(v102 + 32);
                              v431 = *(v479 + 32);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v430;
                              *&buf[22] = 2048;
                              *&buf[24] = v102;
                              *&buf[32] = 2048;
                              *&buf[34] = v431;
                              LODWORD(v473) = 42;
                              v432 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v429, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v473);
                              v483[0] = OS_LOG_TYPE_ERROR;
                              v496[0] = 0;
                              if (__nwlog_fault(v432, v483, v496))
                              {
                                if (v483[0] == OS_LOG_TYPE_FAULT)
                                {
                                  v433 = __nwlog_obj();
                                  v434 = v483[0];
                                  if (os_log_type_enabled(v433, v483[0]))
                                  {
                                    v435 = *(v102 + 32);
                                    v436 = *(v479 + 32);
                                    *buf = 136446978;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v435;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v102;
                                    *&buf[32] = 2048;
                                    *&buf[34] = v436;
                                    v437 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_744:
                                    _os_log_impl(&dword_181A37000, v433, v434, v437, buf, 0x2Au);
                                  }
                                }

                                else if (v496[0] == 1)
                                {
                                  v438 = __nw_create_backtrace_string();
                                  v433 = __nwlog_obj();
                                  v434 = v483[0];
                                  v439 = os_log_type_enabled(v433, v483[0]);
                                  if (v438)
                                  {
                                    if (v439)
                                    {
                                      v440 = *(v102 + 32);
                                      v441 = *(v479 + 32);
                                      *buf = 136447234;
                                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v440;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v102;
                                      *&buf[32] = 2048;
                                      *&buf[34] = v441;
                                      *&buf[42] = 2082;
                                      *&buf[44] = v438;
                                      _os_log_impl(&dword_181A37000, v433, v434, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                                    }

                                    free(v438);
                                    goto LABEL_745;
                                  }

                                  if (v439)
                                  {
                                    v444 = *(v102 + 32);
                                    v445 = *(v479 + 32);
                                    *buf = 136446978;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v444;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v102;
                                    *&buf[32] = 2048;
                                    *&buf[34] = v445;
                                    v437 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                                    goto LABEL_744;
                                  }
                                }

                                else
                                {
                                  v433 = __nwlog_obj();
                                  v434 = v483[0];
                                  if (os_log_type_enabled(v433, v483[0]))
                                  {
                                    v442 = *(v102 + 32);
                                    v443 = *(v479 + 32);
                                    *buf = 136446978;
                                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v442;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v102;
                                    *&buf[32] = 2048;
                                    *&buf[34] = v443;
                                    v437 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                                    goto LABEL_744;
                                  }
                                }
                              }

LABEL_745:
                              if (v432)
                              {
                                free(v432);
                              }

                              v16 = v480;
                              v428 = v479;
                              goto LABEL_748;
                            }

                            v291 = nw_parameters_copy_default_protocol_stack(*(v102 + 320));
                            *v483 = 0;
                            v484 = v483;
                            v485 = 0x2000000000;
                            LOBYTE(v486) = 0;
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
                            v506 = &unk_1E6A32930;
                            *v507 = v483;
                            *&v507[8] = buf;
                            *&v507[16] = v102;
                            nw_protocol_stack_iterate_application_protocols(v291, aBlock);
                            if (*(*&buf[8] + 40))
                            {
                              v292 = v479;
                              while (1)
                              {
                                v292 = *(v292 + 32);
                                if (!v292)
                                {
                                  break;
                                }

                                if (nw_protocol_is_tls_over_stream(v292))
                                {
                                  v293 = *(*&buf[8] + 40);
                                  v294 = nw_protocol_boringssl_copy_definition();
                                  nw_parameters_set_protocol_instance(v293, v295, v292);
                                  if (v294)
                                  {
                                    os_release(v294);
                                  }

                                  goto LABEL_672;
                                }
                              }

                              v372 = __nwlog_obj();
                              *v496 = 136446210;
                              *&v496[4] = "nw_http1_stream_associate_with_connection";
                              LODWORD(v473) = 12;
                              v373 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v372, 16, "%{public}s tls should have been in the stack but could not find it", v496, v473);
                              LOBYTE(iterate_block[0]) = 16;
                              LOBYTE(v492[0]) = 0;
                              if (!__nwlog_fault(v373, iterate_block, v492))
                              {
                                goto LABEL_720;
                              }

                              if (LOBYTE(iterate_block[0]) == 17)
                              {
                                v374 = __nwlog_obj();
                                v375 = iterate_block[0];
                                if (os_log_type_enabled(v374, iterate_block[0]))
                                {
                                  *v496 = 136446210;
                                  *&v496[4] = "nw_http1_stream_associate_with_connection";
                                  v376 = "%{public}s tls should have been in the stack but could not find it";
LABEL_719:
                                  _os_log_impl(&dword_181A37000, v374, v375, v376, v496, 0xCu);
                                }
                              }

                              else if (LOBYTE(v492[0]) == 1)
                              {
                                v398 = __nw_create_backtrace_string();
                                v374 = __nwlog_obj();
                                v375 = iterate_block[0];
                                v399 = os_log_type_enabled(v374, iterate_block[0]);
                                if (v398)
                                {
                                  if (v399)
                                  {
                                    *v496 = 136446466;
                                    *&v496[4] = "nw_http1_stream_associate_with_connection";
                                    *&v496[12] = 2082;
                                    *&v496[14] = v398;
                                    _os_log_impl(&dword_181A37000, v374, v375, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v496, 0x16u);
                                  }

                                  free(v398);
                                  goto LABEL_720;
                                }

                                if (v399)
                                {
                                  *v496 = 136446210;
                                  *&v496[4] = "nw_http1_stream_associate_with_connection";
                                  v376 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                                  goto LABEL_719;
                                }
                              }

                              else
                              {
                                v374 = __nwlog_obj();
                                v375 = iterate_block[0];
                                if (os_log_type_enabled(v374, iterate_block[0]))
                                {
                                  *v496 = 136446210;
                                  *&v496[4] = "nw_http1_stream_associate_with_connection";
                                  v376 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                                  goto LABEL_719;
                                }
                              }

LABEL_720:
                              if (v373)
                              {
                                free(v373);
                              }

                              v418 = 0;
                              v16 = v480;
                              goto LABEL_723;
                            }

                            v351 = __nwlog_obj();
                            *v496 = 136446210;
                            *&v496[4] = "nw_http1_stream_associate_with_connection";
                            LODWORD(v473) = 12;
                            v352 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v351, 16, "%{public}s unable to find tls options", v496, v473);
                            LOBYTE(iterate_block[0]) = 16;
                            LOBYTE(v492[0]) = 0;
                            if (__nwlog_fault(v352, iterate_block, v492))
                            {
                              if (LOBYTE(iterate_block[0]) == 17)
                              {
                                v353 = __nwlog_obj();
                                v354 = iterate_block[0];
                                if (os_log_type_enabled(v353, iterate_block[0]))
                                {
                                  *v496 = 136446210;
                                  *&v496[4] = "nw_http1_stream_associate_with_connection";
                                  v355 = "%{public}s unable to find tls options";
LABEL_669:
                                  _os_log_impl(&dword_181A37000, v353, v354, v355, v496, 0xCu);
                                }
                              }

                              else if (LOBYTE(v492[0]) == 1)
                              {
                                v383 = __nw_create_backtrace_string();
                                v353 = __nwlog_obj();
                                v354 = iterate_block[0];
                                v384 = os_log_type_enabled(v353, iterate_block[0]);
                                if (v383)
                                {
                                  if (v384)
                                  {
                                    *v496 = 136446466;
                                    *&v496[4] = "nw_http1_stream_associate_with_connection";
                                    *&v496[12] = 2082;
                                    *&v496[14] = v383;
                                    _os_log_impl(&dword_181A37000, v353, v354, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v496, 0x16u);
                                  }

                                  free(v383);
                                  v16 = v480;
                                }

                                else
                                {
                                  v16 = v480;
                                  if (v384)
                                  {
                                    *v496 = 136446210;
                                    *&v496[4] = "nw_http1_stream_associate_with_connection";
                                    v355 = "%{public}s unable to find tls options, no backtrace";
                                    goto LABEL_669;
                                  }
                                }
                              }

                              else
                              {
                                v353 = __nwlog_obj();
                                v354 = iterate_block[0];
                                v16 = v480;
                                if (os_log_type_enabled(v353, iterate_block[0]))
                                {
                                  *v496 = 136446210;
                                  *&v496[4] = "nw_http1_stream_associate_with_connection";
                                  v355 = "%{public}s unable to find tls options, backtrace limit exceeded";
                                  goto LABEL_669;
                                }
                              }
                            }

                            if (v352)
                            {
                              free(v352);
                            }

LABEL_672:
                            v418 = 1;
LABEL_723:
                            _Block_object_dispose(buf, 8);
                            if ((buf[48] & 1) != 0 && *&buf[40])
                            {
                              os_release(*&buf[40]);
                            }

                            _Block_object_dispose(v483, 8);
                            if (v291)
                            {
                              os_release(v291);
                            }

                            if (!v418)
                            {
                              goto LABEL_342;
                            }

                            goto LABEL_729;
                          }

                          v466 = __nwlog_obj();
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          LODWORD(v473) = 12;
                          v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v466, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v473);
                          aBlock[0] = 16;
                          v483[0] = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v107, aBlock, v483))
                          {
                            goto LABEL_547;
                          }

                          if (aBlock[0] == 17)
                          {
                            v459 = __nwlog_obj();
                            v460 = aBlock[0];
                            if (!os_log_type_enabled(v459, aBlock[0]))
                            {
                              goto LABEL_547;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v266 = "%{public}s called with null http1_stream->protocol_http1";
                            goto LABEL_793;
                          }

                          if (v483[0] == OS_LOG_TYPE_INFO)
                          {
                            v270 = __nw_create_backtrace_string();
                            v459 = __nwlog_obj();
                            v460 = aBlock[0];
                            v472 = os_log_type_enabled(v459, aBlock[0]);
                            if (v270)
                            {
                              if (!v472)
                              {
                                goto LABEL_411;
                              }

                              *buf = 136446466;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2082;
                              *&buf[14] = v270;
                              v273 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
LABEL_783:
                              v274 = v459;
                              v275 = v460;
                              v276 = 22;
                              goto LABEL_410;
                            }

                            if (!v472)
                            {
                              goto LABEL_547;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v266 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                          }

                          else
                          {
                            v459 = __nwlog_obj();
                            v460 = aBlock[0];
                            if (!os_log_type_enabled(v459, aBlock[0]))
                            {
                              goto LABEL_547;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v266 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                          }

                          goto LABEL_793;
                        }

                        v458 = __nwlog_obj();
                        LODWORD(v481) = 136446210;
                        *buf = 136446210;
                        v105 = "nw_http1_stream_associate_with_connection";
                        v8 = v496;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        LODWORD(v473) = 12;
                        v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v458, 16, "%{public}s called with null http1_stream", buf, v473);
                        aBlock[0] = 16;
                        v483[0] = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v107, aBlock, v483))
                        {
                          goto LABEL_547;
                        }

                        if (aBlock[0] == 17)
                        {
                          v459 = __nwlog_obj();
                          v460 = aBlock[0];
                          if (!os_log_type_enabled(v459, aBlock[0]))
                          {
                            goto LABEL_547;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v266 = "%{public}s called with null http1_stream";
                          goto LABEL_793;
                        }

                        if (v483[0] == OS_LOG_TYPE_INFO)
                        {
                          v270 = __nw_create_backtrace_string();
                          v459 = __nwlog_obj();
                          v460 = aBlock[0];
                          v471 = os_log_type_enabled(v459, aBlock[0]);
                          if (v270)
                          {
                            if (!v471)
                            {
                              goto LABEL_411;
                            }

                            *buf = 136446466;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v270;
                            v273 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
                            goto LABEL_783;
                          }

                          if (!v471)
                          {
                            goto LABEL_547;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v266 = "%{public}s called with null http1_stream, no backtrace";
LABEL_793:
                          v378 = v459;
                          v379 = v460;
                          v380 = 12;
                          goto LABEL_546;
                        }

LABEL_785:
                        v459 = __nwlog_obj();
                        v460 = aBlock[0];
                        if (!os_log_type_enabled(v459, aBlock[0]))
                        {
                          goto LABEL_547;
                        }

                        *buf = v481;
                        *(v8 + 68) = v105;
                        v266 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                        goto LABEL_793;
                      }

LABEL_273:
                      if (BYTE1(v12[82].isa) == 1)
                      {
                        v318 = __nwlog_obj();
                        if (os_log_type_enabled(v318, OS_LOG_TYPE_DEBUG))
                        {
                          v319 = *(v11 + 256);
                          v320 = *(*(v11 + 248) + 372);
                          if (v319)
                          {
                            LODWORD(v319) = *(v319 + 860);
                          }

                          v321 = *(v11 + 424);
                          *buf = 136447746;
                          *&buf[4] = "nw_http1_stream_destroy";
                          *&buf[12] = 2082;
                          *&buf[14] = v11 + 74;
                          *&buf[22] = 2080;
                          *&buf[24] = " ";
                          *&buf[32] = 1024;
                          *&buf[34] = v320;
                          *&buf[38] = 1024;
                          *&buf[40] = v319;
                          *&buf[44] = 1024;
                          *&buf[46] = v321;
                          *&buf[50] = 2048;
                          *&buf[52] = v11;
                          _os_log_impl(&dword_181A37000, v318, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> destroying %p", buf, 0x3Cu);
                        }
                      }

                      goto LABEL_274;
                    }

                    v16 = v480;
                    if (!v406)
                    {
                      goto LABEL_634;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    v404 = "%{public}s called with null http1_stream, no backtrace";
                  }

                  else
                  {
                    v402 = __nwlog_obj();
                    v403 = aBlock[0];
                    if (!os_log_type_enabled(v402, aBlock[0]))
                    {
                      goto LABEL_634;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                    v404 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                  }

                  _os_log_impl(&dword_181A37000, v402, v403, v404, buf, 0xCu);
                  goto LABEL_634;
                }

LABEL_619:
                free(v301);
                goto LABEL_620;
              }

              v16 = v480;
              v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (v369)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_create";
                v304 = "%{public}s called with null parameters, no backtrace";
LABEL_617:
                _os_log_impl(&dword_181A37000, v302, v303, v304, buf, 0xCu);
              }
            }
          }

          else
          {
            v300 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_create";
            LODWORD(v473) = 12;
            v301 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v300, 16, "%{public}s called with null endpoint", buf, v473);
            v483[0] = OS_LOG_TYPE_ERROR;
            v496[0] = 0;
            if (!__nwlog_fault(v301, v483, v496))
            {
              goto LABEL_618;
            }

            if (v483[0] == OS_LOG_TYPE_FAULT)
            {
              v302 = __nwlog_obj();
              v303 = v483[0];
              if (!os_log_type_enabled(v302, v483[0]))
              {
                goto LABEL_618;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_create";
              v304 = "%{public}s called with null endpoint";
              goto LABEL_617;
            }

            if (v496[0] != 1)
            {
              v302 = __nwlog_obj();
              v303 = v483[0];
              if (!os_log_type_enabled(v302, v483[0]))
              {
                goto LABEL_618;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_create";
              v304 = "%{public}s called with null endpoint, backtrace limit exceeded";
              goto LABEL_617;
            }

            v366 = __nw_create_backtrace_string();
            v302 = __nwlog_obj();
            v303 = v483[0];
            v367 = os_log_type_enabled(v302, v483[0]);
            if (!v366)
            {
              v16 = v480;
              v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (!v367)
              {
                goto LABEL_618;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_create";
              v304 = "%{public}s called with null endpoint, no backtrace";
              goto LABEL_617;
            }

            if (v367)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_create";
              *&buf[12] = 2082;
              *&buf[14] = v366;
              _os_log_impl(&dword_181A37000, v302, v303, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v366);
            v16 = v480;
            v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

LABEL_618:
          if (!v301)
          {
            goto LABEL_620;
          }

          goto LABEL_619;
        }

LABEL_125:
        v86 = *(v8 + 88);
        *(v8 + 88) = v86 - 1;
        if (v86)
        {
          goto LABEL_142;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v87 = *(v8 + 88);
        *buf = 136446978;
        *&buf[4] = "nw_http1_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = "http1->pending_output_handler_count";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v87;
        LODWORD(v473) = 42;
        v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v473);
        aBlock[0] = 16;
        v483[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v88, aBlock, v483))
        {
          goto LABEL_139;
        }

        if (aBlock[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v89 = gLogObj;
          v90 = aBlock[0];
          if (os_log_type_enabled(gLogObj, aBlock[0]))
          {
            v91 = *(v8 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_output_handler_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v91;
            v92 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_137:
            v99 = v89;
            v100 = v90;
LABEL_138:
            _os_log_impl(&dword_181A37000, v99, v100, v92, buf, 0x2Au);
          }
        }

        else if (v483[0] == OS_LOG_TYPE_INFO)
        {
          v93 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v94 = gLogObj;
          v95 = aBlock[0];
          v96 = os_log_type_enabled(gLogObj, aBlock[0]);
          if (v93)
          {
            if (v96)
            {
              v97 = *(v8 + 88);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_output_handler_count";
              *&buf[22] = 2048;
              *&buf[24] = 1;
              *&buf[32] = 2048;
              *&buf[34] = v97;
              *&buf[42] = 2082;
              *&buf[44] = v93;
              _os_log_impl(&dword_181A37000, v94, v95, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v93);
            goto LABEL_139;
          }

          if (v96)
          {
            v234 = *(v8 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_output_handler_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v234;
            v92 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            v99 = v94;
            v100 = v95;
            goto LABEL_138;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v89 = gLogObj;
          v90 = aBlock[0];
          if (os_log_type_enabled(gLogObj, aBlock[0]))
          {
            v98 = *(v8 + 88);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_output_handler_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v98;
            v92 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_137;
          }
        }

LABEL_139:
        if (v88)
        {
          free(v88);
        }

        *(v8 + 88) = 0;
        v16 = v480;
        v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        goto LABEL_142;
      }

      v340 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_disassociate_from_connection";
      LODWORD(v473) = 12;
      v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v340, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v473);
      aBlock[0] = 16;
      v483[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v43, aBlock, v483))
      {
        goto LABEL_100;
      }

      if (aBlock[0] == 17)
      {
        v341 = __nwlog_obj();
        v342 = aBlock[0];
        if (!os_log_type_enabled(v341, aBlock[0]))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v47 = "%{public}s called with null http1_stream->protocol_http1";
      }

      else if (v483[0] == OS_LOG_TYPE_INFO)
      {
        v381 = __nw_create_backtrace_string();
        v341 = __nwlog_obj();
        v342 = aBlock[0];
        v382 = os_log_type_enabled(v341, aBlock[0]);
        if (v381)
        {
          if (v382)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            *&buf[12] = 2082;
            *&buf[14] = v381;
            _os_log_impl(&dword_181A37000, v341, v342, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v381);
          v16 = v480;
          goto LABEL_100;
        }

        v16 = v480;
        if (!v382)
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v47 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
      }

      else
      {
        v341 = __nwlog_obj();
        v342 = aBlock[0];
        v16 = v480;
        if (!os_log_type_enabled(v341, aBlock[0]))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v47 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
      }

      v65 = v341;
      v66 = v342;
      v67 = 12;
      goto LABEL_99;
    }

    if ((v8[158] & 1) == 0 && gLogDatapath == 1)
    {
      v363 = __nwlog_obj();
      if (os_log_type_enabled(v363, OS_LOG_TYPE_DEBUG))
      {
        v364 = *(v8 + 93);
        v365 = *(v11 + 424);
        *buf = 136447490;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v364;
        *&buf[38] = 1024;
        *&buf[40] = v365;
        *&buf[44] = 2048;
        *&buf[46] = v11;
        _os_log_impl(&dword_181A37000, v363, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
      }
    }

    if ((*(v11 + 428) & 0x2000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_http1_remove_pending_stream";
      *&buf[12] = 2048;
      *&buf[14] = v11;
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
      aBlock[0] = 16;
      v483[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v17, aBlock, v483))
      {
        goto LABEL_56;
      }

      if (aBlock[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = aBlock[0];
        if (!os_log_type_enabled(gLogObj, aBlock[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v20 = "%{public}s stream %p not in pending list, cannot remove";
      }

      else if (v483[0] == OS_LOG_TYPE_INFO)
      {
        v31 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = aBlock[0];
        v32 = os_log_type_enabled(gLogObj, aBlock[0]);
        if (v31)
        {
          if (v32)
          {
            *buf = 136446722;
            *&buf[4] = "nw_http1_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = v11;
            *&buf[22] = 2082;
            *&buf[24] = v31;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v31);
          v16 = v480;
          goto LABEL_56;
        }

        v16 = v480;
        if (!v32)
        {
LABEL_56:
          if (v17)
          {
            free(v17);
          }

          goto LABEL_67;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v20 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = aBlock[0];
        if (!os_log_type_enabled(gLogObj, aBlock[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v20 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0x16u);
      goto LABEL_56;
    }

    v21 = *(v11 + 296);
    v22 = *(v11 + 304);
    v23 = v8 + 256;
    if (v21)
    {
      v23 = (v21 + 304);
    }

    *v23 = v22;
    *v22 = v21;
    *(v11 + 296) = 0;
    *(v11 + 304) = 0;
    v24 = *(v8 + 87);
    *(v8 + 87) = v24 - 1;
    if (v24)
    {
LABEL_65:
      *(v11 + 428) &= ~0x2000u;
      if ((*(v11 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v391 = __nwlog_obj();
        if (os_log_type_enabled(v391, OS_LOG_TYPE_DEBUG))
        {
          v392 = *(v11 + 256);
          v393 = *(*(v11 + 248) + 372);
          if (v392)
          {
            LODWORD(v392) = *(v392 + 860);
          }

          v394 = *(v11 + 424);
          v395 = *(v8 + 87);
          *buf = 136448258;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = v11 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v393;
          *&buf[38] = 1024;
          *&buf[40] = v392;
          *&buf[44] = 1024;
          *&buf[46] = v394;
          *&buf[50] = 1024;
          *&buf[52] = v394;
          *&buf[56] = 2048;
          *&buf[58] = v11;
          *&buf[66] = 1024;
          *&buf[68] = v395;
          _os_log_impl(&dword_181A37000, v391, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
        }
      }

      goto LABEL_67;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = *(v8 + 87);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_pending_stream";
    *&buf[12] = 2082;
    *&buf[14] = "http1->pending_stream_count";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v25;
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    aBlock[0] = 16;
    v483[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v26, aBlock, v483))
    {
      if (aBlock[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v28 = aBlock[0];
        if (os_log_type_enabled(gLogObj, aBlock[0]))
        {
          v29 = *(v8 + 87);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "http1->pending_stream_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v29;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_60:
          v39 = v27;
          v40 = v28;
LABEL_61:
          _os_log_impl(&dword_181A37000, v39, v40, v30, buf, 0x2Au);
        }
      }

      else if (v483[0] == OS_LOG_TYPE_INFO)
      {
        v33 = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v35 = aBlock[0];
        v36 = os_log_type_enabled(v34, aBlock[0]);
        if (v33)
        {
          if (v36)
          {
            v37 = *(v8 + 87);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_stream_count";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v37;
            *&buf[42] = 2082;
            *&buf[44] = v33;
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v33);
          goto LABEL_62;
        }

        if (v36)
        {
          v239 = *(v8 + 87);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "http1->pending_stream_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v239;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v39 = v34;
          v40 = v35;
          goto LABEL_61;
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v28 = aBlock[0];
        if (os_log_type_enabled(v27, aBlock[0]))
        {
          v38 = *(v8 + 87);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "http1->pending_stream_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v38;
          v30 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_60;
        }
      }
    }

LABEL_62:
    if (v26)
    {
      free(v26);
    }

    *(v8 + 87) = 0;
    v12 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    goto LABEL_65;
  }

LABEL_697:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http1_reset";
  LODWORD(v473) = 12;
  v284 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v473);
  aBlock[0] = 16;
  v483[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v284, aBlock, v483))
  {
    goto LABEL_711;
  }

  if (aBlock[0] != 17)
  {
    if (v483[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v285 = gLogObj;
      v286 = aBlock[0];
      if (os_log_type_enabled(gLogObj, aBlock[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_reset";
        v287 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_709;
      }

      goto LABEL_711;
    }

    v419 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v420 = gLogObj;
    v421 = aBlock[0];
    v424 = os_log_type_enabled(gLogObj, aBlock[0]);
    if (v419)
    {
      if (v424)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_reset";
        *&buf[12] = 2082;
        *&buf[14] = v419;
        v423 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        goto LABEL_705;
      }

      goto LABEL_706;
    }

    if (!v424)
    {
      goto LABEL_711;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_reset";
    v287 = "%{public}s called with null http1_stream, no backtrace";
    goto LABEL_716;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v285 = gLogObj;
  v286 = aBlock[0];
  if (os_log_type_enabled(gLogObj, aBlock[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_reset";
    v287 = "%{public}s called with null http1_stream";
    goto LABEL_709;
  }

LABEL_711:
  if (v284)
  {
    free(v284);
  }

  return 0;
}

uint64_t ___ZL22nw_http1_stream_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke(void *a1, void *a2)
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

uint64_t ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_2(int8x16_t *a1, nw_parameters_t parameters)
{
  v2 = parameters;
  v41 = *MEMORY[0x1E69E9840];
  v4 = nw_parameters_copy_default_protocol_stack(parameters);
  v5 = nw_protocol_stack_copy_transport_protocol(v4);
  is_quic = nw_protocol_options_is_quic(v5);
  if (v5)
  {
    os_release(v5);
  }

  if (is_quic)
  {
    v7 = 1;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_19;
  }

  v8 = *(a1[2].i64[0] + 8);
  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = *(v8 + 40);
    if (v10)
    {
      os_release(v10);
      v9 = *(v8 + 48);
    }
  }

  *(v8 + 40) = 0;
  *(v8 + 48) = v9 | 1;
  *(*(a1[2].i64[1] + 8) + 24) = 0;
  iterate_block[0] = MEMORY[0x1E69E9820];
  iterate_block[1] = 0x40000000;
  iterate_block[2] = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_3;
  iterate_block[3] = &unk_1E6A32A98;
  v25 = vextq_s8(a1[2], a1[2], 8uLL);
  v26 = a1[3].i64[0];
  nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
  v11 = *(*(a1[2].i64[0] + 8) + 40) != 0;
  v12 = (*(a1[3].i64[1] + 376) & 2) == 0;
  v13 = v11 ^ v12;
  if (v11 != v12)
  {
    if ((*(a1[3].i64[0] + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = a1[3].i64[0];
        v20 = v19 + 74;
        v21 = *(v19 + 256);
        v22 = *(*(v19 + 248) + 372);
        if (v21)
        {
          LODWORD(v21) = *(v21 + 860);
        }

        v23 = *(v19 + 424);
        *buf = 136447746;
        v28 = "nw_http1_stream_add_input_handler_block_invoke_2";
        v29 = 2082;
        v30 = v20;
        v31 = 2080;
        v32 = " ";
        v33 = 1024;
        v34 = v22;
        v35 = 1024;
        v36 = v21;
        v37 = 1024;
        v38 = v23;
        v39 = 2112;
        v40 = v2;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> saving transformed parameters %@", buf, 0x3Cu);
      }
    }

    if (v2)
    {
      v2 = os_retain(v2);
    }

    v14 = a1[3].i64[0];
    v15 = *(v14 + 328);
    if (v15)
    {
      v16 = *(v14 + 320);
      if (v16)
      {
        os_release(v16);
        v15 = *(v14 + 328);
      }
    }

    *(v14 + 320) = v2;
    *(v14 + 328) = v15 | 1;
  }

  v7 = v13 ^ 1u;
  if (v4)
  {
LABEL_19:
    os_release(v4);
  }

  return v7;
}

void nw_http1_stream::~nw_http1_stream(nw_http1_stream *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    free(v2);
    *(this + 52) = 0;
  }

  if (*(this + 408))
  {
    v3 = *(this + 50);
    if (v3)
    {
      os_release(v3);
    }
  }

  *(this + 50) = 0;
  if (*(this + 392))
  {
    v4 = *(this + 48);
    if (v4)
    {
      os_release(v4);
    }
  }

  *(this + 48) = 0;
  if (*(this + 376))
  {
    v5 = *(this + 46);
    if (v5)
    {
      os_release(v5);
    }
  }

  *(this + 46) = 0;
  if (*(this + 360))
  {
    v6 = *(this + 44);
    if (v6)
    {
      os_release(v6);
    }
  }

  *(this + 44) = 0;
  if (*(this + 344))
  {
    v7 = *(this + 42);
    if (v7)
    {
      os_release(v7);
    }
  }

  *(this + 42) = 0;
  if (*(this + 328))
  {
    v8 = *(this + 40);
    if (v8)
    {
      os_release(v8);
    }
  }

  *(this + 40) = 0;
  if (*(this + 272))
  {
    v9 = *(this + 33);
    if (v9)
    {
      os_release(v9);
    }
  }

  *(this + 33) = 0;
}

void ___ZL23nw_protocol_http1_resetP11nw_protocolS0__block_invoke(uint64_t a1)
{
  v166 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  if ((*(v1 + 872) & 0x100) == 0)
  {
    v3 = *(v1 + 32);

    nw_protocol_disconnect(v3, v2);
    return;
  }

  v4 = *(v1 + 480);
  if (v4)
  {
    nw_http_connection_metadata_closed(*(v1 + 768));
    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v110 = __nwlog_obj();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
      {
        v111 = *(v2 + 488);
        v112 = *(*(v2 + 480) + 372);
        v113 = *(v2 + 860);
        if (v111)
        {
          LODWORD(v111) = *(v111 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v161 = " ";
        v162 = 1024;
        *v163 = v112;
        *&v163[4] = 1024;
        *&v163[6] = v113;
        *&v163[10] = 1024;
        *&v163[12] = v111;
        _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing unprocessed_input_frames", buf, 0x32u);
      }
    }

    v5 = (v2 + 616);
    if (gLogDatapath == 1)
    {
      v108 = __nwlog_obj();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v6 = *v5;
    if (*v5)
    {
      *(v6 + 40) = v152;
      v7 = *(v2 + 624);
      *v152 = v6;
      v153 = v7;
      *(v2 + 616) = 0;
      *(v2 + 624) = v5;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v161 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v162) = 0;
      do
      {
        v8 = *v152;
        if (!*v152)
        {
          break;
        }

        v9 = *(*v152 + 32);
        v10 = *(*v152 + 40);
        v11 = (v9 + 40);
        if (!v9)
        {
          v11 = &v153;
        }

        *v11 = v10;
        *v10 = v9;
        *(v8 + 32) = 0;
        *(v8 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v114 = __nwlog_obj();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        v115 = *(v2 + 488);
        v116 = *(*(v2 + 480) + 372);
        v117 = *(v2 + 860);
        if (v115)
        {
          LODWORD(v115) = *(v115 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v161 = " ";
        v162 = 1024;
        *v163 = v116;
        *&v163[4] = 1024;
        *&v163[6] = v117;
        *&v163[10] = 1024;
        *&v163[12] = v115;
        _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing processed_input_frames", buf, 0x32u);
      }
    }

    v12 = (v2 + 632);
    if (gLogDatapath == 1)
    {
      v109 = __nwlog_obj();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v13 = *v12;
    if (*v12)
    {
      *(v13 + 40) = v152;
      v14 = *(v2 + 640);
      *v152 = v13;
      v153 = v14;
      *(v2 + 632) = 0;
      *(v2 + 640) = v12;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v161 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v162) = 0;
      do
      {
        v15 = *v152;
        if (!*v152)
        {
          break;
        }

        v16 = *(*v152 + 32);
        v17 = *(*v152 + 40);
        v18 = (v16 + 40);
        if (!v16)
        {
          v18 = &v153;
        }

        *v18 = v17;
        *v17 = v16;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v118 = __nwlog_obj();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
      {
        v119 = *(v2 + 488);
        v120 = *(*(v2 + 480) + 372);
        v121 = *(v2 + 860);
        if (v119)
        {
          LODWORD(v119) = *(v119 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v161 = " ";
        v162 = 1024;
        *v163 = v120;
        *&v163[4] = 1024;
        *&v163[6] = v121;
        *&v163[10] = 1024;
        *&v163[12] = v119;
        _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removing pending_output_frames", buf, 0x32u);
      }
    }

    *v152 = MEMORY[0x1E69E9820];
    v153 = 0x40000000;
    v154 = ___ZL29nw_http1_tear_down_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke;
    v155 = &__block_descriptor_tmp_57_42875;
    v156 = v2;
    v19 = *(v2 + 648);
    do
    {
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 32);
      v21 = v154(v152);
      v19 = v20;
    }

    while ((v21 & 1) != 0);
    nw_frame_cache_remove_all((v2 + 696));
    if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v122 = __nwlog_obj();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
      {
        v123 = *(v2 + 488);
        v124 = *(*(v2 + 480) + 372);
        v125 = *(v2 + 860);
        if (v123)
        {
          LODWORD(v123) = *(v123 + 424);
        }

        v126 = *(v2 + 32);
        *buf = 136447746;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 74;
        *&buf[22] = 2080;
        v161 = " ";
        v162 = 1024;
        *v163 = v124;
        *&v163[4] = 1024;
        *&v163[6] = v125;
        *&v163[10] = 1024;
        *&v163[12] = v123;
        *&v163[16] = 2048;
        *&v163[18] = v126;
        _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> calling remove input handler on output handler %p", buf, 0x3Cu);
      }
    }

    v22 = *(v4 + 336);
    *(v4 + 336) = v22 - 1;
    if (v22)
    {
LABEL_50:
      if ((*(v4 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v127 = __nwlog_obj();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
        {
          v128 = *(v4 + 372);
          v129 = *(v4 + 336);
          *buf = 136447490;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = v4 + 74;
          *&buf[22] = 2080;
          v161 = " ";
          v162 = 1024;
          *v163 = v128;
          *&v163[4] = 2048;
          *&v163[6] = v2;
          *&v163[14] = 1024;
          *&v163[16] = v129;
          _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed connection %p, now have %u connections", buf, 0x36u);
        }
      }

      if ((*(v2 + 872) & 0x800) == 0)
      {
LABEL_73:
        nw_protocol_remove_input_handler(*(v2 + 32), v2);
        nw_protocol_set_output_handler(v2, 0);
        if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v130 = __nwlog_obj();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
          {
            v131 = *(v2 + 488);
            v132 = *(*(v2 + 480) + 372);
            v133 = *(v2 + 860);
            if (v131)
            {
              LODWORD(v131) = *(v131 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 74;
            *&buf[22] = 2080;
            v161 = " ";
            v162 = 1024;
            *v163 = v132;
            *&v163[4] = 1024;
            *&v163[6] = v133;
            *&v163[10] = 1024;
            *&v163[12] = v131;
            *&v163[16] = 2048;
            *&v163[18] = v2;
            _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> destroying %p", buf, 0x3Cu);
          }
        }

        v46 = *(v2 + 760);
        if (v46)
        {
          v47 = *(v2 + 752);
          if (v47)
          {
            os_release(v47);
            v46 = *(v2 + 760);
          }
        }

        *(v2 + 752) = 0;
        *(v2 + 760) = v46 | 1;
        v48 = *(v2 + 744);
        if (v48)
        {
          v49 = *(v2 + 736);
          if (v49)
          {
            os_release(v49);
            v48 = *(v2 + 744);
          }
        }

        *(v2 + 736) = 0;
        *(v2 + 744) = v48 | 1;
        v50 = *(v2 + 488);
        if (!v50 || (v51 = *(v50 + 256), v51 != v2))
        {
LABEL_83:
          *(v2 + 488) = 0;
          if ((*(v2 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v134 = __nwlog_obj();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
            {
              v135 = *(v2 + 488);
              v136 = *(*(v2 + 480) + 372);
              v137 = *(v2 + 860);
              if (v135)
              {
                LODWORD(v135) = *(v135 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v2 + 74;
              *&buf[22] = 2080;
              v161 = " ";
              v162 = 1024;
              *v163 = v136;
              *&v163[4] = 1024;
              *&v163[6] = v137;
              *&v163[10] = 1024;
              *&v163[12] = v135;
              _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing frame arrays", buf, 0x32u);
            }
          }

          if (!*(v2 + 680))
          {
LABEL_107:
            if (!*(v2 + 664))
            {
LABEL_123:
              nw_frame_cache_destroy((v2 + 696));
              v78 = *(v2 + 528);
              if (v78)
              {
                v79 = *(v2 + 544);
                if (v79)
                {
                  nw_association_unregister(v78, v79);
                }
              }

              v80 = *(v2 + 800);
              if (v80)
              {
                free(v80);
                *(v2 + 800) = 0;
              }

              *(v2 + 840) = 0;
              v81 = *(v2 + 808);
              if (v81)
              {
                free(v81);
                *(v2 + 808) = 0;
              }

              *(v2 + 844) = 0;
              v82 = *(v2 + 816);
              if (v82)
              {
                free(v82);
                *(v2 + 816) = 0;
              }

              *(v2 + 848) = 0;
              v83 = *(v2 + 824);
              if (v83)
              {
                free(v83);
                *(v2 + 824) = 0;
              }

              *(v2 + 852) = 0;
              v84 = *(v2 + 832);
              if (v84)
              {
                free(v84);
                *(v2 + 832) = 0;
              }

              *(v2 + 856) = 0;
              (*(*(v2 + 608) + 16))();
              v85 = *(v2 + 608);
              if (v85)
              {
                _Block_release(v85);
                *(v2 + 608) = 0;
              }

              nw_http1_connection::~nw_http1_connection(v2);
              free(v86);
              if (!*(v4 + 336) && !*(v4 + 344))
              {
                nw_protocol_http1_destroy(v4, v4);
              }

              return;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_destroy";
            LODWORD(v151) = 12;
            v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s input frame array is not empty when http1 connection is destroyed", buf, v151);
            type[0] = OS_LOG_TYPE_ERROR;
            v157 = 0;
            if (__nwlog_fault(v68, type, &v157))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v69 = gLogObj;
                v70 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_121;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v71 = "%{public}s input frame array is not empty when http1 connection is destroyed";
LABEL_119:
                v76 = v69;
                v77 = v70;
LABEL_120:
                _os_log_impl(&dword_181A37000, v76, v77, v71, buf, 0xCu);
                goto LABEL_121;
              }

              if (v157 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v69 = gLogObj;
                v70 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_121;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v71 = "%{public}s input frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
                goto LABEL_119;
              }

              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v73 = gLogObj;
              v74 = type[0];
              v75 = os_log_type_enabled(gLogObj, type[0]);
              if (backtrace_string)
              {
                if (v75)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_destroy";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v73, v74, "%{public}s input frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_121;
              }

              if (v75)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v71 = "%{public}s input frame array is not empty when http1 connection is destroyed, no backtrace";
                v76 = v73;
                v77 = v74;
                goto LABEL_120;
              }
            }

LABEL_121:
            if (v68)
            {
              free(v68);
            }

            goto LABEL_123;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_destroy";
          LODWORD(v151) = 12;
          v52 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s output frame array is not empty when http1 connection is destroyed", buf, v151);
          type[0] = OS_LOG_TYPE_ERROR;
          v157 = 0;
          if (__nwlog_fault(v52, type, &v157))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v53 = gLogObj;
              v54 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_105;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v55 = "%{public}s output frame array is not empty when http1 connection is destroyed";
LABEL_103:
              v66 = v53;
              v67 = v54;
LABEL_104:
              _os_log_impl(&dword_181A37000, v66, v67, v55, buf, 0xCu);
              goto LABEL_105;
            }

            if (v157 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v53 = gLogObj;
              v54 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_105;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v55 = "%{public}s output frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
              goto LABEL_103;
            }

            v56 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v57 = gLogObj;
            v58 = type[0];
            v59 = os_log_type_enabled(gLogObj, type[0]);
            if (v56)
            {
              if (v59)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_destroy";
                *&buf[12] = 2082;
                *&buf[14] = v56;
                _os_log_impl(&dword_181A37000, v57, v58, "%{public}s output frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v56);
              goto LABEL_105;
            }

            if (v59)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v55 = "%{public}s output frame array is not empty when http1 connection is destroyed, no backtrace";
              v66 = v57;
              v67 = v58;
              goto LABEL_104;
            }
          }

LABEL_105:
          if (v52)
          {
            free(v52);
          }

          goto LABEL_107;
        }

        if (*(v50 + 248))
        {
          if (v51[61] == v50)
          {
            if ((*(v50 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v87 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v88 = *(v50 + 256);
                v89 = *(*(v50 + 248) + 372);
                if (v88)
                {
                  LODWORD(v88) = *(v88 + 860);
                }

                v90 = *(v50 + 424);
                *buf = 136448002;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2082;
                *&buf[14] = v50 + 74;
                *&buf[22] = 2080;
                v161 = " ";
                v162 = 1024;
                *v163 = v89;
                *&v163[4] = 1024;
                *&v163[6] = v88;
                *&v163[10] = 1024;
                *&v163[12] = v90;
                *&v163[16] = 2048;
                *&v163[18] = v50;
                v164 = 2048;
                v165 = v2;
                _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
              }
            }

            v91 = v51 + 79;
            if (gLogDatapath == 1)
            {
              v150 = __nwlog_obj();
              if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                _os_log_impl(&dword_181A37000, v150, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              }
            }

            v92 = *v91;
            if (*v91)
            {
              *(v92 + 40) = type;
              v93 = v51[80];
              *type = v92;
              v159 = v93;
              v51[79] = 0;
              v51[80] = v91;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
              v161 = &__block_descriptor_tmp_21_49595;
              LOBYTE(v162) = 0;
              do
              {
                v94 = *type;
                if (!*type)
                {
                  break;
                }

                v95 = *(*type + 32);
                v96 = *(*type + 40);
                v97 = (v95 + 40);
                if (!v95)
                {
                  v97 = &v159;
                }

                *v97 = v96;
                *v96 = v95;
                *(v94 + 32) = 0;
                *(v94 + 40) = 0;
              }

              while (((*&buf[16])(buf) & 1) != 0);
            }

            *(v50 + 256) = 0;
            v51[61] = 0;
            nw_protocol_set_output_handler(v50, 0);
            nw_protocol_set_input_handler(v51, 0);
            goto LABEL_83;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = v51[61];
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v2;
          *&buf[22] = 2048;
          v161 = v50;
          v162 = 2048;
          *v163 = v60;
          LODWORD(v151) = 42;
          v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p does not already have stream %p, has %p", buf, v151);
          type[0] = OS_LOG_TYPE_ERROR;
          v157 = 0;
          if (__nwlog_fault(v61, type, &v157))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v62 = gLogObj;
              v63 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_169;
              }

              v64 = v51[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v161 = v50;
              v162 = 2048;
              *v163 = v64;
              v65 = "%{public}s Connection %p does not already have stream %p, has %p";
              goto LABEL_168;
            }

            if (v157 != 1)
            {
              v62 = __nwlog_obj();
              v63 = type[0];
              if (!os_log_type_enabled(v62, type[0]))
              {
                goto LABEL_169;
              }

              v101 = v51[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v161 = v50;
              v162 = 2048;
              *v163 = v101;
              v65 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
              goto LABEL_168;
            }

            v98 = __nw_create_backtrace_string();
            v62 = __nwlog_obj();
            v63 = type[0];
            v99 = os_log_type_enabled(v62, type[0]);
            if (v98)
            {
              if (v99)
              {
                v100 = v51[61];
                *buf = 136447234;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2048;
                *&buf[14] = v2;
                *&buf[22] = 2048;
                v161 = v50;
                v162 = 2048;
                *v163 = v100;
                *&v163[8] = 2082;
                *&v163[10] = v98;
                _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v98);
              goto LABEL_169;
            }

            if (v99)
            {
              v102 = v51[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v2;
              *&buf[22] = 2048;
              v161 = v50;
              v162 = 2048;
              *v163 = v102;
              v65 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
LABEL_168:
              _os_log_impl(&dword_181A37000, v62, v63, v65, buf, 0x2Au);
            }
          }

LABEL_169:
          if (v61)
          {
            free(v61);
          }

          goto LABEL_83;
        }

        v143 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        LODWORD(v151) = 12;
        v144 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v143, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v151);
        type[0] = OS_LOG_TYPE_ERROR;
        v157 = 0;
        if (__nwlog_fault(v144, type, &v157))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v145 = __nwlog_obj();
            v146 = type[0];
            if (!os_log_type_enabled(v145, type[0]))
            {
              goto LABEL_235;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v147 = "%{public}s called with null http1_stream->protocol_http1";
            goto LABEL_234;
          }

          if (v157 != 1)
          {
            v145 = __nwlog_obj();
            v146 = type[0];
            if (!os_log_type_enabled(v145, type[0]))
            {
              goto LABEL_235;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v147 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            goto LABEL_234;
          }

          v148 = __nw_create_backtrace_string();
          v145 = __nwlog_obj();
          v146 = type[0];
          v149 = os_log_type_enabled(v145, type[0]);
          if (v148)
          {
            if (v149)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2082;
              *&buf[14] = v148;
              _os_log_impl(&dword_181A37000, v145, v146, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v148);
            goto LABEL_235;
          }

          if (v149)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v147 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
LABEL_234:
            _os_log_impl(&dword_181A37000, v145, v146, v147, buf, 0xCu);
          }
        }

LABEL_235:
        if (v144)
        {
          free(v144);
        }

        goto LABEL_83;
      }

      v34 = *(v4 + 368);
      *(v4 + 368) = v34 - 1;
      if (v34)
      {
LABEL_71:
        if ((*(v4 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v140 = __nwlog_obj();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
          {
            v141 = *(v4 + 372);
            v142 = *(v4 + 368) + *(v4 + 364);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = v4 + 74;
            *&buf[22] = 2080;
            v161 = " ";
            v162 = 1024;
            *v163 = v141;
            *&v163[4] = 1024;
            *&v163[6] = v142;
            *&v163[10] = 2048;
            *&v163[12] = v2;
            _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> decreased connection pool width to %u after removing non-reusable connection %p", buf, 0x36u);
          }
        }

        goto LABEL_73;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = *(v4 + 368);
      *buf = 136446978;
      *&buf[4] = "nw_http1_remove_connection";
      *&buf[12] = 2082;
      *&buf[14] = "http1->nonresuable_connections";
      *&buf[22] = 2048;
      v161 = 1;
      v162 = 2048;
      *v163 = v35;
      LODWORD(v151) = 42;
      v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v151);
      type[0] = OS_LOG_TYPE_ERROR;
      v157 = 0;
      if (__nwlog_fault(v36, type, &v157))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v39 = *(v4 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v161 = 1;
            v162 = 2048;
            *v163 = v39;
            v40 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_67:
            _os_log_impl(&dword_181A37000, v37, v38, v40, buf, 0x2Au);
          }
        }

        else if (v157 == 1)
        {
          v41 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v38 = type[0];
          v42 = os_log_type_enabled(v37, type[0]);
          if (v41)
          {
            if (v42)
            {
              v43 = *(v4 + 368);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_connection";
              *&buf[12] = 2082;
              *&buf[14] = "http1->nonresuable_connections";
              *&buf[22] = 2048;
              v161 = 1;
              v162 = 2048;
              *v163 = v43;
              *&v163[8] = 2082;
              *&v163[10] = v41;
              _os_log_impl(&dword_181A37000, v37, v38, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v41);
            goto LABEL_68;
          }

          if (v42)
          {
            v45 = *(v4 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v161 = 1;
            v162 = 2048;
            *v163 = v45;
            v40 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_67;
          }
        }

        else
        {
          v37 = __nwlog_obj();
          v38 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            v44 = *(v4 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v161 = 1;
            v162 = 2048;
            *v163 = v44;
            v40 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_67;
          }
        }
      }

LABEL_68:
      if (v36)
      {
        free(v36);
      }

      *(v4 + 368) = 0;
      goto LABEL_71;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = *(v4 + 336);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_connection";
    *&buf[12] = 2082;
    *&buf[14] = "http1->connections_count";
    *&buf[22] = 2048;
    v161 = 1;
    v162 = 2048;
    *v163 = v23;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v157 = 0;
    if (__nwlog_fault(v24, type, &v157))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v27 = *(v4 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v161 = 1;
          v162 = 2048;
          *v163 = v27;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_46:
          _os_log_impl(&dword_181A37000, v25, v26, v28, buf, 0x2Au);
        }
      }

      else if (v157 == 1)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        v30 = os_log_type_enabled(gLogObj, type[0]);
        if (v29)
        {
          if (v30)
          {
            v31 = *(v4 + 336);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->connections_count";
            *&buf[22] = 2048;
            v161 = 1;
            v162 = 2048;
            *v163 = v31;
            *&v163[8] = 2082;
            *&v163[10] = v29;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v29);
          goto LABEL_47;
        }

        if (v30)
        {
          v33 = *(v4 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v161 = 1;
          v162 = 2048;
          *v163 = v33;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_46;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v32 = *(v4 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v161 = 1;
          v162 = 2048;
          *v163 = v32;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_46;
        }
      }
    }

LABEL_47:
    if (v24)
    {
      free(v24);
    }

    *(v4 + 336) = 0;
    goto LABEL_50;
  }

  v103 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_tear_down_connection";
  v104 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s called with null http1", buf, 12);
  v152[0] = OS_LOG_TYPE_ERROR;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v104, v152, type))
  {
    if (v152[0] == OS_LOG_TYPE_FAULT)
    {
      v105 = __nwlog_obj();
      v106 = v152[0];
      if (!os_log_type_enabled(v105, v152[0]))
      {
        goto LABEL_226;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v107 = "%{public}s called with null http1";
      goto LABEL_225;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v105 = __nwlog_obj();
      v106 = v152[0];
      if (!os_log_type_enabled(v105, v152[0]))
      {
        goto LABEL_226;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v107 = "%{public}s called with null http1, backtrace limit exceeded";
      goto LABEL_225;
    }

    v138 = __nw_create_backtrace_string();
    v105 = __nwlog_obj();
    v106 = v152[0];
    v139 = os_log_type_enabled(v105, v152[0]);
    if (v138)
    {
      if (v139)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v138;
        _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v138);
      goto LABEL_226;
    }

    if (v139)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v107 = "%{public}s called with null http1, no backtrace";
LABEL_225:
      _os_log_impl(&dword_181A37000, v105, v106, v107, buf, 0xCu);
    }
  }

LABEL_226:
  if (v104)
  {
    free(v104);
  }
}