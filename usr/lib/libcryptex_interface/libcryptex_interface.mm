uint64_t endpoint_lookup_interface_create_request(id *a1, uint64_t a2)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "ENDPOINT_LOOKUP");
  xpc_dictionary_set_uint64(empty, "ENDPOINT_INDEX", a2);
  if (a1)
  {
    objc_storeStrong(a1, empty);
  }

  return 0;
}

_xpc_connection_s *cryptex_xpc_create_connection(dispatch_queue_t targetq)
{
  mach_service = xpc_connection_create_mach_service("com.apple.security.cryptex.xpc", targetq, 2uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global);
  xpc_connection_activate(mach_service);
  return mach_service;
}

void __cryptex_xpc_create_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C290B80](a2) != MEMORY[0x29EDCAA18])
  {
    __cryptex_xpc_create_connection_block_invoke_cold_1();
  }

  v3 = MEMORY[0x29C290A60](a2);
  v4 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_298711000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Received error: %s", &v5, 0xCu);
  }

  *__error() = v4;
  free(v3);
}

void _cryptex_actor_dealloc(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    os_release(v2);
  }

  object_proto_destroy(a1 + 16);
}

void *cryptex_actor_create(uint64_t a1, uint64_t a2)
{
  v4 = _cryptex_actor_alloc(64);
  v4[5] = a2;
  v4[6] = a1;
  v4[7] = 0;
  object_proto_init((v4 + 2), "com.apple.security.libcryptex.interface", "actor");
  object_set_name((v4 + 2), *(a1 + 16));
  return v4;
}

uint64_t cryptex_actor_connect(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((a2 + 1) >= 2)
  {
    v11 = xpc_pipe_create_from_port();
    goto LABEL_14;
  }

  v3 = bootstrap_look_up2();
  v4 = a1[2];
  v5 = *__error();
  v6 = a1[4];
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446466;
    v16 = v7;
    v17 = 1024;
    v18 = v3;
    v8 = "%{public}s: bootstrap_look_up: %{mach.errno}x";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v12 = "[anonymous]";
    if (v4)
    {
      v12 = v4;
    }

    *buf = 136446466;
    v16 = v12;
    v17 = 1024;
    v18 = 0;
    v8 = "%{public}s: looked up port: %#x";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(&dword_298711000, v9, v10, v8, buf, 0x12u);
LABEL_13:
  *__error() = v5;
  v11 = xpc_pipe_create_from_port();
  if (!v11)
  {
    return 74;
  }

LABEL_14:
  v13 = a1[7];
  if (v13)
  {
    os_release(v13);
  }

  a1[7] = os_retain(v11);
  if (v11)
  {
    os_release(v11);
  }

  return 0;
}

void _cryptex_actor_init_invoke_u64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _rpc_target_init_u64((a4 + 16), **(a1 + 48), a3, a2);
  v6 = *(a1 + 32);

  rpc_init_remote(a4, 0, v6);
}

void _cryptex_actor_init_invoke_cstr(uint64_t a1, char *__source, uint64_t a3, uint64_t a4)
{
  _rpc_target_init_cstr(a4 + 16, **(a1 + 48), a3, __source);
  v6 = *(a1 + 32);

  rpc_init_remote(a4, 0, v6);
}

void _cryptex_actor_init_invoke_port(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  _rpc_target_init_port(a4 + 16, **(a1 + 48), a3, a2);
  v6 = *(a1 + 32);

  rpc_init_remote(a4, 0, v6);
}

uint64_t cryptex_actor_trap(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = rpc_call(a1[7], a2, a3);
  v5 = v4;
  if (v4)
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(v4);
    if (TopLevelPosixError == 5)
    {
      v14 = a1[2];
      v15 = *__error();
      v16 = a1[4];
      v7 = 57;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = "[anonymous]";
        if (v14)
        {
          v17 = v14;
        }

        v21 = 136446466;
        v22 = v17;
        v23 = 1024;
        v24 = 57;
        v18 = "%{public}s: pipe went dead: %{darwin.errno}d";
        goto LABEL_18;
      }
    }

    else
    {
      v7 = TopLevelPosixError;
      if (!TopLevelPosixError)
      {
        goto LABEL_4;
      }

      v19 = a1[2];
      v15 = *__error();
      v16 = a1[4];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = "[anonymous]";
        if (v19)
        {
          v20 = v19;
        }

        v21 = 136446466;
        v22 = v20;
        v23 = 1024;
        v24 = v7;
        v18 = "%{public}s: ipc failure: %{darwin.errno}d";
LABEL_18:
        _os_log_impl(&dword_298711000, v16, OS_LOG_TYPE_ERROR, v18, &v21, 0x12u);
      }
    }

    *__error() = v15;
LABEL_20:
    CFRelease(v5);
    return v7;
  }

LABEL_4:
  v8 = a1[2];
  v9 = *__error();
  v10 = a1[4];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    v21 = 136446210;
    v22 = v11;
    _os_log_impl(&dword_298711000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: ipc routine succeeded", &v21, 0xCu);
  }

  v12 = __error();
  v7 = 0;
  result = 0;
  *v12 = v9;
  if (v5)
  {
    goto LABEL_20;
  }

  return result;
}

CFErrorRef cryptex_actor_trap_with_cferr(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = rpc_call(a1[7], a2, a3);
  if (a1[2])
  {
    v5 = a1[2];
  }

  else
  {
    v5 = "[anonymous]";
  }

  v6 = *__error();
  v7 = a1[4];
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446466;
      v14 = v5;
      v15 = 2112;
      v16 = v4;
      v8 = "%{public}s: ipc: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_9:
      _os_log_impl(&dword_298711000, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136446210;
    v14 = v5;
    v8 = "%{public}s: ipc [no error]";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 12;
    goto LABEL_9;
  }

  *__error() = v6;
  return v4;
}

void codex_install_pack(uint64_t a1, uint64_t a2)
{
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 4));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 8));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 12));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 16));
  _rpc_pack_int64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 24));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 40));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 48));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 56));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 64));
  v4 = *(a2 + 304);
  v5 = *(a1 + 72);

  _rpc_pack_array(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_install_unpack(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = _rpc_unpack_fd(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 4));
    if (!result)
    {
      result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 8));
      if (result)
      {
        if (result != 2)
        {
          return result;
        }

        *(a2 + 8) = -1;
        ++v5;
      }

      result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 12));
      if (!result)
      {
        result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 16));
        if (result)
        {
          if (result != 2)
          {
            return result;
          }

          *(a2 + 16) = -1;
          ++v5;
        }

        result = _rpc_unpack_int64(*(a1 + 304), &v5, (a2 + 24));
        if (!result)
        {
          result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 32));
          if (!result)
          {
            result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 40));
            if (!result)
            {
              result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 48));
              if (!result)
              {
                result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 56));
                if (!result)
                {
                  result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 64));
                  if (result <= 33)
                  {
                    if (!result)
                    {
                      return _rpc_unpack_dictionary(*(a1 + 304), &v5, (a2 + 72));
                    }

                    if (result != 2)
                    {
                      return result;
                    }

LABEL_22:
                    *(a2 + 64) = 0;
                    ++v5;
                    return _rpc_unpack_dictionary(*(a1 + 304), &v5, (a2 + 72));
                  }

                  if (result == 79 || result == 34)
                  {
                    goto LABEL_22;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void codex_install_reply_pack(const char **a1, uint64_t a2)
{
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[1]);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[2]);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[3]);
  v4 = *(a2 + 304);
  v5 = a1[4];

  _rpc_pack_string(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_install_reply_unpack(uint64_t a1, const char **a2)
{
  v5 = 0;
  result = _rpc_unpack_string(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 1);
    if (!result)
    {
      result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 2);
      if (!result)
      {
        result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 3);
        if (!result)
        {
          return _rpc_unpack_string(*(a1 + 304), &v5, a2 + 4);
        }
      }
    }
  }

  return result;
}

void codex_upgrade_stage_semi_splat_pack(uint64_t a1, uint64_t a2)
{
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 8));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 16));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 20));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 24));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 28));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  v4 = *(a2 + 304);
  v5 = *(a1 + 40);

  _rpc_pack_int64(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_upgrade_stage_semi_splat_unpack(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = _rpc_unpack_string(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 8));
    if (!result)
    {
      result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 16));
      if (!result)
      {
        result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 20));
        if (!result)
        {
          result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 24));
          if (!result)
          {
            result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 28));
            if (result)
            {
              if (result != 2)
              {
                return result;
              }

              *(a2 + 28) = -1;
              ++v5;
            }

            result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 32));
            if (!result)
            {
              return _rpc_unpack_int64(*(a1 + 304), &v5, (a2 + 40));
            }
          }
        }
      }
    }
  }

  return result;
}

void codex_upgrade_stage_semi_splat_reply_pack(const char **a1, uint64_t a2)
{
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[1]);
  v4 = *(a2 + 304);
  v5 = a1[2];

  _rpc_pack_string(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_upgrade_stage_semi_splat_reply_unpack(uint64_t a1, const char **a2)
{
  v5 = 0;
  result = _rpc_unpack_string(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 1);
    if (!result)
    {
      return _rpc_unpack_string(*(a1 + 304), &v5, a2 + 2);
    }
  }

  return result;
}

uint64_t cryptex_trampoline_upgrade_interface_wait(const char *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (cryptex_trampoline_upgrade_xpc_get_queue_once_q_token != -1)
  {
    cryptex_trampoline_upgrade_interface_wait_cold_1();
  }

  v2 = cryptex_trampoline_upgrade_xpc_get_queue_local;
  *v18 = MEMORY[0x29EDCA5F8];
  *&v18[8] = 3221225472;
  *&v18[16] = __cryptex_trampoline_upgrade_xpc_get_connection_block_invoke;
  v19 = &unk_29EEA92A8;
  v20 = v2;
  v3 = cryptex_trampoline_upgrade_xpc_get_connection_once_con_token;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&cryptex_trampoline_upgrade_xpc_get_connection_once_con_token, v18);
  }

  v5 = cryptex_trampoline_upgrade_xpc_get_connection_conn;

  if (!v5)
  {
    v8 = 0;
    empty = 0;
    v9 = 3;
    goto LABEL_21;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "UPGRADE_WAIT");
  if (a1)
  {
    xpc_dictionary_set_string(empty, "cryptex_name", a1);
  }

  if (!empty)
  {
    v8 = 0;
    v9 = 12;
    goto LABEL_21;
  }

  v7 = xpc_connection_send_message_with_reply_sync(v5, empty);
  v8 = v7;
  if (!v7)
  {
    v10 = __error();
    v11 = *v10;
    v12 = cryptex_upgrade_trampoline_osl(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0x504000100;
      _os_log_impl(&dword_298711000, v12, OS_LOG_TYPE_ERROR, "No reply from cryptexd while waiting on upgrade.: %{darwin.errno}d", v18, 8u);
    }

    v8 = 0;
    *__error() = v11;
    goto LABEL_20;
  }

  if (MEMORY[0x29C290B80](v7) == MEMORY[0x29EDCAA18])
  {
    v13 = MEMORY[0x29C290A60](v8);
    v14 = __error();
    v15 = *v14;
    v16 = cryptex_upgrade_trampoline_osl(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446466;
      *&v18[4] = v13;
      *&v18[12] = 1024;
      *&v18[14] = 5;
      _os_log_impl(&dword_298711000, v16, OS_LOG_TYPE_ERROR, "Error from cryptexd while waiting on upgrade: %{public}s: %{darwin.errno}d", v18, 0x12u);
    }

    *__error() = v15;
    free(v13);
LABEL_20:
    v9 = 5;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_21:

  return v9;
}

id cryptex_upgrade_trampoline_osl(uint64_t a1)
{
  if (cryptex_upgrade_trampoline_osl_onceToken != -1)
  {
    cryptex_upgrade_trampoline_osl_cold_1();
  }

  v2 = cryptex_upgrade_trampoline_osl_trampoline_log;

  return v2;
}

uint64_t __cryptex_trampoline_upgrade_xpc_get_connection_block_invoke(uint64_t a1)
{
  cryptex_trampoline_upgrade_xpc_get_connection_conn = cryptex_xpc_create_connection(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_trampoline_upgrade_xpc_get_queue_block_invoke()
{
  cryptex_trampoline_upgrade_xpc_get_queue_local = dispatch_queue_create("com.apple.security.libcryptex.interface.upgrade_trampoline", 0);

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_upgrade_trampoline_osl_block_invoke()
{
  cryptex_upgrade_trampoline_osl_trampoline_log = os_log_create("com.apple.libcryptex", "upgrade_trampoline");

  return MEMORY[0x2A1C71028]();
}

xpc_object_t remote_service_create_nonce_index_request(uint64_t a1)
{
  v2 = _remote_service_create_argv();
  xpc_dictionary_set_uint64(v2, "nonce-domain", a1);
  request = _xpc_create_request("get-nonce", v2);

  return request;
}

id _remote_service_create_argv()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "client-version", 3uLL);

  return empty;
}

xpc_object_t remote_service_create_nonce_handle_request(unsigned int a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "nonce-domain-handle", a1);
  request = _xpc_create_request("get-nonce", empty);

  return request;
}

xpc_object_t remote_service_create_roll_nonce_index_request(uint64_t a1)
{
  v2 = _remote_service_create_argv();
  xpc_dictionary_set_uint64(v2, "nonce-domain", a1);
  request = _xpc_create_request("roll-nonce", v2);

  return request;
}

xpc_object_t remote_service_create_roll_nonce_handle_request(unsigned int a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "nonce-domain-handle", a1);
  request = _xpc_create_request("roll-nonce", empty);

  return request;
}

CFErrorRef remote_service_create_install_request(void *a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v17 = a2;
  v19 = a11;
  v20 = _remote_service_create_argv();
  v21 = v20;
  if (v17 < 0)
  {
    v29 = _rsi_log(v20);

    if (v29)
    {
      v31 = _rsi_log(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v56[0] = 0;
      v44 = 2;
      v33 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_298711000, v31, 16, "image fd is invalid", v56, v44);
    }

    else
    {
      v55[0] = 0;
      v47 = 2;
      v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "image fd is invalid", v55, v47);
    }

    Error = createError("remote_service_create_install_request", "remote_service_interface.m", 112, "com.apple.security.cryptex", 15, 0, v33);
    goto LABEL_30;
  }

  if (v15 < 0)
  {
    v34 = _rsi_log(v20);

    if (v34)
    {
      v36 = _rsi_log(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      v54[0] = 0;
      v45 = 2;
      v33 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_298711000, v36, 16, "trustcache fd is invalid", v54, v45);
    }

    else
    {
      v53[0] = 0;
      v48 = 2;
      v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "trustcache fd is invalid", v53, v48);
    }

    Error = createError("remote_service_create_install_request", "remote_service_interface.m", 120, "com.apple.security.cryptex", 15, 0, v33);
    goto LABEL_30;
  }

  if (v13 < 0)
  {
    v38 = _rsi_log(v20);

    if (v38)
    {
      v40 = _rsi_log(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v52[0] = 0;
      v46 = 2;
      v33 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_298711000, v40, 16, "im4m fd is invalid", v52, v46);
    }

    else
    {
      v51[0] = 0;
      v49 = 2;
      v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "im4m fd is invalid", v51, v49);
    }

    Error = createError("remote_service_create_install_request", "remote_service_interface.m", 128, "com.apple.security.cryptex", 15, 0, v33);
LABEL_30:
    v28 = Error;
    free(v33);
    goto LABEL_31;
  }

  v50 = a1;
  xpc_dictionary_set_int64(v20, "image-type-index", a3);
  xpc_dictionary_set_uint64(v21, "auth", a8);
  xpc_dictionary_set_uint64(v21, "persistence", a9);
  xpc_dictionary_set_uint64(v21, "nonce-persistence", a10);
  v22 = v19;
  xpc_dictionary_set_value(v21, "cryptex1-properties", v19);
  if ((v14 & 0x80000000) == 0)
  {
    v23 = xpc_file_transfer_create_with_fd();
    xpc_dictionary_set_value(v21, "info", v23);
  }

  if ((v12 & 0x80000000) == 0)
  {
    v24 = xpc_file_transfer_create_with_fd();
    xpc_dictionary_set_value(v21, "volumehash", v24);
  }

  v25 = xpc_file_transfer_create_with_fd();
  xpc_dictionary_set_value(v21, "image", v25);
  v26 = xpc_file_transfer_create_with_fd();
  xpc_dictionary_set_value(v21, "trustcache", v26);
  v27 = xpc_file_transfer_create_with_fd();
  xpc_dictionary_set_value(v21, "im4m", v27);
  *v50 = _xpc_create_request("install", v21);

  v28 = 0;
  v19 = v22;
LABEL_31:

  return v28;
}

id _rsi_log(uint64_t a1)
{
  if (_rsi_log_onceToken != -1)
  {
    _rsi_log_cold_1();
  }

  v2 = _rsi_log_osl;

  return v2;
}

int *__remote_service_create_install_request_block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = __error();
  v4 = *v3;
  v5 = _rsi_log(v3);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v7 = "c411 transfer: %{darwin.errno}d";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v8, v9, v7, v12, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v7 = "c411 transfer [no error]";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v4;
  return result;
}

int *__remote_service_create_install_request_block_invoke_13(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = __error();
  v4 = *v3;
  v5 = _rsi_log(v3);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v7 = "volume hash transfer: %{darwin.errno}d";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v8, v9, v7, v12, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v7 = "volume hash transfer [no error]";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v4;
  return result;
}

int *__remote_service_create_install_request_block_invoke_17(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = __error();
  v4 = *v3;
  v5 = _rsi_log(v3);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v7 = "image transfer: %{darwin.errno}d";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v8, v9, v7, v12, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v7 = "image transfer [no error]";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v4;
  return result;
}

int *__remote_service_create_install_request_block_invoke_21(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = __error();
  v4 = *v3;
  v5 = _rsi_log(v3);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v7 = "trustcache transfer: %{darwin.errno}d";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v8, v9, v7, v12, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v7 = "trustcache transfer [no error]";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v4;
  return result;
}

int *__remote_service_create_install_request_block_invoke_25(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = __error();
  v4 = *v3;
  v5 = _rsi_log(v3);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v7 = "im4m transfer: %{darwin.errno}d";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v8, v9, v7, v12, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v7 = "im4m transfer [no error]";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v4;
  return result;
}

uint64_t remote_service_install_request_valid(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = 0;
  argv = _xpc_request_get_argv(a1, &v12);
  v2 = v12;
  v3 = v2;
  if (argv)
  {
    v4 = __error();
    v5 = *v4;
    v6 = _rsi_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = argv;
      _os_log_impl(&dword_298711000, v6, OS_LOG_TYPE_ERROR, "failed to get argv: %{darwin.errno}d", buf, 8u);
    }

    v7 = 0;
    v8 = 0;
    *__error() = v5;
  }

  else
  {
    if (_xpc_dictionary_key_with_type_exists(v2, "image", MEMORY[0x29EDCAA28]) && _xpc_dictionary_key_with_type_exists(v3, "trustcache", MEMORY[0x29EDCAA28]) && _xpc_dictionary_key_with_type_exists(v3, "im4m", MEMORY[0x29EDCAA28]) && _xpc_dictionary_key_with_type_exists(v3, "image-type-index", MEMORY[0x29EDCAA30]) && _xpc_dictionary_key_with_type_exists(v3, "persistence", MEMORY[0x29EDCAA58]) && _xpc_dictionary_key_with_type_exists(v3, "nonce-persistence", MEMORY[0x29EDCAA58]))
    {
      v9 = _xpc_dictionary_key_with_type_exists(v3, "auth", MEMORY[0x29EDCAA58]);
    }

    else
    {
      v9 = 0;
    }

    v7 = xpc_dictionary_get_value(v3, "info");
    if (v7)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v8 = (v7 == 0) & v9;
    }

    else
    {
      v8 = _xpc_dictionary_key_with_type_exists(v3, "info", MEMORY[0x29EDCAA28]);
    }
  }

  return v8;
}

xpc_object_t remote_service_create_uninstall_request(const char *a1, const char *a2)
{
  v4 = _remote_service_create_argv();
  xpc_dictionary_set_string(v4, "remote-cryptex-identifier", a1);
  if (a2)
  {
    xpc_dictionary_set_string(v4, "remote-cryptex-version", a2);
  }

  request = _xpc_create_request("uninstall", v4);

  return request;
}

xpc_object_t remote_service_create_copy_installed_request()
{
  v0 = _remote_service_create_argv();
  request = _xpc_create_request("copy-installed", v0);

  return request;
}

xpc_object_t remote_service_create_personalization_identifiers_request()
{
  v0 = _remote_service_create_argv();
  request = _xpc_create_request("read-personalization-id", v0);

  return request;
}

uint64_t ___rsi_log_block_invoke()
{
  _rsi_log_osl = os_log_create("com.apple.libcryptex", "remote_service_interface");

  return MEMORY[0x2A1C71028]();
}

uint64_t _CFCreateAssertImpl(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    _CFCreateAssertImpl_cold_1(&v2, v3, a2);
  }

  return result;
}

CFErrorRef createError(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, char *cStr)
{
  valuePtr = a3;
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v14 = CFStringCreateWithCString(0, a4, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable, "CFMutableDictionary");
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F58], v12);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(Mutable, @"FunctionName", v13);
    CFDictionarySetValue(Mutable, @"FileName", v15);
    CFDictionarySetValue(Mutable, @"LineNumber", v16);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F68], a6);
  }

  v18 = CFErrorCreate(0, v14, a5, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  return v18;
}

uint64_t _CFErrorCopyTopLevelErrorWithDomain(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___CFErrorCopyTopLevelErrorWithDomain_block_invoke;
  v4[3] = &unk_29EEA9310;
  v4[4] = &v5;
  v4[5] = a2;
  _CFErrorIterUnderlying(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _CFErrorIterUnderlying(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFRetain(a1);
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x29EDB8F68];
        while (1)
        {
          v8 = (*(a2 + 16))(a2, v6);
          v9 = CFErrorCopyUserInfo(v6);
          CFRelease(v6);
          if (!v9)
          {
            return;
          }

          Value = CFDictionaryGetValue(v9, v7);
          if (!Value)
          {
            break;
          }

          v6 = CFRetain(Value);
          CFRelease(v9);
          if (((v6 != 0) & v8) == 0)
          {
            if (!v6)
            {
              return;
            }

            goto LABEL_11;
          }
        }

        v6 = v9;
LABEL_11:

        CFRelease(v6);
      }
    }
  }
}

CFIndex _CFErrorGetTopLevelPosixError(const void *a1)
{
  Code = a1;
  if (a1)
  {
    v2 = _CFErrorCopyTopLevelErrorWithDomain(a1, @"com.apple.security.cryptex.posix");
    v3 = v2;
    if (v2)
    {
      Domain = CFErrorGetDomain(v2);
      if (CFEqual(Domain, @"com.apple.security.cryptex.posix"))
      {
        Code = CFErrorGetCode(v3);
        goto LABEL_10;
      }
    }

    v5 = CFErrorGetDomain(Code);
    if (CFEqual(v5, @"com.apple.security.cryptex"))
    {
      v6 = CFErrorGetCode(Code);
      if (v6 <= 0x26)
      {
        Code = dword_298719EB8[v6 & 0x3F];
        if (!v3)
        {
          return Code;
        }

        goto LABEL_10;
      }
    }

    Code = 0xFFFFFFFFLL;
    if (v3)
    {
LABEL_10:
      CFRelease(v3);
    }
  }

  return Code;
}

double OUTLINED_FUNCTION_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, int a10)
{

  return _os_log_send_and_compose_impl(a1, v11, v10, 80, a5, v12, 16, a8);
}

CFErrorRef codex_interface_create_uninstall_request(id *a1, const char *a2, const char *a3, BOOL a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "SUBSYSTEM", "CODEX");
  xpc_dictionary_set_string(v8, "CODEX_SUB_REQ", "UNINSTALL");
  if (a2)
  {
    xpc_dictionary_set_string(v8, "UNINSTALL:CXID", a2);
    if (a3)
    {
      xpc_dictionary_set_string(v8, "UNINSTALL:CXVER", a3);
    }

    xpc_dictionary_set_BOOL(v8, "UNINSTALL:FORCE_UNMOUNT", a4);
    Error = 0;
    if (a1 && v8)
    {
      objc_storeStrong(a1, v8);
      Error = 0;
    }
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v14[0] = 0;
    v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_298711000, v10, 16, "Invalid cryptex identifier.", v14, 2);
    Error = createError("codex_interface_create_uninstall_request", "codex_xpc_interface.m", 21, "com.apple.security.cryptex", 11, 0, v12);
    free(v12);
  }

  return Error;
}

id collation_xpc_get_queue(uint64_t a1)
{
  if (collation_xpc_get_queue_once_q_token != -1)
  {
    collation_xpc_get_queue_cold_1();
  }

  v2 = collation_xpc_get_queue_local;

  return v2;
}

uint64_t __collation_xpc_get_queue_block_invoke()
{
  collation_xpc_get_queue_local = dispatch_queue_create(0, 0);

  return MEMORY[0x2A1C71028]();
}

uint64_t collation_xpc_get_connection(uint64_t a1)
{
  v1 = collation_xpc_get_queue(a1);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __collation_xpc_get_connection_block_invoke;
  block[3] = &unk_29EEA92A8;
  v8 = v1;
  v2 = collation_xpc_get_connection_once_con_token;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&collation_xpc_get_connection_once_con_token, block);
  }

  v4 = collation_xpc_get_connection_conn;
  v5 = collation_xpc_get_connection_conn;

  return v4;
}

uint64_t __collation_xpc_get_connection_block_invoke(uint64_t a1)
{
  collation_xpc_get_connection_conn = cryptex_xpc_create_connection(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

id collation_xpc_endpoint_request(unsigned int a1)
{
  v1 = a1;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "COLLATION");
  xpc_dictionary_set_uint64(empty, "user", v1);

  return empty;
}

id collation_interface_request_endpoint_for_user(uint64_t a1)
{
  v1 = a1;
  v2 = collation_xpc_get_connection(a1);
  v3 = collation_xpc_endpoint_request(v1);
  v4 = xpc_connection_send_message_with_reply_sync(v2, v3);
  v5 = xpc_dictionary_get_value(v4, "endpoint");

  return v5;
}

uint64_t _cryptex_actor_alloc(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_actor_alloc_cold_1(&v3, v4, a1);
  }

  return result;
}

void sub_298714D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_298714EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2987150EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_298715B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf)
{
  free(0);
  free(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t cryptex_upgrade_interface_acquire_lock()
{
  v0 = +[UpgradeInterfaceLock getSharedInstance];
  v1 = [v0 acquireLock];

  return v1;
}

CFErrorRef mount_interface_create_mount_request(void *a1, int a2, int64_t a3, int a4, int a5, int a6, int a7, void *a8)
{
  v15 = a8;
  v16 = v15;
  if (a2 < 0)
  {
    v23 = _mnt_intf_log(v15);

    if (v23)
    {
      v25 = _mnt_intf_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_298711000, v25, 16, "Invalid image.", v49, 2);
    }

    else
    {
      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid image.", v49, 2);
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 40, "com.apple.security.cryptex", 2, 0, v22);
    goto LABEL_46;
  }

  if (a5 < 0)
  {
    v27 = _mnt_intf_log(v15);

    if (v27)
    {
      v29 = _mnt_intf_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_298711000, v29, 16, "Invalid trust cache.", v49, 2);
    }

    else
    {
      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid trust cache.", v49, 2);
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 46, "com.apple.security.cryptex", 2, 0, v22);
    goto LABEL_46;
  }

  if (a6 < 0)
  {
    v31 = _mnt_intf_log(v15);

    if (v31)
    {
      v33 = _mnt_intf_log(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_298711000, v33, 16, "Invalid info plist.", v49, 2);
    }

    else
    {
      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid info plist.", v49, 2);
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 52, "com.apple.security.cryptex", 2, 0, v22);
    goto LABEL_46;
  }

  if (a7 < 0)
  {
    v36 = _mnt_intf_log(v15);

    if (v36)
    {
      v38 = _mnt_intf_log(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &dword_298711000, v38, 16, "Invalid im4m.", v49, 2);
    }

    else
    {
      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid im4m.", v49, 2);
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 58, "com.apple.security.cryptex", 2, 0, v22);
    goto LABEL_46;
  }

  v17 = MEMORY[0x29C290B80](v15);
  if (v17 != MEMORY[0x29EDCAA00])
  {
    v18 = _mnt_intf_log(v17);

    if (v18)
    {
      v20 = _mnt_intf_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_298711000, v20, 16, "Invalid Cryptex1 properties.", v49, 2);
    }

    else
    {
      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid Cryptex1 properties.", v49, 2);
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 64, "com.apple.security.cryptex", 2, 0, v22);
LABEL_46:
    v43 = Error;
    free(v22);
    v41 = 0;
    goto LABEL_47;
  }

  v40 = mount_interface_create_request("REQ:MOUNT");
  if (!v40)
  {
    v45 = _mnt_intf_log(0);

    if (v45)
    {
      v47 = _mnt_intf_log(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &dword_298711000, v47, 16, "Failed to allocate dictionary.", v49, 2);
    }

    else
    {
      v49[0] = 0;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Failed to allocate dictionary.", v49, 2);
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 71, "com.apple.security.cryptex", 2, 0, v22);
    goto LABEL_46;
  }

  v41 = v40;
  if ((a4 & 0x80000000) == 0)
  {
    xpc_dictionary_set_fd(v40, "MOUNT:VOLHASH_FD", a4);
  }

  xpc_dictionary_set_fd(v41, "MOUNT:DMG_FD", a2);
  xpc_dictionary_set_fd(v41, "MOUNT:LTRS_FD", a5);
  xpc_dictionary_set_fd(v41, "MOUNT:INFO_FD", a6);
  xpc_dictionary_set_fd(v41, "MOUNT:IM4M_FD", a7);
  xpc_dictionary_set_value(v41, "MOUNT:CX1_PROPERTIES", v16);
  xpc_dictionary_set_int64(v41, "MOUNT:DMG_ASSET_IDX_INT64", a3);
  if (a1)
  {
    v42 = v41;
    v43 = 0;
    *a1 = v41;
  }

  else
  {
    v43 = 0;
  }

LABEL_47:

  return v43;
}

id _mnt_intf_log(uint64_t a1)
{
  if (_mnt_intf_log_onceToken != -1)
  {
    _mnt_intf_log_cold_1();
  }

  v2 = _mnt_intf_log_osl;

  return v2;
}

id mount_interface_create_request(const char *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "SUBSYSTEM", "MOUNT");
  xpc_dictionary_set_string(v2, "MOUNT_SUB_REQ", a1);

  return v2;
}

CFErrorRef mount_interface_create_unmount_request(void *a1, int a2, BOOL a3)
{
  if (a2 < 0)
  {
    v10 = _mnt_intf_log(a1);

    if (v10)
    {
      v12 = _mnt_intf_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v24[0] = 0;
      v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_298711000, v12, 16, "Invalid info plist.", v24, 2);
    }

    else
    {
      v23[0] = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid info plist.", v23, 2);
    }

    Error = createError("mount_interface_create_unmount_request", "mount_interface.m", 105, "com.apple.security.cryptex", 2, 0, v14);
    goto LABEL_20;
  }

  v6 = mount_interface_create_request("REQ:UNMOUNT");
  if (!v6)
  {
    v15 = _mnt_intf_log(0);

    if (v15)
    {
      v17 = _mnt_intf_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v22[0] = 0;
      v14 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_298711000, v17, 16, "Failed to allocate dictionary.", v22, 2);
    }

    else
    {
      v21[0] = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Failed to allocate dictionary.", v21, 2);
    }

    Error = createError("mount_interface_create_unmount_request", "mount_interface.m", 112, "com.apple.security.cryptex", 2, 0, v14);
LABEL_20:
    v9 = Error;
    free(v14);
    v7 = 0;
    goto LABEL_21;
  }

  v7 = v6;
  xpc_dictionary_set_fd(v6, "UNMOUNT:INFO_FD", a2);
  xpc_dictionary_set_BOOL(v7, "UNMOUNT:FORCE", a3);
  if (a1)
  {
    v8 = v7;
    v9 = 0;
    *a1 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_21:

  return v9;
}

uint64_t ___mnt_intf_log_block_invoke()
{
  _mnt_intf_log_osl = os_log_create("com.apple.libcryptex", "mount_interface");

  return MEMORY[0x2A1C71028]();
}

CFErrorRef cryptex_upgrade_interface_abort()
{
  v34 = *MEMORY[0x29EDCA608];
  if (cryptex_upgrade_interface_abort_xpc_get_queue_once_q_token != -1)
  {
    cryptex_upgrade_interface_abort_cold_1();
  }

  v0 = cryptex_upgrade_interface_abort_xpc_get_queue_local;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 3221225472;
  v31 = __cryptex_upgrade_interface_abort_xpc_get_connection_block_invoke;
  v32 = &unk_29EEA92A8;
  v33 = v0;
  v1 = cryptex_upgrade_interface_abort_xpc_get_connection_once_con_token;
  v2 = v0;
  if (v1 != -1)
  {
    dispatch_once(&cryptex_upgrade_interface_abort_xpc_get_connection_once_con_token, &block);
  }

  v3 = cryptex_upgrade_interface_abort_xpc_get_connection_conn;

  if (!v3)
  {
    v10 = cryptex_upgrade_abort_osl(v4);

    if (v10)
    {
      v12 = cryptex_upgrade_abort_osl(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      LOWORD(block) = 0;
      v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_298711000, v12, 16, "Failed to get XPC connection.", &block, 2);
    }

    else
    {
      LOWORD(block) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Failed to get XPC connection.", &block, 2);
    }

    Error = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 64, "com.apple.security.cryptex", 23, 0, v14);
    goto LABEL_34;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "UPGRADE_ABORT");
  if (!empty)
  {
    v15 = cryptex_upgrade_abort_osl(v6);

    if (v15)
    {
      v17 = cryptex_upgrade_abort_osl(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      LOWORD(block) = 0;
      v14 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_298711000, v17, 16, "Failed to create XPC request.", &block, 2);
    }

    else
    {
      LOWORD(block) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Failed to create XPC request.", &block, 2);
    }

    Error = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 73, "com.apple.security.cryptex", 24, 0, v14);
LABEL_34:
    v9 = Error;
    v8 = 0;
    empty = 0;
LABEL_35:
    free(v14);
    goto LABEL_36;
  }

  v7 = xpc_connection_send_message_with_reply_sync(v3, empty);
  v8 = v7;
  if (!v7)
  {
    v19 = cryptex_upgrade_abort_osl(0);

    if (v19)
    {
      v21 = cryptex_upgrade_abort_osl(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      LOWORD(block) = 0;
      v14 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_298711000, v21, 16, "No reply from cryptexd while aborting upgrade.", &block, 2);
    }

    else
    {
      LOWORD(block) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "No reply from cryptexd while aborting upgrade.", &block, 2);
    }

    v9 = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 82, "com.apple.security.cryptex", 16, 0, v14);
    v8 = 0;
    goto LABEL_35;
  }

  if (MEMORY[0x29C290B80](v7) == MEMORY[0x29EDCAA18])
  {
    v14 = MEMORY[0x29C290A60](v8);
    v24 = cryptex_upgrade_abort_osl(v14);

    if (v24)
    {
      v26 = cryptex_upgrade_abort_osl(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      LODWORD(block) = 136446210;
      *(&block + 4) = v14;
      v28 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_298711000, v26, 16, "Error from cryptexd while aborting upgrade: %{public}s", &block, 12);
    }

    else
    {
      LODWORD(block) = 136446210;
      *(&block + 4) = v14;
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Error from cryptexd while aborting upgrade: %{public}s", &block, 12);
    }

    v9 = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 90, "com.apple.security.cryptex", 16, 0, v28);
    free(v28);
    goto LABEL_35;
  }

  v9 = 0;
LABEL_36:

  return v9;
}

void sub_29871726C(_Unwind_Exception *a1)
{
  free(v2);
  free(v1);
  _Unwind_Resume(a1);
}

id cryptex_upgrade_abort_osl(uint64_t a1)
{
  if (cryptex_upgrade_abort_osl_onceToken != -1)
  {
    cryptex_upgrade_abort_osl_cold_1();
  }

  v2 = cryptex_upgrade_abort_osl_trampoline_log;

  return v2;
}

uint64_t __cryptex_upgrade_interface_abort_xpc_get_connection_block_invoke(uint64_t a1)
{
  cryptex_upgrade_interface_abort_xpc_get_connection_conn = cryptex_xpc_create_connection(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_upgrade_interface_abort_xpc_get_queue_block_invoke()
{
  cryptex_upgrade_interface_abort_xpc_get_queue_local = dispatch_queue_create("com.apple.security.libcryptex.interface.upgrade_abort", 0);

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_upgrade_abort_osl_block_invoke()
{
  cryptex_upgrade_abort_osl_trampoline_log = os_log_create("com.apple.libcryptex", "upgrade_trampoline");

  return MEMORY[0x2A1C71028]();
}

void *_rpc_target_init_u64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = a4;
  return result;
}

size_t _rpc_target_init_cstr(uint64_t a1, uint64_t a2, uint64_t a3, char *__source)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 1;
  return strlcpy((a1 + 24), __source, 0xFFuLL);
}

uint64_t _rpc_target_init_port(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 2;
  result = mach_right_send_retain();
  *(a1 + 24) = result;
  return result;
}

void rpc_init_remote(uint64_t a1, xpc_object_t a2, void *a3)
{
  v6 = xpc_array_create(0, 0);
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_value(a2, "argv", v6);
  xpc_dictionary_set_uint64(a2, "subsystem", *(a1 + 16));
  xpc_dictionary_set_uint64(a2, "routine", *(a1 + 24));
  xpc_dictionary_set_uint64(a2, "target-type", *(a1 + 32));
  v7 = *(a1 + 32);
  switch(v7)
  {
    case 2:
      xpc_dictionary_set_mach_send();
      break;
    case 1:
      xpc_dictionary_set_string(a2, "target", (a1 + 40));
      break;
    case 0:
      xpc_dictionary_set_uint64(a2, "target", *(a1 + 40));
      break;
  }

  *a1 = 1;
  if (a3)
  {
    v8 = os_retain(a3);
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  *(a1 + 8) = v8;
  *(a1 + 296) = a2;
  *(a1 + 304) = v6;
  *(a1 + 312) = -1;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  if (v6)
  {

    os_release(v6);
  }
}

CFErrorRef rpc_init_local(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v52 = *MEMORY[0x29EDCA608];
  cf = 0;
  v47 = 0u;
  v48 = 0u;
  value = xpc_dictionary_get_value(xdict, "argv");
  if (!value || (v7 = value, MEMORY[0x29C290B80]() != MEMORY[0x29EDCA9E0]))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v50 = 67109120;
      v51 = 94;
      v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_298711000, a3, 16, "Invalid type for rpc argv %{darwin.errno}d", &v50, 8, v47, v48);
    }

    else
    {
      v50 = 67109120;
      v51 = 94;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid type for rpc argv %{darwin.errno}d", &v50, 8, v47, v48);
    }

    v10 = v9;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 105;
LABEL_10:
    v13 = 94;
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v17 = xpc_dictionary_get_value(xdict, "subsystem");
  if (!v17 || (v18 = v17, v19 = MEMORY[0x29C290B80](), v20 = MEMORY[0x29EDCAA58], v19 != MEMORY[0x29EDCAA58]))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v50 = 67109120;
      v51 = 94;
      v22 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_298711000, a3, 16, "Invalid type for rpc subsystem %{darwin.errno}d", &v50, 8, v47, v48);
    }

    else
    {
      v50 = 67109120;
      v51 = 94;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid type for rpc subsystem %{darwin.errno}d", &v50, 8, v47, v48);
    }

    v10 = v22;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 113;
    goto LABEL_10;
  }

  v23 = xpc_dictionary_get_value(xdict, "routine");
  if (!v23 || (v24 = v23, MEMORY[0x29C290B80]() != v20))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v50 = 67109120;
      v51 = 94;
      v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_298711000, a3, 16, "Invalid type for rpc routine %{darwin.errno}d", &v50, 8, v47, v48);
    }

    else
    {
      v50 = 67109120;
      v51 = 94;
      v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid type for rpc routine %{darwin.errno}d", &v50, 8, v47, v48);
    }

    v10 = v26;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 121;
    goto LABEL_10;
  }

  v27 = xpc_dictionary_get_value(xdict, "target-type");
  if (!v27 || (v28 = v27, MEMORY[0x29C290B80]() != v20))
  {
    if (a3)
    {
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v50 = 67109120;
      v51 = 94;
      v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_298711000, a3, 16, "Invalid type for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
    }

    else
    {
      v50 = 67109120;
      v51 = 94;
      v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid type for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
    }

    v10 = v30;
    v11 = "com.apple.security.cryptex.posix";
    v12 = 129;
    goto LABEL_10;
  }

  v31 = xpc_dictionary_get_value(xdict, "target");
  v32 = xpc_uint64_get_value(v28);
  if (v32 == 2)
  {
    if (MEMORY[0x29C290B80](v31) != MEMORY[0x29EDCAA38])
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v50 = 67109120;
        v51 = 22;
        v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_298711000, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      else
      {
        v50 = 67109120;
        v51 = 22;
        v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      v10 = v38;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 167;
      goto LABEL_100;
    }

    *(a1 + 40) = xpc_mach_send_copy_right();
  }

  else if (v32 == 1)
  {
    if (MEMORY[0x29C290B80](v31) != MEMORY[0x29EDCAA50])
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v50 = 67109120;
        v51 = 22;
        v36 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_298711000, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      else
      {
        v50 = 67109120;
        v51 = 22;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      v10 = v36;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 148;
      goto LABEL_100;
    }

    if (xpc_string_get_length(v31) >= 0xFF)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        v50 = 67109120;
        v51 = 22;
        v42 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_298711000, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      else
      {
        v50 = 67109120;
        v51 = 22;
        v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      v10 = v42;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 156;
      goto LABEL_100;
    }

    string_ptr = xpc_string_get_string_ptr(v31);
    strlcpy((a1 + 40), string_ptr, 0xFFuLL);
  }

  else
  {
    if (v32)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        v50 = 67109120;
        v51 = 22;
        v40 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &dword_298711000, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      else
      {
        v50 = 67109120;
        v51 = 22;
        v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      v10 = v40;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 175;
      goto LABEL_100;
    }

    if (MEMORY[0x29C290B80](v31) != v20)
    {
      if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v50 = 67109120;
        v51 = 22;
        v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_298711000, a3, 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      else
      {
        v50 = 67109120;
        v51 = 22;
        v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Invalid value for rpc target %{darwin.errno}d", &v50, 8, v47, v48);
      }

      v10 = v34;
      v11 = "com.apple.security.cryptex.posix";
      v12 = 139;
LABEL_100:
      v13 = 22;
      goto LABEL_11;
    }

    *(a1 + 40) = xpc_uint64_get_value(v31);
  }

  if (_xpc_dictionary_try_get_cferr(xdict, "cferror", &cf))
  {
    *a1 = 1;
    if (a3)
    {
      v44 = os_retain(a3);
    }

    else
    {
      v44 = MEMORY[0x29EDCA988];
    }

    *(a1 + 8) = v44;
    *(a1 + 16) = xpc_uint64_get_value(v18);
    *(a1 + 24) = xpc_uint64_get_value(v24);
    *(a1 + 32) = xpc_uint64_get_value(v28);
    *(a1 + 296) = xpc_retain(xdict);
    *(a1 + 304) = v7;
    xpc_dictionary_get_audit_token();
    rpc_cred_init_with_audit_token((a1 + 328), &v47);
    Error = 0;
    goto LABEL_13;
  }

  if (a3)
  {
    if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    LOWORD(v50) = 0;
    v46 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_298711000, a3, 16, "Error from daemon", &v50, 2, v47, v48);
  }

  else
  {
    LOWORD(v50) = 0;
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "Error from daemon", &v50, 2, v47, v48);
  }

  v10 = v46;
  v14 = cf;
  v11 = "com.apple.security.cryptex";
  v12 = 181;
  v13 = 16;
LABEL_12:
  Error = createError("rpc_init_local", "rpc.c", v12, v11, v13, v14, v10);
  free(v10);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return Error;
}

uint64_t rpc_cred_init_with_audit_token(uid_t *a1, _OWORD *a2)
{
  v4 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v4;
  *a1 = audit_token_to_auid(&v13);
  v5 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v5;
  a1[1] = audit_token_to_euid(&v13);
  v6 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v6;
  a1[2] = audit_token_to_egid(&v13);
  v7 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v7;
  a1[3] = audit_token_to_ruid(&v13);
  v8 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v8;
  a1[4] = audit_token_to_rgid(&v13);
  v9 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v9;
  a1[5] = audit_token_to_pid(&v13);
  v10 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v10;
  a1[6] = audit_token_to_asid(&v13);
  v11 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v11;
  result = audit_token_to_pidversion(&v13);
  a1[7] = result;
  return result;
}

CFErrorRef rpc_call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(*(a2 + 8), OS_LOG_TYPE_DEBUG))
  {
    v5 = MEMORY[0x29C290A60](*(a2 + 296));
    v6 = *__error();
    v7 = *(a2 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v24 = v5;
      _os_log_impl(&dword_298711000, v7, OS_LOG_TYPE_DEBUG, "sending request: %s", buf, 0xCu);
    }

    *__error() = v6;
    free(v5);
  }

  v8 = xpc_pipe_routine();
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    v11 = *(a2 + 8);
    if (v11)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      *buf = 67109120;
      LODWORD(v24) = v9;
      v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_298711000, v11, 16, "xpc_pipe_routine %{darwin.errno}d", COERCE_DOUBLE(67109120), buf, 8);
    }

    else
    {
      *buf = 67109120;
      LODWORD(v24) = v8;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_298711000, MEMORY[0x29EDCA988], 16, "xpc_pipe_routine %{darwin.errno}d", COERCE_DOUBLE(67109120), buf, 8);
    }

    v21 = v13;
    Error = createError("rpc_call", "rpc.c", 332, "com.apple.security.cryptex.posix", v10, 0, v13);
    free(v21);
  }

  else
  {
    v14 = *(a2 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = MEMORY[0x29C290A60](0);
      v16 = *__error();
      v17 = *(a2 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v24 = v15;
        _os_log_impl(&dword_298711000, v17, OS_LOG_TYPE_DEBUG, "got reply: %s", buf, 0xCu);
      }

      *__error() = v16;
      free(v15);
      v14 = *(a2 + 8);
    }

    Error = rpc_init_local(a3, 0, v14);
    if (!Error)
    {
      v19 = *__error();
      v20 = *(a2 + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_298711000, v20, OS_LOG_TYPE_DEBUG, "routine succeeded", buf, 2u);
      }

      Error = 0;
      *__error() = v19;
    }
  }

  return Error;
}

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

char *object_set_name(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      *buf = 136446722;
      v12 = v4;
      v13 = 2080;
      v14 = v8;
      v15 = 2080;
      v16 = a2;
      _os_log_impl(&dword_298711000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", buf, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      *buf = 136446466;
      v12 = "[anonymous]";
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&dword_298711000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", buf, 0x16u);
    }

    *__error() = v5;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      object_set_name_cold_1(a2, v10, buf);
    }
  }

  *a1 = result;
  *(a1 + 8) = result;
  return result;
}

void object_proto_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

void object_set_name_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  v5 = strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = __error();
  v9 = strerror(*v8);
  v11 = 136315650;
  v12 = "known-constant allocation";
  v13 = 2048;
  v14 = v5;
  v15 = 2080;
  v16 = v9;
  v10 = 32;
  _os_log_send_and_compose_impl(v7, a2, a3, 80, &dword_298711000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}

void _rpc_pack_fd(void *a1, size_t a2, int fd)
{
  v5 = xpc_fd_create(fd);
  if (v5)
  {
    v6 = v5;
    xpc_array_set_value(a1, a2, v5);
  }

  else
  {
    v6 = xpc_null_create();
    xpc_array_set_value(a1, a2, v6);
    if (!v6)
    {
      return;
    }
  }

  os_release(v6);
}

uint64_t _rpc_unpack_expected(void *a1, size_t a2, uint64_t a3, void *a4)
{
  if (xpc_array_get_count(a1) <= a2)
  {
    return 34;
  }

  value = xpc_array_get_value(a1, a2);
  if (MEMORY[0x29C290B80]() == MEMORY[0x29EDCAA40])
  {
    return 2;
  }

  if (MEMORY[0x29C290B80](value) != a3)
  {
    return 79;
  }

  result = 0;
  *a4 = value;
  return result;
}

uint64_t _rpc_unpack_int64(void *a1, size_t *a2, int64_t *a3)
{
  xint = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA30], &xint);
  if (!v6)
  {
    *a3 = xpc_int64_get_value(xint);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_uint64(void *a1, size_t *a2, uint64_t *a3)
{
  xuint = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA58], &xuint);
  if (!v6)
  {
    *a3 = xpc_uint64_get_value(xuint);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_string(void *a1, size_t *a2, const char **a3)
{
  xstring = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA50], &xstring);
  if (!v6)
  {
    *a3 = xpc_string_get_string_ptr(xstring);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_string_copy(void *a1, size_t *a2, char **a3)
{
  __s1 = 0;
  result = _rpc_unpack_string(a1, a2, &__s1);
  if (!result)
  {
    v5 = strdup(__s1);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a3 = v6;
    }

    else
    {
      return *__error();
    }
  }

  return result;
}

uint64_t _rpc_unpack_array(void *a1, size_t *a2, void **a3)
{
  object = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCA9E0], &object);
  if (!v6)
  {
    *a3 = os_retain(object);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_dictionary(void *a1, size_t *a2, void **a3)
{
  object = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA00], &object);
  if (!v6)
  {
    *a3 = os_retain(object);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_fd(void *a1, size_t *a2, int *a3)
{
  xfd = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA20], &xfd);
  if (!v6)
  {
    *a3 = xpc_fd_dup(xfd);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _xpc_dictionary_key_with_type_exists(void *a1, const char *a2, const _xpc_type_s *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!xpc_dictionary_get_value(a1, a2))
  {
    v5 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      _xpc_dictionary_key_with_type_exists_cold_1();
    }

    v10 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = 136315138;
    v14 = a2;
    v7 = "key %s doesn't exist";
    v8 = v10;
    v9 = 12;
    goto LABEL_11;
  }

  if (MEMORY[0x29C290B80]() != a3)
  {
    v5 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      _xpc_dictionary_key_with_type_exists_cold_1();
    }

    v6 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = 136315394;
    v14 = a2;
    v15 = 2080;
    name = xpc_type_get_name(a3);
    v7 = "key %s isn't of type %s";
    v8 = v6;
    v9 = 22;
LABEL_11:
    _os_log_impl(&dword_298711000, v8, OS_LOG_TYPE_ERROR, v7, &v13, v9);
LABEL_12:
    v11 = __error();
    result = 0;
    *v11 = v5;
    return result;
  }

  return 1;
}

xpc_object_t _xpc_create_request(const char *a1, void *a2)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "routine", a1);
  xpc_dictionary_set_value(empty, "argv", a2);
  return empty;
}

uint64_t _xpc_dictionary_try_get_cferr(void *a1, const char *a2, CFErrorRef *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C290B80]() != MEMORY[0x29EDCAA00])
  {
    return 79;
  }

  return _xpc_dictionary_to_cferr(v5, a3);
}

uint64_t _xpc_dictionary_to_cferr(void *a1, CFErrorRef *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  value = 0;
  dictionary = xpc_dictionary_get_dictionary(a1, "cferr_userinfo");
  if (dictionary)
  {
    v5 = dictionary;
    string = xpc_dictionary_get_string(a1, "cferr_domain");
    v7 = _CFStringCreateFromUTF8String(string);
    if (v7)
    {
      v8 = v7;
      int64 = xpc_dictionary_get_int64(a1, "cferr_code");
      v10 = xpc_dictionary_get_dictionary(v5, "underlying_cferr");
      if (v10 && _xpc_dictionary_to_cferr(v10, &value))
      {
        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to unpack underlying error.: %{darwin.errno}d";
      }

      else
      {
        xpc_dictionary_set_value(v5, "underlying_cferr", 0);
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        if (v17)
        {
          v18 = v17;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
          if (MutableCopy)
          {
            v20 = MutableCopy;
            if (value)
            {
              CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDB8F68], value);
            }

            v21 = CFErrorCreate(0, v8, int64, v20);
            if (v21)
            {
              if (a2)
              {
                v16 = 0;
                *a2 = v21;
              }

              else
              {
                CFRelease(v21);
                v16 = 0;
              }
            }

            else
            {
              v26 = *__error();
              if (_xpc_log_onceToken != -1)
              {
                _xpc_dictionary_to_cferr_cold_1();
              }

              v27 = _xpc_log_osl;
              if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v31 = 12;
                _os_log_impl(&dword_298711000, v27, OS_LOG_TYPE_ERROR, "Failed to create CFError.: %{darwin.errno}d", buf, 8u);
              }

              *__error() = v26;
              v16 = 12;
            }

            CFRelease(v20);
          }

          else
          {
            v24 = *__error();
            if (_xpc_log_onceToken != -1)
            {
              _xpc_dictionary_to_cferr_cold_1();
            }

            v25 = _xpc_log_osl;
            if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v31 = 12;
              _os_log_impl(&dword_298711000, v25, OS_LOG_TYPE_ERROR, "Failed to create mutable dictionary.: %{darwin.errno}d", buf, 8u);
            }

            *__error() = v24;
            v16 = 12;
          }

          CFRelease(v18);
          goto LABEL_45;
        }

        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          *__error() = v11;
          v16 = 22;
LABEL_45:
          CFRelease(v8);
          goto LABEL_46;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to convert CF to XPC.: %{darwin.errno}d";
      }

      _os_log_impl(&dword_298711000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
      goto LABEL_31;
    }

    v22 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      _xpc_dictionary_key_with_type_exists_cold_1();
    }

    v23 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 12;
      _os_log_impl(&dword_298711000, v23, OS_LOG_TYPE_ERROR, "Failed to create string.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v22;
    v16 = 12;
  }

  else
  {
    v14 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      _xpc_dictionary_key_with_type_exists_cold_1();
    }

    v15 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 22;
      _os_log_impl(&dword_298711000, v15, OS_LOG_TYPE_ERROR, "CFError XPC dictionary is missing user info.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v14;
    v16 = 22;
  }

LABEL_46:
  if (value)
  {
    CFRelease(value);
  }

  return v16;
}

uint64_t _xpc_request_get_argv(void *a1, void *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "argv", MEMORY[0x29EDCAA00]))
  {
    return 22;
  }

  dictionary = xpc_dictionary_get_dictionary(a1, "argv");
  result = 0;
  *a2 = dictionary;
  return result;
}

os_log_t ___xpc_log_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "xpc");
  _xpc_log_osl = result;
  return result;
}

void _CFCreateAssertImpl_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = 136315138;
  v11 = a3;
  OUTLINED_FUNCTION_2(v9, v4, v5, v6, &dword_298711000, v7, v8, "cf create failed: obj = %s", &v10, 12);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_actor_alloc_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = __error();
  v9 = strerror(*v8);
  v11 = 136315650;
  v12 = "cryptex_actor";
  v13 = 2048;
  v14 = a3;
  v15 = 2080;
  v16 = v9;
  v10 = 32;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_298711000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}