uint64_t SSL_CIPHER_get_kx_nid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  if (v2 > 7)
  {
    if (v2 == 8)
    {
      return 953;
    }

    else
    {
      if (v2 != 16)
      {
        goto LABEL_10;
      }

      return 957;
    }
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 952;
      }

LABEL_10:
      SSL_CIPHER_get_kx_nid_cold_1();
    }

    return 951;
  }
}

void BN_MONT_CTX_free(BN_MONT_CTX *mont)
{
  if (mont)
  {
    BN_free(mont);
    BN_free(&mont->RR.neg);

    OPENSSL_free(mont);
  }
}

int SSL_set_session(SSL *to, SSL_SESSION *session)
{
  handshake_func = to->handshake_func;
  if ((*(handshake_func + 111) & 0x10) != 0 || (v4 = *(handshake_func + 35)) == 0 || *(v4 + 20))
  {
    abort();
  }

  bssl::ssl_set_session(to, session, v2);
  return 1;
}

BOOL SSL_SESSION_is_resumable(uint64_t a1)
{
  if ((*(a1 + 440) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 91))
  {
    return 1;
  }

  return *(a1 + 240) != 0;
}

BOOL bssl::ssl_session_is_time_valid(bssl *this, const ssl_st *a2, const ssl_session_st *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_get_current_time(this, v6);
  cipher_list_by_id = a2->cipher_list_by_id;
  return v6[0] >= cipher_list_by_id && v6[0] - cipher_list_by_id < LODWORD(a2->cipher_list);
}

void thread_local_destructor(char *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 && !pthread_mutex_lock(&g_destructors_lock))
  {
    v4[0] = g_destructors;
    v4[1] = unk_1ED4C0958;
    v5 = qword_1ED4C0968;
    pthread_mutex_unlock(&g_destructors_lock);
    for (i = 0; i != 40; i += 8)
    {
      v3 = *(v4 + i);
      if (v3)
      {
        v3(*&a1[i]);
      }
    }

    free(a1);
  }
}

void err_state_free(void **a1)
{
  if (a1)
  {
    for (i = 0; i != 48; i += 3)
    {
      v3 = &a1[i];
      free(a1[i + 1]);
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    free(a1[49]);

    free(a1);
  }
}

uint64_t bssl::ssl_process_alert(bssl *a1, _BYTE *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 != 2)
  {
    *a2 = 50;
    v13 = 102;
    v14 = 539;
    goto LABEL_12;
  }

  bssl::ssl_do_msg_callback(a1, 0, 21, a3, 2);
  v7 = *a3;
  v8 = a3[1];
  bssl::ssl_do_info_callback(a1, 0x4004);
  if (v7 == 2)
  {
    ERR_put_error(16, 0, v8 + 1000, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 579);
    ERR_add_error_dataf("SSL alert number %d", v8);
    *a2 = 0;
    return 4;
  }

  if (v7 != 1)
  {
    *a2 = 47;
    v13 = 227;
    v14 = 586;
    goto LABEL_12;
  }

  v11 = *(a1 + 6);
  if (v8)
  {
    if (*(v11 + 208))
    {
      v12 = bssl::ssl_protocol_version(a1, v9, v10);
      if (v8 != 90 && v12 > 0x303)
      {
        *a2 = 50;
        v13 = 102;
        v14 = 565;
LABEL_12:
        ERR_put_error(16, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", v14);
        return 4;
      }

      v11 = *(a1 + 6);
    }

    v16 = ++*(v11 + 213);
    if (v16 >= 5)
    {
      *a2 = 10;
      v13 = 220;
      v14 = 572;
      goto LABEL_12;
    }

    return 1;
  }

  else
  {
    *(v11 + 172) = 1;
    return 3;
  }
}

uint64_t SSL_set_mode(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 148) | a2;
  *(a1 + 148) = v2;
  return v2;
}

void __boringssl_context_evaluate_trust_async_internal_block_invoke_2(uint64_t a1, uint64_t a2, int a3, __CFError *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((v7 + 16));
  if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((*(a1 + 32) + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
  {
    v12 = *(a1 + 32);
    if (!v12)
    {
      goto LABEL_10;
    }

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

    if (v15)
    {
LABEL_10:
      if (g_boringssl_log)
      {
        v16 = g_boringssl_log;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v17 = *(a1 + 32);
        if (v17)
        {
          v18 = objc_loadWeakRetained((v17 + 16));
          v19 = *(a1 + 32);
          v25 = v18;
          if (v18)
          {
            v20 = v19 != 0;
            if (v19)
            {
              v18 = objc_loadWeakRetained((v19 + 16));
              v19 = *(a1 + 32);
            }

            else
            {
              v18 = 0;
            }

            v23 = v18 + 351;
          }

          else
          {
            v20 = 0;
            v23 = &unk_1A9098A9F;
          }

          v24 = v18;
          if (v19)
          {
            v21 = objc_loadWeakRetained((v19 + 16));
            v22 = 0;
          }

          else
          {
            v21 = 0;
            v22 = 1;
          }
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 1;
          v23 = &unk_1A9098A9F;
        }

        *buf = 136447490;
        v29 = "boringssl_context_evaluate_trust_async_internal_block_invoke_2";
        v30 = 1024;
        v31 = 1667;
        v32 = 2082;
        v33 = v23;
        v34 = 2048;
        v35 = v21;
        v36 = 1024;
        v37 = a3;
        v38 = 2114;
        v39 = a4;
        _os_log_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Returning from internal verify block with result: %{BOOL}d (%{public}@)", buf, 0x36u);
        if (v22)
        {
          if (!v20)
          {
            goto LABEL_25;
          }
        }

        else
        {

          if (!v20)
          {
LABEL_25:
            if (v17)
            {
LABEL_26:
            }

LABEL_27:

            goto LABEL_28;
          }
        }

        if (!v17)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }
  }

LABEL_28:
  if (a4)
  {
    *(*(a1 + 32) + 316) = CFErrorGetCode(a4);
  }

  if (boringssl_session_get_state(*(a1 + 48)) <= 3 && (boringssl_session_is_cancelled(*(a1 + 48)) & 1) == 0)
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    nw_queue_context_async_if_needed();
  }
}

uint64_t boringssl_context_process_trust_result(uint64_t a1, __SecTrust *a2, uint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0;
  }

  if ((*(v5 + 551) & 2) == 0)
  {
    goto LABEL_44;
  }

  WeakRetained = objc_loadWeakRetained((v5 + 16));
  if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((v5 + 16)), v3 = v10[435], v10, v9, (v3 & 1) == 0))
  {
    v11 = objc_loadWeakRetained((v5 + 16));
    if (v11)
    {
      v12 = objc_loadWeakRetained((v5 + 16));
      v3 = (v12[435] & 1) == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (g_boringssl_log)
      {
        v14 = g_boringssl_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v3 = objc_loadWeakRetained((v5 + 16));
          if (v3)
          {
            v4 = objc_loadWeakRetained((v5 + 16));
            v15 = v4 + 351;
          }

          else
          {
            v15 = &unk_1A9098A9F;
          }

          v16 = objc_loadWeakRetained((v5 + 16));
          v55 = 136446978;
          v56 = "boringssl_context_process_trust_result";
          v57 = 1024;
          v58 = 1554;
          v59 = 2082;
          v60 = v15;
          v61 = 2048;
          v62 = v16;
          _os_log_impl(&dword_1A8FF5000, v14, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Applying EV constraint", &v55, 0x26u);

          if (v3)
          {
          }
        }
      }
    }
  }

  v17 = SecTrustCopyResult(a2);
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 == CFDictionaryGetTypeID() && (v20 = CFDictionaryGetValue(v18, *MEMORY[0x1E697B338])) != 0 && (v21 = v20, v3 = CFGetTypeID(v20), v3 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(v21);
      CFRelease(v18);
      if (Value)
      {
        v23 = objc_loadWeakRetained((v5 + 16));
        if (!v23 || (v24 = v23, v25 = objc_loadWeakRetained((v5 + 16)), v26 = v25[435], v25, v24, (v26 & 1) == 0))
        {
          v27 = objc_loadWeakRetained((v5 + 16));
          if (v27)
          {
            v28 = objc_loadWeakRetained((v5 + 16));
            v29 = (v28[435] & 1) == 0;
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            if (g_boringssl_log)
            {
              v37 = g_boringssl_log;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v52 = objc_loadWeakRetained((v5 + 16));
                if (v52)
                {
                  v3 = objc_loadWeakRetained((v5 + 16));
                  v53 = (v3 + 351);
                }

                else
                {
                  v53 = &unk_1A9098A9F;
                }

                v54 = objc_loadWeakRetained((v5 + 16));
                v55 = 136446978;
                v56 = "boringssl_context_process_trust_result";
                v57 = 1024;
                v58 = 1571;
                v59 = 2082;
                v60 = v53;
                v61 = 2048;
                v62 = v54;
                _os_log_impl(&dword_1A8FF5000, v37, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] EV constraint passed", &v55, 0x26u);

                if (v52)
                {
                }
              }

LABEL_43:

              goto LABEL_44;
            }
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      CFRelease(v18);
    }
  }

  v30 = objc_loadWeakRetained((v5 + 16));
  if (v30)
  {
    v31 = v30;
    v32 = objc_loadWeakRetained((v5 + 16));
    v33 = v32[435];

    if (v33)
    {
      a3 = 0;
      goto LABEL_44;
    }
  }

  v34 = objc_loadWeakRetained((v5 + 16));
  if (v34)
  {
    v35 = objc_loadWeakRetained((v5 + 16));
    v36 = (v35[435] & 1) == 0;
  }

  else
  {
    v36 = 1;
  }

  a3 = 0;
  if (v36 && g_boringssl_log)
  {
    v37 = g_boringssl_log;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_process_trust_result_cold_1();
    }

    a3 = 0;
    goto LABEL_43;
  }

LABEL_44:
  v38 = objc_loadWeakRetained((v5 + 16));
  if (!v38 || (v39 = v38, v40 = objc_loadWeakRetained((v5 + 16)), v41 = v40[435], v40, v39, (v41 & 1) == 0))
  {
    v42 = objc_loadWeakRetained((v5 + 16));
    if (v42)
    {
      v43 = objc_loadWeakRetained((v5 + 16));
      v44 = (v43[435] & 1) == 0;
    }

    else
    {
      v44 = 1;
    }

    if (v44)
    {
      if (g_boringssl_log)
      {
        v45 = g_boringssl_log;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v46 = objc_loadWeakRetained((v5 + 16));
          if (v46)
          {
            v3 = objc_loadWeakRetained((v5 + 16));
            v47 = (v3 + 351);
          }

          else
          {
            v47 = &unk_1A9098A9F;
          }

          v48 = objc_loadWeakRetained((v5 + 16));
          v49 = *(v5 + 72);
          v50 = v48;
          redacted_identity = nw_protocol_boringssl_get_redacted_identity(v50, v49);
          v55 = 136447490;
          v56 = "boringssl_context_process_trust_result";
          v57 = 1024;
          v58 = 1577;
          v59 = 2082;
          v60 = v47;
          v61 = 2048;
          v62 = v48;
          v63 = 2082;
          v64 = redacted_identity;
          v65 = 1024;
          v66 = a3;
          _os_log_debug_impl(&dword_1A8FF5000, v45, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Subject name: %{public}s, tls_handshake_trust: %{BOOL}d", &v55, 0x36u);

          if (v46)
          {
          }
        }
      }
    }
  }

  return a3;
}

void nw_protocol_boringssl_input_finished(uint64_t result)
{
  if (result)
  {
    v2 = nw_protocol_downcast();
    if (v2)
    {
      v3 = v2;
      if ((*(v2 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_input_finished_cold_1();
      }

      if (nw_protocol_get_input_handler())
      {
        if ((*(v3 + 350) & 0x20) != 0)
        {
          if ((*(v3 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_input_finished_cold_2();
          }
        }

        else
        {
          state = boringssl_session_get_state(*(v3 + 296));
          boringssl_helper_get_session_state_description(state);
          if ((*(v3 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_input_finished_cold_3();
          }

          if (state < 2)
          {
            if ((nw_protocol_boringssl_initiate_pqtls_fallback(result) & 1) == 0)
            {
              nw_protocol_boringssl_internal_error(v3, 4294957480);
              nw_protocol_get_input_handler();
              if (nw_protocol_disconnected_is_valid())
              {
                nw_protocol_get_input_handler();
                nw_protocol_disconnected();
              }
            }
          }

          else if ((*(v3 + 349) & 2) != 0)
          {
            *(v3 + 349) |= 1u;
          }

          else
          {
            *(v3 + 348) &= ~0x80u;
            nw_boringssl_read(result);
            nw_protocol_get_input_handler();
            if (nw_protocol_input_finished_is_valid())
            {
              nw_protocol_get_input_handler();
              nw_protocol_input_finished();
            }
          }
        }
      }

      else if ((*(v3 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_input_finished_cold_4();
      }
    }
  }
}

void nw_protocol_boringssl_input_finished_cold_1()
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

const char *boringssl_helper_get_session_state_description(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "idle";
  }

  else
  {
    return off_1E785F988[a1 - 1];
  }
}

void nw_protocol_boringssl_input_finished_cold_2()
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

void bssl::tls_open_app_data()
{
  __assert_rtn("tls_open_app_data", "s3_pkt.cc", 334, "!ssl->s3->aead_read_ctx->is_null_cipher()");
}

{
  __assert_rtn("tls_open_app_data", "s3_pkt.cc", 333, "ssl_can_read(ssl)");
}

void nw_protocol_boringssl_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v3 = a3;
  v5 = nw_protocol_downcast();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if ((*(v5 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_error_cold_1();
  }

  if ((*(v6 + 350) & 0x20) == 0)
  {
    *(v6 + 344) = v3;
    v22 = 0u;
    memset(v23, 0, sizeof(v23));
    v20 = 0u;
    v21 = 0u;
    *__strerrbuf = 0u;
    v19 = 0u;
    strerror_r(v3, __strerrbuf, 0x64uLL);
    if (boringssl_session_get_state(*(v6 + 296)) < 2)
    {
      if ((*(v6 + 348) & 4) != 0)
      {
        if ((*(v6 + 349) & 0xC0) != 0x80)
        {
          if ((*(v6 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_error_cold_3();
          }

          if (v3 == 54 && nw_protocol_boringssl_initiate_pqtls_fallback(a1))
          {
            v7 = *(v6 + 435);
            if ((v7 & 1) == 0)
            {
              v8 = g_boringssl_log;
              if (g_boringssl_log)
              {
                if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEFAULT))
                {
                  v10 = 136446978;
                  v11 = "nw_protocol_boringssl_error";
                  v12 = 1024;
                  v13 = 2293;
                  v14 = 2082;
                  v15 = v6 + 351;
                  v16 = 2048;
                  v17 = v6;
                  _os_log_impl(&dword_1A8FF5000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] PQ-TLS fallback initiated; shortcircuiting the error propagation up the stack", &v10, 0x26u);
                }

                v7 = *(v6 + 435);
              }
            }

LABEL_28:
            if ((v7 & 1) == 0)
            {
              nw_protocol_boringssl_error_cold_6();
            }

            return;
          }
        }
      }

      else if ((*(v6 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_error_cold_4();
      }
    }

    else if ((*(v6 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_error_cold_5();
    }

    nw_protocol_get_input_handler();
    is_valid = nw_protocol_error_is_valid();
    v7 = *(v6 + 435);
    if (is_valid)
    {
      if ((*(v6 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_error_cold_7();
      }

      nw_protocol_get_input_handler();
      nw_protocol_error();
      return;
    }

    goto LABEL_28;
  }

  if ((*(v6 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_error_cold_2();
  }
}

void nw_protocol_boringssl_error_cold_1()
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

void nw_protocol_boringssl_error_cold_4()
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

id OUTLINED_FUNCTION_18(uint64_t a1)
{
  v3 = (a1 + *v1);

  return objc_loadWeakRetained(v3);
}

BOOL OUTLINED_FUNCTION_18_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_23()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_43(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

id OUTLINED_FUNCTION_15()
{
  v3 = (v0 + *v1);

  return objc_loadWeakRetained(v3);
}

void nw_protocol_boringssl_error_cold_6()
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

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

dispatch_data_t boringssl_private_key_sign(__SecKey *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = boringssl_helper_SecKeyAlgorithm_from_signature_algorithm(v3);
  if (!CFEqual(v6, *MEMORY[0x1E697B1F8]))
  {
    v8 = dispatch_data_get_size(v5);
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      boringssl_helper_dispatch_data_copyout(v5, v9, v8);
      if (v6 != *MEMORY[0x1E697B1B8])
      {
        v11 = CFDataCreate(*MEMORY[0x1E695E480], v10, v8);
        free(v10);
        error[0] = 0;
        Signature = SecKeyCreateSignature(a1, v6, v11, error);
        if (Signature)
        {
          v13 = Signature;
          Length = CFDataGetLength(Signature);
          BytePtr = CFDataGetBytePtr(v13);
          v16 = dispatch_data_create(BytePtr, Length, 0, 0);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        else
        {
          if (g_boringssl_log)
          {
            v24 = g_boringssl_log;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              boringssl_private_key_sign_cold_2(error, v24);
            }
          }

          if (v11)
          {
            CFRelease(v11);
          }

          v16 = 0;
          v7 = 0;
          v13 = error[0];
          if (!error[0])
          {
            goto LABEL_24;
          }
        }

        CFRelease(v13);
        v7 = v16;
        goto LABEL_24;
      }

      v17 = EVP_MD_CTX_create();
      if (v17)
      {
        v18 = v17;
        v19 = EVP_md5_sha1();
        v30 = -1431655766;
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *error = v20;
        v29 = v20;
        EVP_DigestInit_ex(v18, v19, 0);
        EVP_DigestUpdate(v18, v10, v8);
        s = 0;
        EVP_DigestFinal_ex(v18, error, &s);
        EVP_MD_CTX_destroy(v18);
        BlockSize = SecKeyGetBlockSize(a1);
        v22 = malloc_type_malloc(BlockSize, 0x100004077774924uLL);
        if (v22)
        {
          v23 = v22;
          size = BlockSize;
          if (SecKeyRawSign(a1, 1u, error, 0x24uLL, v22, &size))
          {
            v7 = 0;
          }

          else
          {
            v7 = dispatch_data_create(v23, size, 0, 0);
          }

          free(v23);
          free(v10);
          goto LABEL_24;
        }
      }

      free(v10);
    }

LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  v7 = g_boringssl_log;
  if (g_boringssl_log)
  {
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_private_key_sign_cold_1(v3, v7);
    }

    goto LABEL_23;
  }

LABEL_24:

  return v7;
}

uint64_t boringssl_identity_private_key_sign(void *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (*(v15 + 4) && *(v15 + 6))
  {
    v19 = MEMORY[0x1AC57F4F0]();
    v20 = *(v15 + 6);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __boringssl_identity_private_key_sign_block_invoke;
    v27[3] = &unk_1E785FA08;
    v32 = a5;
    v30 = v19;
    v27[4] = v16;
    v28 = v17;
    v29 = v15;
    v31 = v18;
    v21 = v19;
    boringssl_context_async(v28, v20, v27);

    v22 = 2;
  }

  else
  {
    v23 = boringssl_private_key_sign(*(v15 + 1), a5, v16);
    v24 = v23;
    if (v23)
    {
      size = dispatch_data_get_size(v23);
      if (size < a4)
      {
        a4 = size;
      }

      boringssl_helper_dispatch_data_copyout(v24, a2, a4);
      v22 = 0;
      *a3 = a4;
    }

    else
    {
      v22 = 1;
    }
  }

  return v22;
}

uint64_t bssl::ssl_private_key_sign(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4, unsigned int a5, char *a6, size_t a7)
{
  v13 = *a1;
  v14 = *(a1 + 1520);
  v15 = *(a1 + 1592);
  v39 = 0;
  v40 = 0;
  if (v15)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v37.flags = v16;
    v38 = v16;
    *&v37.digest = v16;
    CBB_zero(&v37);
    if (!CBB_init(&v37, 0x40uLL) || !EVP_marshal_public_key(&v37, v14[1]) || !bssl::CBBFinishArray(&v37, &v39))
    {
      bssl::ssl_send_alert(v13, 2, 80);
      CBB_cleanup(&v37, v22);
      goto LABEL_43;
    }

    CBB_cleanup(&v37, v17);
    v18 = *(a1 + 1600);
    if ((v18 & 0x80000) == 0 && *(v15 + 72) == a5)
    {
      v19 = *(v15 + 88);
      if (a7 == v19 && !memcmp(a6, *(v15 + 80), v19) && v40 == *(v15 + 104) && !memcmp(v39, *(v15 + 96), v40))
      {
        v20 = *(v15 + 120);
        if (v20 - 1 < a4)
        {
          *a3 = v20;
          v21 = *(v15 + 120);
          if (v21)
          {
            memcpy(a2, *(v15 + 112), v21);
          }

          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v18 = *(a1 + 1600);
  }

  if ((v18 & 0x1000000) != 0)
  {
    __assert_rtn("ssl_private_key_sign", "ssl_privkey.cc", 280, "!hs->can_release_private_key");
  }

  v23 = v14[3];
  if (v23)
  {
    if ((v18 & 0x20000) != 0)
    {
      v24 = (*(v23 + 16))(v13, a2, a3, a4);
    }

    else
    {
      v24 = (*v23)(v13, a2, a3, a4, a5, a6, a7);
    }

    v27 = v24;
    if (v24 == 2)
    {
      ERR_put_error(16, 0, 287, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_privkey.cc", 291);
    }

    *(a1 + 1600) = *(a1 + 1600) & 0xFFFDFFFF | ((v27 == 1) << 17);
    if (v27)
    {
      v28 = 1;
    }

    else
    {
      v28 = v15 == 0;
    }

    if (v28)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v25 = v14[2];
    *a3 = a4;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v37.digest = v26;
    *&v37.flags = v26;
    EVP_MD_CTX_init(&v37);
    if (!bssl::setup_ctx(v13, &v37, v25, a5, 0) || !EVP_DigestSign(&v37, a2, a3, a6, a7))
    {
      EVP_MD_CTX_cleanup(&v37);
      goto LABEL_43;
    }

    EVP_MD_CTX_cleanup(&v37);
    if (!v15)
    {
      goto LABEL_32;
    }
  }

  if ((*(a1 + 1602) & 8) == 0)
  {
LABEL_32:
    v27 = 0;
    goto LABEL_44;
  }

  *(v15 + 72) = a5;
  OPENSSL_free(*(v15 + 96));
  v29 = v40;
  *(v15 + 96) = v39;
  *(v15 + 104) = v29;
  v39 = 0;
  v40 = 0;
  if (!bssl::Array<unsigned char>::InitUninitialized(v15 + 80, a7))
  {
    goto LABEL_43;
  }

  if (a7)
  {
    v30 = *(v15 + 80);
    do
    {
      v31 = *a6++;
      *v30++ = v31;
      --a7;
    }

    while (a7);
  }

  v32 = *a3;
  if (!bssl::Array<unsigned char>::InitUninitialized(v15 + 112, *a3))
  {
LABEL_43:
    v27 = 2;
    goto LABEL_44;
  }

  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = *(v15 + 112);
  v27 = 0;
  do
  {
    v34 = *a2++;
    *v33++ = v34;
    --v32;
  }

  while (v32);
LABEL_44:
  OPENSSL_free(v39);
  return v27;
}

void sub_1A903B780(_Unwind_Exception *a1, uint64_t a2, EVP_MD_CTX *ctx, uint64_t a4, uint64_t a5, uint64_t ctxa, uint64_t ctx_8, uint64_t ctx_16, uint64_t ctx_24, uint64_t a10, uint64_t a11, uint64_t ctx_8a, uint64_t ctx_16a, uint64_t ctx_24a, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls13_add_certificate_verify_in_buffer(bssl *this, bssl::SSL_HANDSHAKE *a2, void *a3, unsigned __int8 **a4, unint64_t *a5, const unsigned __int8 *a6)
{
  if (!*(this + 805))
  {
    bssl::tls13_add_certificate_verify_in_buffer();
  }

  v10 = a2;
  v12 = *this;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[1] = v13;
  v27[2] = v13;
  v27[0] = v13;
  CBB_zero(v27);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[1] = v14;
  v26[2] = v14;
  v26[0] = v14;
  if ((*(*v12 + 88))(v12, v27, v26, 15) && CBB_add_u16(v26, *(this + 805)))
  {
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25[1] = v15;
    v25[2] = v15;
    v25[0] = v15;
    v16 = EVP_PKEY_size(*(*(this + 190) + 8));
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_add_u16_length_prefixed(v26, v25) && CBB_reserve(v25, &v24, v16))
    {
      v21 = 0;
      v22 = 0;
      if (v10)
      {
        v17 = 3;
      }

      else
      {
        v17 = (*(v12 + 180) & 1) == 0;
      }

      if (bssl::tls13_get_cert_verify_signature_input(this, &v21, v17, a5, a6))
      {
        v19 = bssl::ssl_private_key_sign(this, v24, &v23, v16, *(this + 805), v21, v22);
        if (!v19)
        {
          if (a3)
          {
            if (!CBB_did_write(v25, v23) || !CBB_finish(v27, a3, a4))
            {
LABEL_23:
              v19 = 2;
              goto LABEL_18;
            }
          }

          else if (!CBB_did_write(v25, v23) || (bssl::ssl_add_message_cbb(v12, v27) & 1) == 0)
          {
            goto LABEL_23;
          }

          v19 = 0;
        }
      }

      else
      {
        v19 = 2;
        bssl::ssl_send_alert(v12, 2, 80);
      }

LABEL_18:
      OPENSSL_free(v21);
      goto LABEL_19;
    }

    v19 = 2;
    bssl::ssl_send_alert(v12, 2, 80);
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 795);
    v19 = 2;
  }

LABEL_19:
  CBB_cleanup(v27, v18);
  return v19;
}

void sub_1A903B9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  bssl::Array<unsigned char>::~Array(&a9);
  CBB_cleanup(va, v25);
  _Unwind_Resume(a1);
}

uint64_t CBB_did_write(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 8))
  {
    v3 = *v3;
  }

  result = 0;
  v5 = v3[1];
  v6 = __CFADD__(v5, a2);
  v7 = v5 + a2;
  v8 = v6;
  if (!*a1 && (v8 & 1) == 0)
  {
    if (v7 <= v3[2])
    {
      v3[1] = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t bssl::tls13_server_handshake(bssl *this, bssl::SSL_HANDSHAKE *a2, ssl_session_st *a3)
{
  v193 = (this + 1536);
  v229 = *MEMORY[0x1E69E9840];
  v194 = (this + 1680);
  v195 = this + 326;
  v188 = this + 648;
  v189 = (this + 1664);
  v190 = (this + 616);
  v191 = (this + 1520);
  v192 = this + 1613;
  while (2)
  {
    v4 = *(this + 6);
    v5 = 1;
    switch(v4)
    {
      case 0:
        v6 = *this;
        *&v217 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v215 = v7;
        v216 = v7;
        v202 = v7;
        v203 = v7;
        v200 = v7;
        v201 = v7;
        *&v198[16] = v7;
        v199 = v7;
        *v198 = v7;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, v215, v198))
        {
          goto LABEL_285;
        }

        if (*(v6 + 21))
        {
          v8 = *(&v200 + 1) == 0;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          ERR_put_error(16, 0, 306, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 305);
          bssl::ssl_send_alert(v6, 2, 47);
          goto LABEL_285;
        }

        if (!SSL_is_dtls(v6))
        {
          v9 = *(&v200 + 1);
          if (*(&v200 + 1) > 0x20uLL)
          {
            goto LABEL_465;
          }

          v10 = v200;
          *(this + 1645) = 0;
          if (v9)
          {
            v11 = v9;
            v12 = v192;
            do
            {
              v13 = *v10++;
              *v12++ = v13;
              --v11;
            }

            while (v11);
          }

          *(this + 1645) = v9;
        }

        v211[0] = 0;
        v211[1] = 0;
        if ((bssl::ssl_get_credential_list(this, v211) & 1) == 0)
        {
          goto LABEL_268;
        }

        if (!v211[1])
        {
          ERR_put_error(16, 0, 174, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 323);
          v105 = 80;
          goto LABEL_267;
        }

        v14 = v211[0];
        v15 = v211[0] + 8 * v211[1];
        while (2)
        {
          v16 = *v14;
          ERR_clear_error();
          LOWORD(v208[0]) = -21846;
          v20 = *(v16 + 4);
          switch(v20)
          {
            case 3:
              goto LABEL_37;
            case 2:
              if ((*(this + 1602) & 0x20) != 0 && *(this + 746) == 2)
              {
                break;
              }

              v24 = 255;
LABEL_35:
              ERR_put_error(16, 0, 253, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", v24);
LABEL_36:
              if (*(v16 + 4) == 3)
              {
LABEL_37:
                v25 = *(this + 207);
                if (v25 && *(v25 + 8) == 32150)
                {
                  SSL_CREDENTIAL_up_ref(v16);
                  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v191, v16);
                  v107 = SPAKE2PLUS_CTX_new_verifier(*(v16 + 88), *(v16 + 96), *(v16 + 104), *(v16 + 112), *(v16 + 120), *(v16 + 128), *(v16 + 136), *(v16 + 144), *(v16 + 168), *(v16 + 176));
                  std::unique_ptr<spake2plus_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](v194, v107);
                  goto LABEL_263;
                }
              }

              if (++v14 == v15)
              {
                goto LABEL_263;
              }

              continue;
            case 1:
              v21 = *(this + 84);
              if (v21)
              {
                v22 = 2 * v21;
                v23 = *(this + 83);
                while (*v23 != *(v16 + 64))
                {
                  ++v23;
                  v22 -= 2;
                  if (!v22)
                  {
                    goto LABEL_34;
                  }
                }
              }

              else
              {
                v23 = *(this + 83);
              }

              if (v23 == (*(this + 83) + 2 * v21))
              {
LABEL_34:
                v24 = 246;
                goto LABEL_35;
              }

              break;
          }

          break;
        }

        if (!bssl::tls1_choose_signature_algorithm(this, v16, v208, v19) || !bssl::ssl_credential_matches_requested_issuers(this, v16, v18))
        {
          goto LABEL_36;
        }

        if (v16)
        {
          SSL_CREDENTIAL_up_ref(v16);
        }

        std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v191, v16);
        *(this + 805) = v208[0];
LABEL_263:
        if (!*v191)
        {
          v105 = 40;
LABEL_267:
          bssl::ssl_send_alert(v6, 2, v105);
LABEL_268:
          v5 = 0;
          goto LABEL_269;
        }

        v108 = v201;
        v109 = bssl::ssl_protocol_version(v6, v17, v18);
        v110 = *(v6 + 1);
        v111 = *(v110 + 309);
        if ((v111 & 0x800) != 0)
        {
          is_opaque = (v111 >> 12) & 1;
        }

        else
        {
          is_opaque = RSA_is_opaque();
          v110 = *(v6 + 1);
        }

        v113 = bssl::ssl_choose_tls13_cipher(v108, *(&v108 + 1), is_opaque != 0, v109, *(v110 + 304));
        *(this + 196) = v113;
        if (!v113)
        {
          ERR_put_error(16, 0, 184, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 356);
          bssl::ssl_send_alert(v6, 2, 40);
          goto LABEL_268;
        }

        LOBYTE(v208[0]) = 50;
        if ((bssl::ssl_negotiate_alpn(this, v208, v198) & 1) == 0)
        {
          bssl::ssl_send_alert(v6, 2, LOBYTE(v208[0]));
          goto LABEL_268;
        }

        v116 = bssl::ssl_protocol_version(v6, v114, v115);
        if (!bssl::SSLTranscript::InitHash((this + 424), v116, *(this + 196)))
        {
          goto LABEL_268;
        }

        v5 = 1;
        *(this + 6) = 1;
LABEL_269:
        OPENSSL_free(v211[0]);
LABEL_286:
        if (*(this + 6) != v4)
        {
          bssl::ssl_do_info_callback(*this, 0x2001);
        }

        if (v5 == 1)
        {
          continue;
        }

        return v5;
      case 1:
        v46 = *this;
        *&v228 = 0xAAAAAAAAAAAAAAAALL;
        *&v47 = 0xAAAAAAAAAAAAAAAALL;
        *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
        d = v47;
        v227 = v47;
        v202 = v47;
        v203 = v47;
        v200 = v47;
        v201 = v47;
        *&v198[16] = v47;
        v199 = v47;
        *v198 = v47;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, &d, v198))
        {
          goto LABEL_285;
        }

        v197 = 50;
        v48 = *(v46 + 48);
        v49 = *this;
        *&v214 = 0;
        v215[0] = 0xAAAAAAAAAAAAAAAALL;
        v215[1] = 0xAAAAAAAAAAAAAAAALL;
        extension = bssl::ssl_client_hello_get_extension(v198, v215, 41);
        if ((extension & 1) == 0)
        {
          goto LABEL_304;
        }

        v211[0] = 0xAAAAAAAAAAAAAAAALL;
        v211[1] = 0xAAAAAAAAAAAAAAAALL;
        if ((bssl::ssl_client_hello_get_extension(v198, v211, 45) & 1) == 0)
        {
          v197 = 109;
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 398);
          goto LABEL_321;
        }

        memset(v208, 170, sizeof(v208));
        *&v223 = 0xAAAAAAAAAAAAAAAALL;
        *(&v223 + 1) = 0xAAAAAAAAAAAAAAAALL;
        LODWORD(v207) = -1431655766;
        if ((bssl::ssl_ext_pre_shared_key_parse_clienthello(this, v208, &v223, &v207, &v197, v198, v215) & 1) == 0)
        {
          goto LABEL_321;
        }

        if ((*(this + 1600) & 0x10) == 0 || *v191 && *(*v191 + 1) == 3)
        {
          goto LABEL_304;
        }

        LOBYTE(v196) = -86;
        ses[0] = 0;
        v51 = bssl::ssl_process_ticket(this, ses, &v196, *v208, *&v208[2], 0, 0);
        v52 = v51;
        if (v51)
        {
          if (v51 == 3)
          {
            v197 = 80;
          }
        }

        else
        {
          if (!bssl::ssl_session_is_resumable(this, ses[0], a3))
          {
            goto LABEL_294;
          }

          v117 = ses[0];
          if ((ses[0][1].peer & 8) == 0)
          {
            ses[0] = 0;
            v52 = 2;
LABEL_296:
            SSL_SESSION_free(v117);
LABEL_297:
            if (v52 > 1)
            {
              if (v52 != 2)
              {
                if (v52 == 3)
                {
                  goto LABEL_321;
                }

                goto LABEL_306;
              }

LABEL_304:
              if (v214)
              {
                __assert_rtn("do_select_session", "tls13_server.cc", 504, "!session");
              }

              if (bssl::ssl_get_new_session(this, a2))
              {
LABEL_306:
                if (bssl::ssl_negotiate_alps(this, &v197, v198))
                {
                  v121 = *(this + 192);
                  *(v121 + 200) = *(this + 196);
                  v122 = *(this + 210);
                  if (v122)
                  {
                    v123 = 0;
LABEL_309:
                    v219 = -86;
                    *&v124 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v124 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v217 = v124;
                    v218 = v124;
                    *v215 = v124;
                    v216 = v124;
                    ses[0] = 65;
                    v223 = v124;
                    v224 = v124;
                    *&v207 = 32;
                    v220 = v124;
                    v221 = v124;
                    v196 = 32;
                    if (!SPAKE2PLUS_process_prover_share(v122, *(*(this + 207) + 48), *(*(this + 207) + 56), v215, ses, 0x41uLL, &v223, &v207, 0x20uLL, &v220, &v196, 0x20uLL))
                    {
                      goto LABEL_338;
                    }

                    *(*(v46 + 48) + 220) = 32150;
                    *&v125 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v125 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v212 = v125;
                    v213 = v125;
                    *v211 = v125;
                    CBB_zero(v211);
                    if (!CBB_init(v211, 0x41uLL) || (*&v127 = 0xAAAAAAAAAAAAAAAALL, *(&v127 + 1) = 0xAAAAAAAAAAAAAAAALL, v209 = v127, v210 = v127, *v208 = v127, !CBB_add_u16(v211, 0x7D96u)) || !CBB_add_u16_length_prefixed(v211, v208) || !CBB_add_bytes(v208, v215, ses[0]) || !CBB_add_bytes(v208, &v223, v207) || !CBB_flush(v211) || !bssl::CBBFinishArray(v211, v189) || !CBB_init(v211, 0x20uLL) || !CBB_add_bytes(v211, &v220, v196))
                    {
                      CBB_cleanup(v211, v126);
                      goto LABEL_338;
                    }

                    v128 = bssl::CBBFinishArray(v211, this + 1688);
                    CBB_cleanup(v211, v129);
                    if (!v128)
                    {
                      goto LABEL_338;
                    }

LABEL_325:
                    if ((*(v46 + 180) & 4) == 0)
                    {
                      v131 = *(v46 + 48);
                      v132 = 1;
LABEL_327:
                      *(v131 + 256) = v132;
                      goto LABEL_380;
                    }

                    if (extension)
                    {
                      v136 = v214;
                      if (v214)
                      {
                        if (*(v214 + 380))
                        {
                          v137 = *(this + 400);
                          if ((v137 & 0x800) == 0)
                          {
                            v131 = *(v46 + 48);
                            v132 = 4;
                            goto LABEL_327;
                          }

                          v131 = *(v46 + 48);
                          if ((v137 & 0x2000000) != 0)
                          {
                            v139 = 10;
                          }

                          else
                          {
                            v149 = *(v131 + 504);
                            if (v149 == *(v214 + 400) && !memcmp(*(v131 + 496), *(v214 + 392), v149))
                            {
                              v176 = *v193;
                              if (((*(v136 + 440) ^ LOBYTE((*v193)[1].peer)) & 0x40) == 0 && (v177 = *&v176[1].sid_ctx[20], v177 == *(v136 + 416)) && !memcmp(*&v176[1].sid_ctx[12], *(v136 + 408), v177))
                              {
                                if ((*(v131 + 252) - 61) > 0xFFFFFF86)
                                {
                                  if (bssl::quic_ticket_compatible(v136, *(this + 1), v178))
                                  {
                                    if (v123)
                                    {
                                      v131 = *(v46 + 48);
                                      *(v131 + 256) = 8;
                                      v123 = 1;
                                    }

                                    else
                                    {
                                      if (*(this + 196) != *(v214 + 200))
                                      {
                                        __assert_rtn("do_select_session", "tls13_server.cc", 647, "hs->new_cipher == session->cipher");
                                      }

                                      v123 = 0;
                                      v186 = *(v46 + 48);
                                      *(v186 + 256) = 2;
                                      *(v186 + 222) |= 0x200u;
                                      v131 = *(v46 + 48);
                                    }

LABEL_380:
                                    v150 = *v193;
                                    v152 = *(v131 + 496);
                                    v151 = *(v131 + 504);
                                    if (bssl::Array<unsigned char>::InitUninitialized(&(*v193)[1].sid_ctx_length, v151))
                                    {
                                      if (v151)
                                      {
                                        v155 = *&v150[1].sid_ctx_length;
                                        do
                                        {
                                          v156 = *v152++;
                                          *v155++ = v156;
                                          --v151;
                                        }

                                        while (v151);
                                      }

                                      if ((*(*(v46 + 48) + 222) & 0x200) != 0)
                                      {
                                        v157 = *v193;
                                        if (((*v193)[1].peer & 0x40) != 0)
                                        {
                                          v158 = *(v214 + 424);
                                          v159 = *(v214 + 432);
                                          if (!bssl::Array<unsigned char>::InitUninitialized(&v157[1].sid_ctx[28], v159))
                                          {
                                            goto LABEL_407;
                                          }

                                          if (v159)
                                          {
                                            v160 = *&v157[1].sid_ctx[28];
                                            do
                                            {
                                              v161 = *v158++;
                                              *v160++ = v161;
                                              --v159;
                                            }

                                            while (v159);
                                          }
                                        }
                                      }

                                      if ((*(v46 + 180) & 4) == 0 || !*(v46 + 168))
                                      {
LABEL_396:
                                        v168 = *(*(v46 + 120) + 512);
                                        if (!v168 || v168(v198))
                                        {
                                          v169 = bssl::ssl_protocol_version(v46, v153, v154);
                                          handshake_digest = bssl::ssl_get_handshake_digest(v169, *(this + 196), v170);
                                          v172 = EVP_MD_size(handshake_digest);
                                          if ((*(*(v46 + 48) + 222) & 0x20) != 0)
                                          {
                                            v174 = &(*v193)->key_arg[2];
                                            v173 = (*v193)->master_key[38];
                                          }

                                          else
                                          {
                                            v173 = v172;
                                            v174 = &bssl::kZeroes;
                                          }

                                          if (!bssl::tls13_init_key_schedule(this, v174, v173) || (bssl::ssl_hash_message(this, &d) & 1) == 0)
                                          {
                                            goto LABEL_338;
                                          }

                                          v175 = *(v46 + 48);
                                          if ((*(v175 + 222) & 0x200) != 0)
                                          {
                                            if ((bssl::tls13_derive_early_secret(this, a2) & 1) == 0)
                                            {
                                              goto LABEL_338;
                                            }
                                          }

                                          else if ((*(this + 1601) & 8) != 0)
                                          {
                                            *(v175 + 222) |= 1u;
                                          }

                                          if ((v123 & 1) == 0)
                                          {
                                            if (*v194)
                                            {
                                              if (!bssl::tls13_advance_key_schedule(this, *(this + 211), *(this + 212)))
                                              {
                                                goto LABEL_338;
                                              }
                                            }

                                            else if ((bssl::resolve_ecdhe_secret(this, v198) & 1) == 0)
                                            {
                                              goto LABEL_338;
                                            }

                                            (*(*v46 + 32))(v46);
                                            OPENSSL_free(*v190);
                                            *v190 = 0;
                                            v190[1] = 0;
                                            v5 = 1;
                                            *(this + 6) = 4;
LABEL_339:
                                            v135 = v214;
                                            *&v214 = 0;
                                            if (v135)
                                            {
                                              SSL_SESSION_free(v135);
                                            }

                                            goto LABEL_286;
                                          }

                                          (*(*v46 + 32))(v46);
                                          if (bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 424)))
                                          {
                                            *(this + 6) = 2;
                                            v5 = 1;
                                            goto LABEL_339;
                                          }

LABEL_338:
                                          v5 = 0;
                                          goto LABEL_339;
                                        }

                                        ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 684);
                                        goto LABEL_407;
                                      }

                                      v162 = *(this + 192);
                                      v163 = *(this + 1);
                                      v164 = *(v163 + 248);
                                      v165 = *(v163 + 256);
                                      if (bssl::Array<unsigned char>::InitUninitialized(v162 + 448, v165))
                                      {
                                        if (v165)
                                        {
                                          v166 = *(v162 + 448);
                                          do
                                          {
                                            v167 = *v164++;
                                            *v166++ = v167;
                                            --v165;
                                          }

                                          while (v165);
                                        }

                                        goto LABEL_396;
                                      }
                                    }

LABEL_407:
                                    v130 = 80;
                                    goto LABEL_337;
                                  }

                                  v131 = *(v46 + 48);
                                  v139 = 13;
                                }

                                else
                                {
                                  v139 = 12;
                                }
                              }

                              else
                              {
                                v139 = 14;
                              }
                            }

                            else
                            {
                              v139 = 9;
                            }
                          }
                        }

                        else
                        {
                          v131 = *(v46 + 48);
                          v139 = 7;
                        }
                      }

                      else
                      {
                        v131 = *(v46 + 48);
                        v139 = 6;
                      }
                    }

                    else
                    {
                      v131 = *(v46 + 48);
                      v139 = 5;
                    }

                    *(v131 + 256) = v139;
                    goto LABEL_380;
                  }

                  if (bssl::tls1_get_shared_group(this, (v121 + 6), v120))
                  {
                    LOBYTE(v215[0]) = -86;
                    if ((bssl::ssl_ext_key_share_parse_clienthello(this, v215, 0, &v197, v198) & 1) == 0)
                    {
                      bssl::ssl_send_alert(v46, 2, v197);
                      goto LABEL_338;
                    }

                    v123 = LOBYTE(v215[0]) ^ 1;
                    v122 = *v194;
                    if (!*v194)
                    {
                      goto LABEL_325;
                    }

                    goto LABEL_309;
                  }

                  ERR_put_error(16, 0, 266, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 553);
                  v130 = 40;
LABEL_337:
                  bssl::ssl_send_alert(v46, 2, v130);
                  goto LABEL_338;
                }

LABEL_321:
                v130 = v197;
                goto LABEL_337;
              }
            }

            else
            {
              if (v52)
              {
                if (v52 == 1)
                {
                  *(this + 6) = 1;
                  v5 = 11;
                  goto LABEL_339;
                }

                goto LABEL_306;
              }

              bssl::SSL_SESSION_dup(v215, v214, 0);
              v133 = v215[0];
              v215[0] = 0;
              std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v193, v133);
              v134 = v215[0];
              v215[0] = 0;
              if (v134)
              {
                SSL_SESSION_free(v134);
              }

              if (*v193)
              {
                *(*(v46 + 48) + 222) |= 0x20u;
                *(this + 400) |= 0x1000000u;
                bssl::ssl_session_renew_timeout(v46, *(this + 192), *(*(v46 + 128) + 308));
                goto LABEL_306;
              }
            }

            v130 = 80;
            goto LABEL_337;
          }

          LODWORD(v207) = (v207 - *&ses[0][1].session_id[16]) / 0x3E8u;
          *&v220 = 0xAAAAAAAAAAAAAAAALL;
          *(&v220 + 1) = 0xAAAAAAAAAAAAAAAALL;
          bssl::ssl_get_current_time(v49, &v220);
          a2 = ses[0];
          v118 = *&ses[0]->compress_meth;
          v119 = v220 - v118;
          if (v220 < v118)
          {
            __assert_rtn("select_session", "tls13_server.cc", 451, "now.tv_sec >= session->time");
          }

          if (!(v119 >> 31))
          {
            *(v48 + 252) = v207 - v119;
            if (bssl::tls13_verify_psk_binder(this, a2, &d, &v223))
            {
              v138 = ses[0];
              ses[0] = 0;
              std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](&v214, v138);
              v52 = 0;
            }

            else
            {
              v197 = 51;
              v52 = 3;
            }
          }

          else
          {
LABEL_294:
            v52 = 2;
          }
        }

        v117 = ses[0];
        ses[0] = 0;
        if (!v117)
        {
          goto LABEL_297;
        }

        goto LABEL_296;
      case 2:
        if ((*(this + 1602) & 8) != 0)
        {
          goto LABEL_115;
        }

        if (*v194)
        {
          bssl::tls13_server_handshake();
        }

        v38 = *this;
        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v198[16] = v39;
        v199 = v39;
        *v198 = v39;
        CBB_zero(v198);
        *&v40 = 0xAAAAAAAAAAAAAAAALL;
        *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v216 = v40;
        v217 = v40;
        *v215 = v40;
        v212 = v40;
        v213 = v40;
        v210 = v40;
        *v211 = v40;
        *v208 = v40;
        v209 = v40;
        if (!(*(*v38 + 88))(v38, v198, v215, 2) || !CBB_add_u16(v215, 0x303u) || !CBB_add_bytes(v215, &bssl::kHelloRetryRequest, 0x20uLL) || !CBB_add_u8_length_prefixed(v215, v211) || !CBB_add_bytes(v211, v192, *(this + 1645)) || (protocol_id = SSL_CIPHER_get_protocol_id(*(this + 196), v41), !CBB_add_u16(v215, protocol_id)) || !CBB_add_u8(v215, 0) || !CBB_add_u16_length_prefixed(v215, v208) || !CBB_add_u16(v208, 0x2Bu) || !CBB_add_u16(v208, 2u) || !CBB_add_u16(v208, *(v38[6] + 208)) || !CBB_add_u16(v208, 0x33u) || !CBB_add_u16(v208, 2u) || !CBB_add_u16(v208, HIWORD((*v193)->key_arg_length)) || (*(this + 400) & 1) != 0 && (!CBB_add_u16(v208, 0xFE0Du) || !CBB_add_u16(v208, 8u) || !CBB_add_zeros(v208, 8uLL)))
        {
          v5 = 0;
LABEL_199:
          CBB_cleanup(v198, v41);
          goto LABEL_286;
        }

        d = 0uLL;
        if (((*(*v38 + 96))(v38, v198, &d) & 1) == 0)
        {
          goto LABEL_416;
        }

        if ((*(this + 400) & 1) == 0)
        {
          goto LABEL_90;
        }

        if (*(&d + 1) <= 7uLL)
        {
          goto LABEL_465;
        }

        if (!bssl::ssl_ech_accept_confirmation(this, *(&d + 1) - 8 + d, 8, v38[6] + 48, 32, (this + 424), 1, v43, d, *(&d + 1), *(&d + 1) - 8))
        {
          goto LABEL_416;
        }

LABEL_90:
        v44 = *(*v38 + 104);
        v223 = 0uLL;
        OPENSSL_free(0);
        v223 = d;
        d = 0uLL;
        if (v44(v38, &v223))
        {
          v45 = (*(*v38 + 112))(v38);
          bssl::Array<unsigned char>::~Array(&v223);
          if (v45)
          {
            *(v38[6] + 222) |= 0x1000u;
            *(this + 6) = 3;
            v5 = 4;
LABEL_417:
            bssl::Array<unsigned char>::~Array(&d);
            goto LABEL_199;
          }
        }

        else
        {
          bssl::Array<unsigned char>::~Array(&v223);
        }

LABEL_416:
        v5 = 0;
        goto LABEL_417;
      case 3:
        v27 = *this;
        *&v217 = 0xAAAAAAAAAAAAAAAALL;
        *&v68 = 0xAAAAAAAAAAAAAAAALL;
        *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v215 = v68;
        v216 = v68;
        if (!(*(*v27 + 24))(v27, v215, a3))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v27, v215, 1, v69))
        {
          goto LABEL_285;
        }

        *&v70 = 0xAAAAAAAAAAAAAAAALL;
        *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v202 = v70;
        v203 = v70;
        v200 = v70;
        v201 = v70;
        *&v198[16] = v70;
        v199 = v70;
        *v198 = v70;
        if ((bssl::ssl_client_hello_init(v27, v198, v215[1], v216) & 1) == 0)
        {
          ERR_put_error(16, 0, 131, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 803);
          bssl::ssl_send_alert(v27, 2, 50);
          goto LABEL_285;
        }

        v71 = *(v27 + 6);
        if (*(v71 + 216) != 1)
        {
          goto LABEL_152;
        }

        v211[0] = 0xAAAAAAAAAAAAAAAALL;
        v211[1] = 0xAAAAAAAAAAAAAAAALL;
        if ((bssl::ssl_client_hello_get_extension(v198, v211, 65037) & 1) == 0)
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 814);
          bssl::ssl_send_alert(v27, 2, 109);
          goto LABEL_285;
        }

        LOWORD(v223) = -21846;
        LOWORD(v220) = -21846;
        LOBYTE(ses[0]) = -86;
        LOBYTE(v214) = -86;
        memset(v208, 170, sizeof(v208));
        *&d = 0xAAAAAAAAAAAAAAAALL;
        *(&d + 1) = 0xAAAAAAAAAAAAAAAALL;
        u8 = CBS_get_u8(v211, ses);
        v73 = 50;
        v74 = 829;
        if (!u8 || LOBYTE(ses[0]))
        {
          goto LABEL_259;
        }

        if (CBS_get_u16(v211, &v223) && CBS_get_u16(v211, &v220) && CBS_get_u8(v211, &v214) && CBS_get_u16_length_prefixed(v211, v208))
        {
          u16_length_prefixed = CBS_get_u16_length_prefixed(v211, &d);
          v74 = 829;
          if (u16_length_prefixed && !v211[1])
          {
            v76 = v223;
            v77 = EVP_HPKE_CTX_kdf((this + 752));
            if (v76 == EVP_HPKE_KDF_id(v77) && (v78 = v220, v79 = EVP_HPKE_CTX_aead(this + 752), v78 == EVP_HPKE_KDF_id(v79)))
            {
              v73 = 47;
              v74 = 838;
              if (v214 == *(this + 1612) && !*&v208[2])
              {
                LOBYTE(v207) = 50;
                LOBYTE(v196) = -86;
                if (bssl::ssl_client_hello_decrypt(this, &v207, &v196, v190, v198, d, *(&d + 1)))
                {
                  if (bssl::SSL_HANDSHAKE::GetClientHello(this, v215, v198))
                  {
                    v71 = *(v27 + 6);
LABEL_152:
                    if ((*(v71 + 222) & 0x20) != 0)
                    {
                      v211[0] = 0xAAAAAAAAAAAAAAAALL;
                      v211[1] = 0xAAAAAAAAAAAAAAAALL;
                      if ((bssl::ssl_client_hello_get_extension(v198, v211, 41) & 1) == 0)
                      {
                        ERR_put_error(16, 0, 303, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 873);
                        bssl::ssl_send_alert(v27, 2, 47);
                        goto LABEL_285;
                      }

                      memset(v208, 170, sizeof(v208));
                      *&d = 0xAAAAAAAAAAAAAAAALL;
                      *(&d + 1) = 0xAAAAAAAAAAAAAAAALL;
                      LODWORD(v223) = -1431655766;
                      LOBYTE(v220) = 50;
                      if ((bssl::ssl_ext_pre_shared_key_parse_clienthello(this, v208, &d, &v223, &v220, v198, v211) & 1) == 0)
                      {
                        v106 = v220;
LABEL_284:
                        bssl::ssl_send_alert(v27, 2, v106);
                        goto LABEL_285;
                      }

                      if (!bssl::tls13_verify_psk_binder(this, *(this + 192), v215, &d))
                      {
                        v106 = 51;
                        goto LABEL_284;
                      }
                    }

                    if (bssl::resolve_ecdhe_secret(this, v198) && bssl::ssl_hash_message(this, v215))
                    {
                      if ((*(*v27 + 40))(v27))
                      {
                        bssl::ssl_send_alert(v27, 2, 10);
                        ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 908);
                        goto LABEL_285;
                      }

                      (*(*v27 + 32))(v27);
                      OPENSSL_free(*(this + 77));
                      *v190 = 0;
                      v190[1] = 0;
                      v5 = 1;
                      *(this + 6) = 4;
                      goto LABEL_286;
                    }
                  }

                  else
                  {
                    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 857);
                  }
                }

                else
                {
                  ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 850);
                  bssl::ssl_send_alert(v27, 2, v207);
                }

LABEL_285:
                v5 = 0;
                goto LABEL_286;
              }
            }

            else
            {
              v73 = 47;
              v74 = 838;
            }
          }
        }

        else
        {
          v74 = 829;
        }

LABEL_259:
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", v74);
        bssl::ssl_send_alert(v27, 2, v73);
        goto LABEL_285;
      case 4:
        v63 = *this;
        v64 = *(*this + 48);
        v65 = *(this + 199);
        if (v65)
        {
          if ((*(this + 1602) & 8) != 0 || *(v65 + 24) != 32)
          {
            RAND_bytes((v64 + 16), 32);
            if ((*(this + 1602) & 8) != 0)
            {
              if (!bssl::Array<unsigned char>::InitUninitialized(v65 + 16, 0x20uLL))
              {
                goto LABEL_285;
              }

              v95 = 0;
              v96 = *(v65 + 16);
              do
              {
                *(v96 + v95) = *(v64 + 16 + v95);
                ++v95;
              }

              while (v95 != 32);
            }
          }

          else
          {
            v66 = *(v65 + 16);
            v67 = v66[1];
            *(v64 + 16) = *v66;
            *(v64 + 32) = v67;
          }
        }

        else
        {
          RAND_bytes((v64 + 16), 32);
        }

        if (SSL_is_dtls(v63))
        {
          v97 = -259;
        }

        else
        {
          v97 = 771;
        }

        v214 = 0uLL;
        *&v98 = 0xAAAAAAAAAAAAAAAALL;
        *(&v98 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v198[16] = v98;
        v199 = v98;
        *v198 = v98;
        CBB_zero(v198);
        *&v99 = 0xAAAAAAAAAAAAAAAALL;
        *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v216 = v99;
        v217 = v99;
        *v215 = v99;
        v212 = v99;
        v213 = v99;
        v210 = v99;
        *v211 = v99;
        *v208 = v99;
        v209 = v99;
        if (!(*(*v63 + 88))(v63, v198, v215, 2))
        {
          goto LABEL_456;
        }

        if (!CBB_add_u16(v215, v97))
        {
          goto LABEL_456;
        }

        if (!CBB_add_bytes(v215, (*(v63 + 48) + 16), 0x20uLL))
        {
          goto LABEL_456;
        }

        if (!CBB_add_u8_length_prefixed(v215, v208))
        {
          goto LABEL_456;
        }

        if (!CBB_add_bytes(v208, v192, *(this + 1645)))
        {
          goto LABEL_456;
        }

        v101 = SSL_CIPHER_get_protocol_id(*(this + 196), v100);
        if (!CBB_add_u16(v215, v101) || !CBB_add_u8(v215, 0) || !CBB_add_u16_length_prefixed(v215, v211) || !bssl::ssl_ext_pre_shared_key_add_serverhello(this, v211) || !bssl::ssl_ext_key_share_add_serverhello(this, v211) || !bssl::ssl_ext_supported_versions_add_serverhello(this, v211) || ((*(*v63 + 96))(v63, v198, &v214) & 1) == 0)
        {
          goto LABEL_456;
        }

        v102 = *(this + 400);
        if (*(*(v63 + 48) + 216) == 1)
        {
          if ((v102 & 1) == 0)
          {
            __assert_rtn("do_send_server_hello", "tls13_server.cc", 960, "ssl->s3->ech_status != ssl_ech_accepted || hs->ech_is_inner");
          }
        }

        else if ((v102 & 1) == 0)
        {
          goto LABEL_354;
        }

        v140 = bssl::ssl_ech_confirmation_signal_hello_offset(v63, v100);
        if (!bssl::ssl_ech_accept_confirmation(this, v64 + 40, 8, *(v63 + 48) + 48, 32, (this + 424), 0, v141, v214, *(&v214 + 1), v140))
        {
          goto LABEL_456;
        }

        if (*(&v214 + 1) < v140)
        {
LABEL_465:
          abort();
        }

        *(v214 + v140) = *(v64 + 40);
LABEL_354:
        v142 = *(*v63 + 104);
        v207 = 0uLL;
        OPENSSL_free(0);
        v207 = v214;
        v214 = 0uLL;
        v143 = v142(v63, &v207);
        bssl::Array<unsigned char>::~Array(&v207);
        if ((v143 & 1) == 0)
        {
          goto LABEL_456;
        }

        OPENSSL_free(*v188);
        *v188 = 0;
        *(v188 + 1) = 0;
        if ((*(*(v63 + 48) + 223) & 0x10) == 0 && !(*(*v63 + 112))(v63))
        {
          goto LABEL_456;
        }

        if (!bssl::tls13_derive_handshake_secrets(this, v100) || !bssl::tls13_set_traffic_key(v63, 2, 1, *(this + 192), this + 179, *(this + 227)) || !(*(*v63 + 88))(v63, v198, v215, 8) || !bssl::ssl_add_serverhello_tlsext(this, v215) || !bssl::ssl_add_message_cbb(v63, v198))
        {
          goto LABEL_456;
        }

        if ((*(*(v63 + 48) + 222) & 0x20) != 0)
        {
          v144 = *(this + 400);
        }

        else
        {
          v144 = *(this + 400);
          if (!*(this + 210))
          {
            v145 = *(this + 1);
            v146 = v144 & 0xFFFFFFDF;
            v8 = (v144 & 0x2000000) == 0;
            v144 = v144 & 0xFFFFFFDF | (32 * (*(v145 + 308) & 1));
            *(this + 400) = v144;
            v147 = *(v145 + 308) & 4;
            if (!v8 && v147 != 0)
            {
              v144 = v146;
            }

            *(this + 400) = v144;
          }
        }

        if ((v144 & 0x20) != 0 && !*v189)
        {
          *&v180 = 0xAAAAAAAAAAAAAAAALL;
          *(&v180 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v227 = v180;
          v228 = v180;
          v225 = v180;
          d = v180;
          v223 = v180;
          v224 = v180;
          v221 = v180;
          v222 = v180;
          v220 = v180;
          if (!(*(*v63 + 88))(v63, v198, v215, 13))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u8(v215, 0))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16_length_prefixed(v215, &d))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16(&d, 0xDu))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16_length_prefixed(&d, &v223))
          {
            goto LABEL_456;
          }

          if (!CBB_add_u16_length_prefixed(&v223, &v220))
          {
            goto LABEL_456;
          }

          if (!bssl::tls12_add_verify_sigalgs(this, &v220))
          {
            goto LABEL_456;
          }

          if (bssl::ssl_has_client_CAs(*(this + 1), v100))
          {
            *&v181 = 0xAAAAAAAAAAAAAAAALL;
            *(&v181 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v205 = v181;
            v206 = v181;
            *ses = v181;
            if (!CBB_add_u16(&d, 0x2Fu) || !CBB_add_u16_length_prefixed(&d, ses) || !bssl::ssl_add_client_CA_list(this, ses) || !CBB_flush(&d))
            {
              goto LABEL_456;
            }
          }

          if ((bssl::ssl_add_message_cbb(v63, v198) & 1) == 0)
          {
            goto LABEL_456;
          }
        }

        if ((*(*(v63 + 48) + 222) & 0x20) != 0 || *v194)
        {
          v179 = 6;
LABEL_431:
          *(this + 6) = v179;
          v5 = 1;
LABEL_457:
          CBB_cleanup(v198, v100);
          OPENSSL_free(v214);
          goto LABEL_286;
        }

        if (bssl::ssl_has_certificate(this, v100) || bssl::ssl_has_server_raw_public_key_certificate(this, v182))
        {
          if (bssl::tls13_add_certificate(this, v182, v183, v184, v185))
          {
            v179 = 5;
            goto LABEL_431;
          }
        }

        else
        {
          ERR_put_error(16, 0, 174, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1052);
        }

LABEL_456:
        v5 = 0;
        goto LABEL_457;
      case 5:
        v53 = bssl::tls13_add_certificate_verify(this, a2);
        if (v53)
        {
          if (v53 == 2)
          {
            goto LABEL_285;
          }

          if (v53 != 1)
          {
            bssl::tls13_server_handshake();
          }

          v5 = 9;
          v26 = 5;
        }

        else
        {
          v26 = 6;
        }

        goto LABEL_225;
      case 6:
        v54 = *(this + 400);
        if ((v54 & 0x80000) != 0)
        {
LABEL_115:
          v5 = 17;
          goto LABEL_286;
        }

        v55 = *this;
        *(this + 400) = v54 | 0x1000000;
        if (!bssl::tls13_add_finished(this, a2))
        {
          goto LABEL_285;
        }

        v56 = bssl::SSLTranscript::DigestLen((this + 424));
        if (!bssl::tls13_advance_key_schedule(this, &bssl::kZeroes, v56) || !bssl::tls13_derive_application_secrets(this, a2) || !bssl::tls13_set_traffic_key(v55, 3, 1, *(this + 192), this + 277, *(this + 325)))
        {
          goto LABEL_285;
        }

        *(this + 6) = 7;
        if ((*(this + 1602) & 4) != 0)
        {
          v5 = 7;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_286;
      case 7:
        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_65;
        }

        if (!*(*this + 168) && (bssl::SSLTranscript::Update(this + 424, bssl::do_send_half_rtt_ticket(bssl::SSL_HANDSHAKE *)::kEndOfEarlyData, 4uLL) & 1) == 0)
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1121);
          goto LABEL_285;
        }

        *v198 = 0xAAAAAAAAAAAAAAAALL;
        v88 = bssl::SSLTranscript::DigestLen((this + 424));
        v89 = v88;
        if (v88 > 0x30)
        {
          goto LABEL_465;
        }

        v90 = *(this + 374);
        if (v88 > v90)
        {
          bzero(&v195[v90], v88 - v90);
        }

        *(this + 374) = v89;
        if (bssl::tls13_finished_mac(this, v195, v198, 0))
        {
          if (*v198 == *(this + 374))
          {
            if (SSL_is_dtls(*this))
            {
              bssl::tls13_server_handshake();
            }

            v91 = *(this + 374);
            LOWORD(v215[0]) = 20;
            BYTE2(v215[0]) = 0;
            BYTE3(v215[0]) = v91;
            if (bssl::SSLTranscript::Update(this + 424, v215, 4uLL) && bssl::SSLTranscript::Update(this + 424, v195, *(this + 374)) && bssl::tls13_derive_resumption_secret(this, a2) && bssl::add_new_session_tickets(this, v211, a3))
            {
LABEL_65:
              *(this + 6) = 8;
LABEL_166:
              v5 = 4;
              goto LABEL_286;
            }
          }

          else
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1133);
          }
        }

        goto LABEL_285;
      case 8:
        v61 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_124;
        }

        if (!bssl::tls13_set_traffic_key(*this, 1, 0, *(this + 192), this + 81, *(this + 129)))
        {
          goto LABEL_285;
        }

        *(this + 400) |= 0x3400u;
LABEL_124:
        if (*(v61 + 168) || SSL_is_dtls(v61))
        {
          if (!bssl::tls13_set_traffic_key(v61, 2, 0, *(this + 192), this + 130, *(this + 178)))
          {
            goto LABEL_285;
          }

          v62 = 12;
        }

        else
        {
          v62 = 14;
        }

        *(this + 6) = 9;
        if ((*(*(v61 + 48) + 222) & 0x200) != 0)
        {
          v5 = v62;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_286;
      case 9:
        v37 = *this;
        if (*(*this + 168) || SSL_is_dtls(*this))
        {
          goto LABEL_63;
        }

        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_227;
        }

        *&v199 = 0xAAAAAAAAAAAAAAAALL;
        *&v103 = 0xAAAAAAAAAAAAAAAALL;
        *(&v103 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v198 = v103;
        *&v198[16] = v103;
        if (!(*(*v37 + 24))(v37, v198))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v37, v198, 5, v104))
        {
          goto LABEL_285;
        }

        if (*&v198[16])
        {
          bssl::ssl_send_alert(v37, 2, 50);
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1210);
        }

        else
        {
          (*(*v37 + 32))(v37);
LABEL_227:
          if (bssl::tls13_set_traffic_key(v37, 2, 0, *(this + 192), this + 130, *(this + 178)))
          {
LABEL_63:
            v36 = 10;
            goto LABEL_161;
          }
        }

        goto LABEL_285;
      case 10:
        if ((*(*(this + 192) + 440) & 0x40) == 0)
        {
          goto LABEL_60;
        }

        v27 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) != 0)
        {
          goto LABEL_60;
        }

        *&v199 = 0xAAAAAAAAAAAAAAAALL;
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v198 = v28;
        *&v198[16] = v28;
        if (!(*(*v27 + 24))(v27, v198, a3))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v27, v198, 8, v29))
        {
          goto LABEL_285;
        }

        *v211 = *&v198[8];
        memset(v208, 170, sizeof(v208));
        if (!CBS_get_u16_length_prefixed(v211, v208) || v211[1])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1243);
          bssl::ssl_send_alert(v27, 2, 50);
          goto LABEL_285;
        }

        if ((*(*(this + 1) + 309) & 0x2000) != 0)
        {
          v30 = 17613;
        }

        else
        {
          v30 = 17513;
        }

        v215[0] = 0xAAAAAAAA0001AAAALL;
        LOWORD(v215[0]) = v30;
        v215[1] = 0;
        *&v216 = 0;
        LOBYTE(v223) = 50;
        *&d = v215;
        if ((bssl::ssl_parse_extensions(v208, &v223, &d, 1, 0) & 1) == 0)
        {
          v106 = v223;
          goto LABEL_284;
        }

        if ((BYTE3(v215[0]) & 1) == 0)
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_server.cc", 1261);
          v106 = 109;
          goto LABEL_284;
        }

        v31 = *v193;
        v32 = v215[1];
        v33 = v216;
        if (!bssl::Array<unsigned char>::InitUninitialized(&(*v193)[1].sid_ctx[28], v216))
        {
          goto LABEL_283;
        }

        if (v33)
        {
          v34 = *&v31[1].sid_ctx[28];
          do
          {
            ssl_version = v32->ssl_version;
            v32 = (v32 + 1);
            *v34++ = ssl_version;
            --v33;
          }

          while (v33);
        }

        if ((bssl::ssl_hash_message(this, v198) & 1) == 0)
        {
LABEL_283:
          v106 = 80;
          goto LABEL_284;
        }

        (*(*v27 + 32))(v27);
LABEL_60:
        v36 = 11;
        goto LABEL_161;
      case 11:
        v80 = *this;
        if ((*(this + 1600) & 0x20) == 0)
        {
          if ((*(*(v80 + 6) + 222) & 0x20) == 0)
          {
            (*v193)->timeout = 0;
          }

LABEL_160:
          v36 = 13;
          goto LABEL_161;
        }

        v92 = *(*(this + 1) + 308);
        *&v199 = 0xAAAAAAAAAAAAAAAALL;
        *&v93 = 0xAAAAAAAAAAAAAAAALL;
        *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v198 = v93;
        *&v198[16] = v93;
        if (!(*(*v80 + 24))(v80, v198, a3))
        {
          goto LABEL_245;
        }

        if (bssl::ssl_check_message_type(v80, v198, 11, v94) && bssl::tls13_process_certificate(this, v198, (v92 & 2) == 0) && bssl::ssl_hash_message(this, v198))
        {
          (*(*v80 + 32))(v80);
          v36 = 12;
          goto LABEL_161;
        }

        goto LABEL_285;
      case 12:
        v57 = *this;
        if (!EVP_MD_CTX_md(*(*(this + 192) + 136)))
        {
          goto LABEL_160;
        }

        *&v199 = 0xAAAAAAAAAAAAAAAALL;
        *&v58 = 0xAAAAAAAAAAAAAAAALL;
        *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v198 = v58;
        *&v198[16] = v58;
        if (!(*(*v57 + 24))(v57, v198))
        {
          goto LABEL_245;
        }

        v59 = bssl::ssl_verify_peer_cert(this, a2);
        if (v59 == 1)
        {
          goto LABEL_285;
        }

        if (v59 == 2)
        {
          v5 = 16;
          v26 = 12;
          goto LABEL_225;
        }

        if (!bssl::ssl_check_message_type(v57, v198, 15, v60) || !bssl::tls13_process_certificate_verify(this, v198) || !bssl::ssl_hash_message(this, v198))
        {
          goto LABEL_285;
        }

        (*(*v57 + 32))(v57);
        v5 = 1;
        v26 = 13;
        goto LABEL_225;
      case 13:
        if ((*(this + 1603) & 2) == 0)
        {
          v26 = 14;
LABEL_225:
          *(this + 6) = v26;
          goto LABEL_286;
        }

        v85 = *this;
        *&v199 = 0xAAAAAAAAAAAAAAAALL;
        *&v86 = 0xAAAAAAAAAAAAAAAALL;
        *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v198 = v86;
        *&v198[16] = v86;
        if (!(*(*v85 + 24))(v85, v198, a3))
        {
LABEL_245:
          v5 = 3;
          goto LABEL_286;
        }

        if (bssl::ssl_check_message_type(v85, v198, 203, v87) && bssl::tls1_verify_channel_id(this, v198) && bssl::ssl_hash_message(this, v198))
        {
          (*(*v85 + 32))(v85);
          v36 = 14;
LABEL_161:
          *(this + 6) = v36;
          goto LABEL_162;
        }

        goto LABEL_285;
      case 14:
        v81 = *this;
        *&v199 = 0xAAAAAAAAAAAAAAAALL;
        *&v82 = 0xAAAAAAAAAAAAAAAALL;
        *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v198 = v82;
        *&v198[16] = v82;
        if (!(*(*v81 + 24))(v81, v198, a3))
        {
          goto LABEL_245;
        }

        if (!bssl::ssl_check_message_type(v81, v198, 20, v83) || !bssl::tls13_process_finished(this, v198, (*(*(v81 + 6) + 222) >> 9) & 1) || !bssl::tls13_set_traffic_key(v81, 3, 0, *(this + 192), this + 228, *(this + 276)))
        {
          goto LABEL_285;
        }

        if ((*(*(v81 + 6) + 222) & 0x200) != 0)
        {
          v84 = 16;
        }

        else
        {
          if (!bssl::ssl_hash_message(this, v198) || !bssl::tls13_derive_resumption_secret(this, a2))
          {
            goto LABEL_285;
          }

          v84 = 15;
        }

        *(this + 6) = v84;
        (*(*v81 + 32))(v81);
LABEL_162:
        v5 = 1;
        goto LABEL_286;
      case 15:
        v198[0] = -86;
        if (!bssl::add_new_session_tickets(this, v198, a3))
        {
          goto LABEL_285;
        }

        *(this + 6) = 16;
        if (*(*this + 168) && (v198[0] & 1) != 0)
        {
          goto LABEL_166;
        }

        goto LABEL_286;
      case 16:
        return v5;
      default:
        goto LABEL_285;
    }
  }
}

void sub_1A903DBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  CBB_cleanup(&a23, a2);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

BOOL boringssl_context_evaluate_trust_async_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1 && *a1 == -1252936367)
  {
    v7 = 0;
    if (v5)
    {
      if (a2)
      {
        v8 = *(a1 + 8);
        if (v8)
        {
          v9 = boringssl_context_copy_global_trust_queue_for_qos(*(a1 + 8));
          v7 = v9 != 0;
          if (v9)
          {
            v10 = v8;
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __boringssl_context_evaluate_trust_async_internal_block_invoke;
            v34[3] = &unk_1E78695C0;
            v38 = a1;
            v39 = v10;
            v11 = v10;
            v35 = v11;
            v37 = v6;
            v40 = a2;
            v12 = v9;
            v36 = v12;
            v13 = MEMORY[0x1AC57F4F0](v34);
            BYTE6(v11[68].isa) |= 8u;
            WeakRetained = objc_loadWeakRetained(&v11[2].isa);
            if (!WeakRetained || (v15 = WeakRetained, v16 = objc_loadWeakRetained(&v11[2].isa), v17 = v16[435], v16, v15, (v17 & 1) == 0))
            {
              v18 = objc_loadWeakRetained(&v11[2].isa);
              if (v18)
              {
                v19 = objc_loadWeakRetained(&v11[2].isa);
                v20 = (v19[435] & 1) == 0;
              }

              else
              {
                v20 = 1;
              }

              if (v20)
              {
                if (g_boringssl_log)
                {
                  v29 = g_boringssl_log;
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = objc_loadWeakRetained(&v11[2].isa);
                    if (v30)
                    {
                      v33 = objc_loadWeakRetained(&v11[2].isa);
                      v31 = v33 + 351;
                    }

                    else
                    {
                      v31 = &unk_1A9098A9F;
                    }

                    v32 = objc_loadWeakRetained(&v11[2].isa);
                    *buf = 136446978;
                    v42 = "boringssl_context_evaluate_trust_async_internal";
                    v43 = 1024;
                    v44 = 1694;
                    v45 = 2082;
                    v46 = v31;
                    v47 = 2048;
                    v48 = v32;
                    _os_log_impl(&dword_1A8FF5000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Asyncing for internal verify block", buf, 0x26u);

                    if (v30)
                    {
                    }
                  }
                }
              }
            }

            if (v13)
            {
              ++v11[62].isa;
              dispatch_async(v12, v13);
            }
          }

          else
          {
            v22 = objc_loadWeakRetained(v8 + 2);
            if (v22)
            {
              v23 = v22;
              v24 = objc_loadWeakRetained(v8 + 2);
              v25 = v24[435];

              if (v25)
              {
                goto LABEL_37;
              }
            }

            v26 = objc_loadWeakRetained(v8 + 2);
            if (v26)
            {
              v27 = objc_loadWeakRetained(v8 + 2);
              v28 = (v27[435] & 1) == 0;
            }

            else
            {
              v28 = 1;
            }

            if (!v28 || !g_boringssl_log)
            {
              goto LABEL_37;
            }

            v11 = g_boringssl_log;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              boringssl_context_evaluate_trust_async_internal_cold_1();
            }
          }

LABEL_37:
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id boringssl_context_copy_global_trust_queue_for_qos(void *a1)
{
  v1 = a1;
  scheduling_mode = nw_context_get_scheduling_mode();
  if (scheduling_mode == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_2;
    v9[3] = &unk_1E785EB40;
    v3 = &v10;
    v10 = v1;
    if (boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueueToken != -1)
    {
      dispatch_once(&boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueueToken, v9);
    }

    v4 = &boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueue;
  }

  else if (scheduling_mode == 2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __boringssl_context_copy_global_trust_queue_for_qos_block_invoke;
    block[3] = &unk_1E785EB40;
    v3 = &v12;
    v12 = v1;
    if (boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueueToken != -1)
    {
      dispatch_once(&boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueueToken, block);
    }

    v4 = &boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueue;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_3;
    v7[3] = &unk_1E785EB40;
    v3 = &v8;
    v8 = v1;
    if (boringssl_context_copy_global_trust_queue_for_qos_defaultQueueToken != -1)
    {
      dispatch_once(&boringssl_context_copy_global_trust_queue_for_qos_defaultQueueToken, v7);
    }

    v4 = &boringssl_context_copy_global_trust_queue_for_qos_defaultQueue;
  }

  v5 = *v4;

  return v5;
}

void __boringssl_context_evaluate_trust_async_internal_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (boringssl_session_get_state(*(a1 + 56)) > 3 || boringssl_session_is_cancelled(*(a1 + 56)))
  {
    *(*(a1 + 64) + 550) &= ~8u;
    return;
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __boringssl_context_evaluate_trust_async_internal_block_invoke_2;
  v44[3] = &unk_1E7869570;
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v45 = v2;
  v47 = v3;
  v41 = *(a1 + 48);
  v4 = v41;
  v46 = v41;
  v5 = MEMORY[0x1AC57F4F0](v44);
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((v6 + 16));
  if (!WeakRetained || (v8 = WeakRetained, v9 = objc_loadWeakRetained((*(a1 + 32) + 16)), v10 = v9[435], v9, v8, (v10 & 1) == 0))
  {
    v11 = *(a1 + 32);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = objc_loadWeakRetained((v11 + 16));
    if (v12)
    {
      v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v14 = (v13[435] & 1) == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
LABEL_13:
      if (g_boringssl_log)
      {
        v15 = g_boringssl_log;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
LABEL_15:

          goto LABEL_16;
        }

        v26 = *(a1 + 32);
        if (v26)
        {
          v36 = objc_loadWeakRetained((v26 + 16));
          v37 = *(a1 + 32);
          *&v41 = v36;
          if (v36)
          {
            v27 = v37 != 0;
            if (v37)
            {
              v36 = objc_loadWeakRetained((v37 + 16));
              v37 = *(a1 + 32);
            }

            else
            {
              v36 = 0;
            }

            v30 = v36 + 351;
          }

          else
          {
            v27 = 0;
            v30 = &unk_1A9098A9F;
          }

          v40 = v36;
          if (v37)
          {
            v28 = objc_loadWeakRetained((v37 + 16));
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

        *buf = 136446978;
        v49 = "boringssl_context_evaluate_trust_async_internal_block_invoke_2";
        v50 = 1024;
        v51 = 1681;
        v52 = 2082;
        v53 = v30;
        v54 = 2048;
        v55 = v28;
        _os_log_debug_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Invoking SecTrustEvaluateAsyncWithError", buf, 0x26u);
        if (v29)
        {
          if (!v27)
          {
            goto LABEL_50;
          }
        }

        else
        {

          if (!v27)
          {
LABEL_50:
            if (!v26)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

        if (!v26)
        {
          goto LABEL_15;
        }

LABEL_54:

        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (SecTrustEvaluateAsyncWithError(*(a1 + 72), *(a1 + 40), v5))
  {
    v16 = *(a1 + 32);
    if (!v16)
    {
      goto LABEL_23;
    }

    v17 = objc_loadWeakRetained((v16 + 16));
    if (v17)
    {
      v18 = v17;
      v19 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v20 = v19[435];

      if (v20)
      {
        goto LABEL_29;
      }
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = objc_loadWeakRetained((v21 + 16));
      if (v22)
      {
        v23 = objc_loadWeakRetained((*(a1 + 32) + 16));
        v24 = (v23[435] & 1) == 0;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_23:
      v24 = 1;
    }

    if (!g_boringssl_log)
    {
LABEL_29:
      v42 = *(a1 + 32);
      v43 = *(a1 + 48);
      nw_queue_context_async_if_needed();

      goto LABEL_30;
    }

    v25 = g_boringssl_log;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_28:

      goto LABEL_29;
    }

    v31 = *(a1 + 32);
    if (v31)
    {
      v38 = objc_loadWeakRetained((v31 + 16));
      v24 = v38;
      v39 = *(a1 + 32);
      if (v38)
      {
        v32 = v39 != 0;
        if (v39)
        {
          v38 = objc_loadWeakRetained((v39 + 16));
          v39 = *(a1 + 32);
        }

        else
        {
          v38 = 0;
        }

        v35 = v38 + 351;
      }

      else
      {
        v32 = 0;
        v35 = &unk_1A9098A9F;
      }

      *&v41 = v38;
      if (v39)
      {
        v33 = objc_loadWeakRetained((v39 + 16));
        v34 = 0;
      }

      else
      {
        v33 = 0;
        v34 = 1;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 1;
      v35 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    v49 = "boringssl_context_evaluate_trust_async_internal_block_invoke";
    v50 = 1024;
    v51 = 1684;
    v52 = 2082;
    v53 = v35;
    v54 = 2048;
    v55 = v33;
    _os_log_error_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] SecTrustEvaluateAsyncWithError failed", buf, 0x26u);
    if (v34)
    {
      if (!v32)
      {
        goto LABEL_62;
      }
    }

    else
    {

      if (!v32)
      {
LABEL_62:
        if (!v31)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }
    }

    if (!v31)
    {
      goto LABEL_28;
    }

LABEL_66:

    goto LABEL_28;
  }

LABEL_30:
}

const char *bssl::ssl_server_handshake_state(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *(this + 5);
  result = "TLS server start_accept";
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = "TLS server read_client_hello";
      break;
    case 2:
      result = "TLS server read_client_hello_after_ech";
      break;
    case 3:
      result = "TLS server cert_callback";
      break;
    case 4:
      result = bssl::tls13_server_handshake_state(this);
      break;
    case 5:
      result = "TLS server select_parameters";
      break;
    case 6:
      result = "TLS server send_server_hello";
      break;
    case 7:
      result = "TLS server send_server_certificate";
      break;
    case 8:
      result = "TLS server send_server_key_exchange";
      break;
    case 9:
      result = "TLS server send_server_hello_done";
      break;
    case 10:
      result = "TLS server read_client_certificate";
      break;
    case 11:
      result = "TLS server verify_client_certificate";
      break;
    case 12:
      result = "TLS server read_client_key_exchange";
      break;
    case 13:
      result = "TLS server read_client_certificate_verify";
      break;
    case 14:
      result = "TLS server read_change_cipher_spec";
      break;
    case 15:
      result = "TLS server process_change_cipher_spec";
      break;
    case 16:
      result = "TLS server read_next_proto";
      break;
    case 17:
      result = "TLS server read_channel_id";
      break;
    case 18:
      result = "TLS server read_client_finished";
      break;
    case 19:
      result = "TLS server send_server_finished";
      break;
    case 20:
      result = "TLS server finish_server_handshake";
      break;
    case 21:
      result = "TLS server done";
      break;
    default:
      result = "TLS server unknown";
      break;
  }

  return result;
}

const char *bssl::tls13_server_handshake_state(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 0x10)
  {
    return "TLS 1.3 server unknown";
  }

  else
  {
    return off_1E785ED98[v1];
  }
}

id *boringssl_identity_copy_certificate_chain(id *result)
{
  if (result)
  {
    return result[2];
  }

  return result;
}

id *boringssl_identity_copy_sec_identity(id *result)
{
  if (result)
  {
    return result[3];
  }

  return result;
}

const char *__cdecl SSL_get_servername(const SSL *s, const int type)
{
  if (type)
  {
    return 0;
  }

  result = s->msg_callback_arg;
  if (!result)
  {
    return *(s->handshake_func + 64);
  }

  return result;
}

uint64_t bssl::ssl_server_handshake(bssl *this, ssl_st *cipher_by_value, ssl_session_st *a3)
{
  v223 = (this + 1528);
  v258 = *MEMORY[0x1E69E9840];
  v224 = (this + 1464);
  v225 = (this + 1520);
  v226 = this + 1613;
  v227 = this + 1645;
  v221 = (this + 1552);
  v222 = (this + 616);
  while (2)
  {
    v4 = *(this + 5);
    switch(v4)
    {
      case 0:
        bssl::ssl_do_info_callback(*this, 0x10);
        prev_session = 1;
        goto LABEL_9;
      case 1:
        v38 = *this;
        *&v237 = 0xAAAAAAAAAAAAAAAALL;
        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v236 = v39;
        *v235 = v39;
        if (!(*(*v38 + 24))(v38, v235, a3))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v38, v235, 1, v40))
        {
          goto LABEL_412;
        }

        *&v41 = 0xAAAAAAAAAAAAAAAALL;
        *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v247 = v41;
        v248 = v41;
        v245 = v41;
        v246 = v41;
        v243[1] = v41;
        v244 = v41;
        v243[0] = v41;
        if ((bssl::ssl_client_hello_init(v38, v243, v235[1], v236) & 1) == 0)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 683);
          bssl::ssl_send_alert(v38, 2, 50);
          goto LABEL_412;
        }

        if ((*(*v38 + 40))(v38))
        {
          bssl::ssl_send_alert(v38, 2, 10);
          ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 692);
          goto LABEL_412;
        }

        if ((*(*(this + 1) + 309) & 0x40) != 0)
        {
          prev_session = 6;
          goto LABEL_413;
        }

        v228 = 50;
        if (*(*(v38 + 6) + 216) == 2)
        {
          goto LABEL_283;
        }

        v137 = *this;
        v232[0] = 0xAAAAAAAAAAAAAAAALL;
        v232[1] = 0xAAAAAAAAAAAAAAAALL;
        if ((bssl::ssl_client_hello_get_extension(v243, v232, 65037) & 1) == 0)
        {
          goto LABEL_283;
        }

        v242 = -86;
        if (!CBS_get_u8(v232, &v242))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 552);
LABEL_496:
          v201 = 50;
          v228 = 50;
LABEL_497:
          bssl::ssl_send_alert(v38, 2, v201);
          goto LABEL_412;
        }

        if (v242)
        {
          goto LABEL_283;
        }

        v241 = -86;
        v240 = -21846;
        v239 = -21846;
        memset(v229, 170, 16);
        *v238 = 0xAAAAAAAAAAAAAAAALL;
        *&v238[2] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16(v232, &v240) || !CBS_get_u16(v232, &v239) || !CBS_get_u8(v232, &v241) || !CBS_get_u16_length_prefixed(v232, v229) || !CBS_get_u16_length_prefixed(v232, v238) || v232[1])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 569);
          goto LABEL_496;
        }

        v193 = *(v137 + 120);
        CRYPTO_MUTEX_lock_read((v193 + 24));
        v194 = *(*(v137 + 120) + 776);
        if (v194)
        {
          SSL_CREDENTIAL_up_ref(v194);
        }

        v231[0] = 0;
        std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](v221, v194);
        std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](v231, 0);
        CRYPTO_MUTEX_unlock_read((v193 + 24));
        v195 = *v221;
        if (!*v221 || (v196 = *(v195 + 2)) == 0)
        {
LABEL_490:
          v199 = *(v137 + 48);
          v200 = 2;
          goto LABEL_491;
        }

        v197 = *(v195 + 1);
        v198 = 8 * v196;
        while (1)
        {
          EVP_HPKE_CTX_cleanup(this + 752);
          EVP_HPKE_CTX_zero(this + 752);
          if (v241 != *(*v197 + 67) || !bssl::ECHServerConfig::SetupContext(*v197, this + 94, v240, v239, *v229, *&v229[8]))
          {
            ERR_clear_error();
            goto LABEL_489;
          }

          LOBYTE(v231[0]) = -86;
          if (bssl::ssl_client_hello_decrypt(this, &v228, v231, v222, v243, *v238, *&v238[2]))
          {
            break;
          }

          if ((v231[0] & 1) == 0)
          {
            ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 605);
            v201 = v228;
            goto LABEL_497;
          }

          ERR_clear_error();
          v228 = 50;
LABEL_489:
          ++v197;
          v198 -= 8;
          if (!v198)
          {
            goto LABEL_490;
          }
        }

        *(this + 1612) = v241;
        v199 = *(v137 + 48);
        v200 = 1;
LABEL_491:
        *(v199 + 216) = v200;
LABEL_283:
        if (bssl::SSL_HANDSHAKE::GetClientHello(this, v235, v243))
        {
          if (bssl::extract_sni(this, &v228, v243))
          {
            v6 = 2;
            goto LABEL_231;
          }

          bssl::ssl_send_alert(v38, 2, v228);
        }

        else
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 712);
        }

LABEL_412:
        prev_session = 0;
LABEL_413:
        if (*(this + 5) != v4)
        {
          bssl::ssl_do_info_callback(*this, 0x2001);
        }

        if (prev_session == 1)
        {
          continue;
        }

        return prev_session;
      case 2:
        v8 = *this;
        *&v237 = 0xAAAAAAAAAAAAAAAALL;
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v236 = v19;
        *v235 = v19;
        v247 = v19;
        v248 = v19;
        v245 = v19;
        v246 = v19;
        v243[1] = v19;
        v244 = v19;
        v243[0] = v19;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, v235, v243))
        {
          goto LABEL_412;
        }

        v20 = *(*(v8 + 15) + 488);
        if (!v20)
        {
          goto LABEL_197;
        }

        v21 = v20(v243);
        switch(v21)
        {
          case 0:
            prev_session = 5;
            goto LABEL_413;
          case -1:
            ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 749);
            bssl::ssl_send_alert(v8, 2, 40);
            goto LABEL_412;
          case -2:
            OPENSSL_free(*(this + 77));
            *v222 = 0;
            v222[1] = 0;
            std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100](v221, 0);
            prev_session = 1;
            *(this + 5) = 1;
            *(*(v8 + 6) + 216) = 2;
            goto LABEL_413;
        }

LABEL_197:
        if (!bssl::ssl_get_version_range(this, this + 14, this + 15))
        {
          goto LABEL_412;
        }

        if (*(*(this + 1) + 309) & 0x100) == 0 || (bssl::ssl_client_cipher_list_contains_cipher(v243, 4867))
        {
          goto LABEL_349;
        }

        v116 = 0;
        v219 = 0;
        v117 = 0;
        __s2 = 0;
        v118 = 0;
        v119 = 0;
        memset(v229, 170, 16);
        *v232 = v248;
        v120 = &byte_1A90B855C;
        v121 = 64;
        do
        {
          *v238 = *v232;
          v240 = -21846;
          if (CBS_get_u16(v238, &v240) && v240 == *(v120 - 1))
          {
            *v232 = *v238;
            v231[0] = 0xAAAAAAAAAAAAAAAALL;
            v231[1] = 0xAAAAAAAAAAAAAAAALL;
            if (!CBS_get_u16_length_prefixed(v232, v231))
            {
              goto LABEL_349;
            }

            if (v240 <= 0xCu)
            {
              if (v240 == 5)
              {
                v116 = 1;
              }

              else if (v240 == 10)
              {
                *v229 = *v231;
              }
            }

            else
            {
              switch(v240)
              {
                case 0xDu:
                  v119 = v231[0];
                  v118 = v231[1];
                  break;
                case 0x11u:
                  v219 = 1;
                  break;
                case 0x32u:
                  v117 = v231[1];
                  __s2 = v231[0];
                  break;
              }
            }
          }

          else if (*v120)
          {
            goto LABEL_349;
          }

          v120 += 4;
          v121 -= 4;
        }

        while (v121);
        if (!v232[1])
        {
          while (*&v229[8])
          {
            LOWORD(v238[0]) = -21846;
            if (!CBS_get_u16(v229, v238) || LOWORD(v238[0]) == 29)
            {
              goto LABEL_349;
            }
          }

          if (v118 == v117 && !memcmp(v119, __s2, v118) && ((v219 ^ v116) & 1) == 0)
          {
            *(this + 400) |= 0x800000u;
          }
        }

LABEL_349:
        LOBYTE(v238[0]) = 50;
        v152 = *this;
        if (*(*(*this + 48) + 208))
        {
          bssl::ssl_server_handshake();
        }

        v232[0] = 0xAAAAAAAAAAAAAAAALL;
        v232[1] = 0xAAAAAAAAAAAAAAAALL;
        memset(v229, 170, 16);
        if (bssl::ssl_client_hello_get_extension(v243, v232, 43))
        {
          if (!CBS_get_u8_length_prefixed(v232, v229) || v232[1] || !*&v229[8])
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 211);
            v130 = 50;
LABEL_409:
            LOBYTE(v238[0]) = v130;
            goto LABEL_411;
          }
        }

        else
        {
          if (SSL_is_dtls(v152))
          {
            v153 = 4;
            if (WORD4(v243[1]) >= 0xFEFEu)
            {
              v153 = 2 * (BYTE9(v243[1]) != 255);
            }

            v154 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersNoAESHardwarePQTLS;
          }

          else if (WORD4(v243[1]) <= 0x302u)
          {
            v153 = 4;
            if (WORD4(v243[1]) != 770)
            {
              v153 = 2 * (WORD4(v243[1]) > 0x300u);
            }

            v154 = &bssl::negotiate_version(bssl::SSL_HANDSHAKE *,unsigned char *,ssl_early_callback_ctx const*)::kDTLSVersions;
          }

          else
          {
            v153 = 6;
            v154 = &bssl::negotiate_version(bssl::SSL_HANDSHAKE *,unsigned char *,ssl_early_callback_ctx const*)::kDTLSVersions;
          }

          *v229 = &v154[-v153];
          *&v229[8] = v153;
        }

        if (!bssl::ssl_negotiate_version(this, v238, (*(v152 + 48) + 208), v229))
        {
          v130 = LOBYTE(v238[0]);
          goto LABEL_411;
        }

        if (!bssl::ssl_client_cipher_list_contains_cipher(v243, 22016) || bssl::ssl_protocol_version(v152, v175, v176) >= *(this + 15))
        {
          *(this + 802) = WORD4(v243[1]);
          if (*(&v244 + 1) != 32)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 776);
            goto LABEL_412;
          }

          v177 = *(v8 + 6);
          v178 = *(v244 + 16);
          *(v177 + 48) = *v244;
          *(v177 + 64) = v178;
          if (!*(&v247 + 1) || !memchr(v247, 0, *(&v247 + 1)) || bssl::ssl_protocol_version(v8, v179, v180) >= 0x304 && *(&v247 + 1) != 1)
          {
            ERR_put_error(16, 0, 256, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 788);
            bssl::ssl_send_alert(v8, 2, 47);
            goto LABEL_412;
          }

          if ((bssl::ssl_parse_clienthello_tlsext(this, v243) & 1) == 0)
          {
            ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 795);
            goto LABEL_412;
          }

          v190 = *(v8 + 15);
          v191 = *(v190 + 496);
          if (v191)
          {
            v192 = *(this + 207);
            if (v192)
            {
              v191(*this, *(v192 + 8), *(v192 + 16), *(v192 + 24), *(v192 + 32), *(v192 + 40), *(v190 + 504));
            }
          }

          v6 = 3;
LABEL_231:
          *(this + 5) = v6;
LABEL_232:
          prev_session = 1;
          goto LABEL_413;
        }

        ERR_put_error(16, 0, 157, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 257);
        v130 = 86;
        goto LABEL_409;
      case 3:
        v22 = *this;
        v23 = *(*(this + 1) + 32);
        v24 = *(v23 + 64);
        if (!v24)
        {
          goto LABEL_39;
        }

        v25 = v24(*this, *(v23 + 72), a3);
        if (!v25)
        {
          ERR_put_error(16, 0, 126, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 819);
          bssl::ssl_send_alert(v22, 2, 80);
          goto LABEL_412;
        }

        if (v25 < 0)
        {
          prev_session = 8;
          goto LABEL_413;
        }

LABEL_39:
        if ((*(this + 1600) & 0x80) == 0)
        {
          goto LABEL_44;
        }

        v26 = *(v22 + 15);
        v27 = *(v26 + 816);
        if (!v27)
        {
          goto LABEL_44;
        }

        v28 = v27(v22, *(v26 + 824), a3);
        if (!v28)
        {
          goto LABEL_44;
        }

        if (v28 != 3)
        {
          ERR_put_error(16, 0, 289, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 838);
          bssl::ssl_send_alert(v22, 2, 80);
          goto LABEL_412;
        }

        *(this + 400) &= ~0x80u;
LABEL_44:
        if (bssl::ssl_protocol_version(v22, cipher_by_value, a3) >= 0x304)
        {
          *(this + 5) = 4;
          goto LABEL_232;
        }

        v115 = *(v22 + 6);
        if (*(v115 + 216) == 1)
        {
          bssl::ssl_server_handshake();
        }

        *(v115 + 256) = 3;
        v6 = 5;
        goto LABEL_231;
      case 4:
        prev_session = bssl::tls13_server_handshake(this, cipher_by_value, a3);
        if (prev_session == 1)
        {
          *(this + 5) = 20;
        }

        goto LABEL_413;
      case 5:
        v46 = *this;
        *&v237 = 0xAAAAAAAAAAAAAAAALL;
        *&v47 = 0xAAAAAAAAAAAAAAAALL;
        *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v236 = v47;
        *v235 = v47;
        v247 = v47;
        v248 = v47;
        v245 = v47;
        v246 = v47;
        v243[1] = v47;
        v244 = v47;
        v243[0] = v47;
        if (!bssl::SSL_HANDSHAKE::GetClientHello(this, v235, v243))
        {
          goto LABEL_412;
        }

        v240 = 0;
        shared_group = bssl::tls1_get_shared_group(this, &v240, a3);
        v49 = *(&v246 + 1);
        *v232 = v246;
        v50 = OPENSSL_sk_new_null();
        *v229 = v50;
        if (!v50 || !v49)
        {
          goto LABEL_79;
        }

        do
        {
          LOWORD(v231[0]) = -21846;
          if (!CBS_get_u16(v232, v231))
          {
            ERR_put_error(16, 0, 148, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 280);
LABEL_264:
            *v238 = 0;
            *v229 = 0;
            BUF_MEM_free(v50);
            goto LABEL_412;
          }

          cipher_by_value = SSL_get_cipher_by_value(LOWORD(v231[0]));
          if (cipher_by_value && !OPENSSL_sk_push(v50, cipher_by_value))
          {
            goto LABEL_264;
          }
        }

        while (v232[1]);
LABEL_79:
        *v238 = v50;
        if (!v50)
        {
          goto LABEL_412;
        }

        v232[0] = 0;
        v232[1] = 0;
        if (bssl::ssl_get_credential_list(this, v232))
        {
          if (v232[1])
          {
            v51 = v232[0];
            v52 = 8 * v232[1];
            while (1)
            {
              v53 = *v51;
              ERR_clear_error();
              v55 = bssl::choose_params(this, v53, v50, shared_group);
              if (v55)
              {
                break;
              }

              ++v51;
              v52 -= 8;
              if (!v52)
              {
                goto LABEL_289;
              }
            }

            v139 = v54;
            if (v53)
            {
              SSL_CREDENTIAL_up_ref(v53);
            }

            std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v225, v53);
LABEL_302:
            *(this + 196) = v55;
            *(this + 805) = v139;
            v140 = *(&v245 + 1);
            if (*(&v245 + 1) <= 0x20uLL)
            {
              v141 = v245;
              *v227 = 0;
              if (v140)
              {
                v142 = v140;
                v143 = v226;
                do
                {
                  v144 = *v141++;
                  *v143++ = v144;
                  --v142;
                }

                while (v142);
              }

              *(this + 1645) = v140;
              *v229 = 0;
              LOBYTE(v231[0]) = 0;
              LOBYTE(v239) = 0;
              prev_session = bssl::ssl_get_prev_session(this, v229, v231, &v239, v243);
              if (prev_session != 1)
              {
                goto LABEL_448;
              }

              if (*v229)
              {
                if ((*(*v229 + 440) & 1) != 0 && (*(this + 1602) & 1) == 0)
                {
                  ERR_put_error(16, 0, 204, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 940);
                  bssl::ssl_send_alert(v46, 2, 40);
                  goto LABEL_447;
                }

                if (bssl::ssl_session_is_resumable(this, *v229, v145))
                {
                  v155 = *(this + 400);
                  v156 = *v229;
                  if ((HIWORD(v155) & 1) == (*(*v229 + 440) & 1))
                  {
                    goto LABEL_373;
                  }
                }

                std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v229, 0);
                v156 = *v229;
                if (*v229)
                {
                  v155 = *(this + 400);
LABEL_373:
                  *(this + 400) = v155 & 0xFFFF7FFF | ((v239 & 1) << 15);
                  *v229 = 0;
                  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v46 + 104), v156);
                  *(*(v46 + 48) + 222) |= 0x20u;
                  *(this + 400) |= 0x1000000u;
LABEL_378:
                  v160 = *(*(v46 + 120) + 512);
                  if (v160 && !v160(v243))
                  {
                    ERR_put_error(16, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 978);
                    bssl::ssl_send_alert(v46, 2, 80);
                  }

                  else
                  {
                    if (!*(v46 + 104))
                    {
                      v161 = *(this + 196);
                      v162 = *(this + 192);
                      *(v162 + 200) = v161;
                      if ((*(v161 + 20) & 2) != 0)
                      {
                        if ((shared_group & 1) == 0)
                        {
                          __assert_rtn("do_select_parameters", "handshake_server.cc", 986, "has_ecdhe_group");
                        }

                        *(v162 + 6) = v240;
                      }

                      v163 = *(this + 1);
                      v164 = *(this + 400);
                      v165 = v164 & 0xFFFFFFDF;
                      v168 = (v164 & 0x2000000) == 0;
                      v166 = v164 & 0xFFFFFFDF | (32 * (*(v163 + 308) & 1));
                      *(this + 400) = v166;
                      v167 = *(v163 + 308) & 4;
                      v168 = v168 || v167 == 0;
                      if (v168)
                      {
                        v169 = v166;
                      }

                      else
                      {
                        v169 = v165;
                      }

                      *(this + 400) = v169;
                      v170 = bssl::ssl_cipher_uses_certificate_auth(v161, v157);
                      v171 = *(this + 400);
                      if (!v170)
                      {
                        v171 &= ~0x20u;
                        *(this + 400) = v171;
                      }

                      if ((v171 & 0x20) == 0)
                      {
                        *(*(this + 192) + 176) = 0;
                      }
                    }

                    v242 = 50;
                    if (bssl::ssl_negotiate_alpn(this, &v242, v243))
                    {
                      v174 = bssl::ssl_protocol_version(v46, v172, v173);
                      if (bssl::SSLTranscript::InitHash((this + 424), v174, *(this + 196)))
                      {
                        if ((*(this + 400) & 0x40020) == 0)
                        {
                          bssl::SSLTranscript::FreeBuffer(this + 53);
                        }

                        if (bssl::ssl_hash_message(this, v235))
                        {
                          (*(*v46 + 32))(v46);
                          *(this + 5) = 6;
                          prev_session = 1;
                          goto LABEL_448;
                        }
                      }

                      v181 = 80;
                    }

                    else
                    {
                      v181 = v242;
                    }

                    bssl::ssl_send_alert(v46, 2, v181);
                  }

LABEL_447:
                  prev_session = 0;
LABEL_448:
                  v189 = *v229;
                  *v229 = 0;
                  if (v189)
                  {
                    SSL_SESSION_free(v189);
                  }

                  goto LABEL_450;
                }
              }

              *(this + 400) = *(this + 400) & 0xFFFF7FFF | ((v231[0] & 1) << 15);
              bssl::ssl_set_session(v46, 0, v145);
              if (!bssl::ssl_get_new_session(this, v158))
              {
                goto LABEL_447;
              }

              if ((*(this + 1601) & 0x80) == 0 && (*(*(v46 + 120) + 300) & 2) != 0)
              {
                v159 = *(this + 192);
                *(v159 + 91) = 32;
                RAND_bytes((v159 + 59), 32);
              }

              goto LABEL_378;
            }

            goto LABEL_553;
          }

          v55 = bssl::choose_params(this, 0, v50, shared_group);
          if (v55)
          {
            v139 = v138;
            goto LABEL_302;
          }

LABEL_289:
          bssl::ssl_send_alert(v46, 2, 40);
          prev_session = 0;
        }

        else
        {
          prev_session = 0;
        }

LABEL_450:
        OPENSSL_free(v232[0]);
        *v238 = 0;
        BUF_MEM_free(v50);
        goto LABEL_413;
      case 6:
        v62 = *(this + 400);
        if ((v62 & 0x2000000) != 0 && (*(*(this + 196) + 20) & 2) == 0)
        {
          v62 &= ~0x2000000u;
          *(this + 400) = v62;
        }

        v63 = *this;
        v64 = *(*this + 104);
        if (v64 && !*(v64 + 368))
        {
          v62 &= ~0x2000000u;
          *(this + 400) = v62;
        }

        v65 = *(this + 199);
        if (v65 && (v62 & 0x80000) == 0 && *(v65 + 8) == 32)
        {
          v66 = *(v63 + 6);
          v67 = *(*v65 + 16);
          *(v66 + 16) = **v65;
          *(v66 + 32) = v67;
        }

        else
        {
          memset(v243, 170, 16);
          bssl::ssl_get_current_time(v63, v243);
          *(*(v63 + 6) + 16) = bswap32(v243[0]);
          if (!RAND_bytes((*(v63 + 6) + 20), 28))
          {
            goto LABEL_412;
          }

          if (v65 && (*(this + 1602) & 8) != 0)
          {
            v82 = *(v63 + 6);
            if (!bssl::Array<unsigned char>::InitUninitialized(v65, 0x20uLL))
            {
              goto LABEL_412;
            }

            v83 = 0;
            v84 = *v65;
            do
            {
              *(v84 + v83) = *(v82 + 16 + v83);
              ++v83;
            }

            while (v83 != 32);
          }
        }

        if (bssl::ssl_supports_version(this, 0x304))
        {
          v87 = bssl::ssl_protocol_version(v63, v85, v86);
          v88 = "DOWNGRD";
          if (v87 == 771)
          {
            v88 = &bssl::kJDK11DowngradeRandom;
            if ((*(this + 1602) & 0x80) == 0)
            {
              v88 = &bssl::kTLS13DowngradeRandom;
            }
          }

          *(*(v63 + 6) + 40) = *v88;
        }

        v90 = v226;
        v89 = v227;
        if (!*(v63 + 13))
        {
          v91 = *(this + 192);
          v90 = (v91 + 59);
          v89 = (v91 + 91);
        }

        v92 = *v89;
        *&v93 = 0xAAAAAAAAAAAAAAAALL;
        *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[1] = v93;
        v244 = v93;
        v243[0] = v93;
        CBB_zero(v243);
        *&v94 = 0xAAAAAAAAAAAAAAAALL;
        *(&v94 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v236 = v94;
        v237 = v94;
        v234 = v94;
        *v235 = v94;
        *v232 = v94;
        v233 = v94;
        if (!(*(*v63 + 88))(v63, v243, v235, 2) || !CBB_add_u16(v235, *(*(v63 + 6) + 208)) || !CBB_add_bytes(v235, (*(v63 + 6) + 16), 0x20uLL) || !CBB_add_u8_length_prefixed(v235, v232) || !CBB_add_bytes(v232, v90, v92) || (protocol_id = SSL_CIPHER_get_protocol_id(*(this + 196), v95), !CBB_add_u16(v235, protocol_id)) || !CBB_add_u8(v235, 0) || !bssl::ssl_add_serverhello_tlsext(this, v235) || (bssl::ssl_add_message_cbb(v63, v243) & 1) == 0)
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1120);
          prev_session = 0;
          goto LABEL_471;
        }

        if (!*(v63 + 13))
        {
          v97 = 7;
          goto LABEL_494;
        }

        if ((*(this + 1602) & 8) == 0)
        {
          v97 = 19;
LABEL_494:
          *(this + 5) = v97;
          prev_session = 1;
          goto LABEL_471;
        }

        prev_session = 17;
        goto LABEL_471;
      case 7:
        v29 = *this;
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[1] = v30;
        v244 = v30;
        v243[0] = v30;
        CBB_zero(v243);
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), v31))
        {
          goto LABEL_50;
        }

        if (!*v225)
        {
          __assert_rtn("do_send_server_certificate", "handshake_server.cc", 1141, "hs->credential != nullptr");
        }

        if (!bssl::ssl_send_tls12_certificate(this, v18))
        {
          goto LABEL_261;
        }

        if ((*(this + 1600) & 0x40) != 0)
        {
          *&v131 = 0xAAAAAAAAAAAAAAAALL;
          *(&v131 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v236 = v131;
          v237 = v131;
          v234 = v131;
          *v235 = v131;
          *v232 = v131;
          v233 = v131;
          if (!(*(*v29 + 88))(v29, v243, v235, 22) || !CBB_add_u8(v235, 1u) || !CBB_add_u24_length_prefixed(v235, v232) || (v132 = CRYPTO_BUFFER_data(*(*v225 + 10)), v133 = CRYPTO_BUFFER_len(*(*v225 + 10)), !CBB_add_bytes(v232, v132, v133)) || (bssl::ssl_add_message_cbb(v29, v243) & 1) == 0)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1157);
            goto LABEL_261;
          }
        }

LABEL_50:
        v32 = *(this + 196);
        v33 = *(v32 + 5);
        v34 = *(v32 + 6);
        if ((bssl::ssl_cipher_requires_server_key_exchange(v32, v18) & 1) != 0 || (v34 & 8) != 0 && *(*(this + 1) + 56))
        {
          *&v35 = 0xAAAAAAAAAAAAAAAALL;
          *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v236 = v35;
          v237 = v35;
          *v235 = v35;
          if (!CBB_init(v243, 0xC0uLL) || !CBB_add_bytes(v243, (v29[6] + 48), 0x20uLL) || !CBB_add_bytes(v243, (v29[6] + 16), 0x20uLL))
          {
            goto LABEL_261;
          }

          if ((v34 & 8) != 0)
          {
            v36 = *(*(this + 1) + 56);
            v37 = v36 ? strlen(v36) : 0;
            if (!CBB_add_u16_length_prefixed(v243, v235) || !CBB_add_bytes(v235, *(*(this + 1) + 56), v37))
            {
              goto LABEL_261;
            }
          }

          if ((v33 & 2) != 0)
          {
            v148 = *(this + 192);
            if (!*(v148 + 6))
            {
              __assert_rtn("do_send_server_certificate", "handshake_server.cc", 1191, "hs->new_session->group_id != 0");
            }

            bssl::SSLKeyShare::Create(v232, *(v148 + 6));
            v149 = v232[0];
            v232[0] = 0;
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, v149);
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](v232, 0);
            if (!*(this + 49) || !CBB_add_u8(v243, 3u) || !CBB_add_u16(v243, *(*(this + 192) + 6)) || !CBB_add_u8_length_prefixed(v243, v235))
            {
              goto LABEL_261;
            }

            v150 = *(this + 199);
            if (v150 && (*(this + 1602) & 8) == 0 && *(v150 + 184) == *(*(this + 192) + 6) && *(v150 + 200) && (v151 = *(v150 + 216)) != 0 && (v232[0] = *(v150 + 208), v232[1] = v151, ((*(**(this + 49) + 56))(*(this + 49), v232) & 1) != 0))
            {
              if (!CBB_add_bytes(v235, *(v150 + 192), *(v150 + 200)))
              {
                goto LABEL_261;
              }
            }

            else
            {
              if (!(*(**(this + 49) + 24))(*(this + 49), v235))
              {
                goto LABEL_261;
              }

              if (v150 && (*(this + 1602) & 8) != 0)
              {
                *&v182 = 0xAAAAAAAAAAAAAAAALL;
                *(&v182 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v233 = v182;
                v234 = v182;
                *v232 = v182;
                CBB_zero(v232);
                v184 = CBB_data(v235, v183);
                v185 = CBB_len(v235);
                if (!bssl::Array<unsigned char>::InitUninitialized(v150 + 192, v185))
                {
                  goto LABEL_503;
                }

                if (v185)
                {
                  v187 = *(v150 + 192);
                  do
                  {
                    v188 = *v184++;
                    *v187++ = v188;
                    --v185;
                  }

                  while (v185);
                }

                if (!CBB_init(v232, 0x20uLL) || !(*(**(this + 49) + 48))(*(this + 49), v232) || !bssl::CBBFinishArray(v232, v150 + 208))
                {
LABEL_503:
                  CBB_cleanup(v232, v186);
                  goto LABEL_261;
                }

                *(v150 + 184) = *(*(this + 192) + 6);
                CBB_cleanup(v232, v186);
              }
            }
          }

          else if ((v33 & 8) == 0)
          {
            __assert_rtn("do_send_server_certificate", "handshake_server.cc", 1235, "alg_k & SSL_kPSK");
          }

          if (!bssl::CBBFinishArray(v243, v224))
          {
LABEL_261:
            prev_session = 0;
            goto LABEL_471;
          }
        }

        *(this + 5) = 8;
        prev_session = 1;
        goto LABEL_471;
      case 8:
        if (!*(this + 184))
        {
          v6 = 9;
          goto LABEL_231;
        }

        v71 = *this;
        *&v72 = 0xAAAAAAAAAAAAAAAALL;
        *(&v72 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[1] = v72;
        v244 = v72;
        v243[0] = v72;
        CBB_zero(v243);
        *&v73 = 0xAAAAAAAAAAAAAAAALL;
        *(&v73 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v236 = v73;
        v237 = v73;
        v234 = v73;
        *v235 = v73;
        *v232 = v73;
        v233 = v73;
        if (!(*(*v71 + 88))(v71, v243, v235, 12))
        {
          goto LABEL_470;
        }

        v74 = *(this + 184);
        if (v74 < 0x40 || !CBB_add_bytes(v235, *v224 + 8, v74 - 64))
        {
          goto LABEL_470;
        }

        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), v18))
        {
          goto LABEL_468;
        }

        LOWORD(v231[0]) = -21846;
        if (bssl::tls1_choose_signature_algorithm(this, *(this + 190), v231, v75))
        {
          if (bssl::ssl_protocol_version(v71, v76, v77) < 0x303 || CBB_add_u16(v235, LOWORD(v231[0])))
          {
            v78 = EVP_PKEY_size(*(*v225 + 1));
            *v229 = 0xAAAAAAAAAAAAAAAALL;
            if (CBB_add_u16_length_prefixed(v235, v232) && CBB_reserve(v232, v229, v78))
            {
              *v238 = v78;
              v79 = bssl::ssl_private_key_sign(this, *v229, v238, v78, LOWORD(v231[0]), *(this + 183), *(this + 184));
              if (v79)
              {
                if (v79 == 1)
                {
                  prev_session = 9;
                  goto LABEL_471;
                }

                if (v79 != 2)
                {
LABEL_468:
                  *(this + 400) |= 0x1000000u;
                  if (bssl::ssl_add_message_cbb(v71, v243))
                  {
                    OPENSSL_free(*v224);
                    *v224 = 0;
                    v224[1] = 0;
                    prev_session = 1;
                    *(this + 5) = 9;
                    goto LABEL_471;
                  }
                }
              }

              else if (CBB_did_write(v232, *v238))
              {
                goto LABEL_468;
              }
            }

LABEL_470:
            prev_session = 0;
LABEL_471:
            CBB_cleanup(v243, v18);
            goto LABEL_413;
          }

          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1277);
          v147 = 80;
        }

        else
        {
          v147 = 40;
        }

        bssl::ssl_send_alert(v71, 2, v147);
        goto LABEL_470;
      case 9:
        if ((*(this + 1602) & 8) != 0)
        {
          prev_session = 17;
          goto LABEL_413;
        }

        v15 = *this;
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[1] = v16;
        v244 = v16;
        v243[0] = v16;
        CBB_zero(v243);
        *&v17 = 0xAAAAAAAAAAAAAAAALL;
        *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v236 = v17;
        v237 = v17;
        *v235 = v17;
        if (*(this + 1600) & 0x20) == 0 || (v233 = v17, v234 = v17, *v232 = v17, *&v229[16] = v17, v230 = v17, *v229 = v17, (*(*v15 + 88))(v15, v243, v235, 13)) && CBB_add_u8_length_prefixed(v235, v232) && CBB_add_u8(v232, 1u) && CBB_add_u8(v232, 0x40u) && (bssl::ssl_protocol_version(v15, v122, v123) < 0x303 || CBB_add_u16_length_prefixed(v235, v229) && bssl::tls12_add_verify_sigalgs(this, v229)) && bssl::ssl_add_client_CA_list(this, v235) && (bssl::ssl_add_message_cbb(v15, v243))
        {
          if (*(*v15 + 88))(v15, v243, v235, 14) && (bssl::ssl_add_message_cbb(v15, v243))
          {
            *(this + 5) = 10;
            prev_session = 4;
          }

          else
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1346);
            prev_session = 0;
          }
        }

        else
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1338);
          prev_session = 0;
        }

        goto LABEL_471;
      case 10:
        v69 = *this;
        v70 = *(this + 400);
        if ((v70 & 0x40000) != 0 && *(*(this + 196) + 20) == 2)
        {
          goto LABEL_109;
        }

        if ((v70 & 0x20) == 0)
        {
          goto LABEL_156;
        }

        *&v244 = 0xAAAAAAAAAAAAAAAALL;
        *&v111 = 0xAAAAAAAAAAAAAAAALL;
        *(&v111 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[0] = v111;
        v243[1] = v111;
        if (!(*(*v69 + 24))(v69, v243, a3))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v69, v243, 11, v112) || !bssl::ssl_hash_message(this, v243))
        {
          goto LABEL_412;
        }

        *v235 = *(v243 + 8);
        LOBYTE(v232[0]) = 50;
        v113 = *(this + 192);
        if ((*(*(this + 1) + 309) & 0x20) != 0)
        {
          v114 = (v113 + 272);
        }

        else
        {
          v114 = 0;
        }

        if (!bssl::ssl_parse_cert_chain(v232, (v113 + 136), v223, v114, v235, *(*(v69 + 15) + 800)))
        {
          bssl::ssl_send_alert(v69, 2, LOBYTE(v232[0]));
          goto LABEL_412;
        }

        if (v235[1] || ((*(*(*(v69 + 15) + 16) + 48))(*(this + 192)) & 1) == 0)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1391);
          bssl::ssl_send_alert(v69, 2, 50);
          goto LABEL_412;
        }

        if (EVP_MD_CTX_md(*(*(this + 192) + 136)))
        {
          if ((*(*(this + 1) + 309) & 0x20) != 0)
          {
            *(*(this + 192) + 440) |= 2u;
          }
        }

        else
        {
          bssl::SSLTranscript::FreeBuffer(this + 53);
          if ((*(*(this + 1) + 308) & 2) != 0)
          {
            ERR_put_error(16, 0, 192, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1402);
            bssl::ssl_send_alert(v69, 2, 40);
            goto LABEL_412;
          }

          *(*(this + 192) + 176) = 0;
        }

        (*(*v69 + 32))(v69);
LABEL_156:
        v6 = 11;
        goto LABEL_231;
      case 11:
        if (!EVP_MD_CTX_md(*(*(this + 192) + 136)))
        {
          goto LABEL_158;
        }

        v7 = bssl::ssl_verify_peer_cert(this, cipher_by_value);
        if (v7 == 1)
        {
          goto LABEL_412;
        }

        if (v7 == 2)
        {
          prev_session = 16;
          goto LABEL_413;
        }

LABEL_158:
        v6 = 12;
        goto LABEL_231;
      case 12:
        v8 = *this;
        *&v230 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v229 = v9;
        *&v229[16] = v9;
        if (!(*(*v8 + 24))(v8, v229, a3))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v8, v229, 16, v10))
        {
          goto LABEL_412;
        }

        *v238 = *&v229[8];
        v11 = *(this + 196);
        v13 = *(v11 + 20);
        v12 = *(v11 + 24);
        if ((v12 & 8) == 0)
        {
          goto LABEL_19;
        }

        memset(v243, 170, 16);
        if (!CBS_get_u16_length_prefixed(v238, v243) || (v13 & 8) != 0 && *&v238[2])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1459);
          v130 = 50;
LABEL_411:
          bssl::ssl_send_alert(v8, 2, v130);
          goto LABEL_412;
        }

        if (*(&v243[0] + 1) > 0x80uLL || CBS_contains_zero_byte(v243))
        {
          ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1466);
          v130 = 47;
          goto LABEL_411;
        }

        v235[0] = 0;
        if (!CBS_strdup(v243, v235))
        {
          bssl::ssl_send_alert(v8, 2, 80);
          goto LABEL_412;
        }

        std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((*(this + 192) + 128), v235[0]);
LABEL_19:
        v231[0] = 0;
        v231[1] = 0;
        if ((v13 & 1) == 0)
        {
          if ((v13 & 2) != 0)
          {
            memset(v243, 170, 16);
            if (!CBS_get_u8_length_prefixed(v238, v243) || *&v238[2])
            {
              ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1560);
              bssl::ssl_send_alert(v8, 2, 50);
              goto LABEL_539;
            }

            LOBYTE(v235[0]) = 50;
            if (((*(**(this + 49) + 40))(*(this + 49), v231, v235, *&v243[0], *(&v243[0] + 1)) & 1) == 0)
            {
              bssl::ssl_send_alert(v8, 2, LOBYTE(v235[0]));
              goto LABEL_539;
            }

            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, 0);
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, 0);
          }

          else if ((v13 & 8) == 0)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1576);
            v14 = 40;
LABEL_538:
            bssl::ssl_send_alert(v8, 2, v14);
            goto LABEL_539;
          }

          if ((v12 & 8) == 0)
          {
LABEL_316:
            if (!bssl::ssl_hash_message(this, v229))
            {
              goto LABEL_539;
            }

            v146 = *(this + 192);
            *(v146 + 58) = 48;
            if (!bssl::tls1_generate_master_secret(this, (v146 + 10), 48, v231[0], v231[1]))
            {
              goto LABEL_539;
            }

            *(*(this + 192) + 440) = *(*(this + 192) + 440) & 0xFE | *(this + 1602) & 1;
            *(this + 400) |= 0x1000000u;
            (*(*v8 + 32))(v8);
            *(this + 5) = 13;
            prev_session = 1;
LABEL_540:
            OPENSSL_free(v231[0]);
            goto LABEL_413;
          }

          goto LABEL_519;
        }

        memset(v243, 170, 16);
        if (!CBS_get_u16_length_prefixed(v238, v243) || *&v238[2])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1485);
          bssl::ssl_send_alert(v8, 2, 50);
          goto LABEL_539;
        }

        v235[0] = 0;
        v235[1] = 0;
        v134 = EVP_PKEY_size(*(*v225 + 1));
        if ((bssl::Array<unsigned char>::InitUninitialized(v235, v134) & 1) == 0)
        {
          OPENSSL_free(v235[0]);
          goto LABEL_539;
        }

        v232[0] = 0xAAAAAAAAAAAAAAAALL;
        v135 = bssl::ssl_private_key_decrypt(this, v235[0], v232, v235[1], *&v243[0], *(&v243[0] + 1));
        if (v135 == 1)
        {
          prev_session = 9;
LABEL_465:
          OPENSSL_free(v235[0]);
          goto LABEL_540;
        }

        if (v135 == 2)
        {
          goto LABEL_464;
        }

        if (v232[0] == v235[1])
        {
          if (!bssl::Array<unsigned char>::InitUninitialized(v231, 0x30uLL) || !RAND_bytes(v231[0], v231[1]))
          {
            goto LABEL_464;
          }

          if (v232[0] >= (v231[1] + 11))
          {
            if (v235[1] < 2)
            {
              goto LABEL_553;
            }

            v202 = v232[0] - v231[1];
            v203 = (((*(v235[0] + 1) ^ 2) - 1) & (*v235[0] - 1)) >> 63;
            v204 = v232[0] - v231[1] - 1;
            if (v204 >= 3)
            {
              if (v235[1] - 2 <= v202 - 4)
              {
                goto LABEL_553;
              }

              v205 = v202 - 3;
              v206 = v235[0] + 2;
              do
              {
                if (!*v206++)
                {
                  LOBYTE(v203) = 0;
                }

                --v205;
              }

              while (v205);
            }

            if (v235[1] <= v204 || v235[1] <= v202 || v235[1] <= v202 + 1)
            {
LABEL_553:
              abort();
            }

            if (v231[1])
            {
              v208 = 0;
              v209 = v203 & ((((*(v235[0] + v202) ^ HIBYTE(*(this + 802))) - 1) & (*(v235[0] + v204) - 1) & ((*(this + 802) ^ *(v235[0] + (v202 + 1))) - 1)) >> 63);
              while (v235[1] > &v202[v208])
              {
                *(v231[0] + v208) = v209 & *(v235[0] + v202 + v208) | *(v231[0] + v208) & ~v209;
                if (++v208 >= v231[1])
                {
                  goto LABEL_518;
                }
              }

              goto LABEL_553;
            }

LABEL_518:
            bssl::Array<unsigned char>::~Array(v235);
            if ((v12 & 8) == 0)
            {
              goto LABEL_316;
            }

LABEL_519:
            v210 = *(this + 1);
            if (!*(v210 + 72))
            {
              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1585);
              v14 = 80;
              goto LABEL_538;
            }

            *&v211 = 0xAAAAAAAAAAAAAAAALL;
            *(&v211 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v256 = v211;
            v257 = v211;
            v254 = v211;
            v255 = v211;
            v252 = v211;
            v253 = v211;
            v250 = v211;
            v251 = v211;
            v248 = v211;
            v249 = v211;
            v246 = v211;
            v247 = v211;
            v244 = v211;
            v245 = v211;
            v243[0] = v211;
            v243[1] = v211;
            v212 = (*(v210 + 72))(v8, *(*(this + 192) + 128), v243, 256);
            v213 = v212;
            if (v212 >= 0x101)
            {
              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1595);
              v14 = 80;
              goto LABEL_538;
            }

            if (!v212)
            {
              ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1600);
              v14 = 115;
              goto LABEL_538;
            }

            if ((v13 & 8) == 0)
            {
              goto LABEL_528;
            }

            if (bssl::Array<unsigned char>::InitUninitialized(v231, v212))
            {
              if (v231[1])
              {
                bzero(v231[0], v231[1]);
              }

LABEL_528:
              *&v214 = 0xAAAAAAAAAAAAAAAALL;
              *(&v214 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v236 = v214;
              v237 = v214;
              *v235 = v214;
              CBB_zero(v235);
              *&v215 = 0xAAAAAAAAAAAAAAAALL;
              *(&v215 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v233 = v215;
              v234 = v215;
              *v232 = v215;
              v217 = CBB_init(v235, v231[1] + v213 + 4) && CBB_add_u16_length_prefixed(v235, v232) && CBB_add_bytes(v232, v231[0], v231[1]) && CBB_add_u16_length_prefixed(v235, v232) && CBB_add_bytes(v232, v243, v213) && bssl::CBBFinishArray(v235, v231);
              CBB_cleanup(v235, v216);
              if (!v217)
              {
                goto LABEL_539;
              }

              goto LABEL_316;
            }

LABEL_539:
            prev_session = 0;
            goto LABEL_540;
          }

          v136 = 1528;
        }

        else
        {
          v136 = 1511;
        }

        ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", v136);
        bssl::ssl_send_alert(v8, 2, 51);
LABEL_464:
        prev_session = 0;
        goto LABEL_465;
      case 13:
        if (*(this + 191))
        {
          v56 = *this;
          *&v244 = 0xAAAAAAAAAAAAAAAALL;
          *&v57 = 0xAAAAAAAAAAAAAAAALL;
          *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v243[0] = v57;
          v243[1] = v57;
          if (!(*(*v56 + 24))(v56, v243, a3))
          {
LABEL_193:
            prev_session = 3;
            goto LABEL_413;
          }

          if (!bssl::ssl_check_message_type(v56, v243, 15, v58))
          {
            goto LABEL_412;
          }

          v59 = OPENSSL_sk_value(*(*(this + 192) + 136), 0);
          v235[0] = 0xAAAAAAAAAAAAAAAALL;
          v235[1] = 0xAAAAAAAAAAAAAAAALL;
          CRYPTO_BUFFER_init_CBS(v59, v235);
          if (!bssl::ssl_cert_check_key_usage(v235, 0))
          {
            goto LABEL_412;
          }

          *v232 = *(v243 + 8);
          memset(v229, 170, 16);
          LOWORD(v238[0]) = 0;
          if (bssl::ssl_protocol_version(v56, cipher_by_value, a3) < 0x303)
          {
            if ((bssl::tls1_get_legacy_signature_algorithm(v238, *v223, v60) & 1) == 0)
            {
              ERR_put_error(16, 0, 193, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1700);
              bssl::ssl_send_alert(v56, 2, 43);
              goto LABEL_412;
            }
          }

          else
          {
            if (!CBS_get_u16(v232, v238))
            {
              ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1687);
              bssl::ssl_send_alert(v56, 2, 50);
              goto LABEL_412;
            }

            LOBYTE(v231[0]) = 50;
            if (!bssl::tls12_check_peer_sigalg(this, v231, LOWORD(v238[0]), *(this + 191), v61))
            {
              bssl::ssl_send_alert(v56, 2, LOBYTE(v231[0]));
              goto LABEL_412;
            }

            *(*(this + 192) + 8) = v238[0];
          }

          if (!CBS_get_u16_length_prefixed(v232, v229) || v232[1])
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1708);
            bssl::ssl_send_alert(v56, 2, 50);
            goto LABEL_412;
          }

          if (!bssl::ssl_public_key_verify(v56, *v229, *&v229[8], LOWORD(v238[0]), *v223, *(*(this + 53) + 8), **(this + 53)))
          {
            ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1715);
            bssl::ssl_send_alert(v56, 2, 51);
            goto LABEL_412;
          }

          bssl::SSLTranscript::FreeBuffer(this + 53);
          if (!bssl::ssl_hash_message(this, v243))
          {
            goto LABEL_412;
          }

          (*(*v56 + 32))(v56);
        }

        else
        {
          bssl::SSLTranscript::FreeBuffer(this + 53);
        }

        v6 = 14;
        goto LABEL_231;
      case 14:
        if ((*(this + 1602) & 4) != 0 && *(*this + 104))
        {
          goto LABEL_109;
        }

        prev_session = 15;
LABEL_9:
        *(this + 5) = prev_session;
        goto LABEL_413;
      case 15:
        if (!bssl::tls1_change_cipher_state(this, 0))
        {
          goto LABEL_412;
        }

        v6 = 16;
        goto LABEL_231;
      case 16:
        if ((*(this + 1601) & 0x40) == 0)
        {
          goto LABEL_5;
        }

        v98 = *this;
        *&v244 = 0xAAAAAAAAAAAAAAAALL;
        *&v99 = 0xAAAAAAAAAAAAAAAALL;
        *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[0] = v99;
        v243[1] = v99;
        if (!(*(*v98 + 24))(v98, v243, a3))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v98, v243, 67, v100) || !bssl::ssl_hash_message(this, v243))
        {
          goto LABEL_412;
        }

        *v235 = *(v243 + 8);
        v232[0] = 0xAAAAAAAAAAAAAAAALL;
        v232[1] = 0xAAAAAAAAAAAAAAAALL;
        memset(v229, 170, 16);
        if (!CBS_get_u8_length_prefixed(v235, v232) || !CBS_get_u8_length_prefixed(v235, v229) || v235[1])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_server.cc", 1771);
          bssl::ssl_send_alert(v98, 2, 50);
          goto LABEL_412;
        }

        v101 = *(v98 + 6);
        v102 = v232[0];
        v103 = v232[1];
        if (!bssl::Array<unsigned char>::InitUninitialized(v101 + 480, v232[1]))
        {
          goto LABEL_412;
        }

        if (v103)
        {
          v104 = *(v101 + 480);
          do
          {
            v105 = *v102++;
            *v104++ = v105;
            --v103;
          }

          while (v103);
        }

        (*(*v98 + 32))(v98);
LABEL_5:
        v6 = 17;
        goto LABEL_231;
      case 17:
        if ((*(this + 1603) & 2) == 0)
        {
          goto LABEL_65;
        }

        v106 = *this;
        *&v244 = 0xAAAAAAAAAAAAAAAALL;
        *&v107 = 0xAAAAAAAAAAAAAAAALL;
        *(&v107 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[0] = v107;
        v243[1] = v107;
        if (!(*(*v106 + 24))(v106, v243, a3))
        {
          goto LABEL_193;
        }

        if (!bssl::ssl_check_message_type(v106, v243, 203, v108) || !bssl::tls1_verify_channel_id(this, v243) || !bssl::ssl_hash_message(this, v243))
        {
          goto LABEL_412;
        }

        (*(*v106 + 32))(v106);
LABEL_65:
        v6 = 18;
        goto LABEL_231;
      case 18:
        v68 = *this;
        prev_session = bssl::ssl_get_finished(this, cipher_by_value);
        if (prev_session != 1)
        {
          goto LABEL_413;
        }

        if (*(v68 + 104))
        {
          v6 = 20;
          goto LABEL_231;
        }

        *(this + 5) = 19;
        if ((*(*(v68 + 48) + 222) & 0x80) != 0 && !bssl::tls1_record_handshake_hashes_for_channel_id(this, cipher_by_value))
        {
          goto LABEL_412;
        }

        goto LABEL_232;
      case 19:
        v80 = *this;
        if ((*(this + 1601) & 0x80) == 0)
        {
          goto LABEL_125;
        }

        *v229 = 0;
        v109 = *(v80 + 13);
        if (v109)
        {
          bssl::SSL_SESSION_dup(v243, v109, 2);
          prev_session = *&v243[0];
          *v229 = *&v243[0];
          if (!*&v243[0])
          {
            goto LABEL_413;
          }

          bssl::ssl_session_rebase_time(v80, *&v243[0], a3);
          v110 = prev_session;
        }

        else
        {
          bssl::ssl_session_rebase_time(v80, *(this + 192), a3);
          prev_session = 0;
          v110 = *(this + 192);
        }

        *&v125 = 0xAAAAAAAAAAAAAAAALL;
        *(&v125 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v243[1] = v125;
        v244 = v125;
        v243[0] = v125;
        CBB_zero(v243);
        *&v126 = 0xAAAAAAAAAAAAAAAALL;
        *(&v126 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v236 = v126;
        v237 = v126;
        v234 = v126;
        *v235 = v126;
        *v232 = v126;
        v233 = v126;
        if (!(*(*v80 + 88))(v80, v243, v235, 4) || !CBB_add_u32(v235, *(v110 + 184)) || !CBB_add_u16_length_prefixed(v235, v232) || !bssl::ssl_encrypt_ticket(this, v232, v110))
        {
          CBB_cleanup(v243, v127);
          *v229 = 0;
          if (prev_session)
          {
            SSL_SESSION_free(prev_session);
          }

          goto LABEL_412;
        }

        v128 = bssl::ssl_add_message_cbb(v80, v243);
        CBB_cleanup(v243, v129);
        *v229 = 0;
        if (prev_session)
        {
          SSL_SESSION_free(prev_session);
        }

        if ((v128 & 1) == 0)
        {
          goto LABEL_412;
        }

LABEL_125:
        if (!(*(*v80 + 112))(v80, cipher_by_value, a3) || !bssl::tls1_change_cipher_state(this, 1) || !bssl::ssl_send_finished(this, cipher_by_value))
        {
          goto LABEL_412;
        }

        if (*(v80 + 13))
        {
          v81 = 14;
        }

        else
        {
          v81 = 20;
        }

        *(this + 5) = v81;
        prev_session = 4;
        goto LABEL_413;
      case 20:
        if ((*(this + 1602) & 4) != 0)
        {
LABEL_109:
          prev_session = 7;
          goto LABEL_413;
        }

        v42 = *this;
        (*(**this + 128))(*this, cipher_by_value, a3);
        v43 = *(this + 192);
        if (v43 && ((*(*(this + 1) + 309) & 0x20) == 0 || (std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v43 + 136), 0), (*(*(*(v42 + 120) + 16) + 64))(*(this + 192)), (v43 = *(this + 192)) != 0)))
        {
          if (*(v42 + 104))
          {
            bssl::ssl_server_handshake();
          }

          v44 = *(v42 + 48);
          *(this + 192) = 0;
          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v44 + 472), v43);
          *(*(*(v42 + 48) + 472) + 440) &= ~4u;
          *(this + 400) |= 8u;
          *(*(v42 + 48) + 222) |= 0x10u;
          bssl::ssl_update_cache(v42, v45);
        }

        else
        {
          v124 = *(v42 + 104);
          if (!v124)
          {
            bssl::ssl_server_handshake();
          }

          SSL_SESSION_up_ref(*(v42 + 104));
          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(v42 + 48) + 472), v124);
          *(this + 400) |= 8u;
          *(*(v42 + 48) + 222) |= 0x10u;
        }

        v6 = 21;
        goto LABEL_231;
      case 21:
        bssl::ssl_do_info_callback(*this, 0x20);
        return 1;
      default:
        goto LABEL_412;
    }
  }
}

void sub_1A90413F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  CBB_cleanup(va, a2);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_boringssl_replace_input_handler(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v4 = result;
      if ((*(result + 435) & 1) == 0)
      {
        nw_protocol_boringssl_replace_input_handler_cold_1();
      }

      if (nw_protocol_get_input_handler() == a2)
      {
        nw_protocol_set_input_handler();
        nw_protocol_set_output_handler();
        if (nw_protocol_supports_external_data_is_valid() && nw_protocol_supports_external_data())
        {
          v5 = *(v4 + 349) | 0x10;
        }

        else
        {
          v5 = *(v4 + 349) & 0xEF;
        }

        *(v4 + 349) = v5;
        return 1;
      }

      else
      {
        if (*(v4 + 435))
        {
          return 0;
        }

        v6 = g_boringssl_log;
        if (!g_boringssl_log)
        {
          return 0;
        }

        result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v7 = v6;
          v8 = 136447490;
          v9 = "nw_protocol_boringssl_replace_input_handler";
          v10 = 1024;
          v11 = 1381;
          v12 = 2082;
          v13 = v4 + 351;
          v14 = 2048;
          v15 = v4;
          v16 = 2048;
          input_handler = nw_protocol_get_input_handler();
          v18 = 2048;
          v19 = a2;
          _os_log_error_impl(&dword_1A8FF5000, v7, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] old input handler does not match (%p != %p)", &v8, 0x3Au);

          return 0;
        }
      }
    }
  }

  return result;
}

void nw_protocol_boringssl_replace_input_handler_cold_1()
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

void nw_protocol_boringssl_connected_cold_4()
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

uint64_t __nw_protocol_boringssl_write_frames_block_invoke(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_frame_uses_external_data();
  v5 = a1[4];
  v6 = *(v5 + 120);
  if (v6)
  {
    memcpy((a1[7] + *(*(a1[6] + 8) + 24)), v6, *(v5 + 128));
    *(*(a1[6] + 8) + 24) += *(a1[4] + 128);
    v7 = a1[4];
    v8 = *(v7 + 112);
    *(v7 + 112) = 0;

    *(a1[4] + 120) = 0;
    *(a1[4] + 128) = 0;
  }

  else if (v4)
  {
    __src = 0;
    v9 = nw_frame_copy_external_data();
    v10 = v9;
    if (v9)
    {
      v11 = nw_dispatch_data_create_subrange_map(v9, 0, 0, &__src);
      if (v11)
      {
        *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24);
      }

      else
      {
        v12 = a1[4];
        if (!v12 || (*(v12 + 435) & 1) == 0)
        {
          v13 = g_boringssl_log;
          if (g_boringssl_log)
          {
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
            {
              v15 = a1[4];
              v16 = (v15 + 351);
              if (!v15)
              {
                v16 = &unk_1A9098A9F;
              }

              v18[0] = 136447746;
              *&v18[1] = "nw_protocol_boringssl_write_frames_block_invoke";
              v19 = 1024;
              v20 = 1163;
              v21 = 2082;
              v22 = v16;
              v23 = 2048;
              v24 = v15;
              v25 = 2112;
              v26 = v10;
              v27 = 1024;
              v28 = 0;
              v29 = 1024;
              v30 = 0;
              _os_log_error_impl(&dword_1A8FF5000, v13, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to flatten external data %@ (offset %u, unclaimed %u)", v18, 0x3Cu);
            }
          }
        }
      }
    }
  }

  else
  {
    v18[0] = 0;
    nw_frame_unclaimed_bytes();
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24);
  }

  if (a1[5] != v3)
  {
    nw_frame_array_remove();
    nw_frame_finalize();
  }

  return 1;
}

EC_KEY *EC_KEY_parse_private_key(__int128 *a1, const EC_GROUP *a2)
{
  memset(v15, 170, sizeof(v15));
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_asn1(a1, &v15[1], 536870928) && CBS_get_asn1_uint64(&v15[1], &v14) && v14 == 1 && CBS_get_asn1(&v15[1], v15, 4))
  {
    if (CBS_peek_asn1_tag(&v15[1], -1610612736))
    {
      buf[2] = 0xAAAAAAAAAAAAAAAALL;
      buf[3] = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_asn1(&v15[1], &buf[2], 2684354560))
      {
        v4 = 128;
        v5 = 106;
        goto LABEL_34;
      }

      v3 = EC_KEY_parse_parameters(&buf[2]);
      if (!v3)
      {
LABEL_35:
        v6 = 0;
LABEL_36:
        v9 = 0;
LABEL_37:
        EC_KEY_free(v6);
        BN_free(v9);
        return 0;
      }

      if (a2)
      {
        if (EC_GROUP_cmp(a2, v3, 0))
        {
          v4 = 130;
          v5 = 117;
LABEL_34:
          ERR_put_error(15, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v5);
          goto LABEL_35;
        }
      }

      else
      {
        a2 = v3;
      }

      if (buf[3])
      {
        v4 = 128;
        v5 = 121;
        goto LABEL_34;
      }
    }

    else if (!a2)
    {
      v4 = 114;
      v5 = 127;
      goto LABEL_34;
    }

    v8 = EC_KEY_new();
    v6 = v8;
    if (!v8 || !EC_KEY_set_group(v8, a2))
    {
      goto LABEL_36;
    }

    v9 = BN_bin2bn(*&v15[0], SDWORD2(v15[0]), 0);
    v10 = EC_POINT_new(a2);
    *(v6 + 1) = v10;
    if (!v9 || !v10 || !EC_KEY_set_private_key(v6, v9))
    {
      goto LABEL_37;
    }

    if (CBS_peek_asn1_tag(&v15[1], -1610612735))
    {
      memset(buf, 170, sizeof(buf));
      v12 = -86;
      if (!CBS_get_asn1(&v15[1], &buf[2], 2684354561) || !CBS_get_asn1(&buf[2], buf, 3) || !CBS_get_u8(buf, &v12) || v12 || !buf[1] || !EC_POINT_oct2point(a2, *(v6 + 1), buf[0], buf[1], 0) || buf[3])
      {
        v11 = 161;
LABEL_43:
        ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v11);
        goto LABEL_37;
      }

      *(v6 + 7) = *buf[0] & 0xFE;
    }

    else
    {
      if (!ec_point_mul_scalar_base(a2, *(v6 + 1) + 8, *(v6 + 2) + 24))
      {
        goto LABEL_37;
      }

      *(v6 + 6) |= 2u;
    }

    if (!*(&v15[1] + 1))
    {
      if (EC_KEY_check_key(v6))
      {
        BN_free(v9);
        return v6;
      }

      goto LABEL_37;
    }

    v11 = 181;
    goto LABEL_43;
  }

  ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 92);
  return 0;
}

const EC_GROUP *EC_KEY_parse_parameters(__int128 *a1)
{
  if (!CBS_peek_asn1_tag(a1, 536870928))
  {

    return EC_KEY_parse_curve_name(a1);
  }

  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v2;
  v31 = v2;
  v28 = v2;
  v29 = v2;
  v26 = v2;
  v27 = v2;
  memset(v37, 170, sizeof(v37));
  memset(v36, 170, sizeof(v36));
  memset(v35, 170, sizeof(v35));
  v34 = -1431655766;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a1, &v37[1], 536870928) || !CBS_get_asn1_uint64(&v37[1], &v33) || v33 != 1 || !CBS_get_asn1(&v37[1], v37, 536870928) || !CBS_get_asn1(v37, &v36[1], 6) || *(&v36[1] + 1) != 7 || (**&v36[1] == -834107862 ? (v3 = *(*&v36[1] + 3) == 16858574) : (v3 = 0), !v3 || !CBS_get_asn1(v37, &v26, 2) || !CBS_is_unsigned_asn1_integer(&v26) || *(&v37[0] + 1) || !CBS_get_asn1(&v37[1], v36, 536870928) || !CBS_get_asn1(v36, &v27, 4) || !CBS_get_asn1(v36, &v28, 4) || !CBS_get_optional_asn1(v36, 0, 0, 3) || *(&v36[0] + 1) || !CBS_get_asn1(&v37[1], &v35[2], 4) || !CBS_get_asn1(&v37[1], &v31, 2) || !CBS_is_unsigned_asn1_integer(&v31) || !CBS_get_optional_asn1(&v37[1], v35, &v34, 2) || *(&v37[1] + 1)))
  {
    v4 = 128;
    v5 = 288;
LABEL_13:
    ERR_put_error(15, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v5);
    return 0;
  }

  if (v34 && (v35[1] != 1 || *v35[0] != 1))
  {
    v4 = 123;
    v5 = 296;
    goto LABEL_13;
  }

  v32 = -86;
  if (!CBS_get_u8(&v35[2], &v32) || v32 != 4)
  {
    v4 = 111;
    v5 = 304;
    goto LABEL_13;
  }

  if (v35[3])
  {
    v4 = 128;
    v5 = 309;
    goto LABEL_13;
  }

  *&v29 = v35[2];
  *(&v29 + 1) = v35[3] >> 1;
  *&v30 = v35[2] + (v35[3] >> 1);
  *(&v30 + 1) = v35[3] >> 1;
  v7 = BN_new();
  v8 = BN_new();
  v9 = BN_new();
  v10 = BN_new();
  v11 = BN_new();
  v17 = v11;
  v18 = 0;
  if (v7 && v8 && v9 && v10 && v11)
  {
    v19 = 0;
    v20 = &kAllGroups;
    while (1)
    {
      v21 = v19;
      v22 = v20;
      v18 = (*(v20 + v19))(v11, v12, v13, v14, v15, v16);
      v24 = EC_GROUP_get0_order(v18, v23);
      v11 = integers_equal(&v31, v24);
      if (v11)
      {
        break;
      }

      v19 = v21 + 8;
      v20 = v22;
      if (v21 == 24)
      {
        goto LABEL_44;
      }
    }

    if (!EC_GROUP_get_curve_GFp(v18, v7, v8, v9, 0))
    {
LABEL_45:
      v18 = 0;
      goto LABEL_46;
    }

    if (!integers_equal(&v26, v7) || !integers_equal(&v27, v8) || !integers_equal(&v28, v9))
    {
      goto LABEL_44;
    }

    v25 = EC_GROUP_get0_generator(v18);
    if (!EC_POINT_get_affine_coordinates_GFp(v18, v25, v10, v17, 0))
    {
      goto LABEL_45;
    }

    if (!integers_equal(&v29, v10) || !integers_equal(&v30, v17) || !v18)
    {
LABEL_44:
      ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 422);
      goto LABEL_45;
    }
  }

LABEL_46:
  BN_free(v7);
  BN_free(v8);
  BN_free(v9);
  BN_free(v10);
  BN_free(v17);
  return v18;
}

uint64_t EC_KEY_marshal_private_key(uint64_t *a1, void *a2, char a3)
{
  if (a2 && *a2 && a2[2])
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[1] = v6;
    v21[2] = v6;
    v21[0] = v6;
    v20[1] = v6;
    v20[2] = v6;
    v20[0] = v6;
    if (CBB_add_asn1(a1, v21, 0x20000010u) && CBB_add_asn1_uint64(v21, 1uLL) && CBB_add_asn1(v21, v20, 4u) && (v8 = EC_GROUP_get0_order(*a2, v7), v9 = BN_num_bytes(v8), v10 = EVP_HPKE_CTX_kdf(a2), BN_bn2cbb_padded(v20, v9, v10)))
    {
      if ((a3 & 1) != 0 || (*&v11 = 0xAAAAAAAAAAAAAAAALL, *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL, v18 = v11, v19 = v11, v17 = v11, CBB_add_asn1(v21, &v17, 0xA0000000)) && EC_KEY_marshal_curve_name(&v17, *a2) && CBB_flush(v21))
      {
        if ((a3 & 2) != 0 || !a2[1] || (*&v12 = 0xAAAAAAAAAAAAAAAALL, *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL, v18 = v12, v19 = v12, v16[2] = v12, v17 = v12, v16[0] = v12, v16[1] = v12, CBB_add_asn1(v21, &v17, 0xA0000001)) && CBB_add_asn1(&v17, v16, 3u) && CBB_add_u8(v16, 0) && EC_POINT_point2cbb(v16, *a2, a2[1], *(a2 + 7), 0) && CBB_flush(v21))
        {
          if (CBB_flush(a1))
          {
            return 1;
          }

          v14 = 129;
          v15 = 244;
        }

        else
        {
          v14 = 129;
          v15 = 238;
        }
      }

      else
      {
        v14 = 129;
        v15 = 222;
      }
    }

    else
    {
      v14 = 129;
      v15 = 213;
    }
  }

  else
  {
    v14 = 67;
    v15 = 202;
  }

  ERR_put_error(15, 0, v14, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v15);
  return 0;
}

uint64_t EC_KEY_marshal_curve_name(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 525))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6[1] = v4;
    v6[2] = v4;
    v6[0] = v4;
    result = CBB_add_asn1(a1, v6, 6u);
    if (result)
    {
      result = CBB_add_bytes(v6, (a2 + 516), *(a2 + 525));
      if (result)
      {
        return CBB_flush(a1) != 0;
      }
    }
  }

  else
  {
    ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 363);
    return 0;
  }

  return result;
}

BOOL integers_equal(__int128 *a1, char **a2)
{
  v8 = *MEMORY[0x1E69E9840];
  for (i = *a1; *(&i + 1); CBS_skip(&i, 1uLL))
  {
    if (*i)
    {
      if (*(&i + 1) > 0x42uLL)
      {
        return 0;
      }

      break;
    }
  }

  v7 = -21846;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v3;
  v6[3] = v3;
  v6[0] = v3;
  v6[1] = v3;
  if (BN_bn2bin_padded(v6, *(&i + 1), a2))
  {
    return CBS_mem_equal(&i, v6, *(&i + 1));
  }

  ERR_clear_error();
  return 0;
}

EC_KEY *__cdecl d2i_ECPrivateKey(EC_KEY **a, const unsigned __int8 **in, uint64_t len)
{
  if (a && (v6 = *a) != 0)
  {
    v7 = EC_KEY_get0_group(v6);
    if (len < 0)
    {
LABEL_4:
      ERR_put_error(15, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", 454);
      return 0;
    }
  }

  else
  {
    v7 = 0;
    if (len < 0)
    {
      goto LABEL_4;
    }
  }

  *&v10 = *in;
  *(&v10 + 1) = len;
  v8 = EC_KEY_parse_private_key(&v10, v7);
  if (v8)
  {
    if (a)
    {
      EC_KEY_free(*a);
      *a = v8;
    }

    *in = v10;
  }

  return v8;
}

int i2d_ECPrivateKey(EC_KEY *a, unsigned __int8 **out)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v4;
  v8[2] = v4;
  v8[0] = v4;
  if (CBB_init(v8, 0))
  {
    enc_flags = EC_KEY_get_enc_flags(a);
    if (EC_KEY_marshal_private_key(v8, a, enc_flags))
    {
      return CBB_finish_i2d(v8, out);
    }
  }

  CBB_cleanup(v8, v5);
  return -1;
}

uint64_t ed25519_pub_decode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 119);
    return 0;
  }

  else
  {
    v5 = *a3;
    v6 = a3[1];

    return ed25519_set_pub_raw(a1, v5, v6);
  }
}

uint64_t ed25519_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v4;
  v9[2] = v4;
  v9[0] = v4;
  v8[1] = v4;
  v8[2] = v4;
  v7[2] = v4;
  v8[0] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 0x20000010u) && CBB_add_asn1(v8, v7, 6u) && CBB_add_bytes(v7, &unk_1F1CAF0D4, 3uLL) && CBB_add_asn1(v9, v6, 3u) && CBB_add_u8(v6, 0) && CBB_add_bytes(v6, (v3 + 32), 0x20uLL) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 140);
  return 0;
}

BOOL ed25519_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2[4];
  v5 = v2[5];
  v6 = v3[4];
  v7 = v3[5];
  v9 = v2[6];
  v8 = v2[7];
  v11 = v3[6];
  v10 = v3[7];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t ed25519_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (!*(a2 + 8) && CBS_get_asn1(a3, &v6, 4) && !*(a3 + 8))
  {
    return ed25519_set_priv_raw(a1, v6, v7);
  }

  ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 163);
  return 0;
}

uint64_t ed25519_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2[64])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[1] = v4;
    v12[2] = v4;
    v11[2] = v4;
    v12[0] = v4;
    v11[0] = v4;
    v11[1] = v4;
    v10[1] = v4;
    v10[2] = v4;
    v9[2] = v4;
    v10[0] = v4;
    v9[0] = v4;
    v9[1] = v4;
    v8[1] = v4;
    v8[2] = v4;
    v8[0] = v4;
    if (CBB_add_asn1(a1, v12, 0x20000010u) && CBB_add_asn1_uint64(v12, 0) && CBB_add_asn1(v12, v11, 0x20000010u) && CBB_add_asn1(v11, v10, 6u) && CBB_add_bytes(v10, &unk_1F1CAF0D4, 3uLL) && CBB_add_asn1(v12, v9, 4u) && CBB_add_asn1(v9, v8, 4u) && CBB_add_bytes(v8, v2, 0x20uLL) && CBB_flush(a1))
    {
      return 1;
    }

    v6 = 105;
    v7 = 190;
  }

  else
  {
    v6 = 130;
    v7 = 173;
  }

  ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", v7);
  return 0;
}

uint64_t ed25519_set_priv_raw(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 != 32)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 33);
    return 0;
  }

  v5 = OPENSSL_malloc(0x41uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v7;
  v10[1] = v7;
  ED25519_keypair_from_seed(v10, v5, a2);
  v8 = 1;
  *(v6 + 64) = 1;
  OPENSSL_free(*(a1 + 8));
  *(a1 + 8) = v6;
  return v8;
}

uint64_t ed25519_set_pub_raw(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    result = OPENSSL_malloc(0x41uLL);
    if (result)
    {
      v6 = result;
      v7 = a2[1];
      *(result + 32) = *a2;
      *(result + 48) = v7;
      *(result + 64) = 0;
      OPENSSL_free(*(a1 + 8));
      *(a1 + 8) = v6;
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 55);
    return 0;
  }

  return result;
}

uint64_t ed25519_get_priv_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 64))
  {
    v4 = 130;
    v5 = 76;
    goto LABEL_6;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v4 = 100;
      v5 = 86;
LABEL_6:
      ERR_put_error(6, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", v5);
      return 0;
    }

    v7 = *(v3 + 16);
    *a2 = *v3;
    a2[1] = v7;
  }

  *a3 = 32;
  return 1;
}

uint64_t ed25519_get_pub_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519_asn1.c", 105);
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = *(v4 + 48);
    *a2 = *(v4 + 32);
    a2[1] = v5;
  }

  *a3 = 32;
  return 1;
}

char *boringssl_ciphers_create_configuration_string(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        while (1)
        {
          v10 = boringssl_ciphers_value_to_string(*(a1 + 2 * v9));
          if (v10)
          {
            break;
          }

          if (a2 == ++v9)
          {
            if (v7)
            {
              goto LABEL_14;
            }

            if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
            {
              boringssl_ciphers_create_configuration_string_cold_1();
            }

LABEL_23:
            CFRelease(v6);
            return 0;
          }
        }

        v11 = v10;
        if (v7)
        {
          CFStringAppend(v6, @":");
        }

        CFStringAppendCString(v6, v11, 0x8000100u);
        v8 = v9 + 1;
        v7 = 1;
      }

      while (a2 - 1 != v9);
LABEL_14:
      Length = CFStringGetLength(v6);
      v13 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
      if (!v13)
      {
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_ciphers_create_configuration_string_cold_3();
        }

        goto LABEL_23;
      }

      v2 = v13;
      if (CFStringGetCString(v6, v13, Length + 1, 0x8000100u))
      {
        CFRelease(v6);
        return v2;
      }

      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_ciphers_create_configuration_string_cold_2();
      }

      CFRelease(v6);
      free(v2);
    }

    return 0;
  }

  return v2;
}

void boringssl_session_update_eap_metadata(uint64_t a1)
{
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v2 = *(a1 + 8);
      if (v2)
      {
        if (*(v2 + 392) && *(v2 + 292) == 2)
        {
          v9 = 0;
          v10 = &v9;
          v11 = 0x2020000000;
          v12 = 0;
          v5 = 0;
          v6 = &v5;
          v7 = 0x2020000000;
          v8 = 0;
          v3[0] = 0;
          v3[1] = v3;
          v3[2] = 0x2020000000;
          v4 = 0;
          nw_protocol_options_access_handle();
          if (v6[3] && v10[3])
          {
            if (*a1 == -1252936367)
            {
              if (*(a1 + 8))
              {
                nw_protocol_metadata_access_handle();
              }
            }

            nw_protocol_metadata_access_handle();
          }

          _Block_object_dispose(v3, 8);
          _Block_object_dispose(&v5, 8);
          _Block_object_dispose(&v9, 8);
        }
      }
    }
  }
}

void sub_1A9043298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

BOOL __boringssl_session_update_eap_metadata_block_invoke(void *a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return a2 != 0;
  }

  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(*(a1[7] + 512));
  if (*(a2 + 368) == 1)
  {
    v6 = a1[7];
    if (negotiated_tls_protocol_version == 772)
    {
      if (!v6)
      {
        goto LABEL_23;
      }

      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (WeakRetained)
      {
        v8 = WeakRetained;
        v9 = objc_loadWeakRetained((a1[7] + 16));
        v2 = v9[435];

        if (v2)
        {
          goto LABEL_62;
        }
      }

      v10 = a1[7];
      if (v10)
      {
        v11 = objc_loadWeakRetained((v10 + 16));
        if (v11)
        {
          v12 = objc_loadWeakRetained((a1[7] + 16));
          v13 = (v12[435] & 1) == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          goto LABEL_62;
        }
      }

      else
      {
LABEL_23:
        v13 = 1;
      }

      if (!g_boringssl_log)
      {
LABEL_62:
        *(*(a1[4] + 8) + 24) = "EXPORTER_EAP_TLS_Key_Material";
        *(*(a1[5] + 8) + 24) = 29;
        *(*(a1[6] + 8) + 24) = 1;
        return a2 != 0;
      }

      v30 = g_boringssl_log;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v31 = a1[7];
      if (v31)
      {
        v13 = objc_loadWeakRetained((v31 + 16));
        v32 = a1[7];
        if (v13)
        {
          v33 = v32 != 0;
          if (v32)
          {
            v2 = objc_loadWeakRetained((v32 + 16));
            v32 = a1[7];
          }

          else
          {
            v2 = 0;
          }

          v40 = v2 + 351;
        }

        else
        {
          v33 = 0;
          v40 = &unk_1A9098A9F;
        }

        if (v32)
        {
          v38 = objc_loadWeakRetained((v32 + 16));
          v39 = 0;
        }

        else
        {
          v38 = 0;
          v39 = 1;
        }
      }

      else
      {
        v33 = 0;
        v38 = 0;
        v39 = 1;
        v40 = &unk_1A9098A9F;
      }

      v51 = 136446978;
      v52 = "boringssl_session_update_eap_metadata_block_invoke";
      v53 = 1024;
      v54 = 104;
      v55 = 2082;
      v56 = v40;
      v57 = 2048;
      v58 = v38;
      _os_log_impl(&dword_1A8FF5000, v30, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] TLS handshake is complete using TLS 1.3 version", &v51, 0x26u);
      if (v39)
      {
        if (!v33)
        {
          goto LABEL_59;
        }
      }

      else
      {

        if (!v33)
        {
LABEL_59:
          if (v31)
          {
LABEL_60:
          }

LABEL_61:

          goto LABEL_62;
        }
      }

      if (!v31)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (!v6)
    {
      goto LABEL_24;
    }

    v22 = objc_loadWeakRetained((v6 + 16));
    if (v22)
    {
      v23 = v22;
      v24 = objc_loadWeakRetained((a1[7] + 16));
      v2 = v24[435];

      if (v2)
      {
        goto LABEL_76;
      }
    }

    v25 = a1[7];
    if (v25)
    {
      v26 = objc_loadWeakRetained((v25 + 16));
      if (v26)
      {
        v27 = objc_loadWeakRetained((a1[7] + 16));
        v28 = (v27[435] & 1) == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_24:
      v28 = 1;
    }

    if (!g_boringssl_log)
    {
LABEL_76:
      *(*(a1[4] + 8) + 24) = "client EAP encryption";
      *(*(a1[5] + 8) + 24) = 21;
      return a2 != 0;
    }

    v34 = g_boringssl_log;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      goto LABEL_75;
    }

    v35 = a1[7];
    if (v35)
    {
      v28 = objc_loadWeakRetained((v35 + 16));
      v36 = a1[7];
      if (v28)
      {
        v37 = v36 != 0;
        if (v36)
        {
          v2 = objc_loadWeakRetained((v36 + 16));
          v36 = a1[7];
        }

        else
        {
          v2 = 0;
        }

        v43 = v2 + 351;
      }

      else
      {
        v37 = 0;
        v43 = &unk_1A9098A9F;
      }

      if (v36)
      {
        v41 = objc_loadWeakRetained((v36 + 16));
        v42 = 0;
      }

      else
      {
        v41 = 0;
        v42 = 1;
      }
    }

    else
    {
      v37 = 0;
      v41 = 0;
      v42 = 1;
      v43 = &unk_1A9098A9F;
    }

    v51 = 136446978;
    v52 = "boringssl_session_update_eap_metadata_block_invoke";
    v53 = 1024;
    v54 = 109;
    v55 = 2082;
    v56 = v43;
    v57 = 2048;
    v58 = v41;
    _os_log_impl(&dword_1A8FF5000, v34, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] TLS handshake is complete using legacy TLS version", &v51, 0x26u);
    if (v42)
    {
      if (!v37)
      {
        goto LABEL_73;
      }
    }

    else
    {

      if (!v37)
      {
LABEL_73:
        if (v35)
        {
LABEL_74:
        }

LABEL_75:

        goto LABEL_76;
      }
    }

    if (!v35)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v14 = a1[7];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = objc_loadWeakRetained((v14 + 16));
  if (v15)
  {
    v16 = v15;
    v17 = objc_loadWeakRetained((a1[7] + 16));
    v2 = v17[435];

    if (v2)
    {
      return a2 != 0;
    }
  }

  v18 = a1[7];
  if (v18)
  {
    v19 = objc_loadWeakRetained((v18 + 16));
    if (v19)
    {
      v20 = objc_loadWeakRetained((a1[7] + 16));
      v21 = (v20[435] & 1) == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      return a2 != 0;
    }
  }

  else
  {
LABEL_16:
    v21 = 1;
  }

  if (g_boringssl_log)
  {
    v29 = g_boringssl_log;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_29:

      return a2 != 0;
    }

    v44 = a1[7];
    if (v44)
    {
      v21 = objc_loadWeakRetained((v44 + 16));
      v50 = a1[7];
      if (v21)
      {
        v45 = v50 != 0;
        if (v50)
        {
          v2 = objc_loadWeakRetained((v50 + 16));
          v50 = a1[7];
        }

        else
        {
          v2 = 0;
        }

        v48 = v2 + 351;
      }

      else
      {
        v45 = 0;
        v48 = &unk_1A9098A9F;
      }

      if (v50)
      {
        v46 = objc_loadWeakRetained((v50 + 16));
        v47 = 0;
      }

      else
      {
        v46 = 0;
        v47 = 1;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = 1;
      v48 = &unk_1A9098A9F;
    }

    v51 = 136446978;
    v52 = "boringssl_session_update_eap_metadata_block_invoke";
    v53 = 1024;
    v54 = 115;
    v55 = 2082;
    v56 = v48;
    v57 = 2048;
    v58 = v46;
    _os_log_error_impl(&dword_1A8FF5000, v29, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Unexpected EAP method", &v51, 0x26u);
    if (v47)
    {
      if (!v45)
      {
        goto LABEL_92;
      }
    }

    else
    {

      if (!v45)
      {
LABEL_92:
        if (!v44)
        {
          goto LABEL_29;
        }

        goto LABEL_96;
      }
    }

    if (!v44)
    {
      goto LABEL_29;
    }

LABEL_96:

    goto LABEL_29;
  }

  return a2 != 0;
}

uint64_t __boringssl_session_update_eap_metadata_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  *(a2 + 328) = v5;
  if (v5)
  {
    if (SSL_export_keying_material(*(*(a1 + 64) + 392), v5, 128, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), *(a1 + 72), *(a1 + 80), *(*(*(a1 + 48) + 8) + 24)))
    {
      return 1;
    }

    v6 = *(a2 + 328);
    if (v6)
    {
      free(v6);
    }

    *(a2 + 328) = 0;
    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_18;
    }

    WeakRetained = objc_loadWeakRetained((v7 + 16));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = objc_loadWeakRetained((*(a1 + 56) + 16));
      v2 = v10[435];

      if (v2)
      {
        return 1;
      }
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = objc_loadWeakRetained((v11 + 16));
      if (v12)
      {
        v13 = objc_loadWeakRetained((*(a1 + 56) + 16));
        v14 = (v13[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return 1;
      }
    }

    else
    {
LABEL_18:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v23 = *(a1 + 56);
      if (v23)
      {
        v14 = objc_loadWeakRetained((v23 + 16));
        v31 = *(a1 + 56);
        if (v14)
        {
          v24 = v31 != 0;
          if (v31)
          {
            v2 = objc_loadWeakRetained((v31 + 16));
            v31 = *(a1 + 56);
          }

          else
          {
            v2 = 0;
          }

          v29 = v2 + 351;
        }

        else
        {
          v24 = 0;
          v29 = &unk_1A9098A9F;
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
        v29 = &unk_1A9098A9F;
      }

      v33 = 136446978;
      v34 = "boringssl_session_update_eap_metadata_block_invoke";
      v35 = 1024;
      v36 = 145;
      v37 = 2082;
      v38 = v29;
      v39 = 2048;
      v40 = v25;
      v32 = "%{public}s(%d) %{public}s[%p] EAP key material computation failed";
      goto LABEL_53;
    }
  }

  else
  {
    v15 = *(a1 + 56);
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = objc_loadWeakRetained((v15 + 16));
    if (v16)
    {
      v17 = v16;
      v18 = objc_loadWeakRetained((*(a1 + 56) + 16));
      v2 = v18[435];

      if (v2)
      {
        return 1;
      }
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      v20 = objc_loadWeakRetained((v19 + 16));
      if (v20)
      {
        v21 = objc_loadWeakRetained((*(a1 + 56) + 16));
        v14 = (v21[435] & 1) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return 1;
      }
    }

    else
    {
LABEL_17:
      v14 = 1;
    }

    if (g_boringssl_log)
    {
      v22 = g_boringssl_log;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_29:

        return 1;
      }

      v23 = *(a1 + 56);
      if (v23)
      {
        v14 = objc_loadWeakRetained((v23 + 16));
        v30 = *(a1 + 56);
        if (v14)
        {
          v24 = v30 != 0;
          if (v30)
          {
            v2 = objc_loadWeakRetained((v30 + 16));
            v30 = *(a1 + 56);
          }

          else
          {
            v2 = 0;
          }

          v27 = v2 + 351;
        }

        else
        {
          v24 = 0;
          v27 = &unk_1A9098A9F;
        }

        if (v30)
        {
          v25 = objc_loadWeakRetained((v30 + 16));
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
      v34 = "boringssl_session_update_eap_metadata_block_invoke";
      v35 = 1024;
      v36 = 134;
      v37 = 2082;
      v38 = v27;
      v39 = 2048;
      v40 = v25;
      v32 = "%{public}s(%d) %{public}s[%p] EAP key material allocation failed";
LABEL_53:
      _os_log_error_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_ERROR, v32, &v33, 0x26u);
      if (v26)
      {
        if (!v24)
        {
          goto LABEL_55;
        }
      }

      else
      {

        if (!v24)
        {
LABEL_55:
          if (!v23)
          {
            goto LABEL_29;
          }

          goto LABEL_59;
        }
      }

      if (!v23)
      {
        goto LABEL_29;
      }

LABEL_59:

      goto LABEL_29;
    }
  }

  return 1;
}

uint64_t boringssl_session_handshake_error_print(uint64_t a1, uint64_t a2, uint64_t a3)
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
      boringssl_session_handshake_error_print_cold_1();
    }

    return 1;
  }

  return result;
}

void *boringssl_session_export_secret_with_context(uint64_t a1, size_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (!v6 || !*(v6 + 392))
  {
    return 0;
  }

  v12 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a6;
    v14 = malloc_type_malloc(a6, 0x100004077774924uLL);
    v13[1] = v14;
    if (!v14)
    {
LABEL_10:
      free(v13);
      return 0;
    }

    if (!SSL_export_keying_material(*(v6 + 392), v14, *v13, a3, a2, a5, a4, 1))
    {
      v15 = v13[1];
      if (v15)
      {
        free(v15);
      }

      goto LABEL_10;
    }
  }

  return v13;
}

dispatch_data_t boringssl_session_export_secret_data(uint64_t a1, size_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = boringssl_session_export_secret_with_context(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = dispatch_data_create(v6[1], *v6, 0, 0);
  v9 = v7[1];
  if (v9)
  {
    free(v9);
  }

  free(v7);
  return v8;
}

dispatch_data_t boringssl_session_copy_authenticator(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a1 && *a1 == -1252936367)
  {
    v9 = 0;
    if (v7)
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = boringssl_identity_create_from_identity(v7);
        if (v11 && boringssl_context_set_temporary_identity(a1, v8) && (v14 = 0xAAAAAAAAAAAAAAAALL, v15 = 0, v12 = SSL_generate_authenticator(*(v10 + 392), a3, a4, &v15, &v14), boringssl_context_set_temporary_identity(a1, 0), v12))
        {
          v9 = dispatch_data_create(v15, v14, 0, 0);
          OPENSSL_free(v15);
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

sec_trust_t boringssl_session_copy_authenticator_trust(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0;
  }

  v3 = 0;
  if (a3)
  {
    if (a2)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        if (SSL_validate_authenticator(*(v4 + 392), a2, a3))
        {
          session = SSL_get_session(*(v4 + 392));
          v6 = SSL_SESSION_get0_peer_certificates(session);
          v7 = boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs(v4, v6);
          if (v7)
          {
            v8 = v7;
            SSLWithKeyUsage = SecPolicyCreateSSLWithKeyUsage();
            if (SSLWithKeyUsage)
            {
              v10 = SSLWithKeyUsage;
              trust = 0;
              SecTrustCreateWithCertificates(v8, SSLWithKeyUsage, &trust);
              CFRelease(v10);
              CFRelease(v8);
              if (trust)
              {
                v3 = sec_trust_create(trust);
                CFRelease(trust);
                return v3;
              }
            }

            else
            {
              CFRelease(v8);
            }

            return 0;
          }

          WeakRetained = objc_loadWeakRetained((v4 + 16));
          if (WeakRetained)
          {
            v19 = WeakRetained;
            v20 = objc_loadWeakRetained((v4 + 16));
            v21 = v20[435];

            if (v21)
            {
              return 0;
            }
          }

          v22 = objc_loadWeakRetained((v4 + 16));
          if (v22)
          {
            v23 = objc_loadWeakRetained((v4 + 16));
            v24 = (v23[435] & 1) == 0;
          }

          else
          {
            v24 = 1;
          }

          v3 = 0;
          if (v24 && g_boringssl_log)
          {
            v25 = g_boringssl_log;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              boringssl_session_copy_authenticator_trust_cold_1();
            }

LABEL_30:

            return 0;
          }
        }

        else
        {
          v11 = objc_loadWeakRetained((v4 + 16));
          if (v11)
          {
            v12 = v11;
            v13 = objc_loadWeakRetained((v4 + 16));
            v14 = v13[435];

            if (v14)
            {
              return 0;
            }
          }

          v15 = objc_loadWeakRetained((v4 + 16));
          if (v15)
          {
            v16 = objc_loadWeakRetained((v4 + 16));
            v17 = (v16[435] & 1) == 0;
          }

          else
          {
            v17 = 1;
          }

          v3 = 0;
          if (v17 && g_boringssl_log)
          {
            v25 = g_boringssl_log;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              boringssl_session_copy_authenticator_trust_cold_2();
            }

            goto LABEL_30;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t boringssl_session_get_stack_error(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v1 + 16));

  if (!WeakRetained)
  {
    return 0;
  }

  v3 = objc_loadWeakRetained((v1 + 16));
  error = nw_protocol_boringssl_get_error(v3);

  return error;
}

uint64_t boringssl_session_get_negotiated_pake(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0 && (v2 = *(v1 + 392)) != 0)
  {
    return SSL_negotiated_pake(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t boringssl_session_get_current_handshake_state(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 296);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_get_ech_was_used(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*result == -1252936367 && (v2 = *(result + 8)) != 0)
    {
      result = *(v2 + 392);
      if (result)
      {
        return SSL_ech_accepted(result);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_session_set_ech_config(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_21;
  }

  v5 = 0;
  if (v3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = *(v6 + 392);
      if (!v7)
      {
        goto LABEL_21;
      }

      size = dispatch_data_get_size(v3);
      if (!size)
      {
        goto LABEL_21;
      }

      v9 = size;
      v5 = malloc_type_malloc(size, 0x100004077774924uLL);
      if (v5)
      {
        boringssl_helper_dispatch_data_copyout(v4, v5, v9);
        if (SSL_set1_ech_config_list(v7, v5, v9))
        {
          free(v5);
          v5 = 1;
          goto LABEL_22;
        }

        WeakRetained = objc_loadWeakRetained((v6 + 16));
        if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained((v6 + 16)), v13 = v12[435], v12, v11, (v13 & 1) == 0))
        {
          v14 = objc_loadWeakRetained((v6 + 16));
          if (v14)
          {
            v15 = objc_loadWeakRetained((v6 + 16));
            v16 = (v15[435] & 1) == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            if (g_boringssl_log)
            {
              v17 = g_boringssl_log;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                boringssl_session_set_ech_config_cold_1();
              }
            }
          }
        }

        free(v5);
LABEL_21:
        v5 = 0;
      }
    }
  }

LABEL_22:

  return v5;
}

uint64_t boringssl_private_key_sign_callback(const SSL *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, const void *a6, size_t a7)
{
  v13 = SSL_get_ex_data(a1, 0);
  if (!v13)
  {
    return 2;
  }

  v14 = v13;
  if (*v13 != -1252936367)
  {
    return 2;
  }

  v15 = v13[1];
  if (!v15)
  {
    return 2;
  }

  boringssl_session_update_metadata(v13, 0);
  v16 = dispatch_data_create(a6, a7, 0, 0);
  v17 = v15[12];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __boringssl_private_key_sign_callback_block_invoke;
  v21[3] = &__block_descriptor_40_e45_v20__0__boringssl_concrete_boringssl_ctx_8B16l;
  v21[4] = v14;
  v18 = boringssl_identity_private_key_sign(v17, a2, a3, a4, a5, v16, v15, v21);
  if (v18 > 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = dword_1A90A9338[v18];
  }

  return v19;
}

uint64_t boringssl_private_key_decrypt_callback(const SSL *a1, void *a2, size_t *a3, size_t a4, const void *a5, size_t a6)
{
  v11 = SSL_get_ex_data(a1, 0);
  if (!v11)
  {
    return 2;
  }

  v12 = v11;
  if (*v11 != -1252936367)
  {
    return 2;
  }

  v13 = v11[1];
  if (!v13)
  {
    return 2;
  }

  boringssl_session_update_metadata(v11, 0);
  v14 = dispatch_data_create(a5, a6, 0, 0);
  v15 = v13[12];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __boringssl_private_key_decrypt_callback_block_invoke;
  v19[3] = &__block_descriptor_40_e45_v20__0__boringssl_concrete_boringssl_ctx_8B16l;
  v19[4] = v12;
  v16 = boringssl_identity_private_key_decrypt(v15, a2, a3, a4, v14, v13, v19);
  if (v16 > 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = dword_1A90A9338[v16];
  }

  return v17;
}

uint64_t boringssl_private_key_complete(const SSL *a1, uint64_t a2, size_t *a3, uint64_t a4)
{
  v7 = SSL_get_ex_data(a1, 0);
  if (v7 && *v7 == -1252936367 && (v8 = v7[1]) != 0 && (v9 = boringssl_identity_private_key_complete(*(v8 + 96), a2, a3, a4), v9 <= 2))
  {
    return dword_1A90A9338[v9];
  }

  else
  {
    return 2;
  }
}

uint64_t __boringssl_session_apply_protocol_options_for_transport_block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = xpc_array_get_value(v4, 0);
  v6 = xpc_array_get_value(v4, 1uLL);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  length = xpc_data_get_length(v5);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = malloc_type_malloc(v36[3], 0x7EF0C982uLL);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = xpc_data_get_length(v6);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = malloc_type_malloc(v28[3], 0x10E9EEC3uLL);
  v7 = v32[3];
  if (v7)
  {
    if (v24[3])
    {
      bytes = xpc_data_get_bytes(v5, v7, 0, v36[3]);
      v9 = xpc_data_get_bytes(v6, v24[3], 0, v28[3]);
      if (bytes == v36[3] && v9 == v28[3])
      {
        v10 = v32[3];
        v11 = dispatch_workloop_copy_current();
        destructor[0] = MEMORY[0x1E69E9820];
        destructor[1] = 3221225472;
        destructor[2] = __boringssl_session_apply_protocol_options_for_transport_block_invoke_2;
        destructor[3] = &unk_1E785EA58;
        destructor[4] = &v35;
        destructor[5] = &v31;
        v12 = dispatch_data_create(v10, bytes, v11, destructor);

        v13 = v24[3];
        v14 = v28[3];
        v15 = dispatch_workloop_copy_current();
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __boringssl_session_apply_protocol_options_for_transport_block_invoke_19;
        v21[3] = &unk_1E785EA58;
        v21[4] = &v27;
        v21[5] = &v23;
        v16 = dispatch_data_create(v13, v14, v15, v21);

        v17 = boringssl_psk_create(v12, v16);
        boringssl_psk_cache_add_psk(*(*(a1 + 32) + 40), v17);

        goto LABEL_12;
      }

      cc_clear();
      v18 = v32[3];
      if (v18)
      {
        free(v18);
        v32[3] = 0;
      }

      cc_clear();
    }

    else
    {
      free(v32[3]);
      v32[3] = 0;
    }
  }

  v19 = v24[3];
  if (v19)
  {
    free(v19);
    v24[3] = 0;
  }

LABEL_12:
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return 1;
}

void sub_1A9044ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_2(uint64_t a1)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    __boringssl_session_apply_protocol_options_for_transport_block_invoke_2_cold_1();
  }

  cc_clear();
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    free(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __boringssl_session_apply_protocol_options_for_transport_block_invoke_19(uint64_t a1)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    __boringssl_session_apply_protocol_options_for_transport_block_invoke_19_cold_1();
  }

  cc_clear();
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    free(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

const SSL *boringssl_session_psk_client13_ext_callback_handler(const SSL *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    result = SSL_get_ex_data(result, 0);
    if (result)
    {
      if (result->version == -1252936367 && result->method)
      {
        return (nw_protocol_options_access_handle() ^ 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

size_t boringssl_session_server_psk_callback_handler(const SSL *a1, const char *a2, uint64_t a3, unsigned int a4)
{
  if (a1)
  {
    v7 = SSL_get_ex_data(a1, 0);
    if (v7)
    {
      if (*v7 == -1252936367)
      {
        v8 = v7[1];
        if (v8)
        {
          nw_protocol_metadata_access_handle();
          if (a2 && *a2)
          {
            WeakRetained = objc_loadWeakRetained((v8 + 16));
            if (!WeakRetained || (v10 = WeakRetained, v11 = objc_loadWeakRetained((v8 + 16)), v12 = v11[435], v11, v10, (v12 & 1) == 0))
            {
              v13 = objc_loadWeakRetained((v8 + 16));
              if (v13)
              {
                v14 = objc_loadWeakRetained((v8 + 16));
                v15 = (v14[435] & 1) == 0;
              }

              else
              {
                v15 = 1;
              }

              if (v15)
              {
                if (g_boringssl_log)
                {
                  v28 = g_boringssl_log;
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    boringssl_session_server_psk_callback_handler_cold_1();
                  }
                }
              }
            }

            v29 = strlen(a2);
            v30 = dispatch_data_create(a2, v29, 0, 0);
            psk = boringssl_psk_cache_lookup_psk(*(v8 + 40), v30, *(v8 + 512));

            if (!psk)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v18 = objc_loadWeakRetained((v8 + 16));
            if (!v18 || (v19 = v18, v20 = objc_loadWeakRetained((v8 + 16)), v21 = v20[435], v20, v19, (v21 & 1) == 0))
            {
              v22 = objc_loadWeakRetained((v8 + 16));
              if (v22)
              {
                v23 = objc_loadWeakRetained((v8 + 16));
                v24 = (v23[435] & 1) == 0;
              }

              else
              {
                v24 = 1;
              }

              if (v24)
              {
                if (g_boringssl_log)
                {
                  v25 = g_boringssl_log;
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    boringssl_session_server_psk_callback_handler_cold_2();
                  }
                }
              }
            }

            psk = boringssl_psk_cache_copy_first_psk(*(v8 + 40));
            if (!psk)
            {
LABEL_34:
              v31 = objc_loadWeakRetained((v8 + 16));
              if (!v31 || (v32 = v31, v33 = objc_loadWeakRetained((v8 + 16)), v34 = v33[435], v33, v32, (v34 & 1) == 0))
              {
                v35 = objc_loadWeakRetained((v8 + 16));
                if (v35)
                {
                  v36 = objc_loadWeakRetained((v8 + 16));
                  v37 = (v36[435] & 1) == 0;
                }

                else
                {
                  v37 = 1;
                }

                size = 0;
                if (!v37 || !g_boringssl_log)
                {
                  goto LABEL_45;
                }

                v38 = g_boringssl_log;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  boringssl_session_server_psk_callback_handler_cold_3();
                }
              }

              size = 0;
LABEL_45:

              return size;
            }
          }

          v27 = boringssl_psk_copy_key(psk);
          size = dispatch_data_get_size(v27);
          if (size)
          {
            *(v8 + 552) |= 1u;
            boringssl_helper_dispatch_data_copyout(v27, a3, a4);
          }

          goto LABEL_45;
        }
      }
    }
  }

  return 0;
}

uint64_t boringssl_session_client_psk_callback_handler(const SSL *a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  if (a1)
  {
    LODWORD(v6) = a6;
    v11 = SSL_get_ex_data(a1, 0);
    if (v11)
    {
      if (*v11 == -1252936367)
      {
        v12 = v11[1];
        if (v12)
        {
          nw_protocol_metadata_access_handle();
          WeakRetained = objc_loadWeakRetained((v12 + 16));
          v14 = WeakRetained;
          if (a2)
          {
            if (!WeakRetained || (v15 = objc_loadWeakRetained((v12 + 16)), v16 = v15[435], v15, v14, (v16 & 1) == 0))
            {
              v17 = objc_loadWeakRetained((v12 + 16));
              if (v17)
              {
                v18 = objc_loadWeakRetained((v12 + 16));
                v19 = (v18[435] & 1) == 0;
              }

              else
              {
                v19 = 1;
              }

              if (v19)
              {
                if (g_boringssl_log)
                {
                  v26 = g_boringssl_log;
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    boringssl_session_client_psk_callback_handler_cold_1();
                  }
                }
              }
            }

            v27 = strlen(a2);
            v28 = dispatch_data_create(a2, v27, 0, 0);
LABEL_30:
            v30 = boringssl_psk_cache_lookup_psk(*(v12 + 40), v28, *(v12 + 512));
            v31 = v30;
            if (v30)
            {
              v32 = boringssl_psk_copy_identity(v30);
              v33 = v32;
              if (v32 && dispatch_data_get_size(v32))
              {
                boringssl_helper_dispatch_data_copyout(v33, a3, a4);
              }

              v34 = boringssl_psk_copy_key(v31);
              v35 = v34;
              if (v34)
              {
                size = dispatch_data_get_size(v34);
                v37 = v6;
                if (size >= v6)
                {
                  v6 = v6;
                }

                else
                {
                  v6 = size;
                }

                boringssl_helper_dispatch_data_copyout(v35, a5, v37);
              }

              else
              {
                v6 = 0;
              }

              *(v12 + 552) |= 1u;
            }

            else
            {
              v38 = objc_loadWeakRetained((v12 + 16));
              if (v38)
              {
                v39 = v38;
                v40 = objc_loadWeakRetained((v12 + 16));
                v41 = v40[435];

                if (v41)
                {
                  v6 = 0;
                  goto LABEL_46;
                }
              }

              v42 = objc_loadWeakRetained((v12 + 16));
              if (v42)
              {
                v43 = objc_loadWeakRetained((v12 + 16));
                v44 = (v43[435] & 1) == 0;
              }

              else
              {
                v44 = 1;
              }

              v6 = 0;
              if (!v44 || !g_boringssl_log)
              {
                goto LABEL_46;
              }

              v33 = g_boringssl_log;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                boringssl_session_client_psk_callback_handler_cold_3();
              }

              v6 = 0;
            }

LABEL_46:
            return v6;
          }

          if (!WeakRetained || (v21 = objc_loadWeakRetained((v12 + 16)), v22 = v21[435], v21, v14, (v22 & 1) == 0))
          {
            v23 = objc_loadWeakRetained((v12 + 16));
            if (v23)
            {
              v24 = objc_loadWeakRetained((v12 + 16));
              v25 = (v24[435] & 1) == 0;
            }

            else
            {
              v25 = 1;
            }

            v28 = 0;
            if (!v25 || !g_boringssl_log)
            {
              goto LABEL_30;
            }

            v29 = g_boringssl_log;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              boringssl_session_client_psk_callback_handler_cold_2();
            }
          }

          v28 = 0;
          goto LABEL_30;
        }
      }
    }
  }

  return 0;
}

BOOL __boringssl_session_apply_protocol_options_for_transport_block_invoke_22(uint64_t a1, size_t a2)
{
  uint64 = xpc_array_get_uint64(*(a1 + 32), a2);
  if (uint64 == 4588)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      if (*v4 == -1252936367)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          *(v5 + 552) |= 0x20u;
        }
      }
    }
  }

  return uint64 != 4588;
}

void __boringssl_context_start_handshake_timer_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 320);
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*v2 == -1252936367)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        if ((*(v3 + 548) & 0x20) != 0)
        {
          v4 = *(v3 + 392);
          if (!v4 || (memset(v24, 170, 16), !DTLSv1_get_timeout(v4, v24)) || *v24 || *&v24[8] || (v6 = *(v3 + 392)) != 0 && DTLSv1_handle_timeout(v6, v5) == 1)
          {
            boringssl_context_start_handshake_timer(v2);
          }

          else
          {
            WeakRetained = objc_loadWeakRetained((v3 + 16));
            if (!WeakRetained || (v8 = WeakRetained, v9 = objc_loadWeakRetained((v3 + 16)), v1 = v9[435], v9, v8, (v1 & 1) == 0))
            {
              v10 = objc_loadWeakRetained((v3 + 16));
              if (v10)
              {
                v11 = objc_loadWeakRetained((v3 + 16));
                v12 = (v11[435] & 1) == 0;
              }

              else
              {
                v12 = 1;
              }

              if (v12)
              {
                if (g_boringssl_log)
                {
                  v13 = g_boringssl_log;
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                  {
                    v14 = objc_loadWeakRetained((v3 + 16));
                    if (v14)
                    {
                      v1 = objc_loadWeakRetained((v3 + 16));
                      v15 = v1 + 351;
                    }

                    else
                    {
                      v15 = &unk_1A9098A9F;
                    }

                    v16 = objc_loadWeakRetained((v3 + 16));
                    *v24 = 136447234;
                    *&v24[4] = "boringssl_context_handle_handshake_timer";
                    *&v24[12] = 1024;
                    *&v24[14] = 347;
                    v25 = 2082;
                    v26 = v15;
                    v27 = 2048;
                    v28 = v16;
                    v29 = 1024;
                    v30 = 10;
                    _os_log_impl(&dword_1A8FF5000, v13, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Handshake took more than %d seconds to complete, closing this session", v24, 0x2Cu);

                    if (v14)
                    {
                    }
                  }
                }
              }
            }

            v17 = objc_loadWeakRetained((v3 + 16));
            v18 = v17[35];

            if (v18)
            {
              v19 = objc_loadWeakRetained((v3 + 16));
              nw_queue_cancel_source();

              v20 = objc_loadWeakRetained((v3 + 16));
              v20[35] = 0;
            }

            v21 = objc_loadWeakRetained((v3 + 16));
            nw_protocol_boringssl_internal_error(v21, 60);

            v22 = objc_loadWeakRetained((v3 + 16));
            v23 = nw_protocol_upcast();
            nw_protocol_boringssl_disconnect(v23);
          }
        }
      }
    }
  }
}

void __boringssl_context_start_handshake_timer_block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v1 = v6[435];

    if (v1)
    {
      return;
    }
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_10;
  }

  v8 = objc_loadWeakRetained((v7 + 16));
  if (v8)
  {
    v9 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v10 = (v9[435] & 1) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_10:
    if (!g_boringssl_log)
    {
      return;
    }

    v11 = g_boringssl_log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v10 = objc_loadWeakRetained((v12 + 16));
      v17 = *(a1 + 32);
      if (v10)
      {
        v13 = v17 != 0;
        if (v17)
        {
          v1 = objc_loadWeakRetained((v17 + 16));
          v17 = *(a1 + 32);
        }

        else
        {
          v1 = 0;
        }

        v16 = v1 + 351;
      }

      else
      {
        v13 = 0;
        v16 = &unk_1A9098A9F;
      }

      if (v17)
      {
        v14 = objc_loadWeakRetained((v17 + 16));
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 1;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = &unk_1A9098A9F;
    }

    v18 = 136446978;
    v19 = "boringssl_context_start_handshake_timer_block_invoke_2";
    v20 = 1024;
    v21 = 379;
    v22 = 2082;
    v23 = v16;
    v24 = 2048;
    v25 = v14;
    _os_log_debug_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Cancelling TLS handshake timer", &v18, 0x26u);
    if (v15)
    {
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    else
    {

      if (!v13)
      {
LABEL_27:
        if (!v12)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }
    }

    if (!v12)
    {
LABEL_12:

      return;
    }

LABEL_31:

    goto LABEL_12;
  }
}

void __boringssl_private_key_sign_callback_block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    if (!v6 || *v6 != -1252936367 || (v7 = *(v6 + 8)) == 0 || *(v7 + 292) <= 3u && (*(v7 + 548) & 2) == 0)
    {
      v9 = v5;
      WeakRetained = objc_loadWeakRetained(v5 + 2);
      nw_protocol_boringssl_handshake_negotiate(WeakRetained);

      v5 = v9;
    }
  }
}

void __boringssl_private_key_decrypt_callback_block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    if (!v6 || *v6 != -1252936367 || (v7 = *(v6 + 8)) == 0 || *(v7 + 292) <= 3u && (*(v7 + 548) & 2) == 0)
    {
      v9 = v5;
      WeakRetained = objc_loadWeakRetained(v5 + 2);
      nw_protocol_boringssl_handshake_negotiate(WeakRetained);

      v5 = v9;
    }
  }
}

uint64_t __boringssl_session_psk_client13_ext_callback_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 72);
  v5 = v4;
  if (v4 && xpc_array_get_count(v4))
  {
    v6 = xpc_array_get_array(v5, 0);
    v7 = v6;
    if (!v6 || xpc_array_get_count(v6) != 2)
    {
      v18 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v8 = xpc_array_get_value(v7, 0);
    length = xpc_data_get_length(v8);
    v10 = xpc_array_get_value(v7, 1uLL);
    v11 = xpc_data_get_length(v10);
    v12 = *(a2 + 48);
    v13 = v12;
    v73 = a1;
    if (!v12 || !xpc_array_get_count(v12))
    {
      v19 = 0;
      v17 = 0;
      goto LABEL_19;
    }

    v14 = xpc_array_get_value(v13, 0);
    v15 = MEMORY[0x1AC57FB30]();
    v16 = MEMORY[0x1E69E9F10];
    if (v15 == MEMORY[0x1E69E9F10])
    {
      v20 = v14;
    }

    else
    {
      if (MEMORY[0x1AC57FB30](v14) != MEMORY[0x1E69E9E50])
      {
        v17 = 0;
        goto LABEL_17;
      }

      v20 = xpc_array_get_value(v14, 0);
    }

    v17 = v20;
    if (v20 && MEMORY[0x1AC57FB30](v20) == v16)
    {
      v19 = xpc_string_get_length(v17);
      goto LABEL_18;
    }

LABEL_17:
    v19 = 0;
LABEL_18:

LABEL_19:
    v18 = 0;
    if (!length || !v11)
    {
      goto LABEL_25;
    }

    if (length > **(v73 + 32) || v11 > **(v73 + 40) || v19 > **(v73 + 48))
    {
      v18 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v71 = v19;
    v72 = v11;
    v22 = *(v73 + 56);
    if (!v22)
    {
      goto LABEL_35;
    }

    WeakRetained = objc_loadWeakRetained((v22 + 16));
    if (WeakRetained)
    {
      v24 = WeakRetained;
      v25 = objc_loadWeakRetained((*(v73 + 56) + 16));
      v26 = v25[435];

      if (v26)
      {
LABEL_59:
        v39 = *(v73 + 56);
        if (!v39)
        {
          goto LABEL_65;
        }

        v40 = objc_loadWeakRetained((v39 + 16));
        if (v40)
        {
          v41 = v40;
          v42 = objc_loadWeakRetained((*(v73 + 56) + 16));
          v43 = v42[435];

          if (v43)
          {
LABEL_89:
            *(*(v73 + 56) + 552) |= 0x80u;
            **(v73 + 64) = SSL_get_cipher_by_value(4865);
            **(v73 + 32) = length;
            v57 = *(v73 + 72);
            bytes_ptr = xpc_data_get_bytes_ptr(v8);
            memcpy(v57, bytes_ptr, length);
            **(v73 + 40) = v72;
            v59 = *(v73 + 80);
            v60 = xpc_data_get_bytes_ptr(v10);
            memcpy(v59, v60, v72);
            **(v73 + 48) = v71;
            if (v71)
            {
              v61 = *(v73 + 88);
              string_ptr = xpc_string_get_string_ptr(v17);
              memcpy(v61, string_ptr, v71);
            }

            v18 = 1;
            goto LABEL_25;
          }
        }

        v44 = *(v73 + 56);
        if (v44)
        {
          v45 = objc_loadWeakRetained((v44 + 16));
          if (v45)
          {
            v46 = objc_loadWeakRetained((*(v73 + 56) + 16));
            v47 = (v46[435] & 1) == 0;
          }

          else
          {
            v47 = 1;
          }
        }

        else
        {
LABEL_65:
          v47 = 1;
        }

        if (v47 && g_boringssl_log)
        {
          v48 = g_boringssl_log;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = *(v73 + 56);
            loga = v49;
            if (v49)
            {
              v50 = objc_loadWeakRetained(&v49[2].isa);
              v51 = *(v73 + 56);
              v66 = v50;
              if (v50)
              {
                v68 = v51 != 0;
                if (v51)
                {
                  v50 = objc_loadWeakRetained((v51 + 16));
                  v51 = *(v73 + 56);
                }

                else
                {
                  v50 = 0;
                }

                v53 = v50 + 351;
              }

              else
              {
                v68 = 0;
                v53 = &unk_1A9098A9F;
              }

              v65 = v50;
              if (v51)
              {
                v55 = v53;
                v56 = objc_loadWeakRetained((v51 + 16));
                v53 = v55;
                v54 = v56;
                v52 = 0;
              }

              else
              {
                v54 = 0;
                v52 = 1;
              }
            }

            else
            {
              v68 = 0;
              v52 = 1;
              v53 = &unk_1A9098A9F;
              v54 = 0;
            }

            *buf = 136446978;
            v75 = "boringssl_session_psk_client13_ext_callback_handler_block_invoke";
            v76 = 1024;
            v77 = 1832;
            v78 = 2082;
            v79 = v53;
            v80 = 2048;
            v81 = v54;
            _os_log_impl(&dword_1A8FF5000, v48, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Running TLS 1.3 external PSK client callback", buf, 0x26u);
            if ((v52 & 1) == 0)
            {
            }

            if (v68)
            {
            }

            if (loga)
            {
            }
          }
        }

        goto LABEL_89;
      }
    }

    v27 = *(v73 + 56);
    if (v27)
    {
      v28 = objc_loadWeakRetained((v27 + 16));
      if (v28)
      {
        v29 = objc_loadWeakRetained((*(v73 + 56) + 16));
        v30 = (v29[435] & 1) == 0;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
LABEL_35:
      v30 = 1;
    }

    if (v30 && g_boringssl_log)
    {
      v31 = g_boringssl_log;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = *(v73 + 56);
        v67 = v32;
        log = v31;
        if (v32)
        {
          v33 = objc_loadWeakRetained((v32 + 16));
          v34 = *(v73 + 56);
          v35 = v72;
          v64 = v33;
          if (v33)
          {
            LODWORD(v66) = v34 != 0;
            if (v34)
            {
              v33 = objc_loadWeakRetained((v34 + 16));
              v34 = *(v73 + 56);
            }

            else
            {
              v33 = 0;
            }

            v37 = v33 + 351;
          }

          else
          {
            LODWORD(v66) = 0;
            v37 = &unk_1A9098A9F;
          }

          v63 = v33;
          if (v34)
          {
            v36 = objc_loadWeakRetained((v34 + 16));
            LODWORD(v65) = 0;
          }

          else
          {
            v36 = 0;
            LODWORD(v65) = 1;
          }
        }

        else
        {
          LODWORD(v66) = 0;
          v36 = 0;
          LODWORD(v65) = 1;
          v37 = &unk_1A9098A9F;
          v35 = v72;
        }

        *buf = 136447490;
        v75 = "boringssl_session_psk_client13_ext_callback_handler_block_invoke";
        v76 = 1024;
        v77 = 1831;
        v78 = 2082;
        v79 = v37;
        v80 = 2048;
        v38 = v36;
        v81 = v36;
        v82 = 2048;
        v83 = length;
        v84 = 2048;
        v85 = v35;
        v31 = log;
        _os_log_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] secret_len: %zu, identity_len: %zu", buf, 0x3Au);
        if ((v65 & 1) == 0)
        {
        }

        if (v66)
        {
        }

        if (v67)
        {
        }
      }
    }

    goto LABEL_59;
  }

  v18 = 0;
LABEL_27:

  return v18;
}

BOOL __boringssl_session_server_psk_callback_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = boringssl_psk_cache_copy_psk_object_array(*(*(a1 + 32) + 40));
    v4 = *(a2 + 96);
    *(a2 + 96) = v3;
  }

  return a2 != 0;
}

BOOL __boringssl_session_client_psk_callback_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = boringssl_psk_cache_copy_psk_object_array(*(*(a1 + 32) + 40));
    v4 = *(a2 + 96);
    *(a2 + 96) = v3;
  }

  return a2 != 0;
}

id OUTLINED_FUNCTION_8()
{
  v3 = (v0 + *v1);

  return objc_loadWeakRetained(v3);
}

id OUTLINED_FUNCTION_9(uint64_t a1)
{
  v3 = (a1 + *v1);

  return objc_loadWeakRetained(v3);
}

void OUTLINED_FUNCTION_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x30u);
}

uint64_t nw_protocol_boringssl_allocate_batching_frame(void *a1, unsigned int a2)
{
  v3 = a1;
  nw_frame_array_init();
  nw_protocol_upcast();
  output_handler = nw_protocol_get_output_handler();
  if (!output_handler)
  {
    if ((*(v3 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_allocate_batching_frame_cold_6();
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v5 = output_handler;
  nw_protocol_upcast();
  if ((nw_protocol_get_output_frames_is_valid() & 1) == 0)
  {
    if ((*(v3 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_allocate_batching_frame_cold_1(v3, v5, &v13);
      goto LABEL_27;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v6 = *(v3 + 41);
  if (v6 <= a2)
  {
    v6 = a2;
  }

  if (v6 >= nw_batching_finaltxt_size)
  {
    v7 = nw_batching_finaltxt_size;
  }

  else
  {
    v7 = v6;
  }

  nw_protocol_upcast();
  if (!nw_protocol_get_output_frames() || nw_frame_array_is_empty())
  {
    if ((*(v3 + 350) & 2) != 0)
    {
      if ((*(v3 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_allocate_batching_frame_cold_4(v3, v7, &v13);
        goto LABEL_27;
      }
    }

    else if ((*(v3 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_allocate_batching_frame_cold_5(v3, v7, &v13);
LABEL_27:
      v8 = v13;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = nw_frame_array_first();
  v11 = *(v3 + 19);
  *(v3 + 19) = v10;

  nw_frame_array_remove();
  *(v3 + 40) = 0;
  v12 = nw_frame_unclaimed_length();
  if ((*(v3 + 350) & 2) != 0)
  {
    if ((*(v3 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_allocate_batching_frame_cold_2(v3, v12, &v13);
      goto LABEL_27;
    }
  }

  else if ((*(v3 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_allocate_batching_frame_cold_3(v3, v12, &v13);
    goto LABEL_27;
  }

  v8 = 1;
LABEL_19:

  return v8;
}

void nw_protocol_boringssl_flush_batching_frame(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 && boringssl_session_get_state(v3[37]) <= 3 && (boringssl_session_is_cancelled(v4[37]) & 1) == 0 && v4[19])
  {
    nw_frame_array_init();
    nw_frame_collapse();
    nw_protocol_upcast();
    nw_frame_unclaim();
    nw_frame_array_append();
    v5 = v4[19];
    v4[19] = 0;

    *(v4 + 40) = 0;
    nw_protocol_upcast();
    if (nw_protocol_get_output_handler())
    {
      if (nw_protocol_finalize_output_frames_is_valid())
      {
        nw_protocol_finalize_output_frames();
        if ((*(v4 + 350) & 2) != 0)
        {
          if ((*(v4 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_flush_batching_frame_cold_2();
          }
        }

        else if ((*(v4 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_flush_batching_frame_cold_3();
        }
      }

      else if ((*(v4 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_flush_batching_frame_cold_1();
      }
    }

    else if ((*(v4 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_flush_batching_frame_cold_4();
    }
  }
}

uint64_t nw_protocol_boringssl_internal_error(void *a1, uint64_t a2)
{
  v2 = a2;
  input_handler = a1;
  v4 = input_handler;
  if (input_handler && (*(input_handler + 350) & 4) == 0)
  {
    *(input_handler + 350) |= 4u;
    v5 = input_handler[37];
    v7 = v4;
    if (v5)
    {
      boringssl_context_set_internal_error(v5, v2);
      boringssl_metrics_log_connection_failure(v7[37]);
      boringssl_metrics_log_ech(v7[37]);
    }

    nw_protocol_upcast();
    input_handler = nw_protocol_get_input_handler();
    if (input_handler && (*(v7 + 348) & 4) != 0)
    {
      nw_protocol_upcast();
      input_handler = nw_protocol_error();
    }
  }

  return MEMORY[0x1EEE66BB8](input_handler);
}

__int128 *nw_protocol_boringssl_identifier()
{
  if (nw_protocol_boringssl_identifier_onceToken != -1)
  {
    nw_protocol_boringssl_identifier_cold_1();
  }

  return &g_boringssl_protocol_identifier;
}

void nw_protocol_boringssl_disconnected(uint64_t result)
{
  if (result)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_disconnected_cold_1();
      }

      if ((*(v2 + 350) & 0x20) != 0)
      {
        if ((*(v2 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_disconnected_cold_2();
        }
      }

      else
      {
        nw_protocol_disconnected_quiet();
      }
    }
  }
}

uint64_t nw_protocol_boringssl_reset(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = nw_protocol_downcast();
    if (v2)
    {
      v3 = v2;
      if ((*(v2 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_reset_cold_1();
      }

      nw_protocol_boringssl_cleanup(v3);
      v4 = nw_parameters_copy_context();
      if (v4)
      {
        v5 = boringssl_context_create_with_nw_context(v3, v4);
        *(v3 + 296) = v5;
        if (v5)
        {
          v6 = boringssl_bio_create(v3, nw_protocol_boringssl_read_bytes_wrapper, nw_protocol_boringssl_write_bytes_wrapper);
          *(v3 + 304) = v6;
          if (v6)
          {
            *(v3 + 240) = 0u;
            *(v3 + 256) = 0u;
            v7 = *(v3 + 328);
            *(v3 + 328) = 0;

            *(v3 + 336) = 0;
            *(v3 + 348) &= 0x1Au;
            *(v3 + 349) &= 0x18u;
            *(v3 + 350) &= 0xF8u;
            nw_protocol_get_output_handler();
            if (nw_protocol_reset_is_valid())
            {
              nw_protocol_get_output_handler();
              nw_protocol_reset();
            }

            v1 = 1;
            goto LABEL_18;
          }

          if ((*(v3 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_reset_cold_2();
            v1 = v9;
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if ((*(v3 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_reset_cold_3();
          v1 = v10;
          goto LABEL_18;
        }
      }

      else if ((*(v3 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_reset_cold_4();
        v1 = v11;
LABEL_18:

        return v1;
      }

LABEL_17:
      v1 = 0;
      goto LABEL_18;
    }

    return 0;
  }

  return v1;
}