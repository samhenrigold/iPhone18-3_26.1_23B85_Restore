uint64_t aks_kc_backup_wrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_42();
  v10 = v9;
  v25[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25[0] = v10;
      return OUTLINED_FUNCTION_19_2(aks_client_connection, 0x81u, v25, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1311, "", "");
  }

  return v5;
}

uint64_t aks_kc_backup_get_handle()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_4(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_4_4();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        OUTLINED_FUNCTION_55();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 1330, "", "");
  }

  return v0;
}

uint64_t aks_kc_backup_get_uuid()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_4(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v1)
    {
      v21 = 0;
      v22 = v2;
      v19 = 16;
      *src = 0;
      v9 = OUTLINED_FUNCTION_3_5(aks_client_connection, 0x84u, &v22, v4, v5, v6, v7, v8, src, &v19);
      if (v9)
      {
        return v9;
      }

      else if (v19 == 16)
      {
        uuid_copy(v1, src);
        return 0;
      }

      else
      {
        return 3758604298;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 1352, "", "");
  }

  return v0;
}

uint64_t aks_kc_backup_open_keybag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_47();
    v10 = v9;
    *a5 = -1;
    v15 = aks_backup_unwrap_bag(v9, v11, v12, v13, v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", "aks", v17, v32, v33, v35, v37, v39, v41, ":", 1401, "", "");
      v18 = 0;
      goto LABEL_9;
    }

    v45 = v15;
    OUTLINED_FUNCTION_12_4();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", "aks", "", v20, v33, v35, v37, v39, v41, v43, 1389, "", v45, "");
    bag = aks_load_bag(v10, v7, a5);
    if (bag)
    {
      v18 = bag;
      v46 = bag;
      OUTLINED_FUNCTION_12_4();
      fprintf(v28, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n", "aks", "", v29, v34, v36, v38, v40, v42, v44, 1391, "", v46, "");
    }

    else
    {
      aks_prederived_is_enabled();
      v23 = v22;
      v24 = *a5;
      if (v23)
      {
        v18 = aks_prederived_unlock_keybag(v24, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_12_4();
        fprintf(v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n", "aks", "", v31);
      }

      else
      {
        v18 = _aks_unlock_bag(v24, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_12_4();
        fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n", "aks", "", v26);
      }
    }
  }

  else
  {
    v18 = 3758097090;
  }

  if (*a5 != -1)
  {
    aks_unload_bag(*a5);
    *a5 = -1;
  }

LABEL_9:
  aks_prederived_free(0);
  return v18;
}

uint64_t aks_keybag_persona_create(int a1, uint64_t a2, uint64_t a3)
{
  v29[3] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  v28 = 0;
  v27 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v8 = aks_client_connection;
    v29[0] = a1;
    v29[1] = a2;
    v29[2] = a3;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v28, &v27, 1, v9, v10, v11, v12, v13, v20);
    if (v28)
    {
      v3 = OUTLINED_FUNCTION_7_3(v8, 0x60u, v29, 3u, v28, v27, v14, v15, 0, 0);
      v16 = v28;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_31_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v21, v22, v23, v24, v25, v26, ":", 1423, "", "");
    v16 = 0;
  }

  free(v16);
  return v3;
}

uint64_t aks_keybag_persona_create_with_flags(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  OUTLINED_FUNCTION_6_4(*MEMORY[0x1E69E9840]);
  v31 = 0;
  v30 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    v32[0] = a1;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a5;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v31, &v30, 1, v12, v13, v14, v15, v16, v23);
    if (v31)
    {
      v5 = OUTLINED_FUNCTION_7_3(v11, 0x75u, v32, 4u, v31, v30, v17, v18, 0, 0);
      v19 = v31;
    }

    else
    {
      v19 = OUTLINED_FUNCTION_31_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v24, v25, v26, v27, v28, v29, ":", 1445, "", "");
    v19 = 0;
  }

  free(v19);
  return v5;
}

uint64_t aks_keybag_persona_list(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43(*MEMORY[0x1E69E9840]);
  bzero(__src, 0x2000uLL);
  __count = 0x2000;
  v26 = v2;
  v6 = (v3 + 6);
  if (v1 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v13 = OUTLINED_FUNCTION_3_5(aks_client_connection, 0x61u, &v26, v8, v9, v10, v11, v12, __src, &__count);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        if (__count)
        {
          v14 = calloc(__count, 1uLL);
          *v1 = v14;
          if (!v14)
          {
            v6 = (v3 + 1);
            goto LABEL_10;
          }

          memcpy(v14, __src, __count);
          v15 = __count;
        }

        else
        {
          v15 = 0;
          *v1 = 0;
        }

        OUTLINED_FUNCTION_54(v15);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1471, "", "");
      OUTLINED_FUNCTION_32_0();
    }
  }

LABEL_10:
  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  return v6;
}

uint64_t aks_keybag_persona_delete(int a1)
{
  OUTLINED_FUNCTION_9_4(*MEMORY[0x1E69E9840]);
  v25 = 0;
  v24 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v4 = aks_client_connection;
    v26 = a1;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v25, &v24, 1, v5, v6, v7, v8, v9, v17);
    if (v25)
    {
      v1 = OUTLINED_FUNCTION_23_1(v4, 0x62u, &v26, v10, v25, v24, v11, v12, 0, 0);
      v13 = v25;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_31_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v18, v19, v20, v21, v22, v23, ":", 1493, "", "");
    v13 = 0;
  }

  free(v13);
  return v1;
}

uint64_t _aks_set_configuration(int a1, uint64_t a2, int a3, int a4)
{
  v59[4] = *MEMORY[0x1E69E9840];
  v59[0] = 0;
  OUTLINED_FUNCTION_33_0();
  v57 = 0;
  __n = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v8 = aks_client_connection;
    CFNumberGetTypeID();
    v9 = OUTLINED_FUNCTION_22_1();
    if (!_copy_cf_key(v9, v10, v11))
    {
      CFNumberGetTypeID();
      v12 = OUTLINED_FUNCTION_22_1();
      if (!_copy_cf_key(v12, v13, v14))
      {
        CFNumberGetTypeID();
        v15 = OUTLINED_FUNCTION_22_1();
        if (!_copy_cf_key(v15, v16, v17))
        {
          CFNumberGetTypeID();
          v18 = OUTLINED_FUNCTION_22_1();
          if (!_copy_cf_key(v18, @"EscrowPasscodePeriod", v19))
          {
            CFNumberGetTypeID();
            v20 = OUTLINED_FUNCTION_22_1();
            if (!_copy_cf_key(v20, @"EscrowTokenPeriod", v21))
            {
              CFDataGetTypeID();
              v22 = OUTLINED_FUNCTION_22_1();
              if (!_copy_cf_key(v22, v23, v24))
              {
                CFDataGetTypeID();
                v25 = OUTLINED_FUNCTION_22_1();
                if (!_copy_cf_key(v25, v26, v27))
                {
                  CFBooleanGetTypeID();
                  v28 = OUTLINED_FUNCTION_22_1();
                  if (!_copy_cf_key(v28, v29, v30))
                  {
                    CFBooleanGetTypeID();
                    v31 = OUTLINED_FUNCTION_22_1();
                    if (!_copy_cf_key(v31, v32, v33) && !encode_list_is_empty(&v57) && (!a2 || !encode_list_add_data()) && !encode_list_dict(&v57, v59, &__n))
                    {
                      OUTLINED_FUNCTION_39(a1, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, __n);
                      v4 = OUTLINED_FUNCTION_1_11(v8, 0x1Eu, v34, 3u, v35, v36, v37, v38, v43, v45);
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

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v40, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v41, v46, v47, v48, v49, v50, v51, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  encode_list_free(&v57);
  if (v59[0])
  {
    OUTLINED_FUNCTION_37_0(v59[0], __n);
    free(v59[0]);
  }

  return v4;
}

void aks_get_configuration()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v4 = v1;
  v104 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v3)
    {
      v6 = aks_client_connection;
      bzero(v103, 0x8000uLL);
      v100[0] = 0x8000;
      v102 = v4;
      if (!OUTLINED_FUNCTION_3_5(v6, 0x1Fu, &v102, v7, v8, v9, v10, v11, v103, v100) && v100[0] <= 0x8000)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        bzero(v101, 0x250uLL);
        v100[1] = der_key_config_graceperiod;
        v101[4] = der_key_config_backoff_delay;
        v101[9] = der_key_config_max_unlock_attempts;
        v101[14] = der_key_config_escrow_passcode_period;
        v101[19] = der_key_config_escrow_token_period;
        v101[24] = der_key_config_flags;
        v101[29] = der_key_config_user_uuid;
        v101[34] = der_key_config_group_uuid;
        v101[39] = der_key_config_recovery_iterations;
        v101[44] = der_key_config_recovery_params;
        v101[49] = der_key_config_recovery_target_iterations;
        v101[54] = der_key_memento_supported;
        v101[59] = der_key_memento_blob_exists;
        v101[64] = der_key_config_memento_passcode_generation;
        v101[69] = der_key_config_passcode_generation;
        OUTLINED_FUNCTION_1_12();
        der_dict_iterate();
        v13 = v101[0];
        v14 = v101[5];
        v15 = v101[10];
        v16 = v101[15];
        v99 = v3;
        v17 = v101[20];
        v18 = v101[25];
        v19 = v101[30];
        v91 = v101[35];
        v92 = v101[40];
        v93 = v101[45];
        v94 = v101[50];
        v95 = v101[55];
        v96 = v101[60];
        v97 = v101[65];
        v98 = v101[70];
        CFNumberGetTypeID();
        v20 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v20, v21, v22, v13, v23);
        CFNumberGetTypeID();
        v24 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v24, v25, v26, v14, v27);
        CFNumberGetTypeID();
        v28 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v28, v29, v30, v15, v31);
        CFNumberGetTypeID();
        v32 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v32, @"EscrowPasscodePeriod", v33, v16, v34);
        CFNumberGetTypeID();
        v35 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v35, @"EscrowTokenPeriod", v36, v17, v37);
        CFNumberGetTypeID();
        v38 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v38, v39, v40, v18, v41);
        CFDataGetTypeID();
        v42 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v42, v43, v44, v19, v45);
        CFDataGetTypeID();
        v46 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v46, v47, v48, v91, v49);
        CFNumberGetTypeID();
        v50 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v50, v51, v52, v92, v53);
        CFNumberGetTypeID();
        v54 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v54, v55, v56, v93, v57);
        CFNumberGetTypeID();
        v58 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v58, v59, v60, v94, v61);
        CFBooleanGetTypeID();
        v62 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v62, v63, v64, v95, v65);
        CFBooleanGetTypeID();
        v66 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v66, v67, v68, v96, v69);
        CFNumberGetTypeID();
        v70 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v70, v71, v72, v97, v73);
        CFNumberGetTypeID();
        v74 = OUTLINED_FUNCTION_13_3();
        _set_cf_key(v74, v75, v76, v98, v77);
        number = der_get_number();
        v79 = *MEMORY[0x1E695E4C0];
        v80 = *MEMORY[0x1E695E4D0];
        if ((number & 2) != 0)
        {
          v81 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v81 = *MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v81);
        if ((number & 8) != 0)
        {
          v82 = v80;
        }

        else
        {
          v82 = v79;
        }

        CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v82);
        *v99 = Mutable;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v83, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v84, v85, v86, v87, v88, v89, v90, ":", 1677, "", "");
  }

  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_15();
}

void aks_fdr_hmac_data()
{
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v23 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_33_0();
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
          if (!OUTLINED_FUNCTION_7_3(aks_client_connection, 0x29u, 0, 0, v8, v7, v10, v11, __src, &__count))
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
    OUTLINED_FUNCTION_0_16();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 1889, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_69();
}

uint64_t aks_create_signing_key()
{
  OUTLINED_FUNCTION_43(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_59();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v7 = aks_client_connection;
        bzero(v37, 0x100uLL);
        result = OUTLINED_FUNCTION_1_11(v7, 0x31u, v36, 2u, v8, v9, v10, v11, v37, &__count);
        if (!result)
        {
          if (__count > 0x100)
          {
            return OUTLINED_FUNCTION_58();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              OUTLINED_FUNCTION_71(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, __count, v36[0], v36[1]);
              result = OUTLINED_FUNCTION_60();
              *v4 = v20;
            }

            else
            {
              return (v0 + 1);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_16();
        fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v25, v26, v27, v28, v29, v30, ":", 2020, "", "");
        return OUTLINED_FUNCTION_14_3();
      }
    }
  }

  return result;
}

void aks_create_signing_key_with_params()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x1EEE9AC00](v1);
  *(v0 - 72) = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_59();
  if (v2)
  {
    v4 = v3;
    if (v3)
    {
      v5 = v2;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v7 = aks_client_connection;
        bzero(v41, 0x8000uLL);
        OUTLINED_FUNCTION_45();
        if (!OUTLINED_FUNCTION_18_3(v7, 0x31u, v8, 2u, v9, v10, v11, v12, v24, v26))
        {
          if (__count > 0x8000)
          {
            OUTLINED_FUNCTION_58();
          }

          else
          {
            v13 = calloc(__count, 1uLL);
            *v5 = v13;
            if (v13)
            {
              OUTLINED_FUNCTION_71(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, __count, v39, v40);
              OUTLINED_FUNCTION_60();
              *v4 = v21;
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_16();
        fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v23, v28, v29, v30, v31, v32, v33, ":", 2042, "", "");
        OUTLINED_FUNCTION_14_3();
      }
    }
  }

  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

uint64_t remote_session_operate(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v32 = *MEMORY[0x1E69E9840];
  __count = 15360;
  v30[0] = v1;
  v30[1] = v8;
  v30[2] = v9;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    bzero(__src, 0x3C00uLL);
    v16 = OUTLINED_FUNCTION_1_11(v11, v7, v30, 3u, v12, v13, v14, v15, __src, &__count);
    if (v16)
    {
      return v16;
    }

    else if (__count > 0x3C00)
    {
      OUTLINED_FUNCTION_56();
    }

    else
    {
      v7 = 0;
      if (v5 && v3)
      {
        if (__count)
        {
          v17 = calloc(__count, 1uLL);
          *v5 = v17;
          if (!v17)
          {
            OUTLINED_FUNCTION_17_3();
            return v22 | 1u;
          }

          memcpy(v17, __src, __count);
          v18 = __count;
        }

        else
        {
          v18 = 0;
        }

        OUTLINED_FUNCTION_54(v18);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_0_16();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v23, v24, v25, v26, v27, v28, ":", 2178, "", "");
  }

  return v7;
}

void aks_sign_signing_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  OUTLINED_FUNCTION_14_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v74 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x100uLL);
  v70 = 0;
  __count = 256;
  HIDWORD(v68) = 0;
  v72[0] = v34;
  v72[1] = v32;
  v72[2] = v28;
  if (v22 && a21)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v43 = aks_client_connection;
      v44 = OUTLINED_FUNCTION_65(aks_client_connection, v36, v37, v38, v39, v40, v41, v42, v56, v57, v26, v24, v60, v61, v62, v63, v64, v65, v66, v67, v68, 0);
      aks_pack_data(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v70)
      {
        if (!OUTLINED_FUNCTION_7_3(v43, 0x32u, v72, 3u, v70, v69, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v54, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v55, v58, v59, v60, v61, v62, v63, ":", 2072, "", "");
    }
  }

  free(v70);
  OUTLINED_FUNCTION_15();
}

uint64_t aks_validate_local_key()
{
  v18 = 0;
  v19 = 0;
  OUTLINED_FUNCTION_12();
  __n = 0;
  v17 = 0;
  v3 = (v0 + 6);
  v15 = 0;
  if (v1 && v2)
  {
    v20.n128_u64[0] = v1;
    v20.n128_u64[1] = v1 + v2;
    v17 = 0;
    OUTLINED_FUNCTION_2_4();
    if (ccder_blob_decode_range())
    {
      der_utils_decode_implicit_uint64(&v20, 0x8000000000000001, &v17, v4, v5, v6, v7, v8, v9, v10);
      if (v17)
      {
        OUTLINED_FUNCTION_15_4();
        v3 = remote_session_operate(v13);
        if (v3)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        signing_key = aks_create_signing_key();
        if (!signing_key)
        {
          v12 = v19;
          goto LABEL_10;
        }

        v3 = signing_key;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", signing_key);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v12 = v19;
  v0 = v3;
LABEL_10:
  if (v12)
  {
    OUTLINED_FUNCTION_37_0(v12, __n);
    free(v19);
  }

  if (v18)
  {
    OUTLINED_FUNCTION_37_0(v18, v15);
    free(v18);
  }

  return v0;
}

void aks_drain_backup_keys()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36_0();
  v7 = v6;
  *(v4 - 72) = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_51();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v16 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34_0((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, __count, v60, v61);
        OUTLINED_FUNCTION_45();
        if (!OUTLINED_FUNCTION_1_11(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v34, v37))
        {
          if (v3)
          {
            v22 = calloc(v3, 1uLL);
            *v1 = v22;
            if (v22)
            {
              OUTLINED_FUNCTION_71(v22, v23, v24, v25, v26, v27, v28, v29, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v3, v7, 0);
              OUTLINED_FUNCTION_60();
              *v0 = v30;
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v32, v39, v41, v43, v45, v47, v49, ":", 2233, "", "");
    OUTLINED_FUNCTION_14_3();
  }

  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

void aks_drain_backup_keys_info()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36_0();
  v7 = v6;
  *(v4 - 72) = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_51();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v16 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34_0((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, __count, v60, v61);
        OUTLINED_FUNCTION_45();
        if (!OUTLINED_FUNCTION_1_11(v16, 0x14u, v17, 2u, v18, v19, v20, v21, v34, v37))
        {
          if (v3)
          {
            if (v3 % 0x7C)
            {
              OUTLINED_FUNCTION_58();
            }

            else
            {
              v22 = calloc(v3, 1uLL);
              *v1 = v22;
              if (v22)
              {
                OUTLINED_FUNCTION_71(v22, v23, v24, v25, v26, v27, v28, v29, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v3, v7, 1);
                OUTLINED_FUNCTION_60();
                *v0 = v30 / 0x7C;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v32, v39, v41, v43, v45, v47, v49, ":", 2261, "", "");
    OUTLINED_FUNCTION_14_3();
  }

  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
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
  v35 = *MEMORY[0x1E69E9840];
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
    v33[0] = v12;
    v33[1] = v11;
    v33[2] = v17;
    v33[3] = v9;
    v33[4] = v7;
    v22 = OUTLINED_FUNCTION_1_11(v14, 0x15u, v33, 5u, v18, v19, v20, v21, v15, p_count);
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
        OUTLINED_FUNCTION_17_3();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v26, v27, v28, v29, v30, v31, ":", 2307, "", "");
    OUTLINED_FUNCTION_14_3();
  }

LABEL_10:
  OUTLINED_FUNCTION_15();
}

uint64_t aks_make_public_backup_bag()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_4(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_4_4();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        OUTLINED_FUNCTION_55();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 2339, "", "");
  }

  return v0;
}

void aks_remote_peer_get_state()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_6_4(*MEMORY[0x1E69E9840]);
  v33 = 4096;
  v34 = v2;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v0)
    {
      v11 = aks_client_connection;
      v12 = OUTLINED_FUNCTION_50(aks_client_connection, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
      bzero(v12, v13);
      memset_s(v0, 0x68uLL, 0, 0x68uLL);
      if (!OUTLINED_FUNCTION_18_3(v11, 0x39u, &v34, 1u, v14, v15, v16, v17, v35, &v33))
      {
        decode_peer_state(v35, v33, v0);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v22, v23, v24, v25, v26, v27, ":", 2440, "", "");
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_register()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v3 = v2;
  v26[4] = *MEMORY[0x1E69E9840];
  v26[0] = v4;
  v26[1] = v5;
  v26[2] = v6;
  v26[3] = v7;
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v9 = aks_client_connection;
    bzero(__src, 0x800uLL);
    if (OUTLINED_FUNCTION_18_3(v9, 0x3Bu, v26, 4u, v10, v11, v12, v13, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_56();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v14 = calloc(__count, 1uLL);
        *v3 = v14;
        if (!v14)
        {
          OUTLINED_FUNCTION_17_3();
          goto LABEL_11;
        }

        memcpy(v14, __src, __count);
        v15 = __count;
      }

      else
      {
        v15 = 0;
      }

      OUTLINED_FUNCTION_54(v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_0_16();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2580, "", "");
  }

LABEL_11:
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_request_unlock()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25[1] = *MEMORY[0x1E69E9840];
  v25[0] = v8;
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = aks_client_connection;
    bzero(__src, 0x800uLL);
    if (!OUTLINED_FUNCTION_7_3(v10, 0x3Du, v25, 1u, v7, v5, v11, v12, __src, &__count) && __count <= 0x800 && v3 && v1)
    {
      if (__count)
      {
        v13 = calloc(__count, 1uLL);
        *v3 = v13;
        if (!v13)
        {
          OUTLINED_FUNCTION_17_3();
          goto LABEL_11;
        }

        memcpy(v13, __src, __count);
        v14 = __count;
      }

      else
      {
        v14 = 0;
      }

      *v1 = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 2621, "", "");
  }

LABEL_11:
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_unlock()
{
  OUTLINED_FUNCTION_14_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_53();
  v29[1] = *MEMORY[0x1E69E9840];
  v29[0] = v7;
  v27 = 0;
  v26 = 0;
  bzero(__src, 0x800uLL);
  __count = 2048;
  aks_pack_data(&v27, &v26, 2, v8, v9, v10, v11, v12, v2);
  if (v27)
  {
    aks_client_connection = get_aks_client_connection();
    if (!aks_client_connection)
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v1, v0, v21, v22, v23, v24, ":", 2652, "", "");
      goto LABEL_12;
    }

    if (OUTLINED_FUNCTION_23_1(aks_client_connection, 0x3Eu, v29, v14, v27, v26, v15, v16, __src, &__count))
    {
      goto LABEL_12;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_56();
      goto LABEL_12;
    }

    if (v6 && v4)
    {
      if (!__count)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v17 = calloc(__count, 1uLL);
      *v6 = v17;
      if (v17)
      {
        memcpy(v17, __src, __count);
        v18 = __count;
LABEL_11:
        OUTLINED_FUNCTION_54(v18);
      }
    }
  }

LABEL_12:
  free(v27);
  OUTLINED_FUNCTION_15();
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
    OUTLINED_FUNCTION_1_12();
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
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v28[4] = *MEMORY[0x1E69E9840];
  v28[0] = v1;
  v28[1] = v4;
  v28[2] = v5;
  v28[3] = v6;
  bzero(v27, 0x1000uLL);
  __n[0] = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_1_11(aks_client_connection, 0x48u, v28, 4u, v8, v9, v10, v11, v27, __n))
    {
      if (__n[0] - 4097 < 0xFFFFFFFFFFFFF000)
      {
        OUTLINED_FUNCTION_56();
      }

      else
      {
        v25 = 0u;
        v26 = 0;
        v22 = 0u;
        v23 = 0u;
        __n[1] = der_key_config_se_reset_token;
        v24 = der_key_config_se_slot;
        OUTLINED_FUNCTION_1_12();
        der_dict_iterate();
        if (v22)
        {
          ccder_decode_tl();
        }

        else if (*(&v24 + 1))
        {
          number = der_get_number();
          if (number <= 0xFF)
          {
            *v3 = number;
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_0_16();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 2923, "", "");
  }

  OUTLINED_FUNCTION_37_0(v27, __n[0]);
  OUTLINED_FUNCTION_69();
}

void aks_se_get_reset_sig()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_36_0();
  v51 = *MEMORY[0x1E69E9840];
  *&v50[4091] = v7;
  OUTLINED_FUNCTION_72(v7, v8, v9, v10, v11, v12, v13, v14, v26, v28, v30, v32, v34, v36, v38, v40, v42, v43, v44, v45, v46, __n);
  if (v1 && v0 && v6 && v4)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_5(v15, 0x5Au, &v50[4091], v16, v17, v18, v19, v20, v27, v29))
      {
        v21 = calloc(5uLL, 1uLL);
        *v6 = v21;
        if (v21)
        {
          *v4 = 5;
          v22 = v48;
          v21[4] = v49;
          *v21 = v22;
          v23 = calloc(0xFFBuLL, 1uLL);
          *v1 = v23;
          if (v23)
          {
            *v0 = 4091;
            memcpy(v23, v50, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v31, v33, v35, v37, v39, v41, ":", 3021, "", "");
    }
  }

  OUTLINED_FUNCTION_37_0(&v48, 0x1000uLL);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_69();
}

void aks_se_get_reset_pubkey(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v45[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_51();
  v45[0] = v5;
  OUTLINED_FUNCTION_72(v5, v6, v7, v8, v9, v10, v11, v12, v22, v24, v26, v28, v30, v32, v34, v36, v38, v39, v40, v41, v42, __count);
  if (v4 && v2)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_5(v13, 0x59u, v45, v14, v15, v16, v17, v18, v23, v25))
      {
        v19 = calloc(0x1000uLL, 1uLL);
        *v4 = v19;
        if (v19)
        {
          *v2 = 4096;
          memcpy(v19, __src, 0x1000uLL);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v27, v29, v31, v33, v35, v37, ":", 3053, "", "");
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  OUTLINED_FUNCTION_38();
}

void aks_se_get_passcode_derivation()
{
  OUTLINED_FUNCTION_14_0();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v43 = *MEMORY[0x1E69E9840];
  memset(v42, 0, sizeof(v42));
  v40 = 128;
  v15 = se_derivation_request_serialization_len(v9, v7, v5, v3);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = OUTLINED_FUNCTION_18_1();
  bzero(v18, v19);
  if (!se_derivation_request_serialize(v12, v10, v8, v6, v4, v17, v15))
  {
    v41[0] = v14;
    v41[1] = v17;
    v41[2] = v15;
    if (v2)
    {
      v20 = v39;
      if (v39)
      {
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          if (!OUTLINED_FUNCTION_1_11(aks_client_connection, 0x9Bu, v41, 3u, v22, v23, v24, v25, v42, &v40))
          {
            v26 = calloc(v40, 1uLL);
            *v2 = v26;
            if (v26)
            {
              v27 = v40;
              *v20 = v40;
              memcpy(v26, v42, v27);
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_16();
          fprintf(v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v31, v32, v33, v34, v35, v36, v37, ":", 3152, "", "");
          OUTLINED_FUNCTION_51();
        }
      }
    }
  }

  v28 = OUTLINED_FUNCTION_18_1();
  memset_s(v28, v29, 0, v15);
  OUTLINED_FUNCTION_37_0(v42, v40);
  OUTLINED_FUNCTION_15();
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
  v66 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0;
  v63 = v26;
  bzero(__src, 0x4000uLL);
  v60 = a23;
  __count = 0x4000;
  v57[0] = v40;
  memset(__n, 0, sizeof(__n));
  v57[1] = v38;
  v57[2] = v36;
  v57[3] = v34;
  v57[4] = v32;
  v57[5] = v30;
  v57[6] = v28;
  v58 = a21;
  v59 = a22;
  if (encode_icsc_params_internal(v57, &__n[1], __n) || (v64 = *&__n[1], v65 = __n[0], !a24))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
    if (a25)
    {
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        if (!OUTLINED_FUNCTION_1_11(aks_client_connection, 0x9Fu, &v63, 3u, v42, v43, v44, v45, __src, &__count))
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
        OUTLINED_FUNCTION_0_16();
        fprintf(v48, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v49, v50, v51, v52, v53, v54, v55, ":", 3201, "", "");
      }
    }
  }

  OUTLINED_FUNCTION_37_0(*&__n[1], __n[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_37_0(__src, __count);
  OUTLINED_FUNCTION_15();
}

void aks_fv_get_blob_state()
{
  OUTLINED_FUNCTION_74();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v55 = *MEMORY[0x1E69E9840];
  v11 = OUTLINED_FUNCTION_50(v1, v4, v2, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54[0]);
  bzero(v11, v12);
  v51 = v54;
  v52 = &v55;
  v53 = 4096;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_data(&v51);
      if (v13)
      {
        v13 = der_utils_encode_fv_params(&v51);
        if (v13)
        {
          OUTLINED_FUNCTION_2_4();
          v13 = ccder_blob_encode_tl();
          if (v13)
          {
            v13 = OUTLINED_FUNCTION_16_3(v22, 0x55u, v15, v16, v52, &v55 - v52, v19, v20, v54, &v53);
            if (!v13)
            {
              v13 = decode_fv_blob_state(v54);
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      v13 = fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v32, v34, v36, v38, v40, v42, ":", 3262, "", "");
    }
  }

  v23 = OUTLINED_FUNCTION_50(v13, v14, v15, v16, v17, v18, v19, v20, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54[0]);
  memset_s(v23, v24, 0, 0x1000uLL);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_73();
}

uint64_t aks_fv_get_size(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  input[1] = *MEMORY[0x1E69E9840];
  v4 = 3758097098;
  output = 0;
  input[0] = v5;
  HIDWORD(v54) = 1;
  v11 = OUTLINED_FUNCTION_50(v1, v5, v2, v6, v7, v8, v9, v10, outputStruct, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, inputStruct, v54, v55);
  bzero(v11, v12);
  v52 = &v55;
  inputStruct = &output;
  if (v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_params(&v52);
      if (v13)
      {
        OUTLINED_FUNCTION_2_4();
        v13 = ccder_blob_encode_tl();
        if (v13)
        {
          v13 = IOConnectCallMethod(v22, 0x4Eu, input, 1u, inputStruct, &output - inputStruct, &output, &v54 + 1, 0, 0);
          v4 = v13;
          if (!v13)
          {
            *v3 = output;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      v13 = fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v33, v35, v37, v39, v41, v43, ":", 3305, "", "");
      v4 = 3758097084;
    }
  }

  else
  {
    v4 = 3758097090;
  }

  v23 = OUTLINED_FUNCTION_50(v13, v14, v15, v16, v17, v18, v19, v20, outputStructa, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, inputStruct, v54, v55);
  memset_s(v23, v24, 0, 0x1000uLL);
  return v4;
}

void aks_fv_import()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v26[1] = *MEMORY[0x1E69E9840];
  v26[0] = v7;
  bzero(__s, 0x1000uLL);
  v22 = __s;
  v23 = v26;
  v24 = 4096;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v9 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v22))
        {
          if (der_utils_encode_fv_params(&v22))
          {
            OUTLINED_FUNCTION_2_4();
            if (ccder_blob_encode_tl())
            {
              if (!OUTLINED_FUNCTION_23_1(v9, 0x4Fu, v26, v10, v23, v26 - v23, v11, v12, __s, &v24))
              {
                *&v21 = __s;
                *(&v21 + 1) = &__s[v24];
                OUTLINED_FUNCTION_2_4();
                if (ccder_blob_decode_range())
                {
                  if (v2)
                  {
                    der_utils_decode_fv_data(&v21, 0, v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3333, "", "");
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  OUTLINED_FUNCTION_15();
}

void aks_fv_is_access_token_unbound(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    aks_fv_get_blob_state();
  }
}

void aks_fv_grant_ownership()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_53();
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
      OUTLINED_FUNCTION_2_4();
      if (ccder_blob_encode_tl())
      {
        if (der_utils_encode_fv_data(v1))
        {
          if (der_utils_encode_fv_data(v1))
          {
            OUTLINED_FUNCTION_2_4();
            if (ccder_blob_encode_tl())
            {
              aks_fv_set_protection();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_15();
}

void aks_fv_sidp_status(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_36_0();
  v5 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x4000uLL);
  OUTLINED_FUNCTION_15_4();
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
      OUTLINED_FUNCTION_14_3();
    }
  }
}

void aks_absinthe_collection()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_46();
  v4 = v3;
  v31[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  *v6 = v5;
  bzero(__src, 0x8000uLL);
  v28 = 0;
  __count = 0x8000;
  v27 = 0;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v13 = aks_client_connection;
      if (v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = "";
      }

      aks_pack_data(&v28, &v27, 2, v8, v9, v10, v11, v12, v14);
      if (!OUTLINED_FUNCTION_23_1(v13, 0x50u, v31, v15, v28, v27, v16, v17, __src, &__count))
      {
        v18 = calloc(__count, 1uLL);
        *v1 = v18;
        if (v18)
        {
          memcpy(v18, __src, __count);
          *v0 = __count;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_16();
      fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3582, "", "");
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v28);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_15();
}

uint64_t aks_get_current_sep_measurement()
{
  OUTLINED_FUNCTION_12();
  if (v2 && v1 && !aks_get_internal_info_for_key(0xFFFFFFFFLL))
  {
    der_dict_get_data(der_key_sep_measurement);
  }

  free(0);
  return v0;
}

uint64_t aks_get_seconds_since_passcode_change(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_12();
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

void aks_get_internal_state(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v42[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_33_0();
  v42[0] = v3;
  OUTLINED_FUNCTION_72(v3, v4, v5, v6, v7, v8, v9, v10, v19, v21, v23, v25, v27, v29, v31, v33, v35, v36, v37, v38, v39, __n);
  if (get_aks_client_connection())
  {
    if (v2)
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_5(v11, 0x8Eu, v42, v12, v13, v14, v15, v16, v20, v22))
      {
        decode_extended_state(v41);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v24, v26, v28, v30, v32, v34, ":", 3797, "", "");
  }

  OUTLINED_FUNCTION_37_0(v41, 0x1000uLL);
  OUTLINED_FUNCTION_38();
}

uint64_t aks_fairplay_wrap()
{
  v20[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17_3();
  v20[0] = 266;
  result = (v2 + 6);
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v0;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v19 = *v4;
        result = OUTLINED_FUNCTION_19_2(aks_client_connection, 0x68u, v20, 1u, v7, v8, v9, v10, v5, &v19);
        if (!result)
        {
          *v4 = v19;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_16();
        fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 3823, "", "");
        return OUTLINED_FUNCTION_14_3();
      }
    }
  }

  return result;
}

uint64_t _fairplay_generate_csk_internal()
{
  v21[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17_3();
  v21[0] = (v2 << 8) | 1;
  result = (v3 + 6);
  if (v5)
  {
    v6 = v1;
    if (v1)
    {
      OUTLINED_FUNCTION_42();
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v20 = *v6;
        result = OUTLINED_FUNCTION_19_2(aks_client_connection, 0x68u, v21, 1u, v8, v9, v10, v11, v0, &v20);
        if (!result)
        {
          *v6 = v20;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_16();
        fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 3847, "", "");
        return OUTLINED_FUNCTION_14_3();
      }
    }
  }

  return result;
}

void aks_bak_get_beacon_internal()
{
  OUTLINED_FUNCTION_74();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  bzero(v22, 0x4000uLL);
  v20 = 0x4000;
  v21[0] = 1;
  v21[1] = v5;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_18_3(aks_client_connection, 0x87u, v21, 2u, v7, v8, v9, v10, v22, &v20))
    {
      __memcpy_chk();
      *v3 = 44;
      v11 = calloc(0x2CuLL, 1uLL);
      *v0 = v11;
      if (v11)
      {
        __memcpy_chk();
      }

      else
      {
        OUTLINED_FUNCTION_17_3();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_0_16();
    fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 3883, "", "");
  }

  OUTLINED_FUNCTION_52(v22);
  OUTLINED_FUNCTION_73();
}

uint64_t aks_bak_get_beacon()
{
  OUTLINED_FUNCTION_46();
  aks_bak_get_beacon_internal();
  if (v0)
  {
    return v0;
  }

  else
  {
    return 3758604312;
  }
}

void aks_bak_get_swizzler_internal()
{
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33[2] = *MEMORY[0x1E69E9840];
  v33[0] = 2;
  v33[1] = v1;
  bzero(v29, 0xC4uLL);
  bzero(v28, 0x4000uLL);
  v27 = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_1_11(aks_client_connection, 0x87u, v33, 2u, v11, v12, v13, v14, v28, &v27))
    {
      __memcpy_chk();
      v15 = calloc(0x28uLL, 1uLL);
      *v9 = v15;
      if (v15)
      {
        *v7 = 40;
        v16 = *&v29[8];
        v17 = v30;
        v15[4] = v31;
        *v15 = v16;
        *(v15 + 1) = v17;
        v18 = calloc(0x91uLL, 1uLL);
        *v5 = v18;
        if (v18)
        {
          *v3 = 145;
          memcpy(v18, v32, 0x91uLL);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 3943, "", "");
  }

  OUTLINED_FUNCTION_52(v28);
  memset_s(v29, 0xC4uLL, 0, 0xC4uLL);
  OUTLINED_FUNCTION_69();
}

uint64_t aks_test_stashed_kek(uint64_t a1)
{
  akstest_client_connection = get_akstest_client_connection();
  if (akstest_client_connection)
  {
    return OUTLINED_FUNCTION_16_3(akstest_client_connection, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return OUTLINED_FUNCTION_14_3();
  }
}

uint64_t aks_get_dsme_key(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  OUTLINED_FUNCTION_43(*MEMORY[0x1E69E9840]);
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = OUTLINED_FUNCTION_1_11(aks_client_connection, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
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
    OUTLINED_FUNCTION_0_16();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 3992, "", "");
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_52(__src);
  return v6;
}

void aks_sealed_hashes_set()
{
  OUTLINED_FUNCTION_14_0();
  v18[1] = *MEMORY[0x1E69E9840];
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
      v7 = v18 - v6;
      bzero(v18 - v6, v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        OUTLINED_FUNCTION_7_3(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        OUTLINED_FUNCTION_17_3();
      }
    }

    else
    {
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_0_16();
      fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4036, "", "");
    }
  }

  OUTLINED_FUNCTION_15();
}

void aks_memento_get_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v40[1] = *MEMORY[0x1E69E9840];
  v40[0] = v1;
  OUTLINED_FUNCTION_72(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v23, v25, v27, v29, v31, v33, v34, v35, v36, v37, __n);
  __n = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v15 = OUTLINED_FUNCTION_3_5(aks_client_connection, 0x8Bu, v40, v10, v11, v12, v13, v14, v39, &__n);
    v16 = __n;
    if (!v15)
    {
      OUTLINED_FUNCTION_33_0();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        decode_memento_state(v39);
        v16 = __n;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v22, v24, v26, v28, v30, v32, ":", 4130, "", "");
    v16 = 4096;
  }

  OUTLINED_FUNCTION_37_0(v39, v16);
  OUTLINED_FUNCTION_38();
}

uint64_t aks_get_cx_window(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v19[512] = *MEMORY[0x1E69E9840];
  v18 = 4096;
  if (!v1)
  {
    return 4294967285;
  }

  v2 = v1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v4 = aks_client_connection;
    bzero(v19, 0x1000uLL);
    result = OUTLINED_FUNCTION_1_11(v4, 0x98u, 0, 0, v5, v6, v7, v8, v19, &v18);
    if (!result)
    {
      if (v18 == 8)
      {
        result = 0;
        *v2 = v19[0];
      }

      else
      {
        return OUTLINED_FUNCTION_58();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 4183, "", "");
    return OUTLINED_FUNCTION_14_3();
  }

  return result;
}

void AKSGetStashStats()
{
  OUTLINED_FUNCTION_70();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v28 = *MEMORY[0x1E69E9840];
  v26 = 4096;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = aks_client_connection;
    bzero(v27, 0x1000uLL);
    if (!OUTLINED_FUNCTION_1_11(v10, 0x9Eu, 0, 0, v11, v12, v13, v14, v27, &v26) && !stash_stats_deserialize(v27, v26, &v23))
    {
      if (v8)
      {
        *v8 = *(&v25 + 1);
      }

      if (v7)
      {
        *v7 = v25;
      }

      if (v5)
      {
        *v5 = *(&v24 + 1);
      }

      if (v3)
      {
        *v3 = v24;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 4204, "", "");
  }

  OUTLINED_FUNCTION_69();
}

uint64_t _copy_cf_key(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = OUTLINED_FUNCTION_18_1();
        if (encode_list_add_number(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        OUTLINED_FUNCTION_18_1();
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
        OUTLINED_FUNCTION_18_1();
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

uint64_t get_kcv(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v5;
}

uint64_t print_kcv(const char *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  v5 = 0;
  get_kcv(a2, a3, &v5, 3);
  return dump_bytes_internal(a1, &v5, 3uLL);
}

uint64_t ascii_hex_to_bytes(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t fv_init_cred_from_secret(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t copy_raw_secret(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  inited = fv_init_cred_from_secret(&__s, v10, a5);
  if (inited)
  {
    v8 = inited;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t wrap_data(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  v59 = *MEMORY[0x1E69E9840];
  HIDWORD(v52) = 0;
  v57 = 0u;
  v58 = 0u;
  __s = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v52) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = generate_wrapping_key_curve25519((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v56 = v30;
          v31 = *(a1 + 14);
          v57 = *(a1 + 10);
          v58 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v56;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = firebloom_cbc_one_shot_f(v33, 32, &v57, &firebloom_null_iv, 0x20uLL);
            v35 = OUTLINED_FUNCTION_4_5(v34);
            LODWORD(a1) = REQUIRE_func(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v52) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v51 = v53;
            OUTLINED_FUNCTION_0_18(v39, v40, &v57);
          }

          OUTLINED_FUNCTION_3_6();
          LODWORD(a1) = rfc3394_wrap_legacy(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = OUTLINED_FUNCTION_5_4();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v21, v22);
      if (a1)
      {
        OUTLINED_FUNCTION_1_13();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = rfc3394_wrap_legacy(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v52 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v52) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = firebloom_cbc_one_shot_f(v36, 32, v14 + 12, &firebloom_null_iv, a5);
        v38 = OUTLINED_FUNCTION_4_5(v37);
        LODWORD(a1) = REQUIRE_func(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v52);
        goto LABEL_44;
      }

      v28 = OUTLINED_FUNCTION_5_4();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v28, v29);
      if (a1)
      {
        OUTLINED_FUNCTION_1_13();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v51 = v53;
          OUTLINED_FUNCTION_0_18(v48, v49, v14 + 12);
          v23 = v53;
        }

        else
        {
          v23 = (v14 + 12);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    OUTLINED_FUNCTION_0_17(a1, a2, a3, a4, a5, a6, a7, a8, v51, v52);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return v9;
}

uint64_t unwrap_data(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), uint64_t a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v7 = a3;
  v56 = *MEMORY[0x1E69E9840];
  HIDWORD(v51) = 0;
  __s = 0u;
  v55 = 0u;
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = OUTLINED_FUNCTION_5_4();
            if (!rfc3394_unwrapped_size_legacy(v15, v16))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_13();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v51 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v51) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = firebloom_cbc_one_shot_f(v25, 32, (a1 + 3), &firebloom_null_iv, a5);
              v27 = OUTLINED_FUNCTION_4_5(v26);
              REQUIRE_func(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v51);
              goto LABEL_37;
            }

            v23 = OUTLINED_FUNCTION_5_4();
            if (!rfc3394_unwrapped_size_legacy(v23, v24))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_13();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((v7 & 8) != 0)
            {
              v39 = ccsha256_di();
              OUTLINED_FUNCTION_0_18(v39, v40, (a1 + 3));
            }

            OUTLINED_FUNCTION_3_6();
          }

          if (!rfc3394_unwrap_legacy(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v51) = 32;
    if (*a7 >= 0x20)
    {
      *v52 = 0uLL;
      v53 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          OUTLINED_FUNCTION_6_5(a1, a2, a3, a4);
          v28 = ccaes_cbc_decrypt_mode();
          v29 = firebloom_cbc_one_shot_f(v28, 32, v52, &firebloom_null_iv, 0x20uLL);
          v30 = OUTLINED_FUNCTION_4_5(v29);
          v31 = REQUIRE_func(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        OUTLINED_FUNCTION_6_5(a1, a2, a3, a4);
        if (v7 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v51) = 32;
        if ((v7 & 8) != 0)
        {
          v41 = ccsha256_di();
          p_s = &__s;
          OUTLINED_FUNCTION_0_18(v41, v42, v52);
        }

        OUTLINED_FUNCTION_3_6();
        v31 = rfc3394_unwrap_legacy(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          OUTLINED_FUNCTION_0_17(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        OUTLINED_FUNCTION_0_17(v31, v32, v33, v34, v35, v36, v37, v38, p_s, v51, *v52, *&v52[8], v53, __s, v55);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((v7 & 8) != 0)
  {
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  }

  return v8;
}

uint64_t firebloom_export_pub_key(void *a1, void *a2, unint64_t *a3)
{
  v5 = cczp_bitlen();
  v6 = calloc(((v5 + 7) >> 2) | 1, 1uLL);
  if (!v6)
  {
    return 4294967279;
  }

  v7 = v6;
  v8 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v7;
  *a3 = v8;
  return result;
}

uint64_t der_dict_find_value(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_10_5();
    der_dict_iterate();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t der_dict_get_number(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    OUTLINED_FUNCTION_11_4();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_dict_get_data(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_4();
    der_dict_iterate();
    return 0;
  }

  return result;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = OUTLINED_FUNCTION_18_4(a1);
  if (OUTLINED_FUNCTION_33_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v18, v20))
  {
    *a4 = v19;
    *a3 = v21 - v19;
    result = v22;
    *v4 = v22;
  }

  return result;
}

uint64_t der_array_iterate()
{
  OUTLINED_FUNCTION_24_0();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  OUTLINED_FUNCTION_2_4();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (der_utils_decode_tl(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((der_utils_decode_tl(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t der_utils_decode_tl(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL der_get_BOOL()
{
  OUTLINED_FUNCTION_28_1();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t encode_list_cstr_get_data()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  v12 = *MEMORY[0x1E69E9840];
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (encode_list_get_data(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t encode_list_merge_dict(uint64_t a1)
{
  if (a1)
  {
    return der_dict_iterate() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t encode_list_dict(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, _qsort_compare);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t encode_list_add_der()
{
  result = OUTLINED_FUNCTION_32_1();
  if (v0 && v3 && v4 && v5)
  {
    if (der_get_sizeof(v4, v5) <= (v5 - v4))
    {
      v6 = ccder_sizeof();
      if (!OUTLINED_FUNCTION_27_1(v6))
      {
        return 4294967279;
      }

      OUTLINED_FUNCTION_14_4();
      v7 = ccder_blob_encode_body();
      if (v7)
      {
        OUTLINED_FUNCTION_7_5(v7, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31);
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_13_4(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32);
        OUTLINED_FUNCTION_5_5();
        if (v23 == v1)
        {
          v24 = OUTLINED_FUNCTION_26_1();
          if (v24)
          {
            return OUTLINED_FUNCTION_3_7(v24);
          }
        }
      }

      OUTLINED_FUNCTION_12_5();
      free(v1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t encode_list_add_data()
{
  result = OUTLINED_FUNCTION_32_1();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_25_1();
    if (OUTLINED_FUNCTION_27_1(v5))
    {
      OUTLINED_FUNCTION_14_4();
      v6 = ccder_blob_encode_body();
      if (v6 && (OUTLINED_FUNCTION_23_2(v6, v7, v8, v9, v10, v11, v12, v13, v32), v14 = ccder_blob_encode_tl(), v14) && (OUTLINED_FUNCTION_7_5(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39), OUTLINED_FUNCTION_5_5(), OUTLINED_FUNCTION_13_4(v22, v23, v24, v25, v26, v27, v28, v29, v34, v36, v38, v40), OUTLINED_FUNCTION_5_5(), v30 == v1) && (v31 = OUTLINED_FUNCTION_26_1()) != 0)
      {
        return OUTLINED_FUNCTION_3_7(v31);
      }

      else
      {
        OUTLINED_FUNCTION_12_5();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_cstr_add_data()
{
  OUTLINED_FUNCTION_24_0();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return encode_list_add_data();
    }
  }

  return result;
}

uint64_t encode_list_add_BOOL()
{
  result = OUTLINED_FUNCTION_32_1();
  if (v0 && v2)
  {
    ccder_sizeof();
    v3 = OUTLINED_FUNCTION_25_1();
    v4 = OUTLINED_FUNCTION_27_1(v3);
    if (v4)
    {
      v5 = v4;
      if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_8_5(), OUTLINED_FUNCTION_2_4(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_5(), v6 == v5) && (v7 = OUTLINED_FUNCTION_26_1()) != 0)
      {
        return OUTLINED_FUNCTION_3_7(v7);
      }

      else
      {
        OUTLINED_FUNCTION_12_5();
        free(v5);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_number(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v10 = 8;
  }

  else
  {
    v6 = 9;
    v7 = 48;
    v8 = 1;
    while ((v6 - 2) >= 2)
    {
      v9 = a3 >> v7;
      --v6;
      v7 -= 8;
      if (v5 != v9)
      {
        v8 = v6 - 1;
        goto LABEL_8;
      }
    }

    v6 = 2;
LABEL_8:
    if ((((a3 >> (8 * v8 - 8)) ^ v5) & 0x80) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }
  }

  v18[0] = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    ccder_sizeof();
    v12 = ccder_sizeof();
    v13 = calloc(v12, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = v10;
      do
      {
        *(v18 + v15 - 1) = v3;
        v3 >>= 8;
        --v15;
      }

      while (v15);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_5_5(), OUTLINED_FUNCTION_2_4(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_5(), v16 == v14) && OUTLINED_FUNCTION_26_1())
      {
        result = OUTLINED_FUNCTION_17_4();
        v17[1] = v14;
        v17[2] = v12;
        *v17 = *a1;
        *a1 = v17;
      }

      else
      {
        memset_s(v14, v12, 0, v12);
        free(v14);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_string()
{
  result = OUTLINED_FUNCTION_32_1();
  if (v0 && v3 && v4)
  {
    strlen(v4);
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_25_1();
    if (OUTLINED_FUNCTION_27_1(v5))
    {
      OUTLINED_FUNCTION_14_4();
      if (ccder_blob_encode_body() && (v6 = ccder_blob_encode_tl(), v6) && (OUTLINED_FUNCTION_7_5(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v28, v30), OUTLINED_FUNCTION_5_5(), OUTLINED_FUNCTION_13_4(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31), OUTLINED_FUNCTION_5_5(), v22 == v1) && (v23 = OUTLINED_FUNCTION_26_1()) != 0)
      {
        return OUTLINED_FUNCTION_3_7(v23);
      }

      else
      {
        OUTLINED_FUNCTION_12_5();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t encode_list_add_list(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (encode_list_dict(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v6 = ccder_sizeof();
      v7 = OUTLINED_FUNCTION_27_1(v6);
      v3 = v7;
      if (v7)
      {
        v12 = v7;
        if (ccder_blob_encode_body() && (v15 = v3, v16 = v12, ccder_blob_encode_body(), OUTLINED_FUNCTION_8_5(), v15 = v3, v16 = v8, OUTLINED_FUNCTION_2_4(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_5(), v9 == v3) && (v10 = OUTLINED_FUNCTION_26_1()) != 0)
        {
          v4 = 0;
          v10[1] = v3;
          v10[2] = 0;
          *v10 = *a1;
          *a1 = v10;
          v3 = 0;
        }

        else
        {
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t der_utils_encode_fv_key(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_18_4(a1);
  if (v2)
  {
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v4;
  return 1;
}

uint64_t der_utils_decode_fv_key(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v36 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_4_6();
    v7 = ccder_blob_decode_range();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v5 = v37;
    v15 = (v38 - v37);
    OUTLINED_FUNCTION_21_2(v7, v8, v9, v10, v11, v12, v13, v14, v36, *(&v36 + 1), v37, v38, v39);
LABEL_4:
    OUTLINED_FUNCTION_4_6();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      OUTLINED_FUNCTION_21_2(v16, v17, v18, v19, v20, v21, v22, v23, v36, *(&v36 + 1), v37, v38, v39);
      if (v33 <= 4)
      {
        v34 = *v32;
        *a3 = v5;
        *(a3 + 8) = v15;
        *(a3 + 16) = v34;
        *(a3 + 20) = v6;
        return OUTLINED_FUNCTION_6_6(v24, v25, v26, v27, v28, v29, v30, v31, v36);
      }
    }

    return 0;
  }

  LODWORD(v39) = v4;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v36, 4, v5, &v39);
  if (result)
  {
    v15 = v39;
    goto LABEL_4;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_len(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  OUTLINED_FUNCTION_18_4(a1);
  OUTLINED_FUNCTION_4_6();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_2(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return OUTLINED_FUNCTION_6_6(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return OUTLINED_FUNCTION_6_6(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t der_utils_encode_fv_data(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_4(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_2(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_2(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_6(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_encode_fv_params(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_4(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_2(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_2(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_6(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_decode_fv_params(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_18_4(a1);
  OUTLINED_FUNCTION_4_6();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_2(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_6(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0;
  v3 = v2;
  v19 = 0;
  if (encode_list_add_number(&v19, der_key_state_state, *v2) || encode_list_add_number(&v19, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v19, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v19, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v19, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v19, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v19, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v19, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v19, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v19, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v19, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v19, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v19, der_key_cx_window, *(v3 + 19)), v4)) || (v6 = OUTLINED_FUNCTION_19_3(v4, v5), v6))
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    OUTLINED_FUNCTION_15_5(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  }

  encode_list_free(&v19);
  return v14;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_2(*MEMORY[0x1E69E9840]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_20_2(v3);
        bzero(v7, 0x98uLL);
        v7[4] = der_key_state_failed_attempts;
        v7[9] = der_key_config_max_unlock_attempts;
        v7[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_19();
        if (OUTLINED_FUNCTION_34_1())
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_17_4();
          v5[3] = v6;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t decode_primary_identity_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_2(*MEMORY[0x1E69E9840]);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          OUTLINED_FUNCTION_20_2(v3);
          OUTLINED_FUNCTION_20_2(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = der_key_group_uuid;
          v13 = der_key_uuid;
          OUTLINED_FUNCTION_0_19();
          der_dict_iterate();
          if (der_utils_decode_implicit_raw_octet_string_copy(v10, 4, v7, 16) && der_utils_decode_implicit_raw_octet_string_copy(&v11 + 8, 4, v8, 16))
          {
            return der_utils_decode_implicit_raw_octet_string_copy(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t decode_fv_blob_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_2(*MEMORY[0x1E69E9840]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v8, 0x200uLL);
        v8[4] = der_key_uuid;
        v9[2] = der_key_id;
        v10[2] = der_key_flags;
        v10[7] = der_key_version;
        v10[12] = der_key_state_reserved;
        v12 = der_key_state_failed_attempts;
        v13 = der_key_state_failed_attempts_other;
        v14 = der_key_config_max_unlock_attempts;
        v15 = der_key_state_backoff;
        v16 = der_key_state_backoff_other;
        v17 = der_key_config_capabilities;
        v18 = der_key_state_refcount;
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_34_1();
        *v5 = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy(v9, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!der_utils_decode_implicit_raw_octet_string_copy(v10, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = der_get_number();
        v5[10] = der_get_number();
        v5[11] = der_get_number();
        v5[12] = der_get_number();
        v5[15] = der_get_number();
        v5[13] = der_get_number();
        v5[14] = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy_partial(&v11, 4, v5 + 16, 8u))
        {
          return 0xFFFFFFFFLL;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = der_get_number();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
          return 0;
        }

        der_get_number();
        result = OUTLINED_FUNCTION_17_4();
        v5[20] = v7;
      }
    }
  }

  return result;
}

uint64_t encode_pfk_params_public(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = encode_list_cstr_add_data();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = encode_list_cstr_add_data();
      }

      v7 = OUTLINED_FUNCTION_19_3(a1, a2);
      if (!v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_5(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_pfk_params_internal(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        OUTLINED_FUNCTION_9_5();
        if (der_dict_iterate())
        {
          if (!encode_list_cstr_get_data())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!encode_list_cstr_get_data())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  encode_list_free(&v6);
  return v3;
}

uint64_t encode_icsc_params_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v3 = 4294967285;
  v17 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && encode_list_add_data() || a1[2] && encode_list_add_data() || a1[4] && encode_list_add_data() || a1[6] && encode_list_add_data() || a1[8] && encode_list_add_data() || a1[10] && encode_list_add_data())
    {
      v3 = 4294967273;
    }

    else
    {
      v5 = encode_list_dict(&v17, &v15, &v16);
      if (v5)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_5(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
      }
    }
  }

  encode_list_free(&v17);
  return v3;
}

uint64_t decode_icsc_params_internal(int a1, int a2, void *__s)
{
  v72[29] = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v72, 0xE8uLL);
  v71 = der_key_acm_handle;
  v72[4] = der_key_username;
  v72[9] = der_key_label;
  v72[14] = der_key_data;
  v72[19] = der_key_timestamp;
  v72[24] = der_key_public_key;
  v65 = xmmword_1B0344ED0;
  v66 = 0;
  v67 = &v71;
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_1_14();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v12 = OUTLINED_FUNCTION_2_6(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v71, v68, v69, v70);
    *(v13 + 24) = v12;
    *__s = v14;
    __s[1] = v15;
  }

  OUTLINED_FUNCTION_1_14();
  v16 = ccder_blob_decode_range();
  if (v16)
  {
    v24 = OUTLINED_FUNCTION_2_6(v16, v17, v18, v19, v20, v21, v22, v23, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v25[4] = v24;
    __s[2] = v26;
    __s[3] = v27;
  }

  OUTLINED_FUNCTION_1_14();
  v28 = ccder_blob_decode_range();
  if (v28)
  {
    v36 = OUTLINED_FUNCTION_2_6(v28, v29, v30, v31, v32, v33, v34, v35, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v37 + 104) = v36;
    __s[4] = v38;
    __s[5] = v39;
  }

  OUTLINED_FUNCTION_1_14();
  v40 = ccder_blob_decode_range();
  if (v40)
  {
    v48 = OUTLINED_FUNCTION_2_6(v40, v41, v42, v43, v44, v45, v46, v47, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v49[9] = v48;
    __s[6] = v50;
    __s[7] = v51;
  }

  OUTLINED_FUNCTION_1_14();
  v52 = ccder_blob_decode_range();
  if (v52)
  {
    v60 = OUTLINED_FUNCTION_2_6(v52, v53, v54, v55, v56, v57, v58, v59, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v61 + 184) = v60;
    __s[8] = v62;
    __s[9] = v63;
  }

  OUTLINED_FUNCTION_1_14();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v68;
  __s[11] = (v69 - v68);
  return result;
}

uint64_t encode_fv_params_internal(uint64_t a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!encode_list_cstr_add_data())
      {
        v5 = encode_list_cstr_add_data();
        if (!v5)
        {
          v7 = OUTLINED_FUNCTION_19_3(v5, v6);
          if (!v7)
          {
            v3 = 0;
            OUTLINED_FUNCTION_15_5(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_fv_params_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_20_2(a3);
        OUTLINED_FUNCTION_9_5();
        if (der_dict_iterate())
        {
          encode_list_cstr_get_data();
          encode_list_cstr_get_data();
          v3 = 0;
        }
      }
    }
  }

  encode_list_free(&v5);
  return v3;
}

uint64_t ref_key_create_request_to_class(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_0_19();
    der_dict_iterate();
    return der_get_number() & 0x1F;
  }

  return v2;
}

uint64_t decode_peer_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  bzero(v10, 0xE8uLL);
  v9 = der_key_peer_unlock_token_status;
  v10[4] = der_key_peer_unwrapped_escrow_record_status;
  v10[9] = der_key_peer_wrapped_escrow_record_status;
  v10[14] = der_key_peer_flags;
  v10[19] = der_key_public_key;
  v11[2] = der_key_peer_kcv;
  v6 = xmmword_1B0344ED0;
  v7 = 0;
  v8 = &v9;
  OUTLINED_FUNCTION_0_19();
  der_dict_iterate();
  *a3 = der_get_number();
  *(a3 + 4) = der_get_number();
  *(a3 + 8) = der_get_number();
  *(a3 + 12) = der_get_number();
  v5 = 65;
  if (!der_utils_decode_implicit_raw_octet_string_copy_len(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return der_utils_decode_implicit_raw_octet_string_copy(v12, 4, (a3 + 96), 3) - 1;
}

void *ref_key_op_der_to_enum(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = der_key_op;
      if (der_key_op)
      {
        OUTLINED_FUNCTION_10_5();
        der_dict_iterate();
        return 0;
      }
    }
  }

  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_18_4(a1);
  OUTLINED_FUNCTION_4_6();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_21_2(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return OUTLINED_FUNCTION_6_6(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t der_utils_decode_implicit_uint64(__n128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = OUTLINED_FUNCTION_33_1(*a1, a1, a2, a3, a4, a5, a6, a7, a8, a10, v13, v14);
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v15;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t se_derivation_request_serialize(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  OUTLINED_FUNCTION_2_4();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t se_derivation_request_deserialize(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v72) = a6;
  *(&v72 + 1) = a6 + a7;
  OUTLINED_FUNCTION_2_4();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = OUTLINED_FUNCTION_31_2(v12, v13, v14, v15, v16, v17, v18, v19, v67, 0, v72);
  v29 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21, v22, v23, v24, v25, v26, v27, v28);
  if (!v29)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_22_2();
    *a5 = v37;
  }

  v38 = OUTLINED_FUNCTION_31_2(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
  v47 = der_utils_decode_implicit_uint64(v38, 0x8000000000000002, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v47)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_22_2();
    *a4 = v55;
  }

  v56 = OUTLINED_FUNCTION_31_2(v47, v48, v49, v50, v51, v52, v53, v54, v69, v71, v74);
  if (!der_utils_decode_implicit_uint64(v56, 0x8000000000000001, v57, v58, v59, v60, v61, v62, v63, v64))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_22_2();
    *a3 = v65;
  }

  OUTLINED_FUNCTION_1_14();
  if (ccder_blob_decode_range())
  {
    v72 = v77;
    if (a1)
    {
      if (a2)
      {
        *a1 = v75;
        *a2 = (v76 - v75);
      }
    }
  }

  if (v72 == *(&v72 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t _qsort_compare(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t aks_unpack_data(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = a1 + 1;
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = (v11 + 1);
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x1EEDC3280](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x1EEDC42D8](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}