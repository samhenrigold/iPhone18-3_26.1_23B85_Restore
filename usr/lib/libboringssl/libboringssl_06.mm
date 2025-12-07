uint64_t nw_protocol_boringssl_get_error(uint64_t result)
{
  if (result)
  {
    return *(result + 344);
  }

  return result;
}

uint64_t nw_protocol_boringssl_send_alert(void *a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  if (a2 <= 3)
  {
    nw_protocol_upcast();
    nw_protocol_error();
  }

  return 1;
}

uint64_t nw_protocol_error_print(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    nw_protocol_error_print_cold_1();
  }

  return 1;
}

uint64_t __nw_protocol_boringssl_write_frames_block_invoke_138(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = 0;
  v23 = 0;
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  v6 = *(v4 + 120);
  if (v6)
  {
    v24 = *(v4 + 120);
    v23 = *(v4 + 128);
  }

  else if (nw_frame_uses_external_data())
  {
    v7 = nw_frame_copy_external_data();
    v8 = v7;
    if (v7)
    {
      v9 = nw_dispatch_data_create_subrange_map(v7, 0, v23, &v24);
      v10 = *(*v5 + 112);
      *(*v5 + 112) = v9;

      v11 = *v5;
      if (*(*v5 + 112))
      {
        *(v11 + 120) = v24;
        *(*v5 + 128) = v23;
      }

      else if ((*(v11 + 435) & 1) == 0)
      {
        v20 = g_boringssl_log;
        if (g_boringssl_log)
        {
          if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
          {
            v21 = *v5;
            v22 = (*v5 + 351);
            if (!*v5)
            {
              v22 = &unk_1A9098A9F;
            }

            *buf = 136447746;
            v26 = "nw_protocol_boringssl_write_frames_block_invoke";
            v27 = 1024;
            v28 = 1207;
            v29 = 2082;
            v30 = v22;
            v31 = 2048;
            v32 = v21;
            v33 = 2112;
            v34 = v8;
            v35 = 1024;
            v36 = 0;
            v37 = 1024;
            v38 = v23;
            _os_log_error_impl(&dword_1A8FF5000, v20, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to flatten external data %@ (offset %u, unclaimed %u)", buf, 0x3Cu);
          }
        }
      }
    }

    v6 = v24;
  }

  else
  {
    v6 = nw_frame_unclaimed_bytes();
    v24 = v6;
  }

  if (v6)
  {
    v12 = v23 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = (v23 & 0x3FFF) + 93;
    if ((v23 & 0x3FFF) == 0)
    {
      v13 = 0;
    }

    *(*v5 + 164) = v13 + 16477 * (v23 >> 14);
    v14 = (*(*v5 + 32))(*(*v5 + 296));
    if (v14 >= 1)
    {
      v15 = *(*v5 + 120);
      if (v15)
      {
        *(*v5 + 120) = v15 + v14;
        *(*v5 + 128) -= v14;
      }

      else
      {
        nw_protocol_upcast();
        nw_frame_claim();
      }
    }

    v16 = v23;
    if ((v23 & 0x80000000) == 0 || (!*v5 || (*(*v5 + 435) & 1) == 0) && (__nw_protocol_boringssl_write_frames_block_invoke_138_cold_1(a1 + 32, &v23, buf) & 1) == 0 && (v16 = *buf, (*buf & 0x80000000) == 0))
    {
      if (v14 < v16)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }

  v17 = *(*(*(a1 + 40) + 8) + 24);
  if (v17 == 1)
  {
    v18 = *(*v5 + 112);
    *(*v5 + 112) = 0;

    *(*v5 + 120) = 0;
    *(*v5 + 128) = 0;
    nw_frame_array_remove();
    nw_frame_finalize();
  }

  return v17;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __nw_protocol_boringssl_remove_input_handler_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nw_protocol_boringssl_remove_input_handler_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nw_protocol_boringssl_remove_input_handler_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nw_protocol_boringssl_remove_input_handler_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nw_protocol_boringssl_remove_input_handler_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

void __nw_protocol_boringssl_get_input_frames_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ((boringssl_session_get_state(*(*(a1 + 32) + 296)) & 0xFFFFFFFE) == 2)
  {
    v2 = *v1;
    if (!*v1 || (*(v2 + 435) & 1) == 0)
    {
      __nw_protocol_boringssl_get_input_frames_block_invoke_cold_1(v1, v2, &v4);
      v2 = v4;
    }

    *(v2 + 348) &= ~0x80u;
    v3 = nw_protocol_upcast();
    nw_boringssl_read(v3);
  }
}

uint64_t __nw_protocol_boringssl_get_input_frames_block_invoke_143(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) >= *(a1 + 72) || *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 76))
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v4 = nw_frame_unclaimed_length();
  v5 = *(*(*(a1 + 40) + 8) + 24) + v4;
  v6 = *(a1 + 76);
  v7 = v4;
  v8 = v5 <= v6;
  if (v5 > v6)
  {
    v9 = *(a1 + 48);
    v10 = v3;
    if (v9)
    {
      v11 = nw_protocol_downcast();
      if (v11)
      {
        v12 = v11;
        if ((*(v11 + 435) & 1) == 0)
        {
          __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_1();
        }

        nw_frame_unclaimed_bytes();
        if ((*(v12 + 435) & 1) == 0)
        {
          __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_4();
        }
      }
    }

    v13 = *(a1 + 56);
    if (!v13 || (*(v13 + 435) & 1) == 0)
    {
      __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_5();
      v8 = v15;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((*(*(a1 + 56) + 350) & 0x10) != 0)
  {
    nw_frame_set_is_wake_packet();
    *(*(a1 + 56) + 350) &= ~0x10u;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) += v7;
  nw_frame_array_remove();
  nw_frame_array_append();
LABEL_16:

  return v8;
}

uint64_t nw_protocol_boringssl_initiate_pqtls_fallback(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  result = nw_protocol_downcast();
  if (!result)
  {
    return result;
  }

  v3 = result;
  if ((*(result + 435) & 1) == 0)
  {
    nw_protocol_boringssl_initiate_pqtls_fallback_cold_1();
  }

  if ((*(v3 + 349) & 8) != 0)
  {
    return 0;
  }

  if (!boringssl_session_get_pqtls_enabled(*(v3 + 296)))
  {
    v17 = g_boringssl_log;
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v25 = "nw_protocol_boringssl_initiate_pqtls_fallback";
      v26 = 1024;
      v27 = 2258;
      _os_log_impl(&dword_1A8FF5000, v17, OS_LOG_TYPE_INFO, "%{public}s(%d) PQ-TLS disabled; skipping fallback path", buf, 0x12u);
    }

    return 0;
  }

  v4 = (*(*(*(a1 + 48) + 24) + 136))();
  v5 = v4;
  if (!v4)
  {
    v18 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v25 = "nw_protocol_boringssl_initiate_pqtls_fallback";
      v26 = 1024;
      v27 = 2255;
      _os_log_impl(&dword_1A8FF5000, v18, OS_LOG_TYPE_INFO, "%{public}s(%d) no remote endpoint; skipping PQ-TLS fallback", buf, 0x12u);
    }

    goto LABEL_40;
  }

  v6 = v4;
  v7 = nw_endpoint_copy_parent_endpoint();
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = v6;
    do
    {
      v8 = v9;

      v9 = nw_endpoint_copy_parent_endpoint();
      v10 = v8;
    }

    while (v9);
  }

  if (!boringssl_config_get_pqtls_fallback_enabled_for_endpoint())
  {
    v19 = g_boringssl_log;
    if (!g_boringssl_log || !os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    v25 = "nw_protocol_boringssl_initiate_pqtls_fallback";
    v26 = 1024;
    v27 = 2252;
    v20 = "%{public}s(%d) PQ-TLS fallback disallowed for endpoint; skipping PQ-TLS fallback";
LABEL_30:
    _os_log_impl(&dword_1A8FF5000, v19, OS_LOG_TYPE_INFO, v20, buf, 0x12u);
LABEL_39:

LABEL_40:
    return 0;
  }

  if (!*(a1 + 48))
  {
    v19 = g_boringssl_log;
    if (!g_boringssl_log || !os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    *buf = 136446466;
    v25 = "nw_protocol_boringssl_initiate_pqtls_fallback";
    v26 = 1024;
    v27 = 2249;
    v20 = "%{public}s(%d) input protocol is NULL; skipping PQ-TLS fallback";
    goto LABEL_30;
  }

  v11 = nw_protocol_get_parameters();
  if (!v11)
  {
    v21 = g_boringssl_log;
    if (!g_boringssl_log || !os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v25 = "nw_protocol_boringssl_initiate_pqtls_fallback";
    v26 = 1024;
    v27 = 2246;
    v22 = "%{public}s(%d) no parameters; skipping PQ-TLS fallback";
    goto LABEL_37;
  }

  v12 = nw_parameters_copy_protocol_options_legacy();
  if (!v12)
  {
    v21 = g_boringssl_log;
    if (!g_boringssl_log || !os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v25 = "nw_protocol_boringssl_initiate_pqtls_fallback";
    v26 = 1024;
    v27 = 2243;
    v22 = "%{public}s(%d) no TLS options; skipping PQ-TLS fallback";
LABEL_37:
    _os_log_impl(&dword_1A8FF5000, v21, OS_LOG_TYPE_INFO, v22, buf, 0x12u);
LABEL_38:

    goto LABEL_39;
  }

  v13 = v12;
  sec_protocol_options_set_pqtls_mode();
  v14 = g_boringssl_log;
  if (g_boringssl_log)
  {
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v25 = "nw_protocol_boringssl_initiate_pqtls_fallback";
      v26 = 1024;
      v27 = 2225;
      _os_log_impl(&dword_1A8FF5000, v14, OS_LOG_TYPE_INFO, "%{public}s(%d) Initiating PQ-TLS fallback", buf, 0x12u);
    }
  }

  v15 = nw_parameters_copy_context();
  *(v3 + 350) |= 0x20u;
  v23 = v3;
  v16 = v23;
  nw_queue_context_async();

  return 1;
}

void __nw_protocol_boringssl_initiate_pqtls_fallback_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 350) &= ~0x20u;
  nw_protocol_upcast();
  input_handler = nw_protocol_get_input_handler();
  v2 = g_boringssl_log;
  if (input_handler)
  {
    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
      {
        v3 = 136446466;
        v4 = "nw_protocol_boringssl_initiate_pqtls_fallback_block_invoke";
        v5 = 1024;
        v6 = 2234;
        _os_log_impl(&dword_1A8FF5000, v2, OS_LOG_TYPE_INFO, "%{public}s(%d) Performing PQ-TLS fallback", &v3, 0x12u);
      }
    }

    nw_protocol_notify();
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
  {
    v3 = 136446466;
    v4 = "nw_protocol_boringssl_initiate_pqtls_fallback_block_invoke";
    v5 = 1024;
    v6 = 2238;
    _os_log_impl(&dword_1A8FF5000, v2, OS_LOG_TYPE_INFO, "%{public}s(%d) safe input protocol is NULL; skipping PQ-TLS fallback", &v3, 0x12u);
  }
}

void __nw_protocol_boringssl_begin_connection_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  nw_protocol_boringssl_internal_error(v5, a4);
  v6 = nw_protocol_upcast();

  nw_protocol_boringssl_disconnect(v6);
}

void __nw_protocol_boringssl_begin_connection_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (boringssl_session_in_early_data(*(*(a1 + 32) + 296), v3))
  {
    nw_protocol_upcast();
    nw_protocol_get_input_handler();
    nw_protocol_upcast();
    nw_protocol_connected();
  }
}

BOOL __nw_protocol_boringssl_begin_connection_block_invoke_153(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 336);
    if (v4)
    {
      *(*(a1 + 40) + 240) = (*(v4 + 16))(v4, 0);
      *(*(a1 + 40) + 248) = (*(*(a2 + 336) + 16))();
      *(*(a1 + 40) + 256) = (*(*(a2 + 336) + 16))();
      *(*(a1 + 40) + 264) = (*(*(a2 + 336) + 16))();
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return a2 != 0;
}

uint64_t __nw_boringssl_batching_register_batching_size_updates_block_invoke()
{
  result = network_config_register_boringssl_batching_size_updates();
  if (result <= 0x4000)
  {
    v1 = 0x4000;
  }

  else
  {
    v1 = result;
  }

  if (v1 >= 0xFFA2)
  {
    v1 = 65442;
  }

  nw_batching_plaintxt_size = v1;
  v2 = v1 >> 14;
  v4 = v1 & 0x3FFF;
  v3 = v4 == 0;
  v5 = v4 + 93;
  if (v3)
  {
    v5 = 0;
  }

  nw_batching_finaltxt_size = v5 + 16477 * v2;
  return result;
}

void __nw_boringssl_batching_register_batching_size_updates_block_invoke_2(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x4000)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = a2;
  }

  if (v2 >= 0xFFA2)
  {
    v2 = 65442;
  }

  nw_batching_plaintxt_size = v2;
  v3 = v2 >> 14;
  v5 = v2 & 0x3FFF;
  v4 = v5 == 0;
  v6 = v5 + 93;
  if (v4)
  {
    v6 = 0;
  }

  nw_batching_finaltxt_size = v6 + 16477 * v3;
}

uint64_t __nw_protocol_boringssl_cleanup_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  buffer = nw_frame_get_buffer();
  if (nw_frame_buffer_get_manager())
  {
    nw_mem_buffer_free();
  }

  else
  {
    free(buffer);
  }

  nw_frame_reset();
  nw_frame_array_remove();

  return 1;
}

uint64_t __nw_protocol_boringssl_cleanup_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (nw_frame_uses_external_data())
  {
    nw_frame_set_external_data();
  }

  else
  {
    buffer = nw_frame_get_buffer();
    free(buffer);
  }

  nw_frame_reset();
  nw_frame_array_remove();

  return 1;
}

BOOL OUTLINED_FUNCTION_27()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_30()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_36()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_37(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

void OUTLINED_FUNCTION_42(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

void OUTLINED_FUNCTION_46(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

double EVP_md5_init()
{
  EVP_md5_storage = 0x1000000004;
  dword_1EB381E40 = 0;
  qword_1EB381E48 = md5_init;
  qword_1EB381E50 = digest_update_wrapper;
  qword_1EB381E58 = digest_final_wrapper;
  *&result = 0x40800000040;
  qword_1EB381E60 = 0x40800000040;
  return result;
}

double EVP_sha1_init()
{
  EVP_sha1_storage = 0x1400000040;
  dword_1EB381E10 = 0;
  qword_1EB381E18 = sha1_init;
  qword_1EB381E20 = digest_update_wrapper;
  qword_1EB381E28 = digest_final_wrapper;
  *&result = 0x40800000040;
  qword_1EB381E30 = 0x40800000040;
  return result;
}

double EVP_sha224_init()
{
  EVP_sha224_storage = 0x1C000002A3;
  dword_1EB381E70 = 0;
  qword_1EB381E78 = sha224_init;
  qword_1EB381E80 = digest_update_wrapper;
  qword_1EB381E88 = digest_final_wrapper;
  *&result = 0x40800000040;
  qword_1EB381E90 = 0x40800000040;
  return result;
}

double EVP_sha512_init()
{
  EVP_sha512_storage = 0x40000002A2;
  dword_1ED4BFD28 = 0;
  qword_1ED4BFD30 = sha512_init;
  qword_1ED4BFD38 = digest_update_wrapper;
  qword_1ED4BFD40 = digest_final_wrapper;
  *&result = 0x40800000080;
  qword_1ED4BFD48 = 0x40800000080;
  return result;
}

uint64_t md5_sha1_init(uint64_t a1)
{
  v1 = *(a1 + 8);
  digest_init(v1, 3);

  return digest_init(v1 + 1032, 8);
}

uint64_t md5_sha1_update(uint64_t a1)
{
  v1 = *(a1 + 8);
  digest_update(v1);

  return digest_update(v1 + 1032);
}

uint64_t md5_sha1_final(uint64_t a1)
{
  v1 = *(a1 + 8);
  digest_final(v1);

  return digest_final(v1 + 1032);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t bssl::ssl_get_credential_list(void *a1, uint64_t a2)
{
  v4 = a1[1];
  if (*(*a1 + 180))
  {
    if (*(v4 + 184) == 1 && **(v4 + 176) == 2 && *(v4 + 192))
    {
      result = bssl::Array<ssl_credential_st *>::InitUninitialized(a2, 1uLL);
      if (!result)
      {
        return result;
      }

      if (*(a2 + 8))
      {
        v6 = *(a1[1] + 192);
LABEL_14:
        **a2 = v6;
        return 1;
      }

      goto LABEL_26;
    }
  }

  else if (*(v4 + 208) == 1 && **(v4 + 200) == 2 && *(v4 + 216))
  {
    result = bssl::Array<ssl_credential_st *>::InitUninitialized(a2, 1uLL);
    if (!result)
    {
      return result;
    }

    if (*(a2 + 8))
    {
      v6 = *(a1[1] + 216);
      goto LABEL_14;
    }

LABEL_26:
    abort();
  }

  v7 = *(v4 + 32);
  result = (*(*(v7 + 32) + 112))(a1);
  if (result)
  {
    v8 = *(v7 + 8);
    v9 = ssl_credential_st::IsComplete(*(v7 + 24));
    v10 = v9;
    result = bssl::Array<ssl_credential_st *>::InitUninitialized(a2, v8 + v9);
    if (result)
    {
      v11 = *(v7 + 8);
      if (v11)
      {
        v12 = 0;
        v13 = *(a2 + 8);
        while (v13 != v12)
        {
          *(*a2 + 8 * v12) = *(*v7 + 8 * v12);
          if (v11 == ++v12)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        if ((v10 & 1) == 0)
        {
          return 1;
        }

        if (*(a2 + 8) > v8)
        {
          *(*a2 + 8 * v8) = *(v7 + 24);
          return 1;
        }
      }

      goto LABEL_26;
    }
  }

  return result;
}

uint64_t bssl::ssl_credential_matches_requested_issuers(bssl *this, bssl::SSL_HANDSHAKE *a2, const ssl_credential_st *a3)
{
  if (*(a2 + 192) != 1)
  {
    return 1;
  }

  v3 = *(this + 186);
  if (!v3)
  {
    return 0;
  }

  result = EVP_MD_CTX_md(*(this + 186));
  if (result)
  {
    v6 = 0;
    v7 = result - 1;
    do
    {
      v8 = OPENSSL_sk_value(v3, v6);
      v9 = CRYPTO_BUFFER_data(v8);
      v10 = CRYPTO_BUFFER_len(v8);
      result = ssl_credential_st::ChainContainsIssuer(a2, v9, v10);
      if (result)
      {
        break;
      }
    }

    while (v7 != v6++);
  }

  return result;
}

uint64_t ssl_credential_st::ChainContainsIssuer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 4) & 0xFFFFFFFE) == 2)
  {
    return 0;
  }

  v10[6] = v3;
  v10[7] = v4;
  v10[0] = a2;
  v10[1] = a3;
  if (!EVP_MD_CTX_md(*(a1 + 48)))
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = OPENSSL_sk_value(*(a1 + 48), v7);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    CRYPTO_BUFFER_init_CBS(v8, &v9);
    if (bssl::ssl_cert_matches_issuer(&v9, v10))
    {
      break;
    }

    if (++v7 >= EVP_MD_CTX_md(*(a1 + 48)))
    {
      return 0;
    }
  }

  return 1;
}

void ssl_credential_st::ClearCertAndKey(ssl_credential_st *this)
{
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 2, 0);
  *(this + 3) = 0;

  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](this + 6, 0);
}

uint64_t ssl_credential_st::SetLeafCert(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(a1 + 4);
  if ((v3 & 0xFFFFFFFE) == 2)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 219);
    return 0;
  }

  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  CRYPTO_BUFFER_init_CBS(*a2, &v23);
  pkey = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_cert_parse_pubkey(&v23, &pkey);
  if (!pkey)
  {
    return 0;
  }

  v7 = EVP_PKEY_id(pkey);
  if ((bssl::ssl_is_key_type_supported(v7) & 1) == 0)
  {
    v18 = 233;
LABEL_19:
    ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", v18);
    goto LABEL_20;
  }

  if (EVP_PKEY_id(pkey) == 408 && (bssl::ssl_cert_check_key_usage(&v23, 0) & 1) == 0)
  {
    v18 = 241;
    goto LABEL_19;
  }

  if (v3 != 1)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      if ((bssl::ssl_compare_public_and_private_key(pkey, v9, v8) & 1) == 0)
      {
        if (!a3)
        {
          goto LABEL_20;
        }

        ERR_clear_error();
        std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 16), 0);
      }
    }
  }

  v11 = (a1 + 48);
  v10 = *(a1 + 48);
  if (v10 || (bssl::new_leafless_chain(&v21), v12 = v21, v21 = 0, std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 48), v12), std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v21, 0), (v10 = *v11) != 0))
  {
    v13 = OPENSSL_sk_value(v10, 0);
    CRYPTO_BUFFER_free(v13);
    v14 = *v11;
    v15 = *a2;
    *a2 = 0;
    OPENSSL_sk_set(v14, 0, v15);
    if (v3 != 1)
    {
      v16 = pkey;
      pkey = 0;
      std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 8), v16);
    }

    v17 = 1;
    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
LABEL_21:
  v19 = pkey;
  pkey = 0;
  if (v19)
  {
    EVP_PKEY_free(v19);
  }

  return v17;
}

void sub_1A9048D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void bssl::new_leafless_chain(unint64_t **__return_ptr a1@<X8>)
{
  v2 = OPENSSL_sk_new_null();
  v4 = v2;
  if (v2 && OPENSSL_sk_push(v2, 0))
  {
    v3 = v4;
    v4 = 0;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v4, 0);
}

void sub_1A9048D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

const EVP_MD_CTX *ssl_credential_st::ClearIntermediateCerts(ssl_credential_st *this)
{
  result = *(this + 6);
  if (result)
  {
    result = EVP_MD_CTX_md(result);
    if (result >= 2)
    {
      do
      {
        v3 = OPENSSL_sk_pop(*(this + 6));
        CRYPTO_BUFFER_free(v3);
        result = EVP_MD_CTX_md(*(this + 6));
      }

      while (result > 1);
    }
  }

  return result;
}

uint64_t ssl_credential_st::AppendIntermediateCert(uint64_t a1, unsigned int **a2)
{
  if ((*(a1 + 4) & 0xFFFFFFFE) == 2)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 303);
    return 0;
  }

  v4 = (a1 + 48);
  result = *(a1 + 48);
  if (result || (bssl::new_leafless_chain(&v7), v5 = v7, v7 = 0, std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v4, v5), std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v7, 0), (result = *v4) != 0))
  {
    v6 = *a2;
    *a2 = 0;
    if (!OPENSSL_sk_push(result, v6))
    {
      if (v6)
      {
        CRYPTO_BUFFER_free(v6);
      }

      return 0;
    }

    return 1;
  }

  return result;
}

void SSL_CREDENTIAL_free(ssl_credential_st *a1)
{
  if (a1)
  {
    bssl::RefCounted<ssl_credential_st>::DecRefInternal(a1);
  }
}

uint64_t SSL_CREDENTIAL_set1_private_key(uint64_t a1, evp_pkey_st *a2, const evp_pkey_st *a3)
{
  if (*(a1 + 4) == 3)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 345);
    return 0;
  }

  else
  {
    v6 = *(a1 + 8);
    if (!v6 || (result = bssl::ssl_compare_public_and_private_key(v6, a2, a3), result))
    {
      if (a2)
      {
        EVP_PKEY_up_ref(a2);
      }

      std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 16), a2);
      *(a1 + 24) = 0;
      return 1;
    }
  }

  return result;
}

uint64_t SSL_CREDENTIAL_set_private_key_method(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 3)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 364);
    return 0;
  }

  else
  {
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 16), 0);
    *(a1 + 24) = a2;
    return 1;
  }
}

BOOL SSL_CREDENTIAL_set1_cert_chain(ssl_credential_st *a1, uint64_t *a2, unint64_t a3)
{
  if (!a3 || (*(a1 + 1) & 0xFFFFFFFE) == 2)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 377);
    return 0;
  }

  v6 = *a2;
  if (*a2)
  {
    CRYPTO_BUFFER_up_ref(*a2);
  }

  v17 = v6;
  v7 = ssl_credential_st::SetLeafCert(a1, &v17, 0);
  if (v17)
  {
    CRYPTO_BUFFER_free(v17);
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  ssl_credential_st::ClearIntermediateCerts(a1);
  if (a3 < 2)
  {
    return 1;
  }

  v9 = 0;
  v10 = a3 - 1;
  v11 = a2 + 1;
  v12 = 2;
  do
  {
    v13 = *v11;
    if (*v11)
    {
      CRYPTO_BUFFER_up_ref(*v11);
    }

    v16 = v13;
    appended = ssl_credential_st::AppendIntermediateCert(a1, &v16);
    v15 = v16;
    v16 = 0;
    if (v15)
    {
      CRYPTO_BUFFER_free(v15);
    }

    if ((appended & 1) == 0)
    {
      break;
    }

    v9 = v12++ >= a3;
    ++v11;
    --v10;
  }

  while (v10);
  return v9;
}

void sub_1A904915C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t SSL_CREDENTIAL_set1_raw_public_key(uint64_t a1, EVP_PKEY *this, const evp_pkey_st *a3)
{
  if (*(a1 + 4) != 2)
  {
    v9 = 66;
    v10 = 452;
LABEL_8:
    ERR_put_error(16, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", v10);
    return 0;
  }

  if (!this)
  {
    v9 = 137;
    v10 = 457;
    goto LABEL_8;
  }

  v5 = *(a1 + 16);
  if (!v5 || (result = bssl::ssl_compare_public_and_private_key(this, v5, a3), result))
  {
    EVP_PKEY_up_ref(this);
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 8), this);
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    OPENSSL_free(v8);
    *v7 = 0;
    v7[1] = 0;
    OPENSSL_free(0);
    return 1;
  }

  return result;
}

uint64_t SSL_CREDENTIAL_set1_ocsp_response(uint64_t a1, unsigned int *a2)
{
  if ((*(a1 + 4) & 0xFFFFFFFE) == 2)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 475);
    return 0;
  }

  else
  {
    if (a2)
    {
      CRYPTO_BUFFER_up_ref(a2);
    }

    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 80), a2);
    return 1;
  }
}

uint64_t SSL_CREDENTIAL_set1_signed_cert_timestamp_list(uint64_t a1, unsigned int *a2)
{
  if ((*(a1 + 4) & 0xFFFFFFFE) == 2)
  {
    v2 = 66;
    v3 = 486;
LABEL_8:
    ERR_put_error(16, 0, v2, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", v3);
    return 0;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  CRYPTO_BUFFER_init_CBS(a2, &v7);
  if (!bssl::ssl_is_sct_list_valid(&v7))
  {
    v2 = 269;
    v3 = 493;
    goto LABEL_8;
  }

  if (a2)
  {
    CRYPTO_BUFFER_up_ref(a2);
  }

  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 72), a2);
  return 1;
}

uint64_t SSL_CREDENTIAL_set1_PAKE_identities(uint64_t a1, char *a2, unint64_t a3, char *a4, unint64_t a5, char *a6, unint64_t a7)
{
  if (*(a1 + 4) == 3)
  {
    v11 = a3;
    if (bssl::Array<unsigned char>::InitUninitialized(a1 + 88, a3) && v11)
    {
      v14 = *(a1 + 88);
      do
      {
        v15 = *a2++;
        *v14++ = v15;
        --v11;
      }

      while (v11);
    }

    if (bssl::Array<unsigned char>::InitUninitialized(a1 + 104, a5) && a5)
    {
      v16 = *(a1 + 104);
      do
      {
        v17 = *a4++;
        *v16++ = v17;
        --a5;
      }

      while (a5);
    }

    if (bssl::Array<unsigned char>::InitUninitialized(a1 + 120, a7) && a7)
    {
      v18 = *(a1 + 120);
      do
      {
        v19 = *a6++;
        *v18++ = v19;
        --a7;
      }

      while (a7);
    }

    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 506);
    return 0;
  }
}

uint64_t SSL_CREDENTIAL_set1_PAKE_client_password_record(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4) != 3)
  {
    v10 = 66;
    v11 = 519;
LABEL_12:
    ERR_put_error(16, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", v11);
    return 0;
  }

  if (a3 != 64)
  {
    v10 = 70;
    v11 = 524;
    goto LABEL_12;
  }

  if (bssl::Array<unsigned char>::InitUninitialized(a1 + 136, 0x20uLL))
  {
    v5 = 0;
    v6 = *(a1 + 136);
    do
    {
      *(v6 + v5) = *(a2 + v5);
      ++v5;
    }

    while (v5 != 32);
  }

  if (bssl::Array<unsigned char>::InitUninitialized(a1 + 152, 0x20uLL))
  {
    v7 = 0;
    v8 = *(a1 + 152);
    do
    {
      *(v8 + v7) = *(a2 + 32 + v7);
      ++v7;
    }

    while (v7 != 32);
  }

  return 1;
}

uint64_t SSL_CREDENTIAL_set1_PAKE_server_password_record(uint64_t a1, char *a2, unint64_t a3, char *a4, unint64_t a5)
{
  if (*(a1 + 4) == 3)
  {
    v7 = a3;
    if (bssl::Array<unsigned char>::InitUninitialized(a1 + 136, a3) && v7)
    {
      v10 = *(a1 + 136);
      do
      {
        v11 = *a2++;
        *v10++ = v11;
        --v7;
      }

      while (v7);
    }

    if (bssl::Array<unsigned char>::InitUninitialized(a1 + 168, a5) && a5)
    {
      v12 = *(a1 + 168);
      do
      {
        v13 = *a4++;
        *v12++ = v13;
        --a5;
      }

      while (a5);
    }

    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 537);
    return 0;
  }
}

uint64_t SSL_add1_credential(uint64_t a1, ssl_credential_st *this)
{
  if (*(a1 + 8))
  {
    if (ssl_credential_st::IsComplete(this))
    {
      v4 = *(*(a1 + 8) + 32);
      if (this)
      {
        CRYPTO_refcount_inc(this);
      }

      if (bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::MaybeGrow(v4))
      {
        v5 = v4[1];
        *(*v4 + 8 * v5) = this;
        v4[1] = v5 + 1;
        return 1;
      }

      if (this)
      {
        bssl::RefCounted<ssl_credential_st>::DecRefInternal(this);
      }
    }

    else
    {
      ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_credential.cc", 560);
    }
  }

  return 0;
}

void sub_1A90496D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::MaybeGrow(uint64_t *a1)
{
  v1 = a1[2];
  if (a1[1] < v1)
  {
    return 1;
  }

  if (v1)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v4 = 479;
      goto LABEL_9;
    }

    if (v1 >> 60)
    {
      v4 = 485;
LABEL_9:
      ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/internal.h", v4);
      return 0;
    }

    v5 = 2 * v1;
  }

  else
  {
    v5 = 16;
  }

  result = OPENSSL_malloc(8 * v5);
  if (result)
  {
    v6 = result;
    v7 = a1[1];
    if (v7)
    {
      v8 = *a1;
      v9 = 8 * v7;
      v10 = result;
      do
      {
        v11 = *v8;
        *v8++ = 0;
        *v10++ = v11;
        v9 -= 8;
      }

      while (v9);
    }

    bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::clear(a1);
    *a1 = v6;
    a1[1] = v7;
    result = 1;
    a1[2] = v5;
  }

  return result;
}

uint64_t bssl::dtls1_open_handshake(uint64_t a1, unint64_t *a2, char *a3, uint64_t a4, unint64_t a5)
{
  v38 = -86;
  v36 = 0;
  v37 = 0;
  result = bssl::dtls_open_record(a1, &v38, &v36, a2, a3, a4, a5);
  if (result)
  {
    return result;
  }

  if (v38 == 20)
  {
    if (**(*(a1 + 48) + 264))
    {
      v30 = 318;
      goto LABEL_61;
    }

    if (v37 != 1 || *v36 != 1)
    {
      v28 = 103;
      v29 = 324;
      goto LABEL_64;
    }

    **(a1 + 56) |= 1u;
    bssl::ssl_do_msg_callback(a1, 0, 20, v36, v37);
    return 0;
  }

  if (v38 != 22)
  {
    if (v38 == 23)
    {
      if (**(*(a1 + 48) + 264))
      {
        return 1;
      }

      v30 = 305;
    }

    else
    {
      v30 = 340;
    }

LABEL_61:
    ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", v30);
    v27 = 10;
    goto LABEL_65;
  }

  v34 = v36;
  v35 = v37;
  if (!v37)
  {
    return 0;
  }

  while (1)
  {
    memset(v33, 170, 20);
    __src = 0xAAAAAAAAAAAAAAAALL;
    __n = 0xAAAAAAAAAAAAAAAALL;
    if ((bssl::dtls1_parse_fragment(&v34, v33, &__src) & 1) == 0)
    {
      ERR_put_error(16, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", 352);
      v27 = 50;
      goto LABEL_65;
    }

    v9 = HIDWORD(v33[1]);
    v10 = HIDWORD(v33[0]);
    if (HIDWORD(v33[1]) > HIDWORD(v33[0]) || (v11 = LODWORD(v33[2]) + HIDWORD(v33[1]), v11 > HIDWORD(v33[0])) || bssl::ssl_max_handshake_message_len(a1, v8) < v10)
    {
      v28 = 150;
      v29 = 363;
      goto LABEL_64;
    }

    v12 = *(a1 + 56);
    v13 = *(v12 + 50);
    if (*(v12 + 2) == 1)
    {
      v14 = LOWORD(v33[1]) == v13;
      v13 = LOWORD(v33[1]);
      if (!v14)
      {
        v30 = 370;
        goto LABEL_61;
      }
    }

    if (LOWORD(v33[1]) >= v13 && v13 + 7 >= LOWORD(v33[1]))
    {
      break;
    }

LABEL_51:
    if (!v35)
    {
      return 0;
    }
  }

  if ((LOWORD(v33[1]) - v13) > 6)
  {
    goto LABEL_68;
  }

  v16 = (LOWORD(v33[1]) - 7 * ((613566757 * LOWORD(v33[1])) >> 32));
  v17 = *(v12 + 8 * v16 + 80);
  if (!v17)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41[1] = v19;
    v41[2] = v19;
    v41[0] = v19;
    CBB_zero(v41);
    v20 = OPENSSL_malloc(0x18uLL);
    if (v20)
    {
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      v40 = v20;
      *v20 = v33[0];
      *(v20 + 1) = v33[1];
      v21 = HIDWORD(v33[0]);
      *(v20 + 1) = HIDWORD(v33[0]);
      v22 = OPENSSL_malloc((v21 + 12));
      *(v40 + 1) = v22;
      if (!v22 || !CBB_init_fixed(v41, v22, 12) || !CBB_add_u8(v41, LOBYTE(v33[0])) || !CBB_add_u24(v41, HIDWORD(v33[0])) || !CBB_add_u16(v41, LOWORD(v33[1])) || !CBB_add_u24(v41, 0) || !CBB_add_u24(v41, HIDWORD(v33[0])) || !CBB_finish(v41, 0, 0))
      {
        goto LABEL_42;
      }

      if (HIDWORD(v33[0]))
      {
        if (HIDWORD(v33[0]) >= 0xFFFFFFF9)
        {
          ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", 183);
LABEL_42:
          v23 = 0;
          goto LABEL_43;
        }

        v24 = OPENSSL_zalloc((HIDWORD(v33[0]) + 7) >> 3);
        v23 = v40;
        *(v40 + 2) = v24;
        if (!v24)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v23 = v40;
      }
    }

    else
    {
      v23 = 0;
    }

    v40 = 0;
LABEL_43:
    v39 = v23;
    std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100](&v40, 0);
    CBB_cleanup(v41, v25);
    v26 = *(a1 + 56) + 8 * v16;
    v39 = 0;
    std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100]((v26 + 80), v23);
    std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100](&v39, 0);
    v17 = *(*(a1 + 56) + 8 * v16 + 80);
    if (!v17)
    {
LABEL_68:
      v27 = 80;
      goto LABEL_65;
    }

    v18 = *(v17 + 1);
    goto LABEL_45;
  }

  if (*(v17 + 1) != LOWORD(v33[1]))
  {
    bssl::dtls1_open_handshake();
  }

  if (*v17 == LOBYTE(v33[0]))
  {
    v18 = *(v17 + 1);
    if (v18 == HIDWORD(v33[0]))
    {
LABEL_45:
      if (v18 != v10)
      {
        bssl::dtls1_open_handshake();
      }

      if (*(v17 + 2))
      {
        if (!v10)
        {
          bssl::dtls1_open_handshake();
        }

        if (__n)
        {
          memcpy((*(v17 + 1) + v9 + 12), __src, __n);
        }

        bssl::dtls1_hm_fragment_mark(v17, v9, v11);
      }

      goto LABEL_51;
    }
  }

  v28 = 152;
  v29 = 276;
LABEL_64:
  ERR_put_error(16, 0, v28, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", v29);
  v27 = 47;
LABEL_65:
  *a3 = v27;
  return 4;
}

void sub_1A9049CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, bssl::hm_fragment *);
  std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  CBB_cleanup(va1, v20);
  _Unwind_Resume(a1);
}

uint64_t bssl::dtls1_parse_fragment(uint64_t *a1, uint64_t a2, void *a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = CBS_get_u8(a1, a2);
  if (result)
  {
    result = CBS_get_u24(a1, (a2 + 4));
    if (result)
    {
      result = CBS_get_u16(a1, (a2 + 8));
      if (result)
      {
        result = CBS_get_u24(a1, (a2 + 12));
        if (result)
        {
          result = CBS_get_u24(a1, (a2 + 16));
          if (result)
          {
            return CBS_get_bytes(a1, a3, *(a2 + 16)) != 0;
          }
        }
      }
    }
  }

  return result;
}

void bssl::dtls1_hm_fragment_mark(bssl *this, unint64_t a2, unint64_t a3)
{
  if (a2 > a3 || ((v4 = *(this + 1), (v5 = *(this + 2)) != 0) ? (v6 = v4 >= a3) : (v6 = 0), !v6))
  {
    bssl::dtls1_hm_fragment_mark();
  }

  if (!v4)
  {
    bssl::dtls1_hm_fragment_mark();
  }

  if (a2 == a3)
  {
    return;
  }

  v7 = a2 >> 3;
  v8 = -1 << (a2 & 7);
  if (a2 >> 3 == a3 >> 3)
  {
    v9 = v8 & ~(-1 << (a3 & 7));
    v10 = (v5 + v7);
LABEL_15:
    *v10 |= v9;
    goto LABEL_16;
  }

  v11 = a3 >> 3;
  *(v5 + v7) |= v8;
  v12 = v7 + 1;
  if (v7 + 1 < a3 >> 3)
  {
    do
    {
      *(*(this + 2) + v12++) = -1;
    }

    while (v11 != v12);
  }

  if ((a3 & 7) != 0)
  {
    v9 = ~(-1 << (a3 & 7));
    v10 = (*(this + 2) + v11);
    goto LABEL_15;
  }

LABEL_16:
  v13 = v4 >> 3;
  v14 = *(this + 2);
  if (v4 < 8)
  {
LABEL_20:
    v18 = v4 & 7;
    if (!v18 || (*(v14 + v13) ^ (-1 << v18)) == 0xFF)
    {
      OPENSSL_free(v14);
      *(this + 2) = 0;
    }
  }

  else
  {
    v15 = *(this + 2);
    v16 = v4 >> 3;
    while (1)
    {
      v17 = *v15++;
      if (v17 != 255)
      {
        break;
      }

      if (!--v16)
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t bssl::dtls1_get_message(SSL *ssl, uint64_t a2)
{
  v2 = *&ssl->server;
  v3 = *(v2 + 8 * (*(v2 + 50) - 7 * ((((*(v2 + 50) - ((9363 * *(v2 + 50)) >> 16)) >> 1) + ((9363 * *(v2 + 50)) >> 16)) >> 2)) + 80);
  if (!v3 || *(v3 + 16))
  {
    return 0;
  }

  *(a2 + 1) = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 4);
  *(a2 + 8) = v6 + 12;
  *(a2 + 16) = v7;
  v8 = (v7 + 12);
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *a2 = 0;
  if ((*(ssl->handshake_func + 222) & 8) == 0)
  {
    bssl::ssl_do_msg_callback(ssl, 0, 22, v6, v8);
    *(ssl->handshake_func + 111) |= 8u;
  }

  return 1;
}

void bssl::dtls1_next_message(bssl *this, ssl_st *a2)
{
  if ((*(*(this + 6) + 222) & 8) == 0)
  {
    bssl::dtls1_next_message();
  }

  v3 = *(this + 7);
  v4 = v3 + 8 * (*(v3 + 50) - 7 * ((((*(v3 + 50) - ((9363 * *(v3 + 50)) >> 16)) >> 1) + ((9363 * *(v3 + 50)) >> 16)) >> 2));
  v7 = *(v4 + 80);
  v5 = (v4 + 80);
  v6 = v7;
  if (!v7 || *(v6 + 16))
  {
    bssl::dtls1_next_message();
  }

  std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100](v5, 0);
  v8 = *(this + 6);
  ++*(*(this + 7) + 50);
  *(v8 + 222) &= ~8u;
  v9 = *(this + 7);
  if ((*v9 & 2) != 0)
  {
    *v9 |= 4u;
  }
}

void std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100](bssl::hm_fragment **a1, bssl::hm_fragment *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::hm_fragment::~hm_fragment(v3);
    OPENSSL_free(v4);
  }
}

BOOL bssl::dtls_has_unprocessed_handshake_data(bssl *this, const ssl_st *a2)
{
  v2 = 0;
  v3 = *(this + 7);
  v4 = (*(v3 + 50) - 7 * ((((*(v3 + 50) - ((9363 * *(v3 + 50)) >> 16)) >> 1) + ((9363 * *(v3 + 50)) >> 16)) >> 2));
  v5 = v3 + 80;
  v6 = 1;
  do
  {
    if ((*(*(this + 6) + 222) & 8) != 0 && v4 == v2)
    {
      v7 = *(v5 + 8 * v4);
      if (!v7 || *(v7 + 16))
      {
        bssl::dtls_has_unprocessed_handshake_data();
      }
    }

    else if (*(v5 + 8 * v2))
    {
      return v6;
    }

    v6 = v2++ < 6;
  }

  while (v2 != 7);
  return v6;
}

uint64_t bssl::dtls1_open_change_cipher_spec(uint64_t a1, unint64_t *a2, char *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1 + 56);
  v6 = *v5;
  if ((*v5 & 1) == 0)
  {
    result = bssl::dtls1_open_handshake(a1, a2, a3, a4, a5);
    if (result)
    {
      return result;
    }

    v5 = *(a1 + 56);
    v6 = *v5;
  }

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  result = 0;
  *v5 = v6 & 0xFE;
  return result;
}

uint64_t bssl::dtls_clear_outgoing_messages(uint64_t this, ssl_st *a2)
{
  v2 = this;
  v3 = *(this + 56);
  v4 = *(v3 + 304);
  v5 = v3;
  if (*(v3 + 304))
  {
    this = v3 + 136;
    do
    {
      this = bssl::Array<unsigned char>::~Array(this) + 24;
      --v4;
    }

    while (v4);
    v5 = *(v2 + 56);
  }

  *(v3 + 304) = 0;
  *(v5 + 312) = 0;
  *(v5 + 316) = 0;
  *v5 &= ~2u;
  **(v2 + 56) &= ~4u;
  return this;
}

uint64_t bssl::dtls1_init_message(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  result = CBB_init(a2, 0x40uLL);
  if (result)
  {
    result = CBB_add_u8(a2, a4);
    if (result)
    {
      result = CBB_add_u24(a2, 0);
      if (result)
      {
        result = CBB_add_u16(a2, *(*(a1 + 56) + 48));
        if (result)
        {
          result = CBB_add_u24(a2, 0);
          if (result)
          {
            return CBB_add_u24_length_prefixed(a2, a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::dtls1_finish_message(uint64_t a1, uint64_t a2, void *a3)
{
  if (bssl::CBBFinishArray(a2, a3) && a3[1] > 0xBuLL)
  {
    v5 = *a3;
    *(v5 + 1) = *(*a3 + 9);
    *(v5 + 3) = *(v5 + 11);
    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", 511);
    return 0;
  }
}

uint64_t bssl::dtls1_add_message(bssl *a1, uint64_t a2)
{
  OPENSSL_free(0);
  v4 = *(a2 + 8);
  v7[0] = *a2;
  v7[1] = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = bssl::add_outgoing(a1, 0, v7);
  OPENSSL_free(v7[0]);
  return v5;
}

uint64_t bssl::add_outgoing(bssl *this, ssl_st *a2, uint64_t a3)
{
  v4 = a2;
  if ((**(this + 7) & 2) != 0)
  {
    bssl::dtls1_stop_timer(this, a2);
    bssl::dtls_clear_outgoing_messages(this, v6);
  }

  if ((v4 & 1) == 0)
  {
    v7 = *(*(this + 6) + 280);
    if (v7 && (bssl::SSLTranscript::Update(v7 + 424, *a3, *(a3 + 8)) & 1) == 0)
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", 537);
      return 0;
    }

    ++*(*(this + 7) + 48);
  }

  *&v18 = 0;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0;
  *(&v18 + 7) = 0;
  OPENSSL_free(0);
  v9 = *(a3 + 8);
  v17 = *a3;
  v8 = v17;
  *&v18 = v9;
  *a3 = 0;
  *(a3 + 8) = 0;
  v10 = *(this + 7);
  WORD4(v18) = *(v10 + 4);
  BYTE10(v18) = v4;
  OPENSSL_free(0);
  v13 = v8;
  v14 = v9;
  v17 = 0;
  *&v18 = 0;
  v15 = WORD4(v18);
  v16 = v4;
  v11 = bssl::InplaceVector<bssl::DTLS_OUTGOING_MESSAGE,7ul>::TryPushBack(v10 + 136, &v13);
  OPENSSL_free(v13);
  v13 = 0;
  v14 = 0;
  if (!v11)
  {
    __assert_rtn("add_outgoing", "d1_both.cc", 548, "false");
  }

  OPENSSL_free(0);
  return 1;
}

void sub_1A904A4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  bssl::Array<unsigned char>::~Array(&a9);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::dtls1_add_change_cipher_spec(bssl *this, ssl_st *a2, unsigned __int16 a3)
{
  if (bssl::ssl_protocol_version(this, a2, a3) > 0x303)
  {
    return 1;
  }

  v6[0] = 0;
  v6[1] = 0;
  v4 = bssl::add_outgoing(this, 1, v6);
  OPENSSL_free(v6[0]);
  return v4;
}

uint64_t bssl::dtls1_flush_flight(bssl *this, ssl_st *a2)
{
  **(this + 7) |= 2u;
  bssl::dtls1_start_timer(this, a2);

  return bssl::send_flight(this, v3);
}

uint64_t bssl::send_flight(bssl *this, ssl_st *a2)
{
  if (*(*(this + 6) + 176))
  {
    v2 = 194;
    v3 = 733;
LABEL_3:
    ERR_put_error(16, 0, v2, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", v3);
    return 0xFFFFFFFFLL;
  }

  if (!*(this + 4))
  {
    v2 = 119;
    v3 = 738;
    goto LABEL_3;
  }

  if (*(*(this + 7) + 320) <= 0xE3u && (SSL_get_options(this) & 0x1000) == 0)
  {
    v6 = BIO_ctrl(*(this + 4), 40, 0, 0);
    if ((v6 - 228) > 0x3FFFFF1C)
    {
      *(*(this + 7) + 320) = 1472;
      BIO_ctrl(*(this + 4), 42, 1472, 0);
    }

    else
    {
      *(*(this + 7) + 320) = v6;
    }
  }

  v7 = *(*(this + 7) + 320);
  if (v7 <= 0xE3)
  {
    bssl::send_flight();
  }

  data = 0;
  v39 = 0;
  if (!bssl::Array<unsigned char>::InitUninitialized(&data, v7))
  {
LABEL_57:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  while (2)
  {
    v9 = *(this + 7);
    v10 = *(v9 + 312);
    v11 = *(v9 + 304);
    if (v11 <= v10)
    {
      if (BIO_flush(*(this + 4)) > 0)
      {
        v4 = 1;
        goto LABEL_58;
      }

      *(*(this + 6) + 196) = 3;
      goto LABEL_57;
    }

    v12 = 0;
    v13 = 0;
    v36 = *(v9 + 316);
    v37 = *(v9 + 312);
    v15 = data;
    v14 = v39;
    while (1)
    {
      *v40 = 0xAAAAAAAAAAAAAAAALL;
      if (v11 <= v10)
      {
        __assert_rtn("seal_next_message", "d1_both.cc", 603, "ssl->d1->outgoing_written < ssl->d1->outgoing_messages.size()");
      }

      v16 = v9 + 24 * v10;
      v17 = bssl::dtls_max_seal_overhead(this, *(v16 + 152), v8);
      v19 = bssl::dtls_seal_prefix_len(this, *(v16 + 152), v18);
      if (*(v16 + 154) != 1)
      {
        break;
      }

      if (v17 + 1 > v14)
      {
        goto LABEL_53;
      }

      if (!bssl::dtls_seal_record(this, v15, v40, v14, 20, &bssl::seal_next_message(ssl_st *,unsigned char *,unsigned long *,unsigned long,bssl::DTLS_OUTGOING_MESSAGE const*)::kChangeCipherSpec, 1, *(v16 + 152), v35))
      {
        goto LABEL_57;
      }

      bssl::ssl_do_msg_callback(this, 1, 20, &bssl::seal_next_message(ssl_st *,unsigned char *,unsigned long *,unsigned long,bssl::DTLS_OUTGOING_MESSAGE const*)::kChangeCipherSpec, 1);
      v20 = *v40;
      v12 += *v40;
LABEL_48:
      v15 = (v15 + v20);
      v14 = (v14 - v20);
      v9 = *(this + 7);
      LOBYTE(v10) = *(v9 + 312) + 1;
      *(v9 + 312) = v10;
      v11 = *(v9 + 304);
      v13 = 1;
      if (v11 <= v10)
      {
        goto LABEL_54;
      }
    }

    v21 = v19;
    v45 = 0xAAAAAAAAAAAAAAAALL;
    v46 = 0xAAAAAAAAAAAAAAAALL;
    memset(v44, 170, 20);
    v22 = *(v16 + 144);
    v47 = *(v16 + 136);
    v48 = v22;
    v23 = bssl::dtls1_parse_fragment(&v47, v44, &v45);
    if (HIDWORD(v44[1]))
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    if (v24 != 1 || v46 != LODWORD(v44[2]) || v46 != HIDWORD(v44[0]) || !CBS_skip(&v45, *(*(this + 7) + 316)) || v48)
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", 637);
      goto LABEL_57;
    }

    if (v17 + 13 > v14 || v14 < v21)
    {
      goto LABEL_53;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43[1] = v25;
    v43[2] = v25;
    if (v46 >= v14 - v17 - 12)
    {
      v26 = v14 - v17 - 12;
    }

    else
    {
      v26 = v46;
    }

    v43[0] = v25;
    CBB_zero(v43);
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42[1] = v27;
    v42[2] = v27;
    v42[0] = v27;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    if (!CBB_init_fixed(v43, v15 + v21, v14 - v21) || !CBB_add_u8(v43, LOBYTE(v44[0])) || !CBB_add_u24(v43, HIDWORD(v44[0])) || !CBB_add_u16(v43, LOWORD(v44[1])) || !CBB_add_u24(v43, *(*(this + 7) + 316)) || !CBB_add_u24_length_prefixed(v43, v42) || !CBB_add_bytes(v42, v45, v26) || !CBB_finish(v43, 0, &v41))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", 663);
      goto LABEL_45;
    }

    bssl::ssl_do_msg_callback(this, 1, 22, v15 + v21, v41);
    if ((bssl::dtls_seal_record(this, v15, v40, v14, 22, v15 + v21, v41, *(v16 + 152), v35) & 1) == 0)
    {
LABEL_45:
      v31 = 0;
      goto LABEL_46;
    }

    v29 = *(this + 7);
    if (v26 == v46)
    {
      v30 = 0;
      v31 = 3;
    }

    else
    {
      v30 = *(v29 + 316) + v26;
      v31 = 2;
    }

    *(v29 + 316) = v30;
LABEL_46:
    CBB_cleanup(v43, v28);
    if ((v31 - 2) < 2)
    {
      v20 = *v40;
      v12 += *v40;
      if (v31 == 2)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

    if (!v31)
    {
      goto LABEL_57;
    }

LABEL_53:
    if ((v13 & 1) == 0)
    {
      ERR_put_error(16, 0, 169, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_both.cc", 723);
      goto LABEL_57;
    }

LABEL_54:
    v4 = BIO_write(*(this + 4), data, v12);
    if (v4 > 0)
    {
      continue;
    }

    break;
  }

  v33 = *(this + 6);
  v32 = *(this + 7);
  *(v32 + 312) = v37;
  *(v32 + 316) = v36;
  *(v33 + 196) = 3;
LABEL_58:
  OPENSSL_free(data);
  return v4;
}

void sub_1A904AAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  CBB_cleanup(va1, a2);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::dtls1_retransmit_outgoing_messages(bssl *this, ssl_st *a2)
{
  v2 = *(this + 7);
  *(v2 + 312) = 0;
  *(v2 + 316) = 0;
  return bssl::send_flight(this, a2);
}

uint64_t bssl::InplaceVector<bssl::DTLS_OUTGOING_MESSAGE,7ul>::TryPushBack(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 168) > 6uLL)
  {
    return 0;
  }

  v4 = a1 + 24 * *(a1 + 168);
  *v4 = 0;
  *(v4 + 8) = 0;
  OPENSSL_free(0);
  *v4 = 0;
  *(v4 + 8) = 0;
  v5 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v5;
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 18);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 18) = v6;
  ++*(a1 + 168);
  return v4;
}

uint64_t SSL_state_int(uint64_t a1, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *(*(a1 + 48) + 280);
  if (!v3)
  {
    return 724109320;
  }

  if (*(a1 + 180))
  {
    return bssl::ssl_server_handshake_int_state(v3);
  }

  return bssl::ssl_client_handshake_int_state(v3);
}

uint64_t x25519_init_key(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    v3 = *a2;
    *(a1 + 24) = a2[1];
    *(a1 + 8) = v3;
    X25519_public_from_private((a1 + 40), a2);
    return 1;
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/hpke/hpke.c", 159);
    return 0;
  }
}

uint64_t x25519_encap_with_seed(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a6 <= 0x1F)
  {
    v10 = 137;
    v11 = 313;
LABEL_11:
    ERR_put_error(6, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/hpke/hpke.c", v11);
    return 0;
  }

  if (a10 != 32)
  {
    v10 = 102;
    v11 = 317;
    goto LABEL_11;
  }

  result = ccrng();
  if (!result)
  {
    return result;
  }

  if (!cccurve25519_make_pub_with_rng())
  {
    if (a8 == 32)
    {
      cchpke_params_x25519_AESGCM128_HKDF_SHA256();
      if (!cchpke_initiator_setup() && !cchpke_initiator_export())
      {
        *a5 = 32;
        *a3 = 32;
        return 1;
      }

      return 0;
    }

    v10 = 134;
    v11 = 330;
    goto LABEL_11;
  }

  return 0;
}

uint64_t x25519_decap(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 == 32)
  {
    cchpke_params_x25519_AESGCM128_HKDF_SHA256();
    if (!cchpke_responder_setup() && !cchpke_responder_export())
    {
      *a3 = 32;
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 0, 134, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/hpke/hpke.c", 357);
  }

  return 0;
}

uint64_t EVP_HPKE_CTX_setup_sender(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, size_t a11)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v19;
  v22 = v19;
  RAND_bytes(buf, *(a5 + 24));
  return EVP_HPKE_CTX_setup_sender_with_seed_for_testing(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, buf, *(a5 + 24));
}

uint64_t EVP_HPKE_CTX_setup_sender_with_seed_for_testing(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, size_t a11, uint64_t a12, uint64_t a13)
{
  v25 = *MEMORY[0x1E69E9840];
  bzero(a1, 0x2C8uLL);
  EVP_AEAD_CTX_zero(a1 + 3);
  *(a1 + 176) = 1;
  a1[1] = a7;
  a1[2] = a6;
  *a1 = a5;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v20;
  v24[1] = v20;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if ((*(a5 + 56))(a5, v24, &v23, a2, a3, a4, a8, a9, a12, a13) && hpke_key_schedule(a1, 0, v24, v23, a10, a11))
  {
    return 1;
  }

  EVP_AEAD_CTX_cleanup(a1 + 3);
  return 0;
}

uint64_t hpke_key_schedule(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = -21846;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  result = hpke_build_suite_id(a1, &v34);
  if (result)
  {
    v13 = (*(*(a1 + 16) + 8))();
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33[2] = v14;
    v33[3] = v14;
    v33[0] = v14;
    v33[1] = v14;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    result = hpke_labeled_extract(v13, v33, &v27, 0, 0, &v34, "psk_id_hash", 0, 0);
    if (result)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v32[2] = v15;
      v32[3] = v15;
      v32[0] = v15;
      v32[1] = v15;
      v26 = 0xAAAAAAAAAAAAAAAALL;
      result = hpke_labeled_extract(v13, v32, &v26, 0, 0, &v34, "info_hash", a5, a6);
      if (result)
      {
        v31 = -86;
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v30[6] = v16;
        v30[7] = v16;
        v30[4] = v16;
        v30[5] = v16;
        v30[2] = v16;
        v30[3] = v16;
        v30[0] = v16;
        v30[1] = v16;
        v25 = 0xAAAAAAAAAAAAAAAALL;
        v24[1] = v16;
        v24[2] = v16;
        v24[0] = v16;
        CBB_init_fixed(v24, v30, 129);
        result = CBB_add_u8(v24, a2);
        if (result)
        {
          result = CBB_add_bytes(v24, v33, v27);
          if (result)
          {
            result = CBB_add_bytes(v24, v32, v26);
            if (result)
            {
              result = CBB_finish(v24, 0, &v25);
              if (result)
              {
                *&v17 = 0xAAAAAAAAAAAAAAAALL;
                *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v29[2] = v17;
                v29[3] = v17;
                v29[0] = v17;
                v29[1] = v17;
                v23 = 0xAAAAAAAAAAAAAAAALL;
                result = hpke_labeled_extract(v13, v29, &v23, a3, a4, &v34, "secret", 0, 0);
                if (result)
                {
                  v18 = (*(*(a1 + 8) + 8))();
                  *&v19 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v28[3] = v19;
                  v28[4] = v19;
                  v28[1] = v19;
                  v28[2] = v19;
                  v28[0] = v19;
                  v20 = EVP_AEAD_key_length(v18);
                  result = hpke_labeled_expand(v13, v28, v20, v29, v23, &v34, "key", v30, v25);
                  if (result)
                  {
                    result = EVP_AEAD_CTX_init((a1 + 24), v18, v28, v20, 0);
                    if (result)
                    {
                      v21 = EVP_AEAD_nonce_length(v18);
                      result = hpke_labeled_expand(v13, a1 + 608, v21, v29, v23, &v34, "base_nonce", v30, v25);
                      if (result)
                      {
                        v22 = EVP_MD_size(v13);
                        return hpke_labeled_expand(v13, a1 + 632, v22, v29, v23, &v34, "exp", v30, v25);
                      }
                    }
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

uint64_t EVP_HPKE_CTX_setup_recipient(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  bzero(a1, 0x2C8uLL);
  EVP_AEAD_CTX_zero(a1 + 3);
  *(a1 + 176) = 0;
  v16 = *a2;
  a1[1] = a4;
  a1[2] = a3;
  *a1 = v16;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v17;
  v20[1] = v17;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if ((*(v16 + 64))(a2, v20, &v19, a5, a6) && hpke_key_schedule(a1, 0, v20, v19, a7, a8))
  {
    return 1;
  }

  EVP_AEAD_CTX_cleanup(a1 + 3);
  return 0;
}

uint64_t EVP_HPKE_CTX_open(uint64_t a1, char *a2, size_t *a3, size_t a4, char *a5, unint64_t a6)
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 704))
  {
    v6 = 66;
    v7 = 1119;
LABEL_3:
    ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/hpke/hpke.c", v7);
    return 0;
  }

  if (*(a1 + 696) == -1)
  {
    v6 = 69;
    v7 = 1123;
    goto LABEL_3;
  }

  memset(v16, 170, 24);
  v15 = EVP_AEAD_nonce_length(*(a1 + 24));
  hpke_nonce(a1, v16, v15);
  result = EVP_AEAD_CTX_open((a1 + 24), a2, a3, a4, v16, v15, a5, a6);
  if (result)
  {
    ++*(a1 + 696);
    return 1;
  }

  return result;
}

void hpke_nonce(uint64_t a1, _BYTE *a2, size_t a3)
{
  if (a3 <= 7)
  {
    hpke_nonce_cold_1();
  }

  v3 = a3;
  v4 = a2;
  bzero(a2, a3);
  v6 = *(a1 + 696);
  for (i = -1; i != -9; --i)
  {
    v4[v3 + i] = v6;
    v6 >>= 8;
  }

  v8 = (a1 + 608);
  do
  {
    v9 = *v8++;
    *v4++ ^= v9;
    --v3;
  }

  while (v3);
}

uint64_t EVP_HPKE_CTX_seal(uint64_t a1, char *a2, unint64_t *a3, size_t a4, char *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v18[3] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 704))
  {
    v16 = 66;
    v17 = 1143;
LABEL_7:
    ERR_put_error(6, 0, v16, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/hpke/hpke.c", v17);
    return 0;
  }

  if (*(a1 + 696) == -1)
  {
    v16 = 69;
    v17 = 1147;
    goto LABEL_7;
  }

  memset(v18, 170, 24);
  v14 = EVP_AEAD_nonce_length(*(a1 + 24));
  hpke_nonce(a1, v18, v14);
  result = EVP_AEAD_CTX_seal(a1 + 24, a2, a3, a4, v18, v14, a5, a6);
  if (result)
  {
    ++*(a1 + 696);
    return 1;
  }

  return result;
}

uint64_t hpke_build_suite_id(unsigned __int16 **a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = v3;
  v5[2] = v3;
  v5[0] = v3;
  CBB_init_fixed(v5, a2, 10);
  result = CBB_add_bytes(v5, "HPKE", 4uLL);
  if (result)
  {
    result = CBB_add_u16(v5, **a1);
    if (result)
    {
      result = CBB_add_u16(v5, *a1[2]);
      if (result)
      {
        return CBB_add_u16(v5, *a1[1]) != 0;
      }
    }
  }

  return result;
}

BOOL hpke_labeled_expand(EVP_MD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const char *a7, const void *a8, size_t a9)
{
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = v17;
  v24[2] = v17;
  v24[0] = v17;
  if (CBB_init(v24, 0) && CBB_add_u16(v24, a3) && CBB_add_bytes(v24, "HPKE-v1", 7uLL) && CBB_add_bytes(v24, a6, 0xAuLL) && (v19 = strlen(a7), CBB_add_bytes(v24, a7, v19)) && CBB_add_bytes(v24, a8, a9))
  {
    v20 = CBB_data(v24, v18);
    v21 = CBB_len(v24);
    v22 = HKDF_expand(a2, a3, a1, a4, a5, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  CBB_cleanup(v24, v18);
  return v22;
}

BOOL hpke_labeled_extract(EVP_MD *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, const char *a7, const void *a8, size_t a9)
{
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = v17;
  v24[2] = v17;
  v24[0] = v17;
  if (CBB_init(v24, 0) && CBB_add_bytes(v24, "HPKE-v1", 7uLL) && CBB_add_bytes(v24, a6, 0xAuLL) && (v19 = strlen(a7), CBB_add_bytes(v24, a7, v19)) && CBB_add_bytes(v24, a8, a9))
  {
    v20 = CBB_data(v24, v18);
    v21 = CBB_len(v24);
    v22 = HKDF_extract(a2, a3, a1, v20, v21, a4, a5) != 0;
  }

  else
  {
    v22 = 0;
  }

  CBB_cleanup(v24, v18);
  return v22;
}

uint64_t bssl::tls13_init_early_key_schedule(bssl *this, ssl_cipher_st **a2, const ssl_session_st *a3)
{
  if (*(*this + 180))
  {
    bssl::tls13_init_early_key_schedule();
  }

  if (*(this + 195))
  {
    v5 = 472;
  }

  else
  {
    v5 = 424;
  }

  v6 = bssl::ssl_session_protocol_version(a2, a2);
  result = bssl::init_key_schedule(this, (this + v5), v6, a2[25], v7);
  if (result)
  {
    v9 = *(a2 + 58);

    return bssl::hkdf_extract_to_secret(this, (this + v5), a2 + 10, v9);
  }

  return result;
}

uint64_t bssl::tls13_derive_early_secret(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  if ((*(*this + 180) & 1) != 0 || !*(this + 195))
  {
    v4 = 424;
  }

  else
  {
    v4 = 472;
  }

  result = bssl::derive_secret_with_transcript(this, this + 81, (this + v4), "c e traffic", 0xBuLL);
  if (result)
  {
    v6 = *(this + 129);

    return bssl::ssl_log_secret(v3, "CLIENT_EARLY_TRAFFIC_SECRET", this + 81, v6);
  }

  return result;
}

uint64_t bssl::tls13_rotate_traffic_key(SSL *a1, uint64_t a2)
{
  handshake_func = a1->handshake_func;
  if (a2)
  {
    v5 = 296;
  }

  else
  {
    v5 = 345;
  }

  v6 = 344;
  if (!a2)
  {
    v6 = 393;
  }

  v7 = *(handshake_func + v6);
  session = SSL_get_session(a1);
  digest = bssl::ssl_session_get_digest(session, v9);
  is_dtls = SSL_is_dtls(a1);
  result = bssl::hkdf_expand_label(handshake_func + v5, v7, digest, handshake_func + v5, v7, "traffic upd", 0xBuLL, v12, 0, 0, is_dtls != 0);
  if (result)
  {

    return bssl::tls13_set_traffic_key(a1, 3, a2, session, handshake_func + v5, v7);
  }

  return result;
}

uint64_t bssl::tls13_export_keying_material(SSL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7, uint64_t a8, const void *a9, size_t a10)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    bssl::tls13_export_keying_material();
  }

  session = SSL_get_session(a1);
  digest = bssl::ssl_session_get_digest(session, v17);
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  md[2] = v19;
  md[3] = v19;
  md[0] = v19;
  md[1] = v19;
  v35 = v19;
  v36 = v19;
  *v33 = v19;
  v34 = v19;
  v30 = -1431655766;
  size = -1431655766;
  result = EVP_Digest(a9, a10, md, &size, digest, 0);
  if (result)
  {
    result = EVP_Digest(0, 0, v33, &v30, digest, 0);
    if (result)
    {
      v21 = v30;
      v28 = size;
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v32[2] = v22;
      v32[3] = v22;
      v32[0] = v22;
      v32[1] = v22;
      v23 = EVP_MD_size(digest);
      is_dtls = SSL_is_dtls(a1);
      result = bssl::hkdf_expand_label(v32, v23, digest, a4, a5, a6, a7, v25, v33, v21, is_dtls != 0);
      if (result)
      {
        v26 = SSL_is_dtls(a1) != 0;
        return bssl::hkdf_expand_label(a2, a3, digest, v32, v23, "exporter", 8uLL, v27, md, v28, v26);
      }
    }
  }

  return result;
}

uint64_t bssl::tls13_write_psk_binder(unsigned __int8 ***a1, ssl_session_st *a2, char *a3, size_t a4, size_t *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  digest = bssl::ssl_session_get_digest((*a1)[13], a2);
  v12 = EVP_MD_size(digest);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[2] = v13;
  __src[3] = v13;
  __src[0] = v13;
  __src[1] = v13;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v14 = v10[13];
  v15 = v14[440];
  v16 = SSL_is_dtls(*a1) != 0;
  v17 = bssl::tls13_psk_binder(__src, &v20, v14, a2, a3, a4, v12 + 3, v16, v15 >> 7);
  if (v20 == v12)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    if (a4 < v12)
    {
      abort();
    }

    if (v12)
    {
      memcpy(&a3[a4 - v12], __src, v12);
    }

    if (a5)
    {
      *a5 = v12;
    }
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_enc.cc", 528);
  }

  return v18;
}

uint64_t bssl::tls13_psk_binder(unsigned __int8 *a1, ssl_session_st *a2, bssl *this, bssl::SSLTranscript *a4, const void *a5, size_t a6, size_t a7, char a8, char a9)
{
  v40 = *MEMORY[0x1E69E9840];
  digest = bssl::ssl_session_get_digest(this, a2);
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v17;
  v39 = v17;
  *md = v17;
  v37 = v17;
  size = -1431655766;
  memset(v35, 0, sizeof(v35));
  v28 = 0xAAAAAAAAAAAAAAAALL;
  memset(v34, 0, sizeof(v34));
  v18 = EVP_MD_size(digest);
  if (!EVP_Digest(0, 0, md, &size, digest, 0) || !HKDF_extract(v35, &v28, digest, this + 10, *(this + 58), 0, 0))
  {
    return 0;
  }

  v20 = a9 ? "ext binder" : "res binder";
  if (!bssl::hkdf_expand_label(v34, v18, digest, v35, v28, v20, 0xAuLL, v19, md, size, a8))
  {
    return 0;
  }

  if (a6 < a7)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_enc.cc", 483);
    return 0;
  }

  if (a6 >= a6 - a7)
  {
    a6 -= a7;
  }

  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32 = v23;
  v33 = v23;
  *v30 = v23;
  v31 = v23;
  s = -1431655766;
  *&ctx.digest = v23;
  *&ctx.flags = v23;
  EVP_MD_CTX_init(&ctx);
  if (bssl::SSLTranscript::CopyToHashContext(a4, &ctx, digest) && EVP_DigestUpdate(&ctx, a5, a6) && EVP_DigestFinal_ex(&ctx, v30, &s) && bssl::tls13_verify_data(a1, a2, digest, v34, v18, v30, s, a8))
  {
    v24 = *&a2->ssl_version;
    if (v24 != EVP_MD_size(digest))
    {
      __assert_rtn("tls13_psk_binder", "tls13_enc.cc", 502, "*out_len == EVP_MD_size(digest)");
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  EVP_MD_CTX_cleanup(&ctx);
  return v21;
}

void sub_1A904C2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, EVP_MD_CTX *ctx)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t bssl::tls13_verify_psk_binder(unsigned __int8 ***a1, bssl *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[2] = v7;
  v18[3] = v7;
  v18[0] = v7;
  v18[1] = v7;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v10 = *(a4 + 8);
  v11 = SSL_is_dtls(*a1) != 0;
  if (bssl::tls13_psk_binder(v18, &v17, a2, (a1 + 53), v8, v9, v10 + 2, v11, 0) && CBS_get_u8_length_prefixed(a4, &v15))
  {
    if (v16 == v17 && !CRYPTO_memcmp(v15, v18, v16))
    {
      return 1;
    }

    v12 = 142;
    v13 = 570;
  }

  else
  {
    v12 = 68;
    v13 = 559;
  }

  ERR_put_error(16, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_enc.cc", v13);
  return 0;
}

BOOL bssl::ssl_ech_accept_confirmation(unsigned __int8 ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, bssl::SSLTranscript *a6, int a7, int a8, char *d, size_t a10, size_t a11)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a10 >= a11 + 8)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v18;
    v40 = v18;
    if (a10 >= a11)
    {
      v19 = a11;
    }

    else
    {
      v19 = a10;
    }

    v38 = v18;
    *md = v18;
    s = -1431655766;
    *&ctx.digest = v18;
    *&ctx.flags = v18;
    EVP_MD_CTX_init(&ctx);
    v20 = bssl::SSLTranscript::Digest(a6);
    if (bssl::SSLTranscript::CopyToHashContext(a6, &ctx, v20) && EVP_DigestUpdate(&ctx, d, v19) && EVP_DigestUpdate(&ctx, &bssl::ssl_ech_accept_confirmation(bssl::SSL_HANDSHAKE const*,bssl::Span<unsigned char>,bssl::Span<unsigned char const>,bssl::SSLTranscript const&,BOOL,bssl::Span<unsigned char const>,unsigned long)::kZeros, 8uLL) && EVP_DigestUpdate(&ctx, &d[a11 + 8], a10 - (a11 + 8)) && EVP_DigestFinal_ex(&ctx, md, &s) && (*&v21 = 0xAAAAAAAAAAAAAAAALL, *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL, v36[2] = v21, v36[3] = v21, v36[0] = v21, v36[1] = v21, v33 = 0xAAAAAAAAAAAAAAAALL, v22 = bssl::SSLTranscript::Digest(a6), v23 = bssl::SSLTranscript::DigestLen(a6), HKDF_extract(v36, &v33, v22, a4, a5, &bssl::ssl_ech_accept_confirmation(bssl::SSL_HANDSHAKE const*,bssl::Span<unsigned char>,bssl::Span<unsigned char const>,bssl::SSLTranscript const&,BOOL,bssl::Span<unsigned char const>,unsigned long)::kZeros, v23)))
    {
      if (a3 != 8)
      {
        __assert_rtn("ssl_ech_accept_confirmation", "tls13_enc.cc", 620, "out.size() == ECH_CONFIRMATION_SIGNAL_LEN");
      }

      v24 = bssl::SSLTranscript::Digest(a6);
      v25 = v33;
      v26 = s;
      is_dtls = SSL_is_dtls(*a1);
      if (a7)
      {
        v29 = "hrr ech accept confirmation";
      }

      else
      {
        v29 = "ech accept confirmation";
      }

      if (a7)
      {
        v30 = 27;
      }

      else
      {
        v30 = 23;
      }

      v11 = bssl::hkdf_expand_label(a2, 8, v24, v36, v25, v29, v30, v28, md, v26, is_dtls != 0);
    }

    else
    {
      v11 = 0;
    }

    EVP_MD_CTX_cleanup(&ctx);
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_enc.cc", 595);
    return 0;
  }

  return v11;
}

void sub_1A904C680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, EVP_MD_CTX *ctx)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void EVP_CIPHER_CTX_init(EVP_CIPHER_CTX *a)
{
  *&a->final[8] = 0;
  *&a->flags = 0u;
  *&a->final_used = 0u;
  *&a->buf[24] = 0u;
  *&a->app_data = 0u;
  *&a->iv[8] = 0u;
  *&a->buf[8] = 0u;
  *&a->encrypt = 0u;
  *&a->oiv[8] = 0u;
  *&a->cipher = 0u;
}

int EVP_CIPHER_CTX_cleanup(EVP_CIPHER_CTX *a)
{
  if (a->cipher)
  {
    cleanup = a->cipher->cleanup;
    if (cleanup)
    {
      (cleanup)(a);
    }
  }

  OPENSSL_free(*&a->encrypt);
  *&a->final[8] = 0;
  *&a->flags = 0u;
  *&a->final_used = 0u;
  *&a->buf[24] = 0u;
  *&a->app_data = 0u;
  *&a->iv[8] = 0u;
  *&a->buf[8] = 0u;
  *&a->encrypt = 0u;
  *&a->oiv[8] = 0u;
  *&a->cipher = 0u;
  return 1;
}

int EVP_CipherInit_ex(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher, ENGINE *impl, const unsigned __int8 *key, const unsigned __int8 *iv, int enc)
{
  if (enc == -1)
  {
    v10 = *&ctx->oiv[4];
  }

  else
  {
    v10 = enc != 0;
    *&ctx->oiv[4] = v10;
  }

  v11 = ctx->cipher;
  if (!cipher)
  {
    if (v11)
    {
      goto LABEL_16;
    }

    v14 = 114;
    v15 = 183;
    goto LABEL_30;
  }

  if (v11)
  {
    EVP_CIPHER_CTX_cleanup(ctx);
    *&ctx->oiv[4] = v10;
  }

  ctx->cipher = cipher;
  flags_low = LODWORD(cipher->flags);
  if (flags_low)
  {
    v13 = OPENSSL_malloc(flags_low);
    *&ctx->encrypt = v13;
    if (!v13)
    {
      ctx->cipher = 0;
      return v13;
    }

    v11 = ctx->cipher;
  }

  else
  {
    *&ctx->encrypt = 0;
    v11 = cipher;
  }

  *ctx->oiv = cipher->key_len;
  *&ctx->oiv[8] = 0;
  if ((v11->flags & 0x20000000000) != 0)
  {
    if (EVP_CIPHER_CTX_ctrl(ctx, 0, 0, 0))
    {
      v11 = ctx->cipher;
      goto LABEL_16;
    }

    ctx->cipher = 0;
    v14 = 107;
    v15 = 178;
LABEL_30:
    ERR_put_error(30, 0, v14, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/cipher.c.inc", v15);
    LODWORD(v13) = 0;
    return v13;
  }

LABEL_16:
  block_size = v11->block_size;
  v17 = block_size > 0x10;
  v18 = (1 << block_size) & 0x10102;
  if (v17 || v18 == 0)
  {
    EVP_CipherInit_ex_cold_2();
  }

  flags_high = HIDWORD(v11->flags);
  if ((flags_high & 0x100) != 0)
  {
    goto LABEL_40;
  }

  LODWORD(v13) = 0;
  v21 = flags_high & 0x3F;
  if (v21 > 2)
  {
    if ((v21 - 4) < 2)
    {
      ctx->key_len = 0;
      if (!iv)
      {
        goto LABEL_40;
      }

      v22 = EVP_CIPHER_CTX_iv_length(ctx);
      if (!v22)
      {
        goto LABEL_40;
      }

      v23 = v22;
      v24 = &ctx->iv[12];
      v25 = iv;
      goto LABEL_39;
    }

    if (v21 != 3)
    {
      return v13;
    }

    ctx->key_len = 0;
  }

  else if (v21 < 2)
  {
    goto LABEL_40;
  }

  if (EVP_CIPHER_CTX_iv_length(ctx) >= 0x11)
  {
    EVP_CipherInit_ex_cold_1();
  }

  if (iv)
  {
    v26 = EVP_CIPHER_CTX_iv_length(ctx);
    if (v26)
    {
      memcpy(&ctx->oiv[12], iv, v26);
    }
  }

  v27 = EVP_CIPHER_CTX_iv_length(ctx);
  if (!v27)
  {
    goto LABEL_40;
  }

  v23 = v27;
  v24 = &ctx->iv[12];
  v25 = &ctx->oiv[12];
LABEL_39:
  memcpy(v24, v25, v23);
LABEL_40:
  v28 = ctx->cipher;
  if (!key && (v28->flags & 0x8000000000) == 0 || (LODWORD(v13) = (v28->init)(ctx, key, iv, v10), v13))
  {
    HIDWORD(ctx->app_data) = 0;
    *(&ctx->key_len + 1) = 0;
    LODWORD(v13) = 1;
    *&ctx->final[8] = 0;
  }

  return v13;
}

int EVP_CIPHER_CTX_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr)
{
  if (ctx->cipher)
  {
    v4 = *&ctx->cipher->ctx_size;
    if (v4)
    {
      result = v4();
      if (result != -1)
      {
        return result;
      }

      v6 = 105;
      v7 = 631;
    }

    else
    {
      v6 = 104;
      v7 = 625;
    }
  }

  else
  {
    v6 = 114;
    v7 = 620;
  }

  ERR_put_error(30, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/cipher.c.inc", v7);
  return 0;
}

int EVP_CIPHER_CTX_iv_length(const EVP_CIPHER_CTX *ctx)
{
  cipher = ctx->cipher;
  if ((HIDWORD(ctx->cipher->flags) & 0x3F) == 6)
  {
    ptr = -1431655766;
    if (EVP_CIPHER_CTX_ctrl(ctx, 25, 0, &ptr) == 1)
    {
      return ptr;
    }

    cipher = ctx->cipher;
  }

  return cipher->iv_len;
}

int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  if (*&ctx->final[8])
  {
    v5 = 66;
    v6 = 259;
LABEL_17:
    ERR_put_error(30, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/cipher.c.inc", v6);
    return 0;
  }

  v7 = inl;
  *&ctx->final[8] = 1;
  cipher = ctx->cipher;
  block_size = ctx->cipher->block_size;
  if (block_size >= 2 && (block_size ^ 0x7FFFFFFF) < inl)
  {
    v5 = 69;
    v6 = 271;
    goto LABEL_17;
  }

  v12 = in;
  v14 = out;
  if ((cipher->flags & 0x40000000000) != 0)
  {
    v19 = (cipher->do_cipher)(ctx, out, in, inl);
    if (v19 < 0)
    {
      return 0;
    }

    *outl = v19;
LABEL_35:
    *&ctx->final[8] = 0;
    return 1;
  }

  if (inl <= 0)
  {
    *outl = 0;
    if (inl)
    {
      return 0;
    }

    goto LABEL_35;
  }

  app_data_high = HIDWORD(ctx->app_data);
  if (app_data_high)
  {
    goto LABEL_12;
  }

  if (!block_remainder(ctx, inl))
  {
    result = (ctx->cipher->do_cipher)(ctx, v14, v12, v7);
    if (!result)
    {
      *outl = 0;
      return result;
    }

    *outl = v7;
    goto LABEL_35;
  }

  app_data_high = HIDWORD(ctx->app_data);
LABEL_12:
  if (block_size >= 33)
  {
    EVP_EncryptUpdate_cold_1();
  }

  if (app_data_high)
  {
    v16 = block_size - app_data_high;
    v17 = &ctx->buf[12];
    if (v7 < v16)
    {
      memcpy(&v17[app_data_high], v12, v7);
      HIDWORD(ctx->app_data) += v7;
      *outl = 0;
      goto LABEL_35;
    }

    if (block_size != app_data_high)
    {
      memcpy(&v17[app_data_high], v12, block_size - app_data_high);
    }

    result = (ctx->cipher->do_cipher)(ctx, v14, &ctx->buf[12], block_size);
    if (!result)
    {
      return result;
    }

    v12 += v16;
    v14 += block_size;
    v7 -= v16;
  }

  else
  {
    block_size = 0;
  }

  *outl = block_size;
  v20 = block_remainder(ctx, v7);
  v21 = v7 - v20;
  if (v21 < 1)
  {
LABEL_32:
    if (v20)
    {
      memcpy(&ctx->buf[12], &v12[v21], v20);
    }

    HIDWORD(ctx->app_data) = v20;
    goto LABEL_35;
  }

  result = (ctx->cipher->do_cipher)(ctx, v14, v12, v21);
  if (result)
  {
    *outl += v21;
    goto LABEL_32;
  }

  return result;
}

uint64_t block_remainder(uint64_t a1, unsigned int a2)
{
  v2 = *(*a1 + 4);
  if (!v2)
  {
    block_remainder_cold_2();
  }

  if ((v2 & (v2 - 1)) != 0)
  {
    block_remainder_cold_1();
  }

  return (v2 - 1) & a2;
}

int EVP_EncryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned __int8 *out, int *outl)
{
  if (*&ctx->final[8])
  {
    v3 = 66;
    v4 = 352;
LABEL_3:
    ERR_put_error(30, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/cipher.c.inc", v4);
    return 0;
  }

  cipher = ctx->cipher;
  if ((ctx->cipher->flags & 0x40000000000) != 0)
  {
    v11 = (cipher->do_cipher)(ctx, out, 0, 0);
    if (v11 < 0)
    {
      return 0;
    }

    *outl = v11;
    return 1;
  }

  block_size = cipher->block_size;
  if (block_size >= 0x21)
  {
    EVP_EncryptFinal_ex_cold_1();
  }

  if (block_size == 1)
  {
    goto LABEL_8;
  }

  app_data_high = HIDWORD(ctx->app_data);
  if ((ctx->oiv[9] & 8) != 0)
  {
    if (app_data_high)
    {
      v3 = 106;
      v4 = 378;
      goto LABEL_3;
    }

LABEL_8:
    *outl = 0;
    return 1;
  }

  if (block_size > app_data_high)
  {
    memset(&ctx->buf[app_data_high + 12], block_size - app_data_high, (block_size + ~app_data_high) + 1);
  }

  result = (cipher->do_cipher)(ctx, out, &ctx->buf[12], block_size);
  if (result)
  {
    *outl = block_size;
    return 1;
  }

  return result;
}

int EVP_DecryptUpdate(EVP_CIPHER_CTX *ctx, unsigned __int8 *out, int *outl, const unsigned __int8 *in, int inl)
{
  if (*&ctx->final[8])
  {
    v5 = 66;
    v6 = 402;
LABEL_22:
    ERR_put_error(30, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/cipher.c.inc", v6);
    return 0;
  }

  cipher = ctx->cipher;
  block_size = ctx->cipher->block_size;
  if (block_size >= 2 && (block_size ^ 0x7FFFFFFF) < inl)
  {
    v5 = 69;
    v6 = 410;
    goto LABEL_22;
  }

  v14 = out;
  if ((cipher->flags & 0x40000000000) != 0)
  {
    v17 = (cipher->do_cipher)(ctx, out, in, inl);
    v18 = v17 & ~(v17 >> 31);
    result = v17 >= 0;
    *outl = v18;
    return result;
  }

  if (inl <= 0)
  {
    *outl = 0;
    return inl == 0;
  }

  if ((ctx->oiv[9] & 8) != 0)
  {

    return EVP_EncryptUpdate(ctx, out, outl, in, inl);
  }

  else
  {
    if (block_size >= 0x21)
    {
      EVP_DecryptUpdate_cold_1();
    }

    v15 = *(&ctx->key_len + 1);
    if (v15)
    {
      if (block_size)
      {
        memcpy(out, &ctx->flags, block_size);
      }

      v14 += block_size;
    }

    result = EVP_EncryptUpdate(ctx, v14, outl, in, inl);
    if (result)
    {
      if (block_size < 2 || HIDWORD(ctx->app_data))
      {
        *(&ctx->key_len + 1) = 0;
        if (!v15)
        {
          return 1;
        }
      }

      else
      {
        *outl -= block_size;
        *(&ctx->key_len + 1) = 1;
        memcpy(&ctx->flags, &v14[*outl], block_size);
        if (!v15)
        {
          return 1;
        }
      }

      *outl += block_size;
      return 1;
    }
  }

  return result;
}

int EVP_DecryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned __int8 *outm, int *outl)
{
  *outl = 0;
  if (*&ctx->final[8])
  {
    v3 = 66;
    v4 = 469;
LABEL_3:
    ERR_put_error(30, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/cipher.c.inc", v4);
    return 0;
  }

  cipher = ctx->cipher;
  if ((ctx->cipher->flags & 0x40000000000) != 0)
  {
    v9 = (cipher->do_cipher)();
    if (v9 < 0)
    {
      return 0;
    }

    *outl = v9;
  }

  else if ((ctx->oiv[9] & 8) != 0)
  {
    if (HIDWORD(ctx->app_data))
    {
      v3 = 106;
      v4 = 486;
      goto LABEL_3;
    }
  }

  else
  {
    block_size = cipher->block_size;
    if (block_size >= 2)
    {
      if (HIDWORD(ctx->app_data) || !*(&ctx->key_len + 1))
      {
        v3 = 123;
        v4 = 495;
        goto LABEL_3;
      }

      if (block_size >= 0x21)
      {
        EVP_DecryptFinal_ex_cold_1();
      }

      p_flags = &ctx->flags;
      v11 = block_size - 1;
      v12 = *(&ctx->key_len + block_size + 7);
      if (*(&ctx->key_len + block_size + 7))
      {
        v13 = block_size >= v12;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        v3 = 101;
        v4 = 504;
        goto LABEL_3;
      }

      v14 = *(&ctx->flags + v11);
      do
      {
        if (*(p_flags + v11) != v12)
        {
          v3 = 101;
          v4 = 510;
          goto LABEL_3;
        }

        --v11;
        --v14;
      }

      while (v14);
      v15 = block_size - v12;
      if (v15 >= 1)
      {
        v16 = v15;
        do
        {
          v17 = *p_flags;
          p_flags = (p_flags + 1);
          *outm++ = v17;
          --v16;
        }

        while (v16);
      }

      *outl = v15;
    }
  }

  return 1;
}

uint64_t ec_GFp_simple_group_get_curve(uint64_t a1, BIGNUM *a, BIGNUM *a3, BIGNUM *a4)
{
  if (!a || (result = BN_copy(a, (a1 + 320))) != 0)
  {
    if (!a3 || (result = ec_felem_to_bignum(a1, a3, a1 + 360), result))
    {
      if (!a4)
      {
        return 1;
      }

      result = ec_felem_to_bignum(a1, a4, a1 + 432);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

double ec_GFp_simple_point_set_to_infinity(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0;
  return result;
}

BOOL ec_GFp_simple_is_on_curve(_DWORD *a1, uint64_t a2)
{
  v5 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v6;
  v16[3] = v6;
  v16[0] = v6;
  v16[1] = v6;
  v4(a1, v16, a2);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v7;
  v14[3] = v7;
  v14[0] = v7;
  v14[1] = v7;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12[2] = v7;
  v12[3] = v7;
  v12[0] = v7;
  v12[1] = v7;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v7;
  v10[3] = v7;
  v10[0] = v7;
  v10[1] = v7;
  v4(a1, v14, a2 + 144);
  v4(a1, v12, v14);
  v5(a1, v10, v12, v14);
  if (a1[132])
  {
    ec_felem_add(a1, v14, v12, v12);
    ec_felem_add(a1, v14, v14, v12);
    ec_felem_sub(a1, v16, v16, v14);
  }

  else
  {
    v5(a1, v14, v12, a1 + 90);
    ec_felem_add(a1, v16, v16, v14);
  }

  v5(a1, v16, v16, a2);
  v5(a1, v14, a1 + 27, v10);
  ec_felem_add(a1, v16, v16, v14);
  v4(a1, v14, a2 + 72);
  ec_felem_sub(a1, v14, v14, v16);
  v8 = ec_felem_non_zero_mask(a1, v14);
  return (ec_felem_non_zero_mask(a1, (a2 + 144)) & v8 & 1) == 0;
}

uint64_t ec_GFp_simple_points_equal(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v8;
  v17[3] = v8;
  v17[0] = v8;
  v17[1] = v8;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v15[2] = v8;
  v15[3] = v8;
  v15[0] = v8;
  v15[1] = v8;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v13[2] = v8;
  v13[3] = v8;
  v13[0] = v8;
  v13[1] = v8;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v8;
  v11[3] = v8;
  v11[0] = v8;
  v11[1] = v8;
  v6(a1, v11, a3 + 18);
  v7(a1, v17, a2, v11);
  v6(a1, v13, (a2 + 144));
  v7(a1, v15, a3, v13);
  ec_felem_sub(a1, v17, v17, v15);
  LODWORD(v6) = ec_felem_non_zero_mask(a1, v17);
  v7(a1, v11, v11, a3 + 9);
  v7(a1, v17, a2 + 72, v11);
  v7(a1, v13, v13, (a2 + 144));
  v7(a1, v15, (a3 + 9), v13);
  ec_felem_sub(a1, v17, v17, v15);
  LODWORD(v6) = ec_felem_non_zero_mask(a1, v17) | v6;
  LODWORD(a2) = ec_felem_non_zero_mask(a1, (a2 + 144));
  v9 = ec_felem_non_zero_mask(a1, a3 + 18);
  return (a2 & ~v6) & v9 & 1 | (((v9 | a2) & 1) == 0);
}

uint64_t ec_GFp_simple_cmp_x_coordinate(uint64_t a1, uint64_t a2, void *a3)
{
  result = ec_felem_non_zero_mask(a1, (a2 + 144));
  if (result)
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8[2] = v7;
    v8[3] = v7;
    v8[0] = v7;
    v8[1] = v7;
    result = ec_get_x_coordinate_as_scalar(a1, v8, a2);
    if (result)
    {
      return ec_scalar_equal_vartime(a1, v8, a3);
    }
  }

  return result;
}

BOOL HKDF(uint64_t a1, uint64_t a2, EVP_MD *md, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = EVP_MD_type(md);
  boringssl_crypto_hash_nid_to_cc_digest(v9);
  return cchkdf() == 0;
}

void bn_mont_ctx_cleanup(BIGNUM *a1)
{
  BN_free(a1);

  BN_free(a1 + 1);
}

BN_MONT_CTX *BN_MONT_CTX_new(void)
{
  v0 = OPENSSL_malloc(0x40uLL);
  v1 = v0;
  if (v0)
  {
    *&v0[1].top = 0u;
    *&v0[2].d = 0u;
    *&v0->d = 0u;
    *&v0->neg = 0u;
    BN_init(v0);
    BN_init(v1 + 1);
  }

  return v1;
}

uint64_t bn_mont_ctx_set_N_and_n0(uint64_t a1, const BIGNUM *a2)
{
  if (BN_is_zero(a2))
  {
    v4 = 105;
    v5 = 170;
LABEL_3:
    ERR_put_error(3, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/montgomery.c.inc", v5);
    return 0;
  }

  if (!BN_is_odd(a2))
  {
    v4 = 104;
    v5 = 174;
    goto LABEL_3;
  }

  if (BN_is_negative(a2))
  {
    v4 = 109;
    v5 = 178;
    goto LABEL_3;
  }

  if (!bn_fits_in_words(a2, 0x400uLL))
  {
    v4 = 102;
    v5 = 182;
    goto LABEL_3;
  }

  if (!BN_copy((a1 + 24), a2))
  {
    v4 = 68;
    v5 = 188;
    goto LABEL_3;
  }

  bn_set_minimal_width(a1 + 24);
  *(a1 + 48) = bn_mont_n0((a1 + 24));
  *(a1 + 56) = 0;
  return 1;
}

BN_MONT_CTX *BN_MONT_CTX_new_consttime(const BIGNUM *a1, BN_CTX *a2)
{
  v4 = BN_MONT_CTX_new();
  v5 = v4;
  if (!v4 || !bn_mont_ctx_set_N_and_n0(v4, a1) || !bn_mont_ctx_set_RR_consttime(v5, a2))
  {
    BN_MONT_CTX_free(v5);
    return 0;
  }

  return v5;
}

int BN_mod_mul_montgomery(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_MONT_CTX *mont, BN_CTX *ctx)
{
  if (!a->neg && !b->neg)
  {
    BN_CTX_start(ctx);
    v12 = BN_CTX_get(ctx);
    if (v12)
    {
      v13 = v12;
      if (a == b)
      {
        if (bn_sqr_consttime(v12, a, ctx))
        {
          goto LABEL_8;
        }
      }

      else if (bn_mul_consttime(v12, a, b, ctx))
      {
LABEL_8:
        v6 = BN_from_montgomery_word(r, v13, mont);
LABEL_11:
        BN_CTX_end(ctx);
        return v6;
      }
    }

    v6 = 0;
    goto LABEL_11;
  }

  ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/montgomery.c.inc", 421);
  return 0;
}

int BN_from_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (v8 && (v9 = v8, BN_copy(v8, a)))
  {
    v10 = BN_from_montgomery_word(r, v9, mont);
  }

  else
  {
    v10 = 0;
  }

  BN_CTX_end(ctx);
  return v10;
}

uint64_t BN_from_montgomery_word(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/montgomery.c.inc", 323);
    return 0;
  }

  else
  {
    v6 = *(a3 + 32);
    if (v6)
    {
      result = bn_resize_words(a2, 2 * v6);
      if (result)
      {
        result = bn_wexpand(a1, *(a3 + 32));
        if (result)
        {
          v8 = *(a3 + 32);
          *(a1 + 8) = v8;
          *(a1 + 16) = 0;
          v9 = *a1;
          v10 = *a2;
          v11 = *(a2 + 8);

          return bn_from_montgomery_in_place(v9, v8, v10, v11, a3);
        }
      }
    }

    else
    {
      *(a1 + 8) = 0;
      return 1;
    }
  }

  return result;
}

uint64_t bn_one_to_montgomery(BIGNUM *r, BIGNUM *a, BN_CTX *ctx)
{
  top = a[1].top;
  if (top >= 1 && (a[1].d[top - 1] & 0x8000000000000000) != 0)
  {
    result = bn_wexpand(&r->d, top);
    if (result)
    {
      d = a[1].d;
      v8 = r->d;
      *r->d = -*d;
      v9 = a[1].top;
      if (v9 >= 2)
      {
        v10 = (v8 + 1);
        v11 = (d + 1);
        v12 = v9 - 1;
        do
        {
          v13 = *v11++;
          *v10++ = ~v13;
          --v12;
        }

        while (v12);
      }

      r->top = v9;
      r->neg = 0;
      return 1;
    }
  }

  else
  {

    return BN_from_montgomery(r, a, a, ctx);
  }

  return result;
}

uint64_t BCM_sha384_init(uint64_t a1)
{
  *a1 = xmmword_1A90A94B0;
  *(a1 + 16) = xmmword_1A90A94C0;
  *(a1 + 32) = xmmword_1A90A94D0;
  *(a1 + 48) = xmmword_1A90A94E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 208) = 0x3000000000;
  return 0;
}

uint64_t BCM_sha512_init(uint64_t a1)
{
  *a1 = xmmword_1A90A94F0;
  *(a1 + 16) = xmmword_1A90A9500;
  *(a1 + 32) = xmmword_1A90A9510;
  *(a1 + 48) = xmmword_1A90A9520;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 208) = 0x4000000000;
  return 0;
}

uint64_t sha512_final_impl(void *a1, unint64_t a2, int8x16_t *a3)
{
  v3 = a3;
  v6 = a3 + 5;
  v7 = a3[13].u32[0];
  a3[5].i8[v7] = 0x80;
  v8 = v7 + 1;
  if (v7 < 0x70)
  {
    if (v7 == 111)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 != 127)
    {
      bzero(&v6->i8[v8], 127 - v7);
    }

    sha512_block_data_order(v3, v6, 1);
    v8 = 0;
  }

  bzero(&v6->i8[v8], 112 - v8);
LABEL_7:
  v9 = vrev64q_s8(v3[4]);
  v3[12] = vextq_s8(v9, v9, 8uLL);
  result = sha512_block_data_order(v3, v6, 1);
  if ((a2 & 7) != 0)
  {
    sha512_final_impl_cold_1();
  }

  if (a2)
  {
    v11 = a2 >> 3;
    do
    {
      v12 = v3->i64[0];
      v3 = (v3 + 8);
      *a1++ = bswap64(v12);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t BCM_sha512_update(uint64_t a1, char *__src, size_t __n)
{
  if (!__n)
  {
    return 0;
  }

  v3 = __n;
  v4 = __src;
  v6 = (a1 + 80);
  *(a1 + 64) += __PAIR128__(__n >> 61, 8 * __n);
  v7 = *(a1 + 208);
  if (v7)
  {
    v8 = 128 - v7;
    v9 = __n - (128 - v7);
    if (__n < 128 - v7)
    {
      memcpy(v6 + v7, __src, __n);
      LODWORD(v3) = *(a1 + 208) + v3;
      result = 1;
LABEL_13:
      *(a1 + 208) = v3;
      return result;
    }

    if (v7 != 128)
    {
      memcpy(v6 + v7, __src, 128 - v7);
    }

    *(a1 + 208) = 0;
    v4 = (v4 + v8);
    sha512_block_data_order(a1, v6, 1);
    v3 = v9;
  }

  if (v3 >= 0x80)
  {
    sha512_block_data_order(a1, v4, v3 >> 7);
    v11 = v4 + v3;
    v3 &= 0x7Fu;
    v4 = &v11[-v3];
  }

  if (v3)
  {
    memcpy(v6, v4, v3);
    result = 0;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sha512_block_data_order(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v122 = result;
  if (a3)
  {
    v4 = *result;
    v3 = *(result + 8);
    v6 = *(result + 16);
    v5 = *(result + 24);
    v8 = *(result + 32);
    v7 = *(result + 40);
    v10 = *(result + 48);
    v9 = *(result + 56);
    do
    {
      v132 = a3;
      v11 = 0;
      v123 = v9;
      v138 = bswap64(*a2);
      v12 = v9 + (v10 & ~v8 | v8 & v7) + v138 + (__ROR8__(v8, 14) ^ __ROR8__(v8, 18) ^ __ROR8__(v8, 41)) + 0x428A2F98D728AE22;
      v127 = v5;
      v13 = v12 + v5;
      v14 = (__ROR8__(v4, 28) ^ __ROR8__(v4, 34) ^ __ROR8__(v4, 39)) + ((v3 ^ v6) & v4 ^ v3 & v6) + v12;
      v15 = bswap64(a2[1]);
      v124 = v10;
      v16 = v10 + v15 + (v13 & v8 | v7 & ~v13) + 0x7137449123EF65CDLL + (__ROR8__(v13, 14) ^ __ROR8__(v13, 18) ^ __ROR8__(v13, 41));
      v128 = v6;
      v17 = v16 + v6;
      v18 = (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + (v14 & (v4 ^ v3) ^ v4 & v3) + v16;
      v19 = bswap64(a2[2]);
      v125 = v7;
      v20 = v7 + v19 + (v17 & v13 | v8 & ~v17) - 0x4A3F043013B2C4D1 + (__ROR8__(v17, 14) ^ __ROR8__(v17, 18) ^ __ROR8__(v17, 41));
      v129 = v3;
      v21 = v20 + v3;
      v22 = (__ROR8__(v18, 28) ^ __ROR8__(v18, 34) ^ __ROR8__(v18, 39)) + (v18 & (v14 ^ v4) ^ v14 & v4) + v20;
      v23 = bswap64(a2[3]);
      v126 = v8;
      v24 = v8 + v23 + (v21 & v17 | v13 & ~v21) - 0x164A245A7E762444 + (__ROR8__(v21, 14) ^ __ROR8__(v21, 18) ^ __ROR8__(v21, 41));
      v130 = v4;
      v25 = v24 + v4;
      v26 = (__ROR8__(v22, 28) ^ __ROR8__(v22, 34) ^ __ROR8__(v22, 39)) + (v22 & (v18 ^ v14) ^ v18 & v14) + v24;
      v27 = bswap64(a2[4]);
      v28 = v13 + v27 + (v25 & v21 | v17 & ~v25) + 0x3956C25BF348B538 + (__ROR8__(v25, 14) ^ __ROR8__(v25, 18) ^ __ROR8__(v25, 41));
      v29 = v28 + v14;
      v30 = (__ROR8__(v26, 28) ^ __ROR8__(v26, 34) ^ __ROR8__(v26, 39)) + (v26 & (v22 ^ v18) ^ v22 & v18) + v28;
      v31 = bswap64(a2[5]);
      v32 = v31 + v17 + (v29 & v25 | v21 & ~v29) + 0x59F111F1B605D019 + (__ROR8__(v29, 14) ^ __ROR8__(v29, 18) ^ __ROR8__(v29, 41));
      v33 = v32 + v18;
      v34 = (__ROR8__(v30, 28) ^ __ROR8__(v30, 34) ^ __ROR8__(v30, 39)) + (v30 & (v26 ^ v22) ^ v26 & v22) + v32;
      v35 = bswap64(a2[6]);
      v36 = v35 + v21 + (v33 & v29 | v25 & ~v33) - 0x6DC07D5B50E6B065 + (__ROR8__(v33, 14) ^ __ROR8__(v33, 18) ^ __ROR8__(v33, 41));
      v37 = v36 + v22;
      v38 = (__ROR8__(v34, 28) ^ __ROR8__(v34, 34) ^ __ROR8__(v34, 39)) + (v34 & (v30 ^ v26) ^ v30 & v26) + v36;
      v137 = bswap64(a2[7]);
      v39 = v137 + v25 + (v37 & v33 | v29 & ~v37) - 0x54E3A12A25927EE8 + (__ROR8__(v37, 14) ^ __ROR8__(v37, 18) ^ __ROR8__(v37, 41));
      v40 = v39 + v26;
      v41 = (__ROR8__(v38, 28) ^ __ROR8__(v38, 34) ^ __ROR8__(v38, 39)) + (v38 & (v34 ^ v30) ^ v34 & v30) + v39;
      v136 = bswap64(a2[8]);
      v42 = v136 + v29 + (v40 & v37 | v33 & ~v40) - 0x27F855675CFCFDBELL + (__ROR8__(v40, 14) ^ __ROR8__(v40, 18) ^ __ROR8__(v40, 41));
      v43 = v42 + v30;
      v44 = (__ROR8__(v41, 28) ^ __ROR8__(v41, 34) ^ __ROR8__(v41, 39)) + (v41 & (v38 ^ v34) ^ v38 & v34) + v42;
      v135 = bswap64(a2[9]);
      v45 = v135 + v33 + (v43 & v40 | v37 & ~v43) + 0x12835B0145706FBELL + (__ROR8__(v43, 14) ^ __ROR8__(v43, 18) ^ __ROR8__(v43, 41));
      v46 = v45 + v34;
      v47 = (__ROR8__(v44, 28) ^ __ROR8__(v44, 34) ^ __ROR8__(v44, 39)) + (v44 & (v41 ^ v38) ^ v41 & v38) + v45;
      v48 = bswap64(a2[10]);
      v49 = v48 + v37 + (v46 & v43 | v40 & ~v46) + 0x243185BE4EE4B28CLL + (__ROR8__(v45 + v34, 14) ^ __ROR8__(v45 + v34, 18) ^ __ROR8__(v46, 41));
      v50 = v49 + v38;
      v51 = (__ROR8__(v47, 28) ^ __ROR8__(v47, 34) ^ __ROR8__(v47, 39)) + (v47 & (v44 ^ v41) ^ v44 & v41) + v49;
      v52 = bswap64(a2[11]);
      v53 = v52 + v40 + (v50 & v46 | v43 & ~v50) + 0x550C7DC3D5FFB4E2 + (__ROR8__(v49 + v38, 14) ^ __ROR8__(v49 + v38, 18) ^ __ROR8__(v50, 41));
      v54 = v53 + v41;
      v55 = (__ROR8__(v51, 28) ^ __ROR8__(v51, 34) ^ __ROR8__(v51, 39)) + (v51 & (v47 ^ v44) ^ v47 & v44) + v53;
      v56 = bswap64(a2[12]);
      v57 = v56 + v43 + (v54 & v50 | v46 & ~v54) + 0x72BE5D74F27B896FLL + (__ROR8__(v54, 14) ^ __ROR8__(v54, 18) ^ __ROR8__(v54, 41));
      v58 = v57 + v44;
      v59 = (__ROR8__(v55, 28) ^ __ROR8__(v55, 34) ^ __ROR8__(v55, 39)) + (v55 & (v51 ^ v47) ^ v51 & v47) + v57;
      v60 = bswap64(a2[13]);
      v61 = v60 + v46 + (v58 & v54 | v50 & ~v58) - 0x7F214E01C4E9694FLL + (__ROR8__(v57 + v44, 14) ^ __ROR8__(v57 + v44, 18) ^ __ROR8__(v58, 41));
      v62 = v61 + v47;
      v63 = (__ROR8__(v59, 28) ^ __ROR8__(v59, 34) ^ __ROR8__(v59, 39)) + (v59 & (v55 ^ v51) ^ v55 & v51) + v61;
      v131 = a2;
      v64 = bswap64(a2[14]);
      v65 = v64 + v50 + (v62 & v58 | v54 & ~v62) - 0x6423F958DA38EDCBLL + (__ROR8__(v61 + v47, 14) ^ __ROR8__(v61 + v47, 18) ^ __ROR8__(v62, 41));
      result = v65 + v51;
      v66 = (__ROR8__(v63, 28) ^ __ROR8__(v63, 34) ^ __ROR8__(v63, 39)) + (v63 & (v59 ^ v55) ^ v59 & v55) + v65;
      v67 = bswap64(a2[15]);
      v68 = v67 + v54 + (result & v62 | v58 & ~result) - 0x3E640E8B3096D96CLL + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
      v69 = v68 + v55;
      v70 = (__ROR8__(v66, 28) ^ __ROR8__(v66, 34) ^ __ROR8__(v66, 39)) + (v66 & (v63 ^ v59) ^ v63 & v59) + v68;
      v71 = &unk_1A90A9638;
      do
      {
        v134 = v11;
        v72 = v135 + v138 + (__ROR8__(v64, 19) ^ __ROR8__(v64, 61) ^ (v64 >> 6)) + (__ROR8__(v15, 1) ^ __ROR8__(v15, 8) ^ (v15 >> 7));
        v73 = v72 + v58 + (v62 & ~v69 | v69 & result) + (__ROR8__(v69, 14) ^ __ROR8__(v69, 18) ^ __ROR8__(v69, 41)) + *(v71 - 15);
        v74 = v73 + v59;
        v75 = (__ROR8__(v70, 28) ^ __ROR8__(v70, 34) ^ __ROR8__(v70, 39)) + ((v66 ^ v63) & v70 ^ v66 & v63) + v73;
        v76 = v48 + v15 + (__ROR8__(v67, 19) ^ __ROR8__(v67, 61) ^ (v67 >> 6)) + (__ROR8__(v19, 1) ^ __ROR8__(v19, 8) ^ (v19 >> 7));
        v77 = v76 + v62 + *(v71 - 14) + (v74 & v69 | result & ~v74) + (__ROR8__(v74, 14) ^ __ROR8__(v74, 18) ^ __ROR8__(v74, 41));
        v78 = v77 + v63;
        v79 = (__ROR8__(v75, 28) ^ __ROR8__(v75, 34) ^ __ROR8__(v75, 39)) + (v75 & (v70 ^ v66) ^ v70 & v66) + v77;
        v80 = v19 + v52 + (__ROR8__(v23, 1) ^ __ROR8__(v23, 8) ^ (v23 >> 7)) + (__ROR8__(v72, 19) ^ __ROR8__(v72, 61) ^ (v72 >> 6));
        v81 = v80 + result + *(v71 - 13) + (v78 & v74 | v69 & ~v78) + (__ROR8__(v77 + v63, 14) ^ __ROR8__(v77 + v63, 18) ^ __ROR8__(v78, 41));
        v82 = v81 + v66;
        v83 = (__ROR8__(v79, 28) ^ __ROR8__(v79, 34) ^ __ROR8__(v79, 39)) + (v79 & (v75 ^ v70) ^ v75 & v70) + v81;
        v84 = v76;
        v133 = v76;
        v85 = v23 + v56 + (__ROR8__(v27, 1) ^ __ROR8__(v27, 8) ^ (v27 >> 7)) + (__ROR8__(v76, 19) ^ __ROR8__(v76, 61) ^ (v76 >> 6));
        v86 = v85 + v69 + *(v71 - 12) + (v82 & (v77 + v63) | v74 & ~v82) + (__ROR8__(v82, 14) ^ __ROR8__(v82, 18) ^ __ROR8__(v82, 41));
        v87 = v86 + v70;
        v88 = (__ROR8__(v83, 28) ^ __ROR8__(v83, 34) ^ __ROR8__(v83, 39)) + (v83 & (v79 ^ v75) ^ v79 & v75) + v86;
        v27 += v60 + (__ROR8__(v31, 1) ^ __ROR8__(v31, 8) ^ (v31 >> 7)) + (__ROR8__(v80, 19) ^ __ROR8__(v80, 61) ^ (v80 >> 6));
        v89 = v27 + v74 + *(v71 - 11) + (v87 & v82 | (v77 + v63) & ~v87) + (__ROR8__(v86 + v70, 14) ^ __ROR8__(v86 + v70, 18) ^ __ROR8__(v86 + v70, 41));
        v90 = v89 + v75;
        v91 = (__ROR8__(v88, 28) ^ __ROR8__(v88, 34) ^ __ROR8__(v88, 39)) + (v88 & (v83 ^ v79) ^ v83 & v79) + v89;
        v139 = v85;
        v31 += v64 + (__ROR8__(v35, 1) ^ __ROR8__(v35, 8) ^ (v35 >> 7)) + (__ROR8__(v85, 19) ^ __ROR8__(v85, 61) ^ (v85 >> 6));
        v92 = *(v71 - 10) + v78 + v31 + (v90 & v87 | v82 & ~v90) + (__ROR8__(v89 + v75, 14) ^ __ROR8__(v89 + v75, 18) ^ __ROR8__(v90, 41));
        v93 = v92 + v79;
        v94 = (__ROR8__(v91, 28) ^ __ROR8__(v91, 34) ^ __ROR8__(v91, 39)) + (v91 & (v88 ^ v83) ^ v88 & v83) + v92;
        v35 += v67 + (__ROR8__(v137, 1) ^ __ROR8__(v137, 8) ^ (v137 >> 7)) + (__ROR8__(v27, 19) ^ __ROR8__(v27, 61) ^ (v27 >> 6));
        v95 = v35 + *(v71 - 9) + v82 + (v93 & v90 | v87 & ~v93) + (__ROR8__(v93, 14) ^ __ROR8__(v93, 18) ^ __ROR8__(v93, 41));
        v96 = v95 + v83;
        v97 = (__ROR8__(v94, 28) ^ __ROR8__(v94, 34) ^ __ROR8__(v94, 39)) + (v94 & (v91 ^ v88) ^ v91 & v88) + v95;
        v98 = (__ROR8__(v136, 1) ^ __ROR8__(v136, 8) ^ (v136 >> 7)) + v137 + v72 + (__ROR8__(v31, 19) ^ __ROR8__(v31, 61) ^ (v31 >> 6));
        v99 = *(v71 - 8) + v98 + v87 + (v96 & v93 | v90 & ~v96) + (__ROR8__(v96, 14) ^ __ROR8__(v96, 18) ^ __ROR8__(v96, 41));
        v100 = v99 + v88;
        v101 = (__ROR8__(v97, 28) ^ __ROR8__(v97, 34) ^ __ROR8__(v97, 39)) + (v97 & (v94 ^ v91) ^ v94 & v91) + v99;
        v102 = (__ROR8__(v135, 1) ^ __ROR8__(v135, 8) ^ (v135 >> 7)) + v136 + v84 + (__ROR8__(v35, 19) ^ __ROR8__(v35, 61) ^ (v35 >> 6));
        v103 = v102 + *(v71 - 7) + v90 + (v100 & v96 | v93 & ~v100) + (__ROR8__(v100, 14) ^ __ROR8__(v100, 18) ^ __ROR8__(v100, 41));
        v104 = v103 + v91;
        v105 = (__ROR8__(v101, 28) ^ __ROR8__(v101, 34) ^ __ROR8__(v101, 39)) + (v101 & (v97 ^ v94) ^ v97 & v94) + v103;
        v106 = (__ROR8__(v48, 1) ^ __ROR8__(v48, 8) ^ (v48 >> 7)) + v135 + v80 + (__ROR8__(v98, 19) ^ __ROR8__(v98, 61) ^ (v98 >> 6));
        v107 = v106 + *(v71 - 6) + v93 + (v104 & v100 | v96 & ~v104) + (__ROR8__(v103 + v91, 14) ^ __ROR8__(v103 + v91, 18) ^ __ROR8__(v103 + v91, 41));
        v108 = v107 + v94;
        v109 = (__ROR8__(v105, 28) ^ __ROR8__(v105, 34) ^ __ROR8__(v105, 39)) + (v105 & (v101 ^ v97) ^ v101 & v97) + v107;
        v48 += (__ROR8__(v52, 1) ^ __ROR8__(v52, 8) ^ (v52 >> 7)) + v139 + (__ROR8__(v102, 19) ^ __ROR8__(v102, 61) ^ (v102 >> 6));
        v110 = v48 + *(v71 - 5) + v96 + (v108 & v104 | v100 & ~v108) + (__ROR8__(v108, 14) ^ __ROR8__(v108, 18) ^ __ROR8__(v108, 41));
        v111 = v110 + v97;
        v112 = (__ROR8__(v109, 28) ^ __ROR8__(v109, 34) ^ __ROR8__(v109, 39)) + (v109 & (v105 ^ v101) ^ v105 & v101) + v110;
        v135 = v106;
        v52 += (__ROR8__(v56, 1) ^ __ROR8__(v56, 8) ^ (v56 >> 7)) + v27 + (__ROR8__(v106, 19) ^ __ROR8__(v106, 61) ^ (v106 >> 6));
        v113 = v52 + *(v71 - 4) + v100 + (v111 & v108 | v104 & ~v111) + (__ROR8__(v111, 14) ^ __ROR8__(v111, 18) ^ __ROR8__(v111, 41));
        v114 = v113 + v101;
        v115 = (__ROR8__(v112, 28) ^ __ROR8__(v112, 34) ^ __ROR8__(v112, 39)) + (v112 & (v109 ^ v105) ^ v109 & v105) + v113;
        v56 += (__ROR8__(v60, 1) ^ __ROR8__(v60, 8) ^ (v60 >> 7)) + v31 + (__ROR8__(v48, 19) ^ __ROR8__(v48, 61) ^ (v48 >> 6));
        v116 = v56 + *(v71 - 3) + v104 + (v114 & v111 | v108 & ~v114) + (__ROR8__(v113 + v101, 14) ^ __ROR8__(v113 + v101, 18) ^ __ROR8__(v114, 41));
        v58 = v116 + v105;
        v59 = (__ROR8__(v115, 28) ^ __ROR8__(v115, 34) ^ __ROR8__(v115, 39)) + (v115 & (v112 ^ v109) ^ v112 & v109) + v116;
        v60 += (__ROR8__(v64, 1) ^ __ROR8__(v64, 8) ^ (v64 >> 7)) + v35 + (__ROR8__(v52, 19) ^ __ROR8__(v52, 61) ^ (v52 >> 6));
        v117 = v60 + *(v71 - 2) + v108 + (v58 & v114 | v111 & ~v58) + (__ROR8__(v116 + v105, 14) ^ __ROR8__(v116 + v105, 18) ^ __ROR8__(v116 + v105, 41));
        v62 = v117 + v109;
        v63 = (__ROR8__(v59, 28) ^ __ROR8__(v59, 34) ^ __ROR8__(v59, 39)) + (v59 & (v115 ^ v112) ^ v115 & v112) + v117;
        v137 = v98;
        v118 = (__ROR8__(v67, 1) ^ __ROR8__(v67, 8) ^ (v67 >> 7)) + v64 + v98;
        v19 = v80;
        v64 = v118 + (__ROR8__(v56, 19) ^ __ROR8__(v56, 61) ^ (v56 >> 6));
        v119 = v64 + *(v71 - 1) + v111 + (v62 & v58 | v114 & ~v62) + (__ROR8__(v62, 14) ^ __ROR8__(v62, 18) ^ __ROR8__(v62, 41));
        result = v119 + v112;
        v66 = (__ROR8__(v63, 28) ^ __ROR8__(v63, 34) ^ __ROR8__(v63, 39)) + (v63 & (v59 ^ v115) ^ v59 & v115) + v119;
        v138 = v72;
        v136 = v102;
        v120 = (__ROR8__(v72, 1) ^ __ROR8__(v72, 8) ^ (v72 >> 7)) + v67 + v102;
        v23 = v139;
        v67 = v120 + (__ROR8__(v60, 19) ^ __ROR8__(v60, 61) ^ (v60 >> 6));
        v121 = v67 + *v71 + v114 + (result & v62 | v58 & ~result) + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
        v69 = v121 + v115;
        v70 = (__ROR8__(v66, 28) ^ __ROR8__(v66, 34) ^ __ROR8__(v66, 39)) + (v66 & (v63 ^ v59) ^ v63 & v59) + v121;
        v15 = v133;
        v11 = v134 + 16;
        v71 += 16;
      }

      while ((v134 + 16) < 0x40);
      v4 = v70 + v130;
      v3 = v66 + v129;
      *v122 = v70 + v130;
      v122[1] = v66 + v129;
      v6 = v63 + v128;
      v5 = v59 + v127;
      v122[2] = v63 + v128;
      v122[3] = v59 + v127;
      v8 = v69 + v126;
      v7 = result + v125;
      v122[4] = v69 + v126;
      v122[5] = result + v125;
      v10 = v62 + v124;
      v9 = v58 + v123;
      a2 = v131 + 16;
      v122[6] = v62 + v124;
      v122[7] = v58 + v123;
      a3 = v132 - 1;
    }

    while (v132 != 1);
  }

  return result;
}

void std::unique_ptr<spake2plus_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    SPAKE2PLUS_CTX_free(v3);
  }
}

BOOL bssl::quic_ticket_compatible(bssl *this, const ssl_session_st *a2, const bssl::SSL_CONFIG *a3)
{
  if ((*(this + 440) & 0x20) == 0)
  {
    return 1;
  }

  v4 = *(this + 57);
  return v4 && a2->tlsext_hostname == v4 && CRYPTO_memcmp(a2->next, *(this + 56), v4) == 0;
}

uint64_t bssl::resolve_ecdhe_secret(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 1536) + 6);
  v39 = -86;
  v37 = 0;
  v38 = 0;
  v36 = 50;
  if (bssl::ssl_ext_key_share_parse_clienthello(a1, &v39, &v37, &v36, a2))
  {
    if ((v39 & 1) != 0 || *(a1 + 1680))
    {
      v34 = 0;
      v35 = 0;
      v5 = *(a1 + 1688);
      if (v5)
      {
        v6 = *(a1 + 1696);
        if (bssl::Array<unsigned char>::InitUninitialized(&v34, v6) && v6)
        {
          v7 = v34;
          do
          {
            v8 = *v5++;
            *v7++ = v8;
            --v6;
          }

          while (v6);
        }

        goto LABEL_9;
      }

      v10 = *(a1 + 1592);
      if (v10 && (*(a1 + 1602) & 8) == 0 && *(v10 + 32) == v4 && *(v10 + 64))
      {
        v12 = *(v10 + 40);
        v11 = *(v10 + 48);
        if (bssl::Array<unsigned char>::InitUninitialized(a1 + 648, v11))
        {
          if (v11)
          {
            v13 = *(a1 + 648);
            do
            {
              v14 = *v12++;
              *v13++ = v14;
              --v11;
            }

            while (v11);
          }

          v16 = *(v10 + 56);
          v15 = *(v10 + 64);
          if (bssl::Array<unsigned char>::InitUninitialized(&v34, v15))
          {
            if (v15)
            {
              v17 = v34;
              do
              {
                v18 = *v16++;
                *v17++ = v18;
                --v15;
              }

              while (v15);
            }

            goto LABEL_9;
          }
        }

        bssl::ssl_send_alert(v3, 2, 80);
LABEL_34:
        v9 = 0;
        goto LABEL_35;
      }

      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33[1] = v19;
      v33[2] = v19;
      v33[0] = v19;
      CBB_zero(v33);
      v32 = 0xAAAAAAAAAAAAAAAALL;
      bssl::SSLKeyShare::Create(&v32, v4);
      if (v32 && CBB_init(v33, 0x20uLL) && (*(*v32 + 32))(v32, v33, &v34, &v36, v37, v38) && bssl::CBBFinishArray(v33, a1 + 648))
      {
        if (!v10 || (*(a1 + 1602) & 8) == 0)
        {
LABEL_31:
          std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v32, 0);
          CBB_cleanup(v33, v20);
LABEL_9:
          v9 = bssl::tls13_advance_key_schedule(a1, v34, v35);
LABEL_35:
          OPENSSL_free(v34);
          return v9;
        }

        *(v10 + 32) = v4;
        v24 = *(a1 + 648);
        v25 = *(a1 + 656);
        if (bssl::Array<unsigned char>::InitUninitialized(v10 + 40, v25))
        {
          if (v25)
          {
            v26 = *(v10 + 40);
            do
            {
              v27 = *v24++;
              *v26++ = v27;
              --v25;
            }

            while (v25);
          }

          v29 = v34;
          v28 = v35;
          if (bssl::Array<unsigned char>::InitUninitialized(v10 + 56, v35))
          {
            if (v28)
            {
              v30 = *(v10 + 56);
              do
              {
                v31 = *v29++;
                *v30++ = v31;
                --v28;
              }

              while (v28);
            }

            goto LABEL_31;
          }
        }

        v21 = 80;
      }

      else
      {
        v21 = v36;
      }

      bssl::ssl_send_alert(v3, 2, v21);
      std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v32, 0);
      CBB_cleanup(v33, v22);
      goto LABEL_34;
    }

    bssl::ssl_send_alert(v3, 2, 47);
    ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 67);
  }

  else
  {
    bssl::ssl_send_alert(v3, 2, v36);
  }

  return 0;
}

void sub_1A904F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_ext_supported_versions_add_serverhello(uint64_t a1, uint64_t *a2)
{
  result = CBB_add_u16(a2, 0x2Bu);
  if (result)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6[1] = v5;
    v6[2] = v5;
    v6[0] = v5;
    result = CBB_add_u16_length_prefixed(a2, v6);
    if (result)
    {
      result = CBB_add_u16(v6, *(*(*a1 + 48) + 208));
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::add_new_session_tickets(bssl *this, bssl::SSL_HANDSHAKE *a2, BOOL *a3)
{
  if ((*(this + 1600) & 0x10) == 0 || (v5 = *this, (SSL_get_options(*this) & 0x4000) != 0) || *(this + 210))
  {
    *a2 = 0;
    return 1;
  }

  v7 = *(*(v5 + 128) + 228);
  v8 = *(this + 748);
  if (SSL_session_reused(v5))
  {
    v8 = *(this + 749);
  }

  if (v7 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  *(*(v5 + 128) + 228) = v10;
  bssl::ssl_session_rebase_time(v5, *(this + 192), v9);
  if (*(*(v5 + 128) + 228) > 0x10u)
  {
    bssl::add_new_session_tickets();
  }

  if (!*(*(v5 + 128) + 228))
  {
LABEL_43:
    result = 1;
    *a2 = 1;
    return result;
  }

  v11 = 0;
  while (1)
  {
    v33 = 0xAAAAAAAAAAAAAAAALL;
    bssl::SSL_SESSION_dup(&v33, *(this + 192), 2);
    if (!v33 || !RAND_bytes(&v33[1].session_id[16], 4))
    {
      std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](&v33, 0);
      return 0;
    }

    v12 = v33;
    LOBYTE(v33[1].peer) |= 8u;
    if ((*(v5 + 180) & 4) == 0)
    {
LABEL_17:
      v13 = 0;
      goto LABEL_23;
    }

    if (*(v5 + 168))
    {
      if (!*(*(v5 + 8) + 256))
      {
        goto LABEL_17;
      }

      v14 = -1;
    }

    else
    {
      v14 = 14336;
    }

    *&v12[1].session_id[20] = v14;
    v13 = 1;
LABEL_23:
    v32 = v11;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31[1] = v15;
    v31[2] = v15;
    v31[0] = v15;
    CBB_zero(v31);
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30[1] = v16;
    v30[2] = v16;
    v30[0] = v16;
    v29[1] = v16;
    v29[2] = v16;
    v28[2] = v16;
    v29[0] = v16;
    v28[0] = v16;
    v28[1] = v16;
    v27[1] = v16;
    v27[2] = v16;
    v27[0] = v16;
    if (!(*(*v5 + 88))(v5, v31, v30, 4))
    {
      break;
    }

    if (!CBB_add_u32(v30, v33->time))
    {
      break;
    }

    if (!CBB_add_u32(v30, *&v33[1].session_id[16]))
    {
      break;
    }

    if (!CBB_add_u8_length_prefixed(v30, v29))
    {
      break;
    }

    if (!CBB_add_bytes(v29, &v32, 1uLL))
    {
      break;
    }

    if (!CBB_add_u16_length_prefixed(v30, v28))
    {
      break;
    }

    v18 = v33;
    v19 = SSL_is_dtls(v5) != 0;
    if (!bssl::tls13_derive_session_psk(v18, &v32, 1uLL, v19))
    {
      break;
    }

    if (!bssl::ssl_encrypt_ticket(this, v28, v33))
    {
      break;
    }

    if (!CBB_add_u16_length_prefixed(v30, v27))
    {
      break;
    }

    if (v13)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v26[1] = v20;
      v26[2] = v20;
      v26[0] = v20;
      if (!CBB_add_u16(v27, 0x2Au) || !CBB_add_u16_length_prefixed(v27, v26) || !CBB_add_u32(v26, *&v33[1].session_id[20]) || !CBB_flush(v27))
      {
        break;
      }
    }

    grease_value = bssl::ssl_get_grease_value(this, 5u);
    if (!CBB_add_u16(v27, grease_value) || !CBB_add_u16(v27, 0))
    {
      break;
    }

    v22 = bssl::ssl_add_message_cbb(v5, v31);
    CBB_cleanup(v31, v23);
    v24 = v33;
    v33 = 0;
    if (v24)
    {
      SSL_SESSION_free(v24);
    }

    if ((v22 & 1) == 0)
    {
      return 0;
    }

    if (++v11 >= *(*(v5 + 128) + 228))
    {
      goto LABEL_43;
    }
  }

  CBB_cleanup(v31, v17);
  v25 = v33;
  v33 = 0;
  if (v25)
  {
    SSL_SESSION_free(v25);
  }

  return 0;
}

boringssl_concrete_boringssl_psk *boringssl_psk_create(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = objc_alloc_init(boringssl_concrete_boringssl_psk);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->key, a1);
    objc_storeStrong(&v7->identity, a2);
  }

  return v7;
}

id *boringssl_psk_copy_key(id *result)
{
  if (result)
  {
    return result[1];
  }

  return result;
}

id *boringssl_psk_copy_identity(id *result)
{
  if (result)
  {
    return result[2];
  }

  return result;
}

uint64_t boringssl_psk_matches_identity_hint(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2;
  v5 = a1;
  boringssl_helper_dump_dispatch_data(0, v3);
  boringssl_helper_dump_dispatch_data(0, v4);
  v6 = a1[2];

  v7 = boringssl_helper_dispatch_data_equal(v6, v4);
  return v7;
}

xpc_object_t boringssl_psk_copy_xpc_object(void *a1)
{
  v1 = a1[1];
  v2 = a1;
  v3 = xpc_data_create_with_dispatch_data(v1);
  v4 = v2[2];

  v5 = xpc_data_create_with_dispatch_data(v4);
  v6 = xpc_array_create(0, 0);
  xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v3);
  xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v5);

  return v6;
}

uint64_t EVP_PKEY_sign_init(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0 && (*(v1 + 40) || *(v1 + 48)))
  {
    *(a1 + 8) = 8;
    return 1;
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", 216);
    return 0;
  }
}

uint64_t EVP_PKEY_sign(_DWORD *a1)
{
  if (!a1 || !*a1 || (v1 = *(*a1 + 40)) == 0)
  {
    v3 = 125;
    v4 = 227;
LABEL_9:
    ERR_put_error(6, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_ctx.c", v4);
    return 0;
  }

  if (a1[8] != 8)
  {
    v3 = 126;
    v4 = 231;
    goto LABEL_9;
  }

  return v1();
}

EC_KEY *__cdecl EC_KEY_new_by_curve_name(int nid)
{
  v2 = EC_KEY_new_method(0);
  if (v2)
  {
    v3 = EC_GROUP_new_by_curve_name(nid);
    *v2 = v3;
    if (!v3)
    {
      EC_KEY_free(v2);
      return 0;
    }
  }

  return v2;
}

int EC_KEY_set_private_key(EC_KEY *a1, const BIGNUM *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    ERR_put_error(15, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", 240);
    goto LABEL_7;
  }

  v5 = OPENSSL_zalloc(0x60uLL);
  if (v5)
  {
    v6 = v5;
    v7 = v5 + 3;
    *v5 = v5 + 3;
    v8 = *(v2 + 264);
    *(v5 + 2) = v8;
    *(v5 + 3) = v8;
    *(v5 + 5) = 2;
    if (!ec_bignum_to_scalar(*a1, v5 + 3, a2) || ec_scalar_is_zero(*a1, v7))
    {
      ERR_put_error(15, 0, 113, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", 253);
      OPENSSL_free(v6);
LABEL_7:
      LODWORD(v5) = 0;
      return v5;
    }

    OPENSSL_free(*(a1 + 2));
    *(a1 + 2) = v6;
    LODWORD(v5) = 1;
  }

  return v5;
}

uint64_t EC_KEY_is_opaque(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return *(v1 + 48) & 1;
  }

  else
  {
    return 0;
  }
}

int EC_KEY_check_key(const EC_KEY *a1)
{
  if (a1 && (v2 = *a1) != 0 && (v3 = *(a1 + 1)) != 0)
  {
    if (EC_POINT_is_at_infinity(v2, v3))
    {
      v4 = 119;
      v5 = 303;
    }

    else
    {
      if (EC_POINT_is_on_curve(*a1, *(a1 + 1), 0))
      {
        v7 = *(a1 + 2);
        if (v7)
        {
          v10 = 0xAAAAAAAAAAAAAAAALL;
          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v9[11] = v8;
          v9[12] = v8;
          v9[9] = v8;
          v9[10] = v8;
          v9[7] = v8;
          v9[8] = v8;
          v9[5] = v8;
          v9[6] = v8;
          v9[3] = v8;
          v9[4] = v8;
          v9[1] = v8;
          v9[2] = v8;
          v9[0] = v8;
          if (!ec_point_mul_scalar_base(*a1, v9, v7 + 24))
          {
            v4 = 15;
            v5 = 321;
            goto LABEL_7;
          }

          if (!ec_GFp_simple_points_equal(*a1, v9, (*(a1 + 1) + 8)))
          {
            v4 = 113;
            v5 = 328;
            goto LABEL_7;
          }
        }

        return 1;
      }

      v4 = 120;
      v5 = 309;
    }
  }

  else
  {
    v4 = 67;
    v5 = 298;
  }

LABEL_7:
  ERR_put_error(15, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", v5);
  return 0;
}

unsigned __int8 *EC_KEY_key2buf(const EC_GROUP **a1, point_conversion_form_t a2, unsigned __int8 **a3, uint64_t a4, uint64_t a5, BN_CTX *a6)
{
  if (a1 && (v10 = a1[1]) != 0 && (v11 = *a1) != 0)
  {

    return EC_POINT_point2buf(v11, v10, a2, a3, a4, a6);
  }

  else
  {
    ERR_put_error(15, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", 420);
    return 0;
  }
}

int EC_KEY_generate_key(EC_KEY *a1)
{
  if (!a1 || (v2 = *a1) == 0)
  {
    v3 = 67;
    v4 = 491;
    goto LABEL_6;
  }

  if (EC_GROUP_order_bits(v2) <= 159)
  {
    v3 = 112;
    v4 = 497;
LABEL_6:
    ERR_put_error(15, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", v4);
    return 0;
  }

  v6 = *a1;
  v7 = OPENSSL_zalloc(0x60uLL);
  v8 = v7;
  if (v7)
  {
    *v7 = v7 + 3;
    v9 = *(v6 + 66);
    *(v7 + 2) = v9;
    *(v7 + 3) = v9;
    *(v7 + 5) = 2;
  }

  v10 = EC_POINT_new(*a1);
  v11 = v10;
  if (!v8 || !v10 || !ec_random_nonzero_scalar(*a1, v8 + 3) || !ec_point_mul_scalar_base(*a1, v11 + 8, (v8 + 3)))
  {
    EC_POINT_free(v11);
    OPENSSL_free(v8);
    return 0;
  }

  OPENSSL_free(*(a1 + 2));
  *(a1 + 2) = v8;
  EC_POINT_free(*(a1 + 1));
  *(a1 + 1) = v11;
  return 1;
}

dispatch_data_t boringssl_private_key_decrypt(__SecKey *a1, void *a2)
{
  v3 = a2;
  size = dispatch_data_get_size(v3);
  v5 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  boringssl_helper_dispatch_data_copyout(v3, v5, size);
  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  bzero(v7, size);
  plainTextLen = size;
  if (!SecKeyDecrypt(a1, 0, v6, size, v7, &plainTextLen) && plainTextLen <= size)
  {
    v9 = malloc_type_malloc(size, 0x100004077774924uLL);
    bzero(v9, size);
    memcpy(&v9[size - plainTextLen], v7, plainTextLen);
    v8 = dispatch_data_create(v9, size, 0, 0);
    if (v7)
    {
      free(v7);
    }

    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_5:
    free(v9);
  }

LABEL_6:
  free(v6);
LABEL_8:

  return v8;
}

uint64_t bssl::dtls1_open_app_data(bssl *a1, _OWORD *a2, unint64_t *a3, char *a4, uint64_t a5, unint64_t a6)
{
  if (SSL_in_init(a1))
  {
    bssl::dtls1_open_app_data();
  }

  v21 = -86;
  v20 = 0uLL;
  result = bssl::dtls_open_record(a1, &v21, &v20, a3, a4, a5, a6);
  if (!result)
  {
    v13 = v21;
    if (v21 == 22)
    {
      v18[0] = 0xAAAAAAAAAAAAAAAALL;
      v18[1] = 0xAAAAAAAAAAAAAAAALL;
      memset(v17, 170, 20);
      v19 = v20;
      if ((bssl::dtls1_parse_fragment(&v19, v17, v18) & 1) == 0)
      {
        ERR_put_error(16, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_pkt.cc", 150);
        v16 = 50;
LABEL_16:
        *a4 = v16;
        return 4;
      }

      if (LOBYTE(v17[0]) == 20 && *(*(a1 + 7) + 50) - 1 == LOWORD(v17[1]))
      {
        if (HIDWORD(v17[1]))
        {
          return 1;
        }

        if (bssl::dtls1_check_timeout_num(a1, v14))
        {
          bssl::dtls1_retransmit_outgoing_messages(a1, v15);
          return 1;
        }

        *a4 = 0;
        return 4;
      }

      v13 = v21;
    }

    if (v13 == 23)
    {
      if (*(&v20 + 1))
      {
        result = 0;
        *a2 = v20;
        return result;
      }

      return 1;
    }

    ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_pkt.cc", 176);
    v16 = 10;
    goto LABEL_16;
  }

  return result;
}

uint64_t bssl::dtls1_write_app_data(bssl *a1, _BYTE *a2, unint64_t *a3, char *a4, const unsigned __int8 *a5)
{
  if (SSL_in_init(a1))
  {
    bssl::dtls1_write_app_data();
  }

  *a2 = 0;
  if (*(*(a1 + 6) + 176))
  {
    v10 = 194;
    v11 = 195;
LABEL_6:
    ERR_put_error(16, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_pkt.cc", v11);
    return 0xFFFFFFFFLL;
  }

  if (a5 > 0x4000)
  {
    v10 = 143;
    v11 = 201;
    goto LABEL_6;
  }

  if (!a5)
  {
    *a3 = 0;
    return 1;
  }

  result = bssl::dtls1_write_record(a1, 23, a4, a5, *(*(a1 + 7) + 4));
  if (result >= 1)
  {
    *a3 = a5;
    return 1;
  }

  return result;
}

uint64_t bssl::dtls1_write_record(unsigned __int16 **this, char a2, char *a3, const unsigned __int8 *a4, ssl_st *a5)
{
  if (a4 > 0x4000)
  {
    bssl::dtls1_write_record();
  }

  v6 = this[6];
  if (v6[58])
  {
    bssl::dtls1_write_record();
  }

  *v17 = 0xAAAAAAAAAAAAAAAALL;
  v11 = bssl::dtls_record_header_write_len(this, a5, a3);
  v12 = bssl::SSLAEADContext::ExplicitNonceLen(*(this[6] + 34));
  v13 = SSL_max_seal_overhead(this);
  if (bssl::SSLBuffer::EnsureCap((v6 + 52), v12 + v11, &a4[v13]) && (bssl::dtls_seal_record(this, (*(v6 + 13) + v6[56] + v6[58]), v17, (v6[59] - v6[58]), a2, a3, a4, a5, v16) & 1) != 0)
  {
    bssl::SSLBuffer::DidWrite((v6 + 52), *v17);
    LODWORD(result) = bssl::ssl_write_buffer_flush(this, v14);
    if (result >= 1)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  else
  {
    bssl::SSLBuffer::Clear(v6 + 52);
    return 0xFFFFFFFFLL;
  }
}

uint64_t bssl::dtls1_dispatch_alert(bssl *this, ssl_st *a2)
{
  v3 = bssl::dtls1_write_record(this, 21, (*(this + 6) + 469), 2, *(*(this + 7) + 4));
  if (v3 >= 1)
  {
    *(*(this + 6) + 222) &= ~0x400u;
    v4 = *(this + 6);
    if (*(v4 + 469) == 2)
    {
      BIO_flush(*(this + 4));
      v4 = *(this + 6);
    }

    bssl::ssl_do_msg_callback(this, 1, 21, v4 + 469, 2);
    bssl::ssl_do_info_callback(this, 0x4008);
  }

  return v3;
}

BOOL SSL_generate_key_block(SSL *a1, ssl_session_st *a2, size_t a3)
{
  if (SSL_in_init(a1) || bssl::ssl_protocol_version(a1, v6, v7) >= 0x304)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/t1_enc.cc", 323);
    return 0;
  }

  else
  {
    session = SSL_get_session(a1);
    return bssl::generate_key_block(a1, a2, a3, session);
  }
}

uint64_t SSL_export_keying_material(bssl *this, ssl_st *a2, uint64_t a3, const void *a4, size_t a5, const void *a6, size_t a7, int a8)
{
  if (*(*(this + 6) + 208) && bssl::ssl_protocol_version(this, a2, a3) >= 0x304)
  {
    v17 = *(this + 6);
    if (*(v17 + 442))
    {
      if (a8)
      {
        v18 = a7;
      }

      else
      {
        v18 = 0;
      }

      if (a8)
      {
        v19 = a6;
      }

      else
      {
        v19 = 0;
      }

      return bssl::tls13_export_keying_material(this, a2, a3, v17 + 394, *(v17 + 442), a4, a5, v16, v19, v18);
    }

    v21 = 284;
    v22 = 337;
LABEL_29:
    ERR_put_error(16, 0, v21, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/t1_enc.cc", v22);
    return 0;
  }

  if (SSL_in_init(this) && !SSL_in_false_start(this))
  {
    v21 = 284;
    v22 = 352;
    goto LABEL_29;
  }

  if (a8)
  {
    if (a7 >= 0x10000)
    {
      v21 = 69;
      v22 = 359;
      goto LABEL_29;
    }

    v23 = a7 + 66;
  }

  else
  {
    v23 = 64;
  }

  v34 = 0;
  v35 = 0;
  if (bssl::Array<unsigned char>::InitUninitialized(&v34, v23))
  {
    v24 = v34;
    v25 = *(this + 6);
    v26 = *(v25 + 64);
    *v34 = *(v25 + 48);
    v24[1] = v26;
    v27 = *(this + 6);
    v28 = *(v27 + 32);
    v24[2] = *(v27 + 16);
    v24[3] = v28;
    if (a8)
    {
      v29 = v35;
      if (v35 <= 0x40 || (*(v24 + 64) = BYTE1(a7), v29 == 65))
      {
        abort();
      }

      *(v24 + 65) = a7;
      if (a7)
      {
        memcpy(v24 + 66, a6, a7);
      }
    }

    session = SSL_get_session(this);
    digest = bssl::ssl_session_get_digest(session, v31);
    v20 = CRYPTO_tls1_prf(digest, a2, a3, &session->key_arg[2], session->master_key[38], a4, a5, v34, v35, 0, 0) == 1;
  }

  else
  {
    v20 = 0;
  }

  OPENSSL_free(v34);
  return v20;
}

void sub_1A9050464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

BOOL bssl::ssl_has_server_raw_public_key_certificate(bssl *this, const bssl::SSL_HANDSHAKE *a2)
{
  if ((*(this + 1602) & 0x20) == 0)
  {
    return 0;
  }

  if (*(this + 746) != 2)
  {
    return 0;
  }

  result = bssl::ssl_has_private_key(this);
  if (!result)
  {
    return result;
  }

  v4 = *(this + 190);
  return v4 && *(v4 + 4) == 2;
}

uint64_t bssl::ssl_cert_extract_issuer(__int128 *a1, void *a2)
{
  v6 = *a1;
  memset(v5, 170, sizeof(v5));
  asn1 = CBS_get_asn1(&v6, &v5[1], 536870928);
  result = 0;
  if (asn1)
  {
    if (!*(&v6 + 1))
    {
      result = CBS_get_asn1(&v5[1], v5, 536870928);
      if (result)
      {
        result = CBS_get_optional_asn1(v5, 0, 0, 2684354560);
        if (result)
        {
          result = CBS_get_asn1(v5, 0, 2);
          if (result)
          {
            result = CBS_get_asn1(v5, 0, 536870928);
            if (result)
            {
              return CBS_get_asn1_element(v5, a2, 536870928) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_cert_matches_issuer(__int128 *a1, uint64_t a2)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = bssl::ssl_cert_extract_issuer(a1, v4);
  if (result)
  {
    return CBS_mem_equal(v4, *a2, *(a2 + 8));
  }

  return result;
}

uint64_t bssl::ssl_compare_public_and_private_key(const EVP_PKEY *this, const evp_pkey_st *a2, const evp_pkey_st *a3)
{
  if (EVP_PKEY_is_opaque(a2))
  {
    return 1;
  }

  result = EVP_PKEY_cmp(this, a2);
  if ((result & 0x80000000) == 0)
  {
    if (result == 1)
    {
      return result;
    }

    if (!result)
    {
      v6 = 116;
      v7 = 407;
      goto LABEL_11;
    }

LABEL_13:
    bssl::ssl_compare_public_and_private_key();
  }

  if (result == -2)
  {
    v6 = 128;
    v7 = 413;
    goto LABEL_11;
  }

  if (result != -1)
  {
    goto LABEL_13;
  }

  v6 = 115;
  v7 = 410;
LABEL_11:
  ERR_put_error(11, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", v7);
  return 0;
}

void bssl::SSL_parse_CA_list(uint64_t a1@<X0>, _BYTE *a2@<X1>, unsigned __int8 **a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(*(a1 + 120) + 800);
  v15 = OPENSSL_sk_new_null();
  if (!v15)
  {
LABEL_14:
    *a2 = 80;
    goto LABEL_15;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16_length_prefixed(a3, &v13))
  {
    *a2 = 50;
    ERR_put_error(16, 0, 162, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 511);
LABEL_15:
    *a4 = 0;
    goto LABEL_16;
  }

  v9 = *a4;
  if (v14)
  {
    while (1)
    {
      v12[0] = 0xAAAAAAAAAAAAAAAALL;
      v12[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u16_length_prefixed(&v13, v12))
      {
        *a4 = v9;
        *a2 = 50;
        ERR_put_error(16, 0, 123, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 519);
        goto LABEL_15;
      }

      v10 = CRYPTO_BUFFER_new_from_CBS(v12, v8);
      if (!v10)
      {
        goto LABEL_14;
      }

      if (!OPENSSL_sk_push(v15, v10))
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_8;
      }
    }

    CRYPTO_BUFFER_free(v10);
    goto LABEL_14;
  }

LABEL_8:
  *a4 = v9;
  if (((**(*(a1 + 120) + 16))(v15) & 1) == 0)
  {
    *a2 = 50;
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 534);
    goto LABEL_15;
  }

  v11 = v15;
  v15 = 0;
  *a4 = v11;
LABEL_16:
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v15, 0);
}

void sub_1A9050898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

const EVP_MD_CTX *bssl::ssl_has_client_CAs(bssl *this, const bssl::SSL_CONFIG *a2)
{
  result = *(this + 11);
  if (result)
  {
    return (EVP_MD_CTX_md(result) != 0);
  }

  result = *(*(*this + 120) + 400);
  if (result)
  {
    return (EVP_MD_CTX_md(result) != 0);
  }

  return result;
}

uint64_t bssl::marshal_CA_names(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = v4;
  v14[2] = v4;
  v13[2] = v4;
  v14[0] = v4;
  if (a1)
  {
    a2 = a1;
  }

  v13[0] = v4;
  v13[1] = v4;
  result = CBB_add_u16_length_prefixed(a3, v14);
  if (result)
  {
    if (a2 && (v7 = EVP_MD_CTX_md(a2)) != 0)
    {
      v8 = v7;
      v9 = 0;
      while (1)
      {
        v10 = OPENSSL_sk_value(a2, v9);
        result = CBB_add_u16_length_prefixed(v14, v13);
        if (!result)
        {
          break;
        }

        v11 = CRYPTO_BUFFER_data(v10);
        v12 = CRYPTO_BUFFER_len(v10);
        result = CBB_add_bytes(v13, v11, v12);
        if (!result)
        {
          break;
        }

        if (v8 == ++v9)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }

    else
    {
      return CBB_flush(a3) != 0;
    }
  }

  return result;
}

uint64_t SSL_set_chain_and_key(uint64_t a1, uint64_t *a2, unint64_t a3, evp_pkey_st *a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    return bssl::cert_set_chain_and_key(*(v5 + 32), a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t bssl::cert_set_chain_and_key(uint64_t a1, uint64_t *a2, unint64_t a3, evp_pkey_st *a4, uint64_t a5)
{
  if (!a3 || !(a4 | a5))
  {
    v7 = 67;
    v8 = 183;
LABEL_4:
    ERR_put_error(16, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", v8);
    return 0;
  }

  if (a4 && a5)
  {
    v7 = 275;
    v8 = 188;
    goto LABEL_4;
  }

  ssl_credential_st::ClearCertAndKey(*(a1 + 24));
  if (!SSL_CREDENTIAL_set1_cert_chain(*(a1 + 24), a2, a3))
  {
    return 0;
  }

  (*(*(a1 + 32) + 40))(a1);
  (*(*(a1 + 32) + 32))(a1);
  v14 = *(a1 + 24);
  if (a4)
  {

    return SSL_CREDENTIAL_set1_private_key(v14, a4, v13);
  }

  else
  {

    return SSL_CREDENTIAL_set_private_key_method(v14, a5);
  }
}

void SSL_certs_clear(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 32);
    (*(*(v2 + 32) + 8))(v2);
    bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::clear(v2);
    v3 = *(v2 + 24);

    ssl_credential_st::ClearCertAndKey(v3);
  }
}

uint64_t SSL_CTX_set_cert_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 440);
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  return result;
}

uint64_t SSL_get0_peer_pubkey(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return *(v1 + 1528);
  }

  else
  {
    return 0;
  }
}

BOOL SSL_set_signed_cert_timestamp_list(uint64_t a1, const void *a2, unint64_t a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = CRYPTO_BUFFER_new(a2, a3, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SSL_CREDENTIAL_set1_signed_cert_timestamp_list(*(*(*(a1 + 8) + 32) + 24), v4) != 0;
  CRYPTO_BUFFER_free(v5);
  return v6;
}

void sub_1A9050C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL SSL_CTX_set_ocsp_response(uint64_t a1, const void *a2, unint64_t a3)
{
  v4 = CRYPTO_BUFFER_new(a2, a3, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SSL_CREDENTIAL_set1_ocsp_response(*(*(a1 + 440) + 24), v4) != 0;
  CRYPTO_BUFFER_free(v5);
  return v6;
}

void sub_1A9050CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL SSL_set_ocsp_response(uint64_t a1, const void *a2, unint64_t a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = CRYPTO_BUFFER_new(a2, a3, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SSL_CREDENTIAL_set1_ocsp_response(*(*(*(a1 + 8) + 32) + 24), v4) != 0;
  CRYPTO_BUFFER_free(v5);
  return v6;
}

void sub_1A9050D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL bssl::ssl_negotiate_version(uint64_t a1, char *a2, _WORD *a3, __int128 *a4)
{
  v8 = 4;
  if (***a1)
  {
    v8 = 3;
    v9 = &bssl::kDTLSVersions;
  }

  else
  {
    v9 = &bssl::kTLSVersions;
  }

  v10 = &v9[v8];
  do
  {
    v11 = *v9;
    if (bssl::ssl_supports_version(a1, *v9) && (v11 != 772 || (*(a1 + 1602) & 0x80) == 0))
    {
      v17 = *a4;
      while (*(&v17 + 1))
      {
        v16 = -21846;
        u16 = CBS_get_u16(&v17, &v16);
        v13 = u16 != 0;
        if (!u16)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_versions.cc", 331);
          v14 = 50;
          goto LABEL_16;
        }

        if (v16 == v11)
        {
          *a3 = v11;
          return v13;
        }
      }
    }

    ++v9;
  }

  while (v9 != v10);
  ERR_put_error(16, 0, 240, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_versions.cc", 343);
  v13 = 0;
  v14 = 70;
LABEL_16:
  *a2 = v14;
  return v13;
}

char *SSL_SESSION_get_version(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = &off_1E785EE48;
  v3 = 112;
  result = "unknown";
  while (*(v2 - 4) != v1)
  {
    v2 += 2;
    v3 -= 16;
    if (!v3)
    {
      return result;
    }
  }

  return *v2;
}

uint64_t bssl::SSLTranscript::UpdateForHelloRetryRequest(bssl::SSLTranscript *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    **this = 0;
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v2;
  v13 = v2;
  *v10 = v2;
  v11 = v2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = bssl::SSLTranscript::GetHash(this, v10, &v9);
  if (result)
  {
    v6 = 254;
    v7 = 0;
    v4 = v9;
    v8 = v9;
    v5 = EVP_MD_CTX_md((this + 8));
    result = EVP_DigestInit_ex((this + 8), v5, 0);
    if (result)
    {
      result = bssl::SSLTranscript::AddToBufferOrHash(this, &v6, 4uLL);
      if (result)
      {
        return bssl::SSLTranscript::AddToBufferOrHash(this, v10, v4);
      }
    }
  }

  return result;
}

uint64_t bssl::SSLTranscript::CopyToHashContext(bssl::SSLTranscript *this, env_md_ctx_st *a2, const env_md_st *a3)
{
  v6 = EVP_MD_CTX_md((this + 8));
  if (v6)
  {
    v7 = EVP_MD_type(v6);
    if (v7 == EVP_MD_type(a3))
    {
      return EVP_MD_CTX_copy_ex(a2, (this + 8)) != 0;
    }
  }

  if (*this)
  {

    return bssl::SSLTranscript::HashBuffer(this, a2, a3);
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_transcript.cc", 275);
    return 0;
  }
}

uint64_t bssl::skip_early_data(bssl *this, ssl_st *a2, unsigned __int8 *a3)
{
  v4 = *(this + 6);
  v5 = *(v4 + 210) + a3;
  *(v4 + 210) = v5;
  if (a3 > v5)
  {
    *(v4 + 210) = 16385;
LABEL_4:
    ERR_put_error(16, 0, 270, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 167);
    LOBYTE(a2->version) = 10;
    return 4;
  }

  if (v5 > 0x4000u)
  {
    goto LABEL_4;
  }

  return 1;
}

uint64_t bssl::ssl_is_key_type_supported(bssl *this)
{
  v1 = this == 949;
  if (this == 408)
  {
    v1 = 1;
  }

  return this == 6 || v1;
}

uint64_t bssl::ssl_private_key_decrypt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 400);
  if ((v6 & 0x1000000) != 0)
  {
    bssl::ssl_private_key_decrypt();
  }

  v8 = a1[190];
  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = *a1;
    if ((v6 & 0x20000) != 0)
    {
      v11 = (*(v9 + 16))(v10, a2, a3, a4, a5, a6);
    }

    else
    {
      v11 = (*(v9 + 8))(v10, a2, a3, a4, a5, a6);
    }

    v12 = v11;
    if (v11 == 2)
    {
      ERR_put_error(16, 0, 287, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_privkey.cc", 351);
    }

    *(a1 + 400) = a1[200] & 0xFFFDFFFF | ((v12 == 1) << 17);
  }

  else if (EVP_PKEY_get0_RSA(*(v8 + 16)))
  {
    return 2 * (RSA_decrypt() == 0);
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_privkey.cc", 360);
    return 2;
  }

  return v12;
}

uint64_t SSL_set_private_key_method(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(*(v2 + 32) + 24);
    v4 = 216;
    if (*(result + 180))
    {
      v4 = 192;
    }

    v5 = *(v2 + v4);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    result = SSL_CREDENTIAL_set_private_key_method(v6, a2);
    if (!result)
    {
      abort();
    }
  }

  return result;
}

uint64_t aead_null_sha1_tls_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_enc_null();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 1);
}

void aead_tls_cleanup(uint64_t a1)
{
  EVP_CIPHER_CTX_cleanup((a1 + 8));

  HMAC_CTX_cleanup((a1 + 160));
}

uint64_t aead_tls_open(uint64_t a1, unsigned __int8 *a2, size_t *a3, unint64_t a4, const unsigned __int8 *a5, uint64_t a6, const unsigned __int8 *a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 36))
  {
    v10 = 112;
    v11 = 244;
LABEL_13:
    ERR_put_error(30, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/cipher_extra/e_tls.c", v11);
    return 0;
  }

  if (HMAC_size((a1 + 160)) > a8)
  {
    v10 = 101;
    v11 = 249;
    goto LABEL_13;
  }

  if (a4 < a8)
  {
    v10 = 103;
    v11 = 256;
    goto LABEL_13;
  }

  if (EVP_AEAD_nonce_length(*a1) != a6)
  {
    v10 = 111;
    v11 = 261;
    goto LABEL_13;
  }

  if (a10 != 11)
  {
    v10 = 109;
    v11 = 266;
    goto LABEL_13;
  }

  if (a8 >> 31)
  {
    v10 = 117;
    v11 = 272;
    goto LABEL_13;
  }

  if (EVP_CIPHER_CTX_mode(a1 + 8) != 2 || *(a1 + 329) || (result = EVP_DecryptInit_ex((a1 + 8), 0, 0, 0, a5), result))
  {
    outl = -1431655766;
    result = EVP_DecryptUpdate((a1 + 8), a2, &outl, a7, a8);
    if (result)
    {
      v21 = outl;
      result = EVP_DecryptFinal_ex((a1 + 8), &a2[outl], &outl);
      if (result)
      {
        if (outl + v21 != a8)
        {
          aead_tls_open_cold_1();
        }

        v36 = 0xAAAAAAAAAAAAAAAALL;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        if (EVP_CIPHER_CTX_mode(a1 + 8) == 2)
        {
          v22 = EVP_CIPHER_CTX_block_size((a1 + 8));
          v23 = HMAC_size((a1 + 160));
          if (!EVP_tls_cbc_remove_padding(&v36, &v37, a2, a8, v22, v23))
          {
            v10 = 101;
            v11 = 308;
            goto LABEL_13;
          }

          v24 = v37;
        }

        else
        {
          v36 = -1;
          v37 = a8;
          v24 = a8;
          if (HMAC_size((a1 + 160)) > a8)
          {
            aead_tls_open_cold_2();
          }
        }

        v25 = v24 - HMAC_size((a1 + 160));
        *data = *a9;
        *&data[7] = *(a9 + 7);
        v45 = bswap32(v25) >> 16;
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v42 = v26;
        v43 = v26;
        *md = v26;
        v41 = v26;
        v35 = 0xAAAAAAAAAAAAAAAALL;
        v39[2] = v26;
        v39[3] = v26;
        v39[0] = v26;
        v39[1] = v26;
        if (EVP_CIPHER_CTX_mode(a1 + 8) == 2 && EVP_tls_cbc_record_digest_supported(*(a1 + 160)))
        {
          if (!EVP_tls_cbc_digest_record(*(a1 + 160), md, &v35, data, a2, v37, a8, a1 + 264, *(a1 + 328)))
          {
            v10 = 101;
            v11 = 346;
            goto LABEL_13;
          }

          v27 = v35;
          if (v27 != HMAC_size((a1 + 160)))
          {
            aead_tls_open_cold_3();
          }

          v28 = v39;
          EVP_tls_cbc_copy_mac(v39, v35, a2, v37, a8);
          v29 = v35;
        }

        else
        {
          if (EVP_CIPHER_CTX_mode(a1 + 8) == 2)
          {
            aead_tls_open_cold_5();
          }

          len = -1431655766;
          HMAC_Init_ex((a1 + 160), 0, 0, 0, 0);
          if (!v30)
          {
            return 0;
          }

          HMAC_Update((a1 + 160), data, 0xDuLL);
          if (!v31)
          {
            return 0;
          }

          HMAC_Update((a1 + 160), a2, v25);
          if (!v32)
          {
            return 0;
          }

          HMAC_Final((a1 + 160), md, &len);
          if (!v33)
          {
            return 0;
          }

          v29 = len;
          v35 = len;
          if (HMAC_size((a1 + 160)) != v29)
          {
            aead_tls_open_cold_4();
          }

          v28 = &a2[v25];
        }

        if (!CRYPTO_memcmp(v28, md, v29) && v36)
        {
          *a3 = v25;
          return 1;
        }

        v10 = 101;
        v11 = 380;
        goto LABEL_13;
      }
    }
  }

  return result;
}

void aead_tls_seal_scatter(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t *a4, unint64_t a5, const unsigned __int8 *a6, uint64_t a7, const unsigned __int8 *a8, unint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *data, uint64_t a13)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 36))
  {
    v13 = 112;
    v14 = 128;
    goto LABEL_25;
  }

  if (a9 >> 31)
  {
    v13 = 117;
    v14 = 134;
LABEL_25:
    ERR_put_error(30, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/cipher_extra/e_tls.c", v14);
    return;
  }

  if (aead_tls_tag_len(a1, a9, a11) > a5)
  {
    v13 = 103;
    v14 = 139;
    goto LABEL_25;
  }

  if (EVP_AEAD_nonce_length(*a1) != a7)
  {
    v13 = 111;
    v14 = 144;
    goto LABEL_25;
  }

  if (a13 != 11)
  {
    v13 = 109;
    v14 = 149;
    goto LABEL_25;
  }

  *v40 = bswap32(a9) >> 16;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v22;
  v60 = v22;
  *md = v22;
  v58 = v22;
  len = -1431655766;
  HMAC_Init_ex((a1 + 160), 0, 0, 0, 0);
  if (v23)
  {
    HMAC_Update((a1 + 160), data, 0xBuLL);
    if (v24)
    {
      HMAC_Update((a1 + 160), v40, 2uLL);
      if (v25)
      {
        HMAC_Update((a1 + 160), a8, a9);
        if (v26)
        {
          HMAC_Final((a1 + 160), md, &len);
          if (v27)
          {
            if (EVP_CIPHER_CTX_mode(a1 + 8) != 2 || *(a1 + 329) || EVP_EncryptInit_ex((a1 + 8), 0, 0, 0, a6))
            {
              outl = -1431655766;
              if (EVP_EncryptUpdate((a1 + 8), a2, &outl, a8, a9))
              {
                v28 = EVP_CIPHER_CTX_block_size((a1 + 8));
                v29 = v28;
                v30 = (v28 - (a9 % v28)) % v28;
                if (v30)
                {
                  if (outl + v28 - v30 != a9)
                  {
                    aead_tls_seal_scatter_cold_1();
                  }

                  *&v31 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *out = v31;
                  v42 = v31;
                  v37 = -1431655766;
                  if (!EVP_EncryptUpdate((a1 + 8), out, &v37, md, v30))
                  {
                    return;
                  }

                  if (v37 != v29)
                  {
                    aead_tls_seal_scatter_cold_2();
                  }

                  memcpy(&a2[outl], out, v29 - v30);
                  memcpy(a3, &out[v29 - v30], v30);
                  v32 = v30;
                }

                else
                {
                  v32 = 0;
                }

                if (!EVP_EncryptUpdate((a1 + 8), a3 + v30, &outl, &md[v30], len - v32))
                {
                  return;
                }

                v33 = v30 + outl;
                if (v29 < 2)
                {
                  goto LABEL_36;
                }

                if (v29 >= 0x101)
                {
                  aead_tls_seal_scatter_cold_6();
                }

                if (EVP_CIPHER_CTX_mode(a1 + 8) != 2)
                {
                  aead_tls_seal_scatter_cold_3();
                }

                *&v34 = 0xAAAAAAAAAAAAAAAALL;
                *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v55 = v34;
                v56 = v34;
                v53 = v34;
                v54 = v34;
                v51 = v34;
                v52 = v34;
                v49 = v34;
                v50 = v34;
                v47 = v34;
                v48 = v34;
                v45 = v34;
                v46 = v34;
                v43 = v34;
                v44 = v34;
                *out = v34;
                v42 = v34;
                v35 = (len + a9) % v29;
                v36 = v29 - v35;
                if (v29 != v35)
                {
                  __memset_chk();
                }

                if (EVP_EncryptUpdate((a1 + 8), a3 + v33, &outl, out, v36))
                {
                  v33 += outl;
LABEL_36:
                  if (EVP_EncryptFinal_ex((a1 + 8), a3 + v33, &outl))
                  {
                    if (outl)
                    {
                      aead_tls_seal_scatter_cold_4();
                    }

                    if (v33 != aead_tls_tag_len(a1, a9, a11))
                    {
                      aead_tls_seal_scatter_cold_5();
                    }

                    *a4 = v33;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t aead_tls_tag_len(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    aead_tls_tag_len_cold_1();
  }

  v5 = HMAC_size((a1 + 160));
  if (EVP_CIPHER_CTX_mode(a1 + 8) == 2)
  {
    v6 = EVP_CIPHER_CTX_block_size((a1 + 8));
    if (!v6 || ((v6 - 1) & v6) != 0)
    {
      aead_tls_tag_len_cold_2();
    }

    return v6 + (v5 + a2) / v6 * v6 - a2;
  }

  return v5;
}

uint64_t aead_tls_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, const EVP_CIPHER *a6, EVP_MD *md, int a8)
{
  if (a4 && EVP_MD_size(md) != a4)
  {
    v18 = 122;
    v19 = 63;
    goto LABEL_8;
  }

  if (EVP_AEAD_key_length(*a1) != a3)
  {
    v18 = 102;
    v19 = 68;
LABEL_8:
    ERR_put_error(30, 0, v18, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/cipher_extra/e_tls.c", v19);
    return 0;
  }

  v15 = EVP_MD_size(md);
  v16 = v15 + EVP_CIPHER_key_length(a6);
  if (a8)
  {
    v17 = EVP_CIPHER_iv_length(a6);
  }

  else
  {
    v17 = 0;
  }

  if (v17 + v16 != a3)
  {
    aead_tls_init_cold_1();
  }

  EVP_CIPHER_CTX_init((a1 + 8));
  HMAC_CTX_init((a1 + 160));
  if (v15 >= 0x41)
  {
    aead_tls_init_cold_2();
  }

  if (v15)
  {
    memcpy((a1 + 264), a2, v15);
  }

  *(a1 + 328) = v15;
  *(a1 + 329) = a8;
  if (a8)
  {
    v20 = &a2[v16];
  }

  else
  {
    v20 = 0;
  }

  if (EVP_CipherInit_ex((a1 + 8), a6, 0, &a2[v15], v20, a5 == 1))
  {
    HMAC_Init_ex((a1 + 160), a2, v15, md, 0);
    if (v21)
    {
      EVP_CIPHER_CTX_set_padding((a1 + 8), 0);
      return 1;
    }
  }

  EVP_CIPHER_CTX_cleanup((a1 + 8));
  HMAC_CTX_cleanup((a1 + 160));
  return 0;
}

uint64_t aead_aes_128_cbc_sha1_tls_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_128_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

uint64_t aead_aes_128_cbc_sha1_tls_implicit_iv_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_128_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 1);
}

uint64_t aead_tls_get_iv(uint64_t a1, void *a2, void *a3)
{
  v6 = EVP_CIPHER_CTX_iv_length((a1 + 8));
  if (v6 > 1)
  {
    *a2 = a1 + 60;
    *a3 = v6;
    return 1;
  }

  else
  {
    ERR_put_error(30, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/cipher_extra/e_tls.c", 459);
    return 0;
  }
}

uint64_t aead_aes_128_cbc_sha256_tls_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_128_cbc();
  v11 = EVP_sha256();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

uint64_t aead_aes_256_cbc_sha384_tls_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_256_cbc();
  v11 = EVP_sha384();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

uint64_t aead_aes_256_cbc_sha1_tls_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_256_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

uint64_t aead_aes_256_cbc_sha1_tls_implicit_iv_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_aes_256_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 1);
}

uint64_t aead_des_ede3_cbc_sha1_tls_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_des_ede3_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 0);
}

uint64_t aead_des_ede3_cbc_sha1_tls_implicit_iv_init(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = EVP_des_ede3_cbc();
  v11 = EVP_sha1();

  return aead_tls_init(a1, a2, a3, a4, a5, v10, v11, 1);
}

int BN_mod_exp_mont(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *m_ctx)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!BN_is_odd(m))
  {
    v12 = 104;
    v13 = 634;
    goto LABEL_8;
  }

  if (m->neg)
  {
    v12 = 109;
    v13 = 638;
LABEL_8:
    ERR_put_error(3, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/exponentiation.c.inc", v13);
    LODWORD(v14) = 0;
    return v14;
  }

  if (a->neg || (BN_ucmp(a, m) & 0x80000000) == 0)
  {
    v12 = 107;
    v13 = 643;
    goto LABEL_8;
  }

  v16 = BN_num_bits(p);
  if (v16)
  {
    v17 = v16;
    v45 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44[14] = v18;
    v44[13] = v18;
    v44[12] = v18;
    v44[11] = v18;
    v44[10] = v18;
    v44[9] = v18;
    v44[8] = v18;
    v44[7] = v18;
    v44[6] = v18;
    v44[5] = v18;
    v44[4] = v18;
    v44[3] = v18;
    v44[2] = v18;
    v44[1] = v18;
    v44[0] = v18;
    BN_CTX_start(ctx);
    v19 = BN_CTX_get(ctx);
    v20 = BN_CTX_get(ctx);
    v21 = 0;
    LODWORD(v14) = 0;
    v43 = v20;
    if (!v19 || !v20)
    {
      goto LABEL_69;
    }

    if (m_ctx)
    {
      v21 = 0;
    }

    else
    {
      v21 = BN_MONT_CTX_new_consttime(m, ctx);
      m_ctx = v21;
      if (!v21)
      {
        LODWORD(v14) = 0;
LABEL_69:
        BN_MONT_CTX_free(v21);
        BN_CTX_end(ctx);
        return v14;
      }
    }

    mont = v21;
    b = v19;
    if (v17 <= 0x29F)
    {
      if (v17 <= 0xEF)
      {
        if (v17 <= 0x4F)
        {
          if (v17 <= 0x17)
          {
            v22 = 1;
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 4;
        }
      }

      else
      {
        v22 = 5;
      }
    }

    else
    {
      v22 = 6;
    }

    if (BN_to_montgomery(v20, a, m_ctx, ctx))
    {
      v40 = v22;
      v38 = v22 - 2;
      if (v22 < 2)
      {
LABEL_39:
        v28 = 0;
        v29 = v17 - 1;
        v30 = v40;
        while (1)
        {
          while (!BN_is_bit_set(p, v29))
          {
            if (v28)
            {
              if (!BN_mod_mul_montgomery(v19, v19, v19, m_ctx, ctx))
              {
                goto LABEL_67;
              }

              if (!v29)
              {
                goto LABEL_70;
              }
            }

            else if (!v29)
            {
              BN_mod_exp_mont_cold_1();
            }

            --v29;
          }

          v39 = v28;
          v31 = 0;
          v32 = 1;
          if (v30 >= 2)
          {
            v33 = v29 - 1;
            if (v29 >= 1)
            {
              v31 = 0;
              v34 = v38;
              if (v33 < v38)
              {
                v34 = v29 - 1;
              }

              v35 = v34 + 1;
              v36 = 1;
              do
              {
                if (BN_is_bit_set(p, v33))
                {
                  v32 = (v32 << (v36 - v31)) | 1;
                  v31 = v36;
                }

                ++v36;
                --v33;
                --v35;
              }

              while (v35);
            }
          }

          v19 = b;
          if ((v39 & (v31 >= 0)) == 1)
          {
            break;
          }

LABEL_59:
          if ((v32 & 1) == 0)
          {
            BN_mod_exp_mont_cold_3();
          }

          v30 = v40;
          if (v32 >= 1 << v40)
          {
            BN_mod_exp_mont_cold_2();
          }

          if (v39)
          {
            if (!BN_mod_mul_montgomery(b, b, *(&v43 + (v32 >> 1)), m_ctx, ctx))
            {
              goto LABEL_67;
            }
          }

          else if (!BN_copy(b, *(&v43 + (v32 >> 1))))
          {
            goto LABEL_67;
          }

          if (v29 == v31)
          {
LABEL_70:
            LODWORD(v14) = BN_from_montgomery(r, v19, m_ctx, ctx) != 0;
            goto LABEL_68;
          }

          v29 += ~v31;
          v28 = 1;
        }

        v37 = v31 + 1;
        while (BN_mod_mul_montgomery(b, b, b, m_ctx, ctx))
        {
          if (!--v37)
          {
            goto LABEL_59;
          }
        }
      }

      else
      {
        v23 = BN_CTX_get(ctx);
        v14 = v23;
        if (!v23)
        {
LABEL_68:
          v21 = mont;
          goto LABEL_69;
        }

        if (BN_mod_mul_montgomery(v23, v20, v20, m_ctx, ctx))
        {
          v24 = v44;
          v25 = 2;
          while (1)
          {
            v26 = BN_CTX_get(ctx);
            *v24 = v26;
            if (!v26 || !BN_mod_mul_montgomery(v26, *(v24 - 1), v14, m_ctx, ctx))
            {
              break;
            }

            v27 = v25 >> (v40 - 1);
            ++v24;
            ++v25;
            if (v27)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

LABEL_67:
    LODWORD(v14) = 0;
    goto LABEL_68;
  }

  if (BN_abs_is_word(m, 1))
  {
    BN_zero(r);
    LODWORD(v14) = 1;
    return v14;
  }

  return BN_one(r);
}

void bn_mod_exp_mont_small(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  __b[144] = *MEMORY[0x1E69E9840];
  if (a5 >> 58 || a3 > 9 || (v7 = a6, *(a6 + 32) != a3))
  {
    abort();
  }

  v8 = a5;
  if (!BN_is_odd(a6 + 24))
  {
    bn_mod_exp_mont_small_cold_5();
  }

  if (v8)
  {
    v11 = (v8 << 6) - 65;
    while (1)
    {
      v12 = *(a4 - 8 + 8 * v8);
      if (v12)
      {
        break;
      }

      v11 -= 64;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v14 = BN_num_bits_word(v12);
    v15 = v11 + v14;
    v16 = __CFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      bn_mod_exp_mont_small_cold_4();
    }

    v39 = a3;
    if (v17 <= 0x29F)
    {
      if (v17 <= 0xEF)
      {
        if (v17 <= 0x17)
        {
          v19 = 1;
        }

        else
        {
          v19 = 3;
        }

        if (v17 <= 0x4F)
        {
          v18 = v19;
        }

        else
        {
          v18 = 4;
        }
      }

      else
      {
        v18 = 5;
      }
    }

    else
    {
      v18 = 6;
    }

    v20 = v14;
    if (v18 >= 5)
    {
      v21 = 5;
    }

    else
    {
      v21 = v18;
    }

    v38 = v21;
    memset(__b, 170, 0x480uLL);
    if (v39)
    {
      __memcpy_chk();
    }

    v37 = v18;
    if (v18 >= 2)
    {
      v41 = 0xAAAAAAAAAAAAAAAALL;
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v40[2] = v22;
      v40[3] = v22;
      v40[0] = v22;
      v40[1] = v22;
      bn_mod_mul_montgomery_small(v40, __b, __b, v39, v7);
      if (v38 != 1)
      {
        v23 = 2;
        do
        {
          bn_mod_mul_montgomery_small(&__b[9 * v23 - 9], &__b[9 * v23 - 18], v40, v39, v7);
        }

        while (!(v23++ >> (v38 - 1)));
      }
    }

    v25 = 0;
    v26 = v20 + v11;
    v36 = v7;
    while (1)
    {
      for (i = v26; !bn_is_bit_set_words(a4, v8, i); --i)
      {
        if (v25)
        {
          bn_mod_mul_montgomery_small(a1, a1, a1, v39, v7);
          if (!i)
          {
            goto LABEL_63;
          }
        }

        else if (!i)
        {
          bn_mod_exp_mont_small_cold_1();
        }
      }

      if (v18 < 2 || !i)
      {
        break;
      }

      v28 = 0;
      v29 = i - 1;
      v30 = v38 - 2;
      if (i - 1 < v38 - 2)
      {
        v30 = i - 1;
      }

      v31 = v30 + 1;
      v32 = 1;
      v33 = 1;
      do
      {
        if (bn_is_bit_set_words(a4, v8, v29))
        {
          v33 = (v33 << (v32 - v28)) | 1;
          v28 = v32;
        }

        --v29;
        ++v32;
        --v31;
      }

      while (v31);
      v7 = v36;
      if ((v25 & 1) == 0)
      {
        v34 = v39;
        goto LABEL_55;
      }

      v34 = v39;
      v18 = v37;
      if (v28 != -1)
      {
        goto LABEL_51;
      }

LABEL_56:
      if ((v33 & 1) == 0)
      {
        bn_mod_exp_mont_small_cold_3();
      }

      if (v33 >> v38)
      {
        bn_mod_exp_mont_small_cold_2();
      }

      if ((v25 & 1) == 0)
      {
LABEL_60:
        if (v34)
        {
          memcpy(a1, &__b[9 * (v33 >> 1)], 8 * v39);
        }

        goto LABEL_62;
      }

      bn_mod_mul_montgomery_small(a1, a1, &__b[9 * (v33 >> 1)], v34, v7);
LABEL_62:
      v26 = i - (v28 + 1);
      v25 = 1;
      if (i == v28)
      {
LABEL_63:
        OPENSSL_cleanse(__b, 0x480uLL);
        return;
      }
    }

    v28 = 0;
    v33 = 1;
    v34 = v39;
    if ((v25 & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_51:
    v35 = v28 + 1;
    do
    {
      bn_mod_mul_montgomery_small(a1, a1, a1, v34, v7);
      --v35;
    }

    while (v35);
LABEL_55:
    v18 = v37;
    goto LABEL_56;
  }

LABEL_9:
  v13 = *v7;

  bn_from_montgomery_small(a1, a3, v13, a3, v7);
}

void bn_mod_inverse0_prime_mont_small(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 > 9 || *(a4 + 32) != a3)
  {
    abort();
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v9;
  v14[3] = v9;
  v14[0] = v9;
  v14[1] = v9;
  if (a3 && (__memcpy_chk(), v8 = *&v14[0], *&v14[0] < 2uLL))
  {
    *&v14[0] |= 0xFFFFFFFFFFFFFFFELL;
    if (a3 != 1)
    {
      v10 = a3 - 2;
      v11 = v14 + 1;
      do
      {
        v12 = v10;
        if ((*v11++)-- != 0)
        {
          break;
        }

        --v10;
      }

      while (v12);
    }
  }

  else
  {
    *&v14[0] = v8 - 2;
  }

  bn_mod_exp_mont_small(a1, a2, a3, v14, a3, a4);
}

int BN_mod_exp_mont_consttime(BIGNUM *rr, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *in_mont)
{
  if (!BN_is_odd(m))
  {
    v12 = 104;
    v13 = 938;
    goto LABEL_8;
  }

  if (m->neg)
  {
    v12 = 109;
    v13 = 942;
LABEL_8:
    ERR_put_error(3, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/exponentiation.c.inc", v13);
    return 0;
  }

  if (a->neg || BN_ucmp(a, m) >= 0)
  {
    v12 = 107;
    v13 = 948;
    goto LABEL_8;
  }

  top = p->top;
  if (top)
  {
    if (in_mont)
    {
      v17 = 0;
    }

    else
    {
      v17 = BN_MONT_CTX_new_consttime(m, ctx);
      in_mont = v17;
      if (!v17)
      {
        v24 = 0;
        len = 0;
        v25 = 0;
        v14 = 0;
        goto LABEL_67;
      }
    }

    v37 = v17;
    d = in_mont->N.d;
    if (top == 1)
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }

    if (top <= 1)
    {
      v20 = v19;
    }

    else
    {
      v20 = 4;
    }

    if (top <= 4)
    {
      v21 = v20;
    }

    else
    {
      v21 = 5;
    }

    if (top <= 14)
    {
      v22 = v21;
    }

    else
    {
      v22 = 6;
    }

    if (d >= 0x401)
    {
      BN_mod_exp_mont_consttime_cold_4();
    }

    v33 = 1 << v22;
    len = 8 * d * ((1 << v22) + 2);
    v23 = OPENSSL_malloc(len + 64);
    if (v23)
    {
      v35 = v22;
      v34 = v23;
      v36 = v23 + (-v23 & 0x3FLL);
      if ((v36 & 0x3F) != 0)
      {
        BN_mod_exp_mont_consttime_cold_1();
      }

      if (d)
      {
        bzero(v36, len);
      }

      r.d = (v36 + 8 * (d << v22));
      b.d = &r.d[d];
      b.top = 0;
      b.dmax = d;
      r.top = 0;
      r.dmax = d;
      *&b.neg = 0x200000000;
      *&r.neg = 0x200000000;
      if (!bn_one_to_montgomery(&r, in_mont, ctx))
      {
        v14 = 0;
        v25 = v36;
        v17 = v37;
        v24 = v34;
        goto LABEL_67;
      }

      v24 = v34;
      if (!bn_resize_words(&r, d))
      {
        goto LABEL_61;
      }

      if (a->neg)
      {
        BN_mod_exp_mont_consttime_cold_2();
      }

      if (BN_ucmp(a, m) >= 0)
      {
        BN_mod_exp_mont_consttime_cold_3();
      }

      if (!BN_to_montgomery(&b, a, in_mont, ctx) || !bn_resize_words(&b, d))
      {
LABEL_61:
        v14 = 0;
        v25 = v36;
        v17 = v37;
        goto LABEL_67;
      }

      v25 = v36;
      copy_to_prebuf(&r, d, v36, 0);
      copy_to_prebuf(&b, d, v36, 1);
      if (v35 < 2)
      {
LABEL_47:
        v28 = (top << 6) - 1;
        v29 = 0;
        if (((v28 % v35) & 0x80000000) == 0)
        {
          v30 = v28 % v35 + 1;
          do
          {
            v29 = BN_is_bit_set(p, v28--) + 2 * v29;
            --v30;
          }

          while (v30);
        }

        if (copy_from_prebuf(&r, d, v36, v29, v35))
        {
LABEL_51:
          if (v28 < 0)
          {
            v14 = BN_from_montgomery(rr, &r, in_mont, ctx) != 0;
            goto LABEL_60;
          }

          v31 = 0;
          v32 = v35;
          while (BN_mod_mul_montgomery(&r, &r, &r, in_mont, ctx))
          {
            v31 = BN_is_bit_set(p, v28--) + 2 * v31;
            if (!--v32)
            {
              if (copy_from_prebuf(&b, d, v36, v31, v35) && BN_mod_mul_montgomery(&r, &r, &b, in_mont, ctx))
              {
                goto LABEL_51;
              }

              break;
            }
          }
        }
      }

      else if (BN_mod_mul_montgomery(&r, &b, &b, in_mont, ctx))
      {
        copy_to_prebuf(&r, d, v36, 2);
        if (v33 <= 4)
        {
          v26 = 4;
        }

        else
        {
          v26 = v33;
        }

        v27 = 3;
        while (BN_mod_mul_montgomery(&r, &b, &r, in_mont, ctx))
        {
          copy_to_prebuf(&r, d, v36, v27++);
          if (v26 == v27)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v14 = 0;
LABEL_60:
    v17 = v37;
LABEL_67:
    BN_MONT_CTX_free(v17);
    if (!v24)
    {
      if (v25)
      {
        OPENSSL_cleanse(v25, len);
      }
    }

    OPENSSL_free(v24);
    return v14;
  }

  if (BN_abs_is_word(m, 1))
  {
    BN_zero(rr);
    return 1;
  }

  return BN_one(rr);
}

uint64_t copy_to_prebuf(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = bn_copy_words((a3 + 8 * a4 * a2), a2, a1);
  if (!result)
  {
    copy_to_prebuf_cold_1();
  }

  return result;
}

uint64_t copy_from_prebuf(uint64_t a1, unsigned int a2, uint64_t a3, int a4, char a5)
{
  v10 = a2;
  result = bn_wexpand(a1, a2);
  if (result)
  {
    v12 = 8 * v10;
    if (a2)
    {
      bzero(*a1, v12);
    }

    v13 = 0;
    do
    {
      if (a2 >= 1)
      {
        v14 = 0;
        v15 = *a1;
        do
        {
          v15[v14] |= *(a3 + v14 * 8) & ((((v13 ^ a4) - 1) & ~(v13 ^ a4)) >> 63);
          ++v14;
        }

        while (a2 != v14);
      }

      ++v13;
      a3 += v12;
    }

    while (!(v13 >> a5));
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

int BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  neg = a->neg;
  if (neg == b->neg)
  {
    result = bn_uadd_consttime(r, a, b);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = neg == 0;
  if (neg)
  {
    v7 = b;
  }

  else
  {
    v7 = a;
  }

  if (v6)
  {
    v8 = b;
  }

  else
  {
    v8 = a;
  }

  if (BN_ucmp(v7, v8) < 0)
  {
    result = bn_usub_consttime(r, v8, v7);
    if (!result)
    {
      return result;
    }

    neg = 1;
    goto LABEL_15;
  }

  v9 = bn_usub_consttime(r, v7, v8);
  neg = 0;
  result = 0;
  if (v9)
  {
LABEL_15:
    bn_set_minimal_width(r);
    result = 1;
LABEL_16:
    r->neg = neg;
  }

  return result;
}

int BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  result = bn_usub_consttime(r, a, b);
  if (result)
  {
    bn_set_minimal_width(r);
    return 1;
  }

  return result;
}

uint64_t bn_uadd_consttime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a3 + 8);
  if (v4 >= v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (v4 >= v5)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(v7 + 8);
  v9 = *(v6 + 8);
  result = bn_wexpand(a1, v8 + 1);
  if (result)
  {
    *(a1 + 8) = v8 + 1;
    v11 = bn_add_words(*a1, *v7, *v6, v9);
    if (v9 >= v8)
    {
      v16 = *a1;
    }

    else
    {
      v12 = 8 * v9;
      v13 = v8 - v9;
      do
      {
        if (v11 >= 2)
        {
          bn_uadd_consttime_cold_1();
        }

        v14 = *(*v7 + v12);
        v15 = v14 + v11;
        v11 = __CFADD__(v14, v11);
        v16 = *a1;
        *(*a1 + v12) = v15;
        v12 += 8;
        --v13;
      }

      while (v13);
    }

    v16[v8] = v11;
    return 1;
  }

  return result;
}

int BN_add_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    goto LABEL_16;
  }

  v2 = w;
  if (!BN_is_zero(a))
  {
    if (a->neg)
    {
      a->neg = 0;
      LODWORD(v2) = BN_sub_word(a, v2);
      if (!BN_is_zero(a))
      {
        a->neg = a->neg == 0;
      }

      return v2;
    }

    v5 = 0;
    top = a->top;
    while ((top & ~(top >> 31)) != v5)
    {
      v7 = a->d[v5];
      v8 = __CFADD__(v7, v2);
      a->d[v5++] = v7 + v2;
      v2 = 1;
      if (!v8)
      {
        return v2;
      }
    }

    if ((top & 0x80000000) == 0)
    {
      if (!bn_wexpand(&a->d, top + 1))
      {
        LODWORD(v2) = 0;
        return v2;
      }

      ++a->top;
      a->d[top] = v2;
    }

LABEL_16:
    LODWORD(v2) = 1;
    return v2;
  }

  return BN_set_word(a, v2);
}

int BN_sub_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return 1;
  }

  v2 = w;
  if (BN_is_zero(a))
  {
    v4 = BN_set_word(a, v2);
    if (v4)
    {
      BN_set_negative(a, 1);
    }

    return v4;
  }

  if (a->neg)
  {
    a->neg = 0;
    result = BN_add_word(a, v2);
    a->neg = 1;
    return result;
  }

  v6 = bn_minimal_width(a);
  d = a->d;
  v8 = *a->d;
  if (v6 != 1 || v8 >= v2)
  {
    v9 = 0;
    v10 = v8 - v2;
    if (v8 < v2)
    {
      v2 = 1;
      do
      {
        *d = v10;
        v11 = d[1];
        ++d;
        v8 = v11;
        ++v9;
        v10 = -1;
      }

      while (!v11);
    }

    v12 = v8 - v2;
    *d = v12;
    if (!v12 && v9 == a->top - 1)
    {
      a->top = v9;
    }

    return 1;
  }

  *d = v2 - v8;
  v4 = 1;
  a->neg = 1;
  return v4;
}

int BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  v3 = b;
  neg = b->neg;
  if (a->neg)
  {
    if (neg)
    {
      v6 = a;
      goto LABEL_10;
    }

    v7 = 1;
LABEL_7:
    result = bn_uadd_consttime(r, a, b);
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (neg)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = b;
  v3 = a;
LABEL_10:
  if (BN_ucmp(v3, v6) < 0)
  {
    result = bn_usub_consttime(r, v6, v3);
    if (!result)
    {
      return result;
    }

    v7 = 1;
    goto LABEL_15;
  }

  v9 = bn_usub_consttime(r, v3, v6);
  v7 = 0;
  result = 0;
  if (v9)
  {
LABEL_15:
    bn_set_minimal_width(r);
    r->neg = v7;
    return 1;
  }

  return result;
}

uint64_t bn_usub_consttime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a2 + 8);
  if (v6 > v7)
  {
    if (!bn_fits_in_words(a3, v7))
    {
      v16 = 229;
      goto LABEL_16;
    }

    v7 = *(a2 + 8);
    v6 = v7;
  }

  result = bn_wexpand(a1, v7);
  if (!result)
  {
    return result;
  }

  v9 = bn_sub_words(*a1, *a2, *a3, v6);
  v10 = *(a2 + 8);
  v11 = v10 - v6;
  if (v10 > v6)
  {
    v12 = 8 * v6;
    do
    {
      if (v9 >= 2)
      {
        bn_usub_consttime_cold_1();
      }

      v13 = *(*a2 + v12);
      v14 = v13 >= v9;
      v15 = v13 - v9;
      v9 = !v14;
      *(*a1 + v12) = v15;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if (!v9)
  {
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    return 1;
  }

  v16 = 245;
LABEL_16:
  ERR_put_error(3, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/add.c.inc", v16);
  return 0;
}

BIGNUM *__cdecl BN_mod_sqrt(BIGNUM *ret, const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx)
{
  if (!BN_is_odd(n) || BN_abs_is_word(n, 1))
  {
    if (!BN_abs_is_word(n, 2))
    {
      ERR_put_error(3, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/sqrt.c.inc", 88);
      return 0;
    }

    v8 = ret;
    if (ret || (v8 = BN_new()) != 0)
    {
      is_bit_set = BN_is_bit_set(a, 0);
      goto LABEL_13;
    }

LABEL_14:
    if (v8 != ret)
    {
      BN_free(v8);
    }

    return 0;
  }

  if (!BN_is_zero(a) && !BN_is_one(a))
  {
    BN_CTX_start(ctx);
    v11 = BN_CTX_get(ctx);
    v12 = BN_CTX_get(ctx);
    v13 = BN_CTX_get(ctx);
    v14 = BN_CTX_get(ctx);
    v15 = BN_CTX_get(ctx);
    v16 = BN_CTX_get(ctx);
    if (!v16)
    {
LABEL_62:
      v8 = 0;
      goto LABEL_63;
    }

    v17 = v16;
    r = v12;
    v8 = ret;
    if (!ret)
    {
      v8 = BN_new();
      if (!v8)
      {
        goto LABEL_60;
      }
    }

    if (!BN_nnmod(v11, a, n, ctx))
    {
      goto LABEL_60;
    }

    v18 = 0;
    do
    {
      ++v18;
    }

    while (!BN_is_bit_set(n, v18));
    if (v18 == 2)
    {
      if (!bn_mod_lshift1_consttime(v14, v11, n, ctx))
      {
        goto LABEL_60;
      }

      if (!BN_rshift(v13, n, 3))
      {
        goto LABEL_60;
      }

      v13->neg = 0;
      if (!BN_mod_exp_mont(r, v14, v13, n, ctx, 0) || !BN_mod_sqr(v17, r, n, ctx) || !BN_mod_mul(v14, v14, v17, n, ctx) || !BN_sub_word(v14, 1uLL) || !BN_mod_mul(v15, v11, r, n, ctx) || !BN_mod_mul(v15, v15, v14, n, ctx))
      {
        goto LABEL_60;
      }

      v21 = v8;
LABEL_41:
      if (!BN_copy(v21, v15))
      {
        goto LABEL_60;
      }

      goto LABEL_29;
    }

    if (v18 == 1)
    {
      if (BN_rshift(v13, n, 2))
      {
        v13->neg = 0;
        if (BN_add_word(v13, 1uLL))
        {
          if (BN_mod_exp_mont(v8, v11, v13, n, ctx, 0))
          {
LABEL_29:
            if (!BN_mod_sqr(v15, v8, n, ctx))
            {
              goto LABEL_60;
            }

            if (!BN_cmp(v15, v11))
            {
LABEL_63:
              BN_CTX_end(ctx);
              return v8;
            }

            v19 = 110;
            v20 = 409;
            goto LABEL_59;
          }
        }
      }

LABEL_60:
      if (v8 != ret)
      {
        BN_clear_free(v8);
      }

      goto LABEL_62;
    }

    if (!BN_copy(v13, n))
    {
      goto LABEL_60;
    }

    aa = v15;
    v13->neg = 0;
    v22 = 2;
    while (1)
    {
      if (v22 <= 0x15)
      {
        goto LABEL_50;
      }

      v23 = BN_num_bits(n);
      if (!BN_pseudo_rand(v17, v23, 0, 0) || (BN_ucmp(v17, n) & 0x80000000) == 0 && BN_usub(v17, v17, n))
      {
        goto LABEL_60;
      }

      if (BN_is_zero(v17))
      {
LABEL_50:
        if (!BN_set_word(v17, v22))
        {
          goto LABEL_60;
        }
      }

      v24 = bn_jacobi(v17, v13, ctx);
      if (v24 < -1)
      {
        goto LABEL_60;
      }

      if (v24 != 1)
      {
        break;
      }

      if (++v22 == 82)
      {
        goto LABEL_58;
      }
    }

    if (v24 != -1)
    {
      if (!v24)
      {
        v19 = 114;
        v20 = 257;
        goto LABEL_59;
      }

LABEL_58:
      v19 = 115;
      v20 = 267;
      goto LABEL_59;
    }

    if (!BN_rshift(v13, v13, v18) || !BN_mod_exp_mont(v17, v17, v13, n, ctx, 0))
    {
      goto LABEL_60;
    }

    if (BN_is_one(v17))
    {
      v19 = 114;
      v20 = 282;
LABEL_59:
      ERR_put_error(3, 0, v19, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/sqrt.c.inc", v20);
      goto LABEL_60;
    }

    if (!BN_rshift1(v14, v13))
    {
      goto LABEL_60;
    }

    if (BN_is_zero(v14))
    {
      if (!BN_nnmod(v14, v11, n, ctx))
      {
        goto LABEL_60;
      }

      if (!BN_is_zero(v14))
      {
        if (!BN_one(aa))
        {
          goto LABEL_60;
        }

LABEL_77:
        if (BN_mod_sqr(r, aa, n, ctx) && BN_mod_mul(r, r, v11, n, ctx))
        {
          v25 = aa;
          v26 = aa;
          for (i = v11; BN_mod_mul(v25, v26, i, n, ctx); i = v17)
          {
            if (BN_is_one(r))
            {
              v21 = v8;
              v15 = aa;
              goto LABEL_41;
            }

            v28 = v18 - 2;
            if (v18 < 2)
            {
LABEL_98:
              v19 = 110;
              v20 = 377;
              goto LABEL_59;
            }

            v29 = v18 - 1;
            v18 = 1;
            while (1)
            {
              if (v18 == 1)
              {
                if (!BN_mod_sqr(v14, r, n, ctx))
                {
                  goto LABEL_60;
                }
              }

              else if (!BN_mod_mul(v14, v14, v14, n, ctx))
              {
                goto LABEL_60;
              }

              if (BN_is_one(v14))
              {
                break;
              }

              ++v18;
              --v28;
              --v29;
              if (v28 == -1)
              {
                goto LABEL_98;
              }
            }

            if (!BN_copy(v14, v17))
            {
              goto LABEL_60;
            }

            if (v28 >= 1)
            {
              while (BN_mod_sqr(v14, v14, n, ctx))
              {
                if (--v29 < 2)
                {
                  goto LABEL_95;
                }
              }

              goto LABEL_60;
            }

LABEL_95:
            if (!BN_mod_mul(v17, v14, v14, n, ctx) || !BN_mod_mul(aa, aa, v14, n, ctx))
            {
              goto LABEL_60;
            }

            v25 = r;
            v26 = r;
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!BN_mod_exp_mont(aa, v11, v14, n, ctx, 0))
      {
        goto LABEL_60;
      }

      if (!BN_is_zero(aa))
      {
        goto LABEL_77;
      }
    }

    BN_zero(v8);
    goto LABEL_63;
  }

  v8 = ret;
  if (!ret)
  {
    v8 = BN_new();
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  is_bit_set = BN_is_one(a);
LABEL_13:
  if (!BN_set_word(v8, is_bit_set))
  {
    goto LABEL_14;
  }

  return v8;
}

void bn_sqr_words(unint64_t *rp, const unint64_t *ap, int num)
{
  if (*&num)
  {
    if (*&num < 4uLL)
    {
      goto LABEL_8;
    }

    do
    {
      *rp = *ap * *ap;
      *(rp + 1) = ap[1] * ap[1];
      *(rp + 2) = ap[2] * ap[2];
      *(rp + 3) = ap[3] * ap[3];
      ap += 4;
      rp += 8;
      *&num -= 4;
    }

    while (*&num >= 4uLL);
    if (*&num)
    {
LABEL_8:
      do
      {
        v3 = *ap++;
        *rp = v3 * v3;
        rp += 2;
        --*&num;
      }

      while (*&num);
    }
  }
}

void *bn_mul_comba8(void *result, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v3 = (*a3 * v5) >> 64;
  *result = *a3 * *a2;
  v6 = a2[1];
  v8 = *a3;
  v7 = a3[1];
  v9 = (__PAIR128__(v7, v4) * v5) >> 64;
  if (__CFADD__(v7 * *a2, v3))
  {
    v10 = ((v7 * *a2) >> 64) + 1;
  }

  else
  {
    v10 = (v7 * *a2) >> 64;
  }

  v11 = (v8 * v6) >> 64;
  v12 = v8 * v6;
  v13 = __CFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v11;
  }

  result[1] = v14;
  v16 = a2[2];
  v17 = a3[1];
  v18 = (*a3 * v16) >> 64;
  v19 = *a3 * v16;
  v13 = __CFADD__(v19, v15 + v10);
  v20 = v19 + v15 + v10;
  if (v13)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v18;
  }

  v13 = __CFADD__(__CFADD__(v15, v10), v21);
  v22 = __CFADD__(v15, v10) + v21;
  v23 = v13;
  v25 = *a2;
  v24 = a2[1];
  v26 = (v17 * v24) >> 64;
  v27 = v17 * v24;
  v13 = __CFADD__(v20, v27);
  v28 = v20 + v27;
  if (v13)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v26;
  }

  v13 = __CFADD__(v22, v29);
  v30 = v22 + v29;
  v31 = v13;
  v32 = a3[2];
  v33 = (v32 * v25) >> 64;
  v34 = v32 * v25;
  v13 = __CFADD__(v28, v34);
  v35 = v28 + v34;
  if (v13)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v13 = __CFADD__(v30, v36);
  v37 = v30 + v36;
  v38 = v23 + v13 + v31;
  result[2] = v35;
  v39 = a2[1];
  v41 = a3[2];
  v40 = a3[3];
  v42 = v40 * *a2;
  v13 = __CFADD__(v42, v37);
  v43 = v42 + v37;
  if (v13)
  {
    v44 = ((v40 * *a2) >> 64) + 1;
  }

  else
  {
    v44 = (v40 * *a2) >> 64;
  }

  v45 = v38 + v44;
  v46 = (v41 * v39) >> 64;
  v47 = v41 * v39;
  v13 = __CFADD__(v43, v47);
  v48 = v43 + v47;
  if (v13)
  {
    v49 = v46 + 1;
  }

  else
  {
    v49 = v46;
  }

  v13 = __CFADD__(v45, v49);
  v50 = v45 + v49;
  v51 = v13;
  if (__CFADD__(v38, v44))
  {
    v52 = v51 + 1;
  }

  else
  {
    v52 = v51;
  }

  v53 = a2[2];
  v54 = a2[3];
  v56 = *a3;
  v55 = a3[1];
  v57 = (v55 * v53) >> 64;
  v58 = v55 * v53;
  v13 = __CFADD__(v48, v58);
  v59 = v48 + v58;
  if (v13)
  {
    v60 = v57 + 1;
  }

  else
  {
    v60 = v57;
  }

  v13 = __CFADD__(v50, v60);
  v61 = v50 + v60;
  v62 = v13;
  v63 = (v56 * v54) >> 64;
  v64 = v56 * v54;
  v13 = __CFADD__(v59, v64);
  v65 = v59 + v64;
  if (v13)
  {
    v66 = v63 + 1;
  }

  else
  {
    v66 = v63;
  }

  v67 = __PAIR128__(v52, v61) + __PAIR128__(v62, v66);
  result[3] = v65;
  v68 = a3[1];
  v69 = *a3 * a2[4] + v67;
  v70 = *(&v67 + 1) + v67;
  v71 = __CFADD__(*(&v67 + 1), v67);
  v73 = a2[2];
  v72 = a2[3];
  v74 = (v68 * v72) >> 64;
  v75 = v68 * v72;
  v13 = __CFADD__(v69, v75);
  v76 = v69 + v75;
  if (v13)
  {
    v77 = v74 + 1;
  }

  else
  {
    v77 = v74;
  }

  v13 = __CFADD__(v70, v77);
  v78 = v70 + v77;
  v79 = v13;
  v80 = a3[2];
  v81 = a3[3];
  v82 = (v80 * v73) >> 64;
  v83 = v80 * v73;
  v13 = __CFADD__(v76, v83);
  v84 = v76 + v83;
  if (v13)
  {
    v85 = v82 + 1;
  }

  else
  {
    v85 = v82;
  }

  v13 = __CFADD__(v78, v85);
  v86 = v78 + v85;
  v87 = v71 + v13 + v79;
  v89 = *a2;
  v88 = a2[1];
  v90 = (v81 * v88) >> 64;
  v91 = v81 * v88;
  v13 = __CFADD__(v84, v91);
  v92 = v84 + v91;
  if (v13)
  {
    v93 = v90 + 1;
  }

  else
  {
    v93 = v90;
  }

  v13 = __CFADD__(v86, v93);
  v94 = v86 + v93;
  v95 = v13;
  v96 = a3[4];
  v97 = (v96 * v89) >> 64;
  v98 = v96 * v89;
  v13 = __CFADD__(v92, v98);
  v99 = v92 + v98;
  if (v13)
  {
    v100 = v97 + 1;
  }

  else
  {
    v100 = v97;
  }

  v101 = __PAIR128__(v87, v94) + __PAIR128__(v95, v100);
  result[4] = v99;
  v102 = a2[1];
  v103 = a3[4];
  v104 = a3[5] * *a2 + v101;
  v105 = *(&v101 + 1) + v101;
  v106 = (v103 * v102) >> 64;
  v107 = v103 * v102;
  v13 = __CFADD__(v104, v107);
  v108 = v104 + v107;
  if (v13)
  {
    v109 = v106 + 1;
  }

  else
  {
    v109 = v106;
  }

  v13 = __CFADD__(v105, v109);
  v110 = v105 + v109;
  v111 = v13;
  if (__CFADD__(*(&v101 + 1), v101))
  {
    v112 = v111 + 1;
  }

  else
  {
    v112 = v111;
  }

  v113 = a2[2];
  v114 = a2[3];
  v116 = a3[2];
  v115 = a3[3];
  v117 = (v115 * v113) >> 64;
  v118 = v115 * v113;
  v13 = __CFADD__(v108, v118);
  v119 = v108 + v118;
  if (v13)
  {
    v120 = v117 + 1;
  }

  else
  {
    v120 = v117;
  }

  v13 = __CFADD__(v110, v120);
  v121 = v110 + v120;
  v122 = v13;
  v123 = (v116 * v114) >> 64;
  v124 = v116 * v114;
  v13 = __CFADD__(v119, v124);
  v125 = v119 + v124;
  if (v13)
  {
    v126 = v123 + 1;
  }

  else
  {
    v126 = v123;
  }

  v127 = __PAIR128__(v112, v121) + __PAIR128__(v122, v126);
  v128 = a2[4];
  v129 = a2[5];
  v131 = *a3;
  v130 = a3[1];
  v132 = (v130 * v128) >> 64;
  v133 = v130 * v128;
  v13 = __CFADD__(v125, v133);
  v134 = v125 + v133;
  if (v13)
  {
    v135 = v132 + 1;
  }

  else
  {
    v135 = v132;
  }

  v136 = __CFADD__(v127, v135);
  v137 = (v131 * v129) >> 64;
  v138 = v131 * v129;
  v13 = __CFADD__(v134, v138);
  v139 = v134 + v138;
  if (v13)
  {
    v140 = v137 + 1;
  }

  else
  {
    v140 = v137;
  }

  v141 = v127 + __PAIR128__(v136, v140);
  result[5] = v139;
  v142 = a3[1];
  v143 = *a3 * a2[6] + v141;
  v144 = *(&v141 + 1) + v141;
  v145 = __CFADD__(*(&v141 + 1), v141);
  v147 = a2[4];
  v146 = a2[5];
  v148 = (v142 * v146) >> 64;
  v149 = v142 * v146;
  v13 = __CFADD__(v143, v149);
  v150 = v143 + v149;
  if (v13)
  {
    v151 = v148 + 1;
  }

  else
  {
    v151 = v148;
  }

  v13 = __CFADD__(v144, v151);
  v152 = v144 + v151;
  v153 = v13;
  v154 = a3[2];
  v155 = a3[3];
  v156 = (v154 * v147) >> 64;
  v157 = v154 * v147;
  v13 = __CFADD__(v150, v157);
  v158 = v150 + v157;
  if (v13)
  {
    v159 = v156 + 1;
  }

  else
  {
    v159 = v156;
  }

  v13 = __CFADD__(v152, v159);
  v160 = v152 + v159;
  v161 = v145 + v13 + v153;
  v163 = a2[2];
  v162 = a2[3];
  v164 = (v155 * v162) >> 64;
  v165 = v155 * v162;
  v13 = __CFADD__(v158, v165);
  v166 = v158 + v165;
  if (v13)
  {
    v167 = v164 + 1;
  }

  else
  {
    v167 = v164;
  }

  v13 = __CFADD__(v160, v167);
  v168 = v160 + v167;
  v169 = v13;
  v170 = a3[4];
  v171 = a3[5];
  v172 = (v170 * v163) >> 64;
  v173 = v170 * v163;
  v13 = __CFADD__(v166, v173);
  v174 = v166 + v173;
  if (v13)
  {
    v175 = v172 + 1;
  }

  else
  {
    v175 = v172;
  }

  v176 = __PAIR128__(v161, v168) + __PAIR128__(v169, v175);
  v178 = *a2;
  v177 = a2[1];
  v179 = (v171 * v177) >> 64;
  v180 = v171 * v177;
  v13 = __CFADD__(v174, v180);
  v181 = v174 + v180;
  if (v13)
  {
    v182 = v179 + 1;
  }

  else
  {
    v182 = v179;
  }

  v183 = __CFADD__(v176, v182);
  v184 = a3[6];
  v185 = (v184 * v178) >> 64;
  v186 = v184 * v178;
  v13 = __CFADD__(v181, v186);
  v187 = v181 + v186;
  if (v13)
  {
    v188 = v185 + 1;
  }

  else
  {
    v188 = v185;
  }

  v189 = v176 + __PAIR128__(v183, v188);
  result[6] = v187;
  v190 = a2[1];
  v191 = a3[6];
  v192 = a3[7] * *a2 + v189;
  v193 = *(&v189 + 1) + v189;
  v194 = (v191 * v190) >> 64;
  v195 = v191 * v190;
  v13 = __CFADD__(v192, v195);
  v196 = v192 + v195;
  if (v13)
  {
    v197 = v194 + 1;
  }

  else
  {
    v197 = v194;
  }

  v13 = __CFADD__(v193, v197);
  v198 = v193 + v197;
  v199 = v13;
  if (__CFADD__(*(&v189 + 1), v189))
  {
    v200 = v199 + 1;
  }

  else
  {
    v200 = v199;
  }

  v201 = a2[2];
  v202 = a2[3];
  v204 = a3[4];
  v203 = a3[5];
  v205 = (v203 * v201) >> 64;
  v206 = v203 * v201;
  v13 = __CFADD__(v196, v206);
  v207 = v196 + v206;
  if (v13)
  {
    v208 = v205 + 1;
  }

  else
  {
    v208 = v205;
  }

  v13 = __CFADD__(v198, v208);
  v209 = v198 + v208;
  v210 = v13;
  v211 = (v204 * v202) >> 64;
  v212 = v204 * v202;
  v13 = __CFADD__(v207, v212);
  v213 = v207 + v212;
  if (v13)
  {
    v214 = v211 + 1;
  }

  else
  {
    v214 = v211;
  }

  v215 = __PAIR128__(v200, v209) + __PAIR128__(v210, v214);
  v216 = a2[4];
  v217 = a2[5];
  v219 = a3[2];
  v218 = a3[3];
  v220 = (v218 * v216) >> 64;
  v221 = v218 * v216;
  v13 = __CFADD__(v213, v221);
  v222 = v213 + v221;
  if (v13)
  {
    v223 = v220 + 1;
  }

  else
  {
    v223 = v220;
  }

  v224 = __CFADD__(v215, v223);
  v225 = (v219 * v217) >> 64;
  v226 = v219 * v217;
  v13 = __CFADD__(v222, v226);
  v227 = v222 + v226;
  if (v13)
  {
    v228 = v225 + 1;
  }

  else
  {
    v228 = v225;
  }

  v229 = v215 + __PAIR128__(v224, v228);
  v230 = a2[6];
  v231 = a2[7];
  v233 = *a3;
  v232 = a3[1];
  v234 = (v232 * v230) >> 64;
  v235 = v232 * v230;
  v13 = __CFADD__(v227, v235);
  v236 = v227 + v235;
  if (v13)
  {
    v237 = v234 + 1;
  }

  else
  {
    v237 = v234;
  }

  v238 = __CFADD__(v229, v237);
  v239 = (v233 * v231) >> 64;
  v240 = v233 * v231;
  v13 = __CFADD__(v236, v240);
  v241 = v236 + v240;
  if (v13)
  {
    v242 = v239 + 1;
  }

  else
  {
    v242 = v239;
  }

  v243 = v229 + __PAIR128__(v238, v242);
  result[7] = v241;
  v244 = a3[2];
  v245 = a3[1] * a2[7] + v243;
  v246 = *(&v243 + 1) + v243;
  v247 = __CFADD__(*(&v243 + 1), v243);
  v249 = a2[5];
  v248 = a2[6];
  v250 = (v244 * v248) >> 64;
  v251 = v244 * v248;
  v13 = __CFADD__(v245, v251);
  v252 = v245 + v251;
  if (v13)
  {
    v253 = v250 + 1;
  }

  else
  {
    v253 = v250;
  }

  v13 = __CFADD__(v246, v253);
  v254 = v246 + v253;
  v255 = v13;
  v256 = a3[3];
  v257 = a3[4];
  v258 = (v256 * v249) >> 64;
  v259 = v256 * v249;
  v13 = __CFADD__(v252, v259);
  v260 = v252 + v259;
  if (v13)
  {
    v261 = v258 + 1;
  }

  else
  {
    v261 = v258;
  }

  v13 = __CFADD__(v254, v261);
  v262 = v254 + v261;
  v263 = v247 + v13 + v255;
  v265 = a2[3];
  v264 = a2[4];
  v266 = (v257 * v264) >> 64;
  v267 = v257 * v264;
  v13 = __CFADD__(v260, v267);
  v268 = v260 + v267;
  if (v13)
  {
    v269 = v266 + 1;
  }

  else
  {
    v269 = v266;
  }

  v13 = __CFADD__(v262, v269);
  v270 = v262 + v269;
  v271 = v13;
  v272 = a3[5];
  v273 = a3[6];
  v274 = (v272 * v265) >> 64;
  v275 = v272 * v265;
  v13 = __CFADD__(v268, v275);
  v276 = v268 + v275;
  if (v13)
  {
    v277 = v274 + 1;
  }

  else
  {
    v277 = v274;
  }

  v278 = __PAIR128__(v263, v270) + __PAIR128__(v271, v277);
  v280 = a2[1];
  v279 = a2[2];
  v281 = (v273 * v279) >> 64;
  v282 = v273 * v279;
  v13 = __CFADD__(v276, v282);
  v283 = v276 + v282;
  if (v13)
  {
    v284 = v281 + 1;
  }

  else
  {
    v284 = v281;
  }

  v285 = __CFADD__(v278, v284);
  v286 = a3[7];
  v287 = (v286 * v280) >> 64;
  v288 = v286 * v280;
  v13 = __CFADD__(v283, v288);
  v289 = v283 + v288;
  if (v13)
  {
    v290 = v287 + 1;
  }

  else
  {
    v290 = v287;
  }

  v291 = v278 + __PAIR128__(v285, v290);
  result[8] = v289;
  v292 = a2[3];
  v293 = a3[6];
  v294 = a3[7] * a2[2] + v291;
  v295 = *(&v291 + 1) + v291;
  v296 = (v293 * v292) >> 64;
  v297 = v293 * v292;
  v13 = __CFADD__(v294, v297);
  v298 = v294 + v297;
  if (v13)
  {
    v299 = v296 + 1;
  }

  else
  {
    v299 = v296;
  }

  v13 = __CFADD__(v295, v299);
  v300 = v295 + v299;
  v301 = v13;
  if (__CFADD__(*(&v291 + 1), v291))
  {
    v302 = v301 + 1;
  }

  else
  {
    v302 = v301;
  }

  v303 = a2[4];
  v304 = a2[5];
  v306 = a3[4];
  v305 = a3[5];
  v307 = (v305 * v303) >> 64;
  v308 = v305 * v303;
  v13 = __CFADD__(v298, v308);
  v309 = v298 + v308;
  if (v13)
  {
    v310 = v307 + 1;
  }

  else
  {
    v310 = v307;
  }

  v13 = __CFADD__(v300, v310);
  v311 = v300 + v310;
  v312 = v13;
  v313 = (v306 * v304) >> 64;
  v314 = v306 * v304;
  v13 = __CFADD__(v309, v314);
  v315 = v309 + v314;
  if (v13)
  {
    v316 = v313 + 1;
  }

  else
  {
    v316 = v313;
  }

  v317 = __PAIR128__(v302, v311) + __PAIR128__(v312, v316);
  v318 = a2[6];
  v319 = a2[7];
  v321 = a3[2];
  v320 = a3[3];
  v322 = (v320 * v318) >> 64;
  v323 = v320 * v318;
  v13 = __CFADD__(v315, v323);
  v324 = v315 + v323;
  if (v13)
  {
    v325 = v322 + 1;
  }

  else
  {
    v325 = v322;
  }

  v326 = __CFADD__(v317, v325);
  v327 = (v321 * v319) >> 64;
  v328 = v321 * v319;
  v13 = __CFADD__(v324, v328);
  v329 = v324 + v328;
  if (v13)
  {
    v330 = v327 + 1;
  }

  else
  {
    v330 = v327;
  }

  v331 = v317 + __PAIR128__(v326, v330);
  result[9] = v329;
  v332 = a3[4];
  v333 = a3[3] * a2[7] + v331;
  v334 = *(&v331 + 1) + v331;
  v335 = __CFADD__(*(&v331 + 1), v331);
  v337 = a2[5];
  v336 = a2[6];
  v338 = (v332 * v336) >> 64;
  v339 = v332 * v336;
  v13 = __CFADD__(v333, v339);
  v340 = v333 + v339;
  if (v13)
  {
    v341 = v338 + 1;
  }

  else
  {
    v341 = v338;
  }

  v13 = __CFADD__(v334, v341);
  v342 = v334 + v341;
  v343 = v13;
  v344 = a3[5];
  v345 = a3[6];
  v346 = (v344 * v337) >> 64;
  v347 = v344 * v337;
  v13 = __CFADD__(v340, v347);
  v348 = v340 + v347;
  if (v13)
  {
    v349 = v346 + 1;
  }

  else
  {
    v349 = v346;
  }

  v13 = __CFADD__(v342, v349);
  v350 = v342 + v349;
  v351 = v335 + v13 + v343;
  v353 = a2[3];
  v352 = a2[4];
  v354 = (v345 * v352) >> 64;
  v355 = v345 * v352;
  v13 = __CFADD__(v348, v355);
  v356 = v348 + v355;
  if (v13)
  {
    v357 = v354 + 1;
  }

  else
  {
    v357 = v354;
  }

  v13 = __CFADD__(v350, v357);
  v358 = v350 + v357;
  v359 = v13;
  v360 = a3[7];
  v361 = (v360 * v353) >> 64;
  v362 = v360 * v353;
  v13 = __CFADD__(v356, v362);
  v363 = v356 + v362;
  if (v13)
  {
    v364 = v361 + 1;
  }

  else
  {
    v364 = v361;
  }

  v365 = __PAIR128__(v351, v358) + __PAIR128__(v359, v364);
  result[10] = v363;
  v366 = a2[5];
  v367 = a3[6];
  v368 = a3[7] * a2[4] + v365;
  v369 = *(&v365 + 1) + v365;
  v370 = (v367 * v366) >> 64;
  v371 = v367 * v366;
  v13 = __CFADD__(v368, v371);
  v372 = v368 + v371;
  if (v13)
  {
    v373 = v370 + 1;
  }

  else
  {
    v373 = v370;
  }

  v13 = __CFADD__(v369, v373);
  v374 = v369 + v373;
  v375 = v13;
  v376 = a2[6];
  v377 = a2[7];
  v379 = a3[4];
  v378 = a3[5];
  v380 = (v378 * v376) >> 64;
  v381 = v378 * v376;
  if (__CFADD__(*(&v365 + 1), v365))
  {
    ++v375;
  }

  v13 = __CFADD__(v372, v381);
  v382 = v372 + v381;
  if (v13)
  {
    v383 = v380 + 1;
  }

  else
  {
    v383 = v380;
  }

  v13 = __CFADD__(v374, v383);
  v384 = v374 + v383;
  v385 = v13;
  v386 = (v379 * v377) >> 64;
  v387 = v379 * v377;
  v13 = __CFADD__(v382, v387);
  v388 = v382 + v387;
  if (v13)
  {
    v389 = v386 + 1;
  }

  else
  {
    v389 = v386;
  }

  v390 = __PAIR128__(v375, v384) + __PAIR128__(v385, v389);
  result[11] = v388;
  v391 = a3[6];
  v392 = a3[5] * a2[7] + v390;
  v393 = *(&v390 + 1) + v390;
  v394 = __CFADD__(*(&v390 + 1), v390);
  v396 = a2[5];
  v395 = a2[6];
  v397 = (v391 * v395) >> 64;
  v398 = v391 * v395;
  v13 = __CFADD__(v392, v398);
  v399 = v392 + v398;
  if (v13)
  {
    v400 = v397 + 1;
  }

  else
  {
    v400 = v397;
  }

  v13 = __CFADD__(v393, v400);
  v401 = v393 + v400;
  v402 = v13;
  v403 = a3[7];
  v404 = (v403 * v396) >> 64;
  v405 = v403 * v396;
  v13 = __CFADD__(v399, v405);
  v406 = v399 + v405;
  if (v13)
  {
    v407 = v404 + 1;
  }

  else
  {
    v407 = v404;
  }

  v13 = __CFADD__(v401, v407);
  v408 = v401 + v407;
  v409 = v394 + v13 + v402;
  result[12] = v406;
  v410 = a2[6];
  v411 = a2[7];
  v413 = a3[6];
  v412 = a3[7];
  v414 = (v412 * v410) >> 64;
  v415 = v412 * v410;
  v13 = __CFADD__(v415, v408);
  v416 = v415 + v408;
  if (v13)
  {
    v417 = v414 + 1;
  }

  else
  {
    v417 = v414;
  }

  v418 = v409 + v417;
  v419 = (v413 * v411) >> 64;
  v420 = v413 * v411;
  v13 = __CFADD__(v416, v420);
  v421 = v416 + v420;
  if (v13)
  {
    v422 = v419 + 1;
  }

  else
  {
    v422 = v419;
  }

  v13 = __CFADD__(v418, v422);
  v423 = v418 + v422;
  v424 = v13;
  result[13] = v421;
  v425 = a2[7];
  v426 = a3[7];
  v427 = (v426 * v425) >> 64;
  v428 = v426 * v425;
  v13 = __CFADD__(v428, v423);
  v429 = v428 + v423;
  if (v13)
  {
    v430 = v427 + 1;
  }

  else
  {
    v430 = v427;
  }

  result[14] = v429;
  result[15] = v424 + __CFADD__(v409, v417) + v430;
  return result;
}

void *bn_sqr_comba8(void *result, unint64_t *a2)
{
  v2 = (*a2 * *a2) >> 64;
  *result = *a2 * *a2;
  v3 = a2[1];
  v4 = (*a2 * v3) >> 64;
  v5 = *a2 * v3;
  v6 = __CFADD__(v5, v2);
  v7 = v5 + v2;
  if (v6)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  v6 = __CFADD__(v7, v5);
  v9 = v7 + v5;
  if (v6)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  result[1] = v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = (v11 * v11) >> 64;
  v14 = v11 * v11;
  v6 = __CFADD__(v14, v10 + v8);
  v15 = v14 + v10 + v8;
  if (v6)
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v6 = __CFADD__(__CFADD__(v10, v8), v16);
  v17 = __CFADD__(v10, v8) + v16;
  v18 = v6;
  v19 = a2[2];
  v20 = (v12 * v19) >> 64;
  v21 = v12 * v19;
  v6 = __CFADD__(v15, v21);
  v22 = v15 + v21;
  if (v6)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  v6 = __CFADD__(v17, v23);
  v24 = v17 + v23;
  v25 = v6;
  v6 = __CFADD__(v22, v21);
  v26 = v22 + v21;
  if (v6)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v20;
  }

  v6 = __CFADD__(v24, v27);
  v28 = v24 + v27;
  v29 = v18 + v6 + v25;
  result[2] = v26;
  v31 = a2[2];
  v30 = a2[3];
  v32 = a2[1];
  v33 = (*a2 * v30) >> 64;
  v34 = *a2 * v30;
  v6 = __CFADD__(v34, v28);
  v35 = v34 + v28;
  if (v6)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v29 + v36;
  v6 = __CFADD__(v35, v34);
  v38 = v35 + v34;
  if (v6)
  {
    v39 = v33 + 1;
  }

  else
  {
    v39 = v33;
  }

  v6 = __CFADD__(v37, v39);
  v40 = v37 + v39;
  v41 = v6;
  if (__CFADD__(v29, v36))
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = (v32 * v31) >> 64;
  v44 = v32 * v31;
  v6 = __CFADD__(v38, v44);
  v45 = v38 + v44;
  if (v6)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v43;
  }

  v6 = __CFADD__(v40, v46);
  v47 = v40 + v46;
  v48 = v6;
  v6 = __CFADD__(v45, v44);
  v49 = v45 + v44;
  if (v6)
  {
    v50 = v43 + 1;
  }

  else
  {
    v50 = v43;
  }

  v51 = __PAIR128__(v42, v47) + __PAIR128__(v48, v50);
  result[3] = v49;
  v52 = a2[3];
  v53 = a2[2] * a2[2] + v51;
  v54 = *(&v51 + 1) + v51;
  v55 = __CFADD__(*(&v51 + 1), v51);
  v57 = *a2;
  v56 = a2[1];
  v58 = (v56 * v52) >> 64;
  v59 = v56 * v52;
  v6 = __CFADD__(v53, v59);
  v60 = v53 + v59;
  if (v6)
  {
    v61 = v58 + 1;
  }

  else
  {
    v61 = v58;
  }

  v6 = __CFADD__(v54, v61);
  v62 = v54 + v61;
  v63 = v6;
  v6 = __CFADD__(v60, v59);
  v64 = v60 + v59;
  if (v6)
  {
    v65 = v58 + 1;
  }

  else
  {
    v65 = v58;
  }

  v6 = __CFADD__(v62, v65);
  v66 = v62 + v65;
  v67 = v55 + v6 + v63;
  v68 = a2[4];
  v69 = (v57 * v68) >> 64;
  v70 = v57 * v68;
  v6 = __CFADD__(v64, v70);
  v71 = v64 + v70;
  if (v6)
  {
    v72 = v69 + 1;
  }

  else
  {
    v72 = v69;
  }

  v6 = __CFADD__(v66, v72);
  v73 = v66 + v72;
  v74 = v6;
  v6 = __CFADD__(v71, v70);
  v75 = v71 + v70;
  if (v6)
  {
    v76 = v69 + 1;
  }

  else
  {
    v76 = v69;
  }

  v77 = __PAIR128__(v67, v73) + __PAIR128__(v74, v76);
  result[4] = v75;
  v79 = a2[4];
  v78 = a2[5];
  v80 = a2[1];
  v81 = (*a2 * v78) >> 64;
  v82 = *a2 * v78;
  v83 = v82 + v77;
  if (__CFADD__(v82, v77))
  {
    v84 = v81 + 1;
  }

  else
  {
    v84 = v81;
  }

  v85 = *(&v77 + 1) + v84;
  v6 = __CFADD__(v83, v82);
  v86 = v83 + v82;
  if (v6)
  {
    v87 = v81 + 1;
  }

  else
  {
    v87 = v81;
  }

  v6 = __CFADD__(v85, v87);
  v88 = v85 + v87;
  v89 = v6;
  if (__CFADD__(*(&v77 + 1), v84))
  {
    v90 = v89 + 1;
  }

  else
  {
    v90 = v89;
  }

  v91 = (v80 * v79) >> 64;
  v92 = v80 * v79;
  v6 = __CFADD__(v86, v92);
  v93 = v86 + v92;
  if (v6)
  {
    v94 = v91 + 1;
  }

  else
  {
    v94 = v91;
  }

  v6 = __CFADD__(v88, v94);
  v95 = v88 + v94;
  v96 = v6;
  v6 = __CFADD__(v93, v92);
  v97 = v93 + v92;
  if (v6)
  {
    v98 = v91 + 1;
  }

  else
  {
    v98 = v91;
  }

  v99 = __PAIR128__(v90, v95) + __PAIR128__(v96, v98);
  v101 = a2[2];
  v100 = a2[3];
  v102 = (v101 * v100) >> 64;
  v103 = v101 * v100;
  v6 = __CFADD__(v97, v103);
  v104 = v97 + v103;
  if (v6)
  {
    v105 = v102 + 1;
  }

  else
  {
    v105 = v102;
  }

  v106 = __CFADD__(v99, v105);
  v6 = __CFADD__(v104, v103);
  v107 = v104 + v103;
  if (v6)
  {
    v108 = v102 + 1;
  }

  else
  {
    v108 = v102;
  }

  v109 = v99 + __PAIR128__(v106, v108);
  result[5] = v107;
  v110 = a2[2];
  v111 = a2[3] * a2[3] + v109;
  v112 = *(&v109 + 1) + v109;
  v113 = __CFADD__(*(&v109 + 1), v109);
  v114 = a2[4];
  v115 = a2[5];
  v116 = (v110 * v114) >> 64;
  v117 = v110 * v114;
  v6 = __CFADD__(v111, v117);
  v118 = v111 + v117;
  if (v6)
  {
    v119 = v116 + 1;
  }

  else
  {
    v119 = v116;
  }

  v6 = __CFADD__(v112, v119);
  v120 = v112 + v119;
  v121 = v6;
  v6 = __CFADD__(v118, v117);
  v122 = v118 + v117;
  if (v6)
  {
    v123 = v116 + 1;
  }

  else
  {
    v123 = v116;
  }

  v6 = __CFADD__(v120, v123);
  v124 = v120 + v123;
  v125 = v113 + v6 + v121;
  v127 = *a2;
  v126 = a2[1];
  v128 = (v126 * v115) >> 64;
  v129 = v126 * v115;
  v6 = __CFADD__(v122, v129);
  v130 = v122 + v129;
  if (v6)
  {
    v131 = v128 + 1;
  }

  else
  {
    v131 = v128;
  }

  v6 = __CFADD__(v124, v131);
  v132 = v124 + v131;
  v133 = v6;
  v6 = __CFADD__(v130, v129);
  v134 = v130 + v129;
  if (v6)
  {
    v135 = v128 + 1;
  }

  else
  {
    v135 = v128;
  }

  v136 = __PAIR128__(v125, v132) + __PAIR128__(v133, v135);
  v137 = a2[6];
  v138 = (v127 * v137) >> 64;
  v139 = v127 * v137;
  v6 = __CFADD__(v134, v139);
  v140 = v134 + v139;
  if (v6)
  {
    v141 = v138 + 1;
  }

  else
  {
    v141 = v138;
  }

  v142 = __CFADD__(v136, v141);
  v6 = __CFADD__(v140, v139);
  v143 = v140 + v139;
  if (v6)
  {
    v144 = v138 + 1;
  }

  else
  {
    v144 = v138;
  }

  v145 = v136 + __PAIR128__(v142, v144);
  result[6] = v143;
  v147 = a2[6];
  v146 = a2[7];
  v148 = a2[1];
  v149 = (*a2 * v146) >> 64;
  v150 = *a2 * v146;
  v151 = v150 + v145;
  if (__CFADD__(v150, v145))
  {
    v152 = v149 + 1;
  }

  else
  {
    v152 = v149;
  }

  v153 = *(&v145 + 1) + v152;
  v6 = __CFADD__(v151, v150);
  v154 = v151 + v150;
  if (v6)
  {
    v155 = v149 + 1;
  }

  else
  {
    v155 = v149;
  }

  v6 = __CFADD__(v153, v155);
  v156 = v153 + v155;
  v157 = v6;
  if (__CFADD__(*(&v145 + 1), v152))
  {
    v158 = v157 + 1;
  }

  else
  {
    v158 = v157;
  }

  v159 = (v148 * v147) >> 64;
  v160 = v148 * v147;
  v6 = __CFADD__(v154, v160);
  v161 = v154 + v160;
  if (v6)
  {
    v162 = v159 + 1;
  }

  else
  {
    v162 = v159;
  }

  v6 = __CFADD__(v156, v162);
  v163 = v156 + v162;
  v164 = v6;
  v6 = __CFADD__(v161, v160);
  v165 = v161 + v160;
  if (v6)
  {
    v166 = v159 + 1;
  }

  else
  {
    v166 = v159;
  }

  v167 = __PAIR128__(v158, v163) + __PAIR128__(v164, v166);
  v169 = a2[4];
  v168 = a2[5];
  v170 = a2[2];
  v171 = a2[3];
  v172 = (v170 * v168) >> 64;
  v173 = v170 * v168;
  v6 = __CFADD__(v165, v173);
  v174 = v165 + v173;
  if (v6)
  {
    v175 = v172 + 1;
  }

  else
  {
    v175 = v172;
  }

  v176 = __CFADD__(v167, v175);
  v6 = __CFADD__(v174, v173);
  v177 = v174 + v173;
  if (v6)
  {
    v178 = v172 + 1;
  }

  else
  {
    v178 = v172;
  }

  v179 = v167 + __PAIR128__(v176, v178);
  v180 = (v171 * v169) >> 64;
  v181 = v171 * v169;
  v6 = __CFADD__(v177, v181);
  v182 = v177 + v181;
  if (v6)
  {
    v183 = v180 + 1;
  }

  else
  {
    v183 = v180;
  }

  v184 = __CFADD__(v179, v183);
  v6 = __CFADD__(v182, v181);
  v185 = v182 + v181;
  if (v6)
  {
    ++v180;
  }

  v186 = v179 + __PAIR128__(v184, v180);
  result[7] = v185;
  v187 = a2[3];
  v188 = a2[4] * a2[4] + v186;
  v189 = *(&v186 + 1) + v186;
  v190 = __CFADD__(*(&v186 + 1), v186);
  v191 = a2[5];
  v192 = a2[6];
  v193 = (v187 * v191) >> 64;
  v194 = v187 * v191;
  v6 = __CFADD__(v188, v194);
  v195 = v188 + v194;
  if (v6)
  {
    v196 = v193 + 1;
  }

  else
  {
    v196 = v193;
  }

  v6 = __CFADD__(v189, v196);
  v197 = v189 + v196;
  v198 = v6;
  v6 = __CFADD__(v195, v194);
  v199 = v195 + v194;
  if (v6)
  {
    v200 = v193 + 1;
  }

  else
  {
    v200 = v193;
  }

  v6 = __CFADD__(v197, v200);
  v201 = v197 + v200;
  v202 = v190 + v6 + v198;
  v204 = a2[1];
  v203 = a2[2];
  v205 = (v203 * v192) >> 64;
  v206 = v203 * v192;
  v6 = __CFADD__(v199, v206);
  v207 = v199 + v206;
  if (v6)
  {
    v208 = v205 + 1;
  }

  else
  {
    v208 = v205;
  }

  v6 = __CFADD__(v201, v208);
  v209 = v201 + v208;
  v210 = v6;
  v6 = __CFADD__(v207, v206);
  v211 = v207 + v206;
  if (v6)
  {
    v212 = v205 + 1;
  }

  else
  {
    v212 = v205;
  }

  v213 = __PAIR128__(v202, v209) + __PAIR128__(v210, v212);
  v214 = a2[7];
  v215 = (v204 * v214) >> 64;
  v216 = v204 * v214;
  v6 = __CFADD__(v211, v216);
  v217 = v211 + v216;
  if (v6)
  {
    v218 = v215 + 1;
  }

  else
  {
    v218 = v215;
  }

  v219 = __CFADD__(v213, v218);
  v6 = __CFADD__(v217, v216);
  v220 = v217 + v216;
  if (v6)
  {
    v221 = v215 + 1;
  }

  else
  {
    v221 = v215;
  }

  v222 = v213 + __PAIR128__(v219, v221);
  result[8] = v220;
  v224 = a2[6];
  v223 = a2[7];
  v225 = a2[2];
  v226 = a2[3];
  v227 = (v225 * v223) >> 64;
  v228 = v225 * v223;
  v229 = v228 + v222;
  if (__CFADD__(v228, v222))
  {
    v230 = v227 + 1;
  }

  else
  {
    v230 = v227;
  }

  v231 = *(&v222 + 1) + v230;
  v6 = __CFADD__(v229, v228);
  v232 = v229 + v228;
  if (v6)
  {
    v233 = v227 + 1;
  }

  else
  {
    v233 = v227;
  }

  v6 = __CFADD__(v231, v233);
  v234 = v231 + v233;
  v235 = v6;
  if (__CFADD__(*(&v222 + 1), v230))
  {
    v236 = v235 + 1;
  }

  else
  {
    v236 = v235;
  }

  v237 = (v226 * v224) >> 64;
  v238 = v226 * v224;
  v6 = __CFADD__(v232, v238);
  v239 = v232 + v238;
  if (v6)
  {
    v240 = v237 + 1;
  }

  else
  {
    v240 = v237;
  }

  v6 = __CFADD__(v234, v240);
  v241 = v234 + v240;
  v242 = v6;
  v6 = __CFADD__(v239, v238);
  v243 = v239 + v238;
  if (v6)
  {
    v244 = v237 + 1;
  }

  else
  {
    v244 = v237;
  }

  v245 = __PAIR128__(v236, v241) + __PAIR128__(v242, v244);
  v247 = a2[4];
  v246 = a2[5];
  v248 = (v247 * v246) >> 64;
  v249 = v247 * v246;
  v6 = __CFADD__(v243, v249);
  v250 = v243 + v249;
  if (v6)
  {
    v251 = v248 + 1;
  }

  else
  {
    v251 = v248;
  }

  v252 = __CFADD__(v245, v251);
  v6 = __CFADD__(v250, v249);
  v253 = v250 + v249;
  if (v6)
  {
    v254 = v248 + 1;
  }

  else
  {
    v254 = v248;
  }

  v255 = v245 + __PAIR128__(v252, v254);
  result[9] = v253;
  v256 = a2[6];
  v257 = a2[5] * a2[5] + v255;
  v258 = *(&v255 + 1) + v255;
  v259 = __CFADD__(*(&v255 + 1), v255);
  v261 = a2[3];
  v260 = a2[4];
  v262 = (v260 * v256) >> 64;
  v263 = v260 * v256;
  v6 = __CFADD__(v257, v263);
  v264 = v257 + v263;
  if (v6)
  {
    v265 = v262 + 1;
  }

  else
  {
    v265 = v262;
  }

  v6 = __CFADD__(v258, v265);
  v266 = v258 + v265;
  v267 = v6;
  v6 = __CFADD__(v264, v263);
  v268 = v264 + v263;
  if (v6)
  {
    v269 = v262 + 1;
  }

  else
  {
    v269 = v262;
  }

  v6 = __CFADD__(v266, v269);
  v270 = v266 + v269;
  v271 = v259 + v6 + v267;
  v272 = a2[7];
  v273 = (v261 * v272) >> 64;
  v274 = v261 * v272;
  v6 = __CFADD__(v268, v274);
  v275 = v268 + v274;
  if (v6)
  {
    v276 = v273 + 1;
  }

  else
  {
    v276 = v273;
  }

  v6 = __CFADD__(v270, v276);
  v277 = v270 + v276;
  v278 = v6;
  v6 = __CFADD__(v275, v274);
  v279 = v275 + v274;
  if (v6)
  {
    v280 = v273 + 1;
  }

  else
  {
    v280 = v273;
  }

  v281 = __PAIR128__(v271, v277) + __PAIR128__(v278, v280);
  result[10] = v279;
  v283 = a2[6];
  v282 = a2[7];
  v284 = a2[4];
  v285 = a2[5];
  v286 = (v284 * v282) >> 64;
  v287 = v284 * v282;
  v288 = v287 + v281;
  if (__CFADD__(v287, v281))
  {
    v289 = v286 + 1;
  }

  else
  {
    v289 = v286;
  }

  v290 = *(&v281 + 1) + v289;
  v6 = __CFADD__(v288, v287);
  v291 = v288 + v287;
  if (v6)
  {
    v292 = v286 + 1;
  }

  else
  {
    v292 = v286;
  }

  v6 = __CFADD__(v290, v292);
  v293 = v290 + v292;
  v294 = v6;
  if (__CFADD__(*(&v281 + 1), v289))
  {
    v295 = v294 + 1;
  }

  else
  {
    v295 = v294;
  }

  v296 = (v285 * v283) >> 64;
  v297 = v285 * v283;
  v6 = __CFADD__(v291, v297);
  v298 = v291 + v297;
  if (v6)
  {
    v299 = v296 + 1;
  }

  else
  {
    v299 = v296;
  }

  v6 = __CFADD__(v293, v299);
  v300 = v293 + v299;
  v301 = v6;
  v6 = __CFADD__(v298, v297);
  v302 = v298 + v297;
  if (v6)
  {
    v303 = v296 + 1;
  }

  else
  {
    v303 = v296;
  }

  v304 = __PAIR128__(v295, v300) + __PAIR128__(v301, v303);
  result[11] = v302;
  v305 = a2[5];
  v306 = a2[6] * a2[6] + v304;
  v307 = *(&v304 + 1) + v304;
  v308 = __CFADD__(*(&v304 + 1), v304);
  v309 = a2[7];
  v310 = (v305 * v309) >> 64;
  v311 = v305 * v309;
  v6 = __CFADD__(v306, v311);
  v312 = v306 + v311;
  if (v6)
  {
    v313 = v310 + 1;
  }

  else
  {
    v313 = v310;
  }

  v6 = __CFADD__(v307, v313);
  v314 = v307 + v313;
  v315 = v6;
  v6 = __CFADD__(v312, v311);
  v316 = v312 + v311;
  if (v6)
  {
    v317 = v310 + 1;
  }

  else
  {
    v317 = v310;
  }

  v6 = __CFADD__(v314, v317);
  v318 = v314 + v317;
  v319 = v308 + v6 + v315;
  result[12] = v316;
  v321 = a2[6];
  v320 = a2[7];
  v322 = (v321 * v320) >> 64;
  v323 = v321 * v320;
  v6 = __CFADD__(v323, v318);
  v324 = v323 + v318;
  if (v6)
  {
    v325 = v322 + 1;
  }

  else
  {
    v325 = v322;
  }

  v326 = v319 + v325;
  v6 = __CFADD__(v324, v323);
  v327 = v324 + v323;
  if (v6)
  {
    v328 = v322 + 1;
  }

  else
  {
    v328 = v322;
  }

  v6 = __CFADD__(v326, v328);
  v329 = v326 + v328;
  v330 = v6;
  result[13] = v327;
  v331 = a2[7];
  v332 = (v331 * v331) >> 64;
  v333 = v331 * v331;
  v6 = __CFADD__(v333, v329);
  v334 = v333 + v329;
  if (v6)
  {
    v335 = v332 + 1;
  }

  else
  {
    v335 = v332;
  }

  result[14] = v334;
  result[15] = v330 + __CFADD__(v319, v325) + v335;
  return result;
}