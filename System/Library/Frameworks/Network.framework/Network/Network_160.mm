void ___ZL13get_log_levelv_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  getenv("CFNETWORK_DIAGNOSTICS");
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AppleCFNetworkDiagnosticLogging", @"Apple Global Domain", &keyExistsAndHasValidFormat);
  v1 = AppIntegerValue;
  if ((AppIntegerValue - 1) >= 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = AppIntegerValue;
  }

  get_log_level(void)::diag_level = v2;
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v3 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = v1;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "Diagnostic level set to %d", buf, 8u);
  }
}

void nw_oblivious_http_metadata_set_receive_aead_key_and_nonce(void *a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  if ((nw_protocol_metadata_is_oblivious_http(a1) & 1) == 0)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata)", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v51 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v18, type, &v51))
    {
      goto LABEL_100;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v51 != OS_LOG_TYPE_INFO)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (!os_log_type_enabled(v19, type[0]))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
        v21 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), backtrace limit exceeded";
        goto LABEL_99;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type[0];
      v35 = os_log_type_enabled(v19, type[0]);
      if (!backtrace_string)
      {
        if (!v35)
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
        v21 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), no backtrace";
        goto LABEL_99;
      }

      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_100:
      if (v18)
      {
        goto LABEL_101;
      }

      return;
    }

    v19 = __nwlog_obj();
    v20 = type[0];
    if (!os_log_type_enabled(v19, type[0]))
    {
      goto LABEL_100;
    }

    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v21 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata)";
    goto LABEL_99;
  }

  if (!a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null aead_nonce", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v51 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v18, type, &v51))
    {
      goto LABEL_100;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v51 != OS_LOG_TYPE_INFO)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (!os_log_type_enabled(v19, type[0]))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
        v21 = "%{public}s called with null aead_nonce, backtrace limit exceeded";
        goto LABEL_99;
      }

      v36 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type[0];
      v37 = os_log_type_enabled(v19, type[0]);
      if (!v36)
      {
        if (!v37)
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
        v21 = "%{public}s called with null aead_nonce, no backtrace";
        goto LABEL_99;
      }

      if (!v37)
      {
        goto LABEL_70;
      }

      *buf = 136446466;
      *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      v38 = "%{public}s called with null aead_nonce, dumping backtrace:%{public}s";
      goto LABEL_69;
    }

    v19 = __nwlog_obj();
    v20 = type[0];
    if (!os_log_type_enabled(v19, type[0]))
    {
      goto LABEL_100;
    }

    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v21 = "%{public}s called with null aead_nonce";
LABEL_99:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_100;
  }

  if (!a3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null aead_nonce_length", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v51 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v18, type, &v51))
    {
      goto LABEL_100;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v51 != OS_LOG_TYPE_INFO)
      {
        v19 = __nwlog_obj();
        v20 = type[0];
        if (!os_log_type_enabled(v19, type[0]))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
        v21 = "%{public}s called with null aead_nonce_length, backtrace limit exceeded";
        goto LABEL_99;
      }

      v36 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type[0];
      v39 = os_log_type_enabled(v19, type[0]);
      if (!v36)
      {
        if (!v39)
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
        v21 = "%{public}s called with null aead_nonce_length, no backtrace";
        goto LABEL_99;
      }

      if (!v39)
      {
        goto LABEL_70;
      }

      *buf = 136446466;
      *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
      *&buf[12] = 2082;
      *&buf[14] = v36;
      v38 = "%{public}s called with null aead_nonce_length, dumping backtrace:%{public}s";
      goto LABEL_69;
    }

    v19 = __nwlog_obj();
    v20 = type[0];
    if (!os_log_type_enabled(v19, type[0]))
    {
      goto LABEL_100;
    }

    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v21 = "%{public}s called with null aead_nonce_length";
    goto LABEL_99;
  }

  if (!a4)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null aead_key", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v51 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v18, type, &v51))
    {
      goto LABEL_100;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (!os_log_type_enabled(v19, type[0]))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
      v21 = "%{public}s called with null aead_key";
      goto LABEL_99;
    }

    if (v51 != OS_LOG_TYPE_INFO)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (!os_log_type_enabled(v19, type[0]))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
      v21 = "%{public}s called with null aead_key, backtrace limit exceeded";
      goto LABEL_99;
    }

    v36 = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type[0];
    v40 = os_log_type_enabled(v19, type[0]);
    if (!v36)
    {
      if (!v40)
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
      v21 = "%{public}s called with null aead_key, no backtrace";
      goto LABEL_99;
    }

    if (!v40)
    {
      goto LABEL_70;
    }

    *buf = 136446466;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    *&buf[12] = 2082;
    *&buf[14] = v36;
    v38 = "%{public}s called with null aead_key, dumping backtrace:%{public}s";
LABEL_69:
    _os_log_impl(&dword_181A37000, v19, v20, v38, buf, 0x16u);
    goto LABEL_70;
  }

  if (a5)
  {
    if (!(a5 + a3))
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      *buf = 136446210;
      *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
      v28 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s strict_malloc called with size 0", buf, 12);
      if (__nwlog_should_abort(v28))
      {
        goto LABEL_108;
      }

      free(v28);
    }

    v10 = malloc_type_malloc(a5 + a3, 0xBB01FB9uLL);
    if (v10)
    {
      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    LODWORD(v44) = 12;
    v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strict allocator failed", buf, v44);
    if (!__nwlog_should_abort(v13))
    {
      free(v13);
LABEL_13:
      memcpy(v10, a2, a3);
      memcpy(&v10[a3], a4, a5);
      *type = 0;
      v47 = type;
      v48 = 0x2000000000;
      v49 = xpc_data_create(v10, a5 + a3);
      if (v10)
      {
        free(v10);
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 0x40000000;
      v45[2] = __nw_oblivious_http_metadata_set_receive_aead_key_and_nonce_block_invoke;
      v45[3] = &unk_1E6A30478;
      v45[4] = type;
      v14 = a1;
      v15 = v45;
      if (nw_protocol_metadata_is_oblivious_http(v14))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_oblivious_http_access_context_handle_block_invoke;
        v53 = &unk_1E6A3AA50;
        v16 = v14;
        v54 = v16;
        v55 = v15;
        nw_protocol_metadata_access_handle(v16, buf);

LABEL_17:
        _Block_object_dispose(type, 8);
        return;
      }

      v29 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_oblivious_http_access_context_handle";
      LODWORD(v44) = 12;
      v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata)", buf, v44);

      v51 = OS_LOG_TYPE_ERROR;
      v50 = 0;
      if (!__nwlog_fault(v30, &v51, &v50))
      {
LABEL_106:
        if (v30)
        {
          free(v30);
        }

        goto LABEL_17;
      }

      if (v51 == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v51;
        if (os_log_type_enabled(v31, v51))
        {
          *buf = 136446210;
          *&buf[4] = "nw_oblivious_http_access_context_handle";
          v33 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata)";
LABEL_104:
          _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
        }
      }

      else
      {
        if (v50 == 1)
        {
          v42 = __nw_create_backtrace_string();
          v31 = __nwlog_obj();
          v32 = v51;
          v43 = os_log_type_enabled(v31, v51);
          if (v42)
          {
            if (v43)
            {
              *buf = 136446466;
              *&buf[4] = "nw_oblivious_http_access_context_handle";
              *&buf[12] = 2082;
              *&buf[14] = v42;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v42);
            goto LABEL_106;
          }

          if (!v43)
          {
            goto LABEL_105;
          }

          *buf = 136446210;
          *&buf[4] = "nw_oblivious_http_access_context_handle";
          v33 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), no backtrace";
          goto LABEL_104;
        }

        v31 = __nwlog_obj();
        v32 = v51;
        if (os_log_type_enabled(v31, v51))
        {
          *buf = 136446210;
          *&buf[4] = "nw_oblivious_http_access_context_handle";
          v33 = "%{public}s called with null nw_protocol_metadata_is_oblivious_http(metadata), backtrace limit exceeded";
          goto LABEL_104;
        }
      }

LABEL_105:

      goto LABEL_106;
    }

LABEL_108:
    __break(1u);
    return;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null aead_key_length", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v51 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v18, type, &v51))
  {
    goto LABEL_100;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v19 = __nwlog_obj();
    v20 = type[0];
    if (!os_log_type_enabled(v19, type[0]))
    {
      goto LABEL_100;
    }

    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v21 = "%{public}s called with null aead_key_length";
    goto LABEL_99;
  }

  if (v51 != OS_LOG_TYPE_INFO)
  {
    v19 = __nwlog_obj();
    v20 = type[0];
    if (!os_log_type_enabled(v19, type[0]))
    {
      goto LABEL_100;
    }

    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v21 = "%{public}s called with null aead_key_length, backtrace limit exceeded";
    goto LABEL_99;
  }

  v36 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v20 = type[0];
  v41 = os_log_type_enabled(v19, type[0]);
  if (!v36)
  {
    if (!v41)
    {
      goto LABEL_100;
    }

    *buf = 136446210;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    v21 = "%{public}s called with null aead_key_length, no backtrace";
    goto LABEL_99;
  }

  if (v41)
  {
    *buf = 136446466;
    *&buf[4] = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce";
    *&buf[12] = 2082;
    *&buf[14] = v36;
    v38 = "%{public}s called with null aead_key_length, dumping backtrace:%{public}s";
    goto LABEL_69;
  }

LABEL_70:
  free(v36);
  if (v18)
  {
LABEL_101:
    free(v18);
  }
}

void __nw_oblivious_http_metadata_set_receive_aead_key_and_nonce_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (a2 && a3)
  {
    *(a3 + 96) = v3;
    if ((*(a2 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v7 = 136446722;
        v8 = "nw_oblivious_http_metadata_set_receive_aead_key_and_nonce_block_invoke";
        v9 = 2082;
        v10 = a2 + 357;
        v11 = 2080;
        v12 = " ";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sReceived updated keys for receive-only context", &v7, 0x20u);
      }
    }

    nw_protocol_ohttp_process_response(a2);
  }

  else if (v3)
  {
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void nw_protocol_ohttp_process_response(uint64_t a1)
{
  v248 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 320) || (*(a1 + 356) & 0x12) == 0)
  {

    nw_ohttp_mark_failed_with_error(a1, 94);
    return;
  }

  if (!*(a1 + 336))
  {
    return;
  }

  v2 = (a1 + 336);
  *buf = 0;
  nw_frame_array_get_frame_count((a1 + 336), 1, buf);
  v3 = *buf;
  v4 = *v2;
  v231 = a1 + 336;
  if (nw_frame_unclaimed_length(*v2) == v3)
  {
    v5 = nw_frame_unclaimed_bytes(v4, 0);
    v6 = 0;
    if ((*(a1 + 356) & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!v3)
    {
      v188 = __nwlog_obj();
      if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
      {
        v189 = 3;
      }

      else
      {
        v189 = 2;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      v190 = _os_log_send_and_compose_impl(v189, 0, 0, 0, &dword_181A37000, v188, 16, "%{public}s strict_calloc called with size 0", buf, 12);
      if (__nwlog_should_abort(v190))
      {
        goto LABEL_488;
      }

      free(v190);
      v2 = (a1 + 336);
    }

    v5 = malloc_type_calloc(1uLL, v3, 0x3AA7D117uLL);
    if (!v5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      v245 = v3;
      LODWORD(v221) = 32;
      v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v221);
      if (__nwlog_should_abort(v20))
      {
        goto LABEL_488;
      }

      free(v20);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v245 = 0;
    v234[0] = MEMORY[0x1E69E9820];
    v234[1] = 0x40000000;
    v235 = ___ZL34nw_protocol_ohttp_process_responseP17nw_protocol_ohttp_block_invoke;
    v236 = &unk_1E6A304E0;
    v237 = buf;
    v238 = v5;
    v21 = *v2;
    do
    {
      if (!v21)
      {
        break;
      }

      v22 = *(v21 + 32);
      v23 = (v235)(v234);
      v21 = v22;
    }

    while ((v23 & 1) != 0);
    _Block_object_dispose(buf, 8);
    v6 = v5;
    if ((*(a1 + 356) & 2) == 0)
    {
LABEL_6:
      v7 = *(a1 + 288);
      if (v7)
      {
        v240 = 0;
        if ((*(a1 + 300) & 2) != 0)
        {
          length = xpc_data_get_length(*(a1 + 160));
          bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 160));
          cchpke_params_x25519_AESGCM128_HKDF_SHA256();
          v149 = cchpke_params_sizeof_aead_nonce();
          v150 = cchpke_params_sizeof_aead_key();
          if (length != v150 + v149)
          {
            if ((*(a1 + 356) & 1) == 0)
            {
              v153 = __nwlog_obj();
              if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_ohttp_process_response";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 357;
                *&buf[22] = 2080;
                v245 = " ";
                _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sReceive AEAD nonce and key are not correct lengths", buf, 0x20u);
              }
            }

            if (gLogDatapath == 1)
            {
              v216 = __nwlog_obj();
              if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                _os_log_impl(&dword_181A37000, v216, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              }
            }

            nw_frame_array_finalize(v231, 1, 1);
            v152 = 22;
            if (!v6)
            {
              goto LABEL_285;
            }

            goto LABEL_283;
          }

          v8 = nw_http_decrypt_oblivious_aead_response(v5, v3, bytes_ptr, v149, bytes_ptr + v149, v150, &v240);
          v2 = (a1 + 336);
          if (v8)
          {
LABEL_9:
            v9 = v240;
            *(a1 + 232) = v8;
            *(a1 + 240) = v9;
            if ((*(a1 + 356) & 1) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v8 = nw_http_decrypt_oblivious_response(v5, v3, v7, *(a1 + 184), *(a1 + 192), *(a1 + 168), *(a1 + 176), &v240);
          if (v8)
          {
            goto LABEL_9;
          }
        }

        if ((*(a1 + 356) & 1) == 0)
        {
          v151 = __nwlog_obj();
          if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_ohttp_process_response";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 357;
            *&buf[22] = 2080;
            v245 = " ";
            _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to decrypt oblivious response", buf, 0x20u);
          }
        }

        if (gLogDatapath == 1)
        {
          v213 = __nwlog_obj();
          if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_temp_frame_array";
            _os_log_impl(&dword_181A37000, v213, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
          }
        }

        nw_frame_array_finalize(v2, 1, 1);
        v152 = 80;
        if (!v6)
        {
LABEL_285:
          nw_ohttp_mark_failed_with_error(a1, v152);
          return;
        }

LABEL_283:
        v154 = v6;
LABEL_284:
        free(v154);
        goto LABEL_285;
      }

      if (v5)
      {
        if (v3)
        {
          v136 = *(a1 + 184);
          if (v136)
          {
            v137 = *(a1 + 192);
            if (v137)
            {
              v138 = *(a1 + 168);
              if (v138)
              {
                v139 = *(a1 + 176);
                if (v139)
                {
                  v240 = 0;
                  v140 = nw_http_decrypt_oblivious_response(v5, v3, "message/bhttp", v136, v137, v138, v139, &v240);
                  if (v140)
                  {
                    if (v240)
                    {
                      v239 = 0;
                      v141 = v140;
                      v142 = nw_http_copy_metadata_from_binary_message(v140, v240, &v239, 0);
                      if (!v142)
                      {
                        v157 = __nwlog_obj();
                        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_http_create_message_from_oblivious_response";
                          _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_ERROR, "%{public}s Failed to extract HTTP metadata", buf, 0xCu);
                        }

                        free(v141);
                        goto LABEL_327;
                      }

                      v143 = v142;
                      v144 = v239;
                      if (!v239)
                      {
                        free(v141);
                        v165 = 0;
                        v145 = 0;
                        goto LABEL_322;
                      }

                      v145 = malloc_type_calloc(1uLL, v239, 0x66258452uLL);
                      if (v145)
                      {
                        v146 = nw_http_fillout_body_from_binary_message(v141, v240, v145, v239, &v239);
                        free(v141);
                        if (!v146)
                        {
                          free(v145);
LABEL_324:
                          os_release(v143);
                          v155 = __nwlog_obj();
                          if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_327;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_http_create_message_from_oblivious_response";
                          v156 = "%{public}s Failed to fill out body content";
                          goto LABEL_326;
                        }

                        goto LABEL_321;
                      }

                      v172 = __nwlog_obj();
                      v173 = os_log_type_enabled(v172, OS_LOG_TYPE_ERROR);
                      *buf = 136446722;
                      *&buf[4] = "nw_http_create_message_from_oblivious_response";
                      if (v173)
                      {
                        v174 = 3;
                      }

                      else
                      {
                        v174 = 2;
                      }

                      *&buf[12] = 2048;
                      *&buf[14] = 1;
                      *&buf[22] = 2048;
                      v245 = v144;
                      LODWORD(v221) = 32;
                      v175 = _os_log_send_and_compose_impl(v174, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v221);
                      if (!__nwlog_should_abort(v175))
                      {
                        free(v175);
                        v176 = nw_http_fillout_body_from_binary_message(v141, v240, 0, v239, &v239);
                        free(v141);
                        if (!v176)
                        {
                          goto LABEL_324;
                        }

LABEL_321:
                        v165 = v239;
LABEL_322:
                        *(a1 + 232) = v145;
                        *(a1 + 240) = v165;
                        *(a1 + 144) = v143;
                        if ((*(a1 + 356) & 1) == 0)
                        {
LABEL_10:
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v10 = gLogObj;
                          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136446722;
                            *&buf[4] = "nw_protocol_ohttp_process_response";
                            *&buf[12] = 2082;
                            *&buf[14] = a1 + 357;
                            *&buf[22] = 2080;
                            v245 = " ";
                            _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sProcessed response", buf, 0x20u);
                          }
                        }

LABEL_12:
                        *(a1 + 300) |= 8u;
                        *(a1 + 296) = 4;
                        *(a1 + 248) = 0;
                        nw_protocol_ohttp_deliver_response(a1, a1 + 64);
                        if (gLogDatapath == 1)
                        {
                          v203 = __nwlog_obj();
                          if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                            _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
                          }
                        }

                        v11 = *v2;
                        if (*v2)
                        {
                          *(v11 + 40) = &v240;
                          v12 = *(a1 + 344);
                          v240 = v11;
                          v241 = v12;
                          *(a1 + 336) = 0;
                          *(a1 + 344) = v2;
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 0x40000000;
                          *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                          v245 = &__block_descriptor_tmp_21_49595;
                          v246[0] = 1;
                          do
                          {
                            v13 = v240;
                            if (!v240)
                            {
                              break;
                            }

                            v14 = *(v240 + 32);
                            v15 = *(v240 + 40);
                            v16 = (v14 + 40);
                            if (!v14)
                            {
                              v16 = &v241;
                            }

                            *v16 = v15;
                            *v15 = v14;
                            *(v13 + 32) = 0;
                            *(v13 + 40) = 0;
                          }

                          while (((*&buf[16])(buf) & 1) != 0);
                        }

LABEL_447:
                        if (v6)
                        {
                          free(v6);
                        }

                        return;
                      }

LABEL_488:
                      __break(1u);
                      return;
                    }

                    free(v140);
                    v155 = __nwlog_obj();
                    if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_327;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http_create_message_from_oblivious_response";
                    v156 = "%{public}s Binary message is empty";
                  }

                  else
                  {
                    v155 = __nwlog_obj();
                    if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_327;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http_create_message_from_oblivious_response";
                    v156 = "%{public}s Failed to decrypt oblivious response";
                  }

LABEL_326:
                  _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_ERROR, v156, buf, 0xCu);
                  goto LABEL_327;
                }

                v202 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http_create_message_from_oblivious_response";
                LODWORD(v221) = 12;
                v194 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v202, 16, "%{public}s called with null request_enc_length", buf, v221);
                LOBYTE(v240) = 16;
                LOBYTE(v239) = 0;
                if (__nwlog_fault(v194, &v240, &v239))
                {
                  if (v240 == 17)
                  {
                    v195 = __nwlog_obj();
                    v196 = v240;
                    if (!os_log_type_enabled(v195, v240))
                    {
                      goto LABEL_479;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http_create_message_from_oblivious_response";
                    v197 = "%{public}s called with null request_enc_length";
                    goto LABEL_478;
                  }

                  if (v239 != 1)
                  {
                    v195 = __nwlog_obj();
                    v196 = v240;
                    if (!os_log_type_enabled(v195, v240))
                    {
                      goto LABEL_479;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http_create_message_from_oblivious_response";
                    v197 = "%{public}s called with null request_enc_length, backtrace limit exceeded";
                    goto LABEL_478;
                  }

                  backtrace_string = __nw_create_backtrace_string();
                  v195 = __nwlog_obj();
                  v196 = v240;
                  v212 = os_log_type_enabled(v195, v240);
                  if (!backtrace_string)
                  {
                    if (!v212)
                    {
                      goto LABEL_479;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_http_create_message_from_oblivious_response";
                    v197 = "%{public}s called with null request_enc_length, no backtrace";
                    goto LABEL_478;
                  }

                  if (v212)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http_create_message_from_oblivious_response";
                    *&buf[12] = 2082;
                    *&buf[14] = backtrace_string;
                    _os_log_impl(&dword_181A37000, v195, v196, "%{public}s called with null request_enc_length, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
                }

LABEL_479:
                if (!v194)
                {
                  goto LABEL_327;
                }

                goto LABEL_480;
              }

              v201 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              LODWORD(v221) = 12;
              v194 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v201, 16, "%{public}s called with null request_enc", buf, v221);
              LOBYTE(v240) = 16;
              LOBYTE(v239) = 0;
              if (!__nwlog_fault(v194, &v240, &v239))
              {
                goto LABEL_479;
              }

              if (v240 == 17)
              {
                v195 = __nwlog_obj();
                v196 = v240;
                if (!os_log_type_enabled(v195, v240))
                {
                  goto LABEL_479;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http_create_message_from_oblivious_response";
                v197 = "%{public}s called with null request_enc";
                goto LABEL_478;
              }

              if (v239 != 1)
              {
                v195 = __nwlog_obj();
                v196 = v240;
                if (!os_log_type_enabled(v195, v240))
                {
                  goto LABEL_479;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http_create_message_from_oblivious_response";
                v197 = "%{public}s called with null request_enc, backtrace limit exceeded";
                goto LABEL_478;
              }

              v204 = __nw_create_backtrace_string();
              v195 = __nwlog_obj();
              v196 = v240;
              v210 = os_log_type_enabled(v195, v240);
              if (!v204)
              {
                if (!v210)
                {
                  goto LABEL_479;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http_create_message_from_oblivious_response";
                v197 = "%{public}s called with null request_enc, no backtrace";
                goto LABEL_478;
              }

              if (v210)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_create_message_from_oblivious_response";
                *&buf[12] = 2082;
                *&buf[14] = v204;
                v206 = "%{public}s called with null request_enc, dumping backtrace:%{public}s";
                goto LABEL_421;
              }

LABEL_422:
              free(v204);
              if (!v194)
              {
                goto LABEL_327;
              }

LABEL_480:
              free(v194);
LABEL_327:
              *(a1 + 144) = 0;
              if ((*(a1 + 356) & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v177 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_ohttp_process_response";
                  *&buf[12] = 2082;
                  *&buf[14] = a1 + 357;
                  *&buf[22] = 2080;
                  v245 = " ";
                  _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to process response", buf, 0x20u);
                }
              }

              nw_ohttp_mark_failed_with_error(a1, 80);
              return;
            }

            v200 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http_create_message_from_oblivious_response";
            LODWORD(v221) = 12;
            v194 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v200, 16, "%{public}s called with null request_context_length", buf, v221);
            LOBYTE(v240) = 16;
            LOBYTE(v239) = 0;
            if (!__nwlog_fault(v194, &v240, &v239))
            {
              goto LABEL_479;
            }

            if (v240 == 17)
            {
              v195 = __nwlog_obj();
              v196 = v240;
              if (!os_log_type_enabled(v195, v240))
              {
                goto LABEL_479;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              v197 = "%{public}s called with null request_context_length";
              goto LABEL_478;
            }

            if (v239 != 1)
            {
              v195 = __nwlog_obj();
              v196 = v240;
              if (!os_log_type_enabled(v195, v240))
              {
                goto LABEL_479;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              v197 = "%{public}s called with null request_context_length, backtrace limit exceeded";
              goto LABEL_478;
            }

            v204 = __nw_create_backtrace_string();
            v195 = __nwlog_obj();
            v196 = v240;
            v209 = os_log_type_enabled(v195, v240);
            if (!v204)
            {
              if (!v209)
              {
                goto LABEL_479;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              v197 = "%{public}s called with null request_context_length, no backtrace";
              goto LABEL_478;
            }

            if (!v209)
            {
              goto LABEL_422;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http_create_message_from_oblivious_response";
            *&buf[12] = 2082;
            *&buf[14] = v204;
            v206 = "%{public}s called with null request_context_length, dumping backtrace:%{public}s";
LABEL_421:
            _os_log_impl(&dword_181A37000, v195, v196, v206, buf, 0x16u);
            goto LABEL_422;
          }

          v199 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_create_message_from_oblivious_response";
          LODWORD(v221) = 12;
          v194 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s called with null request_context", buf, v221);
          LOBYTE(v240) = 16;
          LOBYTE(v239) = 0;
          if (!__nwlog_fault(v194, &v240, &v239))
          {
            goto LABEL_479;
          }

          if (v240 != 17)
          {
            if (v239 != 1)
            {
              v195 = __nwlog_obj();
              v196 = v240;
              if (!os_log_type_enabled(v195, v240))
              {
                goto LABEL_479;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              v197 = "%{public}s called with null request_context, backtrace limit exceeded";
              goto LABEL_478;
            }

            v204 = __nw_create_backtrace_string();
            v195 = __nwlog_obj();
            v196 = v240;
            v208 = os_log_type_enabled(v195, v240);
            if (!v204)
            {
              if (!v208)
              {
                goto LABEL_479;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              v197 = "%{public}s called with null request_context, no backtrace";
              goto LABEL_478;
            }

            if (!v208)
            {
              goto LABEL_422;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http_create_message_from_oblivious_response";
            *&buf[12] = 2082;
            *&buf[14] = v204;
            v206 = "%{public}s called with null request_context, dumping backtrace:%{public}s";
            goto LABEL_421;
          }

          v195 = __nwlog_obj();
          v196 = v240;
          if (!os_log_type_enabled(v195, v240))
          {
            goto LABEL_479;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_create_message_from_oblivious_response";
          v197 = "%{public}s called with null request_context";
        }

        else
        {
          v198 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_create_message_from_oblivious_response";
          LODWORD(v221) = 12;
          v194 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v198, 16, "%{public}s called with null response_length", buf, v221);
          LOBYTE(v240) = 16;
          LOBYTE(v239) = 0;
          if (!__nwlog_fault(v194, &v240, &v239))
          {
            goto LABEL_479;
          }

          if (v240 != 17)
          {
            if (v239 != 1)
            {
              v195 = __nwlog_obj();
              v196 = v240;
              if (!os_log_type_enabled(v195, v240))
              {
                goto LABEL_479;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              v197 = "%{public}s called with null response_length, backtrace limit exceeded";
              goto LABEL_478;
            }

            v204 = __nw_create_backtrace_string();
            v195 = __nwlog_obj();
            v196 = v240;
            v207 = os_log_type_enabled(v195, v240);
            if (!v204)
            {
              if (!v207)
              {
                goto LABEL_479;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_message_from_oblivious_response";
              v197 = "%{public}s called with null response_length, no backtrace";
              goto LABEL_478;
            }

            if (!v207)
            {
              goto LABEL_422;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http_create_message_from_oblivious_response";
            *&buf[12] = 2082;
            *&buf[14] = v204;
            v206 = "%{public}s called with null response_length, dumping backtrace:%{public}s";
            goto LABEL_421;
          }

          v195 = __nwlog_obj();
          v196 = v240;
          if (!os_log_type_enabled(v195, v240))
          {
            goto LABEL_479;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_create_message_from_oblivious_response";
          v197 = "%{public}s called with null response_length";
        }
      }

      else
      {
        v193 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_create_message_from_oblivious_response";
        LODWORD(v221) = 12;
        v194 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v193, 16, "%{public}s called with null response_buffer", buf, v221);
        LOBYTE(v240) = 16;
        LOBYTE(v239) = 0;
        if (!__nwlog_fault(v194, &v240, &v239))
        {
          goto LABEL_479;
        }

        if (v240 != 17)
        {
          if (v239 != 1)
          {
            v195 = __nwlog_obj();
            v196 = v240;
            if (!os_log_type_enabled(v195, v240))
            {
              goto LABEL_479;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_message_from_oblivious_response";
            v197 = "%{public}s called with null response_buffer, backtrace limit exceeded";
            goto LABEL_478;
          }

          v204 = __nw_create_backtrace_string();
          v195 = __nwlog_obj();
          v196 = v240;
          v205 = os_log_type_enabled(v195, v240);
          if (!v204)
          {
            if (!v205)
            {
              goto LABEL_479;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_message_from_oblivious_response";
            v197 = "%{public}s called with null response_buffer, no backtrace";
            goto LABEL_478;
          }

          if (!v205)
          {
            goto LABEL_422;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_create_message_from_oblivious_response";
          *&buf[12] = 2082;
          *&buf[14] = v204;
          v206 = "%{public}s called with null response_buffer, dumping backtrace:%{public}s";
          goto LABEL_421;
        }

        v195 = __nwlog_obj();
        v196 = v240;
        if (!os_log_type_enabled(v195, v240))
        {
          goto LABEL_479;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_create_message_from_oblivious_response";
        v197 = "%{public}s called with null response_buffer";
      }

LABEL_478:
      _os_log_impl(&dword_181A37000, v195, v196, v197, buf, 0xCu);
      goto LABEL_479;
    }
  }

  v228 = v6;
  if (!v5 || !v3)
  {
    goto LABEL_443;
  }

  destructor = *MEMORY[0x1E69E9648];
  while (1)
  {
    v24 = *(a1 + 356);
    if ((v24 & 4) != 0)
    {
      v25 = *v5;
      if (v25 >= 0x40)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (*(a1 + 256))
      {
        v25 = *v5;
        if (v25 < 0x40)
        {
LABEL_41:
          v26 = v25;
          v27 = 1;
LABEL_88:
          if (v26 > v3 - v27)
          {
            goto LABEL_437;
          }

          v48 = 0;
          v230 = v26 == 0;
          goto LABEL_110;
        }

LABEL_62:
        v42 = v25 >> 6;
        if (v42 == 2)
        {
          if (v3 < 4)
          {
            goto LABEL_437;
          }

          v26 = bswap32(*v5 & 0xFFFFFF7F);
          v27 = 4;
        }

        else if (v42 == 1)
        {
          if (v3 == 1)
          {
            goto LABEL_437;
          }

          v26 = bswap32(*v5 & 0xFFBF) >> 16;
          v27 = 2;
        }

        else
        {
          if (v3 < 8)
          {
            goto LABEL_437;
          }

          v26 = bswap64(*v5 & 0xFFFFFFFFFFFFFF3FLL);
          v27 = 8;
        }

        goto LABEL_88;
      }

      cchpke_params_x25519_AESGCM128_HKDF_SHA256();
      v30 = cchpke_params_sizeof_aead_key();
      v31 = cchpke_params_sizeof_aead_nonce();
      if (v30 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v30;
      }

      v33 = v3 >= v32;
      v3 -= v32;
      if (!v33)
      {
        if (*(a1 + 356))
        {
          goto LABEL_443;
        }

        v181 = __nwlog_obj();
        if (!os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_443;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_ohttp_process_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v245 = " ";
        v163 = "%{public}s %{public}s%sNot enough bytes for nonce length";
        v169 = v181;
        v170 = OS_LOG_TYPE_ERROR;
        goto LABEL_441;
      }

      if (!v32)
      {
        v118 = __nwlog_obj();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_process_response";
        LODWORD(v221) = 12;
        v120 = _os_log_send_and_compose_impl(v119, 0, 0, 0, &dword_181A37000, v118, 16, "%{public}s strict_calloc called with size 0", buf, v221);
        if (__nwlog_should_abort(v120))
        {
          goto LABEL_488;
        }

        free(v120);
        v2 = (a1 + 336);
      }

      v34 = malloc_type_calloc(1uLL, v32, 0x5989DE7uLL);
      if (!v34)
      {
        v35 = __nwlog_obj();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        *&buf[4] = "nw_protocol_ohttp_process_response";
        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        v245 = v32;
        LODWORD(v221) = 32;
        v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v221);
        if (__nwlog_should_abort(v38))
        {
          goto LABEL_488;
        }

        free(v38);
        v34 = 0;
      }

      *(a1 + 256) = v34;
      memcpy(v34, v5, v32);
      *(a1 + 264) = v32;
      v240 = 0;
      v241 = &v240;
      v242 = 0x2000000000;
      LODWORD(v243) = v32;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL45nw_protocol_finalize_partial_temp_frame_arrayP16nw_frame_array_sjP11nw_protocolb_block_invoke;
      v245 = &unk_1E6A30548;
      *v246 = &v240;
      *&v246[8] = v2;
      v247 = 1;
      *&v246[16] = a1;
      v39 = *(a1 + 336);
      do
      {
        if (!v39)
        {
          break;
        }

        v40 = *(v39 + 32);
        v41 = (*&buf[16])(buf);
        v39 = v40;
      }

      while ((v41 & 1) != 0);
      _Block_object_dispose(&v240, 8);
      if (!v3)
      {
        v183 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_parse_chunk_length";
        LODWORD(v221) = 12;
        v184 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v183, 16, "%{public}s called with null response_length", buf, v221);
        LOBYTE(v240) = 16;
        LOBYTE(v239) = 0;
        if (!__nwlog_fault(v184, &v240, &v239))
        {
          goto LABEL_434;
        }

        if (v240 == 17)
        {
          v185 = __nwlog_obj();
          v186 = v240;
          if (os_log_type_enabled(v185, v240))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_parse_chunk_length";
            v187 = "%{public}s called with null response_length";
            goto LABEL_433;
          }

          goto LABEL_434;
        }

        if (v239 != 1)
        {
          v185 = __nwlog_obj();
          v186 = v240;
          if (!os_log_type_enabled(v185, v240))
          {
            goto LABEL_434;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_parse_chunk_length";
          v187 = "%{public}s called with null response_length, backtrace limit exceeded";
LABEL_433:
          _os_log_impl(&dword_181A37000, v185, v186, v187, buf, 0xCu);
          goto LABEL_434;
        }

        v191 = __nw_create_backtrace_string();
        v185 = __nwlog_obj();
        v186 = v240;
        v192 = os_log_type_enabled(v185, v240);
        if (v191)
        {
          if (v192)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_parse_chunk_length";
            *&buf[12] = 2082;
            *&buf[14] = v191;
            _os_log_impl(&dword_181A37000, v185, v186, "%{public}s called with null response_length, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v191);
          goto LABEL_434;
        }

        if (v192)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_parse_chunk_length";
          v187 = "%{public}s called with null response_length, no backtrace";
          goto LABEL_433;
        }

LABEL_434:
        if (v184)
        {
          free(v184);
        }

        v24 = *(a1 + 356);
LABEL_437:
        if (v24)
        {
          goto LABEL_443;
        }

        v162 = __nwlog_obj();
        if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_443;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_ohttp_process_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v245 = " ";
        v163 = "%{public}s %{public}s%sFailed to parse chunk";
        goto LABEL_440;
      }

      v24 = *(a1 + 356);
      v5 += v32;
      v25 = *v5;
      if ((v24 & 4) == 0)
      {
        if (v25 <= 0x3F)
        {
          goto LABEL_41;
        }

        goto LABEL_62;
      }

      if (v25 > 0x3F)
      {
LABEL_67:
        v43 = v25 >> 6;
        if (v43 == 2)
        {
          if (v3 < 4)
          {
            goto LABEL_437;
          }

          v28 = bswap32(*v5 & 0xFFFFFF7F);
          v29 = 4;
        }

        else if (v43 == 1)
        {
          if (v3 == 1)
          {
            goto LABEL_437;
          }

          v28 = bswap32(*v5 & 0xFFBF) >> 16;
          v29 = 2;
        }

        else
        {
          if (v3 < 8)
          {
            goto LABEL_437;
          }

          v28 = bswap64(*v5 & 0xFFFFFFFFFFFFFF3FLL);
          v29 = 8;
        }

        goto LABEL_75;
      }
    }

    v28 = v25;
    v29 = 1;
LABEL_75:
    v44 = v3 - v29;
    if (v28 > v3 - v29)
    {
      goto LABEL_437;
    }

    v45 = &v5[v29];
    v230 = v28 == 0;
    if (!v28)
    {
      if (!v44)
      {
        goto LABEL_437;
      }

      v28 = *v45;
      if (v28 > 0x3F)
      {
        v47 = v28 >> 6;
        if (v47 == 2)
        {
          if (v44 < 4)
          {
            goto LABEL_437;
          }

          v28 = bswap32(*v45 & 0xFFFFFF7F);
          v46 = 4;
        }

        else if (v47 == 1)
        {
          if (v44 == 1)
          {
            goto LABEL_437;
          }

          v28 = bswap32(*v45 & 0xFFBF) >> 16;
          v46 = 2;
        }

        else
        {
          if (v44 < 8)
          {
            goto LABEL_437;
          }

          v28 = bswap64(*v45 & 0xFFFFFFFFFFFFFF3FLL);
          v46 = 8;
        }
      }

      else
      {
        v46 = 1;
      }

      v44 -= v46;
      if (v28 > v44)
      {
        goto LABEL_437;
      }

      v45 += v46;
      v29 += v46;
    }

    if (!v44)
    {
      goto LABEL_437;
    }

    v48 = *v45;
    if (v48 > 0x3F)
    {
      if (v48 >> 6 == 2)
      {
        if (v44 < 4)
        {
          goto LABEL_437;
        }

        v48 = bswap32(*v45 & 0xFFFFFF7F);
        v49 = 4;
      }

      else if (v48 >> 6 == 1)
      {
        if (v44 == 1)
        {
          goto LABEL_437;
        }

        v48 = bswap32(*v45 & 0xFFBF) >> 16;
        v49 = 2;
      }

      else
      {
        if (v44 < 8)
        {
          goto LABEL_437;
        }

        v48 = bswap64(*v45 & 0xFFFFFFFFFFFFFF3FLL);
        v49 = 8;
      }
    }

    else
    {
      v49 = 1;
    }

    v26 = v28 - v49;
    if (v28 < v49 || v48 > v44 - v49)
    {
      goto LABEL_437;
    }

    v27 = v49 + v29;
LABEL_110:
    if (v3 < v27)
    {
      if (v24)
      {
        goto LABEL_343;
      }

      v158 = __nwlog_obj();
      if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_343;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v245 = " ";
      v159 = "%{public}s %{public}s%sFailed to parse chunk (fatal)";
LABEL_296:
      v160 = v158;
      v161 = 32;
      goto LABEL_342;
    }

    if ((v24 & 4) == 0 && !v26)
    {
      if ((v24 & 0x10) != 0)
      {
        v26 = v3 - v27;
        goto LABEL_115;
      }

      if (v24)
      {
        goto LABEL_443;
      }

      v162 = __nwlog_obj();
      if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_443;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v245 = " ";
      v163 = "%{public}s %{public}s%sNot enough bytes to parse final chunk";
LABEL_440:
      v169 = v162;
      v170 = OS_LOG_TYPE_DEBUG;
LABEL_441:
      v171 = 32;
LABEL_442:
      _os_log_impl(&dword_181A37000, v169, v170, v163, buf, v171);
LABEL_443:
      v214 = *(a1 + 300);
      if ((v214 & 0x40) != 0)
      {
        *(a1 + 300) = v214 & 0xFFBF;
        nw_protocol_ohttp_deliver_response(a1, a1 + 64);
      }

      v215 = *(a1 + 304);
      v6 = v228;
      if (v215)
      {
        v232[0] = MEMORY[0x1E69E9820];
        v232[1] = 0x40000000;
        v232[2] = ___ZL34nw_protocol_ohttp_process_responseP17nw_protocol_ohttp_block_invoke_14;
        v232[3] = &__block_descriptor_tmp_16_29450;
        v232[4] = a1;
        nw_hash_table_apply(v215, v232);
      }

      goto LABEL_447;
    }

LABEL_115:
    if (v26 + v27 > v3)
    {
      if (v24)
      {
        goto LABEL_443;
      }

      v162 = __nwlog_obj();
      if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_443;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v245 = " ";
      v163 = "%{public}s %{public}s%sNot enough bytes to parse complete chunk";
      goto LABEL_440;
    }

    v50 = a1 + 64;
    if ((v24 & 4) != 0)
    {
      v50 = a1 + 64;
      if (*(a1 + 64) != v48)
      {
        v51 = *(a1 + 304);
        if (!v51)
        {
          goto LABEL_338;
        }

        v240 = 0;
        v241 = &v240;
        v242 = 0x2000000000;
        v243 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL44nw_protocol_ohttp_get_context_for_context_idP17nw_protocol_ohttpy_block_invoke;
        v245 = &unk_1E6A30570;
        *v246 = &v240;
        *&v246[8] = v48;
        v52 = v27;
        nw_hash_table_apply(v51, buf);
        v50 = v241[3];
        _Block_object_dispose(&v240, 8);
        v27 = v52;
        if (!v50)
        {
          break;
        }
      }
    }

    v53 = *(v50 + 236);
    if (v53)
    {
      if ((*(a1 + 356) & 1) == 0)
      {
        v164 = __nwlog_obj();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 357;
          *&buf[22] = 2080;
          v245 = " ";
          *v246 = 2048;
          *&v246[2] = v48;
          v159 = "%{public}s %{public}s%sContext ID %llu is used for standalone AEAD, cannot receive responses";
          goto LABEL_341;
        }
      }

      goto LABEL_343;
    }

    if ((v53 & 2) != 0)
    {
      v54 = *(a1 + 356);
      if (*(v50 + 96))
      {
        goto LABEL_124;
      }

      if ((*(a1 + 356) & 1) == 0)
      {
        v168 = __nwlog_obj();
        if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
        {
          *buf = 136447234;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 357;
          *&buf[22] = 2080;
          v245 = " ";
          *v246 = 2048;
          *&v246[2] = v48;
          *&v246[10] = 2048;
          *&v246[12] = v26;
          v163 = "%{public}s %{public}s%sReceive AEAD nonce and key are not ready yet for context %llu, cannot decrypt chunk of length %llu";
          v169 = v168;
          v170 = OS_LOG_TYPE_INFO;
          v171 = 52;
          goto LABEL_442;
        }
      }

      goto LABEL_443;
    }

    v54 = *(a1 + 356);
LABEL_124:
    if ((v54 & 4) == 0 || *(v50 + 192))
    {
      goto LABEL_140;
    }

    if (*(v50 + 208))
    {
      if (v54)
      {
        goto LABEL_343;
      }

      v158 = __nwlog_obj();
      if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_343;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v245 = " ";
      v159 = "%{public}s %{public}s%sNo nonce parsed before non-initial chunk";
      goto LABEL_296;
    }

    v55 = v27;
    cchpke_params_x25519_AESGCM128_HKDF_SHA256();
    v56 = cchpke_params_sizeof_aead_key();
    v57 = cchpke_params_sizeof_aead_nonce();
    if (v56 <= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = v56;
    }

    v33 = v26 >= v58;
    v26 -= v58;
    if (!v33)
    {
      if ((*(a1 + 356) & 1) == 0)
      {
        v182 = __nwlog_obj();
        if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 357;
          *&buf[22] = 2080;
          v245 = " ";
          _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sChunk is too small for nonce length", buf, 0x20u);
        }
      }

      v179 = v228;
      if (gLogDatapath == 1)
      {
        v220 = __nwlog_obj();
        if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_temp_frame_array";
          _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
        }
      }

      v180 = a1 + 336;
      goto LABEL_345;
    }

    if (!v58)
    {
      v130 = __nwlog_obj();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        v131 = 3;
      }

      else
      {
        v131 = 2;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      LODWORD(v221) = 12;
      v132 = _os_log_send_and_compose_impl(v131, 0, 0, 0, &dword_181A37000, v130, 16, "%{public}s strict_calloc called with size 0", buf, v221);
      if (__nwlog_should_abort(v132))
      {
        goto LABEL_488;
      }

      free(v132);
    }

    v59 = malloc_type_calloc(1uLL, v58, 0x73108119uLL);
    if (!v59)
    {
      v60 = __nwlog_obj();
      v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      if (v61)
      {
        v62 = 3;
      }

      else
      {
        v62 = 2;
      }

      *&buf[4] = "nw_protocol_ohttp_process_response";
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      v245 = v58;
      LODWORD(v221) = 32;
      v63 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v221);
      if (__nwlog_should_abort(v63))
      {
        goto LABEL_488;
      }

      free(v63);
      v59 = 0;
    }

    *(v50 + 192) = v59;
    memcpy(v59, &v5[v55], v58);
    *(v50 + 200) = v58;
    v27 = v58 + v55;
    v2 = (a1 + 336);
LABEL_140:
    if (!v26)
    {
      goto LABEL_221;
    }

    if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
    {
      v115 = v27;
      v116 = __nwlog_obj();
      v117 = os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG);
      v27 = v115;
      if (v117)
      {
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ohttp_process_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v245 = " ";
        *v246 = 2048;
        *&v246[2] = v26;
        *&v246[10] = 2048;
        *&v246[12] = v48;
        _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sParsing chunk of length %llu for context %llu", buf, 0x34u);
        v27 = v115;
      }
    }

    v64 = *(v50 + 224);
    v240 = 0;
    __dst = v27;
    if ((*(v50 + 236) & 2) != 0)
    {
      v67 = xpc_data_get_length(*(v50 + 96));
      v68 = xpc_data_get_bytes_ptr(*(v50 + 96));
      cchpke_params_x25519_AESGCM128_HKDF_SHA256();
      v69 = cchpke_params_sizeof_aead_nonce();
      v70 = cchpke_params_sizeof_aead_key();
      if (v67 != v70 + v69)
      {
        if ((*(a1 + 356) & 1) == 0)
        {
          v178 = __nwlog_obj();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_ohttp_process_response";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 357;
            *&buf[22] = 2080;
            v245 = " ";
            _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sReceive AEAD nonce and key are not correct lengths", buf, 0x20u);
          }
        }

        v167 = v228;
        if (gLogDatapath == 1)
        {
          v219 = __nwlog_obj();
          if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_finalize_temp_frame_array";
            _os_log_impl(&dword_181A37000, v219, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
          }
        }

        nw_frame_array_finalize(v231, 1, 1);
        v152 = 22;
        if (!v228)
        {
          goto LABEL_285;
        }

        goto LABEL_336;
      }

      v66 = nw_http_decrypt_chunked_oblivious_aead_response_chunk(__dst + v5, v26, *(v50 + 208), v230, v68, v69, v68 + v69, v70, *(v50 + 192), *(v50 + 200), &v240);
      v2 = (a1 + 336);
    }

    else
    {
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = "message/bhttp";
      }

      v66 = nw_http_decrypt_chunked_oblivious_response_chunk(&v5[v27], v26, v65, *(v50 + 208), v230, *(v50 + 120), *(v50 + 128), *(v50 + 104), *(v50 + 112), *(v50 + 192), *(v50 + 200), &v240);
    }

    if (!v66)
    {
      if ((*(a1 + 356) & 1) == 0)
      {
        v166 = __nwlog_obj();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 357;
          *&buf[22] = 2080;
          v245 = " ";
          _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to decrypt oblivious response chunk", buf, 0x20u);
        }
      }

      v167 = v228;
      if (gLogDatapath == 1)
      {
        v218 = __nwlog_obj();
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_finalize_temp_frame_array";
          _os_log_impl(&dword_181A37000, v218, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
        }
      }

      nw_frame_array_finalize(v2, 1, 1);
      v152 = 80;
      if (!v228)
      {
        goto LABEL_285;
      }

LABEL_336:
      v154 = v167;
      goto LABEL_284;
    }

    if (v240)
    {
      v71 = dispatch_data_create(v66, v240, 0, destructor);
      v72 = v71;
      v73 = *(v50 + 216);
      __src = v66;
      if (v73)
      {
        *(v50 + 216) = dispatch_data_create_concat(v73, v71);
        dispatch_release(v73);
        if (v72)
        {
          dispatch_release(v72);
        }

        v74 = 0;
      }

      else
      {
        *(v50 + 216) = v71;
        v74 = 1;
      }
    }

    else
    {
      if ((*(a1 + 356) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v75 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 357;
          *&buf[22] = 2080;
          v245 = " ";
          _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSuccessfully read empty chunk", buf, 0x20u);
        }
      }

      free(v66);
      v74 = 0;
      __src = 0;
    }

    v76 = *(v50 + 208);
    v33 = __CFADD__(v76, 1);
    v77 = v76 + 1;
    v78 = v33;
    *(v50 + 208) = v77;
    if (v78 << 63 >> 63 == v78)
    {
      goto LABEL_182;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v79 = *(v50 + 208);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_ohttp_process_response";
    *&buf[12] = 2082;
    *&buf[14] = "ohttp_context->aead_chunk_index";
    *&buf[22] = 2048;
    v245 = 1;
    *v246 = 2048;
    *&v246[2] = v79;
    LODWORD(v221) = 42;
    v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v221);
    LOBYTE(v239) = 16;
    v233 = 0;
    if (__nwlog_fault(v80, &v239, &v233))
    {
      if (v239 == 17)
      {
        v81 = __nwlog_obj();
        v82 = v239;
        if (os_log_type_enabled(v81, v239))
        {
          v83 = *(v50 + 208);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = "ohttp_context->aead_chunk_index";
          *&buf[22] = 2048;
          v245 = 1;
          *v246 = 2048;
          *&v246[2] = v83;
          v84 = v81;
          v85 = v82;
          v86 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_178:
          _os_log_impl(&dword_181A37000, v84, v85, v86, buf, 0x2Au);
        }
      }

      else if (v233 == 1)
      {
        v87 = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        type = v239;
        v89 = os_log_type_enabled(v88, v239);
        if (v87)
        {
          if (v89)
          {
            v90 = *(v50 + 208);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ohttp_process_response";
            *&buf[12] = 2082;
            *&buf[14] = "ohttp_context->aead_chunk_index";
            *&buf[22] = 2048;
            v245 = 1;
            *v246 = 2048;
            *&v246[2] = v90;
            *&v246[10] = 2082;
            *&v246[12] = v87;
            _os_log_impl(&dword_181A37000, v88, type, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v87);
          goto LABEL_179;
        }

        if (v89)
        {
          v94 = *(v50 + 208);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = "ohttp_context->aead_chunk_index";
          *&buf[22] = 2048;
          v245 = 1;
          *v246 = 2048;
          *&v246[2] = v94;
          v84 = v88;
          v85 = type;
          v86 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_178;
        }
      }

      else
      {
        v91 = __nwlog_obj();
        v92 = v239;
        if (os_log_type_enabled(v91, v239))
        {
          v93 = *(v50 + 208);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          *&buf[12] = 2082;
          *&buf[14] = "ohttp_context->aead_chunk_index";
          *&buf[22] = 2048;
          v245 = 1;
          *v246 = 2048;
          *&v246[2] = v93;
          v84 = v91;
          v85 = v92;
          v86 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_178;
        }
      }
    }

LABEL_179:
    if (v80)
    {
      free(v80);
    }

    *(v50 + 208) = -1;
LABEL_182:
    if (v74)
    {
      v95 = 0;
      size = v240;
      v97 = __src;
    }

    else
    {
      v98 = *(v50 + 216);
      if (v98)
      {
        size = dispatch_data_get_size(v98);
        if (!size)
        {
          v127 = __nwlog_obj();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v128 = 3;
          }

          else
          {
            v128 = 2;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          LODWORD(v221) = 12;
          v129 = _os_log_send_and_compose_impl(v128, 0, 0, 0, &dword_181A37000, v127, 16, "%{public}s strict_malloc called with size 0", buf, v221);
          if (__nwlog_should_abort(v129))
          {
            goto LABEL_488;
          }

          free(v129);
        }

        v99 = malloc_type_malloc(size, 0xD2930E53uLL);
        if (v99)
        {
          v95 = v99;
          nw_dispatch_data_copyout(*(v50 + 216), v99, size);
          v97 = v95;
        }

        else
        {
          v100 = __nwlog_obj();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            v101 = 3;
          }

          else
          {
            v101 = 2;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ohttp_process_response";
          LODWORD(v221) = 12;
          v102 = _os_log_send_and_compose_impl(v101, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s strict allocator failed", buf, v221);
          if (__nwlog_should_abort(v102))
          {
            goto LABEL_488;
          }

          free(v102);
          nw_dispatch_data_copyout(*(v50 + 216), 0, size);
          v95 = 0;
          v97 = 0;
        }
      }

      else
      {
        v95 = 0;
        v97 = 0;
        size = 0;
      }
    }

    if (*(v50 + 224) || (*(v50 + 236) & 2) != 0)
    {
      v103 = *(v50 + 168);
      if (v103)
      {
        if (v97)
        {
          __srca = v97;
          *typea = *(v50 + 176);
          *(v50 + 176) = *typea + size;
          if (!(*typea + size))
          {
            v121 = __nwlog_obj();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
            {
              v122 = 3;
            }

            else
            {
              v122 = 2;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_process_response";
            LODWORD(v221) = 12;
            v123 = _os_log_send_and_compose_impl(v122, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s strict_reallocf called with size 0", buf, v221);
            if (__nwlog_should_abort(v123))
            {
              goto LABEL_488;
            }

            free(v123);
            v103 = *(v50 + 168);
          }

          v104 = reallocf(v103, *typea + size);
          if (!v104)
          {
            v222 = __nwlog_obj();
            v124 = os_log_type_enabled(v222, OS_LOG_TYPE_ERROR);
            *buf = 136446466;
            if (v124)
            {
              v125 = 3;
            }

            else
            {
              v125 = 2;
            }

            *&buf[4] = "nw_protocol_ohttp_process_response";
            *&buf[12] = 2048;
            *&buf[14] = *typea + size;
            LODWORD(v221) = 22;
            v126 = _os_log_send_and_compose_impl(v125, 0, 0, 0, &dword_181A37000, v222, 16, "%{public}s strict_reallocf(%zu) failed", buf, v221);
            if (__nwlog_should_abort(v126))
            {
              goto LABEL_488;
            }

            free(v126);
          }

          *(v50 + 168) = v104;
          memcpy(&v104[*typea], __srca, size);
        }
      }

      else
      {
        if (v95)
        {
          *(v50 + 168) = v95;
          *(v50 + 176) = size;
        }

        else if (v97)
        {
          *(v50 + 176) = size;
          if (!size)
          {
            v133 = __nwlog_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              v134 = 3;
            }

            else
            {
              v134 = 2;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_process_response";
            LODWORD(v221) = 12;
            v135 = _os_log_send_and_compose_impl(v134, 0, 0, 0, &dword_181A37000, v133, 16, "%{public}s strict_malloc called with size 0", buf, v221);
            if (__nwlog_should_abort(v135))
            {
              goto LABEL_488;
            }

            free(v135);
          }

          v105 = malloc_type_malloc(size, 0x977896BDuLL);
          if (!v105)
          {
            v106 = __nwlog_obj();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v107 = 3;
            }

            else
            {
              v107 = 2;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_process_response";
            LODWORD(v221) = 12;
            v108 = _os_log_send_and_compose_impl(v107, 0, 0, 0, &dword_181A37000, v106, 16, "%{public}s strict allocator failed", buf, v221);
            if (__nwlog_should_abort(v108))
            {
              goto LABEL_488;
            }

            free(v108);
            v105 = 0;
          }

          *(v50 + 168) = v105;
          memcpy(v105, v97, size);
        }

        v95 = 0;
      }

      v109 = *(v50 + 216);
      if (v109)
      {
        dispatch_release(v109);
        *(v50 + 216) = 0;
      }

      *(v50 + 232) = 4;
      *(v50 + 184) = 0;
      v110 = *(v50 + 236);
      *(v50 + 236) = v110 | 0x40;
      if (v230)
      {
        *(v50 + 236) = v110 | 0x48;
      }
    }

    else
    {
      nw_protocol_ohttp_parse_binary_http_response(a1, v50, v97, size);
    }

    if (v95)
    {
      free(v95);
    }

    v2 = (a1 + 336);
    v27 = __dst;
LABEL_221:
    v111 = v27 + v26;
    v240 = 0;
    v241 = &v240;
    v242 = 0x2000000000;
    LODWORD(v243) = v27 + v26;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL45nw_protocol_finalize_partial_temp_frame_arrayP16nw_frame_array_sjP11nw_protocolb_block_invoke;
    v245 = &unk_1E6A30548;
    *v246 = &v240;
    *&v246[8] = v2;
    v247 = 1;
    *&v246[16] = a1;
    v112 = *(a1 + 336);
    do
    {
      if (!v112)
      {
        break;
      }

      v113 = *(v112 + 32);
      v114 = (*&buf[16])(buf);
      v112 = v113;
    }

    while ((v114 & 1) != 0);
    _Block_object_dispose(&v240, 8);
    v5 += v111;
    v3 -= v111;
    if (!v3)
    {
      goto LABEL_443;
    }
  }

  v24 = *(a1 + 356);
LABEL_338:
  if ((v24 & 1) == 0)
  {
    v164 = __nwlog_obj();
    if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_ohttp_process_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v245 = " ";
      *v246 = 2048;
      *&v246[2] = v48;
      v159 = "%{public}s %{public}s%sFailed to find context for ID %llu";
LABEL_341:
      v160 = v164;
      v161 = 42;
LABEL_342:
      _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_ERROR, v159, buf, v161);
    }
  }

LABEL_343:
  v179 = v228;
  if (gLogDatapath == 1)
  {
    v217 = __nwlog_obj();
    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v217, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v180 = v2;
LABEL_345:
  nw_frame_array_finalize(v180, 1, 1);
  if (v179)
  {
    free(v179);
  }

  nw_ohttp_mark_failed_with_error(a1, 22);
}

void nw_ohttp_mark_failed_with_error(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 352) != 2)
  {
    if ((*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v16 = "nw_ohttp_mark_failed_with_error";
        v17 = 2082;
        v18 = a1 + 357;
        v19 = 2080;
        v20 = " ";
        v21 = 1024;
        v22 = a2;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFailing connection with error %{darwin.errno}d", buf, 0x26u);
      }
    }

    *(a1 + 352) = 2;
    *(a1 + 296) = 6;
    v5 = *(a1 + 304);
    if (v5)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL31nw_ohttp_mark_failed_with_errorP17nw_protocol_ohttpi_block_invoke;
      v13[3] = &__block_descriptor_tmp_17_29539;
      v13[4] = a1;
      v14 = a2;
      nw_hash_table_apply(v5, v13);
    }

    path = nw_protocol_get_path(a1);
    if (path)
    {
      v7 = path;
      v8 = _nw_path_copy_parameters(v7);

      if (v8)
      {
        *uu = 0;
        *&uu[8] = 0;
        v9 = _nw_parameters_copy_effective_proxy_config(v8);
        if (v9)
        {
          v10 = v9;
          *uu = *(v10 + 56);

          os_release(v10);
        }

        os_release(v8);
        if (uuid_is_null(uu))
        {
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v11 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              v16 = "nw_ohttp_report_error_to_proxy_agent";
              v17 = 2082;
              v18 = a1 + 357;
              v19 = 2080;
              v20 = " ";
              v21 = 1024;
              v22 = a2;
              _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCannot report error %d, no proxy agent", buf, 0x26u);
            }
          }
        }

        else
        {
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136447490;
              v16 = "nw_ohttp_report_error_to_proxy_agent";
              v17 = 2082;
              v18 = a1 + 357;
              v19 = 2080;
              v20 = " ";
              v21 = 1024;
              v22 = a2;
              v23 = 1042;
              v24 = 16;
              v25 = 2098;
              v26 = uu;
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sReporting error %d to proxy agent %{public, uuid_t}.16P", buf, 0x36u);
            }
          }

          nw_path_report_error_to_agent(v7, uu, a2);
        }
      }
    }

    nw_protocol_error(*(a1 + 48), a1);
    nw_protocol_disconnected(*(a1 + 48), a1);
    nw_protocol_disconnect(*(a1 + 32), a1);
  }
}

uint64_t ___ZL34nw_protocol_ohttp_process_responseP17nw_protocol_ohttp_block_invoke(uint64_t a1, uint64_t a2)
{
  LODWORD(__n) = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &__n);
  memcpy((*(a1 + 40) + *(*(*(a1 + 32) + 8) + 24)), v3, __n);
  *(*(*(a1 + 32) + 8) + 24) += __n;
  return 1;
}

BOOL ___ZL45nw_protocol_finalize_partial_temp_frame_arrayP16nw_frame_array_sjP11nw_protocolb_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = nw_frame_unclaimed_length(a2);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (v7 <= v5)
  {
    nw_frame_claim(a2, v4, *(v6 + 24), 0);
  }

  else
  {
    *(v6 + 24) = v7 - v5;
    v8 = (*(a1 + 40) + 8);
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
    nw_frame_finalize(a2);
  }

  return v7 > v5;
}

void nw_protocol_ohttp_parse_binary_http_response(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_protocol_ohttp_parse_binary_http_response";
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null response_bytes", buf, 12);
    LOBYTE(size) = 16;
    LOBYTE(v60) = 0;
    if (!__nwlog_fault(v48, &size, &v60))
    {
      goto LABEL_104;
    }

    if (size == 17)
    {
      v49 = __nwlog_obj();
      v50 = size;
      if (!os_log_type_enabled(v49, size))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v51 = "%{public}s called with null response_bytes";
      goto LABEL_103;
    }

    if (v60 != 1)
    {
      v49 = __nwlog_obj();
      v50 = size;
      if (!os_log_type_enabled(v49, size))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v51 = "%{public}s called with null response_bytes, backtrace limit exceeded";
      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = size;
    v54 = os_log_type_enabled(v49, size);
    if (!backtrace_string)
    {
      if (!v54)
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v51 = "%{public}s called with null response_bytes, no backtrace";
      goto LABEL_103;
    }

    if (v54)
    {
      *buf = 136446466;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v65 = 2082;
      v66 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null response_bytes, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_104:
    if (!v48)
    {
      return;
    }

    goto LABEL_105;
  }

  if (!a4)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_protocol_ohttp_parse_binary_http_response";
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null response_length", buf, 12);
    LOBYTE(size) = 16;
    LOBYTE(v60) = 0;
    if (!__nwlog_fault(v48, &size, &v60))
    {
      goto LABEL_104;
    }

    if (size == 17)
    {
      v49 = __nwlog_obj();
      v50 = size;
      if (!os_log_type_enabled(v49, size))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v51 = "%{public}s called with null response_length";
      goto LABEL_103;
    }

    if (v60 != 1)
    {
      v49 = __nwlog_obj();
      v50 = size;
      if (!os_log_type_enabled(v49, size))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v51 = "%{public}s called with null response_length, backtrace limit exceeded";
      goto LABEL_103;
    }

    v55 = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = size;
    v56 = os_log_type_enabled(v49, size);
    if (v55)
    {
      if (v56)
      {
        *buf = 136446466;
        v64 = "nw_protocol_ohttp_parse_binary_http_response";
        v65 = 2082;
        v66 = v55;
        _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null response_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v55);
      if (!v48)
      {
        return;
      }

LABEL_105:
      free(v48);
      return;
    }

    if (v56)
    {
      *buf = 136446210;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v51 = "%{public}s called with null response_length, no backtrace";
LABEL_103:
      _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      goto LABEL_104;
    }

    goto LABEL_104;
  }

  v5 = a3;
  if (*(a2 + 80))
  {
    v8 = *(a2 + 236);
    if ((v8 & 0x10) == 0)
    {
LABEL_5:
      v9 = *(a2 + 176);
      size = v9;
      if (v9)
      {
        v10 = malloc_type_calloc(1uLL, v9, 0xFE73707AuLL);
        if (v10)
        {
          if (!nw_http_fillout_body_from_binary_message(v5, a4, v10, v9, &size))
          {
            free(v10);
LABEL_72:
            if ((*(a1 + 356) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v46 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v64 = "nw_protocol_ohttp_parse_binary_http_response";
                v65 = 2082;
                v66 = a1 + 357;
                v67 = 2080;
                v68 = " ";
                v38 = "%{public}s %{public}s%sFailed to fill out body content";
                v39 = v46;
                v40 = OS_LOG_TYPE_ERROR;
                goto LABEL_75;
              }
            }

            return;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v41 = gLogObj;
          v42 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v64 = "nw_protocol_ohttp_parse_binary_http_response";
          if (v42)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          v65 = 2048;
          v66 = 1;
          v67 = 2048;
          v68 = v9;
          v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
          if (__nwlog_should_abort(v44))
          {
LABEL_106:
            __break(1u);
            return;
          }

          free(v44);
          if (!nw_http_fillout_body_from_binary_message(v5, a4, 0, size, &size))
          {
            goto LABEL_72;
          }
        }

        *(a2 + 168) = v10;
        v8 = *(a2 + 236);
      }

      v8 |= 8u;
      *(a2 + 236) = v8;
      v45 = *(a2 + 216);
      if (v45)
      {
        dispatch_release(v45);
        *(a2 + 216) = 0;
        v8 = *(a2 + 236);
      }

LABEL_70:
      *(a2 + 236) = v8 | 0x40;
      return;
    }

LABEL_11:
    if ((v8 & 8) != 0)
    {
      goto LABEL_55;
    }

    v13 = a4;
    do
    {
      v61 = 0;
      size = 0;
      v59 = 0;
      v60 = 0;
      v14 = nw_http_access_body_chunk_from_indeterminate_binary_message(v5, v13, (v8 & 0x20) == 0, &size, &v61, &v60, &v59);
      v13 = v59;
      v5 = v60;
      if (v61 == 1)
      {
        *(a2 + 236) |= 8u;
        v15 = nw_http_copy_trailer_fields_from_indeterminate_binary_message(v5, v13);
        if (v15)
        {
          v16 = v15;
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v64 = "nw_protocol_ohttp_parse_binary_http_response";
              v65 = 2082;
              v66 = a1 + 357;
              v67 = 2080;
              v68 = " ";
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived trailer fields from binary HTTP", buf, 0x20u);
            }
          }

          nw_http_metadata_set_trailer_fields(*(a2 + 80), v16);
          os_release(v16);
        }
      }

      v18 = size;
      if ((v61 & 1) != 0 || size)
      {
        *(a2 + 236) |= 0x20u;
        if (v14)
        {
          if (v18)
          {
            v19 = *(a2 + 168);
            if (v19)
            {
              v20 = *(a2 + 176);
              v21 = v20 + v18;
              *(a2 + 176) = v20 + v18;
              if (!(v20 + v18))
              {
                v28 = __nwlog_obj();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  v29 = 3;
                }

                else
                {
                  v29 = 2;
                }

                *buf = 136446210;
                v64 = "nw_protocol_ohttp_parse_binary_http_response";
                LODWORD(v57) = 12;
                v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s strict_reallocf called with size 0", buf, v57);
                if (__nwlog_should_abort(v30))
                {
                  goto LABEL_106;
                }

                free(v30);
                v19 = *(a2 + 168);
              }

              v22 = reallocf(v19, v21);
              if (!v22)
              {
                v58 = __nwlog_obj();
                v31 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
                *buf = 136446466;
                if (v31)
                {
                  v32 = 3;
                }

                else
                {
                  v32 = 2;
                }

                v64 = "nw_protocol_ohttp_parse_binary_http_response";
                v65 = 2048;
                v66 = v21;
                LODWORD(v57) = 22;
                v33 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s strict_reallocf(%zu) failed", buf, v57);
                if (__nwlog_should_abort(v33))
                {
                  goto LABEL_106;
                }

                free(v33);
              }

              *(a2 + 168) = v22;
              v23 = size;
              v24 = &v22[v20];
            }

            else
            {
              *(a2 + 176) = v18;
              v24 = malloc_type_malloc(v18, 0x8E033FF3uLL);
              if (!v24)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v25 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  v26 = 3;
                }

                else
                {
                  v26 = 2;
                }

                *buf = 136446210;
                v64 = "nw_protocol_ohttp_parse_binary_http_response";
                LODWORD(v57) = 12;
                v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s strict allocator failed", buf, v57);
                if (__nwlog_should_abort(v27))
                {
                  goto LABEL_106;
                }

                free(v27);
                v24 = 0;
              }

              *(a2 + 168) = v24;
              v23 = size;
            }

            memcpy(v24, v14, v23);
          }
        }
      }

      v8 = *(a2 + 236);
    }

    while ((v8 & 8) == 0 && v5 && v13);
    if ((v8 & 8) != 0 || !v13)
    {
LABEL_55:
      v36 = *(a2 + 216);
      if (!v36)
      {
LABEL_58:
        v8 |= 0x20u;
        goto LABEL_70;
      }

      dispatch_release(v36);
      *(a2 + 216) = 0;
    }

    else
    {
      if (a4 <= v13)
      {
        goto LABEL_70;
      }

      subrange = dispatch_data_create_subrange(*(a2 + 216), a4 - v13, v13);
      v35 = *(a2 + 216);
      if (v35)
      {
        dispatch_release(v35);
      }

      *(a2 + 216) = subrange;
    }

    v8 = *(a2 + 236);
    goto LABEL_58;
  }

  size = 0;
  LOBYTE(v60) = 0;
  v11 = nw_http_copy_metadata_from_binary_message(a3, a4, &size, &v60);
  if (v11)
  {
    *(a2 + 80) = v11;
    v12 = size;
    v8 = *(a2 + 236) & 0xFFEF | (16 * v60);
    *(a2 + 236) = v8;
    *(a2 + 232) = 4;
    *(a2 + 176) = v12;
    *(a2 + 184) = 0;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v64 = "nw_protocol_ohttp_parse_binary_http_response";
      v65 = 2082;
      v66 = a1 + 357;
      v67 = 2080;
      v68 = " ";
      v38 = "%{public}s %{public}s%sUnable to parse metadata";
      v39 = v37;
      v40 = OS_LOG_TYPE_DEBUG;
LABEL_75:
      _os_log_impl(&dword_181A37000, v39, v40, v38, buf, 0x20u);
    }
  }
}

void nw_protocol_ohttp_deliver_response(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_deliver_response";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null ohttp", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, type, &v23))
    {
      goto LABEL_46;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (!os_log_type_enabled(v15, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v17 = "%{public}s called with null ohttp";
      goto LABEL_45;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (!os_log_type_enabled(v15, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v17 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type[0];
    v20 = os_log_type_enabled(v15, type[0]);
    if (!backtrace_string)
    {
      if (!v20)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v17 = "%{public}s called with null ohttp, no backtrace";
      goto LABEL_45;
    }

    if (v20)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_46:
    if (!v14)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_deliver_response";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null ohttp_context", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, type, &v23))
    {
      goto LABEL_46;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (!os_log_type_enabled(v15, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v17 = "%{public}s called with null ohttp_context";
      goto LABEL_45;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (!os_log_type_enabled(v15, type[0]))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v17 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
      goto LABEL_45;
    }

    v21 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type[0];
    v22 = os_log_type_enabled(v15, type[0]);
    if (v21)
    {
      if (v22)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ohttp_deliver_response";
        *&buf[12] = 2082;
        *&buf[14] = v21;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null ohttp_context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v21);
      if (!v14)
      {
        return;
      }

LABEL_47:
      free(v14);
      return;
    }

    if (v22)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      v17 = "%{public}s called with null ohttp_context, no backtrace";
LABEL_45:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (*(a2 + 232) == 4)
  {
    if (a1 + 64 == a2)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
LABEL_7:
        nw_protocol_input_available(v4, a1);
        return;
      }
    }

    else
    {
      v3 = *(a1 + 304);
      if (v3)
      {
        *type = 0;
        v25 = type;
        v26 = 0x2000000000;
        v27 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
        v29 = &unk_1E6A30598;
        v30 = type;
        v31 = a2;
        nw_hash_table_apply(v3, buf);
        v4 = *(v25 + 3);
        _Block_object_dispose(type, 8);
        if (v4)
        {
          goto LABEL_7;
        }
      }
    }

    if ((*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_ohttp_deliver_response";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v29 = " ";
        v8 = "%{public}s %{public}s%sfailed to find protocol for delivering responses";
        v9 = v12;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 32;
        goto LABEL_16;
      }
    }
  }

  else if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a2 + 232);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_ohttp_deliver_response";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v29 = " ";
      LOWORD(v30) = 1024;
      *(&v30 + 2) = v7;
      v8 = "%{public}s %{public}s%sskipping, state %u";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 38;
LABEL_16:
      _os_log_impl(&dword_181A37000, v9, v10, v8, buf, v11);
    }
  }
}

uint64_t ___ZL34nw_protocol_ohttp_process_responseP17nw_protocol_ohttp_block_invoke_14(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v4 = *(extra + 236);
  if ((v4 & 0x40) != 0)
  {
    *(extra + 236) = v4 & 0xFFBF;
    nw_protocol_ohttp_deliver_response(*(a1 + 32), extra);
  }

  return 1;
}

BOOL ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v5 = *(a1 + 40);
  if (v5 == extra)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_hash_node_get_object(a2);
  }

  return v5 != extra;
}

BOOL ___ZL44nw_protocol_ohttp_get_context_for_context_idP17nw_protocol_ohttpy_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v4 = *extra;
  v5 = *(a1 + 40);
  if (*extra == v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = extra;
  }

  return v4 != v5;
}

uint64_t ___ZL31nw_ohttp_mark_failed_with_errorP17nw_protocol_ohttpi_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  *(extra + 232) = 6;
  nw_protocol_error(object, *(a1 + 32));
  nw_protocol_disconnected(object, *(a1 + 32));
  return 1;
}

void *nw_protocol_oblivious_http_create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_oblivious_http_create";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v12, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_oblivious_http_create";
          v15 = "%{public}s called with null parameters";
LABEL_34:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "nw_protocol_oblivious_http_create";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v17)
        {
          *buf = 136446210;
          v21 = "nw_protocol_oblivious_http_create";
          v15 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_34;
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_oblivious_http_create";
          v15 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_34;
        }
      }
    }

LABEL_35:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x1C0uLL, 0xFC7FA5BEuLL);
  if (v5)
  {
LABEL_8:
    if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
    }

    if (nw_protocols_are_equal(a1, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
    {
      if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
      {
        dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
      }

      v10 = nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier;
    }

    else
    {
      if (nw_protocol_oblivious_http_identifier::onceToken != -1)
      {
        dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
      }

      v10 = &nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier;
    }

    v5[2] = v10;
    if (nw_protocol_ohttp_get_callbacks(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_ohttp_get_callbacks(void)::onceToken, &__block_literal_global_24);
    }

    v5[3] = &nw_protocol_ohttp_get_callbacks(void)::ohttp_protocol_callbacks;
    v5[42] = 0;
    v5[43] = v5 + 42;
    v5[9] = 0;
    v5[10] = v5 + 9;
    v5[11] = 0;
    v5[5] = v5;
    v5[12] = v5 + 11;
    v5[13] = 0;
    v5[14] = v5 + 13;
    return v5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446722;
  v21 = "nw_protocol_oblivious_http_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v22 = 2048;
  v23 = 1;
  v24 = 2048;
  v25 = 448;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void ___ZL31nw_protocol_ohttp_get_callbacksv_block_invoke()
{
  qword_1EA83F3D8 = nw_protocol_common_replace_input_handler;
  qword_1EA83F438 = nw_protocol_common_get_parameters;
  qword_1EA83F440 = nw_protocol_common_get_path;
  qword_1EA83F450 = nw_protocol_common_get_remote_endpoint;
  qword_1EA83F448 = nw_protocol_common_get_local_endpoint;
  qword_1EA83F490 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA83F498 = nw_protocol_common_get_output_interface;
  qword_1EA83F488 = nw_protocol_common_output_finished;
  qword_1EA83F4D0 = nw_protocol_common_input_flush;
  qword_1EA83F4C8 = nw_protocol_common_reset;
  qword_1EA83F4C0 = nw_protocol_common_get_message_properties;
  qword_1EA83F478 = nw_protocol_common_supports_external_data;
  qword_1EA83F4A0 = nw_protocol_common_waiting_for_output;
  qword_1EA83F458 = nw_protocol_common_register_notification;
  qword_1EA83F460 = nw_protocol_common_unregister_notification;
  qword_1EA83F468 = nw_protocol_common_notify;
  qword_1EA83F470 = nw_protocol_common_updated_path;
  qword_1EA83F430 = nw_protocol_common_link_state;
  nw_protocol_ohttp_get_callbacks(void)::ohttp_protocol_callbacks = nw_protocol_ohttp_add_input_handler;
  qword_1EA83F3D0 = nw_protocol_ohttp_remove_input_handler;
  qword_1EA83F418 = nw_protocol_ohttp_get_input_frames;
  qword_1EA83F408 = nw_protocol_ohttp_input_available;
  qword_1EA83F480 = nw_protocol_ohttp_input_finished;
  qword_1EA83F420 = nw_protocol_ohttp_get_output_frames;
  qword_1EA83F428 = nw_protocol_ohttp_finalize_output_frames;
  qword_1EA83F410 = nw_protocol_ohttp_output_available;
  qword_1EA83F4A8 = nw_protocol_ohttp_copy_info;
  qword_1EA83F3E0 = nw_protocol_ohttp_connect;
  qword_1EA83F3F0 = nw_protocol_ohttp_connected;
  qword_1EA83F3E8 = nw_protocol_ohttp_disconnect;
  qword_1EA83F3F8 = nw_protocol_ohttp_disconnected;
  qword_1EA83F400 = nw_protocol_ohttp_error;
}

void nw_protocol_ohttp_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_ohttp_error";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v8, &v20, &v19))
    {
      goto LABEL_34;
    }

    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v20;
      if (!os_log_type_enabled(v9, v20))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_error";
      v11 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v20;
      v14 = os_log_type_enabled(v9, v20);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v22 = "nw_protocol_ohttp_error";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v8)
        {
          return;
        }

LABEL_35:
        free(v8);
        return;
      }

      if (!v14)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_error";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = v20;
      if (!os_log_type_enabled(v9, v20))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v22 = "nw_protocol_ohttp_error";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {
    nw_protocol_error(a1->default_input_handler, a2);
    v6 = *(handle + 38);
    if (v6)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZL23nw_protocol_ohttp_errorP11nw_protocolS0_i_block_invoke;
      v17[3] = &__block_descriptor_tmp_47_29572;
      v17[4] = a2;
      v18 = a3;
      nw_hash_table_apply(v6, v17);
    }

    return;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_ohttp_error";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null ohttp", buf, 12);
  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v8, &v20, &v19))
  {
    goto LABEL_34;
  }

  if (v20 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = v20;
    if (!os_log_type_enabled(v9, v20))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_error";
    v11 = "%{public}s called with null ohttp";
    goto LABEL_33;
  }

  if (v19 != 1)
  {
    v9 = __nwlog_obj();
    v10 = v20;
    if (!os_log_type_enabled(v9, v20))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_error";
    v11 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_33;
  }

  v15 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = v20;
  v16 = os_log_type_enabled(v9, v20);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v22 = "nw_protocol_ohttp_error";
    v11 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_ohttp_error";
    v23 = 2082;
    v24 = v15;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v8)
  {
    goto LABEL_35;
  }
}

uint64_t ___ZL23nw_protocol_ohttp_errorP11nw_protocolS0_i_block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_error(object, *(a1 + 32));
  return 1;
}

void nw_protocol_ohttp_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_ohttp_disconnected";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v6, &v17, &v16))
    {
      goto LABEL_34;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (!os_log_type_enabled(v7, v17))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_protocol_ohttp_disconnected";
      v9 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v17;
      v12 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v19 = "nw_protocol_ohttp_disconnected";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v6)
        {
          return;
        }

LABEL_35:
        free(v6);
        return;
      }

      if (!v12)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_protocol_ohttp_disconnected";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (!os_log_type_enabled(v7, v17))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_protocol_ohttp_disconnected";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {
    nw_protocol_disconnected(a1->default_input_handler, a1);
    v4 = *(handle + 38);
    if (v4)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL30nw_protocol_ohttp_disconnectedP11nw_protocolS0__block_invoke;
      v15[3] = &__block_descriptor_tmp_46_29583;
      v15[4] = a1;
      nw_hash_table_apply(v4, v15);
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_ohttp_disconnected";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null ohttp", buf, 12);
  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v6, &v17, &v16))
  {
    goto LABEL_34;
  }

  if (v17 == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = v17;
    if (!os_log_type_enabled(v7, v17))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v19 = "nw_protocol_ohttp_disconnected";
    v9 = "%{public}s called with null ohttp";
    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v7 = __nwlog_obj();
    v8 = v17;
    if (!os_log_type_enabled(v7, v17))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v19 = "nw_protocol_ohttp_disconnected";
    v9 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_33;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = v17;
  v14 = os_log_type_enabled(v7, v17);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v19 = "nw_protocol_ohttp_disconnected";
    v9 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 136446466;
    v19 = "nw_protocol_ohttp_disconnected";
    v20 = 2082;
    v21 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_35;
  }
}

uint64_t ___ZL30nw_protocol_ohttp_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_disconnected(object, *(a1 + 32));
  return 1;
}

void nw_protocol_ohttp_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnect";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_disconnect";
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
          v17 = "nw_protocol_ohttp_disconnect";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          return;
        }

LABEL_37:
        free(v5);
        return;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_disconnect";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_disconnect";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_36;
  }

  if (a1->handle)
  {
    if (a1->default_input_handler == a2)
    {
      output_handler = a1->output_handler;

      nw_protocol_disconnect(output_handler, a1);
    }

    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_ohttp_disconnect";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null ohttp", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnect";
    v8 = "%{public}s called with null ohttp";
    goto LABEL_35;
  }

  if (v14 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnect";
    v8 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v13 = os_log_type_enabled(v6, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "nw_protocol_ohttp_disconnect";
    v8 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_protocol_ohttp_disconnect";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v5)
  {
    goto LABEL_37;
  }
}

void nw_protocol_ohttp_connected(nw_protocol *a1, nw_protocol *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_ohttp_connected";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, &v18, &v17))
    {
      goto LABEL_36;
    }

    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_connected";
      v10 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v18;
      v13 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v20 = "nw_protocol_ohttp_connected";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v7)
        {
          return;
        }

LABEL_37:
        free(v7);
        return;
      }

      if (!v13)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_connected";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ohttp_connected";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (handle)
  {
    *(handle + 356) |= 8u;
    nw_protocol_connected(a1->default_input_handler, a2);
    if (a1->output_handler == a2)
    {
      nw_protocol_connected(a1->default_input_handler, a1);
    }

    v5 = *(handle + 38);
    if (v5)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZL27nw_protocol_ohttp_connectedP11nw_protocolS0__block_invoke;
      v16[3] = &__block_descriptor_tmp_45_29604;
      v16[4] = a1;
      nw_hash_table_apply(v5, v16);
    }

    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_ohttp_connected";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null ohttp", buf, 12);
  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v7, &v18, &v17))
  {
    goto LABEL_36;
  }

  if (v18 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_connected";
    v10 = "%{public}s called with null ohttp";
    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_connected";
    v10 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_35;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v18;
  v15 = os_log_type_enabled(v8, v18);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ohttp_connected";
    v10 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_35;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "nw_protocol_ohttp_connected";
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_37;
  }
}

uint64_t ___ZL27nw_protocol_ohttp_connectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  nw_protocol_connected(object, *(a1 + 32));
  return 1;
}

uint64_t nw_protocol_ohttp_connect(nw_protocol *a1, nw_protocol *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[356] & 8) != 0)
      {
        nw_protocol_connected(a2, a1);
        return 1;
      }

      else
      {
        output_handler = a1->output_handler;

        return nw_protocol_connect(output_handler, a1);
      }
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_ohttp_connect";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null ohttp", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_ohttp_connect";
        v10 = "%{public}s called with null ohttp";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_ohttp_connect";
        v10 = "%{public}s called with null ohttp, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v19 = "nw_protocol_ohttp_connect";
        v10 = "%{public}s called with null ohttp, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      *buf = 136446466;
      v19 = "nw_protocol_ohttp_connect";
      v20 = 2082;
      v21 = backtrace_string;
      v14 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_ohttp_connect";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_ohttp_connect";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v13 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_protocol_ohttp_connect";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v13)
    {
      *buf = 136446466;
      v19 = "nw_protocol_ohttp_connect";
      v20 = 2082;
      v21 = backtrace_string;
      v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v8, v9, v14, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v19 = "nw_protocol_ohttp_connect";
    v10 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
  }

LABEL_36:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_protocol_ohttp_copy_info(uint64_t a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_ohttp_copy_info";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v24 = "nw_protocol_ohttp_copy_info";
        v15 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (!v18)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v24 = "nw_protocol_ohttp_copy_info";
        v15 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_protocol_ohttp_copy_info";
        v25 = 2082;
        v26 = backtrace_string;
        v19 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_30:
        _os_log_impl(&dword_181A37000, v13, v14, v19, buf, 0x16u);
      }

LABEL_31:
      free(backtrace_string);
      goto LABEL_41;
    }

    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v24 = "nw_protocol_ohttp_copy_info";
    v15 = "%{public}s called with null protocol";
LABEL_40:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
LABEL_41:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_ohttp_copy_info";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null ohttp", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v24 = "nw_protocol_ohttp_copy_info";
      v15 = "%{public}s called with null ohttp";
      goto LABEL_40;
    }

    if (v21 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v24 = "nw_protocol_ohttp_copy_info";
      v15 = "%{public}s called with null ohttp, backtrace limit exceeded";
      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v20 = os_log_type_enabled(v13, type);
    if (backtrace_string)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "nw_protocol_ohttp_copy_info";
        v25 = 2082;
        v26 = backtrace_string;
        v19 = "%{public}s called with null ohttp, dumping backtrace:%{public}s";
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (!v20)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v24 = "nw_protocol_ohttp_copy_info";
    v15 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_40;
  }

  if (a2 == 253)
  {
    return 0;
  }

  result = nw_protocol_common_copy_info(a1, a2);
  if (a2 == 255 && a3)
  {
    v7 = result;
    context_for_protocol = nw_protocol_ohttp_get_context_for_protocol(v3, a3);
    if (context_for_protocol)
    {
      v9 = context_for_protocol[11];
      result = v7;
      if (v9)
      {
        if (v7 || (result = _nw_array_create()) != 0)
        {
          v10 = result;
          _nw_array_append(result, v9);
          return v10;
        }
      }
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t *nw_protocol_ohttp_get_context_for_protocol(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_ohttp_get_context_for_protocol";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v8, &type, &v14))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_get_context_for_protocol";
      v11 = "%{public}s called with null input_protocol";
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
          v17 = "nw_protocol_ohttp_get_context_for_protocol";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (!v13)
      {
LABEL_25:
        if (v8)
        {
          free(v8);
        }

        return 0;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_get_context_for_protocol";
      v11 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v17 = "nw_protocol_ohttp_get_context_for_protocol";
      v11 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_25;
  }

  if (*(a1 + 48) == a2)
  {
    return (a1 + 64);
  }

  result = *(a1 + 304);
  if (!result)
  {
    return result;
  }

  node = nw_hash_table_get_node(result, a2, 8);
  if (node && *(a2 + 56) == node)
  {
    return node + 4;
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "nw_protocol_ohttp_get_context_for_protocol";
      v18 = 2082;
      v19 = (a1 + 357);
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo valid node found", buf, 0x20u);
      return 0;
    }
  }

  return 0;
}

void nw_protocol_ohttp_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_ohttp_output_available";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_output_available";
      v7 = "%{public}s called with null protocol";
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_protocol_ohttp_output_available";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v4)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v10)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_output_available";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_protocol_ohttp_output_available";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_34;
  }

  handle = a1->handle;
  if (handle)
  {

    nw_protocol_ohttp_send_request(handle);
    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_ohttp_output_available";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null ohttp", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_output_available";
    v7 = "%{public}s called with null ohttp";
    goto LABEL_33;
  }

  if (v13 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_output_available";
    v7 = "%{public}s called with null ohttp, backtrace limit exceeded";
    goto LABEL_33;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "nw_protocol_ohttp_output_available";
    v7 = "%{public}s called with null ohttp, no backtrace";
    goto LABEL_33;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_ohttp_output_available";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
LABEL_35:
    free(v4);
  }
}

void nw_protocol_ohttp_send_request(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 328);
  if (!v2)
  {
LABEL_6:
    if (*(a1 + 296) != 1 || (nw_protocol_ohttp_context_send_request(a1, a1 + 64), !*(a1 + 328)))
    {
      v5 = *(a1 + 304);
      if (v5)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 0x40000000;
        v7[2] = ___ZL30nw_protocol_ohttp_send_requestP17nw_protocol_ohttp_block_invoke;
        v7[3] = &__block_descriptor_tmp_41_29647;
        v7[4] = a1;
        nw_hash_table_apply(v5, v7);
      }
    }

    return;
  }

  if (a1 + 64 == v2)
  {
    if (*(a1 + 48))
    {
LABEL_5:
      nw_protocol_ohttp_context_send_request(a1, *(a1 + 328));
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *(a1 + 304);
    if (v3)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2000000000;
      v11 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL42nw_protocol_ohttp_get_protocol_for_contextP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
      v13 = &unk_1E6A30598;
      v14 = &v8;
      v15 = v2;
      nw_hash_table_apply(v3, buf);
      v4 = v9[3];
      _Block_object_dispose(&v8, 8);
      if (v4)
      {
        goto LABEL_5;
      }
    }
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_send_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v13 = " ";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sPending request context is no longer valid", buf, 0x20u);
    }
  }

  nw_ohttp_mark_failed_with_error(a1, 22);
}

void nw_protocol_ohttp_context_send_request(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v54 = "nw_protocol_ohttp_context_send_request";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null ohttp", buf, 12);
    LOBYTE(v49) = 16;
    LOBYTE(v45) = 0;
    if (!__nwlog_fault(v21, &v49, &v45))
    {
      goto LABEL_71;
    }

    if (v49 == 17)
    {
      v22 = __nwlog_obj();
      v23 = v49;
      if (!os_log_type_enabled(v22, v49))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v54 = "nw_protocol_ohttp_context_send_request";
      v24 = "%{public}s called with null ohttp";
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = v49;
      v26 = os_log_type_enabled(v22, v49);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v54 = "nw_protocol_ohttp_context_send_request";
          v55 = 2082;
          v56 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_71;
      }

      if (!v26)
      {
LABEL_71:
        if (v21)
        {
          free(v21);
        }

        return;
      }

      *buf = 136446210;
      v54 = "nw_protocol_ohttp_context_send_request";
      v24 = "%{public}s called with null ohttp, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = v49;
      if (!os_log_type_enabled(v22, v49))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v54 = "nw_protocol_ohttp_context_send_request";
      v24 = "%{public}s called with null ohttp, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_71;
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (*(a2 + 144) == *(a2 + 152))
    {
      if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
      {
        v6 = __nwlog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v54 = "nw_protocol_ohttp_context_send_request";
          v55 = 2082;
          v56 = (a1 + 357);
          v57 = 2080;
          v58 = " ";
          v7 = "%{public}s %{public}s%signoring write, no pending bytes";
LABEL_16:
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, v7, buf, 0x20u);
        }
      }
    }

    else
    {
      v49 = 0;
      v50 = &v49;
      v30 = (a1 + 357);
      v51 = 0x2000000000;
      v52 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x2000000000;
      v48 = 0;
      while (1)
      {
        if (*(a2 + 232) != 1)
        {
          if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
          {
            v27 = __nwlog_obj();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = *(a2 + 232);
              *buf = 136446978;
              v54 = "nw_protocol_ohttp_context_send_request";
              v55 = 2082;
              v56 = v30;
              v57 = 2080;
              v58 = " ";
              v59 = 1024;
              v60 = v28;
              _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
            }
          }

          goto LABEL_55;
        }

        v43[0] = 0;
        v43[1] = v43;
        v43[2] = 0x2000000000;
        v8 = *(a2 + 144);
        v9 = *(a2 + 152);
        v44 = v8 - v9;
        if (v8 == v9)
        {
          break;
        }

        v42[0] = 0;
        v42[1] = v42;
        output_frames = nw_protocol_get_output_frames(*(a1 + 32), a1, 1, (v8 - v9), 0xFFFFFFFFLL, v42);
        if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
        {
          v29 = output_frames;
          v15 = __nwlog_obj();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          output_frames = v29;
          if (v16)
          {
            *buf = 136446978;
            v54 = "nw_protocol_ohttp_context_send_request";
            v55 = 2082;
            v56 = v30;
            v57 = 2080;
            v58 = " ";
            v59 = 1024;
            v60 = v29;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sGot %u output frames", buf, 0x26u);
            output_frames = v29;
          }
        }

        if (!output_frames)
        {
          break;
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 0x40000000;
        v33 = ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
        v34 = &unk_1E6A30750;
        v35 = &v49;
        v36 = v43;
        v39 = a1;
        v40 = a2;
        v41 = a1;
        v37 = &v45;
        v38 = v42;
        v11 = v42[0];
        do
        {
          if (!v11)
          {
            break;
          }

          v12 = *(v11 + 32);
          v13 = v33(v32);
          v11 = v12;
        }

        while ((v13 & 1) != 0);
        nw_protocol_finalize_output_frames(*(a1 + 32), v42);
        if (*(v46 + 24) == 1 && !*(a1 + 352))
        {
          if ((*(a1 + 356) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v54 = "nw_protocol_ohttp_context_send_request";
              v55 = 2082;
              v56 = v30;
              v57 = 2080;
              v58 = " ";
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent outer request", buf, 0x20u);
            }
          }

          *(a1 + 352) = 1;
        }

        _Block_object_dispose(v43, 8);
        if (*(v50 + 24) == 1)
        {
          goto LABEL_36;
        }
      }

      _Block_object_dispose(v43, 8);
LABEL_36:
      if (*(a2 + 144) == *(a2 + 152))
      {
        *(a2 + 144) = 0;
        *(a2 + 152) = 0;
        v17 = *(a2 + 136);
        if (v17)
        {
          free(v17);
          *(a2 + 136) = 0;
        }
      }

      if (*(v50 + 24) == 1)
      {
        if ((*(a1 + 356) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v54 = "nw_protocol_ohttp_context_send_request";
            v55 = 2082;
            v56 = v30;
            v57 = 2080;
            v58 = " ";
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent complete request", buf, 0x20u);
          }
        }

        *(a1 + 328) = 0;
        if ((*(a2 + 236) & 0x104) == 4)
        {
          *(a2 + 232) = 2;
        }
      }

      else
      {
        if (*(v46 + 24) != 1)
        {
          goto LABEL_55;
        }

        *(a1 + 328) = a2;
      }

      nw_protocol_ohttp_read_response(a1, 0);
      if (v46[3])
      {
        if (*a2)
        {
          if ((*(a2 + 236) & 1) == 0 && (*(a1 + 356) & 0x20) == 0)
          {
            *(a1 + 356) |= 0x20u;
            v19 = *(a1 + 304);
            if (v19)
            {
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 0x40000000;
              v31[2] = ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_43;
              v31[3] = &__block_descriptor_tmp_44_29660;
              v31[4] = a1;
              nw_hash_table_apply(v19, v31);
            }
          }
        }
      }

LABEL_55:
      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v49, 8);
    }
  }

  else if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v54 = "nw_protocol_ohttp_context_send_request";
      v55 = 2082;
      v56 = (a1 + 357);
      v57 = 2080;
      v58 = " ";
      v7 = "%{public}s %{public}s%signoring write, pending finishing another context";
      goto LABEL_16;
    }
  }
}

BOOL ___ZL30nw_protocol_ohttp_send_requestP17nw_protocol_ohttp_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  result = 1;
  if (*(extra + 232) == 1)
  {
    nw_protocol_ohttp_context_send_request(*(a1 + 32), extra);
    if (*(*(a1 + 32) + 328))
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v4 = (a1[7] + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v5)
    {
      v4 = (v5 + 40);
    }

    *v4 = v6;
    *v6 = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v7 = a1[8];
    if ((!v7 || (*(v7 + 356) & 1) == 0) && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = a1[8];
        v10 = "";
        v11 = v9 == 0;
        if (v9)
        {
          v12 = (v9 + 357);
        }

        else
        {
          v12 = "";
        }

        v22 = 136446722;
        v23 = "nw_protocol_ohttp_context_send_request_block_invoke";
        if (!v11)
        {
          v10 = " ";
        }

        v24 = 2082;
        v25 = v12;
        v26 = 2080;
        v27 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDropping unneeded output frame", &v22, 0x20u);
      }
    }
  }

  else
  {
    v22 = 0;
    v13 = nw_frame_unclaimed_bytes(a2, &v22);
    v14 = *(*(a1[5] + 8) + 24);
    if (v22 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v22;
    }

    memcpy(v13, (*(a1[9] + 136) + *(a1[9] + 152)), v15);
    nw_frame_claim(a2, v16, v15, 0);
    *(a1[9] + 152) += v15;
    *(*(a1[5] + 8) + 24) -= v15;
    nw_frame_collapse(a2);
    nw_frame_unclaim(a2, v17, v15, 0);
    *(*(a1[4] + 8) + 24) = *(*(a1[5] + 8) + 24) == 0;
    v18 = a1[8];
    v20 = (*(v18 + 356) & 4) == 0 && *(*(a1[4] + 8) + 24) == 1 && (v19 = *(a1[9] + 236), (v19 & 4) != 0) && (v19 & 0x100) == 0;
    *(*(a1[6] + 8) + 24) = 1;
    nw_frame_set_metadata(a2, *(v18 + 312), 0, v20);
  }

  return 1;
}

void nw_protocol_ohttp_read_response(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1 + 357;
  while (*(a1 + 352) == 1)
  {
    v21[0] = 0;
    v21[1] = v21;
    input_frames = nw_protocol_get_input_frames(*(a1 + 32), a1, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v21);
    if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
    {
      v15 = input_frames;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      input_frames = v15;
      if (v11)
      {
        *buf = 136446978;
        v23 = "nw_protocol_ohttp_read_response";
        v24 = 2082;
        v25 = v4;
        v26 = 2080;
        v27 = " ";
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sGot %u input frames", buf, 0x26u);
        input_frames = v15;
      }
    }

    if (!input_frames)
    {
      v5 = *(a1 + 356);
LABEL_18:
      if ((v5 & 0x10) == 0)
      {
        if (a2)
        {
          *(a1 + 356) = v5 | 0x10;
          if ((v5 & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v23 = "nw_protocol_ohttp_read_response";
              v24 = 2082;
              v25 = v4;
              v26 = 2080;
              v27 = " ";
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sInferring complete response, received input finished", buf, 0x20u);
            }
          }
        }
      }

      if (*(a1 + 320))
      {
        if ((*(a1 + 356) & 0x12) != 0)
        {
          nw_protocol_ohttp_process_response(a1);
        }
      }

      return;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v17 = ___ZL31nw_protocol_ohttp_read_responseP17nw_protocol_ohttpb_block_invoke;
    v18 = &__block_descriptor_tmp_31_29790;
    v19 = v21;
    v20 = a1;
    v7 = v21[0];
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 32);
      v9 = (v17)(v16);
      v7 = v8;
    }

    while ((v9 & 1) != 0);
    v5 = *(a1 + 356);
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_18;
    }
  }

  if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 352);
      *buf = 136446978;
      v23 = "nw_protocol_ohttp_read_response";
      v24 = 2082;
      v25 = v4;
      v26 = 2080;
      v27 = " ";
      v28 = 1024;
      v29 = v13;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
    }
  }
}

uint64_t ___ZL38nw_protocol_ohttp_context_send_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_43(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  if ((*(extra + 236) & 0x100) != 0 && *(extra + 232) == 1)
  {
    nw_protocol_ohttp_prepare_request(*(a1 + 32), extra);
  }

  return 1;
}

void nw_protocol_ohttp_prepare_request(uint64_t a1, uint64_t a2)
{
  v163 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v92 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ohttp_prepare_request";
    v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s called with null ohttp", buf, 12);
    LOBYTE(v156) = 16;
    LOBYTE(v155) = 0;
    if (!__nwlog_fault(v93, &v156, &v155))
    {
      goto LABEL_183;
    }

    if (v156 == 17)
    {
      v94 = __nwlog_obj();
      v95 = v156;
      if (!os_log_type_enabled(v94, v156))
      {
        goto LABEL_183;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      v96 = "%{public}s called with null ohttp";
    }

    else if (v155 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v94 = __nwlog_obj();
      v95 = v156;
      v98 = os_log_type_enabled(v94, v156);
      if (backtrace_string)
      {
        if (v98)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ohttp_prepare_request";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_183;
      }

      if (!v98)
      {
LABEL_183:
        if (v93)
        {
          free(v93);
        }

        return;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      v96 = "%{public}s called with null ohttp, no backtrace";
    }

    else
    {
      v94 = __nwlog_obj();
      v95 = v156;
      if (!os_log_type_enabled(v94, v156))
      {
        goto LABEL_183;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      v96 = "%{public}s called with null ohttp, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v94, v95, v96, buf, 0xCu);
    goto LABEL_183;
  }

  v4 = *(a2 + 236);
  if ((v4 & 2) != 0)
  {
    if ((*(a1 + 356) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_ohttp_prepare_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v158 = " ";
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSkipping request, receive-only context", buf, 0x20u);
      }
    }

    *(a1 + 328) = 0;
    *(a2 + 236) |= 4u;
    *(a2 + 232) = 2;
    nw_protocol_ohttp_read_response(a1, 0);
    return;
  }

  v5 = *(a2 + 232);
  if ((*(a1 + 356) & 2) == 0)
  {
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_20:
    if ((*(a1 + 356) & 1) == 0 && gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a2 + 232);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_ohttp_prepare_request";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 357;
        *&buf[22] = 2080;
        v158 = " ";
        v159 = 1024;
        LODWORD(v160) = v16;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sskipping, state %u", buf, 0x26u);
      }
    }

    return;
  }

  if (v5 >= 2)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (*(a2 + 72) || (v4 & 1) != 0 || *(a2 + 224))
  {
    if (!(v4 & 4 | *(a1 + 356) & 2))
    {
      if (*(a1 + 356))
      {
        return;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v12 = __nwlog_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v158 = " ";
      v13 = "%{public}s %{public}s%sskipping, request not ready";
LABEL_28:
      v17 = v12;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_34:
      _os_log_impl(&dword_181A37000, v17, v18, v13, buf, 0x20u);
      return;
    }

    length = xpc_data_get_length(*(a2 + 96));
    bytes_ptr = xpc_data_get_bytes_ptr(*(a2 + 96));
    *buf = 0;
    nw_frame_array_get_frame_count((a2 + 24), 0, buf);
    v8 = *buf;
    v9 = *(a2 + 236);
    v134 = *buf;
    if ((v9 & 1) == 0 || (*(a1 + 356) & 0x20) != 0)
    {
      *(a2 + 236) = v9 & 0xFEFF;
    }

    else
    {
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_ohttp_standalone_aead_threshold, 3000);
      v11 = *(a2 + 160);
      if (v11 + v8 > int64_with_default)
      {
        *(a2 + 236) |= 0x100u;
        v8 = int64_with_default - v11;
        if (int64_with_default <= v11)
        {
          if (*(a1 + 356))
          {
            return;
          }

          if (gLogDatapath != 1)
          {
            return;
          }

          v12 = __nwlog_obj();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_prepare_request";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 357;
          *&buf[22] = 2080;
          v158 = " ";
          v13 = "%{public}s %{public}s%sskipping, nothing to send, hit threshold";
          goto LABEL_28;
        }
      }
    }

    v20 = *(a2 + 24);
    if (v8 == nw_frame_unclaimed_length(v20))
    {
      v21 = nw_frame_unclaimed_bytes(v20, 0);
    }

    else
    {
      if (v8)
      {
        v21 = malloc_type_calloc(1uLL, v8, 0x82D2F6A6uLL);
        if (!v21)
        {
          v22 = __nwlog_obj();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          *&buf[4] = "nw_protocol_ohttp_prepare_request";
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          v158 = v8;
          v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
          if (__nwlog_should_abort(v25))
          {
            goto LABEL_255;
          }

          free(v25);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v158 = 0;
        v147[0] = MEMORY[0x1E69E9820];
        v147[1] = 0x40000000;
        v148 = ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke;
        v149 = &unk_1E6A306C0;
        v150 = buf;
        v151 = v8;
        v152 = v21;
        v26 = *(a2 + 24);
        do
        {
          if (!v26)
          {
            break;
          }

          v27 = *(v26 + 16);
          v28 = v148(v147);
          v26 = v27;
        }

        while ((v28 & 1) != 0);
        _Block_object_dispose(buf, 8);
        v29 = v21;
LABEL_51:
        v146 = 0;
        v30 = *(a2 + 236);
        if ((v30 & 1) == 0)
        {
          v31 = nw_http_create_oblivious_request(a2, (*(a1 + 356) >> 1) & 1, (*(a1 + 356) >> 2) & 1, v21, v8, (v30 >> 2) & 1, bytes_ptr, length, &v146);
          goto LABEL_140;
        }

        if (bytes_ptr)
        {
          if (length)
          {
            v132 = v29;
            if (!v8 || v21)
            {
              v32 = *a2;
              v156 = 0;
              if (v32 > 0x3F)
              {
                if (v32 >> 14)
                {
                  if (v32 >> 30)
                  {
                    if (v32 >> 62)
                    {
                      v33 = __nwlog_obj();
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        v34 = 3;
                      }

                      else
                      {
                        v34 = 2;
                      }

                      *buf = 136446466;
                      *&buf[4] = "_http_vle_encode";
                      *&buf[12] = 2048;
                      *&buf[14] = v32;
                      LODWORD(v131) = 22;
                      v35 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s unable to encode value: %llu", buf, v131);
                      if (__nwlog_should_abort(v35))
                      {
                        goto LABEL_255;
                      }

                      free(v35);
                      __n = 0;
                    }

                    else
                    {
                      v156 = bswap64(v32 | 0xC000000000000000);
                      __n = 8;
                    }
                  }

                  else
                  {
                    v156 = bswap32(v32 | 0x80000000);
                    __n = 4;
                  }
                }

                else
                {
                  v156 = bswap32(v32 | 0x4000) >> 16;
                  __n = 2;
                }
              }

              else
              {
                v156 = v32;
                __n = 1;
              }

              v36 = *(a2 + 192);
              if (!v36)
              {
                cchpke_params_x25519_AESGCM128_HKDF_SHA256();
                v37 = cchpke_params_sizeof_aead_nonce();
                *(a2 + 200) = v37;
                if (!v37)
                {
                  v124 = __nwlog_obj();
                  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                  {
                    v125 = 3;
                  }

                  else
                  {
                    v125 = 2;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  LODWORD(v131) = 12;
                  v126 = _os_log_send_and_compose_impl(v125, 0, 0, 0, &dword_181A37000, v124, 16, "%{public}s strict_malloc called with size 0", buf, v131);
                  if (__nwlog_should_abort(v126))
                  {
                    goto LABEL_255;
                  }

                  free(v126);
                  v37 = 0;
                }

                v38 = malloc_type_malloc(v37, 0xF835612DuLL);
                if (!v38)
                {
                  v39 = __nwlog_obj();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    v40 = 3;
                  }

                  else
                  {
                    v40 = 2;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  LODWORD(v131) = 12;
                  v41 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s strict allocator failed", buf, v131);
                  if (__nwlog_should_abort(v41))
                  {
                    goto LABEL_255;
                  }

                  free(v41);
                  v38 = 0;
                }

                *(a2 + 192) = v38;
                arc4random_buf(v38, *(a2 + 200));
                *(a2 + 208) = 0;
              }

              v42 = v30 & 0x104;
              v155 = 0;
              if (v8)
              {
                v43 = nw_http_encrypt_standalone_aead_chunk(v21, v8, *(a2 + 208), v42 == 4, bytes_ptr, length, *(a2 + 192), *(a2 + 200), &v155);
                if (!v43)
                {
                  v44 = __nwlog_obj();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s Failed to fill out AEAD chunk", buf, 0xCu);
                  }

                  v31 = 0;
                  v29 = v132;
                  goto LABEL_140;
                }
              }

              else
              {
                v43 = 0;
              }

              v45 = *(a2 + 208);
              v46 = __CFADD__(v45, 1);
              v47 = v45 + 1;
              v48 = v46;
              *(a2 + 208) = v47;
              if (v48 << 63 >> 63 == v48)
              {
                goto LABEL_106;
              }

              v49 = __nwlog_obj();
              v50 = *(a2 + 208);
              *buf = 136446978;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              *&buf[12] = 2082;
              *&buf[14] = "ohttp_context->aead_chunk_index";
              *&buf[22] = 2048;
              v158 = 1;
              v159 = 2048;
              v160 = v50;
              LODWORD(v131) = 42;
              v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v131);
              LOBYTE(__src) = 16;
              v154 = 0;
              if (__nwlog_fault(v51, &__src, &v154))
              {
                if (__src == 17)
                {
                  v52 = __nwlog_obj();
                  v53 = __src;
                  if (os_log_type_enabled(v52, __src))
                  {
                    v54 = *(a2 + 208);
                    *buf = 136446978;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = "ohttp_context->aead_chunk_index";
                    *&buf[22] = 2048;
                    v158 = 1;
                    v159 = 2048;
                    v160 = v54;
                    v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_102:
                    _os_log_impl(&dword_181A37000, v52, v53, v55, buf, 0x2Au);
                  }
                }

                else if (v154 == 1)
                {
                  v56 = __nw_create_backtrace_string();
                  v52 = __nwlog_obj();
                  v53 = __src;
                  v57 = os_log_type_enabled(v52, __src);
                  if (v56)
                  {
                    if (v57)
                    {
                      v58 = *(a2 + 208);
                      *buf = 136447234;
                      *&buf[4] = "nw_http_create_standalone_aead_request";
                      *&buf[12] = 2082;
                      *&buf[14] = "ohttp_context->aead_chunk_index";
                      *&buf[22] = 2048;
                      v158 = 1;
                      v159 = 2048;
                      v160 = v58;
                      v161 = 2082;
                      v162 = v56;
                      _os_log_impl(&dword_181A37000, v52, v53, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v56);
                    goto LABEL_103;
                  }

                  if (v57)
                  {
                    v60 = *(a2 + 208);
                    *buf = 136446978;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = "ohttp_context->aead_chunk_index";
                    *&buf[22] = 2048;
                    v158 = 1;
                    v159 = 2048;
                    v160 = v60;
                    v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_102;
                  }
                }

                else
                {
                  v52 = __nwlog_obj();
                  v53 = __src;
                  if (os_log_type_enabled(v52, __src))
                  {
                    v59 = *(a2 + 208);
                    *buf = 136446978;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = "ohttp_context->aead_chunk_index";
                    *&buf[22] = 2048;
                    v158 = 1;
                    v159 = 2048;
                    v160 = v59;
                    v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_102;
                  }
                }
              }

LABEL_103:
              if (v51)
              {
                free(v51);
              }

              *(a2 + 208) = -1;
LABEL_106:
              if (v36)
              {
                v61 = 0;
              }

              else
              {
                v61 = *(a2 + 200) + 2;
              }

              v62 = v61 + __n + v155;
              __src = 0;
              if (v62 > 0x3F)
              {
                if (v62 >> 14)
                {
                  if (v62 >> 30)
                  {
                    if (v62 >> 62)
                    {
                      v64 = __nwlog_obj();
                      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                      {
                        v65 = 3;
                      }

                      else
                      {
                        v65 = 2;
                      }

                      *buf = 136446466;
                      *&buf[4] = "_http_vle_encode";
                      *&buf[12] = 2048;
                      *&buf[14] = v62;
                      LODWORD(v131) = 22;
                      v66 = _os_log_send_and_compose_impl(v65, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s unable to encode value: %llu", buf, v131);
                      if (__nwlog_should_abort(v66))
                      {
                        goto LABEL_255;
                      }

                      free(v66);
                      v63 = 0;
                    }

                    else
                    {
                      __src = bswap64(v62 | 0xC000000000000000);
                      v63 = 8;
                    }
                  }

                  else
                  {
                    __src = bswap32(v62 | 0x80000000);
                    v63 = 4;
                  }
                }

                else
                {
                  __src = bswap32(v62 | 0x4000) >> 16;
                  v63 = 2;
                }
              }

              else
              {
                __src = v61 + __n + v155;
                v63 = 1;
              }

              if (v42 == 4)
              {
                v67 = v62 + 1;
              }

              else
              {
                v67 = v62;
              }

              v68 = v67 + v63;
              v146 = v67 + v63;
              if (!(v67 + v63))
              {
                v112 = __nwlog_obj();
                if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                {
                  v113 = 3;
                }

                else
                {
                  v113 = 2;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http_create_standalone_aead_request";
                LODWORD(v131) = 12;
                v114 = _os_log_send_and_compose_impl(v113, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s strict_calloc called with size 0", buf, v131);
                if (__nwlog_should_abort(v114))
                {
                  goto LABEL_255;
                }

                free(v114);
              }

              v31 = malloc_type_calloc(1uLL, v68, 0x47FA503DuLL);
              if (!v31)
              {
                v69 = __nwlog_obj();
                v70 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
                *buf = 136446722;
                *&buf[4] = "nw_http_create_standalone_aead_request";
                if (v70)
                {
                  v71 = 3;
                }

                else
                {
                  v71 = 2;
                }

                *&buf[12] = 2048;
                *&buf[14] = 1;
                *&buf[22] = 2048;
                v158 = v68;
                LODWORD(v131) = 32;
                v72 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v131);
                if (__nwlog_should_abort(v72))
                {
                  goto LABEL_255;
                }

                free(v72);
              }

              v73 = v31;
              if (v42 == 4)
              {
                *v31 = 0;
                v73 = v31 + 1;
              }

              memcpy(v73, &__src, v63);
              v74 = &v73[v63];
              memcpy(v74, &v156, __n);
              v75 = &v74[__n];
              if (!v36)
              {
                *v75 = 256;
                v76 = v75 + 2;
                memcpy(v76, *(a2 + 192), *(a2 + 200));
                v75 = &v76[*(a2 + 200)];
              }

              v29 = v132;
              if (v155)
              {
                memcpy(v75, v43, v155);
              }

              if (v43)
              {
                free(v43);
              }

LABEL_140:
              if (v29)
              {
                free(v29);
              }

              if (!v31)
              {
                if ((*(a1 + 356) & 1) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v82 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_protocol_ohttp_prepare_request";
                    *&buf[12] = 2082;
                    *&buf[14] = a1 + 357;
                    *&buf[22] = 2080;
                    v158 = " ";
                    _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to prepare request", buf, 0x20u);
                  }
                }

                nw_ohttp_mark_failed_with_error(a1, 22);
                return;
              }

              v77 = *(a2 + 136);
              if (!v77)
              {
                v83 = v146;
                *(a2 + 136) = v31;
                *(a2 + 144) = v83;
                *(a2 + 152) = 0;
                goto LABEL_152;
              }

              v78 = *(a2 + 144);
              v80 = v146 + v78;
              v79 = v146 + v78 == 0;
              *(a2 + 144) = v146 + v78;
              if (v79)
              {
                v106 = __nwlog_obj();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  v107 = 3;
                }

                else
                {
                  v107 = 2;
                }

                *buf = 136446210;
                *&buf[4] = "nw_protocol_ohttp_prepare_request";
                LODWORD(v131) = 12;
                v108 = _os_log_send_and_compose_impl(v107, 0, 0, 0, &dword_181A37000, v106, 16, "%{public}s strict_reallocf called with size 0", buf, v131);
                if (__nwlog_should_abort(v108))
                {
                  goto LABEL_255;
                }

                free(v108);
                v77 = *(a2 + 136);
              }

              v81 = reallocf(v77, v80);
              if (v81)
              {
LABEL_146:
                *(a2 + 136) = v81;
                memcpy(&v81[v78], v31, v146);
LABEL_152:
                if (v8 >= v134)
                {
                  v135[0] = MEMORY[0x1E69E9820];
                  v135[1] = 0x40000000;
                  v136 = ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_2;
                  v137 = &__block_descriptor_tmp_39_29706;
                  v138 = a2;
                  v88 = *(a2 + 24);
                  do
                  {
                    if (!v88)
                    {
                      break;
                    }

                    v89 = *(v88 + 16);
                    v90 = v136(v135);
                    v88 = v89;
                  }

                  while ((v90 & 1) != 0);
                }

                else
                {
                  v84 = *(a2 + 160);
                  *(a2 + 160) = v84 + v8;
                  if (__CFADD__(v84, v8))
                  {
                    if (gLogDatapath == 1)
                    {
                      v127 = __nwlog_obj();
                      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                      {
                        v128 = *(a2 + 160);
                        *buf = 136446978;
                        *&buf[4] = "nw_protocol_ohttp_prepare_request";
                        *&buf[12] = 2082;
                        *&buf[14] = "ohttp_context->cumulative_request_length";
                        *&buf[22] = 2048;
                        v158 = v8;
                        v159 = 2048;
                        v160 = v128;
                        _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                      }
                    }

                    *(a2 + 160) = -1;
                  }

                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2000000000;
                  LODWORD(v158) = 0;
                  v139[0] = MEMORY[0x1E69E9820];
                  v139[1] = 0x40000000;
                  v140 = ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_37;
                  v141 = &unk_1E6A306E8;
                  v142 = buf;
                  v143 = v8;
                  v144 = a2;
                  v145 = a1;
                  v85 = *(a2 + 24);
                  do
                  {
                    if (!v85)
                    {
                      break;
                    }

                    v86 = *(v85 + 16);
                    v87 = v140(v139);
                    v85 = v86;
                  }

                  while ((v87 & 1) != 0);
                  _Block_object_dispose(buf, 8);
                }

                if ((*(a1 + 356) & 2) == 0)
                {
                  *buf = 0;
                  *&buf[8] = 0;
                  snprintf(buf, 0x10uLL, "%zu", *(a2 + 144));
                  v91 = nw_http_metadata_copy_request(*(a1 + 312));
                  nw_http_fields_append(v91, "Content-Length", buf);
                  if (v91)
                  {
                    os_release(v91);
                  }
                }

                *(a2 + 232) = 1;
                nw_protocol_ohttp_send_request(a1);
                return;
              }

              v109 = __nwlog_obj();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                v110 = 3;
              }

              else
              {
                v110 = 2;
              }

              *buf = 136446466;
              *&buf[4] = "nw_protocol_ohttp_prepare_request";
              *&buf[12] = 2048;
              *&buf[14] = v80;
              LODWORD(v131) = 22;
              v111 = _os_log_send_and_compose_impl(v110, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s strict_reallocf(%zu) failed", buf, v131);
              if (!__nwlog_should_abort(v111))
              {
                free(v111);
                v81 = 0;
                goto LABEL_146;
              }

LABEL_255:
              __break(1u);
              return;
            }

            v117 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            LODWORD(v131) = 12;
            v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s called with null body_content", buf, v131);
            LOBYTE(v156) = 16;
            LOBYTE(v155) = 0;
            if (__nwlog_fault(v118, &v156, &v155))
            {
              if (v156 == 17)
              {
                v119 = __nwlog_obj();
                v120 = v156;
                if (os_log_type_enabled(v119, v156))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v121 = "%{public}s called with null body_content";
LABEL_251:
                  _os_log_impl(&dword_181A37000, v119, v120, v121, buf, 0xCu);
                }
              }

              else if (v155 == 1)
              {
                v129 = __nw_create_backtrace_string();
                v119 = __nwlog_obj();
                v120 = v156;
                v130 = os_log_type_enabled(v119, v156);
                if (v129)
                {
                  if (v130)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http_create_standalone_aead_request";
                    *&buf[12] = 2082;
                    *&buf[14] = v129;
                    _os_log_impl(&dword_181A37000, v119, v120, "%{public}s called with null body_content, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v129);
                  goto LABEL_252;
                }

                if (v130)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v121 = "%{public}s called with null body_content, no backtrace";
                  goto LABEL_251;
                }
              }

              else
              {
                v119 = __nwlog_obj();
                v120 = v156;
                if (os_log_type_enabled(v119, v156))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_create_standalone_aead_request";
                  v121 = "%{public}s called with null body_content, backtrace limit exceeded";
                  goto LABEL_251;
                }
              }
            }

LABEL_252:
            if (v118)
            {
              free(v118);
            }

            v31 = 0;
            goto LABEL_140;
          }

          v99 = v29;
          v105 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_create_standalone_aead_request";
          LODWORD(v131) = 12;
          v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s called with null aead_key_length", buf, v131);
          LOBYTE(v156) = 16;
          LOBYTE(v155) = 0;
          if (__nwlog_fault(v101, &v156, &v155))
          {
            if (v156 == 17)
            {
              v102 = __nwlog_obj();
              v103 = v156;
              if (!os_log_type_enabled(v102, v156))
              {
                goto LABEL_246;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              v104 = "%{public}s called with null aead_key_length";
              goto LABEL_245;
            }

            if (v155 != 1)
            {
              v102 = __nwlog_obj();
              v103 = v156;
              if (!os_log_type_enabled(v102, v156))
              {
                goto LABEL_246;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              v104 = "%{public}s called with null aead_key_length, backtrace limit exceeded";
              goto LABEL_245;
            }

            v122 = __nw_create_backtrace_string();
            v102 = __nwlog_obj();
            v103 = v156;
            v123 = os_log_type_enabled(v102, v156);
            if (v122)
            {
              if (v123)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_create_standalone_aead_request";
                *&buf[12] = 2082;
                *&buf[14] = v122;
                _os_log_impl(&dword_181A37000, v102, v103, "%{public}s called with null aead_key_length, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v122);
              if (!v101)
              {
                goto LABEL_248;
              }

              goto LABEL_247;
            }

            if (v123)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_create_standalone_aead_request";
              v104 = "%{public}s called with null aead_key_length, no backtrace";
LABEL_245:
              _os_log_impl(&dword_181A37000, v102, v103, v104, buf, 0xCu);
            }
          }
        }

        else
        {
          v99 = v29;
          v100 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_create_standalone_aead_request";
          LODWORD(v131) = 12;
          v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s called with null aead_key_buffer", buf, v131);
          LOBYTE(v156) = 16;
          LOBYTE(v155) = 0;
          if (!__nwlog_fault(v101, &v156, &v155))
          {
            goto LABEL_246;
          }

          if (v156 == 17)
          {
            v102 = __nwlog_obj();
            v103 = v156;
            if (!os_log_type_enabled(v102, v156))
            {
              goto LABEL_246;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            v104 = "%{public}s called with null aead_key_buffer";
            goto LABEL_245;
          }

          if (v155 != 1)
          {
            v102 = __nwlog_obj();
            v103 = v156;
            if (!os_log_type_enabled(v102, v156))
            {
              goto LABEL_246;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            v104 = "%{public}s called with null aead_key_buffer, backtrace limit exceeded";
            goto LABEL_245;
          }

          v115 = __nw_create_backtrace_string();
          v102 = __nwlog_obj();
          v103 = v156;
          v116 = os_log_type_enabled(v102, v156);
          if (!v115)
          {
            if (!v116)
            {
              goto LABEL_246;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            v104 = "%{public}s called with null aead_key_buffer, no backtrace";
            goto LABEL_245;
          }

          if (v116)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_create_standalone_aead_request";
            *&buf[12] = 2082;
            *&buf[14] = v115;
            _os_log_impl(&dword_181A37000, v102, v103, "%{public}s called with null aead_key_buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v115);
        }

LABEL_246:
        if (!v101)
        {
LABEL_248:
          v31 = 0;
          v29 = v99;
          goto LABEL_140;
        }

LABEL_247:
        free(v101);
        goto LABEL_248;
      }

      v21 = 0;
    }

    v29 = 0;
    goto LABEL_51;
  }

  if ((*(a1 + 356) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_prepare_request";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 357;
      *&buf[22] = 2080;
      v158 = " ";
      v13 = "%{public}s %{public}s%sskipping, request doesn't have necessary metadata";
      v17 = v19;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_34;
    }
  }
}

BOOL ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke(void *a1, uint64_t a2)
{
  LODWORD(__n) = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &__n);
  v4 = a1[5];
  v5 = *(*(a1[4] + 8) + 24);
  v6 = v5 + __n;
  if (v6 <= v4)
  {
    memcpy((a1[6] + v5), v3, __n);
    v7 = __n;
LABEL_5:
    *(*(a1[4] + 8) + 24) += v7;
    return v6 <= v4;
  }

  v7 = v4 - v5;
  if (v4 != v5)
  {
    memcpy((a1[6] + v5), v3, v4 - v5);
    goto LABEL_5;
  }

  return v6 <= v4;
}

char *nw_http_create_oblivious_request(size_t *a1, int a2, int a3, const unsigned __int8 *a4, size_t a5, uint64_t a6, unsigned __int16 *a7, unint64_t a8, size_t *a9)
{
  v150 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v87 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s called with null ohttp_context", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 != 17)
    {
      if (__n != 1)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
        goto LABEL_346;
      }

      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = v143;
      v97 = os_log_type_enabled(v89, v143);
      if (!backtrace_string)
      {
        if (!v97)
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null ohttp_context, no backtrace";
        goto LABEL_346;
      }

      if (!v97)
      {
        goto LABEL_331;
      }

      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2082;
      v147 = backtrace_string;
      v98 = "%{public}s called with null ohttp_context, dumping backtrace:%{public}s";
      goto LABEL_330;
    }

    v89 = __nwlog_obj();
    v90 = v143;
    if (!os_log_type_enabled(v89, v143))
    {
      goto LABEL_347;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v91 = "%{public}s called with null ohttp_context";
LABEL_346:
    _os_log_impl(&dword_181A37000, v89, v90, v91, buf, 0xCu);
    goto LABEL_347;
  }

  v10 = a1[9];
  v11 = a1[28];
  if (!(v11 | v10))
  {
    v95 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v95, 16, "%{public}s called with null metadata", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 != 17)
    {
      if (__n != 1)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_346;
      }

      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = v143;
      v108 = os_log_type_enabled(v89, v143);
      if (!backtrace_string)
      {
        if (!v108)
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_346;
      }

      if (!v108)
      {
        goto LABEL_331;
      }

      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2082;
      v147 = backtrace_string;
      v98 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_330;
    }

    v89 = __nwlog_obj();
    v90 = v143;
    if (!os_log_type_enabled(v89, v143))
    {
      goto LABEL_347;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v91 = "%{public}s called with null metadata";
    goto LABEL_346;
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = *a1;
  if ((a2 & 1) == 0 && (a6 & 1) == 0)
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null is_complete", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 != 17)
    {
      if (__n != 1)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null is_complete, backtrace limit exceeded";
        goto LABEL_346;
      }

      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = v143;
      v109 = os_log_type_enabled(v89, v143);
      if (!backtrace_string)
      {
        if (!v109)
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null is_complete, no backtrace";
        goto LABEL_346;
      }

      if (!v109)
      {
        goto LABEL_331;
      }

      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2082;
      v147 = backtrace_string;
      v98 = "%{public}s called with null is_complete, dumping backtrace:%{public}s";
      goto LABEL_330;
    }

    v89 = __nwlog_obj();
    v90 = v143;
    if (!os_log_type_enabled(v89, v143))
    {
      goto LABEL_347;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v91 = "%{public}s called with null is_complete";
    goto LABEL_346;
  }

  if (!a7)
  {
    v92 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s called with null oblivious_config_buffer", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 != 17)
    {
      if (__n != 1)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null oblivious_config_buffer, backtrace limit exceeded";
        goto LABEL_346;
      }

      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = v143;
      v100 = os_log_type_enabled(v89, v143);
      if (!backtrace_string)
      {
        if (!v100)
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null oblivious_config_buffer, no backtrace";
        goto LABEL_346;
      }

      if (!v100)
      {
        goto LABEL_331;
      }

      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2082;
      v147 = backtrace_string;
      v98 = "%{public}s called with null oblivious_config_buffer, dumping backtrace:%{public}s";
      goto LABEL_330;
    }

    v89 = __nwlog_obj();
    v90 = v143;
    if (!os_log_type_enabled(v89, v143))
    {
      goto LABEL_347;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v91 = "%{public}s called with null oblivious_config_buffer";
    goto LABEL_346;
  }

  if (!a8)
  {
    v93 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null oblivious_config_length", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 != 17)
    {
      if (__n != 1)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null oblivious_config_length, backtrace limit exceeded";
        goto LABEL_346;
      }

      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = v143;
      v101 = os_log_type_enabled(v89, v143);
      if (!backtrace_string)
      {
        if (!v101)
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null oblivious_config_length, no backtrace";
        goto LABEL_346;
      }

      if (!v101)
      {
        goto LABEL_331;
      }

      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2082;
      v147 = backtrace_string;
      v98 = "%{public}s called with null oblivious_config_length, dumping backtrace:%{public}s";
      goto LABEL_330;
    }

    v89 = __nwlog_obj();
    v90 = v143;
    if (!os_log_type_enabled(v89, v143))
    {
      goto LABEL_347;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v91 = "%{public}s called with null oblivious_config_length";
    goto LABEL_346;
  }

  v18 = a9;
  if (!a9)
  {
    v94 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s called with null out_message_length", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 != 17)
    {
      if (__n != 1)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null out_message_length, backtrace limit exceeded";
        goto LABEL_346;
      }

      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = v143;
      v103 = os_log_type_enabled(v89, v143);
      if (!backtrace_string)
      {
        if (!v103)
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null out_message_length, no backtrace";
        goto LABEL_346;
      }

      if (!v103)
      {
        goto LABEL_331;
      }

      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2082;
      v147 = backtrace_string;
      v98 = "%{public}s called with null out_message_length, dumping backtrace:%{public}s";
      goto LABEL_330;
    }

    v89 = __nwlog_obj();
    v90 = v143;
    if (!os_log_type_enabled(v89, v143))
    {
      goto LABEL_347;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v91 = "%{public}s called with null out_message_length";
    goto LABEL_346;
  }

  if (!a4 && a5)
  {
    v102 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s called with null body_content", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 == 17)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null body_content";
      goto LABEL_346;
    }

    if (__n != 1)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null body_content, backtrace limit exceeded";
      goto LABEL_346;
    }

    backtrace_string = __nw_create_backtrace_string();
    v89 = __nwlog_obj();
    v90 = v143;
    v110 = os_log_type_enabled(v89, v143);
    if (!backtrace_string)
    {
      if (!v110)
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null body_content, no backtrace";
      goto LABEL_346;
    }

    if (!v110)
    {
      goto LABEL_331;
    }

    *buf = 136446466;
    v145 = "nw_http_create_oblivious_request";
    v146 = 2082;
    v147 = backtrace_string;
    v98 = "%{public}s called with null body_content, dumping backtrace:%{public}s";
LABEL_330:
    _os_log_impl(&dword_181A37000, v89, v90, v98, buf, 0x16u);
    goto LABEL_331;
  }

  if (v11)
  {
    v19 = 0;
    v20 = 0;
    if (a5 || (a2 & 1) != 0)
    {
      if (!a2)
      {
        goto LABEL_77;
      }

      goto LABEL_14;
    }

    v104 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s called with null body_length", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
LABEL_347:
      if (v88)
      {
        free(v88);
      }

      return 0;
    }

    if (v143 == 17)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null body_length";
      goto LABEL_346;
    }

    if (__n != 1)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null body_length, backtrace limit exceeded";
      goto LABEL_346;
    }

    backtrace_string = __nw_create_backtrace_string();
    v89 = __nwlog_obj();
    v90 = v143;
    v116 = os_log_type_enabled(v89, v143);
    if (!backtrace_string)
    {
      if (!v116)
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null body_length, no backtrace";
      goto LABEL_346;
    }

    if (v116)
    {
      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2082;
      v147 = backtrace_string;
      v98 = "%{public}s called with null body_length, dumping backtrace:%{public}s";
      goto LABEL_330;
    }

LABEL_331:
    free(backtrace_string);
    goto LABEL_347;
  }

  v22 = a1[15];
  v132 = a2;
  v133 = a3;
  if (!v22 && a6)
  {
    v139 = a6;
    binary_message_length_inner = nw_http_get_binary_message_length_inner(v10, 0, a5);
    if (binary_message_length_inner)
    {
      v24 = binary_message_length_inner;
      if (gLogDatapath == 1)
      {
        v112 = __nwlog_obj();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v145 = "nw_http_create_oblivious_request";
          v146 = 2048;
          v147 = v24;
          _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s Creating binary request with length %zu", buf, 0x16u);
        }
      }

      v19 = arc4random_uniform(0x10u);
      if (!(v24 + v19))
      {
        v113 = __nwlog_obj();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = 3;
        }

        else
        {
          v114 = 2;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v115 = _os_log_send_and_compose_impl(v114, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s strict_calloc called with size 0", buf, 12);
        result = __nwlog_should_abort(v115);
        if (result)
        {
          goto LABEL_351;
        }

        free(v115);
      }

      v25 = malloc_type_calloc(1uLL, v24 + v19, 0xAA74833EuLL);
      if (v25)
      {
        v20 = v25;
        if (nw_http_fillout_binary_message_inner(v10, 0, v16, v15, v25, v24))
        {
          v11 = "message/bhttp";
          v15 = v24;
          v16 = v20;
LABEL_46:
          a2 = v132;
          a3 = v133;
          v14 = v139;
          goto LABEL_76;
        }

        free(v20);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v145 = "nw_http_create_oblivious_request";
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v146 = 2048;
        v147 = 1;
        v148 = 2048;
        v149 = v24 + v19;
        LODWORD(v130) = 32;
        v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v130);
        result = __nwlog_should_abort(v34);
        if (result)
        {
          goto LABEL_351;
        }

        free(v34);
        if (nw_http_fillout_binary_message_inner(v10, 0, v16, v15, 0, v24))
        {
          v16 = 0;
          v20 = 0;
          v15 = v24;
          v11 = "message/bhttp";
          goto LABEL_46;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v37 = "%{public}s Failed to fill out binary message";
      goto LABEL_161;
    }

    v111 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v111, 16, "%{public}s called with null encoded_body_length", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 == 17)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null encoded_body_length";
      goto LABEL_346;
    }

    if (__n != 1)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null encoded_body_length, backtrace limit exceeded";
      goto LABEL_346;
    }

    backtrace_string = __nw_create_backtrace_string();
    v89 = __nwlog_obj();
    v90 = v143;
    v127 = os_log_type_enabled(v89, v143);
    if (!backtrace_string)
    {
      if (!v127)
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null encoded_body_length, no backtrace";
      goto LABEL_346;
    }

    if (!v127)
    {
      goto LABEL_331;
    }

LABEL_329:
    *buf = 136446466;
    v145 = "nw_http_create_oblivious_request";
    v146 = 2082;
    v147 = backtrace_string;
    v98 = "%{public}s called with null encoded_body_length, dumping backtrace:%{public}s";
    goto LABEL_330;
  }

  if (!v22 && (a6 & 1) == 0)
  {
    v26 = nw_http_get_binary_message_length_inner(v10, 1, 0);
    indeterminate_binary_message_chunk_length = nw_http_get_indeterminate_binary_message_chunk_length(v15, 0, 0);
    v28 = indeterminate_binary_message_chunk_length + v26;
    if (!(indeterminate_binary_message_chunk_length + v26))
    {
      v121 = __nwlog_obj();
      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s called with null encoded_body_length", buf, 12);
      LOBYTE(v143) = 16;
      LOBYTE(__n) = 0;
      if (!__nwlog_fault(v88, &v143, &__n))
      {
        goto LABEL_347;
      }

      if (v143 == 17)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null encoded_body_length";
        goto LABEL_346;
      }

      if (__n != 1)
      {
        v89 = __nwlog_obj();
        v90 = v143;
        if (!os_log_type_enabled(v89, v143))
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null encoded_body_length, backtrace limit exceeded";
        goto LABEL_346;
      }

      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = v143;
      v129 = os_log_type_enabled(v89, v143);
      if (!backtrace_string)
      {
        if (!v129)
        {
          goto LABEL_347;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v91 = "%{public}s called with null encoded_body_length, no backtrace";
        goto LABEL_346;
      }

      if (!v129)
      {
        goto LABEL_331;
      }

      goto LABEL_329;
    }

    v19 = indeterminate_binary_message_chunk_length;
    if (gLogDatapath == 1)
    {
      v126 = __nwlog_obj();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v145 = "nw_http_create_oblivious_request";
        v146 = 2048;
        v147 = v28;
        _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s Creating partial binary request with length %zu", buf, 0x16u);
      }
    }

    v20 = malloc_type_calloc(1uLL, v28, 0x33EBFB2BuLL);
    if (v20)
    {
      if ((nw_http_fillout_binary_message_inner(v10, 1, 0, 0, v20, v26) & 1) == 0)
      {
        free(v20);
LABEL_66:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v37 = "%{public}s Failed to fill out binary message header";
        goto LABEL_161;
      }
    }

    else
    {
      v131 = v19;
      v39 = v14;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      v41 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v145 = "nw_http_create_oblivious_request";
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v146 = 2048;
      v147 = 1;
      v148 = 2048;
      v149 = v28;
      v43 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
      result = __nwlog_should_abort(v43);
      if (result)
      {
        goto LABEL_351;
      }

      free(v43);
      v14 = v39;
      v19 = v131;
      if ((nw_http_fillout_binary_message_inner(v10, 1, 0, 0, 0, v26) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (v19)
    {
      if ((nw_http_fillout_indeterminate_binary_message_body_chunk(v16, v15, 0, 0, &v20[v26], v19) & 1) == 0)
      {
        if (v20)
        {
          free(v20);
        }

        v36 = __nwlog_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v145 = "nw_http_create_oblivious_request";
          v37 = "%{public}s Failed to fill out binary message chunk";
          goto LABEL_161;
        }

        return 0;
      }

      v19 = 0;
    }

    v15 = v28;
    v16 = v20;
    goto LABEL_74;
  }

  v29 = nw_http_get_indeterminate_binary_message_chunk_length(a5, a6, 0);
  if (!v29)
  {
    v120 = __nwlog_obj();
    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v120, 16, "%{public}s called with null encoded_body_length", buf, 12);
    LOBYTE(v143) = 16;
    LOBYTE(__n) = 0;
    if (!__nwlog_fault(v88, &v143, &__n))
    {
      goto LABEL_347;
    }

    if (v143 == 17)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null encoded_body_length";
      goto LABEL_346;
    }

    if (__n != 1)
    {
      v89 = __nwlog_obj();
      v90 = v143;
      if (!os_log_type_enabled(v89, v143))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null encoded_body_length, backtrace limit exceeded";
      goto LABEL_346;
    }

    backtrace_string = __nw_create_backtrace_string();
    v89 = __nwlog_obj();
    v90 = v143;
    v128 = os_log_type_enabled(v89, v143);
    if (!backtrace_string)
    {
      if (!v128)
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v91 = "%{public}s called with null encoded_body_length, no backtrace";
      goto LABEL_346;
    }

    if (!v128)
    {
      goto LABEL_331;
    }

    goto LABEL_329;
  }

  v30 = v29;
  if (gLogDatapath == 1)
  {
    v122 = __nwlog_obj();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v145 = "nw_http_create_oblivious_request";
      v146 = 2048;
      v147 = v30;
      _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_DEBUG, "%{public}s Creating partial binary request with length %zu", buf, 0x16u);
    }
  }

  if (v14)
  {
    v19 = arc4random_uniform(0x10u);
  }

  else
  {
    v19 = 0;
  }

  if (!(v19 + v30))
  {
    v123 = __nwlog_obj();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      v124 = 3;
    }

    else
    {
      v124 = 2;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v125 = _os_log_send_and_compose_impl(v124, 0, 0, 0, &dword_181A37000, v123, 16, "%{public}s strict_calloc called with size 0", buf, 12);
    result = __nwlog_should_abort(v125);
    if (result)
    {
      goto LABEL_351;
    }

    free(v125);
  }

  v38 = malloc_type_calloc(1uLL, v19 + v30, 0x4888376uLL);
  if (!v38)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    v45 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v145 = "nw_http_create_oblivious_request";
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v146 = 2048;
    v147 = 1;
    v148 = 2048;
    v149 = v19 + v30;
    LODWORD(v130) = 32;
    v47 = _os_log_send_and_compose_impl(v46, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v130);
    result = __nwlog_should_abort(v47);
    if (result)
    {
      goto LABEL_351;
    }

    free(v47);
    if (nw_http_fillout_indeterminate_binary_message_body_chunk(v16, v15, v14, 0, 0, v30))
    {
      v16 = 0;
      v20 = 0;
      v15 = v30;
LABEL_74:
      v11 = "message/bhttp";
      goto LABEL_75;
    }

LABEL_102:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    v37 = "%{public}s Failed to fill out binary message chunk";
    goto LABEL_161;
  }

  v20 = v38;
  if ((nw_http_fillout_indeterminate_binary_message_body_chunk(v16, v15, v14, 0, v38, v30) & 1) == 0)
  {
    free(v20);
    goto LABEL_102;
  }

  v11 = "message/bhttp";
  v15 = v30;
  v16 = v20;
LABEL_75:
  a2 = v132;
  a3 = v133;
LABEL_76:
  v18 = a9;
  v13 = a7;
  v12 = a8;
  if (!a2)
  {
LABEL_77:
    if (!a2)
    {
      v52 = nw_http_encrypt_oblivious_request(v16, v15 + v19, v11, v13, v12, a1 + 15, a1 + 16, a1 + 13, a1 + 14, v18);
      if (v20)
      {
        v53 = v20;
LABEL_185:
        free(v53);
      }

      return v52;
    }

    v48 = 0;
    v143 = 0;
    if (a1[15] || (v48 = nw_http_encrypt_chunked_oblivious_request_header(v11, v13, v12, a1 + 15, a1 + 16, a1 + 13, a1 + 14, &v143)) != 0)
    {
      __n = 0;
      if (!v15)
      {
        v51 = 0;
        v50 = 0;
LABEL_86:
        if (v14)
        {
          v54 = 0;
        }

        else
        {
          v54 = v51;
        }

        v141 = 0;
        v55 = v18;
        if (v54 > 0x3F)
        {
          if (v54 >> 14)
          {
            if (v54 >> 30)
            {
              if (v54 >> 62)
              {
                v79 = __nwlog_obj();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v80 = 3;
                }

                else
                {
                  v80 = 2;
                }

                *buf = 136446466;
                v145 = "_http_vle_encode";
                v146 = 2048;
                v147 = v54;
                LODWORD(v130) = 22;
                v81 = _os_log_send_and_compose_impl(v80, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s unable to encode value: %llu", buf, v130);
                result = __nwlog_should_abort(v81);
                if (result)
                {
                  goto LABEL_351;
                }

                free(v81);
                v56 = 0;
                v51 = __n;
                v55 = v18;
              }

              else
              {
                v141 = bswap64(v54 | 0xC000000000000000);
                v56 = 8;
              }
            }

            else
            {
              v141 = bswap32(v54 | 0x80000000);
              v56 = 4;
            }
          }

          else
          {
            v141 = bswap32(v54 | 0x4000) >> 16;
            v56 = 2;
          }
        }

        else
        {
          v141 = v54;
          v56 = 1;
        }

        v82 = v143 + v56 + v51;
        *v55 = v82;
        if (!v82)
        {
          v117 = __nwlog_obj();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            v118 = 3;
          }

          else
          {
            v118 = 2;
          }

          *buf = 136446210;
          v145 = "nw_http_create_oblivious_request";
          LODWORD(v130) = 12;
          v119 = _os_log_send_and_compose_impl(v118, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s strict_calloc called with size 0", buf, v130);
          result = __nwlog_should_abort(v119);
          if (result)
          {
            goto LABEL_351;
          }

          free(v119);
        }

        v52 = malloc_type_calloc(1uLL, v82, 0xFBA332F9uLL);
        if (!v52)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v83 = gLogObj;
          v84 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v145 = "nw_http_create_oblivious_request";
          if (v84)
          {
            v85 = 3;
          }

          else
          {
            v85 = 2;
          }

          v146 = 2048;
          v147 = 1;
          v148 = 2048;
          v149 = v82;
          LODWORD(v130) = 32;
          v86 = _os_log_send_and_compose_impl(v85, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v130);
          result = __nwlog_should_abort(v86);
          if (result)
          {
            goto LABEL_351;
          }

          free(v86);
        }

        if (v48)
        {
          memcpy(v52, v48, v143);
        }

        memcpy(&v52[v143], &v141, v56);
        v77 = __n;
        if (!__n)
        {
          goto LABEL_179;
        }

        v78 = &v52[v143 + v56];
        goto LABEL_178;
      }

      v49 = nw_http_encrypt_chunked_oblivious_request_chunk(v16, v15 + v19, v14, a1[15], a1[16], a1[13], a1[14], &__n);
      if (v49)
      {
        v50 = v49;
        v51 = __n;
        goto LABEL_86;
      }

      if (v20)
      {
        free(v20);
      }

      if (v48)
      {
        free(v48);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v37 = "%{public}s Failed to fill out OHTTP chunk";
    }

    else
    {
      if (v20)
      {
        free(v20);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v37 = "%{public}s Failed to fill out OHTTP header";
    }

LABEL_161:
    _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
    return 0;
  }

LABEL_14:
  if (!a3)
  {
    goto LABEL_77;
  }

  v143 = 0;
  v138 = v14;
  if (v17 > 0x3F)
  {
    if (v17 >> 14)
    {
      if (v17 >> 30)
      {
        if (v17 >> 62)
        {
          v135 = v13;
          v137 = v12;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v57 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v58 = 3;
          }

          else
          {
            v58 = 2;
          }

          *buf = 136446466;
          v145 = "_http_vle_encode";
          v146 = 2048;
          v147 = v17;
          LODWORD(v130) = 22;
          v59 = _os_log_send_and_compose_impl(v58, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s unable to encode value: %llu", buf, v130);
          result = __nwlog_should_abort(v59);
          if (result)
          {
            goto LABEL_351;
          }

          free(v59);
          v21 = 0;
          v13 = v135;
          v12 = v137;
        }

        else
        {
          v143 = bswap64(v17 | 0xC000000000000000);
          v21 = 8;
        }
      }

      else
      {
        v143 = bswap32(v17 | 0x80000000);
        v21 = 4;
      }
    }

    else
    {
      v143 = bswap32(v17 | 0x4000) >> 16;
      v21 = 2;
    }
  }

  else
  {
    v143 = v17;
    v21 = 1;
  }

  v48 = 0;
  __n = 0;
  if (!a1[15])
  {
    v48 = nw_http_encrypt_chunked_oblivious_request_header(v11, v13, v12, a1 + 15, a1 + 16, a1 + 13, a1 + 14, &__n);
    if (!v48)
    {
      if (v20)
      {
        free(v20);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v145 = "nw_http_create_oblivious_request";
        v37 = "%{public}s Failed to fill out OHTTP header";
        goto LABEL_161;
      }

      return 0;
    }
  }

  v141 = 0;
  if (v15)
  {
    v60 = nw_http_encrypt_chunked_oblivious_request_chunk(v16, v15 + v19, v138, a1[15], a1[16], a1[13], a1[14], &v141);
    if (v60)
    {
      v50 = v60;
      v61 = v141;
      goto LABEL_119;
    }

    if (v20)
    {
      free(v20);
    }

    if (v48)
    {
      free(v48);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v145 = "nw_http_create_oblivious_request";
      v37 = "%{public}s Failed to fill out OHTTP chunk";
      goto LABEL_161;
    }

    return 0;
  }

  v61 = 0;
  v50 = 0;
LABEL_119:
  v62 = __n;
  v63 = __n + v21 + v61;
  __src = 0;
  v64 = v18;
  if (v63 > 0x3F)
  {
    if (v63 >> 14)
    {
      if (v63 >> 30)
      {
        if (v63 >> 62)
        {
          v66 = v18;
          v67 = __nwlog_obj();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = 3;
          }

          else
          {
            v68 = 2;
          }

          *buf = 136446466;
          v145 = "_http_vle_encode";
          v146 = 2048;
          v147 = v63;
          LODWORD(v130) = 22;
          v69 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s unable to encode value: %llu", buf, v130);
          result = __nwlog_should_abort(v69);
          if (result)
          {
            goto LABEL_351;
          }

          free(v69);
          v65 = 0;
          v61 = v141;
          v62 = __n;
          v64 = v66;
        }

        else
        {
          __src = bswap64(v63 | 0xC000000000000000);
          v65 = 8;
        }
      }

      else
      {
        __src = bswap32(v63 | 0x80000000);
        v65 = 4;
      }
    }

    else
    {
      __src = bswap32(v63 | 0x4000) >> 16;
      v65 = 2;
    }
  }

  else
  {
    __src = __n + v21 + v61;
    v65 = 1;
  }

  v70 = v21 + v138 + v65 + v62 + v61;
  *v64 = v70;
  if (!v70)
  {
    v105 = __nwlog_obj();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      v106 = 3;
    }

    else
    {
      v106 = 2;
    }

    *buf = 136446210;
    v145 = "nw_http_create_oblivious_request";
    LODWORD(v130) = 12;
    v107 = _os_log_send_and_compose_impl(v106, 0, 0, 0, &dword_181A37000, v105, 16, "%{public}s strict_calloc called with size 0", buf, v130);
    result = __nwlog_should_abort(v107);
    if (result)
    {
      goto LABEL_351;
    }

    free(v107);
  }

  v52 = malloc_type_calloc(1uLL, v70, 0xCCFF4291uLL);
  if (v52)
  {
LABEL_151:
    v75 = v52;
    if (v138)
    {
      *v52 = 0;
      v75 = v52 + 1;
    }

    memcpy(v75, &__src, v65);
    memcpy(&v75[v65], &v143, v21);
    v76 = &v75[v65 + v21];
    if (v48)
    {
      memcpy(&v75[v65 + v21], v48, __n);
      v76 += __n;
    }

    v77 = v141;
    if (!v141)
    {
      goto LABEL_179;
    }

    v78 = v76;
LABEL_178:
    memcpy(v78, v50, v77);
LABEL_179:
    if (v20)
    {
      free(v20);
    }

    if (v48)
    {
      free(v48);
    }

    if (!v50)
    {
      return v52;
    }

    v53 = v50;
    goto LABEL_185;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v71 = gLogObj;
  v72 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v145 = "nw_http_create_oblivious_request";
  if (v72)
  {
    v73 = 3;
  }

  else
  {
    v73 = 2;
  }

  v146 = 2048;
  v147 = 1;
  v148 = 2048;
  v149 = v70;
  LODWORD(v130) = 32;
  v74 = _os_log_send_and_compose_impl(v73, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v130);
  result = __nwlog_should_abort(v74);
  if (!result)
  {
    free(v74);
    goto LABEL_151;
  }

LABEL_351:
  __break(1u);
  return result;
}

BOOL ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_37(void *a1, uint64_t a2)
{
  v4 = nw_frame_unclaimed_length(a2);
  v6 = a1[5];
  v7 = *(*(a1[4] + 8) + 24);
  v8 = (v7 + v4);
  if (v6 < v8)
  {
    v9 = v6 - v7;
    nw_frame_claim(a2, v5, v6 - v7, 0);
  }

  else
  {
    v9 = v4;
    v10 = (a1[6] + 32);
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    if (v11)
    {
      v10 = (v11 + 24);
    }

    *v10 = v12;
    *v12 = v11;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    buffer = nw_frame_get_buffer(a2, 0);
    if (buffer)
    {
      free(buffer);
    }

    os_release(a2);
  }

  result = v6 >= v8;
  *(*(a1[4] + 8) + 24) += v9;
  return result;
}

uint64_t ___ZL33nw_protocol_ohttp_prepare_requestP17nw_protocol_ohttpP16nw_ohttp_context_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 32) + 32);
  v4 = a2[2];
  v5 = a2[3];
  if (v4)
  {
    v3 = (v4 + 24);
  }

  *v3 = v5;
  *v5 = v4;
  a2[2] = 0;
  a2[3] = 0;
  buffer = nw_frame_get_buffer(a2, 0);
  if (buffer)
  {
    free(buffer);
  }

  os_release(a2);
  return 1;
}

uint64_t ___ZL31nw_protocol_ohttp_read_responseP17nw_protocol_ohttpb_block_invoke(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + 8);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = (a2 + 32);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v6;
  *v6 = v5;
  *v7 = 0;
  *(a2 + 40) = 0;
  v8 = *(a1 + 40);
  if ((*(v8 + 356) & 0x10) == 0)
  {
    if (*(v8 + 320))
    {
      goto LABEL_5;
    }

    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v21 = nw_protocol_copy_http_definition_http_definition;
    v22 = nw_frame_copy_metadata_for_protocol(a2, v21);
    if (v21)
    {
      os_release(v21);
    }

    if (v22)
    {
      v23 = nw_http_metadata_copy_response(v22);
      if (v23)
      {
        v24 = v23;
        status_code = _nw_http_response_get_status_code(v24);

        v26 = *(a1 + 40);
        if ((!v26 || (*(v26 + 356) & 1) == 0) && gLogDatapath == 1)
        {
          v52 = __nwlog_obj();
          v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
          v26 = *(a1 + 40);
          if (v53)
          {
            v54 = v26 == 0;
            if (v26)
            {
              v55 = (v26 + 357);
            }

            else
            {
              v55 = "";
            }

            *buf = 136446978;
            *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v55;
            v56 = " ";
            if (v54)
            {
              v56 = "";
            }

            *&buf[22] = 2080;
            v67 = v56;
            LOWORD(v68) = 1024;
            *(&v68 + 2) = status_code;
            _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived status %u", buf, 0x26u);
            v26 = *(a1 + 40);
          }
        }

        if (status_code == 200)
        {
          *(v26 + 320) = v22;
          os_release(v24);
LABEL_5:
          is_metadata_complete = nw_frame_is_metadata_complete(a2);
          v10 = *(a1 + 40);
          if ((!v10 || (*(v10 + 356) & 1) == 0) && gLogDatapath == 1)
          {
            v45 = is_metadata_complete;
            v46 = __nwlog_obj();
            v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
            is_metadata_complete = v45;
            v10 = *(a1 + 40);
            if (v47)
            {
              if (v10)
              {
                v48 = (v10 + 357);
              }

              else
              {
                v48 = "";
              }

              if (v10)
              {
                v49 = " ";
              }

              else
              {
                v49 = "";
              }

              v50 = nw_frame_unclaimed_length(a2);
              *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
              *&buf[12] = 2082;
              v51 = ", complete";
              *buf = 136447234;
              if (!v45)
              {
                v51 = "";
              }

              *&buf[14] = v48;
              *&buf[22] = 2080;
              v67 = v49;
              LOWORD(v68) = 1024;
              *(&v68 + 2) = v50;
              HIWORD(v68) = 2080;
              v69 = v51;
              _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived %u bytes%s", buf, 0x30u);
              is_metadata_complete = v45;
              v10 = *(a1 + 40);
            }
          }

          *(a2 + 32) = 0;
          v11 = *(v10 + 344);
          *(a2 + 40) = v11;
          *v11 = a2;
          *(v10 + 344) = v7;
          if (is_metadata_complete)
          {
            *(v10 + 356) |= 0x10u;
            v12 = *(a1 + 40);
            if (!v12 || (*(v12 + 356) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v13 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
              {
                v14 = *(a1 + 40);
                v15 = "";
                v16 = v14 == 0;
                if (v14)
                {
                  v17 = (v14 + 357);
                }

                else
                {
                  v17 = "";
                }

                *buf = 136446722;
                *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
                if (!v16)
                {
                  v15 = " ";
                }

                *&buf[12] = 2082;
                *&buf[14] = v17;
                *&buf[22] = 2080;
                v67 = v15;
                v18 = "%{public}s %{public}s%sReceived complete response";
LABEL_18:
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, v18, buf, 0x20u);
                return 1;
              }
            }
          }

          return 1;
        }

        *(v26 + 356) |= 0x10u;
        v39 = *(a1 + 40);
        if (v39)
        {
          *(v39 + 144) = os_retain(v22);
          *(v39 + 300) |= 8u;
          *(v39 + 296) = 4;
          nw_protocol_ohttp_deliver_response(v39, v39 + 64);
          v40 = *(v39 + 304);
          if (v40)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL41nw_protocol_ohttp_deliver_failure_messageP17nw_protocol_ohttpP20nw_protocol_metadata_block_invoke;
            v67 = &__block_descriptor_tmp_32_29802;
            v68 = v39;
            v69 = v22;
            nw_hash_table_apply(v40, buf);
          }

LABEL_57:
          os_release(v22);
          nw_frame_finalize(a2);
          os_release(v24);
          return 1;
        }

        v57 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
        v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null ohttp", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v64 = 0;
        if (__nwlog_fault(v58, &type, &v64))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v59 = __nwlog_obj();
            v60 = type;
            if (!os_log_type_enabled(v59, type))
            {
              goto LABEL_96;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
            v61 = "%{public}s called with null ohttp";
            goto LABEL_95;
          }

          if (v64 != 1)
          {
            v59 = __nwlog_obj();
            v60 = type;
            if (!os_log_type_enabled(v59, type))
            {
              goto LABEL_96;
            }

            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
            v61 = "%{public}s called with null ohttp, backtrace limit exceeded";
            goto LABEL_95;
          }

          backtrace_string = __nw_create_backtrace_string();
          v59 = __nwlog_obj();
          v60 = type;
          v63 = os_log_type_enabled(v59, type);
          if (backtrace_string)
          {
            if (v63)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null ohttp, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_96;
          }

          if (v63)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_ohttp_deliver_failure_message";
            v61 = "%{public}s called with null ohttp, no backtrace";
LABEL_95:
            _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
          }
        }

LABEL_96:
        if (v58)
        {
          free(v58);
        }

        goto LABEL_57;
      }

      v34 = *(a1 + 40);
      if (v34 && (*(v34 + 356) & 1) != 0 || (pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v28 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)))
      {
LABEL_53:
        nw_frame_finalize(a2);
        return 1;
      }

      v35 = *(a1 + 40);
      v36 = "";
      v37 = v35 == 0;
      if (v35)
      {
        v38 = (v35 + 357);
      }

      else
      {
        v38 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
      if (!v37)
      {
        v36 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v38;
      *&buf[22] = 2080;
      v67 = v36;
      v33 = "%{public}s %{public}s%sNo HTTP response in metadata";
    }

    else
    {
      v27 = *(a1 + 40);
      if (v27 && (*(v27 + 356) & 1) != 0)
      {
        goto LABEL_53;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v29 = *(a1 + 40);
      v30 = "";
      v31 = v29 == 0;
      if (v29)
      {
        v32 = (v29 + 357);
      }

      else
      {
        v32 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
      if (!v31)
      {
        v30 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v32;
      *&buf[22] = 2080;
      v67 = v30;
      v33 = "%{public}s %{public}s%sNo HTTP metadata in input frame";
    }

    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, v33, buf, 0x20u);
    goto LABEL_53;
  }

  nw_frame_finalize(a2);
  v19 = *(a1 + 40);
  if ((!v19 || (*(v19 + 356) & 1) == 0) && gLogDatapath == 1)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 40);
      v42 = "";
      v43 = v41 == 0;
      if (v41)
      {
        v44 = (v41 + 357);
      }

      else
      {
        v44 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_ohttp_read_response_block_invoke";
      if (!v43)
      {
        v42 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v44;
      *&buf[22] = 2080;
      v67 = v42;
      v18 = "%{public}s %{public}s%sDropping unneeded input frame";
      goto LABEL_18;
    }
  }

  return 1;
}

void nw_protocol_ohttp_context_deliver_failure_message(uint64_t a1, uint64_t a2, void *object)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_deliver_failure_message";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null ohttp_context", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_context_deliver_failure_message";
      v9 = "%{public}s called with null ohttp_context";
    }

    else if (v15 == 1)
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
          v18 = "nw_protocol_ohttp_context_deliver_failure_message";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ohttp_context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v6)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v12)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_context_deliver_failure_message";
      v9 = "%{public}s called with null ohttp_context, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v18 = "nw_protocol_ohttp_context_deliver_failure_message";
      v9 = "%{public}s called with null ohttp_context, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_34;
  }

  if (object)
  {
    *(a2 + 80) = os_retain(object);
    *(a2 + 236) |= 8u;
    *(a2 + 232) = 4;

    nw_protocol_ohttp_deliver_response(a1, a2);
    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_ohttp_context_deliver_failure_message";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_metadata", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_deliver_failure_message";
    v9 = "%{public}s called with null http_metadata";
    goto LABEL_33;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_deliver_failure_message";
    v9 = "%{public}s called with null http_metadata, backtrace limit exceeded";
    goto LABEL_33;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v18 = "nw_protocol_ohttp_context_deliver_failure_message";
    v9 = "%{public}s called with null http_metadata, no backtrace";
    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_protocol_ohttp_context_deliver_failure_message";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http_metadata, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
LABEL_35:
    free(v6);
  }
}