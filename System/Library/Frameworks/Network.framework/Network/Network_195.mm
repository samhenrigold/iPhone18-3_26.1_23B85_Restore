void nw_protocol_http1_connected(nw_protocol *a1, nw_protocol *a2)
{
  v348 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v140 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (!__nwlog_fault(v141, type, &aBlock))
    {
      goto LABEL_438;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v142 = __nwlog_obj();
      v143 = type[0];
      if (!os_log_type_enabled(v142, type[0]))
      {
        goto LABEL_438;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v144 = "%{public}s called with null protocol";
    }

    else
    {
      if (aBlock == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v142 = __nwlog_obj();
        v143 = type[0];
        v157 = os_log_type_enabled(v142, type[0]);
        if (!backtrace_string)
        {
          if (!v157)
          {
            goto LABEL_438;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v144 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_437;
        }

        if (v157)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_438;
      }

      v142 = __nwlog_obj();
      v143 = type[0];
      if (!os_log_type_enabled(v142, type[0]))
      {
        goto LABEL_438;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v144 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_437;
  }

  handle = a1->handle;
  if (!handle)
  {
    v145 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v145, 16, "%{public}s called with null handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (!__nwlog_fault(v141, type, &aBlock))
    {
      goto LABEL_438;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (aBlock != 1)
      {
        v142 = __nwlog_obj();
        v143 = type[0];
        if (!os_log_type_enabled(v142, type[0]))
        {
          goto LABEL_438;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v144 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_437;
      }

      v158 = __nw_create_backtrace_string();
      v142 = __nwlog_obj();
      v143 = type[0];
      v159 = os_log_type_enabled(v142, type[0]);
      if (!v158)
      {
        if (!v159)
        {
          goto LABEL_438;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v144 = "%{public}s called with null handle, no backtrace";
        goto LABEL_437;
      }

      if (!v159)
      {
        goto LABEL_238;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v158;
      v160 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_237;
    }

    v142 = __nwlog_obj();
    v143 = type[0];
    if (!os_log_type_enabled(v142, type[0]))
    {
      goto LABEL_438;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v144 = "%{public}s called with null handle";
LABEL_437:
    _os_log_impl(&dword_181A37000, v142, v143, v144, buf, 0xCu);
    goto LABEL_438;
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
      goto LABEL_440;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    v225 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v225, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (__nwlog_fault(v141, type, &aBlock))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v142 = __nwlog_obj();
        v143 = type[0];
        if (!os_log_type_enabled(v142, type[0]))
        {
          goto LABEL_438;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v144 = "%{public}s called with null handle->http1_connection";
        goto LABEL_437;
      }

      if (aBlock != 1)
      {
        v142 = __nwlog_obj();
        v143 = type[0];
        if (!os_log_type_enabled(v142, type[0]))
        {
          goto LABEL_438;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v144 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_437;
      }

      v158 = __nw_create_backtrace_string();
      v142 = __nwlog_obj();
      v143 = type[0];
      v234 = os_log_type_enabled(v142, type[0]);
      if (!v158)
      {
        if (!v234)
        {
          goto LABEL_438;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v144 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_437;
      }

      if (v234)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v158;
        v160 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_237;
      }

LABEL_238:
      free(v158);
      if (!v141)
      {
LABEL_440:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_connected";
        LODWORD(v317) = 12;
        v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v317);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(aBlock) = 0;
        if (!__nwlog_fault(v147, type, &aBlock))
        {
          goto LABEL_478;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v148 = gLogObj;
          v149 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_478;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_connected";
          v150 = "%{public}s called with null http1";
        }

        else
        {
          if (aBlock == 1)
          {
            v283 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v284 = gLogObj;
            v285 = type[0];
            v286 = os_log_type_enabled(gLogObj, type[0]);
            if (!v283)
            {
              if (!v286)
              {
                goto LABEL_478;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_connected";
              v150 = "%{public}s called with null http1, no backtrace";
              goto LABEL_483;
            }

            if (v286)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_connected";
              *&buf[12] = 2082;
              *&buf[14] = v283;
              _os_log_impl(&dword_181A37000, v284, v285, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v283);
LABEL_478:
            if (!v147)
            {
              return;
            }

            goto LABEL_479;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v148 = gLogObj;
          v149 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_478;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_connected";
          v150 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_476:
        v289 = v148;
        v290 = v149;
LABEL_477:
        _os_log_impl(&dword_181A37000, v289, v290, v150, buf, 0xCu);
        goto LABEL_478;
      }

LABEL_439:
      free(v141);
      goto LABEL_440;
    }

LABEL_438:
    if (!v141)
    {
      goto LABEL_440;
    }

    goto LABEL_439;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v224 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v224, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(aBlock) = 0;
    if (!__nwlog_fault(v141, type, &aBlock))
    {
      goto LABEL_438;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v142 = __nwlog_obj();
      v143 = type[0];
      if (!os_log_type_enabled(v142, type[0]))
      {
        goto LABEL_438;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v144 = "%{public}s called with null handle->http1_stream";
      goto LABEL_437;
    }

    if (aBlock != 1)
    {
      v142 = __nwlog_obj();
      v143 = type[0];
      if (!os_log_type_enabled(v142, type[0]))
      {
        goto LABEL_438;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v144 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_437;
    }

    v158 = __nw_create_backtrace_string();
    v142 = __nwlog_obj();
    v143 = type[0];
    v233 = os_log_type_enabled(v142, type[0]);
    if (!v158)
    {
      if (!v233)
      {
        goto LABEL_438;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v144 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_437;
    }

    if (!v233)
    {
      goto LABEL_238;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v158;
    v160 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_237:
    _os_log_impl(&dword_181A37000, v142, v143, v160, buf, 0x16u);
    goto LABEL_238;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!*v4)
  {
    goto LABEL_440;
  }

  if (a2)
  {
    if (v3 != 2)
    {
      if (v3 != 3 || *(handle + 2))
      {
        goto LABEL_21;
      }

      v8 = a1;
      v9 = a2;
      v10 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null handle->http1_connection", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(aBlock) = 0;
      if (!__nwlog_fault(v11, type, &aBlock))
      {
        goto LABEL_456;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          v14 = "%{public}s called with null handle->http1_connection";
LABEL_455:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
        }
      }

      else if (aBlock == 1)
      {
        v235 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type[0];
        v236 = os_log_type_enabled(v12, type[0]);
        if (v235)
        {
          if (v236)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_get_stream_for_protocol";
            *&buf[12] = 2082;
            *&buf[14] = v235;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v235);
          goto LABEL_456;
        }

        if (v236)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          v14 = "%{public}s called with null handle->http1_connection, no backtrace";
          goto LABEL_455;
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_get_stream_for_protocol";
          v14 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
          goto LABEL_455;
        }
      }

LABEL_456:
      if (v11)
      {
        free(v11);
      }

      a2 = v9;
      a1 = v8;
      goto LABEL_21;
    }

    v15 = *(handle + 1);
    if (!v15 || *(v15 + 256))
    {
      goto LABEL_21;
    }

    if ((*(v15 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v239 = a2;
      v240 = a1;
      v241 = __nwlog_obj();
      v242 = os_log_type_enabled(v241, OS_LOG_TYPE_DEBUG);
      a2 = v239;
      v243 = v242;
      a1 = v240;
      if (v243)
      {
        v244 = *(v15 + 256);
        v245 = *(*(v15 + 248) + 372);
        if (v244)
        {
          LODWORD(v244) = *(v244 + 860);
        }

        v246 = *(v15 + 424);
        output_handler = v240->output_handler;
        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_connected";
        *&buf[12] = 2082;
        *&buf[14] = v15 + 74;
        *&buf[22] = 2080;
        v340 = " ";
        *v341 = 1024;
        *&v341[2] = v245;
        *&v341[6] = 1024;
        *&v341[8] = v244;
        *&v341[12] = 1024;
        *&v341[14] = v246;
        *&v341[18] = 2048;
        *v342 = output_handler;
        _os_log_impl(&dword_181A37000, v241, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> associating connected output handler %p", buf, 0x3Cu);
        a1 = v240;
        a2 = v239;
      }
    }

    v33 = a1->output_handler;
    if (!v33)
    {
      goto LABEL_21;
    }

    v34 = *(v15 + 336);
    v322 = a1;
    v323 = a1->output_handler;
    v321 = a2;
    if (v34)
    {
      v35 = *(v15 + 320);
      if (v35)
      {
        v36 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
        v37 = v36;
        if (v36)
        {
          bzero(v36, 0x370uLL);
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v38 = gLogObj;
          v39 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          *&buf[4] = "nw_http1_connection_create";
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          v340 = 880;
          v41 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
          if (__nwlog_should_abort(v41) || ((free(v41), bzero(0, 0x370uLL), MEMORY[0x1F0] = 0, MEMORY[0x1F8] &= ~1u, MEMORY[0x200] = 0, MEMORY[0x208] &= ~1u, MEMORY[0x210] = 0, MEMORY[0x218] &= ~1u, MEMORY[0x220] = 0, MEMORY[0x228] &= ~1u, MEMORY[0x230] = 0, MEMORY[0x238] &= ~1u, MEMORY[0x240] = 0, MEMORY[0x248] &= ~1u, MEMORY[0x2E0] = 0, MEMORY[0x2E8] &= ~1u, MEMORY[0x2F0] = 0, MEMORY[0x2F8] &= ~1u, MEMORY[0x300] = 0, MEMORY[0x308] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v42 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v43 = 2) : (v43 = 3), *buf = 136446210, *&buf[4] = "nw_http1_connection_create", LODWORD(v318) = 12, v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v318), __nwlog_should_abort(v44)))
          {
            __break(1u);
            return;
          }

          free(v44);
        }

        if (nw_protocol_http1_identifier::onceToken != -1)
        {
          dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
        }

        *(v37 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
        if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
        }

        *(v37 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
        *(v37 + 184) = 3;
        *(v37 + 176) = v37;
        *(v37 + 40) = v37 + 160;
        *(v37 + 480) = v7;
        nw_protocol_set_output_handler(v37, v33);
        v45 = os_retain(v34);
        v46 = *(v37 + 760);
        if ((v46 & 1) != 0 && *(v37 + 752))
        {
          v47 = v45;
          os_release(*(v37 + 752));
          v45 = v47;
          v46 = *(v37 + 760);
        }

        *(v37 + 752) = v45;
        *(v37 + 760) = v46 | 1;
        v48 = os_retain(v35);
        v49 = *(v37 + 744);
        if ((v49 & 1) != 0 && *(v37 + 736))
        {
          v50 = v48;
          os_release(*(v37 + 736));
          v48 = v50;
          v49 = *(v37 + 744);
        }

        *(v37 + 736) = v48;
        *(v37 + 744) = v49 | 1;
        v51 = _nw_parameters_copy_context();
        v52 = *(v37 + 504);
        if ((v52 & 1) != 0 && *(v37 + 496))
        {
          v53 = v51;
          os_release(*(v37 + 496));
          v51 = v53;
          v52 = *(v37 + 504);
        }

        *(v37 + 496) = v51;
        *(v37 + 504) = v52 | 1;
        *(v37 + 192) = *(v7 + 192);
        *type = MEMORY[0x1E69E9820];
        v327 = 0x40000000;
        v328 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
        v329 = &__block_descriptor_tmp_43_43000;
        v330 = v37;
        metadata = nw_http_connection_create_metadata(v51, type, 0);
        v55 = *(v37 + 776);
        if ((v55 & 1) != 0 && *(v37 + 768))
        {
          v56 = metadata;
          os_release(*(v37 + 768));
          metadata = v56;
          v55 = *(v37 + 776);
        }

        *(v37 + 768) = metadata;
        *(v37 + 776) = v55 | 1;
        nw_http_connection_metadata_set_version(metadata, 3);
        nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v37 + 768), *(v7 + 312));
        *(v37 + 616) = 0;
        *(v37 + 624) = v37 + 616;
        *(v37 + 632) = 0;
        *(v37 + 640) = v37 + 632;
        *(v37 + 648) = 0;
        *(v37 + 656) = v37 + 648;
        *(v37 + 664) = 0;
        *(v37 + 672) = v37 + 664;
        *(v37 + 680) = 0;
        *(v37 + 688) = v37 + 680;
        nw_frame_cache_init((v37 + 696), v37, 256, 0x40000, 16);
        v57 = *(v37 + 480);
        if (v57)
        {
          *(v37 + 360) = 0u;
          *(v37 + 376) = 0u;
          *(v37 + 392) = 0u;
          *(v37 + 408) = 0u;
          *(v37 + 424) = 0u;
          *(v37 + 440) = 0u;
          *(v37 + 328) = 0u;
          *(v37 + 344) = 0u;
          *(v37 + 296) = nw_http1_on_message_begin;
          *(v37 + 384) = nw_http1_on_message_complete;
          *(v37 + 368) = nw_http1_on_headers_complete;
          *(v37 + 472) = nw_http1_on_reset;
          *(v37 + 320) = nw_http1_on_method;
          *(v37 + 408) = nw_http1_on_method_complete;
          *(v37 + 304) = nw_http1_on_url;
          *(v37 + 392) = nw_http1_on_url_complete;
          *(v37 + 312) = nw_http1_on_status;
          *(v37 + 400) = nw_http1_on_status_complete;
          *(v37 + 336) = nw_http1_on_header_field;
          *(v37 + 424) = nw_http1_on_header_field_complete;
          *(v37 + 344) = nw_http1_on_header_value;
          *(v37 + 432) = nw_http1_on_header_value_complete;
          *(v37 + 376) = nw_http1_on_body;
          *(v37 + 456) = nw_http1_on_chunk_header;
          *(v37 + 464) = nw_http1_on_chunk_complete;
          v58 = *(v57 + 376);
          *(v37 + 248) = 0u;
          *(v37 + 200) = 0u;
          *(v37 + 264) = 0u;
          *(v37 + 232) = 0u;
          *(v37 + 216) = 0u;
          if (v58)
          {
            v59 = 1;
          }

          else
          {
            v59 = 2;
          }

          *(v37 + 272) = v59;
          *(v37 + 280) = 0;
          *(v37 + 288) = v37 + 296;
          *(v37 + 278) = 16131;
          *(v37 + 248) = v37;
          *(v37 + 256) = 237;
          if ((*(v37 + 158) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v60 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              v61 = *(v37 + 488);
              v62 = *(*(v37 + 480) + 372);
              v63 = *(v37 + 860);
              if (v61)
              {
                LODWORD(v61) = *(v61 + 424);
              }

              *buf = 136448258;
              *&buf[4] = "nw_http1_connection_log_parser_version";
              *&buf[12] = 2082;
              *&buf[14] = v37 + 74;
              *&buf[22] = 2080;
              v340 = " ";
              *v341 = 1024;
              *&v341[2] = v62;
              *&v341[6] = 1024;
              *&v341[8] = v63;
              *&v341[12] = 1024;
              *&v341[14] = v61;
              *&v341[18] = 1024;
              *v342 = 9;
              *&v342[4] = 1024;
              *&v342[6] = 2;
              *v343 = 1024;
              *&v343[2] = 1;
              _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
            }
          }

          goto LABEL_87;
        }

        v254 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_parser_init";
        LODWORD(v317) = 12;
        v255 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v254, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v317);
        v344[0] = 16;
        v338 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v255, v344, &v338))
        {
          if (v344[0] == 17)
          {
            v256 = __nwlog_obj();
            v257 = v344[0];
            if (os_log_type_enabled(v256, v344[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_parser_init";
              v258 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_569:
              _os_log_impl(&dword_181A37000, v256, v257, v258, buf, 0xCu);
            }
          }

          else if (v338 == OS_LOG_TYPE_INFO)
          {
            v295 = __nw_create_backtrace_string();
            v256 = __nwlog_obj();
            v257 = v344[0];
            v296 = os_log_type_enabled(v256, v344[0]);
            if (v295)
            {
              if (v296)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_parser_init";
                *&buf[12] = 2082;
                *&buf[14] = v295;
                _os_log_impl(&dword_181A37000, v256, v257, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v295);
              goto LABEL_570;
            }

            if (v296)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_parser_init";
              v258 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
              goto LABEL_569;
            }
          }

          else
          {
            v256 = __nwlog_obj();
            v257 = v344[0];
            if (os_log_type_enabled(v256, v344[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_parser_init";
              v258 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
              goto LABEL_569;
            }
          }
        }

LABEL_570:
        if (v255)
        {
          free(v255);
        }

        v33 = v323;
LABEL_87:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v340 = v37;
        aBlock = MEMORY[0x1E69E9820];
        p_aBlock = 0x40000000;
        v335 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
        v336 = &unk_1E6A32758;
        v337 = buf;
        *(v37 + 608) = _Block_copy(&aBlock);
        _Block_object_dispose(buf, 8);
        if ((*(v37 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v269 = __nwlog_obj();
          if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
          {
            v270 = *(v37 + 488);
            v271 = *(*(v37 + 480) + 372);
            v272 = *(v37 + 860);
            if (v270)
            {
              LODWORD(v270) = *(v270 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v37 + 74;
            *&buf[22] = 2080;
            v340 = " ";
            *v341 = 1024;
            *&v341[2] = v271;
            *&v341[6] = 1024;
            *&v341[8] = v272;
            *&v341[12] = 1024;
            *&v341[14] = v270;
            *&v341[18] = 2048;
            *v342 = v37;
            _os_log_impl(&dword_181A37000, v269, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
            v33 = v323;
          }
        }

        nw_protocol_replace_input_handler(v33, v15, v37);
        *v37 = *v33->flow_id;
        v64 = *(v37 + 736);
        if (v64)
        {
          if (!*(v37 + 528))
          {
            v65 = _nw_parameters_copy_context();
            v66 = nw_path_copy_flow_registration(v65, v37);
            v67 = *(v37 + 568);
            if ((v67 & 1) != 0 && *(v37 + 560))
            {
              v68 = v66;
              os_release(*(v37 + 560));
              v66 = v68;
              v67 = *(v37 + 568);
            }

            *(v37 + 560) = v66;
            *(v37 + 568) = v67 | 1;
            if (v66)
            {
              v69 = nw_path_flow_registration_copy_endpoint(v66);
              v70 = nw_path_flow_registration_copy_parameters(*(v37 + 560));
              v71 = nw_endpoint_copy_association_with_evaluator(v69, v70, 0);
              v72 = *(v37 + 536);
              if ((v72 & 1) != 0 && *(v37 + 528))
              {
                v73 = v71;
                os_release(*(v37 + 528));
                v71 = v73;
                v72 = *(v37 + 536);
              }

              *(v37 + 528) = v71;
              *(v37 + 536) = v72 | 1;
              if (v71)
              {
                *buf = nw_protocol_instance_stub_create(v37);
                nw::retained_ptr<nw_endpoint *>::operator=(v37 + 544, buf);
                nw_association_register_internal(*(v37 + 528), v64, *(v37 + 544), 0, 0, &__block_literal_global_69_43019);
                v74 = nw_association_copy_current_path(*(v37 + 528), v70);
                if (v74)
                {
                  v75 = v74;
                  v76 = nw_path_copy_for_flow_registration(v74, *(v37 + 560));
                  if (v76)
                  {
                    v77 = v76;
                    if (*(v37 + 512) != v76)
                    {
                      *buf = os_retain(v76);
                      nw::retained_ptr<nw_endpoint *>::operator=(v37 + 512, buf);
                    }

                    if (nw_path_has_flows(v77))
                    {
                      v78 = 4096;
                    }

                    else
                    {
                      v78 = 0;
                    }

                    *(v37 + 872) = *(v37 + 872) & 0xEFFF | v78;
                    v79 = _nw_parameters_copy_effective_proxy_config(v64);
                    if (v79)
                    {
                      v80 = v79;
                      if (nw_path_has_proxy_config(v75, v79))
                      {
                        *buf = os_retain(v80);
                        nw::retained_ptr<nw_endpoint *>::operator=(v37 + 576, buf);
                      }

                      os_release(v80);
                    }

                    os_release(v77);
                  }

                  os_release(v75);
                }
              }

              if (v70)
              {
                os_release(v70);
              }

              v33 = v323;
              if (v69)
              {
                os_release(v69);
              }
            }

            if (v65)
            {
              os_release(v65);
            }
          }

          v81 = *(v37 + 512);
          if (v81)
          {
LABEL_119:
            if (_nw_path_uses_interface_type(v81, 2u))
            {
              *(v37 + 192) = 1000;
            }
          }

LABEL_121:
          v82 = *(v7 + 336) + 1;
          *(v7 + 336) = v82;
          if (v82 == v82 << 31 >> 31)
          {
            goto LABEL_139;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v83 = *(v7 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_add_connection_for_output_handler";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v340 = 1;
          *v341 = 2048;
          *&v341[2] = v83;
          LODWORD(v317) = 42;
          v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v317);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(aBlock) = 0;
          if (__nwlog_fault(v84, type, &aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v85 = __nwlog_obj();
              v86 = type[0];
              if (os_log_type_enabled(v85, type[0]))
              {
                v87 = *(v7 + 336);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->connections_count";
                *&buf[22] = 2048;
                v340 = 1;
                *v341 = 2048;
                *&v341[2] = v87;
                v88 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_135:
                _os_log_impl(&dword_181A37000, v85, v86, v88, buf, 0x2Au);
              }
            }

            else if (aBlock == 1)
            {
              v89 = __nw_create_backtrace_string();
              v85 = __nwlog_obj();
              v86 = type[0];
              v90 = os_log_type_enabled(v85, type[0]);
              if (v89)
              {
                if (v90)
                {
                  v91 = *(v7 + 336);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v340 = 1;
                  *v341 = 2048;
                  *&v341[2] = v91;
                  *&v341[10] = 2082;
                  *&v341[12] = v89;
                  _os_log_impl(&dword_181A37000, v85, v86, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v89);
                v33 = v323;
                goto LABEL_136;
              }

              v33 = v323;
              if (v90)
              {
                v93 = *(v7 + 336);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->connections_count";
                *&buf[22] = 2048;
                v340 = 1;
                *v341 = 2048;
                *&v341[2] = v93;
                v88 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_135;
              }
            }

            else
            {
              v85 = __nwlog_obj();
              v86 = type[0];
              if (os_log_type_enabled(v85, type[0]))
              {
                v92 = *(v7 + 336);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->connections_count";
                *&buf[22] = 2048;
                v340 = 1;
                *v341 = 2048;
                *&v341[2] = v92;
                v88 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_135;
              }
            }
          }

LABEL_136:
          if (v84)
          {
            free(v84);
          }

          *(v7 + 336) = -1;
LABEL_139:
          v94 = *(v7 + 360) + 1;
          *(v7 + 360) = v94;
          if (v94 == v94 << 31 >> 31)
          {
            goto LABEL_157;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v95 = *(v7 + 360);
          *buf = 136446978;
          *&buf[4] = "nw_http1_add_connection_for_output_handler";
          *&buf[12] = 2082;
          *&buf[14] = "http1->next_connection_log_num";
          *&buf[22] = 2048;
          v340 = 1;
          *v341 = 2048;
          *&v341[2] = v95;
          LODWORD(v317) = 42;
          v96 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v317);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(aBlock) = 0;
          if (__nwlog_fault(v96, type, &aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v97 = __nwlog_obj();
              v98 = type[0];
              if (os_log_type_enabled(v97, type[0]))
              {
                v99 = *(v7 + 360);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->next_connection_log_num";
                *&buf[22] = 2048;
                v340 = 1;
                *v341 = 2048;
                *&v341[2] = v99;
                v100 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_153:
                _os_log_impl(&dword_181A37000, v97, v98, v100, buf, 0x2Au);
              }
            }

            else if (aBlock == 1)
            {
              v101 = __nw_create_backtrace_string();
              v97 = __nwlog_obj();
              v98 = type[0];
              v102 = os_log_type_enabled(v97, type[0]);
              if (v101)
              {
                if (v102)
                {
                  v103 = *(v7 + 360);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v340 = 1;
                  *v341 = 2048;
                  *&v341[2] = v103;
                  *&v341[10] = 2082;
                  *&v341[12] = v101;
                  _os_log_impl(&dword_181A37000, v97, v98, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v101);
                v33 = v323;
                goto LABEL_154;
              }

              v33 = v323;
              if (v102)
              {
                v105 = *(v7 + 360);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->next_connection_log_num";
                *&buf[22] = 2048;
                v340 = 1;
                *v341 = 2048;
                *&v341[2] = v105;
                v100 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_153;
              }
            }

            else
            {
              v97 = __nwlog_obj();
              v98 = type[0];
              if (os_log_type_enabled(v97, type[0]))
              {
                v104 = *(v7 + 360);
                *buf = 136446978;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = "http1->next_connection_log_num";
                *&buf[22] = 2048;
                v340 = 1;
                *v341 = 2048;
                *&v341[2] = v104;
                v100 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_153;
              }
            }
          }

LABEL_154:
          if (v96)
          {
            free(v96);
          }

          LODWORD(v94) = -1;
          *(v7 + 360) = -1;
LABEL_157:
          *(v37 + 860) = v94;
          if ((*(v37 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v273 = __nwlog_obj();
            if (os_log_type_enabled(v273, OS_LOG_TYPE_DEBUG))
            {
              v274 = *(v37 + 488);
              v275 = *(*(v37 + 480) + 372);
              v276 = *(v37 + 860);
              if (v274)
              {
                LODWORD(v274) = *(v274 + 424);
              }

              v277 = *(v7 + 336);
              *buf = 136448002;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              *&buf[12] = 2082;
              *&buf[14] = v37 + 74;
              *&buf[22] = 2080;
              v340 = " ";
              *v341 = 1024;
              *&v341[2] = v275;
              *&v341[6] = 1024;
              *&v341[8] = v276;
              *&v341[12] = 1024;
              *&v341[14] = v274;
              *&v341[18] = 2048;
              *v342 = v37;
              *&v342[8] = 1024;
              *v343 = v277;
              _os_log_impl(&dword_181A37000, v273, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
              v33 = v323;
            }
          }

          if (*(v15 + 248))
          {
            if (*(v37 + 488))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v106 = *(v37 + 488);
              *buf = 136446722;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              *&buf[12] = 2048;
              *&buf[14] = v37;
              *&buf[22] = 2048;
              v340 = v106;
              LODWORD(v317) = 32;
              v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Connection %p already has a stream (%p)", buf, v317);
              LOBYTE(aBlock) = 16;
              v344[0] = 0;
              if (!__nwlog_fault(v107, &aBlock, v344))
              {
                goto LABEL_196;
              }

              if (aBlock == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v108 = gLogObj;
                v109 = aBlock;
                if (!os_log_type_enabled(gLogObj, aBlock))
                {
                  goto LABEL_196;
                }

                v110 = *(v37 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v37;
                *&buf[22] = 2048;
                v340 = v110;
                v111 = "%{public}s Connection %p already has a stream (%p)";
              }

              else if (v344[0] == 1)
              {
                v114 = __nw_create_backtrace_string();
                v108 = __nwlog_obj();
                v109 = aBlock;
                v115 = os_log_type_enabled(v108, aBlock);
                if (v114)
                {
                  if (v115)
                  {
                    v116 = *(v37 + 488);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v37;
                    *&buf[22] = 2048;
                    v340 = v116;
                    *v341 = 2082;
                    *&v341[2] = v114;
                    _os_log_impl(&dword_181A37000, v108, v109, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v114);
                  v33 = v323;
                  goto LABEL_196;
                }

                v33 = v323;
                if (!v115)
                {
LABEL_196:
                  if (v107)
                  {
                    free(v107);
                  }

                  goto LABEL_286;
                }

                v135 = *(v37 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v37;
                *&buf[22] = 2048;
                v340 = v135;
                v111 = "%{public}s Connection %p already has a stream (%p), no backtrace";
              }

              else
              {
                v108 = __nwlog_obj();
                v109 = aBlock;
                if (!os_log_type_enabled(v108, aBlock))
                {
                  goto LABEL_196;
                }

                v117 = *(v37 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v37;
                *&buf[22] = 2048;
                v340 = v117;
                v111 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v108, v109, v111, buf, 0x20u);
              goto LABEL_196;
            }

            *(v15 + 256) = v37;
            *(v37 + 488) = v15;
            v112 = *(v15 + 320);
            if (v112)
            {
              v113 = os_retain(v112);
            }

            else
            {
              v113 = 0;
            }

            v118 = *(v37 + 744);
            if (v118)
            {
              v119 = *(v37 + 736);
              if (v119)
              {
                os_release(v119);
                v118 = *(v37 + 744);
              }
            }

            *(v37 + 736) = v113;
            *(v37 + 744) = v118 | 1;
            if ((*(*(v15 + 248) + 376) & 2) == 0)
            {
LABEL_258:
              v162 = *(v15 + 32);
              if (!v162 || v162 == *(v37 + 32))
              {
LABEL_276:
                nw_protocol_set_output_handler(v15, *(v37 + 32));
                nw_protocol_set_input_handler(v37, *(v15 + 48));
                *v15 = *v37;
                v180 = *(v15 + 96);
                v181 = *(v15 + 112);
                v182 = *(v15 + 128);
                *(v37 + 144) = *(v15 + 144);
                v183 = *(v15 + 80);
                *(v37 + 64) = *(v15 + 64);
                *(v37 + 80) = v183;
                *(v37 + 112) = v181;
                *(v37 + 128) = v182;
                *(v37 + 96) = v180;
                *(v37 + 872) &= 0xFFD7u;
                *(v37 + 864) = 1;
                if ((*(v37 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v184 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    v185 = *(v37 + 488);
                    v186 = *(*(v37 + 480) + 372);
                    v187 = *(v37 + 860);
                    if (v185)
                    {
                      LODWORD(v185) = *(v185 + 424);
                    }

                    *buf = 136447490;
                    *&buf[4] = "nw_http1_update_connection_input_state";
                    *&buf[12] = 2082;
                    *&buf[14] = v37 + 74;
                    *&buf[22] = 2080;
                    v340 = " ";
                    *v341 = 1024;
                    *&v341[2] = v186;
                    *&v341[6] = 1024;
                    *&v341[8] = v187;
                    *&v341[12] = 1024;
                    *&v341[14] = v185;
                    _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                  }
                }

                if ((*(v15 + 158) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v188 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v189 = *(v15 + 256);
                    v190 = *(*(v15 + 248) + 372);
                    if (v189)
                    {
                      LODWORD(v189) = *(v189 + 860);
                    }

                    v191 = *(v15 + 424);
                    *buf = 136448002;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2082;
                    *&buf[14] = v15 + 74;
                    *&buf[22] = 2080;
                    v340 = " ";
                    *v341 = 1024;
                    *&v341[2] = v190;
                    *&v341[6] = 1024;
                    *&v341[8] = v189;
                    *&v341[12] = 1024;
                    *&v341[14] = v191;
                    *&v341[18] = 2048;
                    *v342 = v15;
                    *&v342[8] = 2048;
                    *v343 = v37;
                    _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                  }
                }

                goto LABEL_286;
              }

              v163 = __nwlog_obj();
              v164 = *(v15 + 32);
              v165 = *(v37 + 32);
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              *&buf[12] = 2048;
              *&buf[14] = v164;
              *&buf[22] = 2048;
              v340 = v15;
              *v341 = 2048;
              *&v341[2] = v165;
              LODWORD(v317) = 42;
              v166 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v317);
              LOBYTE(aBlock) = 16;
              v344[0] = 0;
              if (__nwlog_fault(v166, &aBlock, v344))
              {
                if (aBlock == 17)
                {
                  v167 = __nwlog_obj();
                  v168 = aBlock;
                  if (!os_log_type_enabled(v167, aBlock))
                  {
                    goto LABEL_274;
                  }

                  v169 = *(v15 + 32);
                  v170 = *(v37 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v169;
                  *&buf[22] = 2048;
                  v340 = v15;
                  *v341 = 2048;
                  *&v341[2] = v170;
                  v171 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                  goto LABEL_273;
                }

                if (v344[0] != 1)
                {
                  v167 = __nwlog_obj();
                  v168 = aBlock;
                  if (!os_log_type_enabled(v167, aBlock))
                  {
                    goto LABEL_274;
                  }

                  v176 = *(v15 + 32);
                  v177 = *(v37 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v176;
                  *&buf[22] = 2048;
                  v340 = v15;
                  *v341 = 2048;
                  *&v341[2] = v177;
                  v171 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                  goto LABEL_273;
                }

                v172 = __nw_create_backtrace_string();
                v167 = __nwlog_obj();
                v168 = aBlock;
                v173 = os_log_type_enabled(v167, aBlock);
                if (v172)
                {
                  if (v173)
                  {
                    v174 = *(v15 + 32);
                    v175 = *(v37 + 32);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v174;
                    *&buf[22] = 2048;
                    v340 = v15;
                    *v341 = 2048;
                    *&v341[2] = v175;
                    *&v341[10] = 2082;
                    *&v341[12] = v172;
                    _os_log_impl(&dword_181A37000, v167, v168, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v172);
                  v33 = v323;
                  goto LABEL_274;
                }

                v33 = v323;
                if (v173)
                {
                  v178 = *(v15 + 32);
                  v179 = *(v37 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v178;
                  *&buf[22] = 2048;
                  v340 = v15;
                  *v341 = 2048;
                  *&v341[2] = v179;
                  v171 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_273:
                  _os_log_impl(&dword_181A37000, v167, v168, v171, buf, 0x2Au);
                }
              }

LABEL_274:
              if (v166)
              {
                free(v166);
              }

              goto LABEL_276;
            }

            v120 = nw_parameters_copy_default_protocol_stack(*(v15 + 320));
            aBlock = 0;
            p_aBlock = &aBlock;
            v335 = 0x2000000000;
            LOBYTE(v336) = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v340 = __Block_byref_object_copy__42960;
            *v341 = __Block_byref_object_dispose__42961;
            *&v341[8] = 0;
            v341[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v327 = 0x40000000;
            v328 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
            v329 = &unk_1E6A32930;
            v330 = &aBlock;
            v331 = buf;
            v332 = v15;
            nw_protocol_stack_iterate_application_protocols(v120, type);
            if (*(*&buf[8] + 40))
            {
              v121 = v37;
              while (1)
              {
                v121 = *(v121 + 32);
                if (!v121)
                {
                  break;
                }

                if (nw_protocol_is_tls_over_stream(v121))
                {
                  v122 = *(*&buf[8] + 40);
                  v123 = nw_protocol_boringssl_copy_definition();
                  nw_parameters_set_protocol_instance(v122, v124, v121);
                  if (v123)
                  {
                    os_release(v123);
                  }

                  goto LABEL_245;
                }
              }

              v130 = __nwlog_obj();
              *v344 = 136446210;
              v345 = "nw_http1_stream_associate_with_connection";
              LODWORD(v317) = 12;
              v131 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s tls should have been in the stack but could not find it", v344, v317);
              v338 = OS_LOG_TYPE_ERROR;
              v325 = 0;
              if (!__nwlog_fault(v131, &v338, &v325))
              {
                goto LABEL_249;
              }

              if (v338 == OS_LOG_TYPE_FAULT)
              {
                v132 = __nwlog_obj();
                v133 = v338;
                if (os_log_type_enabled(v132, v338))
                {
                  *v344 = 136446210;
                  v345 = "nw_http1_stream_associate_with_connection";
                  v134 = "%{public}s tls should have been in the stack but could not find it";
LABEL_248:
                  _os_log_impl(&dword_181A37000, v132, v133, v134, v344, 0xCu);
                }
              }

              else if (v325 == 1)
              {
                v138 = __nw_create_backtrace_string();
                v132 = __nwlog_obj();
                v133 = v338;
                v139 = os_log_type_enabled(v132, v338);
                if (v138)
                {
                  if (v139)
                  {
                    *v344 = 136446466;
                    v345 = "nw_http1_stream_associate_with_connection";
                    v346 = 2082;
                    v347 = v138;
                    _os_log_impl(&dword_181A37000, v132, v133, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v344, 0x16u);
                  }

                  free(v138);
                  goto LABEL_249;
                }

                if (v139)
                {
                  *v344 = 136446210;
                  v345 = "nw_http1_stream_associate_with_connection";
                  v134 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                  goto LABEL_248;
                }
              }

              else
              {
                v132 = __nwlog_obj();
                v133 = v338;
                if (os_log_type_enabled(v132, v338))
                {
                  *v344 = 136446210;
                  v345 = "nw_http1_stream_associate_with_connection";
                  v134 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                  goto LABEL_248;
                }
              }

LABEL_249:
              if (v131)
              {
                free(v131);
              }

              v161 = 0;
              goto LABEL_252;
            }

            v125 = __nwlog_obj();
            *v344 = 136446210;
            v345 = "nw_http1_stream_associate_with_connection";
            LODWORD(v317) = 12;
            v126 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v125, 16, "%{public}s unable to find tls options", v344, v317);
            v338 = OS_LOG_TYPE_ERROR;
            v325 = 0;
            if (__nwlog_fault(v126, &v338, &v325))
            {
              if (v338 == OS_LOG_TYPE_FAULT)
              {
                v127 = __nwlog_obj();
                v128 = v338;
                if (os_log_type_enabled(v127, v338))
                {
                  *v344 = 136446210;
                  v345 = "nw_http1_stream_associate_with_connection";
                  v129 = "%{public}s unable to find tls options";
LABEL_242:
                  _os_log_impl(&dword_181A37000, v127, v128, v129, v344, 0xCu);
                }
              }

              else if (v325 == 1)
              {
                v136 = __nw_create_backtrace_string();
                v127 = __nwlog_obj();
                v128 = v338;
                v137 = os_log_type_enabled(v127, v338);
                if (v136)
                {
                  if (v137)
                  {
                    *v344 = 136446466;
                    v345 = "nw_http1_stream_associate_with_connection";
                    v346 = 2082;
                    v347 = v136;
                    _os_log_impl(&dword_181A37000, v127, v128, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v344, 0x16u);
                  }

                  free(v136);
                }

                else if (v137)
                {
                  *v344 = 136446210;
                  v345 = "nw_http1_stream_associate_with_connection";
                  v129 = "%{public}s unable to find tls options, no backtrace";
                  goto LABEL_242;
                }
              }

              else
              {
                v127 = __nwlog_obj();
                v128 = v338;
                if (os_log_type_enabled(v127, v338))
                {
                  *v344 = 136446210;
                  v345 = "nw_http1_stream_associate_with_connection";
                  v129 = "%{public}s unable to find tls options, backtrace limit exceeded";
                  goto LABEL_242;
                }
              }
            }

            if (v126)
            {
              free(v126);
            }

LABEL_245:
            v161 = 1;
LABEL_252:
            v33 = v323;
            _Block_object_dispose(buf, 8);
            if ((v341[16] & 1) != 0 && *&v341[8])
            {
              os_release(*&v341[8]);
            }

            _Block_object_dispose(&aBlock, 8);
            if (v120)
            {
              os_release(v120);
            }

            if (v161)
            {
              goto LABEL_258;
            }

LABEL_286:
            if ((*(v15 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v192 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v193 = *(v15 + 256);
                v194 = *(*(v15 + 248) + 372);
                if (v193)
                {
                  LODWORD(v193) = *(v193 + 860);
                }

                v195 = *(v15 + 424);
                *buf = 136448258;
                *&buf[4] = "nw_http1_start_new_connection_for_stream";
                *&buf[12] = 2082;
                *&buf[14] = v15 + 74;
                *&buf[22] = 2080;
                v340 = " ";
                *v341 = 1024;
                *&v341[2] = v194;
                *&v341[6] = 1024;
                *&v341[8] = v193;
                *&v341[12] = 1024;
                *&v341[14] = v195;
                *&v341[18] = 2048;
                *v342 = v37;
                *&v342[8] = 1024;
                *v343 = v195;
                *&v343[4] = 2048;
                *&v343[6] = v15;
                _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
              }
            }

            *(v15 + 428) |= 1u;
            v196 = nw_protocol_copy_info(v33);
            v197 = v196;
            if (v196)
            {
              object = _nw_array_copy_last_object(v196);
              v199 = object;
              if (object)
              {
                if (nw_protocol_metadata_is_tls(object))
                {
                  v199 = v199;
                  nw_http_connection_metadata_set_sec_metadata(*(v37 + 768), v199);
                  os_release(v199);
                  nw_protocol_connect(v33, v37);
                  goto LABEL_304;
                }

                v200 = 0;
LABEL_298:
                if (v37)
                {
                  v201 = v33;
                  v202 = v37;
                  goto LABEL_300;
                }

                v278 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_get_output_protocol";
                LODWORD(v317) = 12;
                v279 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v278, 16, "%{public}s called with null connection", buf, v317);
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(aBlock) = 0;
                if (__nwlog_fault(v279, type, &aBlock))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v280 = __nwlog_obj();
                    v281 = type[0];
                    if (os_log_type_enabled(v280, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_output_protocol";
                      v282 = "%{public}s called with null connection";
LABEL_588:
                      _os_log_impl(&dword_181A37000, v280, v281, v282, buf, 0xCu);
                    }
                  }

                  else if (aBlock == 1)
                  {
                    v301 = __nw_create_backtrace_string();
                    v280 = __nwlog_obj();
                    v281 = type[0];
                    v302 = os_log_type_enabled(v280, type[0]);
                    if (v301)
                    {
                      if (v302)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_get_output_protocol";
                        *&buf[12] = 2082;
                        *&buf[14] = v301;
                        _os_log_impl(&dword_181A37000, v280, v281, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v301);
                      goto LABEL_589;
                    }

                    if (v302)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_output_protocol";
                      v282 = "%{public}s called with null connection, no backtrace";
                      goto LABEL_588;
                    }
                  }

                  else
                  {
                    v280 = __nwlog_obj();
                    v281 = type[0];
                    if (os_log_type_enabled(v280, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_output_protocol";
                      v282 = "%{public}s called with null connection, backtrace limit exceeded";
                      goto LABEL_588;
                    }
                  }
                }

LABEL_589:
                if (v279)
                {
                  free(v279);
                }

                v201 = v323;
                v202 = 0;
LABEL_300:
                nw_protocol_connect(v201, v202);
                if (v199)
                {
                  v203 = v200;
                }

                else
                {
                  v203 = 1;
                }

                if (v203)
                {
LABEL_305:
                  if (v197)
                  {
                    os_release(v197);
                  }

                  v204 = *(v15 + 428);
                  a2 = v321;
                  a1 = v322;
                  if ((v204 & 0x10) != 0)
                  {
                    *(v15 + 428) = v204 & 0xFFEF;
                    v205 = *(v7 + 352);
                    *(v7 + 352) = v205 - 1;
                    if (!v205)
                    {
                      v206 = __nwlog_obj();
                      v207 = *(v7 + 352);
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_http1_connected";
                      *&buf[12] = 2082;
                      *&buf[14] = "http1->pending_output_handler_count";
                      *&buf[22] = 2048;
                      v340 = 1;
                      *v341 = 2048;
                      *&v341[2] = v207;
                      LODWORD(v317) = 42;
                      v208 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v206, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v317);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(aBlock) = 0;
                      if (__nwlog_fault(v208, type, &aBlock))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v209 = __nwlog_obj();
                          v210 = type[0];
                          if (os_log_type_enabled(v209, type[0]))
                          {
                            v211 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v340 = 1;
                            *v341 = 2048;
                            *&v341[2] = v211;
                            v212 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_320:
                            v218 = v209;
LABEL_321:
                            _os_log_impl(&dword_181A37000, v218, v210, v212, buf, 0x2Au);
                          }
                        }

                        else if (aBlock == 1)
                        {
                          v213 = __nw_create_backtrace_string();
                          v214 = __nwlog_obj();
                          v210 = type[0];
                          v215 = os_log_type_enabled(v214, type[0]);
                          if (v213)
                          {
                            if (v215)
                            {
                              v216 = *(v7 + 352);
                              *buf = 136447234;
                              *&buf[4] = "nw_protocol_http1_connected";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v340 = 1;
                              *v341 = 2048;
                              *&v341[2] = v216;
                              *&v341[10] = 2082;
                              *&v341[12] = v213;
                              _os_log_impl(&dword_181A37000, v214, v210, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v213);
                            goto LABEL_322;
                          }

                          if (v215)
                          {
                            v219 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v340 = 1;
                            *v341 = 2048;
                            *&v341[2] = v219;
                            v212 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                            v218 = v214;
                            goto LABEL_321;
                          }
                        }

                        else
                        {
                          v209 = __nwlog_obj();
                          v210 = type[0];
                          if (os_log_type_enabled(v209, type[0]))
                          {
                            v217 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v340 = 1;
                            *v341 = 2048;
                            *&v341[2] = v217;
                            v212 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_320;
                          }
                        }
                      }

LABEL_322:
                      if (v208)
                      {
                        free(v208);
                      }

                      *(v7 + 352) = 0;
                      a2 = v321;
                      a1 = v322;
                    }
                  }

LABEL_21:
                  v16 = a1->handle;
                  if (v16)
                  {
                    v17 = *(v16 + 6);
                    if (v17 != 2)
                    {
                      if (v17 != 3)
                      {
                        goto LABEL_464;
                      }

                      v18 = (v16 + 16);
                      goto LABEL_27;
                    }

                    v19 = *(v16 + 1);
                    if (v19)
                    {
                      v18 = (v19 + 256);
LABEL_27:
                      v20 = *v18;
                      if (*v18)
                      {
                        v21 = *(v20 + 488);
                        if (v21)
                        {
                          v22 = a2;
                          nw_protocol_connected(*(v21 + 48), a2);
                          a2 = v22;
                        }

                        if (*(v20 + 32) == a2)
                        {
                          if ((*(v20 + 158) & 1) == 0 && gLogDatapath == 1)
                          {
                            v227 = a2;
                            v228 = __nwlog_obj();
                            if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
                            {
                              v229 = *(v20 + 488);
                              v230 = *(*(v20 + 480) + 372);
                              v231 = *(v20 + 860);
                              if (v229)
                              {
                                LODWORD(v229) = *(v229 + 424);
                              }

                              identifier = v227->identifier;
                              *buf = 136447746;
                              *&buf[4] = "nw_protocol_http1_connected";
                              *&buf[12] = 2082;
                              *&buf[14] = v20 + 74;
                              *&buf[22] = 2080;
                              v340 = " ";
                              *v341 = 1024;
                              *&v341[2] = v230;
                              *&v341[6] = 1024;
                              *&v341[8] = v231;
                              *&v341[12] = 1024;
                              *&v341[14] = v229;
                              *&v341[18] = 2080;
                              *v342 = identifier;
                              _os_log_impl(&dword_181A37000, v228, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connected protocol %s is our output_handler, forwarding", buf, 0x3Cu);
                            }
                          }

                          *(v20 + 872) |= 0x40u;
                          v29 = *(v20 + 488);
                          if (v29)
                          {
                            *(v29 + 428) |= 0x8000u;
                            v30 = *(v29 + 352);
                            v324[0] = MEMORY[0x1E69E9820];
                            v324[1] = 0x40000000;
                            v324[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke;
                            v324[3] = &__block_descriptor_tmp_87;
                            v324[4] = v29;
                            nw_http_transaction_metadata_set_event_handler(v30, v324);
                            if (*(v29 + 428))
                            {
                              nw_http_transaction_metadata_set_first_on_connection(*(v29 + 352));
                              nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v20 + 768));
                            }

                            nw_http_transaction_metadata_set_connection_metadata(*(v29 + 352), *(v20 + 768));
                            v31 = *(v20 + 488);
                            if (v31)
                            {
                              v32 = *(v31 + 48);
                            }

                            else
                            {
                              v32 = 0;
                            }

                            nw_protocol_connected(v32, v31);
                          }
                        }

                        else if ((*(v20 + 158) & 1) == 0 && gLogDatapath == 1)
                        {
                          v23 = a2;
                          v24 = __nwlog_obj();
                          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                          {
                            v25 = *(v20 + 488);
                            v26 = *(*(v20 + 480) + 372);
                            v27 = *(v20 + 860);
                            if (v25)
                            {
                              LODWORD(v25) = *(v25 + 424);
                            }

                            v28 = v23->identifier;
                            *buf = 136447746;
                            *&buf[4] = "nw_protocol_http1_connected";
                            *&buf[12] = 2082;
                            *&buf[14] = v20 + 74;
                            *&buf[22] = 2080;
                            v340 = " ";
                            *v341 = 1024;
                            *&v341[2] = v26;
                            *&v341[6] = 1024;
                            *&v341[8] = v27;
                            *&v341[12] = 1024;
                            *&v341[14] = v25;
                            *&v341[18] = 2080;
                            *v342 = v28;
                            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connected protocol %s is not our output_handler, ignoring", buf, 0x3Cu);
                          }
                        }

                        return;
                      }

LABEL_464:
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_http1_connected";
                      LODWORD(v317) = 12;
                      v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_connection", buf, v317);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(aBlock) = 0;
                      if (!__nwlog_fault(v147, type, &aBlock))
                      {
                        goto LABEL_478;
                      }

                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v148 = gLogObj;
                        v149 = type[0];
                        if (!os_log_type_enabled(gLogObj, type[0]))
                        {
                          goto LABEL_478;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_http1_connected";
                        v150 = "%{public}s called with null http1_connection";
                        goto LABEL_476;
                      }

                      if (aBlock != 1)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v148 = gLogObj;
                        v149 = type[0];
                        if (!os_log_type_enabled(gLogObj, type[0]))
                        {
                          goto LABEL_478;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_http1_connected";
                        v150 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                        goto LABEL_476;
                      }

                      v287 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v284 = gLogObj;
                      v285 = type[0];
                      v288 = os_log_type_enabled(gLogObj, type[0]);
                      if (v287)
                      {
                        if (v288)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_protocol_http1_connected";
                          *&buf[12] = 2082;
                          *&buf[14] = v287;
                          _os_log_impl(&dword_181A37000, v284, v285, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v287);
                        if (!v147)
                        {
                          return;
                        }

LABEL_479:
                        free(v147);
                        return;
                      }

                      if (v288)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_protocol_http1_connected";
                        v150 = "%{public}s called with null http1_connection, no backtrace";
LABEL_483:
                        v289 = v284;
                        v290 = v285;
                        goto LABEL_477;
                      }

                      goto LABEL_478;
                    }

                    v226 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_get_connection_for_protocol";
                    LODWORD(v317) = 12;
                    v152 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v226, 16, "%{public}s called with null handle->http1_stream", buf, v317);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(aBlock) = 0;
                    if (!__nwlog_fault(v152, type, &aBlock))
                    {
                      goto LABEL_462;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v153 = __nwlog_obj();
                      v154 = type[0];
                      if (!os_log_type_enabled(v153, type[0]))
                      {
                        goto LABEL_462;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v155 = "%{public}s called with null handle->http1_stream";
                      goto LABEL_461;
                    }

                    if (aBlock != 1)
                    {
                      v153 = __nwlog_obj();
                      v154 = type[0];
                      if (!os_log_type_enabled(v153, type[0]))
                      {
                        goto LABEL_462;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v155 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
                      goto LABEL_461;
                    }

                    v237 = __nw_create_backtrace_string();
                    v153 = __nwlog_obj();
                    v154 = type[0];
                    v238 = os_log_type_enabled(v153, type[0]);
                    if (v237)
                    {
                      if (v238)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_get_connection_for_protocol";
                        *&buf[12] = 2082;
                        *&buf[14] = v237;
                        _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v237);
                      if (!v152)
                      {
                        goto LABEL_464;
                      }

LABEL_463:
                      free(v152);
                      goto LABEL_464;
                    }

                    if (v238)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v155 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_461:
                      _os_log_impl(&dword_181A37000, v153, v154, v155, buf, 0xCu);
                    }
                  }

                  else
                  {
                    v151 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_get_connection_for_protocol";
                    LODWORD(v317) = 12;
                    v152 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v151, 16, "%{public}s called with null handle", buf, v317);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(aBlock) = 0;
                    if (!__nwlog_fault(v152, type, &aBlock))
                    {
                      goto LABEL_462;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v153 = __nwlog_obj();
                      v154 = type[0];
                      if (!os_log_type_enabled(v153, type[0]))
                      {
                        goto LABEL_462;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v155 = "%{public}s called with null handle";
                      goto LABEL_461;
                    }

                    if (aBlock != 1)
                    {
                      v153 = __nwlog_obj();
                      v154 = type[0];
                      if (!os_log_type_enabled(v153, type[0]))
                      {
                        goto LABEL_462;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v155 = "%{public}s called with null handle, backtrace limit exceeded";
                      goto LABEL_461;
                    }

                    v222 = __nw_create_backtrace_string();
                    v153 = __nwlog_obj();
                    v154 = type[0];
                    v223 = os_log_type_enabled(v153, type[0]);
                    if (!v222)
                    {
                      if (!v223)
                      {
                        goto LABEL_462;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      v155 = "%{public}s called with null handle, no backtrace";
                      goto LABEL_461;
                    }

                    if (v223)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_get_connection_for_protocol";
                      *&buf[12] = 2082;
                      *&buf[14] = v222;
                      _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v222);
                  }

LABEL_462:
                  if (!v152)
                  {
                    goto LABEL_464;
                  }

                  goto LABEL_463;
                }

LABEL_304:
                os_release(v199);
                goto LABEL_305;
              }
            }

            else
            {
              v199 = 0;
            }

            v200 = 1;
            goto LABEL_298;
          }

          v264 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_associate_with_connection";
          LODWORD(v317) = 12;
          v265 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v264, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v317);
          LOBYTE(aBlock) = 16;
          v344[0] = 0;
          if (__nwlog_fault(v265, &aBlock, v344))
          {
            if (aBlock == 17)
            {
              v266 = __nwlog_obj();
              v267 = aBlock;
              if (os_log_type_enabled(v266, aBlock))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v268 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_582:
                _os_log_impl(&dword_181A37000, v266, v267, v268, buf, 0xCu);
              }
            }

            else if (v344[0] == 1)
            {
              v299 = __nw_create_backtrace_string();
              v266 = __nwlog_obj();
              v267 = aBlock;
              v300 = os_log_type_enabled(v266, aBlock);
              if (v299)
              {
                if (v300)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v299;
                  _os_log_impl(&dword_181A37000, v266, v267, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v299);
                goto LABEL_583;
              }

              if (v300)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v268 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                goto LABEL_582;
              }
            }

            else
            {
              v266 = __nwlog_obj();
              v267 = aBlock;
              if (os_log_type_enabled(v266, aBlock))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                v268 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                goto LABEL_582;
              }
            }
          }

LABEL_583:
          if (v265)
          {
            free(v265);
          }

          v33 = v323;
          goto LABEL_286;
        }

        v259 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_set_up_association";
        LODWORD(v317) = 12;
        v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v259, 16, "%{public}s called with null parameters", buf, v317);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(aBlock) = 0;
        if (__nwlog_fault(v260, type, &aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v261 = __nwlog_obj();
            v262 = type[0];
            if (!os_log_type_enabled(v261, type[0]))
            {
              goto LABEL_576;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            v263 = "%{public}s called with null parameters";
LABEL_575:
            _os_log_impl(&dword_181A37000, v261, v262, v263, buf, 0xCu);
            goto LABEL_576;
          }

          if (aBlock != 1)
          {
            v261 = __nwlog_obj();
            v262 = type[0];
            if (!os_log_type_enabled(v261, type[0]))
            {
              goto LABEL_576;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            v263 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_575;
          }

          v297 = __nw_create_backtrace_string();
          v261 = __nwlog_obj();
          v262 = type[0];
          v298 = os_log_type_enabled(v261, type[0]);
          if (!v297)
          {
            if (!v298)
            {
              goto LABEL_576;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            v263 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_575;
          }

          if (v298)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_set_up_association";
            *&buf[12] = 2082;
            *&buf[14] = v297;
            _os_log_impl(&dword_181A37000, v261, v262, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v297);
        }

LABEL_576:
        if (v260)
        {
          free(v260);
        }

        v33 = v323;
        v81 = *(v37 + 512);
        if (v81)
        {
          goto LABEL_119;
        }

        goto LABEL_121;
      }

      v253 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v249 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v253, 16, "%{public}s called with null parameters", buf, 12);
      v344[0] = 16;
      v338 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v249, v344, &v338))
      {
        if (v344[0] == 17)
        {
          v250 = __nwlog_obj();
          v251 = v344[0];
          if (!os_log_type_enabled(v250, v344[0]))
          {
            goto LABEL_532;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v252 = "%{public}s called with null parameters";
          goto LABEL_531;
        }

        if (v338 != OS_LOG_TYPE_INFO)
        {
          v250 = __nwlog_obj();
          v251 = v344[0];
          if (!os_log_type_enabled(v250, v344[0]))
          {
            goto LABEL_532;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v252 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_531;
        }

        v293 = __nw_create_backtrace_string();
        v250 = __nwlog_obj();
        v251 = v344[0];
        v294 = os_log_type_enabled(v250, v344[0]);
        if (v293)
        {
          if (v294)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v293;
            _os_log_impl(&dword_181A37000, v250, v251, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v293);
          if (!v249)
          {
LABEL_534:
            v303 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            LODWORD(v319) = 12;
            v304 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v303, 16, "%{public}s called with null http1_connection", buf, v319);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(aBlock) = 0;
            if (!__nwlog_fault(v304, type, &aBlock))
            {
              goto LABEL_548;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v305 = __nwlog_obj();
              v306 = type[0];
              if (!os_log_type_enabled(v305, type[0]))
              {
                goto LABEL_548;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v307 = "%{public}s called with null http1_connection";
            }

            else if (aBlock == 1)
            {
              v308 = __nw_create_backtrace_string();
              v305 = __nwlog_obj();
              v306 = type[0];
              v309 = os_log_type_enabled(v305, type[0]);
              if (v308)
              {
                if (v309)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v308;
                  _os_log_impl(&dword_181A37000, v305, v306, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v308);
LABEL_548:
                if (v304)
                {
                  free(v304);
                }

                v310 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                LODWORD(v320) = 12;
                v311 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v310, 16, "%{public}s called with null http1_connection", buf, v320);
                LOBYTE(aBlock) = 16;
                v344[0] = 0;
                if (!__nwlog_fault(v311, &aBlock, v344))
                {
                  goto LABEL_564;
                }

                if (aBlock == 17)
                {
                  v312 = __nwlog_obj();
                  v313 = aBlock;
                  if (os_log_type_enabled(v312, aBlock))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v314 = "%{public}s called with null http1_connection";
LABEL_563:
                    _os_log_impl(&dword_181A37000, v312, v313, v314, buf, 0xCu);
                  }
                }

                else if (v344[0] == 1)
                {
                  v315 = __nw_create_backtrace_string();
                  v312 = __nwlog_obj();
                  v313 = aBlock;
                  v316 = os_log_type_enabled(v312, aBlock);
                  if (v315)
                  {
                    if (v316)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v315;
                      _os_log_impl(&dword_181A37000, v312, v313, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v315);
                    goto LABEL_564;
                  }

                  if (v316)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v314 = "%{public}s called with null http1_connection, no backtrace";
                    goto LABEL_563;
                  }
                }

                else
                {
                  v312 = __nwlog_obj();
                  v313 = aBlock;
                  if (os_log_type_enabled(v312, aBlock))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v314 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                    goto LABEL_563;
                  }
                }

LABEL_564:
                if (v311)
                {
                  free(v311);
                }

                v37 = 0;
                goto LABEL_286;
              }

              if (!v309)
              {
                goto LABEL_548;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v307 = "%{public}s called with null http1_connection, no backtrace";
            }

            else
            {
              v305 = __nwlog_obj();
              v306 = type[0];
              if (!os_log_type_enabled(v305, type[0]))
              {
                goto LABEL_548;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v307 = "%{public}s called with null http1_connection, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v305, v306, v307, buf, 0xCu);
            goto LABEL_548;
          }

LABEL_533:
          free(v249);
          goto LABEL_534;
        }

        if (v294)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v252 = "%{public}s called with null parameters, no backtrace";
LABEL_531:
          _os_log_impl(&dword_181A37000, v250, v251, v252, buf, 0xCu);
        }
      }
    }

    else
    {
      v248 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v249 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v248, 16, "%{public}s called with null endpoint", buf, 12);
      v344[0] = 16;
      v338 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v249, v344, &v338))
      {
        goto LABEL_532;
      }

      if (v344[0] == 17)
      {
        v250 = __nwlog_obj();
        v251 = v344[0];
        if (!os_log_type_enabled(v250, v344[0]))
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v252 = "%{public}s called with null endpoint";
        goto LABEL_531;
      }

      if (v338 != OS_LOG_TYPE_INFO)
      {
        v250 = __nwlog_obj();
        v251 = v344[0];
        if (!os_log_type_enabled(v250, v344[0]))
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v252 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_531;
      }

      v291 = __nw_create_backtrace_string();
      v250 = __nwlog_obj();
      v251 = v344[0];
      v292 = os_log_type_enabled(v250, v344[0]);
      if (!v291)
      {
        if (!v292)
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v252 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_531;
      }

      if (v292)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_connection_create";
        *&buf[12] = 2082;
        *&buf[14] = v291;
        _os_log_impl(&dword_181A37000, v250, v251, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v291);
    }

LABEL_532:
    if (!v249)
    {
      goto LABEL_534;
    }

    goto LABEL_533;
  }

  v146 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http1_connected";
  v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v146, 16, "%{public}s called with null other_protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(aBlock) = 0;
  if (!__nwlog_fault(v147, type, &aBlock))
  {
    goto LABEL_478;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v148 = __nwlog_obj();
    v149 = type[0];
    if (!os_log_type_enabled(v148, type[0]))
    {
      goto LABEL_478;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connected";
    v150 = "%{public}s called with null other_protocol";
    goto LABEL_476;
  }

  if (aBlock != 1)
  {
    v148 = __nwlog_obj();
    v149 = type[0];
    if (!os_log_type_enabled(v148, type[0]))
    {
      goto LABEL_478;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connected";
    v150 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    goto LABEL_476;
  }

  v220 = __nw_create_backtrace_string();
  v148 = __nwlog_obj();
  v149 = type[0];
  v221 = os_log_type_enabled(v148, type[0]);
  if (!v220)
  {
    if (!v221)
    {
      goto LABEL_478;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connected";
    v150 = "%{public}s called with null other_protocol, no backtrace";
    goto LABEL_476;
  }

  if (v221)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_connected";
    *&buf[12] = 2082;
    *&buf[14] = v220;
    _os_log_impl(&dword_181A37000, v148, v149, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v220);
  if (v147)
  {
    goto LABEL_479;
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke(uint64_t a1, void *a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v12 = outbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v14 = *(a1 + 32);
      v15 = v14 + 74;
      v16 = *(v14 + 256);
      v17 = *(*(v14 + 248) + 372);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 860);
      }

      v18 = *(v14 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v15;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v17;
      v72 = 1024;
      v73 = v16;
      v74 = 1024;
      v75 = v18;
      v76 = 2048;
      v77 = v12;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished sending {body_bytes=%llu}";
      goto LABEL_36;
    }

    outbound_message = nw_http_transaction_metadata_get_outbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v41 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 0x40000000;
      v63[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_2;
      v63[3] = &__block_descriptor_tmp_80_44020;
      v63[4] = *(a1 + 32);
      v42 = v21;
      v43 = v63;
      _nw_http_request_access_method(v42, v43);
    }

    if (v41)
    {
      v25 = v41;
      status_code = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v45 = *(a1 + 32);
      v46 = v45 + 74;
      v47 = *(v45 + 256);
      v48 = *(*(v45 + 248) + 372);
      if (v47)
      {
        LODWORD(v47) = *(v47 + 860);
      }

      v49 = *(v45 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v46;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v48;
      v72 = 1024;
      v73 = v47;
      v74 = 1024;
      v75 = v49;
      v76 = 1024;
      LODWORD(v77) = status_code;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> sending response header {status=%hu}";
      goto LABEL_47;
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

        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 0x40000000;
        v58 = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_83;
        v59 = &__block_descriptor_tmp_84;
        v5 = *(a1 + 32);
        v60 = a2;
        v61 = v5;
        v6 = nw_http_transaction_metadata_get_outbound_message(a2);
        v7 = v6;
        if (v6)
        {
          v8 = nw_http_metadata_copy_request(v6);
          v9 = nw_http_metadata_copy_response(v7);
          inbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
          if (!inbound_message)
          {
            goto LABEL_57;
          }

          if (v8)
          {
            if (v9)
            {
              goto LABEL_58;
            }

LABEL_56:
            v9 = nw_http_metadata_copy_response(inbound_message);
LABEL_57:
            if (!v9)
            {
              v52 = 0;
              if (!v8)
              {
                goto LABEL_72;
              }

              goto LABEL_61;
            }

LABEL_58:
            v9 = v9;
            v52 = _nw_http_response_get_status_code(v9);

            if (!v8)
            {
LABEL_72:
              v58(v57, "", v52);
              v53 = 0;
              if (!inbound_message)
              {
LABEL_63:
                if (v7)
                {
                  os_release(v7);
                }

                if (v9)
                {
                  os_release(v9);
                }

                if (v53)
                {
                  v50 = v53;
                  goto LABEL_69;
                }

                return;
              }

LABEL_62:
              os_release(inbound_message);
              goto LABEL_63;
            }

LABEL_61:
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 0x40000000;
            v55[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_85;
            v55[3] = &unk_1E6A329B8;
            v55[4] = v57;
            v56 = v52;
            v53 = v8;
            v54 = v55;
            _nw_http_request_access_method(v53, v54);

            if (!inbound_message)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v51 = nw_http_transaction_metadata_get_inbound_message(a2);
          v9 = 0;
          if (!v51)
          {
            v52 = 0;
            inbound_message = 0;
            goto LABEL_72;
          }

          inbound_message = v51;
        }

        v8 = nw_http_metadata_copy_request(inbound_message);
        if (v9)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(a2);
      if (*(*(a1 + 32) + 158))
      {
        return;
      }

      v35 = inbound_body_size;
      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v13 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v36 = *(a1 + 32);
      v37 = v36 + 74;
      v38 = *(v36 + 256);
      v39 = *(*(v36 + 248) + 372);
      if (v38)
      {
        LODWORD(v38) = *(v38 + 860);
      }

      v40 = *(v36 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v37;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v39;
      v72 = 1024;
      v73 = v38;
      v74 = 1024;
      v75 = v40;
      v76 = 2048;
      v77 = v35;
      v19 = "%{public}s %{public}s%s<i%u:c%u:s%u> finished receiving {body_bytes=%llu}";
LABEL_36:
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v19, buf, 0x3Cu);
      return;
    }

    outbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
    v21 = nw_http_metadata_copy_request(outbound_message);
    v22 = nw_http_metadata_copy_response(outbound_message);
    if (v21)
    {
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_81;
      v62[3] = &__block_descriptor_tmp_82;
      v62[4] = *(a1 + 32);
      v23 = v21;
      v24 = v62;
      _nw_http_request_access_method(v23, v24);
    }

    if (v22)
    {
      v25 = v22;
      v26 = _nw_http_response_get_status_code(v25);

      if (*(*(a1 + 32) + 158))
      {
        goto LABEL_48;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v27 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v28 = *(a1 + 32);
      v29 = v28 + 74;
      v30 = *(v28 + 256);
      v31 = *(*(v28 + 248) + 372);
      if (v30)
      {
        LODWORD(v30) = *(v30 + 860);
      }

      v32 = *(v28 + 424);
      *buf = 136447746;
      v65 = "nw_protocol_http1_connected_block_invoke";
      v66 = 2082;
      v67 = v29;
      v68 = 2080;
      v69 = " ";
      v70 = 1024;
      v71 = v31;
      v72 = 1024;
      v73 = v30;
      v74 = 1024;
      v75 = v32;
      v76 = 1024;
      LODWORD(v77) = v26;
      v33 = "%{public}s %{public}s%s<i%u:c%u:s%u> receiving response header {status=%hu}";
LABEL_47:
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, v33, buf, 0x38u);
LABEL_48:
      os_release(v25);
    }
  }

  if (v21)
  {
    os_release(v21);
  }

  if (outbound_message)
  {
    v50 = outbound_message;
LABEL_69:
    os_release(v50);
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connected_block_invoke_2";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> sending request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_81(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v4 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v5 + 74;
      v7 = *(v5 + 256);
      v8 = *(*(v5 + 248) + 372);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 860);
      }

      v9 = *(v5 + 424);
      v10 = 136447746;
      v11 = "nw_protocol_http1_connected_block_invoke";
      v12 = 2082;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2082;
      v23 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> receiving request header {method=%{public}s}", &v10, 0x3Cu);
    }
  }
}

void ___ZL27nw_protocol_http1_connectedP11nw_protocolS0__block_invoke_83(uint64_t a1, uint64_t a2, int a3)
{
  v67 = *MEMORY[0x1E69E9840];
  start_reason = nw_http_transaction_metadata_get_start_reason(*(a1 + 32));
  start_time = nw_http_transaction_metadata_get_start_time(*(a1 + 32));
  end_time = nw_http_transaction_metadata_get_end_time(*(a1 + 32));
  outbound_message_start_time = nw_http_transaction_metadata_get_outbound_message_start_time(*(a1 + 32));
  outbound_message_end_time = nw_http_transaction_metadata_get_outbound_message_end_time(*(a1 + 32));
  inbound_message_start_time = nw_http_transaction_metadata_get_inbound_message_start_time(*(a1 + 32));
  inbound_message_end_time = nw_http_transaction_metadata_get_inbound_message_end_time(*(a1 + 32));
  outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(*(a1 + 32));
  inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(*(a1 + 32));
  if ((*(*(a1 + 40) + 158) & 1) == 0)
  {
    if (__nwlog_http_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
    }

    v12 = ghttpLogObj;
    if (os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a3;
      v13 = *(a1 + 40);
      v14 = *(v13 + 256);
      if (v14)
      {
        v30 = *(v14 + 860);
      }

      else
      {
        v30 = 0;
      }

      if ((start_reason - 1) > 3)
      {
        v15 = "initial";
      }

      else
      {
        v15 = off_1E6A3AE00[start_reason - 1];
      }

      v29 = v15;
      v27 = *(*(v13 + 248) + 372);
      v28 = *(v13 + 424);
      v16 = -1;
      if (start_time && end_time)
      {
        v17 = nw_delta_nanos(start_time, end_time);
        if (v17 > 0xF423FFFFFFFFFLL)
        {
          v16 = -1;
        }

        else
        {
          v16 = v17 / 0xF4240;
        }
      }

      v18 = -1;
      if (start_time && outbound_message_start_time)
      {
        v19 = nw_delta_nanos(start_time, outbound_message_start_time);
        if (v19 > 0xF423FFFFFFFFFLL)
        {
          v18 = -1;
        }

        else
        {
          v18 = v19 / 0xF4240;
        }
      }

      v20 = -1;
      if (outbound_message_start_time && outbound_message_end_time)
      {
        v21 = nw_delta_nanos(outbound_message_start_time, outbound_message_end_time);
        if (v21 > 0xF423FFFFFFFFFLL)
        {
          v20 = -1;
        }

        else
        {
          v20 = v21 / 0xF4240;
        }
      }

      v22 = v13 + 74;
      v23 = -1;
      if (start_time && inbound_message_start_time)
      {
        v24 = nw_delta_nanos(start_time, inbound_message_start_time);
        if (v24 > 0xF423FFFFFFFFFLL)
        {
          v23 = -1;
        }

        else
        {
          v23 = v24 / 0xF4240;
        }
      }

      LODWORD(v25) = -1;
      if (inbound_message_start_time && inbound_message_end_time)
      {
        v26 = nw_delta_nanos(inbound_message_start_time, inbound_message_end_time);
        v25 = v26 / 0xF4240;
        if (v26 > 0xF423FFFFFFFFFLL)
        {
          LODWORD(v25) = -1;
        }
      }

      *buf = 136450050;
      v36 = "nw_protocol_http1_connected_block_invoke";
      v37 = 2082;
      v38 = v22;
      v39 = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v27;
      v43 = 1024;
      v44 = v30;
      v45 = 1024;
      v46 = v28;
      v47 = 2080;
      v48 = v29;
      v49 = 1024;
      v50 = v16;
      v51 = 2082;
      v52 = a2;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v18;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v25;
      v63 = 2048;
      v64 = outbound_body_size;
      v65 = 2048;
      v66 = inbound_body_size;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> transaction summary {start_reason=%s, duration_ms=%d, request_method=%{public}s, response_status=%hu, outbound_start_ms=%d, outbound_duration_ms=%d, inbound_start_ms=%d, inbound_duration_ms=%d, outbound_body_bytes=%llu, inbound_body_bytes=%llu}", buf, 0x7Eu);
    }
  }
}

uint64_t nw_protocol_http1_connect(nw_protocol *a1, nw_protocol *a2, __n128 a3)
{
  v1019 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v259 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v259, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v260, type, aBlock))
    {
      goto LABEL_1025;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v261 = __nwlog_obj();
      v262 = type[0];
      if (!os_log_type_enabled(v261, type[0]))
      {
        goto LABEL_1025;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v263 = "%{public}s called with null protocol";
    }

    else
    {
      if (aBlock[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v261 = __nwlog_obj();
        v262 = type[0];
        v304 = os_log_type_enabled(v261, type[0]);
        if (!backtrace_string)
        {
          if (!v304)
          {
            goto LABEL_1025;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v263 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_1024;
        }

        if (v304)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v261, v262, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_1025;
      }

      v261 = __nwlog_obj();
      v262 = type[0];
      if (!os_log_type_enabled(v261, type[0]))
      {
        goto LABEL_1025;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v263 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_1024:
    _os_log_impl(&dword_181A37000, v261, v262, v263, buf, 0xCu);
    goto LABEL_1025;
  }

  handle = a1->handle;
  if (!handle)
  {
    v264 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v264, 16, "%{public}s called with null handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v260, type, aBlock))
    {
      goto LABEL_1025;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v261 = __nwlog_obj();
      v262 = type[0];
      if (!os_log_type_enabled(v261, type[0]))
      {
        goto LABEL_1025;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v263 = "%{public}s called with null handle";
    }

    else
    {
      if (aBlock[0] == 1)
      {
        v305 = __nw_create_backtrace_string();
        v261 = __nwlog_obj();
        v262 = type[0];
        v306 = os_log_type_enabled(v261, type[0]);
        if (!v305)
        {
          if (!v306)
          {
            goto LABEL_1025;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v263 = "%{public}s called with null handle, no backtrace";
          goto LABEL_1024;
        }

        if (v306)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v305;
          _os_log_impl(&dword_181A37000, v261, v262, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v305);
        if (!v260)
        {
LABEL_1027:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_connect";
          LODWORD(v977) = 12;
          v270 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1", buf, v977);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v270, type, aBlock))
          {
            goto LABEL_1058;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v271 = gLogObj;
            v272 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_1058;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_connect";
            v273 = "%{public}s called with null http1";
          }

          else
          {
            if (aBlock[0] == 1)
            {
              v665 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v666 = gLogObj;
              v667 = type[0];
              v668 = os_log_type_enabled(gLogObj, type[0]);
              if (v665)
              {
                if (v668)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_http1_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v665;
                  v669 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_1052:
                  _os_log_impl(&dword_181A37000, v666, v667, v669, buf, 0x16u);
                }

LABEL_1053:
                free(v665);
                goto LABEL_1058;
              }

              if (!v668)
              {
                goto LABEL_1058;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_connect";
              v273 = "%{public}s called with null http1, no backtrace";
LABEL_1063:
              v671 = v666;
              v672 = v667;
              goto LABEL_1057;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v271 = gLogObj;
            v272 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_1058;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_http1_connect";
            v273 = "%{public}s called with null http1, backtrace limit exceeded";
          }

LABEL_1056:
          v671 = v271;
          v672 = v272;
LABEL_1057:
          _os_log_impl(&dword_181A37000, v671, v672, v273, buf, 0xCu);
          goto LABEL_1058;
        }

LABEL_1026:
        free(v260);
        goto LABEL_1027;
      }

      v261 = __nwlog_obj();
      v262 = type[0];
      if (!os_log_type_enabled(v261, type[0]))
      {
        goto LABEL_1025;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v263 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    goto LABEL_1024;
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
      goto LABEL_1027;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      handle = (v5 + 480);
      goto LABEL_10;
    }

    v409 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v409, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (__nwlog_fault(v260, type, aBlock))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v261 = __nwlog_obj();
        v262 = type[0];
        if (!os_log_type_enabled(v261, type[0]))
        {
          goto LABEL_1025;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v263 = "%{public}s called with null handle->http1_connection";
        goto LABEL_1024;
      }

      if (aBlock[0] != 1)
      {
        v261 = __nwlog_obj();
        v262 = type[0];
        if (!os_log_type_enabled(v261, type[0]))
        {
          goto LABEL_1025;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v263 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_1024;
      }

      v456 = __nw_create_backtrace_string();
      v261 = __nwlog_obj();
      v262 = type[0];
      v459 = os_log_type_enabled(v261, type[0]);
      if (!v456)
      {
        if (!v459)
        {
          goto LABEL_1025;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v263 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_1024;
      }

      if (v459)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v456;
        v458 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_700;
      }

      goto LABEL_701;
    }

LABEL_1025:
    if (!v260)
    {
      goto LABEL_1027;
    }

    goto LABEL_1026;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    v408 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v408, 16, "%{public}s called with null handle->http1_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v260, type, aBlock))
    {
      goto LABEL_1025;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (aBlock[0] != 1)
      {
        v261 = __nwlog_obj();
        v262 = type[0];
        if (!os_log_type_enabled(v261, type[0]))
        {
          goto LABEL_1025;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v263 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_1024;
      }

      v456 = __nw_create_backtrace_string();
      v261 = __nwlog_obj();
      v262 = type[0];
      v457 = os_log_type_enabled(v261, type[0]);
      if (!v456)
      {
        if (!v457)
        {
          goto LABEL_1025;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v263 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_1024;
      }

      if (v457)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v456;
        v458 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_700:
        _os_log_impl(&dword_181A37000, v261, v262, v458, buf, 0x16u);
      }

LABEL_701:
      free(v456);
      if (!v260)
      {
        goto LABEL_1027;
      }

      goto LABEL_1026;
    }

    v261 = __nwlog_obj();
    v262 = type[0];
    if (!os_log_type_enabled(v261, type[0]))
    {
      goto LABEL_1025;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v263 = "%{public}s called with null handle->http1_stream";
    goto LABEL_1024;
  }

  handle = (v6 + 248);
LABEL_10:
  v7 = *handle;
  if (!*handle)
  {
    goto LABEL_1027;
  }

  if (!a2)
  {
    v269 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connect";
    v270 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v269, 16, "%{public}s called with null other_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v270, type, aBlock))
    {
      goto LABEL_1058;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v271 = __nwlog_obj();
      v272 = type[0];
      if (!os_log_type_enabled(v271, type[0]))
      {
        goto LABEL_1058;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_connect";
      v273 = "%{public}s called with null other_protocol";
    }

    else if (aBlock[0] == 1)
    {
      v313 = __nw_create_backtrace_string();
      v271 = __nwlog_obj();
      v272 = type[0];
      v314 = os_log_type_enabled(v271, type[0]);
      if (v313)
      {
        if (v314)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_connect";
          *&buf[12] = 2082;
          *&buf[14] = v313;
          _os_log_impl(&dword_181A37000, v271, v272, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v313);
        goto LABEL_1058;
      }

      if (!v314)
      {
        goto LABEL_1058;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_connect";
      v273 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v271 = __nwlog_obj();
      v272 = type[0];
      if (!os_log_type_enabled(v271, type[0]))
      {
        goto LABEL_1058;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_connect";
      v273 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_1056;
  }

  v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v279 = a1;
    v281 = __nwlog_obj();
    v282 = os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG);
    v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v283 = v282;
    a1 = v279;
    if (v283)
    {
      v284 = *(v7 + 372);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http1_connect";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 74;
      *&buf[22] = 2080;
      v1017 = " ";
      *v1018 = 1024;
      *&v1018[2] = v284;
      *&v1018[6] = 2048;
      *&v1018[8] = a2;
      _os_log_impl(&dword_181A37000, v281, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called by protocol %p", buf, 0x30u);
      v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      a1 = v279;
    }
  }

  v9 = a1->handle;
  if (!v9)
  {
    v274 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_stream_for_protocol";
    v275 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v274, 16, "%{public}s called with null handle", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v275, type, aBlock))
    {
      goto LABEL_1042;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v276 = __nwlog_obj();
      v277 = type[0];
      if (!os_log_type_enabled(v276, type[0]))
      {
        goto LABEL_1042;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v278 = "%{public}s called with null handle";
      goto LABEL_1041;
    }

    if (aBlock[0] != 1)
    {
      v276 = __nwlog_obj();
      v277 = type[0];
      if (!os_log_type_enabled(v276, type[0]))
      {
        goto LABEL_1042;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v278 = "%{public}s called with null handle, backtrace limit exceeded";
      goto LABEL_1041;
    }

    v315 = __nw_create_backtrace_string();
    v276 = __nwlog_obj();
    v277 = type[0];
    v316 = os_log_type_enabled(v276, type[0]);
    if (!v315)
    {
      if (!v316)
      {
        goto LABEL_1042;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v278 = "%{public}s called with null handle, no backtrace";
      goto LABEL_1041;
    }

    if (v316)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v315;
      _os_log_impl(&dword_181A37000, v276, v277, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v315);
LABEL_1042:
    if (!v275)
    {
      goto LABEL_1044;
    }

    goto LABEL_1043;
  }

  v10 = *(v9 + 6);
  if (v10 != 2)
  {
    if (v10 != 3)
    {
      goto LABEL_1044;
    }

    v11 = *(v9 + 2);
    if (v11)
    {
      v12 = (v11 + 488);
      goto LABEL_20;
    }

    v410 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_stream_for_protocol";
    v275 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v410, 16, "%{public}s called with null handle->http1_connection", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    aBlock[0] = 0;
    if (!__nwlog_fault(v275, type, aBlock))
    {
      goto LABEL_1042;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v276 = __nwlog_obj();
      v277 = type[0];
      if (!os_log_type_enabled(v276, type[0]))
      {
        goto LABEL_1042;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v278 = "%{public}s called with null handle->http1_connection";
      goto LABEL_1041;
    }

    if (aBlock[0] != 1)
    {
      v276 = __nwlog_obj();
      v277 = type[0];
      if (!os_log_type_enabled(v276, type[0]))
      {
        goto LABEL_1042;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v278 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_1041;
    }

    v460 = __nw_create_backtrace_string();
    v276 = __nwlog_obj();
    v277 = type[0];
    v461 = os_log_type_enabled(v276, type[0]);
    if (v460)
    {
      if (v461)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_stream_for_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v460;
        _os_log_impl(&dword_181A37000, v276, v277, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v460);
      if (!v275)
      {
        goto LABEL_1044;
      }

LABEL_1043:
      free(v275);
      goto LABEL_1044;
    }

    if (v461)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_get_stream_for_protocol";
      v278 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_1041:
      _os_log_impl(&dword_181A37000, v276, v277, v278, buf, 0xCu);
      goto LABEL_1042;
    }

    goto LABEL_1042;
  }

  v12 = (v9 + 8);
LABEL_20:
  v13 = *v12;
  if (*v12)
  {
    if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v307 = __nwlog_obj();
      v308 = os_log_type_enabled(v307, OS_LOG_TYPE_DEBUG);
      v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      if (v308)
      {
        v309 = *(v13 + 256);
        v310 = *(*(v13 + 248) + 372);
        if (v309)
        {
          LODWORD(v309) = *(v309 + 860);
        }

        v311 = *(v13 + 424);
        *buf = 136447746;
        *&buf[4] = "nw_protocol_http1_connect";
        *&buf[12] = 2082;
        *&buf[14] = v13 + 74;
        *&buf[22] = 2080;
        v1017 = " ";
        *v1018 = 1024;
        *&v1018[2] = v310;
        *&v1018[6] = 1024;
        *&v1018[8] = v309;
        *&v1018[12] = 1024;
        *&v1018[14] = v311;
        *&v1018[18] = 2048;
        *&v1018[20] = v13;
        _os_log_impl(&dword_181A37000, v307, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream %p", buf, 0x3Cu);
        v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      }
    }

    v14 = *(v13 + 428);
    if ((v14 & 0x2000) != 0)
    {
      if (*(v13 + 158))
      {
        return 1;
      }

      if (gLogDatapath != 1)
      {
        return 1;
      }

      v16 = __nwlog_obj();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v17 = *(v13 + 256);
      v18 = *(*(v13 + 248) + 372);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 860);
      }

      v19 = *(v13 + 424);
      *buf = 136447490;
      *&buf[4] = "nw_protocol_http1_connect";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 74;
      *&buf[22] = 2080;
      v1017 = " ";
      *v1018 = 1024;
      *&v1018[2] = v18;
      *&v1018[6] = 1024;
      *&v1018[8] = v17;
      *&v1018[12] = 1024;
      *&v1018[14] = v19;
      v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> ignoring duplicate call to connect";
LABEL_42:
      v24 = v16;
      v25 = 50;
LABEL_43:
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, v20, buf, v25);
      return 1;
    }

    if ((v14 & 0x10) == 0)
    {
      if ((v14 & 8) != 0)
      {
        if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v499 = __nwlog_obj();
          if (os_log_type_enabled(v499, OS_LOG_TYPE_DEBUG))
          {
            v500 = *(v13 + 256);
            v501 = *(*(v13 + 248) + 372);
            if (v500)
            {
              LODWORD(v500) = *(v500 + 860);
            }

            v502 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http1_connect";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v1017 = " ";
            *v1018 = 1024;
            *&v1018[2] = v501;
            *&v1018[6] = 1024;
            *&v1018[8] = v500;
            *&v1018[12] = 1024;
            *&v1018[14] = v502;
            _os_log_impl(&dword_181A37000, v499, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> new flow stream already attached, sending connected immediately", buf, 0x32u);
          }
        }

        *(v13 + 428) = *(v13 + 428) & 0x7FF7 | 0x8000;
        v26 = *(v13 + 352);
        v994[0] = MEMORY[0x1E69E9820];
        v994[1] = 0x40000000;
        v994[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke;
        v994[3] = &__block_descriptor_tmp_31_44027;
        v994[4] = v13;
        nw_http_transaction_metadata_set_event_handler(v26, v994);
        v27 = *(v13 + 256);
        if ((*(v13 + 428) & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_47:
        nw_http_transaction_metadata_set_first_on_connection(*(v13 + 352));
        nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v27 + 768));
LABEL_48:
        nw_http_transaction_metadata_set_connection_metadata(*(v13 + 352), *(v27 + 768));
        nw_protocol_connected(*(v13 + 48), v13);
        return 1;
      }

      v15 = *(v13 + 256);
      if (v15)
      {
        if ((*(v13 + 158) & 1) != 0 || gLogDatapath != 1)
        {
          goto LABEL_29;
        }

        v503 = __nwlog_obj();
        v504 = os_log_type_enabled(v503, OS_LOG_TYPE_DEBUG);
        v15 = *(v13 + 256);
        if (v504)
        {
          v505 = *(*(v13 + 248) + 372);
          if (v15)
          {
            v506 = *(v15 + 860);
          }

          else
          {
            v506 = 0;
          }

          v791 = *(v13 + 424);
          *buf = 136447490;
          *&buf[4] = "nw_protocol_http1_connect";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 74;
          *&buf[22] = 2080;
          v1017 = " ";
          *v1018 = 1024;
          *&v1018[2] = v505;
          *&v1018[6] = 1024;
          *&v1018[8] = v506;
          *&v1018[12] = 1024;
          *&v1018[14] = v791;
          _os_log_impl(&dword_181A37000, v503, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already associated with connection, forwarding connect", buf, 0x32u);
          v15 = *(v13 + 256);
        }

        if (v15)
        {
LABEL_29:
          nw_protocol_connect(*(v15 + 32), v15);
        }

        else
        {
          nw_protocol_connect(0, 0);
        }

        return 1;
      }

      v33 = *(v7 + 208);
      if (v33)
      {
        v27 = 0;
        a3.n128_u64[0] = 136447234;
        do
        {
          v34 = v33;
          v33 = *(v33 + 592);
          if ((*(v34 + 872) & 0x800) == 0)
          {
            if ((*(v7 + 158) & 1) != 0 || BYTE1(v8[82].isa) != 1)
            {
              v27 = v34;
            }

            else
            {
              v990 = a3;
              v35 = __nwlog_obj();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v36 = *(v7 + 372);
                *buf = v990.n128_u32[0];
                *&buf[4] = "nw_http1_get_next_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 74;
                *&buf[22] = 2080;
                v1017 = " ";
                *v1018 = 1024;
                *&v1018[2] = v36;
                *&v1018[6] = 2048;
                *&v1018[8] = v34;
                _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> found idle connection connection %p", buf, 0x30u);
                a3 = v990;
                v27 = v34;
                v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              }

              else
              {
                v27 = v34;
                v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                a3 = v990;
              }
            }
          }
        }

        while (v33);
        if (v27)
        {
          v991 = a3.n128_u32[0];
          if ((*(v27 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
          {
            v785 = v8;
            v786 = __nwlog_obj();
            v787 = os_log_type_enabled(v786, OS_LOG_TYPE_DEBUG);
            v8 = v785;
            if (v787)
            {
              v788 = *(v27 + 488);
              v789 = *(*(v27 + 480) + 372);
              v790 = *(v27 + 860);
              if (v788)
              {
                LODWORD(v788) = *(v788 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2082;
              *&buf[14] = v27 + 74;
              *&buf[22] = 2080;
              v1017 = " ";
              *v1018 = 1024;
              *&v1018[2] = v789;
              *&v1018[6] = 1024;
              *&v1018[8] = v790;
              *&v1018[12] = 1024;
              *&v1018[14] = v788;
              *&v1018[18] = 2048;
              *&v1018[20] = v27;
              _os_log_impl(&dword_181A37000, v786, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
              v8 = v785;
            }
          }

          if ((*(v27 + 874) & 8) == 0)
          {
            v41 = __nwlog_obj();
            *buf = 136446466;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2048;
            *&buf[14] = v27;
            v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s connection %p not in idle list, cannot remove", buf, 22);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (!__nwlog_fault(v42, type, aBlock))
            {
              goto LABEL_393;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v43 = __nwlog_obj();
              v44 = type[0];
              if (!os_log_type_enabled(v43, type[0]))
              {
                goto LABEL_393;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2048;
              *&buf[14] = v27;
              v45 = "%{public}s connection %p not in idle list, cannot remove";
            }

            else if (aBlock[0] == 1)
            {
              v152 = __nw_create_backtrace_string();
              v43 = __nwlog_obj();
              v44 = type[0];
              v153 = os_log_type_enabled(v43, type[0]);
              if (v152)
              {
                if (v153)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2082;
                  v1017 = v152;
                  _os_log_impl(&dword_181A37000, v43, v44, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v152);
                goto LABEL_393;
              }

              if (!v153)
              {
LABEL_393:
                if (v42)
                {
                  free(v42);
                }

                goto LABEL_553;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2048;
              *&buf[14] = v27;
              v45 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
            }

            else
            {
              v43 = __nwlog_obj();
              v44 = type[0];
              if (!os_log_type_enabled(v43, type[0]))
              {
                goto LABEL_393;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2048;
              *&buf[14] = v27;
              v45 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0x16u);
            goto LABEL_393;
          }

          v133 = *(v27 + 592);
          v134 = *(v27 + 600);
          v135 = (v7 + 216);
          if (v133)
          {
            v135 = (v133 + 600);
          }

          *v135 = v134;
          *v134 = v133;
          *(v27 + 592) = 0u;
          v136 = *(v7 + 340);
          *(v7 + 340) = v136 - 1;
          if (v136)
          {
LABEL_547:
            *(v27 + 874) &= ~8u;
            if ((*(v27 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
            {
              v792 = v8;
              v793 = __nwlog_obj();
              v794 = os_log_type_enabled(v793, OS_LOG_TYPE_DEBUG);
              v8 = v792;
              if (v794)
              {
                v795 = *(v27 + 488);
                v796 = *(*(v27 + 480) + 372);
                v797 = *(v27 + 860);
                if (v795)
                {
                  LODWORD(v795) = *(v795 + 424);
                }

                v798 = *(v7 + 340);
                *buf = 136448002;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = v27 + 74;
                *&buf[22] = 2080;
                v1017 = " ";
                *v1018 = 1024;
                *&v1018[2] = v796;
                *&v1018[6] = 1024;
                *&v1018[8] = v797;
                *&v1018[12] = 1024;
                *&v1018[14] = v795;
                *&v1018[18] = 2048;
                *&v1018[20] = v27;
                *&v1018[28] = 1024;
                *&v1018[30] = v798;
                _os_log_impl(&dword_181A37000, v793, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
                v8 = v792;
              }
            }

            if (*(v27 + 784))
            {
              if ((*(v27 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
              {
                v801 = __nwlog_obj();
                if (os_log_type_enabled(v801, OS_LOG_TYPE_DEBUG))
                {
                  v802 = *(v27 + 488);
                  v803 = *(*(v27 + 480) + 372);
                  v804 = *(v27 + 860);
                  if (v802)
                  {
                    LODWORD(v802) = *(v802 + 424);
                  }

                  *buf = 136447746;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v27 + 74;
                  *&buf[22] = 2080;
                  v1017 = " ";
                  *v1018 = 1024;
                  *&v1018[2] = v803;
                  *&v1018[6] = 1024;
                  *&v1018[8] = v804;
                  *&v1018[12] = 1024;
                  *&v1018[14] = v802;
                  *&v1018[18] = 2048;
                  *&v1018[20] = v27;
                  _os_log_impl(&dword_181A37000, v801, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
                }
              }

              nw_queue_cancel_source(*(v27 + 784));
              *(v27 + 784) = 0;
            }

LABEL_553:
            if (*(v13 + 248))
            {
              if (*(v27 + 488))
              {
                v373 = __nwlog_obj();
                v374 = *(v27 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v27;
                *&buf[22] = 2048;
                v1017 = v374;
                LODWORD(v977) = 32;
                v375 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v373, 16, "%{public}s Connection %p already has a stream (%p)", buf, v977);
                type[0] = OS_LOG_TYPE_ERROR;
                aBlock[0] = 0;
                if (!__nwlog_fault(v375, type, aBlock))
                {
                  goto LABEL_588;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v376 = __nwlog_obj();
                  v377 = type[0];
                  if (!os_log_type_enabled(v376, type[0]))
                  {
                    goto LABEL_588;
                  }

                  v378 = *(v27 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v1017 = v378;
                  v379 = "%{public}s Connection %p already has a stream (%p)";
LABEL_586:
                  v401 = v376;
                  v402 = v377;
                  v403 = 32;
LABEL_587:
                  _os_log_impl(&dword_181A37000, v401, v402, v379, buf, v403);
                  goto LABEL_588;
                }

                if (aBlock[0] != 1)
                {
                  v376 = __nwlog_obj();
                  v377 = type[0];
                  if (!os_log_type_enabled(v376, type[0]))
                  {
                    goto LABEL_588;
                  }

                  v389 = *(v27 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v1017 = v389;
                  v379 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                  goto LABEL_586;
                }

                v386 = __nw_create_backtrace_string();
                v376 = __nwlog_obj();
                v377 = type[0];
                v387 = os_log_type_enabled(v376, type[0]);
                if (!v386)
                {
                  if (!v387)
                  {
                    goto LABEL_588;
                  }

                  v400 = *(v27 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v1017 = v400;
                  v379 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                  goto LABEL_586;
                }

                if (v387)
                {
                  v388 = *(v27 + 488);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v27;
                  *&buf[22] = 2048;
                  v1017 = v388;
                  *v1018 = 2082;
                  *&v1018[2] = v386;
                  _os_log_impl(&dword_181A37000, v376, v377, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v386);
                if (v375)
                {
LABEL_589:
                  free(v375);
                }

LABEL_760:
                *(v13 + 428) |= 0x8000u;
                v495 = *(v13 + 352);
                v993[0] = MEMORY[0x1E69E9820];
                v993[1] = 0x40000000;
                v993[2] = ___ZL25nw_protocol_http1_connectP11nw_protocolS0__block_invoke_32;
                v993[3] = &__block_descriptor_tmp_41_44028;
                v993[4] = v13;
                nw_http_transaction_metadata_set_event_handler(v495, v993);
                if ((*(v13 + 428) & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_47;
              }

              *(v13 + 256) = v27;
              *(v27 + 488) = v13;
              v380 = *(v13 + 320);
              if (v380)
              {
                v380 = os_retain(v380);
              }

              *buf = v380;
              nw::retained_ptr<nw_endpoint *>::operator=(v27 + 736, buf);
              if ((*(*(v13 + 248) + 376) & 2) == 0)
              {
LABEL_732:
                v465 = *(v13 + 32);
                if (!v465 || v465 == *(v27 + 32))
                {
LABEL_750:
                  nw_protocol_set_output_handler(v13, *(v27 + 32));
                  nw_protocol_set_input_handler(v27, *(v13 + 48));
                  *v13 = *v27;
                  v483 = *(v13 + 96);
                  v484 = *(v13 + 112);
                  v485 = *(v13 + 128);
                  *(v27 + 144) = *(v13 + 144);
                  v486 = *(v13 + 80);
                  *(v27 + 64) = *(v13 + 64);
                  *(v27 + 80) = v486;
                  *(v27 + 112) = v484;
                  *(v27 + 128) = v485;
                  *(v27 + 96) = v483;
                  *(v27 + 872) &= 0xFFD7u;
                  *(v27 + 864) = 1;
                  if ((*(v27 + 158) & 1) == 0)
                  {
                    v487 = __nwlog_obj();
                    if (os_log_type_enabled(v487, OS_LOG_TYPE_DEBUG))
                    {
                      v488 = *(v27 + 488);
                      v489 = *(*(v27 + 480) + 372);
                      v490 = *(v27 + 860);
                      if (v488)
                      {
                        LODWORD(v488) = *(v488 + 424);
                      }

                      *buf = 136447490;
                      *&buf[4] = "nw_http1_update_connection_input_state";
                      *&buf[12] = 2082;
                      *&buf[14] = v27 + 74;
                      *&buf[22] = 2080;
                      v1017 = " ";
                      *v1018 = 1024;
                      *&v1018[2] = v489;
                      *&v1018[6] = 1024;
                      *&v1018[8] = v490;
                      *&v1018[12] = 1024;
                      *&v1018[14] = v488;
                      _os_log_impl(&dword_181A37000, v487, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                    }
                  }

                  if ((*(v13 + 158) & 1) == 0)
                  {
                    v491 = __nwlog_obj();
                    if (os_log_type_enabled(v491, OS_LOG_TYPE_INFO))
                    {
                      v492 = *(v13 + 256);
                      v493 = *(*(v13 + 248) + 372);
                      if (v492)
                      {
                        LODWORD(v492) = *(v492 + 860);
                      }

                      v494 = *(v13 + 424);
                      *buf = 136448002;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v13 + 74;
                      *&buf[22] = 2080;
                      v1017 = " ";
                      *v1018 = 1024;
                      *&v1018[2] = v493;
                      *&v1018[6] = 1024;
                      *&v1018[8] = v492;
                      *&v1018[12] = 1024;
                      *&v1018[14] = v494;
                      *&v1018[18] = 2048;
                      *&v1018[20] = v13;
                      *&v1018[28] = 2048;
                      *&v1018[30] = v27;
                      _os_log_impl(&dword_181A37000, v491, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                    }
                  }

                  goto LABEL_760;
                }

                v466 = __nwlog_obj();
                v467 = *(v13 + 32);
                v468 = *(v27 + 32);
                *buf = 136446978;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v467;
                *&buf[22] = 2048;
                v1017 = v13;
                *v1018 = 2048;
                *&v1018[2] = v468;
                LODWORD(v977) = 42;
                v469 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v466, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v977);
                aBlock[0] = 16;
                v1013[0] = 0;
                if (__nwlog_fault(v469, aBlock, v1013))
                {
                  if (aBlock[0] == 17)
                  {
                    v470 = __nwlog_obj();
                    v471 = aBlock[0];
                    if (!os_log_type_enabled(v470, aBlock[0]))
                    {
                      goto LABEL_748;
                    }

                    v472 = *(v13 + 32);
                    v473 = *(v27 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v472;
                    *&buf[22] = 2048;
                    v1017 = v13;
                    *v1018 = 2048;
                    *&v1018[2] = v473;
                    v474 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                    goto LABEL_747;
                  }

                  if (v1013[0] != 1)
                  {
                    v470 = __nwlog_obj();
                    v471 = aBlock[0];
                    if (!os_log_type_enabled(v470, aBlock[0]))
                    {
                      goto LABEL_748;
                    }

                    v479 = *(v13 + 32);
                    v480 = *(v27 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v479;
                    *&buf[22] = 2048;
                    v1017 = v13;
                    *v1018 = 2048;
                    *&v1018[2] = v480;
                    v474 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                    goto LABEL_747;
                  }

                  v475 = __nw_create_backtrace_string();
                  v470 = __nwlog_obj();
                  v471 = aBlock[0];
                  v476 = os_log_type_enabled(v470, aBlock[0]);
                  if (v475)
                  {
                    if (v476)
                    {
                      v477 = *(v13 + 32);
                      v478 = *(v27 + 32);
                      *buf = v991;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v477;
                      *&buf[22] = 2048;
                      v1017 = v13;
                      *v1018 = 2048;
                      *&v1018[2] = v478;
                      *&v1018[10] = 2082;
                      *&v1018[12] = v475;
                      _os_log_impl(&dword_181A37000, v470, v471, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v475);
                    goto LABEL_748;
                  }

                  if (v476)
                  {
                    v481 = *(v13 + 32);
                    v482 = *(v27 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v481;
                    *&buf[22] = 2048;
                    v1017 = v13;
                    *v1018 = 2048;
                    *&v1018[2] = v482;
                    v474 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_747:
                    _os_log_impl(&dword_181A37000, v470, v471, v474, buf, 0x2Au);
                  }
                }

LABEL_748:
                if (v469)
                {
                  free(v469);
                }

                goto LABEL_750;
              }

              v381 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
              *aBlock = 0;
              *&aBlock[8] = aBlock;
              *&aBlock[16] = 0x2000000000;
              LOBYTE(v1009) = 0;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3802000000;
              v1017 = __Block_byref_object_copy__42960;
              *v1018 = __Block_byref_object_dispose__42961;
              *&v1018[8] = 0;
              v1018[16] |= 1u;
              *type = MEMORY[0x1E69E9820];
              v1002 = 0x40000000;
              v1003 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
              v1004 = &unk_1E6A32930;
              v1005 = aBlock;
              v1006 = buf;
              v1007 = v13;
              nw_protocol_stack_iterate_application_protocols(v381, type);
              if (*(*&buf[8] + 40))
              {
                v382 = v27;
                while (1)
                {
                  v382 = *(v382 + 32);
                  if (!v382)
                  {
                    break;
                  }

                  if (nw_protocol_is_tls_over_stream(v382))
                  {
                    v383 = *(*&buf[8] + 40);
                    v384 = nw_protocol_boringssl_copy_definition();
                    nw_parameters_set_protocol_instance(v383, v385, v382);
                    if (v384)
                    {
                      os_release(v384);
                    }

                    goto LABEL_714;
                  }
                }

                v395 = __nwlog_obj();
                *v1013 = 136446210;
                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                LODWORD(v977) = 12;
                v396 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v395, 16, "%{public}s tls should have been in the stack but could not find it", v1013, v977);
                v996[0] = OS_LOG_TYPE_ERROR;
                v1000 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v396, v996, &v1000))
                {
                  goto LABEL_723;
                }

                if (v996[0] == OS_LOG_TYPE_FAULT)
                {
                  v397 = __nwlog_obj();
                  v398 = v996[0];
                  if (os_log_type_enabled(v397, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v399 = "%{public}s tls should have been in the stack but could not find it";
LABEL_722:
                    _os_log_impl(&dword_181A37000, v397, v398, v399, v1013, 0xCu);
                  }
                }

                else if (v1000 == OS_LOG_TYPE_INFO)
                {
                  v406 = __nw_create_backtrace_string();
                  v397 = __nwlog_obj();
                  v398 = v996[0];
                  v407 = os_log_type_enabled(v397, v996[0]);
                  if (v406)
                  {
                    if (v407)
                    {
                      *v1013 = 136446466;
                      *&v1013[4] = "nw_http1_stream_associate_with_connection";
                      *&v1013[12] = 2082;
                      *&v1013[14] = v406;
                      _os_log_impl(&dword_181A37000, v397, v398, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1013, 0x16u);
                    }

                    free(v406);
                    goto LABEL_723;
                  }

                  if (v407)
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v399 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                    goto LABEL_722;
                  }
                }

                else
                {
                  v397 = __nwlog_obj();
                  v398 = v996[0];
                  if (os_log_type_enabled(v397, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v399 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                    goto LABEL_722;
                  }
                }

LABEL_723:
                if (v396)
                {
                  free(v396);
                }

                v462 = 0;
                goto LABEL_726;
              }

              v390 = __nwlog_obj();
              *v1013 = 136446210;
              *&v1013[4] = "nw_http1_stream_associate_with_connection";
              LODWORD(v977) = 12;
              v391 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v390, 16, "%{public}s unable to find tls options", v1013, v977);
              v996[0] = OS_LOG_TYPE_ERROR;
              v1000 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v391, v996, &v1000))
              {
                if (v996[0] == OS_LOG_TYPE_FAULT)
                {
                  v392 = __nwlog_obj();
                  v393 = v996[0];
                  if (os_log_type_enabled(v392, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v394 = "%{public}s unable to find tls options";
LABEL_711:
                    _os_log_impl(&dword_181A37000, v392, v393, v394, v1013, 0xCu);
                  }
                }

                else if (v1000 == OS_LOG_TYPE_INFO)
                {
                  v404 = __nw_create_backtrace_string();
                  v392 = __nwlog_obj();
                  v393 = v996[0];
                  v405 = os_log_type_enabled(v392, v996[0]);
                  if (v404)
                  {
                    if (v405)
                    {
                      *v1013 = 136446466;
                      *&v1013[4] = "nw_http1_stream_associate_with_connection";
                      *&v1013[12] = 2082;
                      *&v1013[14] = v404;
                      _os_log_impl(&dword_181A37000, v392, v393, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1013, 0x16u);
                    }

                    free(v404);
                  }

                  else if (v405)
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v394 = "%{public}s unable to find tls options, no backtrace";
                    goto LABEL_711;
                  }
                }

                else
                {
                  v392 = __nwlog_obj();
                  v393 = v996[0];
                  if (os_log_type_enabled(v392, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v394 = "%{public}s unable to find tls options, backtrace limit exceeded";
                    goto LABEL_711;
                  }
                }
              }

              if (v391)
              {
                free(v391);
              }

LABEL_714:
              v462 = 1;
LABEL_726:
              _Block_object_dispose(buf, 8);
              if ((v1018[16] & 1) != 0 && *&v1018[8])
              {
                os_release(*&v1018[8]);
              }

              _Block_object_dispose(aBlock, 8);
              if (v381)
              {
                os_release(v381);
              }

              if (!v462)
              {
                goto LABEL_760;
              }

              goto LABEL_732;
            }

            v782 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_associate_with_connection";
            LODWORD(v977) = 12;
            v375 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v782, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v977);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v375, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v783 = __nwlog_obj();
                v784 = type[0];
                if (os_log_type_enabled(v783, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v379 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1412:
                  v401 = v783;
                  v402 = v784;
                  v403 = 12;
                  goto LABEL_587;
                }
              }

              else if (aBlock[0] == 1)
              {
                v799 = __nw_create_backtrace_string();
                v783 = __nwlog_obj();
                v784 = type[0];
                v800 = os_log_type_enabled(v783, type[0]);
                if (v799)
                {
                  if (v800)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2082;
                    *&buf[14] = v799;
                    _os_log_impl(&dword_181A37000, v783, v784, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v799);
                }

                else if (v800)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v379 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                  goto LABEL_1412;
                }
              }

              else
              {
                v783 = __nwlog_obj();
                v784 = type[0];
                if (os_log_type_enabled(v783, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v379 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                  goto LABEL_1412;
                }
              }
            }

LABEL_588:
            if (!v375)
            {
              goto LABEL_760;
            }

            goto LABEL_589;
          }

          v137 = __nwlog_obj();
          v138 = *(v7 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v1017 = 1;
          *v1018 = 2048;
          *&v1018[2] = v138;
          v139 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v137, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v139, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v140 = __nwlog_obj();
              v141 = type[0];
              if (os_log_type_enabled(v140, type[0]))
              {
                v142 = *(v7 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                v1017 = 1;
                *v1018 = 2048;
                *&v1018[2] = v142;
                v143 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_543:
                _os_log_impl(&dword_181A37000, v140, v141, v143, buf, 0x2Au);
              }
            }

            else if (aBlock[0] == 1)
            {
              v218 = __nw_create_backtrace_string();
              v140 = __nwlog_obj();
              v141 = type[0];
              v219 = os_log_type_enabled(v140, type[0]);
              if (v218)
              {
                if (v219)
                {
                  v220 = *(v7 + 340);
                  *buf = v991;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->idle_connections_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v220;
                  *&v1018[10] = 2082;
                  *&v1018[12] = v218;
                  _os_log_impl(&dword_181A37000, v140, v141, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v218);
                goto LABEL_544;
              }

              if (v219)
              {
                v372 = *(v7 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                v1017 = 1;
                *v1018 = 2048;
                *&v1018[2] = v372;
                v143 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_543;
              }
            }

            else
            {
              v140 = __nwlog_obj();
              v141 = type[0];
              if (os_log_type_enabled(v140, type[0]))
              {
                v265 = *(v7 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                v1017 = 1;
                *v1018 = 2048;
                *&v1018[2] = v265;
                v143 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_543;
              }
            }
          }

LABEL_544:
          if (v139)
          {
            free(v139);
          }

          *(v7 + 340) = 0;
          v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_547;
        }
      }

      if ((*(v7 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
      {
        v733 = v8;
        v734 = __nwlog_obj();
        v735 = os_log_type_enabled(v734, OS_LOG_TYPE_DEBUG);
        v8 = v733;
        if (v735)
        {
          v736 = *(v7 + 372);
          *buf = 136446978;
          *&buf[4] = "nw_http1_get_next_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 74;
          *&buf[22] = 2080;
          v1017 = " ";
          *v1018 = 1024;
          *&v1018[2] = v736;
          _os_log_impl(&dword_181A37000, v734, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no idle connections", buf, 0x26u);
          v8 = v733;
        }
      }

      if (*(v13 + 256))
      {
        v46 = v8;
        if ((*(v13 + 158) & 1) == 0)
        {
          v47 = __nwlog_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v48 = *(v13 + 256);
            v49 = *(*(v13 + 248) + 372);
            if (v48)
            {
              LODWORD(v48) = *(v48 + 860);
            }

            v50 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v1017 = " ";
            *v1018 = 1024;
            *&v1018[2] = v49;
            *&v1018[6] = 1024;
            *&v1018[8] = v48;
            *&v1018[12] = 1024;
            *&v1018[14] = v50;
            v51 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
            v52 = v47;
            v53 = 50;
LABEL_89:
            _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, v51, buf, v53);
            goto LABEL_90;
          }
        }

        goto LABEL_90;
      }

      if ((*(v13 + 428) & 0x10) == 0)
      {
        if (*(v7 + 336) + *(v7 + 352) >= (*(v7 + 368) + *(v7 + 364)))
        {
          v46 = v8;
          if ((*(v13 + 158) & 1) == 0)
          {
            v205 = __nwlog_obj();
            if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
            {
              v206 = *(v13 + 256);
              v207 = *(*(v13 + 248) + 372);
              if (v206)
              {
                LODWORD(v206) = *(v206 + 860);
              }

              v208 = *(v13 + 424);
              v209 = *(v7 + 364);
              *buf = 136447746;
              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v1017 = " ";
              *v1018 = 1024;
              *&v1018[2] = v207;
              *&v1018[6] = 1024;
              *&v1018[8] = v206;
              *&v1018[12] = 1024;
              *&v1018[14] = v208;
              *&v1018[18] = 1024;
              *&v1018[20] = v209;
              v51 = "%{public}s %{public}s%s<i%u:c%u:s%u> already at max connection width %u, cannot create new connection";
              v52 = v205;
              v53 = 56;
              goto LABEL_89;
            }
          }

LABEL_90:
          if ((*(v13 + 158) & 1) == 0)
          {
            v54 = __nwlog_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = *(v13 + 256);
              v56 = *(*(v13 + 248) + 372);
              if (v55)
              {
                LODWORD(v55) = *(v55 + 860);
              }

              v57 = *(v13 + 424);
              *buf = 136447490;
              *&buf[4] = "nw_protocol_http1_connect";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v1017 = " ";
              *v1018 = 1024;
              *&v1018[2] = v56;
              *&v1018[6] = 1024;
              *&v1018[8] = v55;
              *&v1018[12] = 1024;
              *&v1018[14] = v57;
              _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> no available connections, waiting", buf, 0x32u);
            }
          }

          v58 = v46;
          if ((*(v13 + 158) & 1) == 0 && BYTE1(v46[82].isa) == 1)
          {
            v739 = __nwlog_obj();
            if (os_log_type_enabled(v739, OS_LOG_TYPE_DEBUG))
            {
              v740 = *(v13 + 256);
              v741 = *(*(v13 + 248) + 372);
              if (v740)
              {
                LODWORD(v740) = *(v740 + 860);
              }

              v742 = *(v13 + 424);
              *buf = 136447746;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v1017 = " ";
              *v1018 = 1024;
              *&v1018[2] = v741;
              *&v1018[6] = 1024;
              *&v1018[8] = v740;
              *&v1018[12] = 1024;
              *&v1018[14] = v742;
              *&v1018[18] = 2048;
              *&v1018[20] = v13;
              _os_log_impl(&dword_181A37000, v739, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream (%p)", buf, 0x3Cu);
            }
          }

          if ((*(v13 + 428) & 0x2000) == 0)
          {
            *(v13 + 296) = 0;
            v59 = *(v7 + 256);
            *(v13 + 304) = v59;
            *v59 = v13;
            *(v7 + 256) = v13 + 296;
            v60 = *(v7 + 348) + 1;
            *(v7 + 348) = v60;
            if (v60 == v60 << 31 >> 31)
            {
LABEL_425:
              *(v13 + 428) |= 0x2000u;
              if (*(v13 + 158))
              {
                return 1;
              }

              if (BYTE1(v58[82].isa) != 1)
              {
                return 1;
              }

              v298 = __nwlog_obj();
              if (!os_log_type_enabled(v298, OS_LOG_TYPE_DEBUG))
              {
                return 1;
              }

              v299 = *(v13 + 256);
              v300 = *(*(v13 + 248) + 372);
              if (v299)
              {
                LODWORD(v299) = *(v299 + 860);
              }

              v301 = *(v13 + 424);
              v302 = *(v7 + 348);
              *buf = 136448258;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v1017 = " ";
              *v1018 = 1024;
              *&v1018[2] = v300;
              *&v1018[6] = 1024;
              *&v1018[8] = v299;
              *&v1018[12] = 1024;
              *&v1018[14] = v301;
              *&v1018[18] = 1024;
              *&v1018[20] = v301;
              *&v1018[24] = 2048;
              *&v1018[26] = v13;
              *&v1018[34] = 1024;
              *&v1018[36] = v302;
              v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> added stream %u (%p), now have %u pending streams";
              v24 = v298;
              v25 = 72;
              goto LABEL_43;
            }

            v61 = __nwlog_obj();
            v62 = *(v7 + 348);
            *buf = 136446978;
            *&buf[4] = "nw_http1_add_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "http1->pending_stream_count";
            *&buf[22] = 2048;
            v1017 = 1;
            *v1018 = 2048;
            *&v1018[2] = v62;
            v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v63, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v64 = __nwlog_obj();
                v65 = type[0];
                if (os_log_type_enabled(v64, type[0]))
                {
                  v66 = *(v7 + 348);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_pending_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->pending_stream_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v66;
                  v67 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_421:
                  _os_log_impl(&dword_181A37000, v64, v65, v67, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v154 = __nw_create_backtrace_string();
                v64 = __nwlog_obj();
                v65 = type[0];
                v155 = os_log_type_enabled(v64, type[0]);
                if (v154)
                {
                  if (v155)
                  {
                    v156 = *(v7 + 348);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_add_pending_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->pending_stream_count";
                    *&buf[22] = 2048;
                    v1017 = 1;
                    *v1018 = 2048;
                    *&v1018[2] = v156;
                    *&v1018[10] = 2082;
                    *&v1018[12] = v154;
                    _os_log_impl(&dword_181A37000, v64, v65, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v154);
                  goto LABEL_422;
                }

                if (v155)
                {
                  v297 = *(v7 + 348);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_pending_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->pending_stream_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v297;
                  v67 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_421;
                }
              }

              else
              {
                v64 = __nwlog_obj();
                v65 = type[0];
                if (os_log_type_enabled(v64, type[0]))
                {
                  v221 = *(v7 + 348);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_pending_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->pending_stream_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v221;
                  v67 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_421;
                }
              }
            }

LABEL_422:
            if (v63)
            {
              free(v63);
            }

            *(v7 + 348) = -1;
            goto LABEL_425;
          }

          v122 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_http1_add_pending_stream";
          *&buf[12] = 2048;
          *&buf[14] = v13;
          v123 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v122, 16, "%{public}s stream %p already in pending list, cannot add again", buf, 22);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v123, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v124 = __nwlog_obj();
              v125 = type[0];
              if (!os_log_type_enabled(v124, type[0]))
              {
                goto LABEL_376;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = v13;
              v126 = "%{public}s stream %p already in pending list, cannot add again";
              goto LABEL_375;
            }

            if (aBlock[0] != 1)
            {
              v124 = __nwlog_obj();
              v125 = type[0];
              if (!os_log_type_enabled(v124, type[0]))
              {
                goto LABEL_376;
              }

              *buf = 136446466;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = v13;
              v126 = "%{public}s stream %p already in pending list, cannot add again, backtrace limit exceeded";
              goto LABEL_375;
            }

            v145 = __nw_create_backtrace_string();
            v124 = __nwlog_obj();
            v125 = type[0];
            v146 = os_log_type_enabled(v124, type[0]);
            if (v145)
            {
              if (v146)
              {
                *buf = 136446722;
                *&buf[4] = "nw_http1_add_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                *&buf[22] = 2082;
                v1017 = v145;
                _os_log_impl(&dword_181A37000, v124, v125, "%{public}s stream %p already in pending list, cannot add again, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v145);
              goto LABEL_376;
            }

            if (v146)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_add_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = v13;
              v126 = "%{public}s stream %p already in pending list, cannot add again, no backtrace";
LABEL_375:
              _os_log_impl(&dword_181A37000, v124, v125, v126, buf, 0x16u);
            }
          }

LABEL_376:
          if (v123)
          {
            free(v123);
          }

          return 1;
        }

        if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
        {
          v861 = v8;
          v862 = __nwlog_obj();
          v863 = os_log_type_enabled(v862, OS_LOG_TYPE_DEBUG);
          v8 = v861;
          if (v863)
          {
            v864 = *(v13 + 256);
            v865 = *(*(v13 + 248) + 372);
            if (v864)
            {
              LODWORD(v864) = *(v864 + 860);
            }

            v866 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v1017 = " ";
            *v1018 = 1024;
            *&v1018[2] = v865;
            *&v1018[6] = 1024;
            *&v1018[8] = v864;
            *&v1018[12] = 1024;
            *&v1018[14] = v866;
            _os_log_impl(&dword_181A37000, v862, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> width allows new connection, creating", buf, 0x32u);
            v8 = v861;
          }
        }

        if ((*(v13 + 428) & 0x2000) == 0)
        {
LABEL_848:
          if (*(v13 + 32))
          {
            if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
            {
              v877 = __nwlog_obj();
              if (os_log_type_enabled(v877, OS_LOG_TYPE_DEBUG))
              {
                v878 = *(v13 + 256);
                v879 = *(*(v13 + 248) + 372);
                if (v878)
                {
                  LODWORD(v878) = *(v878 + 860);
                }

                v880 = *(v13 + 424);
                v881 = *(v13 + 32);
                *buf = 136447746;
                *&buf[4] = "nw_http1_establish_new_connection_for_stream";
                *&buf[12] = 2082;
                *&buf[14] = v13 + 74;
                *&buf[22] = 2080;
                v1017 = " ";
                *v1018 = 1024;
                *&v1018[2] = v879;
                *&v1018[6] = 1024;
                *&v1018[8] = v878;
                *&v1018[12] = 1024;
                *&v1018[14] = v880;
                *&v1018[18] = 2048;
                *&v1018[20] = v881;
                _os_log_impl(&dword_181A37000, v877, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using already established output handler %p", buf, 0x3Cu);
              }
            }

            v552 = *(v13 + 32);
            v992 = v552;
            if (v552)
            {
              v553 = *(v13 + 336);
              if (v553)
              {
                v554 = *(v13 + 320);
                if (v554)
                {
                  v555 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
                  v556 = v555;
                  if (v555)
                  {
                    bzero(v555, 0x370uLL);
                    nw_http1_connection::nw_http1_connection(v556);
                    goto LABEL_874;
                  }

                  v568 = __nwlog_obj();
                  v569 = os_log_type_enabled(v568, OS_LOG_TYPE_ERROR);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_connection_create";
                  if (v569)
                  {
                    v570 = 3;
                  }

                  else
                  {
                    v570 = 2;
                  }

                  *&buf[12] = 2048;
                  *&buf[14] = 1;
                  *&buf[22] = 2048;
                  v1017 = 880;
                  LODWORD(v977) = 32;
                  v571 = _os_log_send_and_compose_impl(v570, 0, 0, 0, &dword_181A37000, v568, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v977);
                  result = __nwlog_should_abort(v571);
                  if (!result)
                  {
                    free(v571);
                    bzero(0, 0x370uLL);
                    nw_http1_connection::nw_http1_connection(0);
                    v572 = __nwlog_obj();
                    v573 = os_log_type_enabled(v572, OS_LOG_TYPE_ERROR) ? 3 : 2;
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    LODWORD(v981) = 12;
                    v574 = _os_log_send_and_compose_impl(v573, 0, 0, 0, &dword_181A37000, v572, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v981);
                    result = __nwlog_should_abort(v574);
                    if (!result)
                    {
                      free(v574);
LABEL_874:
                      if (nw_protocol_http1_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
                      }

                      *(v556 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
                      if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
                      {
                        dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
                      }

                      *(v556 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
                      *(v556 + 184) = 3;
                      *(v556 + 176) = v556;
                      *(v556 + 40) = v556 + 160;
                      *(v556 + 480) = v7;
                      nw_protocol_set_output_handler(v556, v552);
                      *buf = os_retain(v553);
                      nw::retained_ptr<nw_endpoint *>::operator=(v556 + 752, buf);
                      *buf = os_retain(v554);
                      nw::retained_ptr<nw_endpoint *>::operator=(v556 + 736, buf);
                      *buf = _nw_parameters_copy_context();
                      nw::retained_ptr<nw_endpoint *>::operator=(v556 + 496, buf);
                      *(v556 + 192) = *(v7 + 192);
                      v575 = *(v556 + 496);
                      *type = MEMORY[0x1E69E9820];
                      v1002 = 0x40000000;
                      v1003 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
                      v1004 = &__block_descriptor_tmp_43_43000;
                      v1005 = v556;
                      *buf = nw_http_connection_create_metadata(v575, type, 0);
                      nw::retained_ptr<nw_endpoint *>::operator=(v556 + 768, buf);
                      nw_http_connection_metadata_set_version(*(v556 + 768), 3);
                      nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v556 + 768), *(v7 + 312));
                      *(v556 + 616) = 0;
                      *(v556 + 624) = v556 + 616;
                      *(v556 + 632) = 0;
                      *(v556 + 640) = v556 + 632;
                      *(v556 + 648) = 0;
                      *(v556 + 656) = v556 + 648;
                      *(v556 + 664) = 0;
                      *(v556 + 672) = v556 + 664;
                      *(v556 + 680) = 0;
                      *(v556 + 688) = v556 + 680;
                      nw_frame_cache_init((v556 + 696), v556, 256, 0x40000, 16);
                      v576 = *(v556 + 480);
                      if (v576)
                      {
                        *(v556 + 360) = 0u;
                        *(v556 + 376) = 0u;
                        *(v556 + 392) = 0u;
                        *(v556 + 408) = 0u;
                        *(v556 + 424) = 0u;
                        *(v556 + 440) = 0u;
                        *(v556 + 328) = 0u;
                        *(v556 + 344) = 0u;
                        *(v556 + 296) = nw_http1_on_message_begin;
                        *(v556 + 384) = nw_http1_on_message_complete;
                        *(v556 + 368) = nw_http1_on_headers_complete;
                        *(v556 + 472) = nw_http1_on_reset;
                        *(v556 + 320) = nw_http1_on_method;
                        *(v556 + 408) = nw_http1_on_method_complete;
                        *(v556 + 304) = nw_http1_on_url;
                        *(v556 + 392) = nw_http1_on_url_complete;
                        *(v556 + 312) = nw_http1_on_status;
                        *(v556 + 400) = nw_http1_on_status_complete;
                        *(v556 + 336) = nw_http1_on_header_field;
                        *(v556 + 424) = nw_http1_on_header_field_complete;
                        *(v556 + 344) = nw_http1_on_header_value;
                        *(v556 + 432) = nw_http1_on_header_value_complete;
                        *(v556 + 376) = nw_http1_on_body;
                        *(v556 + 456) = nw_http1_on_chunk_header;
                        *(v556 + 464) = nw_http1_on_chunk_complete;
                        v577 = *(v576 + 376);
                        *(v556 + 248) = 0u;
                        *(v556 + 200) = 0u;
                        *(v556 + 264) = 0u;
                        *(v556 + 232) = 0u;
                        *(v556 + 216) = 0u;
                        if (v577)
                        {
                          v578 = 1;
                        }

                        else
                        {
                          v578 = 2;
                        }

                        *(v556 + 272) = v578;
                        *(v556 + 280) = 0;
                        *(v556 + 288) = v556 + 296;
                        *(v556 + 278) = 16131;
                        *(v556 + 248) = v556;
                        *(v556 + 256) = 237;
                        if ((*(v556 + 158) & 1) == 0)
                        {
                          v579 = __nwlog_obj();
                          if (os_log_type_enabled(v579, OS_LOG_TYPE_DEBUG))
                          {
                            v580 = *(v556 + 488);
                            v581 = *(*(v556 + 480) + 372);
                            v582 = *(v556 + 860);
                            if (v580)
                            {
                              LODWORD(v580) = *(v580 + 424);
                            }

                            *buf = 136448258;
                            *&buf[4] = "nw_http1_connection_log_parser_version";
                            *&buf[12] = 2082;
                            *&buf[14] = v556 + 74;
                            *&buf[22] = 2080;
                            v1017 = " ";
                            *v1018 = 1024;
                            *&v1018[2] = v581;
                            *&v1018[6] = 1024;
                            *&v1018[8] = v582;
                            *&v1018[12] = 1024;
                            *&v1018[14] = v580;
                            *&v1018[18] = 1024;
                            *&v1018[20] = 9;
                            *&v1018[24] = 1024;
                            *&v1018[26] = 2;
                            *&v1018[30] = 1024;
                            *&v1018[32] = 1;
                            _os_log_impl(&dword_181A37000, v579, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
                          }
                        }

                        goto LABEL_887;
                      }

                      v890 = v7;
                      v891 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_connection_parser_init";
                      LODWORD(v977) = 12;
                      v892 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v891, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v977);
                      v1013[0] = 16;
                      v996[0] = OS_LOG_TYPE_DEFAULT;
                      if (__nwlog_fault(v892, v1013, v996))
                      {
                        if (v1013[0] == 17)
                        {
                          v893 = __nwlog_obj();
                          v894 = v1013[0];
                          if (os_log_type_enabled(v893, v1013[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_connection_parser_init";
                            v895 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1676:
                            _os_log_impl(&dword_181A37000, v893, v894, v895, buf, 0xCu);
                          }
                        }

                        else if (v996[0] == OS_LOG_TYPE_INFO)
                        {
                          v936 = __nw_create_backtrace_string();
                          v893 = __nwlog_obj();
                          v894 = v1013[0];
                          v937 = os_log_type_enabled(v893, v1013[0]);
                          if (v936)
                          {
                            if (v937)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_http1_connection_parser_init";
                              *&buf[12] = 2082;
                              *&buf[14] = v936;
                              _os_log_impl(&dword_181A37000, v893, v894, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v936);
                            goto LABEL_1677;
                          }

                          if (v937)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_connection_parser_init";
                            v895 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                            goto LABEL_1676;
                          }
                        }

                        else
                        {
                          v893 = __nwlog_obj();
                          v894 = v1013[0];
                          if (os_log_type_enabled(v893, v1013[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_connection_parser_init";
                            v895 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                            goto LABEL_1676;
                          }
                        }
                      }

LABEL_1677:
                      if (v892)
                      {
                        free(v892);
                      }

                      v7 = v890;
LABEL_887:
                      v583 = v7;
                      *buf = 0;
                      *&buf[8] = buf;
                      *&buf[16] = 0x2000000000;
                      v1017 = v556;
                      *aBlock = MEMORY[0x1E69E9820];
                      *&aBlock[8] = 0x40000000;
                      *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
                      v1009 = &unk_1E6A32758;
                      *v1010 = buf;
                      *(v556 + 608) = _Block_copy(aBlock);
                      _Block_object_dispose(buf, 8);
                      if ((*(v556 + 158) & 1) == 0 && gLogDatapath == 1)
                      {
                        v906 = __nwlog_obj();
                        if (os_log_type_enabled(v906, OS_LOG_TYPE_DEBUG))
                        {
                          v907 = *(v556 + 488);
                          v908 = *(*(v556 + 480) + 372);
                          v909 = *(v556 + 860);
                          if (v907)
                          {
                            LODWORD(v907) = *(v907 + 424);
                          }

                          *buf = 136447746;
                          *&buf[4] = "nw_http1_connection_create";
                          *&buf[12] = 2082;
                          *&buf[14] = v556 + 74;
                          *&buf[22] = 2080;
                          v1017 = " ";
                          *v1018 = 1024;
                          *&v1018[2] = v908;
                          *&v1018[6] = 1024;
                          *&v1018[8] = v909;
                          *&v1018[12] = 1024;
                          *&v1018[14] = v907;
                          *&v1018[18] = 2048;
                          *&v1018[20] = v556;
                          _os_log_impl(&dword_181A37000, v906, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                        }
                      }

                      nw_protocol_replace_input_handler(v552, v13, v556);
                      *v556 = *v552;
                      v584 = *(v556 + 736);
                      if (v584)
                      {
                        if (!*(v556 + 528))
                        {
                          v585 = _nw_parameters_copy_context();
                          *buf = nw_path_copy_flow_registration(v585, v556);
                          v586 = (v556 + 560);
                          nw::retained_ptr<nw_endpoint *>::operator=(v556 + 560, buf);
                          v587 = *(v556 + 560);
                          if (v587)
                          {
                            v588 = nw_path_flow_registration_copy_endpoint(v587);
                            v589 = nw_path_flow_registration_copy_parameters(*v586);
                            *buf = nw_endpoint_copy_association_with_evaluator(v588, v589, 0);
                            nw::retained_ptr<nw_endpoint *>::operator=(v556 + 528, buf);
                            if (*(v556 + 528))
                            {
                              *buf = nw_protocol_instance_stub_create(v556);
                              nw::retained_ptr<nw_endpoint *>::operator=(v556 + 544, buf);
                              nw_association_register_internal(*(v556 + 528), v584, *(v556 + 544), 0, 0, &__block_literal_global_69_43019);
                              v590 = nw_association_copy_current_path(*(v556 + 528), v589);
                              if (v590)
                              {
                                v591 = v590;
                                v592 = nw_path_copy_for_flow_registration(v590, *v586);
                                if (v592)
                                {
                                  v593 = v592;
                                  if (*(v556 + 512) != v592)
                                  {
                                    *buf = os_retain(v592);
                                    nw::retained_ptr<nw_endpoint *>::operator=(v556 + 512, buf);
                                  }

                                  if (nw_path_has_flows(v593))
                                  {
                                    v594 = 4096;
                                  }

                                  else
                                  {
                                    v594 = 0;
                                  }

                                  *(v556 + 872) = *(v556 + 872) & 0xEFFF | v594;
                                  v595 = _nw_parameters_copy_effective_proxy_config(v584);
                                  if (v595)
                                  {
                                    v596 = v595;
                                    if (nw_path_has_proxy_config(v591, v595))
                                    {
                                      *buf = os_retain(v596);
                                      nw::retained_ptr<nw_endpoint *>::operator=(v556 + 576, buf);
                                    }

                                    os_release(v596);
                                  }

                                  os_release(v593);
                                }

                                os_release(v591);
                              }
                            }

                            if (v589)
                            {
                              os_release(v589);
                            }

                            if (v588)
                            {
                              os_release(v588);
                            }
                          }

                          v552 = v992;
                          if (v585)
                          {
                            os_release(v585);
                          }
                        }

                        v597 = *(v556 + 512);
                        if (v597)
                        {
LABEL_913:
                          if (_nw_path_uses_interface_type(v597, 2u))
                          {
                            *(v556 + 192) = 1000;
                          }
                        }

LABEL_915:
                        v598 = v583;
                        v599 = *(v583 + 336) + 1;
                        *(v583 + 336) = v599;
                        if (v599 == v599 << 31 >> 31)
                        {
                          goto LABEL_940;
                        }

                        v600 = __nwlog_obj();
                        v601 = *(v583 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v601;
                        LODWORD(v977) = 42;
                        v602 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v600, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v977);
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v602, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v603 = __nwlog_obj();
                            v604 = type[0];
                            if (os_log_type_enabled(v603, type[0]))
                            {
                              v605 = *(v583 + 336);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->connections_count";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v605;
                              v606 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_936:
                              _os_log_impl(&dword_181A37000, v603, v604, v606, buf, 0x2Au);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v607 = __nw_create_backtrace_string();
                            v603 = __nwlog_obj();
                            v604 = type[0];
                            v608 = os_log_type_enabled(v603, type[0]);
                            if (v607)
                            {
                              if (v608)
                              {
                                v609 = *(v583 + 336);
                                *buf = 136447234;
                                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                                *&buf[12] = 2082;
                                *&buf[14] = "http1->connections_count";
                                *&buf[22] = 2048;
                                v1017 = 1;
                                *v1018 = 2048;
                                *&v1018[2] = v609;
                                *&v1018[10] = 2082;
                                *&v1018[12] = v607;
                                _os_log_impl(&dword_181A37000, v603, v604, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v607);
                              v598 = v583;
                              goto LABEL_937;
                            }

                            v598 = v583;
                            if (v608)
                            {
                              v615 = *(v583 + 336);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->connections_count";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v615;
                              v606 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                              goto LABEL_936;
                            }
                          }

                          else
                          {
                            v603 = __nwlog_obj();
                            v604 = type[0];
                            if (os_log_type_enabled(v603, type[0]))
                            {
                              v613 = *(v583 + 336);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->connections_count";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v613;
                              v606 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                              goto LABEL_936;
                            }
                          }
                        }

LABEL_937:
                        if (v602)
                        {
                          free(v602);
                        }

                        *(v598 + 336) = -1;
                        v552 = v992;
LABEL_940:
                        v616 = *(v598 + 360) + 1;
                        *(v598 + 360) = v616;
                        v617 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        if (v616 == v616 << 31 >> 31)
                        {
                          goto LABEL_958;
                        }

                        v618 = __nwlog_obj();
                        v619 = *(v598 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v619;
                        LODWORD(v977) = 42;
                        v620 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v618, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v977);
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v620, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v621 = __nwlog_obj();
                            v622 = type[0];
                            if (os_log_type_enabled(v621, type[0]))
                            {
                              v623 = *(v598 + 360);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->next_connection_log_num";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v623;
                              v624 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_954:
                              _os_log_impl(&dword_181A37000, v621, v622, v624, buf, 0x2Au);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v625 = __nw_create_backtrace_string();
                            v621 = __nwlog_obj();
                            v622 = type[0];
                            v626 = os_log_type_enabled(v621, type[0]);
                            if (v625)
                            {
                              if (v626)
                              {
                                v627 = *(v583 + 360);
                                *buf = 136447234;
                                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                                *&buf[12] = 2082;
                                *&buf[14] = "http1->next_connection_log_num";
                                *&buf[22] = 2048;
                                v1017 = 1;
                                *v1018 = 2048;
                                *&v1018[2] = v627;
                                *&v1018[10] = 2082;
                                *&v1018[12] = v625;
                                _os_log_impl(&dword_181A37000, v621, v622, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v625);
                              v598 = v583;
                              goto LABEL_955;
                            }

                            v598 = v583;
                            if (v626)
                            {
                              v629 = *(v583 + 360);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->next_connection_log_num";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v629;
                              v624 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                              goto LABEL_954;
                            }
                          }

                          else
                          {
                            v621 = __nwlog_obj();
                            v622 = type[0];
                            if (os_log_type_enabled(v621, type[0]))
                            {
                              v628 = *(v598 + 360);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_add_connection_for_output_handler";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->next_connection_log_num";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v628;
                              v624 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                              goto LABEL_954;
                            }
                          }
                        }

LABEL_955:
                        if (v620)
                        {
                          free(v620);
                        }

                        LODWORD(v616) = -1;
                        *(v598 + 360) = -1;
                        v617 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                        v552 = v992;
LABEL_958:
                        *(v556 + 860) = v616;
                        if ((*(v556 + 158) & 1) == 0 && BYTE1(v617[82].isa) == 1)
                        {
                          v910 = __nwlog_obj();
                          if (os_log_type_enabled(v910, OS_LOG_TYPE_DEBUG))
                          {
                            v911 = *(v556 + 488);
                            v912 = *(*(v556 + 480) + 372);
                            v913 = *(v556 + 860);
                            if (v911)
                            {
                              LODWORD(v911) = *(v911 + 424);
                            }

                            v914 = *(v583 + 336);
                            *buf = 136448002;
                            *&buf[4] = "nw_http1_add_connection_for_output_handler";
                            *&buf[12] = 2082;
                            *&buf[14] = v556 + 74;
                            *&buf[22] = 2080;
                            v1017 = " ";
                            *v1018 = 1024;
                            *&v1018[2] = v912;
                            *&v1018[6] = 1024;
                            *&v1018[8] = v913;
                            *&v1018[12] = 1024;
                            *&v1018[14] = v911;
                            *&v1018[18] = 2048;
                            *&v1018[20] = v556;
                            *&v1018[28] = 1024;
                            *&v1018[30] = v914;
                            _os_log_impl(&dword_181A37000, v910, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                            v552 = v992;
                          }
                        }

                        if (*(v13 + 248))
                        {
                          if (*(v556 + 488))
                          {
                            v630 = __nwlog_obj();
                            v631 = *(v556 + 488);
                            *buf = 136446722;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2048;
                            *&buf[14] = v556;
                            *&buf[22] = 2048;
                            v1017 = v631;
                            LODWORD(v977) = 32;
                            v632 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v630, 16, "%{public}s Connection %p already has a stream (%p)", buf, v977);
                            aBlock[0] = 16;
                            v1013[0] = 0;
                            if (!__nwlog_fault(v632, aBlock, v1013))
                            {
                              goto LABEL_993;
                            }

                            if (aBlock[0] == 17)
                            {
                              v633 = __nwlog_obj();
                              v634 = aBlock[0];
                              if (!os_log_type_enabled(v633, aBlock[0]))
                              {
                                goto LABEL_993;
                              }

                              v635 = *(v556 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v556;
                              *&buf[22] = 2048;
                              v1017 = v635;
                              v636 = "%{public}s Connection %p already has a stream (%p)";
                            }

                            else if (v1013[0] == 1)
                            {
                              v643 = __nw_create_backtrace_string();
                              v633 = __nwlog_obj();
                              v634 = aBlock[0];
                              v644 = os_log_type_enabled(v633, aBlock[0]);
                              if (v643)
                              {
                                if (v644)
                                {
                                  v645 = *(v556 + 488);
                                  *buf = 136446978;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v556;
                                  *&buf[22] = 2048;
                                  v1017 = v645;
                                  *v1018 = 2082;
                                  *&v1018[2] = v643;
                                  _os_log_impl(&dword_181A37000, v633, v634, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                                }

                                free(v643);
                                goto LABEL_993;
                              }

                              if (!v644)
                              {
LABEL_993:
                                if (v632)
                                {
                                  free(v632);
                                }

LABEL_1239:
                                v743 = 0;
                                goto LABEL_1240;
                              }

                              v657 = *(v556 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v556;
                              *&buf[22] = 2048;
                              v1017 = v657;
                              v636 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                            }

                            else
                            {
                              v633 = __nwlog_obj();
                              v634 = aBlock[0];
                              if (!os_log_type_enabled(v633, aBlock[0]))
                              {
                                goto LABEL_993;
                              }

                              v646 = *(v556 + 488);
                              *buf = 136446722;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2048;
                              *&buf[14] = v556;
                              *&buf[22] = 2048;
                              v1017 = v646;
                              v636 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                            }

                            _os_log_impl(&dword_181A37000, v633, v634, v636, buf, 0x20u);
                            goto LABEL_993;
                          }

                          *(v13 + 256) = v556;
                          *(v556 + 488) = v13;
                          v637 = *(v13 + 320);
                          if (v637)
                          {
                            v637 = os_retain(v637);
                          }

                          *buf = v637;
                          nw::retained_ptr<nw_endpoint *>::operator=(v556 + 736, buf);
                          if ((*(*(v13 + 248) + 376) & 2) == 0)
                          {
                            goto LABEL_1209;
                          }

                          v638 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
                          *aBlock = 0;
                          *&aBlock[8] = aBlock;
                          *&aBlock[16] = 0x2000000000;
                          LOBYTE(v1009) = 0;
                          *buf = 0;
                          *&buf[8] = buf;
                          *&buf[16] = 0x3802000000;
                          v1017 = __Block_byref_object_copy__42960;
                          *v1018 = __Block_byref_object_dispose__42961;
                          *&v1018[8] = 0;
                          v1018[16] |= 1u;
                          *type = MEMORY[0x1E69E9820];
                          v1002 = 0x40000000;
                          v1003 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                          v1004 = &unk_1E6A32930;
                          v1005 = aBlock;
                          v1006 = buf;
                          v1007 = v13;
                          nw_protocol_stack_iterate_application_protocols(v638, type);
                          if (*(*&buf[8] + 40))
                          {
                            v639 = v556;
                            while (1)
                            {
                              v639 = *(v639 + 32);
                              if (!v639)
                              {
                                break;
                              }

                              if (nw_protocol_is_tls_over_stream(v639))
                              {
                                v640 = *(*&buf[8] + 40);
                                v641 = nw_protocol_boringssl_copy_definition();
                                nw_parameters_set_protocol_instance(v640, v642, v639);
                                if (v641)
                                {
                                  os_release(v641);
                                }

                                goto LABEL_1196;
                              }
                            }

                            v652 = __nwlog_obj();
                            *v1013 = 136446210;
                            *&v1013[4] = "nw_http1_stream_associate_with_connection";
                            LODWORD(v977) = 12;
                            v653 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v652, 16, "%{public}s tls should have been in the stack but could not find it", v1013, v977);
                            v996[0] = OS_LOG_TYPE_ERROR;
                            v1000 = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v653, v996, &v1000))
                            {
                              goto LABEL_1200;
                            }

                            if (v996[0] == OS_LOG_TYPE_FAULT)
                            {
                              v654 = __nwlog_obj();
                              v655 = v996[0];
                              if (os_log_type_enabled(v654, v996[0]))
                              {
                                *v1013 = 136446210;
                                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                v656 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1199:
                                _os_log_impl(&dword_181A37000, v654, v655, v656, v1013, 0xCu);
                              }
                            }

                            else if (v1000 == OS_LOG_TYPE_INFO)
                            {
                              v660 = __nw_create_backtrace_string();
                              v654 = __nwlog_obj();
                              v655 = v996[0];
                              v661 = os_log_type_enabled(v654, v996[0]);
                              if (v660)
                              {
                                if (v661)
                                {
                                  *v1013 = 136446466;
                                  *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                  *&v1013[12] = 2082;
                                  *&v1013[14] = v660;
                                  _os_log_impl(&dword_181A37000, v654, v655, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1013, 0x16u);
                                }

                                free(v660);
                                goto LABEL_1200;
                              }

                              if (v661)
                              {
                                *v1013 = 136446210;
                                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                v656 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                                goto LABEL_1199;
                              }
                            }

                            else
                            {
                              v654 = __nwlog_obj();
                              v655 = v996[0];
                              if (os_log_type_enabled(v654, v996[0]))
                              {
                                *v1013 = 136446210;
                                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                v656 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                                goto LABEL_1199;
                              }
                            }

LABEL_1200:
                            if (v653)
                            {
                              free(v653);
                            }

                            v743 = 0;
                            goto LABEL_1203;
                          }

                          v647 = __nwlog_obj();
                          *v1013 = 136446210;
                          *&v1013[4] = "nw_http1_stream_associate_with_connection";
                          LODWORD(v977) = 12;
                          v648 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v647, 16, "%{public}s unable to find tls options", v1013, v977);
                          v996[0] = OS_LOG_TYPE_ERROR;
                          v1000 = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v648, v996, &v1000))
                          {
                            if (v996[0] == OS_LOG_TYPE_FAULT)
                            {
                              v649 = __nwlog_obj();
                              v650 = v996[0];
                              if (os_log_type_enabled(v649, v996[0]))
                              {
                                *v1013 = 136446210;
                                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                v651 = "%{public}s unable to find tls options";
LABEL_1193:
                                _os_log_impl(&dword_181A37000, v649, v650, v651, v1013, 0xCu);
                              }
                            }

                            else if (v1000 == OS_LOG_TYPE_INFO)
                            {
                              v658 = __nw_create_backtrace_string();
                              v649 = __nwlog_obj();
                              v650 = v996[0];
                              v659 = os_log_type_enabled(v649, v996[0]);
                              if (v658)
                              {
                                if (v659)
                                {
                                  *v1013 = 136446466;
                                  *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                  *&v1013[12] = 2082;
                                  *&v1013[14] = v658;
                                  _os_log_impl(&dword_181A37000, v649, v650, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1013, 0x16u);
                                }

                                free(v658);
                              }

                              else if (v659)
                              {
                                *v1013 = 136446210;
                                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                v651 = "%{public}s unable to find tls options, no backtrace";
                                goto LABEL_1193;
                              }
                            }

                            else
                            {
                              v649 = __nwlog_obj();
                              v650 = v996[0];
                              if (os_log_type_enabled(v649, v996[0]))
                              {
                                *v1013 = 136446210;
                                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                                v651 = "%{public}s unable to find tls options, backtrace limit exceeded";
                                goto LABEL_1193;
                              }
                            }
                          }

                          if (v648)
                          {
                            free(v648);
                          }

LABEL_1196:
                          v743 = 1;
LABEL_1203:
                          v552 = v992;
                          _Block_object_dispose(buf, 8);
                          if ((v1018[16] & 1) != 0 && *&v1018[8])
                          {
                            os_release(*&v1018[8]);
                          }

                          _Block_object_dispose(aBlock, 8);
                          if (v638)
                          {
                            os_release(v638);
                          }

                          if (!v743)
                          {
LABEL_1240:
                            if ((*(v13 + 158) & 1) == 0)
                            {
                              v774 = __nwlog_obj();
                              if (os_log_type_enabled(v774, OS_LOG_TYPE_DEBUG))
                              {
                                v775 = *(v13 + 256);
                                v776 = *(*(v13 + 248) + 372);
                                if (v775)
                                {
                                  LODWORD(v775) = *(v775 + 860);
                                }

                                v777 = *(v13 + 424);
                                *buf = 136448258;
                                *&buf[4] = "nw_http1_start_new_connection_for_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v13 + 74;
                                *&buf[22] = 2080;
                                v1017 = " ";
                                *v1018 = 1024;
                                *&v1018[2] = v776;
                                *&v1018[6] = 1024;
                                *&v1018[8] = v775;
                                *&v1018[12] = 1024;
                                *&v1018[14] = v777;
                                *&v1018[18] = 2048;
                                *&v1018[20] = v556;
                                *&v1018[28] = 1024;
                                *&v1018[30] = v777;
                                *&v1018[34] = 2048;
                                *&v1018[36] = v13;
                                _os_log_impl(&dword_181A37000, v774, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                              }
                            }

                            *(v13 + 428) |= 1u;
                            v778 = nw_protocol_copy_info(v552);
                            v557 = v778;
                            if (v778)
                            {
                              object = _nw_array_copy_last_object(v778);
                              v780 = object;
                              if (object)
                              {
                                if (nw_protocol_metadata_is_tls(object))
                                {
                                  v780 = v780;
                                  nw_http_connection_metadata_set_sec_metadata(*(v556 + 768), v780);
                                  os_release(v780);
                                }

                                v781 = 0;
LABEL_1252:
                                if (!v743)
                                {
                                  goto LABEL_1253;
                                }

                                v872 = __nwlog_obj();
                                *buf = 136446210;
                                *&buf[4] = "nw_http1_get_output_protocol";
                                LODWORD(v977) = 12;
                                v873 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v872, 16, "%{public}s called with null connection", buf, v977);
                                type[0] = OS_LOG_TYPE_ERROR;
                                aBlock[0] = 0;
                                if (__nwlog_fault(v873, type, aBlock))
                                {
                                  if (type[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v874 = __nwlog_obj();
                                    v875 = type[0];
                                    if (os_log_type_enabled(v874, type[0]))
                                    {
                                      *buf = 136446210;
                                      *&buf[4] = "nw_http1_get_output_protocol";
                                      v876 = "%{public}s called with null connection";
LABEL_1630:
                                      _os_log_impl(&dword_181A37000, v874, v875, v876, buf, 0xCu);
                                    }
                                  }

                                  else if (aBlock[0] == 1)
                                  {
                                    v930 = __nw_create_backtrace_string();
                                    v874 = __nwlog_obj();
                                    v875 = type[0];
                                    v931 = os_log_type_enabled(v874, type[0]);
                                    if (v930)
                                    {
                                      if (v931)
                                      {
                                        *buf = 136446466;
                                        *&buf[4] = "nw_http1_get_output_protocol";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v930;
                                        _os_log_impl(&dword_181A37000, v874, v875, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                                      }

                                      free(v930);
                                      goto LABEL_1631;
                                    }

                                    if (v931)
                                    {
                                      *buf = 136446210;
                                      *&buf[4] = "nw_http1_get_output_protocol";
                                      v876 = "%{public}s called with null connection, no backtrace";
                                      goto LABEL_1630;
                                    }
                                  }

                                  else
                                  {
                                    v874 = __nwlog_obj();
                                    v875 = type[0];
                                    if (os_log_type_enabled(v874, type[0]))
                                    {
                                      *buf = 136446210;
                                      *&buf[4] = "nw_http1_get_output_protocol";
                                      v876 = "%{public}s called with null connection, backtrace limit exceeded";
                                      goto LABEL_1630;
                                    }
                                  }
                                }

LABEL_1631:
                                if (v873)
                                {
                                  free(v873);
                                }

                                v556 = 0;
                                v552 = v992;
LABEL_1253:
                                nw_protocol_connect(v552, v556);
                                if ((v781 & 1) == 0)
                                {
                                  os_release(v780);
                                }

                                if (!v557)
                                {
                                  return 1;
                                }

                                goto LABEL_1256;
                              }
                            }

                            else
                            {
                              v780 = 0;
                            }

                            v781 = 1;
                            goto LABEL_1252;
                          }

LABEL_1209:
                          v744 = *(v13 + 32);
                          if (!v744 || v744 == *(v556 + 32))
                          {
LABEL_1228:
                            nw_protocol_set_output_handler(v13, *(v556 + 32));
                            nw_protocol_set_input_handler(v556, *(v13 + 48));
                            *v13 = *v556;
                            v762 = *(v13 + 96);
                            v763 = *(v13 + 112);
                            v764 = *(v13 + 128);
                            *(v556 + 144) = *(v13 + 144);
                            v765 = *(v13 + 80);
                            *(v556 + 64) = *(v13 + 64);
                            *(v556 + 80) = v765;
                            *(v556 + 112) = v763;
                            *(v556 + 128) = v764;
                            *(v556 + 96) = v762;
                            *(v556 + 872) &= 0xFFD7u;
                            *(v556 + 864) = 1;
                            if ((*(v556 + 158) & 1) == 0)
                            {
                              v766 = __nwlog_obj();
                              if (os_log_type_enabled(v766, OS_LOG_TYPE_DEBUG))
                              {
                                v767 = *(v556 + 488);
                                v768 = *(*(v556 + 480) + 372);
                                v769 = *(v556 + 860);
                                if (v767)
                                {
                                  LODWORD(v767) = *(v767 + 424);
                                }

                                *buf = 136447490;
                                *&buf[4] = "nw_http1_update_connection_input_state";
                                *&buf[12] = 2082;
                                *&buf[14] = v556 + 74;
                                *&buf[22] = 2080;
                                v1017 = " ";
                                *v1018 = 1024;
                                *&v1018[2] = v768;
                                *&v1018[6] = 1024;
                                *&v1018[8] = v769;
                                *&v1018[12] = 1024;
                                *&v1018[14] = v767;
                                _os_log_impl(&dword_181A37000, v766, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                                v552 = v992;
                              }
                            }

                            if (*(v13 + 158))
                            {
                              goto LABEL_1239;
                            }

                            v770 = __nwlog_obj();
                            if (!os_log_type_enabled(v770, OS_LOG_TYPE_INFO))
                            {
                              goto LABEL_1239;
                            }

                            v771 = *(v13 + 256);
                            v772 = *(*(v13 + 248) + 372);
                            if (v771)
                            {
                              LODWORD(v771) = *(v771 + 860);
                            }

                            v773 = *(v13 + 424);
                            *buf = 136448002;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v13 + 74;
                            *&buf[22] = 2080;
                            v1017 = " ";
                            *v1018 = 1024;
                            *&v1018[2] = v772;
                            *&v1018[6] = 1024;
                            *&v1018[8] = v771;
                            *&v1018[12] = 1024;
                            *&v1018[14] = v773;
                            *&v1018[18] = 2048;
                            *&v1018[20] = v13;
                            *&v1018[28] = 2048;
                            *&v1018[30] = v556;
                            _os_log_impl(&dword_181A37000, v770, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                            v743 = 0;
                            goto LABEL_1238;
                          }

                          v745 = __nwlog_obj();
                          v746 = *(v13 + 32);
                          v747 = *(v556 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v746;
                          *&buf[22] = 2048;
                          v1017 = v13;
                          *v1018 = 2048;
                          *&v1018[2] = v747;
                          LODWORD(v977) = 42;
                          v748 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v745, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v977);
                          aBlock[0] = 16;
                          v1013[0] = 0;
                          if (__nwlog_fault(v748, aBlock, v1013))
                          {
                            if (aBlock[0] == 17)
                            {
                              v749 = __nwlog_obj();
                              v750 = aBlock[0];
                              if (os_log_type_enabled(v749, aBlock[0]))
                              {
                                v751 = *(v13 + 32);
                                v752 = *(v556 + 32);
                                *buf = 136446978;
                                *&buf[4] = "nw_http1_stream_associate_with_connection";
                                *&buf[12] = 2048;
                                *&buf[14] = v751;
                                *&buf[22] = 2048;
                                v1017 = v13;
                                *v1018 = 2048;
                                *&v1018[2] = v752;
                                v753 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_1224:
                                _os_log_impl(&dword_181A37000, v749, v750, v753, buf, 0x2Au);
                              }
                            }

                            else if (v1013[0] == 1)
                            {
                              v754 = __nw_create_backtrace_string();
                              v749 = __nwlog_obj();
                              v750 = aBlock[0];
                              v755 = os_log_type_enabled(v749, aBlock[0]);
                              if (v754)
                              {
                                if (v755)
                                {
                                  v756 = *(v13 + 32);
                                  v757 = *(v556 + 32);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                                  *&buf[12] = 2048;
                                  *&buf[14] = v756;
                                  *&buf[22] = 2048;
                                  v1017 = v13;
                                  *v1018 = 2048;
                                  *&v1018[2] = v757;
                                  *&v1018[10] = 2082;
                                  *&v1018[12] = v754;
                                  _os_log_impl(&dword_181A37000, v749, v750, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                                }

                                free(v754);
                                goto LABEL_1225;
                              }

                              if (v755)
                              {
                                v760 = *(v13 + 32);
                                v761 = *(v556 + 32);
                                *buf = 136446978;
                                *&buf[4] = "nw_http1_stream_associate_with_connection";
                                *&buf[12] = 2048;
                                *&buf[14] = v760;
                                *&buf[22] = 2048;
                                v1017 = v13;
                                *v1018 = 2048;
                                *&v1018[2] = v761;
                                v753 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                                goto LABEL_1224;
                              }
                            }

                            else
                            {
                              v749 = __nwlog_obj();
                              v750 = aBlock[0];
                              if (os_log_type_enabled(v749, aBlock[0]))
                              {
                                v758 = *(v13 + 32);
                                v759 = *(v556 + 32);
                                *buf = 136446978;
                                *&buf[4] = "nw_http1_stream_associate_with_connection";
                                *&buf[12] = 2048;
                                *&buf[14] = v758;
                                *&buf[22] = 2048;
                                v1017 = v13;
                                *v1018 = 2048;
                                *&v1018[2] = v759;
                                v753 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                                goto LABEL_1224;
                              }
                            }
                          }

LABEL_1225:
                          if (v748)
                          {
                            free(v748);
                          }

                          v552 = v992;
                          goto LABEL_1228;
                        }

                        v901 = __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        LODWORD(v977) = 12;
                        v902 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v901, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v977);
                        aBlock[0] = 16;
                        v1013[0] = 0;
                        if (!__nwlog_fault(v902, aBlock, v1013))
                        {
                          goto LABEL_1690;
                        }

                        if (aBlock[0] == 17)
                        {
                          v903 = __nwlog_obj();
                          v904 = aBlock[0];
                          if (os_log_type_enabled(v903, aBlock[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v905 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1689:
                            _os_log_impl(&dword_181A37000, v903, v904, v905, buf, 0xCu);
                          }
                        }

                        else if (v1013[0] == 1)
                        {
                          v940 = __nw_create_backtrace_string();
                          v903 = __nwlog_obj();
                          v904 = aBlock[0];
                          v941 = os_log_type_enabled(v903, aBlock[0]);
                          if (v940)
                          {
                            if (v941)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_http1_stream_associate_with_connection";
                              *&buf[12] = 2082;
                              *&buf[14] = v940;
                              _os_log_impl(&dword_181A37000, v903, v904, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(v940);
                            goto LABEL_1690;
                          }

                          if (v941)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v905 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                            goto LABEL_1689;
                          }
                        }

                        else
                        {
                          v903 = __nwlog_obj();
                          v904 = aBlock[0];
                          if (os_log_type_enabled(v903, aBlock[0]))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            v905 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                            goto LABEL_1689;
                          }
                        }

LABEL_1690:
                        if (v902)
                        {
                          free(v902);
                        }

                        v743 = 0;
LABEL_1238:
                        v552 = v992;
                        goto LABEL_1240;
                      }

                      v896 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_http1_set_up_association";
                      LODWORD(v977) = 12;
                      v897 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v896, 16, "%{public}s called with null parameters", buf, v977);
                      type[0] = OS_LOG_TYPE_ERROR;
                      aBlock[0] = 0;
                      if (__nwlog_fault(v897, type, aBlock))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v898 = __nwlog_obj();
                          v899 = type[0];
                          if (!os_log_type_enabled(v898, type[0]))
                          {
                            goto LABEL_1683;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          v900 = "%{public}s called with null parameters";
LABEL_1682:
                          _os_log_impl(&dword_181A37000, v898, v899, v900, buf, 0xCu);
                          goto LABEL_1683;
                        }

                        if (aBlock[0] != 1)
                        {
                          v898 = __nwlog_obj();
                          v899 = type[0];
                          if (!os_log_type_enabled(v898, type[0]))
                          {
                            goto LABEL_1683;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          v900 = "%{public}s called with null parameters, backtrace limit exceeded";
                          goto LABEL_1682;
                        }

                        v938 = __nw_create_backtrace_string();
                        v898 = __nwlog_obj();
                        v899 = type[0];
                        v939 = os_log_type_enabled(v898, type[0]);
                        if (!v938)
                        {
                          if (!v939)
                          {
                            goto LABEL_1683;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          v900 = "%{public}s called with null parameters, no backtrace";
                          goto LABEL_1682;
                        }

                        if (v939)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_protocol_http1_set_up_association";
                          *&buf[12] = 2082;
                          *&buf[14] = v938;
                          _os_log_impl(&dword_181A37000, v898, v899, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v938);
                      }

LABEL_1683:
                      if (v897)
                      {
                        free(v897);
                      }

                      v597 = *(v556 + 512);
                      if (v597)
                      {
                        goto LABEL_913;
                      }

                      goto LABEL_915;
                    }
                  }

                  goto LABEL_1693;
                }

                v885 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_create";
                LODWORD(v977) = 12;
                v868 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v885, 16, "%{public}s called with null parameters", buf, v977);
                v1013[0] = 16;
                v996[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v868, v1013, v996))
                {
                  if (v1013[0] == 17)
                  {
                    v869 = __nwlog_obj();
                    v870 = v1013[0];
                    if (!os_log_type_enabled(v869, v1013[0]))
                    {
                      goto LABEL_1639;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    v871 = "%{public}s called with null parameters";
                    goto LABEL_1638;
                  }

                  if (v996[0] != OS_LOG_TYPE_INFO)
                  {
                    v869 = __nwlog_obj();
                    v870 = v1013[0];
                    if (!os_log_type_enabled(v869, v1013[0]))
                    {
                      goto LABEL_1639;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    v871 = "%{public}s called with null parameters, backtrace limit exceeded";
                    goto LABEL_1638;
                  }

                  v932 = __nw_create_backtrace_string();
                  v869 = __nwlog_obj();
                  v870 = v1013[0];
                  v935 = os_log_type_enabled(v869, v1013[0]);
                  if (!v932)
                  {
                    if (!v935)
                    {
                      goto LABEL_1639;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_create";
                    v871 = "%{public}s called with null parameters, no backtrace";
                    goto LABEL_1638;
                  }

                  if (v935)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_connection_create";
                    *&buf[12] = 2082;
                    *&buf[14] = v932;
                    v934 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
                    goto LABEL_1513;
                  }

                  goto LABEL_1514;
                }

LABEL_1639:
                if (!v868)
                {
                  goto LABEL_1641;
                }

                goto LABEL_1640;
              }

              v882 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              LODWORD(v977) = 12;
              v868 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v882, 16, "%{public}s called with null endpoint", buf, v977);
              v1013[0] = 16;
              v996[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v868, v1013, v996))
              {
                goto LABEL_1639;
              }

              if (v1013[0] != 17)
              {
                if (v996[0] != OS_LOG_TYPE_INFO)
                {
                  v869 = __nwlog_obj();
                  v870 = v1013[0];
                  if (!os_log_type_enabled(v869, v1013[0]))
                  {
                    goto LABEL_1639;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v871 = "%{public}s called with null endpoint, backtrace limit exceeded";
                  goto LABEL_1638;
                }

                v932 = __nw_create_backtrace_string();
                v869 = __nwlog_obj();
                v870 = v1013[0];
                v933 = os_log_type_enabled(v869, v1013[0]);
                if (!v932)
                {
                  if (!v933)
                  {
                    goto LABEL_1639;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v871 = "%{public}s called with null endpoint, no backtrace";
                  goto LABEL_1638;
                }

                if (v933)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v932;
                  v934 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1513:
                  _os_log_impl(&dword_181A37000, v869, v870, v934, buf, 0x16u);
                }

LABEL_1514:
                free(v932);
                if (!v868)
                {
LABEL_1641:
                  v963 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  LODWORD(v984) = 12;
                  v964 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v963, 16, "%{public}s called with null http1_connection", buf, v984);
                  type[0] = OS_LOG_TYPE_ERROR;
                  aBlock[0] = 0;
                  if (!__nwlog_fault(v964, type, aBlock))
                  {
                    goto LABEL_1655;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v965 = __nwlog_obj();
                    v966 = type[0];
                    if (!os_log_type_enabled(v965, type[0]))
                    {
                      goto LABEL_1655;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    v967 = "%{public}s called with null http1_connection";
                  }

                  else if (aBlock[0] == 1)
                  {
                    v968 = __nw_create_backtrace_string();
                    v965 = __nwlog_obj();
                    v966 = type[0];
                    v969 = os_log_type_enabled(v965, type[0]);
                    if (v968)
                    {
                      if (v969)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v968;
                        _os_log_impl(&dword_181A37000, v965, v966, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v968);
LABEL_1655:
                      if (v964)
                      {
                        free(v964);
                      }

                      v970 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      LODWORD(v986) = 12;
                      v971 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v970, 16, "%{public}s called with null http1_connection", buf, v986);
                      aBlock[0] = 16;
                      v1013[0] = 0;
                      if (!__nwlog_fault(v971, aBlock, v1013))
                      {
                        goto LABEL_1671;
                      }

                      if (aBlock[0] == 17)
                      {
                        v972 = __nwlog_obj();
                        v973 = aBlock[0];
                        if (os_log_type_enabled(v972, aBlock[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v974 = "%{public}s called with null http1_connection";
LABEL_1670:
                          _os_log_impl(&dword_181A37000, v972, v973, v974, buf, 0xCu);
                        }
                      }

                      else if (v1013[0] == 1)
                      {
                        v975 = __nw_create_backtrace_string();
                        v972 = __nwlog_obj();
                        v973 = aBlock[0];
                        v976 = os_log_type_enabled(v972, aBlock[0]);
                        if (v975)
                        {
                          if (v976)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v975;
                            _os_log_impl(&dword_181A37000, v972, v973, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v975);
                          goto LABEL_1671;
                        }

                        if (v976)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v974 = "%{public}s called with null http1_connection, no backtrace";
                          goto LABEL_1670;
                        }
                      }

                      else
                      {
                        v972 = __nwlog_obj();
                        v973 = aBlock[0];
                        if (os_log_type_enabled(v972, aBlock[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          v974 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                          goto LABEL_1670;
                        }
                      }

LABEL_1671:
                      if (v971)
                      {
                        free(v971);
                      }

                      v556 = 0;
                      v743 = 1;
                      goto LABEL_1238;
                    }

                    if (!v969)
                    {
                      goto LABEL_1655;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    v967 = "%{public}s called with null http1_connection, no backtrace";
                  }

                  else
                  {
                    v965 = __nwlog_obj();
                    v966 = type[0];
                    if (!os_log_type_enabled(v965, type[0]))
                    {
                      goto LABEL_1655;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    v967 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  }

                  _os_log_impl(&dword_181A37000, v965, v966, v967, buf, 0xCu);
                  goto LABEL_1655;
                }

LABEL_1640:
                free(v868);
                goto LABEL_1641;
              }

              v869 = __nwlog_obj();
              v870 = v1013[0];
              if (!os_log_type_enabled(v869, v1013[0]))
              {
                goto LABEL_1639;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v871 = "%{public}s called with null endpoint";
            }

            else
            {
              v867 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              LODWORD(v977) = 12;
              v868 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v867, 16, "%{public}s called with null output_handler", buf, v977);
              v1013[0] = 16;
              v996[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v868, v1013, v996))
              {
                goto LABEL_1639;
              }

              if (v1013[0] != 17)
              {
                if (v996[0] != OS_LOG_TYPE_INFO)
                {
                  v869 = __nwlog_obj();
                  v870 = v1013[0];
                  if (!os_log_type_enabled(v869, v1013[0]))
                  {
                    goto LABEL_1639;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v871 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  goto LABEL_1638;
                }

                v928 = __nw_create_backtrace_string();
                v869 = __nwlog_obj();
                v870 = v1013[0];
                v929 = os_log_type_enabled(v869, v1013[0]);
                if (!v928)
                {
                  if (!v929)
                  {
                    goto LABEL_1639;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http1_connection_create";
                  v871 = "%{public}s called with null output_handler, no backtrace";
                  goto LABEL_1638;
                }

                if (v929)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v928;
                  _os_log_impl(&dword_181A37000, v869, v870, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v928);
                goto LABEL_1639;
              }

              v869 = __nwlog_obj();
              v870 = v1013[0];
              if (!os_log_type_enabled(v869, v1013[0]))
              {
                goto LABEL_1639;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v871 = "%{public}s called with null output_handler";
            }

LABEL_1638:
            _os_log_impl(&dword_181A37000, v869, v870, v871, buf, 0xCu);
            goto LABEL_1639;
          }

          v557 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
          *v996 = 0;
          v997 = v996;
          v998 = 0x2000000000;
          v999 = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3802000000;
          v1017 = __Block_byref_object_copy__42960;
          *v1018 = __Block_byref_object_dispose__42961;
          *&v1018[8] = 0;
          v1018[16] |= 1u;
          *type = MEMORY[0x1E69E9820];
          v1002 = 0x40000000;
          v1003 = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke;
          v1004 = &unk_1E6A328B8;
          v1005 = v996;
          v1006 = buf;
          v1007 = v13;
          nw_protocol_stack_iterate_application_protocols(v557, type);
          v558 = *(*&buf[8] + 40);
          if (v558)
          {
            v559 = v558;
            *aBlock = 0;
            *&aBlock[8] = aBlock;
            *&aBlock[16] = 0x2000000000;
            LOBYTE(v1009) = 0;
            *v1013 = MEMORY[0x1E69E9820];
            *&v1013[8] = 0x40000000;
            *&v1013[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_2;
            v1014 = &unk_1E6A328E0;
            v1015 = aBlock;
            nw_sec_protocol_options_iterate_application_protocols(v559, 1, v1013);
            if (*(*&aBlock[8] + 24) == 1)
            {
              sec_protocol_options_clear_tls_application_protocols();
              sec_protocol_options_add_tls_application_protocol(v559, "http/1.1");
            }

            _Block_object_dispose(aBlock, 8);
            os_release(v559);
          }

          nw_protocol_stack_remove_protocols_before_handle_and_make_persistent(v557, v13);
          *(v13 + 428) |= 0x10u;
          v560 = *(v7 + 352) + 1;
          *(v7 + 352) = v560;
          if (v560 == v560 << 31 >> 31)
          {
LABEL_1011:
            v663 = *(v13 + 312);
            v664 = *(v13 + 264);
            *aBlock = MEMORY[0x1E69E9820];
            *&aBlock[8] = 0x40000000;
            *&aBlock[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_76;
            v1009 = &unk_1E6A32908;
            *v1010 = v663;
            nw_queue_context_async(v664, aBlock);
            _Block_object_dispose(buf, 8);
            if ((v1018[16] & 1) != 0 && *&v1018[8])
            {
              os_release(*&v1018[8]);
            }

            _Block_object_dispose(v996, 8);
            if (!v557)
            {
              return 1;
            }

LABEL_1256:
            os_release(v557);
            return 1;
          }

          v561 = __nwlog_obj();
          v562 = *(v7 + 352);
          *aBlock = 136446978;
          *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
          *&aBlock[12] = 2082;
          *&aBlock[14] = "http1->pending_output_handler_count";
          *&aBlock[22] = 2048;
          v1009 = 1;
          *v1010 = 2048;
          *&v1010[2] = v562;
          LODWORD(v977) = 42;
          v563 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v561, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", aBlock, v977);
          v1000 = OS_LOG_TYPE_ERROR;
          v995 = 0;
          if (__nwlog_fault(v563, &v1000, &v995))
          {
            if (v1000 == OS_LOG_TYPE_FAULT)
            {
              v564 = __nwlog_obj();
              v565 = v1000;
              if (os_log_type_enabled(v564, v1000))
              {
                v566 = *(v7 + 352);
                *aBlock = 136446978;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v1009 = 1;
                *v1010 = 2048;
                *&v1010[2] = v566;
                v567 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_1007:
                _os_log_impl(&dword_181A37000, v564, v565, v567, aBlock, 0x2Au);
              }
            }

            else if (v995 == 1)
            {
              v610 = __nw_create_backtrace_string();
              v564 = __nwlog_obj();
              v565 = v1000;
              v611 = os_log_type_enabled(v564, v1000);
              if (v610)
              {
                if (v611)
                {
                  v612 = *(v7 + 352);
                  *aBlock = 136447234;
                  *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->pending_output_handler_count";
                  *&aBlock[22] = 2048;
                  v1009 = 1;
                  *v1010 = 2048;
                  *&v1010[2] = v612;
                  v1011 = 2082;
                  v1012 = v610;
                  _os_log_impl(&dword_181A37000, v564, v565, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                }

                free(v610);
                goto LABEL_1008;
              }

              if (v611)
              {
                v662 = *(v7 + 352);
                *aBlock = 136446978;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v1009 = 1;
                *v1010 = 2048;
                *&v1010[2] = v662;
                v567 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                goto LABEL_1007;
              }
            }

            else
            {
              v564 = __nwlog_obj();
              v565 = v1000;
              if (os_log_type_enabled(v564, v1000))
              {
                v614 = *(v7 + 352);
                *aBlock = 136446978;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v1009 = 1;
                *v1010 = 2048;
                *&v1010[2] = v614;
                v567 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                goto LABEL_1007;
              }
            }
          }

LABEL_1008:
          if (v563)
          {
            free(v563);
          }

          *(v7 + 352) = -1;
          goto LABEL_1011;
        }

        if ((*(v7 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
        {
          v923 = v8;
          v924 = __nwlog_obj();
          v925 = os_log_type_enabled(v924, OS_LOG_TYPE_DEBUG);
          v8 = v923;
          if (v925)
          {
            v926 = *(v7 + 372);
            v927 = *(v13 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 74;
            *&buf[22] = 2080;
            v1017 = " ";
            *v1018 = 1024;
            *&v1018[2] = v926;
            *&v1018[6] = 1024;
            *&v1018[8] = v927;
            *&v1018[12] = 2048;
            *&v1018[14] = v13;
            _os_log_impl(&dword_181A37000, v924, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
            v8 = v923;
          }
        }

        if ((*(v13 + 428) & 0x2000) == 0)
        {
          v127 = v8;
          v128 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_http1_remove_pending_stream";
          *&buf[12] = 2048;
          *&buf[14] = v13;
          v129 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v128, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v129, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v130 = __nwlog_obj();
              v131 = type[0];
              if (os_log_type_enabled(v130, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                v132 = "%{public}s stream %p not in pending list, cannot remove";
LABEL_777:
                _os_log_impl(&dword_181A37000, v130, v131, v132, buf, 0x16u);
              }
            }

            else if (aBlock[0] == 1)
            {
              v317 = __nw_create_backtrace_string();
              v130 = __nwlog_obj();
              v131 = type[0];
              v318 = os_log_type_enabled(v130, type[0]);
              if (v317)
              {
                if (v318)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_remove_pending_stream";
                  *&buf[12] = 2048;
                  *&buf[14] = v13;
                  *&buf[22] = 2082;
                  v1017 = v317;
                  _os_log_impl(&dword_181A37000, v130, v131, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v317);
                goto LABEL_778;
              }

              if (v318)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                v132 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
                goto LABEL_777;
              }
            }

            else
            {
              v130 = __nwlog_obj();
              v131 = type[0];
              if (os_log_type_enabled(v130, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2048;
                *&buf[14] = v13;
                v132 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
                goto LABEL_777;
              }
            }
          }

LABEL_778:
          if (v129)
          {
            free(v129);
          }

          v8 = v127;
          goto LABEL_848;
        }

        v285 = *(v13 + 296);
        v286 = *(v13 + 304);
        v287 = (v7 + 256);
        if (v285)
        {
          v287 = (v285 + 304);
        }

        *v287 = v286;
        *v286 = v285;
        *(v13 + 296) = 0;
        *(v13 + 304) = 0;
        v288 = *(v7 + 348);
        *(v7 + 348) = v288 - 1;
        if (v288)
        {
LABEL_846:
          *(v13 + 428) &= ~0x2000u;
          if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
          {
            v942 = v8;
            v943 = __nwlog_obj();
            v944 = os_log_type_enabled(v943, OS_LOG_TYPE_DEBUG);
            v8 = v942;
            if (v944)
            {
              v945 = *(v13 + 256);
              v946 = *(*(v13 + 248) + 372);
              if (v945)
              {
                LODWORD(v945) = *(v945 + 860);
              }

              v947 = *(v13 + 424);
              v948 = *(v7 + 348);
              *buf = 136448258;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = v13 + 74;
              *&buf[22] = 2080;
              v1017 = " ";
              *v1018 = 1024;
              *&v1018[2] = v946;
              *&v1018[6] = 1024;
              *&v1018[8] = v945;
              *&v1018[12] = 1024;
              *&v1018[14] = v947;
              *&v1018[18] = 1024;
              *&v1018[20] = v947;
              *&v1018[24] = 2048;
              *&v1018[26] = v13;
              *&v1018[34] = 1024;
              *&v1018[36] = v948;
              _os_log_impl(&dword_181A37000, v943, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
              v8 = v942;
            }
          }

          goto LABEL_848;
        }

        v289 = v8;
        v290 = __nwlog_obj();
        v291 = *(v7 + 348);
        *buf = 136446978;
        *&buf[4] = "nw_http1_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = "http1->pending_stream_count";
        *&buf[22] = 2048;
        v1017 = 1;
        *v1018 = 2048;
        *&v1018[2] = v291;
        v292 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v290, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
        type[0] = OS_LOG_TYPE_ERROR;
        aBlock[0] = 0;
        if (__nwlog_fault(v292, type, aBlock))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v293 = __nwlog_obj();
            v294 = type[0];
            if (os_log_type_enabled(v293, type[0]))
            {
              v295 = *(v7 + 348);
              *buf = 136446978;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_stream_count";
              *&buf[22] = 2048;
              v1017 = 1;
              *v1018 = 2048;
              *&v1018[2] = v295;
              v296 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_842:
              _os_log_impl(&dword_181A37000, v293, v294, v296, buf, 0x2Au);
            }
          }

          else if (aBlock[0] == 1)
          {
            v453 = __nw_create_backtrace_string();
            v293 = __nwlog_obj();
            v294 = type[0];
            v454 = os_log_type_enabled(v293, type[0]);
            if (v453)
            {
              if (v454)
              {
                v455 = *(v7 + 348);
                *buf = 136447234;
                *&buf[4] = "nw_http1_remove_pending_stream";
                *&buf[12] = 2082;
                *&buf[14] = "http1->pending_stream_count";
                *&buf[22] = 2048;
                v1017 = 1;
                *v1018 = 2048;
                *&v1018[2] = v455;
                *&v1018[10] = 2082;
                *&v1018[12] = v453;
                _os_log_impl(&dword_181A37000, v293, v294, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v453);
              goto LABEL_843;
            }

            if (v454)
            {
              v551 = *(v7 + 348);
              *buf = 136446978;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_stream_count";
              *&buf[22] = 2048;
              v1017 = 1;
              *v1018 = 2048;
              *&v1018[2] = v551;
              v296 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_842;
            }
          }

          else
          {
            v293 = __nwlog_obj();
            v294 = type[0];
            if (os_log_type_enabled(v293, type[0]))
            {
              v498 = *(v7 + 348);
              *buf = 136446978;
              *&buf[4] = "nw_http1_remove_pending_stream";
              *&buf[12] = 2082;
              *&buf[14] = "http1->pending_stream_count";
              *&buf[22] = 2048;
              v1017 = 1;
              *v1018 = 2048;
              *&v1018[2] = v498;
              v296 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_842;
            }
          }
        }

LABEL_843:
        if (v292)
        {
          free(v292);
        }

        *(v7 + 348) = 0;
        v8 = v289;
        goto LABEL_846;
      }

      if (!*(v13 + 32))
      {
        v46 = v8;
        if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
        {
          v212 = __nwlog_obj();
          if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
          {
            v213 = *(v13 + 256);
            v214 = *(*(v13 + 248) + 372);
            if (v213)
            {
              LODWORD(v213) = *(v213 + 860);
            }

            v215 = *(v13 + 424);
            *buf = 136447746;
            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
            *&buf[12] = 2082;
            *&buf[14] = v13 + 74;
            *&buf[22] = 2080;
            v1017 = " ";
            *v1018 = 1024;
            *&v1018[2] = v214;
            *&v1018[6] = 1024;
            *&v1018[8] = v213;
            *&v1018[12] = 1024;
            *&v1018[14] = v215;
            *&v1018[18] = 2048;
            *&v1018[20] = v13;
            v51 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
            v52 = v212;
            v53 = 60;
            goto LABEL_89;
          }
        }

        goto LABEL_90;
      }

      if ((*(v13 + 158) & 1) == 0 && BYTE1(v8[82].isa) == 1)
      {
        v825 = __nwlog_obj();
        if (os_log_type_enabled(v825, OS_LOG_TYPE_DEBUG))
        {
          v826 = *(v13 + 256);
          v827 = *(*(v13 + 248) + 372);
          if (v826)
          {
            LODWORD(v826) = *(v826 + 860);
          }

          v828 = *(v13 + 424);
          v829 = *(v13 + 32);
          *buf = 136448002;
          *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
          *&buf[12] = 2082;
          *&buf[14] = v13 + 74;
          *&buf[22] = 2080;
          v1017 = " ";
          *v1018 = 1024;
          *&v1018[2] = v827;
          *&v1018[6] = 1024;
          *&v1018[8] = v826;
          *&v1018[12] = 1024;
          *&v1018[14] = v828;
          *&v1018[18] = 2048;
          *&v1018[20] = v13;
          *&v1018[28] = 2048;
          *&v1018[30] = v829;
          _os_log_impl(&dword_181A37000, v825, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
        }
      }

      v147 = *(v13 + 32);
      v987 = v7;
      if (v147)
      {
        v148 = *(v13 + 336);
        if (v148)
        {
          v149 = *(v13 + 320);
          if (v149)
          {
            v150 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
            v151 = v150;
            if (v150)
            {
              bzero(v150, 0x370uLL);
              nw_http1_connection::nw_http1_connection(v151);
              goto LABEL_327;
            }

            v222 = __nwlog_obj();
            v223 = os_log_type_enabled(v222, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            *&buf[4] = "nw_http1_connection_create";
            if (v223)
            {
              v224 = 3;
            }

            else
            {
              v224 = 2;
            }

            *&buf[12] = 2048;
            *&buf[14] = 1;
            *&buf[22] = 2048;
            v1017 = 880;
            v225 = _os_log_send_and_compose_impl(v224, 0, 0, 0, &dword_181A37000, v222, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
            result = __nwlog_should_abort(v225);
            if (!result)
            {
              free(v225);
              bzero(0, 0x370uLL);
              nw_http1_connection::nw_http1_connection(0);
              v226 = __nwlog_obj();
              v227 = os_log_type_enabled(v226, OS_LOG_TYPE_ERROR) ? 3 : 2;
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              LODWORD(v979) = 12;
              v228 = _os_log_send_and_compose_impl(v227, 0, 0, 0, &dword_181A37000, v226, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v979);
              result = __nwlog_should_abort(v228);
              if (!result)
              {
                free(v228);
LABEL_327:
                if (nw_protocol_http1_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
                }

                *(v151 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
                if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
                {
                  dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
                }

                *(v151 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
                *(v151 + 184) = 3;
                *(v151 + 176) = v151;
                *(v151 + 40) = v151 + 160;
                *(v151 + 480) = v7;
                nw_protocol_set_output_handler(v151, v147);
                *buf = os_retain(v148);
                nw::retained_ptr<nw_endpoint *>::operator=(v151 + 752, buf);
                *buf = os_retain(v149);
                nw::retained_ptr<nw_endpoint *>::operator=(v151 + 736, buf);
                *buf = _nw_parameters_copy_context();
                nw::retained_ptr<nw_endpoint *>::operator=(v151 + 496, buf);
                *(v151 + 192) = *(v7 + 192);
                v229 = *(v151 + 496);
                *type = MEMORY[0x1E69E9820];
                v1002 = 0x40000000;
                v1003 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
                v1004 = &__block_descriptor_tmp_43_43000;
                v1005 = v151;
                *buf = nw_http_connection_create_metadata(v229, type, 0);
                nw::retained_ptr<nw_endpoint *>::operator=(v151 + 768, buf);
                nw_http_connection_metadata_set_version(*(v151 + 768), 3);
                nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v151 + 768), *(v7 + 312));
                *(v151 + 616) = 0;
                *(v151 + 624) = v151 + 616;
                *(v151 + 632) = 0;
                *(v151 + 640) = v151 + 632;
                *(v151 + 648) = 0;
                *(v151 + 656) = v151 + 648;
                *(v151 + 664) = 0;
                *(v151 + 672) = v151 + 664;
                *(v151 + 680) = 0;
                *(v151 + 688) = v151 + 680;
                nw_frame_cache_init((v151 + 696), v151, 256, 0x40000, 16);
                v230 = *(v151 + 480);
                if (v230)
                {
                  *(v151 + 360) = 0u;
                  *(v151 + 376) = 0u;
                  *(v151 + 392) = 0u;
                  *(v151 + 408) = 0u;
                  *(v151 + 424) = 0u;
                  *(v151 + 440) = 0u;
                  *(v151 + 328) = 0u;
                  *(v151 + 344) = 0u;
                  *(v151 + 296) = nw_http1_on_message_begin;
                  *(v151 + 384) = nw_http1_on_message_complete;
                  *(v151 + 368) = nw_http1_on_headers_complete;
                  *(v151 + 472) = nw_http1_on_reset;
                  *(v151 + 320) = nw_http1_on_method;
                  *(v151 + 408) = nw_http1_on_method_complete;
                  *(v151 + 304) = nw_http1_on_url;
                  *(v151 + 392) = nw_http1_on_url_complete;
                  *(v151 + 312) = nw_http1_on_status;
                  *(v151 + 400) = nw_http1_on_status_complete;
                  *(v151 + 336) = nw_http1_on_header_field;
                  *(v151 + 424) = nw_http1_on_header_field_complete;
                  *(v151 + 344) = nw_http1_on_header_value;
                  *(v151 + 432) = nw_http1_on_header_value_complete;
                  *(v151 + 376) = nw_http1_on_body;
                  *(v151 + 456) = nw_http1_on_chunk_header;
                  *(v151 + 464) = nw_http1_on_chunk_complete;
                  v231 = *(v230 + 376);
                  *(v151 + 248) = 0u;
                  *(v151 + 200) = 0u;
                  *(v151 + 264) = 0u;
                  *(v151 + 232) = 0u;
                  *(v151 + 216) = 0u;
                  if (v231)
                  {
                    v232 = 1;
                  }

                  else
                  {
                    v232 = 2;
                  }

                  *(v151 + 272) = v232;
                  *(v151 + 280) = 0;
                  *(v151 + 288) = v151 + 296;
                  *(v151 + 278) = 16131;
                  *(v151 + 248) = v151;
                  *(v151 + 256) = 237;
                  if ((*(v151 + 158) & 1) == 0)
                  {
                    v233 = __nwlog_obj();
                    if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
                    {
                      v234 = *(v151 + 488);
                      v235 = *(*(v151 + 480) + 372);
                      v236 = *(v151 + 860);
                      if (v234)
                      {
                        LODWORD(v234) = *(v234 + 424);
                      }

                      *buf = 136448258;
                      *&buf[4] = "nw_http1_connection_log_parser_version";
                      *&buf[12] = 2082;
                      *&buf[14] = v151 + 74;
                      *&buf[22] = 2080;
                      v1017 = " ";
                      *v1018 = 1024;
                      *&v1018[2] = v235;
                      *&v1018[6] = 1024;
                      *&v1018[8] = v236;
                      *&v1018[12] = 1024;
                      *&v1018[14] = v234;
                      *&v1018[18] = 1024;
                      *&v1018[20] = 9;
                      *&v1018[24] = 1024;
                      *&v1018[26] = 2;
                      *&v1018[30] = 1024;
                      *&v1018[32] = 1;
                      _os_log_impl(&dword_181A37000, v233, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
                    }
                  }

                  goto LABEL_340;
                }

                v832 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                LODWORD(v977) = 12;
                v833 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v832, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v977);
                v1013[0] = 16;
                v996[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v833, v1013, v996))
                {
                  if (v1013[0] == 17)
                  {
                    v834 = __nwlog_obj();
                    v835 = v1013[0];
                    if (!os_log_type_enabled(v834, v1013[0]))
                    {
                      goto LABEL_1604;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_parser_init";
                    v836 = "%{public}s called with null http1_connection->protocol_http1";
                    goto LABEL_1603;
                  }

                  if (v996[0] != OS_LOG_TYPE_INFO)
                  {
                    v834 = __nwlog_obj();
                    v835 = v1013[0];
                    if (!os_log_type_enabled(v834, v1013[0]))
                    {
                      goto LABEL_1604;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_parser_init";
                    v836 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                    goto LABEL_1603;
                  }

                  v915 = __nw_create_backtrace_string();
                  v834 = __nwlog_obj();
                  v835 = v1013[0];
                  v916 = os_log_type_enabled(v834, v1013[0]);
                  if (v915)
                  {
                    if (v916)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_connection_parser_init";
                      *&buf[12] = 2082;
                      *&buf[14] = v915;
                      _os_log_impl(&dword_181A37000, v834, v835, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v915);
                    goto LABEL_1604;
                  }

                  if (v916)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_connection_parser_init";
                    v836 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
LABEL_1603:
                    _os_log_impl(&dword_181A37000, v834, v835, v836, buf, 0xCu);
                  }
                }

LABEL_1604:
                if (v833)
                {
                  free(v833);
                }

LABEL_340:
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2000000000;
                v1017 = v151;
                *aBlock = MEMORY[0x1E69E9820];
                *&aBlock[8] = 0x40000000;
                *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
                v1009 = &unk_1E6A32758;
                *v1010 = buf;
                *(v151 + 608) = _Block_copy(aBlock);
                _Block_object_dispose(buf, 8);
                if ((*(v151 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v847 = __nwlog_obj();
                  if (os_log_type_enabled(v847, OS_LOG_TYPE_DEBUG))
                  {
                    v848 = *(v151 + 488);
                    v849 = *(*(v151 + 480) + 372);
                    v850 = *(v151 + 860);
                    if (v848)
                    {
                      LODWORD(v848) = *(v848 + 424);
                    }

                    *buf = 136447746;
                    *&buf[4] = "nw_http1_connection_create";
                    *&buf[12] = 2082;
                    *&buf[14] = v151 + 74;
                    *&buf[22] = 2080;
                    v1017 = " ";
                    *v1018 = 1024;
                    *&v1018[2] = v849;
                    *&v1018[6] = 1024;
                    *&v1018[8] = v850;
                    *&v1018[12] = 1024;
                    *&v1018[14] = v848;
                    *&v1018[18] = 2048;
                    *&v1018[20] = v151;
                    _os_log_impl(&dword_181A37000, v847, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                  }
                }

                nw_protocol_replace_input_handler(v147, v13, v151);
                *v151 = *v147;
                v237 = *(v151 + 736);
                if (v237)
                {
                  if (!*(v151 + 528))
                  {
                    v238 = _nw_parameters_copy_context();
                    *buf = nw_path_copy_flow_registration(v238, v151);
                    v239 = (v151 + 560);
                    nw::retained_ptr<nw_endpoint *>::operator=(v151 + 560, buf);
                    v240 = *(v151 + 560);
                    if (v240)
                    {
                      v241 = nw_path_flow_registration_copy_endpoint(v240);
                      v242 = nw_path_flow_registration_copy_parameters(*v239);
                      *buf = nw_endpoint_copy_association_with_evaluator(v241, v242, 0);
                      nw::retained_ptr<nw_endpoint *>::operator=(v151 + 528, buf);
                      if (*(v151 + 528))
                      {
                        *buf = nw_protocol_instance_stub_create(v151);
                        nw::retained_ptr<nw_endpoint *>::operator=(v151 + 544, buf);
                        nw_association_register_internal(*(v151 + 528), v237, *(v151 + 544), 0, 0, &__block_literal_global_69_43019);
                        v243 = nw_association_copy_current_path(*(v151 + 528), v242);
                        if (v243)
                        {
                          v244 = v243;
                          v245 = nw_path_copy_for_flow_registration(v243, *v239);
                          if (v245)
                          {
                            v246 = v245;
                            if (*(v151 + 512) != v245)
                            {
                              *buf = os_retain(v245);
                              nw::retained_ptr<nw_endpoint *>::operator=(v151 + 512, buf);
                            }

                            if (nw_path_has_flows(v246))
                            {
                              v247 = 4096;
                            }

                            else
                            {
                              v247 = 0;
                            }

                            *(v151 + 872) = *(v151 + 872) & 0xEFFF | v247;
                            v248 = _nw_parameters_copy_effective_proxy_config(v237);
                            if (v248)
                            {
                              v249 = v248;
                              if (nw_path_has_proxy_config(v244, v248))
                              {
                                *buf = os_retain(v249);
                                nw::retained_ptr<nw_endpoint *>::operator=(v151 + 576, buf);
                              }

                              os_release(v249);
                            }

                            os_release(v246);
                          }

                          os_release(v244);
                        }
                      }

                      if (v242)
                      {
                        os_release(v242);
                      }

                      if (v241)
                      {
                        os_release(v241);
                      }
                    }

                    if (v238)
                    {
                      os_release(v238);
                    }
                  }

                  v250 = *(v151 + 512);
                  if (v250)
                  {
LABEL_366:
                    if (_nw_path_uses_interface_type(v250, 2u))
                    {
                      *(v151 + 192) = 1000;
                    }
                  }

LABEL_368:
                  v7 = v987;
                  v251 = *(v987 + 336) + 1;
                  *(v987 + 336) = v251;
                  if (v251 == v251 << 31 >> 31)
                  {
                    goto LABEL_632;
                  }

                  v252 = __nwlog_obj();
                  v253 = *(v987 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v253;
                  LODWORD(v977) = 42;
                  v254 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v252, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v977);
                  type[0] = OS_LOG_TYPE_ERROR;
                  aBlock[0] = 0;
                  if (__nwlog_fault(v254, type, aBlock))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v255 = __nwlog_obj();
                      v256 = type[0];
                      if (os_log_type_enabled(v255, type[0]))
                      {
                        v257 = *(v987 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v257;
                        v258 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_628:
                        _os_log_impl(&dword_181A37000, v255, v256, v258, buf, 0x2Au);
                      }
                    }

                    else if (aBlock[0] == 1)
                    {
                      v266 = __nw_create_backtrace_string();
                      v255 = __nwlog_obj();
                      v256 = type[0];
                      v267 = os_log_type_enabled(v255, type[0]);
                      if (v266)
                      {
                        if (v267)
                        {
                          v268 = *(v987 + 336);
                          *buf = 136447234;
                          *&buf[4] = "nw_http1_add_connection_for_output_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->connections_count";
                          *&buf[22] = 2048;
                          v1017 = 1;
                          *v1018 = 2048;
                          *&v1018[2] = v268;
                          *&v1018[10] = 2082;
                          *&v1018[12] = v266;
                          _os_log_impl(&dword_181A37000, v255, v256, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v266);
                        v7 = v987;
                        goto LABEL_629;
                      }

                      v7 = v987;
                      if (v267)
                      {
                        v411 = *(v987 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v411;
                        v258 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                        goto LABEL_628;
                      }
                    }

                    else
                    {
                      v255 = __nwlog_obj();
                      v256 = type[0];
                      if (os_log_type_enabled(v255, type[0]))
                      {
                        v312 = *(v987 + 336);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->connections_count";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v312;
                        v258 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                        goto LABEL_628;
                      }
                    }
                  }

LABEL_629:
                  if (v254)
                  {
                    free(v254);
                  }

                  *(v7 + 336) = -1;
LABEL_632:
                  v412 = *(v7 + 360) + 1;
                  *(v7 + 360) = v412;
                  if (v412 == v412 << 31 >> 31)
                  {
                    goto LABEL_650;
                  }

                  v413 = __nwlog_obj();
                  v414 = *(v7 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v414;
                  LODWORD(v977) = 42;
                  v415 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v413, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v977);
                  type[0] = OS_LOG_TYPE_ERROR;
                  aBlock[0] = 0;
                  if (__nwlog_fault(v415, type, aBlock))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v416 = __nwlog_obj();
                      v417 = type[0];
                      if (os_log_type_enabled(v416, type[0]))
                      {
                        v418 = *(v7 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v418;
                        v419 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_646:
                        _os_log_impl(&dword_181A37000, v416, v417, v419, buf, 0x2Au);
                      }
                    }

                    else if (aBlock[0] == 1)
                    {
                      v420 = __nw_create_backtrace_string();
                      v416 = __nwlog_obj();
                      v417 = type[0];
                      v421 = os_log_type_enabled(v416, type[0]);
                      if (v420)
                      {
                        if (v421)
                        {
                          v422 = *(v987 + 360);
                          *buf = 136447234;
                          *&buf[4] = "nw_http1_add_connection_for_output_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->next_connection_log_num";
                          *&buf[22] = 2048;
                          v1017 = 1;
                          *v1018 = 2048;
                          *&v1018[2] = v422;
                          *&v1018[10] = 2082;
                          *&v1018[12] = v420;
                          _os_log_impl(&dword_181A37000, v416, v417, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v420);
                        v7 = v987;
                        goto LABEL_647;
                      }

                      v7 = v987;
                      if (v421)
                      {
                        v424 = *(v987 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v424;
                        v419 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                        goto LABEL_646;
                      }
                    }

                    else
                    {
                      v416 = __nwlog_obj();
                      v417 = type[0];
                      if (os_log_type_enabled(v416, type[0]))
                      {
                        v423 = *(v7 + 360);
                        *buf = 136446978;
                        *&buf[4] = "nw_http1_add_connection_for_output_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = "http1->next_connection_log_num";
                        *&buf[22] = 2048;
                        v1017 = 1;
                        *v1018 = 2048;
                        *&v1018[2] = v423;
                        v419 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                        goto LABEL_646;
                      }
                    }
                  }

LABEL_647:
                  if (v415)
                  {
                    free(v415);
                  }

                  LODWORD(v412) = -1;
                  *(v7 + 360) = -1;
LABEL_650:
                  *(v151 + 860) = v412;
                  if ((*(v151 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v851 = __nwlog_obj();
                    if (os_log_type_enabled(v851, OS_LOG_TYPE_DEBUG))
                    {
                      v852 = *(v151 + 488);
                      v853 = *(*(v151 + 480) + 372);
                      v854 = *(v151 + 860);
                      if (v852)
                      {
                        LODWORD(v852) = *(v852 + 424);
                      }

                      v7 = v987;
                      v855 = *(v987 + 336);
                      *buf = 136448002;
                      *&buf[4] = "nw_http1_add_connection_for_output_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v151 + 74;
                      *&buf[22] = 2080;
                      v1017 = " ";
                      *v1018 = 1024;
                      *&v1018[2] = v853;
                      *&v1018[6] = 1024;
                      *&v1018[8] = v854;
                      *&v1018[12] = 1024;
                      *&v1018[14] = v852;
                      *&v1018[18] = 2048;
                      *&v1018[20] = v151;
                      *&v1018[28] = 1024;
                      *&v1018[30] = v855;
                      _os_log_impl(&dword_181A37000, v851, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                    }
                  }

                  if (*(v13 + 248))
                  {
                    if (*(v151 + 488))
                    {
                      v425 = __nwlog_obj();
                      v426 = *(v151 + 488);
                      *buf = 136446722;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v151;
                      *&buf[22] = 2048;
                      v1017 = v426;
                      LODWORD(v977) = 32;
                      v427 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v425, 16, "%{public}s Connection %p already has a stream (%p)", buf, v977);
                      aBlock[0] = 16;
                      v1013[0] = 0;
                      if (!__nwlog_fault(v427, aBlock, v1013))
                      {
                        goto LABEL_685;
                      }

                      if (aBlock[0] == 17)
                      {
                        v428 = __nwlog_obj();
                        v429 = aBlock[0];
                        if (!os_log_type_enabled(v428, aBlock[0]))
                        {
                          goto LABEL_685;
                        }

                        v430 = *(v151 + 488);
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v151;
                        *&buf[22] = 2048;
                        v1017 = v430;
                        v431 = "%{public}s Connection %p already has a stream (%p)";
                      }

                      else if (v1013[0] == 1)
                      {
                        v438 = __nw_create_backtrace_string();
                        v428 = __nwlog_obj();
                        v429 = aBlock[0];
                        v439 = os_log_type_enabled(v428, aBlock[0]);
                        if (v438)
                        {
                          if (v439)
                          {
                            v440 = *(v151 + 488);
                            *buf = 136446978;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2048;
                            *&buf[14] = v151;
                            *&buf[22] = 2048;
                            v1017 = v440;
                            *v1018 = 2082;
                            *&v1018[2] = v438;
                            _os_log_impl(&dword_181A37000, v428, v429, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                          }

                          free(v438);
                          v7 = v987;
                          goto LABEL_685;
                        }

                        v7 = v987;
                        if (!v439)
                        {
LABEL_685:
                          if (v427)
                          {
                            free(v427);
                          }

                          goto LABEL_1110;
                        }

                        v452 = *(v151 + 488);
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v151;
                        *&buf[22] = 2048;
                        v1017 = v452;
                        v431 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                      }

                      else
                      {
                        v428 = __nwlog_obj();
                        v429 = aBlock[0];
                        if (!os_log_type_enabled(v428, aBlock[0]))
                        {
                          goto LABEL_685;
                        }

                        v441 = *(v151 + 488);
                        *buf = 136446722;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v151;
                        *&buf[22] = 2048;
                        v1017 = v441;
                        v431 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                      }

                      _os_log_impl(&dword_181A37000, v428, v429, v431, buf, 0x20u);
                      goto LABEL_685;
                    }

                    *(v13 + 256) = v151;
                    *(v151 + 488) = v13;
                    v432 = *(v13 + 320);
                    if (v432)
                    {
                      v432 = os_retain(v432);
                    }

                    *buf = v432;
                    nw::retained_ptr<nw_endpoint *>::operator=(v151 + 736, buf);
                    if ((*(*(v13 + 248) + 376) & 2) == 0)
                    {
LABEL_1082:
                      v674 = *(v13 + 32);
                      if (!v674 || v674 == *(v151 + 32))
                      {
LABEL_1100:
                        nw_protocol_set_output_handler(v13, *(v151 + 32));
                        nw_protocol_set_input_handler(v151, *(v13 + 48));
                        *v13 = *v151;
                        v692 = *(v13 + 96);
                        v693 = *(v13 + 112);
                        v694 = *(v13 + 128);
                        *(v151 + 144) = *(v13 + 144);
                        v695 = *(v13 + 80);
                        *(v151 + 64) = *(v13 + 64);
                        *(v151 + 80) = v695;
                        *(v151 + 112) = v693;
                        *(v151 + 128) = v694;
                        *(v151 + 96) = v692;
                        *(v151 + 872) &= 0xFFD7u;
                        *(v151 + 864) = 1;
                        if ((*(v151 + 158) & 1) == 0)
                        {
                          v696 = __nwlog_obj();
                          if (os_log_type_enabled(v696, OS_LOG_TYPE_DEBUG))
                          {
                            v697 = *(v151 + 488);
                            v698 = *(*(v151 + 480) + 372);
                            v699 = *(v151 + 860);
                            if (v697)
                            {
                              LODWORD(v697) = *(v697 + 424);
                            }

                            *buf = 136447490;
                            *&buf[4] = "nw_http1_update_connection_input_state";
                            *&buf[12] = 2082;
                            *&buf[14] = v151 + 74;
                            *&buf[22] = 2080;
                            v1017 = " ";
                            *v1018 = 1024;
                            *&v1018[2] = v698;
                            *&v1018[6] = 1024;
                            *&v1018[8] = v699;
                            *&v1018[12] = 1024;
                            *&v1018[14] = v697;
                            _os_log_impl(&dword_181A37000, v696, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                          }
                        }

                        if ((*(v13 + 158) & 1) == 0)
                        {
                          v700 = __nwlog_obj();
                          if (os_log_type_enabled(v700, OS_LOG_TYPE_INFO))
                          {
                            v701 = *(v13 + 256);
                            v702 = *(*(v13 + 248) + 372);
                            if (v701)
                            {
                              LODWORD(v701) = *(v701 + 860);
                            }

                            v703 = *(v13 + 424);
                            *buf = 136448002;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2082;
                            *&buf[14] = v13 + 74;
                            *&buf[22] = 2080;
                            v1017 = " ";
                            *v1018 = 1024;
                            *&v1018[2] = v702;
                            *&v1018[6] = 1024;
                            *&v1018[8] = v701;
                            *&v1018[12] = 1024;
                            *&v1018[14] = v703;
                            *&v1018[18] = 2048;
                            *&v1018[20] = v13;
                            *&v1018[28] = 2048;
                            *&v1018[30] = v151;
                            _os_log_impl(&dword_181A37000, v700, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                          }
                        }

                        goto LABEL_1110;
                      }

                      v675 = __nwlog_obj();
                      v676 = *(v13 + 32);
                      v677 = *(v151 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v676;
                      *&buf[22] = 2048;
                      v1017 = v13;
                      *v1018 = 2048;
                      *&v1018[2] = v677;
                      LODWORD(v977) = 42;
                      v678 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v675, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v977);
                      aBlock[0] = 16;
                      v1013[0] = 0;
                      if (__nwlog_fault(v678, aBlock, v1013))
                      {
                        if (aBlock[0] == 17)
                        {
                          v679 = __nwlog_obj();
                          v680 = aBlock[0];
                          if (!os_log_type_enabled(v679, aBlock[0]))
                          {
                            goto LABEL_1098;
                          }

                          v681 = *(v13 + 32);
                          v682 = *(v151 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v681;
                          *&buf[22] = 2048;
                          v1017 = v13;
                          *v1018 = 2048;
                          *&v1018[2] = v682;
                          v683 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                          goto LABEL_1097;
                        }

                        if (v1013[0] != 1)
                        {
                          v679 = __nwlog_obj();
                          v680 = aBlock[0];
                          v7 = v987;
                          if (!os_log_type_enabled(v679, aBlock[0]))
                          {
                            goto LABEL_1098;
                          }

                          v688 = *(v13 + 32);
                          v689 = *(v151 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v688;
                          *&buf[22] = 2048;
                          v1017 = v13;
                          *v1018 = 2048;
                          *&v1018[2] = v689;
                          v683 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                          goto LABEL_1097;
                        }

                        v684 = __nw_create_backtrace_string();
                        v679 = __nwlog_obj();
                        v680 = aBlock[0];
                        v685 = os_log_type_enabled(v679, aBlock[0]);
                        if (v684)
                        {
                          if (v685)
                          {
                            v686 = *(v13 + 32);
                            v687 = *(v151 + 32);
                            *buf = 136447234;
                            *&buf[4] = "nw_http1_stream_associate_with_connection";
                            *&buf[12] = 2048;
                            *&buf[14] = v686;
                            *&buf[22] = 2048;
                            v1017 = v13;
                            *v1018 = 2048;
                            *&v1018[2] = v687;
                            *&v1018[10] = 2082;
                            *&v1018[12] = v684;
                            _os_log_impl(&dword_181A37000, v679, v680, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                          }

                          free(v684);
                          v7 = v987;
                          goto LABEL_1098;
                        }

                        v7 = v987;
                        if (v685)
                        {
                          v690 = *(v13 + 32);
                          v691 = *(v151 + 32);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2048;
                          *&buf[14] = v690;
                          *&buf[22] = 2048;
                          v1017 = v13;
                          *v1018 = 2048;
                          *&v1018[2] = v691;
                          v683 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_1097:
                          _os_log_impl(&dword_181A37000, v679, v680, v683, buf, 0x2Au);
                        }
                      }

LABEL_1098:
                      if (v678)
                      {
                        free(v678);
                      }

                      goto LABEL_1100;
                    }

                    v433 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
                    *aBlock = 0;
                    *&aBlock[8] = aBlock;
                    *&aBlock[16] = 0x2000000000;
                    LOBYTE(v1009) = 0;
                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v1017 = __Block_byref_object_copy__42960;
                    *v1018 = __Block_byref_object_dispose__42961;
                    *&v1018[8] = 0;
                    v1018[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    v1002 = 0x40000000;
                    v1003 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                    v1004 = &unk_1E6A32930;
                    v1005 = aBlock;
                    v1006 = buf;
                    v1007 = v13;
                    nw_protocol_stack_iterate_application_protocols(v433, type);
                    if (*(*&buf[8] + 40))
                    {
                      v434 = v151;
                      while (1)
                      {
                        v434 = *(v434 + 32);
                        if (!v434)
                        {
                          break;
                        }

                        if (nw_protocol_is_tls_over_stream(v434))
                        {
                          v435 = *(*&buf[8] + 40);
                          v436 = nw_protocol_boringssl_copy_definition();
                          nw_parameters_set_protocol_instance(v435, v437, v434);
                          if (v436)
                          {
                            os_release(v436);
                          }

                          goto LABEL_1069;
                        }
                      }

                      v447 = __nwlog_obj();
                      *v1013 = 136446210;
                      *&v1013[4] = "nw_http1_stream_associate_with_connection";
                      LODWORD(v977) = 12;
                      v448 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v447, 16, "%{public}s tls should have been in the stack but could not find it", v1013, v977);
                      v996[0] = OS_LOG_TYPE_ERROR;
                      v1000 = OS_LOG_TYPE_DEFAULT;
                      if (!__nwlog_fault(v448, v996, &v1000))
                      {
                        goto LABEL_1073;
                      }

                      if (v996[0] == OS_LOG_TYPE_FAULT)
                      {
                        v449 = __nwlog_obj();
                        v450 = v996[0];
                        if (os_log_type_enabled(v449, v996[0]))
                        {
                          *v1013 = 136446210;
                          *&v1013[4] = "nw_http1_stream_associate_with_connection";
                          v451 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1072:
                          _os_log_impl(&dword_181A37000, v449, v450, v451, v1013, 0xCu);
                        }
                      }

                      else if (v1000 == OS_LOG_TYPE_INFO)
                      {
                        v496 = __nw_create_backtrace_string();
                        v449 = __nwlog_obj();
                        v450 = v996[0];
                        v497 = os_log_type_enabled(v449, v996[0]);
                        if (v496)
                        {
                          if (v497)
                          {
                            *v1013 = 136446466;
                            *&v1013[4] = "nw_http1_stream_associate_with_connection";
                            *&v1013[12] = 2082;
                            *&v1013[14] = v496;
                            _os_log_impl(&dword_181A37000, v449, v450, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1013, 0x16u);
                          }

                          free(v496);
                          goto LABEL_1073;
                        }

                        if (v497)
                        {
                          *v1013 = 136446210;
                          *&v1013[4] = "nw_http1_stream_associate_with_connection";
                          v451 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                          goto LABEL_1072;
                        }
                      }

                      else
                      {
                        v449 = __nwlog_obj();
                        v450 = v996[0];
                        if (os_log_type_enabled(v449, v996[0]))
                        {
                          *v1013 = 136446210;
                          *&v1013[4] = "nw_http1_stream_associate_with_connection";
                          v451 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                          goto LABEL_1072;
                        }
                      }

LABEL_1073:
                      if (v448)
                      {
                        free(v448);
                      }

                      v673 = 0;
                      goto LABEL_1076;
                    }

                    v442 = __nwlog_obj();
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    LODWORD(v977) = 12;
                    v443 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v442, 16, "%{public}s unable to find tls options", v1013, v977);
                    v996[0] = OS_LOG_TYPE_ERROR;
                    v1000 = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v443, v996, &v1000))
                    {
                      if (v996[0] == OS_LOG_TYPE_FAULT)
                      {
                        v444 = __nwlog_obj();
                        v445 = v996[0];
                        if (os_log_type_enabled(v444, v996[0]))
                        {
                          *v1013 = 136446210;
                          *&v1013[4] = "nw_http1_stream_associate_with_connection";
                          v446 = "%{public}s unable to find tls options";
LABEL_1066:
                          _os_log_impl(&dword_181A37000, v444, v445, v446, v1013, 0xCu);
                        }
                      }

                      else if (v1000 == OS_LOG_TYPE_INFO)
                      {
                        v463 = __nw_create_backtrace_string();
                        v444 = __nwlog_obj();
                        v445 = v996[0];
                        v464 = os_log_type_enabled(v444, v996[0]);
                        if (v463)
                        {
                          if (v464)
                          {
                            *v1013 = 136446466;
                            *&v1013[4] = "nw_http1_stream_associate_with_connection";
                            *&v1013[12] = 2082;
                            *&v1013[14] = v463;
                            _os_log_impl(&dword_181A37000, v444, v445, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1013, 0x16u);
                          }

                          free(v463);
                        }

                        else if (v464)
                        {
                          *v1013 = 136446210;
                          *&v1013[4] = "nw_http1_stream_associate_with_connection";
                          v446 = "%{public}s unable to find tls options, no backtrace";
                          goto LABEL_1066;
                        }
                      }

                      else
                      {
                        v444 = __nwlog_obj();
                        v445 = v996[0];
                        if (os_log_type_enabled(v444, v996[0]))
                        {
                          *v1013 = 136446210;
                          *&v1013[4] = "nw_http1_stream_associate_with_connection";
                          v446 = "%{public}s unable to find tls options, backtrace limit exceeded";
                          goto LABEL_1066;
                        }
                      }
                    }

                    if (v443)
                    {
                      free(v443);
                    }

LABEL_1069:
                    v673 = 1;
LABEL_1076:
                    v7 = v987;
                    _Block_object_dispose(buf, 8);
                    if ((v1018[16] & 1) != 0 && *&v1018[8])
                    {
                      os_release(*&v1018[8]);
                    }

                    _Block_object_dispose(aBlock, 8);
                    if (v433)
                    {
                      os_release(v433);
                    }

                    if (v673)
                    {
                      goto LABEL_1082;
                    }

LABEL_1110:
                    if ((*(v13 + 158) & 1) == 0)
                    {
                      v704 = __nwlog_obj();
                      if (os_log_type_enabled(v704, OS_LOG_TYPE_DEBUG))
                      {
                        v705 = *(v13 + 256);
                        v706 = *(*(v13 + 248) + 372);
                        if (v705)
                        {
                          LODWORD(v705) = *(v705 + 860);
                        }

                        v707 = *(v13 + 424);
                        *buf = 136448258;
                        *&buf[4] = "nw_http1_start_new_connection_for_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v13 + 74;
                        *&buf[22] = 2080;
                        v1017 = " ";
                        *v1018 = 1024;
                        *&v1018[2] = v706;
                        *&v1018[6] = 1024;
                        *&v1018[8] = v705;
                        *&v1018[12] = 1024;
                        *&v1018[14] = v707;
                        *&v1018[18] = 2048;
                        *&v1018[20] = v151;
                        *&v1018[28] = 1024;
                        *&v1018[30] = v707;
                        *&v1018[34] = 2048;
                        *&v1018[36] = v13;
                        _os_log_impl(&dword_181A37000, v704, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                      }
                    }

                    *(v13 + 428) |= 1u;
                    v708 = nw_protocol_copy_info(v147);
                    v709 = v708;
                    if (v708)
                    {
                      v710 = _nw_array_copy_last_object(v708);
                      v711 = v710;
                      if (v710)
                      {
                        if (nw_protocol_metadata_is_tls(v710))
                        {
                          v711 = v711;
                          nw_http_connection_metadata_set_sec_metadata(*(v151 + 768), v711);
                          os_release(v711);
                          nw_protocol_connect(v147, v151);
                          goto LABEL_1128;
                        }

                        v712 = 0;
LABEL_1122:
                        if (v151)
                        {
                          nw_protocol_connect(v147, v151);
                          goto LABEL_1124;
                        }

                        v856 = __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_get_output_protocol";
                        LODWORD(v977) = 12;
                        v857 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v856, 16, "%{public}s called with null connection", buf, v977);
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v857, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v858 = __nwlog_obj();
                            v859 = type[0];
                            if (os_log_type_enabled(v858, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v860 = "%{public}s called with null connection";
LABEL_1622:
                              _os_log_impl(&dword_181A37000, v858, v859, v860, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v921 = __nw_create_backtrace_string();
                            v858 = __nwlog_obj();
                            v859 = type[0];
                            v922 = os_log_type_enabled(v858, type[0]);
                            if (v921)
                            {
                              if (v922)
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_http1_get_output_protocol";
                                *&buf[12] = 2082;
                                *&buf[14] = v921;
                                _os_log_impl(&dword_181A37000, v858, v859, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v921);
                              goto LABEL_1623;
                            }

                            if (v922)
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v860 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1622;
                            }
                          }

                          else
                          {
                            v858 = __nwlog_obj();
                            v859 = type[0];
                            if (os_log_type_enabled(v858, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v860 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1622;
                            }
                          }
                        }

LABEL_1623:
                        if (v857)
                        {
                          free(v857);
                        }

                        nw_protocol_connect(v147, 0);
                        v7 = v987;
LABEL_1124:
                        if (v711)
                        {
                          v713 = v712;
                        }

                        else
                        {
                          v713 = 1;
                        }

                        if (v713)
                        {
LABEL_1129:
                          if (v709)
                          {
                            os_release(v709);
                          }

                          *(v13 + 428) &= ~0x10u;
                          v714 = *(v7 + 352);
                          *(v7 + 352) = v714 - 1;
                          if (v714)
                          {
                            return 1;
                          }

                          v715 = __nwlog_obj();
                          v716 = *(v7 + 352);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->pending_output_handler_count";
                          *&buf[22] = 2048;
                          v1017 = 1;
                          *v1018 = 2048;
                          *&v1018[2] = v716;
                          LODWORD(v977) = 42;
                          v364 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v715, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v977);
                          type[0] = OS_LOG_TYPE_ERROR;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v364, type, aBlock))
                          {
                            if (type[0] != OS_LOG_TYPE_FAULT)
                            {
                              if (aBlock[0] == 1)
                              {
                                v717 = __nw_create_backtrace_string();
                                v365 = __nwlog_obj();
                                v366 = type[0];
                                v370 = os_log_type_enabled(v365, type[0]);
                                if (v717)
                                {
                                  if (v370)
                                  {
                                    v718 = *(v7 + 352);
                                    *buf = 136447234;
                                    *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                                    *&buf[12] = 2082;
                                    *&buf[14] = "http1->pending_output_handler_count";
                                    *&buf[22] = 2048;
                                    v1017 = 1;
                                    *v1018 = 2048;
                                    *&v1018[2] = v718;
                                    *&v1018[10] = 2082;
                                    *&v1018[12] = v717;
                                    _os_log_impl(&dword_181A37000, v365, v366, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                                  }

                                  free(v717);
                                  if (!v364)
                                  {
                                    goto LABEL_1147;
                                  }

                                  goto LABEL_1146;
                                }

                                goto LABEL_1142;
                              }

                              goto LABEL_1140;
                            }

LABEL_534:
                            v365 = __nwlog_obj();
                            v366 = type[0];
                            if (!os_log_type_enabled(v365, type[0]))
                            {
                              goto LABEL_1145;
                            }

                            v367 = *(v7 + 352);
                            *buf = 136446978;
                            *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                            *&buf[12] = 2082;
                            *&buf[14] = "http1->pending_output_handler_count";
                            *&buf[22] = 2048;
                            v1017 = 1;
                            *v1018 = 2048;
                            *&v1018[2] = v367;
                            v368 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_1144:
                            _os_log_impl(&dword_181A37000, v365, v366, v368, buf, 0x2Au);
                            goto LABEL_1145;
                          }

                          goto LABEL_1145;
                        }

LABEL_1128:
                        os_release(v711);
                        goto LABEL_1129;
                      }
                    }

                    else
                    {
                      v711 = 0;
                    }

                    v712 = 1;
                    goto LABEL_1122;
                  }

                  v842 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  LODWORD(v977) = 12;
                  v843 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v842, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v977);
                  aBlock[0] = 16;
                  v1013[0] = 0;
                  if (__nwlog_fault(v843, aBlock, v1013))
                  {
                    if (aBlock[0] == 17)
                    {
                      v844 = __nwlog_obj();
                      v845 = aBlock[0];
                      if (os_log_type_enabled(v844, aBlock[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v846 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1616:
                        _os_log_impl(&dword_181A37000, v844, v845, v846, buf, 0xCu);
                      }
                    }

                    else if (v1013[0] == 1)
                    {
                      v919 = __nw_create_backtrace_string();
                      v844 = __nwlog_obj();
                      v845 = aBlock[0];
                      v920 = os_log_type_enabled(v844, aBlock[0]);
                      if (v919)
                      {
                        if (v920)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_http1_stream_associate_with_connection";
                          *&buf[12] = 2082;
                          *&buf[14] = v919;
                          _os_log_impl(&dword_181A37000, v844, v845, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v919);
                        goto LABEL_1617;
                      }

                      if (v920)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v846 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                        goto LABEL_1616;
                      }
                    }

                    else
                    {
                      v844 = __nwlog_obj();
                      v845 = aBlock[0];
                      if (os_log_type_enabled(v844, aBlock[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        v846 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                        goto LABEL_1616;
                      }
                    }
                  }

LABEL_1617:
                  if (v843)
                  {
                    free(v843);
                  }

                  v7 = v987;
                  goto LABEL_1110;
                }

                v837 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_set_up_association";
                LODWORD(v977) = 12;
                v838 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v837, 16, "%{public}s called with null parameters", buf, v977);
                type[0] = OS_LOG_TYPE_ERROR;
                aBlock[0] = 0;
                if (__nwlog_fault(v838, type, aBlock))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v839 = __nwlog_obj();
                    v840 = type[0];
                    if (!os_log_type_enabled(v839, type[0]))
                    {
                      goto LABEL_1610;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    v841 = "%{public}s called with null parameters";
LABEL_1609:
                    _os_log_impl(&dword_181A37000, v839, v840, v841, buf, 0xCu);
                    goto LABEL_1610;
                  }

                  if (aBlock[0] != 1)
                  {
                    v839 = __nwlog_obj();
                    v840 = type[0];
                    if (!os_log_type_enabled(v839, type[0]))
                    {
                      goto LABEL_1610;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    v841 = "%{public}s called with null parameters, backtrace limit exceeded";
                    goto LABEL_1609;
                  }

                  v917 = __nw_create_backtrace_string();
                  v839 = __nwlog_obj();
                  v840 = type[0];
                  v918 = os_log_type_enabled(v839, type[0]);
                  if (!v917)
                  {
                    if (!v918)
                    {
                      goto LABEL_1610;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    v841 = "%{public}s called with null parameters, no backtrace";
                    goto LABEL_1609;
                  }

                  if (v918)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_protocol_http1_set_up_association";
                    *&buf[12] = 2082;
                    *&buf[14] = v917;
                    _os_log_impl(&dword_181A37000, v839, v840, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v917);
                }

LABEL_1610:
                if (v838)
                {
                  free(v838);
                }

                v250 = *(v151 + 512);
                if (v250)
                {
                  goto LABEL_366;
                }

                goto LABEL_368;
              }
            }

LABEL_1693:
            __break(1u);
            return result;
          }

          v819 = v7;
          v831 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v821 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v831, 16, "%{public}s called with null parameters", buf, 12);
          v1013[0] = 16;
          v996[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v821, v1013, v996))
          {
            if (v1013[0] == 17)
            {
              v822 = __nwlog_obj();
              v823 = v1013[0];
              if (!os_log_type_enabled(v822, v1013[0]))
              {
                goto LABEL_1566;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v824 = "%{public}s called with null parameters";
              goto LABEL_1565;
            }

            if (v996[0] != OS_LOG_TYPE_INFO)
            {
              v822 = __nwlog_obj();
              v823 = v1013[0];
              if (!os_log_type_enabled(v822, v1013[0]))
              {
                goto LABEL_1566;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v824 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1565;
            }

            v886 = __nw_create_backtrace_string();
            v822 = __nwlog_obj();
            v823 = v1013[0];
            v889 = os_log_type_enabled(v822, v1013[0]);
            if (!v886)
            {
              if (!v889)
              {
                goto LABEL_1566;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_create";
              v824 = "%{public}s called with null parameters, no backtrace";
              goto LABEL_1565;
            }

            if (v889)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_connection_create";
              *&buf[12] = 2082;
              *&buf[14] = v886;
              v888 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
              goto LABEL_1446;
            }

            goto LABEL_1447;
          }

LABEL_1566:
          if (!v821)
          {
            goto LABEL_1568;
          }

          goto LABEL_1567;
        }

        v819 = v7;
        v830 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v821 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v830, 16, "%{public}s called with null endpoint", buf, 12);
        v1013[0] = 16;
        v996[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v821, v1013, v996))
        {
          goto LABEL_1566;
        }

        if (v1013[0] != 17)
        {
          if (v996[0] != OS_LOG_TYPE_INFO)
          {
            v822 = __nwlog_obj();
            v823 = v1013[0];
            if (!os_log_type_enabled(v822, v1013[0]))
            {
              goto LABEL_1566;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v824 = "%{public}s called with null endpoint, backtrace limit exceeded";
            goto LABEL_1565;
          }

          v886 = __nw_create_backtrace_string();
          v822 = __nwlog_obj();
          v823 = v1013[0];
          v887 = os_log_type_enabled(v822, v1013[0]);
          if (!v886)
          {
            if (!v887)
            {
              goto LABEL_1566;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v824 = "%{public}s called with null endpoint, no backtrace";
            goto LABEL_1565;
          }

          if (v887)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v886;
            v888 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1446:
            _os_log_impl(&dword_181A37000, v822, v823, v888, buf, 0x16u);
          }

LABEL_1447:
          free(v886);
          if (!v821)
          {
LABEL_1568:
            v949 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            LODWORD(v983) = 12;
            v950 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v949, 16, "%{public}s called with null http1_connection", buf, v983);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (!__nwlog_fault(v950, type, aBlock))
            {
              goto LABEL_1582;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v951 = __nwlog_obj();
              v952 = type[0];
              if (!os_log_type_enabled(v951, type[0]))
              {
                goto LABEL_1582;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v953 = "%{public}s called with null http1_connection";
            }

            else if (aBlock[0] == 1)
            {
              v954 = __nw_create_backtrace_string();
              v951 = __nwlog_obj();
              v952 = type[0];
              v955 = os_log_type_enabled(v951, type[0]);
              if (v954)
              {
                if (v955)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v954;
                  _os_log_impl(&dword_181A37000, v951, v952, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v954);
LABEL_1582:
                if (v950)
                {
                  free(v950);
                }

                v956 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                LODWORD(v985) = 12;
                v957 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v956, 16, "%{public}s called with null http1_connection", buf, v985);
                aBlock[0] = 16;
                v1013[0] = 0;
                if (!__nwlog_fault(v957, aBlock, v1013))
                {
                  goto LABEL_1598;
                }

                if (aBlock[0] == 17)
                {
                  v958 = __nwlog_obj();
                  v959 = aBlock[0];
                  if (os_log_type_enabled(v958, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v960 = "%{public}s called with null http1_connection";
LABEL_1597:
                    _os_log_impl(&dword_181A37000, v958, v959, v960, buf, 0xCu);
                  }
                }

                else if (v1013[0] == 1)
                {
                  v961 = __nw_create_backtrace_string();
                  v958 = __nwlog_obj();
                  v959 = aBlock[0];
                  v962 = os_log_type_enabled(v958, aBlock[0]);
                  if (v961)
                  {
                    if (v962)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v961;
                      _os_log_impl(&dword_181A37000, v958, v959, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v961);
                    goto LABEL_1598;
                  }

                  if (v962)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v960 = "%{public}s called with null http1_connection, no backtrace";
                    goto LABEL_1597;
                  }
                }

                else
                {
                  v958 = __nwlog_obj();
                  v959 = aBlock[0];
                  if (os_log_type_enabled(v958, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v960 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                    goto LABEL_1597;
                  }
                }

LABEL_1598:
                if (v957)
                {
                  free(v957);
                }

                v151 = 0;
                v7 = v819;
                goto LABEL_1110;
              }

              if (!v955)
              {
                goto LABEL_1582;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v953 = "%{public}s called with null http1_connection, no backtrace";
            }

            else
            {
              v951 = __nwlog_obj();
              v952 = type[0];
              if (!os_log_type_enabled(v951, type[0]))
              {
                goto LABEL_1582;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_add_connection_for_output_handler";
              v953 = "%{public}s called with null http1_connection, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v951, v952, v953, buf, 0xCu);
            goto LABEL_1582;
          }

LABEL_1567:
          free(v821);
          goto LABEL_1568;
        }

        v822 = __nwlog_obj();
        v823 = v1013[0];
        if (!os_log_type_enabled(v822, v1013[0]))
        {
          goto LABEL_1566;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v824 = "%{public}s called with null endpoint";
      }

      else
      {
        v819 = v7;
        v820 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v821 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v820, 16, "%{public}s called with null output_handler", buf, 12);
        v1013[0] = 16;
        v996[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v821, v1013, v996))
        {
          goto LABEL_1566;
        }

        if (v1013[0] != 17)
        {
          if (v996[0] != OS_LOG_TYPE_INFO)
          {
            v822 = __nwlog_obj();
            v823 = v1013[0];
            if (!os_log_type_enabled(v822, v1013[0]))
            {
              goto LABEL_1566;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v824 = "%{public}s called with null output_handler, backtrace limit exceeded";
            goto LABEL_1565;
          }

          v883 = __nw_create_backtrace_string();
          v822 = __nwlog_obj();
          v823 = v1013[0];
          v884 = os_log_type_enabled(v822, v1013[0]);
          if (!v883)
          {
            if (!v884)
            {
              goto LABEL_1566;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v824 = "%{public}s called with null output_handler, no backtrace";
            goto LABEL_1565;
          }

          if (v884)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v883;
            _os_log_impl(&dword_181A37000, v822, v823, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v883);
          goto LABEL_1566;
        }

        v822 = __nwlog_obj();
        v823 = v1013[0];
        if (!os_log_type_enabled(v822, v1013[0]))
        {
          goto LABEL_1566;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v824 = "%{public}s called with null output_handler";
      }

LABEL_1565:
      _os_log_impl(&dword_181A37000, v822, v823, v824, buf, 0xCu);
      goto LABEL_1566;
    }

    if (*(v13 + 256))
    {
      if (*(v13 + 158))
      {
        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v21 = *(v13 + 256);
      v22 = *(*(v13 + 248) + 372);
      if (v21)
      {
        LODWORD(v21) = *(v21 + 860);
      }

      v23 = *(v13 + 424);
      *buf = 136447490;
      *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 74;
      *&buf[22] = 2080;
      v1017 = " ";
      *v1018 = 1024;
      *&v1018[2] = v22;
      *&v1018[6] = 1024;
      *&v1018[8] = v21;
      *&v1018[12] = 1024;
      *&v1018[14] = v23;
      v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
      goto LABEL_42;
    }

    if (!*(v13 + 32))
    {
      if (*(v13 + 158))
      {
        return 1;
      }

      if (gLogDatapath != 1)
      {
        return 1;
      }

      v37 = __nwlog_obj();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v38 = *(v13 + 256);
      v39 = *(*(v13 + 248) + 372);
      if (v38)
      {
        LODWORD(v38) = *(v38 + 860);
      }

      v40 = *(v13 + 424);
      *buf = 136447746;
      *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
      *&buf[12] = 2082;
      *&buf[14] = v13 + 74;
      *&buf[22] = 2080;
      v1017 = " ";
      *v1018 = 1024;
      *&v1018[2] = v39;
      *&v1018[6] = 1024;
      *&v1018[8] = v38;
      *&v1018[12] = 1024;
      *&v1018[14] = v40;
      *&v1018[18] = 2048;
      *&v1018[20] = v13;
      v20 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
      v24 = v37;
      v25 = 60;
      goto LABEL_43;
    }

    if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v513 = __nwlog_obj();
      if (os_log_type_enabled(v513, OS_LOG_TYPE_DEBUG))
      {
        v514 = *(v13 + 256);
        v515 = *(*(v13 + 248) + 372);
        if (v514)
        {
          LODWORD(v514) = *(v514 + 860);
        }

        v516 = *(v13 + 424);
        v517 = *(v13 + 32);
        *buf = 136448002;
        *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
        *&buf[12] = 2082;
        *&buf[14] = v13 + 74;
        *&buf[22] = 2080;
        v1017 = " ";
        *v1018 = 1024;
        *&v1018[2] = v515;
        *&v1018[6] = 1024;
        *&v1018[8] = v514;
        *&v1018[12] = 1024;
        *&v1018[14] = v516;
        *&v1018[18] = 2048;
        *&v1018[20] = v13;
        *&v1018[28] = 2048;
        *&v1018[30] = v517;
        _os_log_impl(&dword_181A37000, v513, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
      }
    }

    v28 = *(v13 + 32);
    if (v28)
    {
      v29 = *(v13 + 336);
      if (v29)
      {
        v30 = *(v13 + 320);
        if (v30)
        {
          v31 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
          v32 = v31;
          if (v31)
          {
            bzero(v31, 0x370uLL);
            nw_http1_connection::nw_http1_connection(v32);
          }

          else
          {
            v68 = __nwlog_obj();
            v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            *&buf[4] = "nw_http1_connection_create";
            if (v69)
            {
              v70 = 3;
            }

            else
            {
              v70 = 2;
            }

            *&buf[12] = 2048;
            *&buf[14] = 1;
            *&buf[22] = 2048;
            v1017 = 880;
            v71 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
            result = __nwlog_should_abort(v71);
            if (result)
            {
              goto LABEL_1693;
            }

            free(v71);
            bzero(0, 0x370uLL);
            nw_http1_connection::nw_http1_connection(0);
            v73 = __nwlog_obj();
            v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR) ? 3 : 2;
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            LODWORD(v978) = 12;
            v75 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s strict_placement_new(nw_http1_connection, strict_calloc(1, sizeof(nw_http1_connection)),) failed", buf, v978);
            result = __nwlog_should_abort(v75);
            if (result)
            {
              goto LABEL_1693;
            }

            free(v75);
          }

          if (nw_protocol_http1_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
          }

          *(v32 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
          if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
          }

          *(v32 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
          *(v32 + 184) = 3;
          *(v32 + 176) = v32;
          *(v32 + 40) = v32 + 160;
          *(v32 + 480) = v7;
          nw_protocol_set_output_handler(v32, v28);
          v76 = os_retain(v29);
          v77 = *(v32 + 760);
          if ((v77 & 1) != 0 && *(v32 + 752))
          {
            v78 = v76;
            os_release(*(v32 + 752));
            v76 = v78;
            v77 = *(v32 + 760);
          }

          *(v32 + 752) = v76;
          *(v32 + 760) = v77 | 1;
          v79 = os_retain(v30);
          v80 = *(v32 + 744);
          if ((v80 & 1) != 0 && *(v32 + 736))
          {
            v81 = v79;
            os_release(*(v32 + 736));
            v79 = v81;
            v80 = *(v32 + 744);
          }

          *(v32 + 736) = v79;
          *(v32 + 744) = v80 | 1;
          v82 = _nw_parameters_copy_context();
          v83 = *(v32 + 504);
          if ((v83 & 1) != 0 && *(v32 + 496))
          {
            v84 = v82;
            os_release(*(v32 + 496));
            v82 = v84;
            v83 = *(v32 + 504);
          }

          *(v32 + 496) = v82;
          *(v32 + 504) = v83 | 1;
          *(v32 + 192) = *(v7 + 192);
          *type = MEMORY[0x1E69E9820];
          v1002 = 0x40000000;
          v1003 = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
          v1004 = &__block_descriptor_tmp_43_43000;
          v1005 = v32;
          metadata = nw_http_connection_create_metadata(v82, type, 0);
          v86 = *(v32 + 776);
          if ((v86 & 1) != 0 && *(v32 + 768))
          {
            v87 = metadata;
            os_release(*(v32 + 768));
            metadata = v87;
            v86 = *(v32 + 776);
          }

          *(v32 + 768) = metadata;
          *(v32 + 776) = v86 | 1;
          nw_http_connection_metadata_set_version(metadata, 3);
          nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v32 + 768), *(v7 + 312));
          *(v32 + 616) = 0;
          *(v32 + 624) = v32 + 616;
          *(v32 + 632) = 0;
          *(v32 + 640) = v32 + 632;
          *(v32 + 648) = 0;
          *(v32 + 656) = v32 + 648;
          *(v32 + 664) = 0;
          *(v32 + 672) = v32 + 664;
          *(v32 + 680) = 0;
          *(v32 + 688) = v32 + 680;
          nw_frame_cache_init((v32 + 696), v32, 256, 0x40000, 16);
          v88 = *(v32 + 480);
          if (v88)
          {
            *(v32 + 360) = 0u;
            *(v32 + 376) = 0u;
            *(v32 + 392) = 0u;
            *(v32 + 408) = 0u;
            *(v32 + 424) = 0u;
            *(v32 + 440) = 0u;
            *(v32 + 328) = 0u;
            *(v32 + 344) = 0u;
            *(v32 + 296) = nw_http1_on_message_begin;
            *(v32 + 384) = nw_http1_on_message_complete;
            *(v32 + 368) = nw_http1_on_headers_complete;
            *(v32 + 472) = nw_http1_on_reset;
            *(v32 + 320) = nw_http1_on_method;
            *(v32 + 408) = nw_http1_on_method_complete;
            *(v32 + 304) = nw_http1_on_url;
            *(v32 + 392) = nw_http1_on_url_complete;
            *(v32 + 312) = nw_http1_on_status;
            *(v32 + 400) = nw_http1_on_status_complete;
            *(v32 + 336) = nw_http1_on_header_field;
            *(v32 + 424) = nw_http1_on_header_field_complete;
            *(v32 + 344) = nw_http1_on_header_value;
            *(v32 + 432) = nw_http1_on_header_value_complete;
            *(v32 + 376) = nw_http1_on_body;
            *(v32 + 456) = nw_http1_on_chunk_header;
            *(v32 + 464) = nw_http1_on_chunk_complete;
            v89 = *(v88 + 376);
            *(v32 + 248) = 0u;
            *(v32 + 200) = 0u;
            *(v32 + 264) = 0u;
            *(v32 + 232) = 0u;
            *(v32 + 216) = 0u;
            if (v89)
            {
              v90 = 1;
            }

            else
            {
              v90 = 2;
            }

            *(v32 + 272) = v90;
            *(v32 + 280) = 0;
            *(v32 + 288) = v32 + 296;
            *(v32 + 278) = 16131;
            *(v32 + 248) = v32;
            *(v32 + 256) = 237;
            if ((*(v32 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v91 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v92 = *(v32 + 488);
                v93 = *(*(v32 + 480) + 372);
                v94 = *(v32 + 860);
                if (v92)
                {
                  LODWORD(v92) = *(v92 + 424);
                }

                *buf = 136448258;
                *&buf[4] = "nw_http1_connection_log_parser_version";
                *&buf[12] = 2082;
                *&buf[14] = v32 + 74;
                *&buf[22] = 2080;
                v1017 = " ";
                *v1018 = 1024;
                *&v1018[2] = v93;
                *&v1018[6] = 1024;
                *&v1018[8] = v94;
                *&v1018[12] = 1024;
                *&v1018[14] = v92;
                *&v1018[18] = 1024;
                *&v1018[20] = 9;
                *&v1018[24] = 1024;
                *&v1018[26] = 2;
                *&v1018[30] = 1024;
                *&v1018[32] = 1;
                _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
              }
            }

            goto LABEL_137;
          }

          v520 = v7;
          v521 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_parser_init";
          LODWORD(v977) = 12;
          v522 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v521, 16, "%{public}s called with null http1_connection->protocol_http1", buf, v977);
          v1013[0] = 16;
          v996[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v522, v1013, v996))
          {
            if (v1013[0] == 17)
            {
              v523 = __nwlog_obj();
              v524 = v1013[0];
              if (os_log_type_enabled(v523, v1013[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                v525 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1342:
                _os_log_impl(&dword_181A37000, v523, v524, v525, buf, 0xCu);
              }
            }

            else if (v996[0] == OS_LOG_TYPE_INFO)
            {
              v727 = __nw_create_backtrace_string();
              v523 = __nwlog_obj();
              v524 = v1013[0];
              v728 = os_log_type_enabled(v523, v1013[0]);
              if (v727)
              {
                if (v728)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_parser_init";
                  *&buf[12] = 2082;
                  *&buf[14] = v727;
                  _os_log_impl(&dword_181A37000, v523, v524, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v727);
                goto LABEL_1343;
              }

              if (v728)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                v525 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                goto LABEL_1342;
              }
            }

            else
            {
              v523 = __nwlog_obj();
              v524 = v1013[0];
              if (os_log_type_enabled(v523, v1013[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_parser_init";
                v525 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                goto LABEL_1342;
              }
            }
          }

LABEL_1343:
          if (v522)
          {
            free(v522);
          }

          v7 = v520;
LABEL_137:
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2000000000;
          v1017 = v32;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
          v1009 = &unk_1E6A32758;
          *v1010 = buf;
          *(v32 + 608) = _Block_copy(aBlock);
          _Block_object_dispose(buf, 8);
          if ((*(v32 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v537 = __nwlog_obj();
            if (os_log_type_enabled(v537, OS_LOG_TYPE_DEBUG))
            {
              v538 = *(v32 + 488);
              v539 = *(*(v32 + 480) + 372);
              v540 = *(v32 + 860);
              if (v538)
              {
                LODWORD(v538) = *(v538 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_http1_connection_create";
              *&buf[12] = 2082;
              *&buf[14] = v32 + 74;
              *&buf[22] = 2080;
              v1017 = " ";
              *v1018 = 1024;
              *&v1018[2] = v539;
              *&v1018[6] = 1024;
              *&v1018[8] = v540;
              *&v1018[12] = 1024;
              *&v1018[14] = v538;
              *&v1018[18] = 2048;
              *&v1018[20] = v32;
              _os_log_impl(&dword_181A37000, v537, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
            }
          }

          nw_protocol_replace_input_handler(v28, v13, v32);
          *v32 = *v28;
          v95 = *(v32 + 736);
          if (v95)
          {
            if (!*(v32 + 528))
            {
              v96 = _nw_parameters_copy_context();
              *buf = nw_path_copy_flow_registration(v96, v32);
              v97 = (v32 + 560);
              nw::retained_ptr<nw_endpoint *>::operator=(v32 + 560, buf);
              v98 = *(v32 + 560);
              if (v98)
              {
                v99 = v7;
                v100 = nw_path_flow_registration_copy_endpoint(v98);
                v101 = nw_path_flow_registration_copy_parameters(*v97);
                *buf = nw_endpoint_copy_association_with_evaluator(v100, v101, 0);
                nw::retained_ptr<nw_endpoint *>::operator=(v32 + 528, buf);
                if (*(v32 + 528))
                {
                  *buf = nw_protocol_instance_stub_create(v32);
                  nw::retained_ptr<nw_endpoint *>::operator=(v32 + 544, buf);
                  nw_association_register_internal(*(v32 + 528), v95, *(v32 + 544), 0, 0, &__block_literal_global_69_43019);
                  v102 = nw_association_copy_current_path(*(v32 + 528), v101);
                  if (v102)
                  {
                    v103 = v102;
                    v104 = nw_path_copy_for_flow_registration(v102, *v97);
                    if (v104)
                    {
                      v105 = v104;
                      if (*(v32 + 512) != v104)
                      {
                        *buf = os_retain(v104);
                        nw::retained_ptr<nw_endpoint *>::operator=(v32 + 512, buf);
                      }

                      if (nw_path_has_flows(v105))
                      {
                        v106 = 4096;
                      }

                      else
                      {
                        v106 = 0;
                      }

                      *(v32 + 872) = *(v32 + 872) & 0xEFFF | v106;
                      v107 = _nw_parameters_copy_effective_proxy_config(v95);
                      if (v107)
                      {
                        v108 = v107;
                        if (nw_path_has_proxy_config(v103, v107))
                        {
                          *buf = os_retain(v108);
                          nw::retained_ptr<nw_endpoint *>::operator=(v32 + 576, buf);
                        }

                        os_release(v108);
                      }

                      os_release(v105);
                    }

                    os_release(v103);
                  }
                }

                if (v101)
                {
                  os_release(v101);
                }

                v7 = v99;
                if (v100)
                {
                  os_release(v100);
                }
              }

              if (v96)
              {
                os_release(v96);
              }
            }

            v109 = *(v32 + 512);
            if (v109)
            {
LABEL_163:
              if (_nw_path_uses_interface_type(v109, 2u))
              {
                *(v32 + 192) = 1000;
              }
            }

LABEL_165:
            v110 = *(v7 + 336) + 1;
            *(v7 + 336) = v110;
            if (v110 == v110 << 31 >> 31)
            {
              goto LABEL_231;
            }

            v111 = __nwlog_obj();
            v112 = v7;
            v113 = *(v7 + 336);
            *buf = 136446978;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = "http1->connections_count";
            *&buf[22] = 2048;
            v1017 = 1;
            *v1018 = 2048;
            *&v1018[2] = v113;
            LODWORD(v977) = 42;
            v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v111, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v977);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v114, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v115 = __nwlog_obj();
                v116 = type[0];
                if (os_log_type_enabled(v115, type[0]))
                {
                  v117 = *(v112 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v117;
                  v118 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_227:
                  _os_log_impl(&dword_181A37000, v115, v116, v118, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v119 = __nw_create_backtrace_string();
                v115 = __nwlog_obj();
                v116 = type[0];
                v120 = os_log_type_enabled(v115, type[0]);
                if (v119)
                {
                  if (v120)
                  {
                    v121 = *(v112 + 336);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->connections_count";
                    *&buf[22] = 2048;
                    v1017 = 1;
                    *v1018 = 2048;
                    *&v1018[2] = v121;
                    *&v1018[10] = 2082;
                    *&v1018[12] = v119;
                    _os_log_impl(&dword_181A37000, v115, v116, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v119);
                  goto LABEL_228;
                }

                if (v120)
                {
                  v157 = *(v112 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v157;
                  v118 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_227;
                }
              }

              else
              {
                v115 = __nwlog_obj();
                v116 = type[0];
                if (os_log_type_enabled(v115, type[0]))
                {
                  v144 = *(v112 + 336);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->connections_count";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v144;
                  v118 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_227;
                }
              }
            }

LABEL_228:
            if (v114)
            {
              free(v114);
            }

            v7 = v112;
            *(v112 + 336) = -1;
LABEL_231:
            v158 = *(v7 + 360) + 1;
            *(v7 + 360) = v158;
            if (v158 == v158 << 31 >> 31)
            {
              goto LABEL_249;
            }

            v159 = __nwlog_obj();
            v160 = v7;
            v161 = *(v7 + 360);
            *buf = 136446978;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = "http1->next_connection_log_num";
            *&buf[22] = 2048;
            v1017 = 1;
            *v1018 = 2048;
            *&v1018[2] = v161;
            LODWORD(v977) = 42;
            v162 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v977);
            type[0] = OS_LOG_TYPE_ERROR;
            aBlock[0] = 0;
            if (__nwlog_fault(v162, type, aBlock))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v163 = __nwlog_obj();
                v164 = type[0];
                if (os_log_type_enabled(v163, type[0]))
                {
                  v165 = *(v160 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v165;
                  v166 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_245:
                  _os_log_impl(&dword_181A37000, v163, v164, v166, buf, 0x2Au);
                }
              }

              else if (aBlock[0] == 1)
              {
                v167 = __nw_create_backtrace_string();
                v163 = __nwlog_obj();
                v164 = type[0];
                v168 = os_log_type_enabled(v163, type[0]);
                if (v167)
                {
                  if (v168)
                  {
                    v169 = *(v160 + 360);
                    *buf = 136447234;
                    *&buf[4] = "nw_http1_add_connection_for_output_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = "http1->next_connection_log_num";
                    *&buf[22] = 2048;
                    v1017 = 1;
                    *v1018 = 2048;
                    *&v1018[2] = v169;
                    *&v1018[10] = 2082;
                    *&v1018[12] = v167;
                    _os_log_impl(&dword_181A37000, v163, v164, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v167);
                  goto LABEL_246;
                }

                if (v168)
                {
                  v171 = *(v160 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v171;
                  v166 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_245;
                }
              }

              else
              {
                v163 = __nwlog_obj();
                v164 = type[0];
                if (os_log_type_enabled(v163, type[0]))
                {
                  v170 = *(v160 + 360);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_add_connection_for_output_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->next_connection_log_num";
                  *&buf[22] = 2048;
                  v1017 = 1;
                  *v1018 = 2048;
                  *&v1018[2] = v170;
                  v166 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_245;
                }
              }
            }

LABEL_246:
            if (v162)
            {
              free(v162);
            }

            LODWORD(v158) = -1;
            v7 = v160;
            *(v160 + 360) = -1;
LABEL_249:
            *(v32 + 860) = v158;
            if ((*(v32 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v541 = __nwlog_obj();
              if (os_log_type_enabled(v541, OS_LOG_TYPE_DEBUG))
              {
                v542 = *(v32 + 488);
                v543 = *(*(v32 + 480) + 372);
                v544 = *(v32 + 860);
                if (v542)
                {
                  LODWORD(v542) = *(v542 + 424);
                }

                v545 = *(v7 + 336);
                *buf = 136448002;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = v32 + 74;
                *&buf[22] = 2080;
                v1017 = " ";
                *v1018 = 1024;
                *&v1018[2] = v543;
                *&v1018[6] = 1024;
                *&v1018[8] = v544;
                *&v1018[12] = 1024;
                *&v1018[14] = v542;
                *&v1018[18] = 2048;
                *&v1018[20] = v32;
                *&v1018[28] = 1024;
                *&v1018[30] = v545;
                _os_log_impl(&dword_181A37000, v541, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
              }
            }

            if (*(v13 + 248))
            {
              if (*(v32 + 488))
              {
                v172 = __nwlog_obj();
                v173 = *(v32 + 488);
                *buf = 136446722;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v32;
                *&buf[22] = 2048;
                v1017 = v173;
                LODWORD(v977) = 32;
                v174 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s Connection %p already has a stream (%p)", buf, v977);
                aBlock[0] = 16;
                v1013[0] = 0;
                if (!__nwlog_fault(v174, aBlock, v1013))
                {
                  goto LABEL_285;
                }

                if (aBlock[0] == 17)
                {
                  v175 = __nwlog_obj();
                  v176 = aBlock[0];
                  if (!os_log_type_enabled(v175, aBlock[0]))
                  {
                    goto LABEL_285;
                  }

                  v177 = *(v32 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v32;
                  *&buf[22] = 2048;
                  v1017 = v177;
                  v178 = "%{public}s Connection %p already has a stream (%p)";
                }

                else if (v1013[0] == 1)
                {
                  v188 = v28;
                  v189 = v7;
                  v190 = __nw_create_backtrace_string();
                  v175 = __nwlog_obj();
                  v176 = aBlock[0];
                  v191 = os_log_type_enabled(v175, aBlock[0]);
                  if (v190)
                  {
                    if (v191)
                    {
                      v192 = *(v32 + 488);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v32;
                      *&buf[22] = 2048;
                      v1017 = v192;
                      *v1018 = 2082;
                      *&v1018[2] = v190;
                      _os_log_impl(&dword_181A37000, v175, v176, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v190);
                    v7 = v189;
                    v28 = v188;
LABEL_285:
                    if (v174)
                    {
                      free(v174);
                      if (*(v13 + 158))
                      {
                        goto LABEL_515;
                      }

                      goto LABEL_511;
                    }

LABEL_510:
                    if (*(v13 + 158))
                    {
                      goto LABEL_515;
                    }

LABEL_511:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v351 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      v352 = *(v13 + 256);
                      v353 = *(*(v13 + 248) + 372);
                      if (v352)
                      {
                        LODWORD(v352) = *(v352 + 860);
                      }

                      v354 = *(v13 + 424);
                      *buf = 136448258;
                      *&buf[4] = "nw_http1_start_new_connection_for_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v13 + 74;
                      *&buf[22] = 2080;
                      v1017 = " ";
                      *v1018 = 1024;
                      *&v1018[2] = v353;
                      *&v1018[6] = 1024;
                      *&v1018[8] = v352;
                      *&v1018[12] = 1024;
                      *&v1018[14] = v354;
                      *&v1018[18] = 2048;
                      *&v1018[20] = v32;
                      *&v1018[28] = 1024;
                      *&v1018[30] = v354;
                      *&v1018[34] = 2048;
                      *&v1018[36] = v13;
                      _os_log_impl(&dword_181A37000, v351, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                    }

LABEL_515:
                    *(v13 + 428) |= 1u;
                    v355 = nw_protocol_copy_info(v28);
                    v356 = v355;
                    if (v355)
                    {
                      v357 = _nw_array_copy_last_object(v355);
                      v358 = v357;
                      if (v357)
                      {
                        if (nw_protocol_metadata_is_tls(v357))
                        {
                          v358 = v358;
                          nw_http_connection_metadata_set_sec_metadata(*(v32 + 768), v358);
                          os_release(v358);
                          nw_protocol_connect(v28, v32);
                          goto LABEL_528;
                        }

                        v359 = 0;
LABEL_522:
                        if (v32)
                        {
                          nw_protocol_connect(v28, v32);
                          goto LABEL_524;
                        }

                        v989 = v7;
                        v546 = __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_http1_get_output_protocol";
                        LODWORD(v977) = 12;
                        v547 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v546, 16, "%{public}s called with null connection", buf, v977);
                        type[0] = OS_LOG_TYPE_ERROR;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v547, type, aBlock))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v548 = __nwlog_obj();
                            v549 = type[0];
                            if (os_log_type_enabled(v548, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v550 = "%{public}s called with null connection";
LABEL_1360:
                              _os_log_impl(&dword_181A37000, v548, v549, v550, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v737 = __nw_create_backtrace_string();
                            v548 = __nwlog_obj();
                            v549 = type[0];
                            v738 = os_log_type_enabled(v548, type[0]);
                            if (v737)
                            {
                              if (v738)
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_http1_get_output_protocol";
                                *&buf[12] = 2082;
                                *&buf[14] = v737;
                                _os_log_impl(&dword_181A37000, v548, v549, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v737);
                              goto LABEL_1361;
                            }

                            if (v738)
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v550 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1360;
                            }
                          }

                          else
                          {
                            v548 = __nwlog_obj();
                            v549 = type[0];
                            if (os_log_type_enabled(v548, type[0]))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_http1_get_output_protocol";
                              v550 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1360;
                            }
                          }
                        }

LABEL_1361:
                        if (v547)
                        {
                          free(v547);
                        }

                        nw_protocol_connect(v28, 0);
                        v7 = v989;
LABEL_524:
                        if (v358)
                        {
                          v360 = v359;
                        }

                        else
                        {
                          v360 = 1;
                        }

                        if (v360)
                        {
LABEL_529:
                          if (v356)
                          {
                            os_release(v356);
                          }

                          *(v13 + 428) &= ~0x10u;
                          v361 = *(v7 + 352);
                          *(v7 + 352) = v361 - 1;
                          if (v361)
                          {
                            return 1;
                          }

                          v362 = __nwlog_obj();
                          v363 = *(v7 + 352);
                          *buf = 136446978;
                          *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                          *&buf[12] = 2082;
                          *&buf[14] = "http1->pending_output_handler_count";
                          *&buf[22] = 2048;
                          v1017 = 1;
                          *v1018 = 2048;
                          *&v1018[2] = v363;
                          LODWORD(v977) = 42;
                          v364 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v362, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v977);
                          type[0] = OS_LOG_TYPE_ERROR;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v364, type, aBlock))
                          {
                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              goto LABEL_534;
                            }

                            if (aBlock[0] != 1)
                            {
LABEL_1140:
                              v365 = __nwlog_obj();
                              v366 = type[0];
                              if (!os_log_type_enabled(v365, type[0]))
                              {
                                goto LABEL_1145;
                              }

                              v719 = *(v7 + 352);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v719;
                              v368 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                              goto LABEL_1144;
                            }

                            v369 = __nw_create_backtrace_string();
                            v365 = __nwlog_obj();
                            v366 = type[0];
                            v370 = os_log_type_enabled(v365, type[0]);
                            if (!v369)
                            {
LABEL_1142:
                              if (!v370)
                              {
                                goto LABEL_1145;
                              }

                              v720 = *(v7 + 352);
                              *buf = 136446978;
                              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v720;
                              v368 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                              goto LABEL_1144;
                            }

                            if (v370)
                            {
                              v371 = *(v7 + 352);
                              *buf = 136447234;
                              *&buf[4] = "nw_http1_create_connection_for_stream_if_allowed";
                              *&buf[12] = 2082;
                              *&buf[14] = "http1->pending_output_handler_count";
                              *&buf[22] = 2048;
                              v1017 = 1;
                              *v1018 = 2048;
                              *&v1018[2] = v371;
                              *&v1018[10] = 2082;
                              *&v1018[12] = v369;
                              _os_log_impl(&dword_181A37000, v365, v366, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v369);
                          }

LABEL_1145:
                          if (!v364)
                          {
LABEL_1147:
                            *(v7 + 352) = 0;
                            return 1;
                          }

LABEL_1146:
                          free(v364);
                          goto LABEL_1147;
                        }

LABEL_528:
                        os_release(v358);
                        goto LABEL_529;
                      }
                    }

                    else
                    {
                      v358 = 0;
                    }

                    v359 = 1;
                    goto LABEL_522;
                  }

                  v7 = v189;
                  v28 = v188;
                  if (!v191)
                  {
                    goto LABEL_285;
                  }

                  v204 = *(v32 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v32;
                  *&buf[22] = 2048;
                  v1017 = v204;
                  v178 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                }

                else
                {
                  v175 = __nwlog_obj();
                  v176 = aBlock[0];
                  if (!os_log_type_enabled(v175, aBlock[0]))
                  {
                    goto LABEL_285;
                  }

                  v193 = *(v32 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v32;
                  *&buf[22] = 2048;
                  v1017 = v193;
                  v178 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                }

                _os_log_impl(&dword_181A37000, v175, v176, v178, buf, 0x20u);
                goto LABEL_285;
              }

              *(v13 + 256) = v32;
              *(v32 + 488) = v13;
              v179 = *(v13 + 320);
              if (v179)
              {
                v179 = os_retain(v179);
              }

              *buf = v179;
              nw::retained_ptr<nw_endpoint *>::operator=(v32 + 736, buf);
              if ((*(*(v13 + 248) + 376) & 2) == 0)
              {
LABEL_482:
                v319 = *(v13 + 32);
                if (!v319 || v319 == *(v32 + 32))
                {
LABEL_500:
                  nw_protocol_set_output_handler(v13, *(v32 + 32));
                  nw_protocol_set_input_handler(v32, *(v13 + 48));
                  *v13 = *v32;
                  v339 = *(v13 + 96);
                  v340 = *(v13 + 112);
                  v341 = *(v13 + 128);
                  *(v32 + 144) = *(v13 + 144);
                  v342 = *(v13 + 80);
                  *(v32 + 64) = *(v13 + 64);
                  *(v32 + 80) = v342;
                  *(v32 + 112) = v340;
                  *(v32 + 128) = v341;
                  *(v32 + 96) = v339;
                  *(v32 + 872) &= 0xFFD7u;
                  *(v32 + 864) = 1;
                  if ((*(v32 + 158) & 1) == 0)
                  {
                    v343 = __nwlog_obj();
                    if (os_log_type_enabled(v343, OS_LOG_TYPE_DEBUG))
                    {
                      v344 = *(v32 + 488);
                      v345 = *(*(v32 + 480) + 372);
                      v346 = *(v32 + 860);
                      if (v344)
                      {
                        LODWORD(v344) = *(v344 + 424);
                      }

                      *buf = 136447490;
                      *&buf[4] = "nw_http1_update_connection_input_state";
                      *&buf[12] = 2082;
                      *&buf[14] = v32 + 74;
                      *&buf[22] = 2080;
                      v1017 = " ";
                      *v1018 = 1024;
                      *&v1018[2] = v345;
                      *&v1018[6] = 1024;
                      *&v1018[8] = v346;
                      *&v1018[12] = 1024;
                      *&v1018[14] = v344;
                      _os_log_impl(&dword_181A37000, v343, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                    }
                  }

                  if ((*(v13 + 158) & 1) == 0)
                  {
                    v347 = __nwlog_obj();
                    if (os_log_type_enabled(v347, OS_LOG_TYPE_INFO))
                    {
                      v348 = *(v13 + 256);
                      v349 = *(*(v13 + 248) + 372);
                      if (v348)
                      {
                        LODWORD(v348) = *(v348 + 860);
                      }

                      v350 = *(v13 + 424);
                      *buf = 136448002;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v13 + 74;
                      *&buf[22] = 2080;
                      v1017 = " ";
                      *v1018 = 1024;
                      *&v1018[2] = v349;
                      *&v1018[6] = 1024;
                      *&v1018[8] = v348;
                      *&v1018[12] = 1024;
                      *&v1018[14] = v350;
                      *&v1018[18] = 2048;
                      *&v1018[20] = v13;
                      *&v1018[28] = 2048;
                      *&v1018[30] = v32;
                      _os_log_impl(&dword_181A37000, v347, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                    }
                  }

                  goto LABEL_510;
                }

                v320 = __nwlog_obj();
                v321 = *(v13 + 32);
                v322 = *(v32 + 32);
                *buf = 136446978;
                *&buf[4] = "nw_http1_stream_associate_with_connection";
                *&buf[12] = 2048;
                *&buf[14] = v321;
                *&buf[22] = 2048;
                v1017 = v13;
                *v1018 = 2048;
                *&v1018[2] = v322;
                LODWORD(v977) = 42;
                v323 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v320, 16, "%{public}s overriding existing output handler %p on http1 stream %p to %p", buf, v977);
                aBlock[0] = 16;
                v1013[0] = 0;
                if (__nwlog_fault(v323, aBlock, v1013))
                {
                  if (aBlock[0] == 17)
                  {
                    v324 = __nwlog_obj();
                    v325 = aBlock[0];
                    if (!os_log_type_enabled(v324, aBlock[0]))
                    {
                      goto LABEL_498;
                    }

                    v326 = *(v13 + 32);
                    v327 = *(v32 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v326;
                    *&buf[22] = 2048;
                    v1017 = v13;
                    *v1018 = 2048;
                    *&v1018[2] = v327;
                    v328 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                    goto LABEL_497;
                  }

                  if (v1013[0] != 1)
                  {
                    v324 = __nwlog_obj();
                    v325 = aBlock[0];
                    if (!os_log_type_enabled(v324, aBlock[0]))
                    {
                      goto LABEL_498;
                    }

                    v335 = *(v13 + 32);
                    v336 = *(v32 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v335;
                    *&buf[22] = 2048;
                    v1017 = v13;
                    *v1018 = 2048;
                    *&v1018[2] = v336;
                    v328 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                    goto LABEL_497;
                  }

                  v329 = v28;
                  v330 = v7;
                  v331 = __nw_create_backtrace_string();
                  v324 = __nwlog_obj();
                  v325 = aBlock[0];
                  v332 = os_log_type_enabled(v324, aBlock[0]);
                  if (v331)
                  {
                    if (v332)
                    {
                      v333 = *(v13 + 32);
                      v334 = *(v32 + 32);
                      *buf = 136447234;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v333;
                      *&buf[22] = 2048;
                      v1017 = v13;
                      *v1018 = 2048;
                      *&v1018[2] = v334;
                      *&v1018[10] = 2082;
                      *&v1018[12] = v331;
                      _os_log_impl(&dword_181A37000, v324, v325, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v331);
                    v7 = v330;
                    v28 = v329;
                    goto LABEL_498;
                  }

                  v7 = v330;
                  v28 = v329;
                  if (v332)
                  {
                    v337 = *(v13 + 32);
                    v338 = *(v32 + 32);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v337;
                    *&buf[22] = 2048;
                    v1017 = v13;
                    *v1018 = 2048;
                    *&v1018[2] = v338;
                    v328 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_497:
                    _os_log_impl(&dword_181A37000, v324, v325, v328, buf, 0x2Au);
                  }
                }

LABEL_498:
                if (v323)
                {
                  free(v323);
                }

                goto LABEL_500;
              }

              v180 = nw_parameters_copy_default_protocol_stack(*(v13 + 320));
              *aBlock = 0;
              *&aBlock[8] = aBlock;
              *&aBlock[16] = 0x2000000000;
              LOBYTE(v1009) = 0;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3802000000;
              v1017 = __Block_byref_object_copy__42960;
              *v1018 = __Block_byref_object_dispose__42961;
              *&v1018[8] = 0;
              v1018[16] |= 1u;
              *type = MEMORY[0x1E69E9820];
              v1002 = 0x40000000;
              v1003 = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
              v1004 = &unk_1E6A32930;
              v1005 = aBlock;
              v1006 = buf;
              v1007 = v13;
              nw_protocol_stack_iterate_application_protocols(v180, type);
              if (*(*&buf[8] + 40))
              {
                v181 = v32;
                while (1)
                {
                  v181 = *(v181 + 32);
                  if (!v181)
                  {
                    break;
                  }

                  if (nw_protocol_is_tls_over_stream(v181))
                  {
                    v182 = v28;
                    v183 = v7;
                    v184 = *(*&buf[8] + 40);
                    v185 = nw_protocol_boringssl_copy_definition();
                    nw_parameters_set_protocol_instance(v184, v186, v181);
                    if (v185)
                    {
                      os_release(v185);
                    }

                    v187 = 1;
                    v7 = v183;
                    v28 = v182;
                    goto LABEL_476;
                  }
                }

                v988 = v7;
                v199 = __nwlog_obj();
                *v1013 = 136446210;
                *&v1013[4] = "nw_http1_stream_associate_with_connection";
                LODWORD(v977) = 12;
                v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s tls should have been in the stack but could not find it", v1013, v977);
                v996[0] = OS_LOG_TYPE_ERROR;
                v1000 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v200, v996, &v1000))
                {
                  goto LABEL_472;
                }

                if (v996[0] == OS_LOG_TYPE_FAULT)
                {
                  v201 = __nwlog_obj();
                  v202 = v996[0];
                  if (os_log_type_enabled(v201, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v203 = "%{public}s tls should have been in the stack but could not find it";
LABEL_471:
                    _os_log_impl(&dword_181A37000, v201, v202, v203, v1013, 0xCu);
                  }
                }

                else if (v1000 == OS_LOG_TYPE_INFO)
                {
                  v216 = __nw_create_backtrace_string();
                  v201 = __nwlog_obj();
                  v202 = v996[0];
                  v217 = os_log_type_enabled(v201, v996[0]);
                  if (v216)
                  {
                    if (v217)
                    {
                      *v1013 = 136446466;
                      *&v1013[4] = "nw_http1_stream_associate_with_connection";
                      *&v1013[12] = 2082;
                      *&v1013[14] = v216;
                      _os_log_impl(&dword_181A37000, v201, v202, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1013, 0x16u);
                    }

                    free(v216);
                    goto LABEL_472;
                  }

                  if (v217)
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v203 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                    goto LABEL_471;
                  }
                }

                else
                {
                  v201 = __nwlog_obj();
                  v202 = v996[0];
                  if (os_log_type_enabled(v201, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v203 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                    goto LABEL_471;
                  }
                }

LABEL_472:
                if (v200)
                {
                  free(v200);
                }

                v187 = 0;
LABEL_475:
                v7 = v988;
LABEL_476:
                _Block_object_dispose(buf, 8);
                if ((v1018[16] & 1) != 0 && *&v1018[8])
                {
                  os_release(*&v1018[8]);
                }

                _Block_object_dispose(aBlock, 8);
                if (v180)
                {
                  os_release(v180);
                }

                if (!v187)
                {
                  goto LABEL_510;
                }

                goto LABEL_482;
              }

              v988 = v7;
              v194 = __nwlog_obj();
              *v1013 = 136446210;
              *&v1013[4] = "nw_http1_stream_associate_with_connection";
              LODWORD(v977) = 12;
              v195 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v194, 16, "%{public}s unable to find tls options", v1013, v977);
              v996[0] = OS_LOG_TYPE_ERROR;
              v1000 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v195, v996, &v1000))
              {
                if (v996[0] == OS_LOG_TYPE_FAULT)
                {
                  v196 = __nwlog_obj();
                  v197 = v996[0];
                  if (os_log_type_enabled(v196, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v198 = "%{public}s unable to find tls options";
LABEL_450:
                    _os_log_impl(&dword_181A37000, v196, v197, v198, v1013, 0xCu);
                  }
                }

                else if (v1000 == OS_LOG_TYPE_INFO)
                {
                  v210 = __nw_create_backtrace_string();
                  v196 = __nwlog_obj();
                  v197 = v996[0];
                  v211 = os_log_type_enabled(v196, v996[0]);
                  if (v210)
                  {
                    if (v211)
                    {
                      *v1013 = 136446466;
                      *&v1013[4] = "nw_http1_stream_associate_with_connection";
                      *&v1013[12] = 2082;
                      *&v1013[14] = v210;
                      _os_log_impl(&dword_181A37000, v196, v197, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1013, 0x16u);
                    }

                    free(v210);
                    goto LABEL_451;
                  }

                  if (v211)
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v198 = "%{public}s unable to find tls options, no backtrace";
                    goto LABEL_450;
                  }
                }

                else
                {
                  v196 = __nwlog_obj();
                  v197 = v996[0];
                  if (os_log_type_enabled(v196, v996[0]))
                  {
                    *v1013 = 136446210;
                    *&v1013[4] = "nw_http1_stream_associate_with_connection";
                    v198 = "%{public}s unable to find tls options, backtrace limit exceeded";
                    goto LABEL_450;
                  }
                }
              }

LABEL_451:
              if (v195)
              {
                free(v195);
              }

              v187 = 1;
              goto LABEL_475;
            }

            v507 = v7;
            v532 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_associate_with_connection";
            LODWORD(v977) = 12;
            v533 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v532, 16, "%{public}s called with null http1_stream->protocol_http1", buf, v977);
            aBlock[0] = 16;
            v1013[0] = 0;
            if (!__nwlog_fault(v533, aBlock, v1013))
            {
              goto LABEL_1356;
            }

            if (aBlock[0] == 17)
            {
              v534 = __nwlog_obj();
              v535 = aBlock[0];
              if (!os_log_type_enabled(v534, aBlock[0]))
              {
                goto LABEL_1356;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v536 = "%{public}s called with null http1_stream->protocol_http1";
            }

            else if (v1013[0] == 1)
            {
              v731 = __nw_create_backtrace_string();
              v534 = __nwlog_obj();
              v535 = aBlock[0];
              v732 = os_log_type_enabled(v534, aBlock[0]);
              if (v731)
              {
                if (v732)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v731;
                  _os_log_impl(&dword_181A37000, v534, v535, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v731);
                goto LABEL_1356;
              }

              if (!v732)
              {
LABEL_1356:
                if (v533)
                {
                  free(v533);
                }

                goto LABEL_1338;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v536 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
            }

            else
            {
              v534 = __nwlog_obj();
              v535 = aBlock[0];
              if (!os_log_type_enabled(v534, aBlock[0]))
              {
                goto LABEL_1356;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v536 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v534, v535, v536, buf, 0xCu);
            goto LABEL_1356;
          }

          v526 = v7;
          v527 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_set_up_association";
          LODWORD(v977) = 12;
          v528 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v527, 16, "%{public}s called with null parameters", buf, v977);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (__nwlog_fault(v528, type, aBlock))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v529 = __nwlog_obj();
              v530 = type[0];
              if (!os_log_type_enabled(v529, type[0]))
              {
                goto LABEL_1349;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              v531 = "%{public}s called with null parameters";
LABEL_1348:
              _os_log_impl(&dword_181A37000, v529, v530, v531, buf, 0xCu);
              goto LABEL_1349;
            }

            if (aBlock[0] != 1)
            {
              v529 = __nwlog_obj();
              v530 = type[0];
              if (!os_log_type_enabled(v529, type[0]))
              {
                goto LABEL_1349;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              v531 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1348;
            }

            v729 = __nw_create_backtrace_string();
            v529 = __nwlog_obj();
            v530 = type[0];
            v730 = os_log_type_enabled(v529, type[0]);
            if (!v729)
            {
              if (!v730)
              {
                goto LABEL_1349;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              v531 = "%{public}s called with null parameters, no backtrace";
              goto LABEL_1348;
            }

            if (v730)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_set_up_association";
              *&buf[12] = 2082;
              *&buf[14] = v729;
              _os_log_impl(&dword_181A37000, v529, v530, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v729);
          }

LABEL_1349:
          if (v528)
          {
            free(v528);
          }

          v7 = v526;
          v109 = *(v32 + 512);
          if (v109)
          {
            goto LABEL_163;
          }

          goto LABEL_165;
        }

        v507 = v7;
        v519 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_create";
        v509 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v519, 16, "%{public}s called with null parameters", buf, 12);
        v1013[0] = 16;
        v996[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v509, v1013, v996))
        {
          if (v1013[0] == 17)
          {
            v510 = __nwlog_obj();
            v511 = v1013[0];
            if (!os_log_type_enabled(v510, v1013[0]))
            {
              goto LABEL_1303;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v512 = "%{public}s called with null parameters";
            goto LABEL_1302;
          }

          if (v996[0] != OS_LOG_TYPE_INFO)
          {
            v510 = __nwlog_obj();
            v511 = v1013[0];
            if (!os_log_type_enabled(v510, v1013[0]))
            {
              goto LABEL_1303;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v512 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_1302;
          }

          v723 = __nw_create_backtrace_string();
          v510 = __nwlog_obj();
          v511 = v1013[0];
          v726 = os_log_type_enabled(v510, v1013[0]);
          if (!v723)
          {
            if (!v726)
            {
              goto LABEL_1303;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_create";
            v512 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_1302;
          }

          if (v726)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_create";
            *&buf[12] = 2082;
            *&buf[14] = v723;
            v725 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
            goto LABEL_1162;
          }

          goto LABEL_1163;
        }

LABEL_1303:
        if (!v509)
        {
          goto LABEL_1305;
        }

        goto LABEL_1304;
      }

      v507 = v7;
      v518 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v509 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v518, 16, "%{public}s called with null endpoint", buf, 12);
      v1013[0] = 16;
      v996[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v509, v1013, v996))
      {
        goto LABEL_1303;
      }

      if (v1013[0] != 17)
      {
        if (v996[0] != OS_LOG_TYPE_INFO)
        {
          v510 = __nwlog_obj();
          v511 = v1013[0];
          if (!os_log_type_enabled(v510, v1013[0]))
          {
            goto LABEL_1303;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v512 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_1302;
        }

        v723 = __nw_create_backtrace_string();
        v510 = __nwlog_obj();
        v511 = v1013[0];
        v724 = os_log_type_enabled(v510, v1013[0]);
        if (!v723)
        {
          if (!v724)
          {
            goto LABEL_1303;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v512 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_1302;
        }

        if (v724)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_create";
          *&buf[12] = 2082;
          *&buf[14] = v723;
          v725 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1162:
          _os_log_impl(&dword_181A37000, v510, v511, v725, buf, 0x16u);
        }

LABEL_1163:
        free(v723);
        if (!v509)
        {
LABEL_1305:
          v805 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_add_connection_for_output_handler";
          LODWORD(v980) = 12;
          v806 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v805, 16, "%{public}s called with null http1_connection", buf, v980);
          type[0] = OS_LOG_TYPE_ERROR;
          aBlock[0] = 0;
          if (!__nwlog_fault(v806, type, aBlock))
          {
            goto LABEL_1319;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v807 = __nwlog_obj();
            v808 = type[0];
            if (!os_log_type_enabled(v807, type[0]))
            {
              goto LABEL_1319;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v809 = "%{public}s called with null http1_connection";
          }

          else if (aBlock[0] == 1)
          {
            v810 = __nw_create_backtrace_string();
            v807 = __nwlog_obj();
            v808 = type[0];
            v811 = os_log_type_enabled(v807, type[0]);
            if (v810)
            {
              if (v811)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_add_connection_for_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = v810;
                _os_log_impl(&dword_181A37000, v807, v808, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v810);
LABEL_1319:
              if (v806)
              {
                free(v806);
              }

              v812 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              LODWORD(v982) = 12;
              v813 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v812, 16, "%{public}s called with null http1_connection", buf, v982);
              aBlock[0] = 16;
              v1013[0] = 0;
              if (!__nwlog_fault(v813, aBlock, v1013))
              {
                goto LABEL_1335;
              }

              if (aBlock[0] == 17)
              {
                v814 = __nwlog_obj();
                v815 = aBlock[0];
                if (os_log_type_enabled(v814, aBlock[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v816 = "%{public}s called with null http1_connection";
LABEL_1334:
                  _os_log_impl(&dword_181A37000, v814, v815, v816, buf, 0xCu);
                }
              }

              else if (v1013[0] == 1)
              {
                v817 = __nw_create_backtrace_string();
                v814 = __nwlog_obj();
                v815 = aBlock[0];
                v818 = os_log_type_enabled(v814, aBlock[0]);
                if (v817)
                {
                  if (v818)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2082;
                    *&buf[14] = v817;
                    _os_log_impl(&dword_181A37000, v814, v815, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v817);
                  goto LABEL_1335;
                }

                if (v818)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v816 = "%{public}s called with null http1_connection, no backtrace";
                  goto LABEL_1334;
                }
              }

              else
              {
                v814 = __nwlog_obj();
                v815 = aBlock[0];
                if (os_log_type_enabled(v814, aBlock[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  v816 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  goto LABEL_1334;
                }
              }

LABEL_1335:
              if (v813)
              {
                free(v813);
              }

              v32 = 0;
LABEL_1338:
              v7 = v507;
              if (*(v13 + 158))
              {
                goto LABEL_515;
              }

              goto LABEL_511;
            }

            if (!v811)
            {
              goto LABEL_1319;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v809 = "%{public}s called with null http1_connection, no backtrace";
          }

          else
          {
            v807 = __nwlog_obj();
            v808 = type[0];
            if (!os_log_type_enabled(v807, type[0]))
            {
              goto LABEL_1319;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_add_connection_for_output_handler";
            v809 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v807, v808, v809, buf, 0xCu);
          goto LABEL_1319;
        }

LABEL_1304:
        free(v509);
        goto LABEL_1305;
      }

      v510 = __nwlog_obj();
      v511 = v1013[0];
      if (!os_log_type_enabled(v510, v1013[0]))
      {
        goto LABEL_1303;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v512 = "%{public}s called with null endpoint";
    }

    else
    {
      v507 = v7;
      v508 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v509 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v508, 16, "%{public}s called with null output_handler", buf, 12);
      v1013[0] = 16;
      v996[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v509, v1013, v996))
      {
        goto LABEL_1303;
      }

      if (v1013[0] != 17)
      {
        if (v996[0] != OS_LOG_TYPE_INFO)
        {
          v510 = __nwlog_obj();
          v511 = v1013[0];
          if (!os_log_type_enabled(v510, v1013[0]))
          {
            goto LABEL_1303;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v512 = "%{public}s called with null output_handler, backtrace limit exceeded";
          goto LABEL_1302;
        }

        v721 = __nw_create_backtrace_string();
        v510 = __nwlog_obj();
        v511 = v1013[0];
        v722 = os_log_type_enabled(v510, v1013[0]);
        if (!v721)
        {
          if (!v722)
          {
            goto LABEL_1303;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_create";
          v512 = "%{public}s called with null output_handler, no backtrace";
          goto LABEL_1302;
        }

        if (v722)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_connection_create";
          *&buf[12] = 2082;
          *&buf[14] = v721;
          _os_log_impl(&dword_181A37000, v510, v511, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v721);
        goto LABEL_1303;
      }

      v510 = __nwlog_obj();
      v511 = v1013[0];
      if (!os_log_type_enabled(v510, v1013[0]))
      {
        goto LABEL_1303;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_create";
      v512 = "%{public}s called with null output_handler";
    }

LABEL_1302:
    _os_log_impl(&dword_181A37000, v510, v511, v512, buf, 0xCu);
    goto LABEL_1303;
  }

LABEL_1044:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http1_connect";
  LODWORD(v977) = 12;
  v270 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null http1_stream", buf, v977);
  type[0] = OS_LOG_TYPE_ERROR;
  aBlock[0] = 0;
  if (!__nwlog_fault(v270, type, aBlock))
  {
    goto LABEL_1058;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (aBlock[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v271 = gLogObj;
      v272 = type[0];
      if (os_log_type_enabled(gLogObj, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_connect";
        v273 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_1056;
      }

      goto LABEL_1058;
    }

    v665 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v666 = gLogObj;
    v667 = type[0];
    v670 = os_log_type_enabled(gLogObj, type[0]);
    if (v665)
    {
      if (v670)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_connect";
        *&buf[12] = 2082;
        *&buf[14] = v665;
        v669 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        goto LABEL_1052;
      }

      goto LABEL_1053;
    }

    if (!v670)
    {
      goto LABEL_1058;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connect";
    v273 = "%{public}s called with null http1_stream, no backtrace";
    goto LABEL_1063;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v271 = gLogObj;
  v272 = type[0];
  if (os_log_type_enabled(gLogObj, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_connect";
    v273 = "%{public}s called with null http1_stream";
    goto LABEL_1056;
  }

LABEL_1058:
  if (v270)
  {
    free(v270);
  }

  return 0;
}