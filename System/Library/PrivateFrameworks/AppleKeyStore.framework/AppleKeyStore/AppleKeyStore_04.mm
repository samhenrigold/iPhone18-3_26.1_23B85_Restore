uint64_t aks_bootstrap_fs(const char *a1, char a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 22;
  }

  bzero(v27, 0x400uLL);
  v4 = realpath_DARWIN_EXTSN(a1, v27);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = OUTLINED_FUNCTION_3_5(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26[0]);
  bzero(v12, v13);
  v21 = OUTLINED_FUNCTION_3_5(v14, v15, "%s/mobile", v16, v17, v18, v19, v20, v27, v26[0]);
  snprintf(v21, v22, v23);
  result = aks_bootstrap_fs_required(v27, "root/.bootstrapped", a2);
  if (!result)
  {
    return result;
  }

  if (aks_bootstrap_fs_with_map(v27) || (aks_fs_supports_enhanced_apfs() & 1) == 0 && aks_bootstrap_fs_with_map(v26))
  {
    return 0xFFFFFFFFLL;
  }

  aks_bootstrap_fs_done(v27, "root/.bootstrapped");
  return 0;
}

uint64_t aks_setupallowlist_user_fs(const char *a1, uint64_t a2)
{
  v18 = -1;
  v4 = fopen("/var/logs/AKSSetup.log", "w+");
  v5 = v4;
  v6 = MEMORY[0x1E69E9858];
  v7 = *MEMORY[0x1E69E9858];
  if (v4)
  {
    v7 = v4;
  }

  __logfd = v7;
  aks_bootstrap_user_fs(a1);
  if (aks_setupallowlist_fs_required(a1, a2, ".aks_allowlist", &v18, v8, v9, v10, v11))
  {
    aks_setupallowlist_fs_with_map(a1, a2, &userPathMap, *"H");
    v12 = v18;
    v13 = OUTLINED_FUNCTION_1_5(__logfd);
    fprintf(v13, "%s has been allow listed with version:%c\n", a1, v14);
    v15 = _aks_version_commit(v12, 52);
    if (v15)
    {
      v16 = v15;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v16 = 0;
  if (v5)
  {
LABEL_6:
    fclose(v5);
  }

LABEL_7:
  __logfd = *v6;
  return v16;
}

uint64_t aks_setupallowlist_fs_required(const char *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = OUTLINED_FUNCTION_0_7(a1, a2, a3, a4, a5, a6, a7, a8, v35, v36, v37, v39);
  bzero(v12, v13);
  v21 = OUTLINED_FUNCTION_0_7(v14, v15, "%s/%s", v16, v17, v18, v19, v20, a1, a3, v38, v40);
  v24 = snprintf(v21, v22, v23);
  v30 = OUTLINED_FUNCTION_2_7(v24, v25, v26, v27, v28, v29);
  if (v30 != -1)
  {
    v31 = v30;
    if ((v10 & 2) != 0)
    {
LABEL_5:
      *a4 = v31;
      return 1;
    }

    if (!_aks_version_check(v30, 52))
    {
      v32 = OUTLINED_FUNCTION_1_5(__logfd);
      fprintf(v32, "%s has different allowlist needed=%c\n", a1, v33);
      goto LABEL_5;
    }

    close(v31);
  }

  return 0;
}

uint64_t aks_setupallowlist_fs(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v48 = *MEMORY[0x1E69E9840];
  HIDWORD(v43) = -1;
  bzero(&__to, 0x400uLL);
  bzero(&__from, 0x400uLL);
  bzero(__str, 0x400uLL);
  v13 = OUTLINED_FUNCTION_0_7(v5, v6, v7, v8, v9, v10, v11, v12, v40, v41, v43, v44[0]);
  bzero(v13, v14);
  v22 = OUTLINED_FUNCTION_0_7(v15, v16, "%s/mobile", v17, v18, v19, v20, v21, v4, v42, v43, v44[0]);
  snprintf(v22, v23, v24);
  snprintf(__str, 0x400uLL, "%s/tmp", v4);
  if (_set_path_class(__str, -1, 4, 0))
  {
    fprintf(*MEMORY[0x1E69E9848], "Unable to set %s to class D!", __str);
  }

  v25 = fopen("/var/logs/AKSSetup.log", "w+");
  v26 = v25;
  v27 = MEMORY[0x1E69E9858];
  v28 = *MEMORY[0x1E69E9858];
  if (v25)
  {
    v28 = v25;
  }

  __logfd = v28;
  aks_bootstrap_fs(v4, v3 | 3);
  snprintf(&__from, 0x400uLL, "%s/root/.aks_whitelist", v4);
  snprintf(&__to, 0x400uLL, "%s/root/.aks_allowlist", v4);
  rename(&__from, &__to, v29);
  if (aks_setupallowlist_fs_required(v4, v3, "root/.aks_allowlist", &v43 + 1, v30, v31, v32, v33))
  {
    aks_setupallowlist_fs_with_map(v4, v3, &sharedPathMap, *"$");
    if ((aks_fs_supports_enhanced_apfs() & 1) == 0)
    {
      aks_setupallowlist_fs_with_map(v44, v3, &userPathMap, *"H");
    }

    v34 = HIDWORD(v43);
    v35 = OUTLINED_FUNCTION_1_5(__logfd);
    fprintf(v35, "%s has been allow listed with version:%c\n", v4, v36);
    v37 = _aks_version_commit(v34, 52);
    if (v37)
    {
      v38 = v37;
      if (!v26)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v38 = 0;
  if (v26)
  {
LABEL_10:
    fclose(v26);
  }

LABEL_11:
  __logfd = *v27;
  return v38;
}

uint64_t aks_migrate_path(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_4_5();
  bzero(v15, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v4, v15))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3 | 0x18;
  if ((v3 & 0x1C) != 0)
  {
    v5 = v3;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __aks_migrate_path_block_invoke;
  v11[3] = &__block_descriptor_tmp_1;
  v12 = v5;
  v13 = v2;
  v14 = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __aks_migrate_path_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_16;
  v8 = v2;
  v9 = v5;
  v10 = v1;
  _iterate_path(v15, v11, v7);
  return 0;
}

uint64_t aks_bootstrap_fs_with_map_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  if (!*__error())
  {
    return 1;
  }

  v5 = *MEMORY[0x1E69E9848];
  v6 = *a4;
  v7 = __error();
  v8 = strerror(*v7);
  fprintf(v5, "failed to get uid for user '%s'(%s)\n", v6, v8);
  return 0;
}

uint64_t aks_bootstrap_fs_with_map_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  if (!*__error())
  {
    return 1;
  }

  v5 = *MEMORY[0x1E69E9848];
  v6 = *a4;
  v7 = __error();
  v8 = strerror(*v7);
  fprintf(v5, "failed to get gid for group '%s' (%s)\n", v6, v8);
  return 0;
}

void aks_stash_create_for_bag_and_kek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  bzero(v39, 0x1000uLL);
  v25 = v39;
  v26 = &v40;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v12 = aks_client_connection;
    if (der_utils_encode_fv_data(&v25))
    {
      OUTLINED_FUNCTION_17();
      if (ccder_blob_encode_tl())
      {
        v27 = v10;
        v28 = v9;
        v29 = v5;
        v30 = v3;
        v31 = v7;
        v32 = v26;
        v33 = (&v40 - v26);
        OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_5_2(v12, 0x21u, v13, 7u, v14, v15, v16, v17, v23, v24);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_11_3();
    *(v18 + 60) = v19;
    v35 = v20;
    *(v18 + 70) = "aks_stash_create_for_bag_and_kek";
    v36 = v20;
    v37 = ":";
    v38 = v21;
    OUTLINED_FUNCTION_92(v18);
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v34);
  }

  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_13_0();
}

uint64_t _aks_stash_load(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (get_aks_client_connection())
  {
    OUTLINED_FUNCTION_47_0();
    v13 = IOConnectCallMethod(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0);
    if (v13)
    {
      return v13;
    }

    else
    {
      a2 = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v16, v17, v18, v19, outputStruct, v21, v22, v23, v24, v25);
    }
  }

  return a2;
}

uint64_t aks_prederived_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_81();
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t aks_prederived_create(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (_aks_prederived_create_ctx(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = _aks_prederive_passcode(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !_set_prederived_configuration(v8, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    OUTLINED_FUNCTION_74(v10);
    free(v10);
  }

  if (v14)
  {
    aks_prederived_free(v14);
  }

  return v12;
}

uint64_t _aks_prederived_create_ctx(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  result = CCRandomCopyBytes();
  if (result)
  {
    v10 = *(v7 + 1);
    if (v10)
    {
      free(v10);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v9 = 2000;
  }

  else
  {
    v9 = 10000000;
  }

  if (a1 == 2)
  {
    v9 = 1000;
  }

  v7[1] = v9;
  *a2 = v7;
  return result;
}

uint64_t _aks_prederive_passcode(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_81();
  if (!v5 || !v2 && v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v4 && (*(a1 + 24) - 4) >= 0xFFFFFFFD)
  {
    ccsha256_di();
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _set_prederived_configuration(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_107();
  if ((v10 || !a3) && a4 && a5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v12 = aks_client_connection;
      if (!encode_list_add_data() && !encode_list_add_data() && !encode_list_add_number(&v27, der_key_config_prederived_iterations, *(a5 + 4)) && !encode_list_add_number(&v27, der_key_config_prederived_type, *(a5 + 24)) && (a3 < 1 || !encode_list_add_data()) && !encode_list_is_empty(&v27) && !encode_list_dict(&v27, &v29, &__n))
      {
        v30 = a1;
        v31 = v29;
        v32 = __n;
        OUTLINED_FUNCTION_50_0();
        v5 = OUTLINED_FUNCTION_5_2(v12, 0x1Eu, v13, 3u, v14, v15, v16, v17, v25, v26);
      }
    }

    else
    {
      v5 = (v5 - 6);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27_3();
        OUTLINED_FUNCTION_3_6();
        OUTLINED_FUNCTION_65();
        OUTLINED_FUNCTION_64();
        OUTLINED_FUNCTION_16_3(v19);
        OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v26, v27, __n, v29, v30, v31, v32);
      }
    }
  }

  encode_list_free(&v27);
  if (v29)
  {
    OUTLINED_FUNCTION_22_1(v29, __n);
    free(v29);
  }

  return v5;
}

void aks_prederived_is_enabled()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  v35 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    OUTLINED_FUNCTION_70();
    v4 = calloc(0x20uLL, 1uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = 1634431856;
      aks_client_connection = get_aks_client_connection();
      if (!aks_client_connection)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v34[0] = 136317954;
          OUTLINED_FUNCTION_37_0(v34);
          OUTLINED_FUNCTION_5_6(v18);
          OUTLINED_FUNCTION_79(v19);
          OUTLINED_FUNCTION_76(v20);
          OUTLINED_FUNCTION_15_3(v21);
          OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v34);
        }

        goto LABEL_17;
      }

      v7 = aks_client_connection;
      bzero(v33, 0x8000uLL);
      v23[0] = 0x8000;
      v32 = v1;
      if (OUTLINED_FUNCTION_18_3(v7, 0x1Fu, &v32, v8, v9, v10, v11, v12, v33, v23) || v23[0] > 0x8000)
      {
LABEL_17:
        aks_prederived_free(v5);
        goto LABEL_14;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v28 = 0;
      v24 = 0u;
      v25 = 0u;
      v27 = 0u;
      v30 = 0u;
      v31 = 0u;
      v23[1] = der_key_config_prederived_salt;
      v26 = der_key_config_prederived_iterations;
      v29 = der_key_config_prederived_type;
      OUTLINED_FUNCTION_13_3();
      der_dict_iterate();
      v14 = ccder_decode_tl();
      if (v14)
      {
        v15 = v14;
        v16 = calloc(*(v5 + 2), 1uLL);
        *(v5 + 1) = v16;
        if (!v16)
        {
          v17 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v16, v15, *(v5 + 2));
        v5[1] = der_get_number();
        v5[6] = der_get_number();
      }

      v17 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v17 && *(v5 + 2))
        {
          *v0 = v5;
          goto LABEL_14;
        }

        goto LABEL_17;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_prederived_unlock_keybag(int a1, uint64_t a2, int a3, _DWORD *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || _aks_prederive_passcode(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = _aks_unlock_bag(a1, v9, 32, 0);
  }

  OUTLINED_FUNCTION_74(v9);
  return v7;
}

uint64_t aks_prederived_change_secret(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_81();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v8;
  if (!v9)
  {
    if (v10)
    {
      goto LABEL_18;
    }
  }

  if (!v11 && v12 || _aks_prederive_passcode(v7))
  {
    goto LABEL_18;
  }

  v15 = _aks_prederived_create_ctx(*(v7 + 24), &v20);
  v16 = v20;
  if (v15 || (v17 = _aks_prederive_passcode(v20), v16 = v20, v17))
  {
LABEL_16:
    if (v16)
    {
      aks_prederived_free(v16);
    }

LABEL_18:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (_set_prederived_configuration(v14, v22, 32, v21, v20))
  {
    v16 = v20;
    goto LABEL_16;
  }

  aks_prederived_free(v7);
  v18 = 0;
  *a6 = v20;
LABEL_14:
  OUTLINED_FUNCTION_74(v22);
  OUTLINED_FUNCTION_74(v21);
  return v18;
}

uint64_t _aks_unlock_with_sync_bag(const void *a1, int a2, uint64_t a3, int a4, unsigned int a5, int a6)
{
  v29 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a1)
    {
      v24 = a6;
      v25 = a3;
      v26 = a4;
      v27 = a5;
      return OUTLINED_FUNCTION_19_0(aks_client_connection, 0x43u, &v24, 4u, a1, a2, v14, v15, 0, 0);
    }

    else
    {
      return (v6 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317954;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  }

  return v6;
}

uint64_t aks_load_bag(const void *a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        HIDWORD(v16) = 1;
        v3 = IOConnectCallMethod(aks_client_connection, 6u, 0, 0, a1, a2, &output, &v16 + 1, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317954;
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v10, v11, v12, v13, outputStruct, v15, v16, output);
  }

  return v3;
}

uint64_t aks_invalidate_bag(const void *a1, int a2)
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136317954;
      v13 = "aks.fw";
      v14 = 2080;
      OUTLINED_FUNCTION_0_6();
      v15 = "aks_invalidate_bag";
      v16 = v9;
      v17 = ":";
      v18 = v10;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v12);
    }

    return v2;
  }

  if (!a1)
  {
    return (v2 + 6);
  }

  return OUTLINED_FUNCTION_19_0(aks_client_connection, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
}

uint64_t aks_save_bag(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_75();
  v5 = v4;
  OUTLINED_FUNCTION_59_0(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v7 = aks_client_connection;
    result = (v3 + 6);
    if (v2)
    {
      if (v1)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        v21 = v5;
        result = OUTLINED_FUNCTION_18_3(v7, 3u, &v21, v9, v10, v11, v12, v13, __src, &__count);
        if (!result)
        {
          v14 = calloc(__count, 1uLL);
          *v2 = v14;
          if (v14)
          {
            memcpy(v14, __src, __count);
            result = 0;
            *v1 = __count;
          }

          else
          {
            return (v3 + 1);
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v23[0] = 136317954;
      OUTLINED_FUNCTION_37_0(v23);
      OUTLINED_FUNCTION_5_6(v15);
      OUTLINED_FUNCTION_79(v16);
      OUTLINED_FUNCTION_76(v17);
      OUTLINED_FUNCTION_15_3(v18);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v23);
    }

    return OUTLINED_FUNCTION_51_0();
  }

  return result;
}

uint64_t aks_get_bag_uuid()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  v20 = 0uLL;
  v17 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v1)
    {
      v18 = v2;
      v0 = OUTLINED_FUNCTION_18_3(aks_client_connection, 0x17u, &v18, v4, v5, v6, v7, v8, &v20, &v17);
      if (!v0)
      {
        *v1 = v20;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317954;
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v11, v12, v13, v14, v15, v16, v17, v18);
  }

  return v0;
}

uint64_t aks_copy_volume_cookie_persona(int a1, uint64_t a2, void *a3, size_t *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = buf;
  v45 = 0;
  memset(__src, 0, sizeof(__src));
  v35 = 0;
  __count = 34;
  HIDWORD(v33) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v8 = 3758097090;
    if (a3 && a4)
    {
      v17 = aks_client_connection;
      v37 = a1;
      OUTLINED_FUNCTION_98(aks_client_connection, v10, v11, v12, v13, v14, v15, v16, a2, 16, v33, 0, 0);
      if (!v35)
      {
        goto LABEL_9;
      }

      v21 = OUTLINED_FUNCTION_54_0(v17, 0x44u, &v37, v18, v35, v34, v19, v20, __src, &__count);
      if (v21)
      {
        v8 = v21;
        goto LABEL_8;
      }

      v22 = calloc(__count, 1uLL);
      *a3 = v22;
      if (v22)
      {
        memcpy(v22, __src, __count);
        v8 = 0;
        *a4 = __count;
      }

      else
      {
LABEL_9:
        v8 = 3758097085;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_45_0();
      v39 = 813;
      v40 = v24;
      v41 = v25;
      v42 = v24;
      v43 = v25;
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v27, v28, v29, v30, v31, v32, v33, 0, __count, v37);
    }

    OUTLINED_FUNCTION_68();
  }

LABEL_8:
  free(v35);
  return v8;
}

uint64_t aks_get_system()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      HIDWORD(v29) = 1;
      OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_47_0();
      v10 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v24, v26);
      v0 = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_94(v10, v11, v12, v13, v14, v15, v16, v17, v25, v27, v28, v29, v30);
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v24, v26, v28, v29, v30, v31);
  }

  return v0;
}

uint64_t aks_set_keybag_for_volume_with_cookie_persona(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  HIDWORD(v39) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v21 = aks_client_connection;
    v42[0] = a1;
    v42[1] = a3;
    v22 = OUTLINED_FUNCTION_101(aks_client_connection, v14, v15, v16, v17, v18, v19, v20, v37, v38, a4, a5, a6, 16, v39, 0);
    aks_pack_data(v22, v23, 3, v24, v25, v26, v27, v28, a2);
    if (v41)
    {
      v6 = OUTLINED_FUNCTION_19_0(v21, 0x41u, v42, 2u, v41, v40, v29, v30, 0, 0);
      v31 = v41;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v43[0] = 136317954;
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_0_4();
      v44 = "aks_set_keybag_for_volume_with_cookie_persona";
      v45 = v33;
      v46 = ":";
      v47 = v34;
      v48 = 1074;
      OUTLINED_FUNCTION_55_0(v35);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v43);
    }

    v31 = 0;
  }

  free(v31);
  return v6;
}

void _aks_backup_enable_volume()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  v35 = 0;
  HIDWORD(v34) = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v21 = aks_client_connection;
    v36 = v11;
    v37 = v9;
    v38 = v7;
    OUTLINED_FUNCTION_96(aks_client_connection, v14, v15, v16, v17, v18, v19, v20, v12, 16, __count, v34, HIDWORD(v34), v35);
    if (v35)
    {
      if (!OUTLINED_FUNCTION_19_0(v21, 0x6Eu, &v36, 3u, v35, SHIDWORD(v34), v22, v23, __src, &__count))
      {
        v24 = calloc(__count, 1uLL);
        *v5 = v24;
        if (v24)
        {
          memcpy(v24, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_16_3(v25);
    OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v27, v28, v29, v30, v31, v32, __count, v34, v35, v36, v37, v38);
  }

  free(v35);
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_backup_disable_volume()
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  HIDWORD(v24) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_98(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23, v24, 0, 0);
    if (v26)
    {
      v0 = OUTLINED_FUNCTION_49_0(v2, 0x6Fu, v11, v12, v26, v25, v13, v14, 0, 0);
      v15 = v26;
    }

    else
    {
      v15 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, 0);
    }

    v15 = 0;
  }

  free(v15);
  return v0;
}

uint64_t aks_backup_copy_current_bag_uuid(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  v28 = 0;
  HIDWORD(v27) = 0;
  v26 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    aks_pack_data(&v28, &v27 + 1, 1, v6, v7, v8, v9, v10, a1);
    if (v28)
    {
      v2 = OUTLINED_FUNCTION_49_0(v11, 0x70u, v12, v13, v28, SHIDWORD(v27), v14, v15, a2, &v26);
      v16 = v28;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    }

    v16 = 0;
  }

  free(v16);
  return v2;
}

uint64_t aks_backup_rewrap_key(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, void *a7)
{
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  v42 = 0;
  HIDWORD(v41) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v23 = aks_client_connection;
    v24 = 0;
    v7 = (v7 + 6);
    if (a2 && a7)
    {
      v43[0] = a4;
      v43[1] = a5;
      v43[2] = a6;
      v25 = OUTLINED_FUNCTION_109(0, v16, v17, v18, v19, v20, v21, v22, a1, 16, a2, a3, v40, v41, v42);
      aks_pack_data(v25, v26, 2, v27, v28, v29, v30, v31, v39);
      v40 = 108;
      v7 = OUTLINED_FUNCTION_19_0(v23, 0x71u, v43, 3u, v42, SHIDWORD(v41), v32, v33, a7, &v40);
      v24 = v42;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v44[0] = 136317954;
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_0_4();
      v45 = "aks_backup_rewrap_key";
      v46 = v35;
      v47 = ":";
      v48 = v36;
      *(v37 + 90) = 1186;
      OUTLINED_FUNCTION_55_0(v37);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v38, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v44);
    }

    v24 = 0;
  }

  free(v24);
  return v7;
}

uint64_t aks_backup_rewrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, void *a9)
{
  v43 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  v34 = 0;
  v33 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v22 = aks_client_connection;
    v23 = 0;
    v9 = (v9 + 6);
    if (a2 && a4 && a9)
    {
      v35[0] = a6;
      v35[1] = a7;
      v35[2] = a8;
      aks_pack_data(&v34, &v33, 3, v17, v18, v19, v20, v21, a1);
      v32 = 108;
      v9 = OUTLINED_FUNCTION_19_0(v22, 0x71u, v35, 3u, v34, v33, v24, v25, a9, &v32);
      v23 = v34;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_11_3();
      v37 = v27;
      v38 = v28;
      v39 = "aks_backup_rewrap_ek";
      v40 = v28;
      v41 = ":";
      v42 = v29;
      OUTLINED_FUNCTION_92(v30);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v36);
    }

    v23 = 0;
  }

  free(v23);
  return v9;
}

uint64_t aks_backup_unwrap_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  OUTLINED_FUNCTION_95();
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  __s = 0u;
  v25 = 0u;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v10 = decode_backup_bag(v8, v9, v22);
  if (v10)
  {
    v18 = v10;
  }

  else
  {
    v10 = unwrap_backup_bag(v22, v6, v5, &__s, v14, v15, v16, v17);
    v18 = v10;
    if (!v10)
    {
      v19 = v25;
      *a5 = __s;
      a5[1] = v19;
      v20 = v27;
      a5[2] = v26;
      a5[3] = v20;
    }
  }

  OUTLINED_FUNCTION_118(v10, v11, v12, v13, v14, v15, v16, v17, *&v22[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return err_sks_to_aks(v18);
}

uint64_t aks_backup_copy_bag_uuid(unint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v4 = decode_backup_bag(a1, a2, v14);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v14 + 8);
  }

  OUTLINED_FUNCTION_118(v4, v5, v6, v7, v8, v9, v10, v11, *&v14[0]);
  return err_sks_to_aks(v12);
}

uint64_t aks_kc_backup_unwrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_86();
  v10 = v9;
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v24 = v10;
      v25 = 64;
      return OUTLINED_FUNCTION_48_0(aks_client_connection, 0x82u, &v24, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317954;
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return v5;
}

uint64_t aks_kc_backup_wrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_86();
  v10 = v9;
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25 = v10;
      return OUTLINED_FUNCTION_48_0(aks_client_connection, 0x81u, &v25, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317954;
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return v5;
}

uint64_t aks_kc_backup_get_handle()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_19_2();
      v10 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v24, v26);
      v0 = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_94(v10, v11, v12, v13, v14, v15, v16, v17, v25, v27, v28, v29, v30);
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v24, v26, v28, v29, v30, v31);
  }

  return v0;
}

uint64_t aks_kc_backup_get_uuid()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      v17 = 16;
      *src = 0;
      v8 = OUTLINED_FUNCTION_18_3(v2, 0x84u, &v20, v3, v4, v5, v6, v7, src, &v17);
      if (v8)
      {
        return v8;
      }

      else if (v17 == 16)
      {
        uuid_copy(v1, src);
        return 0;
      }

      else
      {
        OUTLINED_FUNCTION_45();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317954;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v11, v12, v13, v14, v15, v16, v17, *src, v19, v20);
  }

  return v0;
}

uint64_t aks_kc_backup_open_keybag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v20 = 3758097090;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_95();
  v9 = v8;
  v11 = v10;
  *a5 = -1;
  v15 = aks_backup_unwrap_bag(v10, v8, v12, v13, v14);
  v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (v16)
    {
      *buf = 136317954;
      v31 = "aks.fw";
      v32 = 2080;
      OUTLINED_FUNCTION_0_6();
      v33 = "aks_kc_backup_open_keybag";
      v34 = v17;
      v35 = ":";
      v36 = v18;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", buf);
    }

    v20 = 0;
    goto LABEL_14;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_103();
    v37 = 1389;
    v38 = v21;
    v39 = "";
    v40 = v22;
    v41 = v15;
    v42 = v21;
    v43 = "";
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", buf, 0x78u);
  }

  bag = aks_load_bag(v11, v9, a5);
  if (bag)
  {
    v20 = bag;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_31_1();
    v27 = MEMORY[0x1E69E9C10];
    v28 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n";
  }

  else
  {
    aks_prederived_is_enabled();
    v25 = v24;
    v26 = *a5;
    if (v25)
    {
      v20 = aks_prederived_unlock_keybag(v26, v6, v5, 0);
      if (!v20)
      {
        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_31_1();
      v27 = MEMORY[0x1E69E9C10];
      v28 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n";
    }

    else
    {
      v20 = _aks_unlock_bag(v26, v6, v5, 0);
      if (!v20)
      {
        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_31_1();
      v27 = MEMORY[0x1E69E9C10];
      v28 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n";
    }
  }

  _os_log_impl(&dword_1E0B50000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x78u);
LABEL_21:
  if (*a5 != -1)
  {
    aks_unload_bag(*a5);
    *a5 = -1;
  }

LABEL_14:
  aks_prederived_free(0);
  return v20;
}

uint64_t aks_keybag_persona_create()
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_25_0();
  HIDWORD(v29) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_96(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v29, 0, 0);
    if (v30)
    {
      OUTLINED_FUNCTION_50_0();
      v0 = OUTLINED_FUNCTION_19_0(v2, 0x60u, v11, 3u, v12, v13, v14, v15, v25, v27);
      v16 = v30;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_102(v18);
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v24, v26, v28, v29, 0, v31, v32, v33);
    }

    v16 = 0;
  }

  free(v16);
  return v0;
}

uint64_t aks_keybag_persona_create_with_flags(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v39 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  HIDWORD(v32) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    v35 = a1;
    v36 = a2;
    v37 = a3;
    v38 = a5;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_98(v12, v13, v14, v15, v16, v17, v18, v19, v30, v31, v32, 0, 0);
    if (v34)
    {
      v5 = OUTLINED_FUNCTION_19_0(v11, 0x75u, &v35, 4u, v34, v33, v20, v21, 0, 0);
      v22 = v34;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_64();
      *(v24 + 90) = 1445;
      OUTLINED_FUNCTION_102(v24);
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v26, v27, v28, v29, v30, v31, v32, 0, v35, v36, v37, v38);
    }

    v22 = 0;
  }

  free(v22);
  return v5;
}

uint64_t aks_keybag_persona_list(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  OUTLINED_FUNCTION_70();
  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_77();
  bzero(__src, 0x2000uLL);
  v5 = (v2 + 6);
  if (v1 && v4)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_105();
      v13 = OUTLINED_FUNCTION_18_3(v6, 0x61u, v7, v8, v9, v10, v11, v12, v21, v22);
      if (v13)
      {
        v5 = v13;
      }

      else
      {
        v14 = calloc(0x2000uLL, 1uLL);
        *v1 = v14;
        if (v14)
        {
          memcpy(v14, __src, 0x2000uLL);
          v5 = 0;
          *v4 = 0x2000;
        }

        else
        {
          v5 = (v2 + 1);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v17, v18, v19, v20, v21, v22, v23, 0x2000);
      }

      OUTLINED_FUNCTION_68();
    }
  }

  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  return v5;
}

uint64_t aks_keybag_persona_delete()
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  HIDWORD(v29) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_96(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v29, 0, 0);
    if (v30)
    {
      OUTLINED_FUNCTION_50_0();
      v0 = OUTLINED_FUNCTION_54_0(v2, 0x62u, v11, v12, v13, v14, v15, v16, v25, v27);
      v17 = v30;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v24, v26, v28, v29, 0, v31);
    }

    v17 = 0;
  }

  free(v17);
  return v0;
}

uint64_t aks_auth_token_create(int a1, uint64_t a2, int a3, unsigned int a4, void *a5, size_t *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v6 + 6);
    if (a5 && a6)
    {
      v26 = a1;
      v27 = a4;
      v28 = a2;
      v29 = a3;
      return OUTLINED_FUNCTION_5_2(aks_client_connection, 0x26u, &v26, 4u, v14, v15, v16, v17, a5, a6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317954;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  return v6;
}

void aks_fdr_hmac_data()
{
  OUTLINED_FUNCTION_117();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_108();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v8)
    {
      if (v5)
      {
        if (v3)
        {
          if (!OUTLINED_FUNCTION_19_0(aks_client_connection, 0x29u, 0, 0, v8, v7, v10, v11, __src, &__count))
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              memcpy(v12, __src, __count);
              *v3 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v14, v15, v16, v17, v18, v19, v20, __count);
    }

    OUTLINED_FUNCTION_68();
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  OUTLINED_FUNCTION_112();
}

void aks_create_signing_key_with_params()
{
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_110();
  if (v3)
  {
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      OUTLINED_FUNCTION_95();
      bzero(__src, 0x8000uLL);
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        if (!OUTLINED_FUNCTION_19_0(aks_client_connection, 0x31u, v22, 2u, v1, v0, v8, v9, __src, &__count) && __count <= 0x8000)
        {
          v10 = calloc(__count, 1uLL);
          *v6 = v10;
          if (v10)
          {
            memcpy(v10, __src, __count);
            OUTLINED_FUNCTION_100();
            *v5 = v11;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136317954;
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v13, v14, v15, v16, v17, v18, v19, __count);
        }

        OUTLINED_FUNCTION_51_0();
      }
    }
  }

  OUTLINED_FUNCTION_112();
}

void remote_session_operate()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v4;
  OUTLINED_FUNCTION_82();
  v7 = v6;
  v9 = v8;
  v31 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x3C00uLL);
  __count = 15360;
  v27 = v9;
  v28 = v2;
  v29 = v1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (OUTLINED_FUNCTION_5_2(aks_client_connection, v7, &v27, 3u, v11, v12, v13, v14, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x3C00)
    {
      OUTLINED_FUNCTION_45();
    }

    else if (v0 && v5)
    {
      if (__count)
      {
        v15 = calloc(__count, 1uLL);
        *v0 = v15;
        if (!v15)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        memcpy(v15, __src, __count);
        v16 = __count;
      }

      else
      {
        v16 = 0;
      }

      *v5 = v16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, __count);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_drain_backup_keys(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_75();
  v7 = v6;
  OUTLINED_FUNCTION_59_0(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v16 = aks_client_connection;
    result = (v3 + 6);
    if (v2)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_119(result, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, __count);
        __count = v4;
        v33[0] = v7;
        v33[1] = 0;
        result = OUTLINED_FUNCTION_5_2(v16, 0x14u, v33, 2u, v18, v19, v20, v21, v5, &__count);
        if (!result)
        {
          if (__count)
          {
            v22 = calloc(__count, 1uLL);
            *v2 = v22;
            if (v22)
            {
              memcpy(v22, __src, __count);
              result = OUTLINED_FUNCTION_100();
              *v1 = v23;
            }

            else
            {
              return (v3 + 1);
            }
          }

          else
          {
            return (v3 + 52);
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v35[0] = 136317954;
      OUTLINED_FUNCTION_37_0(v35);
      OUTLINED_FUNCTION_5_6(v24);
      OUTLINED_FUNCTION_79(v25);
      OUTLINED_FUNCTION_76(v26);
      OUTLINED_FUNCTION_15_3(v27);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v28, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v35);
    }

    return OUTLINED_FUNCTION_51_0();
  }

  return result;
}

void aks_set_backup_bag()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v33 = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v14 = aks_client_connection;
    if (v5)
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      v15 = __src;
      p_count = &__count;
      v17 = 1;
    }

    else
    {
      p_count = 0;
      v15 = 0;
      v17 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v30[0] = v12;
    v30[1] = v11;
    v30[2] = v17;
    v30[3] = v9;
    v30[4] = v7;
    v22 = OUTLINED_FUNCTION_5_2(v14, 0x15u, v30, 5u, v18, v19, v20, v21, v15, p_count);
    if (v5 && !v22)
    {
      v23 = calloc(__count, 1uLL);
      *v5 = v23;
      if (v23)
      {
        memcpy(v23, __src, __count);
        *v3 = __count;
      }

      else
      {
        OUTLINED_FUNCTION_30_2();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v32[0] = 136317954;
      OUTLINED_FUNCTION_37_0(v32);
      OUTLINED_FUNCTION_5_6(v24);
      OUTLINED_FUNCTION_79(v25);
      OUTLINED_FUNCTION_76(v26);
      OUTLINED_FUNCTION_15_3(v27);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v28, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v32);
    }

    OUTLINED_FUNCTION_51_0();
  }

LABEL_10:
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_make_public_backup_bag()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_19_2();
      v10 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v24, v26);
      v0 = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_94(v10, v11, v12, v13, v14, v15, v16, v17, v25, v27, v28, v29, v30);
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v24, v26, v28, v29, v30, v31);
  }

  return v0;
}

void aks_smartcard_register()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28[4] = *MEMORY[0x1E69E9840];
  v28[0] = v8;
  v28[1] = v9;
  v28[2] = v10;
  v28[3] = v11;
  bzero(__src, 0x800uLL);
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (OUTLINED_FUNCTION_19_0(aks_client_connection, 0x3Bu, v28, 4u, v7, v5, v13, v14, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_45();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v15 = calloc(__count, 1uLL);
        *v3 = v15;
        if (!v15)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        memcpy(v15, __src, __count);
        v16 = __count;
      }

      else
      {
        v16 = 0;
      }

      *v1 = v16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, __count);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_112();
}

void aks_smartcard_request_unlock()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_99();
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = v4;
  bzero(__src, 0x800uLL);
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (OUTLINED_FUNCTION_19_0(aks_client_connection, 0x3Du, v21, 1u, v3, v0, v6, v7, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_45();
    }

    else if (v2 && v1)
    {
      if (__count)
      {
        v8 = calloc(__count, 1uLL);
        *v2 = v8;
        if (!v8)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        memcpy(v8, __src, __count);
        v9 = __count;
      }

      else
      {
        v9 = 0;
      }

      *v1 = v9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v11, v12, v13, v14, v15, v16, v17, __count);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_112();
}

void aks_smartcard_unlock()
{
  OUTLINED_FUNCTION_14_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_82();
  v8 = v7;
  v48[1] = *MEMORY[0x1E69E9840];
  v48[0] = v9;
  bzero(__src, 0x800uLL);
  v18 = OUTLINED_FUNCTION_101(v10, v11, v12, v13, v14, v15, v16, v17, v36, v38, v1, v0, v41, 2048, v44, 0);
  aks_pack_data(v18, v19, 2, v20, v21, v22, v23, v24, v8);
  if (v45)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      if (!OUTLINED_FUNCTION_54_0(aks_client_connection, 0x3Eu, v48, v26, v45, SHIDWORD(v44), v27, v28, __src, &__count) && __count <= 0x800 && v6 && v4)
      {
        if (__count)
        {
          v29 = calloc(__count, 1uLL);
          *v6 = v29;
          if (!v29)
          {
            goto LABEL_12;
          }

          memcpy(v29, __src, __count);
          v30 = __count;
        }

        else
        {
          v30 = 0;
        }

        *v4 = v30;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317954;
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_8_3();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v32, v33, v34, v35, v37, v2, v39, v40, v42, __count, v44, v45);
      }

      OUTLINED_FUNCTION_68();
    }
  }

LABEL_12:
  free(v45);
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_smartcard_get_sc_usk(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_enc_sc_usk, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_foo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    OUTLINED_FUNCTION_13_3();
    der_dict_iterate();
    if (a2)
    {
      if (*a6 == 8)
      {
        number = der_get_number();
        result = 0;
        *a5 = number;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    v11 = ccder_decode_tl();
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v11;
    result = 0;
    *a5 = v12;
    *a6 = 0;
  }

  return result;
}

uint64_t aks_smartcard_get_ec_pub(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_auth_eph_pub, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_mode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_mode, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t aks_smartcard_get_version(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_version, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void _aks_se_get_reset_token_for_memento_secret()
{
  OUTLINED_FUNCTION_117();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v48[4] = *MEMORY[0x1E69E9840];
  v48[0] = v1;
  v48[1] = v6;
  v48[2] = v7;
  v48[3] = v8;
  bzero(v47, 0x1000uLL);
  __n[0] = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x48u, v48, 4u, v10, v11, v12, v13, v47, __n) && __n[0] - 4097 >= 0xFFFFFFFFFFFFF000)
    {
      v23 = 0;
      v22 = 0u;
      v20 = 0u;
      v19 = 0u;
      __n[1] = der_key_config_se_reset_token;
      v21 = der_key_config_se_slot;
      OUTLINED_FUNCTION_13_3();
      der_dict_iterate();
      v14 = *(&v21 + 1);
      if (v19)
      {
        *v24 = 0;
        ccder_decode_tl();
        if (*v24 != 16)
        {
          goto LABEL_11;
        }

        v15 = calloc(0x10uLL, 1uLL);
        *v5 = v15;
        if (!v15)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        __memcpy_chk();
      }

      if (v14)
      {
        number = der_get_number();
        if (number <= 0xFF)
        {
          *v3 = number;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_68();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136317954;
      *&v24[4] = "aks.fw";
      v25 = 2080;
      v26 = "";
      v27 = 1024;
      v28 = -1;
      v29 = 2080;
      v30 = "";
      v31 = 2080;
      v32 = "";
      v33 = 2080;
      v34 = "";
      v35 = 2080;
      v36 = "";
      v37 = 2080;
      v38 = "_aks_se_get_reset_token_for_memento_secret";
      v39 = 2080;
      v40 = ":";
      v41 = 1024;
      v42 = 2923;
      v43 = 2080;
      v44 = "";
      v45 = 2080;
      v46 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v24);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_22_1(v47, __n[0]);
  OUTLINED_FUNCTION_112();
}

void aks_se_get_reset_sig()
{
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_75();
  v56 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_108();
  *&v55[4091] = v7;
  OUTLINED_FUNCTION_120(v7, v8, v9, v10, v11, v12, v13, v14, v29, v31, v33, __n, buf, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  __na = 4096;
  if (v1 && v0 && v6 && v4)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_84();
      if (!OUTLINED_FUNCTION_18_3(v15, 0x5Au, &v55[4091], v16, v17, v18, v19, v20, v30, v32))
      {
        v21 = calloc(5uLL, 1uLL);
        *v6 = v21;
        if (v21)
        {
          *v4 = 5;
          v22 = v53;
          v21[4] = v54;
          *v21 = v22;
          v23 = calloc(0xFFBuLL, 1uLL);
          *v1 = v23;
          if (v23)
          {
            *v0 = 4091;
            memcpy(v23, v55, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v25, v26, v27, v28, v30, v32, v34, 4096);
      }

      OUTLINED_FUNCTION_77();
    }
  }

  OUTLINED_FUNCTION_22_1(&v53, __na);
  OUTLINED_FUNCTION_112();
}

uint64_t aks_se_get_reset_pubkey(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v50[1] = *MEMORY[0x1E69E9840];
  v50[0] = v1;
  OUTLINED_FUNCTION_120(v1, v4, v2, v6, v7, v8, v9, v10, v26, v28, v30, __count, buf, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v11 = 3758097090;
  if (v5 && v3)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_84();
      v18 = OUTLINED_FUNCTION_18_3(v12, 0x59u, v50, v13, v14, v15, v16, v17, v27, v29);
      if (v18)
      {
        v11 = v18;
      }

      else
      {
        v19 = calloc(0x1000uLL, 1uLL);
        *v5 = v19;
        if (v19)
        {
          *v3 = 4096;
          memcpy(v19, __src, 0x1000uLL);
          v11 = 0;
        }

        else
        {
          v11 = 3758097085;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v22, v23, v24, v25, v27, v29, v31, 4096);
      }

      OUTLINED_FUNCTION_77();
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  return v11;
}

void aks_se_get_passcode_derivation()
{
  OUTLINED_FUNCTION_14_0();
  v28 = v1;
  v29 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v57 = *MEMORY[0x1E69E9840];
  memset(v56, 0, 128);
  v30 = 128;
  v14 = se_derivation_request_serialization_len(v8, v6, v4, v2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  bzero(&v27 - v15, v14);
  if (!se_derivation_request_serialize(v11, v9, v7, v5, v3, v16, v14))
  {
    OUTLINED_FUNCTION_77();
    v55[0] = v13;
    v55[1] = v16;
    v55[2] = v14;
    v17 = v29;
    if (v29)
    {
      v18 = v28;
      if (v28)
      {
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x9Bu, v55, 3u, v20, v21, v22, v23, v56, &v30))
          {
            v24 = calloc(v30, 1uLL);
            *v17 = v24;
            if (v24)
            {
              v25 = v30;
              *v18 = v30;
              memcpy(v24, v56, v25);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v31 = 136317954;
            v32 = "aks.fw";
            v33 = 2080;
            v34 = "";
            v35 = 1024;
            v36 = -1;
            v37 = 2080;
            v38 = "";
            v39 = 2080;
            v40 = "";
            v41 = 2080;
            v42 = "";
            v43 = 2080;
            v44 = "";
            v45 = 2080;
            v46 = "aks_se_get_passcode_derivation";
            v47 = 2080;
            v48 = ":";
            v49 = 1024;
            v50 = 3152;
            v51 = 2080;
            v52 = "";
            v53 = 2080;
            v54 = "";
            OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v31);
          }

          OUTLINED_FUNCTION_108();
        }
      }
    }
  }

  memset_s(v16, v14, 0, v14);
  OUTLINED_FUNCTION_22_1(v56, v30);
  OUTLINED_FUNCTION_13_0();
}

void aks_get_icsc_srp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  OUTLINED_FUNCTION_14_0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v83 = *MEMORY[0x1E69E9840];
  v80 = v26;
  v82 = 0;
  v81 = 0;
  bzero(__src, 0x4000uLL);
  v53 = a23;
  __count = 0x4000;
  v50[0] = v40;
  memset(__n, 0, sizeof(__n));
  v50[1] = v38;
  v50[2] = v36;
  v50[3] = v34;
  v50[4] = v32;
  OUTLINED_FUNCTION_77();
  v50[5] = v30;
  v50[6] = v28;
  v51 = a21;
  v52 = a22;
  if (!encode_icsc_params_internal(v50, &__n[1], __n))
  {
    v81 = *&__n[1];
    v82 = __n[0];
    if (a24)
    {
      if (a25)
      {
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x9Fu, &v80, 3u, v42, v43, v44, v45, __src, &__count))
          {
            v46 = calloc(__count, 1uLL);
            *a24 = v46;
            if (v46)
            {
              v47 = __count;
              *a25 = __count;
              memcpy(v46, __src, v47);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v55 = 136317954;
            v56 = "aks.fw";
            v57 = 2080;
            v58 = "";
            v59 = 1024;
            v60 = -1;
            v61 = 2080;
            v62 = "";
            v63 = 2080;
            v64 = "";
            v65 = 2080;
            v66 = "";
            v67 = 2080;
            v68 = "";
            v69 = 2080;
            v70 = "aks_get_icsc_srp";
            v71 = 2080;
            v72 = ":";
            v73 = 1024;
            v74 = 3201;
            v75 = 2080;
            v76 = "";
            v77 = 2080;
            v78 = "";
            OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v48, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v55);
          }

          OUTLINED_FUNCTION_25_0();
        }
      }
    }
  }

  OUTLINED_FUNCTION_22_1(*&__n[1], __n[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_22_1(__src, __count);
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_fv_get_blob_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v56 = *MEMORY[0x1E69E9840];
  v11 = OUTLINED_FUNCTION_90(v1, v4, v2, v6, v7, v8, v9, v10, v31, v33, v35, v37, v38, v39, *buf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0]);
  bzero(v11, v12);
  v37 = v55;
  v38 = &v56;
  v39 = 4096;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_data(&v37);
      if (v13)
      {
        v13 = der_utils_encode_fv_params(&v37);
        if (v13)
        {
          OUTLINED_FUNCTION_17();
          v13 = ccder_blob_encode_tl();
          if (v13)
          {
            v13 = OUTLINED_FUNCTION_49_0(v22, 0x55u, v15, v16, v38, &v56 - v38, v19, v20, v55, &v39);
            if (!v13)
            {
              v13 = decode_fv_blob_state(v55);
            }
          }
        }
      }
    }

    else
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        *buf = 136317954;
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v27, v28, v29, v30, v32, v34, v36, v37, v38, v39);
      }
    }
  }

  v23 = OUTLINED_FUNCTION_90(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34, v36, v37, v38, v39, *buf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0]);
  memset_s(v23, v24, 0, 0x1000uLL);
  return OUTLINED_FUNCTION_57_0();
}

uint64_t aks_fv_get_last_known_gp_state(__int128 *a1)
{
  v7 = 0;
  v5 = &v7;
  v6 = 1;
  v3 = 0uLL;
  v4 = 0;
  if (a1)
  {
    v3 = *a1;
    v4 = *(a1 + 2);
    v1 = *(&v3 + 1) | 0x10;
  }

  else
  {
    v1 = 16;
  }

  *(&v3 + 1) = v1;
  return aks_fv_get_blob_state(&v3);
}

uint64_t aks_fv_get_size(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  input[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  output = 0;
  input[0] = v3;
  HIDWORD(v39) = 1;
  v11 = OUTLINED_FUNCTION_90(v4, v3, v5, v6, v7, v8, v9, v10, outputStruct, v33, v35, v37, inputStruct, v39, buf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  bzero(v11, v12);
  v37 = &v55;
  inputStruct = &output;
  if (v2)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_params(&v37);
      if (v13)
      {
        OUTLINED_FUNCTION_17();
        v13 = ccder_blob_encode_tl();
        if (v13)
        {
          v13 = IOConnectCallMethod(v22, 0x4Eu, input, 1u, inputStruct, &output - inputStruct, &output, &v39 + 1, 0, 0);
          if (!v13)
          {
            *v2 = output;
          }
        }
      }
    }

    else
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        LODWORD(buf) = 136317954;
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v27, v28, v29, v30, outputStructa, v34, v36, v37, inputStruct, v39);
      }
    }
  }

  v23 = OUTLINED_FUNCTION_90(v13, v14, v15, v16, v17, v18, v19, v20, outputStructa, v34, v36, v37, inputStruct, v39, buf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  memset_s(v23, v24, 0, 0x1000uLL);
  return OUTLINED_FUNCTION_67();
}

void aks_fv_import()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = v7;
  bzero(__s, 0x1000uLL);
  v23 = __s;
  v24 = v27;
  v25 = 4096;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v9 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v23))
        {
          if (der_utils_encode_fv_params(&v23))
          {
            OUTLINED_FUNCTION_17();
            if (ccder_blob_encode_tl())
            {
              if (!OUTLINED_FUNCTION_54_0(v9, 0x4Fu, v27, v10, v24, v27 - v24, v11, v12, __s, &v25))
              {
                *&v22 = __s;
                *(&v22 + 1) = &__s[v25];
                OUTLINED_FUNCTION_17();
                if (ccder_blob_decode_range())
                {
                  if (v2)
                  {
                    der_utils_decode_fv_data(&v22, 0, v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_16_3(v13);
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v15, v16, v17, v18, v19, v20, v21, v22, *(&v22 + 1), v23, v24, v25);
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_fv_is_access_token_unbound(uint64_t a1, BOOL *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (!a2)
  {
    return 3758097090;
  }

  result = aks_fv_get_blob_state(v4);
  if (!result)
  {
    if (v5 == 1)
    {
      result = 0;
      *a2 = (DWORD1(v7) & 0x8000000) != 0;
    }

    else
    {
      return 3758604312;
    }
  }

  return result;
}

void aks_fv_grant_ownership()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_82();
  v5 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x1000uLL);
  bzero(v3, 0x1000uLL);
  v2[0] = v4;
  v2[1] = &v5;
  v1[0] = v3;
  v1[1] = v4;
  if (der_utils_encode_fv_data(v2))
  {
    if (der_utils_encode_fv_data(v2))
    {
      OUTLINED_FUNCTION_17();
      if (ccder_blob_encode_tl())
      {
        if (der_utils_encode_fv_data(v1))
        {
          if (der_utils_encode_fv_data(v1))
          {
            OUTLINED_FUNCTION_17();
            if (ccder_blob_encode_tl())
            {
              aks_fv_set_protection();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_13_0();
}

void aks_fv_sidp_status(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_75();
  v5 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x4000uLL);
  OUTLINED_FUNCTION_47_0();
  aks_fv_set_protection();
  if (!v3)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v2)
      {
        *v2 = 0;
      }

      if (v1)
      {
        *v1 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_51_0();
    }
  }
}

void aks_absinthe_collection()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_85();
  v4 = v3;
  v6 = v5;
  v48[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  *v8 = v7;
  bzero(__src, 0x8000uLL);
  v44 = 0;
  __count = 0x8000;
  HIDWORD(v42) = 0;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v17 = aks_client_connection;
      v18 = "";
      if (v6)
      {
        v18 = v6;
        v19 = v4;
      }

      else
      {
        v19 = 0;
      }

      v20 = OUTLINED_FUNCTION_109(aks_client_connection, v10, v11, v12, v13, v14, v15, v16, v37, v38, v18, v19, v41, v42, 0);
      aks_pack_data(v20, v21, 2, v22, v23, v24, v25, v26, v27);
      if (!OUTLINED_FUNCTION_54_0(v17, 0x50u, v48, v28, v44, v43, v29, v30, __src, &__count))
      {
        v31 = calloc(__count, 1uLL);
        *v1 = v31;
        if (v31)
        {
          memcpy(v31, __src, __count);
          *v0 = __count;
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_23_3();
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, 0, __count);
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v44);
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_absinthe_generate(unsigned int a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v46[0] = a1;
  OUTLINED_FUNCTION_30_2();
  v44 = 0;
  HIDWORD(v43) = 0;
  v6 = (v5 + 6);
  if (v1)
  {
    v7 = v3;
    if (v3)
    {
      v8 = v4;
      if (v4)
      {
        v9 = v2;
        v10 = v1;
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          v19 = aks_client_connection;
          v20 = OUTLINED_FUNCTION_101(aks_client_connection, v12, v13, v14, v15, v16, v17, v18, v10, v9, v39, v40, v41, v42, v43, v44);
          aks_pack_data(v20, v21, 2, v22, v23, v24, v25, v26, v37);
          v42 = *v8;
          v6 = OUTLINED_FUNCTION_54_0(v19, 0x51u, v46, v27, v44, SHIDWORD(v43), v28, v29, v7, &v42);
          if (!v6)
          {
            *v8 = v42;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136317954;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_8_3();
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_88();
            OUTLINED_FUNCTION_23_3();
            OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44);
          }

          OUTLINED_FUNCTION_68();
        }
      }
    }
  }

  free(v44);
  return v6;
}

uint64_t aks_get_current_sep_measurement()
{
  OUTLINED_FUNCTION_25_0();
  if (v2 && v1 && !aks_get_internal_info_for_key(0xFFFFFFFFLL))
  {
    der_dict_get_data(der_key_sep_measurement);
  }

  free(0);
  return v0;
}

uint64_t aks_get_seconds_since_passcode_change(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_25_0();
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!aks_get_internal_info_for_key(v4) && der_dict_get_number(der_key_passcode_change_time, v10, v10 + v9, &v8))
  {
    if (a2)
    {
      v5 = time(0);
      v2 = 0;
      v6 = v5 - v8;
      if (v5 <= v8)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v10);
  return v2;
}

uint64_t aks_get_internal_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v46[1] = *MEMORY[0x1E69E9840];
  v46[0] = v1;
  OUTLINED_FUNCTION_120(v1, v2, v4, v5, v6, v7, v8, v9, v22, v24, v26, __n, buf, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  if (get_aks_client_connection())
  {
    if (v3)
    {
      OUTLINED_FUNCTION_84();
      if (!OUTLINED_FUNCTION_18_3(v10, 0x8Eu, v46, v11, v12, v13, v14, v15, v23, v25))
      {
        decode_extended_state(v45);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v23, v25, v27, 4096);
  }

  OUTLINED_FUNCTION_22_1(v45, 0x1000uLL);
  return OUTLINED_FUNCTION_57_0();
}

uint64_t aks_fairplay_wrap()
{
  v20[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_2();
  v20[0] = 266;
  result = (v1 + 6);
  if (v3)
  {
    v4 = v0;
    if (v0)
    {
      if (get_aks_client_connection())
      {
        v19 = *v4;
        OUTLINED_FUNCTION_106();
        result = OUTLINED_FUNCTION_48_0(v5, 0x68u, v20, 1u, v6, v7, v8, v9, v15, v16);
        if (!result)
        {
          *v4 = v19;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v11, v12, v13, v14, v15, v16, v17, v18);
        }

        return OUTLINED_FUNCTION_51_0();
      }
    }
  }

  return result;
}

uint64_t _fairplay_generate_csk_internal()
{
  v21[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_2();
  v21[0] = (v1 << 8) | 1;
  result = (v2 + 6);
  if (v4)
  {
    v5 = v0;
    if (v0)
    {
      OUTLINED_FUNCTION_86();
      if (get_aks_client_connection())
      {
        v20 = *v5;
        OUTLINED_FUNCTION_106();
        result = OUTLINED_FUNCTION_48_0(v6, 0x68u, v21, 1u, v7, v8, v9, v10, v16, v17);
        if (!result)
        {
          *v5 = v20;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v12, v13, v14, v15, v16, v17, v18, v19);
        }

        return OUTLINED_FUNCTION_51_0();
      }
    }
  }

  return result;
}

size_t aks_bak_get_beacon_internal(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_99();
  v6 = v5;
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  bzero(v25, 0x4000uLL);
  v22 = 0x4000;
  v24[0] = 1;
  v24[1] = v6;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = OUTLINED_FUNCTION_19_0(aks_client_connection, 0x87u, v24, 2u, v4, v1, v8, v9, v25, &v22);
    if (v10)
    {
      v1 = v10;
    }

    else
    {
      __memcpy_chk();
      *v2 = 44;
      v11 = calloc(0x2CuLL, 1uLL);
      *v3 = v11;
      if (v11)
      {
        __memcpy_chk();
        v1 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_30_2();
        v1 = v18 | 1u;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v14, v15, v16, v17, v19, v20, v21, v22);
    }
  }

  OUTLINED_FUNCTION_97(v25);
  return v1;
}

size_t aks_bak_get_beacon()
{
  OUTLINED_FUNCTION_85();
  beacon_internal = aks_bak_get_beacon_internal(v0 ^ 1u | (v1 << 16));
  if (beacon_internal)
  {
    return beacon_internal;
  }

  else
  {
    return 3758604312;
  }
}

void aks_bak_get_swizzler_internal()
{
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v3;
  OUTLINED_FUNCTION_95();
  v6 = v5;
  v32[2] = *MEMORY[0x1E69E9840];
  v32[0] = 2;
  v32[1] = v7;
  bzero(v28, 0xC4uLL);
  bzero(v27, 0x4000uLL);
  v25 = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x87u, v32, 2u, v9, v10, v11, v12, v27, &v25))
    {
      OUTLINED_FUNCTION_25_0();
      __memcpy_chk();
      v13 = calloc(0x28uLL, 1uLL);
      *v6 = v13;
      if (v13)
      {
        *v1 = 40;
        v14 = *&v28[8];
        v15 = v29;
        v13[4] = v30;
        *v13 = v14;
        *(v13 + 1) = v15;
        v16 = calloc(0x91uLL, 1uLL);
        *v0 = v16;
        if (v16)
        {
          *v4 = 145;
          memcpy(v16, v31, 0x91uLL);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  OUTLINED_FUNCTION_97(v27);
  memset_s(v28, 0xC4uLL, 0, 0xC4uLL);
  OUTLINED_FUNCTION_112();
}

uint64_t aks_test_stashed_kek(uint64_t a1)
{
  akstest_client_connection = get_akstest_client_connection();
  if (akstest_client_connection)
  {
    return OUTLINED_FUNCTION_49_0(akstest_client_connection, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return OUTLINED_FUNCTION_51_0();
  }
}

uint64_t aks_get_dsme_key(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_77();
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = OUTLINED_FUNCTION_5_2(aks_client_connection, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v17, v18, v19, v20, v21, v22, v23, __count);
    }

    OUTLINED_FUNCTION_68();
  }

  OUTLINED_FUNCTION_97(__src);
  return v6;
}

void aks_sealed_hashes_set()
{
  OUTLINED_FUNCTION_14_0();
  v35 = *MEMORY[0x1E69E9840];
  if (v1 && v0 <= 0x30)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v3 = aks_client_connection;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      v5 = v4;
      MEMORY[0x1EEE9AC00](v4);
      v7 = &v11 - v6;
      bzero(&v11 - v6, v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        OUTLINED_FUNCTION_19_0(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        OUTLINED_FUNCTION_30_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_0();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136317954;
        v12 = "aks.fw";
        v13 = 2080;
        v14 = "";
        v15 = 1024;
        v16 = -1;
        v17 = 2080;
        v18 = "";
        v19 = 2080;
        v20 = "";
        v21 = 2080;
        v22 = "";
        v23 = 2080;
        v24 = "";
        v25 = 2080;
        v26 = "aks_sealed_hashes_set";
        v27 = 2080;
        v28 = ":";
        v29 = 1024;
        v30 = 4036;
        v31 = 2080;
        v32 = "";
        v33 = 2080;
        v34 = "";
        OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v11);
      }
    }
  }

  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_memento_get_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v47[1] = *MEMORY[0x1E69E9840];
  v47[0] = v1;
  OUTLINED_FUNCTION_120(v1, v2, v3, v4, v5, v6, v7, v8, v23, v25, v27, __n, *buf, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  __n = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v15 = OUTLINED_FUNCTION_18_3(aks_client_connection, 0x8Bu, v47, v10, v11, v12, v13, v14, v46, &__n);
    v16 = __n;
    if (!v15)
    {
      OUTLINED_FUNCTION_30_2();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        decode_memento_state(v46);
        v16 = __n;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v24, v26, v28, __n);
    }

    v16 = 4096;
  }

  OUTLINED_FUNCTION_22_1(v46, v16);
  return OUTLINED_FUNCTION_57_0();
}

uint64_t aks_get_cx_window(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v19[512] = *MEMORY[0x1E69E9840];
  v17 = 4096;
  if (v1)
  {
    v2 = v1;
    bzero(v19, 0x1000uLL);
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x98u, 0, 0, v4, v5, v6, v7, v19, &v17))
      {
        if (v17 == 8)
        {
          *v2 = v19[0];
        }

        else
        {
          OUTLINED_FUNCTION_45();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_0();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317954;
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }

  return OUTLINED_FUNCTION_67();
}

void AKSGetStashStats()
{
  OUTLINED_FUNCTION_117();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v27 = *MEMORY[0x1E69E9840];
  bzero(v26, 0x1000uLL);
  v21 = 4096;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x9Eu, 0, 0, v10, v11, v12, v13, v26, &v21) && !stash_stats_deserialize(v26, v21, &v18))
    {
      if (v8)
      {
        *v8 = *(&v20 + 1);
      }

      if (v7)
      {
        *v7 = v20;
      }

      if (v5)
      {
        *v5 = *(&v19 + 1);
      }

      if (v3)
      {
        *v3 = v19;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 136317954;
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_0_4();
    *(v14 + 70) = "AKSGetStashStats";
    v23 = v15;
    v24 = ":";
    v25 = v16;
    *(v14 + 90) = 4204;
    OUTLINED_FUNCTION_55_0(v14);
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v22);
  }

  OUTLINED_FUNCTION_112();
}

uint64_t _copy_cf_key(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v9 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v9) || encode_list_add_number(a5, a4, v9))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        if (encode_list_add_BOOL())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        if (encode_list_add_data())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void aks_stash_destroy_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_stash_commit_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_stash_enable_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_stash_persist_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_invalidate_sync_bags_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_unload_bag_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_unload_session_bags_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_change_secret_with_kek_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_lock_bag_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void _aks_unlock_bag_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void _aks_set_system_with_passcode_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_assert_hold_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_assert_drop_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_assert_promote_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_oneness_heartbeat_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_assert_consume_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void _aks_recover_with_escrow_bag_cold_1(void *a1, _DWORD *a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v4, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v5, v6, v7, v8, v10);
  }

  OUTLINED_FUNCTION_30_2();
  *a2 = v9;
  *a1 = 0;
}

void aks_generation_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_register_for_notifications_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_clear_backup_bag_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_remote_reset_all_peers_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_remote_peer_drop_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_lock_device_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_lock_cx_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_unlock_device_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_unlock_device_with_acm_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_obliterate_class_d_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_migrate_s_key_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_smartcard_unregister_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_fail_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_set_healthy_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void __aks_se_set_secret_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_recover_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_recover_with_acm_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void _aks_change_secret_epilogue_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_set_nonce_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_delete_reset_token_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_support_in_rm_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_support_in_rm_is_set_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_stage_stash_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_enable_cache_flow_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_drop_auxiliary_auth_by_uid_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_drop_auxiliary_auth_by_handle_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_lower_iteration_count_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_reset_iteration_count_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_secret_drop_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_se_memento_secret_drop_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_prewarm_sps_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_measure_and_seal_cryptex_manifest_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_seal_cryptex_manifest_lock_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_lkgp_recover_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_memento_efface_blob_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_set_jcop_supports_updated_kud_policy_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void aks_set_cx_window_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t AKSIdentityLogin(const __CFUUID *a1, const __CFData *a2, int a3, CFTypeRef *a4)
{
  result = AKSIdentityLoad(a1, a3, a4);
  if (result)
  {
    if (a3 >= 10)
    {
      v12 = -a3;
    }

    else
    {
      v12 = -1;
    }

    if (AKSIdentityUnlockInternal(v12, a2, 0, a4, v8, v9, v10, v11))
    {
      return 1;
    }

    else
    {
      AKSIdentityUnload(a3, 0);
      return 0;
    }
  }

  return result;
}

uint64_t AKSIdentityLoginWithACMCredOnVolume(uint64_t a1, const __CFUUID *a2, const __CFData *a3, int a4, CFTypeRef *a5)
{
  if (a4 >= 10)
  {
    v6 = -a4;
  }

  else
  {
    v6 = -1;
  }

  if (a1)
  {
    create_error(0xE00002E6, a5);
    return 0;
  }

  if (!AKSIdentityLoad(a2, a4, a5))
  {
    return 0;
  }

  v13 = 1;
  if (!AKSIdentityUnlockInternal(v6, a3, 1, a5, v9, v10, v11, v12))
  {
    AKSIdentityUnload(a4, 0);
    return 0;
  }

  return v13;
}

BOOL AKSVolumeMap(const __CFString *a1, uint64_t a2, const __CFUUID *a3, CFTypeRef *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  theData = 0;
  __size = 0;
  bzero(buffer, 0x400uLL);
  if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    v14 = OUTLINED_FUNCTION_9_5();
    create_error(v14, a4);
    v12 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v8 = copy_apfs_volume_uuid_for_disk(a1, a4);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (APFSVolumePayloadGet())
  {
    if (AKSIdentityCopyVolumeCookie(a2, a3, &theData, a4))
    {
      v9 = theData;
      CFDataGetBytePtr(theData);
      CFDataGetLength(v9);
      if (!APFSVolumePayloadSet())
      {
        v10 = 0;
LABEL_10:
        v12 = AKSVolumeMapByUUID(v8, a2, a3, v9, a4);
        goto LABEL_11;
      }

      create_error(0xE007C00ALL, a4);
    }

LABEL_18:
    v12 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v10 = malloc(__size);
  if (APFSVolumePayloadGet())
  {
    v15 = 3758604298;
  }

  else
  {
    v11 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, __size, *MEMORY[0x1E695E498]);
    theData = v11;
    if (v11)
    {
      v9 = v11;
      goto LABEL_10;
    }

    v15 = 3758097085;
  }

  create_error(v15, a4);
  v12 = 0;
LABEL_11:
  free(v10);
  if (theData)
  {
    CFRelease(theData);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

const __CFUUID *AKSVolumeUnmap(const __CFString *a1, CFTypeRef *a2)
{
  result = copy_apfs_volume_uuid_for_disk(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = AKSVolumeUnmapByUUID(result, a2);
    CFRelease(v4);
    return v5;
  }

  return result;
}

uint64_t AKSIdentityCopyGroupUUID(int a1, CFUUIDRef *a2, CFTypeRef *a3)
{
  v8 = 0;
  if (!a2)
  {
    v7 = OUTLINED_FUNCTION_9_5();
LABEL_8:
    create_error(v7, a3);
    return 0;
  }

  result = AKSIdentityCopyGroupUUIDBytes(a1, &v8, a3);
  if (!result)
  {
    return result;
  }

  v6 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v8);
  *a2 = v6;
  if (!v6)
  {
    v7 = 3758097085;
    goto LABEL_8;
  }

  return 1;
}

uint64_t AKSIdentityCopyUserUUID(int a1, CFUUIDRef *a2, CFTypeRef *a3)
{
  v8 = 0;
  if (!a2)
  {
    v7 = OUTLINED_FUNCTION_9_5();
LABEL_8:
    create_error(v7, a3);
    return 0;
  }

  result = AKSIdentityCopyUserUUIDBytes(a1, &v8, a3);
  if (!result)
  {
    return result;
  }

  v6 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v8);
  *a2 = v6;
  if (!v6)
  {
    v7 = 3758097085;
    goto LABEL_8;
  }

  return 1;
}

void AKSIdentityCreateInternal_cold_1(void **a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, v7);
  }

  free(*a1);
}

void AKSIdentityMigrateFirst_cold_1(void **a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, v7);
  }

  free(*a1);
}

void AKSIdentityDelete_cold_1(void **a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, v7);
  }

  free(*a1);
}

void _AKSIdentityChangePasscode_cold_1(void **a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, v7);
  }

  free(*a1);
}

void AKSIdentityLoad_cold_1(void **a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, v7);
  }

  free(*a1);
}

void AKSIdentityUnload_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void AKSIdentityUnlockInternal_cold_1(int a1, _DWORD *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 136318210;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_8_4();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s MKBUnlockDevice()->%d%s\n", v4, 0x78u);
  }

  *a2 = a1;
}

void AKSIdentityUnlockInternal_cold_2()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  AKSIdentityUnlockInternal_cold_3(v1, v2);
}

void AKSIdentityUnlockInternal_cold_3(int a1, _DWORD *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 136318210;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_8_4();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s MKBUnlockDeviceWithACM()->%d%s\n", v4, 0x78u);
  }

  *a2 = a1;
}

void AKSIdentityUnlockInternal_cold_5(void *a1, _DWORD *a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v4, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v5, v6, v7, v8, v9);
  }

  *a2 = -536870212;
  *a1 = 0;
}

void AKSIdentityCopyGroupUUIDBytes_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid type%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_6();
}

void AKSIdentityCopyGroupUUIDBytes_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid uuid size%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_6();
}

void AKSIdentityCopyUserUUIDBytes_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid type%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_6();
}

void AKSIdentityCopyUserUUIDBytes_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid uuid size%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_6();
}

void AKSIdentityLockInternal_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void AKSIdentityGetPrimary_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void AKSGetLastUser_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

void _transfer_primary_identity_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t stash_stats_deserialize(unint64_t a1, uint64_t a2, void *a3)
{
  v48.n128_u64[0] = a1;
  v48.n128_u64[1] = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v48, 0x8000000000000005, a3 + 3, v4, v5, v6, v7, v8, v9, v10) || !der_utils_decode_implicit_uint64(&v48, 0x8000000000000004, a3 + 5, v11, v12, v13, v14, v15, v16, v17) || !der_utils_decode_implicit_uint64(&v48, 0x8000000000000003, a3 + 2, v18, v19, v20, v21, v22, v23, v24) || !der_utils_decode_implicit_uint64(&v48, 0x8000000000000002, a3 + 4, v25, v26, v27, v28, v29, v30, v31) || !der_utils_decode_implicit_uint64(&v48, 0x8000000000000001, a3 + 1, v32, v33, v34, v35, v36, v37, v38))
  {
    return 4294967277;
  }

  v46 = der_utils_decode_implicit_uint64(&v48, 0x8000000000000000, a3, v39, v40, v41, v42, v43, v44, v45);
  result = 4294967277;
  if (v46)
  {
    if (v48.n128_u64[0] == v48.n128_u64[1])
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}