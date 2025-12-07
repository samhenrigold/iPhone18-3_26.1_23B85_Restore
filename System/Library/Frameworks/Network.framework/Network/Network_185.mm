void __nw_socks5_server_register_udp_associate_request_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!*(*(a1 + 32) + 88))
  {
    v3 = nw_dictionary_create(a1, a2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;
  }

  hostname = nw_endpoint_get_hostname(*(a1 + 40));
  if (nw_endpoint_get_address_family(*(a1 + 40)) == 30)
  {
    v7 = ".";
  }

  else
  {
    v7 = ":";
  }

  port = nw_endpoint_get_port(*(a1 + 40));
  v9 = *(a1 + 40);
  v10 = v9;
  if (v9)
  {
    _nw_endpoint_get_description(v9);
  }

  v11 = xpc_string_create_with_format("%s%s%u", hostname, v7, port);
  v12 = *(*(a1 + 32) + 88);
  string_ptr = xpc_string_get_string_ptr(v11);
  v14 = nw_dictionary_copy_value(v12, string_ptr);
  v15 = *(a1 + 32);
  if (v14)
  {
    v16 = v15[4];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_4;
    v28[3] = &unk_1E6A31F98;
    v17 = &v29;
    v29 = v15;
    v30 = *(a1 + 48);
    v31 = v11;
    v32 = *(a1 + 56);
    v33 = *(a1 + 64);
    v18 = v14;
    v19 = v16;
    v20 = v28;
    v21 = v18[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_socks5_connection_validate_udp_association_block_invoke_2;
    block[3] = &unk_1E6A39AE8;
    v22 = v18;
    v37 = v22;
    v23 = v19;
    v38 = v23;
    v24 = v20;
    v39 = v24;
    dispatch_async(v21, block);
  }

  else
  {
    v25 = v15[11];
    v26 = xpc_string_get_string_ptr(v11);
    nw_dictionary_set_value(v25, v26, *(a1 + 48));
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_3;
    v34[3] = &unk_1E6A3CE48;
    v17 = &v35;
    v27 = *(a1 + 56);
    v35 = *(a1 + 64);
    dispatch_async(v27, v34);
  }
}

void __nw_socks5_server_register_udp_associate_request_block_invoke_4(uint64_t a1, char a2)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_5;
  v11[3] = &unk_1E6A356A8;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 40);
  v15 = a2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 64);
  os_unfair_lock_lock(v4 + 6);
  __nw_socks5_server_register_udp_associate_request_block_invoke_5(v11);
  os_unfair_lock_unlock(v4 + 6);
}

void __nw_socks5_server_register_udp_associate_request_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72))
  {
    v3 = *(v1 + 80);
    v4 = *(a1 + 40);
    v5 = !v3 || v4 == 0;
    if (!v5 && _nw_array_contains_object(v3, v4))
    {
      v6 = *(a1 + 72) ^ 1;
      if ((*(a1 + 72) & 1) == 0)
      {
        v7 = *(*(a1 + 32) + 88);
        string_ptr = xpc_string_get_string_ptr(*(a1 + 48));
        nw_dictionary_set_value(v7, string_ptr, *(a1 + 40));
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_6;
      v10[3] = &unk_1E6A3B8C0;
      v9 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = v6;
      dispatch_async(v9, v10);
    }
  }
}

void nw_socks5_server_start(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "nw_socks5_server_start";
      v25 = 2114;
      v26 = v2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ start", buf, 0x16u);
    }

    v5 = v2[9];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __nw_socks5_server_start_block_invoke;
    handler[3] = &unk_1E6A3D820;
    v6 = v2;
    v20 = v6;
    nw_listener_set_state_changed_handler(v5, handler);
    v7 = v2[9];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_socks5_server_start_block_invoke_10;
    v17[3] = &unk_1E6A395E8;
    v8 = v6;
    v18 = v8;
    nw_listener_set_new_connection_handler(v7, v17);
    nw_listener_set_queue(v2[9], v8[4]);
    nw_listener_start(v2[9]);
    v10 = v8[2];
    v9 = (v8 + 2);
    if (!v10)
    {
      objc_storeStrong(v9, a1);
    }

    goto LABEL_7;
  }

  *buf = 136446210;
  v24 = "nw_socks5_server_start";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null server", buf, 12);

  v22 = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v11, &v22, &v21))
  {
    if (v22 == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = v22;
      if (os_log_type_enabled(v12, v22))
      {
        *buf = 136446210;
        v24 = "nw_socks5_server_start";
        v14 = "%{public}s called with null server";
LABEL_21:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = v22;
        v16 = os_log_type_enabled(v12, v22);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v24 = "nw_socks5_server_start";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v16)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v24 = "nw_socks5_server_start";
        v14 = "%{public}s called with null server, no backtrace";
        goto LABEL_21;
      }

      v12 = __nwlog_obj();
      v13 = v22;
      if (os_log_type_enabled(v12, v22))
      {
        *buf = 136446210;
        v24 = "nw_socks5_server_start";
        v14 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v11)
  {
    free(v11);
  }

LABEL_7:
}

void __nw_socks5_server_start_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __nw_socks5_server_start_block_invoke_2;
  v8[3] = &unk_1E6A3D7F8;
  v11 = a2;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  os_unfair_lock_lock(v6 + 6);
  __nw_socks5_server_start_block_invoke_2(v8);
  os_unfair_lock_unlock(v6 + 6);
}

uint64_t __Block_byref_object_copy__39483(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL __nw_socks5_server_start_block_invoke_13(uint64_t a1, char *string, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4 == a3)
  {
    v6 = xpc_string_create(string);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v4 != a3;
}

void __nw_socks5_server_start_block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4[7];
  if (v6)
  {
    v7 = _Block_copy(v6);
    if (v2 == 4)
    {
      v8 = v4[7];
      v4[7] = 0;
    }

    v9 = v4[6];
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = __nw_socks5_server_call_state_handler_locked_block_invoke;
    v33 = &unk_1E6A3D908;
    v35 = v7;
    v36 = v2;
    v34 = v5;
    v10 = v7;
    dispatch_async(v9, block);
  }

  if (*(a1 + 48) == 3)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = v12[8];
      if (v14)
      {
        v15 = v12;
        v16 = _Block_copy(v14);
        v17 = v15[6];
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __nw_socks5_server_call_error_handler_locked_block_invoke;
        v33 = &unk_1E6A3D710;
        v35 = v16;
        v34 = v13;
        v18 = v16;
        dispatch_async(v17, block);
        v19 = v12[8];
        v12[8] = 0;
      }

      nw_socks5_server_cancel_locked(*(a1 + 32));
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *block = 136446210;
    *&block[4] = "nw_socks5_server_start_block_invoke_2";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s listener reported state of failed with NULL error", block, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v21, &type, &v30))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_server_start_block_invoke";
        v24 = "%{public}s listener reported state of failed with NULL error";
LABEL_21:
        v28 = v22;
        v29 = v23;
LABEL_22:
        _os_log_impl(&dword_181A37000, v28, v29, v24, block, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v26 = type;
      v27 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *block = 136446466;
          *&block[4] = "nw_socks5_server_start_block_invoke";
          *&block[12] = 2082;
          *&block[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v26, "%{public}s listener reported state of failed with NULL error, dumping backtrace:%{public}s", block, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v27)
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_server_start_block_invoke";
        v24 = "%{public}s listener reported state of failed with NULL error, no backtrace";
        v28 = v22;
        v29 = v26;
        goto LABEL_22;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_server_start_block_invoke";
        v24 = "%{public}s listener reported state of failed with NULL error, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_24:
    if (v21)
    {
      free(v21);
    }
  }
}

void nw_socks5_server_cancel_locked(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136446466;
    v16 = "nw_socks5_server_cancel_locked";
    v17 = 2048;
    v18 = v1;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %p", &v15, 0x16u);
  }

  v3 = *(v1 + 8);
  *(v1 + 8) = 0;

  v4 = *(v1 + 9);
  if (v4)
  {
    nw_listener_cancel(v4);
    v5 = *(v1 + 9);
    *(v1 + 9) = 0;
  }

  nw_socks5_server_cancel_connections_locked(v1);
  v6 = *(v1 + 15);
  if (v6)
  {
    dispatch_source_cancel(v6);
    if ((*(v1 + 136) & 2) == 0)
    {
      *(v1 + 136) |= 2u;
      dispatch_resume(*(v1 + 15));
    }

    v7 = *(v1 + 15);
    *(v1 + 15) = 0;
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    IOPMAssertionRelease(v8);
    v9 = mach_continuous_time();
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(v1 + 32);
      v13 = nw_delta_nanos(*(v1 + 14), v10);
      v16 = "nw_socks5_server_cancel_locked";
      v17 = 2112;
      v15 = 136446978;
      v18 = v1;
      v19 = 1024;
      v20 = v12;
      v21 = 2048;
      v22 = v13 / 0x3B9ACA00;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %@ released power assertion: %u after %llus", &v15, 0x26u);
    }

    *(v1 + 14) = v10;
    *(v1 + 32) = 0;
  }

  v14 = *(v1 + 2);
  if (v14)
  {
    *(v1 + 2) = 0;
  }
}

void nw_socks5_server_cancel(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "nw_socks5_server_cancel";
      v17 = 2114;
      v18 = v1;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ cancel", buf, 0x16u);
    }

    v4 = v1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_socks5_server_cancel_block_invoke;
    block[3] = &unk_1E6A3D868;
    v12 = v1;
    dispatch_async(v4, block);

    goto LABEL_5;
  }

  *buf = 136446210;
  v16 = "nw_socks5_server_cancel";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null server", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v5, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "nw_socks5_server_cancel";
        v8 = "%{public}s called with null server";
LABEL_19:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_socks5_server_cancel";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v16 = "nw_socks5_server_cancel";
        v8 = "%{public}s called with null server, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "nw_socks5_server_cancel";
        v8 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

LABEL_5:
}

void __nw_socks5_server_cancel_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __nw_socks5_server_cancel_block_invoke_2;
  v2[3] = &unk_1E6A3D868;
  v3 = v1;
  os_unfair_lock_lock(v1 + 6);
  __nw_socks5_server_cancel_block_invoke_2(v2);
  os_unfair_lock_unlock(v1 + 6);
}

char *nw_shoes_server_create(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = nw_socks5_server_create(a1, a2);
  v3 = v2;
  if (v2)
  {
    v2[136] |= 1u;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "nw_shoes_server_create";
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ created", &v7, 0x16u);
    }

    v5 = v3;
  }

  return v3;
}

void nw_shoes_server_set_error_handler(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __nw_shoes_server_set_error_handler_block_invoke;
  v5[3] = &unk_1E6A39D90;
  v6 = v3;
  v4 = v3;
  nw_socks5_server_set_error_handler(a1, v5);
}

void __nw_shoes_server_set_error_handler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = nw_error_copy_cf_error(v3);
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t nw_shoes_server_fillout_statistics(void *a1, void *a2, size_t a3, char a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_fillout_statistics";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null server", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null server";
LABEL_39:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }

LABEL_40:

LABEL_41:
      if (v14)
      {
        free(v14);
      }

      goto LABEL_11;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v20 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null server, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v20)
    {
      *buf = 136446466;
      *&buf[4] = "nw_socks5_server_fillout_statistics";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null server, dumping backtrace:%{public}s";
LABEL_29:
      _os_log_impl(&dword_181A37000, v15, v16, v21, buf, 0x16u);
    }

LABEL_30:

    free(backtrace_string);
    goto LABEL_41;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_fillout_statistics";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null out_stats", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null out_stats";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null out_stats, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v22 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null out_stats, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_socks5_server_fillout_statistics";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null out_stats, dumping backtrace:%{public}s";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a3 != 8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_server_fillout_statistics";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      v26 = 8;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Unsupported stats size: %zu, expected %zu", buf, 0x20u);
    }

    if (a3 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = a3;
    }

    bzero(a2, v11);
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_socks5_server_fillout_statistics_block_invoke;
  v26 = &unk_1E6A3CD08;
  v28 = a2;
  v27 = v7;
  v29 = a4;
  os_unfair_lock_lock(v8 + 6);
  __nw_socks5_server_fillout_statistics_block_invoke(buf);
  os_unfair_lock_unlock(v8 + 6);

  v9 = 1;
LABEL_12:

  return v9;
}

uint64_t __nw_socks5_server_fillout_statistics_block_invoke(uint64_t result)
{
  **(result + 40) = *(*(result + 32) + 104);
  if (*(result + 48) == 1)
  {
    *(*(result + 32) + 104) = 0;
  }

  return result;
}

void nw_endpoint_fallback_start_fallback_child(NWConcrete_nw_endpoint_handler *a1)
{
  v144 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    mode = v3->mode;

    if (mode != 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 5)
        {
          v21 = "unknown-mode";
        }

        else
        {
          v21 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v131 = "nw_endpoint_fallback_start_fallback_child";
        v132 = 2082;
        v133 = v21;
        v134 = 2082;
        v135 = "fallback";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

      goto LABEL_121;
    }

    v5 = nw_endpoint_handler_copy_fallback(v3);
    v6 = v5;
    if ((*(v5 + 108) & 0x40) == 0)
    {
      v7 = *(v5 + 9);
      if (v7)
      {
        nw_queue_cancel_source(v7);
        v6[9].isa = 0;
      }

      isa = v6[5].isa;
      if (isa)
      {
        v9 = isa;
        v10 = *(v9 + 30);

        if (v10 == 5)
        {
          v11 = v3;
          v12 = *(v11 + 284);

          if ((v12 & 0x40) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v13 = gconnectionLogObj;
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_120;
            }

            v122 = v13;
            v14 = v11;

            v15 = v14;
            v16 = *(v11 + 284);

            if (v16)
            {
              v17 = "dry-run ";
            }

            else
            {
              v17 = "";
            }

            v18 = nw_endpoint_handler_copy_endpoint(v15);
            v19 = v18;
            if (v18)
            {
              logging_description = _nw_endpoint_get_logging_description(v18);
            }

            else
            {
              logging_description = "<NULL>";
            }

            id_str = v14->id_str;

            v85 = v15;
            v86 = v85;
            v87 = v85[30];
            if (v87 > 5)
            {
              v88 = "unknown-state";
            }

            else
            {
              v88 = off_1E6A31048[v87];
            }

            v89 = v86;
            v90 = v89;
            v91 = v3->mode;
            if (v91 > 2)
            {
              switch(v91)
              {
                case 3:
                  v92 = "proxy";
                  goto LABEL_119;
                case 4:
                  v92 = "fallback";
                  goto LABEL_119;
                case 5:
                  v92 = "transform";
                  goto LABEL_119;
              }
            }

            else
            {
              switch(v91)
              {
                case 0:
                  v92 = "path";
                  goto LABEL_119;
                case 1:
                  v92 = "resolver";
                  goto LABEL_119;
                case 2:
                  v92 = nw_endpoint_flow_mode_string(v89[33]);
LABEL_119:

                  v95 = v90;
                  os_unfair_lock_lock(v95 + 28);
                  v96 = v95[8];
                  os_unfair_lock_unlock(v95 + 28);

                  *buf = 136447746;
                  v131 = "nw_endpoint_fallback_start_fallback_child";
                  v132 = 2082;
                  v133 = id_str;
                  v134 = 2082;
                  v135 = v17;
                  v136 = 2082;
                  v137 = logging_description;
                  v138 = 2082;
                  v139 = v88;
                  v140 = 2082;
                  v141 = v92;
                  v142 = 2114;
                  v143 = v96;
                  v13 = v122;
                  _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback child already cancelled", buf, 0x48u);

                  goto LABEL_120;
              }
            }

            v92 = "unknown-mode";
            goto LABEL_119;
          }

LABEL_121:

          goto LABEL_122;
        }

        if (LODWORD(v6[13].isa))
        {
          v40 = BYTE4(v6[13].isa);
          if ((v40 & 0x20) != 0)
          {
            v13 = nw_endpoint_handler_copy_current_path(v6[4].isa);
            v41 = nw_path_copy_direct_interface(v13);
            v42 = v41;
            if (v41 && _nw_interface_get_type(v41) == 2)
            {
              minimize_logging = nw_endpoint_handler_get_minimize_logging(v3);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v3);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_52;
                }

                v127 = v13;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v111 = gconnectionLogObj;
                if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                {
                  loga = nw_endpoint_handler_get_id_string(v3);
                  v119 = nw_endpoint_handler_dry_run_string(v3);
                  v112 = nw_endpoint_handler_copy_endpoint(v3);
                  v113 = nw_endpoint_get_logging_description(v112);
                  v114 = nw_endpoint_handler_state_string(v3);
                  v115 = nw_endpoint_handler_mode_string(v3);
                  v116 = nw_endpoint_handler_copy_current_path(v3);
                  *buf = 136447746;
                  v131 = "nw_endpoint_fallback_start_fallback_child";
                  v132 = 2082;
                  v133 = loga;
                  v134 = 2082;
                  v135 = v119;
                  v136 = 2082;
                  v137 = v113;
                  v138 = 2082;
                  v139 = v114;
                  v140 = 2082;
                  v141 = v115;
                  v142 = 2114;
                  v143 = v116;
                  v45 = v111;
                  _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, because the primary child already uses cellular", buf, 0x48u);

                  v13 = v127;
                }

                else
                {
                  v45 = v111;
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_52:
                  nw_endpoint_handler_cancel(v6[5].isa, 0, 1);

LABEL_120:
                  goto LABEL_121;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v45 = gconnectionLogObj;
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  id_string = nw_endpoint_handler_get_id_string(v3);
                  log = v45;
                  v117 = nw_endpoint_handler_dry_run_string(v3);
                  v118 = nw_endpoint_handler_copy_endpoint(v3);
                  v47 = id_string;
                  v48 = nw_endpoint_get_logging_description(v118);
                  v49 = nw_endpoint_handler_state_string(v3);
                  v50 = nw_endpoint_handler_mode_string(v3);
                  v51 = nw_endpoint_handler_copy_current_path(v3);
                  *buf = 136447746;
                  v131 = "nw_endpoint_fallback_start_fallback_child";
                  v132 = 2082;
                  v133 = v47;
                  v134 = 2082;
                  v135 = v117;
                  v136 = 2082;
                  v137 = v48;
                  v138 = 2082;
                  v139 = v49;
                  v140 = 2082;
                  v141 = v50;
                  v142 = 2114;
                  v143 = v51;
                  v45 = log;
                  _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, because the primary child already uses cellular", buf, 0x48u);
                }
              }

              goto LABEL_52;
            }

            v40 = BYTE4(v6[13].isa);
          }

          BYTE4(v6[13].isa) = v40 | 0x40;
          v3->event = 131077;
          nw_endpoint_handler_report(v3, 0, &v3->event.domain, 0);
          nw_endpoint_handler_start(v6[5].isa);
          goto LABEL_121;
        }

        v61 = v3;
        v62 = *(v61 + 284);

        if ((v62 & 0x20) != 0)
        {
          if (nw_endpoint_handler_get_logging_disabled(v61))
          {
            goto LABEL_73;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v65 = gconnectionLogObj;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v126 = nw_endpoint_handler_get_id_string(v61);
            v105 = nw_endpoint_handler_dry_run_string(v61);
            v106 = nw_endpoint_handler_copy_endpoint(v61);
            v107 = nw_endpoint_get_logging_description(v106);
            v108 = nw_endpoint_handler_state_string(v61);
            v109 = nw_endpoint_handler_mode_string(v61);
            v110 = nw_endpoint_handler_copy_current_path(v61);
            *buf = 136447746;
            v131 = "nw_endpoint_fallback_start_fallback_child";
            v132 = 2082;
            v133 = v126;
            v134 = 2082;
            v135 = v105;
            v136 = 2082;
            v137 = v107;
            v138 = 2082;
            v139 = v108;
            v140 = 2082;
            v141 = v109;
            v142 = 2114;
            v143 = v110;
            _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, disposition is set to no", buf, 0x48u);
          }
        }

        else
        {
          v63 = v61;
          v64 = *(v61 + 284);

          if ((v64 & 0x40) != 0)
          {
LABEL_73:
            nw_endpoint_handler_cancel(v6[5].isa, 0, 1);
            goto LABEL_121;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v65 = gconnectionLogObj;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = nw_endpoint_handler_get_id_string(v63);
            v67 = nw_endpoint_handler_dry_run_string(v63);
            v125 = v65;
            v68 = nw_endpoint_handler_copy_endpoint(v63);
            v69 = nw_endpoint_get_logging_description(v68);
            v70 = nw_endpoint_handler_state_string(v63);
            v71 = nw_endpoint_handler_mode_string(v63);
            v72 = nw_endpoint_handler_copy_current_path(v63);
            *buf = 136447746;
            v131 = "nw_endpoint_fallback_start_fallback_child";
            v132 = 2082;
            v133 = v66;
            v134 = 2082;
            v135 = v67;
            v136 = 2082;
            v137 = v69;
            v138 = 2082;
            v139 = v70;
            v140 = 2082;
            v141 = v71;
            v142 = 2114;
            v143 = v72;
            v65 = v125;
            _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, disposition is set to no", buf, 0x48u);
          }
        }

        goto LABEL_73;
      }

      v31 = v3;
      v32 = *(v31 + 284);

      if ((v32 & 0x40) != 0)
      {
        goto LABEL_121;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v13 = gconnectionLogObj;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_120;
      }

      v124 = v13;
      v33 = v31;

      v34 = v33;
      v35 = *(v31 + 284);

      if (v35)
      {
        v36 = "dry-run ";
      }

      else
      {
        v36 = "";
      }

      v37 = nw_endpoint_handler_copy_endpoint(v34);
      v38 = v37;
      if (v37)
      {
        v39 = _nw_endpoint_get_logging_description(v37);
      }

      else
      {
        v39 = "<NULL>";
      }

      v75 = v33->id_str;

      v76 = v34;
      v77 = v76;
      v78 = v76[30];
      if (v78 > 5)
      {
        v79 = "unknown-state";
      }

      else
      {
        v79 = off_1E6A31048[v78];
      }

      v80 = v77;
      v81 = v80;
      v82 = v3->mode;
      if (v82 > 2)
      {
        switch(v82)
        {
          case 3:
            v83 = "proxy";
            goto LABEL_113;
          case 4:
            v83 = "fallback";
            goto LABEL_113;
          case 5:
            v83 = "transform";
            goto LABEL_113;
        }
      }

      else
      {
        switch(v82)
        {
          case 0:
            v83 = "path";
            goto LABEL_113;
          case 1:
            v83 = "resolver";
            goto LABEL_113;
          case 2:
            v83 = nw_endpoint_flow_mode_string(v80[33]);
LABEL_113:

            v93 = v81;
            os_unfair_lock_lock(v93 + 28);
            v94 = v93[8];
            os_unfair_lock_unlock(v93 + 28);

            *buf = 136447746;
            v131 = "nw_endpoint_fallback_start_fallback_child";
            v132 = 2082;
            v133 = v75;
            v134 = 2082;
            v135 = v36;
            v136 = 2082;
            v137 = v39;
            v138 = 2082;
            v139 = v79;
            v140 = 2082;
            v141 = v83;
            v142 = 2114;
            v143 = v94;
            v13 = v124;
            _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No fallback child found", buf, 0x48u);

            goto LABEL_120;
        }
      }

      v83 = "unknown-mode";
      goto LABEL_113;
    }

    v22 = v3;
    v23 = *(v22 + 284);

    if ((v23 & 0x40) != 0)
    {
      goto LABEL_121;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v13 = gconnectionLogObj;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_120;
    }

    v123 = v13;
    v24 = v22;

    v25 = v24;
    v26 = *(v22 + 284);

    if (v26)
    {
      v27 = "dry-run ";
    }

    else
    {
      v27 = "";
    }

    v28 = nw_endpoint_handler_copy_endpoint(v25);
    v29 = v28;
    if (v28)
    {
      v30 = _nw_endpoint_get_logging_description(v28);
    }

    else
    {
      v30 = "<NULL>";
    }

    v52 = v24->id_str;

    v53 = v25;
    v54 = v53;
    v55 = v53[30];
    if (v55 > 5)
    {
      v56 = "unknown-state";
    }

    else
    {
      v56 = off_1E6A31048[v55];
    }

    v57 = v54;
    v58 = v57;
    v59 = v3->mode;
    if (v59 > 2)
    {
      switch(v59)
      {
        case 3:
          v60 = "proxy";
          goto LABEL_79;
        case 4:
          v60 = "fallback";
          goto LABEL_79;
        case 5:
          v60 = "transform";
          goto LABEL_79;
      }
    }

    else
    {
      switch(v59)
      {
        case 0:
          v60 = "path";
          goto LABEL_79;
        case 1:
          v60 = "resolver";
          goto LABEL_79;
        case 2:
          v60 = nw_endpoint_flow_mode_string(v57[33]);
LABEL_79:

          v73 = v58;
          os_unfair_lock_lock(v73 + 28);
          v74 = v73[8];
          os_unfair_lock_unlock(v73 + 28);

          *buf = 136447746;
          v131 = "nw_endpoint_fallback_start_fallback_child";
          v132 = 2082;
          v133 = v52;
          v134 = 2082;
          v135 = v27;
          v136 = 2082;
          v137 = v30;
          v138 = 2082;
          v139 = v56;
          v140 = 2082;
          v141 = v60;
          v142 = 2114;
          v143 = v74;
          v13 = v123;
          _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Already started fallback, skipping", buf, 0x48u);

          goto LABEL_120;
      }
    }

    v60 = "unknown-mode";
    goto LABEL_79;
  }

  v97 = __nwlog_obj();
  *buf = 136446210;
  v131 = "nw_endpoint_fallback_start_fallback_child";
  v98 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v128 = 0;
  if (__nwlog_fault(v98, &type, &v128))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (os_log_type_enabled(v99, type))
      {
        *buf = 136446210;
        v131 = "nw_endpoint_fallback_start_fallback_child";
        _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v128 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v99 = __nwlog_obj();
      v102 = type;
      v103 = os_log_type_enabled(v99, type);
      if (backtrace_string)
      {
        if (v103)
        {
          *buf = 136446466;
          v131 = "nw_endpoint_fallback_start_fallback_child";
          v132 = 2082;
          v133 = backtrace_string;
          _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_139;
      }

      if (v103)
      {
        *buf = 136446210;
        v131 = "nw_endpoint_fallback_start_fallback_child";
        _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v99 = __nwlog_obj();
      v104 = type;
      if (os_log_type_enabled(v99, type))
      {
        *buf = 136446210;
        v131 = "nw_endpoint_fallback_start_fallback_child";
        _os_log_impl(&dword_181A37000, v99, v104, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_139:
  if (v98)
  {
    free(v98);
  }

LABEL_122:
}

void nw_endpoint_fallback_start_post_transport_timer(NWConcrete_nw_endpoint_handler *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_endpoint_handler_copy_fallback(v1);
  v3 = v2[10];
  if (v3)
  {
    nw_queue_cancel_source(v3);
    v2[10] = 0;
  }

  int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_post_transport_timeout, 3000);
  if ((nw_endpoint_handler_get_logging_disabled(v1) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v27 = int64_with_default;
      id_string = nw_endpoint_handler_get_id_string(v1);
      v7 = nw_endpoint_handler_dry_run_string(v1);
      v8 = nw_endpoint_handler_copy_endpoint(v1);
      v9 = v8;
      if (v8)
      {
        logging_description = _nw_endpoint_get_logging_description(v8);
        v11 = v2;
      }

      else
      {
        v11 = v2;
        logging_description = "<NULL>";
      }

      v12 = nw_endpoint_handler_state_string(v1);
      v13 = nw_endpoint_handler_mode_string(v1);
      v14 = nw_endpoint_handler_copy_current_path(v1);
      *buf = 136448002;
      v33 = "nw_endpoint_fallback_start_post_transport_timer";
      v34 = 2082;
      v35 = id_string;
      v36 = 2082;
      v37 = v7;
      v38 = 2082;
      v39 = logging_description;
      v40 = 2082;
      v41 = v12;
      v42 = 2082;
      v43 = v13;
      v44 = 2114;
      v45 = v14;
      v46 = 2048;
      int64_with_default = v27;
      v47 = v27;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting post-transport fallback timer for %llums", buf, 0x52u);

      v2 = v11;
    }
  }

  v15 = nw_endpoint_handler_copy_context(v1);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___ZL47nw_endpoint_fallback_start_post_transport_timerP30NWConcrete_nw_endpoint_handler_block_invoke;
  v30[3] = &unk_1E6A3D868;
  v16 = v1;
  v31 = v16;
  v2[10] = nw_queue_context_create_source(v15, 2, 3, 0, v30, 0);

  v17 = v2[10];
  if (v17)
  {
    v18 = dispatch_time(0x8000000000000000, 1000000 * int64_with_default);
    if (*v17)
    {
      dispatch_source_set_timer(*v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    }

    else
    {
      *(v17 + 32) = v18;
      *(v17 + 40) = -1;
      if (*(v17 + 48) == 1 && *(v17 + 49) == 1)
      {
        nw_queue_source_run_timer(v17);
      }
    }

    nw_queue_activate_source(v2[10]);
    goto LABEL_26;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  *buf = 136446210;
  v33 = "nw_endpoint_fallback_start_post_transport_timer";
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s nw_queue_context_create_source(timer) failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v20, &type, &v28))
  {
    goto LABEL_20;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = type;
    if (os_log_type_enabled(v21, type))
    {
      *buf = 136446210;
      v33 = "nw_endpoint_fallback_start_post_transport_timer";
      _os_log_impl(&dword_181A37000, v21, v22, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
    }

LABEL_19:

LABEL_20:
    if (!v20)
    {
      goto LABEL_26;
    }

LABEL_21:
    free(v20);
    goto LABEL_26;
  }

  if (v28 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v26 = type;
    if (os_log_type_enabled(v21, type))
    {
      *buf = 136446210;
      v33 = "nw_endpoint_fallback_start_post_transport_timer";
      _os_log_impl(&dword_181A37000, v21, v26, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_19;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  v24 = type;
  v25 = os_log_type_enabled(v21, type);
  if (!backtrace_string)
  {
    if (v25)
    {
      *buf = 136446210;
      v33 = "nw_endpoint_fallback_start_post_transport_timer";
      _os_log_impl(&dword_181A37000, v21, v24, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (v25)
  {
    *buf = 136446466;
    v33 = "nw_endpoint_fallback_start_post_transport_timer";
    v34 = 2082;
    v35 = backtrace_string;
    _os_log_impl(&dword_181A37000, v21, v24, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v20)
  {
    goto LABEL_21;
  }

LABEL_26:
}

void nw_endpoint_fallback_start_usage_cap_timer(NWConcrete_nw_endpoint_handler *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_endpoint_handler_copy_fallback(v1);
  v3 = *(v2 + 11);
  if (v3)
  {
    nw_queue_cancel_source(v3);
    *(v2 + 11) = 0;
  }

  *(v2 + 2) = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_usage_cap_interval, 3000);
  minimize_logging = nw_endpoint_handler_get_minimize_logging(v1);
  logging_disabled = nw_endpoint_handler_get_logging_disabled(v1);
  if (!minimize_logging)
  {
    if (logging_disabled)
    {
      goto LABEL_13;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      id_string = nw_endpoint_handler_get_id_string(v1);
      v8 = nw_endpoint_handler_dry_run_string(v1);
      v9 = nw_endpoint_handler_copy_endpoint(v1);
      v10 = v9;
      if (v9)
      {
        logging_description = _nw_endpoint_get_logging_description(v9);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v12 = nw_endpoint_handler_state_string(v1);
      v13 = nw_endpoint_handler_mode_string(v1);
      v14 = nw_endpoint_handler_copy_current_path(v1);
      v15 = *(v2 + 1);
      v16 = *(v2 + 2);
      *buf = 136448258;
      v43 = "nw_endpoint_fallback_start_usage_cap_timer";
      v44 = 2082;
      v45 = id_string;
      v46 = 2082;
      v47 = v8;
      v48 = 2082;
      v49 = logging_description;
      v50 = 2082;
      v51 = v12;
      v52 = 2082;
      v53 = v13;
      v54 = 2114;
      v55 = v14;
      v56 = 2048;
      v57 = v15;
      v58 = 2048;
      v59 = v16;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] applying data cap of %llu to fallback child, checking every %llums", buf, 0x5Cu);
    }

    goto LABEL_12;
  }

  if ((logging_disabled & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v29 = nw_endpoint_handler_get_id_string(v1);
      v30 = nw_endpoint_handler_dry_run_string(v1);
      v31 = nw_endpoint_handler_copy_endpoint(v1);
      v32 = nw_endpoint_get_logging_description(v31);
      v33 = nw_endpoint_handler_state_string(v1);
      v34 = nw_endpoint_handler_mode_string(v1);
      v35 = nw_endpoint_handler_copy_current_path(v1);
      v36 = *(v2 + 1);
      v37 = *(v2 + 2);
      *buf = 136448258;
      v43 = "nw_endpoint_fallback_start_usage_cap_timer";
      v44 = 2082;
      v45 = v29;
      v46 = 2082;
      v47 = v30;
      v48 = 2082;
      v49 = v32;
      v50 = 2082;
      v51 = v33;
      v52 = 2082;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      v56 = 2048;
      v57 = v36;
      v58 = 2048;
      v59 = v37;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] applying data cap of %llu to fallback child, checking every %llums", buf, 0x5Cu);
    }

LABEL_12:
  }

LABEL_13:
  v17 = nw_endpoint_handler_copy_context(v1);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___ZL42nw_endpoint_fallback_start_usage_cap_timerP30NWConcrete_nw_endpoint_handler_block_invoke;
  v40[3] = &unk_1E6A3D868;
  v18 = v1;
  v41 = v18;
  *(v2 + 11) = nw_queue_context_create_source(v17, 2, 3, 0, v40, 0);

  v19 = *(v2 + 11);
  if (v19)
  {
    v20 = dispatch_time(0x8000000000000000, 1000000 * *(v2 + 2));
    if (*v19)
    {
      dispatch_source_set_timer(*v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    }

    else
    {
      *(v19 + 32) = v20;
      *(v19 + 40) = -1;
      if (*(v19 + 48) == 1 && *(v19 + 49) == 1)
      {
        nw_queue_source_run_timer(v19);
      }
    }

    nw_queue_activate_source(*(v2 + 11));
    goto LABEL_39;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  *buf = 136446210;
  v43 = "nw_endpoint_fallback_start_usage_cap_timer";
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s nw_queue_context_create_source(timer) failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v22, &type, &v38))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = type;
    if (os_log_type_enabled(v23, type))
    {
      *buf = 136446210;
      v43 = "nw_endpoint_fallback_start_usage_cap_timer";
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
    }

LABEL_36:

LABEL_37:
    if (!v22)
    {
      goto LABEL_39;
    }

LABEL_38:
    free(v22);
    goto LABEL_39;
  }

  if (v38 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v28 = type;
    if (os_log_type_enabled(v23, type))
    {
      *buf = 136446210;
      v43 = "nw_endpoint_fallback_start_usage_cap_timer";
      _os_log_impl(&dword_181A37000, v23, v28, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_36;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v23, type);
  if (!backtrace_string)
  {
    if (v27)
    {
      *buf = 136446210;
      v43 = "nw_endpoint_fallback_start_usage_cap_timer";
      _os_log_impl(&dword_181A37000, v23, v26, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_36;
  }

  if (v27)
  {
    *buf = 136446466;
    v43 = "nw_endpoint_fallback_start_usage_cap_timer";
    v44 = 2082;
    v45 = backtrace_string;
    _os_log_impl(&dword_181A37000, v23, v26, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v22)
  {
    goto LABEL_38;
  }

LABEL_39:
}

void sub_1826A6538(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL42nw_endpoint_fallback_start_usage_cap_timerP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1)
{
  v205 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1;
  if (!v1)
  {
    v140 = __nwlog_obj();
    *buf = 136446210;
    v190 = "nw_endpoint_fallback_check_usage_cap";
    v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s called with null handler", buf, 12);

    v180[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v188[0]) = 0;
    if (__nwlog_fault(v141, v180, v188))
    {
      if (v180[0] == OS_LOG_TYPE_FAULT)
      {
        v142 = __nwlog_obj();
        v143 = v180[0];
        if (os_log_type_enabled(v142, v180[0]))
        {
          *buf = 136446210;
          v190 = "nw_endpoint_fallback_check_usage_cap";
          _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (LOBYTE(v188[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v142 = __nwlog_obj();
        v145 = v180[0];
        v146 = os_log_type_enabled(v142, v180[0]);
        if (backtrace_string)
        {
          if (v146)
          {
            *buf = 136446466;
            v190 = "nw_endpoint_fallback_check_usage_cap";
            v191 = 2082;
            v192 = backtrace_string;
            _os_log_impl(&dword_181A37000, v142, v145, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_194;
        }

        if (v146)
        {
          *buf = 136446210;
          v190 = "nw_endpoint_fallback_check_usage_cap";
          _os_log_impl(&dword_181A37000, v142, v145, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v142 = __nwlog_obj();
        v147 = v180[0];
        if (os_log_type_enabled(v142, v180[0]))
        {
          *buf = 136446210;
          v190 = "nw_endpoint_fallback_check_usage_cap";
          _os_log_impl(&dword_181A37000, v142, v147, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_194:
    if (v141)
    {
      free(v141);
    }

    goto LABEL_167;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 4)
  {
    v175 = v2;
    v5 = nw_endpoint_handler_copy_fallback(v3);
    v186 = 0;
    v187 = 0;
    v185 = 0;
    if (nw_endpoint_handler_fillout_data_transfer_snapshot(*(v5 + 5), &v187, &v186, &v185, 2))
    {
      v6 = v187 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6 && v186 != 0)
    {
      v22 = *(v187 + 6);
      v23 = *(v5 + 1);
      v24 = v23 >= v22;
      v25 = v23 - v22;
      if (v24 && *(v187 + 9) <= v25)
      {
        v38 = *(v5 + 11);
        v39 = dispatch_time(0x8000000000000000, 1000000 * *(v5 + 2));
        nw_queue_set_timer_values(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
        goto LABEL_163;
      }

      v177 = v5;
      v26 = v3;
      v27 = (*(v26 + 284) & 0x20) == 0;

      if (!v27)
      {
        if (nw_endpoint_handler_get_logging_disabled(v26))
        {
LABEL_83:
          v69 = v26;
          v173 = v69[4];

          v188[0] = 0;
          v188[1] = 0;
          nw_parameters_get_e_proc_uuid(v173);
          nw_parameters_get_pid(v173);
          nw_parameters_get_effective_bundle_id(v173);
          v70 = nw_queue_copy_current_workloop();
          *v180 = MEMORY[0x1E69E9820];
          v181 = 3221225472;
          v182 = ___ZL36nw_endpoint_fallback_check_usage_capP30NWConcrete_nw_endpoint_handler_block_invoke;
          v183 = &unk_1E6A31FE8;
          v71 = v69;
          v184 = v71;
          v72 = _symptoms_daemon_fallback_subseq_disposition();

          if (v72)
          {
LABEL_162:

            v5 = v177;
LABEL_163:
            if (v185 == 1 && v187)
            {
              free(v187);
            }

            v2 = v175;
            goto LABEL_167;
          }

          v73 = v71;
          v74 = (*(v26 + 284) & 0x40) == 0;

          if (!v74)
          {
LABEL_159:
            v138 = v177;
            v139 = *(v177 + 11);
            if (v139)
            {
              nw_queue_cancel_source(v139);
              v138 = v177;
              *(v177 + 11) = 0;
            }

            nw_endpoint_handler_cancel(*(v138 + 5), 0, 1);
            goto LABEL_162;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v167 = gconnectionLogObj;
          v75 = v73;

          v76 = v75;
          v77 = (*(v26 + 284) & 1) == 0;

          if (v77)
          {
            v78 = "";
          }

          else
          {
            v78 = "dry-run ";
          }

          v79 = nw_endpoint_handler_copy_endpoint(v76);
          v80 = v79;
          v164 = v78;
          if (v79)
          {
            logging_description = _nw_endpoint_get_logging_description(v79);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v81 = v76;
          v82 = v81;
          v83 = v81[30];
          if (v83 > 5)
          {
            v84 = "unknown-state";
          }

          else
          {
            v84 = off_1E6A31048[v83];
          }

          v85 = v82;
          v86 = v85;
          v87 = v3->mode;
          if (v87 > 2)
          {
            if (v87 == 3)
            {
              v88 = "proxy";
              goto LABEL_110;
            }

            if (v87 != 4)
            {
              if (v87 == 5)
              {
                v88 = "transform";
                goto LABEL_110;
              }

              goto LABEL_107;
            }

            v88 = "fallback";
          }

          else
          {
            if (!v87)
            {
              v88 = "path";
              goto LABEL_110;
            }

            if (v87 != 1)
            {
              if (v87 == 2)
              {
                v88 = nw_endpoint_flow_mode_string(*(v85 + 33));
                goto LABEL_110;
              }

LABEL_107:
              v88 = "unknown-mode";
              goto LABEL_110;
            }

            v88 = "resolver";
          }

LABEL_110:

          v89 = v86;
          os_unfair_lock_lock(v89 + 28);
          v90 = *(v89 + 8);
          os_unfair_lock_unlock(v89 + 28);

          *buf = 136447746;
          v190 = "nw_endpoint_fallback_check_usage_cap";
          v191 = 2082;
          v162 = v75 + 184;
          v192 = v75 + 184;
          v193 = 2082;
          v194 = v164;
          v195 = 2082;
          v196 = logging_description;
          v197 = 2082;
          v198 = v84;
          v199 = 2082;
          v200 = v88;
          v201 = 2114;
          v202 = v90;
          v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v167, 16, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback", buf, 72);

          type = OS_LOG_TYPE_ERROR;
          v178 = 0;
          if (!__nwlog_fault(v91, &type, &v178))
          {
            goto LABEL_157;
          }

          if (type != OS_LOG_TYPE_FAULT)
          {
            if (v178 == 1)
            {
              v101 = __nw_create_backtrace_string();
              if (v101)
              {
                v102 = v101;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v103 = gconnectionLogObj;
                v104 = type;
                if (os_log_type_enabled(v103, type))
                {
                  id_string = nw_endpoint_handler_get_id_string(v89);
                  v106 = nw_endpoint_handler_dry_run_string(v89);
                  v165 = nw_endpoint_handler_copy_endpoint(v89);
                  v169 = v91;
                  v107 = nw_endpoint_get_logging_description(v165);
                  v108 = nw_endpoint_handler_state_string(v89);
                  v109 = nw_endpoint_handler_mode_string(v89);
                  v110 = nw_endpoint_handler_copy_current_path(v89);
                  *buf = 136448002;
                  v190 = "nw_endpoint_fallback_check_usage_cap";
                  v191 = 2082;
                  v192 = id_string;
                  v193 = 2082;
                  v194 = v106;
                  v195 = 2082;
                  v196 = v107;
                  v197 = 2082;
                  v198 = v108;
                  v199 = 2082;
                  v200 = v109;
                  v201 = 2114;
                  v202 = v110;
                  v203 = 2082;
                  v204 = v102;
                  _os_log_impl(&dword_181A37000, v103, v104, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback, dumping backtrace:%{public}s", buf, 0x52u);

                  v91 = v169;
                }

                free(v102);
                goto LABEL_157;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v92 = gconnectionLogObj;
              v119 = type;
              if (os_log_type_enabled(v92, type))
              {
                v120 = nw_endpoint_handler_get_id_string(v89);
                v121 = nw_endpoint_handler_dry_run_string(v89);
                v122 = nw_endpoint_handler_copy_endpoint(v89);
                v171 = v91;
                v123 = nw_endpoint_get_logging_description(v122);
                v124 = nw_endpoint_handler_state_string(v89);
                v125 = nw_endpoint_handler_mode_string(v89);
                v126 = nw_endpoint_handler_copy_current_path(v89);
                *buf = 136447746;
                v190 = "nw_endpoint_fallback_check_usage_cap";
                v191 = 2082;
                v192 = v120;
                v193 = 2082;
                v194 = v121;
                v195 = 2082;
                v196 = v123;
                v197 = 2082;
                v198 = v124;
                v199 = 2082;
                v200 = v125;
                v201 = 2114;
                v202 = v126;
                _os_log_impl(&dword_181A37000, v92, v119, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback, no backtrace", buf, 0x48u);

                v91 = v171;
              }
            }

            else
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v92 = gconnectionLogObj;
              v111 = type;
              if (os_log_type_enabled(v92, type))
              {
                v112 = nw_endpoint_handler_get_id_string(v89);
                v113 = nw_endpoint_handler_dry_run_string(v89);
                v114 = nw_endpoint_handler_copy_endpoint(v89);
                v170 = v91;
                v115 = nw_endpoint_get_logging_description(v114);
                v116 = nw_endpoint_handler_state_string(v89);
                v117 = nw_endpoint_handler_mode_string(v89);
                v118 = nw_endpoint_handler_copy_current_path(v89);
                *buf = 136447746;
                v190 = "nw_endpoint_fallback_check_usage_cap";
                v191 = 2082;
                v192 = v112;
                v193 = 2082;
                v194 = v113;
                v195 = 2082;
                v196 = v115;
                v197 = 2082;
                v198 = v116;
                v199 = 2082;
                v200 = v117;
                v201 = 2114;
                v202 = v118;
                _os_log_impl(&dword_181A37000, v92, v111, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback, backtrace limit exceeded", buf, 0x48u);

                v91 = v170;
              }
            }

            goto LABEL_156;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v92 = gconnectionLogObj;
          v93 = type;
          if (!os_log_type_enabled(v92, type))
          {
LABEL_156:

LABEL_157:
            if (v91)
            {
              free(v91);
            }

            goto LABEL_159;
          }

          v94 = v89;

          v95 = v94;
          v96 = (*(v26 + 284) & 1) == 0;

          if (v96)
          {
            v97 = "";
          }

          else
          {
            v97 = "dry-run ";
          }

          v98 = nw_endpoint_handler_copy_endpoint(v95);
          v99 = v98;
          v168 = v97;
          if (v98)
          {
            v100 = _nw_endpoint_get_logging_description(v98);
          }

          else
          {
            v100 = "<NULL>";
          }

          v127 = v95;
          v128 = v127;
          v129 = v82[30];
          if (v129 > 5)
          {
            v130 = "unknown-state";
          }

          else
          {
            v130 = off_1E6A31048[v129];
          }

          v166 = v130;

          v131 = v128;
          v132 = v131;
          v133 = v3->mode;
          if (v133 > 2)
          {
            switch(v133)
            {
              case 3:
                v134 = "proxy";
                goto LABEL_155;
              case 4:
                v134 = "fallback";
                goto LABEL_155;
              case 5:
                v134 = "transform";
                goto LABEL_155;
            }
          }

          else
          {
            switch(v133)
            {
              case 0:
                v134 = "path";
                goto LABEL_155;
              case 1:
                v134 = "resolver";
                goto LABEL_155;
              case 2:
                v134 = nw_endpoint_flow_mode_string(v131[33]);
LABEL_155:

                v135 = v91;
                v136 = v132;
                os_unfair_lock_lock(v89 + 28);
                v137 = *(v89 + 8);
                os_unfair_lock_unlock(v89 + 28);

                v91 = v135;
                *buf = 136447746;
                v190 = "nw_endpoint_fallback_check_usage_cap";
                v191 = 2082;
                v192 = v162;
                v193 = 2082;
                v194 = v168;
                v195 = 2082;
                v196 = v100;
                v197 = 2082;
                v198 = v166;
                v199 = 2082;
                v200 = v134;
                v201 = 2114;
                v202 = v137;
                _os_log_impl(&dword_181A37000, v92, v93, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback", buf, 0x48u);

                goto LABEL_156;
            }
          }

          v134 = "unknown-mode";
          goto LABEL_155;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v30 = gconnectionLogObj;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v155 = nw_endpoint_handler_get_id_string(v26);
          v174 = nw_endpoint_handler_dry_run_string(v26);
          v156 = nw_endpoint_handler_copy_endpoint(v26);
          v157 = nw_endpoint_get_logging_description(v156);
          v158 = nw_endpoint_handler_state_string(v26);
          v159 = nw_endpoint_handler_mode_string(v26);
          v160 = nw_endpoint_handler_copy_current_path(v26);
          v161 = *(v177 + 1);
          *buf = 136448002;
          v190 = "nw_endpoint_fallback_check_usage_cap";
          v191 = 2082;
          v192 = v155;
          v193 = 2082;
          v194 = v174;
          v195 = 2082;
          v196 = v157;
          v197 = 2082;
          v198 = v158;
          v199 = 2082;
          v200 = v159;
          v201 = 2114;
          v202 = v160;
          v203 = 2048;
          v204 = v161;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback reached usage cap of %llu bytes, asking for an update from symptoms", buf, 0x52u);
        }

LABEL_82:

        goto LABEL_83;
      }

      v28 = v26;
      v29 = (*(v26 + 284) & 0x40) == 0;

      if (!v29)
      {
        goto LABEL_83;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_82;
      }

      v31 = v28;

      v32 = v31;
      v33 = (*(v26 + 284) & 1) == 0;

      if (v33)
      {
        v34 = "";
      }

      else
      {
        v34 = "dry-run ";
      }

      v35 = nw_endpoint_handler_copy_endpoint(v32);
      v36 = v35;
      if (v35)
      {
        v37 = _nw_endpoint_get_logging_description(v35);
      }

      else
      {
        v37 = "<NULL>";
      }

      v48 = v32;
      v49 = v48;
      v50 = v48[30];
      if (v50 > 5)
      {
        v51 = "unknown-state";
      }

      else
      {
        v51 = off_1E6A31048[v50];
      }

      v172 = v51;

      v52 = v49;
      v53 = v52;
      v54 = v3->mode;
      if (v54 > 2)
      {
        switch(v54)
        {
          case 3:
            v55 = "proxy";
            goto LABEL_81;
          case 4:
            v55 = "fallback";
            goto LABEL_81;
          case 5:
            v55 = "transform";
            goto LABEL_81;
        }
      }

      else
      {
        switch(v54)
        {
          case 0:
            v55 = "path";
            goto LABEL_81;
          case 1:
            v55 = "resolver";
            goto LABEL_81;
          case 2:
            v55 = nw_endpoint_flow_mode_string(v52[33]);
LABEL_81:

            v60 = v3;
            v61 = v26;
            v62 = v30;
            v63 = v37;
            v64 = v34;
            v65 = v53;
            os_unfair_lock_lock(v65 + 28);
            v66 = v65[8];
            os_unfair_lock_unlock(v65 + 28);

            v67 = v63;
            v30 = v62;
            v26 = v61;
            v3 = v60;
            v68 = *(v177 + 1);
            *buf = 136448002;
            v190 = "nw_endpoint_fallback_check_usage_cap";
            v191 = 2082;
            v192 = v31 + 184;
            v193 = 2082;
            v194 = v64;
            v195 = 2082;
            v196 = v67;
            v197 = 2082;
            v198 = v172;
            v199 = 2082;
            v200 = v55;
            v201 = 2114;
            v202 = v66;
            v203 = 2048;
            v204 = v68;
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback reached usage cap of %llu bytes, asking for an update from symptoms", buf, 0x52u);

            goto LABEL_82;
        }
      }

      v55 = "unknown-mode";
      goto LABEL_81;
    }

    v176 = v5;
    v8 = v3;
    v9 = (*(v8 + 284) & 0x20) == 0;

    if (!v9)
    {
      if (nw_endpoint_handler_get_logging_disabled(v8))
      {
LABEL_74:
        v5 = v176;
        v59 = v176[11];
        if (v59)
        {
          nw_queue_cancel_source(v59);
          v176[11] = 0;
        }

        goto LABEL_163;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v148 = nw_endpoint_handler_get_id_string(v8);
        v149 = nw_endpoint_handler_dry_run_string(v8);
        v150 = nw_endpoint_handler_copy_endpoint(v8);
        v151 = nw_endpoint_get_logging_description(v150);
        v152 = nw_endpoint_handler_state_string(v8);
        v153 = nw_endpoint_handler_mode_string(v8);
        v154 = nw_endpoint_handler_copy_current_path(v8);
        *buf = 136447746;
        v190 = "nw_endpoint_fallback_check_usage_cap";
        v191 = 2082;
        v192 = v148;
        v193 = 2082;
        v194 = v149;
        v195 = 2082;
        v196 = v151;
        v197 = 2082;
        v198 = v152;
        v199 = 2082;
        v200 = v153;
        v201 = 2114;
        v202 = v154;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to get byte count for fallback connection with data cap, ignoring", buf, 0x48u);
      }

LABEL_73:

      goto LABEL_74;
    }

    v10 = v8;
    v11 = (*(v8 + 284) & 0x40) == 0;

    if (!v11)
    {
      goto LABEL_74;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_73;
    }

    v13 = v10;

    v14 = v13;
    v15 = (*(v8 + 284) & 1) == 0;

    if (v15)
    {
      v16 = "";
    }

    else
    {
      v16 = "dry-run ";
    }

    v17 = nw_endpoint_handler_copy_endpoint(v14);
    v18 = v17;
    if (v17)
    {
      v19 = _nw_endpoint_get_logging_description(v17);
    }

    else
    {
      v19 = "<NULL>";
    }

    v40 = v14;
    v41 = v40;
    v42 = v40[30];
    if (v42 > 5)
    {
      v43 = "unknown-state";
    }

    else
    {
      v43 = off_1E6A31048[v42];
    }

    v44 = v41;
    v45 = v44;
    v46 = v3->mode;
    if (v46 > 2)
    {
      switch(v46)
      {
        case 3:
          v47 = "proxy";
          goto LABEL_72;
        case 4:
          v47 = "fallback";
          goto LABEL_72;
        case 5:
          v47 = "transform";
          goto LABEL_72;
      }
    }

    else
    {
      switch(v46)
      {
        case 0:
          v47 = "path";
          goto LABEL_72;
        case 1:
          v47 = "resolver";
          goto LABEL_72;
        case 2:
          v47 = nw_endpoint_flow_mode_string(v44[33]);
LABEL_72:

          v56 = v16;
          v57 = v45;
          os_unfair_lock_lock(v57 + 28);
          v58 = v57[8];
          os_unfair_lock_unlock(v57 + 28);

          *buf = 136447746;
          v190 = "nw_endpoint_fallback_check_usage_cap";
          v191 = 2082;
          v192 = v13 + 184;
          v193 = 2082;
          v194 = v56;
          v195 = 2082;
          v196 = v19;
          v197 = 2082;
          v198 = v43;
          v199 = 2082;
          v200 = v47;
          v201 = 2114;
          v202 = v58;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to get byte count for fallback connection with data cap, ignoring", buf, 0x48u);

          goto LABEL_73;
      }
    }

    v47 = "unknown-mode";
    goto LABEL_72;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v21 = "unknown-mode";
    }

    else
    {
      v21 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v190 = "nw_endpoint_fallback_check_usage_cap";
    v191 = 2082;
    v192 = v21;
    v193 = 2082;
    v194 = "fallback";
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_167:
}

void ___ZL36nw_endpoint_fallback_check_usage_capP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v41, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v55 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v45 = type;
        v46 = os_log_type_enabled(v42, type);
        if (backtrace_string)
        {
          if (v46)
          {
            *buf = 136446466;
            v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
            v59 = 2082;
            v60 = backtrace_string;
            _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_64;
        }

        if (v46)
        {
          *buf = 136446210;
          v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v42 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_64:
    if (v41)
    {
      free(v41);
    }

    return;
  }

  v7 = v3;
  v8 = v7[29];

  if (v8 == 4)
  {
    v9 = nw_endpoint_handler_copy_fallback(*(a1 + 32));
    v10 = v9;
    v11 = *(v9 + 1);
    v12 = __CFADD__(v11, a3);
    v13 = v11 + a3;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2;
    }

    if (v12)
    {
      v13 = -1;
    }

    *(v9 + 26) = v14;
    *(v9 + 1) = v13;
    if (a2 == 2)
    {
      v31 = *(v9 + 11);
      v32 = dispatch_time(0x8000000000000000, 1000000 * *(v9 + 2));
      nw_queue_set_timer_values(v31, v32, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    }

    else
    {
      if (a2 != 1)
      {
        if (!a2)
        {
          if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v15 = gconnectionLogObj;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
              v17 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
              v18 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
              v19 = v18;
              if (v18)
              {
                logging_description = _nw_endpoint_get_logging_description(v18);
              }

              else
              {
                logging_description = "<NULL>";
              }

              v33 = nw_endpoint_handler_state_string(*(a1 + 32));
              v34 = nw_endpoint_handler_mode_string(*(a1 + 32));
              v35 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
              *buf = 136447746;
              v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
              v59 = 2082;
              v60 = id_string;
              v61 = 2082;
              v62 = v17;
              v63 = 2082;
              v64 = logging_description;
              v65 = 2082;
              v66 = v33;
              v67 = 2082;
              v68 = v34;
              v69 = 2114;
              v70 = v35;
              _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback no longer allowed for connection, cancelling", buf, 0x48u);
            }
          }

          v36 = *(v10 + 11);
          if (v36)
          {
            nw_queue_cancel_source(v36);
            *(v10 + 11) = 0;
          }

          nw_endpoint_handler_cancel(*(v10 + 5), 0, 1);
        }

        goto LABEL_41;
      }

      minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
      logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
      if (minimize_logging)
      {
        if (logging_disabled)
        {
          goto LABEL_41;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v25 = gconnectionLogObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v48 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v49 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v50 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v51 = nw_endpoint_get_logging_description(v50);
          v52 = nw_endpoint_handler_state_string(*(a1 + 32));
          v53 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v54 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136447746;
          v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          v59 = 2082;
          v60 = v48;
          v61 = 2082;
          v62 = v49;
          v63 = 2082;
          v64 = v51;
          v65 = 2082;
          v66 = v52;
          v67 = 2082;
          v68 = v53;
          v69 = 2114;
          v70 = v54;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback now allowed for connection with no cap", buf, 0x48u);
        }

        goto LABEL_40;
      }

      if ((logging_disabled & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v25 = gconnectionLogObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v27 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v28 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v29 = v28;
          if (v28)
          {
            v30 = _nw_endpoint_get_logging_description(v28);
          }

          else
          {
            v30 = "<NULL>";
          }

          v37 = nw_endpoint_handler_state_string(*(a1 + 32));
          v38 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v39 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136447746;
          v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          v59 = 2082;
          v60 = v26;
          v61 = 2082;
          v62 = v27;
          v63 = 2082;
          v64 = v30;
          v65 = 2082;
          v66 = v37;
          v67 = 2082;
          v68 = v38;
          v69 = 2114;
          v70 = v39;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback now allowed for connection with no cap", buf, 0x48u);
        }

LABEL_40:
      }
    }

LABEL_41:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 > 5)
    {
      v22 = "unknown-mode";
    }

    else
    {
      v22 = off_1E6A31018[v8];
    }

    *buf = 136446722;
    v58 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
    v59 = 2082;
    v60 = v22;
    v61 = 2082;
    v62 = "fallback";
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }
}

void ___ZL47nw_endpoint_fallback_start_post_transport_timerP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 20) = 327685;
  nw_endpoint_handler_report(v1, 0, v1 + 40, 0);
}

uint64_t nw_endpoint_fallback_get_timeout_nanos_for_path(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = _nw_path_fallback_is_weak(v3);

    if (v4)
    {
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_weak_fallback_delay, 200);
      v6 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_delay_cap_ms, 500);
      v7 = 2 * int64_with_default;
      if (2 * int64_with_default >= v6)
      {
        v7 = v6;
      }

      if (int64_with_default <= 0x7FFFFFFFFFFFFFFELL)
      {
        v6 = v7;
      }
    }

    else
    {
      v6 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_strong_fallback_delay, 100);
    }

    v8 = 1000000 * v6;
    goto LABEL_10;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_10:

  return v8;
}

void nw_endpoint_fallback_reset_expected_progress_target(void *a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_endpoint_handler_get_mode";
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (__nwlog_fault(v49, &type, &v81))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v50, type))
        {
          *buf = 136446210;
          v84 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v81 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v53 = type;
        v54 = os_log_type_enabled(v50, type);
        if (backtrace_string)
        {
          if (v54)
          {
            *buf = 136446466;
            v84 = "nw_endpoint_handler_get_mode";
            v85 = 2082;
            v86 = backtrace_string;
            _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_65;
        }

        if (v54)
        {
          *buf = 136446210;
          v84 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v50 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v50, type))
        {
          *buf = 136446210;
          v84 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v50, v55, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v49)
    {
      free(v49);
    }

    mode = 0;
    goto LABEL_68;
  }

  mode = v3->mode;

  if (mode == 4)
  {
    v6 = nw_endpoint_handler_copy_fallback(v4);
    v7 = v6;
    if ((*(v6 + 108) & 0x42) != 2 || !a2 || !*(v6 + 9))
    {
      goto LABEL_48;
    }

    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_progress_target_fallback_leeway, 2500);
    v9 = *(v7 + 12);
    v10 = mach_continuous_time();
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = nw_delta_nanos(v9, v11);
    v13 = *(v7 + 3);
    v14 = v13 >= v12;
    v15 = v13 - v12;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = v15 + 1000000 * int64_with_default;
    v17 = dword_1ED4117CC;
    if (!dword_1ED4117CC)
    {
      mach_timebase_info(&time_base);
      v17 = dword_1ED4117CC;
    }

    v18 = time_base;
    if (mach_continuous_time() + v16 * v17 / v18 <= a2)
    {
      goto LABEL_48;
    }

    v19 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_strong_fallback_delay, 100);
    if (1000000 * v19 >= v12)
    {
      v20 = 1000000 * v19 - v12;
    }

    else
    {
      v20 = 0;
    }

    v21 = v4;
    v22 = *(v21 + 284);

    if ((v22 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v21))
      {
        goto LABEL_47;
      }

      v69 = v20;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v70 = gconnectionLogObj;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v21);
        v71 = nw_endpoint_handler_dry_run_string(v21);
        v72 = nw_endpoint_handler_copy_endpoint(v21);
        logging_description = nw_endpoint_get_logging_description(v72);
        v74 = nw_endpoint_handler_state_string(v21);
        v75 = nw_endpoint_handler_mode_string(v21);
        v76 = nw_endpoint_handler_copy_current_path(v21);
        *buf = 136448002;
        v84 = "nw_endpoint_fallback_reset_expected_progress_target";
        v85 = 2082;
        v86 = id_string;
        v87 = 2082;
        v88 = v71;
        v89 = 2082;
        v90 = logging_description;
        v20 = v69;
        v91 = 2082;
        v92 = v74;
        v93 = 2082;
        v94 = v75;
        v95 = 2114;
        v96 = v76;
        v97 = 2048;
        v98 = v69 / 0xF4240;
        v25 = v70;
        _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] target time set, resetting fallback timer to %llums", buf, 0x52u);
      }

      else
      {
        v25 = v70;
      }

      goto LABEL_46;
    }

    v23 = v21;
    v24 = *(v21 + 284);

    if ((v24 & 0x40) != 0)
    {
LABEL_47:
      v46 = *(v7 + 9);
      v47 = dispatch_time(0x8000000000000000, v20);
      nw_queue_set_timer_values(v46, v47, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
LABEL_48:

      goto LABEL_89;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v25 = gconnectionLogObj;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
LABEL_46:

      goto LABEL_47;
    }

    v79 = v25;
    v26 = v23;

    v27 = v26;
    v28 = *(v21 + 284);

    if (v28)
    {
      v29 = "dry-run ";
    }

    else
    {
      v29 = "";
    }

    v30 = nw_endpoint_handler_copy_endpoint(v27);
    v31 = v30;
    if (v30)
    {
      v32 = _nw_endpoint_get_logging_description(v30);
    }

    else
    {
      v32 = "<NULL>";
    }

    v33 = v26 + 184;

    v34 = v27;
    v35 = v34;
    v36 = v34[30];
    if (v36 > 5)
    {
      v37 = "unknown-state";
    }

    else
    {
      v37 = off_1E6A31048[v36];
    }

    v78 = v37;

    v38 = v35;
    v39 = v38;
    v40 = v4->mode;
    v41 = v29;
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v42 = v20;
          v43 = "proxy";
          goto LABEL_45;
        case 4:
          v42 = v20;
          v43 = "fallback";
          goto LABEL_45;
        case 5:
          v42 = v20;
          v43 = "transform";
          goto LABEL_45;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v42 = v20;
          v43 = "path";
          goto LABEL_45;
        case 1:
          v42 = v20;
          v43 = "resolver";
          goto LABEL_45;
        case 2:
          v42 = v20;
          v43 = nw_endpoint_flow_mode_string(v38[33]);
LABEL_45:

          v44 = v39;
          os_unfair_lock_lock(v44 + 28);
          v45 = v44[8];
          os_unfair_lock_unlock(v44 + 28);

          *buf = 136448002;
          v20 = v42;
          v84 = "nw_endpoint_fallback_reset_expected_progress_target";
          v85 = 2082;
          v86 = v33;
          v87 = 2082;
          v88 = v41;
          v89 = 2082;
          v90 = v32;
          v91 = 2082;
          v25 = v79;
          v92 = v78;
          v93 = 2082;
          v94 = v43;
          v95 = 2114;
          v96 = v45;
          v97 = 2048;
          v98 = v42 / 0xF4240;
          _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] target time set, resetting fallback timer to %llums", buf, 0x52u);

          goto LABEL_46;
      }
    }

    v42 = v20;
    v43 = "unknown-mode";
    goto LABEL_45;
  }

LABEL_68:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v56 = gLogObj;
  if (mode > 5)
  {
    v57 = "unknown-mode";
  }

  else
  {
    v57 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v84 = "nw_endpoint_fallback_reset_expected_progress_target";
  v85 = 2082;
  v86 = v57;
  v87 = 2082;
  v88 = "fallback";
  LODWORD(v77) = 32;
  v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, v77);

  type = OS_LOG_TYPE_ERROR;
  v81 = 0;
  if (!__nwlog_fault(v58, &type, &v81))
  {
LABEL_87:
    if (!v58)
    {
      goto LABEL_89;
    }

LABEL_88:
    free(v58);
    goto LABEL_89;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    v60 = type;
    if (os_log_type_enabled(v59, type))
    {
      if (mode > 5)
      {
        v61 = "unknown-mode";
      }

      else
      {
        v61 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v84 = "nw_endpoint_fallback_reset_expected_progress_target";
      v85 = 2082;
      v86 = v61;
      v87 = 2082;
      v88 = "fallback";
      _os_log_impl(&dword_181A37000, v59, v60, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_86:

    goto LABEL_87;
  }

  if (v81 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    v66 = type;
    if (os_log_type_enabled(v59, type))
    {
      if (mode > 5)
      {
        v67 = "unknown-mode";
      }

      else
      {
        v67 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v84 = "nw_endpoint_fallback_reset_expected_progress_target";
      v85 = 2082;
      v86 = v67;
      v87 = 2082;
      v88 = "fallback";
      _os_log_impl(&dword_181A37000, v59, v66, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_86;
  }

  v62 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v59 = gLogObj;
  v63 = type;
  v64 = os_log_type_enabled(v59, type);
  if (!v62)
  {
    if (v64)
    {
      if (mode > 5)
      {
        v68 = "unknown-mode";
      }

      else
      {
        v68 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v84 = "nw_endpoint_fallback_reset_expected_progress_target";
      v85 = 2082;
      v86 = v68;
      v87 = 2082;
      v88 = "fallback";
      _os_log_impl(&dword_181A37000, v59, v63, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_86;
  }

  if (v64)
  {
    if (mode > 5)
    {
      v65 = "unknown-mode";
    }

    else
    {
      v65 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v84 = "nw_endpoint_fallback_reset_expected_progress_target";
    v85 = 2082;
    v86 = v65;
    v87 = 2082;
    v88 = "fallback";
    v89 = 2082;
    v90 = v62;
    _os_log_impl(&dword_181A37000, v59, v63, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v62);
  if (v58)
  {
    goto LABEL_88;
  }

LABEL_89:
}

__int128 *nw_protocol_http2_transport_identifier()
{
  if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
  }

  return &g_http2_transport_protocol_identifier;
}

uint64_t __nw_protocol_http2_transport_identifier_block_invoke()
{
  strcpy(&g_http2_transport_protocol_identifier, "http2_transport");
  qword_1EA83F120 = 0x200000003;
  qword_1EA83F230 = nw_protocol_default_input_flush;
  qword_1EA83F220 = nw_protocol_default_get_message_properties;
  qword_1EA83F190 = nw_protocol_default_link_state;
  qword_1EA83F1A8 = nw_protocol_default_get_local;
  qword_1EA83F1A0 = nw_protocol_default_get_path;
  qword_1EA83F1D0 = nw_protocol_default_updated_path;
  qword_1EA83F1F0 = nw_protocol_default_get_output_local;
  qword_1EA83F1F8 = nw_protocol_default_get_output_interface;
  qword_1EA83F228 = nw_protocol_default_reset;
  qword_1EA83F1D8 = nw_protocol_default_supports_external_data;
  qword_1EA83F200 = nw_protocol_default_waiting_for_output;
  qword_1EA83F208 = nw_protocol_default_copy_info;
  qword_1EA83F1B8 = nw_protocol_default_register_notification;
  qword_1EA83F1C0 = nw_protocol_default_unregister_notification;
  qword_1EA83F140 = nw_protocol_http2_transport_connect;
  qword_1EA83F150 = nw_protocol_http2_transport_connected;
  qword_1EA83F148 = nw_protocol_http2_transport_disconnect;
  qword_1EA83F158 = nw_protocol_http2_transport_disconnected;
  qword_1EA83F1E8 = nw_protocol_http2_transport_output_finished;
  qword_1EA83F1E0 = nw_protocol_http2_transport_input_finished;
  g_http2_transport_protocol_callbacks = nw_protocol_http2_transport_add_input_handler;
  qword_1EA83F130 = nw_protocol_http2_transport_remove_input_handler;
  qword_1EA83F138 = nw_protocol_http2_replace_input_handler;
  qword_1EA83F168 = nw_protocol_http2_transport_input_available;
  qword_1EA83F170 = nw_protocol_http2_transport_output_available;
  qword_1EA83F178 = nw_protocol_http2_transport_get_input_frames;
  qword_1EA83F180 = nw_protocol_http2_transport_get_output_frames;
  qword_1EA83F198 = nw_protocol_http2_transport_get_parameters;
  qword_1EA83F188 = nw_protocol_http2_transport_finalize_output_frames;
  qword_1EA83F210 = nw_protocol_http2_transport_add_listen_handler;
  qword_1EA83F218 = nw_protocol_http2_transport_remove_listen_handler;
  qword_1EA83F1B0 = nw_protocol_http2_transport_get_remote_endpoint;
  qword_1EA83F160 = nw_protocol_http2_transport_error;
  qword_1EA83F1C8 = nw_protocol_http2_transport_notify;
  return nw_protocol_register_many_to_one(&g_http2_transport_protocol_identifier, nw_protocol_http2_transport_create, nw_protocol_http2_transport_accept);
}

BOOL nw_protocol_http2_transport_accept(nw_protocol *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http2_transport_accept";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_transport_accept";
      v10 = "%{public}s called with null protocol";
      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_transport_accept";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v14)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_transport_accept";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_39;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http2_transport_accept";
      v21 = 2082;
      v22 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_40:
    if (!v7)
    {
      return 0;
    }

LABEL_41:
    free(v7);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http2_transport_accept";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_transport_accept";
      v10 = "%{public}s called with null http2_transport";
      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http2_transport_accept";
      v10 = "%{public}s called with null http2_transport, backtrace limit exceeded";
      goto LABEL_39;
    }

    v15 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v16 = os_log_type_enabled(v8, type);
    if (v15)
    {
      if (v16)
      {
        *buf = 136446466;
        v20 = "nw_protocol_http2_transport_accept";
        v21 = 2082;
        v22 = v15;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v15);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_41;
    }

    if (v16)
    {
      *buf = 136446210;
      v20 = "nw_protocol_http2_transport_accept";
      v10 = "%{public}s called with null http2_transport, no backtrace";
LABEL_39:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v20 = "nw_protocol_http2_transport_accept";
      v21 = 2082;
      v22 = handle + 205;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if ((handle[204] & 4) == 0)
  {
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136446466;
    v20 = "nw_protocol_http2_transport_accept";
    v21 = 2082;
    v22 = handle + 205;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s cannot accept new streams after the tunnel is closed", buf, 0x16u);
    return 0;
  }

  return result;
}

_BYTE *nw_protocol_http2_transport_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v39 = __nwlog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v56 = "nw_protocol_http2_transport_create";
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, 0x128uLL, 0xA0EB7791uLL))
  {
    v4 = memptr;
    if (memptr)
    {
LABEL_4:
      *(v4 + 36) = 0;
      *(v4 + 16) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 11) = 0u;
      v5 = v4 + 176;
      *(v4 + 10) = 0u;
      v6 = v4 + 160;
      *(v4 + 9) = 0u;
      v7 = v4 + 144;
      *(v4 + 8) = 0u;
      v8 = v4 + 128;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = &g_http2_transport_protocol_identifier;
      *(v4 + 3) = &g_http2_transport_protocol_callbacks;
      *(v4 + 5) = v4;
      *(v4 + 8) = -1;
      if (nw_parameters_get_server_mode(a3))
      {
        v9 = 16;
      }

      else
      {
        v9 = 0;
      }

      v4[204] = v4[204] & 0xEF | v9;
      *v8 = 0;
      *(v4 + 17) = v8;
      *v7 = 0;
      *(v4 + 19) = v7;
      *v6 = 0;
      *(v4 + 21) = v6;
      *v5 = 0;
      *(v4 + 23) = v5;
      *(v4 + 24) = 0;
      memptr = 0;
      if (nghttp2_session_callbacks_new())
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = nghttp2_strerror();
        *buf = 136446466;
        v56 = "nw_protocol_http2_transport_create";
        v57 = 2082;
        v58 = v11;
        LODWORD(v50) = 22;
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s nghttp2_session_callbacks_new: %{public}s failed", buf, v50);
        type[0] = OS_LOG_TYPE_ERROR;
        v53 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v12, type, &v53))
        {
          goto LABEL_35;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_35;
          }

          v15 = nghttp2_strerror();
          *buf = 136446466;
          v56 = "nw_protocol_http2_transport_create";
          v57 = 2082;
          v58 = v15;
          v16 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed";
LABEL_33:
          v29 = v13;
          v30 = v14;
          v31 = 22;
LABEL_34:
          _os_log_impl(&dword_181A37000, v29, v30, v16, buf, v31);
          goto LABEL_35;
        }

        if (v53 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_35;
          }

          v25 = nghttp2_strerror();
          *buf = 136446466;
          v56 = "nw_protocol_http2_transport_create";
          v57 = 2082;
          v58 = v25;
          v16 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, backtrace limit exceeded";
          goto LABEL_33;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        v23 = os_log_type_enabled(gLogObj, type[0]);
        if (!backtrace_string)
        {
          if (!v23)
          {
            goto LABEL_35;
          }

          v28 = nghttp2_strerror();
          *buf = 136446466;
          v56 = "nw_protocol_http2_transport_create";
          v57 = 2082;
          v58 = v28;
          v16 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, no backtrace";
          goto LABEL_33;
        }

        if (v23)
        {
          v24 = nghttp2_strerror();
          *buf = 136446722;
          v56 = "nw_protocol_http2_transport_create";
          v57 = 2082;
          v58 = v24;
          v59 = 2082;
          v60 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s nghttp2_session_callbacks_new: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v12)
        {
LABEL_37:
          free(v4);
          return 0;
        }

LABEL_36:
        free(v12);
        goto LABEL_37;
      }

      nghttp2_session_callbacks_set_before_frame_send_callback();
      nghttp2_session_callbacks_set_on_header_callback();
      nghttp2_session_callbacks_set_on_begin_headers_callback();
      nghttp2_session_callbacks_set_on_frame_recv_callback();
      nghttp2_session_callbacks_set_on_data_chunk_recv_callback();
      nghttp2_session_callbacks_set_on_stream_close_callback();
      nghttp2_session_callbacks_set_on_frame_send_callback();
      nghttp2_session_callbacks_set_send_callback();
      nghttp2_session_callbacks_set_send_data_callback();
      nghttp2_session_callbacks_set_on_frame_not_send_callback();
      nghttp2_session_callbacks_set_on_invalid_frame_recv_callback();
      nghttp2_session_callbacks_set_error_callback2();
      nghttp2_set_debug_vprintf_callback();
      *type = 0;
      nghttp2_option_new();
      nghttp2_option_set_no_auto_window_update();
      nghttp2_option_set_peer_max_concurrent_streams();
      nghttp2_option_set_no_http_messaging();
      nghttp2_option_set_no_http_semantics();
      nghttp2_option_set_no_closed_streams();
      if ((v4[204] & 0x10) != 0)
      {
        if ((nghttp2_session_server_new2() & 0x80000000) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = nghttp2_strerror();
          *buf = 136446722;
          v56 = "nw_protocol_http2_transport_create";
          v57 = 2082;
          v58 = (v4 + 205);
          v59 = 2082;
          v60 = v27;
          LODWORD(v50) = 32;
          v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s", buf, v50);
          v53 = OS_LOG_TYPE_ERROR;
          v51 = 0;
          if (!__nwlog_fault(v12, &v53, &v51))
          {
            goto LABEL_35;
          }

          if (v53 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = v53;
            if (!os_log_type_enabled(gLogObj, v53))
            {
              goto LABEL_35;
            }

            goto LABEL_17;
          }

          if (v51 == 1)
          {
            v33 = __nw_create_backtrace_string();
            v19 = __nwlog_obj();
            v20 = v53;
            v35 = os_log_type_enabled(v19, v53);
            if (v33)
            {
              if (!v35)
              {
                goto LABEL_48;
              }

              goto LABEL_47;
            }

            if (!v35)
            {
              goto LABEL_35;
            }

LABEL_57:
            v38 = nghttp2_strerror();
            *buf = 136446722;
            v56 = "nw_protocol_http2_transport_create";
            v57 = 2082;
            v58 = (v4 + 205);
            v59 = 2082;
            v60 = v38;
            v16 = "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s, no backtrace";
            goto LABEL_58;
          }

          v19 = __nwlog_obj();
          v20 = v53;
          if (!os_log_type_enabled(v19, v53))
          {
            goto LABEL_35;
          }

LABEL_51:
          v37 = nghttp2_strerror();
          *buf = 136446722;
          v56 = "nw_protocol_http2_transport_create";
          v57 = 2082;
          v58 = (v4 + 205);
          v59 = 2082;
          v60 = v37;
          v16 = "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s, backtrace limit exceeded";
          goto LABEL_58;
        }
      }

      else if ((nghttp2_session_client_new2() & 0x80000000) != 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = nghttp2_strerror();
        *buf = 136446722;
        v56 = "nw_protocol_http2_transport_create";
        v57 = 2082;
        v58 = (v4 + 205);
        v59 = 2082;
        v60 = v18;
        LODWORD(v50) = 32;
        v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s", buf, v50);
        v53 = OS_LOG_TYPE_ERROR;
        v51 = 0;
        if (!__nwlog_fault(v12, &v53, &v51))
        {
          goto LABEL_35;
        }

        if (v53 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v20 = v53;
          if (!os_log_type_enabled(gLogObj, v53))
          {
            goto LABEL_35;
          }

LABEL_17:
          v21 = nghttp2_strerror();
          *buf = 136446722;
          v56 = "nw_protocol_http2_transport_create";
          v57 = 2082;
          v58 = (v4 + 205);
          v59 = 2082;
          v60 = v21;
          v16 = "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s";
LABEL_58:
          v29 = v19;
          v30 = v20;
          v31 = 32;
          goto LABEL_34;
        }

        if (v51 == 1)
        {
          v33 = __nw_create_backtrace_string();
          v19 = __nwlog_obj();
          v20 = v53;
          v34 = os_log_type_enabled(v19, v53);
          if (v33)
          {
            if (!v34)
            {
              goto LABEL_48;
            }

LABEL_47:
            v36 = nghttp2_strerror();
            *buf = 136446978;
            v56 = "nw_protocol_http2_transport_create";
            v57 = 2082;
            v58 = (v4 + 205);
            v59 = 2082;
            v60 = v36;
            v61 = 2082;
            v62 = v33;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
LABEL_48:
            free(v33);
            if (!v12)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          if (!v34)
          {
            goto LABEL_35;
          }

          goto LABEL_57;
        }

        v19 = __nwlog_obj();
        v20 = v53;
        if (!os_log_type_enabled(v19, v53))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      MEMORY[0x1865DDA10](memptr);
      MEMORY[0x1865DD980](*type);
      return v4;
    }
  }

  v40 = __nwlog_obj();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v56 = "nw_protocol_http2_transport_create";
  if (v41)
  {
    v42 = 3;
  }

  else
  {
    v42 = 2;
  }

  v57 = 2048;
  v58 = 8;
  v59 = 2048;
  v60 = 296;
  v43 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s posix_memalign(..., %zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v43);
  if (!result)
  {
    free(v43);
    v4 = memptr;
    if (memptr)
    {
      goto LABEL_4;
    }

    v44 = __nwlog_obj();
    *buf = 136446466;
    v56 = "nw_protocol_http2_transport_create";
    v57 = 2048;
    v58 = 296;
    LODWORD(v50) = 22;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s calloc(%zu) failed", buf, v50);
    LOBYTE(memptr) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v4, &memptr, type))
    {
      if (memptr == 17)
      {
        v45 = __nwlog_obj();
        v46 = memptr;
        if (!os_log_type_enabled(v45, memptr))
        {
          goto LABEL_80;
        }

        *buf = 136446466;
        v56 = "nw_protocol_http2_transport_create";
        v57 = 2048;
        v58 = 296;
        v47 = "%{public}s calloc(%zu) failed";
LABEL_79:
        _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0x16u);
        goto LABEL_80;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v45 = __nwlog_obj();
        v46 = memptr;
        if (!os_log_type_enabled(v45, memptr))
        {
          goto LABEL_80;
        }

        *buf = 136446466;
        v56 = "nw_protocol_http2_transport_create";
        v57 = 2048;
        v58 = 296;
        v47 = "%{public}s calloc(%zu) failed, backtrace limit exceeded";
        goto LABEL_79;
      }

      v48 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = memptr;
      v49 = os_log_type_enabled(v45, memptr);
      if (!v48)
      {
        if (!v49)
        {
          goto LABEL_80;
        }

        *buf = 136446466;
        v56 = "nw_protocol_http2_transport_create";
        v57 = 2048;
        v58 = 296;
        v47 = "%{public}s calloc(%zu) failed, no backtrace";
        goto LABEL_79;
      }

      if (v49)
      {
        *buf = 136446722;
        v56 = "nw_protocol_http2_transport_create";
        v57 = 2048;
        v58 = 296;
        v59 = 2082;
        v60 = v48;
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s calloc(%zu) failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v48);
    }

LABEL_80:
    if (!v4)
    {
      return 0;
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void nghttp2_debug_logging_callback(const char *a1, va_list a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 0;
  vasprintf(&v4, a1, a2);
  v2 = v4;
  if (v4)
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_3;
    }

    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v6 = "nghttp2_debug_logging_callback";
      v7 = 2082;
      v8 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s", buf, 0x16u);
    }

    v2 = v4;
    if (v4)
    {
LABEL_3:
      free(v2);
    }
  }
}

uint64_t error_callback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v20 = "error_callback";
    v21 = 1024;
    *v22 = a2;
    *&v22[4] = 2080;
    *&v22[6] = a3;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s called with error %d, message %s", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (a5)
  {
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446978;
      v20 = "error_callback";
      v21 = 2082;
      *v22 = a5 + 205;
      *&v22[8] = 1024;
      *&v22[10] = a2;
      v23 = 2080;
      v24 = a3;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s error (%d: %s)", buf, 0x26u);
      return 0;
    }

    return result;
  }

  *buf = 136446210;
  v20 = "error_callback";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "error_callback";
        v14 = "%{public}s nghttp2 user data is NULL, not http2_transport";
LABEL_20:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v20 = "error_callback";
          v21 = 2082;
          *v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v16)
      {
        *buf = 136446210;
        v20 = "error_callback";
        v14 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
        goto LABEL_20;
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "error_callback";
        v14 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (v11)
  {
    free(v11);
  }

  return 4294966394;
}

uint64_t on_invalid_frame_recv_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "on_invalid_frame_recv_callback";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, &type, &v22))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v25 = "on_invalid_frame_recv_callback";
      v13 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v20 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v25 = "on_invalid_frame_recv_callback";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (!v20)
      {
LABEL_36:
        if (v10)
        {
          free(v10);
        }

        return 4294966394;
      }

      *buf = 136446210;
      v25 = "on_invalid_frame_recv_callback";
      v13 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v25 = "on_invalid_frame_recv_callback";
      v13 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_36;
  }

  if (gLogDatapath == 1)
  {
    v14 = a2;
    v15 = a3;
    v16 = __nwlog_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    a2 = v14;
    if (v17)
    {
      *buf = 136446978;
      v25 = "on_invalid_frame_recv_callback";
      v26 = 2082;
      v27 = (a4 + 205);
      v28 = 1024;
      v29 = v15;
      v30 = 2080;
      v31 = nghttp2_strerror();
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called with error %d (%s)", buf, 0x26u);
      a2 = v14;
    }
  }

  if (!a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v25 = "on_invalid_frame_recv_callback";
      v26 = 2082;
      v27 = (a4 + 205);
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s no frame, closing", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v5 = *(a2 + 8);
  if (gLogDatapath == 1)
  {
    v18 = __nwlog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v25 = "on_invalid_frame_recv_callback";
      v26 = 2082;
      v27 = (a4 + 205);
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s error on stream %d", buf, 0x1Cu);
    }
  }

  if (v5 == -1)
  {
    nw_http2_transport_connection_close(a4);
    return 0;
  }

  stream_from_id = nw_http2_transport_get_stream_from_id(a4, v5, 0);
  if (stream_from_id)
  {
    nw_http2_transport_stream_close(a4, stream_from_id);
LABEL_10:
    *(a4 + 204) |= 8u;
    return 4294966394;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v21 = __nwlog_obj();
  result = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446722;
    v25 = "on_invalid_frame_recv_callback";
    v26 = 2082;
    v27 = (a4 + 205);
    v28 = 1024;
    v29 = v5;
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s No stream found for id %d, ignoring", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void nw_http2_transport_connection_close(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v36 = __nwlog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = "";
      if (a1)
      {
        v37 = (a1 + 205);
      }

      *buf = 136446466;
      v58 = "nw_http2_transport_connection_close";
      v59 = 2082;
      v60 = v37;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (!a1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_http2_transport_connection_close";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v27, &type, &v55))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v58 = "nw_http2_transport_connection_close";
      v30 = "%{public}s called with null http2_transport";
    }

    else if (v55 == 1)
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
          v58 = "nw_http2_transport_connection_close";
          v59 = 2082;
          v60 = backtrace_string;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_62;
      }

      if (!v44)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v58 = "nw_http2_transport_connection_close";
      v30 = "%{public}s called with null http2_transport, no backtrace";
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v58 = "nw_http2_transport_connection_close";
      v30 = "%{public}s called with null http2_transport, backtrace limit exceeded";
    }

    v33 = v39;
    v34 = v40;
    v35 = 12;
    goto LABEL_61;
  }

  v2 = *(a1 + 204);
  *(a1 + 204) = v2 & 0xF9 | 4;
  v3 = *(a1 + 120);
  if (v3)
  {
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 0x40000000;
    v54[2] = ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke;
    v54[3] = &__block_descriptor_tmp_19_40190;
    v54[4] = a1;
    nw_hash_table_apply(v3, v54);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v58 = "nw_http2_transport_connection_close";
      v59 = 2082;
      v60 = a1 + 205;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s id table is NULL, cannot close streams", buf, 0x16u);
    }
  }

  if ((v2 & 2) == 0)
  {
    if (gLogDatapath)
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v58 = "nw_http2_transport_connection_close";
        v59 = 2082;
        v60 = a1 + 205;
        v6 = "%{public}s %{public}s not sending GOAWAY since tunnel was not connected";
LABEL_23:
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 0x16u);
        goto LABEL_44;
      }
    }

    goto LABEL_44;
  }

  if (gLogDatapath)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = nghttp2_http2_strerror();
      *buf = 136446978;
      v58 = "nw_http2_transport_send_goaway";
      v59 = 2082;
      v60 = a1 + 205;
      v61 = 1024;
      *v62 = 0;
      *&v62[4] = 2082;
      *&v62[6] = v42;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called with error %u (%{public}s)", buf, 0x26u);
    }
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    v7 = *(a1 + 200);
    if (!v7)
    {
      goto LABEL_25;
    }

    if ((*(a1 + 204) & 0x10) != 0)
    {
      if (v7)
      {
        goto LABEL_25;
      }

      v47 = __nwlog_obj();
      *buf = 136446722;
      v58 = "nw_http2_transport_send_goaway";
      v59 = 2082;
      v60 = a1 + 205;
      v61 = 1024;
      *v62 = v7;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s %{public}s Last stream value %d is even, but we are the server", buf, 28);
      type = OS_LOG_TYPE_ERROR;
      v55 = 0;
      if (__nwlog_fault(v9, &type, &v55))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v10 = __nwlog_obj();
          v11 = type;
          if (!os_log_type_enabled(v10, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v58 = "nw_http2_transport_send_goaway";
          v59 = 2082;
          v60 = a1 + 205;
          v61 = 1024;
          *v62 = v7;
          v12 = "%{public}s %{public}s Last stream value %d is even, but we are the server";
          goto LABEL_110;
        }

        if (v55 != 1)
        {
          v10 = __nwlog_obj();
          v11 = type;
          if (!os_log_type_enabled(v10, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v58 = "nw_http2_transport_send_goaway";
          v59 = 2082;
          v60 = a1 + 205;
          v61 = 1024;
          *v62 = v7;
          v12 = "%{public}s %{public}s Last stream value %d is even, but we are the server, backtrace limit exceeded";
          goto LABEL_110;
        }

        v50 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v51 = os_log_type_enabled(v10, type);
        if (v50)
        {
          if (v51)
          {
            *buf = 136446978;
            v58 = "nw_http2_transport_send_goaway";
            v59 = 2082;
            v60 = a1 + 205;
            v61 = 1024;
            *v62 = v7;
            *&v62[4] = 2082;
            *&v62[6] = v50;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s %{public}s Last stream value %d is even, but we are the server, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(v50);
          if (!v9)
          {
LABEL_25:
            *(a1 + 204) |= 1u;
            if (!nghttp2_submit_goaway())
            {
LABEL_42:
              if (gLogDatapath == 1)
              {
                v45 = __nwlog_obj();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  v46 = nghttp2_http2_strerror();
                  *buf = 136447234;
                  v58 = "nw_http2_transport_send_goaway";
                  v59 = 2082;
                  v60 = a1 + 205;
                  v61 = 1024;
                  *v62 = v7;
                  *&v62[4] = 1024;
                  *&v62[6] = 0;
                  *&v62[10] = 2082;
                  *&v62[12] = v46;
                  _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s submitted GOAWAY frame with last_stream %d and error %u (%{public}s)", buf, 0x2Cu);
                }
              }

              nw_http2_transport_session_send(a1);
              goto LABEL_44;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = nghttp2_strerror();
            *buf = 136446466;
            v58 = "nw_http2_transport_send_goaway";
            v59 = 2082;
            v60 = v14;
            LODWORD(v52) = 22;
            v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s nghttp2_submit_goaway: %{public}s failed", buf, v52);
            type = OS_LOG_TYPE_ERROR;
            v55 = 0;
            if (__nwlog_fault(v15, &type, &v55))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v16 = gLogObj;
                v17 = type;
                if (!os_log_type_enabled(gLogObj, type))
                {
                  goto LABEL_40;
                }

                v18 = nghttp2_strerror();
                *buf = 136446466;
                v58 = "nw_http2_transport_send_goaway";
                v59 = 2082;
                v60 = v18;
                v19 = "%{public}s nghttp2_submit_goaway: %{public}s failed";
                goto LABEL_39;
              }

              if (v55 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v16 = gLogObj;
                v17 = type;
                if (!os_log_type_enabled(gLogObj, type))
                {
                  goto LABEL_40;
                }

                v23 = nghttp2_strerror();
                *buf = 136446466;
                v58 = "nw_http2_transport_send_goaway";
                v59 = 2082;
                v60 = v23;
                v19 = "%{public}s nghttp2_submit_goaway: %{public}s failed, backtrace limit exceeded";
                goto LABEL_39;
              }

              v20 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v16 = gLogObj;
              v17 = type;
              v21 = os_log_type_enabled(gLogObj, type);
              if (v20)
              {
                if (v21)
                {
                  v22 = nghttp2_strerror();
                  *buf = 136446722;
                  v58 = "nw_http2_transport_send_goaway";
                  v59 = 2082;
                  v60 = v22;
                  v61 = 2082;
                  *v62 = v20;
                  _os_log_impl(&dword_181A37000, v16, v17, "%{public}s nghttp2_submit_goaway: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v20);
                goto LABEL_40;
              }

              if (v21)
              {
                v24 = nghttp2_strerror();
                *buf = 136446466;
                v58 = "nw_http2_transport_send_goaway";
                v59 = 2082;
                v60 = v24;
                v19 = "%{public}s nghttp2_submit_goaway: %{public}s failed, no backtrace";
LABEL_39:
                _os_log_impl(&dword_181A37000, v16, v17, v19, buf, 0x16u);
              }
            }

LABEL_40:
            if (v15)
            {
              free(v15);
            }

            goto LABEL_42;
          }

LABEL_112:
          free(v9);
          goto LABEL_25;
        }

        if (v51)
        {
          *buf = 136446722;
          v58 = "nw_http2_transport_send_goaway";
          v59 = 2082;
          v60 = a1 + 205;
          v61 = 1024;
          *v62 = v7;
          v12 = "%{public}s %{public}s Last stream value %d is even, but we are the server, no backtrace";
LABEL_110:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x1Cu);
        }
      }
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }

      v8 = __nwlog_obj();
      *buf = 136446722;
      v58 = "nw_http2_transport_send_goaway";
      v59 = 2082;
      v60 = a1 + 205;
      v61 = 1024;
      *v62 = v7;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s %{public}s Last stream value %d is odd, but we are the client", buf, 28);
      type = OS_LOG_TYPE_ERROR;
      v55 = 0;
      if (__nwlog_fault(v9, &type, &v55))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v10 = __nwlog_obj();
          v11 = type;
          if (!os_log_type_enabled(v10, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v58 = "nw_http2_transport_send_goaway";
          v59 = 2082;
          v60 = a1 + 205;
          v61 = 1024;
          *v62 = v7;
          v12 = "%{public}s %{public}s Last stream value %d is odd, but we are the client";
          goto LABEL_110;
        }

        if (v55 != 1)
        {
          v10 = __nwlog_obj();
          v11 = type;
          if (!os_log_type_enabled(v10, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v58 = "nw_http2_transport_send_goaway";
          v59 = 2082;
          v60 = a1 + 205;
          v61 = 1024;
          *v62 = v7;
          v12 = "%{public}s %{public}s Last stream value %d is odd, but we are the client, backtrace limit exceeded";
          goto LABEL_110;
        }

        v48 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v49 = os_log_type_enabled(v10, type);
        if (!v48)
        {
          if (!v49)
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v58 = "nw_http2_transport_send_goaway";
          v59 = 2082;
          v60 = a1 + 205;
          v61 = 1024;
          *v62 = v7;
          v12 = "%{public}s %{public}s Last stream value %d is odd, but we are the client, no backtrace";
          goto LABEL_110;
        }

        if (v49)
        {
          *buf = 136446978;
          v58 = "nw_http2_transport_send_goaway";
          v59 = 2082;
          v60 = a1 + 205;
          v61 = 1024;
          *v62 = v7;
          *&v62[4] = 2082;
          *&v62[6] = v48;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s %{public}s Last stream value %d is odd, but we are the client, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v48);
      }
    }

LABEL_111:
    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_112;
  }

  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v58 = "nw_http2_transport_send_goaway";
      v59 = 2082;
      v60 = a1 + 205;
      v6 = "%{public}s %{public}s already sent goaway, skipping";
      goto LABEL_23;
    }
  }

LABEL_44:
  v25 = *(a1 + 112);
  if (v25)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 0x40000000;
    v53[2] = ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke_20;
    v53[3] = &__block_descriptor_tmp_21_40215;
    v53[4] = a1;
    nw_hash_table_apply(v25, v53);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = a1 + 205;
  *buf = 136446466;
  v58 = "nw_http2_transport_connection_close";
  v59 = 2082;
  v60 = a1 + 205;
  LODWORD(v52) = 22;
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s protocol table is NULL, cannot notify input handlers", buf, v52);
  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (!__nwlog_fault(v27, &type, &v55))
  {
LABEL_62:
    if (!v27)
    {
      return;
    }

    goto LABEL_63;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    v29 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_62;
    }

    *buf = 136446466;
    v58 = "nw_http2_transport_connection_close";
    v59 = 2082;
    v60 = v26;
    v30 = "%{public}s %{public}s protocol table is NULL, cannot notify input handlers";
LABEL_60:
    v33 = v28;
    v34 = v29;
    v35 = 22;
LABEL_61:
    _os_log_impl(&dword_181A37000, v33, v34, v30, buf, v35);
    goto LABEL_62;
  }

  if (v55 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    v29 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_62;
    }

    *buf = 136446466;
    v58 = "nw_http2_transport_connection_close";
    v59 = 2082;
    v60 = v26;
    v30 = "%{public}s %{public}s protocol table is NULL, cannot notify input handlers, backtrace limit exceeded";
    goto LABEL_60;
  }

  v31 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  v29 = type;
  v32 = os_log_type_enabled(gLogObj, type);
  if (!v31)
  {
    if (!v32)
    {
      goto LABEL_62;
    }

    *buf = 136446466;
    v58 = "nw_http2_transport_connection_close";
    v59 = 2082;
    v60 = v26;
    v30 = "%{public}s %{public}s protocol table is NULL, cannot notify input handlers, no backtrace";
    goto LABEL_60;
  }

  if (v32)
  {
    *buf = 136446722;
    v58 = "nw_http2_transport_connection_close";
    v59 = 2082;
    v60 = v26;
    v61 = 2082;
    *v62 = v31;
    _os_log_impl(&dword_181A37000, v28, v29, "%{public}s %{public}s protocol table is NULL, cannot notify input handlers, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v31);
  if (v27)
  {
LABEL_63:
    free(v27);
  }
}

uint64_t ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke(uint64_t a1, uint64_t a2)
{
  v32[2] = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v5 = object;
    v6 = *nw_hash_node_get_extra(a2);
    v7 = *(v5 + 32);
    if (gLogDatapath == 1)
    {
      v20 = __nwlog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 32);
        v22 = (v21 + 205);
        v10 = v21 == 0;
        v23 = *(v5 + 32);
        if (v10)
        {
          v22 = "";
        }

        v27 = 136446722;
        v28 = "nw_http2_transport_connection_close_block_invoke";
        v29 = 2082;
        v30 = v22;
        v31 = 1024;
        LODWORD(v32[0]) = v23;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s closing stream %d", &v27, 0x1Cu);
      }
    }

    nw_http2_transport_stream_close(*(a1 + 32), v5);
    if (v6)
    {
      if (gLogDatapath)
      {
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(a1 + 32);
          v10 = v9 == 0;
          v27 = 136446978;
          v11 = (v9 + 205);
          v28 = "nw_http2_transport_connection_close_block_invoke";
          if (v10)
          {
            v11 = "";
          }

          v29 = 2082;
          v30 = v11;
          v31 = 1024;
          LODWORD(v32[0]) = v7;
          WORD2(v32[0]) = 2048;
          *(v32 + 6) = v5;
          v12 = "%{public}s %{public}s deferring release of stream %d (%p), has associated input handler";
          v13 = v8;
          v14 = OS_LOG_TYPE_DEBUG;
          v15 = 38;
          goto LABEL_14;
        }
      }
    }

    else
    {
      if (gLogDatapath)
      {
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 32);
          v10 = v25 == 0;
          v27 = 136446978;
          v26 = (v25 + 205);
          v28 = "nw_http2_transport_connection_close_block_invoke";
          if (v10)
          {
            v26 = "";
          }

          v29 = 2082;
          v30 = v26;
          v31 = 1024;
          LODWORD(v32[0]) = v7;
          WORD2(v32[0]) = 2048;
          *(v32 + 6) = v5;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s destroying stream %d (%p) immediately, no associated input handler", &v27, 0x26u);
        }
      }

      nw_http2_transport_release_frame_array(v5);
      nw_http2_transport_release_frame_array((v5 + 16));
      free(v5);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v27 = 136446722;
      v28 = "nw_http2_transport_connection_close_block_invoke";
      if (v17)
      {
        v18 = (v17 + 205);
      }

      else
      {
        v18 = "";
      }

      v29 = 2082;
      v30 = v18;
      v31 = 2048;
      v32[0] = a2;
      v12 = "%{public}s %{public}s stream in node %p in id table is NULL, skipping rst stream";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
LABEL_14:
      _os_log_impl(&dword_181A37000, v13, v14, v12, &v27, v15);
    }
  }

  return 1;
}

uint64_t ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke_20(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    nw_http2_transport_protocol_close(*(a1 + 32), object);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 136446722;
      v10 = "nw_http2_transport_connection_close_block_invoke";
      if (v6)
      {
        v7 = (v6 + 205);
      }

      else
      {
        v7 = "";
      }

      v11 = 2082;
      v12 = v7;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s input protocol in node %p in protocol table is NULL, skipping", &v9, 0x20u);
    }
  }

  return 1;
}

uint64_t on_frame_not_send_callback(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (a2)
    {
      if (v8)
      {
        v9 = nghttp2_strerror();
        v10 = *(a2 + 12);
        v11 = *(a2 + 2);
        v12 = *a2;
        *buf = 136447746;
        v27 = "on_frame_not_send_callback";
        v28 = 2082;
        v29 = (a4 + 205);
        v30 = 1024;
        v31 = v5;
        v32 = 2080;
        v33 = v9;
        v34 = 1024;
        v35 = v10;
        v36 = 1024;
        v37 = v11;
        v38 = 2048;
        v39 = v12;
        v13 = "%{public}s %{public}s called with error %d (%s) for frame type %u on stream %d length (no header) %zu";
        v14 = v7;
        v15 = 60;
LABEL_7:
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

    else if (v8)
    {
      *buf = 136446722;
      v27 = "on_frame_not_send_callback";
      v28 = 2082;
      v29 = (a4 + 205);
      v30 = 1024;
      v31 = v5;
      v13 = "%{public}s %{public}s called with error %d";
      v14 = v7;
      v15 = 28;
      goto LABEL_7;
    }

    *(a4 + 204) |= 8u;
    return 4294966394;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v27 = "on_frame_not_send_callback";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v18, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v27 = "on_frame_not_send_callback";
      v21 = "%{public}s nghttp2 user data is NULL, not http2_transport";
      goto LABEL_23;
    }

    if (v24 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v27 = "on_frame_not_send_callback";
      v21 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
      goto LABEL_23;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v23 = os_log_type_enabled(v19, type);
    if (backtrace_string)
    {
      if (v23)
      {
        *buf = 136446466;
        v27 = "on_frame_not_send_callback";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v23)
    {
      *buf = 136446210;
      v27 = "on_frame_not_send_callback";
      v21 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    }
  }

LABEL_24:
  if (v18)
  {
    free(v18);
  }

  return 4294966394;
}

uint64_t nw_http2_transport_drain_next_frame_for_stream(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v68 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v20 = __nwlog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = "";
      if (a1)
      {
        v21 = (a1 + 205);
      }

      *buf = 136446466;
      v62 = "nw_http2_transport_drain_next_frame_for_stream";
      v63 = 2082;
      v64 = v21;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (!a1)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v62 = "nw_http2_transport_drain_next_frame_for_stream";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (!__nwlog_fault(v23, &type, &v59))
    {
      goto LABEL_94;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v59 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (!os_log_type_enabled(v24, type))
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v26 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_93;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v35 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (!v35)
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v26 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_93;
      }

      if (v35)
      {
        *buf = 136446466;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = backtrace_string;
        v36 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_56:
        _os_log_impl(&dword_181A37000, v24, v25, v36, buf, 0x16u);
      }

LABEL_57:
      free(backtrace_string);
      goto LABEL_94;
    }

    v24 = __nwlog_obj();
    v25 = type;
    if (!os_log_type_enabled(v24, type))
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v62 = "nw_http2_transport_drain_next_frame_for_stream";
    v26 = "%{public}s called with null http2_transport";
LABEL_93:
    _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
LABEL_94:
    if (v23)
    {
      free(v23);
    }

    return 0;
  }

  if (!a2)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v62 = "nw_http2_transport_drain_next_frame_for_stream";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null input_handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (!__nwlog_fault(v23, &type, &v59))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v62 = "nw_http2_transport_drain_next_frame_for_stream";
      v26 = "%{public}s called with null input_handler";
      goto LABEL_93;
    }

    if (v59 != 1)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v62 = "nw_http2_transport_drain_next_frame_for_stream";
      v26 = "%{public}s called with null input_handler, backtrace limit exceeded";
      goto LABEL_93;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type;
    v37 = os_log_type_enabled(v24, type);
    if (backtrace_string)
    {
      if (v37)
      {
        *buf = 136446466;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = backtrace_string;
        v36 = "%{public}s called with null input_handler, dumping backtrace:%{public}s";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (!v37)
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v62 = "nw_http2_transport_drain_next_frame_for_stream";
    v26 = "%{public}s called with null input_handler, no backtrace";
    goto LABEL_93;
  }

  v8 = *(a3 + 16);
  if (v8)
  {
    if (gLogDatapath)
    {
      v28 = __nwlog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(v8 + 52);
        if (v29)
        {
          v29 -= *(v8 + 56) + *(v8 + 60);
        }

        *buf = 136446722;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = (a1 + 205);
        v65 = 1024;
        *v66 = v29;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s draining output frame of %u bytes", buf, 0x1Cu);
      }
    }

    result = nw_http2_transport_submit_data(a1, v8);
    v10 = gLogDatapath;
    if (result)
    {
      if (gLogDatapath)
      {
        v58 = result;
        v46 = __nwlog_obj();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
        result = v58;
        if (v47)
        {
          v48 = *(v8 + 52);
          if (v48)
          {
            v48 -= *(v8 + 56) + *(v8 + 60);
          }

          v49 = *(a3 + 32);
          *buf = 136446978;
          v62 = "nw_http2_transport_drain_next_frame_for_stream";
          v63 = 2082;
          v64 = (a1 + 205);
          v65 = 1024;
          *v66 = v48;
          *&v66[4] = 1024;
          *&v66[6] = v49;
          _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s drained %u output bytes for stream %d", buf, 0x22u);
          result = v58;
        }
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v11)
      {
        v13 = *(v8 + 16);
      }

      else
      {
        v13 = a3;
      }

      *(v13 + 24) = v12;
      *v12 = v11;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v10 = gLogDatapath;
    }

    if (v10)
    {
      v30 = result;
      v31 = __nwlog_obj();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      result = v30;
      if (v32)
      {
        *buf = 0;
        nw_frame_array_get_frame_count((a3 + 16), 0, buf);
        v33 = *buf;
        *buf = 136446722;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = (a1 + 205);
        v65 = 1024;
        *v66 = v33;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream now has %u bytes pending", buf, 0x1Cu);
        result = v30;
      }
    }

    if (a4)
    {
      v14 = result;
      nw_http2_transport_session_send(a1);
      result = v14;
    }

    v15 = *(a3 + 16);
    if (result)
    {
      if (v15)
      {
        return 1;
      }

      if ((*(a3 + 36) & 4) == 0)
      {
        goto LABEL_24;
      }

      v16 = result;
      if (gLogDatapath == 1)
      {
        v56 = __nwlog_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v62 = "nw_http2_transport_drain_next_frame_for_stream";
          v63 = 2082;
          v64 = (a1 + 205);
          _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending deferred end stream", buf, 0x16u);
        }
      }

      nw_http2_transport_send_end_stream(a1, a3);
      v15 = *(a3 + 16);
      result = v16;
    }

    if (v15)
    {
      return result;
    }

LABEL_24:
    v17 = result;
    if (gLogDatapath == 1)
    {
      v50 = __nwlog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        v51 = *(a3 + 32);
        *buf = 136446978;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = (a1 + 205);
        v65 = 2048;
        *v66 = a2;
        *&v66[8] = 1024;
        v67 = v51;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s delivering output available to protocol %p for stream %d", buf, 0x26u);
      }
    }

    v18 = *(a2 + 24);
    if (v18)
    {
      v19 = *(v18 + 72);
      if (v19)
      {
        v19(a2, a1);
        return v17;
      }
    }

    v38 = __nwlog_obj();
    v39 = *(a2 + 16);
    if (!v39)
    {
      v39 = "invalid";
    }

    *buf = 136446466;
    v62 = "nw_http2_transport_drain_next_frame_for_stream";
    v63 = 2082;
    v64 = v39;
    v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s protocol %{public}s has invalid output_available callback", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (__nwlog_fault(v40, &type, &v59))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_103;
        }

        v43 = *(a2 + 16);
        if (!v43)
        {
          v43 = "invalid";
        }

        *buf = 136446466;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = v43;
        v44 = "%{public}s protocol %{public}s has invalid output_available callback";
        goto LABEL_102;
      }

      if (v59 != 1)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_103;
        }

        v55 = *(a2 + 16);
        if (!v55)
        {
          v55 = "invalid";
        }

        *buf = 136446466;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = v55;
        v44 = "%{public}s protocol %{public}s has invalid output_available callback, backtrace limit exceeded";
        goto LABEL_102;
      }

      v52 = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v42 = type;
      v53 = os_log_type_enabled(v41, type);
      if (v52)
      {
        if (v53)
        {
          v54 = *(a2 + 16);
          if (!v54)
          {
            v54 = "invalid";
          }

          *buf = 136446722;
          v62 = "nw_http2_transport_drain_next_frame_for_stream";
          v63 = 2082;
          v64 = v54;
          v65 = 2082;
          *v66 = v52;
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s protocol %{public}s has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v52);
        goto LABEL_103;
      }

      if (v53)
      {
        v57 = *(a2 + 16);
        if (!v57)
        {
          v57 = "invalid";
        }

        *buf = 136446466;
        v62 = "nw_http2_transport_drain_next_frame_for_stream";
        v63 = 2082;
        v64 = v57;
        v44 = "%{public}s protocol %{public}s has invalid output_available callback, no backtrace";
LABEL_102:
        _os_log_impl(&dword_181A37000, v41, v42, v44, buf, 0x16u);
      }
    }

LABEL_103:
    if (v40)
    {
      free(v40);
    }

    return v17;
  }

  if (!gLogDatapath)
  {
    return 0;
  }

  v45 = __nwlog_obj();
  result = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446466;
    v62 = "nw_http2_transport_drain_next_frame_for_stream";
    v63 = 2082;
    v64 = (a1 + 205);
    _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no next frame to drain", buf, 0x16u);
    return 0;
  }

  return result;
}

void nw_http2_transport_send_end_stream(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v21 = a2;
    v22 = __nwlog_obj();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    a2 = v21;
    if (v23)
    {
      *buf = 136446466;
      v36 = "nw_http2_transport_send_end_stream";
      v37 = 2082;
      v38 = a1 + 205;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a2 = v21;
    }
  }

  if ((*(a2 + 36) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "nw_http2_transport_send_end_stream";
      v37 = 2082;
      v38 = a1 + 205;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ERROR: Cannot send end stream on a closed stream", buf, 0x16u);
    }

    return;
  }

  v4 = (a2 + 16);
  if (*(a2 + 16))
  {
    if (gLogDatapath)
    {
      v24 = a2;
      v25 = __nwlog_obj();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      a2 = v24;
      if (v26)
      {
        *buf = 0;
        nw_frame_array_get_frame_count(v4, 0, buf);
        v27 = *buf;
        *buf = 136446722;
        v36 = "nw_http2_transport_send_end_stream";
        v37 = 2082;
        v38 = a1 + 205;
        v39 = 1024;
        LODWORD(v40) = v27;
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s deferring end stream until all pending bytes (%u) are sent", buf, 0x1Cu);
        a2 = v24;
      }
    }

    *(a2 + 36) |= 4u;
    return;
  }

  if (gLogDatapath)
  {
    v28 = a2;
    v29 = __nwlog_obj();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    a2 = v28;
    if (v30)
    {
      v31 = *(v28 + 32);
      *buf = 136446722;
      v36 = "nw_http2_transport_send_end_stream";
      v37 = 2082;
      v38 = a1 + 205;
      v39 = 1024;
      LODWORD(v40) = v31;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s writing end stream on stream %d", buf, 0x1Cu);
      a2 = v28;
    }
  }

  v5 = a2;
  v6 = nghttp2_submit_data();
  if ((v6 & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(v5 + 32);
      *buf = 136446722;
      v36 = "nw_http2_transport_send_end_stream";
      v37 = 2082;
      v38 = a1 + 205;
      v39 = 1024;
      LODWORD(v40) = v8;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s submitted end stream for stream %d", buf, 0x1Cu);
    }

    *(v5 + 36) &= ~4u;
    nw_http2_transport_session_send(a1);
    return;
  }

  if (v6 == -529)
  {
    if (gLogDatapath == 1)
    {
      v32 = __nwlog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v36 = "nw_http2_transport_send_end_stream";
        v37 = 2082;
        v38 = a1 + 205;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s continuing (or starting) to defer end stream until all pending bytes are sent", buf, 0x16u);
      }
    }

    *(v5 + 36) |= 4u;
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v10 = nghttp2_strerror();
  *buf = 136446466;
  v36 = "nw_http2_transport_send_end_stream";
  v37 = 2082;
  v38 = v10;
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s nghttp2_submit_data: %{public}s failed", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v11, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v14 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_transport_send_end_stream";
      v37 = 2082;
      v38 = v14;
      v15 = "%{public}s nghttp2_submit_data: %{public}s failed";
      goto LABEL_29;
    }

    if (v33 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_30;
      }

      v19 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_transport_send_end_stream";
      v37 = 2082;
      v38 = v19;
      v15 = "%{public}s nghttp2_submit_data: %{public}s failed, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v17 = os_log_type_enabled(v12, type);
    if (backtrace_string)
    {
      if (v17)
      {
        v18 = nghttp2_strerror();
        *buf = 136446722;
        v36 = "nw_http2_transport_send_end_stream";
        v37 = 2082;
        v38 = v18;
        v39 = 2082;
        v40 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s nghttp2_submit_data: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_30;
    }

    if (v17)
    {
      v20 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_transport_send_end_stream";
      v37 = 2082;
      v38 = v20;
      v15 = "%{public}s nghttp2_submit_data: %{public}s failed, no backtrace";
LABEL_29:
      _os_log_impl(&dword_181A37000, v12, v13, v15, buf, 0x16u);
    }
  }

LABEL_30:
  if (v11)
  {
    free(v11);
  }
}

uint64_t nw_http2_transport_empty_frame_data_source_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 1;
    return 0;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http2_transport_empty_frame_data_source_callback";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null data_flags", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v16 = "nw_http2_transport_empty_frame_data_source_callback";
      v10 = "%{public}s called with null data_flags";
      goto LABEL_17;
    }

    if (v13 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v16 = "nw_http2_transport_empty_frame_data_source_callback";
      v10 = "%{public}s called with null data_flags, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_http2_transport_empty_frame_data_source_callback";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null data_flags, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_http2_transport_empty_frame_data_source_callback";
      v10 = "%{public}s called with null data_flags, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    }
  }

LABEL_18:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_http2_transport_get_protocol_from_stream_id(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if (a2 <= 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "nw_http2_transport_get_protocol_from_stream_id";
      v18 = 2082;
      v19 = a1 + 205;
      v20 = 1024;
      v21 = v2;
      v10 = "%{public}s %{public}s requested stream id (%d) is not valid, returning NULL protocol";
      v11 = v12;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_181A37000, v11, v13, v10, buf, 0x1Cu);
    }
  }

  else
  {
    v15 = 0;
    stream_from_id = nw_http2_transport_get_stream_from_id(a1, a2, &v15);
    if (stream_from_id)
    {
      v5 = stream_from_id;
      result = v15;
      if (v15)
      {
        return result;
      }

      v7 = v5;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v9 = *(v7 + 32);
        *buf = 136446722;
        v17 = "nw_http2_transport_get_protocol_from_stream_id";
        v18 = 2082;
        v19 = a1 + 205;
        v20 = 1024;
        v21 = v9;
        v10 = "%{public}s %{public}s no input handler attached to stream %d";
        v11 = v8;
LABEL_10:
        v13 = OS_LOG_TYPE_INFO;
        goto LABEL_11;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v17 = "nw_http2_transport_get_protocol_from_stream_id";
        v18 = 2082;
        v19 = a1 + 205;
        v20 = 1024;
        v21 = v2;
        v10 = "%{public}s %{public}s could not find stream for stream %d";
        v11 = v14;
        goto LABEL_10;
      }
    }
  }

  return 0;
}

uint64_t on_begin_headers_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v97 = "on_begin_headers_callback";
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v68, type, &v95))
    {
      goto LABEL_151;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v69 = __nwlog_obj();
      v70 = type[0];
      if (!os_log_type_enabled(v69, type[0]))
      {
        goto LABEL_151;
      }

      *buf = 136446210;
      v97 = "on_begin_headers_callback";
      v71 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v95 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = type[0];
      v74 = os_log_type_enabled(v69, type[0]);
      if (backtrace_string)
      {
        if (v74)
        {
          *buf = 136446466;
          v97 = "on_begin_headers_callback";
          v98 = 2082;
          v99 = backtrace_string;
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_151;
      }

      if (!v74)
      {
LABEL_151:
        if (v68)
        {
          free(v68);
        }

        return 4294966394;
      }

      *buf = 136446210;
      v97 = "on_begin_headers_callback";
      v71 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v69 = __nwlog_obj();
      v70 = type[0];
      if (!os_log_type_enabled(v69, type[0]))
      {
        goto LABEL_151;
      }

      *buf = 136446210;
      v97 = "on_begin_headers_callback";
      v71 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0xCu);
    goto LABEL_151;
  }

  if (gLogDatapath == 1)
  {
    v72 = __nwlog_obj();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = a3 + 205;
      _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  v5 = *(a2 + 12);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (v5 == 5)
  {
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    *buf = 136446466;
    v97 = "on_begin_headers_callback";
    v98 = 2082;
    v99 = a3 + 205;
    v14 = "%{public}s %{public}s push promise frames currently not supported";
    v15 = v6;
    v16 = 22;
    goto LABEL_20;
  }

  if (v5 != 1)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = a3 + 205;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s returning callback failure with unknown error", buf, 0x16u);
    }

    return 4294966394;
  }

  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 8);
    *buf = 136446722;
    v97 = "on_begin_headers_callback";
    v98 = 2082;
    v99 = a3 + 205;
    v100 = 1024;
    *v101 = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got header frame on stream %d", buf, 0x1Cu);
  }

  stream_node_from_id = nw_http2_transport_get_stream_node_from_id(a3, *(a2 + 8));
  if (!stream_node_from_id)
  {
    if (*(a3 + 104))
    {
      if (!*(a3 + 96))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = a3 + 205;
        *buf = 136446466;
        v97 = "on_begin_headers_callback";
        v98 = 2082;
        v99 = a3 + 205;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened", buf, 22);
        type[0] = OS_LOG_TYPE_ERROR;
        v95 = 0;
        if (!__nwlog_fault(v33, type, &v95))
        {
          goto LABEL_130;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v44 = __nwlog_obj();
          v45 = type[0];
          if (!os_log_type_enabled(v44, type[0]))
          {
            goto LABEL_130;
          }

          *buf = 136446466;
          v97 = "on_begin_headers_callback";
          v98 = 2082;
          v99 = v43;
          v37 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened";
LABEL_128:
          v62 = v44;
          v63 = v45;
          v64 = 22;
          goto LABEL_129;
        }

        if (v95 != 1)
        {
          v44 = __nwlog_obj();
          v45 = type[0];
          if (!os_log_type_enabled(v44, type[0]))
          {
            goto LABEL_130;
          }

          *buf = 136446466;
          v97 = "on_begin_headers_callback";
          v98 = 2082;
          v99 = v43;
          v37 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened, backtrace limit exceeded";
          goto LABEL_128;
        }

        v53 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v45 = type[0];
        v54 = os_log_type_enabled(v44, type[0]);
        if (!v53)
        {
          if (!v54)
          {
            goto LABEL_130;
          }

          *buf = 136446466;
          v97 = "on_begin_headers_callback";
          v98 = 2082;
          v99 = v43;
          v37 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened, no backtrace";
          goto LABEL_128;
        }

        if (v54)
        {
          *buf = 136446722;
          v97 = "on_begin_headers_callback";
          v98 = 2082;
          v99 = v43;
          v100 = 2082;
          *v101 = v53;
          v55 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened, dumping backtrace:%{public}s";
LABEL_111:
          _os_log_impl(&dword_181A37000, v44, v45, v55, buf, 0x20u);
        }

LABEL_112:
        free(v53);
        goto LABEL_130;
      }

      v17 = *(a2 + 8);
      if (gLogDatapath == 1)
      {
        v75 = __nwlog_obj();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v97 = "on_begin_headers_callback";
          v98 = 2082;
          v99 = a3 + 205;
          _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s detected new stream initiated from remote side of the connection, allocating new stream", buf, 0x16u);
        }
      }

      v18 = malloc_type_calloc(1uLL, 0x28uLL, 0x68BAAFB9uLL);
      if (!v18)
      {
        v19 = __nwlog_obj();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v97 = "on_begin_headers_callback";
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v98 = 2048;
        v99 = 1;
        v100 = 2048;
        *v101 = 40;
        v22 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
        result = __nwlog_should_abort(v22);
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v22);
      }

      if (*(a3 + 88))
      {
        v23 = _nw_parameters_copy();
        nw_http2_transport_stream_init(v18);
        v18[8] = v17;
        *(v18 + 36) |= 8u;
        if (v17 > *(a3 + 200) && (*(a3 + 204) & 1) == 0)
        {
          *(a3 + 200) = v17;
        }

        if (!nw_http2_transport_add_to_id_table(a3, v18, 0))
        {
          v58 = __nwlog_obj();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v97 = "on_begin_headers_callback";
            v98 = 2082;
            v99 = a3 + 205;
            _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to add new stream to the id based hash table", buf, 0x16u);
          }

          free(v18);
          if (v23)
          {
            os_release(v23);
          }

          return 4294966775;
        }

        nw_parameters_set_server_mode(v23, 1);
        *type = 0;
        v92 = type;
        v93 = 0x2000000000;
        v94 = 0;
        if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
        }

        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 0x40000000;
        v90[2] = ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke;
        v90[3] = &unk_1E6A32250;
        v90[4] = type;
        nw_protocol_parameters_iterate_stack(v23, 4, &g_http2_transport_protocol_identifier, v90);
        if (!*(v92 + 3))
        {
          if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
          }

          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = 0x40000000;
          v89[2] = ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_2;
          v89[3] = &unk_1E6A32278;
          v89[4] = type;
          nw_protocol_parameters_iterate_stack(v23, 3, &g_http2_transport_protocol_identifier, v89);
          if (!*(v92 + 3))
          {
            if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
            {
              dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
            }

            v88[0] = MEMORY[0x1E69E9820];
            v88[1] = 0x40000000;
            v88[2] = ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_3;
            v88[3] = &unk_1E6A322A0;
            v88[4] = type;
            nw_protocol_parameters_iterate_stack(v23, 2, &g_http2_transport_protocol_identifier, v88);
          }
        }

        v24 = xpc_int64_create(v17);
        nw_parameters_set_protocol_value(*(v92 + 3), "incomingStreamId", v24);
        if (v24)
        {
          xpc_release(v24);
        }

        if (gLogDatapath == 1)
        {
          v81 = __nwlog_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            v82 = *(v92 + 3);
            *buf = 136446978;
            v97 = "on_begin_headers_callback";
            v98 = 2082;
            v99 = a3 + 205;
            v100 = 2048;
            *v101 = v23;
            *&v101[8] = 2048;
            *&v101[10] = v82;
            _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s using parameters %p, protocol parameters %p on new incoming stream", buf, 0x2Au);
          }
        }

        v25 = v92;
        v26 = *(v92 + 3);
        if (v26)
        {
          os_release(v26);
          v25 = v92;
          *(v92 + 3) = 0;
        }

        *(v25 + 3) = 0;
        v27 = *(a3 + 104);
        if (v27 && (v28 = *v27) != 0 && *v28)
        {
          if (gLogDatapath == 1)
          {
            v83 = __nwlog_obj();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v97 = "on_begin_headers_callback";
              v98 = 2082;
              v99 = a3 + 205;
              v100 = 1024;
              *v101 = v17;
              _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling listen handler for new stream %d", buf, 0x1Cu);
            }
          }

          v29 = (***(a3 + 104))(*(a3 + 104), *(a3 + 96), v23);
          if (gLogDatapath == 1)
          {
            v84 = v29;
            v85 = __nwlog_obj();
            v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG);
            v29 = v84;
            if (v86)
            {
              *buf = 136446722;
              v97 = "on_begin_headers_callback";
              v98 = 2082;
              v99 = a3 + 205;
              v100 = 1024;
              *v101 = v17;
              _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called into listen handler for new stream %d", buf, 0x1Cu);
              v29 = v84;
            }
          }

          if ((v29 & 1) == 0)
          {
            v30 = __nwlog_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v97 = "on_begin_headers_callback";
              v98 = 2082;
              v99 = a3 + 205;
              v100 = 1024;
              *v101 = v17;
              _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s listen handler didn't accept the new flow for stream id %d", buf, 0x1Cu);
            }

            nw_http2_transport_stream_close(a3, v18);
          }

          if (!v23)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v76 = __nwlog_obj();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v97 = "on_begin_headers_callback";
            v98 = 2082;
            v99 = a3 + 205;
            _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_ERROR, "%{public}s %{public}s listen handler has no new_flow callback, ignoring incoming flow", buf, 0x16u);
          }

          nw_http2_transport_stream_close(a3, v18);
          if (!v23)
          {
            goto LABEL_63;
          }
        }

        os_release(v23);
LABEL_63:
        _Block_object_dispose(type, 8);
        return 0;
      }

      v47 = __nwlog_obj();
      v48 = a3 + 205;
      *buf = 136446466;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = a3 + 205;
      LODWORD(v87) = 22;
      v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream", buf, v87);
      type[0] = OS_LOG_TYPE_ERROR;
      v95 = 0;
      if (__nwlog_fault(v49, type, &v95))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v50 = __nwlog_obj();
          v51 = type[0];
          if (os_log_type_enabled(v50, type[0]))
          {
            *buf = 136446466;
            v97 = "on_begin_headers_callback";
            v98 = 2082;
            v99 = v48;
            v52 = "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream";
LABEL_121:
            _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0x16u);
          }
        }

        else if (v95 == 1)
        {
          v59 = __nw_create_backtrace_string();
          v50 = __nwlog_obj();
          v51 = type[0];
          v60 = os_log_type_enabled(v50, type[0]);
          if (v59)
          {
            if (v60)
            {
              *buf = 136446722;
              v97 = "on_begin_headers_callback";
              v98 = 2082;
              v99 = v48;
              v100 = 2082;
              *v101 = v59;
              _os_log_impl(&dword_181A37000, v50, v51, "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v59);
            goto LABEL_122;
          }

          if (v60)
          {
            *buf = 136446466;
            v97 = "on_begin_headers_callback";
            v98 = 2082;
            v99 = v48;
            v52 = "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream, no backtrace";
            goto LABEL_121;
          }
        }

        else
        {
          v50 = __nwlog_obj();
          v51 = type[0];
          if (os_log_type_enabled(v50, type[0]))
          {
            *buf = 136446466;
            v97 = "on_begin_headers_callback";
            v98 = 2082;
            v99 = v48;
            v52 = "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream, backtrace limit exceeded";
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      if (v49)
      {
        free(v49);
      }

      if (!v18)
      {
        return 4294966775;
      }

      v66 = v18;
      goto LABEL_132;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v38 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    v39 = *(a2 + 8);
    *buf = 136446722;
    v97 = "on_begin_headers_callback";
    v98 = 2082;
    v99 = a3 + 205;
    v100 = 1024;
    *v101 = v39;
    v14 = "%{public}s %{public}s http2_transport has no listen handler when new stream (%d) is being opened, closing";
    v15 = v38;
    v16 = 28;
LABEL_20:
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    return 4294966775;
  }

  v9 = stream_node_from_id[2];
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = a3 + 205;
    v32 = *(a2 + 8);
    *buf = 136446722;
    v97 = "on_begin_headers_callback";
    v98 = 2082;
    v99 = a3 + 205;
    v100 = 1024;
    *v101 = v32;
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s could not get stream (%d) from node", buf, 28);
    type[0] = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v33, type, &v95))
    {
      goto LABEL_130;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_130;
      }

      v36 = *(a2 + 8);
      *buf = 136446722;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = v31;
      v100 = 1024;
      *v101 = v36;
      v37 = "%{public}s %{public}s could not get stream (%d) from node";
    }

    else if (v95 == 1)
    {
      v40 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type[0];
      v41 = os_log_type_enabled(v34, type[0]);
      if (v40)
      {
        if (v41)
        {
          v42 = *(a2 + 8);
          *buf = 136446978;
          v97 = "on_begin_headers_callback";
          v98 = 2082;
          v99 = v31;
          v100 = 1024;
          *v101 = v42;
          *&v101[4] = 2082;
          *&v101[6] = v40;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s %{public}s could not get stream (%d) from node, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v40);
LABEL_130:
        if (v33)
        {
          v66 = v33;
LABEL_132:
          free(v66);
        }

        return 4294966775;
      }

      if (!v41)
      {
        goto LABEL_130;
      }

      v61 = *(a2 + 8);
      *buf = 136446722;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = v31;
      v100 = 1024;
      *v101 = v61;
      v37 = "%{public}s %{public}s could not get stream (%d) from node, no backtrace";
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (!os_log_type_enabled(v34, type[0]))
      {
        goto LABEL_130;
      }

      v46 = *(a2 + 8);
      *buf = 136446722;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = v31;
      v100 = 1024;
      *v101 = v46;
      v37 = "%{public}s %{public}s could not get stream (%d) from node, backtrace limit exceeded";
    }

    v62 = v34;
    v63 = v35;
    v64 = 28;
LABEL_129:
    _os_log_impl(&dword_181A37000, v62, v63, v37, buf, v64);
    goto LABEL_130;
  }

  if (*(v9 + 32) != 1 || (~*(v9 + 36) & 0xA) != 0)
  {
    return 0;
  }

  if (gLogDatapath == 1)
  {
    v77 = stream_node_from_id;
    v78 = __nwlog_obj();
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG);
    stream_node_from_id = v77;
    if (v79)
    {
      *buf = 136446466;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = a3 + 205;
      _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling connect for initial responder stream upon receipt of headers from remote client", buf, 0x16u);
      stream_node_from_id = v77;
    }
  }

  v10 = stream_node_from_id[4];
  if (!v10)
  {
    v56 = __nwlog_obj();
    v57 = a3 + 205;
    *buf = 136446466;
    v97 = "on_begin_headers_callback";
    v98 = 2082;
    v99 = a3 + 205;
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1", buf, 22);
    type[0] = OS_LOG_TYPE_ERROR;
    v95 = 0;
    if (!__nwlog_fault(v33, type, &v95))
    {
      goto LABEL_130;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type[0];
      if (!os_log_type_enabled(v44, type[0]))
      {
        goto LABEL_130;
      }

      *buf = 136446466;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = v57;
      v37 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1";
      goto LABEL_128;
    }

    if (v95 != 1)
    {
      v44 = __nwlog_obj();
      v45 = type[0];
      if (!os_log_type_enabled(v44, type[0]))
      {
        goto LABEL_130;
      }

      *buf = 136446466;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = v57;
      v37 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1, backtrace limit exceeded";
      goto LABEL_128;
    }

    v53 = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = type[0];
    v65 = os_log_type_enabled(v44, type[0]);
    if (!v53)
    {
      if (!v65)
      {
        goto LABEL_130;
      }

      *buf = 136446466;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = v57;
      v37 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1, no backtrace";
      goto LABEL_128;
    }

    if (v65)
    {
      *buf = 136446722;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = v57;
      v100 = 2082;
      *v101 = v53;
      v55 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1, dumping backtrace:%{public}s";
      goto LABEL_111;
    }

    goto LABEL_112;
  }

  if (!nw_http2_transport_stream_connect(a3, v9, v10))
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v9 + 32);
      *buf = 136446978;
      v97 = "on_begin_headers_callback";
      v98 = 2082;
      v99 = a3 + 205;
      v100 = 1024;
      *v101 = v12;
      *&v101[4] = 2048;
      *&v101[6] = v9;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s nw_http2_transport_stream_connect failed for stream id %d (%p)", buf, 0x26u);
    }
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v80 = __nwlog_obj();
  result = os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446466;
    v97 = "on_begin_headers_callback";
    v98 = 2082;
    v99 = a3 + 205;
    _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connected initial responder stream", buf, 0x16u);
    return 0;
  }

  return result;
}

void nw_http2_transport_stream_init(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    *(a1 + 8) = a1;
    *(a1 + 16) = 0;
    *(a1 + 24) = a1 + 16;
    *(a1 + 32) = -1;
    *(a1 + 36) &= 0xF0u;
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_http2_transport_stream_init";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "nw_http2_transport_stream_init";
      v5 = "%{public}s called with null stream";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "nw_http2_transport_stream_init";
      v5 = "%{public}s called with null stream, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "nw_http2_transport_stream_init";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "nw_http2_transport_stream_init";
      v5 = "%{public}s called with null stream, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

_BYTE *nw_http2_transport_add_to_id_table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_http2_transport_add_to_id_table";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null stream", buf, 12);
    v47 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, &v47, &type))
    {
      goto LABEL_35;
    }

    if (v47 == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = v47;
      if (!os_log_type_enabled(v21, v47))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v49 = "nw_http2_transport_add_to_id_table";
      v23 = "%{public}s called with null stream";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = v47;
      v41 = os_log_type_enabled(v21, v47);
      if (backtrace_string)
      {
        if (v41)
        {
          *buf = 136446466;
          v49 = "nw_http2_transport_add_to_id_table";
          v50 = 2082;
          v51 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (!v41)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v49 = "nw_http2_transport_add_to_id_table";
      v23 = "%{public}s called with null stream, no backtrace";
    }

    else
    {
      v21 = __nwlog_obj();
      v22 = v47;
      if (!os_log_type_enabled(v21, v47))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v49 = "nw_http2_transport_add_to_id_table";
      v23 = "%{public}s called with null stream, backtrace limit exceeded";
    }

LABEL_33:
    v29 = v21;
    v30 = v22;
LABEL_34:
    _os_log_impl(&dword_181A37000, v29, v30, v23, buf, 0xCu);
    goto LABEL_35;
  }

  if (gLogDatapath == 1)
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a2 + 32);
      *buf = 136446978;
      v49 = "nw_http2_transport_add_to_id_table";
      v50 = 2082;
      v51 = (a1 + 205);
      v52 = 1024;
      *v53 = v35;
      *&v53[4] = 2048;
      *&v53[6] = a2;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream %d (%p)", buf, 0x26u);
    }
  }

  v47 = OS_LOG_TYPE_DEFAULT;
  internal = *(a1 + 120);
  if (!internal)
  {
    internal = nw_hash_table_create_internal(0x11u, 8, stream_get_key, stream_key_hash, stream_matches_key, 0, 0);
    if (internal)
    {
      *(internal + 56) &= ~2u;
      *(a1 + 120) = internal;
      goto LABEL_6;
    }

    *(a1 + 120) = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v49 = "nw_http2_transport_add_to_id_table";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_hash_table_create_no_lock failed", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v20, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v49 = "nw_http2_transport_add_to_id_table";
        v23 = "%{public}s nw_hash_table_create_no_lock failed";
        goto LABEL_33;
      }

      if (v45 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v49 = "nw_http2_transport_add_to_id_table";
        v23 = "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded";
        goto LABEL_33;
      }

      v25 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      v28 = os_log_type_enabled(gLogObj, type);
      if (v25)
      {
        if (v28)
        {
          *buf = 136446466;
          v49 = "nw_http2_transport_add_to_id_table";
          v50 = 2082;
          v51 = v25;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
      }

      else if (v28)
      {
        *buf = 136446210;
        v49 = "nw_http2_transport_add_to_id_table";
        v23 = "%{public}s nw_hash_table_create_no_lock failed, no backtrace";
        v29 = v26;
        v30 = v27;
        goto LABEL_34;
      }
    }

LABEL_35:
    if (v20)
    {
      v31 = v20;
LABEL_42:
      free(v31);
    }

    return 0;
  }

LABEL_6:
  result = nw_hash_table_add_object(internal, a2, &v47);
  if ((v47 & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = (a1 + 205);
    v11 = *(a2 + 32);
    *buf = 136446722;
    v49 = "nw_http2_transport_add_to_id_table";
    v50 = 2082;
    v51 = (a1 + 205);
    v52 = 1024;
    *v53 = v11;
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s http2_transport already has stream id registered for %d", buf, 28);
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v12, &type, &v45))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_40;
      }

      v15 = *(a2 + 32);
      *buf = 136446722;
      v49 = "nw_http2_transport_add_to_id_table";
      v50 = 2082;
      v51 = v10;
      v52 = 1024;
      *v53 = v15;
      v16 = "%{public}s %{public}s http2_transport already has stream id registered for %d";
    }

    else if (v45 == 1)
    {
      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      v18 = os_log_type_enabled(gLogObj, type);
      if (v17)
      {
        if (v18)
        {
          v19 = *(a2 + 32);
          *buf = 136446978;
          v49 = "nw_http2_transport_add_to_id_table";
          v50 = 2082;
          v51 = v10;
          v52 = 1024;
          *v53 = v19;
          *&v53[4] = 2082;
          *&v53[6] = v17;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s %{public}s http2_transport already has stream id registered for %d, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v17);
LABEL_40:
        if (v12)
        {
          v31 = v12;
          goto LABEL_42;
        }

        return 0;
      }

      if (!v18)
      {
        goto LABEL_40;
      }

      v32 = *(a2 + 32);
      *buf = 136446722;
      v49 = "nw_http2_transport_add_to_id_table";
      v50 = 2082;
      v51 = v10;
      v52 = 1024;
      *v53 = v32;
      v16 = "%{public}s %{public}s http2_transport already has stream id registered for %d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_40;
      }

      v24 = *(a2 + 32);
      *buf = 136446722;
      v49 = "nw_http2_transport_add_to_id_table";
      v50 = 2082;
      v51 = v10;
      v52 = 1024;
      *v53 = v24;
      v16 = "%{public}s %{public}s http2_transport already has stream id registered for %d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x1Cu);
    goto LABEL_40;
  }

  if (gLogDatapath == 1)
  {
    v36 = result;
    v37 = __nwlog_obj();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
    result = v36;
    if (v38)
    {
      v39 = *(a2 + 32);
      *buf = 136446722;
      v49 = "nw_http2_transport_add_to_id_table";
      v50 = 2082;
      v51 = (a1 + 205);
      v52 = 1024;
      *v53 = v39;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s added stream %d to stream id hash table", buf, 0x1Cu);
      result = v36;
    }
  }

  if (a3)
  {
    if (gLogDatapath == 1)
    {
      v42 = result;
      v43 = __nwlog_obj();
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
      result = v42;
      if (v44)
      {
        *buf = 136447234;
        v49 = "nw_http2_transport_add_to_id_table";
        v50 = 2082;
        v51 = (a1 + 205);
        v52 = 2048;
        *v53 = a2;
        *&v53[8] = 2048;
        *&v53[10] = v42;
        v54 = 2048;
        v55 = a3;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connecting stream %p node %p with protocol %p", buf, 0x34u);
        result = v42;
      }
    }

    v8 = result;
    extra = nw_hash_node_get_extra(result);
    result = v8;
    *extra = a3;
  }

  return result;
}

uint64_t ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke(uint64_t a1, int a2, void *object)
{
  if (object)
  {
    v4 = os_retain(object);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return 0;
}

uint64_t ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_2(uint64_t a1, int a2, void *object)
{
  if (object)
  {
    v4 = os_retain(object);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return 0;
}

uint64_t ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_3(uint64_t a1, int a2, void *object)
{
  if (object)
  {
    v4 = os_retain(object);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return 0;
}

BOOL nw_http2_transport_stream_connect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_http2_transport_stream_connect";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null http2_transport", buf, 12);
    v65[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v39, v65, &type))
    {
      if (v65[0] == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = v65[0];
        if (os_log_type_enabled(v40, v65[0]))
        {
          *buf = 136446210;
          v67 = "nw_http2_transport_stream_connect";
          v42 = "%{public}s called with null http2_transport";
LABEL_111:
          _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = v65[0];
        v55 = os_log_type_enabled(v40, v65[0]);
        if (backtrace_string)
        {
          if (v55)
          {
            *buf = 136446466;
            v67 = "nw_http2_transport_stream_connect";
            v68 = 2082;
            v69 = backtrace_string;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_112;
        }

        if (v55)
        {
          *buf = 136446210;
          v67 = "nw_http2_transport_stream_connect";
          v42 = "%{public}s called with null http2_transport, no backtrace";
          goto LABEL_111;
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = v65[0];
        if (os_log_type_enabled(v40, v65[0]))
        {
          *buf = 136446210;
          v67 = "nw_http2_transport_stream_connect";
          v42 = "%{public}s called with null http2_transport, backtrace limit exceeded";
          goto LABEL_111;
        }
      }
    }

LABEL_112:
    if (v39)
    {
      free(v39);
    }

    return 0;
  }

  if (gLogDatapath == 1)
  {
    v43 = __nwlog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a2 + 32);
      *buf = 136446978;
      v67 = "nw_http2_transport_stream_connect";
      v68 = 2082;
      v69 = a1 + 205;
      v70 = 1024;
      *v71 = v44;
      *&v71[4] = 2048;
      *&v71[6] = a2;
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream %d (%p)", buf, 0x26u);
    }
  }

  if (*(a2 + 36))
  {
    if (gLogDatapath == 1)
    {
      v52 = __nwlog_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(a2 + 32);
        *buf = 136446722;
        v67 = "nw_http2_transport_stream_connect";
        v68 = 2082;
        v69 = a1 + 205;
        v70 = 1024;
        *v71 = v53;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream %d is already connected", buf, 0x1Cu);
      }
    }

    v12 = *(a3 + 24);
    if (v12)
    {
      v13 = *(v12 + 40);
      if (v13)
      {
        v13(a3, a1);
        return 1;
      }
    }

    v45 = __nwlog_obj();
    v46 = *(a3 + 16);
    if (!v46)
    {
      v46 = "invalid";
    }

    *buf = 136446466;
    v67 = "nw_http2_transport_stream_connect";
    v68 = 2082;
    v69 = v46;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
    v65[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v47, v65, &type))
    {
      if (v65[0] == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = v65[0];
        if (!os_log_type_enabled(v48, v65[0]))
        {
          goto LABEL_120;
        }

        v50 = *(a3 + 16);
        if (!v50)
        {
          v50 = "invalid";
        }

        *buf = 136446466;
        v67 = "nw_http2_transport_stream_connect";
        v68 = 2082;
        v69 = v50;
        v51 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_119;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v48 = __nwlog_obj();
        v49 = v65[0];
        if (!os_log_type_enabled(v48, v65[0]))
        {
          goto LABEL_120;
        }

        v61 = *(a3 + 16);
        if (!v61)
        {
          v61 = "invalid";
        }

        *buf = 136446466;
        v67 = "nw_http2_transport_stream_connect";
        v68 = 2082;
        v69 = v61;
        v51 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_119;
      }

      v56 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = v65[0];
      v57 = os_log_type_enabled(v48, v65[0]);
      if (v56)
      {
        if (v57)
        {
          v58 = *(a3 + 16);
          if (!v58)
          {
            v58 = "invalid";
          }

          *buf = 136446722;
          v67 = "nw_http2_transport_stream_connect";
          v68 = 2082;
          v69 = v58;
          v70 = 2082;
          *v71 = v56;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v56);
        goto LABEL_120;
      }

      if (v57)
      {
        v62 = *(a3 + 16);
        if (!v62)
        {
          v62 = "invalid";
        }

        *buf = 136446466;
        v67 = "nw_http2_transport_stream_connect";
        v68 = 2082;
        v69 = v62;
        v51 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_119:
        _os_log_impl(&dword_181A37000, v48, v49, v51, buf, 0x16u);
      }
    }

LABEL_120:
    if (v47)
    {
      free(v47);
    }

    return 1;
  }

  *v65 = a2;
  v6 = nghttp2_submit_headers();
  if (v6 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = nghttp2_strerror();
    *buf = 136446466;
    v67 = "nw_http2_transport_send_headers";
    v68 = 2082;
    v69 = v15;
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s nghttp2_submit_headers: %{public}s failed", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v16, &type, &v63))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      v19 = nghttp2_strerror();
      *buf = 136446466;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = v19;
      v20 = "%{public}s nghttp2_submit_headers: %{public}s failed";
    }

    else if (v63 == 1)
    {
      v21 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      v22 = os_log_type_enabled(gLogObj, type);
      if (v21)
      {
        if (v22)
        {
          v23 = nghttp2_strerror();
          *buf = 136446722;
          v67 = "nw_http2_transport_send_headers";
          v68 = 2082;
          v69 = v23;
          v70 = 2082;
          *v71 = v21;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s nghttp2_submit_headers: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v21);
        goto LABEL_65;
      }

      if (!v22)
      {
        goto LABEL_65;
      }

      v32 = nghttp2_strerror();
      *buf = 136446466;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = v32;
      v20 = "%{public}s nghttp2_submit_headers: %{public}s failed, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      v26 = nghttp2_strerror();
      *buf = 136446466;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = v26;
      v20 = "%{public}s nghttp2_submit_headers: %{public}s failed, backtrace limit exceeded";
    }

    v33 = v17;
    v34 = v18;
LABEL_64:
    _os_log_impl(&dword_181A37000, v33, v34, v20, buf, 0x16u);
    goto LABEL_65;
  }

  v7 = *v65;
  v8 = *(*v65 + 32);
  if (v8 == -1)
  {
    if ((*(*v65 + 36) & 8) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = a1 + 205;
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s Responder stream cannot have id of -1 after opening", buf, 22);
      type = OS_LOG_TYPE_ERROR;
      v63 = 0;
      if (!__nwlog_fault(v16, &type, &v63))
      {
        goto LABEL_65;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_65;
        }

        *buf = 136446466;
        v67 = "nw_http2_transport_send_headers";
        v68 = 2082;
        v69 = a1 + 205;
        v20 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening";
        goto LABEL_63;
      }

      if (v63 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (!os_log_type_enabled(v24, type))
        {
          goto LABEL_65;
        }

        *buf = 136446466;
        v67 = "nw_http2_transport_send_headers";
        v68 = 2082;
        v69 = a1 + 205;
        v20 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening, backtrace limit exceeded";
        goto LABEL_63;
      }

      v27 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v30 = os_log_type_enabled(v24, type);
      if (!v27)
      {
        if (!v30)
        {
          goto LABEL_65;
        }

        *buf = 136446466;
        v67 = "nw_http2_transport_send_headers";
        v68 = 2082;
        v69 = a1 + 205;
        v20 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening, no backtrace";
        goto LABEL_63;
      }

      if (v30)
      {
        *buf = 136446722;
        v67 = "nw_http2_transport_send_headers";
        v68 = 2082;
        v69 = a1 + 205;
        v70 = 2082;
        *v71 = v27;
        v29 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening, dumping backtrace:%{public}s";
        goto LABEL_46;
      }

LABEL_47:
      free(v27);
      if (!v16)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    *(*v65 + 32) = v6;
    if (!nw_http2_transport_add_to_id_table(a1, v7, a3))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v67 = "nw_http2_transport_send_headers";
        v68 = 2082;
        v69 = a1 + 205;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to add new stream to the id based hash table", buf, 0x16u);
      }

      *(*v65 + 32) = -1;
      goto LABEL_67;
    }

    v8 = *(*v65 + 32);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (v8 > 0)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v10 = "server";
      v11 = *(*v65 + 32);
      if ((*(a1 + 204) & 0x10) == 0)
      {
        v10 = "client";
      }

      *buf = 136446978;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = a1 + 205;
      v70 = 2082;
      *v71 = v10;
      *&v71[8] = 1024;
      *&v71[10] = v11;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s submitted headers for stream %d", buf, 0x26u);
    }

    nw_http2_transport_session_send(a1);
    goto LABEL_67;
  }

  *buf = 136446466;
  v67 = "nw_http2_transport_send_headers";
  v68 = 2082;
  v69 = a1 + 205;
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s Stream has invalid id", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v63 = 0;
  if (__nwlog_fault(v16, &type, &v63))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = a1 + 205;
      v20 = "%{public}s %{public}s Stream has invalid id";
LABEL_63:
      v33 = v24;
      v34 = v25;
      goto LABEL_64;
    }

    if (v63 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = a1 + 205;
      v20 = "%{public}s %{public}s Stream has invalid id, backtrace limit exceeded";
      goto LABEL_63;
    }

    v27 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = type;
    v28 = os_log_type_enabled(gLogObj, type);
    if (!v27)
    {
      if (!v28)
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = a1 + 205;
      v20 = "%{public}s %{public}s Stream has invalid id, no backtrace";
      goto LABEL_63;
    }

    if (v28)
    {
      *buf = 136446722;
      v67 = "nw_http2_transport_send_headers";
      v68 = 2082;
      v69 = a1 + 205;
      v70 = 2082;
      *v71 = v27;
      v29 = "%{public}s %{public}s Stream has invalid id, dumping backtrace:%{public}s";
LABEL_46:
      _os_log_impl(&dword_181A37000, v24, v25, v29, buf, 0x20u);
      goto LABEL_47;
    }

    goto LABEL_47;
  }

LABEL_65:
  if (v16)
  {
LABEL_66:
    free(v16);
  }

LABEL_67:
  if ((*(a2 + 32) & 0x80000000) == 0)
  {
    *(a2 + 36) &= ~2u;
    if (gLogDatapath == 1)
    {
      v59 = __nwlog_obj();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v60 = *(a2 + 32);
        *buf = 136446722;
        v67 = "nw_http2_transport_stream_connect";
        v68 = 2082;
        v69 = a1 + 205;
        v70 = 1024;
        *v71 = v60;
        _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connect complete for stream %d", buf, 0x1Cu);
      }
    }

    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v36 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v37 = *(a2 + 32);
    *buf = 136446978;
    v67 = "nw_http2_transport_stream_connect";
    v68 = 2082;
    v69 = a1 + 205;
    v70 = 2048;
    *v71 = a2;
    *&v71[8] = 1024;
    *&v71[10] = v37;
    _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to open stream %p (id still %d)", buf, 0x26u);
    return 0;
  }

  return result;
}

uint64_t on_header_callback(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v22 = a5;
    v23 = a3;
    v24 = a2;
    v25 = __nwlog_obj();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    a2 = v24;
    a3 = v23;
    a5 = v22;
    if (v26)
    {
      *buf = 136446722;
      v40 = "on_header_callback";
      v41 = 2082;
      v42 = v23;
      v43 = 2082;
      *v44 = v22;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s called name %{public}s value %{public}s", buf, 0x20u);
      a2 = v24;
      a3 = v23;
      a5 = v22;
    }
  }

  if (!a8)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v40 = "on_header_callback";
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v28, &type, &v37))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v40 = "on_header_callback";
      v31 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v37 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v33 = os_log_type_enabled(v29, type);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          v40 = "on_header_callback";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (!v33)
      {
LABEL_37:
        if (v28)
        {
          free(v28);
        }

        return 4294966394;
      }

      *buf = 136446210;
      v40 = "on_header_callback";
      v31 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v40 = "on_header_callback";
      v31 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    goto LABEL_37;
  }

  v9 = *(a2 + 12);
  if (v9 == 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    *buf = 136446466;
    v40 = "on_header_callback";
    v41 = 2082;
    v42 = (a8 + 205);
    v15 = "%{public}s %{public}s push promise frames currently not supported";
    v16 = v14;
    v17 = 22;
LABEL_16:
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    return 4294966775;
  }

  if (v9 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v40 = "on_header_callback";
      v41 = 2082;
      v42 = (a8 + 205);
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s returning callback failure with unknown error", buf, 0x16u);
    }

    return 4294966394;
  }

  if (*(a2 + 56) != 1)
  {
    v19 = a2;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    v21 = *(v19 + 8);
    *buf = 136446722;
    v40 = "on_header_callback";
    v41 = 2082;
    v42 = (a8 + 205);
    v43 = 1024;
    *v44 = v21;
    v15 = "%{public}s %{public}s ERROR: Got headers for stream %d, a stream that doesn't exist.";
    v16 = v20;
    v17 = 28;
    goto LABEL_16;
  }

  v10 = a3;
  v11 = a5;
  stream_from_id = nw_http2_transport_get_stream_from_id(a8, *(a2 + 8), 0);
  if (!stream_from_id)
  {
    return 4294966775;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v34 = stream_from_id;
  v35 = __nwlog_obj();
  result = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v36 = *(v34 + 32);
    *buf = 136447234;
    v40 = "on_header_callback";
    v41 = 2082;
    v42 = (a8 + 205);
    v43 = 1024;
    *v44 = v36;
    *&v44[4] = 2082;
    *&v44[6] = v10;
    v45 = 2082;
    v46 = v11;
    _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s received header response on stream %d: name: %{public}s value: %{public}s", buf, 0x30u);
    return 0;
  }

  return result;
}

void nw_http2_transport_stream_connected(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48[2] = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v24 = __nwlog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a2 + 32);
      *buf = 136446978;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = (a1 + 205);
      v47 = 1024;
      LODWORD(v48[0]) = v25;
      WORD2(v48[0]) = 2048;
      *(v48 + 6) = a2;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream %d (%p)", buf, 0x26u);
    }
  }

  *(a2 + 36) |= 1u;
  v6 = *(a3 + 24);
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      v7(a3, a1);
      goto LABEL_5;
    }
  }

  v10 = __nwlog_obj();
  v11 = *(a3 + 16);
  if (!v11)
  {
    v11 = "invalid";
  }

  *buf = 136446466;
  v44 = "nw_http2_transport_stream_connected";
  v45 = 2082;
  v46 = v11;
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (__nwlog_fault(v12, &type, &v41))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_61;
      }

      v15 = *(a3 + 16);
      if (!v15)
      {
        v15 = "invalid";
      }

      *buf = 136446466;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = v15;
      v16 = "%{public}s protocol %{public}s has invalid connected callback";
      goto LABEL_60;
    }

    if (v41 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_61;
      }

      v36 = *(a3 + 16);
      if (!v36)
      {
        v36 = "invalid";
      }

      *buf = 136446466;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = v36;
      v16 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v29 = os_log_type_enabled(v13, type);
    if (backtrace_string)
    {
      if (v29)
      {
        v30 = *(a3 + 16);
        if (!v30)
        {
          v30 = "invalid";
        }

        *buf = 136446722;
        v44 = "nw_http2_transport_stream_connected";
        v45 = 2082;
        v46 = v30;
        v47 = 2082;
        v48[0] = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_61;
    }

    if (v29)
    {
      v38 = *(a3 + 16);
      if (!v38)
      {
        v38 = "invalid";
      }

      *buf = 136446466;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = v38;
      v16 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_60:
      _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x16u);
    }
  }

LABEL_61:
  if (v12)
  {
    free(v12);
  }

LABEL_5:
  if (gLogDatapath == 1)
  {
    v26 = __nwlog_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a2 + 32);
      *buf = 136446978;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = (a1 + 205);
      v47 = 1024;
      LODWORD(v48[0]) = v27;
      WORD2(v48[0]) = 2048;
      *(v48 + 6) = a3;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream %d (protocol %p) connected", buf, 0x26u);
    }
  }

  if (*a2)
  {
    if (gLogDatapath == 1)
    {
      v31 = __nwlog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a2 + 32);
        *buf = 136446722;
        v44 = "nw_http2_transport_stream_connected";
        v45 = 2082;
        v46 = (a1 + 205);
        v47 = 1024;
        LODWORD(v48[0]) = v32;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling input_available with input_frames pending for stream %d", buf, 0x1Cu);
      }
    }

    v8 = *(a3 + 24);
    if (v8)
    {
      v9 = *(v8 + 64);
      if (v9)
      {
        v9(a3, a1);
        goto LABEL_11;
      }
    }

    v17 = __nwlog_obj();
    v18 = *(a3 + 16);
    if (!v18)
    {
      v18 = "invalid";
    }

    *buf = 136446466;
    v44 = "nw_http2_transport_stream_connected";
    v45 = 2082;
    v46 = v18;
    LODWORD(v40) = 22;
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s protocol %{public}s has invalid input_available callback", buf, v40);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v19, &type, &v41))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_68;
      }

      v22 = *(a3 + 16);
      if (!v22)
      {
        v22 = "invalid";
      }

      *buf = 136446466;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = v22;
      v23 = "%{public}s protocol %{public}s has invalid input_available callback";
    }

    else if (v41 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v34 = os_log_type_enabled(v20, type);
      if (v33)
      {
        if (v34)
        {
          v35 = *(a3 + 16);
          if (!v35)
          {
            v35 = "invalid";
          }

          *buf = 136446722;
          v44 = "nw_http2_transport_stream_connected";
          v45 = 2082;
          v46 = v35;
          v47 = 2082;
          v48[0] = v33;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v33);
        goto LABEL_68;
      }

      if (!v34)
      {
LABEL_68:
        if (v19)
        {
          free(v19);
        }

        goto LABEL_11;
      }

      v39 = *(a3 + 16);
      if (!v39)
      {
        v39 = "invalid";
      }

      *buf = 136446466;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = v39;
      v23 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
    }

    else
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_68;
      }

      v37 = *(a3 + 16);
      if (!v37)
      {
        v37 = "invalid";
      }

      *buf = 136446466;
      v44 = "nw_http2_transport_stream_connected";
      v45 = 2082;
      v46 = v37;
      v23 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v20, v21, v23, buf, 0x16u);
    goto LABEL_68;
  }

LABEL_11:
  nw_http2_transport_session_send(a1);
}

void nw_protocol_http2_transport_notify(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http2_transport_notify";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);
    v31 = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &v31, &v30))
    {
      goto LABEL_63;
    }

    if (v31 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v31;
      if (!os_log_type_enabled(v9, v31))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null protocol";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v31;
      v22 = os_log_type_enabled(v9, v31);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v33 = "nw_protocol_http2_transport_notify";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_63:
        if (!v8)
        {
          return;
        }

        goto LABEL_64;
      }

      if (!v22)
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = v31;
      if (!os_log_type_enabled(v9, v31))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_62;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http2_transport_notify";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null http2_transport", buf, 12);
    v31 = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &v31, &v30))
    {
      goto LABEL_63;
    }

    if (v31 != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v9 = __nwlog_obj();
        v10 = v31;
        if (!os_log_type_enabled(v9, v31))
        {
          goto LABEL_63;
        }

        *buf = 136446210;
        v33 = "nw_protocol_http2_transport_notify";
        v11 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_62;
      }

      v23 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v31;
      v24 = os_log_type_enabled(v9, v31);
      if (!v23)
      {
        if (!v24)
        {
          goto LABEL_63;
        }

        *buf = 136446210;
        v33 = "nw_protocol_http2_transport_notify";
        v11 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_62;
      }

      if (!v24)
      {
        goto LABEL_44;
      }

      *buf = 136446466;
      v33 = "nw_protocol_http2_transport_notify";
      v34 = 2082;
      v35 = v23;
      v25 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

    v9 = __nwlog_obj();
    v10 = v31;
    if (!os_log_type_enabled(v9, v31))
    {
      goto LABEL_63;
    }

    *buf = 136446210;
    v33 = "nw_protocol_http2_transport_notify";
    v11 = "%{public}s called with null http2_transport";
LABEL_62:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_63;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http2_transport_notify";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null other_protocol", buf, 12);
    v31 = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &v31, &v30))
    {
      goto LABEL_63;
    }

    if (v31 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v31;
      if (!os_log_type_enabled(v9, v31))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null other_protocol";
      goto LABEL_62;
    }

    if (v30 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v31;
      if (!os_log_type_enabled(v9, v31))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_62;
    }

    v23 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v31;
    v26 = os_log_type_enabled(v9, v31);
    if (!v23)
    {
      if (!v26)
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_62;
    }

    if (!v26)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v33 = "nw_protocol_http2_transport_notify";
    v34 = 2082;
    v35 = v23;
    v25 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_43:
    _os_log_impl(&dword_181A37000, v9, v10, v25, buf, 0x16u);
    goto LABEL_44;
  }

  if (!*(v5 + 112))
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http2_transport_notify";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null http2_transport->http2_transport_streams_protocol", buf, 12);
    v31 = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v8, &v31, &v30))
    {
      goto LABEL_63;
    }

    if (v31 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v31;
      if (!os_log_type_enabled(v9, v31))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null http2_transport->http2_transport_streams_protocol";
      goto LABEL_62;
    }

    if (v30 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v31;
      if (!os_log_type_enabled(v9, v31))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null http2_transport->http2_transport_streams_protocol, backtrace limit exceeded";
      goto LABEL_62;
    }

    v23 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v31;
    v27 = os_log_type_enabled(v9, v31);
    if (!v23)
    {
      if (!v27)
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http2_transport_notify";
      v11 = "%{public}s called with null http2_transport->http2_transport_streams_protocol, no backtrace";
      goto LABEL_62;
    }

    if (v27)
    {
      *buf = 136446466;
      v33 = "nw_protocol_http2_transport_notify";
      v34 = 2082;
      v35 = v23;
      v25 = "%{public}s called with null http2_transport->http2_transport_streams_protocol, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

LABEL_44:
    free(v23);
    if (!v8)
    {
      return;
    }

LABEL_64:
    free(v8);
    return;
  }

  if (gLogDatapath == 1)
  {
    v15 = a5;
    v16 = a4;
    v17 = a3;
    v18 = a2;
    v19 = __nwlog_obj();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    a2 = v18;
    a3 = v17;
    a4 = v16;
    a5 = v15;
    if (v20)
    {
      *buf = 136446466;
      v33 = "nw_protocol_http2_transport_notify";
      v34 = 2082;
      v35 = (v5 + 205);
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a2 = v18;
      a3 = v17;
      a4 = v16;
      a5 = v15;
    }
  }

  v6 = *(v5 + 112);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 0x40000000;
  v28[2] = ___ZL34nw_protocol_http2_transport_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
  v28[3] = &__block_descriptor_tmp_41_40904;
  v28[4] = v5;
  v28[5] = a2;
  v29 = a3;
  v28[6] = a4;
  v28[7] = a5;
  nw_hash_table_apply(v6, v28);
}

uint64_t ___ZL34nw_protocol_http2_transport_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_protocol_http2_transport_notify_block_invoke";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null node", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v9, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v39 = "nw_protocol_http2_transport_notify_block_invoke";
          v14 = "%{public}s called with null node";
LABEL_58:
          v23 = v32;
          v24 = v33;
          v25 = 12;
          goto LABEL_36;
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type;
        v35 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v39 = "nw_protocol_http2_transport_notify_block_invoke";
            v40 = 2082;
            v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null node, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v35)
        {
          *buf = 136446210;
          v39 = "nw_protocol_http2_transport_notify_block_invoke";
          v14 = "%{public}s called with null node, no backtrace";
          goto LABEL_58;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v39 = "nw_protocol_http2_transport_notify_block_invoke";
          v14 = "%{public}s called with null node, backtrace limit exceeded";
          goto LABEL_58;
        }
      }
    }

LABEL_37:
    if (!v9)
    {
      return 1;
    }

LABEL_38:
    free(v9);
    return 1;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(v4 + 24);
    if (v5 && (v6 = *(v5 + 160)) != 0)
    {
      v6();
    }

    else
    {
      v27 = *(a2 + 16);
      v28 = __nwlog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = *(a1 + 32);
        *buf = 136446722;
        v39 = "nw_protocol_http2_transport_notify_block_invoke";
        if (v29)
        {
          v30 = (v29 + 205);
        }

        else
        {
          v30 = "";
        }

        v40 = 2082;
        v41 = v30;
        v42 = 2048;
        v43 = v27;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s %{public}s notify callback not set on input handler %p, skipping notify", buf, 0x20u);
      }
    }

    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = (v7 + 205);
  }

  else
  {
    v8 = "";
  }

  *buf = 136446722;
  v39 = "nw_protocol_http2_transport_notify_block_invoke";
  v40 = 2082;
  v41 = v8;
  v42 = 2048;
  v43 = a2;
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s no object for hash node %p, skipping notify", buf, 32);
  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (!__nwlog_fault(v9, &type, &v36))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_37;
    }

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
    v39 = "nw_protocol_http2_transport_notify_block_invoke";
    v40 = 2082;
    v41 = v13;
    v42 = 2048;
    v43 = a2;
    v14 = "%{public}s %{public}s no object for hash node %p, skipping notify";
LABEL_35:
    v23 = v10;
    v24 = v11;
    v25 = 32;
LABEL_36:
    _os_log_impl(&dword_181A37000, v23, v24, v14, buf, v25);
    goto LABEL_37;
  }

  if (v36 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_37;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = (v19 + 205);
    }

    else
    {
      v20 = "";
    }

    *buf = 136446722;
    v39 = "nw_protocol_http2_transport_notify_block_invoke";
    v40 = 2082;
    v41 = v20;
    v42 = 2048;
    v43 = a2;
    v14 = "%{public}s %{public}s no object for hash node %p, skipping notify, backtrace limit exceeded";
    goto LABEL_35;
  }

  v15 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v11 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = (v21 + 205);
    }

    else
    {
      v22 = "";
    }

    *buf = 136446722;
    v39 = "nw_protocol_http2_transport_notify_block_invoke";
    v40 = 2082;
    v41 = v22;
    v42 = 2048;
    v43 = a2;
    v14 = "%{public}s %{public}s no object for hash node %p, skipping notify, no backtrace";
    goto LABEL_35;
  }

  if (v16)
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = (v17 + 205);
    }

    else
    {
      v18 = "";
    }

    *buf = 136446978;
    v39 = "nw_protocol_http2_transport_notify_block_invoke";
    v40 = 2082;
    v41 = v18;
    v42 = 2048;
    v43 = a2;
    v44 = 2082;
    v45 = v15;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s %{public}s no object for hash node %p, skipping notify, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v15);
  if (v9)
  {
    goto LABEL_38;
  }

  return 1;
}