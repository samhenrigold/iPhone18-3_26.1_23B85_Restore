void sub_1A90131E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

SSL *boringssl_context_info_handler(SSL *result, char *a2, char *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    result = SSL_get_ex_data(result, 0);
    if (result)
    {
      v6 = result;
      if (result->version == -1252936367)
      {
        method = result->method;
        if (method)
        {
          if (a2 > 0x2000)
          {
            if (a2 > 16387)
            {
              if (a2 == 16388)
              {
                boringssl_context_alert_callback_handler(v5, 16388, a3, 1);
              }

              else if (a2 == 16392)
              {
                boringssl_context_alert_callback_handler(v5, 16392, a3, 0);
              }
            }

            else if (a2 == 8193)
            {
              v22 = SSL_state(v5);
              LODWORD(method[1].ssl_write) = v22;
              get_cipher = method[1].get_cipher;
              if (get_cipher)
              {
                (*(get_cipher + 2))(get_cipher, v22);
              }

              WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
              if (!WeakRetained || (v25 = WeakRetained, v26 = objc_loadWeakRetained(&method->ssl_clear), a2 = v26[435], v26, v25, (a2 & 1) == 0))
              {
                v27 = objc_loadWeakRetained(&method->ssl_clear);
                if (v27)
                {
                  v28 = objc_loadWeakRetained(&method->ssl_clear);
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
                    v42 = g_boringssl_log;
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      v43 = objc_loadWeakRetained(&method->ssl_clear);
                      if (v43)
                      {
                        a2 = objc_loadWeakRetained(&method->ssl_clear);
                        v44 = a2 + 351;
                      }

                      else
                      {
                        v44 = &unk_1A9098A9F;
                      }

                      v55 = objc_loadWeakRetained(&method->ssl_clear);
                      if ((BYTE4(method[2].ssl_renegotiate) & 0x10) != 0)
                      {
                        v56 = "Server";
                      }

                      else
                      {
                        v56 = "Client";
                      }

                      v65 = 136447490;
                      v66 = "boringssl_context_info_handler";
                      v67 = 1024;
                      v68 = 2405;
                      v69 = 2082;
                      v70 = v44;
                      v71 = 2048;
                      v72 = v55;
                      v73 = 2082;
                      v74 = v56;
                      v75 = 2082;
                      v76 = SSL_state_string_long(v5);
                      _os_log_impl(&dword_1A8FF5000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake state: %{public}s", &v65, 0x3Au);

                      if (v43)
                      {
                      }
                    }
                  }
                }
              }

              if (nw_settings_get_signposts_enabled() && kdebug_is_enabled())
              {
                boringssl_context_info_handler_cold_1(v5, v57);
              }
            }
          }

          else if (a2 > 4096)
          {
            if (a2 == 4097)
            {
              v30 = SSL_state(v5);
              LODWORD(method[1].ssl_write) = v30;
              v31 = method[1].get_cipher;
              if (v31)
              {
                (*(v31 + 2))(v31, v30);
              }

              v32 = objc_loadWeakRetained(&method->ssl_clear);
              if (!v32 || (v33 = v32, v34 = objc_loadWeakRetained(&method->ssl_clear), v35 = v34[435], v34, v33, (v35 & 1) == 0))
              {
                v36 = objc_loadWeakRetained(&method->ssl_clear);
                if (v36)
                {
                  v37 = objc_loadWeakRetained(&method->ssl_clear);
                  v38 = (v37[435] & 1) == 0;
                }

                else
                {
                  v38 = 1;
                }

                if (v38)
                {
                  if (g_boringssl_log)
                  {
                    v45 = g_boringssl_log;
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      v46 = objc_loadWeakRetained(&method->ssl_clear);
                      if (v46)
                      {
                        a2 = objc_loadWeakRetained(&method->ssl_clear);
                        v47 = a2 + 351;
                      }

                      else
                      {
                        v47 = &unk_1A9098A9F;
                      }

                      v58 = objc_loadWeakRetained(&method->ssl_clear);
                      if ((BYTE4(method[2].ssl_renegotiate) & 0x10) != 0)
                      {
                        v59 = "Server";
                      }

                      else
                      {
                        v59 = "Client";
                      }

                      v65 = 136447490;
                      v66 = "boringssl_context_info_handler";
                      v67 = 1024;
                      v68 = 2394;
                      v69 = 2082;
                      v70 = v47;
                      v71 = 2048;
                      v72 = v58;
                      v73 = 2082;
                      v74 = v59;
                      v75 = 2082;
                      v76 = SSL_state_string_long(v5);
                      _os_log_impl(&dword_1A8FF5000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake state: %{public}s", &v65, 0x3Au);

                      if (v46)
                      {
                      }
                    }
                  }
                }
              }

              if (nw_settings_get_signposts_enabled() && kdebug_is_enabled())
              {
                boringssl_context_info_handler_cold_1(v5, v60);
              }
            }
          }

          else if (a2 == 16)
          {
            v15 = objc_loadWeakRetained(&method->ssl_clear);
            if (!v15 || (v16 = v15, v17 = objc_loadWeakRetained(&method->ssl_clear), v18 = v17[435], v17, v16, (v18 & 1) == 0))
            {
              v19 = objc_loadWeakRetained(&method->ssl_clear);
              if (v19)
              {
                v20 = objc_loadWeakRetained(&method->ssl_clear);
                v21 = (v20[435] & 1) == 0;
              }

              else
              {
                v21 = 1;
              }

              if (v21)
              {
                if (g_boringssl_log)
                {
                  v39 = g_boringssl_log;
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = objc_loadWeakRetained(&method->ssl_clear);
                    if (v40)
                    {
                      a3 = objc_loadWeakRetained(&method->ssl_clear);
                      v41 = a3 + 351;
                    }

                    else
                    {
                      v41 = &unk_1A9098A9F;
                    }

                    v51 = objc_loadWeakRetained(&method->ssl_clear);
                    v52 = v51;
                    v53 = BYTE4(method[2].ssl_renegotiate);
                    v66 = "boringssl_context_info_handler";
                    v67 = 1024;
                    v65 = 136447234;
                    v68 = 2377;
                    if ((v53 & 0x10) != 0)
                    {
                      v54 = "Server";
                    }

                    else
                    {
                      v54 = "Client";
                    }

                    v69 = 2082;
                    v70 = v41;
                    v71 = 2048;
                    v72 = v51;
                    v73 = 2082;
                    v74 = v54;
                    _os_log_impl(&dword_1A8FF5000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake started", &v65, 0x30u);

                    if (v40)
                    {
                    }
                  }
                }
              }
            }

            boringssl_session_set_state(v6, 1);
          }

          else if (a2 == 32)
          {
            v8 = objc_loadWeakRetained(&method->ssl_clear);
            if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained(&method->ssl_clear), v11 = v10[435], v10, v9, (v11 & 1) == 0))
            {
              v12 = objc_loadWeakRetained(&method->ssl_clear);
              if (v12)
              {
                v13 = objc_loadWeakRetained(&method->ssl_clear);
                v14 = (v13[435] & 1) == 0;
              }

              else
              {
                v14 = 1;
              }

              if (v14)
              {
                if (g_boringssl_log)
                {
                  v48 = g_boringssl_log;
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                  {
                    v49 = objc_loadWeakRetained(&method->ssl_clear);
                    if (v49)
                    {
                      a3 = objc_loadWeakRetained(&method->ssl_clear);
                      v50 = a3 + 351;
                    }

                    else
                    {
                      v50 = &unk_1A9098A9F;
                    }

                    v61 = objc_loadWeakRetained(&method->ssl_clear);
                    v62 = v61;
                    v63 = BYTE4(method[2].ssl_renegotiate);
                    v66 = "boringssl_context_info_handler";
                    v67 = 1024;
                    v65 = 136447234;
                    v68 = 2383;
                    if ((v63 & 0x10) != 0)
                    {
                      v64 = "Server";
                    }

                    else
                    {
                      v64 = "Client";
                    }

                    v69 = 2082;
                    v70 = v50;
                    v71 = 2048;
                    v72 = v61;
                    v73 = 2082;
                    v74 = v64;
                    _os_log_impl(&dword_1A8FF5000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] %{public}s handshake done", &v65, 0x30u);

                    if (v49)
                    {
                    }
                  }
                }
              }
            }

            boringssl_session_finish_handshake(v6);
          }

          result = nw_settings_get_signposts_enabled();
          if (result)
          {
            result = kdebug_is_enabled();
            if (result)
            {
              return kdebug_trace();
            }
          }
        }
      }
    }
  }

  return result;
}

void BUF_MEM_free(BUF_MEM *a)
{
  if (a)
  {
    OPENSSL_free(a->data);

    OPENSSL_free(a);
  }
}

int SSL_do_handshake(SSL *s)
{
  *(s->handshake_func + 49) = 0;
  ERR_clear_error();
  ERR_clear_system_error();
  if (!*&s->rwstate)
  {
    ERR_put_error(16, 0, 134, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 877);
    LODWORD(v4) = -1;
    return v4;
  }

  v3 = *(s->handshake_func + 35);
  if (!v3 || (*(v3 + 1600) & 8) != 0)
  {
    goto LABEL_13;
  }

  v12 = 0;
  v4 = bssl::ssl_run_handshake(v3, &v12, v2);
  if (BYTE4(s->param))
  {
    v5 = 8194;
  }

  else
  {
    v5 = 4098;
  }

  v6 = *&s->packet_length;
  if (v6 || (v6 = *&s->s2[1].rbuf_offs) != 0)
  {
    v6(s, v5, v4);
  }

  if (v4 >= 1)
  {
    if ((v12 & 1) == 0)
    {
      handshake_func = s->handshake_func;
      v8 = *(handshake_func + 35);
      *(handshake_func + 35) = 0;
      std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](handshake_func + 36, v8);
      std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](s->handshake_func + 35, 0);
      bssl::ssl_maybe_shed_handshake_config(s, v9, v10);
    }

LABEL_13:
    LODWORD(v4) = 1;
  }

  return v4;
}

uint64_t nw_protocol_boringssl_handshake_negotiate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ((!v1 || (v1[435] & 1) == 0) && (nw_protocol_boringssl_handshake_negotiate_cold_1(v1 == 0) & 1) != 0 || !*(v2 + 37) || (v3 = *(v2 + 5)) == 0)
  {
    v4 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((v2[349] & 4) != 0)
  {
    v4 = 0;
    goto LABEL_30;
  }

  v2[349] |= 4u;
  v4 = v3();
  v2[349] &= ~4u;
  v5 = v2;
  if ((v5[435] & 1) == 0)
  {
    nw_protocol_boringssl_handshake_negotiate_cold_2();
  }

  v6 = *(v2 + 37);
  if (v6)
  {
    if (v4)
    {
      current_handshake_state = boringssl_session_get_current_handshake_state(v6);
      if (current_handshake_state)
      {
        boringssl_helper_get_handshake_state_description(current_handshake_state);
        if ((v5[435] & 1) == 0)
        {
          nw_protocol_boringssl_handshake_negotiate_cold_3();
        }
      }

      ERR_print_errors_cb(nw_protocol_error_print, *(v2 + 37));
      if (*(v5 + 35))
      {
        nw_queue_cancel_source();
        *(v5 + 35) = 0;
      }

      nw_protocol_boringssl_internal_error(v5, 4294957438);
      v8 = nw_protocol_upcast();
      nw_protocol_upcast();
      nw_protocol_get_output_handler();
      nw_protocol_boringssl_disconnect(v8);
      goto LABEL_27;
    }

    if (boringssl_session_get_state(v6) == 2)
    {
      goto LABEL_26;
    }

    if (boringssl_session_in_false_start(*(v2 + 37)))
    {
      if ((v5[435] & 1) == 0)
      {
        nw_protocol_boringssl_handshake_negotiate_cold_5();
      }

LABEL_26:
      nw_protocol_boringssl_signal_connected(v5);
      v10 = nw_protocol_upcast();
      nw_boringssl_read(v10);
      goto LABEL_27;
    }

    if (boringssl_session_in_early_data(*(v2 + 37), v9))
    {
      if ((v5[435] & 1) == 0)
      {
        nw_protocol_boringssl_handshake_negotiate_cold_4();
      }

      goto LABEL_26;
    }
  }

LABEL_27:

  if (boringssl_session_get_state(*(v2 + 37)) == 2)
  {
    v2[349] &= ~2u;
  }

  v11 = nw_protocol_upcast();
  nw_boringssl_read(v11);
LABEL_30:

  return v4;
}

uint64_t boringssl_session_handshake_negotiate(uint64_t result)
{
  if (!result)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = result;
  if (*result != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(result + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 292);
  if ((v3 - 2) >= 4)
  {
    if (v3 == 1)
    {
      boringssl_context_start_handshake_timer(result);

      return boringssl_session_handshake_continue_inner(v1, 0);
    }

    else if (!v3)
    {
      boringssl_session_set_state(result, 1);
      boringssl_context_start_handshake_timer(v1);

      return boringssl_session_handshake_start(v1);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained((v2 + 16));
      v7 = v6[435];

      if (v7)
      {
        return 0;
      }
    }

    v8 = objc_loadWeakRetained((v2 + 16));
    if (v8)
    {
      v9 = objc_loadWeakRetained((v2 + 16));
      v10 = (v9[435] & 1) == 0;
    }

    else
    {
      v10 = 1;
    }

    result = 0;
    if (v10 && g_boringssl_log)
    {
      v11 = g_boringssl_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        boringssl_session_handshake_negotiate_cold_1();
      }

      return 0;
    }
  }

  return result;
}

__darwin_time_t boringssl_helper_get_current_time_ms()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 1000;
}

void boringssl_context_start_handshake_timer(uint64_t a1)
{
  if (*a1 == -1252936367)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      if ((v1[548] & 0x20) != 0)
      {
        v2 = v1;
        WeakRetained = objc_loadWeakRetained(v2 + 2);
        v4 = WeakRetained[35];

        if (v4)
        {
          v5 = objc_loadWeakRetained(v2 + 2);
          nw_queue_cancel_source();

          v6 = objc_loadWeakRetained(v2 + 2);
          v6[35] = 0;
        }

        v23 = v2;
        v7 = v23;
        source = nw_queue_context_create_source();
        v9 = objc_loadWeakRetained(v7 + 2);
        v9[35] = source;

        v10 = objc_loadWeakRetained(v7 + 2);
        v11 = v10[35];

        if (v11)
        {
          v12 = *(v7 + 548);
          v13 = objc_loadWeakRetained(v7 + 2);
          if ((v12 & 0x10) != 0)
          {
            v14 = 10000000000;
          }

          else
          {
            v14 = 2000000000;
          }

          dispatch_time(0, v14);
          nw_queue_set_timer_values();

          v15 = objc_loadWeakRetained(v7 + 2);
          nw_queue_activate_source();
        }

        else
        {
          v16 = objc_loadWeakRetained(v7 + 2);
          if (v16)
          {
            v17 = v16;
            v18 = objc_loadWeakRetained(v7 + 2);
            v19 = v18[435];

            if (v19)
            {
              goto LABEL_12;
            }
          }

          v20 = objc_loadWeakRetained(v7 + 2);
          if (v20)
          {
            v21 = objc_loadWeakRetained(v7 + 2);
            v22 = (v21[435] & 1) == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22 || !g_boringssl_log)
          {
            goto LABEL_12;
          }

          v15 = g_boringssl_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            boringssl_context_start_handshake_timer_cold_1();
          }
        }

LABEL_12:
      }
    }
  }
}

const char *SSL_get_group_name(int a1)
{
  result = "P-224";
  v3 = 504;
  while (*(result - 1) != a1)
  {
    result += 72;
    v3 -= 72;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_boringssl_handshake_negotiate_cold_1(char a1)
{
  OUTLINED_FUNCTION_22();
  if (v2 && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_28();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
  }

  return a1 & 1;
}

unint64_t *OPENSSL_sk_value(unint64_t *result, unint64_t a2)
{
  if (result)
  {
    if (*result <= a2)
    {
      return 0;
    }

    else
    {
      return *(result[1] + 8 * a2);
    }
  }

  return result;
}

void std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

uint64_t bssl::ssl_do_info_callback(uint64_t this, const ssl_st *a2)
{
  v2 = *(this + 112);
  if (v2)
  {
    return v2();
  }

  v2 = *(*(this + 120) + 392);
  if (v2)
  {
    return v2();
  }

  return this;
}

void *__cdecl CRYPTO_get_ex_data(const CRYPTO_EX_DATA *ad, int idx)
{
  if (idx < 0)
  {
    return 0;
  }

  sk = ad->sk;
  if (!sk || EVP_MD_CTX_md(sk) <= idx)
  {
    return 0;
  }

  v5 = ad->sk;

  return OPENSSL_sk_value(v5, idx);
}

uint64_t boringssl_context_set_key_exchange_groups(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 && *a1 == -1252936367)
  {
    v7 = 0xFFFFFFFFLL;
    if (v5 && *(a1 + 8))
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      count = xpc_array_get_count(v5);
      v8 = malloc_type_malloc(2 * v17[3], 0x1000040BDFB0063uLL);
      if (v8)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __boringssl_context_set_key_exchange_groups_block_invoke;
        v11[3] = &unk_1E7869520;
        v15 = a3;
        v12 = v6;
        v13 = &v16;
        v14 = v8;
        xpc_array_apply(v12, v11);
        v9 = v17[3];
        if (v9)
        {
          v7 = boringssl_context_set_key_exchange_groups_from_list(a1, v8, v9);
        }

        free(v8);
      }

      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  return v7;
}

void sub_1A90147DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __boringssl_context_set_key_exchange_groups_block_invoke(uint64_t a1, size_t a2)
{
  uint64 = xpc_array_get_uint64(*(a1 + 32), a2);
  if ((*(a1 + 56) & 1) != 0 || uint64 != 4588)
  {
    *(*(a1 + 48) + 2 * a2) = uint64;
  }

  else
  {
    --*(*(*(a1 + 40) + 8) + 24);
  }

  return 1;
}

uint64_t boringssl_context_set_key_exchange_groups_from_list(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3)
  {
    if (a2)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 + 392);
        if (v7)
        {
          v25 = v6;
          bzero(v26, 0x400uLL);
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            while (1)
            {
              curve_name = SSL_get_curve_name();
              if (!curve_name)
              {
                break;
              }

              v12 = curve_name;
              if (v9)
              {
                if (v8 + 1 > 0x3FF)
                {
                  goto LABEL_23;
                }

                v26[v8++] = 58;
              }

              v13 = strlen(curve_name);
              v14 = v13 + v8;
              if (v13 + v8 >= 0x400)
              {
                goto LABEL_23;
              }

              v15 = v26;
              strncpy(&v26[v8], v12, v13);
              v9 = 1;
              v8 = v14;
              if (a3 - 1 == v10++)
              {
                goto LABEL_24;
              }
            }

            ++v10;
          }

          while (a3 != v10);
          if (v9)
          {
            v15 = v26;
            goto LABEL_24;
          }

          if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_key_exchange_groups_from_list_cold_1();
          }

LABEL_23:
          v15 = 0;
LABEL_24:
          if (SSL_set1_curves_list(v7, v15))
          {
            return 0;
          }

          WeakRetained = objc_loadWeakRetained((v25 + 16));
          if (WeakRetained)
          {
            v18 = WeakRetained;
            v19 = objc_loadWeakRetained((v25 + 16));
            v20 = v19[435];

            if (v20)
            {
              return 0xFFFFFFFFLL;
            }
          }

          v21 = objc_loadWeakRetained((v25 + 16));
          if (v21)
          {
            v22 = objc_loadWeakRetained((v25 + 16));
            v23 = (v22[435] & 1) == 0;
          }

          else
          {
            v23 = 1;
          }

          result = 0xFFFFFFFFLL;
          if (v23)
          {
            if (g_boringssl_log)
            {
              v24 = g_boringssl_log;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                boringssl_context_set_key_exchange_groups_from_list_cold_2();
              }

              return 0xFFFFFFFFLL;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ssl_str_to_group_ids(uint64_t a1, char *__s)
{
  v2 = __s;
  v4 = 0;
  v5 = __s;
  do
  {
    v6 = strchr(v5, 58);
    ++v4;
    v5 = v6 + 1;
  }

  while (v6);
  v15 = 0;
  v16 = 0;
  if (bssl::Array<unsigned short>::InitUninitialized(&v15, v4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = strchr(v2, 58);
      if (v16 <= v8)
      {
        abort();
      }

      v10 = v9;
      if (v9)
      {
        v11 = (v9 - v2);
      }

      else
      {
        v11 = strlen(v2);
      }

      if ((bssl::ssl_name_to_group_id((v15 + v7), v2, v11) & 1) == 0)
      {
        ERR_put_error(16, 0, 239, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2299);
        goto LABEL_14;
      }

      v2 = v10 + 1;
      v7 += 2;
      ++v8;
    }

    while (v10);
    if (v4 != v8)
    {
      __assert_rtn("ssl_str_to_group_ids", "ssl_lib.cc", 2307, "i == count");
    }

    OPENSSL_free(*a1);
    v12 = v16;
    *a1 = v15;
    *(a1 + 8) = v12;
    v15 = 0;
    v16 = 0;
    v13 = 1;
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  OPENSSL_free(v15);
  return v13;
}

uint64_t SSL_set1_curves_list(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return ssl_str_to_group_ids(v2 + 112, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t bssl::ssl_name_to_group_id(bssl *this, const char *a2, const char *a3)
{
  v6 = 504;
  for (i = "secp224r1"; strlen(i - 32) != a3 || strncmp(i - 32, a2, a3); i += 72)
  {
    v8 = strlen(i);
    if (v8)
    {
      if (v8 == a3 && !strncmp(i, a2, a3))
      {
        break;
      }
    }

    v6 -= 72;
    if (!v6)
    {
      return 0;
    }
  }

  *this = *(i - 17);
  return 1;
}

void boringssl_context_set_ciphersuites_from_list(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      if (v3)
      {
        if (*(a1 + 8))
        {
          count = xpc_array_get_count(v3);
          v6 = malloc_type_malloc(2 * count, 0x1000040BDFB0063uLL);
          if (v6)
          {
            v7 = v6;
            v8[0] = MEMORY[0x1E69E9820];
            v8[1] = 3221225472;
            v8[2] = __boringssl_context_set_ciphersuites_from_list_block_invoke;
            v8[3] = &unk_1E785EAA0;
            v9 = v4;
            v10 = v7;
            xpc_array_apply(v9, v8);
            if (count)
            {
              boringssl_context_set_cipher_suites(a1, v7, count);
            }

            free(v7);
          }
        }
      }
    }
  }
}

BOOL boringssl_context_set_ticket_request(_BOOL8 result, uint64_t a2, char a3)
{
  if (result)
  {
    if (*result == -1252936367 && (v3 = *(result + 8)) != 0)
    {
      v4 = *(v3 + 392);
      if (v4)
      {
        v5 = SSL_use_ticket_request(v4, a2, a3);
      }

      else
      {
        v5 = SSL_CTX_use_ticket_request(*(v3 + 400), a2, a3);
      }

      return v5 == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_use_ticket_request(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  *(v3 + 224) = a2;
  *(v3 + 225) = a3;
  return 1;
}

const char *nw_protocol_boringssl_get_redacted_identity(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return "redacted";
  }

  v2 = "nil";
  if (a2)
  {
    v2 = a2;
  }

  if ((*(a1 + 435) & 2) != 0)
  {
    return "redacted";
  }

  else
  {
    return v2;
  }
}

uint64_t boringssl_session_get_early_data_enabled(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 551) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_get_ech_enabled(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 552) >> 4) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void boringssl_session_set_association(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      if (v4)
      {
        v6 = *(a1 + 8);
        if (v6)
        {
          v7 = boringssl_session_cache_create_with_association(v4);
          v8 = *(v6 + 32);
          *(v6 + 32) = v7;

          if ((boringssl_context_get_is_probe(a1) & 1) == 0)
          {
            v9 = *(v6 + 32);
            v10 = v9;
            if (*a1 != -1252936367)
            {
              goto LABEL_73;
            }

            v11 = *(a1 + 8);
            v12 = !v9 || v11 == 0;
            if (v12)
            {
              goto LABEL_73;
            }

            v13 = boringssl_session_cache_pop(v9);
            if (v13)
            {
              v14 = v13;
              is_session_state = boringssl_session_state_is_session_state(v13);
              WeakRetained = objc_loadWeakRetained((v11 + 16));
              v2 = WeakRetained;
              if (is_session_state)
              {
                if (!WeakRetained || (v17 = objc_loadWeakRetained((v11 + 16)), v18 = v17[435], v17, v2, (v18 & 1) == 0))
                {
                  v19 = objc_loadWeakRetained((v11 + 16));
                  if (v19)
                  {
                    v20 = objc_loadWeakRetained((v11 + 16));
                    v21 = (v20[435] & 1) == 0;
                  }

                  else
                  {
                    v21 = 1;
                  }

                  if (v21)
                  {
                    if (g_boringssl_log)
                    {
                      v26 = g_boringssl_log;
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                      {
                        v27 = objc_loadWeakRetained((v11 + 16));
                        if (v27)
                        {
                          v61 = objc_loadWeakRetained((v11 + 16));
                          v28 = v61 + 351;
                        }

                        else
                        {
                          v28 = &unk_1A9098A9F;
                        }

                        v43 = objc_loadWeakRetained((v11 + 16));
                        v44 = v43;
                        v12 = (*(v11 + 548) & 0x10) == 0;
                        *buf = 136447234;
                        v63 = "boringssl_session_install_association_state";
                        if (v12)
                        {
                          v45 = "Client";
                        }

                        else
                        {
                          v45 = "Server";
                        }

                        v64 = 1024;
                        v65 = 1532;
                        v66 = 2082;
                        v67 = v28;
                        v68 = 2048;
                        v69 = v43;
                        v70 = 2082;
                        v71 = v45;
                        _os_log_impl(&dword_1A8FF5000, v26, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %{public}s session cache hit", buf, 0x30u);

                        if (v27)
                        {
                        }
                      }
                    }
                  }
                }

                v46 = boringssl_session_set_session_state(a1, v14);
                v47 = objc_loadWeakRetained((v11 + 16));
                if (v47)
                {
                  v48 = v47;
                  v49 = objc_loadWeakRetained((v11 + 16));
                  v50 = v49[435];

                  if (v50)
                  {
                    goto LABEL_72;
                  }
                }

                v51 = objc_loadWeakRetained((v11 + 16));
                if (v51)
                {
                  v52 = objc_loadWeakRetained((v11 + 16));
                  v53 = (v52[435] & 1) == 0;
                }

                else
                {
                  v53 = 1;
                }

                if (!v53 || !g_boringssl_log)
                {
                  goto LABEL_72;
                }

                v37 = g_boringssl_log;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  v54 = objc_loadWeakRetained((v11 + 16));
                  if (v54)
                  {
                    v61 = objc_loadWeakRetained((v11 + 16));
                    v55 = v61 + 351;
                  }

                  else
                  {
                    v55 = &unk_1A9098A9F;
                  }

                  v56 = objc_loadWeakRetained((v11 + 16));
                  v57 = v56;
                  v58 = *(v11 + 548);
                  v59 = "Server";
                  v63 = "boringssl_session_install_association_state";
                  v64 = 1024;
                  v12 = (v58 & 0x10) == 0;
                  v65 = 1535;
                  v60 = "not set";
                  v67 = v55;
                  *buf = 136447490;
                  if (v12)
                  {
                    v59 = "Client";
                  }

                  v66 = 2082;
                  v68 = 2048;
                  if (v46)
                  {
                    v60 = "set";
                  }

                  v69 = v56;
                  v70 = 2082;
                  v71 = v59;
                  v72 = 2082;
                  v73 = v60;
                  _os_log_impl(&dword_1A8FF5000, v37, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %{public}s session state %{public}s.", buf, 0x3Au);

                  if (v54)
                  {
                  }
                }

                goto LABEL_53;
              }

              if (!WeakRetained || (v22 = objc_loadWeakRetained((v11 + 16)), v23 = v22[435], v22, v2, (v23 & 1) == 0))
              {
                v24 = objc_loadWeakRetained((v11 + 16));
                if (v24)
                {
                  v25 = objc_loadWeakRetained((v11 + 16));
                  v2 = (v25[435] & 1) == 0;
                }

                else
                {
                  v2 = 1;
                }

                if (v2)
                {
                  if (g_boringssl_log)
                  {
                    v29 = g_boringssl_log;
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      boringssl_session_set_association_cold_1();
                    }
                  }
                }
              }
            }

            v30 = objc_loadWeakRetained((v11 + 16));
            if (v30)
            {
              v31 = v30;
              v32 = objc_loadWeakRetained((v11 + 16));
              v33 = v32[435];

              if (v33)
              {
                v14 = 0;
LABEL_72:

LABEL_73:
                goto LABEL_74;
              }
            }

            v34 = objc_loadWeakRetained((v11 + 16));
            if (v34)
            {
              v35 = objc_loadWeakRetained((v11 + 16));
              v36 = (v35[435] & 1) == 0;
            }

            else
            {
              v36 = 1;
            }

            v14 = 0;
            if (!v36 || !g_boringssl_log)
            {
              goto LABEL_72;
            }

            v37 = g_boringssl_log;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = objc_loadWeakRetained((v11 + 16));
              if (v38)
              {
                v2 = objc_loadWeakRetained((v11 + 16));
                v39 = (v2 + 351);
              }

              else
              {
                v39 = &unk_1A9098A9F;
              }

              v40 = objc_loadWeakRetained((v11 + 16));
              v41 = v40;
              v12 = (*(v11 + 548) & 0x10) == 0;
              *buf = 136447234;
              v63 = "boringssl_session_install_association_state";
              if (v12)
              {
                v42 = "Client";
              }

              else
              {
                v42 = "Server";
              }

              v64 = 1024;
              v65 = 1537;
              v66 = 2082;
              v67 = v39;
              v68 = 2048;
              v69 = v40;
              v70 = 2082;
              v71 = v42;
              _os_log_impl(&dword_1A8FF5000, v37, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] %{public}s session cache miss", buf, 0x30u);

              if (v38)
              {
              }
            }

            v14 = 0;
LABEL_53:

            goto LABEL_72;
          }
        }
      }
    }
  }

LABEL_74:
}

boringssl_concrete_boringssl_session_cache *boringssl_session_cache_create_with_association(void *a1)
{
  v2 = a1;
  v3 = objc_alloc_init(boringssl_concrete_boringssl_session_cache);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->association, a1);
  }

  return v4;
}

uint64_t boringssl_context_get_is_probe(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 551) >> 2) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id boringssl_session_cache_pop(void *a1)
{
  v1 = a1;
  v2 = boringssl_session_cache_copy_queue(v1);
  if (v2 || (v2 = sec_array_create()) != 0)
  {
    v3 = v2;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    v15 = 0;
    v9 = sec_array_create();
    v4 = sec_array_apply();
    v5 = nw_protocol_boringssl_copy_definition(v4);
    v6 = v9;
    time(0);
    nw_association_set_cached_content_for_protocol();

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1A9015884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *boringssl_session_cache_copy_queue(uint64_t a1)
{
  v1 = nw_protocol_boringssl_copy_definition(a1);
  cached_content_for_protocol = nw_association_get_cached_content_for_protocol();

  if (cached_content_for_protocol)
  {
    v3 = cached_content_for_protocol;
  }

  return cached_content_for_protocol;
}

uint64_t boringssl_session_clear_eap_metadata(uint64_t result)
{
  if (result && *result == -1252936367)
  {
    if (*(result + 8))
    {
      return nw_protocol_metadata_access_handle();
    }
  }

  return result;
}

uint64_t __boringssl_session_clear_eap_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 328);
  if (v2)
  {
    free(v2);
    *(a2 + 328) = 0;
  }

  return 1;
}

uint64_t boringssl_session_set_state(uint64_t a1, uint64_t a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained((v2 + 16)), v7 = v6[435], v6, v5, (v7 & 1) == 0))
  {
    v8 = objc_loadWeakRetained((v2 + 16));
    if (v8)
    {
      v9 = objc_loadWeakRetained((v2 + 16));
      v10 = (v9[435] & 1) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (g_boringssl_log)
      {
        v12 = g_boringssl_log;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          boringssl_session_set_state_cold_1(v2, v3);
        }
      }
    }
  }

  result = 0;
  *(v2 + 292) = v3;
  return result;
}

uint64_t boringssl_session_handshake_start(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  if (!v3 || !*(v3 + 392))
  {
    return 0xFFFFFFFFLL;
  }

  *(v3 + 416) = boringssl_helper_get_current_time_ms();
  v4 = *(v3 + 392);
  if ((*(v3 + 548) & 0x10) != 0)
  {
    v5 = SSL_accept(v4);
  }

  else
  {
    v5 = SSL_connect(v4);
  }

  if (v5 <= 0)
  {

    return boringssl_session_handshake_incomplete(a1, v5, 0);
  }

  else
  {
    v7 = SSL_in_early_data(*(v3 + 392));
    WeakRetained = objc_loadWeakRetained((v3 + 16));
    if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((v3 + 16)), v1 = v10[435], v10, v9, (v1 & 1) == 0))
    {
      v11 = objc_loadWeakRetained((v3 + 16));
      if (v11)
      {
        v12 = objc_loadWeakRetained((v3 + 16));
        v13 = (v12[435] & 1) == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (g_boringssl_log)
        {
          v14 = g_boringssl_log;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_loadWeakRetained((v3 + 16));
            if (v15)
            {
              v1 = objc_loadWeakRetained((v3 + 16));
              v16 = v1 + 351;
            }

            else
            {
              v16 = &unk_1A9098A9F;
            }

            v17 = objc_loadWeakRetained((v3 + 16));
            v18 = v17;
            v20 = 136447234;
            v21 = "boringssl_session_handshake_start";
            v19 = "true";
            v22 = 1024;
            v23 = 291;
            v24 = 2082;
            if (!v7)
            {
              v19 = "false";
            }

            v25 = v16;
            v26 = 2048;
            v27 = v17;
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_1A8FF5000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] In early data: %{public}s", &v20, 0x30u);

            if (v15)
            {
            }
          }
        }
      }
    }

    boringssl_session_update_metadata(a1, 0);
    return 0;
  }
}

int SSL_connect(SSL *ssl)
{
  if (!*&ssl->rwstate)
  {
    BYTE4(ssl->param) &= ~1u;
    *&ssl->rwstate = bssl::ssl_client_handshake;
  }

  return SSL_do_handshake(ssl);
}

uint64_t SSL_set_tls13_pqtls_ciphersuites_enabled(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 120) + 248) = *(*(result + 120) + 248) & 0xFB | v2;
  return result;
}

uint64_t bssl::ssl_get_version_range(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v6 = *a1;
  v7 = *(v6 + 144);
  if (SSL_is_dtls(v6))
  {
    v7 = v7 & 0xEFFFFFFF | (((v7 >> 26) & 1) << 28);
  }

  v20 = -21846;
  v8 = a1[1];
  if (bssl::ssl_protocol_version_from_wire(&v20, *(v8 + 10)) && (v19 = -21846, (bssl::ssl_protocol_version_from_wire(&v19, *(v8 + 8)) & 1) != 0))
  {
    v9 = 0;
    if (v20 <= 0x304u)
    {
      v10 = 772;
    }

    else
    {
      v10 = v20;
    }

    if (*(*a1 + 168))
    {
      v11 = v10;
    }

    else
    {
      v11 = v20;
    }

    v12 = &bssl::kProtocolVersions;
    v13 = v19;
    v14 = 4;
    do
    {
      v15 = *v12;
      if (v15 >= v11)
      {
        if (v19 < v15)
        {
          break;
        }

        if ((*(v12 + 1) & v7) != 0)
        {
          if (v9)
          {
            v13 = *(v12 - 4);
            goto LABEL_26;
          }

          v9 = 0;
        }

        else
        {
          if ((v9 & 1) == 0)
          {
            v11 = *v12;
          }

          v9 = 1;
        }
      }

      v12 += 4;
      --v14;
    }

    while (v14);
    if ((v9 & 1) == 0)
    {
      v16 = 280;
      v17 = 243;
      goto LABEL_24;
    }

LABEL_26:
    *a2 = v11;
    *a3 = v13;
    return 1;
  }

  else
  {
    v16 = 68;
    v17 = 196;
LABEL_24:
    ERR_put_error(16, 0, v16, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_versions.cc", v17);
    return 0;
  }
}

BOOL bssl::ssl_select_ech_config(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (*(a1 + 30) >= 0x304u && (v5 = *(a1 + 8), (v6 = *(v5 + 296)) != 0))
  {
    v44 = *(v5 + 288);
    v45 = v6;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v43 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0;
    if (CBS_get_u16_length_prefixed(&v44, &v42) && v43 && !v45)
    {
      v31 = a2;
      v32 = a3;
      v33 = a4;
      v30 = (a1 + 1560);
      while (1)
      {
        *v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0xAAAAAAAA00000000;
        v36 = -86;
        if (bssl::parse_ech_config(&v42, v37, &v36, 0))
        {
          v11 = EVP_hpke_x25519_hkdf_sha256();
          v12 = 1;
          if (v36 == 1 && v41 == 32)
          {
            v13 = v11;
            v14 = v40;
            v15 = *(*(*a1 + 8) + 309);
            if ((v15 & 0x800) != 0)
            {
              is_opaque = (v15 >> 12) & 1;
            }

            else
            {
              is_opaque = RSA_is_opaque();
            }

            v35[0] = v14;
            if (*(&v14 + 1))
            {
              v17 = 0;
              while (1)
              {
                v18 = v17;
                LOWORD(v34) = -21846;
                v46[0] = -21846;
                if (!CBS_get_u16(v35, &v34) || !CBS_get_u16(v35, v46))
                {
                  break;
                }

                v19 = 0;
                v20 = v46[0];
                while (1)
                {
                  v17 = bssl::kSupportedAEADs[v19]();
                  if (EVP_HPKE_KDF_id(v17) == v20)
                  {
                    break;
                  }

                  if (++v19 == 3)
                  {
                    goto LABEL_26;
                  }
                }

                if (v17)
                {
                  v21 = v34 == 1;
                }

                else
                {
                  v21 = 0;
                }

                if (!v21)
                {
LABEL_26:
                  v17 = v18;
                  goto LABEL_27;
                }

                if (v18)
                {
                  if (is_opaque)
                  {
                    goto LABEL_26;
                  }

                  if (v46[0] != 3)
                  {
                    v17 = v18;
                  }
                }

LABEL_27:
                if (!*(&v35[0] + 1))
                {
                  if (!v17)
                  {
                    break;
                  }

                  v22 = EVP_hpke_hkdf_sha256();
                  *&v23 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v35[1] = v23;
                  v35[2] = v23;
                  v35[0] = v23;
                  CBB_zero(v35);
                  if (CBB_init(v35, v37[1] + 8) && CBB_add_bytes(v35, "tls ech", 8uLL) && CBB_add_bytes(v35, v37[0], v37[1]) && (v25 = v38, v26 = CBB_data(v35, v24), v27 = CBB_len(v35), EVP_HPKE_CTX_setup_sender((a1 + 752), v31, v33, v32, v13, v22, v17, v25, *(&v25 + 1), v26, v27)) && bssl::SSLTranscript::Init((a1 + 472)))
                  {
                    v28 = bssl::New<bssl::ECHConfig,bssl::ECHConfig>(v37);
                    v34 = 0;
                    std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::reset[abi:ne200100](v30, v28);
                    std::unique_ptr<bssl::ECHConfig,bssl::internal::Deleter>::reset[abi:ne200100](&v34, 0);
                    v10 = *v30 != 0;
                  }

                  else
                  {
                    v10 = 0;
                  }

                  CBB_cleanup(v35, v24);
                  v12 = 0;
                  goto LABEL_42;
                }
              }
            }

            v12 = 1;
          }
        }

        else
        {
          v12 = 0;
          v10 = 0;
        }

LABEL_42:
        OPENSSL_free(v37[0]);
        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!v43)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    return 1;
  }

  return v10;
}

void sub_1A9016280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  CBB_cleanup(va, a2);
  bssl::Array<unsigned char>::~Array(va1);
  _Unwind_Resume(a1);
}

uint64_t boringssl_context_set_resumption(uint64_t a1, char a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (v2)
  {
    if ((a2 & 1) == 0)
    {
      SSL_CTX_set_session_cache_mode(*(v2 + 400), 0);
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_set_false_start(uint64_t a1, int a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v4 = 0x80;
    SSL_set_mode(v3, 0x80u);
  }

  else
  {
    SSL_clear_mode(v3, 128);
    v4 = 0;
  }

  result = 0;
  *(v2 + 548) = *(v2 + 548) & 0x7F | v4;
  return result;
}

uint64_t SSL_set_options(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 144) | a2;
  *(a1 + 144) = v2;
  return v2;
}

uint64_t boringssl_session_set_early_data_enabled(uint64_t result, char a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        result = *(v2 + 392);
        if (result)
        {
          *(v2 + 551) = *(v2 + 551) & 0xFE | a2;
          return SSL_set_early_data_enabled(result, a2);
        }
      }
    }
  }

  return result;
}

void boringssl_context_set_ats_enforced(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
        {
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

          if (v10)
          {
            if (g_boringssl_log)
            {
              v11 = g_boringssl_log;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v15 = v14;
                v18 = 136447234;
                v19 = "boringssl_context_set_ats_enforced";
                v16 = "false";
                v20 = 1024;
                v21 = 659;
                if (a2)
                {
                  v16 = "true";
                }

                v22 = 2082;
                v23 = v13;
                v24 = 2048;
                v25 = v14;
                v26 = 2082;
                v27 = v16;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}s", &v18, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        if (a2)
        {
          v17 = 8;
        }

        else
        {
          v17 = 0;
        }

        *(v3 + 551) = *(v3 + 551) & 0xF7 | v17;
      }
    }
  }
}

uint64_t boringssl_context_set_enforce_ev(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (a2)
        {
          v3 = 2;
        }

        else
        {
          v3 = 0;
        }

        *(v2 + 551) = *(v2 + 551) & 0xFD | v3;
      }
    }
  }

  return result;
}

void boringssl_context_set_ats_minimum_rsa_key_size(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
        {
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

          if (v10)
          {
            if (g_boringssl_log)
            {
              v11 = g_boringssl_log;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v15 = 136447234;
                v16 = "boringssl_context_set_ats_minimum_rsa_key_size";
                v17 = 1024;
                v18 = 668;
                v19 = 2082;
                v20 = v13;
                v21 = 2048;
                v22 = v14;
                v23 = 2050;
                v24 = a2;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}zu", &v15, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        *(v3 + 520) = a2;
      }
    }
  }
}

void boringssl_context_set_ats_minimum_ecdsa_key_size(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
        {
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

          if (v10)
          {
            if (g_boringssl_log)
            {
              v11 = g_boringssl_log;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v15 = 136447234;
                v16 = "boringssl_context_set_ats_minimum_ecdsa_key_size";
                v17 = 1024;
                v18 = 677;
                v19 = 2082;
                v20 = v13;
                v21 = 2048;
                v22 = v14;
                v23 = 2050;
                v24 = a2;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}zu", &v15, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        *(v3 + 528) = a2;
      }
    }
  }
}

void boringssl_context_set_ats_minimum_signature_algorithm(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
        {
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

          if (v10)
          {
            if (g_boringssl_log)
            {
              v11 = g_boringssl_log;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v15 = 136447234;
                v16 = "boringssl_context_set_ats_minimum_signature_algorithm";
                v17 = 1024;
                v18 = 687;
                v19 = 2082;
                v20 = v13;
                v21 = 2048;
                v22 = v14;
                v23 = 1026;
                v24 = a2;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}d", &v15, 0x2Cu);

                if (v12)
                {
                }
              }
            }
          }
        }

        *(v3 + 536) = a2;
      }
    }
  }
}

void boringssl_context_set_ats_non_pfs_ciphersuite_allowed(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 16));
        if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained((v3 + 16)), v2 = v7[435], v7, v6, (v2 & 1) == 0))
        {
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

          if (v10)
          {
            if (g_boringssl_log)
            {
              v11 = g_boringssl_log;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                v12 = objc_loadWeakRetained((v3 + 16));
                if (v12)
                {
                  v2 = objc_loadWeakRetained((v3 + 16));
                  v13 = v2 + 351;
                }

                else
                {
                  v13 = &unk_1A9098A9F;
                }

                v14 = objc_loadWeakRetained((v3 + 16));
                v15 = v14;
                v18 = 136447234;
                v19 = "boringssl_context_set_ats_non_pfs_ciphersuite_allowed";
                v16 = "false";
                v20 = 1024;
                v21 = 696;
                if (a2)
                {
                  v16 = "true";
                }

                v22 = 2082;
                v23 = v13;
                v24 = 2048;
                v25 = v14;
                v26 = 2082;
                v27 = v16;
                _os_log_impl(&dword_1A8FF5000, v11, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] set %{public}s", &v18, 0x30u);

                if (v12)
                {
                }
              }
            }
          }
        }

        if (a2)
        {
          v17 = 16;
        }

        else
        {
          v17 = 0;
        }

        *(v3 + 551) = *(v3 + 551) & 0xEF | v17;
      }
    }
  }
}

uint64_t bssl::Vector<bssl::CertCompressionAlg>::MaybeGrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) < v1)
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

    if (v1 >= 0x555555555555556)
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

  result = OPENSSL_malloc(24 * v5);
  if (result)
  {
    v6 = result;
    v7 = *a1;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = 24 * v8;
      v10 = v6;
      do
      {
        v11 = *v7;
        *(v10 + 16) = v7[2];
        *v10 = v11;
        v10 += 24;
        v7 += 3;
        v9 -= 24;
      }

      while (v9);
      v7 = *a1;
    }

    OPENSSL_free(v7);
    *a1 = v6;
    *(a1 + 8) = v8;
    result = 1;
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t SSL_CTX_add_cert_compression_alg(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!(a3 | a4))
  {
    SSL_CTX_add_cert_compression_alg_cold_1();
  }

  v6 = a2;
  v8 = *(a1 + 736);
  if (v8)
  {
    v9 = (*(a1 + 728) + 16);
    v10 = 24 * v8;
    while (1)
    {
      v11 = *v9;
      v9 += 12;
      if (v11 == a2)
      {
        return 0;
      }

      v10 -= 24;
      if (!v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = bssl::Vector<bssl::CertCompressionAlg>::MaybeGrow(a1 + 728);
    if (result)
    {
      v13 = *(a1 + 728) + 24 * *(a1 + 736);
      *v13 = a3;
      *(v13 + 8) = a4;
      *(v13 + 16) = v6;
      *(v13 + 18) = -1431655766;
      *(v13 + 22) = -21846;
      ++*(a1 + 736);
    }
  }

  return result;
}

uint64_t boringssl_context_set_certificate_compression(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      result = v2 != 0;
      if (v2)
      {
        v3 = a2 == 0;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        result = *(v2 + 400);
        if (result)
        {
          *(v2 + 551) |= 0x40u;
          return SSL_CTX_add_cert_compression_alg(result, 1, boringssl_context_zlib_compress_data, boringssl_context_zlib_uncompress_data) == 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t boringssl_context_set_GREASE_enabled(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        result = *(v2 + 400);
        if (result)
        {
          if (a2)
          {
            v3 = 2;
          }

          else
          {
            v3 = 0;
          }

          *(v2 + 552) = *(v2 + 552) & 0xFD | v3;
          return SSL_CTX_set_grease_enabled(result, a2);
        }
      }
    }
  }

  return result;
}

uint64_t boringssl_context_set_ech_grease_enabled(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        result = *(v2 + 392);
        if (result)
        {
          if (a2)
          {
            v3 = 16;
          }

          else
          {
            v3 = 0;
          }

          *(v2 + 552) = *(v2 + 552) & 0xEF | v3;
          return SSL_set_enable_ech_grease(result, a2);
        }
      }
    }
  }

  return result;
}

uint64_t SSL_set_enable_ech_grease(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = (v2 + 309);
    v4 = *v3 & 0xFFFE;
    if (a2)
    {
      ++v4;
    }

    *v3 = v4;
  }

  return result;
}

uint64_t boringssl_context_set_verify_mode(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  if (!v3 || !*(v3 + 400))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2;
  if ((*(v3 + 548) & 0x10) != 0)
  {
    if (a2 == 3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 16));
      if (WeakRetained)
      {
        v20 = WeakRetained;
        v21 = objc_loadWeakRetained((v3 + 16));
        v22 = v21[435];

        if (v22)
        {
          goto LABEL_51;
        }
      }

      v23 = objc_loadWeakRetained((v3 + 16));
      if (v23)
      {
        v24 = objc_loadWeakRetained((v3 + 16));
        v25 = (v24[435] & 1) == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25 || !g_boringssl_log)
      {
        goto LABEL_51;
      }

      v26 = g_boringssl_log;
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v27 = objc_loadWeakRetained((v3 + 16));
      if (v27)
      {
        v2 = objc_loadWeakRetained((v3 + 16));
        v29 = v2 + 351;
      }

      else
      {
        v29 = &unk_1A9098A9F;
      }

      v31 = objc_loadWeakRetained((v3 + 16));
      v34 = 136446978;
      v35 = "boringssl_context_set_verify_mode";
      v36 = 1024;
      v37 = 600;
      v38 = 2082;
      v39 = v29;
      v40 = 2048;
      v41 = v31;
      v32 = "%{public}s(%d) %{public}s[%p] Requiring client cert";
    }

    else if (a2 == 1)
    {
      v12 = objc_loadWeakRetained((v3 + 16));
      if (v12)
      {
        v13 = v12;
        v14 = objc_loadWeakRetained((v3 + 16));
        v15 = v14[435];

        if (v15)
        {
          goto LABEL_51;
        }
      }

      v16 = objc_loadWeakRetained((v3 + 16));
      if (v16)
      {
        v17 = objc_loadWeakRetained((v3 + 16));
        v18 = (v17[435] & 1) == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18 || !g_boringssl_log)
      {
        goto LABEL_51;
      }

      v26 = g_boringssl_log;
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v27 = objc_loadWeakRetained((v3 + 16));
      if (v27)
      {
        v2 = objc_loadWeakRetained((v3 + 16));
        v28 = v2 + 351;
      }

      else
      {
        v28 = &unk_1A9098A9F;
      }

      v31 = objc_loadWeakRetained((v3 + 16));
      v34 = 136446978;
      v35 = "boringssl_context_set_verify_mode";
      v36 = 1024;
      v37 = 604;
      v38 = 2082;
      v39 = v28;
      v40 = 2048;
      v41 = v31;
      v32 = "%{public}s(%d) %{public}s[%p] Will request optional client cert";
    }

    else
    {
      if (a2)
      {
        goto LABEL_51;
      }

      v5 = objc_loadWeakRetained((v3 + 16));
      if (v5)
      {
        v6 = v5;
        v7 = objc_loadWeakRetained((v3 + 16));
        v2 = v7[435];

        if (v2)
        {
          goto LABEL_51;
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

      if (!v10 || !g_boringssl_log)
      {
        goto LABEL_51;
      }

      v26 = g_boringssl_log;
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v27 = objc_loadWeakRetained((v3 + 16));
      if (v27)
      {
        v2 = objc_loadWeakRetained((v3 + 16));
        v30 = v2 + 351;
      }

      else
      {
        v30 = &unk_1A9098A9F;
      }

      v31 = objc_loadWeakRetained((v3 + 16));
      v34 = 136446978;
      v35 = "boringssl_context_set_verify_mode";
      v36 = 1024;
      v37 = 596;
      v38 = 2082;
      v39 = v30;
      v40 = 2048;
      v41 = v31;
      v32 = "%{public}s(%d) %{public}s[%p] Not requesting client cert";
    }

    _os_log_impl(&dword_1A8FF5000, v26, OS_LOG_TYPE_DEFAULT, v32, &v34, 0x26u);

    if (v27)
    {
    }

LABEL_50:
  }

LABEL_51:
  v33 = *(v3 + 392);
  if (v33)
  {
    SSL_set_custom_verify(v33, v4, boringssl_context_certificate_verify_callback);
  }

  else
  {
    SSL_CTX_set_custom_verify(*(v3 + 400), v4, boringssl_context_certificate_verify_callback);
  }

  return 0;
}

uint64_t SSL_set_custom_verify(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    *(v3 + 308) = a2;
    *(v3 + 48) = a3;
  }

  return result;
}

BOOL boringssl_context_set_alpn_protocol_list(uint64_t a1, void *a2, unsigned int a3)
{
  v117 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_23;
  }

  v7 = 0;
  if (!v5)
  {
    goto LABEL_24;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_24;
  }

  if (!xpc_array_get_count(v5) || !v8[49] || !v8[50])
  {
LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  v101 = v8[49];
  v102 = v8;
  v9 = v6;
  xarray = xpc_array_create(0, 0);
  count = xpc_array_get_count(v9);
  if (!count)
  {
    v12 = 0;
LABEL_26:
    v26 = xarray;
    v27 = xarray;
    v28 = v102;
    goto LABEL_74;
  }

  v11 = count;
  v12 = 0;
  v13 = 0;
  v14 = a3;
  v103 = v9;
  while (1)
  {
    v15 = xpc_array_get_value(v9, v13);
    if (MEMORY[0x1AC57FB30]() != MEMORY[0x1E69E9F10])
    {
      if (MEMORY[0x1AC57FB30](v15) == MEMORY[0x1E69E9E50])
      {
        if (xpc_array_get_count(v15) == 2)
        {
          v16 = v12;
          string = xpc_array_get_string(v15, 0);
          uint64 = xpc_array_get_uint64(v15, 1uLL);
          if (string)
          {
            v19 = uint64;
            v20 = strlen(string);
            v21 = v20;
            if (v20 < 0x100)
            {
              if (v19 == v14)
              {
                v12 = v16 + v20 + 1;
                xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, string);
              }

              else
              {
                v12 = v16;
              }

              v9 = v103;
              goto LABEL_21;
            }

            v28 = v102;
            WeakRetained = objc_loadWeakRetained(v102 + 2);
            v12 = v16;
            if (WeakRetained)
            {
              v51 = WeakRetained;
              v52 = objc_loadWeakRetained(v102 + 2);
              v53 = v52[435];

              if (v53)
              {
                goto LABEL_73;
              }
            }

            v54 = objc_loadWeakRetained(v102 + 2);
            if (v54)
            {
              v55 = objc_loadWeakRetained(v102 + 2);
              v56 = (v55[435] & 1) == 0;
            }

            else
            {
              v56 = 1;
            }

            if (!v56 || !g_boringssl_log)
            {
              goto LABEL_73;
            }

            v64 = g_boringssl_log;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              log = v64;
              v65 = objc_loadWeakRetained(v102 + 2);
              if (v65)
              {
                v95 = objc_loadWeakRetained(v102 + 2);
                v98 = v95 + 351;
              }

              else
              {
                v98 = &unk_1A9098A9F;
              }

              v28 = v102;
              v91 = objc_loadWeakRetained(v102 + 2);
              v92 = v91;
              *buf = 136447490;
              v106 = "boringssl_context_copy_validated_alpn_array";
              v107 = 1024;
              v108 = 1145;
              v109 = 2082;
              v110 = v98;
              v111 = 2048;
              v112 = v91;
              v113 = 2048;
              v114 = v21;
              v115 = 2082;
              redacted_identity = nw_protocol_boringssl_get_redacted_identity(v92, string);
              _os_log_error_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] ALPN protocol exceeds length restrictions (%zu): %{public}s", buf, 0x3Au);

              if (v65)
              {
              }

              v12 = v16;
              v64 = log;
            }
          }

          else
          {
            v28 = v102;
            v43 = objc_loadWeakRetained(v102 + 2);
            if (v43)
            {
              v44 = v43;
              v45 = objc_loadWeakRetained(v102 + 2);
              v46 = v45[435];

              if (v46)
              {
                goto LABEL_73;
              }
            }

            v47 = objc_loadWeakRetained(v102 + 2);
            if (v47)
            {
              v48 = objc_loadWeakRetained(v102 + 2);
              v49 = (v48[435] & 1) == 0;
            }

            else
            {
              v49 = 1;
            }

            if (!v49 || !g_boringssl_log)
            {
              goto LABEL_73;
            }

            v64 = g_boringssl_log;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              boringssl_context_set_alpn_protocol_list_cold_3();
            }
          }
        }

        else
        {
          v28 = v102;
          v36 = objc_loadWeakRetained(v102 + 2);
          if (v36)
          {
            v37 = v36;
            v38 = objc_loadWeakRetained(v102 + 2);
            v39 = v38[435];

            if (v39)
            {
              goto LABEL_73;
            }
          }

          v40 = objc_loadWeakRetained(v102 + 2);
          if (v40)
          {
            v41 = objc_loadWeakRetained(v102 + 2);
            v42 = (v41[435] & 1) == 0;
          }

          else
          {
            v42 = 1;
          }

          if (!v42 || !g_boringssl_log)
          {
            goto LABEL_73;
          }

          v64 = g_boringssl_log;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_alpn_protocol_list_cold_2();
          }
        }
      }

      else
      {
        v28 = v102;
        v29 = objc_loadWeakRetained(v102 + 2);
        if (v29)
        {
          v30 = v29;
          v31 = objc_loadWeakRetained(v102 + 2);
          v32 = v31[435];

          if (v32)
          {
            goto LABEL_73;
          }
        }

        v33 = objc_loadWeakRetained(v102 + 2);
        if (v33)
        {
          v34 = objc_loadWeakRetained(v102 + 2);
          v35 = (v34[435] & 1) == 0;
        }

        else
        {
          v35 = 1;
        }

        if (!v35 || !g_boringssl_log)
        {
          goto LABEL_73;
        }

        v64 = g_boringssl_log;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_set_alpn_protocol_list_cold_1();
        }
      }

LABEL_72:

      goto LABEL_73;
    }

    v22 = xpc_array_get_string(v9, v13);
    v23 = strlen(v22);
    v24 = v23;
    if (v23 >= 0x100)
    {
      break;
    }

    v12 += v23 + 1;
    xpc_array_set_string(xarray, 0xFFFFFFFFFFFFFFFFLL, v22);
LABEL_21:

    if (v11 == ++v13)
    {
      goto LABEL_26;
    }
  }

  v28 = v102;
  v57 = objc_loadWeakRetained(v102 + 2);
  if (!v57 || (v58 = v57, v59 = objc_loadWeakRetained(v102 + 2), v60 = v59[435], v59, v58, (v60 & 1) == 0))
  {
    v61 = objc_loadWeakRetained(v102 + 2);
    if (v61)
    {
      v62 = objc_loadWeakRetained(v102 + 2);
      v63 = (v62[435] & 1) == 0;
    }

    else
    {
      v63 = 1;
    }

    if (v63)
    {
      if (g_boringssl_log)
      {
        v64 = g_boringssl_log;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          loga = v64;
          v100 = v12;
          v89 = objc_loadWeakRetained(v102 + 2);
          if (v89)
          {
            v28 = objc_loadWeakRetained(v102 + 2);
            v90 = v28 + 351;
          }

          else
          {
            v90 = &unk_1A9098A9F;
          }

          v93 = objc_loadWeakRetained(v102 + 2);
          v94 = v93;
          *buf = 136447490;
          v106 = "boringssl_context_copy_validated_alpn_array";
          v107 = 1024;
          v108 = 1132;
          v109 = 2082;
          v110 = v90;
          v111 = 2048;
          v112 = v93;
          v113 = 2048;
          v114 = v24;
          v115 = 2082;
          redacted_identity = nw_protocol_boringssl_get_redacted_identity(v94, v22);
          _os_log_error_impl(&dword_1A8FF5000, loga, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] ALPN protocol exceeds length restrictions (%zu): %{public}s", buf, 0x3Au);

          if (v89)
          {
          }

          v28 = v102;
          v64 = loga;
          v12 = v100;
        }

        goto LABEL_72;
      }
    }
  }

LABEL_73:

  v27 = 0;
  v9 = v103;
  v26 = xarray;
LABEL_74:

  if (!v27)
  {
LABEL_102:
    v7 = 0;
    goto LABEL_103;
  }

  v66 = xpc_array_get_count(v27);
  if (!v66)
  {
    v74 = objc_loadWeakRetained(v28 + 2);
    if (!v74 || (v75 = v74, v76 = objc_loadWeakRetained(v28 + 2), v77 = v76[435], v76, v75, (v77 & 1) == 0))
    {
      v78 = objc_loadWeakRetained(v28 + 2);
      if (v78)
      {
        v79 = objc_loadWeakRetained(v28 + 2);
        v80 = (v79[435] & 1) == 0;
      }

      else
      {
        v80 = 1;
      }

      v7 = 0;
      if (!v80 || !g_boringssl_log)
      {
        goto LABEL_103;
      }

      v88 = g_boringssl_log;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        boringssl_context_set_alpn_protocol_list_cold_5();
      }

LABEL_101:
    }

    goto LABEL_102;
  }

  v67 = v66;
  v68 = malloc_type_malloc(v12, 0x100004077774924uLL);
  if (v68)
  {
    v69 = v68;
    v99 = v12;
    v70 = 0;
    v71 = 0;
    do
    {
      v72 = xpc_array_get_string(v27, v70);
      v73 = strlen(v72);
      v69[v71] = v73;
      memcpy(&v69[v71 + 1], v72, v73);
      v71 += v73 + 1;
      ++v70;
    }

    while (v67 != v70);
    if ((*(v102 + 548) & 0x10) != 0)
    {
      SSL_set_alpn_select_cb(v101, boringssl_context_select_alpn_callback, a1);
      v7 = 1;
    }

    else
    {
      v7 = SSL_set_alpn_protos(v101, v69, v99) == 0;
    }

    free(v69);
    *(v102 + 549) |= 0x40u;
    objc_storeStrong(v102 + 7, v27);
    goto LABEL_103;
  }

  v81 = objc_loadWeakRetained(v28 + 2);
  if (v81)
  {
    v82 = v81;
    v83 = objc_loadWeakRetained(v28 + 2);
    v84 = v83[435];

    if (v84)
    {
      goto LABEL_102;
    }
  }

  v85 = objc_loadWeakRetained(v28 + 2);
  if (v85)
  {
    v86 = objc_loadWeakRetained(v28 + 2);
    v87 = (v86[435] & 1) == 0;
  }

  else
  {
    v87 = 1;
  }

  v7 = 0;
  if (v87 && g_boringssl_log)
  {
    v88 = g_boringssl_log;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_alpn_protocol_list_cold_4();
    }

    goto LABEL_101;
  }

LABEL_103:

LABEL_24:
  return v7;
}

BOOL bssl::ssl_is_valid_alpn_list(unsigned __int8 *a1, uint64_t a2)
{
  v7 = a1;
  v8 = a2;
  if (!a2)
  {
    return 0;
  }

  do
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_u8_length_prefixed(&v7, &v5))
    {
      v2 = v6 == 0;
    }

    else
    {
      v2 = 1;
    }

    result = !v2;
  }

  while (result && v8 != 0);
  return result;
}

uint64_t SSL_set_alpn_protos(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v4 = a3;
  if (!a3)
  {
    return bssl::Array<unsigned char>::InitUninitialized(v3 + 136, 0) ^ 1;
  }

  v5 = a2;
  if (!bssl::ssl_is_valid_alpn_list(a2, a3))
  {
    ERR_put_error(16, 0, 315, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2655);
    return 1;
  }

  v7 = *(a1 + 8);
  if (!bssl::Array<unsigned char>::InitUninitialized(v7 + 136, v4))
  {
    return 1;
  }

  v8 = *(v7 + 136);
  do
  {
    v9 = *v5++;
    *v8++ = v9;
    --v4;
  }

  while (v4);
  return 0;
}

double CBB_zero(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t bssl::ssl_setup_key_shares(bssl *this, unint64_t a2)
{
  v4 = *this;
  std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, 0);
  std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, 0);
  OPENSSL_free(*(this + 79));
  *(this + 632) = 0u;
  if (*(this + 15) >= 0x304u && !*(this + 210))
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27[1] = v7;
    v27[2] = v7;
    v27[0] = v7;
    CBB_zero(v27);
    if (!CBB_init(v27, 0x40uLL))
    {
      goto LABEL_25;
    }

    if (a2)
    {
      goto LABEL_7;
    }

    if ((*(v4[15] + 856) & 0x20) != 0)
    {
      grease_value = bssl::ssl_get_grease_value(this, 1u);
      if (!CBB_add_u16(v27, grease_value) || !CBB_add_u16(v27, 1u) || !CBB_add_u8(v27, 0))
      {
        goto LABEL_25;
      }
    }

    v13 = *(this + 1);
    v14 = *(v13 + 120);
    if (v14)
    {
      v15 = *(v13 + 112);
      a2 = *v15;
      if (v14 == 1)
      {
LABEL_7:
        v9 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v15 = &bssl::kDefaultGroups;
      a2 = 29;
      v14 = 4;
    }

    v18 = a2 == 25497 || a2 == 4588;
    v19 = (v15 + 1);
    v20 = 2;
    do
    {
      v21 = *v19++;
      v9 = v21;
      v23 = v21 == 25497 || v9 == 4588;
      if (v18 == v23)
      {
        v9 = 0;
      }

      else if (v9 == a2)
      {
        __assert_rtn("ssl_setup_key_shares", "extensions.cc", 2294, "second_group_id != group_id");
      }

      if (v9)
      {
        break;
      }
    }

    while (v20++ < v14);
LABEL_8:
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[1] = v10;
    v26[2] = v10;
    v26[0] = v10;
    bssl::SSLKeyShare::Create(&v25, a2);
    v11 = v25;
    v25 = 0;
    std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, v11);
    std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v25, 0);
    if (*(this + 49))
    {
      if (CBB_add_u16(v27, a2))
      {
        if (CBB_add_u16_length_prefixed(v27, v26))
        {
          if ((*(**(this + 49) + 24))(*(this + 49), v26))
          {
            if (!v9 || (bssl::SSLKeyShare::Create(&v25, v9), v12 = v25, v25 = 0, std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, v12), std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v25, 0), *(this + 50)) && CBB_add_u16(v27, v9) && CBB_add_u16_length_prefixed(v27, v26) && ((*(**(this + 50) + 24))(*(this + 50), v26) & 1) != 0)
            {
              v5 = bssl::CBBFinishArray(v27, this + 632);
LABEL_26:
              CBB_cleanup(v27, v8);
              return v5;
            }
          }
        }
      }
    }

LABEL_25:
    v5 = 0;
    goto LABEL_26;
  }

  return 1;
}

void sub_1A9018444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  CBB_cleanup(va, a2);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_get_grease_value(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + a2 + 1646) & 0xF0;
  result = v3 | 0xA | ((v3 | 0xAu) << 8);
  if (a2 == 3)
  {
    if (v3 == (*(a1 + 1648) & 0xF0))
    {
      return result ^ 0x1010;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t *bssl::SSLKeyShare::Create@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  if (this <= 24)
  {
    switch(this)
    {
      case 0x15:
        v7 = EC_group_p224();
        v5 = OPENSSL_malloc(0x20uLL);
        if (!v5)
        {
          goto LABEL_28;
        }

        *v5 = &unk_1F1CB0310;
        v5[1] = 0;
        v5[2] = v7;
        v6 = 21;
        break;
      case 0x17:
        v9 = EC_group_p256();
        v5 = OPENSSL_malloc(0x20uLL);
        if (v5)
        {
          *v5 = &unk_1F1CB0310;
          v5[1] = 0;
          v5[2] = v9;
          v6 = 23;
          break;
        }

        goto LABEL_28;
      case 0x18:
        v4 = EC_group_p384();
        v5 = OPENSSL_malloc(0x20uLL);
        if (!v5)
        {
          goto LABEL_28;
        }

        *v5 = &unk_1F1CB0310;
        v5[1] = 0;
        v5[2] = v4;
        v6 = 24;
        break;
      default:
        goto LABEL_19;
    }

LABEL_27:
    *(v5 + 12) = v6;
    goto LABEL_28;
  }

  if (this > 4587)
  {
    if (this == 4588)
    {
      this = OPENSSL_malloc(0x30uLL);
      if (this)
      {
        *this = &unk_1F1CB0458;
        this[5] = 0;
      }

      goto LABEL_24;
    }

    if (this == 25497)
    {
      this = OPENSSL_malloc(0x30uLL);
      if (this)
      {
        v3 = &unk_1F1CB03F0;
        goto LABEL_16;
      }

LABEL_24:
      *a1 = this;
      return this;
    }

LABEL_19:
    *a1 = 0;
    return this;
  }

  if (this != 25)
  {
    if (this == 29)
    {
      this = OPENSSL_malloc(0x28uLL);
      if (this)
      {
        v3 = &unk_1F1CB0388;
LABEL_16:
        *this = v3;
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v8 = EC_group_p521();
  v5 = OPENSSL_malloc(0x20uLL);
  if (v5)
  {
    *v5 = &unk_1F1CB0310;
    v5[1] = 0;
    v5[2] = v8;
    v6 = 25;
    goto LABEL_27;
  }

LABEL_28:
  v10 = 0;
  *a1 = v5;
}

uint64_t CBB_init(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = OPENSSL_malloc(a2);
  if (!a2 || result)
  {
    *(a1 + 8) = 0;
    *a1 = 0;
    *(a1 + 16) = result;
    *(a1 + 24) = 0;
    *(a1 + 32) = a2;
    *(a1 + 40) = *(a1 + 40) & 0xFC | 1;
    return 1;
  }

  return result;
}

uint64_t bssl::anonymous namespace::X25519MLKEM768KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  MLKEM768_generate_key(__b, 0, (a1 + 40));
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  X25519_keypair(v6, (a1 + 8));
  result = CBB_add_bytes(a2, __b, 0x4A0uLL);
  if (result)
  {
    return CBB_add_bytes(a2, v6, 0x20uLL) != 0;
  }

  return result;
}

void MLKEM768_generate_key(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  cckem_kyber768();
  v4 = cckem_sizeof_full_ctx();
  v5 = malloc_type_malloc(v4, 0x3D4C49F2uLL);
  *a3 = v5;
  if (v5)
  {
    cckem_full_ctx_init();
    ccrng();
    cckem_generate_key();
    cckem_public_ctx();
    if (cckem_export_pubkey() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      MLKEM768_generate_key_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    MLKEM768_generate_key_cold_2();
  }
}

BOOL bssl::ssl_encrypt_client_hello(uint64_t a1, const void *a2, size_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*(a1 + 1560))
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v71 = v7;
    v72 = v7;
    *buf = v7;
    CBB_zero(buf);
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v68 = v8;
    v69 = v8;
    v67 = v8;
    CBB_zero(&v67);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65 = v9;
    v66 = v9;
    v64 = v9;
    v63 = -86;
    v61 = 0;
    v62 = 0;
    if (!(*(*v4 + 88))(v4, buf, &v64, 1) || !CBB_init(&v67, 0x100uLL) || !bssl::ssl_write_client_hello_without_extensions(a1, &v64, 1, 0) || !bssl::ssl_write_client_hello_without_extensions(a1, &v67, 1, 1) || (v10 = CBB_len(&v64), !bssl::ssl_add_clienthello_tlsext(a1, &v64, &v67, &v63, 1, v10)) || ((*(*v4 + 96))(v4, buf, &v61) & 1) == 0)
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 792);
      goto LABEL_20;
    }

    v11 = v62;
    if (v63 == 1)
    {
      *&v76 = 0xAAAAAAAAAAAAAAAALL;
      if ((bssl::tls13_write_psk_binder(a1, (a1 + 472), v61, v62, &v76) & 1) == 0)
      {
        goto LABEL_20;
      }

      v13 = CBB_data(&v67, v12);
      v14 = CBB_len(&v67);
      if (v14 < v76)
      {
        goto LABEL_67;
      }

      v11 = v62;
      if (v62 < v76)
      {
        goto LABEL_67;
      }

      if (v76)
      {
        memcpy(v13 + v14 - v76, v61 + v62 - v76, v76);
        v11 = v62;
      }
    }

    bssl::ssl_do_msg_callback(v4, 1, 257, v61, v11);
    if (bssl::SSLTranscript::Update(a1 + 472, v61, v62))
    {
      v15 = *(*(a1 + 1560) + 66);
      v16 = v4[20];
      if (v16)
      {
        v17 = strlen(v16);
        if (v15 >= v17)
        {
          v18 = v15 - v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = v15 + 9;
      }

      v36 = CBB_len(&v67);
      v59 = 0;
      v60 = 0;
      if (!CBB_add_zeros(&v67, ((-v36 - v18) & 0x1F) + v18) || !bssl::CBBFinishArray(&v67, &v59) || (v37 = EVP_HPKE_CTX_kdf((a1 + 752)), v38 = EVP_HPKE_CTX_aead(a1 + 752), v39 = v60, v40 = EVP_HPKE_AEAD_aead(v38), v41 = EVP_AEAD_max_overhead(v40) + v39, v58 = v41, *&v42 = 0xAAAAAAAAAAAAAAAALL, *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL, v77 = v42, v78 = v42, v75 = v42, v76 = v42, *v73 = v42, v74 = v42, !CBB_init(buf, 0x100uLL)) || (v43 = EVP_HPKE_KDF_id(v37), !CBB_add_u16(buf, v43)) || (v44 = EVP_HPKE_KDF_id(v38), !CBB_add_u16(buf, v44)) || !CBB_add_u8(buf, *(*(a1 + 1560) + 67)) || !CBB_add_u16_length_prefixed(buf, &v76) || !CBB_add_bytes(&v76, a2, a3) || !CBB_add_u16_length_prefixed(buf, v73) || !CBB_add_zeros(v73, v41) || !bssl::CBBFinishArray(buf, a1 + 584))
      {
        v19 = 0;
LABEL_63:
        bssl::Array<unsigned char>::~Array(&v59);
        goto LABEL_21;
      }

      *&v45 = 0xAAAAAAAAAAAAAAAALL;
      *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v56 = v45;
      v57 = v45;
      *v55 = v45;
      CBB_zero(v55);
      if (!CBB_init(v55, 0x100uLL) || !bssl::ssl_write_client_hello_without_extensions(a1, v55, 2, 0) || (v46 = CBB_len(v55), !bssl::ssl_add_clienthello_tlsext(a1, v55, 0, &v63, 2, v46)))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 870);
        goto LABEL_65;
      }

      if (v63 == 1)
      {
        __assert_rtn("ssl_encrypt_client_hello", "encrypted_client_hello.cc", 876, "!needs_psk_binder");
      }

      v48 = *(a1 + 592);
      if (v48 >= v41)
      {
        v49 = *(a1 + 584);
        v50 = v59;
        v51 = v60;
        v52 = CBB_data(v55, v47);
        v53 = CBB_len(v55);
        if (EVP_HPKE_CTX_seal(a1 + 752, (v49 + v48 - v41), &v58, v41, v50, v51, v52, v53))
        {
          v19 = v58 == v41;
LABEL_66:
          CBB_cleanup(v55, v54);
          goto LABEL_63;
        }

LABEL_65:
        v19 = 0;
        goto LABEL_66;
      }

LABEL_67:
      abort();
    }

LABEL_20:
    v19 = 0;
LABEL_21:
    OPENSSL_free(v61);
    CBB_cleanup(&v67, v20);
    CBB_cleanup(buf, v21);
    return v19;
  }

  if (*(a1 + 30) < 0x304u || (*(*(a1 + 8) + 309) & 1) == 0)
  {
    return 1;
  }

  v22 = *(v4[1] + 309);
  if ((v22 & 0x800) != 0)
  {
    if ((v22 >> 12))
    {
      goto LABEL_26;
    }
  }

  else if (RSA_is_opaque())
  {
LABEL_26:
    v23 = EVP_hpke_aes_128_gcm();
    goto LABEL_30;
  }

  v23 = EVP_hpke_chacha20_poly1305();
LABEL_30:
  v24 = v23;
  v25 = *(a1 + 1652);
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76 = v26;
  v77 = v26;
  *v73 = v26;
  v74 = v26;
  X25519_keypair(&v76, v73);
  *buf = 0xAAAAAAAAAAAAAAAALL;
  RAND_bytes(buf, 8);
  v27 = buf[0];
  v28 = EVP_HPKE_AEAD_aead(v24);
  v29 = EVP_AEAD_max_overhead(v28);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v30;
  v72 = v30;
  *buf = v30;
  CBB_zero(buf);
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v68 = v31;
  v69 = v31;
  v66 = v31;
  v67 = v31;
  v64 = v31;
  v65 = v31;
  v55[0] = 0xAAAAAAAAAAAAAAAALL;
  v19 = CBB_init(buf, 0x100uLL) && CBB_add_u16(buf, 1u) && (v33 = EVP_HPKE_KDF_id(v24), CBB_add_u16(buf, v33)) && CBB_add_u8(buf, v25) && CBB_add_u16_length_prefixed(buf, &v67) && CBB_add_bytes(&v67, &v76, 0x20uLL) && CBB_add_u16_length_prefixed(buf, &v64) && (v34 = (32 * (v27 & 3)) | 0x80, CBB_add_space(&v64, v55, v34 + v29)) && RAND_bytes(v55[0], v34 + v29) && bssl::CBBFinishArray(buf, a1 + 584);
  CBB_cleanup(buf, v32);
  return v19;
}

void sub_1A9018F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  CBB_cleanup(&a9, a2);
  bssl::Array<unsigned char>::~Array(&a16);
  bssl::Array<unsigned char>::~Array(&a18);
  CBB_cleanup(&a27, v33);
  CBB_cleanup(va, v34);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_write_client_hello_without_extensions(uint64_t *a1, uint64_t *a2, int a3, char a4)
{
  v8 = *a1;
  result = CBB_add_u16(a2, *(a1 + 802));
  if (result)
  {
    v10 = a3 == 1 ? a1 + 65 : (*(v8 + 48) + 48);
    result = CBB_add_bytes(a2, v10, 0x20uLL);
    if (result)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35[1] = v11;
      v35[2] = v11;
      v35[0] = v11;
      result = CBB_add_u8_length_prefixed(a2, v35);
      if (result)
      {
        if ((*(*(v8 + 48) + 222) & 0x10) != 0 || (a4 & 1) != 0 || (result = CBB_add_bytes(v35, a1 + 1613, *(a1 + 1645)), result))
        {
          if (!SSL_is_dtls(v8) || (result = CBB_add_u8_length_prefixed(a2, v35), result) && (result = CBB_add_bytes(v35, a1[71], a1[72]), result))
          {
            v12 = *a1;
            v34 = *(a1[1] + 64) == 0;
            *&v13 = 0xAAAAAAAAAAAAAAAALL;
            *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v36[1] = v13;
            v36[2] = v13;
            v36[0] = v13;
            if (!CBB_add_u16_length_prefixed(a2, v36))
            {
              return 0;
            }

            if ((*(*(v12 + 120) + 856) & 0x20) != 0)
            {
              grease_value = bssl::ssl_get_grease_value(a1, 0);
              if (!CBB_add_u16(v36, grease_value))
              {
                return 0;
              }
            }

            if (*(a1 + 15) >= 0x304u)
            {
              v15 = *(*(v12 + 8) + 309);
              if ((v15 & 0x800) != 0)
              {
                is_opaque = (v15 >> 12) & 1;
              }

              else
              {
                is_opaque = RSA_is_opaque();
              }

              v17 = 0;
              if ((*(*(*a1[1] + 120) + 248) & 4) != 0)
              {
                v18 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersAESHardwarePQTLS;
              }

              else
              {
                v18 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersAESHardware;
              }

              v19 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersNoAESHardwarePQTLS;
              if ((*(*(*a1[1] + 120) + 248) & 4) == 0)
              {
                v19 = &bssl::ssl_write_client_cipher_list(bssl::SSL_HANDSHAKE const*,cbb_st *,bssl::ssl_client_hello_type_t)::kCiphersNoAESHardware;
              }

              if (is_opaque)
              {
                v20 = v18;
              }

              else
              {
                v20 = v19;
              }

              do
              {
                v21 = *&v20[v17];
                if (v21 == 4865 || v21 == 4866)
                {
                  if ((*(*(*a1[1] + 120) + 248) & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                else if (v21 != 4867 || (*(*(*a1[1] + 120) + 248) & 2) == 0)
                {
                  goto LABEL_36;
                }

                if (bssl::ssl_tls13_cipher_meets_policy(*&v20[v17], *(*(v12 + 8) + 304)) && !CBB_add_u16(v36, v21))
                {
                  return 0;
                }

LABEL_36:
                v17 += 2;
              }

              while (v17 != 6);
            }

            if (a3 != 1 && *(a1 + 14) <= 0x303u)
            {
              ciphers = SSL_get_ciphers(v12);
              v23 = EVP_MD_CTX_md(ciphers);
              if (!v23)
              {
                goto LABEL_52;
              }

              v24 = v23;
              v25 = 0;
              v26 = 0;
              v27 = 8 * v34;
              v28 = &v23[-1].ctx_size + 7;
              do
              {
                while (1)
                {
                  v29 = OPENSSL_sk_value(ciphers, v26);
                  if ((*(v29 + 5) & v27) != 0)
                  {
                    break;
                  }

                  v30 = v29;
                  if ((v29[3] & v27) != 0 || SSL_CIPHER_get_min_version(v29) > *(a1 + 15) || SSL_CIPHER_get_max_version(v30) < *(a1 + 14))
                  {
                    break;
                  }

                  protocol_id = SSL_CIPHER_get_protocol_id(v30, v31);
                  if (!CBB_add_u16(v36, protocol_id))
                  {
                    return 0;
                  }

                  v25 = 1;
                  if (v28 == v26++)
                  {
                    goto LABEL_54;
                  }
                }

                ++v26;
              }

              while (v24 != v26);
              if ((v25 & 1) == 0)
              {
LABEL_52:
                if (*(a1 + 15) <= 0x303u)
                {
                  ERR_put_error(16, 0, 175, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 330);
                  return 0;
                }
              }
            }

LABEL_54:
            if ((*(v12 + 149) & 4) != 0 && !CBB_add_u16(v36, 0x5600u))
            {
              return 0;
            }

            result = CBB_flush(a2);
            if (result)
            {
              result = CBB_add_u8(a2, 1u);
              if (result)
              {
                return CBB_add_u8(a2, 0) != 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t CBB_len(uint64_t a1)
{
  if (*a1)
  {
    CBB_len_cold_1();
  }

  if (!*(a1 + 8))
  {
    return *(a1 + 24);
  }

  v1 = *(a1 + 24) + *(a1 + 32);
  v2 = *(*(a1 + 16) + 8);
  result = v2 - v1;
  if (v2 < v1)
  {
    CBB_len_cold_2();
  }

  return result;
}

BOOL bssl::ssl_add_clienthello_tlsext(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, const ssl_session_st *a5, uint64_t a6)
{
  *a4 = 0;
  if (a5 != 1)
  {
    if (a3)
    {
      bssl::ssl_add_clienthello_tlsext();
    }

    v41 = *a1;
    *&v42 = 0xAAAAAAAAAAAAAAAALL;
    *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v79 = v42;
    v80 = v42;
    v78 = v42;
    if (!CBB_add_u16_length_prefixed(a2, &v78))
    {
      v54 = 4225;
LABEL_55:
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v54);
      return 0;
    }

    *(a1 + 376) = 0;
    if ((*(*(v41 + 120) + 856) & 0x20) != 0)
    {
      grease_value = bssl::ssl_get_grease_value(a1, 2u);
      if (!bssl::add_padding_extension(&v78, grease_value, 0))
      {
        return 0;
      }
    }

    v68 = a6;
    v70 = a2;
    v72 = a4;
    for (i = 0; i != 30; ++i)
    {
      v45 = *(a1 + 736);
      v46 = i;
      if (v45)
      {
        if (v45 <= i)
        {
LABEL_85:
          abort();
        }

        v46 = *(*(a1 + 728) + i);
      }

      v47 = CBB_len(&v78);
      v48 = &bssl::kExtensions[20 * v46];
      if (!(*(v48 + 1))(a1, &v78, &v78, a5))
      {
        ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4248);
        ERR_add_error_dataf("extension %u", *v48);
        return 0;
      }

      v49 = CBB_len(&v78);
      if (v49 != v47)
      {
        *(a1 + 376) |= 1 << v46;
      }
    }

    v50 = v49 - v47 == 4;
    if ((*(*(v41 + 120) + 856) & 0x20) != 0)
    {
      v56 = bssl::ssl_get_grease_value(a1, 3u);
      v50 = 0;
      v38 = 0;
      v52 = v68;
      v51 = v70;
      if (!bssl::add_padding_extension(&v78, v56, 1uLL))
      {
        return v38;
      }
    }

    else
    {
      v52 = v68;
      v51 = v70;
    }

    v57 = *a1;
    if (bssl::should_offer_psk(a1, a5))
    {
      digest = bssl::ssl_session_get_digest(*(v57 + 104), v58);
      v60 = EVP_MD_size(digest) + *(*(v57 + 104) + 240) + 15;
    }

    else
    {
      v60 = 0;
    }

    if (SSL_is_dtls(v41) || *(v41 + 168) || (*(*(v41 + 48) + 222) & 0x1000) != 0)
    {
LABEL_76:
      v66 = CBB_len(&v78);
      if (bssl::ext_pre_shared_key_add_clienthello(a1, &v78, v72, a5))
      {
        if (v60 != CBB_len(&v78) - v66)
        {
          bssl::ssl_add_clienthello_tlsext();
        }

        if (!CBB_len(&v78))
        {
          CBB_discard_child(v51, v67);
        }

        return CBB_flush(v51) != 0;
      }

      v54 = 4322;
      goto LABEL_55;
    }

    v61 = v52 + v60 + CBB_len(&v78);
    v62 = v61 + 6;
    v63 = v60 == 0;
    v64 = v61 + 11;
    v65 = v50 & v63;
    if (!v50 || !v63)
    {
      v64 = v62;
    }

    if ((v64 & 0xFFFFFFFFFFFFFF00) == 0x100)
    {
      if (v62 > 0x1FB)
      {
        v65 = 1;
        goto LABEL_75;
      }

      v65 = 508 - v62;
    }

    if (!v65)
    {
      goto LABEL_76;
    }

LABEL_75:
    if (!bssl::add_padding_extension(&v78, 0x15u, v65))
    {
      return 0;
    }

    goto LABEL_76;
  }

  v10 = *a1;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79 = v11;
  v80 = v11;
  v78 = v11;
  CBB_zero(&v78);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v77[1] = v12;
  v77[2] = v12;
  v77[0] = v12;
  CBB_zero(v77);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76[1] = v13;
  v76[2] = v13;
  v75[2] = v13;
  v76[0] = v13;
  v75[0] = v13;
  v75[1] = v13;
  if (CBB_add_u16_length_prefixed(a2, v76) && CBB_add_u16_length_prefixed(a3, v75) && CBB_init(&v78, 0x40uLL) && CBB_init(v77, 0x40uLL))
  {
    *(a1 + 380) = 0;
    if ((*(*(v10 + 120) + 856) & 0x20) == 0 || (v14 = bssl::ssl_get_grease_value(a1, 2u), bssl::add_padding_extension(&v78, v14, 0)) && CBB_add_u16(v77, v14))
    {
      v69 = v10;
      v71 = a4;
      v16 = a2;
      for (j = 0; j != 30; ++j)
      {
        v18 = *(a1 + 736);
        v19 = j;
        if (v18)
        {
          if (v18 <= j)
          {
            goto LABEL_85;
          }

          v19 = *(*(a1 + 728) + j);
        }

        v20 = CBB_len(v76);
        v21 = CBB_len(&v78);
        v22 = &bssl::kExtensions[20 * v19];
        if (((*(v22 + 1))(a1, v76, &v78, 1) & 1) == 0)
        {
          ERR_put_error(16, 0, 147, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4141);
          ERR_add_error_dataf("extension %u", *v22);
          goto LABEL_52;
        }

        v23 = CBB_len(v76);
        v24 = CBB_len(&v78);
        if (v23 != v20 && v24 != v21)
        {
          __assert_rtn("ssl_add_clienthello_tlsext_inner", "extensions.cc", 4150, "bytes_written == 0 || bytes_written_compressed == 0");
        }

        if (v23 != v20 || v24 != v21)
        {
          *(a1 + 380) |= 1 << v19;
        }

        if (v24 != v21 && !CBB_add_u16(v77, *v22))
        {
          goto LABEL_52;
        }
      }

      v25 = v16;
      if ((*(*(v69 + 120) + 856) & 0x20) == 0 || (v26 = bssl::ssl_get_grease_value(a1, 3u), bssl::add_padding_extension(&v78, v26, 1uLL)) && CBB_add_u16(v77, v26))
      {
        v27 = CBB_data(v76, v15);
        v28 = CBB_len(v76);
        if (CBB_add_bytes(v75, v27, v28))
        {
          if (!CBB_len(&v78) || (*&v30 = 0xAAAAAAAAAAAAAAAALL, *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL, v74[1] = v30, v74[2] = v30, v73[2] = v30, v74[0] = v30, v73[0] = v30, v73[1] = v30, v31 = CBB_data(&v78, v29), v32 = CBB_len(&v78), CBB_add_bytes(v76, v31, v32)) && CBB_add_u16(v75, 0xFD00u) && CBB_add_u16_length_prefixed(v75, v74) && CBB_add_u8_length_prefixed(v74, v73) && (v33 = CBB_data(v77, v15), v34 = CBB_len(v77), CBB_add_bytes(v73, v33, v34)) && CBB_flush(v75))
          {
            v35 = CBB_len(v76);
            if (bssl::ext_pre_shared_key_add_clienthello(a1, v76, v71, 1))
            {
              v36 = CBB_data(v76, v15);
              v37 = CBB_len(v76);
              if (CBB_add_bytes(v75, v36 + v35, v37 - v35))
              {
                if (CBB_flush(v25))
                {
                  v38 = CBB_flush(a3) != 0;
                  goto LABEL_53;
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
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4117);
  }

LABEL_52:
  v38 = 0;
LABEL_53:
  CBB_cleanup(v77, v15);
  CBB_cleanup(&v78, v53);
  return v38;
}

void sub_1A9019AC4(_Unwind_Exception *a1, uint64_t a2)
{
  CBB_cleanup(v2 - 192, a2);
  CBB_cleanup(v2 - 144, v4);
  _Unwind_Resume(a1);
}

uint64_t bssl::ext_ems_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && *(a1 + 28) <= 0x303u)
  {
    result = CBB_add_u16(a2, 0x17u);
    if (result)
    {
      return CBB_add_u16(a2, 0) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_ri_add_clienthello(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && a1[14] <= 0x303u)
  {
    v6 = *a1;
    if ((*(*(*a1 + 48) + 455) == 0) != ((*(*(*a1 + 48) + 222) & 0x10) == 0))
    {
      bssl::ext_ri_add_clienthello();
    }

    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[1] = v8;
    v10[2] = v8;
    v9[2] = v8;
    v10[0] = v8;
    v9[0] = v8;
    v9[1] = v8;
    result = CBB_add_u16(a2, 0xFF01u);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, v10);
      if (result)
      {
        result = CBB_add_u8_length_prefixed(v10, v9);
        if (result)
        {
          result = CBB_add_bytes(v9, (*(v6 + 48) + 443), *(*(v6 + 48) + 455));
          if (result)
          {
            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ec_point_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 1 || *(a1 + 28) > 0x303u)
  {
    return 1;
  }

  else
  {
    return bssl::ext_ec_point_add_extension(a2);
  }
}

uint64_t bssl::ext_alpn_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if (!*(a1[1] + 144))
  {
    if (*(v3 + 168))
    {
      ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1381);
      return 0;
    }

    return 1;
  }

  if ((*(*(v3 + 48) + 222) & 0x10) != 0)
  {
    return 1;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v6;
  v9[2] = v6;
  v8[2] = v6;
  v9[0] = v6;
  v8[0] = v6;
  v8[1] = v6;
  result = CBB_add_u16(a3, 0x10u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v9);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v9, v8);
      if (result)
      {
        result = CBB_add_bytes(v8, *(a1[1] + 136), *(a1[1] + 144));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_setup_pake_shares(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  OPENSSL_free(*(this + 208));
  *(this + 104) = 0u;
  if (*(this + 15) >= 0x304u)
  {
    v31 = 0;
    v32 = 0;
    v4 = *(*(*this + 8) + 32);
    v5 = *(v4 + 8);
    v6 = ssl_credential_st::IsComplete(*(v4 + 24));
    v7 = v6;
    if (bssl::Array<ssl_credential_st *>::InitUninitialized(&v31, v5 + v6))
    {
      v8 = *(v4 + 8);
      if (v8)
      {
        v9 = 0;
        v10 = v32;
        while (v10 != v9)
        {
          v31[v9] = *(*v4 + 8 * v9);
          if (v8 == ++v9)
          {
            goto LABEL_8;
          }
        }

LABEL_32:
        abort();
      }

LABEL_8:
      if (v7)
      {
        if (v32 <= v5)
        {
          goto LABEL_32;
        }

        v31[v5] = *(v4 + 24);
      }

      if (!v32)
      {
LABEL_15:
        v3 = 1;
LABEL_28:
        OPENSSL_free(v31);
        return v3;
      }

      v11 = v31;
      v12 = 8 * v32;
      while (1)
      {
        v13 = *v11;
        ERR_clear_error();
        if (*(v13 + 4) == 3)
        {
          break;
        }

        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_15;
        }
      }

      v14 = SPAKE2PLUS_CTX_new_prover(*(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160));
      std::unique_ptr<spake2plus_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 210, v14);
      v34 = -86;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33[2] = v15;
      v33[3] = v15;
      v33[0] = v15;
      v33[1] = v15;
      v30 = 65;
      if (SPAKE2PLUS_generate_prover_share(*(this + 210), v33, &v30, 0x41uLL))
      {
        v29 = 32150;
        v28 = 0xAAAAAAAAAAAAAAAALL;
        v16 = *(v13 + 112);
        *&v27[0] = *(v13 + 104);
        *&v26[0] = v16;
        v17 = *(v13 + 128);
        *&v25[0] = *(v13 + 120);
        *&v24[0] = v17;
        v18 = bssl::New<bssl::SSLPAKEShare,unsigned short &,unsigned char *,unsigned long,unsigned char *,unsigned long,unsigned char (&)[65],unsigned long &>(&v29, v27, v26, v25, v24, v33, &v30);
        v28 = 0;
        std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 207, v18);
        SSL_CREDENTIAL_up_ref(v13);
        std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 190, v13);
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27[1] = v19;
        v27[2] = v19;
        v27[0] = v19;
        CBB_zero(v27);
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v26[1] = v20;
        v26[2] = v20;
        v25[2] = v20;
        v26[0] = v20;
        v25[0] = v20;
        v25[1] = v20;
        v24[1] = v20;
        v24[2] = v20;
        v23[2] = v20;
        v24[0] = v20;
        v23[0] = v20;
        v23[1] = v20;
        v3 = CBB_init(v27, 0x40uLL) && CBB_add_u16_length_prefixed(v27, v25) && CBB_add_bytes(v25, *(v13 + 104), *(v13 + 112)) && CBB_add_u16_length_prefixed(v27, v24) && CBB_add_bytes(v24, *(v13 + 120), *(v13 + 128)) && CBB_add_u16_length_prefixed(v27, v26) && CBB_add_u16(v26, v29) && CBB_add_u16_length_prefixed(v26, v23) && CBB_add_bytes(v23, v33, 0x41uLL) && bssl::CBBFinishArray(v27, this + 1664);
        CBB_cleanup(v27, v21);
        std::unique_ptr<bssl::SSLPAKEShare,bssl::internal::Deleter>::reset[abi:ne200100](&v28, 0);
        goto LABEL_28;
      }
    }

    v3 = 0;
    goto LABEL_28;
  }

  return 1;
}

void sub_1A901A06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *ssl_credential_st::IsComplete(ssl_credential_st *this)
{
  v2 = *(this + 1);
  if ((v2 & 0xFFFFFFFE) != 2)
  {
    result = EVP_MD_CTX_md(*(this + 6));
    if (!result)
    {
      return result;
    }

    result = OPENSSL_sk_value(*(this + 6), 0);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 1);
  }

  return (v2 == 3 || *(this + 1) && (*(this + 2) || *(this + 3)) && (v2 != 1 || *(this + 7)));
}

uint64_t bssl::Array<ssl_credential_st *>::InitUninitialized(uint64_t a1, unint64_t a2)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (!a2)
  {
    return 1;
  }

  if (a2 >> 61)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/internal.h", 382);
    return 0;
  }

  result = OPENSSL_malloc(8 * a2);
  *a1 = result;
  if (result)
  {
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

uint64_t bssl::ssl_setup_extension_permutation(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(*(this + 1) + 309) & 0x400) == 0)
  {
    return 1;
  }

  v30 = -1431655766;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v4;
  v29 = v4;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  *buf = v4;
  if (RAND_bytes(buf, 116) && (OPENSSL_free(0), v5 = OPENSSL_malloc(0x1EuLL), (v6 = v5) != 0))
  {
    v7 = 0;
    v8 = xmmword_1A90AF6E0;
    v9 = xmmword_1A90AF6F0;
    v10 = xmmword_1A90AF700;
    v11 = xmmword_1A90AF710;
    v12 = xmmword_1A90AF720;
    v13 = xmmword_1A90AF730;
    v14 = xmmword_1A90AF740;
    v15 = xmmword_1A90A98B0;
    v16 = vdupq_n_s64(0x10uLL);
    do
    {
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), v15)), *v8.i8), *v8.i8).u8[0])
      {
        LOBYTE(v5[v7]) = v7 * 8;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v15)), *&v8), *&v8).i8[1])
      {
        BYTE1(v5[v7]) = (v7 * 8) | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v14))), *&v8).i8[2])
      {
        BYTE2(v5[v7]) = (v7 * 8) | 2;
        BYTE3(v5[v7]) = (v7 * 8) | 3;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v13)), *&v8)).i32[1])
      {
        BYTE4(v5[v7]) = (v7 * 8) | 4;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v13)), *&v8)).i8[5])
      {
        BYTE5(v5[v7]) = (v7 * 8) | 5;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v12)))).i8[6])
      {
        BYTE6(v5[v7]) = (v7 * 8) | 6;
        HIBYTE(v5[v7]) = (v7 * 8) | 7;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), v11)), *v8.i8), *v8.i8).u8[0])
      {
        LOBYTE(v5[v7 + 1]) = (v7 * 8) | 8;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v11)), *&v8), *&v8).i8[1])
      {
        BYTE1(v5[v7 + 1]) = (v7 * 8) | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v10))), *&v8).i8[2])
      {
        BYTE2(v5[v7 + 1]) = (v7 * 8) | 0xA;
        BYTE3(v5[v7 + 1]) = (v7 * 8) | 0xB;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v9)), *&v8)).i32[1])
      {
        BYTE4(v5[v7 + 1]) = (v7 * 8) | 0xC;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v9)), *&v8)).i8[5])
      {
        BYTE5(v5[v7 + 1]) = (v7 * 8) | 0xD;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v8)))).i8[6])
      {
        BYTE6(v5[v7 + 1]) = (v7 * 8) | 0xE;
        HIBYTE(v5[v7 + 1]) = (v7 * 8) | 0xF;
      }

      v13 = vaddq_s64(v13, v16);
      v7 += 2;
      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v12 = vaddq_s64(v12, v16);
      v11 = vaddq_s64(v11, v16);
      v10 = vaddq_s64(v10, v16);
      v9 = vaddq_s64(v9, v16);
      v8 = vaddq_s64(v8, v16);
    }

    while (v7 != 4);
    v17 = &v30;
    v18 = 29;
    do
    {
      v19 = *v17--;
      v20 = v19 % (v18 + 1);
      v21 = *(v5 + v18);
      *(v5 + v18) = *(v5 + v20);
      *(v5 + v20) = v21;
      --v18;
    }

    while (v18);
    OPENSSL_free(*(this + 91));
    *(this + 91) = v6;
    *(this + 92) = 30;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  OPENSSL_free(0);
  return v2;
}

void sub_1A901A600(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bssl::ssl_add_client_hello(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = v4;
  v19[2] = v4;
  v19[0] = v4;
  CBB_zero(v19);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v5;
  v18[2] = v5;
  v18[0] = v5;
  v6 = *(this + 195);
  v17 = -86;
  v15 = 0;
  v16 = 0;
  if (!(*(*v3 + 88))(v3, v19, v18, 1))
  {
    goto LABEL_9;
  }

  v7 = (2 * (v6 != 0));
  if (!bssl::ssl_write_client_hello_without_extensions(this, v18, v7, 0))
  {
    goto LABEL_9;
  }

  v8 = CBB_len(v18);
  if (!bssl::ssl_add_clienthello_tlsext(this, v18, 0, &v17, v7, v8) || ((*(*v3 + 96))(v3, v19, &v15) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v17 != 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    __assert_rtn("ssl_add_client_hello", "handshake_client.cc", 405, "type != ssl_client_hello_outer");
  }

  if (bssl::tls13_write_psk_binder(this, (this + 424), v15, v16, 0))
  {
LABEL_8:
    v9 = *(*v3 + 104);
    OPENSSL_free(0);
    v13 = v15;
    v14 = v16;
    v15 = 0;
    v16 = 0;
    v10 = v9(v3, &v13);
    OPENSSL_free(v13);
    v13 = 0;
    v14 = 0;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  OPENSSL_free(v15);
  CBB_cleanup(v19, v11);
  return v10;
}

void sub_1A901A7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  bssl::Array<unsigned char>::~Array(va);
  bssl::Array<unsigned char>::~Array(va1);
  CBB_cleanup(v3 - 80, v5);
  _Unwind_Resume(a1);
}

uint64_t CBB_add_zeros(uint64_t a1, size_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = CBB_add_space(a1, &v4, a2);
  if (result)
  {
    if (a2)
    {
      bzero(v4, a2);
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ext_sni_add_clienthello(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    v5 = a1[195];
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = *(*a1 + 160);
    if (!v6)
    {
      return 1;
    }

    v7 = strlen(*(*a1 + 160));
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = v8;
  v12[2] = v8;
  v12[0] = v8;
  v11[1] = v8;
  v11[2] = v8;
  v10[2] = v8;
  v11[0] = v8;
  v10[0] = v8;
  v10[1] = v8;
  result = CBB_add_u16(a2, 0);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v12);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v12, v11);
      if (result)
      {
        result = CBB_add_u8(v11, 0);
        if (result)
        {
          result = CBB_add_u16_length_prefixed(v11, v10);
          if (result)
          {
            result = CBB_add_bytes(v10, v6, v7);
            if (result)
            {
              return CBB_flush(a2) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ech_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    result = CBB_add_u16(a2, 0xFE0Du);
    if (result)
    {
      result = CBB_add_u16(a2, 1u);
      if (result)
      {
        v6 = CBB_add_u8(a2, 1u);
        return v6 != 0;
      }
    }
  }

  else if (*(a1 + 592))
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = v8;
    v9[2] = v8;
    v9[0] = v8;
    result = CBB_add_u16(a2, 0xFE0Du);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(a2, v9);
      if (result)
      {
        result = CBB_add_u8(v9, 0);
        if (result)
        {
          result = CBB_add_bytes(v9, *(a1 + 584), *(a1 + 592));
          if (result)
          {
            v6 = CBB_flush(a2);
            return v6 != 0;
          }
        }
      }
    }
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t bssl::ext_supported_groups_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a1[210])
  {
    return 1;
  }

  v19 = v3;
  v20 = v4;
  v8 = *a1;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v9;
  v18[2] = v9;
  v17[2] = v9;
  v18[0] = v9;
  v17[0] = v9;
  v17[1] = v9;
  result = CBB_add_u16(a3, 0xAu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v18);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v18, v17);
      if (result)
      {
        if ((*(*(v8 + 120) + 856) & 0x20) == 0 || (grease_value = bssl::ssl_get_grease_value(a1, 1u), result = CBB_add_u16(v17, grease_value), result))
        {
          v11 = a1[1];
          v12 = *(v11 + 120);
          if (v12)
          {
            v13 = *(v11 + 112);
          }

          else
          {
            v13 = &bssl::kDefaultGroups;
            v12 = 4;
          }

          v14 = 2 * v12;
          while (1)
          {
            v15 = *v13;
            v16 = v15 == 25497 || v15 == 4588;
            if (!v16 || *(a1 + 15) >= 0x304u)
            {
              result = CBB_add_u16(v17, v15);
              if (!result)
              {
                break;
              }
            }

            ++v13;
            v14 -= 2;
            if (!v14)
            {
              return CBB_flush(a3) != 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ticket_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = 1;
  if (a4 != 1 && *(a1 + 28) <= 0x303u)
  {
    v17 = v4;
    v18 = v5;
    v9 = *a1;
    if ((SSL_get_options(*a1) & 0x4000) != 0)
    {
      return 1;
    }

    else
    {
      if ((*(*(v9 + 48) + 222) & 0x10) == 0 && (v11 = *(v9 + 104)) != 0 && *(v11 + 30) && bssl::ssl_session_protocol_version(v11, v10) <= 0x303)
      {
        v12 = *(v9 + 104);
        v14 = *(v12 + 232);
        v13 = *(v12 + 240);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16[1] = v15;
      v16[2] = v15;
      v16[0] = v15;
      result = CBB_add_u16(a2, 0x23u);
      if (result)
      {
        result = CBB_add_u16_length_prefixed(a2, v16);
        if (result)
        {
          result = CBB_add_bytes(v16, v14, v13);
          if (result)
          {
            return CBB_flush(a2) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_ocsp_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(*(a1 + 8) + 309) & 4) == 0)
  {
    return 1;
  }

  v9 = v3;
  v10 = v4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v7;
  v8[2] = v7;
  v8[0] = v7;
  result = CBB_add_u16(a3, 5u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      result = CBB_add_u8(v8, 1u);
      if (result)
      {
        result = CBB_add_u16(v8, 0);
        if (result)
        {
          result = CBB_add_u16(v8, 0);
          if (result)
          {
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL bssl::add_padding_extension(uint64_t *a1, unsigned int a2, size_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v5;
  v7[2] = v5;
  v7[0] = v5;
  if (CBB_add_u16(a1, a2) && CBB_add_u16_length_prefixed(a1, v7) && CBB_add_zeros(v7, a3))
  {
    return CBB_flush(a1) != 0;
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4096);
  return 0;
}

uint64_t bssl::ext_sigalgs_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x303u)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  if (*(a1 + 1680))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v8;
  v10[2] = v8;
  v9[2] = v8;
  v10[0] = v8;
  v9[0] = v8;
  v9[1] = v8;
  result = CBB_add_u16(a3, 0xDu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v10, v9);
      if (result)
      {
        result = bssl::tls12_add_verify_sigalgs(a1, v9);
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

BOOL bssl::tls12_add_verify_sigalgs(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 272);
  if (v4)
  {
    v5 = *(v3 + 264);
  }

  else
  {
    v5 = &bssl::kVerifySignatureAlgorithms;
    v4 = 10;
  }

  v6 = 2 * v4 - 2;
  do
  {
    v7 = *v5++;
    v8 = CBB_add_u16(a2, v7);
    if (v8)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    v6 -= 2;
  }

  while (!v9);
  return v8 != 0;
}

uint64_t bssl::ext_sct_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 8) + 309) & 2) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a3, 0x12u);
  if (result)
  {
    return CBB_add_u16(a3, 0) != 0;
  }

  return result;
}

uint64_t bssl::ext_npn_add_clienthello(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *a1;
  if (!*(*(v5 + 120) + 616) || (*(*(v5 + 48) + 222) & 0x10) != 0 || SSL_is_dtls(v5))
  {
    return 1;
  }

  result = 1;
  if (a4 != 1 && *(a1 + 14) <= 0x303u)
  {
    result = CBB_add_u16(a2, 0x3374u);
    if (result)
    {
      return CBB_add_u16(a2, 0) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_channel_id_add_clienthello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!*(*(a1 + 8) + 128))
  {
    return 1;
  }

  is_dtls = SSL_is_dtls(*a1);
  result = 1;
  if (a4 != 2 && !is_dtls)
  {
    result = CBB_add_u16(a2, 0x7550u);
    if (result)
    {
      return CBB_add_u16(a2, 0) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_key_share_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u || *(a1 + 1680))
  {
    return 1;
  }

  if (!*(a1 + 640))
  {
    bssl::ext_key_share_add_clienthello();
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v6;
  v8[2] = v6;
  v7[2] = v6;
  v8[0] = v6;
  v7[0] = v6;
  v7[1] = v6;
  result = CBB_add_u16(a3, 0x33u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v8, v7);
      if (result)
      {
        result = CBB_add_bytes(v7, *(a1 + 632), *(a1 + 640));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_early_data_add_clienthello(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*a1 + 48);
  if ((*(v3 + 222) & 0x1000) != 0)
  {
    if (!*(v3 + 256))
    {
      bssl::ext_early_data_add_clienthello();
    }

    return 1;
  }

  if ((a1[1601] & 8) == 0)
  {
    return 1;
  }

  result = CBB_add_u16(a3, 0x2Au);
  if (result)
  {
    result = CBB_add_u16(a3, 0);
    if (result)
    {
      return CBB_flush(a3) != 0;
    }
  }

  return result;
}

uint64_t bssl::ext_cookie_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 560))
  {
    return 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v5;
  v8[2] = v5;
  v7[2] = v5;
  v8[0] = v5;
  v7[0] = v5;
  v7[1] = v5;
  result = CBB_add_u16(a3, 0x2Cu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v8);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v8, v7);
      if (result)
      {
        result = CBB_add_bytes(v7, *(a1 + 552), *(a1 + 560));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_quic_transport_params_add_clienthello_impl(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = *(*a1 + 168);
  if (!*(v3 + 240))
  {
    if (!v4)
    {
      return 1;
    }

LABEL_13:
    ERR_put_error(16, 0, 305, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2679);
    return 0;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  if (*(a1 + 28) <= 0x303u)
  {
    bssl::ext_quic_transport_params_add_clienthello_impl();
  }

  v6 = *(v3 + 309) & 0x200;
  if (a3 != v6 >> 9)
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v8;
  v11[2] = v8;
  v11[0] = v8;
  if (v6)
  {
    v9 = 65445;
  }

  else
  {
    v9 = 57;
  }

  result = CBB_add_u16(a2, v9);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v11);
    if (result)
    {
      result = CBB_add_bytes(v11, *(*(a1 + 8) + 232), *(*(a1 + 8) + 240));
      if (result)
      {
        return CBB_flush(a2) != 0;
      }
    }
  }

  return result;
}

uint64_t bssl::cert_compression_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*a1 + 120);
  v4 = *(v3 + 736);
  if (!v4)
  {
    return 1;
  }

  v6 = *(v3 + 728);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = v7;
  v13[2] = v7;
  v8 = v6 + 24 * v4;
  v12[2] = v7;
  v13[0] = v7;
  v12[0] = v7;
  v12[1] = v7;
  v9 = 1;
  while (2)
  {
    for (v6 += 24; !*(v6 - 16); v6 += 24)
    {
      if (v6 == v8)
      {
        if (v9)
        {
          return 1;
        }

        return CBB_flush(a3) != 0;
      }
    }

    if ((v9 & 1) == 0 || (result = CBB_add_u16(a3, 0x1Bu), result) && (result = CBB_add_u16_length_prefixed(a3, v13), result) && (result = CBB_add_u8_length_prefixed(v13, v12), result))
    {
      result = CBB_add_u16(v12, *(v6 - 8));
      if (result)
      {
        v9 = 0;
        if (v6 != v8)
        {
          continue;
        }

        return CBB_flush(a3) != 0;
      }
    }

    break;
  }

  return result;
}

uint64_t bssl::ext_alps_add_clienthello_impl(uint64_t a1, uint64_t *a2, int a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v19 = v3;
  v20 = v4;
  v7 = *(a1 + 8);
  if (!*(v7 + 144))
  {
    return 1;
  }

  if (!*(v7 + 160))
  {
    return 1;
  }

  if ((*(*(*a1 + 48) + 222) & 0x10) != 0)
  {
    return 1;
  }

  v8 = *(v7 + 309) & 0x2000;
  if (a3 != v8 >> 13)
  {
    return 1;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v10;
  v18[2] = v10;
  v18[0] = v10;
  v17[1] = v10;
  v17[2] = v10;
  v16[2] = v10;
  v17[0] = v10;
  if (v8)
  {
    v11 = 17613;
  }

  else
  {
    v11 = 17513;
  }

  v16[0] = v10;
  v16[1] = v10;
  result = CBB_add_u16(a2, v11);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v18);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v18, v17);
      if (result)
      {
        v12 = *(a1 + 8);
        v13 = *(v12 + 160);
        if (v13)
        {
          v14 = *(v12 + 152);
          v15 = v14 + 32 * v13;
          while (1)
          {
            result = CBB_add_u8_length_prefixed(v17, v16);
            if (!result)
            {
              break;
            }

            result = CBB_add_bytes(v16, *v14, *(v14 + 8));
            if (!result)
            {
              break;
            }

            v14 += 32;
            if (v14 == v15)
            {
              return CBB_flush(a2) != 0;
            }
          }
        }

        else
        {
          return CBB_flush(a2) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_client_certificate_type_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  if (!*(*(a1 + 8) + 208))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v8;
  v10[2] = v8;
  v9[2] = v8;
  v10[0] = v8;
  v9[0] = v8;
  v9[1] = v8;
  result = CBB_add_u16(a3, 0x13u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v10, v9);
      if (result)
      {
        result = CBB_add_bytes(v9, *(*(a1 + 8) + 200), *(*(a1 + 8) + 208));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_server_certificate_type_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  if (!*(*(a1 + 8) + 184))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v8;
  v10[2] = v8;
  v9[2] = v8;
  v10[0] = v8;
  v9[0] = v8;
  v9[1] = v8;
  result = CBB_add_u16(a3, 0x14u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v10);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v10, v9);
      if (result)
      {
        result = CBB_add_bytes(v9, *(*(a1 + 8) + 176), *(*(a1 + 8) + 184));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_pake_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 1672))
  {
    return 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v5;
  v7[2] = v5;
  v7[0] = v5;
  result = CBB_add_u16(a3, 0x8A3Bu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v7);
    if (result)
    {
      result = CBB_add_bytes(v7, *(a1 + 1664), *(a1 + 1672));
      if (result)
      {
        return CBB_flush(a3) != 0;
      }
    }
  }

  return result;
}

bssl *bssl::should_offer_psk(uint64_t *a1, const ssl_session_st *a2)
{
  if (*(a1 + 15) < 0x304u)
  {
    return 0;
  }

  v4 = *a1;
  result = *(*a1 + 104);
  if (result)
  {
    v5 = a2;
    v6 = bssl::ssl_session_protocol_version(result, a2);
    result = 0;
    if (v5 != 2 && v6 >= 0x304)
    {
      return ((*(*(v4 + 48) + 222) & 0x1000) == 0 || *(*(*(v4 + 104) + 200) + 36) == *(a1[196] + 36));
    }
  }

  return result;
}

uint64_t bssl::ext_pre_shared_key_add_clienthello(uint64_t *a1, uint64_t *a2, _BYTE *a3, const ssl_session_st *a4)
{
  v6 = *a1;
  *a3 = 0;
  if (!bssl::should_offer_psk(a1, a4))
  {
    return 1;
  }

  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_get_current_time(v6, v22);
  v7 = v22[0];
  v8 = *(v6 + 104);
  v9 = *(v8 + 192);
  v10 = *(v8 + 376);
  v11 = *(v8 + 440);
  digest = bssl::ssl_session_get_digest(v8, v12);
  v14 = EVP_MD_size(digest);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = v15;
  v21[2] = v15;
  v21[0] = v15;
  v20[1] = v15;
  v20[2] = v15;
  v19[2] = v15;
  v20[0] = v15;
  v19[0] = v15;
  v19[1] = v15;
  v18[1] = v15;
  v18[2] = v15;
  v17[2] = v15;
  v18[0] = v15;
  v17[0] = v15;
  v17[1] = v15;
  result = CBB_add_u16(a2, 0x29u);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a2, v21);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v21, v20);
      if (result)
      {
        result = CBB_add_u16_length_prefixed(v20, v19);
        if (result)
        {
          result = CBB_add_bytes(v19, *(*(v6 + 104) + 232), *(*(v6 + 104) + 240));
          if (result)
          {
            result = CBB_add_u32(v20, (v10 + 1000 * (v7 - v9)) & ~(v11 >> 31));
            if (result)
            {
              result = CBB_add_u16_length_prefixed(v21, v18);
              if (result)
              {
                result = CBB_add_u8_length_prefixed(v18, v17);
                if (result)
                {
                  result = CBB_add_zeros(v17, v14);
                  if (result)
                  {
                    *a3 = 1;
                    return CBB_flush(a2) != 0;
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

uint64_t SSL_set_quic_use_legacy_codepoint(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 309) = *(v2 + 309) & 0xFDFF | ((a2 != 0) << 9);
  }

  return result;
}

BOOL boringssl_context_set_quic_transport_parameters(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_22;
  }

  v5 = 0;
  if (!v3)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_23;
  }

  if (!*(v6 + 392))
  {
    goto LABEL_22;
  }

  size = dispatch_data_get_size(v3);
  buffer_from_dispatch_data = boringssl_helper_create_buffer_from_dispatch_data(v4);
  if (!buffer_from_dispatch_data)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 16));
    if (!WeakRetained || (v19 = WeakRetained, v20 = objc_loadWeakRetained((v6 + 16)), v21 = v20[435], v20, v19, (v21 & 1) == 0))
    {
      v22 = objc_loadWeakRetained((v6 + 16));
      if (v22)
      {
        v23 = objc_loadWeakRetained((v6 + 16));
        v24 = (v23[435] & 1) == 0;
      }

      else
      {
        v24 = 1;
      }

      v5 = 0;
      if (!v24 || !g_boringssl_log)
      {
        goto LABEL_23;
      }

      v25 = g_boringssl_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        boringssl_context_set_quic_transport_parameters_cold_2();
      }
    }

LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v9 = buffer_from_dispatch_data;
  v10 = SSL_set_quic_transport_params(*(v6 + 392), buffer_from_dispatch_data, size);
  v5 = v10 == 1;
  if (v10 != 1)
  {
    v11 = objc_loadWeakRetained((v6 + 16));
    if (!v11 || (v12 = v11, v13 = objc_loadWeakRetained((v6 + 16)), v14 = v13[435], v13, v12, (v14 & 1) == 0))
    {
      v15 = objc_loadWeakRetained((v6 + 16));
      if (v15)
      {
        v16 = objc_loadWeakRetained((v6 + 16));
        v17 = (v16[435] & 1) == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        if (g_boringssl_log)
        {
          v27 = g_boringssl_log;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_quic_transport_parameters_cold_1();
          }
        }
      }
    }
  }

  free(v9);
LABEL_23:

  return v5;
}

void *boringssl_helper_create_buffer_from_dispatch_data(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  size = dispatch_data_get_size(v1);
  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v4 && boringssl_helper_dispatch_data_copyout(v2, v4, size) != size)
  {
    free(v4);
LABEL_5:
    v4 = 0;
  }

  return v4;
}

uint64_t boringssl_helper_dispatch_data_copyout(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = a2;
  if (a1)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __boringssl_helper_dispatch_data_copyout_block_invoke;
    applier[3] = &unk_1E785F790;
    applier[5] = v6;
    applier[6] = a3;
    applier[4] = &v7;
    dispatch_data_apply(a1, applier);
    v3 = v8[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

BOOL __boringssl_helper_dispatch_data_copyout_block_invoke(void *a1, int a2, int a3, void *__src, size_t a5)
{
  v5 = a1[6];
  v6 = *(*(a1[4] + 8) + 24);
  if (v5 - v6 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = v5 - v6;
  }

  if (v7)
  {
    memcpy((*(*(a1[5] + 8) + 24) + v6), __src, v7);
    *(*(a1[4] + 8) + 24) += v7;
    v6 = *(*(a1[4] + 8) + 24);
    v5 = a1[6];
  }

  return v6 < v5;
}

uint64_t SSL_set_quic_transport_params(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a3;
  result = bssl::Array<unsigned char>::InitUninitialized(v3 + 232, a3);
  if (result)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(v3 + 232);
    do
    {
      v9 = *a2++;
      *v8++ = v9;
      --v4;
    }

    while (v4);
  }

  return result;
}

void __check_and_init_restricted_mode_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberIntType, &boringssl_config_restricted_mode_status);

    CFRelease(v1);
  }
}

uint64_t thread_local_init()
{
  result = pthread_key_create(&g_thread_local_key, thread_local_destructor);
  g_thread_local_key_created = result == 0;
  return result;
}

uint64_t SSL_set_quic_method(uint64_t a1, uint64_t a2)
{
  if (**a1)
  {
    return 0;
  }

  *(a1 + 168) = a2;
  return 1;
}

uint64_t bssl::ext_srtp_add_clienthello(unsigned __int8 ***a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  srtp_profiles = SSL_get_srtp_profiles(*a1, a2);
  if (!srtp_profiles)
  {
    return 1;
  }

  v6 = srtp_profiles;
  if (!EVP_MD_CTX_md(srtp_profiles) || !SSL_is_dtls(v4))
  {
    return 1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = v7;
  v14[2] = v7;
  v13[2] = v7;
  v14[0] = v7;
  v13[0] = v7;
  v13[1] = v7;
  result = CBB_add_u16(a3, 0xEu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v14);
    if (result)
    {
      result = CBB_add_u16_length_prefixed(v14, v13);
      if (result)
      {
        v9 = EVP_MD_CTX_md(v6);
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          while (1)
          {
            v12 = OPENSSL_sk_value(v6, v11);
            result = CBB_add_u16(v13, *(v12 + 4));
            if (!result)
            {
              break;
            }

            if (v10 == ++v11)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          result = CBB_add_u8(v14, 0);
          if (result)
          {
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_psk_key_exchange_modes_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u || *(a1 + 1680))
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v7;
  v9[2] = v7;
  v8[2] = v7;
  v9[0] = v7;
  v8[0] = v7;
  v8[1] = v7;
  result = CBB_add_u16(a3, 0x2Du);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v9);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v9, v8);
      if (result)
      {
        result = CBB_add_u8(v8, 1u);
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_supported_versions_add_clienthello(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v16 = v4;
  v17 = v5;
  v9 = *a1;
  if (*(a1 + 28) <= 0x303u)
  {
    a3 = a2;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = v11;
  v15[2] = v11;
  v14[2] = v11;
  v15[0] = v11;
  v14[0] = v11;
  v14[1] = v11;
  result = CBB_add_u16(a3, 0x2Bu);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v15);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v15, v14);
      if (result)
      {
        if ((*(v9[15] + 428) & 0x20) == 0 || (grease_value = bssl::ssl_get_grease_value(a1, 4u), result = CBB_add_u16(v14, grease_value), result))
        {
          if (a4 == 1)
          {
            v13 = 772;
          }

          else
          {
            v13 = 0;
          }

          result = bssl::ssl_add_supported_versions(a1, v14, v13);
          if (result)
          {
            return CBB_flush(a3) != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_add_supported_versions(_BYTE ***a1, uint64_t a2, unsigned int a3)
{
  if (***a1)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (***a1)
  {
    v7 = &bssl::kDTLSVersions;
  }

  else
  {
    v7 = &bssl::kTLSVersions;
  }

  while (1)
  {
    v8 = *v7;
    v11 = -21846;
    if (bssl::ssl_supports_version(a1, v8))
    {
      if (bssl::ssl_protocol_version_from_wire(&v11, v8) && v11 >= a3)
      {
        result = CBB_add_u16(a2, v8);
        if (!result)
        {
          break;
        }
      }
    }

    ++v7;
    v6 -= 2;
    if (!v6)
    {
      return 1;
    }
  }

  return result;
}

uint64_t bssl::ext_ticket_request_add_clienthello(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  if (!*(*(a1 + 8) + 224))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v8;
  v9[2] = v8;
  v9[0] = v8;
  result = CBB_add_u16(a3, 0x3Au);
  if (result)
  {
    result = CBB_add_u16_length_prefixed(a3, v9);
    if (result)
    {
      result = CBB_add_u8(v9, *(*(a1 + 8) + 224));
      if (result)
      {
        result = CBB_add_u8(v9, *(*(a1 + 8) + 225));
        if (result)
        {
          return CBB_flush(a3) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ext_certificate_authorities_add_clienthello(uint64_t a1, const bssl::SSL_CONFIG *a2)
{
  if (!bssl::ssl_has_CA_names(*(a1 + 8), a2))
  {
    return 1;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_u16(a2, 0x2Fu) && CBB_add_u16_length_prefixed(a2, v6) && (bssl::ssl_add_CA_names(a1, v6) & 1) != 0)
  {
    result = CBB_flush(a2);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  return 0;
}

uint64_t SSL_get_srtp_profiles(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    SSL_get_srtp_profiles_cold_1();
  }

  v3 = *(v2 + 280);
  if (!v3)
  {
    return *(*(a1 + 120) + 720);
  }

  return v3;
}

const EVP_MD_CTX *bssl::ssl_has_CA_names(bssl *this, const bssl::SSL_CONFIG *a2)
{
  result = *(this + 13);
  if (result)
  {
    return (EVP_MD_CTX_md(result) != 0);
  }

  result = *(*(*this + 120) + 416);
  if (result)
  {
    return (EVP_MD_CTX_md(result) != 0);
  }

  return result;
}

uint64_t bssl::ssl_send_finished(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(this + 192);
  if (!v3)
  {
    v3 = *(v2 + 104);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v4;
  v28 = v4;
  *v25 = v4;
  v26 = v4;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (!bssl::SSLTranscript::GetFinishedMAC((this + 424), v25, &v24, v3, *(v2 + 180) & 1))
  {
    return 0;
  }

  v5 = v24;
  if (!bssl::ssl_log_secret(v2, "CLIENT_RANDOM", &v3->key_arg[2], v3->master_key[38]))
  {
    return 0;
  }

  if (*(v2 + 180))
  {
    if (v5 <= 0xC)
    {
      v6 = *(v2 + 48);
      *(v6 + 468) = 0;
      if (!v5)
      {
        goto LABEL_16;
      }

      v7 = (v6 + 468);
      v8 = (v6 + 456);
      v9 = v25;
      v10 = v5;
      do
      {
        v11 = *v9++;
        *v8++ = v11;
        --v10;
      }

      while (v10);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v5 > 0xC)
  {
LABEL_20:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 553);
    return 0;
  }

  v12 = *(v2 + 48);
  *(v12 + 455) = 0;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = (v12 + 455);
  v13 = (v12 + 443);
  v14 = v25;
  v15 = v5;
  do
  {
    v16 = *v14++;
    *v13++ = v16;
    --v15;
  }

  while (v15);
LABEL_15:
  *v7 = v5;
LABEL_16:
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = v17;
  v23[2] = v17;
  v23[0] = v17;
  CBB_zero(v23);
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = v18;
  v22[2] = v18;
  v22[0] = v18;
  if (*(*v2 + 88))(v2, v23, v22, 20) && CBB_add_bytes(v22, v25, v5) && (bssl::ssl_add_message_cbb(v2, v23))
  {
    v20 = 1;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 562);
    v20 = 0;
  }

  CBB_cleanup(v23, v19);
  return v20;
}

void sub_1A901C5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRYPTO_tls1_prf(EVP_MD *a1, _BYTE *a2, size_t a3, char *a4, unint64_t a5, const unsigned __int8 *a6, size_t a7, const unsigned __int8 *a8, size_t len, const unsigned __int8 *a10, size_t a11)
{
  if (!a3)
  {
    return 1;
  }

  bzero(a2, a3);
  if (EVP_md5_sha1() == a1)
  {
    v18 = EVP_md5();
    result = tls1_P_hash(a2, a3, v18, a4, a5 - (a5 >> 1), a6, a7, a8, len, a10, a11);
    if (!result)
    {
      return result;
    }

    a4 += a5 >> 1;
    a5 -= a5 >> 1;
    a1 = EVP_sha1();
  }

  return tls1_P_hash(a2, a3, a1, a4, a5, a6, a7, a8, len, a10, a11);
}

uint64_t bssl::SSLTranscript::GetFinishedMAC(bssl::SSLTranscript *this, unsigned __int8 *a2, unint64_t *a3, const ssl_session_st *a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v10;
  v19 = v10;
  *v16 = v10;
  v17 = v10;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = bssl::SSLTranscript::GetHash(this, v16, &v15);
  if (result)
  {
    if (a5)
    {
      v12 = "server finished";
    }

    else
    {
      v12 = "client finished";
    }

    v13 = EVP_MD_CTX_md((this + 8));
    result = bssl::tls1_prf(v13, a2, 0xCuLL, &a4->key_arg[2], a4->master_key[38], v12, 0xFuLL, v14, v16, v15, 0, 0);
    if (result)
    {
      *a3 = 12;
      return 1;
    }
  }

  return result;
}

uint64_t bssl::tls1_configure_aead(bssl *a1, uint64_t a2, ssl_session_st **a3, unint64_t **a4, char *a5, const ssl_cipher_st *a6)
{
  v6 = a6;
  memset(var58, 170, 24);
  if (!bssl::get_key_block_lengths(a1, &var58[2], &var58[1], var58, a4[25], a6))
  {
    return 0;
  }

  v12 = var58[1];
  v13 = 2 * (var58[1] + var58[2] + var58[0]);
  v14 = a3[1];
  if (!v14)
  {
    if (!bssl::Array<unsigned char>::InitUninitialized(a3, 2 * (var58[1] + var58[2] + var58[0])) || !bssl::generate_key_block(a1, *a3, a3[1], a4))
    {
      return 0;
    }

    v14 = a3[1];
  }

  if (v14 != v13)
  {
    bssl::tls1_configure_aead();
  }

  v15 = *a3;
  if (((*(a1 + 180) & 1) == 0) == a2)
  {
    if (v13 >= var58[2])
    {
      v16 = var58[2];
    }

    else
    {
      v16 = v13;
    }

    if (v13 >= 2 * var58[2] && v13 >= 2 * (var58[2] + v12))
    {
      v17 = 2 * var58[2];
      v18 = 2 * (var58[2] + v12);
      v19 = var58[0];
      v20 = *a3;
      goto LABEL_21;
    }

LABEL_39:
    abort();
  }

  if (v13 < var58[2])
  {
    goto LABEL_39;
  }

  v17 = v12 + 2 * var58[2];
  if (v13 < v17)
  {
    goto LABEL_39;
  }

  v16 = v13 - var58[2] >= var58[2] ? var58[2] : v13 - var58[2];
  v19 = var58[0];
  v18 = var58[0] + 2 * (var58[2] + v12);
  if (v13 < v18)
  {
    goto LABEL_39;
  }

  v20 = (v15 + var58[2]);
LABEL_21:
  if (v13 - v17 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13 - v17;
  }

  v22 = (v13 - v18);
  if (v13 - v18 >= v19)
  {
    v22 = v19;
  }

  if (v6)
  {
    if (v6 != v19)
    {
      return 0;
    }
  }

  else
  {
    a5 = v15 + v18;
    v6 = v22;
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  bssl::SSLAEADContext::Create(a2, *(*(a1 + 6) + 208), a4[25], (&v15->ssl_version + v17), v21, v20, v16, &v33, a5, v6);
  v24 = v33;
  if (v33)
  {
    v25 = *a1;
    if (a2)
    {
      v26 = *(v25 + 144);
      v33 = 0;
      v27 = &v31;
      v31 = v24;
      v28 = v26(a1, 3, &v31, 0, 0);
    }

    else
    {
      v29 = *(v25 + 136);
      v32 = v33;
      v33 = 0;
      v27 = &v32;
      v28 = v29(a1, 3, &v32, 0, 0);
    }

    v23 = v28;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](v27, 0);
  }

  else
  {
    v23 = 0;
  }

  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v33, 0);
  return v23;
}

void sub_1A901CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, bssl::SSLAEADContext *);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

void bssl::SSLAEADContext::Create(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, const ssl_cipher_st *a3@<X2>, _OWORD *a4@<X3>, size_t a5@<X4>, const void *a6@<X5>, size_t a7@<X6>, bssl::SSLAEADContext **a8@<X8>, char *a9, size_t a10)
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = a3;
  v39 = -21846;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  if (!bssl::ssl_protocol_version_from_wire(&v39, a2) || ((evp_aead = bssl::ssl_cipher_get_evp_aead(&v40, &v38, &v37, a3, v39), v37 == a10) ? (v18 = evp_aead) : (v18 = 0), v18 == 1 ? (v19 = v38 == a7) : (v19 = 0), !v19))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_aead_ctx.cc", 67);
    *a8 = 0;
    return;
  }

  v36 = bssl::New<bssl::SSLAEADContext,ssl_cipher_st const*&>(&v41);
  if (v36)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __dst[3] = v20;
    __dst[4] = v20;
    __dst[1] = v20;
    __dst[2] = v20;
    __dst[0] = v20;
    if (EVP_AEAD_nonce_length(v40) > 0x18)
    {
      v34 = "EVP_AEAD_nonce_length(aead) <= EVP_AEAD_MAX_NONCE_LENGTH";
      v35 = 77;
      goto LABEL_47;
    }

    v21 = a9;
    v22 = v36;
    *(v36 + 605) = EVP_AEAD_nonce_length(v40);
    if (a7)
    {
      if (v39 < 0x304u)
      {
        v23 = a7 + a5 + a10;
        if (v23 < 0x51)
        {
          memcpy(__dst, a6, a7);
          v24 = __dst + a7;
          if (a5)
          {
            memcpy(v24, a4, a5);
          }

          if (a10)
          {
            memcpy(&v24[a5], a9, a10);
          }

          *(v22 + 616) |= 0xBu;
          a4 = __dst;
          a5 = v23;
          goto LABEL_36;
        }

LABEL_48:
        abort();
      }

      v34 = "protocol_version < TLS1_3_VERSION";
      v35 = 108;
LABEL_47:
      __assert_rtn("Create", "ssl_aead_ctx.cc", v35, v34);
    }

    if (a10 > 0xC)
    {
      goto LABEL_48;
    }

    *(v22 + 604) = 0;
    if (a10)
    {
      v25 = v22 + 592;
      v26 = a10;
      do
      {
        v27 = *v21++;
        *v25++ = v27;
        --v26;
      }

      while (v26);
      v28 = a10;
    }

    else
    {
      v28 = 0;
    }

    *(v22 + 604) = v28;
    if (v39 <= 0x303u)
    {
      algorithms_high = HIDWORD(v41->algorithms);
      v22 = v36;
      if ((algorithms_high & 0x40) == 0)
      {
        v32 = *(v36 + 605);
        if (a10 > v32)
        {
          v34 = "fixed_iv.size() <= aead_ctx->variable_nonce_len_";
          v35 = 94;
          goto LABEL_47;
        }

        if ((algorithms_high & 0x18) == 0)
        {
          v34 = "cipher->algorithm_enc & (SSL_AES128GCM | SSL_AES256GCM)";
          v35 = 95;
          goto LABEL_47;
        }

        *(v36 + 605) = v32 - a10;
        v30 = *(v22 + 616) | 1;
        goto LABEL_34;
      }

      *(v36 + 616) |= 4u;
      *(v22 + 605) = 8;
      if (a10 >= 8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = v36;
      v29 = *(v36 + 616);
      *(v36 + 616) = v29 | 4;
      *(v22 + 605) = 8;
      if (a10 >= 8)
      {
        v30 = v29 | 0x14;
LABEL_34:
        *(v22 + 616) = v30;
LABEL_36:
        if (EVP_AEAD_CTX_init_with_direction(v22 + 1, v40, a4, a5, 0, a1))
        {
          v33 = v36;
          v36 = 0;
        }

        else
        {
          v33 = 0;
        }

        *a8 = v33;
        goto LABEL_40;
      }
    }

    v34 = "fixed_iv.size() >= aead_ctx->variable_nonce_len_";
    v35 = 91;
    goto LABEL_47;
  }

  *a8 = 0;
LABEL_40:
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v36, 0);
}

uint64_t bssl::get_key_block_lengths(bssl *this, const ssl_st *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, const ssl_cipher_st *a6)
{
  v18 = 0;
  v10 = bssl::ssl_protocol_version(this, a2, a3);
  if ((bssl::ssl_cipher_get_evp_aead(&v18, &a2->version, a4, a5, v10) & 1) == 0)
  {
    v15 = 130;
    v16 = 173;
    goto LABEL_6;
  }

  v11 = EVP_AEAD_key_length(v18);
  *a3 = v11;
  if (*&a2->version)
  {
    v12 = *a4 + *&a2->version;
    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (!v13)
    {
      v15 = 68;
      v16 = 183;
LABEL_6:
      ERR_put_error(16, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/t1_enc.cc", v16);
      return 0;
    }

    *a3 = v14;
  }

  return 1;
}

uint64_t bssl::tls1_change_cipher_state(ssl_session_st **a1, const bssl::SSL_HANDSHAKE *a2)
{
  v4 = *a1;
  v5 = bssl::ssl_handshake_session(a1);

  return bssl::tls1_configure_aead(v4, a2, a1 + 197, v5, 0, 0);
}

uint64_t bssl::ssl_cipher_get_evp_aead(void **a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  result = 0;
  *a1 = 0;
  *a2 = 0;
  *a3 = 0;
  v10 = *(a4 + 32);
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      if (*(a4 + 28) == 4)
      {
        *a1 = EVP_aead_aes_256_cbc_sha384_tls();
        v11 = 48;
        goto LABEL_42;
      }
    }

    else
    {
      if (v10 != 8)
      {
        return result;
      }

      v12 = *(a4 + 28);
      switch(v12)
      {
        case 64:
          v13 = 12;
          v14 = EVP_aead_chacha20_poly1305();
LABEL_35:
          *a1 = v14;
          *a3 = v13;
          if (a5 >= 0x304)
          {
            *a3 = EVP_AEAD_nonce_length(v14);
          }

          return 1;
        case 16:
          v13 = 4;
          if (a5 > 0x303)
          {
            v14 = EVP_aead_aes_256_gcm_tls13();
          }

          else
          {
            v14 = EVP_aead_aes_256_gcm_tls12();
          }

          goto LABEL_35;
        case 8:
          v13 = 4;
          if (a5 > 0x303)
          {
            v14 = EVP_aead_aes_128_gcm_tls13();
          }

          else
          {
            v14 = EVP_aead_aes_128_gcm_tls12();
          }

          goto LABEL_35;
      }
    }

    return 0;
  }

  if (v10 == 1)
  {
    result = 0;
    v15 = *(a4 + 28);
    if (v15 > 3)
    {
      if (v15 == 4)
      {
        if (a5 == 769)
        {
          v16 = EVP_aead_aes_256_cbc_sha1_tls_implicit_iv();
          goto LABEL_31;
        }

        v17 = EVP_aead_aes_256_cbc_sha1_tls();
      }

      else
      {
        if (v15 != 32)
        {
          return result;
        }

        v17 = EVP_aead_null_sha1_tls();
      }
    }

    else if (v15 == 1)
    {
      if (a5 == 769)
      {
        *a1 = EVP_aead_des_ede3_cbc_sha1_tls_implicit_iv();
        v18 = 8;
LABEL_32:
        *a3 = v18;
LABEL_41:
        v11 = 20;
        goto LABEL_42;
      }

      v17 = EVP_aead_des_ede3_cbc_sha1_tls();
    }

    else
    {
      if (v15 != 2)
      {
        return result;
      }

      if (a5 == 769)
      {
        v16 = EVP_aead_aes_128_cbc_sha1_tls_implicit_iv();
LABEL_31:
        *a1 = v16;
        v18 = 16;
        goto LABEL_32;
      }

      v17 = EVP_aead_aes_128_cbc_sha1_tls();
    }

    *a1 = v17;
    goto LABEL_41;
  }

  if (v10 != 2)
  {
    return result;
  }

  if (*(a4 + 28) != 2)
  {
    return 0;
  }

  *a1 = EVP_aead_aes_128_cbc_sha256_tls();
  v11 = 32;
LABEL_42:
  *a2 = v11;
  return 1;
}

bssl::SSLAEADContext *bssl::New<bssl::SSLAEADContext,ssl_cipher_st const*&>(const ssl_cipher_st **a1)
{
  result = OPENSSL_malloc(0x270uLL);
  if (result)
  {
    return bssl::SSLAEADContext::SSLAEADContext(result, *a1);
  }

  return result;
}

uint64_t bssl::ssl_session_protocol_version(bssl *this, const ssl_session_st *a2)
{
  v3 = -21846;
  if ((bssl::ssl_protocol_version_from_wire(&v3, *(this + 2)) & 1) == 0)
  {
    bssl::ssl_session_protocol_version();
  }

  return v3;
}

const EVP_MD *bssl::ssl_session_get_digest(bssl *this, const ssl_session_st *a2)
{
  v3 = bssl::ssl_session_protocol_version(this, a2);
  v5 = *(this + 25);

  return bssl::ssl_get_handshake_digest(v3, v5, v4);
}

uint64_t bssl::ssl_handshake_session(void *a1)
{
  result = a1[192];
  if (!result)
  {
    return *(*a1 + 104);
  }

  return result;
}

uint64_t boringssl_session_is_eap_configured(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && *(a1 + 8))
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x2020000000;
    v6 = 1;
    nw_protocol_options_access_handle();
    v1 = *(v4 + 24);
    _Block_object_dispose(&v3, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1A901D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __boringssl_session_is_eap_configured_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 368) != 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a2 != 0;
}

BOOL CBS_peek_asn1_tag(__int128 *a1, int a2)
{
  v6 = *a1;
  v5 = -1431655766;
  return parse_asn1_tag(&v6, &v5) && v5 == a2;
}

uint64_t cbs_get_any_asn1_element(__int128 *a1, void *a2, int *a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v31 = *a1;
  if (a7)
  {
    *a5 = 0;
    *a6 = 0;
  }

  else
  {
    if (a5)
    {
      cbs_get_any_asn1_element_cold_1();
    }

    if (a6)
    {
      cbs_get_any_asn1_element_cold_2();
    }
  }

  v30 = -1431655766;
  result = parse_asn1_tag(&v31, &v30);
  if (result)
  {
    if (a3)
    {
      *a3 = v30;
    }

    if (!*(&v31 + 1))
    {
      return 0;
    }

    v15 = (v31 + 1);
    v16 = *v31;
    v17 = *(a1 + 1);
    v18 = v17 - (*(&v31 + 1) - 1);
    if ((*v31 & 0x80000000) == 0)
    {
      v19 = v18 + v16;
      if (!a4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v23 = v16 & 0x7F;
    if (a7)
    {
      if (!v23 && (v30 & 0x20000000) != 0)
      {
        if (a4)
        {
          *a4 = v18;
          v17 = *(a1 + 1);
        }

        *a5 = 1;
        *a6 = 1;
        v29 = v17 - v18;
        if (v17 < v18)
        {
          return 0;
        }

        v22 = *a1;
        *a1 += v18;
        *(a1 + 1) = v29;
        if (a2)
        {
LABEL_15:
          *a2 = v22;
          a2[1] = v18;
        }

        return 1;
      }
    }

    v25 = (v23 - 5) >= 0xFFFFFFFC && *(&v31 + 1) - 1 >= v23;
    if (!v25)
    {
      return 0;
    }

    v26 = 0;
    v27 = v23;
    do
    {
      v28 = *v15++;
      v26 = v28 | (v26 << 8);
      --v27;
    }

    while (v27);
    if (v26 > 0x7F)
    {
      if (v26 >> (8 * v23 - 8))
      {
        goto LABEL_42;
      }

      if (!a7)
      {
        return 0;
      }
    }

    else
    {
      if (!a7)
      {
        return 0;
      }

      *a5 = 1;
      if (v26 >> (8 * v23 - 8))
      {
LABEL_42:
        v18 += v23;
        if (!__CFADD__(v26, v18))
        {
          v19 = v26 + v18;
          if (!a4)
          {
LABEL_12:
            v20 = *(a1 + 1);
            v25 = v20 >= v19;
            v21 = v20 - v19;
            if (!v25)
            {
              return 0;
            }

            v22 = *a1;
            *a1 += v19;
            *(a1 + 1) = v21;
            v18 = v19;
            if (a2)
            {
              goto LABEL_15;
            }

            return 1;
          }

LABEL_11:
          *a4 = v18;
          goto LABEL_12;
        }

        return 0;
      }
    }

    *a5 = 1;
    goto LABEL_42;
  }

  return result;
}

uint64_t parse_asn1_tag(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v4 = (*a1)++;
  a1[1] = v2 - 1;
  v5 = *v4;
  v6 = v5 & 0x1F;
  if (v6 != 31 || (v10 = 0xAAAAAAAAAAAAAAAALL, v7 = parse_base128_integer(a1, &v10), result = 0, v7) && (v6 = v10, v10 - 31 <= 0x1FFFFFE0))
  {
    v9 = v6 | (v5 << 24) & 0xE0000000;
    if ((v9 & 0xDFFFFFFF) != 0)
    {
      *a2 = v9;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CBS_get_optional_asn1(__int128 *a1, void *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v11 = *a1;
  v10 = -1431655766;
  v8 = 0;
  if (!parse_asn1_tag(&v11, &v10) || v10 != v4 || (v8 = 1, result = cbs_get_asn1(a1, a2, v4, 1), result))
  {
    if (a3)
    {
      *a3 = v8;
    }

    return 1;
  }

  return result;
}

uint64_t cbs_get_asn1(__int128 *a1, void *a2, int a3, int a4)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v15 = -1431655766;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v14;
  }

  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  any_asn1_element = cbs_get_any_asn1_element(a1, v7, &v15, &v16, 0, 0, 0);
  result = 0;
  if (any_asn1_element && v15 == a3)
  {
    if (a4)
    {
      v10 = v14;
      if (a2)
      {
        v10 = a2;
      }

      v11 = v10[1];
      v12 = v11 >= v16;
      v13 = v11 - v16;
      if (!v12)
      {
        cbs_get_asn1_cold_1();
      }

      *v7 += v16;
      v10[1] = v13;
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ssl_cert_check_key_usage(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v13 = *a1;
  memset(v12, 170, sizeof(v12));
  v11 = -1431655766;
  if (bssl::ssl_cert_skip_to_spki(&v13, &v12[1]) && CBS_get_asn1(&v12[1], 0, 536870928) && CBS_get_optional_asn1(&v12[1], 0, 0, 2147483649) && CBS_get_optional_asn1(&v12[1], 0, 0, 2147483650) && CBS_get_optional_asn1(&v12[1], v12, &v11, 2684354563))
  {
    if (!v11)
    {
      return 1;
    }

    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_asn1(v12, &v10, 536870928))
    {
      if (*(&v10 + 1))
      {
        while (1)
        {
          memset(v9, 170, sizeof(v9));
          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_asn1(&v10, &v9[1], 536870928) || !CBS_get_asn1(&v9[1], v9, 6) || CBS_peek_asn1_tag(&v9[1], 1) && !CBS_get_asn1(&v9[1], 0, 1) || !CBS_get_asn1(&v9[1], &v8, 4) || *(&v9[1] + 1))
          {
            v5 = 272;
            v6 = 460;
            goto LABEL_23;
          }

          if (*(&v9[0] + 1) == 3 && **&v9[0] == 7509 && *(*&v9[0] + 2) == 15)
          {
            break;
          }

          if (!*(&v10 + 1))
          {
            return 1;
          }
        }

        v7[0] = 0xAAAAAAAAAAAAAAAALL;
        v7[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_asn1(&v8, v7, 3) || *(&v8 + 1))
        {
          v5 = 272;
          v6 = 474;
          goto LABEL_23;
        }

        if (!CBS_is_valid_asn1_bitstring(v7))
        {
          v5 = 272;
          v6 = 481;
          goto LABEL_23;
        }

        if (!CBS_asn1_bitstring_has_bit(v7, v2))
        {
          v5 = 302;
          v6 = 486;
          goto LABEL_23;
        }
      }

      return 1;
    }

    v5 = 272;
    v6 = 448;
  }

  else
  {
    v5 = 272;
    v6 = 438;
  }

LABEL_23:
  ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", v6);
  return 0;
}

uint64_t bssl::tls_set_write_state(bssl *a1, ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  result = bssl::tls_flush_pending_hs_data(a1, a2);
  if (result)
  {
    v11 = *(a1 + 21);
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = *(*(a1 + 6) + 280);
    if (v12 && (*(v12 + 1602) & 8) != 0 || (result = (*(v11 + 8))(a1, a2, **a3, a4, a5), result))
    {
      if (a2 == 1)
      {
        return 1;
      }

LABEL_7:
      v13 = *(a1 + 6);
      *(v13 + 8) = 0;
      v14 = *a3;
      *a3 = 0;
      std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v13 + 272), v14);
      *(*(a1 + 6) + 204) = a2;
      return 1;
    }
  }

  return result;
}

void bssl::SSLAEADContext::~SSLAEADContext(bssl::SSLAEADContext *this)
{
  std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](this + 76, 0);
  *(this + 604) = 0;
  EVP_AEAD_CTX_cleanup(this + 1);
}

void bssl::tls_next_message(bssl *this, ssl_st *a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v3;
  v11[1] = v3;
  if (!bssl::tls_get_message(this, v11) || (v4 = *(this + 6), (v5 = *(v4 + 224)) == 0) || (v6 = *v5, *v5 < v12))
  {
    bssl::tls_next_message();
  }

  if (*v5 == v12)
  {
    v7 = *v5;
  }

  else
  {
    memmove(*(v5 + 8), (*(v5 + 8) + v12), *v5 - v12);
    v7 = v12;
    v4 = *(this + 6);
    v5 = *(v4 + 224);
    v6 = *v5;
  }

  *v5 = v6 - v7;
  *(v4 + 222) &= ~4u;
  *(*(this + 6) + 222) &= ~8u;
  if (!SSL_in_init(this))
  {
    v8 = *(this + 6);
    v10 = *(v8 + 224);
    v9 = (v8 + 224);
    if (!*v10)
    {
      std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v9, 0);
    }
  }
}

BOOL bssl::ssl_check_message_type(bssl *a1, uint64_t a2, int a3, int a4)
{
  v5 = *(a2 + 1);
  if (v5 != a3)
  {
    bssl::ssl_send_alert(a1, 2, 10);
    ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 215);
    ERR_add_error_dataf("got type %d, wanted type %d", *(a2 + 1), a3);
  }

  return v5 == a3;
}

void std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

void *EVP_AEAD_CTX_cleanup(void *result)
{
  if (*result)
  {
    v1 = result;
    result = (*(*result + 24))(result);
    *v1 = 0;
  }

  return result;
}

BOOL CBS_asn1_bitstring_has_bit(unsigned __int8 **a1, unsigned int a2)
{
  result = CBS_is_valid_asn1_bitstring(a1);
  if (result)
  {
    v5 = (a2 >> 3) + 1;
    if (a1[1] <= v5)
    {
      return 0;
    }

    else
    {
      return ((*a1)[v5] >> (~a2 & 7)) & 1;
    }
  }

  return result;
}

uint64_t bssl::ssl_cert_skip_to_spki(__int128 *a1, __int128 *a2)
{
  v6 = *a1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  asn1 = CBS_get_asn1(&v6, &v5, 536870928);
  result = 0;
  if (asn1)
  {
    if (!*(&v6 + 1))
    {
      result = CBS_get_asn1(&v5, a2, 536870928);
      if (result)
      {
        result = CBS_get_optional_asn1(a2, 0, 0, 2684354560);
        if (result)
        {
          result = CBS_get_asn1(a2, 0, 2);
          if (result)
          {
            result = CBS_get_asn1(a2, 0, 536870928);
            if (result)
            {
              result = CBS_get_asn1(a2, 0, 536870928);
              if (result)
              {
                result = CBS_get_asn1(a2, 0, 536870928);
                if (result)
                {
                  return CBS_get_asn1(a2, 0, 536870928) != 0;
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

void HMAC_CTX_cleanup(HMAC_CTX *ctx)
{
  EVP_MD_CTX_cleanup(&ctx->i_ctx);
  EVP_MD_CTX_cleanup(&ctx->o_ctx);
  EVP_MD_CTX_cleanup(&ctx->md_ctx);

  OPENSSL_cleanse(ctx, 0x68uLL);
}

uint64_t tls1_P_hash(_BYTE *a1, unint64_t a2, EVP_MD *md, const void *a4, int a5, const unsigned __int8 *a6, size_t a7, const unsigned __int8 *a8, size_t len, const unsigned __int8 *a10, size_t a11)
{
  v50 = *MEMORY[0x1E69E9840];
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v19;
  v46 = v19;
  v43 = v19;
  v44 = v19;
  *&v41[57] = v19;
  v42 = v19;
  *&v41[53] = 0xAAAAAAAAAAAAAAAALL;
  *&v41[45] = v19;
  *&v41[49] = v19;
  *&v41[37] = v19;
  *&v41[41] = v19;
  *&v41[33] = v19;
  *&v41[29] = v19;
  *&v41[25] = 0xAAAAAAAAAAAAAAAALL;
  *&v41[17] = v19;
  *&v41[21] = v19;
  *&v41[9] = v19;
  *&v41[13] = v19;
  *&v41[1] = v19;
  *&v41[5] = v19;
  v49[2] = v19;
  v49[3] = v19;
  v49[0] = v19;
  v49[1] = v19;
  v41[0] = -1431655766;
  v20 = EVP_MD_size(md);
  HMAC_CTX_init(&v41[57]);
  HMAC_CTX_init(&v41[29]);
  HMAC_CTX_init(&v41[1]);
  HMAC_Init_ex(&v41[1], a4, a5, md, 0);
  if (v21)
  {
    if (HMAC_CTX_copy_ex(&v41[57], &v41[1]))
    {
      HMAC_Update(&v41[57], a6, a7);
      if (v22)
      {
        HMAC_Update(&v41[57], a8, len);
        if (v23)
        {
          HMAC_Update(&v41[57], a10, a11);
          if (v24)
          {
            HMAC_Final(&v41[57], v49, v41);
            if (v25)
            {
              while (1)
              {
                v40 = -1431655766;
                *&v26 = 0xAAAAAAAAAAAAAAAALL;
                *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v48[2] = v26;
                v48[3] = v26;
                v48[0] = v26;
                v48[1] = v26;
                if (!HMAC_CTX_copy_ex(&v41[57], &v41[1]))
                {
                  break;
                }

                HMAC_Update(&v41[57], v49, v41[0]);
                if (!v27 || a2 > v20 && !HMAC_CTX_copy_ex(&v41[29], &v41[57]))
                {
                  break;
                }

                HMAC_Update(&v41[57], a6, a7);
                if (!v28)
                {
                  break;
                }

                HMAC_Update(&v41[57], a8, len);
                if (!v29)
                {
                  break;
                }

                HMAC_Update(&v41[57], a10, a11);
                if (!v30)
                {
                  break;
                }

                HMAC_Final(&v41[57], v48, &v40);
                if (!v31)
                {
                  break;
                }

                if (v20 != v40)
                {
                  tls1_P_hash_cold_1();
                }

                if (a2 >= v20)
                {
                  v32 = v20;
                }

                else
                {
                  v32 = a2;
                }

                if (v32)
                {
                  v33 = v48;
                  v34 = a1;
                  v35 = v32;
                  do
                  {
                    v36 = *v33++;
                    *v34++ ^= v36;
                    --v35;
                  }

                  while (v35);
                }

                a2 -= v32;
                if (!a2)
                {
                  v38 = 1;
                  goto LABEL_26;
                }

                HMAC_Final(&v41[29], v49, v41);
                if (!v37)
                {
                  break;
                }

                a1 += v32;
              }
            }
          }
        }
      }
    }
  }

  v38 = 0;
LABEL_26:
  OPENSSL_cleanse(v49, 0x40uLL);
  HMAC_CTX_cleanup(&v41[57]);
  HMAC_CTX_cleanup(&v41[29]);
  HMAC_CTX_cleanup(&v41[1]);
  return v38;
}

uint64_t HMAC_CTX_copy_ex(uint64_t a1, uint64_t a2)
{
  result = EVP_MD_CTX_copy_ex((a1 + 40), (a2 + 40));
  if (result)
  {
    result = EVP_MD_CTX_copy_ex((a1 + 72), (a2 + 72));
    if (result)
    {
      result = EVP_MD_CTX_copy_ex((a1 + 8), (a2 + 8));
      if (result)
      {
        *a1 = *a2;
        return 1;
      }
    }
  }

  return result;
}

void HMAC_Final(HMAC_CTX *ctx, unsigned __int8 *md, unsigned int *len)
{
  v12 = *MEMORY[0x1E69E9840];
  s = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v6;
  v11 = v6;
  *mda = v6;
  v9 = v6;
  if (!EVP_DigestFinal_ex(&ctx->md_ctx, mda, &s) || !EVP_MD_CTX_copy_ex(&ctx->md_ctx, &ctx->o_ctx) || !EVP_DigestUpdate(&ctx->md_ctx, mda, s) || !EVP_DigestFinal_ex(&ctx->md_ctx, md, len))
  {
    *len = 0;
  }
}

void HMAC_Init_ex(HMAC_CTX *ctx, const void *key, int len, const EVP_MD *md, ENGINE *impl)
{
  v6 = *&len;
  v28 = *MEMORY[0x1E69E9840];
  if (md)
  {
    v9 = md;
  }

  else
  {
    v9 = ctx->md;
  }

  if (!key && v9 == ctx->md)
  {
    goto LABEL_6;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  d[6] = v10;
  d[7] = v10;
  d[4] = v10;
  d[5] = v10;
  d[2] = v10;
  d[3] = v10;
  d[0] = v10;
  d[1] = v10;
  v25 = v10;
  v26 = v10;
  v23 = v10;
  v24 = v10;
  v21 = v10;
  v22 = v10;
  *mda = v10;
  v20 = v10;
  s = -1431655766;
  v11 = EVP_MD_block_size(v9);
  if (v11 >= 0x81)
  {
    HMAC_Init_ex_cold_1();
  }

  if (v11 >= v6)
  {
    if (v6)
    {
      __memcpy_chk();
    }

    s = v6;
  }

  else
  {
    if (!EVP_DigestInit_ex(&ctx->md_ctx, v9, impl) || !EVP_DigestUpdate(&ctx->md_ctx, key, v6) || !EVP_DigestFinal_ex(&ctx->md_ctx, mda, &s))
    {
      return;
    }

    LODWORD(v6) = s;
  }

  if (v6 != 128)
  {
    bzero(&mda[v6], 128 - v6);
  }

  v12 = 0;
  v13.i64[0] = 0x3636363636363636;
  v13.i64[1] = 0x3636363636363636;
  do
  {
    d[v12] = veorq_s8(*&mda[v12 * 16], v13);
    ++v12;
  }

  while (v12 != 8);
  if (EVP_DigestInit_ex(&ctx->i_ctx, v9, impl))
  {
    v14 = EVP_MD_block_size(v9);
    if (EVP_DigestUpdate(&ctx->i_ctx, d, v14))
    {
      v15 = 0;
      v16.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
      v16.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
      do
      {
        d[v15] = veorq_s8(*&mda[v15 * 16], v16);
        ++v15;
      }

      while (v15 != 8);
      if (EVP_DigestInit_ex(&ctx->o_ctx, v9, impl))
      {
        v17 = EVP_MD_block_size(v9);
        if (EVP_DigestUpdate(&ctx->o_ctx, d, v17))
        {
          ctx->md = v9;
LABEL_6:
          EVP_MD_CTX_copy_ex(&ctx->md_ctx, &ctx->i_ctx);
        }
      }
    }
  }
}

void HMAC_CTX_init(HMAC_CTX *ctx)
{
  ctx->md = 0;
  p_md_ctx = &ctx->md_ctx;
  EVP_MD_CTX_init(&ctx->i_ctx);
  EVP_MD_CTX_init(&ctx->o_ctx);

  EVP_MD_CTX_init(p_md_ctx);
}

BOOL bssl::tls1_generate_master_secret(uint64_t *a1, _BYTE *a2, uint64_t a3, char *a4, unint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 != 48)
  {
    abort();
  }

  if (*(a1 + 1602))
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v12;
    v19 = v12;
    *v16 = v12;
    v17 = v12;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    if (!bssl::SSLTranscript::GetHash((a1 + 53), v16, &v15))
    {
      return 0;
    }

    v13 = bssl::SSLTranscript::Digest((a1 + 53));
    v11 = CRYPTO_tls1_prf(v13, a2, 0x30uLL, a4, a5, "extended master secret", 0x16uLL, v16, v15, 0, 0);
  }

  else
  {
    v9 = *a1;
    v10 = bssl::SSLTranscript::Digest((a1 + 53));
    v11 = CRYPTO_tls1_prf(v10, a2, 0x30uLL, a4, a5, "master secret", 0xDuLL, (*(v9 + 48) + 48), 0x20uLL, (*(v9 + 48) + 16), 0x20uLL);
  }

  return v11 == 1;
}

uint64_t bssl::ssl_add_message_cbb(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if ((*(*a1 + 96))(a1, a2, &v8))
  {
    v3 = *(*a1 + 104);
    OPENSSL_free(0);
    v6 = v8;
    v7 = v9;
    v8 = 0;
    v9 = 0;
    v4 = v3(a1, &v6);
    OPENSSL_free(v6);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = 0;
  }

  OPENSSL_free(v8);
  return v4;
}

void sub_1A901E7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  bssl::Array<unsigned char>::~Array(&a9);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::anonymous namespace::X25519KeyShare::Encap(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *a4 = 80;
  result = (*(*a1 + 24))(a1, a2);
  if (result)
  {
    v12 = *(*a1 + 40);

    return v12(a1, a3, a4, a5, a6);
  }

  return result;
}

void EVP_PKEY_CTX_free(EVP_PKEY **a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *&(*a1)->save_parameters;
      if (v2)
      {
        v2(a1);
      }
    }

    EVP_PKEY_free(a1[2]);
    EVP_PKEY_free(a1[3]);

    OPENSSL_free(a1);
  }
}

BOOL EVP_DigestVerifyFinal(const EVP_MD_CTX *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*a1->flags + 56))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx.digest = v4;
    *&ctx.flags = v4;
    v11 = v4;
    v12 = v4;
    *md = v4;
    v10 = v4;
    s = -1431655766;
    EVP_MD_CTX_init(&ctx);
    v5 = EVP_MD_CTX_copy_ex(&ctx, a1) && EVP_DigestFinal_ex(&ctx, md, &s) && EVP_PKEY_verify(a1->flags) != 0;
    EVP_MD_CTX_cleanup(&ctx);
  }

  else
  {
    ERR_put_error(6, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digestsign/digestsign.c.inc", 186);
    return 0;
  }

  return v5;
}

uint64_t RSA_verify_PKCS1_PSS_mgf1(uint64_t a1, const void *a2, const EVP_MD *a3, const EVP_MD *a4, unsigned __int8 *a5, unsigned int a6)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.digest = v12;
  *&ctx.flags = v12;
  EVP_MD_CTX_init(&ctx);
  v13 = EVP_MD_size(a3);
  v14 = v13;
  if (a6 != -2)
  {
    if (a6 == -1)
    {
      a6 = v13;
    }

    else if (a6 <= -3)
    {
      v15 = 138;
      v16 = 232;
LABEL_21:
      ERR_put_error(4, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v16);
      v23 = 0;
      goto LABEL_22;
    }
  }

  v17 = (BN_num_bits(*(a1 + 8)) - 1) & 7;
  v18 = RSA_size(a1);
  if (*a5 >> v17)
  {
    v15 = 122;
    v16 = 239;
    goto LABEL_21;
  }

  v19 = v18;
  if (v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  if (v17)
  {
    v21 = a5;
  }

  else
  {
    v21 = a5 + 1;
  }

  v22 = v18 - (v17 == 0);
  if (v22 < v14 + 2 || (a6 & 0x80000000) == 0 && v22 < v14 + 2 + a6)
  {
    v15 = 113;
    v16 = 249;
    goto LABEL_21;
  }

  if (v21[v22 - 1] != 188)
  {
    v15 = 127;
    v16 = 253;
    goto LABEL_21;
  }

  v38 = v21;
  v26 = v22 + ~v14;
  v27 = OPENSSL_malloc(v26);
  v23 = v27;
  if (!v27 || !PKCS1_MGF1(v27, v26, &v38[v26], v14, v11))
  {
    goto LABEL_22;
  }

  if (v26)
  {
    v28 = v38;
    v29 = v23;
    v30 = v26;
    do
    {
      v31 = *v28++;
      *v29++ ^= v31;
      --v30;
    }

    while (v30);
  }

  if (v17)
  {
    *v23 &= 0xFFu >> (8 - v17);
  }

  v32 = 0;
  do
  {
    v33 = *(v23 + v32);
    v34 = v32 + 1;
    if (v32 >= v26 - 1)
    {
      break;
    }

    ++v32;
  }

  while (!v33);
  if (v33 == 1)
  {
    if ((a6 & 0x80000000) != 0 || ~v14 + v20 + v19 - a6 == v34)
    {
      *&v37 = 0xAAAAAAAAAAAAAAAALL;
      *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v37;
      v43 = v37;
      *md = v37;
      v41 = v37;
      if (!EVP_DigestInit_ex(&ctx, a3, 0) || !EVP_DigestUpdate(&ctx, &kPSSZeroes, 8uLL) || !EVP_DigestUpdate(&ctx, a2, v14) || !EVP_DigestUpdate(&ctx, v23 + v34, v26 - v34) || !EVP_DigestFinal_ex(&ctx, md, 0))
      {
        goto LABEL_22;
      }

      if (!v14 || !memcmp(md, &v38[v26], v14))
      {
        v24 = 1;
        goto LABEL_23;
      }

      v35 = 105;
      v36 = 298;
    }

    else
    {
      v35 = 138;
      v36 = 286;
    }
  }

  else
  {
    v35 = 139;
    v36 = 280;
  }

  ERR_put_error(4, 0, v35, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v36);
LABEL_22:
  v24 = 0;
LABEL_23:
  OPENSSL_free(v23);
  EVP_MD_CTX_cleanup(&ctx);
  return v24;
}

int PKCS1_MGF1(unsigned __int8 *mask, uint64_t len, const unsigned __int8 *seed, uint64_t seedlen, const EVP_MD *dgst)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.digest = v10;
  *&ctx.flags = v10;
  EVP_MD_CTX_init(&ctx);
  v11 = EVP_MD_size(dgst);
  if (len)
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      d = bswap32(v13);
      if (!EVP_DigestInit_ex(&ctx, dgst, 0) || !EVP_DigestUpdate(&ctx, seed, seedlen) || !EVP_DigestUpdate(&ctx, &d, 4uLL))
      {
        break;
      }

      if (len < v12)
      {
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21 = v14;
        v22 = v14;
        *md = v14;
        v20 = v14;
        if (EVP_DigestFinal_ex(&ctx, md, 0))
        {
          memcpy(mask, md, len);
          goto LABEL_12;
        }

        break;
      }

      if (!EVP_DigestFinal_ex(&ctx, mask, 0))
      {
        break;
      }

      mask += v12;
      ++v13;
      len -= v12;
      if (!len)
      {
        goto LABEL_12;
      }
    }

    v15 = 0;
  }

  else
  {
LABEL_12:
    v15 = 1;
  }

  EVP_MD_CTX_cleanup(&ctx);
  return v15;
}

uint64_t RSA_verify_pss_mgf1(uint64_t a1, const void *a2, uint64_t a3, EVP_MD *md, const EVP_MD *a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  if (EVP_MD_size(md) == a3)
  {
    if (a1)
    {
      v15 = BN_num_bytes(*(a1 + 8));
    }

    else
    {
      v15 = 0;
    }

    v25 = v15;
    v18 = malloc_type_malloc(v15, 0x100A789FuLL);
    if (v18)
    {
      v20 = v18;
      if (RSA_verify_raw(a1, &v25, v18, v19, a7, a8, 3))
      {
        v21 = v25;
        if (a1)
        {
          v22 = BN_num_bytes(*(a1 + 8));
        }

        else
        {
          v22 = 0;
        }

        if (v21 == v22)
        {
          v23 = RSA_verify_PKCS1_PSS_mgf1(a1, a2, md, a5, v20, a6);
LABEL_17:
          free(v20);
          return v23;
        }

        ERR_put_error(4, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", 372);
      }

      v23 = 0;
      goto LABEL_17;
    }

    v16 = 65;
    v17 = 362;
  }

  else
  {
    v16 = 125;
    v17 = 355;
  }

  ERR_put_error(4, 0, v16, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v17);
  return 0;
}

BOOL bssl::ssl_public_key_verify(bssl *a1, uint64_t a2, uint64_t a3, evp_pkey_st *a4, EVP_PKEY *a5, const void *a6, size_t a7)
{
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v17.digest = v14;
  *&v17.flags = v14;
  EVP_MD_CTX_init(&v17);
  v15 = (bssl::setup_ctx(a1, &v17, a5, a4, 1) & 1) != 0 && EVP_DigestVerify(&v17, a2, a3, a6, a7) != 0;
  EVP_MD_CTX_cleanup(&v17);
  return v15;
}

uint64_t EVP_AEAD_CTX_init_with_direction(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a2 != a4)
  {
    ERR_put_error(30, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", 78);
    goto LABEL_6;
  }

  *a1 = a2;
  v7 = *(a2 + 1);
  if (v7)
  {
    result = v7(a1, a3, a4, a5);
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = (*(a2 + 2))(a1, a3, a4, a5, a6);
  if (!result)
  {
LABEL_6:
    result = 0;
    *a1 = 0;
  }

  return result;
}

void std::unique_ptr<bssl::AES128RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

uint64_t CRYPTO_BUFFER_init_CBS(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  return result;
}

void BN_free(BIGNUM *a)
{
  if (a)
  {
    flags = a->flags;
    if ((flags & 2) == 0)
    {
      OPENSSL_free(a->d);
      flags = a->flags;
    }

    if (flags)
    {

      OPENSSL_free(a);
    }

    else
    {
      a->d = 0;
    }
  }
}

void pkey_rsa_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    BN_free(*(v1 + 8));
    OPENSSL_free(*(v1 + 48));
    OPENSSL_free(*(v1 + 56));

    OPENSSL_free(v1);
  }
}

int RSA_size(const RSA *a1)
{
  if (a1)
  {
    LODWORD(a1) = BN_num_bytes(a1->version);
  }

  return a1;
}

void EVP_PKEY_free(EVP_PKEY *pkey)
{
  if (pkey && CRYPTO_refcount_dec_and_test_zero(pkey))
  {
    ptr = pkey->pkey.ptr;
    if (ptr)
    {
      v3 = *(ptr + 20);
      if (v3)
      {
        v3(pkey);
        *&pkey->references = 0;
        pkey->save_type = 0;
      }
    }

    OPENSSL_free(pkey);
  }
}

uint64_t aead_aes_gcm_init_with_dir(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0x10 && (a3 & 0x1FFFFFFFFFFFFFFFLL) != 0x20)
  {
    v7 = 102;
    v8 = 215;
    goto LABEL_11;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 16;
  }

  if (v6 >= 0x11)
  {
    v7 = 116;
    v8 = 224;
LABEL_11:
    ERR_put_error(30, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_aes.m", v8);
    return 0;
  }

  if (a5 == 1)
  {
    v9 = ccaes_gcm_encrypt_mode();
  }

  else
  {
    v9 = ccaes_gcm_decrypt_mode();
  }

  *(a1 + 8) = v9;
  v10 = malloc_type_malloc(*v9, 0xF5EACA89uLL);
  *(a1 + 16) = v10;
  if (!v10 || ccgcm_init())
  {
    free((a1 + 8));
    return 0;
  }

  *(a1 + 24) = v6;
  *(a1 + 48) = 0;
  result = 1;
  *(a1 + 64) = 1;
  *(a1 + 576) = v6;
  return result;
}

uint64_t bssl::ssl_open_change_cipher_spec(void *a1, void *a2, _BYTE *a3)
{
  *a2 = 0;
  v4 = a1[6];
  if (*(v4 + 172) == 2)
  {
    ERR_restore_state(*(v4 + 184));
    *a3 = 0;
  }

  else
  {
    result = (*(*a1 + 56))(a1);
    if (result != 4)
    {
      return result;
    }

    v7 = a1[6];
    *(v7 + 172) = 2;
    v8 = ERR_save_state();
    std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100]((v7 + 184), v8);
  }

  return 4;
}

int BN_num_bits(const BIGNUM *a)
{
  top = a->top;
  if (top >= 1)
  {
    d = a->d;
    while (!a->d[top - 1])
    {
      v3 = __OFSUB__(top--, 1);
      if ((top < 0) ^ v3 | (top == 0))
      {
        return 0;
      }
    }

    return BN_num_bits_word(d[top - 1]) + ((top - 1) << 6);
  }

  if (top)
  {
    d = a->d;
    return BN_num_bits_word(d[top - 1]) + ((top - 1) << 6);
  }

  return 0;
}

uint64_t RSA_verify_raw(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a1)
  {
    v11 = 67;
    v12 = 234;
    goto LABEL_19;
  }

  if (BN_num_bytes(*(a1 + 8)) >= 0x401)
  {
    v11 = 500;
    v12 = 238;
LABEL_19:
    ERR_put_error(4, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v12);
    return 0;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0;
  v13 = *(a1 + 8);
  if (!v13 || !*(a1 + 16))
  {
    v11 = 144;
    v12 = 247;
    goto LABEL_19;
  }

  v14 = BN_num_bytes(v13);
  if (!RSA_public_key_to_bytes(&v28, &v27, a1) || !v28)
  {
    return 0;
  }

  v15 = ccrsa_import_pub_n();
  v16 = malloc_type_malloc(24 * v15 + 40, 0x10600407F0B3959uLL);
  if (!v16)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      RSA_verify_raw_cold_2();
    }

    return 0;
  }

  v17 = v16;
  *v16 = v15;
  v18 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v19 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v20 = v19;
  if (!v18 || !v19)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      RSA_verify_raw_cold_1();
    }

    free(v17);
    if (v18)
    {
      free(v18);
    }

    if (v20)
    {
      free(v20);
    }

    return 0;
  }

  ccn_zero();
  ccn_zero();
  ccn_read_uint();
  if (ccrsa_import_pub() || ccrsa_pub_crypt())
  {
    goto LABEL_14;
  }

  if (a7 == 3)
  {
    *a2 = v14;
    ccn_write_uint_padded();
    v23 = a3;
    if ((v14 & 0x80000000) == 0)
    {
LABEL_34:
      *a2 = v14;
      v21 = 1;
LABEL_43:
      if (v23 != a3 && v23)
      {
        free(v23);
      }

      goto LABEL_15;
    }

    goto LABEL_39;
  }

  v24 = malloc_type_malloc(v14, 0xDF2917AEuLL);
  if (v24)
  {
    v23 = v24;
    *a2 = v14;
    ccn_write_uint_padded();
    if (a7 != 1)
    {
      v25 = 143;
      v26 = 314;
      goto LABEL_42;
    }

    if (RSA_padding_check_PKCS1_type_1(a3, a2, v14, v23, v14))
    {
      v14 = *a2;
      if ((*a2 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_39:
    v25 = 136;
    v26 = 319;
LABEL_42:
    ERR_put_error(4, 0, v25, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v26);
    v21 = 0;
    goto LABEL_43;
  }

  ERR_put_error(4, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", 295);
LABEL_14:
  v21 = 0;
LABEL_15:
  if (v28)
  {
    OPENSSL_free(v28);
    v28 = 0;
  }

  free(v18);
  free(v20);
  free(v17);
  return v21;
}

BOOL CBS_is_valid_asn1_bitstring(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  v2 = **a1;
  if (v2 > 7)
  {
    return 0;
  }

  if (!**a1)
  {
    return 1;
  }

  if (v1 == 1)
  {
    return 0;
  }

  return (v1[*a1 - 1] & ~(-1 << v2)) == 0;
}

int BN_num_bits_word(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (!HIDWORD(a1))
  {
    v1 = a1;
  }

  v2 = (a1 != 0) | (32 * (HIDWORD(a1) != 0)) | (16 * (v1 >> 16 != 0));
  if (v1 >> 16)
  {
    v1 >>= 16;
  }

  v3 = v2 | (8 * (v1 > 0xFF));
  if (v1 > 0xFF)
  {
    v1 >>= 8;
  }

  v4 = v3 | (4 * (v1 > 0xF));
  if (v1 > 0xF)
  {
    v1 >>= 4;
  }

  v5 = v4 | (2 * (v1 > 3));
  if (v1 > 3)
  {
    v1 >>= 2;
  }

  if (v1 <= 1)
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t bssl::tls_open_change_cipher_spec(bssl *a1, unsigned __int8 **a2, ssl_st *a3, unsigned __int16 *a4, unint64_t a5)
{
  v11 = -86;
  v9 = 0;
  v10 = 0;
  result = bssl::tls_open_record(a1, &v11, &v9, a2, a3, a4, a5);
  if (!result)
  {
    if (v11 == 20)
    {
      if (v10 == 1 && *v9 == 1)
      {
        bssl::ssl_do_msg_callback(a1, 0, 20, v9, 1);
        return 0;
      }

      ERR_put_error(16, 0, 103, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", 403);
      v8 = 47;
    }

    else
    {
      ERR_put_error(16, 0, 225, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", 397);
      v8 = 10;
    }

    LOBYTE(a3->version) = v8;
    return 4;
  }

  return result;
}

uint64_t bssl::tls1_record_handshake_hashes_for_channel_id(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  if (*(*this + 104))
  {
    return 0;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(this + 192);
  v5 = bssl::SSLTranscript::DigestLen((this + 424));
  if (v5 >= 0x41)
  {
    abort();
  }

  *(v4 + 368) = v5;
  result = bssl::SSLTranscript::GetHash((this + 424), (*(this + 192) + 304), &v6);
  if (result)
  {
    if (v6 != *(*(this + 192) + 368))
    {
      bssl::tls1_record_handshake_hashes_for_channel_id();
    }
  }

  return result;
}

uint64_t __nw_protocol_boringssl_input_available_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  nw_frame_unclaimed_bytes();
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = (*(*(v5 + 232) + 16))();
  v7 = *v4;
  if ((v6 & 1) == 0 && (!v7 || (*(v7 + 435) & 1) == 0))
  {
    __nw_protocol_boringssl_input_available_block_invoke_cold_1(v4, v7, &v9);
  }

  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

void *SSL_provide_quic_data(uint64_t a1, int a2, const void *a3, size_t a4)
{
  if (!*(a1 + 168))
  {
    v9 = 66;
    v10 = 854;
    goto LABEL_10;
  }

  v5 = *(a1 + 48);
  if (*(v5 + 200) != a2)
  {
    v9 = 299;
    v10 = 859;
    goto LABEL_10;
  }

  v8 = *(v5 + 224);
  if (v8)
  {
    v8 = *v8;
  }

  if (__CFADD__(v8, a4) || v8 + a4 > SSL_quic_max_handshake_flight_len(a1, a2))
  {
    v9 = 150;
    v10 = 866;
LABEL_10:
    ERR_put_error(16, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", v10);
    return 0;
  }

  return bssl::tls_append_handshake_data(a1, a3, a4);
}

void *__boringssl_context_set_enable_message_mode_block_invoke(uint64_t a1, int a2, const void *a3, size_t a4)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = -1431655766;
    }

    if (a2)
    {
      a2 = v5;
    }

    else
    {
      a2 = 0;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
LABEL_13:
    v7 = SSL_provide_quic_data(*(*(a1 + 32) + 392), a2, a3, a4);
    return (v7 != 0);
  }

  if (a2 != 3)
  {
    a2 = -1431655766;
    goto LABEL_13;
  }

  result = SSL_provide_quic_data(*(*(a1 + 32) + 392), 3, a3, a4);
  if (!result)
  {
    return result;
  }

  v7 = SSL_process_quic_post_handshake(*(*(a1 + 32) + 392));
  return (v7 != 0);
}

uint64_t SSL_quic_max_handshake_flight_len(uint64_t a1, int a2)
{
  v2 = 0x4000;
  if (a2 <= 1)
  {
    if (a2)
    {
      return 0;
    }

    return v2;
  }

  if (a2 == 2)
  {
    if (*(a1 + 180))
    {
      if ((*(*(a1 + 8) + 308) & 1) == 0)
      {
        return 0x4000;
      }

      v2 = *(a1 + 152);
    }

    else
    {
      v2 = 2 * *(a1 + 152);
    }

    if (v2 > 0x4000)
    {
      return v2;
    }

    return 0x4000;
  }

  if (a2 != 3)
  {
    return 0;
  }

  return v2;
}