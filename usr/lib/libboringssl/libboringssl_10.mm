uint64_t boringssl_context_ssl_context_create_datagram(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1 != -1252936367)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((v3 + 16));
    WeakRetained = v6[36];
  }

  v7 = DTLS_with_buffers_method();
  v8 = boringssl_context_restore_ssl_context(v3, WeakRetained, v7);
  *(v3 + 400) = v8;
  if (a2)
  {
    v9 = 48;
  }

  else
  {
    v9 = 32;
  }

  *(v3 + 548) = v9 | *(v3 + 548) & 0xCF;
  if (v8)
  {
    v10 = boringssl_context_configure_defaults(a1);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __boringssl_context_zlib_compress_data_block_invoke(uint64_t a1, const void *a2, size_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = CBB_add_bytes(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    WeakRetained = objc_loadWeakRetained((v6 + 16));
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained((*(a1 + 40) + 16));
      v10 = v9[435];

      if (v10)
      {
        return v5 != 0;
      }
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = objc_loadWeakRetained((v11 + 16));
      if (v12)
      {
        v13 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v14 = (v13[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return v5 != 0;
      }
    }

    else
    {
LABEL_14:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 40);
        if (v23)
        {
          v14 = objc_loadWeakRetained((v23 + 16));
          v31 = *(a1 + 40);
          if (v14)
          {
            v24 = v31 != 0;
            if (v31)
            {
              v3 = objc_loadWeakRetained((v31 + 16));
              v31 = *(a1 + 40);
            }

            else
            {
              v3 = 0;
            }

            v27 = v3 + 351;
          }

          else
          {
            v24 = 0;
            v27 = &unk_1A9098A9F;
          }

          if (v31)
          {
            v25 = objc_loadWeakRetained((v31 + 16));
            v26 = 0;
          }

          else
          {
            v25 = 0;
            v26 = 1;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 1;
          v27 = &unk_1A9098A9F;
        }

        v33 = 136446978;
        v34 = "boringssl_context_zlib_compress_data_block_invoke";
        v35 = 1024;
        v36 = 756;
        v37 = 2082;
        v38 = v27;
        v39 = 2048;
        v40 = v25;
        _os_log_debug_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Wrote compressed certificate data", &v33, 0x26u);
        if (v26)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    v15 = objc_loadWeakRetained((v6 + 16));
    if (v15)
    {
      v16 = v15;
      v17 = objc_loadWeakRetained((*(a1 + 40) + 16));
      v18 = v17[435];

      if (v18)
      {
        return v5 != 0;
      }
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = objc_loadWeakRetained((v19 + 16));
      if (v20)
      {
        v21 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v14 = (v21[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return v5 != 0;
      }
    }

    else
    {
LABEL_15:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        if (v23)
        {
          v14 = objc_loadWeakRetained((v23 + 16));
          v32 = *(a1 + 40);
          if (v14)
          {
            v24 = v32 != 0;
            if (v32)
            {
              v3 = objc_loadWeakRetained((v32 + 16));
              v32 = *(a1 + 40);
            }

            else
            {
              v3 = 0;
            }

            v30 = v3 + 351;
          }

          else
          {
            v24 = 0;
            v30 = &unk_1A9098A9F;
          }

          if (v32)
          {
            v25 = objc_loadWeakRetained((v32 + 16));
            v29 = 0;
          }

          else
          {
            v25 = 0;
            v29 = 1;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v29 = 1;
          v30 = &unk_1A9098A9F;
        }

        v33 = 136446978;
        v34 = "boringssl_context_zlib_compress_data_block_invoke";
        v35 = 1024;
        v36 = 753;
        v37 = 2082;
        v38 = v30;
        v39 = 2048;
        v40 = v25;
        _os_log_error_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] CBB_add_bytes failed", &v33, 0x26u);
        if (v29)
        {
          goto LABEL_45;
        }

LABEL_44:

LABEL_45:
        if (v24)
        {
        }

        if (v23)
        {
        }
      }

LABEL_26:
    }
  }

  return v5 != 0;
}

BOOL __boringssl_context_zlib_uncompress_data_block_invoke(void *a1, const void *a2, size_t __n)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = *(*(a1[4] + 8) + 24);
  v7 = a1[5] - v6;
  if (v7 < __n)
  {
    v17 = a1[6];
    if (!v17)
    {
      goto LABEL_15;
    }

    WeakRetained = objc_loadWeakRetained((v17 + 16));
    if (WeakRetained)
    {
      v19 = WeakRetained;
      v20 = objc_loadWeakRetained((a1[6] + 16));
      v21 = v20[435];

      if (v21)
      {
        return v7 >= __n;
      }
    }

    v22 = a1[6];
    if (v22)
    {
      v23 = objc_loadWeakRetained((v22 + 16));
      if (v23)
      {
        v24 = objc_loadWeakRetained((a1[6] + 16));
        v16 = (v24[435] & 1) == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        return v7 >= __n;
      }
    }

    else
    {
LABEL_15:
      v16 = 1;
    }

    if (g_boringssl_log)
    {
      v25 = g_boringssl_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = a1[6];
        if (v26)
        {
          v16 = objc_loadWeakRetained((v26 + 16));
          v35 = a1[6];
          if (v16)
          {
            v27 = v35 != 0;
            if (v35)
            {
              v3 = objc_loadWeakRetained((v35 + 16));
              v35 = a1[6];
            }

            else
            {
              v3 = 0;
            }

            v33 = v3 + 351;
          }

          else
          {
            v27 = 0;
            v33 = &unk_1A9098A9F;
          }

          if (v35)
          {
            v28 = objc_loadWeakRetained((v35 + 16));
            v32 = 0;
          }

          else
          {
            v28 = 0;
            v32 = 1;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v32 = 1;
          v33 = &unk_1A9098A9F;
        }

        v36 = 136446978;
        v37 = "boringssl_context_zlib_uncompress_data_block_invoke";
        v38 = 1024;
        v39 = 786;
        v40 = 2082;
        v41 = v33;
        v42 = 2048;
        v43 = v28;
        _os_log_error_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Uncompressed data length exceeded buffer bounds", &v36, 0x26u);
        if (v32)
        {
          goto LABEL_52;
        }

LABEL_51:

LABEL_52:
        if (v27)
        {
        }

        if (v26)
        {
        }
      }

LABEL_26:
    }
  }

  else
  {
    memcpy((a1[7] + v6), a2, __n);
    *(*(a1[4] + 8) + 24) += __n;
    v8 = a1[6];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = objc_loadWeakRetained((v8 + 16));
    if (v9)
    {
      v10 = v9;
      v11 = objc_loadWeakRetained((a1[6] + 16));
      v12 = v11[435];

      if (v12)
      {
        return v7 >= __n;
      }
    }

    v13 = a1[6];
    if (v13)
    {
      v14 = objc_loadWeakRetained((v13 + 16));
      if (v14)
      {
        v15 = objc_loadWeakRetained((a1[6] + 16));
        v16 = (v15[435] & 1) == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        return v7 >= __n;
      }
    }

    else
    {
LABEL_14:
      v16 = 1;
    }

    if (g_boringssl_log)
    {
      v25 = g_boringssl_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = a1[6];
        if (v26)
        {
          v16 = objc_loadWeakRetained((v26 + 16));
          v34 = a1[6];
          if (v16)
          {
            v27 = v34 != 0;
            if (v34)
            {
              v3 = objc_loadWeakRetained((v34 + 16));
              v34 = a1[6];
            }

            else
            {
              v3 = 0;
            }

            v30 = v3 + 351;
          }

          else
          {
            v27 = 0;
            v30 = &unk_1A9098A9F;
          }

          if (v34)
          {
            v28 = objc_loadWeakRetained((v34 + 16));
            v29 = 0;
          }

          else
          {
            v28 = 0;
            v29 = 1;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 1;
          v30 = &unk_1A9098A9F;
        }

        v36 = 136446978;
        v37 = "boringssl_context_zlib_uncompress_data_block_invoke";
        v38 = 1024;
        v39 = 791;
        v40 = 2082;
        v41 = v30;
        v42 = 2048;
        v43 = v28;
        _os_log_debug_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Wrote decompressed certificate data", &v36, 0x26u);
        if (v29)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      goto LABEL_26;
    }
  }

  return v7 >= __n;
}

uint64_t boringssl_context_send_alert(const SSL *a1, unsigned int a2, uint64_t a3)
{
  v5 = SSL_get_ex_data(a1, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*v5 != -1252936367)
  {
    return 0;
  }

  v7 = v5[1];
  if (!v7 || boringssl_session_get_state(v5) > 3 || (boringssl_session_is_cancelled(v6) & 1) != 0)
  {
    return 0;
  }

  if (a2 - 1 >= 3)
  {
    a2 = 0;
  }

  WeakRetained = objc_loadWeakRetained((v7 + 16));
  v10 = nw_protocol_boringssl_send_alert(WeakRetained, a2, a3);

  return v10;
}

uint64_t __boringssl_context_restore_ssl_context_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!boringssl_context_state_is_context_state(v5))
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained((v7 + 16));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v11 = v10[435];

      if (v11)
      {
        goto LABEL_14;
      }
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = objc_loadWeakRetained((v12 + 16));
      if (v13)
      {
        v14 = objc_loadWeakRetained((*(a1 + 32) + 16));
        v15 = (v14[435] & 1) == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_8:
      v15 = 1;
    }

    if (!g_boringssl_log)
    {
LABEL_14:

      v6 = 0;
      goto LABEL_15;
    }

    v16 = g_boringssl_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      goto LABEL_14;
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v15 = objc_loadWeakRetained((v18 + 16));
      v23 = *(a1 + 32);
      if (v15)
      {
        v19 = v23 != 0;
        if (v23)
        {
          v3 = objc_loadWeakRetained((v23 + 16));
          v23 = *(a1 + 32);
        }

        else
        {
          v3 = 0;
        }

        v22 = v3 + 351;
      }

      else
      {
        v19 = 0;
        v22 = &unk_1A9098A9F;
      }

      if (v23)
      {
        v20 = objc_loadWeakRetained((v23 + 16));
        v21 = 0;
      }

      else
      {
        v20 = 0;
        v21 = 1;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 1;
      v22 = &unk_1A9098A9F;
    }

    v24 = 136446978;
    v25 = "boringssl_context_restore_ssl_context_block_invoke";
    v26 = 1024;
    v27 = 2784;
    v28 = 2082;
    v29 = v22;
    v30 = 2048;
    v31 = v20;
    _os_log_error_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Cached context state is invalid.", &v24, 0x26u);
    if (v21)
    {
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (!v19)
      {
LABEL_29:
        if (!v18)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }
    }

    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_33:

    goto LABEL_13;
  }

LABEL_15:
  *(*(*(a1 + 40) + 8) + 24) = boringssl_context_state_get_ssl_ctx(v6);

  return 0;
}

uint64_t boringssl_context_error_print(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || *a3 != -1252936367)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  if (!v3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained((v3 + 16));
    v7 = v6[435];

    if (v7)
    {
      return 1;
    }
  }

  v8 = objc_loadWeakRetained((v3 + 16));
  if (v8)
  {
    v9 = objc_loadWeakRetained((v3 + 16));
    v10 = (v9[435] & 1) == 0;
  }

  else
  {
    v10 = 1;
  }

  result = 1;
  if (v10 && g_boringssl_log)
  {
    v12 = g_boringssl_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_error_print_cold_1();
    }

    return 1;
  }

  return result;
}

void __boringssl_context_new_session_handler_block_invoke_238(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  (*(*(*(a1 + 32) + 160) + 16))();
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v7 = v6[435];

    if (v7)
    {
      return;
    }
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_10;
  }

  v9 = objc_loadWeakRetained((v8 + 16));
  if (v9)
  {
    v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v11 = (v10[435] & 1) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_10:
    if (!g_boringssl_log)
    {
      return;
    }

    v12 = g_boringssl_log;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v13 = *(a1 + 32);
    if (!v13)
    {
      v15 = 0;
      v16 = 0;
      v17 = 1;
      v18 = &unk_1A9098A9F;
      goto LABEL_22;
    }

    v11 = objc_loadWeakRetained((v13 + 16));
    v14 = *(a1 + 32);
    if (v11)
    {
      v15 = v14 != 0;
      if (v14)
      {
        v1 = objc_loadWeakRetained((v14 + 16));
        v14 = *(a1 + 32);
      }

      else
      {
        v1 = 0;
      }

      v18 = v1 + 351;
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
      v18 = &unk_1A9098A9F;
      if (v14)
      {
LABEL_21:
        v16 = objc_loadWeakRetained((v14 + 16));
        v17 = 0;
LABEL_22:
        v19 = 136446978;
        v20 = "boringssl_context_new_session_handler_block_invoke";
        v21 = 1024;
        v22 = 1523;
        v23 = 2082;
        v24 = v18;
        v25 = 2048;
        v26 = v16;
        _os_log_impl(&dword_1A8FF5000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Returning from session update block", &v19, 0x26u);
        if (v17)
        {
          if (!v15)
          {
            goto LABEL_24;
          }
        }

        else
        {

          if (!v15)
          {
LABEL_24:
            if (!v13)
            {
LABEL_26:

              return;
            }

LABEL_25:

            goto LABEL_26;
          }
        }

        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v16 = 0;
    v17 = 1;
    goto LABEL_22;
  }
}

uint64_t OUTLINED_FUNCTION_11_1(int a1)
{

  return kdebug_trace();
}

_BYTE *x25519_ge_tobytes(_BYTE *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v4;
  v12[1] = v4;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v4;
  v10[1] = v4;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v4;
  v8[1] = v4;
  v5 = *(a2 + 96);
  v14 = *(a2 + 80);
  v15 = v5;
  v16 = *(a2 + 112);
  fe_loose_invert(v12, &v14);
  fe_mul_impl(v10, a2, v12);
  fe_mul_impl(v8, (a2 + 40), v12);
  fe_tobytes(a1, v8);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v6;
  v15 = v6;
  result = fe_tobytes(&v14, v10);
  a1[31] ^= v14 << 7;
  return result;
}

uint64_t x25519_ge_frombytes_vartime(uint64_t a1, int64x2_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v25[0] = v4;
  v25[1] = v4;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v4;
  v23[1] = v4;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v4;
  v21[1] = v4;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v4;
  v19[1] = v4;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v4;
  v17[1] = v4;
  v5 = a2[1];
  v31 = *a2;
  v32 = v5;
  v32.i8[15] = v5.i8[15] & 0x7F;
  fe_frombytes_strict((a1 + 40), &v31);
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 1;
  fe_sq_tt(v21, (a1 + 40));
  fe_mul_impl(v19, v21, d);
  fe_sub(v23, v21, (a1 + 80));
  fe_carry(v25, v23);
  fe_add(v23, v19, (a1 + 80));
  fe_mul_impl(v21, v25, v23);
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v29[0] = v6;
  v29[1] = v6;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v6;
  v27[1] = v6;
  fe_sq_tt(&v31, v21);
  fe_sq_tt(v29, &v31);
  fe_sq_tt(v29, v29);
  fe_mul_impl(v29, v21, v29);
  fe_mul_impl(&v31, &v31, v29);
  fe_sq_tt(&v31, &v31);
  fe_mul_impl(&v31, v29, &v31);
  fe_sq_tt(v29, &v31);
  v7 = 4;
  do
  {
    fe_sq_tt(v29, v29);
    --v7;
  }

  while (v7);
  fe_mul_impl(&v31, v29, &v31);
  fe_sq_tt(v29, &v31);
  v8 = 9;
  do
  {
    fe_sq_tt(v29, v29);
    --v8;
  }

  while (v8);
  fe_mul_impl(v29, v29, &v31);
  fe_sq_tt(v27, v29);
  v9 = 19;
  do
  {
    fe_sq_tt(v27, v27);
    --v9;
  }

  while (v9);
  fe_mul_impl(v29, v27, v29);
  fe_sq_tt(v29, v29);
  v10 = 9;
  do
  {
    fe_sq_tt(v29, v29);
    --v10;
  }

  while (v10);
  fe_mul_impl(&v31, v29, &v31);
  fe_sq_tt(v29, &v31);
  v11 = 49;
  do
  {
    fe_sq_tt(v29, v29);
    --v11;
  }

  while (v11);
  fe_mul_impl(v29, v29, &v31);
  fe_sq_tt(v27, v29);
  v12 = 99;
  do
  {
    fe_sq_tt(v27, v27);
    --v12;
  }

  while (v12);
  fe_mul_impl(v29, v27, v29);
  fe_sq_tt(v29, v29);
  v13 = 49;
  do
  {
    fe_sq_tt(v29, v29);
    --v13;
  }

  while (v13);
  fe_mul_impl(&v31, v29, &v31);
  fe_sq_tt(&v31, &v31);
  fe_sq_tt(&v31, &v31);
  fe_mul_impl(a1, &v31, v21);
  fe_mul_impl(a1, a1, v25);
  fe_sq_tt(v19, a1);
  fe_mul_impl(v19, v19, v23);
  fe_sub(v17, v19, v25);
  if (fe_isnonzero(v17))
  {
    fe_add(v17, v19, v25);
    if (fe_isnonzero(v17))
    {
      return 0;
    }

    fe_mul_impl(a1, a1, sqrtm1);
  }

  v15.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v15.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v31 = v15;
  v32 = v15;
  fe_tobytes(&v31, a1);
  if ((v31.i8[0] & 1) != a2[1].u8[15] >> 7)
  {
    v33 = 0xAAAAAAAAAAAAAAAALL;
    v16.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v16.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v31 = v16;
    v32 = v16;
    fe_neg(&v31, a1);
    fe_carry(a1, &v31);
  }

  fe_mul_impl((a1 + 120), a1, (a1 + 40));
  return 1;
}

BOOL fe_isnonzero(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = v1;
  v4[1] = v1;
  fe_carry(v4, a1);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v2;
  v6[1] = v2;
  fe_tobytes(v6, v4);
  return CRYPTO_memcmp(v6, fe_isnonzero_zero, 32) != 0;
}

unint64_t *x25519_ge_p3_to_cached(uint64_t a1, uint64_t a2)
{
  fe_add(a1, (a2 + 40), a2);
  fe_sub((a1 + 40), (a2 + 40), a2);
  v4 = *(a2 + 80);
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;

  return fe_mul_impl((a1 + 120), (a2 + 120), d2);
}

int64x2_t *x25519_ge_add(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v6;
  v14[1] = v6;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v6;
  v12[1] = v6;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v6;
  v10[1] = v6;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v6;
  v8[1] = v6;
  fe_add(a1, (a2 + 40), a2);
  fe_sub((a1 + 40), (a2 + 40), a2);
  fe_mul_impl(v10, a1, a3);
  fe_mul_impl(v12, (a1 + 40), a3 + 5);
  fe_mul_impl(v8, a3 + 15, (a2 + 120));
  fe_mul_impl(v14, (a2 + 80), a3 + 10);
  fe_add((a1 + 120), v14, v14);
  fe_sub(a1, v10, v12);
  fe_add((a1 + 40), v10, v12);
  fe_carry(v10, (a1 + 120));
  fe_add((a1 + 80), v10, v8);
  return fe_sub((a1 + 120), v10, v8);
}

int64x2_t *x25519_ge_sub(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v6;
  v14[1] = v6;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v6;
  v12[1] = v6;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v6;
  v10[1] = v6;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v6;
  v8[1] = v6;
  fe_add(a1, (a2 + 40), a2);
  fe_sub((a1 + 40), (a2 + 40), a2);
  fe_mul_impl(v10, a1, a3 + 5);
  fe_mul_impl(v12, (a1 + 40), a3);
  fe_mul_impl(v8, a3 + 15, (a2 + 120));
  fe_mul_impl(v14, (a2 + 80), a3 + 10);
  fe_add((a1 + 120), v14, v14);
  fe_sub(a1, v10, v12);
  fe_add((a1 + 40), v10, v12);
  fe_carry(v10, (a1 + 120));
  fe_sub((a1 + 80), v10, v8);
  return fe_add((a1 + 120), v10, v8);
}

unsigned __int16 *x25519_sc_reduce(unsigned __int16 *result)
{
  v1 = *(result + 15);
  v2 = *(result + 9);
  v3 = (v2 >> 24) | (*(result + 40) << 8) | (*(result + 41) << 16);
  v4 = ((HIBYTE(*(result + 11)) | (*(result + 48) << 8) | (*(result + 49) << 16)) >> 2) & 0x1FFFFF;
  v5 = (*(result + 49) >> 7) & 0x1FFFFF;
  v6 = (*(result + 13) >> 4) & 0x1FFFFF;
  v7 = ((HIBYTE(*(result + 13)) | (*(result + 56) << 8) | (*(result + 57) << 16)) >> 1) & 0x1FFFFF;
  v8 = ((v1 >> 6) & 0x1FFFFF) + 666643 * v4;
  v9 = (*(result + 21) | ((*(result + 23) & 0x1F) << 16)) + 470296 * v5 + 666643 * v6 + 654183 * v4;
  v10 = (((v1 >> 24) | (*(result + 19) << 8) | (*(result + 20) << 16)) >> 3) + 666643 * v5 + 470296 * v4 + ((v8 + 0x100000) >> 21);
  v11 = ((*(result + 23) >> 5) & 0x1FFFFF) + 654183 * v5 + 470296 * v6 - 997805 * v4 + 666643 * v7 + ((v9 + 0x100000) >> 21);
  v12 = (((HIBYTE(*(result + 23)) | (*(result + 27) << 8) | (*(result + 28) << 16)) >> 2) & 0x1FFFFF) - 997805 * v5 + 654183 * v6 + 136657 * v4;
  v13 = ((*(result + 7) >> 7) & 0x1FFFFF) + 136657 * v5 - 997805 * v6 - 683901 * v4;
  v14 = ((*(result + 31) >> 4) & 0x1FFFFF) - 683901 * v5 + 136657 * v6;
  v15 = (((HIBYTE(*(result + 31)) | (*(result + 35) << 8) | (*(result + 36) << 16)) >> 1) & 0x1FFFFF) - 683901 * v6;
  v16 = *(result + 15) >> 3;
  v17 = ((v2 >> 6) & 0x1FFFFF) - 997805 * v16;
  v18 = (v3 >> 3) + 136657 * v16;
  v19 = (result[21] | ((result[22] & 0x1F) << 16)) - 683901 * v16;
  v20 = v14 + 470296 * v16;
  v21 = v13 + 666643 * v16;
  v22 = v15 + 654183 * v16;
  v23 = (*(result + 57) >> 6) & 0x1FFFFF;
  v24 = v17 + 136657 * v23 - 683901 * v7;
  v25 = v20 + 654183 * v23 - 997805 * v7;
  v26 = v12 + 666643 * v23 + 470296 * v7;
  v27 = v21 + 470296 * v23 + 654183 * v7 + ((v26 + 0x100000) >> 21);
  v28 = v22 - 997805 * v23 + 136657 * v7 + ((v25 + 0x100000) >> 21);
  v29 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000);
  v30 = v18 - 683901 * v23 + ((v24 + 0x100000) >> 21);
  v31 = ((*(result + 11) >> 5) & 0x1FFFFF) + ((v19 + 0x100000) >> 21);
  v32 = v29 + ((v27 + 0x100000) >> 21);
  v33 = v24 - ((v24 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v28 + 0x100000) >> 21);
  v34 = v28 - ((v28 + 0x100000) & 0xFFFFFFFFFFE00000);
  v35 = v19 - ((v19 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v30 + 0x100000) >> 21);
  v36 = v30 - ((v30 + 0x100000) & 0xFFFFFFFFFFE00000);
  v37 = v26 - 683901 * v31 - ((v26 + 0x100000) & 0xFFFFFFFFFFE00000);
  v38 = ((*(result + 7) >> 7) & 0x1FFFFF) + 666643 * v36;
  v39 = ((*(result + 5) >> 4) & 0x1FFFFF) + 666643 * v35 + 470296 * v36;
  v40 = (((HIBYTE(*(result + 5)) | (*(result + 14) << 8) | (*(result + 15) << 16)) >> 1) & 0x1FFFFF) + 666643 * v31 + 470296 * v35 + 654183 * v36;
  v41 = v8 - ((v8 + 0x100000) & 0x7FFFFE00000) + 470296 * v31 + 654183 * v35 - 997805 * v36;
  v42 = v10 - ((v10 + 0x100000) & 0x7FFFFFFFFFE00000) + 654183 * v31 - 997805 * v35 + 136657 * v36;
  v43 = v9 - ((v9 + 0x100000) & 0xFFFFFE00000) + ((v10 + 0x100000) >> 21) - 997805 * v31 + 136657 * v35 - 683901 * v36;
  v44 = (((HIBYTE(*(result + 1)) | (*(result + 6) << 8) | (*(result + 7) << 16)) >> 2) & 0x1FFFFF) + 666643 * v33;
  v45 = v38 + 470296 * v33;
  v46 = v39 + 654183 * v33;
  v47 = v40 - 997805 * v33;
  v48 = v41 + 136657 * v33;
  v49 = v42 - 683901 * v33;
  v50 = v48 - 683901 * v34;
  v51 = v37 + ((v11 + 0x100000) >> 21);
  v52 = (*result | ((result[1] & 0x1F) << 16)) + 666643 * v32;
  v53 = v44 + 470296 * v34 + 654183 * v32;
  v54 = v45 + 654183 * v34 - 997805 * v32;
  v55 = v46 - 997805 * v34 + 136657 * v32;
  v56 = v47 + 136657 * v34 - 683901 * v32;
  v57 = ((*(result + 1) >> 5) & 0x1FFFFF) + 666643 * v34 + 470296 * v32 + ((v52 + 0x100000) >> 21);
  v58 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v49 + ((v50 + 0x100000) >> 21);
  v60 = v50 - ((v50 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v11 + 136657 * v31 - ((v11 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v35 + ((v43 + 0x100000) >> 21);
  v62 = v27 - ((v27 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v51 + 0x100000) >> 21);
  v63 = v57 + 0x100000;
  v64 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v59 + 0x100000) >> 21);
  v65 = v59 - ((v59 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v51 - ((v51 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v61 + 0x100000) >> 21);
  v67 = v61 - ((v61 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = (v62 + 0x100000) >> 21;
  v69 = v54 + ((v53 + 0x100000) >> 21);
  v70 = v69 - 997805 * v68 - ((v69 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v56 + ((v55 + 0x100000) >> 21);
  v72 = v55 + 136657 * v68 - ((v55 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v69 + 0x100000) >> 21);
  v73 = v58 + 666643 * v68;
  v74 = v71 - 683901 * v68;
  v71 += 0x100000;
  v75 = v57 + 470296 * v68 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000) + (v73 >> 21);
  v76 = v53 + 654183 * v68 - ((v53 + 0x100000) & 0xFFFFFFFFFFE00000) + (v63 >> 21) + (v75 >> 21);
  v77 = v70 + (v76 >> 21);
  v78 = v72 + (v77 >> 21);
  v79 = v74 - (v71 & 0xFFFFFFFFFFE00000) + (v78 >> 21);
  v80 = v60 + (v71 >> 21) + (v79 >> 21);
  v81 = v65 + (v80 >> 21);
  v82 = v64 + (v81 >> 21);
  v83 = v67 + (v82 >> 21);
  v84 = v66 + (v83 >> 21);
  v85 = v62 - ((v62 + 0x100000) & 0xFFFFFFFFFFE00000) + (v84 >> 21);
  v86 = (v73 & 0x1FFFFF) + 666643 * (v85 >> 21);
  *(result + 1) = (v73 + 11283 * (v85 >> 21)) >> 8;
  v87 = (v75 & 0x1FFFFF) + 470296 * (v85 >> 21) + (v86 >> 21);
  *result = v73 + 19 * (v85 >> 21);
  *(result + 2) = (((v73 & 0x1FFFFF) + 666643 * (v85 >> 21)) >> 16) & 0x1F | (32 * (v75 + 24 * (v85 >> 21) + (v86 >> 21)));
  *(result + 3) = v87 >> 3;
  *(result + 4) = v87 >> 11;
  v88 = (v76 & 0x1FFFFF) + 654183 * (v85 >> 21) + (v87 >> 21);
  *(result + 5) = (v87 >> 19) & 3 | (4 * (v76 + 103 * (v85 >> 21) + (v87 >> 21)));
  *(result + 6) = v88 >> 6;
  v89 = (v77 & 0x1FFFFF) - 997805 * (v85 >> 21) + (v88 >> 21);
  *(result + 7) = (v88 >> 14) & 0x7F | ((v77 - -83 * (v85 >> 21) + (v88 >> 21)) << 7);
  *(result + 8) = v89 >> 1;
  *(result + 9) = v89 >> 9;
  v90 = (v78 & 0x1FFFFF) + 136657 * (v85 >> 21) + (v89 >> 21);
  *(result + 10) = (v89 >> 17) & 0xF | (16 * (v78 - 47 * (v85 >> 21) + (v89 >> 21)));
  *(result + 11) = v90 >> 4;
  *(result + 12) = v90 >> 12;
  v91 = (v79 & 0x1FFFFF) - 683901 * (v85 >> 21) + (v90 >> 21);
  *(result + 13) = ((v90 & 0x100000) != 0) | (2 * (v79 - 125 * (v85 >> 21) + (v90 >> 21)));
  *(result + 14) = v91 >> 7;
  v92 = (v80 & 0x1FFFFF) + (v91 >> 21);
  *(result + 15) = (v91 >> 15) & 0x3F | ((v80 + (v91 >> 21)) << 6);
  *(result + 16) = v92 >> 2;
  *(result + 17) = v92 >> 10;
  v93 = (v81 & 0x1FFFFF) + (v92 >> 21);
  *(result + 18) = (v92 >> 18) & 7 | (8 * (v81 + (v92 >> 21)));
  *(result + 19) = v93 >> 5;
  v94 = (v82 & 0x1FFFFF) + (v93 >> 21);
  *(result + 20) = v93 >> 13;
  *(result + 22) = (v82 + (v93 >> 21)) >> 8;
  v95 = (v83 & 0x1FFFFF) + (v94 >> 21);
  *(result + 21) = v94;
  *(result + 23) = BYTE2(v94) & 0x1F | (32 * (v83 + (v94 >> 21)));
  *(result + 24) = v95 >> 3;
  *(result + 25) = v95 >> 11;
  v96 = (v84 & 0x1FFFFF) + (v95 >> 21);
  v97 = (v85 & 0x1FFFFF) + (v96 >> 21);
  *(result + 26) = (v95 >> 19) & 3 | (4 * (v84 + (v95 >> 21)));
  *(result + 27) = v96 >> 6;
  *(result + 28) = (v96 >> 14) & 0x7F | ((v85 + (v96 >> 21)) << 7);
  *(result + 29) = ((v96 >> 21) + v85) >> 1;
  *(result + 30) = v97 >> 9;
  *(result + 31) = v97 >> 17;
  return result;
}

double ED25519_keypair(uint64_t a1, _OWORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  RAND_bytes(v6, 32);
  *&result = ED25519_keypair_from_seed(a1, a2, v6).n128_u64[0];
  return result;
}

__n128 ED25519_keypair_from_seed(uint64_t a1, _OWORD *a2, unsigned __int8 *d)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v6;
  v15 = v6;
  *md = v6;
  v13 = v6;
  SHA512(d, 0x20uLL, md);
  md[0] &= 0xF8u;
  HIBYTE(v13) = HIBYTE(v13) & 0x3F | 0x40;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[8] = v7;
  v11[9] = v7;
  v11[6] = v7;
  v11[7] = v7;
  v11[4] = v7;
  v11[5] = v7;
  v11[2] = v7;
  v11[3] = v7;
  v11[0] = v7;
  v11[1] = v7;
  x25519_ge_scalarmult_base(v11, md);
  x25519_ge_tobytes(a1, v11);
  v8 = *(d + 1);
  *a2 = *d;
  a2[1] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  a2[2] = *a1;
  a2[3] = v10;
  return result;
}

uint64_t ED25519_sign(_BYTE *a1, const void *a2, size_t a3, unsigned __int8 *d)
{
  v178 = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v177[0] = v8;
  v177[1] = v8;
  *md = v8;
  *&md[16] = v8;
  SHA512(d, 0x20uLL, md);
  md[0] &= 0xF8u;
  md[31] = md[31] & 0x3F | 0x40;
  *&c.num = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.u.p[96] = v9;
  *&c.u.p[112] = v9;
  *&c.u.p[64] = v9;
  *&c.u.p[80] = v9;
  *&c.u.p[32] = v9;
  *&c.u.p[48] = v9;
  *c.u.d = v9;
  *&c.u.p[16] = v9;
  *&c.h[6] = v9;
  *&c.Nl = v9;
  *&c.h[2] = v9;
  *&c.h[4] = v9;
  *c.h = v9;
  SHA512_Init(&c);
  SHA512_Update(&c, v177, 0x20uLL);
  SHA512_Update(&c, a2, a3);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v173 = v10;
  v174 = v10;
  *v172 = v10;
  *&v172[16] = v10;
  SHA512_Final(v172, &c);
  x25519_sc_reduce(v172);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v168[8] = v11;
  v168[9] = v11;
  v168[6] = v11;
  v168[7] = v11;
  v168[4] = v11;
  v168[5] = v11;
  v168[2] = v11;
  v168[3] = v11;
  v168[0] = v11;
  v168[1] = v11;
  x25519_ge_scalarmult_base(v168, v172);
  x25519_ge_tobytes(a1, v168);
  SHA512_Init(&c);
  SHA512_Update(&c, a1, 0x20uLL);
  SHA512_Update(&c, d + 32, 0x20uLL);
  SHA512_Update(&c, a2, a3);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v170 = v12;
  v171 = v12;
  *v169 = v12;
  *&v169[16] = v12;
  SHA512_Final(v169, &c);
  x25519_sc_reduce(v169);
  v13 = *v169 | ((v169[2] & 0x1F) << 16);
  v14 = *&v169[21] | ((v169[23] & 0x1F) << 16);
  v15 = *md | ((md[2] & 0x1F) << 16);
  v16 = *&md[21] | ((md[23] & 0x1F) << 16);
  v17 = (*&v169[2] >> 5) & 0x1FFFFF;
  v18 = ((v169[5] | (v169[6] << 8) | (v169[7] << 16)) >> 2) & 0x1FFFFF;
  v19 = (*&md[2] >> 5) & 0x1FFFFF;
  v20 = ((md[5] | (md[6] << 8) | (md[7] << 16)) >> 2) & 0x1FFFFF;
  v167 = v19 * v17 + v15 * v18 + v20 * v13 + (((v172[5] | (v172[6] << 8) | (v172[7] << 16)) >> 2) & 0x1FFFFF);
  v21 = (*&v169[7] >> 7) & 0x1FFFFF;
  v22 = (*&v169[10] >> 4) & 0x1FFFFF;
  v23 = (*&md[7] >> 7) & 0x1FFFFF;
  v24 = (*&md[10] >> 4) & 0x1FFFFF;
  v25 = v19 * v21 + v15 * v22 + v23 * v17 + v13 * v24 + v20 * v18 + ((*&v172[10] >> 4) & 0x1FFFFF);
  v26 = ((v169[13] | (v169[14] << 8) | (v169[15] << 16)) >> 1) & 0x1FFFFF;
  v27 = (*&v169[15] >> 6) & 0x1FFFFF;
  v28 = (*&md[15] >> 6) & 0x1FFFFF;
  v29 = ((md[13] | (md[14] << 8) | (md[15] << 16)) >> 1) & 0x1FFFFF;
  v166 = v26 * v19 + v15 * v27 + v23 * v21 + v18 * v24 + v20 * v22 + v13 * v28 + v29 * v17 + ((*&v172[15] >> 6) & 0x1FFFFF);
  v30 = (v169[18] | (v169[19] << 8) | (v169[20] << 16)) >> 3;
  v31 = (md[18] | (md[19] << 8) | (md[20] << 16)) >> 3;
  v165 = v30 * v19 + v15 * v14 + v26 * v23 + v24 * v22 + v20 * v27 + v18 * v28 + v29 * v21 + v31 * v17 + v16 * v13 + *&v172[21] + ((v172[23] & 0x1F) << 16);
  v32 = (*&v169[23] >> 5) & 0x1FFFFF;
  v33 = ((HIBYTE(*&v169[23]) | (v169[27] << 8) | (v169[28] << 16)) >> 2) & 0x1FFFFF;
  v34 = (*&md[23] >> 5) & 0x1FFFFF;
  v35 = ((HIBYTE(*&md[23]) | (md[27] << 8) | (md[28] << 16)) >> 2) & 0x1FFFFF;
  v164 = v19 * v32 + v15 * v33 + v30 * v23 + v24 * v27 + v20 * v14 + v28 * v22 + v29 * v26 + v31 * v21 + v34 * v17 + v16 * v18 + v35 * v13 + (((HIBYTE(*&v172[23]) | (v172[27] << 8) | (v172[28] << 16)) >> 2) & 0x1FFFFF);
  v36 = (*v172 | ((v172[2] & 0x1F) << 16)) + v15 * v13;
  v37 = v13 * v19 + v15 * v17 + ((*&v172[2] >> 5) & 0x1FFFFF) + ((v36 + 0x100000) >> 21);
  v38 = v18 * v19 + v15 * v21 + v13 * v23 + v20 * v17 + ((*&v172[7] >> 7) & 0x1FFFFF);
  v162 = v19 * v22 + v15 * v26 + v18 * v23 + v24 * v17 + v20 * v21 + v29 * v13 + ((v25 + 0x100000) >> 21) + (((v172[13] | (v172[14] << 8) | (v172[15] << 16)) >> 1) & 0x1FFFFF);
  v157 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000);
  v158 = v19 * v27 + v15 * v30 + v23 * v22 + v24 * v21 + v20 * v26 + v28 * v17 + v29 * v18 + v31 * v13 + ((v172[18] | (v172[19] << 8) | (v172[20] << 16)) >> 3);
  v159 = v14 * v19 + v15 * v32 + v23 * v27 + v26 * v24 + v20 * v30 + v28 * v21 + v29 * v22 + v31 * v18 + v13 * v34 + v16 * v17 + ((*&v172[23] >> 5) & 0x1FFFFF);
  v39 = *&v169[28] >> 7;
  v40 = v33 * v19 + v15 * v39;
  v41 = *&md[28] >> 7;
  v42 = v40 + v14 * v23 + v30 * v24 + v20 * v32 + v26 * v28 + v29 * v27 + v31 * v22 + v18 * v34 + v16 * v21 + v13 * v41;
  v43 = v19 * v39 + v23 * v32 + v14 * v24 + v20 * v33 + v28 * v27 + v29 * v30 + v31 * v26 + v34 * v21 + v16 * v22 + v41 * v17;
  v44 = v42 + v35 * v17 + (*&v172[28] >> 7);
  v45 = v43 + v35 * v18;
  v46 = v33 * v23 + v24 * v32 + v20 * v39 + v30 * v28 + v29 * v14 + v31 * v27 + v34 * v22 + v16 * v26 + v18 * v41 + v35 * v21;
  v47 = v31 * v39 + v34 * v32 + v16 * v33 + v30 * v41 + v35 * v14;
  v48 = v33 * v34 + v16 * v39 + v14 * v41 + v35 * v32 + ((v47 + 0x100000) >> 21);
  v49 = v23 * v39 + v33 * v24 + v14 * v28 + v29 * v32 + v31 * v30 + v26 * v34 + v16 * v27 + v41 * v21 + v35 * v22;
  v50 = v24 * v39 + v28 * v32 + v29 * v33 + v31 * v14 + v34 * v27 + v16 * v30 + v41 * v22;
  v51 = v33 * v28 + v29 * v39 + v31 * v32 + v30 * v34 + v16 * v14 + v26 * v41;
  v52 = v38 + ((v167 + 0x100000) >> 21);
  v53 = v46 + ((v45 + 0x100000) >> 21);
  v54 = v51 + v35 * v27;
  v55 = v28 * v39 + v31 * v33 + v14 * v34 + v16 * v32 + v41 * v27;
  v56 = v50 + v35 * v26 + ((v49 + 0x100000) >> 21);
  v57 = v55 + v35 * v30 + ((v54 + 0x100000) >> 21);
  v58 = v34 * v39 + v41 * v32 + v35 * v33;
  v59 = v33 * v41 + v35 * v39 + ((v58 + 0x100000) >> 21);
  v60 = v58 - ((v58 + 0x100000) & 0x1FFFFFFE00000);
  v61 = v41 * v39;
  v62 = (v61 + 0x100000) >> 21;
  v63 = v37 + 0x100000;
  v160 = v37 - ((v37 + 0x100000) & 0xFFFFFFFFFFE00000);
  v163 = v157 + ((v52 + 0x100000) >> 21);
  v161 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v64 = v47 - ((v47 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v57 + 0x100000) >> 21);
  v65 = v57 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v60 + ((v48 + 0x100000) >> 21);
  v67 = v48 - ((v48 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = v61 - ((v61 + 0x100000) & 0x7FFFFFFE00000) + ((v59 + 0x100000) >> 21);
  v69 = v59 - ((v59 + 0x100000) & 0x1FFFFFFE00000);
  v70 = v54 - 683901 * v62 - ((v54 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v49 - 997805 * v62 - ((v49 + 0x100000) & 0xFFFFFFFFFFE00000);
  v72 = v45 + 470296 * v62 - ((v45 + 0x100000) & 0xFFFFFFFFFFE00000);
  v73 = v158 + ((v166 + 0x100000) >> 21);
  v74 = v166 + 666643 * v64 - ((v166 + 0x100000) & 0xFFFFFFFFFFE00000);
  v75 = v159 + ((v165 + 0x100000) >> 21);
  v76 = 666643 * v66 + 470296 * v67 + 654183 * v64 + v165 + ((v73 + 0x100000) >> 21) - ((v165 + 0x100000) & 0xFFFFFFFFFFE00000);
  v77 = v44 + ((v164 + 0x100000) >> 21);
  v78 = 666643 * v68 + 470296 * v69 + 654183 * v66 - 997805 * v67 + 136657 * v64 + ((v75 + 0x100000) >> 21) + v164 - ((v164 + 0x100000) & 0xFFFFFFFFFFE00000);
  v79 = 666643 * v67 + 470296 * v64 + v73 - ((v73 + 0x100000) & 0xFFFFFFFFFFE00000);
  v80 = 666643 * v69 + 470296 * v66 + 654183 * v67 - 997805 * v64 + v75 - ((v75 + 0x100000) & 0xFFFFFFFFFFE00000);
  v81 = v72 + 654183 * v68 - 997805 * v69 + 136657 * v66 - 683901 * v67 + ((v77 + 0x100000) >> 21);
  v82 = 470296 * v68 + 666643 * v62 + 654183 * v69 - 997805 * v66 + 136657 * v67 - 683901 * v64 + v77 - ((v77 + 0x100000) & 0xFFFFFFFFFFE00000);
  v83 = v71 + ((v53 + 0x100000) >> 21);
  v84 = v53 + 654183 * v62 - ((v53 + 0x100000) & 0xFFFFFFFFFFE00000) - 997805 * v68 + 136657 * v69 - 683901 * v66 + ((v81 + 0x100000) >> 21);
  v85 = v56 + 136657 * v62;
  v56 += 0x100000;
  v86 = v70 + (v56 >> 21);
  v87 = v74 + ((v162 + 0x100000) >> 21);
  v88 = v80 + ((v76 + 0x100000) >> 21);
  v89 = v83 + 136657 * v68 - 683901 * v69;
  v90 = v82 + ((v78 + 0x100000) >> 21);
  v91 = v85 - (v56 & 0xFFFFFFFFFFE00000) - 683901 * v68 + ((v89 + 0x100000) >> 21);
  v92 = v65 + ((v86 + 0x100000) >> 21);
  v93 = v86 - ((v86 + 0x100000) & 0xFFFFFFFFFFE00000);
  v94 = v81 - ((v81 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v90 + 0x100000) >> 21);
  v95 = v90 - ((v90 + 0x100000) & 0xFFFFFFFFFFE00000);
  v96 = v89 - ((v89 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v84 + 0x100000) >> 21);
  v97 = v84 - ((v84 + 0x100000) & 0xFFFFFFFFFFE00000);
  v98 = v93 + ((v91 + 0x100000) >> 21);
  v99 = v91 - ((v91 + 0x100000) & 0xFFFFFFFFFFE00000);
  v100 = v78 - 683901 * v92 + ((v88 + 0x100000) >> 21) - ((v78 + 0x100000) & 0xFFFFFFFFFFE00000);
  v101 = v79 + ((v87 + 0x100000) >> 21);
  v102 = -997805 * v92 + 136657 * v98 - 683901 * v99 + v76 + ((v101 + 0x100000) >> 21) - ((v76 + 0x100000) & 0xFFFFFFFFFFE00000);
  v103 = v87 + 470296 * v92 - ((v87 + 0x100000) & 0xFFFFFFFFFFE00000);
  v104 = v167 + (v63 >> 21) - ((v167 + 0x100000) & 0xFFFFFFFFFFE00000);
  v105 = v36 - ((v36 + 0x100000) & 0xFFFFFE00000) + 666643 * v94;
  v106 = v160 + 470296 * v94 + 666643 * v97 + ((v105 + 0x100000) >> 21);
  v107 = v162 + 666643 * v92 - ((v162 + 0x100000) & 0xFFFFFFFFFFE00000);
  v108 = v103 + 654183 * v98 - 997805 * v99 + 136657 * v96 - 683901 * v97;
  v109 = v101 + 654183 * v92 - 997805 * v98 + 136657 * v99 - ((v101 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v96 + ((v108 + 0x100000) >> 21);
  v110 = v108 - ((v108 + 0x100000) & 0xFFFFFFFFFFE00000);
  v111 = 136657 * v92 - 683901 * v98 + v88 - ((v88 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v102 + 0x100000) >> 21);
  v112 = v100 + 0x100000;
  v113 = v95 + ((v100 + 0x100000) >> 21);
  v114 = v102 - ((v102 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v109 + 0x100000) >> 21);
  v115 = v109 - ((v109 + 0x100000) & 0xFFFFFFFFFFE00000);
  v116 = v111 + 0x100000;
  v117 = v111 - ((v111 + 0x100000) & 0xFFFFFFFFFFE00000);
  v118 = v113 - ((v113 + 0x100000) & 0xFFFFFFFFFFE00000);
  v119 = (v113 + 0x100000) >> 21;
  v120 = v104 + 654183 * v94 + 666643 * v96 + 470296 * v97;
  v121 = v161 + 666643 * v99 - 997805 * v94 + 470296 * v96 + 654183 * v97 + ((v120 + 0x100000) >> 21);
  v122 = v121 + 0x100000;
  v123 = v163 + 666643 * v98;
  v124 = v107 + 470296 * v98 + 654183 * v99;
  v125 = v123 + 470296 * v99 + 136657 * v94;
  v126 = v124 - 683901 * v94 - 997805 * v96;
  v127 = v125 + 654183 * v96 - 997805 * v97;
  v128 = v126 + 136657 * v97 + ((v127 + 0x100000) >> 21);
  v129 = v110 + ((v128 + 0x100000) >> 21);
  v130 = v100 + (v116 >> 21);
  v131 = v105 - ((v105 + 0x100000) & 0xFFFFFFFFFFE00000) + 666643 * v119;
  v132 = v112 & 0xFFFFFFFFFFE00000;
  v133 = v106 + 470296 * v119 - ((v106 + 0x100000) & 0xFFFFFFFFFFE00000) + (v131 >> 21);
  v134 = v120 + 654183 * v119 - ((v120 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v106 + 0x100000) >> 21) + (v133 >> 21);
  v135 = v121 - 997805 * v119 - ((v121 + 0x100000) & 0xFFFFFFFFFFE00000) + (v134 >> 21);
  v136 = v127 + 136657 * v119 - ((v127 + 0x100000) & 0xFFFFFFFFFFE00000) + (v122 >> 21) + (v135 >> 21);
  v137 = v128 - 683901 * v119 - ((v128 + 0x100000) & 0xFFFFFFFFFFE00000) + (v136 >> 21);
  v138 = v129 + (v137 >> 21);
  v139 = v115 + (v138 >> 21);
  v140 = v114 + (v139 >> 21);
  v141 = v117 + (v140 >> 21);
  v142 = v130 - v132 + (v141 >> 21);
  v143 = v118 + (v142 >> 21);
  v144 = (v131 & 0x1FFFFF) + 666643 * (v143 >> 21);
  a1[33] = (v131 + 11283 * (v143 >> 21)) >> 8;
  v145 = (v133 & 0x1FFFFF) + 470296 * (v143 >> 21) + (v144 >> 21);
  a1[32] = v131 + 19 * (v143 >> 21);
  a1[34] = (((v131 & 0x1FFFFF) + 666643 * (v143 >> 21)) >> 16) & 0x1F | (32 * (v106 + 24 * v119 + (v131 >> 21) + 24 * (v143 >> 21) + (v144 >> 21)));
  a1[35] = v145 >> 3;
  a1[36] = v145 >> 11;
  v146 = (v134 & 0x1FFFFF) + 654183 * (v143 >> 21) + (v145 >> 21);
  a1[37] = (v145 >> 19) & 3 | (4 * (v134 + 103 * (v143 >> 21) + (v145 >> 21)));
  a1[38] = v146 >> 6;
  v147 = (v135 & 0x1FFFFF) - 997805 * (v143 >> 21) + (v146 >> 21);
  a1[39] = (v146 >> 14) & 0x7F | ((v135 - -83 * (v143 >> 21) + (v146 >> 21)) << 7);
  a1[40] = v147 >> 1;
  a1[41] = v147 >> 9;
  v148 = (v136 & 0x1FFFFF) + 136657 * (v143 >> 21) + (v147 >> 21);
  a1[42] = (v147 >> 17) & 0xF | (16 * (v136 - 47 * (v143 >> 21) + (v147 >> 21)));
  a1[43] = v148 >> 4;
  a1[44] = v148 >> 12;
  v149 = (v137 & 0x1FFFFF) - 683901 * (v143 >> 21) + (v148 >> 21);
  a1[45] = ((v148 & 0x100000) != 0) | (2 * (v137 - 125 * (v143 >> 21) + (v148 >> 21)));
  a1[46] = v149 >> 7;
  v150 = (v138 & 0x1FFFFF) + (v149 >> 21);
  a1[47] = (v149 >> 15) & 0x3F | ((v138 + (v149 >> 21)) << 6);
  a1[48] = v150 >> 2;
  a1[49] = v150 >> 10;
  v151 = (v139 & 0x1FFFFF) + (v150 >> 21);
  a1[50] = (v150 >> 18) & 7 | (8 * (v139 + (v150 >> 21)));
  a1[51] = v151 >> 5;
  v152 = (v140 & 0x1FFFFF) + (v151 >> 21);
  a1[52] = v151 >> 13;
  a1[54] = (v140 + (v151 >> 21)) >> 8;
  v153 = (v141 & 0x1FFFFF) + (v152 >> 21);
  a1[53] = v152;
  a1[55] = BYTE2(v152) & 0x1F | (32 * (v141 + (v152 >> 21)));
  a1[56] = v153 >> 3;
  a1[57] = v153 >> 11;
  v154 = (v142 & 0x1FFFFF) + (v153 >> 21);
  v155 = (v143 & 0x1FFFFF) + (v154 >> 21);
  a1[58] = (v153 >> 19) & 3 | (4 * (v142 + (v153 >> 21)));
  a1[59] = v154 >> 6;
  a1[60] = (v154 >> 14) & 0x7F | ((v143 + (v154 >> 21)) << 7);
  a1[61] = ((v154 >> 21) + v143) >> 1;
  a1[62] = v155 >> 9;
  a1[63] = v155 >> 17;
  return 1;
}

uint64_t ED25519_verify(const void *a1, size_t a2, unsigned __int8 *a3, int64x2_t *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a3[63] <= 0x1Fu)
  {
    v8.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v8.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v35[1] = v8;
    v35[2] = v8;
    v34 = v8;
    v35[0] = v8;
    *&v32[32] = v8;
    v33 = v8;
    *v32 = v8;
    *&v32[16] = v8;
    v30 = v8;
    v31 = v8;
    result = x25519_ge_frombytes_vartime(&v30, a4);
    if (!result)
    {
      return result;
    }

    v29 = 0xAAAAAAAAAAAAAAAALL;
    v10.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v10.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v28[0] = v10;
    v28[1] = v10;
    fe_neg(v28, &v30);
    fe_carry(&v30, v28);
    fe_neg(v28, (v35 + 8));
    fe_carry(v35 + 1, v28);
    v11 = 0;
    v12 = *(a3 + 1);
    v62[0] = *a3;
    v62[1] = v12;
    v13 = *(a3 + 3);
    v61[0] = *(a3 + 2);
    v61[1] = v13;
    do
    {
      v14 = (*(&v61[1] + v11 + 8) | (*(&v61[1] + v11 + 9) << 8) | (*(&v61[1] + v11 + 10) << 16) | (*(&v61[1] + v11 + 11) << 24) | (*(&v61[1] + v11 + 12) << 32) | (*(&v61[1] + v11 + 13) << 40)) + (*(&v61[1] + v11 + 14) << 48) + (*(&v61[1] + v11 + 15) << 56);
      v15 = *(&ED25519_verify_kOrder + v11 + 24);
      v11 -= 8;
      if (v14 > v15)
      {
        break;
      }

      if (v14 < v15)
      {
        *&c.num = 0xAAAAAAAAAAAAAAAALL;
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&c.u.p[112] = v16;
        *&c.u.p[96] = v16;
        *&c.u.p[80] = v16;
        *&c.u.p[64] = v16;
        *&c.u.p[48] = v16;
        *&c.u.p[32] = v16;
        *&c.u.p[16] = v16;
        *c.u.d = v16;
        *&c.Nl = v16;
        *&c.h[6] = v16;
        *&c.h[4] = v16;
        *&c.h[2] = v16;
        *c.h = v16;
        SHA512_Init(&c);
        SHA512_Update(&c, a3, 0x20uLL);
        SHA512_Update(&c, a4, 0x20uLL);
        SHA512_Update(&c, a1, a2);
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v58 = v17;
        v59 = v17;
        *md = v17;
        v57 = v17;
        SHA512_Final(md, &c);
        x25519_sc_reduce(md);
        *&v18 = 0xAAAAAAAAAAAAAAAALL;
        *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v65[15] = v18;
        v65[14] = v18;
        v65[13] = v18;
        v65[12] = v18;
        v65[11] = v18;
        v65[10] = v18;
        v65[9] = v18;
        v65[8] = v18;
        v65[7] = v18;
        v65[6] = v18;
        v65[5] = v18;
        v65[4] = v18;
        v65[3] = v18;
        v65[2] = v18;
        v65[1] = v18;
        v65[0] = v18;
        v64[15] = v18;
        v64[14] = v18;
        v64[13] = v18;
        v64[12] = v18;
        v64[11] = v18;
        v64[10] = v18;
        v64[9] = v18;
        v64[8] = v18;
        v64[7] = v18;
        v64[6] = v18;
        v64[5] = v18;
        v64[4] = v18;
        v64[3] = v18;
        v64[2] = v18;
        v64[1] = v18;
        v64[0] = v18;
        memset(__b, 170, sizeof(__b));
        v19.i64[0] = 0xAAAAAAAAAAAAAAAALL;
        v19.i64[1] = 0xAAAAAAAAAAAAAAAALL;
        v44[1] = v19;
        v44[2] = v19;
        v43[1] = v19;
        v44[0] = v19;
        v42[2] = v19;
        v43[0] = v19;
        v42[0] = v19;
        v42[1] = v19;
        v41[0] = v19;
        v41[1] = v19;
        v40[1] = v19;
        v40[2] = v19;
        v39[1] = v19;
        v40[0] = v19;
        v38[2] = v19;
        v39[0] = v19;
        v38[0] = v19;
        v38[1] = v19;
        v37[0] = v19;
        v37[1] = v19;
        v36[8] = v19;
        v36[9] = v19;
        v36[6] = v19;
        v36[7] = v19;
        v36[4] = v19;
        v36[5] = v19;
        v36[2] = v19;
        v36[3] = v19;
        v36[0] = v19;
        v36[1] = v19;
        slide(v65, md);
        slide(v64, v61);
        x25519_ge_p3_to_cached(__b, &v30);
        v45 = v30;
        v46 = v31;
        *v48 = *&v32[8];
        *&v48[16] = *&v32[24];
        v47 = *v32;
        *&v48[32] = *&v32[40];
        v49[0] = v33;
        v49[1] = v34;
        *&v49[2] = *&v35[0];
        ge_p2_dbl(v41, &v45);
        x25519_ge_p1p1_to_p3(v36, v41);
        x25519_ge_add(v41, v36, __b);
        x25519_ge_p1p1_to_p3(v37, v41);
        x25519_ge_p3_to_cached(&__b[10], v37);
        x25519_ge_add(v41, v36, &__b[10]);
        x25519_ge_p1p1_to_p3(v37, v41);
        x25519_ge_p3_to_cached(&__b[20], v37);
        x25519_ge_add(v41, v36, &__b[20]);
        x25519_ge_p1p1_to_p3(v37, v41);
        x25519_ge_p3_to_cached(&__b[30], v37);
        x25519_ge_add(v41, v36, &__b[30]);
        x25519_ge_p1p1_to_p3(v37, v41);
        x25519_ge_p3_to_cached(&__b[40], v37);
        x25519_ge_add(v41, v36, &__b[40]);
        x25519_ge_p1p1_to_p3(v37, v41);
        x25519_ge_p3_to_cached(&__b[50], v37);
        x25519_ge_add(v41, v36, &__b[50]);
        x25519_ge_p1p1_to_p3(v37, v41);
        x25519_ge_p3_to_cached(&__b[60], v37);
        x25519_ge_add(v41, v36, &__b[60]);
        x25519_ge_p1p1_to_p3(v37, v41);
        x25519_ge_p3_to_cached(&__b[70], v37);
        memset(&v48[8], 0, 32);
        v46 = 0u;
        v47 = 0;
        v45 = 0u;
        *v48 = 1;
        memset(v49 + 8, 0, 32);
        v20 = 255;
        *&v49[0] = 1;
        while (1)
        {
          v21 = v20;
          if (*(v65 + v20) || *(v64 + v20))
          {
            break;
          }

          --v20;
          if (!v21)
          {
            goto LABEL_25;
          }
        }

        if ((v20 & 0x80000000) == 0)
        {
          do
          {
            ge_p2_dbl(v41, &v45);
            v22 = *(v65 + v21);
            if (*(v65 + v21) < 1)
            {
              if ((v22 & 0x80) != 0)
              {
                x25519_ge_p1p1_to_p3(v37, v41);
                x25519_ge_sub(v41, v37, &__b[10 * (-v22 >> 1)]);
              }
            }

            else
            {
              x25519_ge_p1p1_to_p3(v37, v41);
              x25519_ge_add(v41, v37, &__b[10 * (v22 >> 1)]);
            }

            v23 = *(v64 + v21);
            if (v23 < 1)
            {
              if (v23 < 0)
              {
                x25519_ge_p1p1_to_p3(v37, v41);
                v55 = 0xAAAAAAAAAAAAAAAALL;
                v24 = &Bi[15 * (-v23 >> 1)];
                v25.i64[0] = 0xAAAAAAAAAAAAAAAALL;
                v25.i64[1] = 0xAAAAAAAAAAAAAAAALL;
                v54[0] = v25;
                v54[1] = v25;
                v53 = 0xAAAAAAAAAAAAAAAALL;
                v52[0] = v25;
                v52[1] = v25;
                v51 = 0xAAAAAAAAAAAAAAAALL;
                v50[0] = v25;
                v50[1] = v25;
                fe_add(v41, (v38 + 8), v37);
                fe_sub((v42 + 8), (v38 + 8), v37);
                fe_mul_impl(v52, v41, v24 + 5);
                fe_mul_impl(v54, v42 + 1, v24);
                fe_mul_impl(v50, v24 + 10, v40 + 1);
                fe_add((v44 + 8), v39, v39);
                fe_sub(v41, v52, v54);
                fe_add((v42 + 8), v52, v54);
                fe_carry(v52, v44 + 1);
                fe_sub(v43, v52, v50);
                fe_add((v44 + 8), v52, v50);
              }
            }

            else
            {
              x25519_ge_p1p1_to_p3(v37, v41);
              ge_madd(v41, v37, &Bi[15 * (v23 >> 1)]);
            }

            x25519_ge_p1p1_to_p2(&v45, v41);
          }

          while (v21-- > 0);
        }

LABEL_25:
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        __b[1] = v27;
        __b[0] = v27;
        x25519_ge_tobytes(__b, &v45);
        return CRYPTO_memcmp(__b, v62, 32) == 0;
      }
    }

    while (v11 != -32);
  }

  return 0;
}

uint64_t slide(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 256; ++i)
  {
    *(result + i) = (*(a2 + (i >> 3)) >> (i & 7)) & 1;
  }

  v3 = 0;
  v4 = result + 1;
  v5 = 1;
  do
  {
    if (*(result + v3) && v3 <= 0xFE)
    {
      v6 = v3;
      v7 = 1;
      v8 = v5;
      do
      {
        v9 = *(result + v8);
        if (*(result + v8))
        {
          v10 = *(result + v3);
          v11 = v9 << v7;
          v12 = (v9 << v7) + v10;
          if (v12 > 15)
          {
            v13 = v10 - v11;
            if (v13 < -15)
            {
              break;
            }

            *(result + v3) = v13;
            v14 = v6;
            while (*(v4 + v14))
            {
              *(v4 + v14++) = 0;
              if (v14 >= 0xFF)
              {
                goto LABEL_16;
              }
            }

            *(v4 + v14) = 1;
          }

          else
          {
            *(result + v3) = v12;
            *(result + v8) = 0;
          }
        }

LABEL_16:
        if (v7 > 5)
        {
          break;
        }

        ++v7;
        ++v8;
        ++v6;
      }

      while (v7 + v3 < 0x100);
    }

    ++v3;
    ++v5;
  }

  while (v3 != 256);
  return result;
}

int BN_bn2bin(const BIGNUM *a, unsigned __int8 *to)
{
  v4 = BN_num_bytes(a);
  bn_words_to_big_endian(to, v4, a->d, a->top);
  return v4;
}

uint64_t bssl::ssl_hash_session_id(int *__src, size_t __n)
{
  p_dst = __src;
  __dst = -1431655766;
  if (__n <= 3)
  {
    __dst = 0;
    if (__n)
    {
      memcpy(&__dst, __src, __n);
    }

    p_dst = &__dst;
  }

  return *p_dst;
}

void bssl::ssl_session_renew_timeout(bssl *this, ssl_st *a2, ssl_session_st *a3)
{
  v3 = a3;
  bssl::ssl_session_rebase_time(this, a2, a3);
  if (LODWORD(a2->cipher_list) <= v3)
  {
    cipher_list_high = HIDWORD(a2->cipher_list);
    if (cipher_list_high >= v3)
    {
      cipher_list_high = v3;
    }

    LODWORD(a2->cipher_list) = cipher_list_high;
  }
}

uint64_t bssl::ssl_ctx_rotate_ticket_encryption_key(bssl *this, ssl_ctx_st *a2)
{
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_ctx_get_current_time(this, v13);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_read),&(CRYPTO_MUTEX_unlock_read)>::MutexLockBase(&v12, (this + 24));
  v3 = *(this + 68);
  if (!v3 || (*(v3 + 48) - 1) < v13[0] || (v4 = *(this + 69)) != 0 && *(v4 + 48) <= v13[0])
  {
    CRYPTO_MUTEX_unlock_read(v12);
    v6 = (this + 544);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_write),&(CRYPTO_MUTEX_unlock_write)>::MutexLockBase(&v12, (this + 24));
    if (!*(this + 68) || (*(*(this + 68) + 48) - 1) < v13[0])
    {
      v7 = OPENSSL_malloc(0x38uLL);
      v8 = v7;
      if (!v7)
      {
        v5 = 0;
LABEL_17:
        CRYPTO_MUTEX_unlock_read(v12);
        return v5;
      }

      *(v7 + 6) = 0;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *v7 = 0u;
      RAND_bytes(v7, 16);
      RAND_bytes(v8 + 16, 16);
      RAND_bytes(v8 + 32, 16);
      *(v8 + 6) = v13[0] + 172800;
      v9 = *v6;
      if (*v6)
      {
        v9[6] += 172800;
        *(this + 68) = 0;
        std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](this + 69, v9);
      }

      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](this + 68, v8);
    }

    v10 = *(this + 69);
    if (v10 && *(v10 + 48) <= v13[0])
    {
      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100](this + 69, 0);
    }

    v5 = 1;
    goto LABEL_17;
  }

  CRYPTO_MUTEX_unlock_read(v12);
  return 1;
}

BOOL bssl::ssl_encrypt_ticket(void *a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0;
  if (!SSL_SESSION_to_bytes_for_ticket(a3, &v32, &v31))
  {
    return 0;
  }

  v6 = v31;
  v5 = v32;
  v7 = *a1;
  v8 = *(*(*a1 + 128) + 808);
  if (!v8)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38 = v13;
    v39 = v13;
    *&ctx.key[116] = v13;
    v37 = v13;
    *&ctx.key[84] = v13;
    *&ctx.key[100] = v13;
    *&ctx.key[52] = v13;
    *&ctx.key[68] = v13;
    *&ctx.key[36] = v13;
    EVP_CIPHER_CTX_init(&ctx.key[36]);
    ctx.o_ctx.md_data = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.i_ctx.md_data = v14;
    *&ctx.o_ctx.engine = v14;
    *&ctx.md_ctx.md_data = v14;
    *&ctx.i_ctx.engine = v14;
    *&ctx.md = v14;
    *&ctx.md_ctx.engine = v14;
    HMAC_CTX_init(&ctx);
    if (v6 >> 7 >= 0x1FF)
    {
      v11 = CBB_add_bytes(a2, "TICKET TOO LARGE", 0x10uLL);
LABEL_33:
      HMAC_CTX_cleanup(&ctx);
      EVP_CIPHER_CTX_cleanup(&ctx.key[36]);
      goto LABEL_34;
    }

    v17 = *(*a1 + 128);
    memset(&ctx.key[4], 170, 32);
    v18 = *(v17 + 560);
    if (v18)
    {
      if ((v18() & 0x80000000) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!bssl::ssl_ctx_rotate_ticket_encryption_key(v17, v15))
      {
        goto LABEL_32;
      }

      CRYPTO_MUTEX_lock_read((v17 + 24));
      if (!RAND_bytes(&ctx.key[20], 16) || (v26 = EVP_aes_128_cbc(), !EVP_EncryptInit_ex(&ctx.key[36], v26, 0, (*(v17 + 544) + 32), &ctx.key[20])) || (v27 = *(v17 + 544), v28 = EVP_sha256(), HMAC_Init_ex(&ctx, (v27 + 16), 16, v28, 0), !v29))
      {
        CRYPTO_MUTEX_unlock_read((v17 + 24));
        goto LABEL_32;
      }

      *&ctx.key[4] = **(v17 + 544);
      CRYPTO_MUTEX_unlock_read((v17 + 24));
    }

    out = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_add_bytes(a2, &ctx.key[4], 0x10uLL))
    {
      v19 = EVP_CIPHER_CTX_iv_length(&ctx.key[36]);
      if (CBB_add_bytes(a2, &ctx.key[20], v19))
      {
        if (CBB_reserve(a2, &out, v6 + 32))
        {
          outl = -1431655766;
          if (EVP_EncryptUpdate(&ctx.key[36], out, &outl, v5, v6))
          {
            v20 = outl;
            if (EVP_EncryptFinal_ex(&ctx.key[36], &out[outl], &outl))
            {
              if (CBB_did_write(a2, outl + v20))
              {
                len = -1431655766;
                v22 = CBB_data(a2, v21);
                v23 = CBB_len(a2);
                HMAC_Update(&ctx, v22, v23);
                if (v24)
                {
                  if (CBB_reserve(a2, &out, 64))
                  {
                    HMAC_Final(&ctx, out, &len);
                    if (v25)
                    {
                      v11 = CBB_did_write(a2, len) != 0;
                      goto LABEL_33;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_32:
    v11 = 0;
    goto LABEL_33;
  }

  v9 = (*v8)(*a1);
  v10 = v9 + v6;
  if (__CFADD__(v9, v6))
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 533);
    v11 = 0;
  }

  else
  {
    *&ctx.key[36] = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_reserve(a2, &ctx.key[36], v10))
    {
      ctx.md = 0xAAAAAAAAAAAAAAAALL;
      if ((*(v8 + 8))(v7, *&ctx.key[36], &ctx, v10, v5, v6))
      {
        v11 = CBB_did_write(a2, ctx.md) != 0;
      }

      else
      {
        ERR_put_error(16, 0, 276, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 545);
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_34:
  v12 = v11 != 0;
  if (v5)
  {
    OPENSSL_free(v5);
  }

  return v12;
}

void sub_1A908068C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, HMAC_CTX *ctx)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL bssl::ssl_session_is_context_valid(uint64_t a1, uint64_t a2)
{
  if (a2 && (v2 = *(a2 + 124), v3 = *(*(a1 + 8) + 32), v2 == *(v3 + 120)))
  {
    return memcmp((a2 + 92), (v3 + 88), v2) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL bssl::ssl_session_is_resumable(bssl *this, const bssl::SSL_HANDSHAKE *a2, const ssl_session_st *a3)
{
  v5 = *this;
  result = bssl::ssl_session_is_context_valid(this, a2);
  if (result)
  {
    if (((*(v5 + 180) ^ (*(a2 + 440) >> 4)) & 1) == 0)
    {
      result = bssl::ssl_session_is_time_valid(v5, a2, v7);
      if (!result)
      {
        return result;
      }

      if (*(*(v5 + 48) + 208) == *(a2 + 2) && *(this + 196) == *(a2 + 25))
      {
        v8 = EVP_MD_CTX_md(*(a2 + 17));
        v9 = *(a2 + 440);
        if (!v8 && (v9 & 2) == 0)
        {
          return (*(*this + 168) != 0) ^ ((v9 & 0x20) == 0);
        }

        if (((*(*(this + 1) + 309) >> 5) & 1) == ((v9 >> 1) & 1))
        {
          return (*(*this + 168) != 0) ^ ((v9 & 0x20) == 0);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t bssl::ssl_get_prev_session(uint64_t **a1, SSL_SESSION **a2, char *a3, _BYTE *a4, uint64_t a5)
{
  v6 = *a1;
  if ((*(v6 + 180) & 1) == 0)
  {
    bssl::ssl_get_prev_session();
  }

  v33 = 0;
  v32 = 0;
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if ((SSL_get_options(v6) & 0x4000) != 0 || !bssl::ssl_client_hello_get_extension(a5, &v31, 35))
  {
    v13 = 0;
    goto LABEL_10;
  }

  if (!*(&v31 + 1))
  {
    v13 = 1;
LABEL_10:
    p_dst = *(a5 + 48);
    v14 = *(a5 + 56);
    v35 = p_dst;
    v36 = v14;
    v16 = *a1;
    v17 = v33;
    v33 = 0;
    if (v17)
    {
      bssl::RefCounted<ssl_session_st>::DecRefInternal(v17);
    }

    if (v14 - 33 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      goto LABEL_37;
    }

    v34 = 0;
    v18 = *(v16 + 128);
    if ((*(v18 + 301) & 1) == 0)
    {
      LODWORD(__dst) = -1431655766;
      if (v14 <= 3)
      {
        LODWORD(__dst) = 0;
        memcpy(&__dst, p_dst, v14);
        p_dst = &__dst;
      }

      v19 = *p_dst;
      CRYPTO_MUTEX_lock_read((v18 + 24));
      v20 = *(*(v16 + 128) + 264);
      __dst = bssl::ssl_lookup_session(bssl::SSL_HANDSHAKE *,std::unique_ptr<ssl_session_st,bssl::internal::Deleter> *,bssl::Span<unsigned char const>)::$_0::__invoke;
      v38 = &v35;
      key = OPENSSL_lh_retrieve_key(v20, &__dst, v19, lh_SSL_SESSION_call_cmp_key);
      v22 = key;
      if (key)
      {
        CRYPTO_refcount_inc(key);
      }

      v34 = v22;
      CRYPTO_MUTEX_unlock_read((v18 + 24));
      if (v22)
      {
        goto LABEL_27;
      }

      v18 = *(v16 + 128);
    }

    v23 = *(v18 + 328);
    if (!v23)
    {
      goto LABEL_30;
    }

    LODWORD(__dst) = 1;
    v24 = v23(v16, v35, v36, &__dst);
    v22 = v24;
    v34 = v24;
    if (!v24)
    {
LABEL_37:
      v28 = v33;
      v33 = 0;
      std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v28);
      *a3 = v13;
      *a4 = v32;
      v12 = 1;
      goto LABEL_38;
    }

    if (v24 == &bssl::g_pending_session_magic)
    {
      v12 = 10;
      goto LABEL_38;
    }

    if (__dst)
    {
      CRYPTO_refcount_inc(v24);
    }

    v25 = *(v16 + 128);
    if ((*(v25 + 301) & 2) == 0)
    {
      SSL_CTX_add_session(v25, v22);
    }

LABEL_27:
    __dst = 0xAAAAAAAAAAAAAAAALL;
    v38 = 0xAAAAAAAAAAAAAAAALL;
    bssl::ssl_get_current_time(v16, &__dst);
    v26 = *(v22 + 24);
    if (__dst >= v26 && __dst - v26 < v22[46])
    {
LABEL_31:
      v27 = v33;
      v33 = v22;
      v34 = 0;
      if (v27)
      {
        bssl::RefCounted<ssl_session_st>::DecRefInternal(v27);
      }

      goto LABEL_37;
    }

    bssl::remove_session(*(v16 + 128), v22, 1);
    v34 = 0;
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v22);
LABEL_30:
    v22 = 0;
    goto LABEL_31;
  }

  v11 = bssl::ssl_process_ticket(a1, &v33, &v32, v31, *(&v31 + 1), *(a5 + 48), *(a5 + 56));
  if (v11 != 1)
  {
    if (v11 == 2)
    {
      if (v33)
      {
        __assert_rtn("ssl_get_prev_session", "ssl_session.cc", 717, "!session");
      }
    }

    else if (v11 == 3)
    {
      v12 = 0;
      goto LABEL_38;
    }

    v13 = 1;
    goto LABEL_37;
  }

  v12 = 11;
LABEL_38:
  v29 = v33;
  v33 = 0;
  if (v29)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v29);
  }

  return v12;
}

void sub_1A9080B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, SSL_SESSION *);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::add_session_locked(uint64_t a1, SSL_SESSION **a2)
{
  v4 = *a2;
  v5 = *(a1 + 264);
  v12 = 0;
  result = OPENSSL_lh_insert(v5, &v12, v4, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
  if (result)
  {
    v7 = v12;
    *a2 = 0;
    std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v7);
    if (v7)
    {
      if (v7 == v4)
      {
        return 0;
      }

      bssl::SSL_SESSION_list_remove(a1, v7, v8);
    }

    if (v4->ex_data.sk && v4->ciphers)
    {
      bssl::SSL_SESSION_list_remove(a1, v4, v8);
    }

    v9 = *(a1 + 280);
    p_comp = &v9[6].comp;
    if (!v9)
    {
      p_comp = (a1 + 288);
    }

    *p_comp = v4;
    *(a1 + 280) = v4;
    if (!v9)
    {
      v9 = (a1 + 288);
    }

    v4->ciphers = (a1 + 280);
    v4->ex_data.sk = v9;
    if (SSL_CTX_sess_get_cache_size(a1))
    {
      do
      {
        v11 = EVP_AEAD_CTX_aead(*(a1 + 264));
      }

      while (v11 > SSL_CTX_sess_get_cache_size(a1) && (bssl::remove_session(a1, *(a1 + 288), 0) & 1) != 0);
    }

    return 1;
  }

  return result;
}

const unsigned __int8 *__cdecl SSL_SESSION_get_id(const SSL_SESSION *s, unsigned int *len)
{
  if (len)
  {
    *len = s->session_id[19];
  }

  return &s->master_key[39];
}

uint64_t SSL_SESSION_set_ticket(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = a3;
  result = bssl::Array<unsigned char>::InitUninitialized(a1 + 232, a3);
  if (result && v3)
  {
    v7 = *(a1 + 232);
    do
    {
      v8 = *a2++;
      *v7++ = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

int SSL_CTX_add_session(SSL_CTX *s, SSL_SESSION *c)
{
  if (c)
  {
    CRYPTO_refcount_inc(c);
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = c;
  bssl::internal::MutexLockBase<&(CRYPTO_MUTEX_lock_write),&(CRYPTO_MUTEX_unlock_write)>::MutexLockBase(&v8, &s->cert_store);
  v9 = 0;
  v7 = c;
  v4 = bssl::add_session_locked(s, &v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v5);
  }

  CRYPTO_MUTEX_unlock_read(v8);
  return v4;
}

void sub_1A9080DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, SSL_SESSION *);
  v6 = va_arg(va1, pthread_rwlock_t *);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  CRYPTO_MUTEX_unlock_read(v6);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::remove_session(bssl *this, ssl_ctx_st *a2, ssl_session_st *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!BYTE3(a2->remove_session_cb))
  {
    return 0;
  }

  v4 = a3;
  if (a3)
  {
    CRYPTO_MUTEX_lock_write((this + 24));
  }

  v6 = OPENSSL_lh_retrieve(*(this + 33), a2, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
  v7 = v6;
  if (v6 == a2)
  {
    v7 = OPENSSL_lh_delete(*(this + 33), a2, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
    bssl::SSL_SESSION_list_remove(this, a2, v9);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    CRYPTO_MUTEX_unlock_read((this + 24));
  }

LABEL_8:
  if (v6 != a2)
  {
    return 0;
  }

  v10 = *(this + 40);
  if (v10)
  {
    v10(this, v7);
  }

  if (v7)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v7);
  }

  return 1;
}

void timeout_doall_arg(ssl_ctx_st *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (!v4 || (app_gen_cookie_cb = a1->app_gen_cookie_cb, client_cert_cb_low = LODWORD(a1->client_cert_cb), v7 = __CFADD__(app_gen_cookie_cb, client_cert_cb_low), v8 = app_gen_cookie_cb + client_cert_cb_low, v7) || v4 > v8)
  {
    OPENSSL_lh_delete(a2[2], a1, lh_SSL_SESSION_call_hash_func, lh_SSL_SESSION_call_cmp_func);
    bssl::SSL_SESSION_list_remove(*a2, a1, v9);
    v10 = *(*a2 + 320);
    if (v10)
    {
      v10();
    }

    if (a1)
    {

      bssl::RefCounted<ssl_session_st>::DecRefInternal(a1);
    }
  }
}

uint64_t bssl::SSL_SESSION_list_remove(uint64_t this, ssl_ctx_st *a2, ssl_session_st *a3)
{
  rsa_md5 = a2->rsa_md5;
  if (rsa_md5)
  {
    v6 = *&a2->ex_data.dummy;
    p_dummy = &a2->ex_data.dummy;
    v5 = v6;
    if (v6)
    {
      v7 = (this + 288);
      v8 = (this + 280);
      if (rsa_md5 == (this + 288))
      {
        if (v5 == v8)
        {
          *v8 = 0;
          *(this + 288) = 0;
        }

        else
        {
          *v7 = v5;
          v5[28] = v7;
        }
      }

      else if (v5 == v8)
      {
        *v8 = rsa_md5;
        *&rsa_md5[1].ctx_size = v8;
      }

      else
      {
        *&rsa_md5[1].ctx_size = v5;
        *(*p_dummy + 224) = rsa_md5;
      }

      *p_dummy = 0;
      *(p_dummy + 1) = 0;
    }
  }

  return this;
}

void std::unique_ptr<unsigned char,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    OPENSSL_free(v3);
  }
}

uint64_t bssl::ssl_client_cipher_list_contains_cipher(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v2;
  if (!v2)
  {
    return 0;
  }

  do
  {
    v6 = -21846;
    result = CBS_get_u16(&v7, &v6);
    if (!result)
    {
      break;
    }

    result = v6 == a2;
  }

  while (v6 != a2 && v8 != 0);
  return result;
}

uint64_t bssl::ssl_server_handshake_int_state(uint64_t a1)
{
  if (*(a1 + 20) == 4)
  {
    return bssl::tls13_server_handshake_int_state(a1);
  }

  else
  {
    return (4 * *(a1 + 20)) | 0x2B291000u;
  }
}

BOOL bssl::extract_sni(uint64_t *a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_client_hello_get_extension(a3, &v12, 0))
  {
    memset(v11, 170, sizeof(v11));
    v10 = -86;
    if (CBS_get_u16_length_prefixed(&v12, &v11[2]) && CBS_get_u8(&v11[2], &v10) && CBS_get_u16_length_prefixed(&v11[2], v11) && !v11[3] && !*(&v12 + 1))
    {
      if (v10 || (v11[1] - 256) < 0xFFFFFFFFFFFFFF01 || CBS_contains_zero_byte(v11))
      {
        v5 = 0;
        v6 = 112;
      }

      else
      {
        v9 = 0;
        v8 = CBS_strdup(v11, &v9);
        v5 = v8;
        if (v8)
        {
          std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((*(v4 + 48) + 512), v9);
          return v5;
        }

        v6 = 80;
      }
    }

    else
    {
      v5 = 0;
      v6 = 50;
    }

    *a2 = v6;
  }

  else
  {
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((*(v4 + 48) + 512), 0);
    return 1;
  }

  return v5;
}

bssl *bssl::choose_params(bssl *this, bssl::SSL_HANDSHAKE *a2, EVP_MD_CTX *ctx, unsigned __int16 *a4)
{
  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 1);
  v8 = *(v7 + 72);
  if (v8)
  {
    v6 |= 8u;
  }

  v50 = 8 * (v8 != 0);
  v51 = v6;
  v53 = 0;
  if (a2 && !*(a2 + 1))
  {
    v10 = bssl::tls1_choose_signature_algorithm(this, a2, &v53, a4);
    ERR_clear_error();
    v11 = EVP_PKEY_id(*(a2 + 1));
    v12 = v11;
    if (*(*(this + 1) + 309) < 0 && v11 == 408)
    {
      v13 = EVP_PKEY_get0_EC_KEY(*(a2 + 1));
      v52 = -21846;
      v14 = EC_KEY_get0_group(v13);
      curve_name = EC_GROUP_get_curve_name(v14);
      if (bssl::ssl_nid_to_group_id(&v52, curve_name))
      {
        v16 = *(this + 85);
        v17 = *(this + 86);
        v18 = &v16[v17];
        if (v17)
        {
          v19 = 2 * v17;
          while (*v16 != v52)
          {
            ++v16;
            v19 -= 2;
            if (!v19)
            {
              v16 = v18;
              break;
            }
          }
        }

        v10 = ((v16 != v18) & v10);
        if (v16 != v18 || v8)
        {
          goto LABEL_21;
        }

LABEL_67:
        v41 = 243;
        v42 = 410;
        goto LABEL_56;
      }

      if (!v8)
      {
        goto LABEL_67;
      }

      v10 = 0;
    }

LABEL_21:
    v50 |= bssl::ssl_cipher_auth_mask_for_key(*(a2 + 1), v10);
    v20 = v51;
    if (v12 == 6)
    {
      v20 = v51 + 1;
    }

    v51 = v20;
    v7 = *(this + 1);
  }

  v21 = *this;
  v22 = *(v7 + 24);
  if (!v22)
  {
    v22 = *(*(v21 + 120) + 240);
  }

  if ((*(v21 + 146) & 0x40) != 0)
  {
    v23 = *(v22 + 8);
    v24 = ctx;
    ctx = *v22;
  }

  else
  {
    v23 = 0;
    v24 = *v22;
  }

  if (!EVP_MD_CTX_md(ctx))
  {
LABEL_55:
    v41 = 184;
    v42 = 364;
LABEL_56:
    ERR_put_error(16, 0, v41, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", v42);
    return 0;
  }

  v25 = 0;
  v26 = -1;
  while (1)
  {
    v27 = OPENSSL_sk_value(ctx, v25);
    v28 = 0;
    if (EVP_MD_CTX_md(v24))
    {
      while (1)
      {
        v29 = OPENSSL_sk_value(v24, v28);
        v30 = *(v27 + 4);
        v31 = *(v29 + 4);
        v32 = v30 != v31;
        if (v30 == v31)
        {
          break;
        }

        if (++v28 >= EVP_MD_CTX_md(v24))
        {
          v28 = 0;
          break;
        }
      }
    }

    else
    {
      v32 = 1;
    }

    min_version = SSL_CIPHER_get_min_version(v27);
    if (min_version <= bssl::ssl_protocol_version(v21, v34, v35))
    {
      v38 = bssl::ssl_protocol_version(v21, v36, v37);
      if (v38 <= SSL_CIPHER_get_max_version(v27) && (*(v27 + 5) & v51) != 0 && (v27[3] & v50) != 0 && !v32)
      {
        break;
      }
    }

    if (v23 && (*(v23 + v25) & 1) == 0 && v26 != -1)
    {
      v45 = v26;
      goto LABEL_63;
    }

LABEL_54:
    if (++v25 >= EVP_MD_CTX_md(ctx))
    {
      goto LABEL_55;
    }
  }

  if (v23 && *(v23 + v25) == 1)
  {
    if (v28 < v26 || v26 == -1)
    {
      v26 = v28;
    }

    goto LABEL_54;
  }

  v46 = v26;
  if (v28 < v26)
  {
    v46 = v28;
  }

  if (v26 == -1)
  {
    v45 = v28;
  }

  else
  {
    v45 = v46;
  }

LABEL_63:
  v47 = OPENSSL_sk_value(v24, v45);
  v43 = v47;
  if (v47 && bssl::ssl_cipher_requires_server_key_exchange(v47, v48))
  {
    bssl::ssl_cipher_uses_certificate_auth(v43, v49);
  }

  return v43;
}

uint64_t bssl::ssl_client_handshake_int_state(uint64_t a1)
{
  if (*(a1 + 20) == 4)
  {
    return bssl::tls13_client_handshake_int_state(a1);
  }

  else
  {
    return (4 * *(a1 + 20)) | 0x2B290C00u;
  }
}

uint64_t sk_SSL_CIPHER_call_cmp_func(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return a1(&v5, &v4);
}

uint64_t bssl::dtls_open_record(bssl *a1, char *a2, uint64_t a3, unint64_t *a4, char *a5, uint64_t a6, unint64_t a7)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (*(*(a1 + 6) + 172) == 1)
  {
    return 3;
  }

  if (!a7)
  {
    return 2;
  }

  *&v52[1] = a6;
  v53 = a7;
  v52[0] = -86;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u8(&v52[1], v52))
  {
    goto LABEL_28;
  }

  v17 = *(*(a1 + 6) + 264);
  *v50 = 0xAAAAAAAAAAAAAAAALL;
  v49 = -1431699456;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v18 = v17;
  if ((v52[0] & 0xE0) == 0x20)
  {
    v18 = v17;
    if (*v17)
    {
      if (bssl::ssl_protocol_version(a1, v15, v16) > 0x303)
      {
        if (bssl::parse_dtls13_record_header(a1, &v52[1], a6, a7, v52[0], &v47, v50, &v49 + 1, &v51))
        {
          v19 = v51;
          LODWORD(v20) = HIWORD(v49);
          goto LABEL_32;
        }

LABEL_28:
        *a4 = a7;
        return 1;
      }

      v18 = *(*(a1 + 6) + 264);
    }
  }

  __dst[0] = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16(&v52[1], &v49))
  {
    goto LABEL_28;
  }

  if (!CBS_copy_bytes(&v52[1], __dst, 8uLL))
  {
    goto LABEL_28;
  }

  v21 = v53;
  if (!CBS_get_u16_length_prefixed(&v52[1], &v47) || v48 > 0x4140)
  {
    goto LABEL_28;
  }

  v46 = v21;
  v24 = v49;
  if (*v18)
  {
    if (*(*(a1 + 6) + 208))
    {
      if (bssl::ssl_protocol_version(a1, v22, v23) <= 0x303)
      {
        v25 = *(*(a1 + 6) + 208);
      }

      else
      {
        v25 = 65277;
      }
    }

    else
    {
      v25 = 65279;
    }

    v28 = v24 == v25;
    v26 = v46;
    if (!v28)
    {
      goto LABEL_28;
    }

    v29 = *v18;
    v27 = bswap64(__dst[0]);
    *v50 = v27;
    if (v29)
    {
      if (bssl::ssl_protocol_version(a1, v22, v23) >= 0x304)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v26 = v46;
    if ((v49 & 0xFF00) != 0xFE00)
    {
      goto LABEL_28;
    }

    v27 = bswap64(__dst[0]);
    *v50 = v27;
  }

  v19 = a7 - v26 + 2;
  v20 = HIWORD(v27);
LABEL_32:
  if (a7 >= v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = a7;
  }

  bssl::ssl_do_msg_callback(a1, 0, 256, a6, v30);
  v32 = *(a1 + 7);
  if (v20 != *(v32 + 2))
  {
    goto LABEL_52;
  }

  v33 = *v50;
  v34 = *(v32 + 40);
  v35 = v34 >= *v50;
  v36 = v34 - *v50;
  if (v35 && (v36 > 0xFF || ((*(v32 + 8 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
  {
    goto LABEL_52;
  }

  if (!bssl::SSLAEADContext::Open(v17, a3, v52[0], v49, *v50, a6, v30, v31, v47, v48))
  {
    ERR_clear_error();
LABEL_52:
    *a4 = a7 - v53;
    return 1;
  }

  *a4 = a7 - v53;
  if (*v17)
  {
    v39 = bssl::ssl_protocol_version(a1, v37, v38);
    if (v39 <= 0x303)
    {
      v40 = 0x4000;
    }

    else
    {
      v40 = 16385;
    }

    v41 = *(a3 + 8);
    if (v41 <= v40)
    {
      if (v39 >= 0x304)
      {
        v42 = v41 - 1;
        while (v42 != -1)
        {
          v52[0] = *(*a3 + v42);
          v43 = v52[0];
          *(a3 + 8) = v42--;
          if (v43)
          {
            goto LABEL_56;
          }
        }

        ERR_put_error(16, 0, 139, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_record.cc", 406);
        v44 = 51;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

LABEL_54:
    ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_record.cc", 398);
    v44 = 22;
LABEL_55:
    *a5 = v44;
    return 4;
  }

  if (*(a3 + 8) > 0x4000uLL)
  {
    goto LABEL_54;
  }

LABEL_56:
  bssl::dtls1_bitmap_record(*(a1 + 7) + 8, v33);
  v45 = v52[0];
  if (v52[0] == 21)
  {
    return bssl::ssl_process_alert(a1, a5, *a3, *(a3 + 8));
  }

  result = 0;
  *(*(a1 + 6) + 213) = 0;
  *a2 = v45;
  return result;
}

uint64_t bssl::parse_dtls13_record_header(uint64_t a1, unsigned __int8 **a2, uint64_t a3, unint64_t a4, char a5, unsigned __int8 **a6, unint64_t *a7, _WORD *a8, unint64_t *a9)
{
  v37[2] = *MEMORY[0x1E69E9840];
  if ((a5 & 0x10) != 0)
  {
    return 0;
  }

  v16 = *(*(a1 + 56) + 2);
  v17 = v16 & 0xFFFC | a5 & 3;
  if (v17 <= v16 || (v16 & 0xFFFC) == 0)
  {
    v19 = v16 & 0xFFFC | a5 & 3;
  }

  else
  {
    v19 = v17 - 4;
  }

  *a8 = v19;
  if ((a5 & 8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  result = CBS_skip(a2, v20);
  if (result)
  {
    v22 = a4 - a2[1];
    *a9 = v22;
    if ((a5 & 4) != 0)
    {
      *a9 = v22 + 2;
      result = CBS_get_u16_length_prefixed(a2, a6);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = CBS_get_bytes(a2, a6, a2[1]);
      if (!result)
      {
        return result;
      }
    }

    v37[0] = 0xAAAAAAAAAAAAAAAALL;
    v37[1] = 0xAAAAAAAAAAAAAAAALL;
    result = bssl::SSLAEADContext::GenerateRecordNumberMask(*(*(a1 + 48) + 264));
    if (result)
    {
      v23 = 0;
      if (a4 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = a4;
      }

      v25 = v24 - 1;
      v26 = (a3 + 1);
      v27 = v37;
      v28 = v20;
      do
      {
        if (!v25)
        {
          abort();
        }

        v29 = *v27++;
        v30 = *v26;
        *v26++ ^= v29;
        v23 = (v30 ^ v29) | (v23 << 8);
        --v25;
        --v28;
      }

      while (v28);
      v31 = ~(-1 << (8 * v20));
      v32 = *(*(a1 + 56) + 40);
      v33 = (v23 - (v32 + 1)) & v31;
      v34 = v31 + 1;
      v35 = v33 + v32 + 1;
      if (v35 < v32 || (v33 > v34 >> 1 ? (v36 = v35 > v31) : (v36 = 0), v36))
      {
        v35 -= v34;
      }

      *a7 = v35;
    }
  }

  return result;
}

void bssl::dtls1_bitmap_record(uint64_t this, DTLS1_BITMAP *a2)
{
  v4 = *(this + 32);
  v5 = a2 > v4;
  v6 = (a2 - v4);
  if (v5)
  {
    if (v6 >= 0x100)
    {
      v8 = this;
      v9 = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<4ul,256ul>>(&v8, 0x100uLL);
    }

    else
    {
      std::bitset<256ul>::operator<<=[abi:ne200100](this, v6);
    }

    *(this + 32) = a2;
    v4 = a2;
  }

  v7 = v4 - a2;
  if (v7 <= 0xFF)
  {
    *(this + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
  }
}

uint64_t bssl::dtls_record_header_write_len(bssl *this, const ssl_st *a2, unsigned __int16 a3)
{
  if (!*(*(this + 6) + 208))
  {
    return 13;
  }

  v3 = a2;
  if (bssl::ssl_protocol_version(this, a2, a3) <= 0x303u || v3 == 0)
  {
    return 13;
  }

  else
  {
    return 5;
  }
}

uint64_t bssl::dtls_max_seal_overhead(bssl *this, const ssl_st *a2, unsigned __int16 a3)
{
  if (*(*(this + 6) + 208))
  {
    if (bssl::ssl_protocol_version(this, a2, a3) <= 0x303u || a2 == 0)
    {
      v6 = 13;
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = 13;
  }

  v7 = bssl::get_write_aead(this, a2);
  v10 = bssl::SSLAEADContext::MaxOverhead(v7) + v6;
  if (*(*(this + 6) + 208))
  {
    v11 = bssl::ssl_protocol_version(this, v8, v9);
    if (a2)
    {
      v12 = v11 > 0x303;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      ++v10;
    }
  }

  return v10;
}

uint64_t bssl::get_write_aead(bssl *this, const ssl_st *a2)
{
  v2 = *(this + 7);
  if (!a2)
  {
    v4 = *(v2 + 72);
    return *v4;
  }

  v3 = *(v2 + 4);
  if (v3 <= a2)
  {
    if (v3 == a2)
    {
      v4 = *(this + 6) + 272;
      return *v4;
    }

LABEL_9:
    abort();
  }

  if (a2 + 1 != v3)
  {
    goto LABEL_9;
  }

  v4 = v2 + 56;
  return *v4;
}

uint64_t bssl::dtls_seal_prefix_len(bssl *this, const ssl_st *a2, unsigned __int16 a3)
{
  if (*(*(this + 6) + 208))
  {
    if (bssl::ssl_protocol_version(this, a2, a3) <= 0x303u || a2 == 0)
    {
      v6 = 13;
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = 13;
  }

  v7 = bssl::get_write_aead(this, a2);
  return bssl::SSLAEADContext::ExplicitNonceLen(v7) + v6;
}

uint64_t bssl::dtls_seal_record(bssl *this, ssl_st *a2, unsigned __int8 *a3, unint64_t *a4, char a5, char *a6, const unsigned __int8 *a7, ssl_st *a8, unsigned __int16 a9)
{
  v54 = *MEMORY[0x1E69E9840];
  v51 = a5;
  v17 = bssl::dtls_seal_prefix_len(this, a8, a3);
  v18 = v17;
  if (a4 + a2 <= a6 || &a7[a6] <= a2 || v17 <= a4 && a2 + v17 == a6)
  {
    v49 = bssl::get_write_aead(this, a8);
    if (a8)
    {
      v21 = *(this + 6);
      v22 = *(this + 7);
      v23 = *(v22 + 4);
      v24 = (v22 + 64);
      if (v23 <= a8)
      {
        v25 = (v21 + 8);
      }

      else
      {
        v25 = v24;
      }
    }

    else
    {
      v21 = *(this + 6);
      v25 = (*(*(this + 7) + 72) + 8);
    }

    if (*(v21 + 208))
    {
      v26 = bssl::ssl_protocol_version(this, v19, v20) <= 0x303u || a8 == 0;
      if (v26)
      {
        v27 = 13;
      }

      else
      {
        v27 = 5;
      }
    }

    else
    {
      v27 = 13;
    }

    if (*v25 - 0xFFFFFFFFFFFFLL > 0xFFFEFFFFFFFFFFFFLL)
    {
      v48 = v27;
      v43 = a3;
      if (*(*(this + 6) + 208))
      {
        if (bssl::ssl_protocol_version(this, v19, v20) <= 0x303)
        {
          v32 = *(*(this + 6) + 208);
        }

        else
        {
          v32 = -259;
        }

        v47 = v32;
        v44 = *v25 | (a8 << 48);
        if (*(*(this + 6) + 208))
        {
          v33 = bssl::ssl_protocol_version(this, v30, v31) > 0x303u;
          v34 = a8 != 0;
          v35 = v34 & v33;
          v26 = !v34 || !v33;
          v36 = &v51;
          if (v26)
          {
            v36 = 0;
          }

          v46 = v36;
          v45 = v35;
        }

        else
        {
          v35 = 0;
          v45 = 0;
          v46 = 0;
        }
      }

      else
      {
        v35 = 0;
        v45 = 0;
        v46 = 0;
        v44 = *v25 | (a8 << 48);
        v47 = -257;
      }

      v50 = 0xAAAAAAAAAAAAAAAALL;
      if (bssl::SSLAEADContext::CiphertextLen(v49, &v50, a7, v35))
      {
        v38 = v50;
        if (v50 + v48 <= a4)
        {
          if (v45)
          {
            LOBYTE(a2->version) = a8 & 3 | 0x2C;
            BYTE1(a2->version) = BYTE1(*v25);
            BYTE2(a2->version) = *v25;
            HIBYTE(a2->version) = HIBYTE(v38);
            LOBYTE(a2->type) = v38;
            if ((bssl::SSLAEADContext::SealScatter(v49, a2 + v48, a2 + v18, &a7[a2 + v18], a5, v47, *v25, v37, a2, v48, a6, a7, v46, v35) & 1) == 0)
            {
              return 0;
            }

            v52 = 0xAAAAAAAAAAAAAAAALL;
            v53 = 0xAAAAAAAAAAAAAAAALL;
            if (!bssl::SSLAEADContext::GenerateRecordNumberMask(v49))
            {
              return 0;
            }

            *(&a2->version + 1) ^= v52;
            v41 = v48;
          }

          else
          {
            LOBYTE(a2->version) = a5;
            BYTE1(a2->version) = HIBYTE(v47);
            BYTE2(a2->version) = v47;
            *(&a2->version + 3) = bswap64(v44);
            BYTE3(a2->method) = HIBYTE(v38);
            BYTE4(a2->method) = v38;
            __src = a6;
            v41 = v48;
            if ((bssl::SSLAEADContext::SealScatter(v49, a2 + v48, a2 + v18, &a7[a2 + v18], a5, v47, v44, v37, a2, v48, __src, a7, v46, v35) & 1) == 0)
            {
              return 0;
            }
          }

          ++*v25;
          *v43 = v50 + v41;
          v39 = 1;
          bssl::ssl_do_msg_callback(this, 1, 256, a2, v41);
          return v39;
        }

        v28 = 121;
        v29 = 524;
      }

      else
      {
        v28 = 200;
        v29 = 520;
      }
    }

    else
    {
      v28 = 69;
      v29 = 503;
    }
  }

  else
  {
    v28 = 189;
    v29 = 485;
  }

  ERR_put_error(16, 0, v28, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_record.cc", v29);
  return 0;
}

uint64_t std::bitset<256ul>::operator<<=[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    v4 = 256;
  }

  else
  {
    v4 = a2;
  }

  v11 = a1;
  v12 = 0;
  v9 = a1 + (((256 - v4) >> 3) & 0x38);
  if ((-v4 & 0x3F) != 0)
  {
    v10 = -v4 & 0x3F;
    v7 = a1 + 32;
    v8 = 0;
    std::__copy_backward_unaligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>(&v11, &v9, &v7, v6);
  }

  else
  {
    v10 = 0;
    v7 = a1 + 32;
    v8 = 0;
    std::__copy_backward_aligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>(&v11, &v9, &v7, v6);
  }

  if (a2)
  {
    v11 = a1;
    v12 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<4ul,256ul>>(&v11, v4);
  }

  return a1;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<4ul,256ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

unsigned int *std::__copy_backward_aligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  v7 = result[2];
  v8 = v6 + 8 * (*a2 - *result) - v7;
  v9 = *a3;
  if (v8 >= 1)
  {
    if (v6)
    {
      if (v8 >= v6)
      {
        v11 = *(a2 + 8);
      }

      else
      {
        v11 = v6 + 8 * (*a2 - *result) - v7;
      }

      v8 -= v11;
      v12 = (-1 << (v6 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      *v9 = *v9 & ~v12 | **a2 & v12;
      *(a3 + 8) = (*(a3 + 8) - v11) & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    *a3 = &v9[-(v13 >> 6)];
    v15 = (*a2 - 8 * (v13 >> 6));
    *a2 = v15;
    if ((v8 + 63) >= 0x7F)
    {
      result = memmove(*a3, v15, 8 * v14);
    }

    if (v8 - (v14 << 6) <= 0)
    {
      v9 = *a3;
    }

    else
    {
      v16 = *(*a2 - 8);
      *a2 -= 8;
      v9 = (*a3 - 8);
      v17 = *v9;
      *a3 = v9;
      *v9 = v17 & ~(-1 << ((v14 << 6) - v8)) | v16 & (-1 << ((v14 << 6) - v8));
      *(a3 + 8) = -v8 & 0x3F;
    }
  }

  *a4 = v9;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:ne200100]<std::__bitset<4ul,256ul>,false>@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 + 8 * (*a2 - *result) - v5;
  if (v6 <= 0)
  {
    v16 = *(a3 + 8);
  }

  else
  {
    if (v4)
    {
      if (v6 >= v4)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = v4 + 8 * (*a2 - *result) - v5;
      }

      v6 -= v7;
      v8 = (-1 << (v4 - v7)) & (0xFFFFFFFFFFFFFFFFLL >> -v4) & **a2;
      v9 = *(a3 + 8);
      if (v7 >= v9)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = v7;
      }

      if (v9)
      {
        v11 = v8 >> (v4 - v9);
        v12 = v9 >= v4;
        v14 = v9 - v4;
        v13 = v14 != 0 && v12;
        v15 = v8 << v14;
        if (!v13)
        {
          v15 = v11;
        }

        **a3 = **a3 & ~((-1 << (v9 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -v9)) | v15;
        v16 = (v9 - v10) & 0x3F;
        *(a3 + 8) = v16;
        v7 -= v10;
      }

      else
      {
        v16 = 0;
      }

      if (v7 >= 1)
      {
        v18 = (*a3 - 8);
        v17 = *v18;
        *a3 = v18;
        *(a3 + 8) = -v7 & 0x3F;
        v19 = v17 & ~(-1 << -v7);
        v20 = *(a2 + 8) - v7 - v10;
        *(a2 + 8) = v20;
        v16 = *(a3 + 8);
        *v18 = (v8 << (v16 - v20)) | v19;
      }
    }

    else
    {
      v16 = *(a3 + 8);
    }

    v21 = 64 - v16;
    v22 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
    if (v6 < 64)
    {
      v26 = v6;
    }

    else
    {
      do
      {
        v23 = *(*a2 - 8);
        *a2 -= 8;
        v24 = *a3;
        result = v23 >> v21;
        *v24 = **a3 & ~v22 | (v23 >> v21);
        v25 = *--v24;
        *a3 = v24;
        *v24 = v25 & v22 | (v23 << v16);
        v26 = v6 - 64;
        v13 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v13);
    }

    if (v26 >= 1)
    {
      v27 = *(*a2 - 8);
      *a2 -= 8;
      v28 = v27 & (-1 << -v26);
      if (v26 >= v16)
      {
        v29 = v16;
      }

      else
      {
        v29 = v26;
      }

      v30 = (-1 << (v16 - v29)) & v22;
      v31 = *a3;
      **a3 = **a3 & ~v30 | (v28 >> v21);
      v16 = (v16 - v29) & 0x3F;
      *(a3 + 8) = v16;
      if (v26 - v29 >= 1)
      {
        v33 = *(v31 - 1);
        v32 = v31 - 1;
        *a3 = v32;
        v16 = (v29 - v26) & 0x3F;
        *(a3 + 8) = v16;
        *v32 = v33 & ~(-1 << (v29 - v26)) | (v28 << (v26 + ((v29 - v26) & 0x3F)));
      }
    }
  }

  *a4 = *a3;
  *(a4 + 8) = v16;
  return result;
}

void ec_GFp_mont_felem_reduce(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  bn_from_montgomery_small(a2, *(a1 + 328), a3, a4, a1 + 296);
  bn_to_montgomery_small(a2, a2, *(a1 + 328), (a1 + 296));
  v6 = *(a1 + 328);

  bn_to_montgomery_small(a2, a2, v6, (a1 + 296));
}

uint64_t *ec_GFp_mont_add(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __n128 a5)
{
  if (a3 == a4)
  {

    return ec_GFp_mont_dbl(a1, a2, a3);
  }

  else
  {
    v61 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60[2] = v9;
    v60[3] = v9;
    v60[0] = v9;
    v60[1] = v9;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v58[2] = v9;
    v58[3] = v9;
    v58[0] = v9;
    v58[1] = v9;
    v57 = 0xAAAAAAAAAAAAAAAALL;
    v56[3] = v9;
    v56[2] = v9;
    v56[1] = v9;
    v56[0] = v9;
    v10 = ec_felem_non_zero_mask(a1, a3 + 18);
    v11 = ec_felem_non_zero_mask(a1, a4 + 18);
    v55 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v54[3] = v12;
    v54[2] = v12;
    v54[1] = v12;
    v54[0] = v12;
    bn_mod_mul_montgomery_small(v54, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    v53 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v52[2] = v13;
    v52[3] = v13;
    v52[0] = v13;
    v52[1] = v13;
    bn_mod_mul_montgomery_small(v52, a4 + 18, a4 + 18, *(a1 + 328), a1 + 296);
    v51 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50[2] = v14;
    v50[3] = v14;
    v50[0] = v14;
    v50[1] = v14;
    bn_mod_mul_montgomery_small(v50, a3, v52, *(a1 + 328), a1 + 296);
    v49 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48[2] = v15;
    v48[3] = v15;
    v48[0] = v15;
    v48[1] = v15;
    ec_felem_add(a1, v48, a3 + 18, a4 + 18);
    bn_mod_mul_montgomery_small(v48, v48, v48, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, v48, v48, v54);
    ec_felem_sub(a1, v48, v48, v52);
    v47 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46[2] = v16;
    v46[3] = v16;
    v46[0] = v16;
    v46[1] = v16;
    bn_mod_mul_montgomery_small(v46, a4 + 18, v52, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v46, v46, a3 + 9, *(a1 + 328), a1 + 296);
    v45 = 0xAAAAAAAAAAAAAAAALL;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44[2] = v17;
    v44[3] = v17;
    v44[0] = v17;
    v44[1] = v17;
    bn_mod_mul_montgomery_small(v44, a4, v54, *(a1 + 328), a1 + 296);
    v43 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42[2] = v18;
    v42[3] = v18;
    v42[0] = v18;
    v42[1] = v18;
    ec_felem_sub(a1, v42, v44, v50);
    v19 = ec_felem_non_zero_mask(a1, v42);
    bn_mod_mul_montgomery_small(v56, v42, v48, *(a1 + 328), a1 + 296);
    v41 = 0xAAAAAAAAAAAAAAAALL;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40[2] = v20;
    v40[3] = v20;
    v40[0] = v20;
    v40[1] = v20;
    bn_mod_mul_montgomery_small(v40, a3 + 18, v54, *(a1 + 328), a1 + 296);
    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[2] = v21;
    v38[3] = v21;
    v38[0] = v21;
    v38[1] = v21;
    bn_mod_mul_montgomery_small(v38, a4 + 9, v40, *(a1 + 328), a1 + 296);
    v37 = 0xAAAAAAAAAAAAAAAALL;
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36[2] = v22;
    v36[3] = v22;
    v36[0] = v22;
    v36[1] = v22;
    ec_felem_sub(a1, v36, v38, v46);
    ec_felem_add(a1, v36, v36, v36);
    if ((v10 & ~(ec_felem_non_zero_mask(a1, v36) | v19) & v11) != 0)
    {
      return ec_GFp_mont_dbl(a1, a2, a3);
    }

    else
    {
      v35 = 0xAAAAAAAAAAAAAAAALL;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v34[2] = v24;
      v34[3] = v24;
      v34[0] = v24;
      v34[1] = v24;
      ec_felem_add(a1, v34, v42, v42);
      bn_mod_mul_montgomery_small(v34, v34, v34, *(a1 + 328), a1 + 296);
      v33 = 0xAAAAAAAAAAAAAAAALL;
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v32[2] = v25;
      v32[3] = v25;
      v32[0] = v25;
      v32[1] = v25;
      bn_mod_mul_montgomery_small(v32, v42, v34, *(a1 + 328), a1 + 296);
      v31 = 0xAAAAAAAAAAAAAAAALL;
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30[2] = v26;
      v30[3] = v26;
      v30[0] = v26;
      v30[1] = v26;
      bn_mod_mul_montgomery_small(v30, v50, v34, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v60, v36, v36, *(a1 + 328), a1 + 296);
      ec_felem_sub(a1, v60, v60, v32);
      ec_felem_sub(a1, v60, v60, v30);
      ec_felem_sub(a1, v60, v60, v30);
      ec_felem_sub(a1, v58, v30, v60);
      bn_mod_mul_montgomery_small(v58, v58, v36, *(a1 + 328), a1 + 296);
      v29 = 0xAAAAAAAAAAAAAAAALL;
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v28[2] = v27;
      v28[3] = v27;
      v28[0] = v27;
      v28[1] = v27;
      bn_mod_mul_montgomery_small(v28, v46, v32, *(a1 + 328), a1 + 296);
      ec_felem_sub(a1, v58, v58, v28);
      ec_felem_sub(a1, v58, v58, v28);
      ec_felem_select(a1, v60, v10, v60, a4);
      ec_felem_select(a1, a2, v11, v60, a3);
      ec_felem_select(a1, v58, v10, v58, a4 + 9);
      ec_felem_select(a1, a2 + 9, v11, v58, a3 + 9);
      ec_felem_select(a1, v56, v10, v56, a4 + 18);
      return ec_felem_select(a1, a2 + 18, v11, v56, a3 + 18);
    }
  }
}

uint64_t *ec_GFp_mont_dbl(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (*(a1 + 528))
  {
    v47 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v6;
    v46 = v6;
    v43 = v6;
    v44 = v6;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v40 = v6;
    v41 = v6;
    v38 = v6;
    v39 = v6;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v6;
    v36 = v6;
    v33 = v6;
    v34 = v6;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v30 = v6;
    v31 = v6;
    v28 = v6;
    v29 = v6;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v25 = v6;
    v26 = v6;
    v23 = v6;
    v24 = v6;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v20 = v6;
    v21 = v6;
    v18 = v6;
    v19 = v6;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v16[2] = v6;
    v16[3] = v6;
    v16[0] = v6;
    v16[1] = v6;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v14[2] = v6;
    v14[3] = v6;
    v14[0] = v6;
    v14[1] = v6;
    bn_mod_mul_montgomery_small(&v43, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v38, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v33, a3, &v38, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, &v28, a3, &v43);
    ec_felem_add(a1, &v23, a3, &v43);
    ec_felem_add(a1, &v18, &v23, &v23);
    ec_felem_add(a1, &v23, &v23, &v18);
    bn_mod_mul_montgomery_small(v16, &v28, &v23, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(a2, v16, v16, *(a1 + 328), a1 + 296);
    ec_felem_add(a1, v14, &v33, &v33);
    ec_felem_add(a1, v14, v14, v14);
    ec_felem_add(a1, &v18, v14, v14);
    ec_felem_sub(a1, a2, a2, &v18);
    ec_felem_add(a1, &v43, &v38, &v43);
    ec_felem_add(a1, &v28, a3 + 9, a3 + 18);
    bn_mod_mul_montgomery_small(a2 + 18, &v28, &v28, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, a2 + 18, a2 + 18, &v43);
    ec_felem_sub(a1, a2 + 9, v14, a2);
    ec_felem_add(a1, &v38, &v38, &v38);
    bn_mod_mul_montgomery_small(&v38, &v38, &v38, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(a2 + 9, v16, a2 + 9, *(a1 + 328), a1 + 296);
    ec_felem_add(a1, &v38, &v38, &v38);
    v7 = a2 + 9;
    v8 = a2 + 9;
    v9 = &v38;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v10;
    v46 = v10;
    v43 = v10;
    v44 = v10;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v40 = v10;
    v41 = v10;
    v38 = v10;
    v39 = v10;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v10;
    v36 = v10;
    v33 = v10;
    v34 = v10;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v30 = v10;
    v31 = v10;
    v28 = v10;
    v29 = v10;
    bn_mod_mul_montgomery_small(&v43, a3, a3, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v38, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v33, &v38, &v38, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v28, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    v27 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v11;
    v26 = v11;
    v23 = v11;
    v24 = v11;
    ec_felem_add(a1, &v23, a3, &v38);
    bn_mod_mul_montgomery_small(&v23, &v23, &v23, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, &v23, &v23, &v43);
    ec_felem_sub(a1, &v23, &v23, &v33);
    ec_felem_add(a1, &v23, &v23, &v23);
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v12;
    v21 = v12;
    v18 = v12;
    v19 = v12;
    bn_mod_mul_montgomery_small(&v18, &v28, &v28, *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(&v18, (a1 + 360), &v18, *(a1 + 328), a1 + 296);
    ec_felem_add(a1, &v18, &v18, &v43);
    ec_felem_add(a1, &v18, &v18, &v43);
    ec_felem_add(a1, &v18, &v18, &v43);
    bn_mod_mul_montgomery_small(a2, &v18, &v18, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, a2, a2, &v23);
    ec_felem_sub(a1, a2, a2, &v23);
    ec_felem_add(a1, a2 + 18, a3 + 9, a3 + 18);
    bn_mod_mul_montgomery_small(a2 + 18, a2 + 18, a2 + 18, *(a1 + 328), a1 + 296);
    ec_felem_sub(a1, a2 + 18, a2 + 18, &v38);
    ec_felem_sub(a1, a2 + 18, a2 + 18, &v28);
    ec_felem_add(a1, &v33, &v33, &v33);
    ec_felem_add(a1, &v33, &v33, &v33);
    ec_felem_add(a1, &v33, &v33, &v33);
    ec_felem_sub(a1, a2 + 9, &v23, a2);
    bn_mod_mul_montgomery_small(a2 + 9, a2 + 9, &v18, *(a1 + 328), a1 + 296);
    v7 = a2 + 9;
    v8 = a2 + 9;
    v9 = &v33;
  }

  return ec_felem_sub(a1, v7, v8, v9);
}

void EC_GFp_mont_method_init()
{
  EC_GFp_mont_method_storage = ec_GFp_mont_point_get_affine_coordinates;
  qword_1ED4C0218 = ec_GFp_mont_jacobian_to_affine_batch;
  qword_1ED4C0220 = ec_GFp_mont_add;
  qword_1ED4C0228 = ec_GFp_mont_dbl;
  qword_1ED4C0230 = ec_GFp_mont_mul;
  qword_1ED4C0238 = ec_GFp_mont_mul_base;
  qword_1ED4C0240 = ec_GFp_mont_mul_batch;
  qword_1ED4C0250 = ec_GFp_mont_mul_public_batch;
  qword_1ED4C0258 = ec_GFp_mont_init_precomp;
  qword_1ED4C0260 = ec_GFp_mont_mul_precomp;
  qword_1ED4C0268 = ec_GFp_mont_felem_mul;
  qword_1ED4C0270 = ec_GFp_mont_felem_sqr;
  qword_1ED4C0278 = ec_GFp_mont_felem_to_bytes;
  qword_1ED4C0280 = ec_GFp_mont_felem_from_bytes;
  qword_1ED4C0288 = ec_GFp_mont_felem_reduce;
  qword_1ED4C0290 = ec_GFp_mont_felem_exp;
  qword_1ED4C0298 = ec_simple_scalar_inv0_montgomery;
  qword_1ED4C02A0 = ec_simple_scalar_to_montgomery_inv_vartime;
  qword_1ED4C02A8 = ec_GFp_mont_cmp_x_coordinate;
}

uint64_t ec_GFp_mont_point_get_affine_coordinates(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (ec_GFp_simple_is_at_infinity(a1, a2))
  {
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_montgomery.c.inc", 150);
    return 0;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[2] = v9;
    v12[3] = v9;
    v12[0] = v9;
    v12[1] = v9;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v10[2] = v9;
    v10[3] = v9;
    v10[0] = v9;
    v10[1] = v9;
    bn_mod_inverse0_prime_mont_small(v10, (a2 + 18), *(a1 + 328), a1 + 296);
    bn_mod_mul_montgomery_small(v12, v10, v10, *(a1 + 328), a1 + 296);
    if (a3)
    {
      bn_mod_mul_montgomery_small(a3, a2, v12, *(a1 + 328), a1 + 296);
    }

    if (a4)
    {
      bn_mod_mul_montgomery_small(v12, v12, v10, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(a4, a2 + 9, v12, *(a1 + 328), a1 + 296);
    }

    return 1;
  }
}

uint64_t ec_GFp_mont_jacobian_to_affine_batch(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a2;
  *a2 = *(a3 + 144);
  v8 = *(a3 + 160);
  v9 = *(a3 + 176);
  v10 = *(a3 + 192);
  *(a2 + 64) = *(a3 + 208);
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 16) = v8;
  v11 = a4 - 1;
  if (a4 != 1)
  {
    v12 = (a3 + 360);
    v13 = a4 - 1;
    do
    {
      v14 = a2 + 144;
      bn_mod_mul_montgomery_small((a2 + 144), a2, v12, *(a1 + 328), a1 + 296);
      v12 += 27;
      a2 = v14;
      --v13;
    }

    while (v13);
  }

  if (ec_felem_non_zero_mask(a1, (v6 + 144 * v11)))
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v15;
    v30 = v15;
    v27 = v15;
    v28 = v15;
    bn_mod_inverse0_prime_mont_small(&v27, v6 + 144 * v11, *(a1 + 328), a1 + 296);
    v16 = (a3 + 216 * a4 - 216);
    v17 = (v6 + 144 * a4 - 144);
    do
    {
      v26 = 0xAAAAAAAAAAAAAAAALL;
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v18;
      v25 = v18;
      v22 = v18;
      v23 = v18;
      v21 = 0xAAAAAAAAAAAAAAAALL;
      v20[2] = v18;
      v20[3] = v18;
      v20[0] = v18;
      v20[1] = v18;
      if (v11)
      {
        bn_mod_mul_montgomery_small(&v22, &v27, v17 - 18, *(a1 + 328), a1 + 296);
        bn_mod_mul_montgomery_small(&v27, &v27, v16 + 18, *(a1 + 328), a1 + 296);
      }

      else
      {
        v24 = v29;
        v25 = v30;
        v26 = v31;
        v22 = v27;
        v23 = v28;
      }

      bn_mod_mul_montgomery_small(v20, &v22, &v22, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v17, v16, v20, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v17 + 9, v16 + 9, v20, *(a1 + 328), a1 + 296);
      bn_mod_mul_montgomery_small(v17 + 9, v17 + 9, &v22, *(a1 + 328), a1 + 296);
      --v11;
      v16 -= 27;
      v17 -= 18;
    }

    while (v11 < a4);
    return 1;
  }

  else
  {
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_montgomery.c.inc", 189);
    return 0;
  }
}

uint64_t ec_GFp_mont_cmp_x_coordinate(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (*(a1 + 536) && *(a1 + 328) == *(a1 + 264))
  {
    if (ec_GFp_simple_is_at_infinity(a1, a2))
    {
      return 0;
    }

    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v7;
    v16 = v7;
    *rp = v7;
    v14 = v7;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v11[2] = v7;
    v11[3] = v7;
    v11[0] = v7;
    v11[1] = v7;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v9[2] = v7;
    v9[3] = v7;
    v9[0] = v7;
    v9[1] = v7;
    bn_mod_mul_montgomery_small(v11, (a2 + 144), (a2 + 144), *(a1 + 328), a1 + 296);
    v8 = *(a1 + 328);
    if (v8)
    {
      __memcpy_chk();
    }

    bn_mod_mul_montgomery_small(rp, rp, v11, v8, a1 + 296);
    bn_from_montgomery_small(v9, *(a1 + 328), a2, *(a1 + 328), a1 + 296);
    if (ec_felem_equal(a1, rp, v9))
    {
      return 1;
    }

    if (!bn_add_words(rp, a3, *(a1 + 256), *(a1 + 328)) && bn_less_than_words(rp, *(a1 + 320), *(a1 + 328)) && (bn_mod_mul_montgomery_small(rp, rp, v11, *(a1 + 328), a1 + 296), ec_felem_equal(a1, rp, v9)))
    {
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return ec_GFp_simple_cmp_x_coordinate(a1, a2, a3);
  }
}

char *CRYPTO_chacha_20(char *result, char *a2, unint64_t a3, __int128 *a4, uint64_t a5, int a6)
{
  v98 = *MEMORY[0x1E69E9840];
  if (a2 != result && &result[a3] > a2 && &a2[a3] > result)
  {
    CRYPTO_chacha_20_cold_1();
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v89[2] = v6;
  v89[3] = v6;
  v89[0] = v6;
  v89[1] = v6;
  v7 = *a4;
  v8 = a4[1];
  v90 = xmmword_1A90B85E0;
  v91 = v7;
  v92 = v8;
  LODWORD(v93) = a6;
  *(&v93 + 4) = *a5;
  for (HIDWORD(v93) = *(a5 + 8); a3; a3 -= v81)
  {
    v94 = v90;
    v95 = v91;
    v96 = v92;
    v97 = v93;
    v10 = v91;
    v9 = DWORD1(v91);
    v11 = v90;
    v12 = DWORD1(v90);
    v13 = v93;
    v14 = DWORD1(v93);
    v15 = v92;
    v16 = DWORD1(v92);
    v18 = DWORD2(v91);
    v17 = HIDWORD(v91);
    v19 = DWORD2(v90);
    v20 = HIDWORD(v90);
    v22 = DWORD2(v93);
    v21 = HIDWORD(v93);
    v23 = 22;
    v24 = DWORD2(v92);
    v25 = HIDWORD(v92);
    do
    {
      v26 = v11 + v10;
      v27 = v13 ^ v26;
      HIDWORD(v28) = v27;
      LODWORD(v28) = v27;
      v29 = (v28 >> 16) + v15;
      v30 = v29 ^ v10;
      HIDWORD(v28) = v30;
      LODWORD(v28) = v30;
      v31 = (v28 >> 20) + v26;
      LODWORD(v28) = v31 ^ __ROR4__(v27, 16);
      v32 = v28;
      HIDWORD(v28) = v28;
      v33 = (v28 >> 24) + v29;
      LODWORD(v28) = v33 ^ __ROR4__(v30, 20);
      v34 = v28;
      HIDWORD(v28) = v28;
      v35 = v28 >> 25;
      v36 = v12 + v9;
      v37 = v14 ^ v36;
      HIDWORD(v28) = v37;
      LODWORD(v28) = v37;
      v38 = (v28 >> 16) + v16;
      v39 = v38 ^ v9;
      HIDWORD(v28) = v39;
      LODWORD(v28) = v39;
      v40 = (v28 >> 20) + v36;
      LODWORD(v28) = v40 ^ __ROR4__(v37, 16);
      v41 = v28;
      HIDWORD(v28) = v28;
      v42 = (v28 >> 24) + v38;
      LODWORD(v28) = v42 ^ __ROR4__(v39, 20);
      v43 = v28;
      HIDWORD(v28) = v28;
      v44 = v28 >> 25;
      v45 = v19 + v18;
      v46 = v22 ^ v45;
      HIDWORD(v28) = v46;
      LODWORD(v28) = v46;
      v47 = (v28 >> 16) + v24;
      v48 = v47 ^ v18;
      HIDWORD(v28) = v48;
      LODWORD(v28) = v48;
      v49 = (v28 >> 20) + v45;
      LODWORD(v28) = v49 ^ __ROR4__(v46, 16);
      v50 = v28;
      HIDWORD(v28) = v28;
      v51 = (v28 >> 24) + v47;
      LODWORD(v28) = v51 ^ __ROR4__(v48, 20);
      v52 = v28;
      HIDWORD(v28) = v28;
      v53 = v28 >> 25;
      v54 = v20 + v17;
      v55 = v21 ^ v54;
      HIDWORD(v28) = v55;
      LODWORD(v28) = v55;
      v56 = (v28 >> 16) + v25;
      v57 = v56 ^ v17;
      HIDWORD(v28) = v57;
      LODWORD(v28) = v57;
      v58 = (v28 >> 20) + v54;
      LODWORD(v28) = v58 ^ __ROR4__(v55, 16);
      v59 = v28;
      HIDWORD(v28) = v28;
      v60 = (v28 >> 24) + v56;
      LODWORD(v28) = v60 ^ __ROR4__(v57, 20);
      v61 = v28;
      HIDWORD(v28) = v28;
      v62 = v28 >> 25;
      v63 = v44 + v31;
      LODWORD(v28) = v63 ^ __ROR4__(v59, 24);
      v64 = v28;
      HIDWORD(v28) = v28;
      v65 = (v28 >> 16) + v51;
      LODWORD(v28) = v65 ^ __ROR4__(v43, 25);
      v66 = v28;
      HIDWORD(v28) = v28;
      v11 = (v28 >> 20) + v63;
      LODWORD(v28) = v11 ^ __ROR4__(v64, 16);
      HIDWORD(v28) = v28;
      v21 = v28 >> 24;
      v24 = v21 + v65;
      LODWORD(v28) = v24 ^ __ROR4__(v66, 20);
      HIDWORD(v28) = v28;
      v9 = v28 >> 25;
      v67 = v53 + v40;
      LODWORD(v28) = v67 ^ __ROR4__(v32, 24);
      v68 = v28;
      HIDWORD(v28) = v28;
      v69 = (v28 >> 16) + v60;
      LODWORD(v28) = v69 ^ __ROR4__(v52, 25);
      v70 = v28;
      HIDWORD(v28) = v28;
      v12 = (v28 >> 20) + v67;
      LODWORD(v28) = v12 ^ __ROR4__(v68, 16);
      HIDWORD(v28) = v28;
      v13 = v28 >> 24;
      v25 = v13 + v69;
      LODWORD(v28) = v25 ^ __ROR4__(v70, 20);
      HIDWORD(v28) = v28;
      v18 = v28 >> 25;
      v71 = v62 + v49;
      LODWORD(v28) = v71 ^ __ROR4__(v41, 24);
      v72 = v28;
      HIDWORD(v28) = v28;
      v73 = (v28 >> 16) + v33;
      LODWORD(v28) = v73 ^ __ROR4__(v61, 25);
      v74 = v28;
      HIDWORD(v28) = v28;
      v19 = (v28 >> 20) + v71;
      LODWORD(v28) = v19 ^ __ROR4__(v72, 16);
      HIDWORD(v28) = v28;
      v14 = v28 >> 24;
      v15 = v14 + v73;
      LODWORD(v28) = v15 ^ __ROR4__(v74, 20);
      HIDWORD(v28) = v28;
      v17 = v28 >> 25;
      v75 = v58 + v35;
      LODWORD(v28) = v75 ^ __ROR4__(v50, 24);
      v76 = v28;
      HIDWORD(v28) = v28;
      v77 = (v28 >> 16) + v42;
      LODWORD(v28) = v77 ^ __ROR4__(v34, 25);
      v78 = v28;
      HIDWORD(v28) = v28;
      v20 = (v28 >> 20) + v75;
      LODWORD(v28) = v20 ^ __ROR4__(v76, 16);
      HIDWORD(v28) = v28;
      v22 = v28 >> 24;
      v16 = v22 + v77;
      v23 -= 2;
      LODWORD(v28) = v16 ^ __ROR4__(v78, 20);
      HIDWORD(v28) = v28;
      v10 = v28 >> 25;
    }

    while (v23 > 2);
    v79 = 0;
    *&v95 = __PAIR64__(v9, v10);
    *&v94 = __PAIR64__(v12, v11);
    *&v97 = __PAIR64__(v14, v13);
    *&v96 = __PAIR64__(v16, v15);
    *(&v95 + 1) = __PAIR64__(v17, v18);
    *(&v94 + 1) = __PAIR64__(v20, v19);
    *(&v97 + 1) = __PAIR64__(v21, v22);
    *(&v96 + 1) = __PAIR64__(v25, v24);
    do
    {
      *(&v94 + v79) = vaddq_s32(*(&v94 + v79), *(&v90 + v79));
      v79 += 16;
    }

    while (v79 != 64);
    for (i = 0; i != 64; i += 4)
    {
      *(v89 + i) = *(&v94 + i);
    }

    if (a3 >= 0x40)
    {
      v81 = 64;
    }

    else
    {
      v81 = a3;
    }

    if (v81 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = v81;
    }

    v83 = v89;
    v84 = a2;
    v85 = result;
    do
    {
      v87 = *v84++;
      v86 = v87;
      v88 = *v83++;
      *v85++ = v88 ^ v86;
      --v82;
    }

    while (v82);
    result += v81;
    a2 += v81;
    LODWORD(v93) = ++a6;
  }

  return result;
}

uint64_t bssl::ssl_cipher_get_record_split_len(bssl *this, const ssl_cipher_st *a2)
{
  v2 = *(this + 7);
  if (v2 == 1)
  {
    v4 = 24;
  }

  else
  {
    if (v2 != 4 && v2 != 2)
    {
      return 0;
    }

    v4 = 32;
  }

  if (*(this + 8) != 1)
  {
    bssl::ssl_cipher_get_record_split_len();
  }

  return v4;
}

uint64_t SSL_CIPHER_get_cipher_nid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  if (v2 <= 7)
  {
    switch(v2)
    {
      case 1:
        return 44;
      case 2:
        return 419;
      case 4:
        return 427;
      default:
        goto LABEL_17;
    }
  }

  else if (v2 > 31)
  {
    if (v2 == 32)
    {
      return 0;
    }

    else
    {
      if (v2 != 64)
      {
        goto LABEL_17;
      }

      return 950;
    }
  }

  else
  {
    if (v2 != 8)
    {
      if (v2 == 16)
      {
        return 901;
      }

LABEL_17:
      SSL_CIPHER_get_cipher_nid_cold_1();
    }

    return 895;
  }
}

uint64_t SSL_CIPHER_get_digest_nid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) - 1;
  if (v2 >= 8 || ((0x8Bu >> v2) & 1) == 0)
  {
    SSL_CIPHER_get_digest_nid_cold_1();
  }

  return dword_1A90B8638[v2];
}

const EVP_MD *SSL_CIPHER_get_handshake_digest(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 36);
  switch(v3)
  {
    case 4:

      return EVP_sha384();
    case 2:

      return EVP_sha256();
    case 1:

      return EVP_md5_sha1();
    default:
      SSL_CIPHER_get_handshake_digest_cold_1();
  }
}

EVP_MD *SSL_CIPHER_get_prf_nid(uint64_t a1, uint64_t a2)
{
  result = SSL_CIPHER_get_handshake_digest(a1, a2);
  if (result)
  {

    return EVP_MD_nid(result);
  }

  return result;
}

int SSL_CIPHER_get_bits(const SSL_CIPHER *c, int *alg_bits)
{
  if (c)
  {
    algorithms_high = HIDWORD(c->algorithms);
    v3 = (algorithms_high - 2);
    if (v3 <= 0x3E)
    {
      if (((1 << (algorithms_high - 2)) & 0x4000000000004004) != 0)
      {
        v4 = 256;
        LODWORD(c) = 256;
        if (!alg_bits)
        {
          return c;
        }

        goto LABEL_11;
      }

      if (((1 << (algorithms_high - 2)) & 0x41) != 0)
      {
        v4 = 128;
        LODWORD(c) = 128;
        if (!alg_bits)
        {
          return c;
        }

LABEL_11:
        *alg_bits = v4;
        return c;
      }

      if (v3 == 30)
      {
        v4 = 0;
        LODWORD(c) = 0;
        if (!alg_bits)
        {
          return c;
        }

        goto LABEL_11;
      }
    }

    if (algorithms_high != 1)
    {
      SSL_CIPHER_get_bits_cold_1();
    }

    LODWORD(c) = 112;
    v4 = 168;
    if (alg_bits)
    {
      goto LABEL_11;
    }
  }

  return c;
}

uint64_t bssl::Array<int>::InitUninitialized(uint64_t a1, unint64_t a2)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (!a2)
  {
    return 1;
  }

  if (a2 >> 62)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/internal.h", 382);
    return 0;
  }

  result = OPENSSL_malloc(4 * a2);
  *a1 = result;
  if (result)
  {
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

void *boringssl_memory_copy_array(const void *a1, size_t size)
{
  if (!a1)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_memory_copy_array_cold_3();
    }

    return 0;
  }

  if (!size)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_memory_copy_array_cold_2();
    }

    return 0;
  }

  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v4)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_memory_copy_array_cold_1();
    }

    return 0;
  }

  return memcpy(v4, a1, size);
}

uint64_t aead_chacha20_poly1305_init(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v4 = 16;
  if (a4)
  {
    v4 = a4;
  }

  if (v4 < 0x11)
  {
    if (a3 == 32)
    {
      v6 = *a2;
      *(a1 + 24) = a2[1];
      *(a1 + 8) = v6;
      *(a1 + 40) = v4;
      *(a1 + 576) = v4;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    ERR_put_error(30, 0, 117, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", 30);
    return 0;
  }
}

BOOL aead_chacha20_poly1305_open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a6 != 12)
  {
    v13 = 121;
    v14 = 214;
    goto LABEL_5;
  }

  v11 = *(a1 + 40);
  v12 = a8 - v11;
  if (a8 < v11)
  {
    v13 = 101;
    v14 = 219;
LABEL_5:
    ERR_put_error(30, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", v14);
    return 0;
  }

  if (a8 >= 0x3FFFFFFFC0)
  {
    v13 = 117;
    v14 = 230;
    goto LABEL_5;
  }

  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = v18;
  v19[2] = v18;
  v19[0] = v18;
  if (calc_tag(v19, a1 + 8, a5, a9, a10, a7, v12, 0, 0))
  {
    if (!g_boringssl_log)
    {
      return 0;
    }

    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      aead_chacha20_poly1305_open_cold_1();
      return 0;
    }
  }

  else
  {
    if (!ccchacha20())
    {
      if (!CRYPTO_memcmp(v19, (a7 + v12), *(a1 + 40)))
      {
        *a3 = v12;
        return 1;
      }

      v13 = 101;
      v14 = 250;
      goto LABEL_5;
    }

    if (!g_boringssl_log)
    {
      return 0;
    }

    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      aead_chacha20_poly1305_open_cold_2();
      return 0;
    }
  }

  return result;
}

BOOL aead_chacha20_poly1305_seal_scatter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a7 != 12)
  {
    v13 = 121;
    v14 = 133;
    goto LABEL_5;
  }

  if (a9 >= 0x3FFFFFFFC0)
  {
    v13 = 117;
    v14 = 145;
LABEL_5:
    ERR_put_error(30, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", v14);
    return 0;
  }

  v17 = a4;
  v19 = a2;
  memset(__src, 0, sizeof(__src));
  if (a11)
  {
    v21 = 0;
    v22 = a9 >> 6;
    v23 = a9 & 0x3F;
    while (1)
    {
      LODWORD(v22) = v22 + 1;
      memset(v28, 0, sizeof(v28));
      if (ccchacha20())
      {
        break;
      }

      while (v21 < a11)
      {
        *(a3 + v21) = *(v28 + v23) ^ *(a10 + v21);
        ++v21;
        if (v23 > 0x3E)
        {
          break;
        }

        ++v23;
      }

      v23 = 0;
      if (v21 >= a11)
      {
        v19 = a2;
        v17 = a4;
        goto LABEL_16;
      }
    }

    v24 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      aead_chacha20_poly1305_seal_scatter_cold_1(v24);
    }

    return 0;
  }

LABEL_16:
  if (ccchacha20())
  {
    if (!g_boringssl_log)
    {
      return 0;
    }

    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      aead_chacha20_poly1305_seal_scatter_cold_2();
      return 0;
    }
  }

  else
  {
    if (!calc_tag(__src, a1 + 8, a6, a12, a13, v19, a9, a3, a11))
    {
      v25 = *(a1 + 40);
      *v17 = v25 + a11;
      memcpy((a3 + a11), __src, v25);
      return 1;
    }

    if (!g_boringssl_log)
    {
      return 0;
    }

    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      aead_chacha20_poly1305_seal_scatter_cold_3();
      return 0;
    }
  }

  return result;
}

BOOL aead_chacha20_poly1305_open_gather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (a4 != 12)
  {
    v11 = 121;
    v12 = 274;
    goto LABEL_7;
  }

  if (*(a1 + 576) != a8)
  {
    v11 = 101;
    v12 = 279;
    goto LABEL_7;
  }

  if (a6 >= 0x3FFFFFFFC0)
  {
    v11 = 117;
    v12 = 291;
LABEL_7:
    ERR_put_error(30, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_chacha20poly1305.m", v12);
    return 0;
  }

  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0xAAAAAAAAAAAAAAAALL;
  if (calc_tag(v15, a1 + 8, a3, a9, a10, a5, a6, 0, 0))
  {
    if (!g_boringssl_log)
    {
      return 0;
    }

    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      aead_chacha20_poly1305_open_cold_1();
      return 0;
    }
  }

  else
  {
    if (!ccchacha20())
    {
      if (!CRYPTO_memcmp(v15, a7, *(a1 + 40)))
      {
        return 1;
      }

      v11 = 101;
      v12 = 310;
      goto LABEL_7;
    }

    if (!g_boringssl_log)
    {
      return 0;
    }

    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      aead_chacha20_poly1305_open_cold_2();
      return 0;
    }
  }

  return result;
}

uint64_t calc_tag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = ccchacha20();
  if (v11)
  {
    v12 = v11;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      aead_chacha20_poly1305_open_cold_2();
    }
  }

  else
  {
    v13 = ccpoly1305_init();
    if (v13)
    {
      v12 = v13;
      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        calc_tag_cold_2();
      }
    }

    else
    {
      v14 = ccpoly1305_update();
      v15 = v14;
      if ((a5 & 0xF) != 0 && !v14)
      {
        v15 = ccpoly1305_update();
      }

      v16 = ccpoly1305_update() | v15;
      v17 = v16 | ccpoly1305_update();
      v18 = a9 + a7;
      if ((v18 & 0xF) != 0 && !v17)
      {
        v17 = ccpoly1305_update();
      }

      v19 = 0;
      v24[0] = 0xAAAAAAAAAAAAAAAALL;
      do
      {
        *(v24 + v19) = a5;
        a5 >>= 8;
        ++v19;
      }

      while (v19 != 8);
      v20 = ccpoly1305_update();
      v21 = 0;
      v24[0] = 0xAAAAAAAAAAAAAAAALL;
      do
      {
        *(v24 + v21) = v18;
        v18 >>= 8;
        ++v21;
      }

      while (v21 != 8);
      v22 = v20 | v17 | ccpoly1305_update();
      v12 = v22 | ccpoly1305_final();
      if (v12 && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        calc_tag_cold_3();
      }
    }
  }

  return v12;
}

uint64_t bssl::SSLAEADContext::GenerateRecordNumberMask(uint64_t a1)
{
  result = *(a1 + 608);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t bssl::AESRecordNumberEncrypter::GenerateMask(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *in, unint64_t a5)
{
  v5 = a5 > 0xF && a3 == 16;
  v6 = v5;
  if (v5)
  {
    AES_encrypt(in, a2, (a1 + 8));
  }

  return v6;
}

BOOL bssl::ChaChaRecordNumberEncrypter::SetKey(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    v3 = *a2;
    *(a1 + 24) = a2[1];
    *(a1 + 8) = v3;
  }

  return a3 == 32;
}

BOOL bssl::ChaChaRecordNumberEncrypter::GenerateMask(uint64_t a1, void *a2, size_t a3, int *a4, unint64_t a5)
{
  if (a5 >= 0x10)
  {
    v9 = a4 + 1;
    v10 = *a4;
    if (a3)
    {
      bzero(a2, a3);
    }

    CRYPTO_chacha_20(a2, a2, a3, (a1 + 8), v9, v10);
  }

  return a5 > 0xF;
}

void std::unique_ptr<bssl::ChaChaRecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

uint64_t METHOD_unref(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (!*(result + 4))
    {
      METHOD_unref_cold_1();
    }
  }

  return result;
}

int BN_GENCB_call(BN_GENCB *cb, int a, int b)
{
  if (cb)
  {
    return (cb->arg)(*&a, *&b, cb);
  }

  else
  {
    return 1;
  }
}

int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe, const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb)
{
  if (bits > 3746)
  {
    v11 = 3;
LABEL_13:
    v12 = safe != 0;
    goto LABEL_14;
  }

  if (bits > 1344)
  {
    v11 = 4;
    goto LABEL_13;
  }

  if (bits > 475)
  {
    v11 = 5;
    goto LABEL_13;
  }

  if (bits > 399)
  {
    v11 = 6;
    goto LABEL_13;
  }

  if (bits > 346)
  {
    v11 = 7;
    goto LABEL_13;
  }

  if (bits >= 308)
  {
    v11 = 8;
    goto LABEL_13;
  }

  if (bits <= 1)
  {
    v35 = 393;
LABEL_95:
    ERR_put_error(3, 0, 103, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/prime.c.inc", v35);
    return 0;
  }

  if (bits <= 0x36)
  {
    v11 = 34;
  }

  else
  {
    v11 = 27;
  }

  v12 = safe != 0;
  if (bits == 2 && safe)
  {
    v35 = 397;
    goto LABEL_95;
  }

LABEL_14:
  v13 = BN_CTX_new();
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  BN_CTX_start(v13);
  r = BN_CTX_get(v14);
  if (r)
  {
    v15 = 0;
    v39 = v12;
    while (1)
    {
LABEL_17:
      v41 = v15;
      if (!add)
      {
        while (BN_rand(ret, bits, 1, 1))
        {
          if (!bn_odd_number_is_obviously_composite(ret))
          {
            goto LABEL_48;
          }
        }

        goto LABEL_85;
      }

      v37 = v11;
      a = rem;
      v38 = cb;
      BN_CTX_start(v14);
      v16 = BN_CTX_get(v14);
      v17 = v12;
      v18 = v16;
      if (v17)
      {
        break;
      }

      if (!v16 || !BN_rand(ret, bits, 0, 1) || !BN_div(0, v18, ret, add, v14) || !BN_sub(ret, ret, v18))
      {
        goto LABEL_84;
      }

      if (rem)
      {
        if (!BN_add(ret, ret, rem))
        {
          goto LABEL_84;
        }
      }

      else if (!BN_add_word(ret, 1uLL))
      {
        goto LABEL_84;
      }

      if (ret->top <= 16)
      {
        v22 = 512;
      }

      else
      {
        v22 = 1024;
      }

      for (i = 1; i != v22; ++i)
      {
        while (bn_mod_u16_consttime(ret, kPrimes[i]) <= 1)
        {
          i = 1;
          if (!BN_add(ret, ret, add))
          {
            goto LABEL_84;
          }
        }
      }

LABEL_47:
      BN_CTX_end(v14);
      cb = v38;
      rem = a;
      v11 = v37;
      v12 = v39;
LABEL_48:
      if (cb && !(cb->arg)(0, v41, cb))
      {
        goto LABEL_85;
      }

      v42 = v41 + 1;
      if (v12)
      {
        if (BN_rshift1(r, ret))
        {
          v24 = 0;
          while (1)
          {
            v45 = -1431655766;
            v25 = BN_primality_test(&v45, ret, 1, v14, 0, 0);
            v26 = v45;
            if (!v25)
            {
              v26 = -1;
            }

            if (v26 == -1)
            {
              break;
            }

            if (!v26)
            {
              goto LABEL_83;
            }

            v46 = -1431655766;
            v27 = BN_primality_test(&v46, r, 1, v14, 0, 0);
            v28 = v46;
            if (!v27)
            {
              v28 = -1;
            }

            if (v28 == -1)
            {
              goto LABEL_85;
            }

            if (!v28)
            {
LABEL_83:
              v12 = v39;
              v15 = v42;
              goto LABEL_17;
            }

            if (cb && !(cb->arg)(1, v24, cb))
            {
              goto LABEL_85;
            }

            v24 = (v24 + 1);
            v29 = 1;
            if (v11 == v24)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

      v44 = -1431655766;
      v30 = BN_primality_test(&v44, ret, v11, v14, 0, cb);
      v31 = v44;
      if (!v30)
      {
        v31 = -1;
      }

      v15 = v42;
      if (v31)
      {
        v29 = v31 != -1;
        goto LABEL_86;
      }
    }

    v19 = BN_CTX_get(v14);
    v20 = BN_CTX_get(v14);
    if (v20)
    {
      v21 = v20;
      if (BN_rshift1(v20, add))
      {
        if (BN_rand(v19, bits - 1, 0, 1) && BN_div(0, v18, v19, v21, v14) && BN_sub(v19, v19, v18))
        {
          if (rem)
          {
            if (!BN_rshift1(v18, rem) || !BN_add(v19, v19, v18))
            {
              goto LABEL_84;
            }

LABEL_70:
            if (BN_lshift1(ret, v19) && BN_add_word(ret, 1uLL))
            {
              if (ret->top <= 16)
              {
                v32 = 512;
              }

              else
              {
                v32 = 1024;
              }

              v33 = 1;
              do
              {
                while (1)
                {
                  v34 = kPrimes[v33];
                  if (!bn_mod_u16_consttime(ret, v34) || !bn_mod_u16_consttime(v19, v34))
                  {
                    break;
                  }

                  if (++v33 == v32)
                  {
                    goto LABEL_47;
                  }
                }

                if (!BN_add(ret, ret, add))
                {
                  break;
                }

                v33 = 1;
              }

              while (BN_add(v19, v19, v21));
            }

            goto LABEL_84;
          }

          if (BN_add_word(v19, 1uLL))
          {
            goto LABEL_70;
          }
        }
      }
    }

LABEL_84:
    BN_CTX_end(v14);
  }

LABEL_85:
  v29 = 0;
LABEL_86:
  BN_CTX_end(v14);
  BN_CTX_free(v14);
  return v29;
}

BOOL bn_odd_number_is_obviously_composite(unsigned int *a1)
{
  v3 = -21846;
  result = bn_trial_division(&v3, a1);
  if (result)
  {
    return !BN_is_word(a1, v3);
  }

  return result;
}

BOOL bn_trial_division(__int16 *a1, uint64_t a2)
{
  if (*(a2 + 8) <= 16)
  {
    v4 = 512;
  }

  else
  {
    v4 = 1024;
  }

  v5 = 3;
  if (bn_mod_u16_consttime(a2, 3))
  {
    v7 = v4 - 2;
    v8 = -1;
    v9 = &word_1A90B8724;
    while (v7)
    {
      v10 = *v9++;
      v5 = v10;
      --v8;
      --v7;
      if (!bn_mod_u16_consttime(a2, v10))
      {
        result = -v8 < v4;
        goto LABEL_10;
      }
    }

    return 0;
  }

  else
  {
    result = 1;
LABEL_10:
    *a1 = v5;
  }

  return result;
}

uint64_t bn_miller_rabin_init(uint64_t a1, BIGNUM *a2, BN_CTX *ctx)
{
  *a1 = BN_CTX_get(ctx);
  *(a1 + 8) = BN_CTX_get(ctx);
  *(a1 + 16) = BN_CTX_get(ctx);
  v6 = BN_CTX_get(ctx);
  *(a1 + 24) = v6;
  v7 = *a1;
  if (!*a1 || !*(a1 + 8))
  {
    return 0;
  }

  v8 = v6;
  result = 0;
  if (*(a1 + 16))
  {
    if (v8)
    {
      v10 = BN_value_one();
      result = bn_usub_consttime(v7, &a2[1], v10);
      if (result)
      {
        v11 = BN_count_low_zero_bits(*a1);
        *(a1 + 36) = v11;
        result = bn_rshift_secret_shift(*(a1 + 8), *a1, v11, ctx);
        if (result)
        {
          *(a1 + 32) = BN_num_bits(a2 + 1);
          result = bn_one_to_montgomery(*(a1 + 16), a2, ctx);
          if (result)
          {
            return bn_usub_consttime(*(a1 + 24), &a2[1], *(a1 + 16)) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bn_miller_rabin_iteration(uint64_t a1, _DWORD *a2, const BIGNUM *a3, uint64_t a4, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v10 = BN_CTX_get(ctx);
  if (v10 && (v11 = v10, BN_mod_exp_mont_consttime(v10, a3, *(a1 + 8), (a4 + 24), ctx, a4)) && BN_to_montgomery(v11, v11, a4, ctx))
  {
    v12 = BN_equal_consttime(v11, *(a1 + 16));
    v13 = -(BN_equal_consttime(v11, *(a1 + 24)) | v12);
    if (*(a1 + 32) >= 2)
    {
      v14 = 1;
      do
      {
        if (v14 == *(a1 + 36))
        {
          v15 = ~v13;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          break;
        }

        if (!BN_mod_mul_montgomery(v11, v11, v11, a4, ctx))
        {
          goto LABEL_14;
        }

        v13 |= -BN_equal_consttime(v11, *(a1 + 24));
        if ((BN_equal_consttime(v11, *(a1 + 16)) & ~v13) != 0)
        {
          break;
        }

        ++v14;
      }

      while (v14 < *(a1 + 32));
    }

    *a2 = v13 & 1;
    v16 = 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  BN_CTX_end(ctx);
  return v16;
}

uint64_t BN_primality_test(_DWORD *a1, BIGNUM *a2, int a3, BN_CTX *a4, int a5, uint64_t a6)
{
  *a1 = 0;
  v12 = BN_value_one();
  if (BN_cmp(a2, v12) < 1)
  {
    return 1;
  }

  if (!BN_is_odd(a2))
  {
    v14 = a2;
    v15 = 2;
LABEL_6:
    *a1 = BN_is_word(v14, v15);
    return 1;
  }

  if (BN_is_word(a2, 3))
  {
    v13 = 1;
    *a1 = 1;
    return v13;
  }

  if (a5)
  {
    LOWORD(v33[0]) = -21846;
    if (bn_trial_division(v33, a2))
    {
      v15 = LOWORD(v33[0]);
      v14 = a2;
      goto LABEL_6;
    }

    if (a6 && !(*(a6 + 8))(1, 0xFFFFFFFFLL, a6))
    {
      return 0;
    }
  }

  if (!a3)
  {
    v17 = BN_num_bits(a2);
    if (v17 <= 3746)
    {
      if (v17 <= 1344)
      {
        if (v17 <= 475)
        {
          if (v17 <= 399)
          {
            if (v17 <= 346)
            {
              if (v17 <= 307)
              {
                if (v17 <= 54)
                {
                  a3 = 34;
                }

                else
                {
                  a3 = 27;
                }
              }

              else
              {
                a3 = 8;
              }
            }

            else
            {
              a3 = 7;
            }
          }

          else
          {
            a3 = 6;
          }
        }

        else
        {
          a3 = 5;
        }
      }

      else
      {
        a3 = 4;
      }
    }

    else
    {
      a3 = 3;
    }
  }

  if (a4)
  {
    v18 = 0;
    goto LABEL_33;
  }

  a4 = BN_CTX_new();
  v18 = a4;
  if (!a4)
  {
    return 0;
  }

LABEL_33:
  BN_CTX_start(a4);
  v19 = BN_CTX_get(a4);
  v20 = BN_MONT_CTX_new_consttime(a2, a4);
  v21 = v20;
  v13 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[0] = v22;
  v33[1] = v22;
  if (v19 && v20)
  {
    if (bn_miller_rabin_init(v33, v20, a4))
    {
      v30 = v18;
      v23 = a3;
      v24 = 0;
      v25 = 1;
      v26 = *&v33[0];
      do
      {
        v32 = -1431655766;
        if (!bn_rand_secret_range(v19, &v32, 2uLL, v26) || (v27 = v32, v31 = 0, !bn_miller_rabin_iteration(v33, &v31, v19, v21, a4)))
        {
LABEL_50:
          v13 = 0;
          goto LABEL_52;
        }

        if (!v31)
        {
          *a1 = 0;
          v13 = 1;
          goto LABEL_52;
        }

        if (a6 && !(*(a6 + 8))(1, v25 - 1, a6))
        {
          goto LABEL_50;
        }

        v24 += v27;
        v29 = v25++ < 0x10;
      }

      while (v29 | ((((v24 - v23) ^ v24 | v24 ^ v23) ^ v24) >> 63));
      if (v24 < v23)
      {
        BN_primality_test_cold_1();
      }

      v13 = 1;
      *a1 = 1;
LABEL_52:
      v18 = v30;
    }

    else
    {
      v13 = 0;
    }
  }

  BN_MONT_CTX_free(v21);
  BN_CTX_end(a4);
  BN_CTX_free(v18);
  return v13;
}

uint64_t EVP_DigestSignUpdate(uint64_t a1, const void *a2, size_t a3)
{
  if (*(**(a1 + 16) + 40))
  {

    return EVP_DigestUpdate(a1, a2, a3);
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 135);
    return 0;
  }
}

uint64_t EVP_DigestSignFinal(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*(**(a1 + 16) + 40))
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 154);
    return 0;
  }

  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.digest = v3;
    *&ctx.flags = v3;
    v11 = v3;
    v12 = v3;
    *md = v3;
    v10 = v3;
    s = -1431655766;
    EVP_MD_CTX_init(&ctx);
    v4 = EVP_MD_CTX_copy_ex(&ctx, a1) && EVP_DigestFinal_ex(&ctx, md, &s) && EVP_PKEY_sign(*(a1 + 16)) != 0;
    EVP_MD_CTX_cleanup(&ctx);
    return v4;
  }

  EVP_MD_size(*a1);
  v6 = *(a1 + 16);

  return EVP_PKEY_sign(v6);
}

uint64_t EVP_DigestSign(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v7 = *(a1 + 16);
  if (*(*v7 + 40))
  {
    if (!a2 || EVP_DigestSignUpdate(a1, a4, a5))
    {

      return EVP_DigestSignFinal(a1, a2);
    }

    return 0;
  }

  v9 = *(*v7 + 48);
  if (!v9)
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 228);
    return 0;
  }

  return v9();
}

uint64_t CRYPTO_get_ex_new_index_ex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OPENSSL_malloc(0x20uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = 0;
  CRYPTO_MUTEX_lock_write(a1);
  v10 = atomic_load((a1 + 216));
  if ((*(a1 + 220) ^ 0x7FFFFFFFuLL) < v10)
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ex_data.c", 155);
    CRYPTO_MUTEX_unlock_read(a1);
    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 208);
  if (v12)
  {
    v13 = (v12 + 24);
  }

  else
  {
    if (v10)
    {
      CRYPTO_get_ex_new_index_ex_cold_1();
    }

    v13 = (a1 + 200);
  }

  *v13 = v9;
  *(a1 + 208) = v9;
  atomic_store(v10 + 1, (a1 + 216));
  CRYPTO_MUTEX_unlock_read(a1);
  return v10 + *(a1 + 220);
}

uint64_t OPENSSL_strnlen(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  while (*(a1 + result))
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

uint64_t OPENSSL_vasprintf_internal(char **a1, const char *a2, va_list a3, int a4)
{
  if (a4)
  {
    v6 = MEMORY[0x1E69E9B40];
  }

  else
  {
    v6 = OPENSSL_malloc;
  }

  if (a4)
  {
    v7 = MEMORY[0x1E69E9B38];
  }

  else
  {
    v7 = OPENSSL_free;
  }

  if (a4)
  {
    v8 = MEMORY[0x1E69E9B70];
  }

  else
  {
    v8 = OPENSSL_realloc;
  }

  v9 = v6(64uLL);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_19;
  }

  result = vsnprintf(v9, 0x40uLL, a2, a3);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (result < 0x40)
  {
    v12 = 64;
  }

  else
  {
    v12 = (result + 1);
    v13 = v8(v10, v12);
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    result = vsnprintf(v13, v12, a2, a3);
    v10 = v14;
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_19;
    }
  }

  if (v12 > result)
  {
    *a1 = v10;
    return result;
  }

LABEL_19:
  v7(v10);
  *a1 = 0;
  *__error() = 12;
  return 0xFFFFFFFFLL;
}

void *OPENSSL_strndup(_BYTE *a1, size_t a2)
{
  v3 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

  while (a1[v3])
  {
    if (a2 == ++v3)
    {
      v3 = a2;
      break;
    }
  }

  if (v3 == -1)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/mem.c", 596);
    return 0;
  }

  else
  {
LABEL_6:
    v4 = OPENSSL_malloc(v3 + 1);
    v5 = v4;
    if (v4)
    {
      if (v3)
      {
        memcpy(v4, a1, v3);
      }

      *(v5 + v3) = 0;
    }
  }

  return v5;
}

size_t OPENSSL_strlcpy(_BYTE *a1, char *__s, unint64_t a3)
{
  if (a3 < 2)
  {
    v4 = 0;
    if (!a3)
    {
      return strlen(__s) + v4;
    }
  }

  else
  {
    v3 = 0;
    v4 = a3 - 1;
    while (__s[v3])
    {
      a1[v3] = __s[v3];
      if (v4 == ++v3)
      {
        __s += v3;
        a1 += v3;
        goto LABEL_9;
      }
    }

    __s += v3;
    a1 += v3;
    v4 = v3;
  }

LABEL_9:
  *a1 = 0;
  return strlen(__s) + v4;
}

size_t OPENSSL_strlcat(_BYTE *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    for (i = 0; a1[i]; ++i)
    {
      if (!--a3)
      {
        a1 += v3;
        return OPENSSL_strlcpy(a1, a2, a3) + v3;
      }
    }

    a1 += i;
    v3 = i;
  }

  return OPENSSL_strlcpy(a1, a2, a3) + v3;
}

void nw_protocol_boringssl_prepend_frame_array(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3010000000;
  v4[4] = 0;
  v4[5] = 0;
  v4[3] = &unk_1A90C3C6B;
  nw_frame_array_init();
  nw_frame_array_foreach();
  nw_frame_array_prepend_array();
  _Block_object_dispose(v4, 8);
}

void sub_1A9085E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_boringssl_prepend_frame_array_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_array_append();

  return 1;
}

uint64_t CRYPTO_MUTEX_lock_read(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_rdlock(a1);
  if (result)
  {
    abort();
  }

  return result;
}

void BN_init(BIGNUM *a1)
{
  a1->d = 0;
  *&a1->top = 0;
  *&a1->neg = 0;
}

BIGNUM *__cdecl BN_dup(const BIGNUM *a)
{
  if (!a)
  {
    return 0;
  }

  v2 = OPENSSL_malloc(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *&v2->top = 0;
    *&v2->neg = 0;
    v2->d = 0;
    v2->flags = 1;
    if (!BN_copy(v2, a))
    {
      BN_free(v3);
      return 0;
    }
  }

  return v3;
}

BIGNUM *__cdecl BN_copy(BIGNUM *a, const BIGNUM *b)
{
  v2 = a;
  if (b != a)
  {
    if (bn_wexpand(&a->d, b->top))
    {
      top = b->top;
      if (top)
      {
        memcpy(v2->d, b->d, 8 * top);
        LODWORD(top) = b->top;
      }

      v2->top = top;
      v2->neg = b->neg;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

double BN_value_one_init()
{
  BN_value_one_storage = &BN_value_one_do_init_kOneLimbs;
  *&result = 0x100000001;
  unk_1ED4C02B8 = xmmword_1A90B8F30;
  return result;
}

uint64_t bn_minimal_width(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 1)
  {
    v3 = *a1 - 8;
    while (!*(v3 + 8 * result))
    {
      v4 = __OFSUB__(result, 1);
      result = (result - 1);
      if ((result < 0) ^ v4 | (result == 0))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t BN_zero(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t BN_one(uint64_t a1)
{
  v2 = 1;
  if (!bn_wexpand(a1, 1uLL))
  {
    return 0;
  }

  *(a1 + 16) = 0;
  **a1 = 1;
  *(a1 + 8) = 1;
  return v2;
}

int BN_set_word(BIGNUM *a, unint64_t w)
{
  if (w)
  {
    result = bn_wexpand(&a->d, 1uLL);
    if (!result)
    {
      return result;
    }

    a->neg = 0;
    *a->d = w;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    a->neg = 0;
  }

  a->top = v5;
  return 1;
}

BOOL bn_fits_in_words(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 > a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = (*a1 + 8 * a2);
  do
  {
    v7 = *v6++;
    v5 |= v7;
    --v4;
  }

  while (v4);
  return v5 == 0;
}

uint64_t bn_copy_words(void *__dst, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = 109;
    v4 = 317;
LABEL_3:
    ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/bn.c.inc", v4);
    return 0;
  }

  v8 = *(a3 + 8);
  v9 = v8 - a2;
  if (v8 > a2)
  {
    v10 = 0;
    v11 = (*a3 + 8 * a2);
    do
    {
      v12 = *v11++;
      v10 |= v12;
      --v9;
    }

    while (v9);
    v8 = a2;
    if (v10)
    {
      v3 = 102;
      v4 = 324;
      goto LABEL_3;
    }
  }

  v13 = 8 * a2;
  if (v13)
  {
    bzero(__dst, v13);
  }

  if (8 * v8)
  {
    memcpy(__dst, *a3, 8 * v8);
  }

  return 1;
}

uint64_t bn_resize_words(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (v5)
  {
    v7 = 0;
    v8 = (*a1 + 8 * a2);
    do
    {
      v9 = *v8++;
      v7 |= v9;
      --v6;
    }

    while (v6);
    if (v7)
    {
      ERR_put_error(3, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/bn.c.inc", 399);
      return 0;
    }

    goto LABEL_10;
  }

  result = bn_wexpand(a1, a2);
  if (result)
  {
    v11 = *(a1 + 8);
    v12 = 8 * (a2 - v11);
    if (v12)
    {
      bzero((*a1 + 8 * v11), v12);
    }

LABEL_10:
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

uint64_t bn_set_minimal_width(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    if (!v1)
    {
LABEL_7:
      *(result + 16) = 0;
    }
  }

  else
  {
    while (!*(*result - 8 + 8 * v1))
    {
      v2 = __OFSUB__(v1--, 1);
      if ((v1 < 0) ^ v2 | (v1 == 0))
      {
        *(result + 8) = 0;
        goto LABEL_7;
      }
    }

    *(result + 8) = v1;
  }

  return result;
}

uint64_t bssl::SSL_HANDSHAKE::GetClientHello(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[78];
  if (v6)
  {
    *a2 = 256;
    v7 = a1[77];
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    v8 = a1[78];
    if (v8 <= 3)
    {
      abort();
    }

    v9 = v7 + 4;
    v10 = v8 - 4;
    *(a2 + 8) = v7 + 4;
    *(a2 + 16) = v8 - 4;
  }

  else
  {
    if (!(*(**a1 + 24))())
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 187);
      return 0;
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
  }

  if (bssl::ssl_client_hello_init(*a1, a3, v9, v10))
  {
    return 1;
  }

  ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 192);
  bssl::ssl_send_alert(*a1, 2, 50);
  return 0;
}

uint64_t bssl::ssl_reverify_peer_cert(bssl **this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *this;
  if (*(*(*this + 6) + 472))
  {
    bssl::ssl_reverify_peer_cert();
  }

  v3 = this[1];
  if (!*(v3 + 308))
  {
    bssl::ssl_reverify_peer_cert();
  }

  v4 = a2;
  LOBYTE(v7) = 46;
  v5 = *(v3 + 6);
  if (!v5 || (result = v5(v2, &v7), result == 1))
  {
    ERR_put_error(16, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 444);
    if (v4)
    {
      bssl::ssl_send_alert(v2, 2, v7);
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ssl_send_tls12_certificate(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = v3;
  v17[2] = v3;
  v17[0] = v3;
  CBB_zero(v17);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = v4;
  v16[2] = v4;
  v15[2] = v4;
  v16[0] = v4;
  v15[0] = v4;
  v15[1] = v4;
  v14[1] = v4;
  v14[2] = v4;
  v14[0] = v4;
  if ((*(**this + 88))(*this, v17, v16, 11) && CBB_add_u24_length_prefixed(v16, v15))
  {
    v6 = *(this + 190);
    if (v6)
    {
      if (*(v6 + 4))
      {
        __assert_rtn("ssl_send_tls12_certificate", "handshake.cc", 579, "hs->credential->type == SSLCredentialType::kX509");
      }

      v7 = 0;
      v8 = *(v6 + 48);
      while (v7 < EVP_MD_CTX_md(v8))
      {
        v9 = OPENSSL_sk_value(v8, v7);
        if (CBB_add_u24_length_prefixed(v15, v14))
        {
          v10 = CRYPTO_BUFFER_data(v9);
          v11 = CRYPTO_BUFFER_len(v9);
          ++v7;
          if (CBB_add_bytes(v14, v10, v11))
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    v12 = bssl::ssl_add_message_cbb(*this, v17);
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  CBB_cleanup(v17, v5);
  return v12;
}

RSA *pkey_rsa_keygen(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 8) || (result = BN_new(), (*(v3 + 8) = result) != 0) && (result = BN_set_word(result, 0x10001uLL), result))
  {
    result = RSA_new();
    if (result)
    {
      v5 = result;
      if (RSA_generate_key_ex(result, *v3, *(v3 + 8), 0))
      {
        EVP_PKEY_assign_RSA(a2, v5);
        return 1;
      }

      else
      {
        RSA_free(v5);
        return 0;
      }
    }
  }

  return result;
}

uint64_t pkey_rsa_sign(uint64_t a1, unsigned __int8 *a2, void *a3, const unsigned __int8 *a4, unsigned int a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 16);
  v11 = *(v10 + 8);
  v12 = EVP_PKEY_size(v10);
  v13 = v12;
  if (!a2)
  {
    goto LABEL_10;
  }

  if (*a3 < v12)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 181);
    return 0;
  }

  v15 = *(v9 + 24);
  if (v15)
  {
    siglen = -1431655766;
    v16 = *(v9 + 16);
    if (v16 == 6)
    {
      return RSA_sign_pss_mgf1();
    }

    if (v16 != 1)
    {
      return 0;
    }

    v17 = EVP_MD_type(v15);
    result = RSA_sign(v17, a4, a5, a2, &siglen, v11);
    if (result)
    {
      v13 = siglen;
LABEL_10:
      *a3 = v13;
      return 1;
    }
  }

  else
  {

    return RSA_sign_raw();
  }

  return result;
}

uint64_t pkey_rsa_verify_recover(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = EVP_PKEY_size(v11);
  v14 = v13;
  if (!a2)
  {
    *a3 = v13;
    return 1;
  }

  v15 = *a3;
  if (*a3 < v13)
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 253);
    return 0;
  }

  v17 = *(v10 + 24);
  v18 = *(v10 + 16);
  if (v17)
  {
    if (v18 != 1)
    {
      return 0;
    }

    v19 = EVP_MD_size(v17);
    memset(v23, 170, sizeof(v23));
    result = setup_tbuf(v10, a1);
    if (result)
    {
      v20 = EVP_MD_type(*(v10 + 24));
      result = RSA_add_pkcs1_prefix(&v23[3], &v23[1], v23, v20, &pkey_rsa_verify_recover_kDummyHash, v19);
      if (result)
      {
        v22 = 0xAAAAAAAAAAAAAAAALL;
        v21 = !RSA_verify_raw(v12, &v22, *(v10 + 48), v14, a4, a5, 1) || v22 != *&v23[1] || CRYPTO_memcmp(*(v10 + 48), *&v23[3], v22 - v19);
        if (v23[0])
        {
          OPENSSL_free(*&v23[3]);
        }

        if (v21)
        {
          return 0;
        }

        if (v19)
        {
          memcpy(a2, (*(v10 + 48) + v22 - v19), v19);
        }

        *a3 = v19;
        return 1;
      }
    }
  }

  else
  {

    return RSA_verify_raw(v12, a3, a2, v15, a4, a5, v18);
  }

  return result;
}

uint64_t pkey_rsa_encrypt(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 40);
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  v13 = EVP_PKEY_size(v11);
  v14 = v13;
  if (a2)
  {
    v15 = *a3;
    if (*a3 >= v13)
    {
      v17 = *(v10 + 16);
      if (v17 == 4)
      {
        result = setup_tbuf(v10, a1);
        if (result)
        {
          result = RSA_padding_add_PKCS1_OAEP_mgf1();
          if (result)
          {
            return RSA_encrypt(v12, a3, a2, *a3, *(v10 + 48), v14, 3);
          }
        }
      }

      else
      {

        return RSA_encrypt(v12, a3, a2, v15, a4, a5, v17);
      }
    }

    else
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 317);
      return 0;
    }
  }

  else
  {
    *a3 = v13;
    return 1;
  }

  return result;
}

uint64_t pkey_rsa_decrypt(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = EVP_PKEY_size(*(a1 + 16));
  if (a2)
  {
    if (*a3 >= v7)
    {
      if (*(v6 + 16) == 4)
      {
        result = setup_tbuf(v6, a1);
        if (result)
        {
          result = RSA_decrypt();
          if (result)
          {
            return RSA_padding_check_PKCS1_OAEP_mgf1() != 0;
          }
        }
      }

      else
      {

        return RSA_decrypt();
      }
    }

    else
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa.c", 349);
      return 0;
    }
  }

  else
  {
    *a3 = v7;
    return 1;
  }

  return result;
}

BOOL setup_tbuf(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    return 1;
  }

  v4 = EVP_PKEY_size(*(a2 + 16));
  v5 = OPENSSL_malloc(v4);
  *(a1 + 48) = v5;
  return v5 != 0;
}

void boringssl_bio_create_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v2 = 82;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to allocate a boringssl_bio_state structure", v1, 0x12u);
}

void boringssl_bio_create_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v2 = 185;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) BIO_new(BIO_nw_protocol()) failed", v1, 0x12u);
}

void boringssl_bio_destroy_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v2 = 196;
  _os_log_debug_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_DEBUG, "%{public}s(%d) ", v1, 0x12u);
}

void boringssl_ciphers_fillout_configuration_string_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void boringssl_ciphers_create_configuration_string_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void boringssl_ciphers_create_configuration_string_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void boringssl_ciphers_create_configuration_string_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void boringssl_ciphers_copy_supported_list_for_groups_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void boringssl_ciphers_copy_supported_list_for_groups_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void boringssl_session_set_peer_verification_state_from_session_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_verification_state_from_session_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_verification_state_from_session_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_verification_state_from_session_cold_4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_state_cold_1(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained((a1 + 16));
  }

  v6 = objc_loadWeakRetained((a1 + 16));
  boringssl_helper_get_session_state_description(*(a1 + 292));
  boringssl_helper_get_session_state_description(a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x3Au);

  if (WeakRetained)
  {
  }
}

void boringssl_session_handshake_incomplete_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_session_handshake_negotiate_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_context_start_handshake_timer_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_write_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, __int128 a11, int a12, __int16 a13, __int16 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_11();
  a26 = v28;
  a27 = v30;
  a17 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v31 = v29;
    v32 = g_boringssl_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = OUTLINED_FUNCTION_16();
      if (v33)
      {
        v27 = OUTLINED_FUNCTION_16();
        v34 = v27 + 351;
      }

      else
      {
        v34 = &unk_1A9098A9F;
      }

      v35 = OUTLINED_FUNCTION_16();
      boringssl_helper_get_ssl_error_code_description(v31);
      a9 = 136447234;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3();
      *(&a11 + 4) = v34;
      WORD6(a11) = 2048;
      *(&a11 + 14) = v35;
      a14 = v36;
      a15 = v37;
      _os_log_debug_impl(&dword_1A8FF5000, v32, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] incomplete write: %{public}s", &a9, 0x30u);

      if (v33)
      {
      }
    }
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_session_handshake_error_print_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_session_read_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_read_cold_2()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v5 = v4;
  if (g_boringssl_log)
  {
    v6 = v1;
    v7 = g_boringssl_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (WeakRetained)
      {
        v0 = objc_loadWeakRetained((v6 + 16));
      }

      v9 = objc_loadWeakRetained((v6 + 16));
      boringssl_helper_get_ssl_error_code_description(2u);
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_17(&dword_1A8FF5000, v10, v11, "%{public}s(%d) %{public}s[%p] %{public}s", v12, v13, v14, v15);

      if (WeakRetained)
      {
      }
    }
  }

  *v3 = v5;
  OUTLINED_FUNCTION_10();
}

void boringssl_session_read_cold_3(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  if (g_boringssl_log)
  {
    v9 = g_boringssl_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      if (WeakRetained)
      {
        v4 = objc_loadWeakRetained((a1 + 16));
      }

      v11 = objc_loadWeakRetained((a1 + 16));
      boringssl_helper_get_ssl_error_code_description(a2);
      v18 = 136447234;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_17(&dword_1A8FF5000, v12, v13, "%{public}s(%d) %{public}s[%p] %{public}s", v14, v15, v16, v17, v18);

      if (WeakRetained)
      {
      }
    }
  }

  *a4 = a3;
}

void boringssl_session_disconnect_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_disconnect_cold_2()
{
  OUTLINED_FUNCTION_11();
  WeakRetained = objc_loadWeakRetained((v1 + 16));
  if (WeakRetained)
  {
    v0 = OUTLINED_FUNCTION_16();
  }

  v3 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x30u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_session_copy_authenticator_trust_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_copy_authenticator_trust_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_hostname_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_peer_hostname_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_ech_config_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_session_state_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_session_state_cold_2()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_18(v3);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 16));
  }

  v6 = objc_loadWeakRetained((v4 + 16));
  v7 = SSL_SESSION_get0_cipher(v2);
  SSL_CIPHER_get_name(v7);
  v8 = SSL_SESSION_get0_cipher(v2);
  SSL_CIPHER_get_id(v8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x36u);

  if (v5)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_session_set_session_state_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_session_state_cold_4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_set_association_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v2 = 2093;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Clearning PSK data", v1, 0x12u);
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_19_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v2 = 2099;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Clearning PSK identity", v1, 0x12u);
}

void boringssl_session_server_psk_callback_handler_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_server_psk_callback_handler_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_server_psk_callback_handler_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_client_psk_callback_handler_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_client_psk_callback_handler_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_session_client_psk_callback_handler_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void nw_protocol_boringssl_write_bytes_cold_2()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log)
  {
    v1 = OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

void nw_protocol_boringssl_allocate_batching_frame_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = g_boringssl_log;
  if (g_boringssl_log && OUTLINED_FUNCTION_36())
  {
    v5 = v4;
    OUTLINED_FUNCTION_34();
    nw_protocol_get_name();
    v12 = 136447234;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_37(&dword_1A8FF5000, v6, v7, "%{public}s(%d) %{public}s[%p] nw_protocol_get_output_frames(%s) is not valid", v8, v9, v10, v11, v12);
  }

  *a3 = 0;
}

void nw_protocol_boringssl_allocate_batching_frame_cold_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  OUTLINED_FUNCTION_22();
  if (v4 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Cu);
  }

  *a3 = 1;
}

void nw_protocol_boringssl_allocate_batching_frame_cold_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);
  }

  *a3 = 1;
}

void nw_protocol_boringssl_allocate_batching_frame_cold_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  OUTLINED_FUNCTION_22();
  if (v4 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x32u);
  }

  *a3 = 0;
}

void nw_protocol_boringssl_allocate_batching_frame_cold_5(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0x32u);
  }

  *a3 = 0;
}

void nw_protocol_boringssl_allocate_batching_frame_cold_6()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] no output handler available", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_flush_batching_frame_cold_1()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_flush_batching_frame_cold_2()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_30())
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x30u);
  }
}

void nw_protocol_boringssl_flush_batching_frame_cold_3()
{
  if (g_boringssl_log)
  {
    if (OUTLINED_FUNCTION_30())
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void nw_protocol_boringssl_flush_batching_frame_cold_4()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_read_frames_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = g_boringssl_log;
  if (g_boringssl_log && OUTLINED_FUNCTION_36())
  {
    v5 = v4;
    OUTLINED_FUNCTION_34();
    nw_protocol_get_name();
    v12 = 136447234;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_37(&dword_1A8FF5000, v6, v7, "%{public}s(%d) %{public}s[%p] nw_protocol_get_input_frames(%s) is not valid", v8, v9, v10, v11, v12);
  }

  *a3 = 0;
}

void nw_protocol_boringssl_handshake_negotiate_cold_3()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_24();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x36u);
    }
  }
}

void nw_protocol_boringssl_handshake_negotiate_cold_4()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }
}

void nw_protocol_boringssl_handshake_negotiate_cold_5()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }
}

void nw_boringssl_read_cold_2()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log)
  {
    v1 = OUTLINED_FUNCTION_33();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

void nw_protocol_boringssl_output_available_cold_4()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

void nw_protocol_boringssl_disconnect_cold_2(void *a1, int a2)
{
  v3 = a1;
  boringssl_helper_get_session_state_description(a2);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void nw_protocol_boringssl_add_input_handler_cold_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = g_boringssl_log;
  if (g_boringssl_log && OUTLINED_FUNCTION_36())
  {
    v5 = v4;
    OUTLINED_FUNCTION_34();
    nw_protocol_get_name();
    v12 = 136447234;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_37(&dword_1A8FF5000, v6, v7, "%{public}s(%d) %{public}s[%p] nw_protocol_supports_external_data(%s) is not valid", v8, v9, v10, v11, v12);
  }

  *a3 = 0;
}

void nw_protocol_boringssl_add_input_handler_cold_3()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] no get_parameters callback", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_add_input_handler_cold_4()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] received add input handler again", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_add_input_handler_cold_5()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] boringssl_bio_create failed", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_add_input_handler_cold_6()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] boringssl_context_create_with_nw_context failed", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_add_input_handler_cold_7()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] no parameters", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_get_output_frames_cold_2()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  }

  OUTLINED_FUNCTION_39();
}

void nw_protocol_boringssl_get_output_frames_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_22();
  if (v4 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Cu);
  }

  *a3 = 0;
}

void nw_protocol_boringssl_get_output_frames_cold_5(uint64_t a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_22();
  if (v5)
  {
    if (g_boringssl_log)
    {
      v6 = OUTLINED_FUNCTION_34();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_28();
        _os_log_debug_impl(v7, v8, v9, v10, v11, 0x2Cu);
      }
    }
  }

  *a3 = a2;
}

void nw_protocol_boringssl_get_output_frames_cold_6()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_frame_create_external failed", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_39();
}

void nw_protocol_boringssl_get_output_frames_cold_7()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] output buffer is NULL", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_39();
}

void nw_protocol_boringssl_get_output_frames_cold_8()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_frame_create failed", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_39();
}

void nw_protocol_boringssl_input_finished_cold_3()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_33();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v1, v2, v3, v4, v5, 0x36u);
    }
  }
}

void nw_protocol_boringssl_input_finished_cold_4()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

void nw_protocol_boringssl_finalize_output_frames_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 136446978;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  v3 = v0;
  _os_log_debug_impl(&dword_1A8FF5000, v1, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] ", v2, 0x26u);
}

void nw_protocol_boringssl_connect_cold_2()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_connect_cold_3()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_connect_cold_4()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] no parameters", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_connected_cold_2()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_connected_cold_3()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }
}

void nw_protocol_boringssl_connected_cold_5()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_disconnected_cold_1()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

void nw_protocol_boringssl_disconnected_cold_2()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }
}

void nw_protocol_boringssl_reset_cold_1()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

void nw_protocol_boringssl_reset_cold_2()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] boringssl_bio_create failed", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_reset_cold_3()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] boringssl_context_create_with_nw_context failed", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_reset_cold_4()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] nw_parameters_copy_context failed", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_error_cold_2()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_42(v1, v2, v3, v4, v5);
    }
  }
}

void nw_protocol_boringssl_error_cold_3()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_24();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x36u);
    }
  }
}

void nw_protocol_boringssl_error_cold_5()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_24();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x36u);
    }
  }
}

void nw_protocol_boringssl_error_cold_7()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x26u);
    }
  }
}

void nw_protocol_error_print_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  *v3 = 136446978;
  OUTLINED_FUNCTION_0();
  *&v3[7] = 63;
  v3[9] = 2048;
  v4 = v0;
  v5 = 2082;
  v6 = v1;
  _os_log_error_impl(&dword_1A8FF5000, v2, OS_LOG_TYPE_ERROR, "%{public}s(%d) BoringSSL %p: %{public}s", v3, 0x26u);
}

void nw_protocol_boringssl_write_frames_cold_2()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

void nw_protocol_boringssl_write_frames_cold_3()
{
  if (g_boringssl_log)
  {
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x32u);
    }
  }
}

void nw_protocol_boringssl_write_frames_cold_4()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_17_0();
      _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x26u);
    }
  }
}

uint64_t __nw_protocol_boringssl_write_frames_block_invoke_138_cold_1(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!g_boringssl_log)
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_34();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_46(&dword_1A8FF5000, v7, v8, "%{public}s(%d) %{public}s[%p] External data buffer length is too large. Partial writes are unsupported.", v9, v10, v11, v12);
  }

  result = 0;
  *a3 = *a2;
  return result;
}

void __nw_protocol_boringssl_input_available_block_invoke_cold_1(uint64_t *a1, uint64_t a2, void *a3)
{
  if (g_boringssl_log)
  {
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_46(&dword_1A8FF5000, v5, v6, "%{public}s(%d) %{public}s[%p] Failed to process input message", v7, v8, v9, v10);
    }

    a2 = *a1;
  }

  *a3 = a2;
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_22();
  if (v6 && g_boringssl_log)
  {
    v7 = v4;
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_28();
      _os_log_debug_impl(v8, v9, v10, v11, v12, 0x26u);
    }

    v5 = *v7;
  }

  *a3 = v5;
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_1()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_2()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_33();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x32u);
    }
  }
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_3()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_4()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_33();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x36u);
    }
  }
}

void __nw_protocol_boringssl_get_input_frames_block_invoke_143_cold_5()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] Failed to create trimmed frame", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_31();
}

void nw_protocol_boringssl_initiate_pqtls_fallback_cold_1()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

void nw_protocol_boringssl_begin_connection_cold_2()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl session create failed", v2, v3, v4, v5, v6);
}

void nw_protocol_boringssl_begin_connection_cold_3()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) boringssl session set bio failed", v2, v3, v4, v5, v6);
}

void nw_protocol_boringssl_begin_connection_cold_4()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
    }
  }
}

void nw_protocol_boringssl_begin_connection_cold_5()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_begin_connection_cold_6()
{
  if (g_boringssl_log)
  {
    if (OUTLINED_FUNCTION_30())
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void nw_protocol_boringssl_begin_connection_cold_7()
{
  if (g_boringssl_log)
  {
    if (OUTLINED_FUNCTION_18_0())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void nw_protocol_boringssl_begin_connection_cold_8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (g_boringssl_log)
  {
    v6 = OUTLINED_FUNCTION_34();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_28();
      _os_log_debug_impl(v7, v8, v9, v10, v11, 0x30u);
    }
  }

  *a4 = a3;
}

void nw_protocol_boringssl_begin_connection_cold_9()
{
  if (g_boringssl_log)
  {
    if (OUTLINED_FUNCTION_18_0())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void nw_protocol_boringssl_begin_connection_cold_10()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_begin_connection_cold_11()
{
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_21();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void nw_protocol_boringssl_begin_connection_cold_12()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_43(&dword_1A8FF5000, v0, v1, "%{public}s(%d) no parameters", v2, v3, v4, v5, v6);
}

void boringssl_crypto_hash_nid_to_cc_digest_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  *v3 = 136446722;
  OUTLINED_FUNCTION_0();
  *&v3[7] = 361;
  v3[9] = v0;
  v4 = v1;
  _os_log_error_impl(&dword_1A8FF5000, v2, OS_LOG_TYPE_ERROR, "%{public}s(%d) No support for cc digest with NID %i.", v3, 0x18u);
}

void bssl::dtls1_open_handshake()
{
  __assert_rtn("dtls1_get_incoming_message", "d1_both.cc", 271, "frag->seq == msg_hdr->seq");
}

{
  __assert_rtn("dtls1_open_handshake", "d1_both.cc", 386, "frag->msg_len == msg_len");
}

{
  __assert_rtn("dtls1_open_handshake", "d1_both.cc", 392, "msg_len > 0");
}

void bssl::dtls1_hm_fragment_mark()
{
  __assert_rtn("dtls1_hm_fragment_mark", "d1_both.cc", 215, "msg_len > 0");
}

{
  __assert_rtn("dtls1_hm_fragment_mark", "d1_both.cc", 211, "0");
}

void bssl::dtls1_next_message()
{
  __assert_rtn("dtls1_next_message", "d1_both.cc", 423, "dtls1_is_current_message_complete(ssl)");
}

{
  __assert_rtn("dtls1_next_message", "d1_both.cc", 422, "ssl->s3->has_message");
}

void bssl::tls13_server_handshake()
{
  __assert_rtn("do_send_half_rtt_ticket", "tls13_server.cc", 1139, "!SSL_is_dtls(hs->ssl)");
}

{
  __assert_rtn("do_send_server_certificate_verify", "tls13_server.cc", 1083, "0");
}

{
  __assert_rtn("do_send_hello_retry_request", "tls13_server.cc", 739, "hs->pake_participant == nullptr");
}

void boringssl_private_key_sign_cold_1(unsigned __int16 a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136446722;
  v3 = "boringssl_private_key_sign";
  v4 = 1024;
  v5 = 24;
  v6 = 1026;
  v7 = a1;
  _os_log_error_impl(&dword_1A8FF5000, a2, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to get signature algorithm: %{public}d", &v2, 0x18u);
}

void boringssl_private_key_sign_cold_2(__CFError **a1, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3)
  {
    LODWORD(v3) = CFErrorGetCode(v3);
  }

  v4 = 136446722;
  v5 = "boringssl_private_key_sign";
  v6 = 1024;
  v7 = 84;
  v8 = 1024;
  v9 = v3;
  _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) SecKeyCreateSignature failed: %d", &v4, 0x18u);
}

void bssl::dtls1_write_record()
{
  __assert_rtn("dtls1_write_record", "d1_pkt.cc", 231, "buf->empty()");
}

{
  __assert_rtn("dtls1_write_record", "d1_pkt.cc", 227, "in.size() <= SSL3_RT_MAX_PLAIN_LENGTH");
}

void bssl::ssl_protocol_version()
{
  __assert_rtn("ssl_protocol_version", "ssl_versions.cc", 274, "0");
}

{
  __assert_rtn("ssl_protocol_version", "ssl_versions.cc", 270, "ssl->s3->version != 0");
}

void bssl::tls_on_handshake_complete()
{
  __assert_rtn("tls_on_handshake_complete", "tls_method.cc", 72, "!ssl->s3->has_message");
}

{
  __assert_rtn("tls_on_handshake_complete", "tls_method.cc", 79, "!ssl->s3->hs_buf || ssl->s3->hs_buf->length == 0");
}

void bssl::tls_seal_record()
{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 460, "ssl->s3->aead_write_ctx->ExplicitNonceLen() == 0");
}

{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 474, "false");
}

{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 480, "SSL3_RT_HEADER_LENGTH + ssl_cipher_get_record_split_len( ssl->s3->aead_write_ctx->cipher()) == split_record_len");
}

{
  __assert_rtn("tls_seal_scatter_record", "tls_record.cc", 490, "tls_seal_scatter_prefix_len(ssl, type, in_len) == split_record_len + SSL3_RT_HEADER_LENGTH - 1");
}

void bssl::do_seal_record()
{
  __assert_rtn("do_seal_record", "tls_record.cc", 377, "in == out || !buffers_alias(in, in_len, out, in_len)");
}

{
  __assert_rtn("do_seal_record", "tls_record.cc", 378, "!buffers_alias(in, in_len, out_prefix, ssl_record_prefix_len(ssl))");
}

{
  __assert_rtn("do_seal_record", "tls_record.cc", 379, "!buffers_alias(in, in_len, out_suffix, suffix_len)");
}

void HMAC_cold_1(void *a1, const EVP_MD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 136446722;
  v5 = "HMAC";
  v6 = 1024;
  v7 = 34;
  v8 = 1024;
  v9 = EVP_MD_type(a2);
  _os_log_error_impl(&dword_1A8FF5000, v3, OS_LOG_TYPE_ERROR, "%{public}s(%d) evp_to_ccdigest_info(%d) failed", &v4, 0x18u);
}

void MLKEM768_generate_key_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void MLKEM768_parse_public_key_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void KYBER_generate_key_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void KYBER_parse_public_key_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void aes_init_key_cold_5(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136446722;
  v3 = "aes_init_key";
  v4 = 1024;
  v5 = 99;
  v6 = 1024;
  v7 = a1;
  _os_log_error_impl(&dword_1A8FF5000, a2, OS_LOG_TYPE_ERROR, "%{public}s(%d) Unsupported EVP mode: %d", &v2, 0x18u);
}

void bssl::tls13_client_handshake()
{
  __assert_rtn("do_send_client_certificate_verify", "tls13_client.cc", 1021, "0");
}

{
  __assert_rtn("do_read_encrypted_extensions", "tls13_client.cc", 634, "ssl->s3->ech_status != ssl_ech_rejected");
}

{
  __assert_rtn("do_read_encrypted_extensions", "tls13_client.cc", 630, "ssl->s3->session_reused");
}

{
  __assert_rtn("do_send_second_client_hello", "tls13_client.cc", 359, "hs->ssl->s3->write_level == ssl_encryption_initial");
}

{
  __assert_rtn("do_read_hello_retry_request", "tls13_client.cc", 293, "!hs->pake_participant");
}

{
  __assert_rtn("do_read_hello_retry_request", "tls13_client.cc", 189, "ssl->s3->version != 0");
}

void bssl::close_early_data()
{
  __assert_rtn("close_early_data", "tls13_client.cc", 106, "ssl->s3->write_level == level");
}

{
  __assert_rtn("close_early_data", "tls13_client.cc", 97, "level == ssl_encryption_handshake");
}

{
  __assert_rtn("close_early_data", "tls13_client.cc", 64, "hs->in_early_data");
}

void bssl::ssl_add_clienthello_tlsext()
{
  __assert_rtn("ssl_add_clienthello_tlsext", "extensions.cc", 4221, "out_encoded == nullptr");
}

{
  __assert_rtn("ssl_add_clienthello_tlsext", "extensions.cc", 4325, "psk_extension_len == CBB_len(&extensions) - len_before");
}

void bssl::ext_ri_parse_serverhello()
{
  __assert_rtn("ext_ri_parse_serverhello", "extensions.cc", 762, "ssl->s3->previous_client_finished.size() == ssl->s3->previous_server_finished.size()");
}

{
  __assert_rtn("ext_ri_parse_serverhello", "extensions.cc", 764, "ssl->s3->initial_handshake_complete == !ssl->s3->previous_client_finished.empty()");
}

void bssl::ext_alpn_parse_serverhello()
{
  __assert_rtn("ext_alpn_parse_serverhello", "extensions.cc", 1417, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("ext_alpn_parse_serverhello", "extensions.cc", 1418, "!hs->config->alpn_client_proto_list.empty()");
}

void bssl::ext_npn_parse_serverhello()
{
  __assert_rtn("ext_npn_parse_serverhello", "extensions.cc", 1186, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("ext_npn_parse_serverhello", "extensions.cc", 1187, "!SSL_is_dtls(ssl)");
}

{
  __assert_rtn("ext_npn_parse_serverhello", "extensions.cc", 1188, "ssl->ctx->next_proto_select_cb != NULL");
}

void bssl::ext_channel_id_parse_serverhello()
{
  __assert_rtn("ext_channel_id_parse_serverhello", "extensions.cc", 1640, "!SSL_is_dtls(hs->ssl)");
}

{
  __assert_rtn("ext_channel_id_parse_serverhello", "extensions.cc", 1641, "hs->config->channel_id_private");
}

void bssl::ext_early_data_parse_serverhello()
{
  __assert_rtn("ext_early_data_parse_serverhello", "extensions.cc", 2197, "!ssl->s3->used_hello_retry_request");
}

{
  __assert_rtn("ext_early_data_parse_serverhello", "extensions.cc", 2189, "ssl->s3->early_data_reason != ssl_early_data_unknown");
}

void bssl::ext_quic_transport_params_parse_serverhello_impl()
{
  __assert_rtn("ext_quic_transport_params_parse_serverhello_impl", "extensions.cc", 2736, "ssl_protocol_version(ssl) == TLS1_3_VERSION");
}

{
  __assert_rtn("ext_quic_transport_params_parse_serverhello_impl", "extensions.cc", 2737, "used_legacy_codepoint == hs->config->quic_use_legacy_codepoint");
}

{
  __assert_rtn("ext_quic_transport_params_parse_serverhello_impl", "extensions.cc", 2735, "ssl->quic_method != nullptr");
}

void bssl::ext_alps_parse_serverhello_impl()
{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3313, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3316, "use_new_codepoint == hs->config->alps_use_new_codepoint");
}

{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3315, "!hs->config->alps_configs.empty()");
}

{
  __assert_rtn("ext_alps_parse_serverhello_impl", "extensions.cc", 3314, "!hs->config->alpn_client_proto_list.empty()");
}

void bssl::add_record_to_flight()
{
  __assert_rtn("add_record_to_flight", "s3_both.cc", 140, "!ssl->s3->pending_hs_data");
}

{
  __assert_rtn("add_record_to_flight", "s3_both.cc", 142, "ssl->s3->pending_flight_offset == 0");
}

void bssl::read_v2_client_hello()
{
  __assert_rtn("read_v2_client_hello", "s3_both.cc", 407, "msg_type == SSL2_MT_CLIENT_HELLO");
}

{
  __assert_rtn("read_v2_client_hello", "s3_both.cc", 358, "in.size() >= SSL3_RT_HEADER_LENGTH");
}

void bssl::ssl_tls13_cipher_meets_policy()
{
  __assert_rtn("ssl_tls13_cipher_meets_policy", "s3_both.cc", 738, "false");
}

{
  __assert_rtn("ssl_tls13_cipher_meets_policy", "s3_both.cc", 726, "false");
}

{
  __assert_rtn("ssl_tls13_cipher_meets_policy", "s3_both.cc", 743, "false");
}

void boringssl_session_state_create_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v1[3] + 2) = 52;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) SSL_SESSION_to_bytes failed", v1, 0x12u);
}

void boringssl_session_state_create_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v1[3] + 2) = 40;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to allocate a boringssl session state object.", v1, 0x12u);
}

void boringssl_session_state_copy_serialized_session_state_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  *v2 = 136446722;
  OUTLINED_FUNCTION_0();
  *&v2[7] = 86;
  v2[9] = 2048;
  v3 = v0;
  _os_log_error_impl(&dword_1A8FF5000, v1, OS_LOG_TYPE_ERROR, "%{public}s(%d) boringssl_memory_malloc(%zu) failed", v2, 0x1Cu);
}

void boringssl_session_state_copy_serialized_session_state_cold_2()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x40u);
}

void boringssl_session_state_copy_serialized_session_state_cold_3()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void boringssl_session_state_copy_serialized_session_state_cold_4()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void boringssl_session_state_create_from_dispatch_data_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained((a1 + 16));
    v6 = v2 + 351;
  }

  else
  {
    v6 = &unk_1A9098A9F;
  }

  v7 = objc_loadWeakRetained((a1 + 16));
  *v9 = 136446978;
  OUTLINED_FUNCTION_0();
  *&v9[7] = 194;
  v9[9] = 2082;
  v10 = v6;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&dword_1A8FF5000, a2, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to extract the SSL_SESSION bytes.", v9, 0x26u);

  if (WeakRetained)
  {
  }
}

void bssl::tls_write_app_data()
{
  __assert_rtn("tls_write_app_data", "s3_pkt.cc", 134, "ssl_can_write(ssl)");
}

{
  __assert_rtn("tls_write_app_data", "s3_pkt.cc", 186, "bytes_written <= to_write");
}

{
  __assert_rtn("tls_write_app_data", "s3_pkt.cc", 135, "!ssl->s3->aead_write_ctx->is_null_cipher()");
}

void bssl::ssl_send_alert_impl()
{
  __assert_rtn("ssl_send_alert_impl", "s3_pkt.cc", 439, "level == SSL3_AL_FATAL");
}

{
  __assert_rtn("ssl_send_alert_impl", "s3_pkt.cc", 440, "desc != SSL_AD_CLOSE_NOTIFY");
}

void bssl::anonymous namespace::ECKeyShare::Decap()
{
  __assert_rtn("Decap", "ssl_key_share.cc", 90, "private_key_");
}

{
  __assert_rtn("Decap", "ssl_key_share.cc", 89, "group_");
}

void bssl::anonymous namespace::ECKeyShare::SerializePrivateKey()
{
  __assert_rtn("SerializePrivateKey", "ssl_key_share.cc", 129, "private_key_");
}

{
  __assert_rtn("SerializePrivateKey", "ssl_key_share.cc", 128, "group_");
}

void boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v4, v5, "%{public}s(%d) %{public}s[%p] CFArrayCreateMutable failed", v6, v7, v8, v9);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_helper_copy_public_key_from_certificates_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v4, v5, "%{public}s(%d) %{public}s[%p] No certificates present in the list", v6, v7, v8, v9);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_2()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_3()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v8 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x36u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_5()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_6()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_18(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_10();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_7()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_helper_create_sec_trust_with_certificates_cold_8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v4, v5, "%{public}s(%d) %{public}s[%p] Failed to create a SecTrust with the given certificates and policy", v6, v7, v8, v9);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_helper_zlib_compress_data_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v4, v5, "%{public}s(%d) %{public}s[%p] deflatInit failed", v6, v7, v8, v9);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_helper_zlib_compress_data_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v4, v5, "%{public}s(%d) %{public}s[%p] deflate failed", v6, v7, v8, v9);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_helper_zlib_decompress_data_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  v2 = OUTLINED_FUNCTION_9(v1);
  if (v2)
  {
    v0 = OUTLINED_FUNCTION_8();
  }

  v3 = OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v4, v5, "%{public}s(%d) %{public}s[%p] inflateInit failed", v6, v7, v8, v9);

  if (v2)
  {
  }

  OUTLINED_FUNCTION_13();
}

void ECDH_compute_key_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ECDH_compute_key_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ECDH_compute_key_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ECDH_compute_key_cold_4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ECDH_compute_key_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ECDH_compute_key_cold_6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ECDH_compute_key_cold_7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ECDH_compute_key_cold_8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void bssl::ssl_ctx_get_current_time()
{
  __assert_rtn("ssl_ctx_get_current_time", "ssl_lib.cc", 384, "0");
}

{
  __assert_rtn("ssl_ctx_get_current_time", "ssl_lib.cc", 412, "0");
}

void boringssl_ecdsa_get_cc_curve_parameters_cold_1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_3(&dword_1A8FF5000, v0, v1, "%{public}s(%d) Elliptic curve algorithm with NID %d is not supported", v2, v3, v4, v5, v6);
}

void ECDSA_size_cold_1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_3(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ecdsa_get_cc_curve_parameters(%d) failed", v2, v3, v4, v5, v6);
}

void ECDSA_do_verify_cold_7()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_4_3(&dword_1A8FF5000, v0, v1, "%{public}s(%d) ecdsa_get_cc_curve_parameters(%d) failed", v2, v3, v4, v5, v6);
}

void boringssl_context_state_create_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136446466;
  v2 = "boringssl_context_state_create";
  v3 = 1024;
  v4 = 35;
  _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) Failed to allocate a boringssl context state object.", &v1, 0x12u);
}

void boringssl_context_set_max_version_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_min_version_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_cipher_suites_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_key_exchange_groups_from_list_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v2 = 523;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) No supported key exchange groups from the provided selection", v1, 0x12u);
}

void boringssl_context_set_key_exchange_groups_from_list_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_verify_callback_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_verify_callback_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_quic_transport_parameters_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_quic_transport_parameters_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_zlib_uncompress_data_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_zlib_uncompress_data_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v2 = 778;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) boringssl_memory_malloc failed", v1, 0x12u);
}

void boringssl_context_keylog_handler_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_copy_peer_sct_list_cold_1()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  if (g_boringssl_log)
  {
    v4 = v1;
    v5 = g_boringssl_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained(v4);
      if (WeakRetained)
      {
        v0 = objc_loadWeakRetained(v4);
      }

      v7 = objc_loadWeakRetained(v4);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_4();
      _os_log_debug_impl(v8, v9, v10, v11, v12, 0x26u);

      if (WeakRetained)
      {
      }
    }
  }

  *v3 = 0;
  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_alpn_protocol_list_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v3);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v2);
  }

  v5 = objc_loadWeakRetained(v2);
  MEMORY[0x1AC57FB30](v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Cu);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_alpn_protocol_list_cold_2()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v3);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v2);
  }

  v5 = objc_loadWeakRetained(v2);
  xpc_array_get_count(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x30u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_alpn_protocol_list_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_alpn_protocol_list_cold_4()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_alpn_protocol_list_cold_5()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_signed_cert_timestamp_list_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_signed_cert_timestamp_list_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_ocsp_response_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_process_trust_result_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_evaluate_trust_async_internal_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x36u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x36u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_4()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void __boringssl_context_evaluate_trust_async_external_block_invoke_3_cold_5()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_request_callback_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_certificate_request_callback_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_identity_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_set_identity_cold_2()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_install_identity_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_install_identity_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_message_handler_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Cu);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_enable_message_mode_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_create_with_nw_context_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void boringssl_context_set_encryption_secrets_cold_1(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(a1);
  }

  v6 = objc_loadWeakRetained(a1);
  boringssl_session_in_early_data(a2, v7);
  boringssl_session_early_data_accepted(a2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x3Au);

  if (WeakRetained)
  {
  }
}

void boringssl_context_new_session_handler_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_0();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_13();
}

void boringssl_context_error_print_cold_1()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_6();
  WeakRetained = objc_loadWeakRetained(v2);
  if (WeakRetained)
  {
    v0 = objc_loadWeakRetained(v1);
  }

  v4 = objc_loadWeakRetained(v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);

  if (WeakRetained)
  {
  }

  OUTLINED_FUNCTION_14_1();
}

void bssl::ssl_server_handshake()
{
  __assert_rtn("do_finish_server_handshake", "handshake_server.cc", 1900, "ssl->session == nullptr");
}

{
  __assert_rtn("do_finish_server_handshake", "handshake_server.cc", 1904, "ssl->session != nullptr");
}

{
  __assert_rtn("do_cert_callback", "handshake_server.cc", 853, "ssl->s3->ech_status != ssl_ech_accepted");
}

{
  __assert_rtn("negotiate_version", "handshake_server.cc", 204, "ssl->s3->version == 0");
}

void bssl::ssl_client_handshake()
{
  __assert_rtn("do_finish_client_handshake", "handshake_client.cc", 2000, "ssl->session != nullptr");
}

{
  __assert_rtn("do_read_session_ticket", "handshake_client.cc", 1912, "!hs->new_session");
}

{
  __assert_rtn("do_read_server_key_exchange", "handshake_client.cc", 1316, "alg_a == SSL_aPSK");
}

{
  __assert_rtn("do_reverify_server_certificate", "handshake_client.cc", 1139, "hs->ssl->ctx->reverify_on_resume");
}

{
  __assert_rtn("handle_hello_verify_request", "handshake_client.cc", 708, "msg.type == DTLS1_MT_HELLO_VERIFY_REQUEST");
}

{
  __assert_rtn("handle_hello_verify_request", "handshake_client.cc", 709, "!hs->received_hello_verify_request");
}

{
  __assert_rtn("handle_hello_verify_request", "handshake_client.cc", 707, "SSL_is_dtls(ssl)");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 806, "ssl->s3->version == 0 || (hs->early_data_offered && ssl->s3->version == hs->early_session->ssl_version)");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 839, "!SSL_is_dtls(ssl)");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 823, "ssl_session_protocol_version(hs->early_session.get()) >= TLS1_3_VERSION");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 821, "ssl_protocol_version(ssl) < TLS1_3_VERSION");
}

{
  __assert_rtn("do_read_server_hello", "handshake_client.cc", 940, "!ssl->s3->initial_handshake_complete");
}

{
  __assert_rtn("should_offer_early_data", "handshake_client.cc", 496, "!ssl->server");
}

void bssl::ssl_create_cipher_list()
{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1422, "co_list[num - 1].cipher != nullptr");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1429, "num == OPENSSL_ARRAY_SIZE(co_list)");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1427, "co_list[num - 1].cipher != nullptr");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1417, "co_list[num - 1].cipher != nullptr");
}

{
  __assert_rtn("ssl_create_cipher_list", "ssl_cipher.cc", 1412, "co_list[num - 1].cipher != nullptr");
}

void boringssl_memory_copy_array_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  *v2 = 136446722;
  OUTLINED_FUNCTION_0();
  *&v2[7] = 42;
  v2[9] = 2048;
  v3 = v0;
  _os_log_error_impl(&dword_1A8FF5000, v1, OS_LOG_TYPE_ERROR, "%{public}s(%d) boringssl_memory_malloc(%zu) failed", v2, 0x1Cu);
}

void boringssl_memory_copy_array_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v1[3] + 2) = 36;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Input array length is 0 (empty)", v1, 0x12u);
}

void boringssl_memory_copy_array_cold_3()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_0();
  *(&v1[3] + 2) = 32;
  _os_log_error_impl(&dword_1A8FF5000, v0, OS_LOG_TYPE_ERROR, "%{public}s(%d) Input array is NULL", v1, 0x12u);
}

void aead_chacha20_poly1305_seal_scatter_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136446466;
  v2 = "aead_chacha20_poly1305_seal_scatter";
  v3 = 1024;
  v4 = 168;
  _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) ccchacha20 failed", &v1, 0x12u);
}

void bssl::SSLAEADContext::Open()
{
  __assert_rtn("Open", "ssl_aead_ctx.cc", 264, "variable_nonce_len_ == 8");
}

{
  __assert_rtn("Open", "ssl_aead_ctx.cc", 271, "nonce_len == fixed_nonce_.size()");
}

void bssl::SSLAEADContext::SealScatter()
{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 333, "variable_nonce_included_in_record_");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 340, "variable_nonce_len_ == 8");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 347, "!xor_fixed_nonce_");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 358, "nonce_len == fixed_nonce_.size()");
}

{
  __assert_rtn("SealScatter", "ssl_aead_ctx.cc", 368, "!result || written_suffix_len == suffix_len");
}

void bssl::ssl_reverify_peer_cert()
{
  __assert_rtn("ssl_reverify_peer_cert", "handshake.cc", 434, "ssl->s3->established_session == nullptr");
}

{
  __assert_rtn("ssl_reverify_peer_cert", "handshake.cc", 435, "hs->config->verify_mode != SSL_VERIFY_NONE");
}

void operator delete()
{
    ;
  }
}