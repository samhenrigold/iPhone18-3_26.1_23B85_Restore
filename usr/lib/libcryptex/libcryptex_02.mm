uint64_t _xpc_reply_get_error(void *a1, _DWORD *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "error", MEMORY[0x29EDCAA58]))
  {
    return 22;
  }

  uint64 = xpc_dictionary_get_uint64(a1, "error");
  result = 0;
  *a2 = uint64;
  return result;
}

uint64_t _xpc_reply_get_cferr(void *a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0;
  v10 = -1;
  cferr = _xpc_dictionary_try_get_cferr(a1, "cferr", &v11);
  if (cferr == 2 && (cferr = 0, !_xpc_reply_get_error(a1, &v10)) && v10)
  {
    v5 = v10;
    v12[0] = 67109120;
    v12[1] = v10;
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_2986C0000, MEMORY[0x29EDCA988], 16, "POSIX error from cryptexd. %{darwin.errno}d", v12, 8);
    Error = createError("_xpc_reply_get_cferr", "xpc.c", 474, "com.apple.security.cryptex.posix", v5, 0, v6);
    free(v6);
    cferr = 0;
    v11 = Error;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Error = v11;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (!cferr)
  {
    if (Error)
    {
      v8 = CFRetain(Error);
      Error = v11;
    }

    else
    {
      v8 = 0;
    }

    *a2 = v8;
  }

LABEL_12:
  if (Error)
  {
    CFRelease(Error);
  }

  return cferr;
}

uint64_t _xpc_reply_get_argv(void *a1, void *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "argv", MEMORY[0x29EDCAA00]))
  {
    return 22;
  }

  value = xpc_dictionary_get_value(a1, "argv");
  result = 0;
  *a2 = value;
  return result;
}

os_log_t ___xpc_log_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "xpc");
  _xpc_log_osl = result;
  return result;
}

void _cryptex_copy_list_lossy_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void _cryptex_copy_list_lossy_cold_2(const char *a1, void *a2, _OWORD *a3)
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
  _os_log_send_and_compose_impl(v7, a2, a3, 80, &dword_2986C0000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_signing_service_dealloc_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "assertion failure: munmap(img->ssi_map, img->ssi_len) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void cryptex_signing_service_set_tss_url_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (OUTLINED_FUNCTION_4())
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = __error();
  strerror(*v6);
  OUTLINED_FUNCTION_0_0(v5, a2, v7, v8, &dword_2986C0000, v9, v10, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void cryptex_signing_service_set_image_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "assertion failure: close(old) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void cryptex_signing_service_set_sso_ticket_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2(a1, a2);
  v6 = MEMORY[0x29EDCA988];
  if (OUTLINED_FUNCTION_4())
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
  v14 = a3;
  v15 = 2080;
  v16 = v9;
  v10 = 32;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_2986C0000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_signing_service_read_fd_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(v3, a1, v4, v5, &dword_2986C0000, v6, v7, "unexpected failure: buffer not large enough for hash: actual = %lu, expected >= %lu");
  _os_crash_msg();
  __break(1u);
}

void _hdi_copy_device_nodes_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "unexpected failure: IOObjectRetain: %{mach.errno}d");
  OUTLINED_FUNCTION_7(v8);
  __break(1u);
}

void _hdi_copy_device_nodes_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "IOObjectRetain: %{mach.errno}d");
  OUTLINED_FUNCTION_7(v8);
  __break(1u);
}

void hdi_copy_mounted_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void hdi_copy_mounted_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void cryptex_event_type_int_to_ext_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v4 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = 134217984;
  v7 = 0;
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_2986C0000, v4, 16, "assertion failure: matches.count <= 1 -> %llu", &v6);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_msm_new_from_info_cold_1(const char *a1)
{
  OUTLINED_FUNCTION_8(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_1();
  v8 = OUTLINED_FUNCTION_0_2(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v8);
  __break(1u);
}

void _cryptex_msm_new_from_info_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void cryptex_copy_list_4MSM_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _CFCreateAssertImpl_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0_1(v7, v2, v3, v4, &dword_2986C0000, v5, v6, "cf create failed: obj = %s");
  _os_crash_msg();
  __break(1u);
}

void _cryptex_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _cryptex_attr_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _cryptex_bundle_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _cryptex_su_preboot_bundle_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _cryptex_signing_service_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _session_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_2(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _cryptex_bundle_new_asset_from_object_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  __error();
  OUTLINED_FUNCTION_2_3();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "assertion failure: close(fd) -> %{errno}d");
  OUTLINED_FUNCTION_5_2(v8);
  __break(1u);
}

void _cryptex_bundle_asset_new_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = __error();
  strerror(*v6);
  OUTLINED_FUNCTION_2_1();
  v11 = OUTLINED_FUNCTION_0_0(v5, a2, v7, v8, &dword_2986C0000, v9, v10, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v11);
  __break(1u);
}

void _cryptex_bundle_asset_new_cold_3(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  v9 = strerror(*v2);
  v8 = OUTLINED_FUNCTION_0(v9, v3, v4, v5, &dword_2986C0000, v6, v7, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v8);
  __break(1u);
}

void _cryptex_list_elm_new_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_5_0(v9);
  __break(1u);
}

void _cryptex_bundle_init_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  __error();
  OUTLINED_FUNCTION_2_3();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "assertion failure: munmap(map, len) -> %{errno}d");
  OUTLINED_FUNCTION_5_2(v8);
  __break(1u);
}

void _cryptex_bundle_add_cryptex_assets_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  v2 = __error();
  v9 = strerror(*v2);
  v8 = OUTLINED_FUNCTION_1_0(v9, v3, v4, v5, &dword_2986C0000, v6, v7, "error printing buffer: %s");
  OUTLINED_FUNCTION_5_2(v8);
  __break(1u);
}

void cryptex_bundle_write2_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_3(a1, a2);
  OUTLINED_FUNCTION_10();
  __error();
  OUTLINED_FUNCTION_2_3();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_2986C0000, v6, v7, "assertion failure: lseek_ret -> %{errno}d");
  OUTLINED_FUNCTION_5_2(v8);
  __break(1u);
}

void _cryptex_bundle_open_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0_0(v7, a1, v3, v4, &dword_2986C0000, v5, v6, "unexpected failure: attempt to open resource with invalid root: subpath = %s");
  _os_crash_msg();
  __break(1u);
}

void _cryptex_identity_copy_description_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = __error();
  strerror(*v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0(v5, a2, v7, v8, &dword_2986C0000, v9, v10, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void cryptex_system_cx_copy_name_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void cryptex_system_cx_copy_name_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_10();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0(v3, v4, v5, v6, &dword_2986C0000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void cryptex_get_image_type_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0_0(v7, a1, v3, v4, &dword_2986C0000, v5, v6, "unexpected failure: invalid image type %s");
  _os_crash_msg();
  __break(1u);
}

void cryptex_array_pack_from_path_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&dword_2986C0000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to open %s", &v1, 0xCu);
}

void cryptex_array_pack_from_path_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v4 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = *__error();
  v8[0] = 67109120;
  v8[1] = v6;
  v7 = 8;
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_2986C0000, v4, 16, "assertion failure: close(fd) -> %{errno}d", v8, v7);
  _os_crash_msg();
  __break(1u);
}

void cryptex_attr_set_tss_url_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(v6, v7, v8, v9, &dword_2986C0000, v10, v11, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}