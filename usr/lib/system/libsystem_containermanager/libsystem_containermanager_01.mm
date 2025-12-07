uint64_t __container_frozenset_enumerate_matches_block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (MEMORY[0x1E12D2570](a3, a2) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(a3);
  }

  else
  {
    string_ptr = 0;
  }

  v6 = container_string_rom_index_of(a1[5], string_ptr);
  if ((v6 & 0x8000000000000000) == 0)
  {
    *(a1[6] + 8 * (*(*(a1[4] + 8) + 24))++) = container_string_rom_string_at_index(a1[5], v6);
  }

  return 1;
}

BOOL container_fs_item_exists_at(int a1, const char *a2, int *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&v9, 0, sizeof(v9));
  v5 = fstatat(a1, a2, &v9, 32);
  if (a3)
  {
    *a3 = *__error();
  }

  if (v5 && *__error() != 2 && *__error() != 20)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *buf = 136380931;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_error_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_ERROR, "Failed to determine if %{private}s exists: %{darwin.errno}d", buf, 0x12u);
    }
  }

  return v5 == 0;
}

BOOL container_fs_item_exists(const char *a1, int *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  v4 = lstat(a1, &v8);
  if (a2)
  {
    *a2 = *__error();
  }

  if (v4 && *__error() != 2 && *__error() != 20)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 136380931;
      v10 = a1;
      v11 = 1024;
      v12 = v7;
      _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "Failed to determine if %{private}s exists: %{darwin.errno}d", buf, 0x12u);
    }
  }

  return v4 == 0;
}

uint64_t container_fs_load_plist_at(uint64_t a1, uint64_t a2)
{
  __s = 0;
  v2 = (*(gCMFSSeam + 66))(a1, a2, 0x1000000);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    v4 = (*(gCMFSSeam + 56))();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = v4;
      if (v4 > 0xA00000)
      {
        v6 = 0;
        v7 = 27;
LABEL_21:
        (*(gCMFSSeam + 19))(v3);
        goto LABEL_22;
      }

      v8 = malloc_type_calloc(1uLL, v4, 0xA8A7B904uLL);
      __s = v8;
      if (v8)
      {
        v9 = v8;
        if (v5)
        {
          v10 = 0;
          v7 = 0;
          while (1)
          {
            v11 = (*(gCMFSSeam + 69))(v3, &v9[v10], v5 - v10, v10);
            if (v11 < 0)
            {
              v7 = *__error();
              if (v7 != 4)
              {
                v6 = 0;
                goto LABEL_20;
              }
            }

            else
            {
              if (!v11)
              {
                v6 = 0;
                v7 = 70;
                goto LABEL_20;
              }

              v10 += v11;
            }

            if (v10 >= v5)
            {
              goto LABEL_17;
            }
          }
        }

        v7 = 0;
LABEL_17:
        v6 = xpc_create_from_plist();
LABEL_20:
        free(v9);
        memset_s(&__s, 8uLL, 0, 8uLL);
        goto LABEL_21;
      }
    }

    v6 = 0;
    v7 = *__error();
    goto LABEL_21;
  }

  v6 = 0;
  v7 = *__error();
LABEL_22:
  *__error() = v7;
  return v6;
}

const char *container_fs_add_path_component(const char *result, uint64_t a2, size_t __n)
{
  if (result)
  {
    v5 = result;
    result = strnlen(result, __n);
    if (result < __n - 1 && result && result[v5 - 1] != 47)
    {
      (result++)[v5] = 47;
    }

    if (*a2 == 47 && *(a2 + 1))
    {
      ++a2;
    }

    if (result < __n - 1)
    {
      v6 = __n - result;
      v7 = &result[v5];

      return strlcpy(v7, a2, v6);
    }
  }

  return result;
}

uint64_t container_fs_resolve_dirent_type_at(int a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (!*(a2 + 20))
  {
    memset(&v7, 0, sizeof(v7));
    v3 = fstatat(a1, (a2 + 21), &v7, 0);
    v2 = 0;
    if (!v3)
    {
      v4 = v7.st_mode & 0xF000;
      if (v4 == 0x4000)
      {
        return 4;
      }

      else
      {
        if (v4 == 40960)
        {
          v5 = 10;
        }

        else
        {
          v5 = 0;
        }

        if (v4 == 0x8000)
        {
          return 8;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return v2;
}

void *container_fs_path_at(int a1, uint64_t a2)
{
  v4 = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
  v5 = v4;
  __s = v4;
  if (v4)
  {
    if (fcntl(a1, 50, v4, __s))
    {
      free(v5);
      memset_s(&__s, 8uLL, 0, 8uLL);
      return 0;
    }

    else if (a2)
    {
      container_fs_add_path_component(v5, a2, 0x400uLL);
    }
  }

  return v5;
}

size_t container_fs_append_trailing_slash(const char *a1, size_t a2)
{
  result = strnlen(a1, a2);
  if (!result || result < a2 - 1 && a1[result - 1] != 47)
  {
    *&a1[result] = 47;
  }

  return result;
}

__n128 container_seam_container_set_common(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  gCMContainerCustomSeamStore = *a1;
  *algn_1ECE2F9D0 = v2;
  gCMContainerSeam = &gCMContainerCustomSeamStore;
  return result;
}

uint64_t container_test_set_locks_and_restart(uint64_t a1, char a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  v6 = _os_activity_create(&dword_1DF28A000, "container_retry_test", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __container_test_set_locks_and_restart_block_invoke;
  v9[3] = &unk_1E86ADE28;
  v9[5] = a1;
  v9[6] = a3;
  v10 = a2;
  v9[4] = &v11;
  os_activity_apply(v6, v9);
  os_release(v6);
  container_log_error("container_test_set_locks_and_restart", gClientFaultLoggingEnabled, v12[3]);
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

void __container_test_set_locks_and_restart_block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  __s = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x19uLL);
  xpc_dictionary_set_uint64(v2, "NumRetryCrashes", *(a1 + 40));
  xpc_dictionary_set_uint64(v2, "TestLock", *(a1 + 48));
  if (*(a1 + 56))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = container_xpc_send_sync_message(v3, 4, v2, 1, 0, 0, &v7);
  v8 = v4;
  v5 = v7;
  if (!v4)
  {
    if (v7)
    {
      v6 = *v7;
    }

    else
    {
      v6 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v6;
  }

  container_error_free(v5);
  if (v2)
  {
    xpc_release(v2);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v4)
  {
    xpc_release(v4);
    memset_s(&v8, 8uLL, 0, 8uLL);
  }
}

uint64_t container_set_test_lock(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v4 = _os_activity_create(&dword_1DF28A000, "container_set_test_lock", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_set_test_lock_block_invoke;
  block[3] = &unk_1E86ADE50;
  v8 = a2;
  block[4] = &v9;
  block[5] = a1;
  os_activity_apply(v4, block);
  os_release(v4);
  container_log_error("container_set_test_lock", gClientFaultLoggingEnabled, v10[3]);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __container_set_test_lock_block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  __s = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x1FuLL);
  xpc_dictionary_set_uint64(v2, "TestLock", *(a1 + 40));
  xpc_dictionary_set_BOOL(v2, "Enable", *(a1 + 48));
  v3 = container_xpc_send_sync_message(2, 4, v2, 1, 0, 0, &v6);
  v7 = v3;
  v4 = v6;
  if (!v3)
  {
    if (v6)
    {
      v5 = *v6;
    }

    else
    {
      v5 = 1;
    }

    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  container_error_free(v4);
  if (v2)
  {
    xpc_release(v2);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v3)
  {
    xpc_release(v3);
    memset_s(&v7, 8uLL, 0, 8uLL);
  }
}

BOOL container_codesign_get_self_audit_token(task_info_t task_info_out)
{
  task_info_outCnt = 8;
  v1 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (v1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v2 = qword_1ED452B28;
    if (os_log_type_enabled(qword_1ED452B28, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_ERROR, "Failed to fetch our own audit token", v4, 2u);
    }
  }

  return v1 == 0;
}

uint64_t container_codesign_get_current_identifier()
{
  if (container_codesign_get_current_identifier_onceToken != -1)
  {
    dispatch_once(&container_codesign_get_current_identifier_onceToken, &__block_literal_global);
  }

  return container_codesign_get_current_identifier_identifier;
}

char *__container_codesign_get_current_identifier_block_invoke()
{
  *task_info_out = 0u;
  v4 = 0u;
  result = container_codesign_get_self_audit_token(task_info_out);
  if (result)
  {
    v1 = getpid();
    v2[0] = *task_info_out;
    v2[1] = v4;
    result = container_codesign_copy_cs_identity(v1, v2);
    container_codesign_get_current_identifier_identifier = result;
  }

  return result;
}

void *container_client_initializer(uint64_t a1, const char *a2, const char *a3, int a4, const char *a5, int a6, int a7, _OWORD *a8, int a9, char a10, char a11, char a12, xpc_object_t object, uint64_t *a14)
{
  if (!a2)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v25 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v36 = 0;
    v26 = "Missing a codesign identifier when trying to initialize a client object.";
    v27 = &v36;
    goto LABEL_30;
  }

  if (!a4)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v25 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v26 = "Missing platform when trying to initialize a client object.";
    v27 = buf;
LABEL_30:
    _os_log_error_impl(&dword_1DF28A000, v25, OS_LOG_TYPE_ERROR, v26, v27, 2u);
LABEL_13:
    v28 = 80;
    goto LABEL_14;
  }

  v22 = malloc_type_calloc(1uLL, 0x60uLL, 0x10900405E1FA0D8uLL);
  if (v22)
  {
    v23 = v22;
    *v22 = a1;
    v22[1] = strdup(a2);
    if (a3)
    {
      v24 = strdup(a3);
    }

    else
    {
      v24 = 0;
    }

    v30 = a12;
    v23[2] = v24;
    *(v23 + 6) = a4;
    if (a5)
    {
      v31 = strdup(a5);
      v30 = a12;
    }

    else
    {
      v31 = 0;
    }

    v23[4] = v31;
    *(v23 + 10) = a6;
    *(v23 + 11) = a7;
    v32 = a8[1];
    *(v23 + 3) = *a8;
    *(v23 + 4) = v32;
    *(v23 + 20) = a9;
    *(v23 + 84) = a10;
    *(v23 + 85) = a11;
    *(v23 + 86) = v30;
    v23[11] = 0;
    if ((a1 & 1) != 0 && object)
    {
      v23[11] = xpc_retain(object);
    }

    return v23;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v29 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
  {
    v34[0] = 0;
    _os_log_error_impl(&dword_1DF28A000, v29, OS_LOG_TYPE_ERROR, "Could not allocate memory to initialize a client object.", v34, 2u);
  }

  v28 = 73;
LABEL_14:
  v23 = 0;
  if (a14)
  {
    *a14 = v28;
  }

  return v23;
}

xpc_object_t container_client_copy_encoded_xpc_object(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = xpc_uint64_create(*a1);
    __s = v3;
    v4 = xpc_string_create(*(a1 + 8));
    v28 = v4;
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = xpc_string_create(v5);
    }

    else
    {
      v6 = 0;
    }

    v27 = v6;
    v10 = xpc_uint64_create(*(a1 + 24));
    v26 = v10;
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = xpc_string_create(v11);
    }

    else
    {
      v12 = 0;
    }

    v25 = v12;
    v13 = xpc_uint64_create(*(a1 + 40));
    v24 = v13;
    v14 = xpc_uint64_create(*(a1 + 44));
    v23 = v14;
    v15 = xpc_data_create((a1 + 48), 0x20uLL);
    v22 = v15;
    v16 = xpc_int64_create(*(a1 + 80));
    v21 = v16;
    v17 = *(a1 + 88);
    if (v17)
    {
      v18 = xpc_retain(v17);
    }

    else
    {
      v18 = 0;
    }

    v20 = v18;
    v34 = xmmword_1E86ADEB0;
    v35 = *&off_1E86ADEC0;
    v36 = xmmword_1E86ADED0;
    *keys = xmmword_1E86ADE90;
    v33 = *&off_1E86ADEA0;
    values[0] = v3;
    values[1] = v4;
    values[2] = v6;
    values[3] = v10;
    values[4] = v12;
    values[5] = v13;
    values[6] = v14;
    values[7] = v15;
    values[8] = v16;
    values[9] = v18;
    v19 = xpc_dictionary_create(keys, values, 0xAuLL);
    if (v3)
    {
      xpc_release(v3);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    if (v4)
    {
      xpc_release(v4);
      memset_s(&v28, 8uLL, 0, 8uLL);
    }

    if (v6)
    {
      xpc_release(v6);
      memset_s(&v27, 8uLL, 0, 8uLL);
    }

    if (v10)
    {
      xpc_release(v10);
      memset_s(&v26, 8uLL, 0, 8uLL);
    }

    if (v12)
    {
      xpc_release(v12);
      memset_s(&v25, 8uLL, 0, 8uLL);
    }

    if (v13)
    {
      xpc_release(v13);
      memset_s(&v24, 8uLL, 0, 8uLL);
    }

    if (v14)
    {
      xpc_release(v14);
      memset_s(&v23, 8uLL, 0, 8uLL);
    }

    if (v15)
    {
      xpc_release(v15);
      memset_s(&v22, 8uLL, 0, 8uLL);
    }

    if (v16)
    {
      xpc_release(v16);
      memset_s(&v21, 8uLL, 0, 8uLL);
    }

    if (v18)
    {
      xpc_release(v18);
      memset_s(&v20, 8uLL, 0, 8uLL);
    }

    return v19;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_ERROR, "No client object to encode.", buf, 2u);
    }

    result = 0;
    if (a2)
    {
      *a2 = 80;
    }
  }

  return result;
}

void *container_client_copy_decoded_from_xpc_object(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 1;
  if (!a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v7 = "No client xpc object to decode.";
    goto LABEL_23;
  }

  v4 = MEMORY[0x1E12D2570]();
  v5 = MEMORY[0x1E69E9E80];
  if (v4 != MEMORY[0x1E69E9E80])
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v7 = "Client xpc object is not a dictionary.";
LABEL_23:
    _os_log_error_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_ERROR, v7, buf, 2u);
LABEL_24:
    result = 0;
    v19 = 80;
    goto LABEL_25;
  }

  uint64 = xpc_dictionary_get_uint64(a1, "PrivateFlags");
  string = xpc_dictionary_get_string(a1, "CodesignIdentifier");
  v9 = xpc_dictionary_get_string(a1, "CodesignTeamIdentifier");
  v10 = xpc_dictionary_get_uint64(a1, "Platform");
  v11 = xpc_dictionary_get_string(a1, "PersonaUniqueString");
  v12 = xpc_dictionary_get_uint64(a1, "EUID");
  v13 = xpc_dictionary_get_uint64(a1, "EGID");
  length = 0;
  data = xpc_dictionary_get_data(a1, "AuditToken", &length);
  if (length != 32 || (v15 = data) == 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = qword_1ED452B30;
    if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v7 = "Client xpc object has a malformed audit token.";
    goto LABEL_23;
  }

  int64 = xpc_dictionary_get_int64(a1, "PID");
  value = xpc_dictionary_get_value(a1, "Entitlements");
  object = value;
  if (value)
  {
    if (MEMORY[0x1E12D2570](value) != v5)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v6 = qword_1ED452B30;
      if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v7 = "Client xpc object has a malformed entitlements.";
      goto LABEL_23;
    }

    if ((uint64 & 1) == 0)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v6 = qword_1ED452B30;
      if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v7 = "Client xpc object cannot set entitlements.";
      goto LABEL_23;
    }
  }

  v29 = *v15;
  v20 = v15[5];
  v30 = v15[4];
  v21 = *(v15 + 3);
  *buf = v29;
  *&buf[16] = v30;
  *&buf[20] = v20;
  *&buf[24] = v21;
  status = container_codesign_get_status(v20, buf);
  if ((status & 0x8000000000000000) != 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v23 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      v24 = *__error();
      *buf = 67109634;
      *&buf[4] = int64;
      *&buf[8] = 2080;
      *&buf[10] = string;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      _os_log_error_impl(&dword_1DF28A000, v23, OS_LOG_TYPE_ERROR, "Could not get code sign status from audit token for pid [%d] identifier [%s]: %{darwin.errno}d", buf, 0x18u);
    }

    result = 0;
    v19 = 128;
  }

  else
  {
    *buf = *v15;
    *&buf[16] = *(v15 + 1);
    result = container_client_initializer(uint64, string, v9, v10, v11, v12, v13, buf, int64, status & 1, (status & 2) != 0, (status & 4) != 0, object, &v28);
    v19 = v28;
  }

LABEL_25:
  if (a2)
  {
    if (v19 != 1)
    {
      *a2 = v19;
    }
  }

  return result;
}

const char *container_client_get_codesign_identifier(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8);
  }

  v6 = v1;
  v7 = v2;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "NULL client when fetching code sign identifier", v5, 2u);
  }

  return "unknown";
}

uint64_t container_client_get_codesign_team_identifier(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  v6 = v1;
  v7 = v2;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "NULL client when fetching code sign team identifier", v5, 2u);
  }

  return 0;
}

uint64_t container_client_get_platform(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 24);
  }

  v6 = v1;
  v7 = v2;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "NULL client when fetching platform", v5, 2u);
  }

  return dyld_get_active_platform();
}

uint64_t container_client_get_persona_unique_string(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  v6 = v1;
  v7 = v2;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "NULL client when fetching persona unique string", v5, 2u);
  }

  return 0;
}

uint64_t container_client_get_euid(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40);
  }

  v6 = v1;
  v7 = v2;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "NULL client when fetching euid", v5, 2u);
  }

  return geteuid();
}

uint64_t container_client_get_egid(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 44);
  }

  v6 = v1;
  v7 = v2;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "NULL client when fetching egid", v5, 2u);
  }

  return getegid();
}

uint64_t container_client_get_pid(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  v6 = v1;
  v7 = v2;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v4 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "NULL client when fetching pid", v5, 2u);
  }

  return getpid();
}

BOOL container_client_is_sandboxed(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
    v4[0] = *(a1 + 48);
    v4[1] = v1;
    return sandbox_check_by_audit_token() != 0;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v4[0]) = 0;
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "NULL client when fetching sandbox state", v4, 2u);
    }

    return 1;
  }
}

_BYTE *container_client_is_test_client(_BYTE *result)
{
  if (result)
  {
    return (*result & 1);
  }

  return result;
}

uint64_t container_client_is_signed(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 84);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t container_client_is_signature_valid(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 85);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t container_client_is_platform_binary(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 86);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL container_client_is_alive(uint64_t a1)
{
  memset(&v2, 0, sizeof(v2));
  container_client_get_audit_token(a1, &v2);
  v3 = v2;
  return container_audit_token_copy_executable_name(&v3, 0) != 3;
}

char *container_copy_client(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = malloc_type_calloc(1uLL, 0x60uLL, 0x10900405E1FA0D8uLL);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      *v5 = *a1;
      *(v5 + 1) = strdup(v6);
      v7 = *(a1 + 16);
      if (v7)
      {
        v7 = strdup(v7);
      }

      *(v5 + 2) = v7;
      *(v5 + 6) = *(a1 + 24);
      v8 = *(a1 + 32);
      if (v8)
      {
        v8 = strdup(v8);
      }

      *(v5 + 4) = v8;
      *(v5 + 5) = *(a1 + 40);
      v9 = *(a1 + 64);
      *(v5 + 3) = *(a1 + 48);
      *(v5 + 4) = v9;
      *(v5 + 20) = *(a1 + 80);
      v5[84] = *(a1 + 84);
      *(v5 + 85) = *(a1 + 85);
      v10 = *(a1 + 88);
      if (v10)
      {
        v10 = xpc_retain(v10);
      }

      *(v5 + 11) = v10;
      return v5;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v13 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 0;
      _os_log_error_impl(&dword_1DF28A000, v13, OS_LOG_TYPE_ERROR, "Could not allocate memory to initialize a client object.", v15, 2u);
    }

    v12 = 73;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v11 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_ERROR, "NULL client when copying", buf, 2u);
    }

    v12 = 80;
  }

  v5 = 0;
  if (a2)
  {
    *a2 = v12;
  }

  return v5;
}

void *container_paths_context_create()
{
  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040B3384863uLL);
  v0[5] = _os_activity_create(&dword_1DF28A000, "container_paths_context_t", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  container_pwd_get_mobile_user_uid(v0 + 8);
  *v0 = 2;
  v0[2] = 0;
  v0[3] = strdup("com.apple.containermanager.current-persona");
  *(v0 + 8) = 0;
  return v0;
}

void container_paths_context_set_class(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __container_paths_context_set_class_block_invoke;
    v4[3] = &__block_descriptor_tmp_198;
    v4[4] = a1;
    v4[5] = a2;
    os_activity_apply(v2, v4);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v6 = "container_paths_context_set_class";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: context parameter is NULL", buf, 0xCu);
    }
  }
}

void container_paths_context_set_transient(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __container_paths_context_set_transient_block_invoke;
    v4[3] = &__block_descriptor_tmp_1;
    v4[4] = a1;
    v5 = a2;
    os_activity_apply(v2, v4);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v7 = "container_paths_context_set_transient";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: context parameter is NULL", buf, 0xCu);
    }
  }
}

void container_paths_context_set_flags(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __container_paths_context_set_flags_block_invoke;
    v4[3] = &__block_descriptor_tmp_2;
    v4[4] = a1;
    v4[5] = a2;
    os_activity_apply(v2, v4);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v6 = "container_paths_context_set_flags";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: context parameter is NULL", buf, 0xCu);
    }
  }
}

void container_paths_context_set_persona_unique_string(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __container_paths_context_set_persona_unique_string_block_invoke;
    v4[3] = &__block_descriptor_tmp_3;
    v4[4] = a1;
    v4[5] = a2;
    os_activity_apply(v2, v4);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v6 = "container_paths_context_set_persona_unique_string";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: context parameter is NULL", buf, 0xCu);
    }
  }
}

char *__container_paths_context_set_persona_unique_string_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    free(v2);
    memset_s((*(a1 + 32) + 24), 8uLL, 0, 8uLL);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = strndup(result, 0x400uLL);
  }

  *(*(a1 + 32) + 24) = result;
  return result;
}

void container_paths_context_set_uid(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __container_paths_context_set_uid_block_invoke;
    v4[3] = &__block_descriptor_tmp_4;
    v4[4] = a1;
    v5 = a2;
    os_activity_apply(v2, v4);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v7 = "container_paths_context_set_uid";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: context parameter is NULL", buf, 0xCu);
    }
  }
}

uint64_t container_paths_context_free(uint64_t result)
{
  __s = result;
  if (result)
  {
    v1 = result;
    os_release(*(result + 40));
    v2 = *(v1 + 24);
    if (v2)
    {
      free(v2);
      memset_s((v1 + 24), 8uLL, 0, 8uLL);
    }

    free(v1);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

uint64_t container_paths_copy_container_from_path(char *a1, char **a2, void **a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v47 = 0;
  bzero(__s1, 0x401uLL);
  v45 = 0;
  v46 = 0;
  if (!a1)
  {
    v9 = 3;
    v10 = 38;
    v11 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  v6 = (gCMContainerSeam[2])(&v47);
  if (!v6)
  {
    __s = container_error_copy_unlocalized_description(v47);
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = __s;
      _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "Unable to get user home path, container results may not be reliable; error = %{public}s", buf, 0xCu);
    }

    if (__s)
    {
      free(__s);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    container_error_free(v47);
    v47 = 0;
  }

  if ((gCMContainerSeam[3])(a1, __s1, 1024))
  {
    v8 = *__error();
    v9 = 1;
    v10 = 127;
    v11 = a1;
LABEL_13:
    v12 = container_error_create_with_message(v9, v10, v11, v8, 0);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v47 = v12;
    goto LABEL_14;
  }

  *buf = 0;
  v20 = strnlen(__s1, 0x400uLL);
  v21 = v20;
  v23 = *__s1 == 0x657461766972702FLL && *v51 == 0x6E6F632F7261762FLL && *&v51[7] == 0x7372656E6961746ELL;
  if (v23 && (v20 == 23 || v20 >= 0x18 && v52 == 47))
  {
    v14 = strdup("/private/var/containers");
    goto LABEL_38;
  }

  if (v6)
  {
    v24 = strnlen(v6, 0x400uLL);
    if (!strncmp(__s1, v6, v24) && v21 > v24)
    {
      v26 = &__s1[v24];
      if (__s1[v24] == 47)
      {
        v27 = _container_user_prefix_managed_by_containermanager_transient(v26 + 1, v24, 0);
        if (v27)
        {
          v28 = v27;
          __s = v27;
LABEL_37:
          asprintf(buf, "%s/%s", v6, v28);
          free(v28);
          memset_s(&__s, 8uLL, 0, 8uLL);
          v14 = *buf;
LABEL_38:
          v45 = v14;
          if (v14)
          {
            v44 = a2;
            v29 = strnlen(v14, 0x400uLL);
            v13 = strndup(__s1, 0x400uLL);
            v46 = v13;
            v15 = 0;
            v16 = &v13[strnlen(v13, 0x400uLL)];
            v17 = 0xFFFFFFFFLL;
            while (v13[v29] || strncmp(v13, v14, v29))
            {
              if ((v17 & 0x80000000) == 0)
              {
                (*(gCMFSSeam + 19))(v17);
              }

              v17 = (*(gCMFSSeam + 64))(v13, 1091600384);
              v30 = __error();
              if ((v17 & 0x80000000) != 0)
              {
                v15 = *v30;
              }

              else
              {
                v31 = (gCMContainerSeam[1])(v17, 0, 0, &v47);
                if (v31)
                {
                  v19 = v31;
                  v34 = *gCMContainerSeam;
                  v35 = container_object_get_class(v31);
                  if (v34(v35))
                  {
                    a2 = v44;
                    if (!strncmp(v16, "Data/", 5uLL))
                    {
                      v16 += 5;
                    }

                    else
                    {
                      if (!strncmp(v16, "Data", 5uLL))
                      {
                        v36 = 5;
                      }

                      else
                      {
                        v36 = 0;
                      }

                      v16 += v36;
                    }

                    v18 = 1;
                  }

                  else
                  {
                    v18 = 1;
                    a2 = v44;
                  }

                  goto LABEL_69;
                }

                if (v47)
                {
                  v15 = *(v47 + 6);
                }

                else
                {
                  v15 = 14;
                }

                container_error_free(v47);
                v47 = 0;
              }

              if (v15 != 2 && v15 != 20)
              {
                v37 = 1;
                v38 = 127;
                v39 = a1;
                v40 = v15;
                goto LABEL_67;
              }

              v33 = rindex(v13, 47);
              if (!v33)
              {
                break;
              }

              *v33 = 0;
              v16 = &__s1[v33 - v13 + 1];
            }

            v37 = 3;
            v38 = 154;
            v39 = a1;
            v40 = 0;
LABEL_67:
            v47 = container_error_create_with_message(v37, v38, v39, v40, 0);
            a2 = v44;
            if (v47)
            {
              goto LABEL_15;
            }

            goto LABEL_68;
          }

          goto LABEL_59;
        }

        v28 = _container_user_prefix_managed_by_containermanager_transient(v26 + 1, v24, 1);
        __s = v28;
        if (v28)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v45 = 0;
LABEL_59:
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v12 = v47;
LABEL_14:
  v17 = 0xFFFFFFFFLL;
  if (!v12)
  {
LABEL_68:
    v41 = container_error_create_with_message(3, 21, a1, v15, 0);
    v18 = 0;
    v19 = 0;
    v47 = v41;
    goto LABEL_69;
  }

LABEL_15:
  v18 = 0;
  v19 = 0;
LABEL_69:
  v42 = v47;
  if (a3 && v47)
  {
    *a3 = container_error_create_with_message(*(v47 + 1), *v47, *(v47 + 2), *(v47 + 6), *(v47 + 4));
    v42 = v47;
  }

  container_log_ext_error("container_paths_copy_container_from_path", gClientFaultLoggingEnabled, v42);
  if ((v17 & 0x80000000) == 0)
  {
    (*(gCMFSSeam + 19))(v17);
  }

  if (v18 && a2 && v16)
  {
    *a2 = strndup(v16, 0x400uLL);
  }

  if (v14)
  {
    free(v14);
    memset_s(&v45, 8uLL, 0, 8uLL);
    v13 = v46;
  }

  if (v13)
  {
    free(v13);
    memset_s(&v46, 8uLL, 0, 8uLL);
  }

  container_error_free(v47);
  return v19;
}

char *_container_user_prefix_managed_by_containermanager_transient(const char *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = &_container_paths_get_volume_relative_path__transient_relative_paths;
  }

  else
  {
    v4 = &_container_paths_get_volume_relative_path__relative_paths;
  }

  v5 = 1024 - a2;
  v6 = 1;
  while (1)
  {
    if (v6 <= 0xE && ((1 << v6) & 0x4ED4) != 0)
    {
      v7 = v4[v6];
      v8 = strnlen(v7, v5);
      v9 = strnlen(a1, v5);
      if (!strncmp(a1, v7, v8) && (v9 == v8 || v9 > v8 && a1[v8] == 47))
      {
        break;
      }
    }

    if (++v6 == 15)
    {
      return 0;
    }
  }

  return strdup(v7);
}

unsigned __int8 *container_paths_copy_container_at(uint64_t a1, int a2, unsigned __int8 a3, void **a4)
{
  v7 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0;
  memset(uu, 0, sizeof(uu));
  v47 = 0;
  plist_at = container_fs_load_plist_at(a1, ".com.apple.mobile_container_manager.metadata.plist");
  __s = plist_at;
  v9 = *__error();
  if (plist_at)
  {
    v10 = MEMORY[0x1E12D2570](plist_at);
    v11 = MEMORY[0x1E69E9E80];
    if (v10 == MEMORY[0x1E69E9E80])
    {
      string = xpc_dictionary_get_string(plist_at, "MCMMetadataUUID");
      if (!string)
      {
        v12 = container_fs_path_at(v7, ".com.apple.mobile_container_manager.metadata.plist");
        v49 = v12;
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v23 = container_log_handle_for_category_logHandles[0];
        if (!os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        buf.st_dev = 136380675;
        *&buf.st_mode = v12;
        v20 = "Metadata plist [%{private}s] is missing a UUID.";
        v21 = v23;
        v22 = 12;
        goto LABEL_46;
      }

      v18 = string;
      if (uuid_parse(string, uu))
      {
        v12 = container_fs_path_at(v7, ".com.apple.mobile_container_manager.metadata.plist");
        v49 = v12;
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v19 = container_log_handle_for_category_logHandles[0];
        if (!os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        buf.st_dev = 136380931;
        *&buf.st_mode = v12;
        WORD2(buf.st_ino) = 2082;
        *(&buf.st_ino + 6) = v18;
        v20 = "Metadata plist [%{private}s] is has a corrupt UUID [%{public}s].";
        v21 = v19;
        v22 = 22;
LABEL_46:
        _os_log_error_impl(&dword_1DF28A000, v21, OS_LOG_TYPE_ERROR, v20, &buf, v22);
LABEL_18:
        v14 = container_error_create_with_message(1, 108, v12, 0, 0);
        v15 = 0;
        v16 = 0;
        goto LABEL_19;
      }

      int64 = xpc_dictionary_get_int64(plist_at, "MCMMetadataContentClass");
      v26 = xpc_dictionary_get_string(plist_at, "MCMMetadataIdentifier");
      if (v26)
      {
        v27 = v26;
        dictionary = xpc_dictionary_get_dictionary(plist_at, "MCMMetadataUserIdentity");
        if (dictionary && (v29 = dictionary, MEMORY[0x1E12D2570]() == v11))
        {
          v32 = xpc_dictionary_get_string(v29, "personaUniqueString");
          st_uid = xpc_dictionary_get_int64(v29, "posixUID");
        }

        else
        {
          value = xpc_dictionary_get_value(plist_at, "MCMMetadataPersona");
          if (value)
          {
            v31 = xpc_uint64_get_value(value);
            v32 = 0;
            if (v31 == 499)
            {
              st_uid = 0;
            }

            else
            {
              st_uid = v31;
            }
          }

          else if ((int64 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
          {
            st_uid = 0;
            v32 = 0;
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
            v32 = 0;
            if (fstat(v7, &buf))
            {
              st_uid = 0;
            }

            else
            {
              st_uid = buf.st_uid;
            }
          }
        }

        v37 = container_fs_path_at(v7, 0);
        v49 = v37;
        if (v37)
        {
          v12 = v37;
          v38 = rindex(v37, 47);
          v39 = strndup(v38 + 1, 0x400uLL);
          v48 = v39;
          if (a2)
          {
            v40 = v32;
            v41 = xpc_dictionary_get_dictionary(plist_at, "MCMMetadataInfo");
            if (v41)
            {
              v42 = v41;
              v16 = 0;
            }

            else
            {
              v16 = xpc_dictionary_create(0, 0, 0);
              v47 = v16;
              v42 = v16;
            }
          }

          else
          {
            v40 = v32;
            v16 = 0;
            v42 = 0;
          }

          v45 = 1;
          v15 = container_object_create(uu, v27, int64, st_uid, v12, v39, v40, v42, 0, 0, a3, 0, 0, &v45);
          v14 = 0;
LABEL_19:
          xpc_release(plist_at);
          memset_s(&__s, 8uLL, 0, 8uLL);
          if (v16)
          {
            xpc_release(v16);
            memset_s(&v47, 8uLL, 0, 8uLL);
            v12 = v49;
          }

          goto LABEL_21;
        }

        v43 = *__error();
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v44 = container_log_handle_for_category_logHandles[0];
        if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.st_dev) = 0;
          _os_log_error_impl(&dword_1DF28A000, v44, OS_LOG_TYPE_ERROR, "Failed to get container root path.", &buf, 2u);
        }

        v35 = 127;
        v36 = v43;
      }

      else
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v34 = container_log_handle_for_category_logHandles[0];
        if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
        {
          buf.st_dev = 136380675;
          *&buf.st_mode = 0;
          _os_log_error_impl(&dword_1DF28A000, v34, OS_LOG_TYPE_ERROR, "Metadata plist [%{private}s] is missing an identifier.", &buf, 0xCu);
        }

        v35 = 108;
        v36 = 0;
      }

      v14 = container_error_create_with_message(1, v35, 0, v36, 0);
      v15 = 0;
      v16 = 0;
      v12 = 0;
      goto LABEL_19;
    }
  }

  v12 = container_fs_path_at(v7, ".com.apple.mobile_container_manager.metadata.plist");
  v49 = v12;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v13 = container_log_handle_for_category_logHandles[0];
  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
  {
    buf.st_dev = 136380931;
    *&buf.st_mode = v12;
    WORD2(buf.st_ino) = 1024;
    *(&buf.st_ino + 6) = v9;
    _os_log_error_impl(&dword_1DF28A000, v13, OS_LOG_TYPE_ERROR, "Failed to read metadata plist [%{private}s]: %{darwin.errno}d", &buf, 0x12u);
  }

  v14 = container_error_create_with_message(1, 12, v12, v9, 0);
  v15 = 0;
  v16 = 0;
  if (plist_at)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v12)
  {
    free(v12);
    memset_s(&v49, 8uLL, 0, 8uLL);
  }

  if (!v15 && a4 && v14)
  {
    *a4 = container_error_create_with_message(v14[1], *v14, v14[2], *(v14 + 6), v14[4]);
  }

  if (v48)
  {
    free(v48);
    memset_s(&v48, 8uLL, 0, 8uLL);
  }

  container_error_free(v14);
  return v15;
}

uint64_t container_paths_enumerate_containers_at(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v17[3] = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a3)
  {
    v4 = *(a3 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __container_paths_enumerate_containers_at_block_invoke;
    v11[3] = &unk_1E86AE020;
    v11[4] = a4;
    v11[5] = &v13;
    v11[7] = &v18;
    v11[8] = a3;
    v12 = a1;
    v11[6] = v17;
    os_activity_apply(v4, v11);
    if (v19[3])
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = container_log_handle_for_category_logHandles[0];
      if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = "container_paths_enumerate_containers_at";
        _os_log_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: success", buf, 0xCu);
      }
    }

    else
    {
      v8 = v14[3];
      if (v8)
      {
        container_log_ext_error("container_paths_enumerate_containers_at", gClientFaultLoggingEnabled, v8);
      }

      else
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v9 = container_log_handle_for_category_logHandles[0];
        if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v23 = "container_paths_enumerate_containers_at";
          _os_log_error_impl(&dword_1DF28A000, v9, OS_LOG_TYPE_ERROR, "%{public}s: failed (errors during enumeration)", buf, 0xCu);
        }
      }
    }

    container_error_free(v14[3]);
    v7 = *(v19 + 24);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v23 = "container_paths_enumerate_containers_at";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: context parameter is NULL", buf, 0xCu);
    }

    v7 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

void __container_paths_enumerate_containers_at_block_invoke(uint64_t a1)
{
  v120 = *MEMORY[0x1E69E9840];
  __s = 0;
  object = xpc_array_create(0, 0);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2000000000;
  v74 = 0;
  atomic_store(0, &v74);
  if (!*(a1 + 32))
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v12 = qword_1ED452B40;
    if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    *buf = 136315138;
    *&buf[4] = "container_paths_enumerate_containers_at_block_invoke";
    v13 = "%s: SPI MISUSE: enumerator cannot be NULL";
    goto LABEL_53;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v12 = qword_1ED452B40;
    if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    *buf = 136315138;
    *&buf[4] = "container_paths_enumerate_containers_at_block_invoke";
    v13 = "%s: SPI MISUSE: context cannot be NULL";
LABEL_53:
    _os_log_fault_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_FAULT, v13, buf, 0xCu);
LABEL_30:
    v15 = 38;
LABEL_31:
    v16 = 0;
    *(*(*(a1 + 40) + 8) + 24) = container_error_create_with_message(3, v15, 0, 0, 0);
    v17 = -1;
    goto LABEL_32;
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = MEMORY[0x1E69E9750];
  }

  else
  {
    v3 = _container_paths_passthru_dispatch_async;
  }

  if ((*v2 - 1) > 0xD || (!*(v2 + 8) ? (v4 = &_container_paths_get_volume_relative_path__relative_paths) : (v4 = &_container_paths_get_volume_relative_path__transient_relative_paths), (v5 = v4[*v2]) == 0))
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v14 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "container_paths_enumerate_containers_at_block_invoke";
      _os_log_fault_impl(&dword_1DF28A000, v14, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: Unknown container class", buf, 0xCu);
    }

    v15 = 20;
    goto LABEL_31;
  }

  v67 = v3;
  v6 = *(v2 + 16);
  v7 = container_fs_path_at(*(a1 + 72), v5);
  __s = v7;
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_DEFAULT))
  {
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    current_persona_originator_info = voucher_get_current_persona_originator_info();
    v62 = DWORD2(v117);
    v64 = current_persona_originator_info;
    v60 = DWORD1(v118);
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    current_persona_proximate_info = voucher_get_current_persona_proximate_info();
    v58 = DWORD1(v115);
    v59 = DWORD2(v114);
    v113 = 0;
    memset(v112, 0, sizeof(v112));
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    *&buf[4] = 0u;
    *buf = 2;
    current_persona = voucher_get_current_persona();
    if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
    {
      v57 = "NOPERSONA";
      v22 = "<unknown>";
    }

    else
    {
      if ((*&buf[8] - 2) > 4)
      {
        v11 = "<unknown>";
      }

      else
      {
        v11 = (&off_1E86AF498)[*&buf[8] - 2];
      }

      v57 = v11;
      v22 = &v112[4];
    }

    v56 = v22;
    v66 = v6;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v23 = qword_1ED452B40;
    if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v60 & ~(v64 >> 31);
      v25 = v62 & ~(v64 >> 31);
      v65 = v58 & ~(current_persona_proximate_info >> 31);
      v61 = v24;
      v63 = v59 & ~(current_persona_proximate_info >> 31);
      v26 = geteuid();
      v27 = getuid();
      v28 = *(a1 + 64);
      v29 = *v28;
      v30 = v28[2];
      v31 = v28[3];
      v32 = *(v28 + 8);
      LODWORD(v28) = *(v28 + 8);
      *v77 = 67112706;
      v78 = current_persona;
      v79 = 2082;
      v80 = v57;
      v81 = 2082;
      v82 = v56;
      v83 = 1024;
      v84 = v25;
      v85 = 1024;
      v86 = v61;
      v87 = 1024;
      v88 = v63;
      v89 = 1024;
      v90 = v65;
      v91 = 1024;
      v92 = v26;
      v93 = 1024;
      v94 = v27;
      v95 = 2080;
      v96 = v7;
      v97 = 2048;
      v98 = v29;
      v99 = 2048;
      v100 = v30;
      v101 = 2082;
      v102 = v31;
      v103 = 1024;
      v104 = v32;
      v105 = 1024;
      v106 = v28;
      _os_log_impl(&dword_1DF28A000, v23, OS_LOG_TYPE_DEFAULT, "Enumerate; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, context<path = [%s], class = %llu, flags = 0x%llx, persona = [%{public}s], uid = %u, transient = %d>", v77, 0x74u);
    }

    v6 = v66;
  }

  v33 = openat(*(a1 + 72), v5, 0x1000000, v56);
  v17 = v33;
  if (v33 < 0)
  {
    v45 = *__error();
    if (v45 == 2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v46 = qword_1ED452B40;
      if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = __s;
        _os_log_impl(&dword_1DF28A000, v46, OS_LOG_TYPE_DEFAULT, "[%s] does not exist, assuming no containers.", buf, 0xCu);
      }

      v16 = 0;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v16 = 0;
      *(*(*(a1 + 40) + 8) + 24) = container_error_create_with_message(1, 127, __s, v45, 0);
    }
  }

  else
  {
    v34 = object;
    v35 = *(*(a1 + 40) + 8);
    v36 = dup(v33);
    if (v36 < 0)
    {
      v52 = *__error();
      v53 = v17;
    }

    else
    {
      v37 = v36;
      v38 = fdopendir(v36);
      if (v38)
      {
        v39 = v38;
        v40 = v6 & 1;
        while (1)
        {
          v41 = readdir(v39);
          if (!v41)
          {
            break;
          }

          v42 = v41;
          if (container_fs_resolve_dirent_type_at(v17, v41) == 4)
          {
            v44 = v42->d_name[0];
            d_name = v42->d_name;
            if (v44 != 46)
            {
              *buf = xpc_string_create(d_name);
              xpc_array_append_value(v34, *buf);
              if (*buf)
              {
                xpc_release(*buf);
                memset_s(buf, 8uLL, 0, 8uLL);
              }
            }
          }
        }

        closedir(v39);
        count = xpc_array_get_count(v34);
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v16 = os_signpost_id_make_with_pointer(qword_1ED452B40, *(a1 + 64));
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v48 = qword_1ED452B40;
          if (os_signpost_enabled(qword_1ED452B40))
          {
            v49 = **(a1 + 64);
            *buf = 134349056;
            *&buf[4] = v49;
            _os_signpost_emit_with_name_impl(&dword_1DF28A000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Enumerate", " class=%{public, signpost.description:attribute}llu ", buf, 0xCu);
          }
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __container_paths_enumerate_containers_at_block_invoke_23;
        block[3] = &unk_1E86ADFD8;
        v69 = v17;
        v70 = v40;
        v50 = *(a1 + 64);
        block[8] = __s;
        block[9] = v50;
        block[10] = v67;
        v51 = *(a1 + 48);
        block[4] = *(a1 + 32);
        block[5] = v51;
        block[6] = &v71;
        block[7] = v34;
        dispatch_apply(count, 0, block);
        goto LABEL_32;
      }

      v52 = *__error();
      v53 = v37;
    }

    v54 = container_fs_path_at(v53, 0);
    *buf = v54;
    v55 = container_error_create_with_message(1, 127, v54, v52, 0);
    if (v54)
    {
      free(v54);
      memset_s(buf, 8uLL, 0, 8uLL);
    }

    v16 = 0;
    *(v35 + 24) = v55;
  }

LABEL_32:
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    (*(*(a1 + 32) + 16))();
  }

  v18 = *(*(*(a1 + 48) + 8) + 24);
  if (v18)
  {
    dispatch_barrier_async_and_wait(v18, &__block_literal_global_264);
  }

  if (v16)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    if (v16 != -1)
    {
      v19 = qword_1ED452B40;
      if (os_signpost_enabled(qword_1ED452B40))
      {
        v20 = **(a1 + 64);
        *buf = 134349056;
        *&buf[4] = v20;
        _os_signpost_emit_with_name_impl(&dword_1DF28A000, v19, OS_SIGNPOST_INTERVAL_END, v16, "Enumerate", " class=%{public, signpost.description:attribute}llu ", buf, 0xCu);
      }
    }
  }

  if (atomic_load(v72 + 3))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (object)
  {
    xpc_release(object);
    memset_s(&object, 8uLL, 0, 8uLL);
  }

  if ((v17 & 0x80000000) == 0)
  {
    close(v17);
  }

  _Block_object_dispose(&v71, 8);
}

uint64_t __container_paths_enumerate_containers_at_block_invoke_23(uint64_t a1, size_t a2)
{
  v19 = 0;
  string = xpc_array_get_string(*(a1 + 56), a2);
  v4 = openat(*(a1 + 88), string, 0x1000000);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEBUG) || os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    v5 = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
    __strlcpy_chk();
    container_fs_add_path_component(v5, string, 0x400uLL);
    if ((v4 & 0x80000000) != 0)
    {
      v6 = __error();
      v7 = container_error_create_with_message(1, 127, v5, *v6, 0);
      add = atomic_fetch_add((*(*(a1 + 48) + 8) + 24), 1uLL);
      v9 = *(a1 + 80);
      v10 = *(*(*(a1 + 40) + 8) + 24);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __container_paths_enumerate_containers_at_block_invoke_25;
      v17[3] = &unk_1E86ADFB0;
      v17[4] = *(a1 + 32);
      v17[5] = v7;
      v17[6] = add;
      v17[7] = v5;
      return v9(v10, v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = container_paths_copy_container_at(v4, *(a1 + 92), *(*(a1 + 72) + 8), &v19);
  close(v4);
  v13 = *(a1 + 80);
  v14 = *(*(*(a1 + 40) + 8) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __container_paths_enumerate_containers_at_block_invoke_2;
  v18[3] = &unk_1E86ADF88;
  v15 = *(a1 + 32);
  v18[6] = v12;
  v18[7] = v19;
  v18[8] = v5;
  v16 = *(a1 + 48);
  v18[4] = v15;
  v18[5] = v16;
  return v13(v14, v18);
}

void *__container_paths_enumerate_containers_at_block_invoke_2(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (*(a1[4] + 16))();
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v3 = container_log_handle_for_category_logHandles[0];
  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[8];
    v11 = a1[6] != 0;
    *buf = 136446978;
    v15 = "container_paths_enumerate_containers_at";
    v16 = 2080;
    v17 = v10;
    v18 = 1024;
    *v19 = v2;
    *&v19[4] = 1024;
    *&v19[6] = v11;
    _os_log_debug_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_DEBUG, "%{public}s: enumeration of path [%s]: success = %d, found container = %d", buf, 0x22u);
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  if (a1[6])
  {
    goto LABEL_14;
  }

LABEL_6:
  add = atomic_fetch_add((*(a1[5] + 8) + 24), 1uLL);
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
  {
    v5 = container_error_copy_unlocalized_description(a1[7]);
    __s = v5;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles[0];
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
    {
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v12 = a1[8];
    *buf = 136446978;
    v15 = "container_paths_enumerate_containers_at";
    v16 = 2080;
    v17 = v12;
    v18 = 2048;
    *v19 = add + 1;
    *&v19[8] = 2080;
    v20 = v5;
    _os_log_error_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_ERROR, "%{public}s: enumeration failure processing container [%s][%llu]: %s", buf, 0x2Au);
    if (v5)
    {
LABEL_13:
      free(v5);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

LABEL_14:
  container_error_free(a1[7]);
  container_object_free(a1[6]);
  v9 = a1[8];
  v8 = a1 + 8;
  result = v9;
  if (v9)
  {
    free(result);
    return memset_s(v8, 8uLL, 0, 8uLL);
  }

  return result;
}

void *__container_paths_enumerate_containers_at_block_invoke_25(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  (*(a1[4] + 16))();
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
  {
    v2 = container_error_copy_unlocalized_description(a1[5]);
    __s = v2;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = container_log_handle_for_category_logHandles[0];
    if (!os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_ERROR))
    {
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v7 = a1[6] + 1;
    *buf = 136446722;
    v10 = "container_paths_enumerate_containers_at";
    v11 = 2048;
    v12 = v7;
    v13 = 2080;
    v14 = v2;
    _os_log_error_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_ERROR, "%{public}s: enumeration failure opening container dir [%llu]: %s", buf, 0x20u);
    if (v2)
    {
LABEL_8:
      free(v2);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

LABEL_9:
  container_error_free(a1[5]);
  v6 = a1[7];
  v5 = a1 + 7;
  result = v6;
  if (v6)
  {
    free(result);
    return memset_s(v5, 8uLL, 0, 8uLL);
  }

  return result;
}

uint64_t _container_paths_passthru_dispatch_async(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 16))(a2);
  }

  return result;
}

uint64_t container_paths_copy_container_root_path_for_context(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (!a3)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B40;
    if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v14 = "container_paths_copy_container_root_path_for_context";
    v6 = "%s: SPI MISUSE: context parameter is NULL";
    goto LABEL_14;
  }

  if ((*a3 - 1) >= 0xE)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = qword_1ED452B40;
    if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v14 = "container_paths_copy_container_root_path_for_context";
    v6 = "%s: SPI MISUSE: Unknown container class";
LABEL_14:
    _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, v6, buf, 0xCu);
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = a3[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_paths_copy_container_root_path_for_context_block_invoke;
  block[3] = &unk_1E86AE048;
  block[4] = &v9;
  block[5] = a2;
  block[6] = a3;
  block[7] = "container_paths_copy_container_root_path_for_context";
  block[8] = a1;
  os_activity_apply(v3, block);
  v4 = v10[3];
LABEL_12:
  _Block_object_dispose(&v9, 8);
  return v4;
}

void __container_paths_copy_container_root_path_for_context_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!*(*(a1 + 48) + 24))
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v25 = qword_1ED452B40;
        if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
        {
          return;
        }

        v28 = *(a1 + 56);
        *buf = 136315138;
        *&v39[0] = v28;
        v22 = "%s: SPI MISUSE: persona_unique_string is NULL but is required for data separated mount point";
        goto LABEL_46;
      }
    }

    else if (v2 != 3)
    {
      return;
    }

    v15 = *(a1 + 64);
    if (!v15)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v25 = qword_1ED452B40;
      if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v26 = *(a1 + 56);
      *buf = 136315138;
      *&v39[0] = v26;
      v22 = "%s: SPI MISUSE: prefix parameter is NULL";
      goto LABEL_46;
    }

    v16 = **(a1 + 48);
    if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 0xC || ((v5 = v16 > 8, v17 = (1 << v16) & 0x12A, !v5) ? (v18 = v17 == 0) : (v18 = 1), !v18))
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v19 = qword_1ED452B40;
      if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v20 = *(a1 + 56);
      v21 = **(a1 + 48);
      *buf = 136315394;
      *&v39[0] = v20;
      WORD4(v39[0]) = 2048;
      *(v39 + 10) = v21;
      v22 = "%s: SPI MISUSE: Cannot use CONTAINER_PATHS_PREFIX_TYPE_USER_HOME with global container class %llu";
      v23 = v19;
      v24 = 22;
LABEL_47:
      _os_log_fault_impl(&dword_1DF28A000, v23, OS_LOG_TYPE_FAULT, v22, buf, v24);
      return;
    }

    v14 = strndup(v15, 0x400uLL);
LABEL_22:
    *(*(*(a1 + 32) + 8) + 24) = v14;
    return;
  }

  if (!v2)
  {
    v10 = *(a1 + 48);
    v11 = *v10;
    if ((*v10 & 0xFFFFFFFFFFFFFFFELL) == 0xC || ((v5 = v11 > 8, v12 = (1 << v11) & 0x12A, !v5) ? (v13 = v12 == 0) : (v13 = 1), !v13))
    {
      v14 = strdup("/private/var");
      goto LABEL_22;
    }

    if (!v10[3])
    {
      goto LABEL_73;
    }

    *buf = 0;
    v29 = MEMORY[0x1E12D1E60]();
    if (!host_get_multiuser_config_flags(v29, buf) && (*buf & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

    v30 = *(*(a1 + 48) + 24);
    v31 = *(*(a1 + 32) + 8);
    if (!v30)
    {
      goto LABEL_71;
    }

    v40 = 0;
    memset(v39, 0, sizeof(v39));
    *buf = 2;
    if (!strncmp(v30, "com.apple.containermanager.current-persona", 0x2AuLL))
    {
      if (voucher_get_current_persona() == -1)
      {
        goto LABEL_71;
      }
    }

    else if (container_persona_convert_unique_string_to_persona_uid(v30) == -1)
    {
      goto LABEL_66;
    }

    if (kpersona_info())
    {
LABEL_66:
      *(v31 + 24) = 0;
      return;
    }

    if (DWORD1(v39[0]) == 2)
    {
      v36 = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
      __s = v36;
      if (!kpersona_getpath() || !v36)
      {
        goto LABEL_72;
      }

      free(v36);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

LABEL_71:
    v36 = 0;
LABEL_72:
    *(v31 + 24) = v36;
LABEL_73:
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      return;
    }

    v14 = container_pwd_copy_user_home_path(*(*(a1 + 48) + 32), 1, 0, 0);
    goto LABEL_22;
  }

  if (v2 != 1)
  {
    return;
  }

  if (!*(a1 + 64))
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v25 = qword_1ED452B40;
    if (!os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v27 = *(a1 + 56);
    *buf = 136315138;
    *&v39[0] = v27;
    v22 = "%s: SPI MISUSE: prefix parameter is NULL";
LABEL_46:
    v23 = v25;
    v24 = 12;
    goto LABEL_47;
  }

  v3 = *(a1 + 48);
  v4 = *v3;
  if ((*v3 & 0xFFFFFFFFFFFFFFFELL) == 0xC || ((v5 = v4 > 8, v6 = (1 << v4) & 0x12A, !v5) ? (v7 = v6 == 0) : (v7 = 1), !v7))
  {
    *(*(*(a1 + 32) + 8) + 24) = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 64);

    strlcpy(v8, v9, 0x400uLL);
    return;
  }

  if (*(v3 + 32) == 501)
  {
    *(*(*(a1 + 32) + 8) + 24) = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
    strlcpy(*(*(*(a1 + 32) + 8) + 24), *(a1 + 64), 0x400uLL);
    v32 = *(*(*(a1 + 32) + 8) + 24);

    container_fs_add_path_component(v32, "mobile", 0x400uLL);
    return;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v33 = qword_1ED452B40;
  if (os_log_type_enabled(qword_1ED452B40, OS_LOG_TYPE_FAULT))
  {
    v34 = *(a1 + 56);
    v35 = *(*(a1 + 48) + 32);
    *buf = 136315394;
    *&v39[0] = v34;
    WORD4(v39[0]) = 1024;
    *(v39 + 10) = v35;
    v22 = "%s: SPI MISUSE: Cannot use CONTAINER_PATHS_PREFIX_TYPE_DATA_VOLUME_MOUNT_POINT with edu mode user %u";
    v23 = v33;
    v24 = 18;
    goto LABEL_47;
  }
}

BOOL container_paths_create_uid_home_relative(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v7 = container_pwd_copy_user_home_path(a1, 1, 0, &v30);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = v7;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = -1;
  if (v7)
  {
    v8 = v7;
    v9 = (*(gCMFSSeam + 64))(v7, 1611694080);
    *(v20 + 6) = v9;
    if (v9 < 0)
    {
      v11 = __error();
      v12 = container_error_create_with_message(1, 127, v8, *v11, 0);
      v10 = 0;
      v28[3] = v12;
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __container_paths_create_uid_home_relative_block_invoke;
      v18[3] = &unk_1E86AE070;
      v18[4] = &v19;
      v18[5] = &v23;
      v18[6] = &v27;
      v10 = _container_paths_in_reverse_order_from_type_do(a2, v18);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((v20[3] & 0x80000000) == 0)
  {
    (*(gCMFSSeam + 19))();
  }

  if (a4)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  v14 = v28[3];
  if (v13)
  {
    container_error_free(v14);
  }

  else
  {
    *a4 = v14;
  }

  v15 = !v10;
  v16 = v24[3];
  if (!a3)
  {
    v15 = 1;
  }

  if (v15)
  {
    if (v16)
    {
      free(v16);
      memset_s(v24 + 3, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    *a3 = v16;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  return v10;
}

uint64_t __container_paths_create_uid_home_relative_block_invoke(void *a1, uint64_t a2)
{
  v2 = *(a1[4] + 8);
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(v3 + 24);
  v10 = (v3 + 24);
  __s = 0;
  asprintf(&__s, "%s/%s", v11, v8);
  if (!__s)
  {
    result = _os_crash();
    __break(1u);
    return result;
  }

  if ((v9 & 1) != 0 && ((*(gCMFSSeam + 59))(*(v2 + 24), v8, v5) & 0x80000000) != 0 && *__error() != 17 || (v12 = (*(gCMFSSeam + 66))(*(v2 + 24), v8, 1611694080), v12 < 0))
  {
    v15 = __error();
    v16 = container_error_create_with_message(1, 127, __s, *v15, 0);
    if (__s)
    {
      free(__s);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    goto LABEL_24;
  }

  v13 = v12;
  v14 = __s;
  v30 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = geteuid();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = getegid();
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      *(v27 + 6) = v6;
      *(v23 + 6) = HIDWORD(v6);
      goto LABEL_17;
    }

    if (v7 != 4)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_18:
    v16 = 0;
    v17 = 1;
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v6 = "mobile";
LABEL_14:
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___container_paths_chown_component_block_invoke;
    v21[3] = &unk_1E86AE290;
    v21[4] = &v26;
    v21[5] = &v22;
    if ((container_pwd_for_name(v6, &v30, v21) & 1) == 0)
    {
      v17 = 0;
      v16 = v30;
      goto LABEL_20;
    }
  }

LABEL_17:
  if ((fchown(v13, *(v27 + 6), *(v27 + 6)) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v18 = __error();
  v16 = container_error_create_with_message(1, 127, v14, *v18, 0);
  v17 = 0;
  v30 = v16;
LABEL_20:
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  if (!v17)
  {
LABEL_24:
    result = 0;
    *(v4 + 24) = v16;
    return result;
  }

  if (*v10)
  {
    free(*v10);
    memset_s(v10, 8uLL, 0, 8uLL);
  }

  *v10 = __s;
  (*(gCMFSSeam + 19))(*(v2 + 24));
  *(v2 + 24) = v13;
  return 1;
}

BOOL _container_paths_in_reverse_order_from_type_do(uint64_t a1, uint64_t a2)
{
  v3 = &_container_paths_definition_from_type_definitions[7 * a1];
  v4 = v3[1];
  if (v4)
  {
    v5 = 0;
    v6 = v3[1];
    do
    {
      v6 = _container_paths_definition_from_type_definitions[7 * v6 + 1];
      ++v5;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  v7 = v5 + 1;
  do
  {
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = *v3;
    v10 = *(v3 + 2);
    v21 = *(v3 + 1);
    v22 = v10;
    v23 = v3[6];
    v11 = v5;
    v12 = v4;
    --v7;
    if (v8 == 1)
    {
      v12 = v4;
    }

    else
    {
      do
      {
        v13 = &_container_paths_definition_from_type_definitions[7 * v12];
        v12 = v13[1];
        v14 = *(v13 + 2);
        v21 = *(v13 + 1);
        v22 = v14;
        v23 = v13[6];
        --v11;
      }

      while (v11);
      v9 = *v13;
    }

    v15 = *(a2 + 16);
    v17[0] = v9;
    v17[1] = v12;
    v18 = v21;
    v19 = v22;
    v20 = v23;
    --v5;
  }

  while ((v15(a2, v17) & 1) != 0);
  return v8 == 0;
}

uint64_t ___container_paths_chown_component_block_invoke(uint64_t a1, _DWORD *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = *a2;
  *(*(*(a1 + 40) + 8) + 24) = a2[1];
  return 1;
}

uint64_t container_paths_copy_uid_home_relative(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v5 = container_pwd_copy_user_home_path(a1, 1, 0, &v16);
  __s = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v6 = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
  v12[3] = v6;
  __strlcpy_chk();
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __container_paths_copy_uid_home_relative_block_invoke;
    v10[3] = &unk_1E86AE098;
    v10[4] = &v11;
    _container_paths_in_reverse_order_from_type_do(a2, v10);
  }

  if (a3)
  {
    *a3 = v16;
  }

  else
  {
    container_error_free(v16);
  }

  v7 = v12[3];
  if (v7)
  {
    free(v7);
    memset_s(v12 + 3, 8uLL, 0, 8uLL);
  }

  if (v5)
  {
    free(v5);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __container_paths_copy_uid_home_relative_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = malloc_type_calloc(0x401uLL, 1uLL, 0x100004077774924uLL);
  v5 = (v3 + 24);
  __strlcpy_chk();
  container_fs_add_path_component(v4, v2, 0x400uLL);
  if (*v5)
  {
    free(*v5);
    memset_s(v5, 8uLL, 0, 8uLL);
  }

  *v5 = v4;
  return 1;
}

char *container_paths_copy_part_subpath(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v3 = "Documents";
    }

    else
    {
      if (a2 != 5)
      {
        if (a2 != 6 || a1 - 2 > 9 || ((0x3B5u >> (a1 - 2)) & 1) == 0)
        {
          return v6;
        }

        v3 = "SystemData";
        goto LABEL_13;
      }

      v3 = "tmp";
    }

    if (a1 <= 0xE && ((1 << a1) & 0x61AA) != 0)
    {
      return v6;
    }

LABEL_13:
    if (a3)
    {
      asprintf(&v6, "%s/%s");
      return v6;
    }

    return strdup(v3);
  }

  switch(a2)
  {
    case 0:
      v3 = &unk_1DF2BBE1A;
      goto LABEL_13;
    case 2:
      v3 = "Library/Preferences";
      if (a3)
      {
        asprintf(&v6, "%s/%s.plist");
        return v6;
      }

      return strdup(v3);
    case 3:
      v3 = "Library/Caches";
      goto LABEL_13;
  }

  return v6;
}

uint64_t container_authorize(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return _container_authorize_execute(v6, a2, 0, a3, a4);
}

uint64_t _container_authorize_execute(const void *a1, uint64_t a2, BOOL a3, uint64_t a4, uint64_t a5)
{
  uint64 = a2;
  v136 = *MEMORY[0x1E69E9840];
  v83 = 0;
  v84 = 0;
  v82 = 0;
  if (!a2)
  {
    return uint64;
  }

  if ((*(a2 + 16) & 0x10) != 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v18 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *__s = 136315138;
      *&__s[4] = "_container_authorize_execute";
      _os_log_fault_impl(&dword_1DF28A000, v18, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: A query must not contain a persona for container_authorize*", __s, 0xCu);
    }

    v16 = container_error_create_with_message(3, 38, 0, 0, 0);
    v17 = 0;
    v10 = 0;
    goto LABEL_22;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v83 = v10;
  xpc_dictionary_set_uint64(v10, "Command", 0x32uLL);
  xpc_dictionary_set_BOOL(v10, "OnBehalfOfSelf", a3);
  if (!a3)
  {
    v11 = xpc_data_create(a1, 0x20uLL);
    *__s = v11;
    xpc_dictionary_set_value(v10, "AuditToken", v11);
    if (v11)
    {
      xpc_release(v11);
      memset_s(__s, 8uLL, 0, 8uLL);
    }
  }

  xpc_dictionary_set_uint64(v10, "Flags", a4);
  xpc_dictionary_set_uint64(v10, "Platform", *(uint64 + 88));
  v12 = *(uint64 + 112);
  if (v12)
  {
    container_xpc_encode_client_onto_message(v10, v12);
  }

  xpc_dictionary_set_uint64(v10, "Explicit", *(uint64 + 16));
  v13 = *(uint64 + 16);
  if (v13)
  {
    v14 = *(uint64 + 24);
    if (v14)
    {
      xpc_dictionary_set_value(v10, "IdentifiersArray", v14);
      v13 = *(uint64 + 16);
    }
  }

  if ((v13 & 2) != 0)
  {
    xpc_dictionary_set_uint64(v10, "ContainerClass", *(uint64 + 32));
    if ((*(uint64 + 16) & 4) != 0)
    {
      v21 = *(uint64 + 40);
      if (v21)
      {
        xpc_dictionary_set_value(v10, "GroupIdentifiers", v21);
      }
    }

    xpc_dictionary_set_uint64(v10, "PersonaKernelID", *(uint64 + 172));
    if ((*(uint64 + 16) & 0x10) != 0)
    {
      v22 = *(uint64 + 56);
      if (v22)
      {
        xpc_dictionary_set_string(v10, "PersonaUniqueString", v22);
      }
    }

    v23 = 0;
    v24 = *(uint64 + 32);
    if (v24 <= 0xE && ((1 << v24) & 0x4ED4) != 0)
    {
      if ((*(uint64 + 16) & 8) != 0)
      {
        xpc_dictionary_set_uint64(v10, "UID", *(uint64 + 48));
        v23 = *(uint64 + 48);
      }

      else
      {
        v23 = 0;
      }
    }

    v25 = *(uint64 + 16);
    if ((v25 & 0x20) != 0)
    {
      xpc_dictionary_set_BOOL(v10, "Transient", *(uint64 + 64));
      v25 = *(uint64 + 16);
      if ((v25 & 0x40) == 0)
      {
LABEL_44:
        if ((v25 & 0x80) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    else if ((v25 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    xpc_dictionary_set_BOOL(v10, "IncludeUnowned", *(uint64 + 65));
    if ((*(uint64 + 16) & 0x80) == 0)
    {
LABEL_46:
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      if (!os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_72;
      }

      v26 = *(uint64 + 32);
      if ((v26 & 0xFFFFFFFFFFFFFFFELL) != 0xC && (v26 > 8 || ((1 << v26) & 0x12A) == 0))
      {
        if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
        {
          v46 = MEMORY[0x1E12D2400](v10);
          v81 = v46;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          current_persona_originator_info = voucher_get_current_persona_originator_info();
          v75 = DWORD1(v134);
          v77 = DWORD2(v133);
          v131 = 0u;
          v132 = 0u;
          v130 = 0u;
          current_persona_proximate_info = voucher_get_current_persona_proximate_info();
          v71 = DWORD2(v130);
          v73 = current_persona_proximate_info;
          v69 = DWORD1(v131);
          v129 = 0;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          v112 = 0u;
          memset(v111, 0, sizeof(v111));
          memset(&__s[4], 0, 32);
          *__s = 2;
          current_persona = voucher_get_current_persona();
          if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
          {
            v51 = "<unknown>";
            v49 = "NOPERSONA";
          }

          else
          {
            if ((*&__s[8] - 2) > 4)
            {
              v49 = "<unknown>";
            }

            else
            {
              v49 = (&off_1E86AF498)[*&__s[8] - 2];
            }

            v51 = &v113 + 4;
          }

          v59 = v49;
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v60 = qword_1ED452B38;
          if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67111426;
            *&buf[4] = current_persona;
            v86 = 2082;
            v87 = v59;
            v88 = 2082;
            v89 = v51;
            v90 = 1024;
            v91 = v77 & ~(current_persona_originator_info >> 31);
            v92 = 1024;
            v93 = v75 & ~(current_persona_originator_info >> 31);
            v94 = 1024;
            v95 = v71 & ~(v73 >> 31);
            v96 = 1024;
            v97 = v69 & ~(v73 >> 31);
            v98 = 1024;
            v99 = geteuid();
            v100 = 1024;
            v101 = getuid();
            v102 = 2080;
            v103 = v46;
            _os_log_debug_impl(&dword_1DF28A000, v60, OS_LOG_TYPE_DEBUG, "Query; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, query = %s", buf, 0x4Au);
            if (!v46)
            {
              goto LABEL_72;
            }
          }

          else if (!v46)
          {
            goto LABEL_72;
          }

          free(v46);
          v29 = &v81;
          goto LABEL_58;
        }

        v50 = *(uint64 + 24);
        if (v50 && (count = xpc_array_get_count(v50)) != 0)
        {
          string = xpc_array_get_string(*(uint64 + 24), 0);
        }

        else
        {
          string = 0;
          count = 0;
        }

        v134 = 0u;
        v135 = 0u;
        v133 = 0u;
        v52 = voucher_get_current_persona_originator_info();
        v74 = DWORD1(v134);
        v76 = DWORD2(v133);
        v131 = 0u;
        v132 = 0u;
        v130 = 0u;
        v53 = voucher_get_current_persona_proximate_info();
        v72 = DWORD2(v130);
        v68 = v53;
        v70 = DWORD1(v131);
        v129 = 0;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        v119 = 0u;
        v118 = 0u;
        v117 = 0u;
        v116 = 0u;
        v115 = 0u;
        v114 = 0u;
        v113 = 0u;
        v112 = 0u;
        memset(v111, 0, sizeof(v111));
        memset(&__s[4], 0, 32);
        *__s = 2;
        v54 = voucher_get_current_persona();
        if (v54 == -1 || (kpersona_info() & 0x80000000) != 0)
        {
          v56 = "<unknown>";
          v55 = "NOPERSONA";
        }

        else
        {
          if ((*&__s[8] - 2) > 4)
          {
            v55 = "<unknown>";
          }

          else
          {
            v55 = (&off_1E86AF498)[*&__s[8] - 2];
          }

          v56 = &v113 + 4;
        }

        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v61 = qword_1ED452B38;
        if (!os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_72;
        }

        v62 = v76 & ~(v52 >> 31);
        v67 = v74 & ~(v52 >> 31);
        v63 = geteuid();
        v64 = getuid();
        v65 = *(uint64 + 32);
        v66 = *(uint64 + 96);
        *buf = 67112194;
        *&buf[4] = v54;
        v86 = 2082;
        v87 = v55;
        v88 = 2082;
        v89 = v56;
        v90 = 1024;
        v91 = v62;
        v92 = 1024;
        v93 = v67;
        v94 = 1024;
        v95 = v72 & ~(v68 >> 31);
        v96 = 1024;
        v97 = v70 & ~(v68 >> 31);
        v98 = 1024;
        v99 = v63;
        v100 = 1024;
        v101 = v64;
        v102 = 2048;
        v103 = v65;
        v104 = 2080;
        v105 = string;
        v106 = 2048;
        v107 = count;
        v108 = 2048;
        v109 = v66;
        v38 = "Query; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, class = %llu, identifier = [%s](%zu), flags = %llx";
        v39 = buf;
        v40 = v61;
        v41 = 104;
LABEL_71:
        _os_log_impl(&dword_1DF28A000, v40, OS_LOG_TYPE_DEFAULT, v38, v39, v41);
        goto LABEL_72;
      }

      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEBUG))
      {
        v27 = MEMORY[0x1E12D2400](v10);
        *buf = v27;
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v28 = qword_1ED452B30;
        if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
        {
          v57 = geteuid();
          v58 = getuid();
          *__s = 67109634;
          *&__s[4] = v57;
          *&__s[8] = 1024;
          *&__s[10] = v58;
          *&__s[14] = 2080;
          *&__s[16] = v27;
          _os_log_debug_impl(&dword_1DF28A000, v28, OS_LOG_TYPE_DEBUG, "Query; euid = %u, uid = %u, query = %s", __s, 0x18u);
          if (!v27)
          {
            goto LABEL_72;
          }
        }

        else if (!v27)
        {
LABEL_72:
          v42 = *(uint64 + 32);
          if ((v42 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
          {
            v43 = 1;
          }

          else
          {
            v44 = v42 - 1;
            if (v44 > 0xD)
            {
              v43 = 0;
            }

            else
            {
              v43 = dword_1DF2B94B0[v44];
            }
          }

          v45 = container_xpc_send_sync_message(v43, 0, v10, 1, v23, uint64 + 168, &v82);
          v17 = v45;
          v84 = v45;
          if (v45)
          {
            uint64 = xpc_dictionary_get_uint64(v45, "ReplyAuthorized");
          }

          else
          {
            uint64 = 0;
          }

          goto LABEL_23;
        }

        free(v27);
        v29 = buf;
LABEL_58:
        memset_s(v29, 8uLL, 0, 8uLL);
        goto LABEL_72;
      }

      v30 = *(uint64 + 24);
      if (v30)
      {
        v31 = xpc_array_get_count(v30);
        if (v31)
        {
          v32 = xpc_array_get_string(*(uint64 + 24), 0);
LABEL_67:
          if (container_log_handle_for_category_onceToken != -1)
          {
            dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
          }

          v33 = qword_1ED452B30;
          if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_72;
          }

          v34 = geteuid();
          v35 = getuid();
          v36 = *(uint64 + 32);
          v37 = *(uint64 + 96);
          *__s = 67110402;
          *&__s[4] = v34;
          *&__s[8] = 1024;
          *&__s[10] = v35;
          *&__s[14] = 2048;
          *&__s[16] = v36;
          *&__s[24] = 2080;
          *&__s[26] = v32;
          *&__s[34] = 2048;
          v111[0] = v31;
          LOWORD(v111[1]) = 2048;
          *(&v111[1] + 2) = v37;
          v38 = "Query; euid = %u, uid = %u, class = %llu, identifier = [%s](%zu), flags = %llx";
          v39 = __s;
          v40 = v33;
          v41 = 54;
          goto LABEL_71;
        }
      }

      else
      {
        v31 = 0;
      }

      v32 = 0;
      goto LABEL_67;
    }

LABEL_45:
    xpc_dictionary_set_uuid(v10, "UUID", (uint64 + 66));
    goto LABEL_46;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v15 = container_log_handle_for_category_logHandles[0];
  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
  {
    *__s = 136315138;
    *&__s[4] = "_container_authorize_execute";
    _os_log_fault_impl(&dword_1DF28A000, v15, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container_query_set_class() is required", __s, 0xCu);
  }

  v16 = container_error_create_with_message(3, 38, 0, 0, 0);
  v17 = 0;
LABEL_22:
  uint64 = 0;
  v82 = v16;
LABEL_23:
  v19 = v82;
  if (a5 && v82)
  {
    (*(a5 + 16))(a5, v82);
    v19 = v82;
  }

  container_error_free(v19);
  if (v10)
  {
    xpc_release(v10);
    memset_s(&v83, 8uLL, 0, 8uLL);
  }

  if (v17)
  {
    xpc_release(v17);
    memset_s(&v84, 8uLL, 0, 8uLL);
  }

  return uint64;
}

uint64_t container_authorize_container(_OWORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v10 = container_query_create();
  container_query_set_class(v10, a2);
  v11 = xpc_string_create(a3);
  __s = v11;
  if (a2 == 13 || a2 == 7)
  {
    container_query_set_group_identifiers(v10, v11);
  }

  else
  {
    container_query_set_identifiers(v10, v11);
  }

  v12 = a1[1];
  v16[0] = *a1;
  v16[1] = v12;
  v13 = _container_authorize_execute(v16, v10, 0, a4, a5);
  if (v11)
  {
    xpc_release(v11);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  container_query_free(v10);
  return v13;
}

uint64_t container_authorize_container_for_self(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = container_query_create();
  container_query_set_class(v8, a1);
  v9 = xpc_string_create(a2);
  __s = v9;
  if (a1 == 13 || a1 == 7)
  {
    container_query_set_group_identifiers(v8, v9);
  }

  else
  {
    container_query_set_identifiers(v8, v9);
  }

  memset(v12, 0, sizeof(v12));
  v10 = _container_authorize_execute(v12, v8, 1, a3, a4);
  if (v9)
  {
    xpc_release(v9);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  container_query_free(v8);
  return v10;
}

const char *container_authorize_get_result_description(uint64_t a1)
{
  v1 = "ERROR";
  if (a1 == 100)
  {
    v1 = "NO";
  }

  if (a1 == 200)
  {
    v1 = "NO_PATH_ONLY";
  }

  if (a1 == 300)
  {
    return "YES";
  }

  else
  {
    return v1;
  }
}

char *container_serialize_copy_serialized_reference(char *result, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    identifier = container_object_get_identifier(result);
    persona_unique_string = container_object_get_persona_unique_string(v3);
    unique_path_component = container_object_get_unique_path_component(v3);
    v7 = container_base64_encode_string(identifier);
    v19 = v7;
    if (persona_unique_string)
    {
      v8 = strlen(persona_unique_string);
      persona_unique_string = container_base64_encode(persona_unique_string, v8);
    }

    v18 = persona_unique_string;
    v9 = container_base64_encode_string(unique_path_component);
    v17 = v9;
    memset(out, 0, 37);
    uuid = container_object_get_uuid(v3);
    uuid_unparse(uuid, out);
    is_transient = container_object_is_transient(v3);
    __s = 0;
    v12 = container_object_get_class(v3);
    uid = container_object_get_uid(v3);
    v14 = &unk_1DF2BBE1A;
    v15 = "T";
    if (!is_transient)
    {
      v15 = &unk_1DF2BBE1A;
    }

    if (persona_unique_string)
    {
      v14 = persona_unique_string;
    }

    asprintf(&__s, "CmCo:1:%llu:%u:%s:%s:%s:%s:%s", v12, uid, out, v15, v7, v9, v14);
    if (a2 && __s)
    {
      *a2 = strlen(__s) + 1;
    }

    if (v7)
    {
      free(v7);
      memset_s(&v19, 8uLL, 0, 8uLL);
    }

    if (persona_unique_string)
    {
      free(persona_unique_string);
      memset_s(&v18, 8uLL, 0, 8uLL);
    }

    if (v9)
    {
      free(v9);
      memset_s(&v17, 8uLL, 0, 8uLL);
    }

    return __s;
  }

  return result;
}

unsigned __int8 *container_serialize_copy_deserialized_reference(const char *a1, size_t a2, void **a3)
{
  v23 = 0;
  v24 = 1;
  if (a1)
  {
    if (strnlen(a1, a2) <= 4)
    {
      v6 = 0;
      v7 = 133;
LABEL_7:
      v24 = v7;
      goto LABEL_8;
    }

    if (strncmp("CmCo", a1, 4uLL))
    {
      v6 = 0;
      v7 = 134;
      goto LABEL_7;
    }

    v9 = strndup(a1, a2);
    v10 = v9;
    v23 = v9;
    if (v9 < &v9[a2 - 1])
    {
      v11 = a2 - 1;
      v12 = v9;
      do
      {
        if (*v12 == 58)
        {
          *v12 = 0;
        }

        else if (!*v12)
        {
          v6 = 0;
          v22 = 142;
          goto LABEL_29;
        }

        ++v12;
        --v11;
      }

      while (v11);
    }

    v13 = v9 + 5;
    v14 = a2 - 5;
    v15 = strnlen(v9 + 5, v14);
    v16 = 0;
    v17 = v10 + 5;
    while (v17 < &v13[v15])
    {
      if (is_mul_ok(v16, 0xAuLL))
      {
        v18 = *v17;
        if ((v18 - 48) <= 9)
        {
          v19 = 10 * v16;
          v20 = v18 & 0xF;
          ++v17;
          v21 = __CFADD__(v19, v20);
          v16 = v19 + v20;
          if (!v21)
          {
            continue;
          }
        }
      }

      goto LABEL_28;
    }

    if (v16 == 1)
    {
      v6 = _container_serialize_copy_deserialized_reference_v1(&v13[v15 + 1], v14 - (v15 + 1), &v24);
      goto LABEL_30;
    }

LABEL_28:
    v6 = 0;
    v22 = 135;
LABEL_29:
    v24 = v22;
LABEL_30:
    if (v10)
    {
      free(v10);
      memset_s(&v23, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  if (a3 && v24 != 1)
  {
    *a3 = container_error_create_with_message(5, v24, 0, 0, 0);
  }

  return v6;
}

unsigned __int8 *_container_serialize_copy_deserialized_reference_v1(char *__s, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v32 = 1;
  memset(uu, 0, sizeof(uu));
  v30 = 0;
  __sa = 0;
  v29 = 0;
  if (a2 >= 1)
  {
    v4 = __s;
    v27 = 0;
    v5 = 0;
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = &__s[a2];
    while (1)
    {
      v12 = strlen(v4);
      v13 = v12 + 1;
      if (v9 <= 2)
      {
        if (!v9)
        {
          v10 = 0;
          v15 = v4;
          while (v15 < &v4[v12])
          {
            if (is_mul_ok(v10, 0xAuLL))
            {
              v16 = *v15;
              if ((v16 - 48) <= 9)
              {
                v17 = v16 & 0xF;
                ++v15;
                v18 = __CFADD__(10 * v10, v17);
                v10 = 10 * v10 + v17;
                if (!v18)
                {
                  continue;
                }
              }
            }

            goto LABEL_49;
          }

          if (v10 - 1 < 0xE)
          {
            goto LABEL_43;
          }

LABEL_49:
          v25 = 0;
          v26 = 20;
          goto LABEL_51;
        }

        if (v9 == 1)
        {
          v7 = 0;
          v21 = v4;
          while (v21 < &v4[v12])
          {
            if (is_mul_ok(v7, 0xAuLL))
            {
              v22 = *v21;
              if ((v22 - 48) <= 9)
              {
                v23 = v22 & 0xF;
                ++v21;
                v18 = __CFADD__(10 * v7, v23);
                v7 = 10 * v7 + v23;
                if (!v18)
                {
                  continue;
                }
              }
            }

            goto LABEL_50;
          }

          if (v7 <= 0x7FFFFFFE)
          {
            goto LABEL_43;
          }

LABEL_50:
          v25 = 0;
          v26 = 136;
LABEL_51:
          v32 = v26;
          goto LABEL_52;
        }

        if (v9 == 2 && (v12 != 36 || uuid_parse(v4, uu)))
        {
          v25 = 0;
          v26 = 137;
          goto LABEL_51;
        }
      }

      else if (v9 > 4)
      {
        if (v9 == 5)
        {
          if (v13 >= 2)
          {
            v6 = _container_base64_decode(v4, 0, 1u);
            v30 = v6;
          }

          if (!v6)
          {
            v25 = 0;
            v26 = 139;
            goto LABEL_51;
          }
        }

        else if (v9 == 6 && v13 >= 2)
        {
          v29 = _container_base64_decode(v4, 0, 1u);
          v27 = v29;
          if (!v29)
          {
            v25 = 0;
            v26 = 76;
            goto LABEL_51;
          }
        }
      }

      else if (v9 == 3)
      {
        for (i = v4; v12; --v12)
        {
          v20 = *i++;
          v8 |= v20 == 84;
        }
      }

      else
      {
        v14 = _container_base64_decode(v4, 0, 1u);
        __sa = v14;
        if (!v14)
        {
          v25 = 0;
          v32 = 138;
          v3 = a3;
          if (v6)
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        }

        v5 = v14;
      }

LABEL_43:
      v4 += v13;
      ++v9;
      if (v4 >= v11)
      {
        if (v9 <= 5)
        {
          v3 = a3;
          goto LABEL_47;
        }

        v25 = container_object_create(uu, v5, v10, v7, 0, v6, v27, 0, 0, 0, v8 & 1, 0, 0, &v32);
LABEL_52:
        v3 = a3;
        if (!v5)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_47:
  v25 = 0;
  v32 = 141;
  if (v5)
  {
LABEL_53:
    free(v5);
    memset_s(&__sa, 8uLL, 0, 8uLL);
    v6 = v30;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
    memset_s(&v30, 8uLL, 0, 8uLL);
  }

LABEL_56:
  if (v29)
  {
    free(v29);
    memset_s(&v29, 8uLL, 0, 8uLL);
  }

  if (v3 && !v25)
  {
    *v3 = v32;
  }

  return v25;
}

__n128 container_seam_pwd_set_common(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  qword_1ECE2FA10 = *(a1 + 48);
  xmmword_1ECE2F9F0 = v2;
  unk_1ECE2FA00 = v3;
  gCMPWDCustomSeamStore = result;
  gCMPWDSeam = &gCMPWDCustomSeamStore;
  return result;
}

uint64_t container_operation_delete(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v8 = _os_activity_create(&dword_1DF28A000, "container_operation_delete", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_operation_delete_block_invoke;
  block[3] = &unk_1E86AE2B8;
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[4] = &v17;
  block[5] = &v13;
  os_activity_apply(v8, block);
  os_release(v8);
  v9 = v14[3];
  if (a4 && v9)
  {
    *a4 = container_error_create_with_message(*(v9 + 8), *v9, *(v9 + 16), *(v9 + 24), *(v9 + 32));
    v9 = v14[3];
  }

  container_log_ext_error("container_operation_delete", gClientFaultLoggingEnabled, v9);
  container_error_free(v14[3]);
  v10 = v18[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __container_operation_delete_block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v4[0] = a1[6];
  result = container_operation_delete_array(v4, 1, a1[7], a1[8], (*(v2 + 8) + 24));
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t container_operation_delete_array(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void **a5)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v10 = _os_activity_create(&dword_1DF28A000, "container_operation_delete_array", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __container_operation_delete_array_block_invoke;
  v14[3] = &unk_1E86AE2E0;
  v14[8] = a2;
  v14[9] = a3;
  v14[4] = &v23;
  v14[5] = &v19;
  v14[6] = &v15;
  v14[7] = a1;
  os_activity_apply(v10, v14);
  os_release(v10);
  if (a4)
  {
    *a4 = v20[3];
  }

  v11 = v16[3];
  if (a5 && v11)
  {
    *a5 = container_error_create_with_message(*(v11 + 8), *v11, *(v11 + 16), *(v11 + 24), *(v11 + 32));
    v11 = v16[3];
  }

  container_log_ext_error("container_operation_delete_array", gClientFaultLoggingEnabled, v11);
  container_error_free(v16[3]);
  v12 = v24[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v12;
}

void __container_operation_delete_array_block_invoke(void *a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = *(a1[5] + 8);
  v6 = *(a1[6] + 8);
  v30 = 0;
  v31 = 1;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (v3)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    v29 = v7;
    xpc_dictionary_set_uint64(v7, "Command", 3uLL);
    v23 = v4;
    xpc_dictionary_set_uint64(v7, "Flags", v4);
    v8 = xpc_array_create(0, 0);
    v27 = v8;
    container_xpc_encode_container_array(v8, v2, v3);
    xpc_dictionary_set_value(v7, "ContainersArray", v8);
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v5;
      v22 = MEMORY[0x1E12D2400](v7);
      __s = v22;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      voucher_get_current_persona_originator_info();
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      voucher_get_current_persona_proximate_info();
      v59 = 0;
      memset(v58, 0, sizeof(v58));
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 2;
      current_persona = voucher_get_current_persona();
      if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
      {
        v20 = "<unknown>";
        v10 = "NOPERSONA";
      }

      else
      {
        if ((DWORD1(v53) - 2) > 4)
        {
          v10 = "<unknown>";
        }

        else
        {
          v10 = (&off_1E86AF498)[DWORD1(v53) - 2];
        }

        v20 = &v58[4];
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v14 = qword_1ED452B30;
      if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67111427;
        v33 = current_persona;
        v34 = 2082;
        v35 = v10;
        v36 = 2082;
        v37 = v20;
        v38 = 1024;
        v39 = 0;
        v40 = 1024;
        v41 = 0;
        v42 = 1024;
        v43 = 0;
        v44 = 1024;
        v45 = 0;
        v46 = 1024;
        v47 = geteuid();
        v48 = 1024;
        v49 = getuid();
        v50 = 2081;
        v51 = v22;
        _os_log_impl(&dword_1DF28A000, v14, OS_LOG_TYPE_DEFAULT, "Container delete; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, manifest = %{private}s", buf, 0x4Au);
      }

      if (v22)
      {
        free(v22);
        memset_s(&__s, 8uLL, 0, 8uLL);
      }

      v5 = v21;
    }

    for (i = 0; i != v3; ++i)
    {
      v16 = v2[i];
      if (!v16 || container_object_get_class(v16) - 1 >= 0xE)
      {
        v13 = container_error_create_with_message(3, 11, 0, 0, 0);
        v12 = 0;
        v11 = 0;
LABEL_29:
        v26 = v13;
        goto LABEL_30;
      }
    }

    v17 = container_disposition_for_array(v2, v3, &v25);
    v18 = container_xpc_send_sync_message(v17, (2 * (v23 & 1)), v7, 1, v25, 0, &v26);
    v12 = v18;
    v30 = v18;
    if (v18)
    {
      value = xpc_dictionary_get_value(v18, "ReplyContainersArray");
      v11 = container_xpc_decode_create_container_object_array(value, &v28, &v31);
      if (v11)
      {
        goto LABEL_10;
      }

      v13 = container_error_create_with_message(2, v31, 0, 0, 0);
      goto LABEL_29;
    }

    v11 = 0;
  }

  else
  {
    v11 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    v12 = 0;
    v7 = 0;
    v8 = 0;
  }

LABEL_10:
  v13 = v26;
LABEL_30:
  *(v5 + 24) = v28;
  if (v13)
  {
    *(v6 + 24) = container_error_create_with_message(*(v13 + 1), *v13, *(v13 + 2), v13[6], *(v13 + 4));
    v13 = v26;
  }

  container_error_free(v13);
  if (v8)
  {
    xpc_release(v8);
    memset_s(&v27, 8uLL, 0, 8uLL);
  }

  if (v7)
  {
    xpc_release(v7);
    memset_s(&v29, 8uLL, 0, 8uLL);
  }

  if (v12)
  {
    xpc_release(v12);
    memset_s(&v30, 8uLL, 0, 8uLL);
  }

  *(*(a1[4] + 8) + 24) = v11;
}

uint64_t container_operation_delete_reclaim_disk_space()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v0 = _os_activity_create(&dword_1DF28A000, "container_operation_delete_reclaim_disk_space", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __container_operation_delete_reclaim_disk_space_block_invoke;
  block[3] = &unk_1E86AE308;
  block[4] = &v4;
  os_activity_apply(v0, block);
  os_release(v0);
  container_log_ext_error("container_operation_delete_reclaim_disk_space", gClientFaultLoggingEnabled, v5[3]);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t __container_operation_delete_reclaim_disk_space_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  __s = v2;
  xpc_dictionary_set_uint64(v2, "Command", 4uLL);
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  voucher_get_current_persona_originator_info();
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  voucher_get_current_persona_proximate_info();
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 2;
  current_persona = voucher_get_current_persona();
  if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
  {
    v5 = "<unknown>";
    v4 = "NOPERSONA";
  }

  else
  {
    if ((DWORD1(v30) - 2) > 4)
    {
      v4 = "<unknown>";
    }

    else
    {
      v4 = (&off_1E86AF498)[DWORD1(v30) - 2];
    }

    v5 = &v35[4];
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v6 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67111170;
    v12 = current_persona;
    v13 = 2082;
    v14 = v4;
    v15 = 2082;
    v16 = v5;
    v17 = 1024;
    v18 = 0;
    v19 = 1024;
    v20 = 0;
    v21 = 1024;
    v22 = 0;
    v23 = 1024;
    v24 = 0;
    v25 = 1024;
    v26 = geteuid();
    v27 = 1024;
    v28 = getuid();
    _os_log_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_DEFAULT, "Wait for obliteration; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u", buf, 0x40u);
  }

  result = container_xpc_send_sync_message(2, 2, v2, 1, 0, 0, *(*(a1 + 32) + 8) + 24);
  v8 = result;
  v10 = result;
  if (v2)
  {
    xpc_release(v2);
    result = memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v8)
  {
    xpc_release(v8);
    return memset_s(&v10, 8uLL, 0, 8uLL);
  }

  return result;
}

uint64_t container_operation_complete_background_tasks(int a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = _os_activity_create(&dword_1DF28A000, "container_operation_complete_background_tasks", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __container_operation_complete_background_tasks_block_invoke;
  v5[3] = &unk_1E86AE330;
  v6 = a1;
  v5[4] = &v7;
  os_activity_apply(v2, v5);
  os_release(v2);
  container_log_ext_error("container_operation_complete_background_tasks", gClientFaultLoggingEnabled, v8[3]);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __container_operation_complete_background_tasks_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  __s = v2;
  xpc_dictionary_set_uint64(v2, "Command", 0x2EuLL);
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v3 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 67109120;
    v11 = v4;
    _os_log_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_DEFAULT, "Wait for background task completion; disposition = 0x%x", buf, 8u);
  }

  v5 = *(a1 + 40);
  if ((v5 & 0xFFFFFFFE) == 2)
  {
    v6 = container_xpc_send_sync_message(2, 5, v2, 1, 0, 0, *(*(a1 + 32) + 8) + 24);
    v8 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }

    xpc_release(v6);
    memset_s(&v8, 8uLL, 0, 8uLL);
    v5 = *(a1 + 40);
  }

  if ((v5 | 2) == 3)
  {
    v7 = container_xpc_send_sync_message(1, 5, v2, 1, 0, 0, *(*(a1 + 32) + 8) + 24);
    v8 = v7;
    if (v7)
    {
      xpc_release(v7);
      memset_s(&v8, 8uLL, 0, 8uLL);
    }
  }

LABEL_11:
  if (v2)
  {
    xpc_release(v2);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }
}

char *container_audit_token_copy_codesign_team_identifier(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return container_codesign_copy_cs_team_identifier(v1, v4);
}

uint64_t container_audit_token_copy_executable_name(audit_token_t *a1, char **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a1->val[5];
  bzero(buffer, 0x401uLL);
  if (proc_pidpath_audittoken(a1, buffer, 0x400u) <= 0)
  {
    v7 = *__error();
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v8 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = v4;
      v11 = 1024;
      v12 = v7;
      _os_log_error_impl(&dword_1DF28A000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch executable path from client for pid [%d]: %{darwin.errno}d", v10, 0xEu);
    }
  }

  else
  {
    v5 = rindex(buffer, 47);
    if (a2)
    {
      if (v5)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = buffer;
      }

      v7 = 0;
      *a2 = strndup(v6, 0x400uLL);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t container_audit_token_copy_executable_name_with_pid(int a1, char **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x401uLL);
  if (proc_pidpath(a1, buffer, 0x400u) <= 0)
  {
    v6 = *__error();
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109376;
      v9[1] = a1;
      v10 = 1024;
      v11 = v6;
      _os_log_error_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch executable path from client for pid [%d]: %{darwin.errno}d", v9, 0xEu);
    }
  }

  else
  {
    v4 = rindex(buffer, 47);
    if (a2)
    {
      if (v4)
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = buffer;
      }

      v6 = 0;
      *a2 = strndup(v5, 0x400uLL);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

BOOL container_audit_token_for_pid(int pid, _OWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  *task_info_out = 0u;
  v19 = 0u;
  tn = 0;
  v4 = MEMORY[0x1E69E9A60];
  if (task_name_for_pid(*MEMORY[0x1E69E9A60], pid, &tn))
  {
    v5 = task_name_for_pid(*v4, pid, &tn);
    if (v5)
    {
      v6 = v5;
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v7 = qword_1ED452B30;
      if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
      {
        v15 = mach_error_string(v6);
        *buf = 67109634;
        v21 = pid;
        v22 = 2082;
        v23 = v15;
        v24 = 1024;
        v25 = v6;
        _os_log_error_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_ERROR, "Unable to obtain a task name port right for pid %i: %{public}s (0x%x)", buf, 0x18u);
      }

      return 0;
    }
  }

  task_info_outCnt = 8;
  v9 = task_info(tn, 0xFu, task_info_out, &task_info_outCnt);
  v8 = v9 == 0;
  if (v9)
  {
    v10 = v9;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v11 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_ERROR))
    {
      v12 = mach_error_string(v10);
      *buf = 67109634;
      v21 = pid;
      v22 = 2082;
      v23 = v12;
      v24 = 1024;
      v25 = v10;
      _os_log_error_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_ERROR, "Unable to obtain a task info for pid %i: %{public}s (0x%x)", buf, 0x18u);
    }
  }

  else
  {
    v13 = v19;
    *a2 = *task_info_out;
    a2[1] = v13;
  }

  return v8;
}

BOOL container_audit_token_is_valid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return container_audit_token_copy_executable_name(&v3, 0) != 3;
}

__n128 container_seam_quarantine_set_common(uint64_t a1)
{
  v1 = *(a1 + 16);
  gCMQuarantineCustomSeamStore = *a1;
  unk_1ECE2FA28 = v1;
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  qword_1ECE2FA68 = *(a1 + 80);
  xmmword_1ECE2FA48 = v3;
  unk_1ECE2FA58 = v4;
  xmmword_1ECE2FA38 = result;
  gCMQuarantineSeam = &gCMQuarantineCustomSeamStore;
  return result;
}

void __container_xpc_create_connection_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v3 = qword_1ED452B30;
  if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEBUG))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = " interrupted";
    }

    else
    {
      v4 = &unk_1DF2BBE1A;
    }

    if (a2 == MEMORY[0x1E69E9E20])
    {
      v5 = " invalidation";
    }

    else
    {
      v5 = v4;
    }

    v6 = 136446210;
    v7 = v5;
    _os_log_debug_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_DEBUG, "received superfluous connection%{public}s event, ignoring", &v6, 0xCu);
  }
}

void container_xpc_invalidate_connection(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    if ((*(a1 + 25) & 1) == 0)
    {
      xpc_connection_cancel(*a1);
    }

    os_unfair_lock_unlock(&gSharedClientConnectionLock);
  }
}

__n128 container_seam_sandbox_set_common(uint64_t a1)
{
  gCMSandboxCustomSeamStore = *a1;
  result = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  xmmword_1ECE2FAA0 = *(a1 + 48);
  unk_1ECE2FAB0 = v3;
  xmmword_1ECE2FA80 = result;
  unk_1ECE2FA90 = v2;
  gCMSandboxSeam = &gCMSandboxCustomSeamStore;
  return result;
}

void *container_references_create()
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x103004031F9774FuLL);
  v0[1] = _os_activity_create(&dword_1DF28A000, "container_references_t", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 18) = -1;
  return v0;
}

void container_references_set_class(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_references_set_class_block_invoke;
    block[3] = &__block_descriptor_tmp_404;
    block[4] = a2;
    block[5] = "container_references_set_class";
    block[6] = a1;
    os_activity_apply(v2, block);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v6 = "container_references_set_class";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }
  }
}

void __container_references_set_class_block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((a1[4] - 1) >= 0xE)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      v7 = a1[5];
      v8 = 136315138;
      v9 = v7;
      _os_log_fault_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: invalid container class", &v8, 0xCu);
    }

    v5 = a1[6];
    v6 = container_error_create_with_message(3, 20, 0, 0, 0);
    _container_references_replace_error(v5, v6);
  }

  else
  {
    _container_references_log_if_error(a1[6], a1[5]);
    v2 = a1[4];
    v3 = a1[6];
    *(v3 + 16) |= 1uLL;
    *(v3 + 24) = v2;
  }
}

void *_container_references_replace_error(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  if (v4)
  {
    container_error_reinitialize(v4, v5, *a2, *(a2 + 16), *(a2 + 24), *(a2 + 32));
    result = *a1;
  }

  else
  {
    result = container_error_create_with_message(v5, *a2, *(a2 + 16), *(a2 + 24), *(a2 + 32));
    *a1 = result;
  }

  result[6] = a1;
  return result;
}

void _container_references_log_if_error(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v4 = container_error_copy_unlocalized_description(v2);
      __s = v4;
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = qword_1ED452B38;
      if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v8 = a2;
        v9 = 2080;
        v10 = v4;
        _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "WARNING: Calling %s with a references that has a previous error: %s", buf, 0x16u);
        if (!v4)
        {
          return;
        }
      }

      else if (!v4)
      {
        return;
      }

      free(v4);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }
}

void container_references_set_uid(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_references_set_uid_block_invoke;
    block[3] = &__block_descriptor_tmp_1_409;
    block[4] = a1;
    block[5] = "container_references_set_uid";
    v5 = a2;
    os_activity_apply(v2, block);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v7 = "container_references_set_uid";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }
  }
}

void __container_references_set_uid_block_invoke(uint64_t a1)
{
  _container_references_log_if_error(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  *(v2 + 32) = *(a1 + 48);
  *(v2 + 16) |= 2uLL;
}

void container_references_set_persona_unique_string(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_references_set_persona_unique_string_block_invoke;
    block[3] = &__block_descriptor_tmp_2_411;
    block[4] = a2;
    block[5] = "container_references_set_persona_unique_string";
    block[6] = a1;
    os_activity_apply(v2, block);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v6 = "container_references_set_persona_unique_string";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }
  }
}

char *__container_references_set_persona_unique_string_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    _container_references_log_if_error(*(a1 + 48), "container_references_set_persona_unique_string_block_invoke");
    v2 = *(a1 + 48);
    v3 = *(v2 + 40);
    if (v3)
    {
      free(v3);
      memset_s((*(a1 + 48) + 40), 8uLL, 0, 8uLL);
      v2 = *(a1 + 48);
    }

    result = strndup(*(a1 + 32), 0x400uLL);
    *(v2 + 40) = result;
    *(*(a1 + 48) + 16) |= 4uLL;
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v5 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 40);
      v9 = 136315138;
      v10 = v8;
      _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: persona_unique_string parameter is NULL", &v9, 0xCu);
    }

    v6 = *(a1 + 48);
    v7 = container_error_create_with_message(3, 38, 0, 0, 0);
    return _container_references_replace_error(v6, v7);
  }

  return result;
}

void container_references_operation_set_flags(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_references_operation_set_flags_block_invoke;
    block[3] = &__block_descriptor_tmp_3_414;
    block[4] = a1;
    block[5] = "container_references_operation_set_flags";
    block[6] = a2;
    os_activity_apply(v2, block);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v6 = "container_references_operation_set_flags";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }
  }
}

void *container_references_free(void *result)
{
  __s = result;
  if (result)
  {
    v1 = result;
    v3 = result + 5;
    v2 = result[5];
    if (v2)
    {
      free(v2);
      memset_s(v3, 8uLL, 0, 8uLL);
    }

    v4 = *v1;
    if (*v1)
    {
      v4[6] = 0;
      container_error_free(v4);
      *v1 = 0;
    }

    v5 = v1[8];
    if (v5)
    {
      container_free_client(v5);
      v1[8] = 0;
    }

    v6 = v1[1];
    if (v6)
    {
      os_release(v6);
    }

    free(v1);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

uint64_t container_references_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    v5 = *(a1 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __container_references_add_block_invoke;
    v9[3] = &unk_1E86AE458;
    v9[4] = &v10;
    v9[5] = a1;
    v9[6] = "container_references_add";
    v9[7] = a2;
    v9[8] = a3;
    v9[9] = a4;
    os_activity_apply(v5, v9);
    container_log_ext_error("container_references_add", gClientFaultLoggingEnabled, *a1);
    v6 = v11[3];
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v15 = "container_references_add";
      _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }

    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

void *__container_references_add_block_invoke(uint64_t a1)
{
  _container_references_log_if_error(*(a1 + 40), *(a1 + 48));
  result = _container_add_remove(*(a1 + 40), 0x30uLL, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *_container_add_remove(uint64_t a1, uint64_t a2, xpc_object_t a3, void *a4, void *a5, uint64_t a6)
{
  v108 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v72 = 0;
  v73 = 0;
  value = 0;
  objects = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v74 = v12;
  xpc_dictionary_set_uint64(v12, "Command", a2);
  xpc_dictionary_set_uint64(v12, "Flags", *(a1 + 48));
  xpc_dictionary_set_uint64(v12, "PrivateFlags", *(a1 + 56));
  v13 = *(a1 + 64);
  if (v13)
  {
    container_xpc_encode_client_onto_message(v12, v13);
  }

  xpc_dictionary_set_uint64(v12, "Explicit", *(a1 + 16));
  if ((*(a1 + 16) & 1) == 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v14 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v96[0] = a6;
      _os_log_fault_impl(&dword_1DF28A000, v14, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container_query_set_class() is required", buf, 0xCu);
    }

    v15 = container_error_create_with_message(3, 38, 0, 0, 0);
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_30:
    v27 = 0;
    goto LABEL_31;
  }

  xpc_dictionary_set_uint64(v12, "ContainerClass", *(a1 + 24));
  v20 = MEMORY[0x1E69E9F10];
  v21 = MEMORY[0x1E69E9E50];
  if (a3)
  {
    objects = a3;
    v22 = MEMORY[0x1E12D2570](a3);
    v19 = v22 == v20;
    if (v22 == v20)
    {
      a3 = xpc_array_create(&objects, 1uLL);
      objects = a3;
    }

    if (MEMORY[0x1E12D2570](a3) != v21)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v23 = container_log_handle_for_category_logHandles[0];
      if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v96[0] = a6;
        _os_log_fault_impl(&dword_1DF28A000, v23, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: owner_identifiers is not an array or string", buf, 0xCu);
      }

      v15 = container_error_create_with_message(3, 38, 0, 0, 0);
      v16 = v15;
      v17 = 0;
      v18 = 0;
      goto LABEL_30;
    }

    xpc_dictionary_set_value(v12, "OwnerIdentifiersArray", objects);
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = 0;
    if (!a4)
    {
LABEL_22:
      v18 = 0;
      goto LABEL_34;
    }
  }

  value = a4;
  v24 = MEMORY[0x1E12D2570](a4) == v20;
  v18 = v24;
  if (v24)
  {
    v25 = xpc_array_create(&value, 1uLL);
    value = v25;
  }

  else
  {
    v25 = value;
  }

  if (MEMORY[0x1E12D2570](v25) != v21)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v26 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v96[0] = a6;
      _os_log_fault_impl(&dword_1DF28A000, v26, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: group_identifiers is not an array or string", buf, 0xCu);
    }

    v15 = container_error_create_with_message(3, 38, 0, 0, 0);
    v16 = v15;
    v17 = 0;
    goto LABEL_30;
  }

  xpc_dictionary_set_value(v12, "GroupIdentifiers", value);
LABEL_34:
  v29 = 0;
  v30 = *(a1 + 24);
  if (v30 <= 0xE && ((1 << v30) & 0x4ED4) != 0)
  {
    if ((*(a1 + 16) & 2) != 0)
    {
      xpc_dictionary_set_uint64(v12, "UID", *(a1 + 32));
      v29 = *(a1 + 32);
    }

    else
    {
      v29 = 0;
    }
  }

  if ((*(a1 + 16) & 4) != 0)
  {
    v31 = *(a1 + 40);
    if (v31)
    {
      xpc_dictionary_set_string(v12, "PersonaUniqueString", v31);
    }
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  if (os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
  {
    v32 = MEMORY[0x1E12D2400](v12);
    __s = v32;
    v33 = *(a1 + 24);
    if ((v33 & 0xFFFFFFFFFFFFFFFELL) == 0xC || v33 <= 8 && ((1 << v33) & 0x12A) != 0)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v34 = qword_1ED452B30;
      if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v35 = geteuid();
      v36 = getuid();
      *buf = 67109634;
      LODWORD(v96[0]) = v35;
      WORD2(v96[0]) = 1024;
      *(v96 + 6) = v36;
      WORD1(v96[1]) = 2080;
      *(&v96[1] + 4) = v32;
      v37 = "References query; euid = %u, uid = %u, query = %s";
      v38 = buf;
      v39 = v34;
      v40 = 24;
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      current_persona_originator_info = voucher_get_current_persona_originator_info();
      v64 = DWORD2(v105);
      v66 = current_persona_originator_info;
      v62 = DWORD1(v106);
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      current_persona_proximate_info = voucher_get_current_persona_proximate_info();
      v59 = DWORD2(v102);
      v60 = current_persona_proximate_info;
      v58 = DWORD1(v103);
      v101 = 0;
      memset(v100, 0, sizeof(v100));
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      memset(v96, 0, sizeof(v96));
      *buf = 2;
      current_persona = voucher_get_current_persona();
      if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
      {
        v56 = "<unknown>";
        v57 = "NOPERSONA";
      }

      else
      {
        if ((HIDWORD(v96[0]) - 2) > 4)
        {
          v52 = "<unknown>";
        }

        else
        {
          v52 = (&off_1E86AF498)[HIDWORD(v96[0]) - 2];
        }

        v57 = v52;
        v56 = &v100[4];
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v53 = qword_1ED452B38;
      if (!os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v54 = v64 & ~(v66 >> 31);
      v63 = v62 & ~(v66 >> 31);
      v65 = v59 & ~(v60 >> 31);
      v67 = v58 & ~(v60 >> 31);
      v61 = geteuid();
      v55 = getuid();
      v76[0] = 67111426;
      v76[1] = current_persona;
      v77 = 2082;
      v78 = v57;
      v79 = 2082;
      v80 = v56;
      v81 = 1024;
      v82 = v54;
      v83 = 1024;
      v84 = v63;
      v85 = 1024;
      v86 = v65;
      v87 = 1024;
      v88 = v67;
      v89 = 1024;
      v90 = v61;
      v91 = 1024;
      v92 = v55;
      v93 = 2080;
      v94 = v32;
      v37 = "References query; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, query = %s";
      v38 = v76;
      v39 = v53;
      v40 = 74;
    }

    _os_log_impl(&dword_1DF28A000, v39, OS_LOG_TYPE_DEFAULT, v37, v38, v40);
LABEL_53:
    if (v32)
    {
      free(v32);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }
  }

  v41 = *(a1 + 24);
  if ((v41 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v42 = 1;
  }

  else
  {
    v43 = v41 - 1;
    if (v43 > 0xD)
    {
      v42 = 0;
    }

    else
    {
      v42 = dword_1DF2B94B0[v43];
    }
  }

  v44 = container_xpc_send_sync_message(v42, 0, v12, 1, v29, a1 + 72, &v73);
  v17 = v44;
  v75 = v44;
  if (!v44)
  {
    v27 = 0;
LABEL_64:
    v16 = v73;
    if (v73)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

  v45 = xpc_dictionary_get_value(v44, "ReplyContainersArray");
  v68 = 1;
  v27 = container_xpc_decode_create_container_object_array(v45, &v72, &v68);
  if (v27)
  {
    goto LABEL_64;
  }

  v15 = container_error_create_with_message(2, v68, 0, 0, 0);
  v16 = v15;
LABEL_31:
  v73 = v15;
  if (v16)
  {
LABEL_32:
    _container_references_replace_error(a1, v16);
    v28 = v73;
    goto LABEL_66;
  }

LABEL_65:
  v28 = 0;
LABEL_66:
  container_error_free(v28);
  if (a5)
  {
    *a5 = v72;
  }

  if (v12)
  {
    xpc_release(v12);
    memset_s(&v74, 8uLL, 0, 8uLL);
  }

  if (v17)
  {
    xpc_release(v17);
    memset_s(&v75, 8uLL, 0, 8uLL);
  }

  if (objects)
  {
    v46 = v19;
  }

  else
  {
    v46 = 0;
  }

  if (v46)
  {
    xpc_release(objects);
    memset_s(&objects, 8uLL, 0, 8uLL);
  }

  if (value)
  {
    v47 = v18;
  }

  else
  {
    v47 = 0;
  }

  if (v47)
  {
    xpc_release(value);
    memset_s(&value, 8uLL, 0, 8uLL);
  }

  return v27;
}

uint64_t container_references_remove(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    v5 = *(a1 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __container_references_remove_block_invoke;
    v9[3] = &unk_1E86AE480;
    v9[4] = &v10;
    v9[5] = a1;
    v9[6] = "container_references_remove";
    v9[7] = a2;
    v9[8] = a3;
    v9[9] = a4;
    os_activity_apply(v5, v9);
    container_log_ext_error("container_references_remove", gClientFaultLoggingEnabled, *a1);
    v6 = v11[3];
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v7 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v15 = "container_references_remove";
      _os_log_fault_impl(&dword_1DF28A000, v7, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }

    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

void *__container_references_remove_block_invoke(uint64_t a1)
{
  _container_references_log_if_error(*(a1 + 40), *(a1 + 48));
  result = _container_add_remove(*(a1 + 40), 0x31uLL, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t container_references_iterate_by_owner_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (a1)
  {
    v4 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_references_iterate_by_owner_sync_block_invoke;
    block[3] = &unk_1E86AE4A8;
    block[6] = a1;
    block[7] = "container_references_iterate_by_owner_sync";
    block[8] = a2;
    block[4] = a3;
    block[5] = &v9;
    os_activity_apply(v4, block);
    container_log_ext_error("container_references_iterate_by_owner_sync", gClientFaultLoggingEnabled, *a1);
    v5 = *(v10 + 24);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "container_references_iterate_by_owner_sync";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }

    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v5 & 1;
}

uint64_t __container_references_iterate_by_owner_sync_block_invoke(uint64_t a1)
{
  _container_references_log_if_error(*(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *(v2 + 56) = 1;
  result = _container_references_query_execute(v2, *(a1 + 64), 0, v3, *(a1 + 32));
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t _container_references_query_execute(uint64_t a1, xpc_object_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v119 = *MEMORY[0x1E69E9840];
  v87 = 0;
  objects = 0;
  v85 = 0;
  value = 0;
  if (!a1)
  {
    return 0;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v86 = v10;
  xpc_dictionary_set_uint64(v10, "Command", 0x2FuLL);
  xpc_dictionary_set_uint64(v10, "Flags", *(a1 + 48));
  xpc_dictionary_set_uint64(v10, "PrivateFlags", *(a1 + 56));
  v11 = *(a1 + 64);
  if (v11)
  {
    container_xpc_encode_client_onto_message(v10, v11);
  }

  xpc_dictionary_set_uint64(v10, "Explicit", *(a1 + 16));
  if ((*(a1 + 16) & 1) == 0)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v12 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = a4;
      _os_log_fault_impl(&dword_1DF28A000, v12, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: container_query_set_class() is required", buf, 0xCu);
    }

    v13 = container_error_create_with_message(3, 38, 0, 0, 0);
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  xpc_dictionary_set_uint64(v10, "ContainerClass", *(a1 + 24));
  v19 = MEMORY[0x1E69E9F10];
  v20 = MEMORY[0x1E69E9E50];
  if (!a2)
  {
    v17 = 0;
    goto LABEL_24;
  }

  objects = a2;
  v21 = MEMORY[0x1E12D2570](a2);
  v17 = v21 == v19;
  if (v21 == v19)
  {
    a2 = xpc_array_create(&objects, 1uLL);
    objects = a2;
  }

  if (MEMORY[0x1E12D2570](a2) == v20)
  {
    xpc_dictionary_set_value(v10, "OwnerIdentifiersArray", objects);
LABEL_24:
    v81 = a5;
    if (a3)
    {
      value = a3;
      v23 = MEMORY[0x1E12D2570](a3);
      v16 = v23 == v19;
      if (v23 == v19)
      {
        v24 = xpc_array_create(&value, 1uLL);
        value = v24;
      }

      else
      {
        v24 = value;
      }

      if (MEMORY[0x1E12D2570](v24) != v20)
      {
        v25 = v16;
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v26 = container_log_handle_for_category_logHandles[0];
        if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = a4;
          _os_log_fault_impl(&dword_1DF28A000, v26, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: group_identifiers is not an array or string", buf, 0xCu);
        }

        v14 = container_error_create_with_message(3, 38, 0, 0, 0);
        v15 = 0;
        v18 = 0;
        v85 = v14;
        v16 = v25;
        if (!v14)
        {
          goto LABEL_35;
        }

LABEL_76:
        _container_references_replace_error(a1, v14);
        v18 = 0;
        v27 = v85;
        goto LABEL_77;
      }

      xpc_dictionary_set_value(v10, "GroupIdentifiers", value);
    }

    else
    {
      v16 = 0;
    }

    v28 = 0;
    v29 = *(a1 + 24);
    if (v29 <= 0xE && ((1 << v29) & 0x4ED4) != 0)
    {
      if ((*(a1 + 16) & 2) != 0)
      {
        xpc_dictionary_set_uint64(v10, "UID", *(a1 + 32));
        v28 = *(a1 + 32);
      }

      else
      {
        v28 = 0;
      }
    }

    if ((*(a1 + 16) & 4) != 0)
    {
      v30 = *(a1 + 40);
      if (v30)
      {
        xpc_dictionary_set_string(v10, "PersonaUniqueString", v30);
      }
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    if (!os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
    {
LABEL_58:
      v40 = *(a1 + 24);
      if ((v40 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
      {
        v41 = 1;
      }

      else
      {
        v42 = v40 - 1;
        if (v42 > 0xD)
        {
          v41 = 0;
        }

        else
        {
          v41 = dword_1DF2B94B0[v42];
        }
      }

      v43 = container_xpc_send_sync_message(v41, 0, v10, 1, v28, a1 + 72, &v85);
      v15 = v43;
      v87 = v43;
      if (v43)
      {
        object = xpc_retain(v43);
        *buf = object;
        array = xpc_dictionary_get_array(v15, "ReplyOwnerIdentifiers");
        v79 = v16;
        if (array && (v45 = array, (v46 = xpc_dictionary_get_array(v15, "ReplyGroupIdentifiers")) != 0) && (v47 = v46, length = 0, (data = xpc_dictionary_get_data(v15, "ReplyFacts", &length)) != 0))
        {
          if (length >= 0x10)
          {
            v53 = (length >> 4) - 1;
            v54 = (data + 8);
            do
            {
              string = xpc_array_get_string(v45, *(v54 - 1));
              v56 = xpc_array_get_string(v47, *v54);
              v57 = (*(v81 + 16))(v81, string, v56);
              v18 = v57;
              v49 = 0;
              v59 = v53-- != 0;
              if (!v57)
              {
                break;
              }

              v54 += 2;
            }

            while (v59);
          }

          else
          {
            v49 = 0;
            v18 = 1;
          }
        }

        else
        {
          v49 = container_error_create_with_message(2, 53, 0, 0, 0);
          v18 = 0;
        }

        if (object)
        {
          xpc_release(object);
          memset_s(buf, 8uLL, 0, 8uLL);
        }

        v16 = v79;
        if ((v18 & 1) == 0)
        {
          v85 = v49;
        }
      }

      else
      {
        v18 = 0;
      }

      v14 = v85;
      if (!v85)
      {
        goto LABEL_35;
      }

      goto LABEL_76;
    }

    v31 = MEMORY[0x1E12D2400](v10);
    __s = v31;
    v32 = *(a1 + 24);
    if ((v32 & 0xFFFFFFFFFFFFFFFELL) == 0xC || v32 <= 8 && ((1 << v32) & 0x12A) != 0)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B30;
      if (!os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v34 = geteuid();
      v35 = getuid();
      *buf = 67109634;
      *&buf[4] = v34;
      *&buf[8] = 1024;
      *&buf[10] = v35;
      *&buf[14] = 2080;
      *&buf[16] = v31;
      v36 = "References query; euid = %u, uid = %u, query = %s";
      p_length = buf;
      v38 = v33;
      v39 = 24;
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      current_persona_originator_info = voucher_get_current_persona_originator_info();
      v76 = DWORD1(v117);
      objecta = DWORD2(v116);
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      current_persona_proximate_info = voucher_get_current_persona_proximate_info();
      v74 = DWORD2(v113);
      v75 = current_persona_proximate_info;
      v73 = DWORD1(v114);
      v112 = 0;
      memset(v111, 0, sizeof(v111));
      v110 = 0u;
      v109 = 0u;
      v108 = 0u;
      memset(&buf[4], 0, 32);
      *buf = 2;
      current_persona = voucher_get_current_persona();
      if (current_persona == -1 || (kpersona_info() & 0x80000000) != 0)
      {
        v71 = "<unknown>";
        v72 = "NOPERSONA";
      }

      else
      {
        if ((*&buf[8] - 2) > 4)
        {
          v63 = "<unknown>";
        }

        else
        {
          v63 = (&off_1E86AF498)[*&buf[8] - 2];
        }

        v72 = v63;
        v71 = &v111[4];
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v64 = qword_1ED452B38;
      if (!os_log_type_enabled(qword_1ED452B38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v65 = current_persona_originator_info;
      v66 = v16;
      v67 = objecta & ~(v65 >> 31);
      v80 = v17;
      v68 = v76 & ~(v65 >> 31);
      v69 = geteuid();
      v70 = getuid();
      LODWORD(length) = 67111426;
      HIDWORD(length) = current_persona;
      v89 = 2082;
      v90 = v72;
      v91 = 2082;
      v92 = v71;
      v93 = 1024;
      v94 = v67;
      v16 = v66;
      v95 = 1024;
      v96 = v68;
      v17 = v80;
      v97 = 1024;
      v98 = v74 & ~(v75 >> 31);
      v99 = 1024;
      v100 = v73 & ~(v75 >> 31);
      v101 = 1024;
      v102 = v69;
      v103 = 1024;
      v104 = v70;
      v105 = 2080;
      v106 = v31;
      v36 = "References query; personaid = %u, type = %{public}s, name = %{public}s, origin [pid = %d, personaid = %u], proximate [pid = %d, personaid = %u], euid = %u, uid = %u, query = %s";
      p_length = &length;
      v38 = v64;
      v39 = 74;
    }

    _os_log_impl(&dword_1DF28A000, v38, OS_LOG_TYPE_DEFAULT, v36, p_length, v39);
LABEL_56:
    if (v31)
    {
      free(v31);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

    goto LABEL_58;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v22 = container_log_handle_for_category_logHandles[0];
  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = a4;
    _os_log_fault_impl(&dword_1DF28A000, v22, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: owner_identifiers is not an array or string", buf, 0xCu);
  }

  v13 = container_error_create_with_message(3, 38, 0, 0, 0);
  v14 = v13;
  v15 = 0;
  v16 = 0;
LABEL_20:
  v18 = 0;
  v85 = v13;
  if (v14)
  {
    goto LABEL_76;
  }

LABEL_35:
  v27 = 0;
LABEL_77:
  container_error_free(v27);
  if (v10)
  {
    xpc_release(v10);
    memset_s(&v86, 8uLL, 0, 8uLL);
  }

  if (v15)
  {
    xpc_release(v15);
    memset_s(&v87, 8uLL, 0, 8uLL);
  }

  if (objects)
  {
    v50 = v17;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    xpc_release(objects);
    memset_s(&objects, 8uLL, 0, 8uLL);
  }

  if (value)
  {
    v51 = v16;
  }

  else
  {
    v51 = 0;
  }

  if (v51)
  {
    xpc_release(value);
    memset_s(&value, 8uLL, 0, 8uLL);
  }

  return v18;
}

uint64_t container_references_iterate_by_group_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (a1)
  {
    v4 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __container_references_iterate_by_group_sync_block_invoke;
    block[3] = &unk_1E86AE4D0;
    block[6] = a1;
    block[7] = "container_references_iterate_by_group_sync";
    block[8] = a2;
    block[4] = a3;
    block[5] = &v9;
    os_activity_apply(v4, block);
    container_log_ext_error("container_references_iterate_by_group_sync", gClientFaultLoggingEnabled, *a1);
    v5 = *(v10 + 24);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v6 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "container_references_iterate_by_group_sync";
      _os_log_fault_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: references parameter is NULL", buf, 0xCu);
    }

    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v5 & 1;
}

uint64_t __container_references_iterate_by_group_sync_block_invoke(uint64_t a1)
{
  _container_references_log_if_error(*(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *(v2 + 56) = *(v2 + 56) & 0xFFFFFFFFFFFFFFFCLL | 2;
  result = _container_references_query_execute(v2, 0, *(a1 + 64), v3, *(a1 + 32));
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t ___container_xpc_process_warnings_in_reply_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = container_xpc_decode_error(a3, 1);
  container_log_ext_error("WARNING", gClientFaultLoggingEnabled, v3);
  container_error_free(v3);
  return 1;
}

void ___container_xpc_default_sender_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  container_xpc_release(v2);
}

uint64_t container_xpc_send_sync_message_with_object(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v9 = 0;
  v7 = container_disposition(a1, &v9);
  return container_xpc_send_sync_message(v7, 0, a2, a3, v9, 0, a4);
}

uint64_t container_xpc_set_client_context_during_block(void *a1, uint64_t a2)
{
  if (_container_xpc_pthread_key_for_client_context_onceToken != -1)
  {
    dispatch_once(&_container_xpc_pthread_key_for_client_context_onceToken, &__block_literal_global_15);
  }

  v4 = _container_xpc_pthread_key_for_client_context_key;
  if (!_container_xpc_pthread_key_for_client_context_key)
  {
    return 147;
  }

  pthread_setspecific(_container_xpc_pthread_key_for_client_context_key, a1);
  (*(a2 + 16))(a2);
  pthread_setspecific(v4, 0);
  return 1;
}

void ___container_xpc_pthread_key_for_client_context_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = pthread_key_create(&_container_xpc_pthread_key_for_client_context_key, 0);
  if (v0)
  {
    v1 = v0;
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v2 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_FAULT))
    {
      v3[0] = 67109120;
      v3[1] = v1;
      _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "Failed to create pthread key. container_perform_with_client_context() cannot continue; errno = %{darwin.errno}d", v3, 8u);
    }
  }
}

void container_xpc_set_outgoing_message_postprocess_block(const void *a1)
{
  if (a1)
  {
    v1 = _Block_copy(a1);
  }

  else
  {
    v1 = 0;
  }

  if (_outgoingPostprocessor)
  {
    _Block_release(_outgoingPostprocessor);
  }

  _outgoingPostprocessor = v1;
}

void container_xpc_set_incoming_reply_preprocess_block(const void *a1)
{
  if (a1)
  {
    v1 = _Block_copy(a1);
  }

  else
  {
    v1 = 0;
  }

  if (_incomingPreprocessor)
  {
    _Block_release(_incomingPreprocessor);
  }

  _incomingPreprocessor = v1;
}

void container_xpc_set_outgoing_message_send_block(const void *a1)
{
  v1 = &__block_literal_global_464;
  if (a1 && a1 != &__block_literal_global_464)
  {
    v1 = _Block_copy(a1);
  }

  if (_outgoingSender != &__block_literal_global_464)
  {
    _Block_release(_outgoingSender);
  }

  _outgoingSender = v1;
}

__n128 container_seam_notify_set_common(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  qword_1ECE2FB00 = *(a1 + 48);
  xmmword_1ECE2FAE0 = v2;
  unk_1ECE2FAF0 = v3;
  gCMNotifyCustomSeamStore = result;
  gCMNotifySeam = &gCMNotifyCustomSeamStore;
  return result;
}

xpc_object_t container_entitlements_copy_container_identifiers(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = xpc_array_create(0, 0);
  if (!a4)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v13 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "container_entitlements_copy_container_identifiers";
      v10 = "%s: SPI MISUSE: entitlement_read_handler block is required";
      v11 = v13;
      v12 = 12;
      goto LABEL_12;
    }

    return v8;
  }

  if (a3)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v9 = container_log_handle_for_category_logHandles[0];
    if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "container_entitlements_copy_container_identifiers";
      v26 = 2048;
      v27 = a3;
      v10 = "%s: SPI MISUSE: Invalid flags specified: 0x%08llx";
LABEL_7:
      v11 = v9;
      v12 = 22;
LABEL_12:
      _os_log_fault_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_FAULT, v10, buf, v12);
      return v8;
    }

    return v8;
  }

  if (a2 <= 9)
  {
    if ((a2 - 1) >= 2 && a2 != 4)
    {
      if (a2 == 7)
      {
        v14 = (*(a4 + 16))(a4, "com.apple.security.application-groups");
        *buf = v14;
        if (v14)
        {
          v15 = v14;
          _container_entitlements_append_strings_to_array(v8, v14);
          xpc_release(v15);
          memset_s(buf, 8uLL, 0, 8uLL);
        }

        v16 = (*(a4 + 16))(a4, "com.apple.private.security.restricted-application-groups");
        *buf = v16;
        if (!v16)
        {
          return v8;
        }

        _container_entitlements_append_strings_to_array(v8, v16);
        v17 = *buf;
        if (!*buf)
        {
          return v8;
        }

LABEL_30:
        xpc_release(v17);
        memset_s(buf, 8uLL, 0, 8uLL);
        return v8;
      }

      goto LABEL_40;
    }

    goto LABEL_28;
  }

  if (a2 <= 12)
  {
    if (a2 == 10)
    {
      v18 = (*(a4 + 16))(a4, "com.apple.private.security.daemon-container");
    }

    else
    {
      if (a2 != 12)
      {
        goto LABEL_40;
      }

      v18 = (*(a4 + 16))(a4, "com.apple.security.system-container");
    }

    *buf = v18;
    if (!v18)
    {
      return v8;
    }

    v19 = v18;
    if (xpc_BOOL_get_value(v18))
    {
      v21 = xpc_string_create(a1);
      __s = v21;
      xpc_array_append_value(v8, v21);
      if (v21)
      {
        xpc_release(v21);
        memset_s(&__s, 8uLL, 0, 8uLL);
      }
    }

LABEL_29:
    v17 = v19;
    goto LABEL_30;
  }

  if (a2 == 13)
  {
    v22 = (*(a4 + 16))(a4, "com.apple.security.system-groups");
    *buf = v22;
    if (!v22)
    {
      v22 = (*(a4 + 16))(a4, "com.apple.security.system-group-containers");
      *buf = v22;
      if (!v22)
      {
        return v8;
      }
    }

    v23 = v22;
    _container_entitlements_append_strings_to_array(v8, v22);
    v17 = v23;
    goto LABEL_30;
  }

  if (a2 == 14)
  {
LABEL_28:
    v19 = xpc_string_create(a1);
    *buf = v19;
    xpc_array_append_value(v8, v19);
    if (!v19)
    {
      return v8;
    }

    goto LABEL_29;
  }

LABEL_40:
  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v9 = container_log_handle_for_category_logHandles[0];
  if (os_log_type_enabled(container_log_handle_for_category_logHandles[0], OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    *&buf[4] = "container_entitlements_copy_container_identifiers";
    v26 = 2048;
    v27 = a2;
    v10 = "%s: SPI MISUSE: Provided container class is not a valid container class: %llu";
    goto LABEL_7;
  }

  return v8;
}

size_t _container_entitlements_append_strings_to_array(void *a1, void *a2)
{
  result = MEMORY[0x1E12D2570](a2);
  if (result == MEMORY[0x1E69E9E50])
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E9F10];
    while (1)
    {
      result = xpc_array_get_count(a2);
      if (v5 >= result)
      {
        break;
      }

      value = xpc_array_get_value(a2, v5);
      if (MEMORY[0x1E12D2570]() == v6)
      {
        xpc_array_append_value(a1, value);
      }

      ++v5;
    }
  }

  return result;
}

uint64_t _container_init()
{
  v8 = *MEMORY[0x1E69E9840];
  _os_feature_enabled_impl();
  bzero(__value, 0x410uLL);
  result = sandbox_get_container_expected();
  if (result)
  {
    v1 = result;
    v5 = 0;
    memset(v6, 0, sizeof(v6));
    v2 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v7[0] = 67109120;
    v7[1] = v1;
    _os_log_send_and_compose_impl(v3, &v5, v6, 80, &dword_1DF28A000, v2, 16, "_container_init(): sandbox_get_container_expected() failed: %d", v7);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t *_container_traverse_state_deinit(uint64_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      *a1 = *v2;
      --*(a1 + 1051);
      v4 = v2[1];
      if (v4)
      {
        *v4 = a1[1];
        a1[1] = v4;
      }

      if ((v2[3] & 0x80000000) == 0)
      {
        (*(gCMFSSeam + 19))();
        *(v2 + 6) = -1;
        v3 = *a1;
      }

      *v2 = a1[2];
      a1[2] = v2;
      v2 = v3;
    }

    while (v3);
  }

  while (1)
  {
    v5 = a1[1];
    if (!v5)
    {
      break;
    }

    a1[1] = *v5;
    __s = v5;
    free(v5);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  while (1)
  {
    result = a1[2];
    if (!result)
    {
      break;
    }

    a1[2] = *result;
    __s = result;
    free(result);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

void *_container_traverse_continuation_pop(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    *a1 = *result;
    --*(a1 + 1051);
  }

  return result;
}

uint64_t _container_traverse_continuation_free(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *v4 = *(a1 + 8);
    *(a1 + 8) = v4;
  }

  result = *(a2 + 24);
  if ((result & 0x80000000) == 0)
  {
    result = (*(gCMFSSeam + 19))();
    *(a2 + 24) = -1;
  }

  *a2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return result;
}

void *_container_traverse_continuation_create(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = *v2;
    __s = v2;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200406C4767B9uLL);
    __s = v2;
    if (!v2)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v5 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_ERROR, "Failed to allocate a continuation!", buf, 2u);
      }

      return 0;
    }
  }

  attr_buf = _container_traverse_get_attr_buf(a1);
  v2[1] = attr_buf;
  if (!attr_buf)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v4 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1DF28A000, v4, OS_LOG_TYPE_ERROR, "Failed to allocate an attribute buffer!", v7, 2u);
    }

    free(v2);
    memset_s(&__s, 8uLL, 0, 8uLL);
    return 0;
  }

  v2[2] = 0;
  v2[3] = 0xFFFFFFFFLL;
  *v2 = *a1;
  *a1 = v2;
  ++*(a1 + 1051);
  return v2;
}

void *_container_traverse_get_attr_buf(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    *(a1 + 8) = *v1;
    return v1;
  }

  v3 = *(a1 + 1050);
  if (v3 >= 0x10)
  {
    v4 = *a1;
    if (*a1 && v4[1])
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4 && v4[1]);
      v1 = v5[1];
      v5[1] = 0;
      *(v5 + 7) = 0;
      *(v5 + 5) = 0;
      if ((v5[3] & 0x80000000) == 0)
      {
        (*(gCMFSSeam + 19))();
        *(v5 + 6) = -1;
      }
    }

    else
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v6 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1DF28A000, v6, OS_LOG_TYPE_ERROR, "Failed to find a candidate buffer to scavenge!", v7, 2u);
      }

      return 0;
    }

    return v1;
  }

  *(a1 + 1050) = v3 + 1;

  return malloc_type_malloc(0x4000uLL, 0x39CE2279uLL);
}

uint64_t _container_traverse_continuation_push(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = a2;
  ++*(result + 1051);
  return result;
}

BOOL _container_traverse_path_push(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 1048);
  v4 = a3 + v3 + 1;
  if (v4 <= 0x3FF)
  {
    v6 = a1 + 24;
    *(a1 + 24 + v3) = 47;
    memcpy((*(a1 + 1048) + a1 + 24 + 1), a2, a3);
    *(a1 + 1048) = v4;
    *(v6 + v4) = 0;
  }

  return v4 < 0x400;
}

uint64_t _container_traverse_path_pop(uint64_t result)
{
  v1 = *(result + 1048);
  if (*(result + 1048))
  {
    do
    {
      v2 = *(result + 23 + v1) == 47 || v1 == 1;
      --v1;
    }

    while (!v2);
  }

  *(result + 24 + v1) = 0;
  *(result + 1048) = v1;
  return result;
}

unsigned __int8 *_container_traverse_get_last_path_component(unint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + a2;
  v4 = (a1 + a2 - 1);
  while (1)
  {
    v5 = v4;
    v6 = *v4;
    if (v4 <= a1)
    {
      break;
    }

    --v4;
    if (v6 == 47)
    {
      goto LABEL_6;
    }
  }

  if (v6 == 47)
  {
LABEL_6:
    result = v5 + 1;
    *a3 = v3 - (v5 + 1);
    return result;
  }

  return 0;
}

BOOL container_traverse_directory(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, uint64_t a5, uint64_t a6)
{
  v102 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = qword_1ED452B68;
    result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "container_traverse_directory";
    v18 = "%s: SPI MISUSE: path parameter is NULL";
LABEL_24:
    _os_log_fault_impl(&dword_1DF28A000, v16, OS_LOG_TYPE_FAULT, v18, &buf, 0xCu);
    return 0;
  }

  v6 = a5;
  if (!a5)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v16 = qword_1ED452B68;
    result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "container_traverse_directory";
    v18 = "%s: SPI MISUSE: node_handler parameter is NULL";
    goto LABEL_24;
  }

  v10 = a2;
  __s = 0;
  v77 = 0;
  v78 = 0;
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  LOWORD(__s) = 5;
  if (a3)
  {
    v12 = -1610579959;
  }

  else
  {
    v12 = -1610612727;
  }

  HIDWORD(__s) = v12 & 0xBDB8FFFF | (((a3 >> 1) & 7) << 16) & 0xBDBFFFFF | (((a3 >> 5) & 1) << 22) & 0xBDFFFFFF | (((a3 >> 4) & 1) << 30) | (((a3 >> 6) & 1) << 25);
  if ((a3 & 0x80) != 0)
  {
    LODWORD(v78) = v78 | 1;
  }

  if ((a3 & 0x100) != 0)
  {
    LODWORD(v78) = v78 | 4;
  }

  HIDWORD(v77) = 6;
  bzero(&buf, 0x420uLL);
  v13 = __strlcpy_chk();
  if (v13 >= 0x400)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v14 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      *v97 = 136315138;
      *&v97[4] = a1;
      _os_log_error_impl(&dword_1DF28A000, v14, OS_LOG_TYPE_ERROR, "Attempted to iterate directories starting at a path that was too long: [%s]", v97, 0xCu);
    }

    v15 = 22;
    goto LABEL_151;
  }

  v92 = v13;
  v19 = _container_traverse_continuation_create(&buf);
  if (!v19)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v23 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v97 = 0;
    v58 = "Failed to create a continuation";
    goto LABEL_124;
  }

  if (v10)
  {
    goto LABEL_53;
  }

  v20 = v19;
  LODWORD(v80) = 0;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  memset(v97, 0, sizeof(v97));
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  __src = 0;
  LOBYTE(v88) = 0;
  continuation_fd = _container_traverse_get_continuation_fd(&buf, v19, 0, &v80);
  if (continuation_fd == -1)
  {
LABEL_39:
    v15 = v80;
    goto LABEL_151;
  }

  if ((*(gCMFSSeam + 32))(continuation_fd, &__s, v20[1], 0x4000, 0) == -1)
  {
    LODWORD(v80) = *__error();
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v24 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      *v94 = 136315394;
      *v95 = v91;
      *&v95[8] = 1024;
      *&v95[10] = v80;
      _os_log_error_impl(&dword_1DF28A000, v24, OS_LOG_TYPE_ERROR, "fgetattrlist for [%s] failed; error = %{darwin.errno}d", v94, 0x12u);
    }

    goto LABEL_39;
  }

  v22 = _container_traverse_parse_attr_buf(&buf, v20[1], v97, &__src, 0, &v88);
  if (v22)
  {
    LODWORD(v80) = v22;
    goto LABEL_39;
  }

  if (DWORD1(v98) != 2 && (v20[3] & 0x80000000) == 0)
  {
    (*(gCMFSSeam + 19))();
    *(v20 + 6) = -1;
  }

  v25 = v92 + 24;
  v26 = 25;
  if (v25 < 0x19)
  {
    v26 = v92 + 24;
  }

  v27 = v92 + 23;
  do
  {
    if (v27 + 1 < 26)
    {
      if (*(&buf + v26 - 1) == 47)
      {
        goto LABEL_50;
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v68 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        *v94 = 136315138;
        *v95 = v91;
        _os_log_error_impl(&dword_1DF28A000, v68, OS_LOG_TYPE_ERROR, "Failed to locate last path element in [%s]", v94, 0xCu);
      }

      LODWORD(v80) = 40;
      goto LABEL_39;
    }

    v28 = *(&buf + v27--);
  }

  while (v28 != 47);
  v26 = v27 + 2;
LABEL_50:
  v29 = _container_traverse_call_node_handler(-1, v10, v91, v92, &buf + v26, v25 - v26, 0, v97, &v82, __src, v6);
  if ((v88 & 1) != 0 || DWORD1(v98) != 2 || v29 != 1)
  {
LABEL_176:
    _container_traverse_state_deinit(&buf);
    return 1;
  }

LABEL_53:
  v30 = buf;
  if (!buf)
  {
    goto LABEL_176;
  }

  v73 = a4;
  while (1)
  {
    *&buf = *v30;
    --v93;
    if (!*&v30[1])
    {
      attr_buf = _container_traverse_get_attr_buf(&buf);
      v30[1] = attr_buf;
      if (!attr_buf)
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v23 = qword_1ED452B68;
        if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *v97 = 0;
        v58 = "Failed to locate an attr buf";
LABEL_124:
        _os_log_error_impl(&dword_1DF28A000, v23, OS_LOG_TYPE_ERROR, v58, v97, 2u);
LABEL_34:
        v15 = 12;
        goto LABEL_151;
      }
    }

    v75 = v30;
LABEL_58:
    v88 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v32 = v30[3].u16[2];
    if (!v30[3].i16[2])
    {
      goto LABEL_95;
    }

    v33 = v30[2].u32[0];
    v34 = v30[2].u32[1];
    v35 = v33 - v34;
    if (v33 < v34)
    {
      a4 = v73;
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v57 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_122;
      }

      v66 = v30[2].i32[0];
      v67 = v30[2].i32[1];
      *v94 = 67109376;
      *v95 = v66;
      *&v95[4] = 1024;
      *&v95[6] = v67;
      v60 = "Internal error: totalProcessedEntryCount (%u) was less than reprocessCount (%u)";
      goto LABEL_178;
    }

    if (v33 == v34)
    {
      v36 = v30[3].u16[3];
    }

    else
    {
      if (v35 >= v32)
      {
        v30[2].i32[1] = v34 + v32;
        v30[3].i16[3] = v32;
        goto LABEL_95;
      }

      v36 = (v33 - v34);
      v30[3].i16[3] = v35;
      v30[2].i32[1] = v33;
    }

    v37 = v30[1];
    v38 = 0;
    if (v36)
    {
      v39 = 0;
      while (1)
      {
        v40 = *(*&v37 + v38);
        v38 += v40;
        if (v38 > 0x4000)
        {
          break;
        }

        if (++v39 >= v36)
        {
          goto LABEL_68;
        }
      }

      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      a4 = v73;
      v57 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
LABEL_122:
        v15 = 40;
        goto LABEL_146;
      }

      *v94 = 67109376;
      *v95 = v40;
      *&v95[4] = 1024;
      *&v95[6] = v39;
      v60 = "Read entry length %u for entry %hu but that put us off the end of the buffer";
LABEL_178:
      _os_log_error_impl(&dword_1DF28A000, v57, OS_LOG_TYPE_ERROR, v60, v94, 0xEu);
      goto LABEL_122;
    }

LABEL_68:
    v74 = v6;
    if (v36 < v32)
    {
      break;
    }

LABEL_95:
    LODWORD(v82) = 0;
    v51 = _container_traverse_get_continuation_fd(&buf, v30, 1, &v82);
    if (v51 == -1)
    {
      goto LABEL_158;
    }

    v52 = (*(gCMFSSeam + 52))(v51, &__s, *&v30[1], 0x4000, 0);
    if (v52)
    {
      if (v52 == -1)
      {
        LODWORD(v82) = *__error();
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v64 = qword_1ED452B68;
        if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
        {
          v70 = v30[2].i32[0];
          *v97 = 67109634;
          *&v97[4] = v70;
          *&v97[8] = 2080;
          *&v97[10] = v91;
          *&v97[18] = 1024;
          *&v97[20] = v82;
          _os_log_error_impl(&dword_1DF28A000, v64, OS_LOG_TYPE_ERROR, "getattrlistbulk failed on entry %u in [%s]; error = %{darwin.errno}d", v97, 0x18u);
        }

LABEL_158:
        v15 = v82;
        v65 = v30[1];
        if (v65)
        {
          *v65 = *(&buf + 1);
          *(&buf + 1) = v65;
        }

        a4 = v73;
        if ((v30[3].i32[0] & 0x80000000) == 0)
        {
          goto LABEL_149;
        }

        goto LABEL_150;
      }

      v30[3].i16[2] = v52;
      v30[3].i16[3] = 0;
      goto LABEL_58;
    }

    if (a6 && ((v10 & 1) == 0 || buf) && ((*(a6 + 16))(a6, v91) & 1) == 0)
    {
      v72 = v30[1];
      if (v72)
      {
        *v72 = *(&buf + 1);
        *(&buf + 1) = v72;
      }

      v30 = v75;
LABEL_173:
      if ((v30[3].i32[0] & 0x80000000) == 0)
      {
        (*(gCMFSSeam + 19))();
        v30[3].i32[0] = -1;
      }

      *v30 = v90;
      v90 = v30;
      goto LABEL_176;
    }

    v53 = v92;
    a4 = v73;
    if (v92)
    {
      do
      {
        v54 = v53 - 1;
        v55 = v91[v53 - 1] == 47 || v53 == 1;
        --v53;
      }

      while (!v55);
      v53 = v54;
    }

    v91[v53] = 0;
    v92 = v53;
    v56 = v30[1];
    if (v56)
    {
      *v56 = *(&buf + 1);
      *(&buf + 1) = v56;
    }

    if ((v30[3].i32[0] & 0x80000000) == 0)
    {
      (*(gCMFSSeam + 19))();
      v30[3].i32[0] = -1;
    }

    *v30 = v90;
    v90 = v30;
LABEL_117:
    v30 = buf;
    if (!buf)
    {
      goto LABEL_176;
    }
  }

  while (1)
  {
    v80 = 0;
    __src = 0;
    v79 = 0;
    v41 = _container_traverse_parse_attr_buf(&buf, (*&v37 + v38), &v82, &v80, &__src, &v79);
    if (v41)
    {
      v15 = v41;
LABEL_145:
      a4 = v73;
      goto LABEL_146;
    }

    v42 = __src;
    if (!__src)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v59 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        *v94 = 67109378;
        *v95 = v36;
        *&v95[4] = 2080;
        *&v95[6] = v91;
        _os_log_error_impl(&dword_1DF28A000, v59, OS_LOG_TYPE_ERROR, "Entry %hu in %s did not include name information even though we requested it.", v94, 0x12u);
      }

      v15 = 40;
      goto LABEL_145;
    }

    v38 += v82;
    if (v38 > 0x4000)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      a4 = v73;
      v57 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        *v94 = 67109376;
        *v95 = v82;
        *&v95[4] = 1024;
        *&v95[6] = v36;
        v60 = "Read entry length %u for entry %hu but that put us off the end of the buffer";
        goto LABEL_178;
      }

      goto LABEL_122;
    }

    if (DWORD2(v83))
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v61 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        *v94 = 67109634;
        *v95 = v36;
        *&v95[4] = 2080;
        *&v95[6] = v91;
        *&v95[14] = 1024;
        *&v95[16] = DWORD2(v83);
        _os_log_error_impl(&dword_1DF28A000, v61, OS_LOG_TYPE_ERROR, "got error while processing entry %hu in [%s]; error = %{darwin.errno}d", v94, 0x18u);
      }

      v15 = DWORD2(v83);
      goto LABEL_145;
    }

    v43 = (v84 - 1);
    v44 = v43 + v92 + 1;
    if (v44 >= 0x400)
    {
      v30 = v75;
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v62 = qword_1ED452B68;
      if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        *v94 = 136315650;
        *v95 = __src;
        *&v95[8] = 2048;
        *&v95[10] = v43;
        *&v95[18] = 2080;
        v96 = v91;
        _os_log_error_impl(&dword_1DF28A000, v62, OS_LOG_TYPE_ERROR, "Could not append element [%s] of length %zu to path [%s] because it would make the path longer than MAXPATHLEN", v94, 0x20u);
      }

      v15 = 63;
      goto LABEL_145;
    }

    v91[v92] = 47;
    memcpy(&v91[v92 + 1], v42, v43);
    v92 = v44;
    v91[v44] = 0;
    v45 = v93;
    if ((a3 & 0x200) != 0)
    {
      v46 = _container_traverse_get_continuation_fd(&buf, v75, 1, &v88);
      v42 = __src;
    }

    else
    {
      v46 = -1;
    }

    v6 = v74;
    v47 = _container_traverse_call_node_handler(v46, v10, v91, v92, v42, v43, v45 + 1, &v82, v97, v80, v74);
    if (v47 == 3)
    {
      v79 = 1;
      v30 = v75;
    }

    else
    {
      v30 = v75;
      if (v47 == 2)
      {
        goto LABEL_171;
      }
    }

    ++v30[3].i16[3];
    v30[2] = vadd_s32(v30[2], 0x100000001);
    if (DWORD1(v84) == 2)
    {
      break;
    }

LABEL_85:
    v48 = v92;
    if (v92)
    {
      do
      {
        v49 = v48 - 1;
        v50 = v91[v48 - 1] == 47 || v48 == 1;
        --v48;
      }

      while (!v50);
      v48 = v49;
    }

    ++v36;
    v91[v48] = 0;
    v92 = v48;
    if (v36 >= v30[3].u16[2])
    {
      goto LABEL_95;
    }
  }

  if (v79)
  {
    if (a6 && !(*(a6 + 16))(a6, v91))
    {
LABEL_171:
      v69 = v30[1];
      if (v69)
      {
        *v69 = *(&buf + 1);
        *(&buf + 1) = v69;
      }

      goto LABEL_173;
    }

    goto LABEL_85;
  }

  *v30 = buf;
  *&buf = v30;
  ++v93;
  if (_container_traverse_continuation_create(&buf))
  {
    a4 = v73;
    goto LABEL_117;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v71 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
  {
    *v94 = 0;
    _os_log_error_impl(&dword_1DF28A000, v71, OS_LOG_TYPE_ERROR, "Failed to create a continuation", v94, 2u);
  }

  v15 = 12;
  a4 = v73;
  v30 = v75;
LABEL_146:
  v63 = v30[1];
  if (v63)
  {
    *v63 = *(&buf + 1);
    *(&buf + 1) = v63;
  }

  if ((v30[3].i32[0] & 0x80000000) == 0)
  {
LABEL_149:
    (*(gCMFSSeam + 19))();
    v30[3].i32[0] = -1;
  }

LABEL_150:
  *v30 = v90;
  v90 = v30;
LABEL_151:
  _container_traverse_state_deinit(&buf);
  result = 0;
  if (a4)
  {
    *a4 = v15;
  }

  return result;
}

uint64_t _container_traverse_get_continuation_fd(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  result = *(a2 + 24);
  if (result == -1)
  {
    if (a3)
    {
      v8 = 1081600;
    }

    else
    {
      v8 = 2129920;
    }

    v9 = a1 + 24;
    result = (*(gCMFSSeam + 64))(a1 + 24, v8);
    if ((result & 0x80000000) == 0)
    {
      *(a2 + 24) = result;
      return result;
    }

    v10 = *__error();
    if (v10 == 2)
    {
      goto LABEL_11;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v11 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = v9;
      v14 = 1024;
      v15 = v10;
      _os_log_error_impl(&dword_1DF28A000, v11, OS_LOG_TYPE_ERROR, "Failed to open [%s]; error = %{darwin.errno}d", &v12, 0x12u);
      if (!a4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
LABEL_11:
      if (!a4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    *a4 = v10;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _container_traverse_parse_attr_buf(uint64_t a1, unsigned int *a2, char *__s, int **a4, uint64_t *a5, _BYTE *a6)
{
  v49 = *MEMORY[0x1E69E9840];
  if (__s)
  {
    memset_s(__s, 0x60uLL, 0, 0x60uLL);
  }

  v12 = *a2;
  *__s = v12;
  if (v12 <= 3)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v13 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    v14 = *__s;
    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = a2;
    *&v47[8] = 1024;
    *v48 = v14;
    *&v48[4] = 2048;
    *&v48[6] = 4;
    v15 = "Malformed attrlist on entry in [%s]; length field exceeds reported buffer length; start = %p, length = %u, sizeof(length) = %zu";
    goto LABEL_14;
  }

  v16 = (a2 + v12);
  if (__CFADD__(a2, v12))
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v13 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    v17 = *__s;
    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = a2;
    *&v47[8] = 1024;
    *v48 = v17;
    *&v48[4] = 2048;
    *&v48[6] = 4;
    v15 = "Malformed attrlist on entry in [%s]; length field too large; start = %p, length = %u, sizeof(length) = %zu";
LABEL_14:
    v18 = v13;
    v19 = 38;
LABEL_159:
    _os_log_error_impl(&dword_1DF28A000, v18, OS_LOG_TYPE_ERROR, v15, buf, v19);
    return 40;
  }

  if ((a2 + 1) >= 0xFFFFFFFFFFFFFFECLL || a2 + 6 > v16)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v25 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = a2 + 1;
    *&v47[8] = 2048;
    *v48 = v16;
    *&v48[8] = 2048;
    *&v48[10] = 20;
    v15 = "Malformed attrlist on entry in [%s]; [returned] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(returned) = %zu";
    v18 = v25;
    goto LABEL_158;
  }

  v20 = a2[5];
  *(__s + 4) = *(a2 + 1);
  *(__s + 5) = v20;
  v21 = a2 + 6;
  v22 = *(__s + 1);
  if ((v22 & 0x20000000) != 0)
  {
    if (v21 >= 0xFFFFFFFFFFFFFFFCLL || a2 + 7 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = a2 + 6;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 4;
      v15 = "Malformed attrlist on entry in [%s]; [error] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(error) = %zu";
      goto LABEL_157;
    }

    *(__s + 6) = a2[6];
    v21 = a2 + 7;
  }

  if ((v22 & 1) == 0)
  {
    v23 = 0;
    if ((v22 & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if (v21 >= 0xFFFFFFFFFFFFFFF8 || v21 + 2 > v16)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v33 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = v21;
    *&v47[8] = 2048;
    *v48 = v16;
    *&v48[8] = 2048;
    *&v48[10] = 8;
    v15 = "Malformed attrlist on entry in [%s]; [itemNameInfo] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(itemNameInfo) = %zu";
    goto LABEL_157;
  }

  *(__s + 28) = *v21;
  *buf = 0;
  v23 = _container_traverse_parse_attrreference_buf(a1, "itemNameInfo", v21, v16, 0, __s + 7, buf);
  if (!v23)
  {
    result = *buf;
    if (*buf)
    {
      return result;
    }
  }

  v21 += 2;
  v22 = *(__s + 1);
  if ((v22 & 8) != 0)
  {
LABEL_23:
    if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = v21;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 4;
      v15 = "Malformed attrlist on entry in [%s]; [type] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(type) = %zu";
      goto LABEL_157;
    }

    v24 = *v21++;
    *(__s + 9) = v24;
  }

LABEL_35:
  if ((v22 & 0x8000) != 0)
  {
    if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = v21;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 4;
      v15 = "Malformed attrlist on entry in [%s]; [uid] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(uid) = %zu";
      goto LABEL_157;
    }

    v27 = *v21++;
    *(__s + 10) = v27;
  }

  if ((v22 & 0x10000) != 0)
  {
    if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = v21;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 4;
      v15 = "Malformed attrlist on entry in [%s]; [gid] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(gid) = %zu";
      goto LABEL_157;
    }

    v28 = *v21++;
    *(__s + 11) = v28;
  }

  if ((v22 & 0x20000) != 0)
  {
    if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = v21;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 4;
      v15 = "Malformed attrlist on entry in [%s]; [mode] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(mode) = %zu";
      goto LABEL_157;
    }

    v29 = *v21++;
    *(__s + 12) = v29;
  }

  if ((v22 & 0x40000) != 0)
  {
    if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = v21;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 4;
      v15 = "Malformed attrlist on entry in [%s]; [flags] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(flags) = %zu";
      goto LABEL_157;
    }

    v30 = *v21++;
    *(__s + 13) = v30;
  }

  if ((v22 & 0x400000) == 0)
  {
    v31 = 0;
    if ((v22 & 0x2000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_53;
  }

  if (v21 >= 0xFFFFFFFFFFFFFFF8 || v21 + 2 > v16)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v33 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = v21;
    *&v47[8] = 2048;
    *v48 = v16;
    *&v48[8] = 2048;
    *&v48[10] = 8;
    v15 = "Malformed attrlist on entry in [%s]; [aclInfo] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(aclInfo) = %zu";
    goto LABEL_157;
  }

  *(__s + 7) = *v21;
  v43 = 0;
  v31 = _container_traverse_parse_attrreference_buf(a1, "aclInfo", v21, v16, 0x2CuLL, __s + 14, &v43);
  if (!v31)
  {
    result = v43;
    if (v43)
    {
      return result;
    }
  }

  if (v31 && *(__s + 15) >= 0x2Du && *v31 != 19710317)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v34 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      v42 = *v31;
      *buf = 136315650;
      v45 = a1 + 24;
      v46 = 1024;
      *v47 = 19710317;
      *&v47[4] = 1024;
      *&v47[6] = v42;
      _os_log_error_impl(&dword_1DF28A000, v34, OS_LOG_TYPE_ERROR, "Malformed attrlist on entry in [%s]; aclInfo magic mismatch; expected = 0x%x, got = 0x%x", buf, 0x18u);
    }

    v31 = 0;
  }

  v21 += 2;
  v22 = *(__s + 1);
  if ((v22 & 0x2000000) != 0)
  {
LABEL_53:
    if (v21 >= 0xFFFFFFFFFFFFFFF8 || v21 + 2 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = v21;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 8;
      v15 = "Malformed attrlist on entry in [%s]; [fileID] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(fileID) = %zu";
      goto LABEL_157;
    }

    v32 = *v21;
    v21 += 2;
    *(__s + 8) = v32;
  }

LABEL_89:
  if ((v22 & 0x40000000) != 0)
  {
    if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
    {
      if (container_log_handle_for_category_onceToken != -1)
      {
        dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
      }

      v33 = qword_1ED452B68;
      if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
      {
        return 40;
      }

      *buf = 136315906;
      v45 = a1 + 24;
      v46 = 2048;
      *v47 = v21;
      *&v47[8] = 2048;
      *v48 = v16;
      *&v48[8] = 2048;
      *&v48[10] = 4;
      v15 = "Malformed attrlist on entry in [%s]; [dataProtectionClass] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(dataProtectionClass) = %zu";
      goto LABEL_157;
    }

    v35 = *v21++;
    *(__s + 18) = v35;
  }

  if (*(__s + 9) != 2)
  {
    v40 = *(__s + 4);
    if (v40)
    {
      if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v33 = qword_1ED452B68;
        if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
        {
          return 40;
        }

        *buf = 136315906;
        v45 = a1 + 24;
        v46 = 2048;
        *v47 = v21;
        *&v47[8] = 2048;
        *v48 = v16;
        *&v48[8] = 2048;
        *&v48[10] = 4;
        v15 = "Malformed attrlist on entry in [%s]; [linkCount] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(linkCount) = %zu";
        goto LABEL_157;
      }

      v41 = *v21++;
      *(__s + 20) = v41;
    }

    if ((v40 & 4) == 0)
    {
      goto LABEL_129;
    }

    if (v21 < 0xFFFFFFFFFFFFFFF8 && v21 + 2 <= v16)
    {
      *(__s + 11) = *v21;
      goto LABEL_129;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v33 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = v21;
    *&v47[8] = 2048;
    *v48 = v16;
    *&v48[8] = 2048;
    *&v48[10] = 8;
    v15 = "Malformed attrlist on entry in [%s]; [allocSize] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(allocSize) = %zu";
LABEL_157:
    v18 = v33;
LABEL_158:
    v19 = 42;
    goto LABEL_159;
  }

  v36 = *(__s + 3);
  if ((v36 & 2) == 0)
  {
    goto LABEL_99;
  }

  if (v21 >= 0xFFFFFFFFFFFFFFFCLL || v21 + 1 > v16)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v33 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = v21;
    *&v47[8] = 2048;
    *v48 = v16;
    *&v48[8] = 2048;
    *&v48[10] = 4;
    v15 = "Malformed attrlist on entry in [%s]; [entryCount] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(entryCount) = %zu";
    goto LABEL_157;
  }

  v37 = *v21++;
  *(__s + 20) = v37;
  if (!v37)
  {
    *a6 = 1;
  }

LABEL_99:
  if ((v36 & 4) != 0)
  {
    if (v21 < 0xFFFFFFFFFFFFFFFCLL && v21 + 1 <= v16)
    {
      v38 = *v21;
      *(__s + 21) = *v21;
      if (*(a1 + 1051) && (v38 & 3) != 0)
      {
        if (container_log_handle_for_category_onceToken != -1)
        {
          dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
        }

        v39 = qword_1ED452B68;
        if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v45 = a1 + 24;
          v46 = 2080;
          *v47 = v23;
          _os_log_debug_impl(&dword_1DF28A000, v39, OS_LOG_TYPE_DEBUG, "skipping mount point or trigger at [%s]/[%s]", buf, 0x16u);
        }

        *a6 = 1;
      }

      goto LABEL_129;
    }

    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v33 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 40;
    }

    *buf = 136315906;
    v45 = a1 + 24;
    v46 = 2048;
    *v47 = v21;
    *&v47[8] = 2048;
    *v48 = v16;
    *&v48[8] = 2048;
    *&v48[10] = 4;
    v15 = "Malformed attrlist on entry in [%s]; [mountStatus] field exceeds reported buffer length; start = %p, end = 0x%lx, sizeof(mountStatus) = %zu";
    goto LABEL_157;
  }

LABEL_129:
  if (a4)
  {
    *a4 = v31;
  }

  result = 0;
  if (a5)
  {
    *a5 = v23;
  }

  return result;
}

uint64_t _container_traverse_call_node_handler(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *(a8 + 36);
  if ((a2 & 2) != 0 && v17 == 2)
  {
    return 1;
  }

  if (a1 < 0)
  {
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v19 = (*(gCMFSSeam + 24))();
    v17 = *(a8 + 36);
  }

  *(a9 + 80) = v19;
  *a9 = *(a8 + 64);
  *(a9 + 8) = *(a8 + 88);
  *(a9 + 16) = a3;
  *(a9 + 88) = 0;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v20 = *(a8 + 52);
  *(a9 + 40) = a6;
  *(a9 + 48) = v20;
  *(a9 + 56) = v17;
  v21 = *(a8 + 72);
  *(a9 + 60) = *(a8 + 80);
  *(a9 + 64) = v21;
  *(a9 + 68) = *(a8 + 40);
  *(a9 + 76) = *(a8 + 80);
  v22 = *(a8 + 48) & 0xFFF;
  *(a9 + 84) = v22;
  v23 = v17 - 1;
  if (v23 <= 6)
  {
    *(a9 + 84) = word_1DF2B944E[v23] | v22;
  }

  if (a10)
  {
    v24 = *(a10 + 36) != -1;
  }

  else
  {
    v24 = 0;
  }

  *(a9 + 86) = v24;
  *(a9 + 87) = a7;
  v28 = 1;
  v25 = (*(a11 + 16))(a11, a9, &v28);
  v26 = 3;
  if (v28)
  {
    v26 = 1;
  }

  if (v25)
  {
    v18 = v26;
  }

  else
  {
    v18 = 2;
  }

  if ((v19 & 0x80000000) == 0)
  {
    (*(gCMFSSeam + 19))(v19);
  }

  return v18;
}

uint64_t _container_traverse_parse_attrreference_buf(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int *a6, _DWORD *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a6[1];
  if (!v9)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v17 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v27 = 136315394;
    v28 = a1 + 24;
    v29 = 2080;
    v30 = a2;
    v14 = "Malformed attrlist on entry in [%s]; %s.attr_length is zero";
    v15 = v17;
    v16 = 22;
    goto LABEL_20;
  }

  if (v9 < a5)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v12 = qword_1ED452B68;
    if (!os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v13 = a6[1];
    v27 = 136315906;
    v28 = a1 + 24;
    v29 = 2080;
    v30 = a2;
    v31 = 2048;
    v32 = a5;
    v33 = 1024;
    LODWORD(v34) = v13;
    v14 = "Malformed attrlist on entry in [%s]; %s.attr_length too small; expected >= %lu, got = %u";
    v15 = v12;
    v16 = 38;
LABEL_20:
    _os_log_error_impl(&dword_1DF28A000, v15, OS_LOG_TYPE_ERROR, v14, &v27, v16);
    return 0;
  }

  v22 = *a6;
  v23 = v22 + v9;
  v24 = __CFADD__(a3, v22 + v9);
  v25 = a3 + v22 + v9;
  if (!v24 && v25 <= a4)
  {
    return a3 + v22;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v26 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_ERROR))
  {
    v27 = 136316162;
    v28 = a1 + 24;
    v29 = 2080;
    v30 = a2;
    v31 = 2048;
    v32 = a3;
    v33 = 2048;
    v34 = a4;
    v35 = 2048;
    v36 = v23;
    _os_log_error_impl(&dword_1DF28A000, v26, OS_LOG_TYPE_ERROR, "Malformed attrlist on entry in [%s]; [%s][attr_dataoffset] field exceeds reported buffer length; start = %p, end = 0x%lx, attr_dataoffset + attr_length = %zu", &v27, 0x34u);
  }

  result = 0;
  *a7 = 40;
  return result;
}

const char *container_traverse_node_get_path(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 24);
    }

    return *(a1 + 16);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
    {
      v4 = 136315138;
      v5 = "container_traverse_node_get_path";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v4, 0xCu);
    }

    return "<NULL>";
  }
}

const char *container_traverse_node_get_name(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 40);
    }

    return *(a1 + 32);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v3 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
    {
      v4 = 136315138;
      v5 = "container_traverse_node_get_name";
      _os_log_fault_impl(&dword_1DF28A000, v3, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v4, 0xCu);
    }

    return "<NULL>";
  }
}

uint64_t container_traverse_node_get_subordinate_count(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 60);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_subordinate_count";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
    return 0;
  }

  return result;
}

uint64_t container_traverse_node_get_depth_from_origin(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 87);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_depth_from_origin";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
    return 0;
  }

  return result;
}

BOOL container_traverse_node_is_directory(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 56) == 2;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "container_traverse_node_is_directory";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
    return 0;
  }

  return result;
}

BOOL container_traverse_node_is_symlink(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 56) == 5;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "container_traverse_node_is_symlink";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
    return 0;
  }

  return result;
}

BOOL container_traverse_node_is_regular_file(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 56) == 1;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "container_traverse_node_is_regular_file";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
    return 0;
  }

  return result;
}

uint64_t container_traverse_node_get_optional_file_id(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *a1;
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_file_id";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
  }

  return 0;
}

uint64_t container_traverse_node_get_optional_alloc_size(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 8);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_alloc_size";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
  }

  return -1;
}

uint64_t container_traverse_node_get_optional_flags(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 48);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_flags";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
  }

  return 0;
}

uint64_t container_traverse_node_get_optional_dp_class(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 64);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_dp_class";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t container_traverse_node_get_optional_uid(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 68);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_uid";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
  }

  return 4294967294;
}

uint64_t container_traverse_node_get_optional_gid(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 72);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_gid";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
  }

  return 4294967294;
}

uint64_t container_traverse_node_get_optional_link_count(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 76);
    if (v1 < 0x10000)
    {
      return v1;
    }

    v7 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *buf = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v3 = v1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_send_and_compose_impl(v4, &v7, buf, 80, &dword_1DF28A000, v2, 16, "Overflowed link count [%u]", v8);
    _os_crash_msg();
    __break(1u);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v5 = qword_1ED452B68;
  if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "container_traverse_node_get_optional_link_count";
    _os_log_fault_impl(&dword_1DF28A000, v5, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", buf, 0xCu);
  }

  LOWORD(v1) = 0;
  return v1;
}

uint64_t container_traverse_node_get_optional_mode(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 84);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_mode";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
    return 0;
  }

  return result;
}

uint64_t container_traverse_node_optional_has_acl(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 86);
  }

  else
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v2 = qword_1ED452B68;
    if (os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT))
    {
      v4 = 136315138;
      v5 = "container_traverse_node_optional_has_acl";
      _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v4, 0xCu);
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t container_traverse_node_get_optional_parent_fd(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 80);
  }

  if (container_log_handle_for_category_onceToken != -1)
  {
    dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
  }

  v2 = qword_1ED452B68;
  result = os_log_type_enabled(qword_1ED452B68, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "container_traverse_node_get_optional_parent_fd";
    _os_log_fault_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_FAULT, "%s: SPI MISUSE: node parameter is NULL", &v3, 0xCu);
    return 0;
  }

  return result;
}

char *container_traverse_node_copy_unlocalized_description(__int128 *a1)
{
  v17 = 0;
  if (a1)
  {
    v2 = *(a1 + 4);
    v3 = *(a1 + 2);
    v16 = *a1;
    v4 = *(a1 + 6);
    v5 = *(a1 + 15);
    v6 = *(a1 + 16);
    v7 = *(a1 + 17);
    v8 = *(a1 + 18);
    optional_link_count = container_traverse_node_get_optional_link_count(a1);
    v10 = &unk_1DF2BBE1A;
    v11 = "DIR";
    v12 = *(a1 + 14);
    if (v12 != 2)
    {
      v11 = &unk_1DF2BBE1A;
    }

    v13 = "REG";
    if (v12 != 1)
    {
      v13 = &unk_1DF2BBE1A;
    }

    if (v12 == 5)
    {
      v10 = "LNK";
    }

    if (*(a1 + 86))
    {
      v14 = " true";
    }

    else
    {
      v14 = "false";
    }

    asprintf(&v17, "(%04u:0x%08llx:0x%08llx:0x%04lx:%02d:%04u:%04u:%04u:O%06o:%03d:%s%s%s:%s:%03d)[%s][%s]", v5, v16, *(&v16 + 1), v4, v6, v7, v8, optional_link_count, *(a1 + 42), *(a1 + 87), v11, v13, v10, v14, *(a1 + 20), v2, v3);
    return v17;
  }

  else
  {

    return strdup("<NULL>");
  }
}

char **container_traverse_node_copy(const char **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x101004039251551uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 1);
    *v2 = *a1;
    *(v2 + 1) = v4;
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    v7 = *(a1 + 5);
    *(v2 + 4) = *(a1 + 4);
    *(v2 + 5) = v7;
    *(v2 + 2) = v5;
    *(v2 + 3) = v6;
    asprintf(v2 + 2, "%s", a1[2]);
    *(v3 + 88) = 1;
    asprintf(v3 + 4, "%s", a1[4]);
    *(v3 + 89) = 1;
    *(v3 + 20) = -1;
    v8 = *(a1 + 20);
    if (v8 != -1)
    {
      *(v3 + 20) = dup(v8);
    }
  }

  return v3;
}

uint64_t container_traverse_node_free(uint64_t result)
{
  __s = result;
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    if (v2 != -1)
    {
      close(v2);
      *(v1 + 80) = -1;
    }

    if (*(v1 + 88) == 1)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        free(v3);
        memset_s((v1 + 16), 8uLL, 0, 8uLL);
      }
    }

    if (*(v1 + 89) == 1)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        free(v4);
        memset_s((v1 + 32), 8uLL, 0, 8uLL);
      }
    }

    free(v1);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}

void container_xpc_set_use_shared_connection(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (gContainerXPCUsesSharedConnection != a1)
  {
    if (container_log_handle_for_category_onceToken != -1)
    {
      dispatch_once(&container_log_handle_for_category_onceToken, &__block_literal_global_572);
    }

    v2 = qword_1ED452B30;
    if (os_log_type_enabled(qword_1ED452B30, OS_LOG_TYPE_DEFAULT))
    {
      v3 = "Disabling";
      if (a1)
      {
        v3 = "Enabling";
      }

      v4 = 136446210;
      v5 = v3;
      _os_log_impl(&dword_1DF28A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s connection sharing", &v4, 0xCu);
    }

    gContainerXPCUsesSharedConnection = a1;
  }
}

uint64_t container_internal_get_first_boot_uuid(void *a1)
{
  if (container_internal_get_first_boot_uuid_once != -1)
  {
    dispatch_once(&container_internal_get_first_boot_uuid_once, &__block_literal_global_555);
    if (!a1)
    {
      return container_internal_get_first_boot_uuid_uuid;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = container_internal_get_first_boot_uuid_length;
  }

  return container_internal_get_first_boot_uuid_uuid;
}

uint64_t __container_internal_get_first_boot_uuid_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  memset(v1, 0, sizeof(v1));
  container_internal_get_first_boot_uuid_length = 38;
  if ((sysctlbyname("kern.bootsessionuuid", v1, &container_internal_get_first_boot_uuid_length, 0, 0) & 0x80000000) == 0)
  {
    result = strndup(v1, container_internal_get_first_boot_uuid_length);
LABEL_3:
    container_internal_get_first_boot_uuid_uuid = result;
    return result;
  }

  result = __error();
  if (*result == 12)
  {
    container_internal_get_first_boot_uuid_length = 0;
    result = sysctlbyname("kern.bootsessionuuid", 0, &container_internal_get_first_boot_uuid_length, 0, 0);
    if (!result)
    {
      result = malloc_type_calloc(container_internal_get_first_boot_uuid_length, 1uLL, 0x44AA504AuLL);
      container_internal_get_first_boot_uuid_uuid = result;
      if (result)
      {
        result = sysctlbyname("kern.bootsessionuuid", result, &container_internal_get_first_boot_uuid_length, 0, 0);
        if ((result & 0x80000000) != 0)
        {
          result = container_internal_get_first_boot_uuid_uuid;
          if (container_internal_get_first_boot_uuid_uuid)
          {
            free(container_internal_get_first_boot_uuid_uuid);
            memset_s(&container_internal_get_first_boot_uuid_uuid, 8uLL, 0, 8uLL);
            result = 0;
          }

          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

BOOL container_class_supports_randomized_path(int a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || a1 != 6 && a1 != 1)
  {
    return 1;
  }

  return a2 != 2 && a2 != 7;
}

BOOL container_class_supports_randomized_path_on_current_platform(uint64_t a1, char a2)
{
  active_platform = dyld_get_active_platform();
  if ((a2 & 1) != 0 || active_platform != 6 && active_platform != 1)
  {
    return 1;
  }

  return a1 != 2 && a1 != 7;
}

uint64_t container_class_for_each_normalized_class(uint64_t result)
{
  v1 = result;
  for (i = 0; i != 15; ++i)
  {
    if (i)
    {
      result = (*(v1 + 16))(v1, i);
    }
  }

  return result;
}

uint64_t container_persona_collect_all_ids(void *a1, size_t a2, void **a3, size_t *a4)
{
  v7 = 0;
  __src = a1;
  for (i = 1; i != 8; ++i)
  {
    if ((kpersona_find_by_type() & 0x80000000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 - v7;
    }

    v7 += v9;
  }

  qsort_b(__src, v7, 4uLL, &__block_literal_global_564);
  *a3 = __src;
  *a4 = v7;
  return 1;
}

uint64_t __container_persona_collect_all_ids_block_invoke(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a3 < *a2;
  }
}

uint64_t container_persona_foreach(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = 0;
  __s = 0;
  result = container_persona_collect_all_ids(v33, 0x40uLL, &__s, &v8);
  v4 = v8;
  v3 = __s;
  if (v8)
  {
    v5 = __s;
    do
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v10 = 2;
      v6 = kpersona_info();
      if (v6)
      {
        LODWORD(v11) = *v5;
      }

      result = (*(a1 + 16))(a1, v6 == 0, &v10);
      ++v5;
      --v4;
    }

    while (v4);
  }

  if (v3 != v33 && v3 != 0)
  {
    free(v3);
    return memset_s(&__s, 8uLL, 0, 8uLL);
  }

  return result;
}