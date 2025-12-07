uint64_t der_utils_decode_fv_key(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v36 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_4_3();
    v7 = ccder_blob_decode_range();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v5 = v37;
    v15 = (v38 - v37);
    OUTLINED_FUNCTION_21_1(v7, v8, v9, v10, v11, v12, v13, v14, v36, *(&v36 + 1), v37, v38, v39);
LABEL_4:
    OUTLINED_FUNCTION_4_3();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      OUTLINED_FUNCTION_21_1(v16, v17, v18, v19, v20, v21, v22, v23, v36, *(&v36 + 1), v37, v38, v39);
      if (v33 <= 4)
      {
        v34 = *v32;
        *a3 = v5;
        *(a3 + 8) = v15;
        *(a3 + 16) = v34;
        *(a3 + 20) = v6;
        return OUTLINED_FUNCTION_6_4(v24, v25, v26, v27, v28, v29, v30, v31, v36);
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
  OUTLINED_FUNCTION_18_2(a1);
  OUTLINED_FUNCTION_4_3();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_1(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t der_utils_encode_fv_data(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_1(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_1(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_4(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_encode_fv_params(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_18_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_1(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_1(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_4(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_decode_fv_params(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_18_2(a1);
  OUTLINED_FUNCTION_4_3();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_1(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_4(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0;
  v3 = v2;
  v19 = 0;
  if (encode_list_add_number(&v19, der_key_state_state, *v2) || encode_list_add_number(&v19, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v19, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v19, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v19, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v19, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v19, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v19, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v19, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v19, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v19, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v19, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v19, der_key_cx_window, *(v3 + 19)), v4)) || (v6 = OUTLINED_FUNCTION_19_2(v4, v5), v6))
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
    OUTLINED_FUNCTION_15_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  }

  encode_list_free(&v19);
  return v14;
}

uint64_t decode_extended_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v15, 0x228uLL);
      v15[4] = der_key_state_lock_state;
      v15[9] = der_key_state_backoff;
      v15[14] = der_key_state_failed_attempts;
      v15[19] = der_key_state_generation_state;
      v15[24] = der_key_state_assertion_set;
      v15[29] = der_key_state_grace_period_enabled;
      v15[34] = der_key_state_recovery_countdown;
      v15[39] = der_key_state_more_state;
      v15[44] = der_key_keybag_handle;
      v15[49] = der_key_config_max_unlock_attempts;
      v15[54] = der_key_config_user_uuid;
      v16[2] = der_key_lock_time;
      v16[7] = der_key_cx_window;
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_34_1(v6, v7, v8, v9, v10, v11, v12, v13, 14);
      *v5 = der_get_number();
      *(v5 + 1) = der_get_number();
      *(v5 + 1) = der_get_number();
      *(v5 + 4) = der_get_number();
      *(v5 + 5) = der_get_number();
      *(v5 + 26) = der_get_number();
      *(v5 + 34) = der_get_number();
      *(v5 + 42) = der_get_number();
      *(v5 + 46) = der_get_number();
      der_utils_decode_implicit_raw_octet_string_copy(v16, 4, v5 + 50, 16);
      v5[66] = der_get_number();
      v5[67] = der_get_number();
      *(v5 + 68) = der_get_number();
      der_get_number();
      result = OUTLINED_FUNCTION_17_2();
      *(v5 + 76) = v14;
    }
  }

  return result;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_20_2(v3);
        bzero(v15, 0x98uLL);
        v15[4] = der_key_state_failed_attempts;
        v15[9] = der_key_config_max_unlock_attempts;
        v15[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_4();
        if (OUTLINED_FUNCTION_34_1(v6, v7, v8, v9, v10, v11, v12, v13, 4))
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_17_2();
          v5[3] = v14;
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
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
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
          OUTLINED_FUNCTION_0_4();
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
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x277D85DE8]);
  if (v3)
  {
    if (a1)
    {
      v5 = v4;
      if (v4)
      {
        v6 = v3;
        memset_s(v4, 0x58uLL, 0, 0x58uLL);
        bzero(v16, 0x200uLL);
        v16[4] = der_key_uuid;
        v17[2] = der_key_id;
        v18[2] = der_key_flags;
        v18[7] = der_key_version;
        v18[12] = der_key_state_reserved;
        v20 = der_key_state_failed_attempts;
        v21 = der_key_state_failed_attempts_other;
        v22 = der_key_config_max_unlock_attempts;
        v23 = der_key_state_backoff;
        v24 = der_key_state_backoff_other;
        v25 = der_key_config_capabilities;
        v26 = der_key_state_refcount;
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_34_1(v7, a1 + v6, v8, v9, v10, v11, v12, v13, 13);
        *v5 = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy(v17, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!der_utils_decode_implicit_raw_octet_string_copy(v18, 4, v5 + 5, 16))
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
        if (!der_utils_decode_implicit_raw_octet_string_copy_partial(&v19, 4, v5 + 16, 8u))
        {
          return 0xFFFFFFFFLL;
        }

        v14 = v5[9];
        if ((v14 & 0x400) != 0)
        {
          *(v5 + 9) = der_get_number();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 0x800) == 0)
        {
          return 0;
        }

        der_get_number();
        result = OUTLINED_FUNCTION_17_2();
        v5[20] = v15;
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

      v7 = OUTLINED_FUNCTION_19_2(a1, a2);
      if (!v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_15_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
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
        OUTLINED_FUNCTION_9_4();
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
        OUTLINED_FUNCTION_15_1(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
      }
    }
  }

  encode_list_free(&v17);
  return v3;
}

uint64_t decode_icsc_params_internal(uint64_t a1, uint64_t a2, void *__s)
{
  v82[29] = *MEMORY[0x277D85DE8];
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v82, 0xE8uLL);
  v81 = der_key_acm_handle;
  v82[4] = der_key_username;
  v82[9] = der_key_label;
  v82[14] = der_key_data;
  v82[19] = der_key_timestamp;
  v82[24] = der_key_public_key;
  v75 = 0;
  v76 = 0;
  v77 = &v81;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_34_1(v6, a1 + a2, v7, v8, v9, v10, v11, v12, 6);
  OUTLINED_FUNCTION_1_5();
  v13 = ccder_blob_decode_range();
  if (v13)
  {
    v21 = OUTLINED_FUNCTION_2_4(v13, v14, v15, v16, v17, v18, v19, v20, v74, 0, 0, &v81, v78, v79, v80);
    *(v22 + 24) = v21;
    *__s = v23;
    __s[1] = v24;
  }

  OUTLINED_FUNCTION_1_5();
  v25 = ccder_blob_decode_range();
  if (v25)
  {
    v33 = OUTLINED_FUNCTION_2_4(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76, v77, v78, v79, v80);
    v34[4] = v33;
    __s[2] = v35;
    __s[3] = v36;
  }

  OUTLINED_FUNCTION_1_5();
  v37 = ccder_blob_decode_range();
  if (v37)
  {
    v45 = OUTLINED_FUNCTION_2_4(v37, v38, v39, v40, v41, v42, v43, v44, v74, v75, v76, v77, v78, v79, v80);
    *(v46 + 104) = v45;
    __s[4] = v47;
    __s[5] = v48;
  }

  OUTLINED_FUNCTION_1_5();
  v49 = ccder_blob_decode_range();
  if (v49)
  {
    v57 = OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v74, v75, v76, v77, v78, v79, v80);
    v58[9] = v57;
    __s[6] = v59;
    __s[7] = v60;
  }

  OUTLINED_FUNCTION_1_5();
  v61 = ccder_blob_decode_range();
  if (v61)
  {
    v69 = OUTLINED_FUNCTION_2_4(v61, v62, v63, v64, v65, v66, v67, v68, v74, v75, v76, v77, v78, v79, v80);
    *(v70 + 184) = v69;
    __s[8] = v71;
    __s[9] = v72;
  }

  OUTLINED_FUNCTION_1_5();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v78;
  __s[11] = (v79 - v78);
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
          v7 = OUTLINED_FUNCTION_19_2(v5, v6);
          if (!v7)
          {
            v3 = 0;
            OUTLINED_FUNCTION_15_1(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
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
        OUTLINED_FUNCTION_9_4();
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
    OUTLINED_FUNCTION_0_4();
    der_dict_iterate();
    return der_get_number() & 0x1F;
  }

  return v2;
}

uint64_t decode_peer_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  bzero(v10, 0xE8uLL);
  v9 = der_key_peer_unlock_token_status;
  v10[4] = der_key_peer_unwrapped_escrow_record_status;
  v10[9] = der_key_peer_wrapped_escrow_record_status;
  v10[14] = der_key_peer_flags;
  v10[19] = der_key_public_key;
  v11[2] = der_key_peer_kcv;
  v6 = xmmword_223E5FBE0;
  v7 = 0;
  v8 = &v9;
  OUTLINED_FUNCTION_0_4();
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
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v2 = der_key_op;
      if (der_key_op)
      {
        OUTLINED_FUNCTION_10_3();
        der_dict_iterate();
        return 0;
      }
    }
  }

  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_18_2(a1);
  OUTLINED_FUNCTION_4_3();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_21_1(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
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

  return OUTLINED_FUNCTION_6_4(v15, v16, v17, v18, v19, v20, v21, v22, v29);
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

  OUTLINED_FUNCTION_2_2();
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
  OUTLINED_FUNCTION_2_2();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = OUTLINED_FUNCTION_31_1(v12, v13, v14, v15, v16, v17, v18, v19, v67, 0, v72);
  v29 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21, v22, v23, v24, v25, v26, v27, v28);
  if (!v29)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_22_1();
    *a5 = v37;
  }

  v38 = OUTLINED_FUNCTION_31_1(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
  v47 = der_utils_decode_implicit_uint64(v38, 0x8000000000000002, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v47)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_22_1();
    *a4 = v55;
  }

  v56 = OUTLINED_FUNCTION_31_1(v47, v48, v49, v50, v51, v52, v53, v54, v69, v71, v74);
  if (!der_utils_decode_implicit_uint64(v56, 0x8000000000000001, v57, v58, v59, v60, v61, v62, v63, v64))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_22_1();
    *a3 = v65;
  }

  OUTLINED_FUNCTION_1_5();
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