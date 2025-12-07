uint64_t der_dict_find_value(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_10_1();
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
    OUTLINED_FUNCTION_11_0();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_get_number()
{
  OUTLINED_FUNCTION_28();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t der_dict_get_data(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_11_0();
    der_dict_iterate();
    return 0;
  }

  return result;
}

__n128 der_utils_decode_implicit_raw_octet_string(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = OUTLINED_FUNCTION_18_1(a1);
  if (OUTLINED_FUNCTION_33_0(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v18, v20))
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
  OUTLINED_FUNCTION_24();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  OUTLINED_FUNCTION_2_2();
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
  OUTLINED_FUNCTION_28();
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

uint64_t der_utils_decode_implicit_raw_octet_string_copy(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_5();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_0(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return OUTLINED_FUNCTION_6_4(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t encode_list_cstr_get_data()
{
  OUTLINED_FUNCTION_24();
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
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4 && v5)
  {
    if (der_get_sizeof(v4, v5) <= (v5 - v4))
    {
      v6 = ccder_sizeof();
      if (!OUTLINED_FUNCTION_27(v6))
      {
        return 4294967279;
      }

      OUTLINED_FUNCTION_14_1();
      v7 = ccder_blob_encode_body();
      if (v7)
      {
        OUTLINED_FUNCTION_7_3(v7, v8, v9, v10, v11, v12, v13, v14, v25, v27, v29, v31);
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_13_1(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32);
        OUTLINED_FUNCTION_5_4();
        if (v23 == v1)
        {
          v24 = OUTLINED_FUNCTION_26();
          if (v24)
          {
            return OUTLINED_FUNCTION_3_5(v24);
          }
        }
      }

      OUTLINED_FUNCTION_12_1();
      free(v1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t encode_list_add_data()
{
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_25_0();
    if (OUTLINED_FUNCTION_27(v5))
    {
      OUTLINED_FUNCTION_14_1();
      v6 = ccder_blob_encode_body();
      if (v6 && (OUTLINED_FUNCTION_23_0(v6, v7, v8, v9, v10, v11, v12, v13, v32), v14 = ccder_blob_encode_tl(), v14) && (OUTLINED_FUNCTION_7_3(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39), OUTLINED_FUNCTION_5_4(), OUTLINED_FUNCTION_13_1(v22, v23, v24, v25, v26, v27, v28, v29, v34, v36, v38, v40), OUTLINED_FUNCTION_5_4(), v30 == v1) && (v31 = OUTLINED_FUNCTION_26()) != 0)
      {
        return OUTLINED_FUNCTION_3_5(v31);
      }

      else
      {
        OUTLINED_FUNCTION_12_1();
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
  OUTLINED_FUNCTION_24();
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
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v2)
  {
    ccder_sizeof();
    v3 = OUTLINED_FUNCTION_25_0();
    v4 = OUTLINED_FUNCTION_27(v3);
    if (v4)
    {
      v5 = v4;
      if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_8_2(), OUTLINED_FUNCTION_2_2(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_2(), v6 == v5) && (v7 = OUTLINED_FUNCTION_26()) != 0)
      {
        return OUTLINED_FUNCTION_3_5(v7);
      }

      else
      {
        OUTLINED_FUNCTION_12_1();
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
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (ccder_blob_encode_body(), OUTLINED_FUNCTION_5_4(), OUTLINED_FUNCTION_2_2(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_4(), v16 == v14) && OUTLINED_FUNCTION_26())
      {
        result = OUTLINED_FUNCTION_17_1();
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
  result = OUTLINED_FUNCTION_32_0();
  if (v0 && v3 && v4)
  {
    strlen(v4);
    ccder_sizeof();
    v5 = OUTLINED_FUNCTION_25_0();
    if (OUTLINED_FUNCTION_27(v5))
    {
      OUTLINED_FUNCTION_14_1();
      if (ccder_blob_encode_body() && (v6 = ccder_blob_encode_tl(), v6) && (OUTLINED_FUNCTION_7_3(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v28, v30), OUTLINED_FUNCTION_5_4(), OUTLINED_FUNCTION_13_1(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v29, v31), OUTLINED_FUNCTION_5_4(), v22 == v1) && (v23 = OUTLINED_FUNCTION_26()) != 0)
      {
        return OUTLINED_FUNCTION_3_5(v23);
      }

      else
      {
        OUTLINED_FUNCTION_12_1();
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
      v7 = OUTLINED_FUNCTION_27(v6);
      v3 = v7;
      if (v7)
      {
        v12 = v7;
        if (ccder_blob_encode_body() && (v15 = v3, v16 = v12, ccder_blob_encode_body(), OUTLINED_FUNCTION_8_2(), v15 = v3, v16 = v8, OUTLINED_FUNCTION_2_2(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_8_2(), v9 == v3) && (v10 = OUTLINED_FUNCTION_26()) != 0)
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
  v4 = OUTLINED_FUNCTION_18_1(a1);
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
    OUTLINED_FUNCTION_4_5();
    v7 = ccder_blob_decode_range();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v5 = v37;
    v15 = (v38 - v37);
    OUTLINED_FUNCTION_21_0(v7, v8, v9, v10, v11, v12, v13, v14, v36, *(&v36 + 1), v37, v38, v39);
LABEL_4:
    OUTLINED_FUNCTION_4_5();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      OUTLINED_FUNCTION_21_0(v16, v17, v18, v19, v20, v21, v22, v23, v36, *(&v36 + 1), v37, v38, v39);
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
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_5();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_0(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
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
  v17 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_0(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_0(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
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
  v17 = OUTLINED_FUNCTION_18_1(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_23_0(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_0(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
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
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_5();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_0(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_4(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v19 = 0;
  if (encode_list_add_number(&v19, der_key_state_state, *v2) || encode_list_add_number(&v19, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v19, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v19, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v19, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v19, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v19, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v19, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v19, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v19, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v19, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v19, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v19, der_key_cx_window, *(v3 + 19)), v4)) || (v6 = OUTLINED_FUNCTION_19_0(v4, v5), v6))
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
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x1E69E9840]);
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
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_34_0(v6, v7, v8, v9, v10, v11, v12, v13, 14);
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
      result = OUTLINED_FUNCTION_17_1();
      *(v5 + 76) = v14;
    }
  }

  return result;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x1E69E9840]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_20_0(v3);
        bzero(v15, 0x98uLL);
        v15[4] = der_key_state_failed_attempts;
        v15[9] = der_key_config_max_unlock_attempts;
        v15[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_11();
        if (OUTLINED_FUNCTION_34_0(v6, v7, v8, v9, v10, v11, v12, v13, 4))
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_17_1();
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
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x1E69E9840]);
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
          OUTLINED_FUNCTION_20_0(v3);
          OUTLINED_FUNCTION_20_0(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = der_key_group_uuid;
          v13 = der_key_uuid;
          OUTLINED_FUNCTION_0_11();
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
  result = OUTLINED_FUNCTION_29_0(*MEMORY[0x1E69E9840]);
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
        OUTLINED_FUNCTION_0_11();
        OUTLINED_FUNCTION_34_0(v7, a1 + v6, v8, v9, v10, v11, v12, v13, 13);
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
        result = OUTLINED_FUNCTION_17_1();
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

      v7 = OUTLINED_FUNCTION_19_0(a1, a2);
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
        OUTLINED_FUNCTION_9_2();
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
  v82[29] = *MEMORY[0x1E69E9840];
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
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_34_0(v6, a1 + a2, v7, v8, v9, v10, v11, v12, 6);
  OUTLINED_FUNCTION_1_8();
  v13 = ccder_blob_decode_range();
  if (v13)
  {
    v21 = OUTLINED_FUNCTION_2_4(v13, v14, v15, v16, v17, v18, v19, v20, v74, 0, 0, &v81, v78, v79, v80);
    *(v22 + 24) = v21;
    *__s = v23;
    __s[1] = v24;
  }

  OUTLINED_FUNCTION_1_8();
  v25 = ccder_blob_decode_range();
  if (v25)
  {
    v33 = OUTLINED_FUNCTION_2_4(v25, v26, v27, v28, v29, v30, v31, v32, v74, v75, v76, v77, v78, v79, v80);
    v34[4] = v33;
    __s[2] = v35;
    __s[3] = v36;
  }

  OUTLINED_FUNCTION_1_8();
  v37 = ccder_blob_decode_range();
  if (v37)
  {
    v45 = OUTLINED_FUNCTION_2_4(v37, v38, v39, v40, v41, v42, v43, v44, v74, v75, v76, v77, v78, v79, v80);
    *(v46 + 104) = v45;
    __s[4] = v47;
    __s[5] = v48;
  }

  OUTLINED_FUNCTION_1_8();
  v49 = ccder_blob_decode_range();
  if (v49)
  {
    v57 = OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v74, v75, v76, v77, v78, v79, v80);
    v58[9] = v57;
    __s[6] = v59;
    __s[7] = v60;
  }

  OUTLINED_FUNCTION_1_8();
  v61 = ccder_blob_decode_range();
  if (v61)
  {
    v69 = OUTLINED_FUNCTION_2_4(v61, v62, v63, v64, v65, v66, v67, v68, v74, v75, v76, v77, v78, v79, v80);
    *(v70 + 184) = v69;
    __s[8] = v71;
    __s[9] = v72;
  }

  OUTLINED_FUNCTION_1_8();
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
          v7 = OUTLINED_FUNCTION_19_0(v5, v6);
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
        OUTLINED_FUNCTION_20_0(a3);
        OUTLINED_FUNCTION_9_2();
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
    OUTLINED_FUNCTION_0_11();
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
  v6 = xmmword_1DEDEF050;
  v7 = 0;
  v8 = &v9;
  OUTLINED_FUNCTION_0_11();
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
        OUTLINED_FUNCTION_10_1();
        der_dict_iterate();
        return 0;
      }
    }
  }

  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_18_1(a1);
  OUTLINED_FUNCTION_4_5();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_21_0(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
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

  result = OUTLINED_FUNCTION_33_0(*a1, a1, a2, a3, a4, a5, a6, a7, a8, a10, v13, v14);
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

  v20 = OUTLINED_FUNCTION_31_0(v12, v13, v14, v15, v16, v17, v18, v19, v67, 0, v72);
  v29 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21, v22, v23, v24, v25, v26, v27, v28);
  if (!v29)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_22_0();
    *a5 = v37;
  }

  v38 = OUTLINED_FUNCTION_31_0(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v73);
  v47 = der_utils_decode_implicit_uint64(v38, 0x8000000000000002, v39, v40, v41, v42, v43, v44, v45, v46);
  if (!v47)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_22_0();
    *a4 = v55;
  }

  v56 = OUTLINED_FUNCTION_31_0(v47, v48, v49, v50, v51, v52, v53, v54, v69, v71, v74);
  if (!der_utils_decode_implicit_uint64(v56, 0x8000000000000001, v57, v58, v59, v60, v61, v62, v63, v64))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_22_0();
    *a3 = v65;
  }

  OUTLINED_FUNCTION_1_8();
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