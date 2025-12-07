void nw_boringssl_read_cold_1()
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

int SSL_get_error(const SSL *s, int ret_code)
{
  if (ret_code > 0)
  {
    return 0;
  }

  v5 = ERR_peek_error();
  if (v5)
  {
    if (HIBYTE(v5) == 2)
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }

  result = *(s->handshake_func + 49);
  if (!ret_code)
  {
    if (result == 6)
    {
      return 6;
    }

    else
    {
      return 5;
    }
  }

  if ((result - 11) >= 0xA && result != 4)
  {
    if (result == 3)
    {
      bbio = s->bbio;
      if (BIO_should_write(bbio))
      {
        return 3;
      }

      if (!BIO_should_read(bbio))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (result != 2)
      {
        return 5;
      }

      if (!*&s->hit)
      {
        bbio = s->wbio;
        if (!BIO_should_read(bbio))
        {
          if (!BIO_should_write(bbio))
          {
LABEL_26:
            if (BIO_should_io_special(bbio))
            {
              retry_reason = BIO_get_retry_reason(bbio);
              if (retry_reason == 3)
              {
                v9 = 8;
              }

              else
              {
                v9 = 5;
              }

              if (retry_reason == 2)
              {
                return 7;
              }

              else
              {
                return v9;
              }
            }

            return 5;
          }

          return 3;
        }
      }
    }

    return 2;
  }

  return result;
}

void nw_protocol_boringssl_output_available(uint64_t a1)
{
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_output_available_cold_1();
      }

      if (nw_protocol_get_output_handler())
      {
        if ((*(v2 + 350) & 2) != 0)
        {
          if ((*(v2 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_output_available_cold_2();
          }
        }

        else if ((*(v2 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_output_available_cold_3(v2);
        }

        if ((*(v2 + 348) & 0x20) != 0 && (nw_protocol_boringssl_write_frames(v2), (*(v2 + 348) & 0x20) != 0))
        {
          if ((*(v2 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_output_available_cold_4();
          }
        }

        else
        {
          state = boringssl_session_get_state(*(v2 + 296));
          if (state == 1)
          {
            nw_protocol_boringssl_handshake_negotiate(v2);
          }

          else if (state == 2)
          {
            if ((*(v2 + 435) & 1) == 0)
            {
              nw_protocol_boringssl_output_available_cold_5();
            }

            nw_protocol_get_input_handler();
            nw_protocol_output_available();
          }
        }
      }
    }
  }
}

void nw_protocol_boringssl_output_available_cold_1()
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

uint64_t bssl::ssl_handle_open_record(bssl *a1, _BYTE *a2, int a3, ssl_st *a4, int a5)
{
  *a2 = 0;
  v6 = *(a1 + 6);
  v7 = *(v6 + 92);
  if (a3 != 2)
  {
    if (v7 < a4)
    {
      abort();
    }

    *(v6 + 88) += a4;
    LOWORD(v7) = v7 - a4;
    *(v6 + 92) = v7;
    *(v6 + 94) -= a4;
    if (!a3)
    {
      return 1;
    }
  }

  if (!v7)
  {
    *(v6 + 88) = *(v6 + 90);
    *(v6 + 94) = *(v6 + 96);
  }

  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (a3 != 4)
  {
    if (a3 == 3)
    {
      result = 0;
      *(v6 + 196) = 6;
      return result;
    }

    if (a3 == 2)
    {
      result = bssl::ssl_read_buffer_extend_to(a1, a4);
      if (result < 1)
      {
        return result;
      }

LABEL_13:
      result = 1;
      *a2 = 1;
      return result;
    }

LABEL_20:
    bssl::ssl_handle_open_record();
  }

  if (a5)
  {
    bssl::ssl_send_alert(a1, 2, a5);
  }

  return 0xFFFFFFFFLL;
}

BOOL bssl::SSLAEADContext::Open(bssl::SSLAEADContext *this, char **a2, char a3, __int16 a4, unint64_t a5, int a6, int a7, int a8, char *a9, char *a10)
{
  v11 = a9;
  v12 = a10;
  __dst[5] = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    *a2 = a9;
    a2[1] = a10;
    return 1;
  }

  v17 = *(this + 616);
  if ((v17 & 8) != 0)
  {
    v19 = 0;
  }

  else
  {
    v18 = bssl::SSLAEADContext::MaxOverhead(this);
    v19 = a10 - v18;
    if (a10 < v18)
    {
      v20 = 231;
LABEL_20:
      ERR_put_error(16, 0, 112, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_aead_ctx.cc", v20);
      return 0;
    }

    v17 = *(this + 616);
  }

  memset(&__dst[3], 170, 13);
  if ((v17 & 0x10) == 0)
  {
    __dst[3] = bswap64(a5);
    LOBYTE(__dst[4]) = a3;
    BYTE1(__dst[4]) = HIBYTE(a4);
    BYTE2(__dst[4]) = a4;
    if ((v17 & 8) == 0)
    {
      *(&__dst[4] + 3) = bswap32(v19) >> 16;
    }
  }

  memset(__dst, 170, 24);
  v22 = *(this + 604);
  v23 = *(this + 604);
  if ((v17 & 4) != 0)
  {
    v22 -= *(this + 605);
    if (v22)
    {
      bzero(__dst, v22);
    }
  }

  else if (*(this + 604))
  {
    memcpy(__dst, this + 592, *(this + 604));
  }

  else
  {
    v22 = 0;
  }

  v24 = *(this + 605);
  if (v17)
  {
    v12 = &a10[-v24];
    if (a10 < v24)
    {
      v20 = 258;
      goto LABEL_20;
    }

    if (*(this + 605))
    {
      memcpy(__dst + v22, a9, *(this + 605));
    }

    v11 = &a9[v24];
  }

  else
  {
    if (v24 != 8)
    {
      bssl::SSLAEADContext::Open();
    }

    *(__dst + v22) = bswap64(a5);
    v24 = 8;
  }

  v25 = v22 + v24;
  if ((v17 & 4) != 0)
  {
    if (v25 != v23)
    {
      bssl::SSLAEADContext::Open();
    }

    if (v23)
    {
      v26 = this + 592;
      v27 = __dst;
      v28 = v22 + v24;
      do
      {
        v29 = *v26++;
        *v27++ ^= v29;
        --v28;
      }

      while (v28);
    }
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v30 = EVP_AEAD_CTX_open(this + 8, v11, &v32, v12, __dst, v25, v11, v12);
  result = v30 != 0;
  if (v30)
  {
    v31 = v32;
    if (v12 < v32)
    {
      v31 = v12;
    }

    *a2 = v11;
    a2[1] = v31;
  }

  return result;
}

uint64_t bssl::ssl_max_handshake_message_len(bssl *this, const ssl_st *a2)
{
  if (SSL_in_init(this))
  {
    if ((*(this + 180) & 1) != 0 && (*(*(this + 1) + 308) & 1) == 0)
    {
      return 0x4000;
    }
  }

  else
  {
    if (bssl::ssl_protocol_version(this, v3, v4) < 0x304)
    {
      return 0;
    }

    if (*(this + 180))
    {
      return 1;
    }
  }

  v6 = *(this + 38);
  if (v6 <= 0x4000)
  {
    return 0x4000;
  }

  else
  {
    return v6;
  }
}

uint64_t bssl::tls_can_accept_handshake_data(bssl *this, const ssl_st *a2, unsigned __int8 *a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v5;
  v11[1] = v5;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::parse_message(this, v11, &v10))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 523);
    v7 = 80;
LABEL_5:
    result = 0;
    LOBYTE(a2->version) = v7;
    return result;
  }

  v8 = v10;
  if (v8 > bssl::ssl_max_handshake_message_len(this, v6) + 4)
  {
    ERR_put_error(16, 0, 150, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 530);
    v7 = 47;
    goto LABEL_5;
  }

  return 1;
}

int BIO_read(BIO *b, void *data, int len)
{
  if (!b || !b->method || (bread = b->method->bread) == 0)
  {
    v6 = 115;
    v7 = 129;
LABEL_9:
    ERR_put_error(17, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio.c", v7);
    return -2;
  }

  if (!LODWORD(b->cb_arg))
  {
    v6 = 114;
    v7 = 133;
    goto LABEL_9;
  }

  if (len < 1)
  {
    return 0;
  }

  result = (bread)(b, data);
  if (result >= 1)
  {
    b->next_bio = (b->next_bio + result);
  }

  return result;
}

void nw_protocol_boringssl_read_bytes_cold_1()
{
  OUTLINED_FUNCTION_22();
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }
}

_WORD *bssl::SSLBuffer::DiscardConsumed(_WORD *this)
{
  if (!this[6])
  {
    this[4] = this[5];
    this[7] = this[8];
  }

  return this;
}

uint64_t CRYPTO_set_thread_local(unsigned int a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (pthread_once(&g_thread_local_init_once, thread_local_init))
  {
    abort();
  }

  if (!g_thread_local_key_created)
  {
    goto LABEL_9;
  }

  v6 = pthread_getspecific(g_thread_local_key);
  if (!v6)
  {
    v8 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
    if (!v8)
    {
      goto LABEL_9;
    }

    v6 = v8;
    *(v8 + 4) = 0;
    *v8 = 0u;
    v8[1] = 0u;
    if (pthread_setspecific(g_thread_local_key, v8))
    {
      free(v6);
      goto LABEL_9;
    }
  }

  if (!pthread_mutex_lock(&g_destructors_lock))
  {
    *(&g_destructors + a1) = a3;
    pthread_mutex_unlock(&g_destructors_lock);
    *(v6 + a1) = a2;
    return 1;
  }

LABEL_9:
  a3(a2);
  return 0;
}

uint64_t bssl::ssl_protocol_version_from_wire(bssl *this, unsigned __int16 *a2)
{
  v2 = 0;
  if (a2 > 64548)
  {
    switch(a2)
    {
      case 0xFC25:
        LOWORD(a2) = 772;
        break;
      case 0xFEFD:
        LOWORD(a2) = 771;
        break;
      case 0xFEFF:
        LOWORD(a2) = 770;
        break;
      default:
        return v2;
    }

    goto LABEL_3;
  }

  if ((a2 - 769) < 4)
  {
LABEL_3:
    *this = a2;
    return 1;
  }

  return v2;
}

const char *__cdecl SSL_CIPHER_get_name(const SSL_CIPHER *c)
{
  v1 = kUnknownCipher;
  if (c)
  {
    v1 = c;
  }

  return *v1;
}

uint64_t boringssl_ciphers_fillout_configuration_string(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  result = 0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a2 - 1;
    do
    {
      while (1)
      {
        v13 = boringssl_ciphers_value_to_string(*(a1 + 2 * v11));
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (v10)
        {
          if (v9 + 1 >= a4)
          {
            return 0;
          }

          *(a3 + v9++) = 58;
        }

        v15 = strlen(v13);
        v16 = v15 + v9;
        if (v15 + v9 >= a4)
        {
          return 0;
        }

        strncpy((a3 + v9), v14, v15);
        v10 = 1;
        v9 = v16;
        if (v12 == v11++)
        {
          return a3;
        }
      }

      ++v11;
    }

    while (a2 != v11);
    result = a3;
    if (v10)
    {
      return result;
    }

    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_ciphers_fillout_configuration_string_cold_1();
      }
    }

    return 0;
  }

  return result;
}

const char *boringssl_ciphers_value_to_string(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  cipher_by_value = SSL_get_cipher_by_value(a1);
  if (!cipher_by_value)
  {
    v4 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      v5 = 136446722;
      v6 = "boringssl_ciphers_value_to_string";
      v7 = 1024;
      v8 = 31;
      v9 = 1024;
      v10 = a1;
      _os_log_impl(&dword_1A8FF5000, v4, OS_LOG_TYPE_INFO, "%{public}s(%d) Failed to get boringssl cipher for ciphersuite 0x%04x", &v5, 0x18u);
    }

    return 0;
  }

  return SSL_CIPHER_get_name(cipher_by_value);
}

uint64_t SSL_set_strict_cipher_list(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 309);
  if ((v4 & 0x800) != 0)
  {
    is_opaque = (v4 >> 12) & 1;
  }

  else
  {
    is_opaque = RSA_is_opaque();
    v2 = *(a1 + 8);
  }

  return bssl::ssl_create_cipher_list((v2 + 24), is_opaque != 0, a2, 1);
}

uint64_t boringssl_context_set_tls13_ciphersuite_chacha20poly1305_enabled(uint64_t result, int a2)
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
          v3 = 8;
        }

        else
        {
          v3 = 0;
        }

        *(v2 + 552) = *(v2 + 552) & 0xF7 | v3;
        return SSL_set_tls13_ciphersuite_chacha20poly1305_enabled(result, a2);
      }
    }
  }

  return result;
}

uint64_t boringssl_context_set_tls13_ciphersuite_aesgcm_enabled(uint64_t result, int a2)
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
          v3 = 4;
        }

        else
        {
          v3 = 0;
        }

        *(v2 + 552) = *(v2 + 552) & 0xFB | v3;
        return SSL_set_tls13_ciphersuite_aesgcm_enabled(result, a2);
      }
    }
  }

  return result;
}

uint64_t SSL_set_tls13_ciphersuite_chacha20poly1305_enabled(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 120) + 248) = *(*(result + 120) + 248) & 0xFD | v2;
  return result;
}

int CRYPTO_set_ex_data(CRYPTO_EX_DATA *ad, int idx, void *val)
{
  if (idx < 0)
  {
    abort();
  }

  sk = ad->sk;
  if (sk || (sk = OPENSSL_sk_new_null(), (ad->sk = sk) != 0))
  {
    v7 = EVP_MD_CTX_md(sk);
    v8 = idx;
    if (v7 > idx)
    {
LABEL_8:
      OPENSSL_sk_set(ad->sk, v8, val);
      LODWORD(sk) = 1;
    }

    else
    {
      v9 = idx - v7 + 1;
      while (1)
      {
        sk = OPENSSL_sk_push(ad->sk, 0);
        if (!sk)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return sk;
}

uint64_t OPENSSL_sk_set(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (!a1 || *a1 <= a2)
  {
    return 0;
  }

  *(a1[1] + 8 * a2) = a3;
  return a3;
}

void SSL_set_bio(SSL *s, BIO *rbio, BIO *wbio)
{
  p_wbio = &s->wbio;
  v7 = s->wbio;
  if (*&s->wbio != __PAIR128__(wbio, rbio))
  {
    if (rbio && rbio == wbio)
    {
      BIO_up_ref(rbio);
      v7 = *p_wbio;
    }

    if (v7 == rbio || ((bbio = s->bbio, std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](p_wbio, rbio), bbio == wbio) ? (v9 = v7 == bbio) : (v9 = 1), v9))
    {

      std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](&s->bbio, wbio);
    }
  }
}

uint64_t boringssl_session_set_bio(uint64_t result, BIO *a2, BIO *a3)
{
  if (result)
  {
    v3 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (a3)
      {
        if (a2)
        {
          v6 = *(v3 + 8);
          if (v6)
          {
            if (*(v6 + 392))
            {
              BIO_up_ref(a2);
              SSL_set_bio(*(v6 + 392), a2, a3);
              return 1;
            }

            else
            {
              return 0;
            }
          }
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

BIO *std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](BIO **a1, BIO *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return BIO_free(result);
  }

  return result;
}

void *boringssl_context_set_remote_address(void *result, unsigned __int8 *a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      if (a2)
      {
        v2 = result[1];
        if (v2)
        {
          v3 = a2[1];
          if (v3 == 30 || v3 == 2)
          {
            return memcpy((v2 + 216), a2, *a2);
          }
        }
      }
    }
  }

  return result;
}

NSObject *nw_protocol_boringssl_get_subject_endpoint(void *a1)
{
  v1 = a1;
  v2 = nw_endpoint_copy_proxy_original_endpoint();
  v3 = v2;
  if (v2)
  {
    v4 = v2;

    v1 = v4;
  }

  v5 = v1;
  v6 = nw_endpoint_copy_parent_endpoint();
  v7 = v5;
  if (v6)
  {
    v8 = v6;
    v9 = v5;
    do
    {
      v7 = v8;

      v8 = nw_endpoint_copy_parent_endpoint();
      v9 = v7;
    }

    while (v8);
  }

  if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_address))
  {
    v10 = v7;

    v5 = v10;
  }

  v11 = v5;

  return v5;
}

char *nw_protocol_boringssl_get_subject_name(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    parent_endpoint_domain = 0;
    goto LABEL_8;
  }

  v6 = nw_protocol_boringssl_get_subject_endpoint(v4);

  v5 = v6;
  if (nw_endpoint_get_type(v5) == nw_endpoint_type_host)
  {
    hostname = nw_endpoint_get_hostname(v5);
LABEL_5:
    parent_endpoint_domain = hostname;
LABEL_6:

    goto LABEL_8;
  }

  if (nw_endpoint_get_type(v5) != nw_endpoint_type_address)
  {
    if (nw_endpoint_get_type(v5) == nw_endpoint_type_bonjour_service)
    {
      hostname = nw_endpoint_get_bonjour_fullname();
    }

    else
    {
      if (nw_endpoint_get_type(v5) != (nw_endpoint_type_url|nw_endpoint_type_address))
      {
        parent_endpoint_domain = 0;
        goto LABEL_6;
      }

      hostname = nw_endpoint_get_srv_name();
    }

    goto LABEL_5;
  }

  parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain();
  if (parent_endpoint_domain)
  {
    goto LABEL_6;
  }

  parent_endpoint_domain = nw_endpoint_copy_address_string(v5);

  v10 = v3[39];
  if (v10)
  {
    free(v10);
  }

  v3[39] = parent_endpoint_domain;
LABEL_8:

  return parent_endpoint_domain;
}

uint64_t boringssl_session_set_peer_hostname(uint64_t a1, char *__s1, size_t __n)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0;
  }

  v4 = 0;
  if (__n - 1 > 0xFE)
  {
    return v4;
  }

  if (!__s1)
  {
    return v4;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    return v4;
  }

  v4 = *(v6 + 392);
  if (!v4)
  {
    return v4;
  }

  v7 = *(v6 + 72);
  if (v7)
  {
    free(v7);
    *(v6 + 72) = 0;
  }

  *(v6 + 72) = strndup(__s1, __n);
  if (!*(v6 + 72))
  {
    return 0;
  }

  is_valid_sni_value = boringssl_helper_is_valid_sni_value(__s1, __n);
  if (is_valid_sni_value)
  {
    if (!SSL_set_tlsext_host_name(v4, __s1))
    {
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (!WeakRetained || (v10 = WeakRetained, v11 = objc_loadWeakRetained((v6 + 16)), v12 = v11[435], v11, v10, (v12 & 1) == 0))
      {
        v13 = objc_loadWeakRetained((v6 + 16));
        if (v13)
        {
          v14 = objc_loadWeakRetained((v6 + 16));
          v15 = (v14[435] & 1) == 0;
        }

        else
        {
          v15 = 1;
        }

        v4 = 0;
        if (v15 && g_boringssl_log)
        {
          v24 = g_boringssl_log;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            boringssl_session_set_peer_hostname_cold_2();
          }

LABEL_33:
          v4 = is_valid_sni_value ^ 1u;

          return v4;
        }

        return v4;
      }

      return 0;
    }

    return 1;
  }

  v17 = objc_loadWeakRetained((v6 + 16));
  if (v17)
  {
    v18 = v17;
    v19 = objc_loadWeakRetained((v6 + 16));
    v20 = v19[435];

    if (v20)
    {
      return 1;
    }
  }

  v21 = objc_loadWeakRetained((v6 + 16));
  if (v21)
  {
    v22 = objc_loadWeakRetained((v6 + 16));
    v23 = (v22[435] & 1) == 0;
  }

  else
  {
    v23 = 1;
  }

  v4 = 1;
  if (v23 && g_boringssl_log)
  {
    v24 = g_boringssl_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      boringssl_session_set_peer_hostname_cold_1();
    }

    goto LABEL_33;
  }

  return v4;
}

uint64_t boringssl_helper_is_valid_sni_value(uint64_t a1, uint64_t a2)
{
  IsDNSName = 0;
  v9 = *MEMORY[0x1E69E9840];
  if (a1 && (a2 - 1) <= 0xFE)
  {
    memset(v8, 0, sizeof(v8));
    __memcpy_chk();
    v4 = 0;
    while (*(v8 + v4) && *(v8 + v4) != 42)
    {
      if (a2 == ++v4)
      {
        v5 = CFStringCreateWithCString(0, v8, 0x8000100u);
        if (v5)
        {
          v6 = v5;
          IsDNSName = SecFrameworkIsDNSName();
          CFRelease(v6);
          return IsDNSName;
        }

        return 0;
      }
    }

    return 0;
  }

  return IsDNSName;
}

BOOL SSL_set_tlsext_host_name(uint64_t a1, const char *a2)
{
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 160), 0);
  if (!a2)
  {
    return 1;
  }

  if (strlen(a2) - 256 > 0xFFFFFFFFFFFFFF00)
  {
    v5 = OPENSSL_strdup(a2);
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 160), v5);
    return *(a1 + 160) != 0;
  }

  else
  {
    ERR_put_error(16, 0, 213, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2544);
    return 0;
  }
}

void std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    OPENSSL_free(v3);
  }
}

const char *OPENSSL_strdup(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result) + 1;

    return OPENSSL_memdup(v1, v2);
  }

  return result;
}

void *OPENSSL_memdup(const void *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = OPENSSL_malloc(a2);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, a2);
}

void *boringssl_context_set_enable_message_mode(void *a1, int a2)
{
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v16[9] = v2;
      v17 = v3;
      v4 = a1[1];
      if (v4)
      {
        v5 = a2 == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        if (SSL_set_quic_method(*(v4 + 392), &boringssl_quic_method))
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __boringssl_context_set_enable_message_mode_block_invoke;
          v16[3] = &__block_descriptor_40_e15_B28__0i8r_12Q20lu32l8;
          v16[4] = v4;
          a1 = MEMORY[0x1AC57F4F0](v16);
LABEL_15:

          return a1;
        }

        WeakRetained = objc_loadWeakRetained((v4 + 16));
        if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((v4 + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
        {
          v12 = objc_loadWeakRetained((v4 + 16));
          if (v12)
          {
            v13 = objc_loadWeakRetained((v4 + 16));
            v14 = (v13[435] & 1) == 0;
          }

          else
          {
            v14 = 1;
          }

          a1 = 0;
          if (!v14 || !g_boringssl_log)
          {
            goto LABEL_15;
          }

          v15 = g_boringssl_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_enable_message_mode_cold_1();
          }
        }
      }

      a1 = 0;
      goto LABEL_15;
    }

    a1 = 0;
  }

  return a1;
}

uint64_t boringssl_session_apply_protocol_options_for_transport(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        if ((*(v5 + 548) & 0x10) != 0 || !*(v5 + 72))
        {
          v20 = v4;
          host_with_numeric_port = 0;
          v21 = *(v5 + 504);
          *(v5 + 504) = v20;
LABEL_49:

          v27 = host_with_numeric_port;
          v18 = nw_protocol_options_access_handle();

          goto LABEL_26;
        }

        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (nw_endpoint_get_type(host_with_numeric_port) != nw_endpoint_type_address)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v5 + 72)];
          v23 = v22;
          if (v22 && ([v22 hasSuffix:@".local"] & 1) == 0 && (objc_msgSend(v23, "hasSuffix:", @".local.") & 1) == 0)
          {
            [v23 containsString:@"."];
          }

          v24 = sec_protocol_configuration_copy_transformed_options_for_host();
          goto LABEL_48;
        }

        v7 = host_with_numeric_port;
        host_with_numeric_port = v7;
        if (*a1 == -1252936367)
        {
          v8 = *(a1 + 8);
          if (v8)
          {
            address = nw_endpoint_get_address(v7);
            sa_family = address->sa_family;
            if (sa_family == 30)
            {
              if (address->sa_len < 0x1Cu)
              {
                goto LABEL_44;
              }

              if (*&address->sa_data[6])
              {
                if (*&address->sa_data[6] == 254)
                {
                  if ((*&address->sa_data[6] & 0xC000) != 0x8000)
                  {
                    goto LABEL_44;
                  }
                }

                else if ((*&address->sa_data[6] & 0xFE) != 0xFC)
                {
                  goto LABEL_44;
                }
              }

              else if (*&address->sa_data[10] || *&address[1].sa_len || *&address[1].sa_data[2] != 0x1000000)
              {
                goto LABEL_44;
              }
            }

            else if (sa_family != 2 || address->sa_len < 0x10u || (v11 = bswap32(*&address->sa_data[2]), v12 = v11 & 0xFF000000, (v11 & 0xFF000000) != 0x7F000000) && ((v13 = v11 & 0xFFFF0000, v14 = v11 & 0xFFF00000, v13 != -1062731776) ? (v15 = v14 == -1408237568) : (v15 = 1), !v15 ? (v16 = v13 == -1442971648) : (v16 = 1), !v16 ? (v17 = v12 == 167772160) : (v17 = 1), !v17))
            {
LABEL_44:
              WeakRetained = objc_loadWeakRetained((v8 + 16));
              nw_protocol_upcast();
              nw_protocol_get_input_handler();

              v26 = nw_protocol_get_path();
              if ((nw_path_is_direct() & 1) == 0)
              {
                nw_path_is_local();
              }
            }
          }
        }

        v24 = sec_protocol_configuration_copy_transformed_options_for_address();
LABEL_48:
        v21 = *(v5 + 504);
        *(v5 + 504) = v24;
        goto LABEL_49;
      }
    }
  }

  v18 = 0;
LABEL_26:

  return v18;
}

unsigned __int16 *__boringssl_session_apply_protocol_options_for_transport_block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v276 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 40) + 504);
  if (!a2)
  {
    goto LABEL_302;
  }

  if (a2[1])
  {
    boringssl_context_set_max_version(*(a1 + 48), a2[1]);
  }

  if (*a2)
  {
    boringssl_context_set_min_version(*(a1 + 48), *a2);
  }

  v5 = (a2 + 369);
  boringssl_context_set_fallback(*(a1 + 48), (*(a2 + 369) >> 7) & 1);
  v6 = *(a1 + 48);
  v7 = *(a2 + 369);
  if ((v7 & 0x2000) != 0)
  {
    sct_enabled = 1;
  }

  else if ((v7 & 0x4000) != 0)
  {
    sct_enabled = 0;
  }

  else
  {
    sct_enabled = boringssl_config_get_sct_enabled();
  }

  boringssl_context_set_sct_enable(v6, sct_enabled);
  v9 = *(a1 + 48);
  if ((*v5 & 0x8000) != 0)
  {
    ocsp_enabled = 1;
  }

  else if ((*v5 & 0x10000) != 0)
  {
    ocsp_enabled = 0;
  }

  else
  {
    ocsp_enabled = boringssl_config_get_ocsp_enabled();
  }

  boringssl_context_set_ocsp_enable(v9, ocsp_enabled);
  v12 = *(a1 + 48);
  if ((*v5 & 0x200000) != 0)
  {
    renegotiation_enabled = 1;
  }

  else if ((*v5 & 0x400000) != 0)
  {
    renegotiation_enabled = 0;
  }

  else
  {
    renegotiation_enabled = boringssl_config_get_renegotiation_enabled();
  }

  boringssl_context_set_renegotiation(v12, renegotiation_enabled, v11);
  v14 = *(a1 + 48);
  if ((*v5 & 0x80000) != 0)
  {
    resumption_enabled = 1;
  }

  else if ((*v5 & 0x100000) != 0)
  {
    resumption_enabled = 0;
  }

  else
  {
    resumption_enabled = boringssl_config_get_resumption_enabled();
  }

  boringssl_context_set_resumption(v14, resumption_enabled);
  v16 = *(a1 + 48);
  if ((*v5 & 0x800) != 0)
  {
    tickets_enabled = 1;
  }

  else if ((*v5 & 0x100000) != 0)
  {
    tickets_enabled = 0;
  }

  else
  {
    tickets_enabled = boringssl_config_get_tickets_enabled();
  }

  boringssl_context_set_session_ticket_enabled(v16, tickets_enabled);
  v18 = *(a1 + 48);
  if ((*v5 & 0x200) != 0)
  {
    false_start_enabled = 1;
  }

  else if ((*v5 & 0x400) != 0)
  {
    false_start_enabled = 0;
  }

  else
  {
    false_start_enabled = boringssl_config_get_false_start_enabled();
  }

  boringssl_context_set_false_start(v18, false_start_enabled);
  boringssl_session_set_early_data_enabled(*(a1 + 48), (*v5 & 0x800000) != 0);
  v20 = *v5;
  if ((*v5 & 0x800000) != 0 && (*(*(a1 + 40) + 548) & 0x10) != 0 && *(a1 + 56) == 2)
  {
    boringssl_session_set_quic_early_data_context(*(a1 + 48), *(a2 + 43), *(a2 + 45));
    v20 = *v5;
  }

  boringssl_context_set_enforce_ev(*(a1 + 48), (v20 >> 17) & 1);
  boringssl_context_set_ats_enforced(*(a1 + 48), *v5 & 1);
  boringssl_context_set_ats_minimum_rsa_key_size(*(a1 + 48), *(a2 + 39));
  boringssl_context_set_ats_minimum_ecdsa_key_size(*(a1 + 48), *(a2 + 40));
  boringssl_context_set_ats_minimum_signature_algorithm(*(a1 + 48), *(a2 + 82));
  boringssl_context_set_ats_non_pfs_ciphersuite_allowed(*(a1 + 48), (*v5 >> 2) & 1);
  options = v4;
  if (*(*(a1 + 40) + 48) == 772)
  {
    is_opaque = RSA_is_opaque();
    if ((*v5 & 0x40000000) != 0)
    {
      v22 = (*v5 >> 29) & 1;
    }

    else
    {
      v22 = is_opaque;
    }

    boringssl_context_set_certificate_compression(*(a1 + 48), v22);
    v23 = *(a1 + 48);
    if ((*(a2 + 373) & 2) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = RSA_is_opaque();
    }

    boringssl_context_set_GREASE_enabled(v23, v24);
    enable_encrypted_client_hello = sec_protocol_options_get_enable_encrypted_client_hello(v4);
    v26 = *(a1 + 40);
    if (v26)
    {
      WeakRetained = objc_loadWeakRetained((v26 + 16));
      if (WeakRetained)
      {
        v28 = WeakRetained;
        v29 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v30 = v29[435];

        if (v30)
        {
          goto LABEL_59;
        }
      }

      v31 = *(a1 + 40);
      if (v31)
      {
        v32 = objc_loadWeakRetained((v31 + 16));
        if (v32)
        {
          v33 = objc_loadWeakRetained((*(a1 + 40) + 16));
          v34 = (v33[435] & 1) == 0;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          goto LABEL_59;
        }
      }
    }

    if (!g_boringssl_log)
    {
      goto LABEL_59;
    }

    v35 = g_boringssl_log;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
LABEL_58:

LABEL_59:
      boringssl_context_set_ech_grease_enabled(*(a1 + 48), enable_encrypted_client_hello);
      goto LABEL_60;
    }

    v113 = *(a1 + 40);
    if (v113)
    {
      v132 = objc_loadWeakRetained((v113 + 16));
      v133 = *(a1 + 40);
      v238 = v132;
      if (v132)
      {
        v114 = v133 != 0;
        if (v133)
        {
          v132 = objc_loadWeakRetained((v133 + 16));
          v133 = *(a1 + 40);
        }

        else
        {
          v132 = 0;
        }

        v117 = v132 + 351;
      }

      else
      {
        v114 = 0;
        v117 = &unk_1A9098A9F;
      }

      v235 = v132;
      if (v133)
      {
        v115 = objc_loadWeakRetained((v133 + 16));
        v116 = 0;
      }

      else
      {
        v115 = 0;
        v116 = 1;
      }
    }

    else
    {
      v114 = 0;
      v115 = 0;
      v116 = 1;
      v117 = &unk_1A9098A9F;
    }

    v247 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
    v248 = 1024;
    v222 = "disabled";
    v249 = 1980;
    v250 = 2082;
    *buf = 136447234;
    if (enable_encrypted_client_hello)
    {
      v222 = "enabled";
    }

    v251 = v117;
    v252 = 2048;
    v253 = v115;
    v254 = 2080;
    *v255 = v222;
    _os_log_debug_impl(&dword_1A8FF5000, v35, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] ECH is %s", buf, 0x30u);
    if (v116)
    {
      if (!v114)
      {
        goto LABEL_318;
      }
    }

    else
    {

      if (!v114)
      {
LABEL_318:
        if (!v113)
        {
          goto LABEL_58;
        }

        goto LABEL_322;
      }
    }

    if (!v113)
    {
      goto LABEL_58;
    }

LABEL_322:

    goto LABEL_58;
  }

LABEL_60:
  v274 = 0;
  v275 = 0;
  v36 = (a2 + 12);
  v37 = (*(a1 + 40) + 244);
  if (*(a2 + 12) == 0)
  {
    MEMORY[0x1AC57F9A0](v37, v36);
  }

  else
  {
    uuid_copy(v37, v36);
  }

  v38 = *(a2 + 2);
  if (v38)
  {
    v39 = boringssl_context_set_experiment_identifier(*(a1 + 48), v38);
  }

  else
  {
    v39 = 1;
  }

  if (*(a2 + 30) && *(a2 + 31))
  {
    v40 = MEMORY[0x1AC57F4F0]();
    v41 = *(a1 + 40);
    v42 = *(v41 + 208);
    *(v41 + 208) = v40;

    objc_storeStrong((*(a1 + 40) + 200), *(a2 + 31));
  }

  v43 = *v5;
  if ((*v5 & 0x10000000) != 0)
  {
    if ((v43 & 0x4000000) != 0)
    {
      v45 = 3;
    }

    else
    {
      v45 = (v43 >> 27) & ((*(*(a1 + 40) + 548) & 0x10) >> 4);
    }

    v44 = *(a1 + 48);
  }

  else
  {
    v44 = *(a1 + 48);
    if ((*(*(a1 + 40) + 548) & 0x10) != 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = 3;
    }
  }

  boringssl_context_set_verify_mode(v44, v45);
  v46 = *(a2 + 1);
  if (v46)
  {
    v47 = strlen(*(a2 + 1));
    boringssl_session_set_peer_hostname(*(a1 + 48), v46, v47);
  }

  if ((*v5 & 0x20) != 0)
  {
    v48 = *(a1 + 48);
    if (v48)
    {
      if (*v48 == -1252936367)
      {
        v49 = *(v48 + 8);
        if (v49)
        {
          v50 = *(v49 + 392);
          if (v50)
          {
            if (!SSL_set_tlsext_host_name(v50, 0))
            {
              v70 = objc_loadWeakRetained((v49 + 16));
              if (!v70 || (v71 = v70, v72 = objc_loadWeakRetained((v49 + 16)), v73 = v72[435], v72, v71, (v73 & 1) == 0))
              {
                v74 = objc_loadWeakRetained((v49 + 16));
                if (v74)
                {
                  v75 = objc_loadWeakRetained((v49 + 16));
                  v76 = (v75[435] & 1) == 0;
                }

                else
                {
                  v76 = 1;
                }

                if (v76)
                {
                  if (g_boringssl_log)
                  {
                    v134 = g_boringssl_log;
                    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                    {
                      __boringssl_session_apply_protocol_options_for_transport_block_invoke_cold_1();
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

  v51 = *(a2 + 24);
  if (v51)
  {
    v52 = boringssl_session_state_create_from_dispatch_data(*(a1 + 40), v51);
    v53 = boringssl_session_set_session_state(*(a1 + 48), v52);
    v54 = *(a1 + 40);
    if (!v54)
    {
      goto LABEL_95;
    }

    v55 = objc_loadWeakRetained((v54 + 16));
    if (!v55 || (v56 = v55, v57 = objc_loadWeakRetained((*(a1 + 40) + 16)), v58 = v57[435], v57, v56, (v58 & 1) == 0))
    {
      v59 = *(a1 + 40);
      if (!v59)
      {
        goto LABEL_95;
      }

      v60 = objc_loadWeakRetained((v59 + 16));
      if (v60)
      {
        v61 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v62 = (v61[435] & 1) == 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
LABEL_95:
        if (g_boringssl_log)
        {
          v63 = g_boringssl_log;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            v64 = *(a1 + 40);
            if (v64)
            {
              v65 = objc_loadWeakRetained((v64 + 16));
              v66 = *(a1 + 40);
              v235 = v65;
              if (v65)
              {
                v239 = v66 != 0;
                if (v66)
                {
                  v65 = objc_loadWeakRetained((v66 + 16));
                  v66 = *(a1 + 40);
                }

                else
                {
                  v65 = 0;
                }

                v69 = v65 + 351;
              }

              else
              {
                v239 = 0;
                v69 = &unk_1A9098A9F;
              }

              v230 = v65;
              if (v66)
              {
                v67 = objc_loadWeakRetained((v66 + 16));
                v68 = 0;
              }

              else
              {
                v67 = 0;
                v68 = 1;
              }
            }

            else
            {
              v239 = 0;
              v67 = 0;
              v68 = 1;
              v69 = &unk_1A9098A9F;
            }

            v247 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
            v248 = 1024;
            v77 = "not set";
            v249 = 2029;
            *buf = 136447234;
            v250 = 2082;
            if (v53)
            {
              v77 = "set";
            }

            v251 = v69;
            v252 = 2048;
            v253 = v67;
            v254 = 2082;
            *v255 = v77;
            _os_log_impl(&dword_1A8FF5000, v63, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Session state %{public}s.", buf, 0x30u);
            if ((v68 & 1) == 0)
            {
            }

            if (v239)
            {
            }

            if (v64)
            {
            }
          }
        }
      }
    }
  }

  v78 = *(a2 + 6);
  if (v78)
  {
    boringssl_context_set_alpn_protocol_list(*(a1 + 48), v78, *(a1 + 56));
  }

  v79 = *(a2 + 373);
  if ((v79 & 8) != 0)
  {
    boringssl_context_set_allow_unknown_alpn_protos(*(a1 + 48), (v79 >> 2) & 1);
  }

  v80 = *(a2 + 35);
  v81 = MEMORY[0x1E695E480];
  if (v80)
  {
    *(*(a1 + 40) + 360) = CFArrayCreateCopy(*MEMORY[0x1E695E480], v80);
    v39 &= boringssl_context_set_raw_public_key_certificate(*(a1 + 48), *(a2 + 35), 1);
  }

  v82 = *(a2 + 36);
  if (v82)
  {
    *(*(a1 + 40) + 368) = CFArrayCreateCopy(*v81, v82);
    v39 &= boringssl_context_set_raw_public_key_certificate(*(a1 + 48), *(a2 + 36), 0);
  }

  v83 = *(a2 + 7);
  if (v83)
  {
    v39 &= boringssl_context_set_identity(*(a1 + 48), v83);
    v84 = sec_identity_copy_type() == 2;
  }

  else
  {
    v84 = 0;
  }

  v85 = *(a2 + 8);
  v240 = v84;
  if (v85)
  {
    v86 = *(a2 + 27);
    if (v86)
    {
      v87 = *(a2 + 25);
      if (v87)
      {
        v88 = *(a2 + 26);
        if (v88)
        {
          v39 &= boringssl_context_set_external_identity(*(a1 + 48), v85, v87, v88, v86);
        }
      }
    }
  }

  v89 = xpc_array_create(0, 0);
  v90 = *(a2 + 9);
  if (v90)
  {
    v91 = v90;
    v92 = boringssl_psk_cache_create_with_context(*(a1 + 40));
    v93 = *(a1 + 40);
    v94 = *(v93 + 40);
    *(v93 + 40) = v92;

    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __boringssl_session_apply_protocol_options_for_transport_block_invoke_17;
    applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16lu32l8;
    applier[4] = *(a1 + 40);
    xpc_array_apply(v91, applier);
    if (!xpc_array_get_count(v91))
    {
LABEL_217:
      v141 = *(a2 + 32);
      if (v141)
      {
        v142 = *(a2 + 33);
        if (v142)
        {
          boringssl_psk_cache_set_selection_block_and_queue(*(*(a1 + 40) + 40), v141, v142);
        }
      }

      goto LABEL_221;
    }

    if (boringssl_context_get_min_protocol_version(*(a1 + 48)) == 772)
    {
      tls13_external_psk_enabled = boringssl_config_get_tls13_external_psk_enabled();
      v96 = *(a1 + 40);
      if (tls13_external_psk_enabled)
      {
        if (!v96)
        {
          goto LABEL_160;
        }

        v97 = objc_loadWeakRetained((v96 + 16));
        if (!v97 || (v98 = v97, v99 = objc_loadWeakRetained((*(a1 + 40) + 16)), v100 = v99[435], v99, v98, (v100 & 1) == 0))
        {
          v101 = *(a1 + 40);
          if (!v101)
          {
            goto LABEL_160;
          }

          v102 = objc_loadWeakRetained((v101 + 16));
          if (v102)
          {
            v103 = objc_loadWeakRetained((*(a1 + 40) + 16));
            v104 = (v103[435] & 1) == 0;
          }

          else
          {
            v104 = 1;
          }

          if (v104)
          {
LABEL_160:
            if (g_boringssl_log)
            {
              v118 = g_boringssl_log;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
              {
                v119 = *(a1 + 40);
                v231 = v119;
                if (v119)
                {
                  v120 = objc_loadWeakRetained((v119 + 16));
                  v121 = *(a1 + 40);
                  v224 = v120;
                  if (v120)
                  {
                    v226 = v121 != 0;
                    if (v121)
                    {
                      v120 = objc_loadWeakRetained((v121 + 16));
                      v121 = *(a1 + 40);
                    }

                    else
                    {
                      v120 = 0;
                    }

                    v128 = v120 + 351;
                  }

                  else
                  {
                    v226 = 0;
                    v128 = &unk_1A9098A9F;
                  }

                  v223 = v120;
                  if (v121)
                  {
                    v135 = v128;
                    v136 = objc_loadWeakRetained((v121 + 16));
                    v128 = v135;
                    v126 = v136;
                    v127 = 0;
                  }

                  else
                  {
                    v126 = 0;
                    v127 = 1;
                  }
                }

                else
                {
                  v226 = 0;
                  v126 = 0;
                  v127 = 1;
                  v128 = &unk_1A9098A9F;
                }

                *buf = 136446978;
                v247 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
                v248 = 1024;
                v249 = 2118;
                v250 = 2082;
                v251 = v128;
                v252 = 2048;
                v253 = v126;
                _os_log_impl(&dword_1A8FF5000, v118, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Using TLS 1.3 external PSK callback", buf, 0x26u);
                if ((v127 & 1) == 0)
                {
                }

                if (v226)
                {
                }

                if (v231)
                {
                }
              }
            }
          }
        }

        SSL_set_psk_client13_ext_callback(*(*(a1 + 40) + 392), boringssl_session_psk_client13_ext_callback_handler);
        goto LABEL_215;
      }

      if (!v96)
      {
        goto LABEL_168;
      }

      v105 = objc_loadWeakRetained((v96 + 16));
      if (!v105 || (v106 = v105, v107 = objc_loadWeakRetained((*(a1 + 40) + 16)), v108 = v107[435], v107, v106, (v108 & 1) == 0))
      {
        v109 = *(a1 + 40);
        if (!v109)
        {
          goto LABEL_168;
        }

        v110 = objc_loadWeakRetained((v109 + 16));
        if (v110)
        {
          v111 = objc_loadWeakRetained((*(a1 + 40) + 16));
          v112 = (v111[435] & 1) == 0;
        }

        else
        {
          v112 = 1;
        }

        if (v112)
        {
LABEL_168:
          if (g_boringssl_log)
          {
            v122 = g_boringssl_log;
            if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
            {
              v123 = *(a1 + 40);
              v232 = v123;
              if (v123)
              {
                v124 = objc_loadWeakRetained((v123 + 16));
                v125 = *(a1 + 40);
                v224 = v124;
                if (v124)
                {
                  v227 = v125 != 0;
                  if (v125)
                  {
                    v124 = objc_loadWeakRetained((v125 + 16));
                    v125 = *(a1 + 40);
                  }

                  else
                  {
                    v124 = 0;
                  }

                  v131 = v124 + 351;
                }

                else
                {
                  v227 = 0;
                  v131 = &unk_1A9098A9F;
                }

                v223 = v124;
                if (v125)
                {
                  v137 = v131;
                  v138 = objc_loadWeakRetained((v125 + 16));
                  v131 = v137;
                  v129 = v138;
                  v130 = 0;
                }

                else
                {
                  v129 = 0;
                  v130 = 1;
                }
              }

              else
              {
                v227 = 0;
                v129 = 0;
                v130 = 1;
                v131 = &unk_1A9098A9F;
              }

              *buf = 136446978;
              v247 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
              v248 = 1024;
              v249 = 2122;
              v250 = 2082;
              v251 = v131;
              v252 = 2048;
              v253 = v129;
              _os_log_impl(&dword_1A8FF5000, v122, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] TLS 1.3 external PSK callback is not enabled", buf, 0x26u);
              if ((v130 & 1) == 0)
              {
              }

              if (v227)
              {
              }

              if (v232)
              {
              }
            }
          }
        }
      }
    }

    SSL_set_psk_server_callback(*(*(a1 + 40) + 392), boringssl_session_server_psk_callback_handler);
    SSL_set_psk_client_callback(*(*(a1 + 40) + 392), boringssl_session_client_psk_callback_handler);
    for (i = 0; i != 4; ++i)
    {
      xpc_array_set_uint64(v89, 0xFFFFFFFFFFFFFFFFLL, g_boringssl_private_key_methods_block_invoke_supported_psk_ciphersuites[i]);
    }

LABEL_215:
    v140 = *(*(a1 + 40) + 392);
    if (v140)
    {
      SSL_set_options(v140, 0x400000u);
    }

    goto LABEL_217;
  }

LABEL_221:
  v143 = *(a2 + 10);
  if (v143)
  {
    size = dispatch_data_get_size(v143);
    v145 = malloc_type_malloc(size + 1, 0x100004077774924uLL);
    bzero(v145, size + 1);
    v146 = boringssl_helper_dispatch_data_copyout(*(a2 + 10), v145, size);
    v147 = *(a1 + 40);
    if (v146 == size)
    {
      SSL_use_psk_identity_hint(*(v147 + 392), v145);
    }

    else
    {
      if (!v147)
      {
        goto LABEL_233;
      }

      v148 = objc_loadWeakRetained((v147 + 16));
      if (!v148 || (v149 = v148, v150 = objc_loadWeakRetained((*(a1 + 40) + 16)), v151 = v150[435], v150, v149, (v151 & 1) == 0))
      {
        v152 = *(a1 + 40);
        if (!v152)
        {
          goto LABEL_233;
        }

        v153 = objc_loadWeakRetained((v152 + 16));
        if (v153)
        {
          v154 = objc_loadWeakRetained((*(a1 + 40) + 16));
          v155 = (v154[435] & 1) == 0;
        }

        else
        {
          v155 = 1;
        }

        if (v155)
        {
LABEL_233:
          if (g_boringssl_log)
          {
            v156 = g_boringssl_log;
            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              v216 = *(a1 + 40);
              v234 = v216;
              v237 = v78;
              if (v216)
              {
                v220 = objc_loadWeakRetained((v216 + 16));
                v221 = *(a1 + 40);
                v224 = v220;
                if (v220)
                {
                  v229 = v221 != 0;
                  if (v221)
                  {
                    v220 = objc_loadWeakRetained((v221 + 16));
                    v221 = *(a1 + 40);
                  }

                  else
                  {
                    v220 = 0;
                  }

                  v219 = v220 + 351;
                }

                else
                {
                  v229 = 0;
                  v219 = &unk_1A9098A9F;
                }

                v223 = v220;
                if (v221)
                {
                  v217 = objc_loadWeakRetained((v221 + 16));
                  v218 = 0;
                }

                else
                {
                  v217 = 0;
                  v218 = 1;
                }
              }

              else
              {
                v229 = 0;
                v217 = 0;
                v218 = 1;
                v219 = &unk_1A9098A9F;
              }

              *buf = 136446978;
              v247 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
              v248 = 1024;
              v249 = 2169;
              v250 = 2082;
              v251 = v219;
              v252 = 2048;
              v253 = v217;
              _os_log_error_impl(&dword_1A8FF5000, v156, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to copy PSK hint data", buf, 0x26u);
              if ((v218 & 1) == 0)
              {
              }

              if (v229)
              {
              }

              v78 = v237;
              if (v234)
              {
              }
            }
          }
        }
      }
    }

    if (v145)
    {
      free(v145);
    }
  }

  v157 = *(a2 + 17);
  if (v157)
  {
    v39 &= boringssl_context_set_quic_transport_parameters(*(a1 + 48), v157);
    v158 = *(*(a1 + 40) + 392);
    quic_use_legacy_codepoint = sec_protocol_options_get_quic_use_legacy_codepoint(options);
    SSL_set_quic_use_legacy_codepoint(v158, quic_use_legacy_codepoint);
  }

  v160 = *(a1 + 48);
  if (v160 && *v160 == -1252936367 && (v161 = *(v160 + 8)) != 0)
  {
    pqtls_enabled_for_endpoint = (*(v161 + 552) >> 5) & 1;
  }

  else
  {
    pqtls_enabled_for_endpoint = 0;
  }

  v163 = a2[167];
  if (v163 == 2)
  {
LABEL_248:
    pqtls_enabled_for_endpoint = 1;
    goto LABEL_250;
  }

  if (v163 == 1)
  {
    if ((pqtls_enabled_for_endpoint & 1) == 0)
    {
      pqtls_enabled_for_endpoint = nw_settings_get_pqtls_enabled_for_endpoint();
      goto LABEL_250;
    }

    goto LABEL_248;
  }

LABEL_250:
  v164 = *(a2 + 29);
  if (v164)
  {
    goto LABEL_254;
  }

  v165 = xpc_array_create(0, 0);
  v164 = v165;
  if (pqtls_enabled_for_endpoint)
  {
    xpc_array_set_uint64(v165, 0xFFFFFFFFFFFFFFFFLL, 0x11ECuLL);
  }

  xpc_array_set_uint64(v164, 0xFFFFFFFFFFFFFFFFLL, 0x1DuLL);
  xpc_array_set_uint64(v164, 0xFFFFFFFFFFFFFFFFLL, 0x17uLL);
  xpc_array_set_uint64(v164, 0xFFFFFFFFFFFFFFFFLL, 0x18uLL);
  xpc_array_set_uint64(v164, 0xFFFFFFFFFFFFFFFFLL, 0x19uLL);
  if (v164)
  {
LABEL_254:
    v242[0] = MEMORY[0x1E69E9820];
    v242[1] = 3221225472;
    v242[2] = __boringssl_session_apply_protocol_options_for_transport_block_invoke_22;
    v242[3] = &unk_1E785EAA0;
    v166 = v164;
    v167 = *(a1 + 48);
    v243 = v166;
    v244 = v167;
    xpc_array_apply(v166, v242);
  }

  else
  {
    v166 = 0;
  }

  v4 = options;
  boringssl_context_set_key_exchange_groups(*(a1 + 48), v166, pqtls_enabled_for_endpoint);
  v168 = *(a1 + 48);
  if (v168)
  {
    if (*v168 == -1252936367)
    {
      v169 = *(v168 + 8);
      if (v169)
      {
        v170 = *(v169 + 392);
        if (v170)
        {
          SSL_set_tls13_pqtls_ciphersuites_enabled(v170, (*(v169 + 552) >> 5) & 1);
        }
      }
    }
  }

  v171 = *(a2 + 5);
  v172 = v171;
  if (v171 && xpc_array_get_count(v171))
  {
    if (v89 && xpc_array_get_count(v89))
    {
      v173 = boringssl_helper_xpc_array_union(v172, v89);

      v172 = v173;
    }

    v174 = *(a1 + 48);
    v175 = v172;
  }

  else
  {
    if (!v89 || !xpc_array_get_count(v89))
    {
      goto LABEL_270;
    }

    v174 = *(a1 + 48);
    v175 = v89;
  }

  boringssl_context_set_ciphersuites_from_list(v174, v175);
LABEL_270:
  if (*(a2 + 15))
  {
    v176 = MEMORY[0x1AC57F4F0]();
    v177 = *(a1 + 40);
    v178 = *(v177 + 112);
    *(v177 + 112) = v176;

    objc_storeStrong((*(a1 + 40) + 120), *(a2 + 16));
  }

  if (*(a2 + 13))
  {
    v179 = MEMORY[0x1AC57F4F0]();
    v180 = *(a1 + 40);
    v181 = *(v180 + 128);
    *(v180 + 128) = v179;

    objc_storeStrong((*(a1 + 40) + 136), *(a2 + 14));
  }

  if (*(a2 + 11))
  {
    v182 = MEMORY[0x1AC57F4F0]();
    v183 = *(a1 + 40);
    v184 = *(v183 + 144);
    *(v183 + 144) = v182;

    objc_storeStrong((*(a1 + 40) + 152), *(a2 + 12));
  }

  if (*(a2 + 22))
  {
    v185 = MEMORY[0x1AC57F4F0]();
    v186 = *(a1 + 40);
    v187 = *(v186 + 160);
    *(v186 + 160) = v185;

    objc_storeStrong((*(a1 + 40) + 168), *(a2 + 23));
  }

  *(*(a1 + 40) + 376) = *(a2 + 304);
  *(*(a1 + 40) + 377) = *(a2 + 305);
  a2 = (v39 & boringssl_context_set_ticket_request(*(a1 + 48), *(*(a1 + 40) + 376), *(*(a1 + 40) + 377)));
  if (a2 == 1)
  {
    v188 = *(a1 + 40);
    if (!v188)
    {
      goto LABEL_289;
    }

    v189 = objc_loadWeakRetained((v188 + 16));
    if (!v189 || (v190 = v189, v191 = objc_loadWeakRetained((*(a1 + 40) + 16)), v192 = v191[435], v191, v190, (v192 & 1) == 0))
    {
      v193 = *(a1 + 40);
      if (!v193)
      {
        goto LABEL_289;
      }

      v194 = objc_loadWeakRetained((v193 + 16));
      if (v194)
      {
        v195 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v196 = (v195[435] & 1) == 0;
      }

      else
      {
        v196 = 1;
      }

      if (v196)
      {
LABEL_289:
        if (g_boringssl_log)
        {
          v197 = g_boringssl_log;
          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
          {
            v198 = objc_loadWeakRetained((*(a1 + 40) + 16));
            v199 = *(a1 + 40);
            v233 = v198;
            v236 = v78;
            if (v198)
            {
              v200 = v199 != 0;
              if (v199)
              {
                v201 = objc_loadWeakRetained((v199 + 16));
                v199 = *(a1 + 40);
              }

              else
              {
                v201 = 0;
              }

              v223 = v201;
              v225 = v201 + 351;
              v228 = v200;
            }

            else
            {
              v228 = 0;
              v225 = &unk_1A9098A9F;
            }

            v202 = objc_loadWeakRetained((v199 + 16));
            v203 = *(a1 + 40);
            v204 = *(v203 + 50);
            v205 = *(v203 + 48);
            v206 = objc_loadWeakRetained((v203 + 16));
            redacted_identity = nw_protocol_boringssl_get_redacted_identity(v206, *(*(a1 + 40) + 72));
            v208 = *(a1 + 40);
            v209 = (v208[549] >> 4) & 1;
            v210 = v208[548] >> 7;
            v211 = (v208[551] >> 1) & 1;
            v212 = (v208[551] >> 3) & 1;
            v213 = (v208[551] >> 4) & 1;
            v214 = (v208[552] >> 4) & 1;
            LODWORD(v208) = (v208[552] >> 5) & 1;
            *buf = 136449794;
            v247 = "boringssl_session_apply_protocol_options_for_transport_block_invoke_2";
            v248 = 1024;
            v249 = 2280;
            v250 = 2082;
            v251 = v225;
            v252 = 2048;
            v253 = v202;
            v254 = 1024;
            *v255 = v204;
            *&v255[4] = 1024;
            *&v255[6] = v205;
            v256 = 2082;
            v257 = redacted_identity;
            v258 = 1024;
            v259 = v209;
            v260 = 1024;
            v261 = v210;
            v262 = 1024;
            v263 = v211;
            v264 = 1024;
            v265 = v212;
            v266 = 1024;
            v267 = v213;
            v268 = 1024;
            v269 = v214;
            v270 = 1024;
            v271 = v208;
            v272 = 1024;
            v273 = v240;
            _os_log_impl(&dword_1A8FF5000, v197, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] TLS configured [min_version(0x%04x) max_version(0x%04x) name(%{public}s) tickets(%{BOOL}d) false_start(%{BOOL}d) enforce_ev(%{BOOL}d) enforce_ats(%{BOOL}d) ats_non_pfs_ciphersuite_allowed(%{BOOL}d) ech(%{BOOL}d) pqtls(%{BOOL}d), pake(%{BOOL}d)]", buf, 0x6Cu);

            if (v228)
            {
            }

            v4 = options;
            v78 = v236;
          }
        }
      }
    }
  }

LABEL_302:
  return a2;
}

uint64_t boringssl_context_set_fallback(uint64_t a1, int a2)
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
    SSL_set_mode(v3, 0x400u);
    v4 = 64;
  }

  else
  {
    SSL_clear_mode(v3, 1024);
    v4 = 0;
  }

  result = 0;
  *(v2 + 548) = *(v2 + 548) & 0xBF | v4;
  return result;
}

uint64_t SSL_clear_mode(uint64_t a1, int a2)
{
  v2 = *(a1 + 148) & ~a2;
  *(a1 + 148) = v2;
  return v2;
}

uint64_t boringssl_context_set_ocsp_enable(uint64_t a1, int a2)
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
    SSL_enable_ocsp_stapling(v3);
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  result = 0;
  *(v2 + 548) = *(v2 + 548) & 0xF7 | v4;
  return result;
}

uint64_t boringssl_context_set_sct_enable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *(v2 + 392);
  if (a2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(v2 + 548) = *(v2 + 548) & 0xFB | v6;
  if (a2)
  {
    if (v5)
    {
      SSL_enable_signed_cert_timestamps(v5);
    }

    else
    {
      SSL_CTX_enable_signed_cert_timestamps(v3);
    }

    return 0;
  }

  return result;
}

uint64_t SSL_enable_ocsp_stapling(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(v1 + 309) |= 4u;
  }

  return result;
}

uint64_t SSL_enable_signed_cert_timestamps(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(v1 + 309) |= 2u;
  }

  return result;
}

uint64_t boringssl_context_set_renegotiation(uint64_t a1, int a2, unsigned __int16 a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v3 + 392);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  SSL_set_renegotiate_mode(v4, v5, a3);
  return 0;
}

void bssl::ssl_maybe_shed_handshake_config(bssl *this, ssl_st *a2, unsigned __int16 a3)
{
  if (!*(*(this + 6) + 280))
  {
    v4 = (this + 8);
    v3 = *(this + 1);
    if (v3)
    {
      if ((*(v3 + 309) & 0x80) != 0 && !bssl::ssl_can_renegotiate(this, a2, a3))
      {

        std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](v4, 0);
      }
    }
  }
}

uint64_t boringssl_context_set_session_ticket_enabled(uint64_t a1, int a2)
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
    SSL_clear_options(v3, 0x4000);
    v4 = 16;
  }

  else
  {
    SSL_set_options(v3, 0x4000u);
    v4 = 0;
  }

  result = 0;
  *(v2 + 549) = *(v2 + 549) & 0xEF | v4;
  return result;
}

const EVP_MD *bssl::ssl_get_handshake_digest(bssl *this, uint64_t a2, const ssl_cipher_st *a3)
{
  v4 = *(a2 + 36);
  switch(v4)
  {
    case 4:

      return EVP_sha384();
    case 2:
      goto LABEL_5;
    case 1:
      if (this >= 0x303)
      {
LABEL_5:

        return EVP_sha256();
      }

      else
      {

        return EVP_md5_sha1();
      }

    default:
      bssl::ssl_get_handshake_digest();
  }
}

int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{
  if (ctx->digest == type)
  {
    digest = ctx->digest;
LABEL_6:
    if (ctx->flags && !ctx->md_data)
    {
      EVP_DigestInit_ex_cold_2();
    }

    (digest->flags)(ctx);
    LODWORD(v6) = 1;
    return v6;
  }

  digest = type;
  final_high = HIDWORD(type->final);
  if (!final_high)
  {
    EVP_DigestInit_ex_cold_1();
  }

  v6 = OPENSSL_malloc(final_high);
  if (v6)
  {
    v7 = v6;
    OPENSSL_free(ctx->engine);
    ctx->digest = digest;
    ctx->engine = v7;
    goto LABEL_6;
  }

  return v6;
}

uint64_t bssl::tls_add_change_cipher_spec(bssl *this, ssl_st *a2)
{
  if (!bssl::tls_flush_pending_hs_data(this, a2) || !*(this + 21) && !bssl::add_record_to_flight(this, 0x14, &bssl::tls_add_change_cipher_spec(ssl_st *)::kChangeCipherSpec, 1))
  {
    return 0;
  }

  v3 = 1;
  bssl::ssl_do_msg_callback(this, 1, 20, &bssl::tls_add_change_cipher_spec(ssl_st *)::kChangeCipherSpec, 1);
  return v3;
}

uint64_t CRYPTO_once(pthread_once_t *a1, void (*a2)(void))
{
  result = pthread_once(a1, a2);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t CRYPTO_memcmp(char *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    v3 |= v6 ^ v4;
    --a3;
  }

  while (a3);
  return v3;
}

uint64_t bssl::anonymous namespace::X25519KeyShare::Decap(uint64_t a1, uint64_t a2, _BYTE *a3, int64x2_t *a4, uint64_t a5)
{
  *a3 = 80;
  OPENSSL_free(0);
  v10 = OPENSSL_malloc(0x20uLL);
  v11 = v10;
  if (v10)
  {
    if (a5 == 32 && X25519(v10, (a1 + 8), a4))
    {
      OPENSSL_free(*a2);
      *a2 = v11;
      *(a2 + 8) = 32;
      v12 = 1;
      v11 = 0;
    }

    else
    {
      *a3 = 47;
      ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_key_share.cc", 179);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  OPENSSL_free(v11);
  return v12;
}

uint64_t bssl::SSLTranscript::DigestLen(bssl::SSLTranscript *this)
{
  v1 = EVP_MD_CTX_md((this + 8));

  return EVP_MD_size(v1);
}

BOOL X25519(char *a1, __int128 *a2, int64x2_t *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v85 = 0xAAAAAAAAAAAAAAAALL;
  v3.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v3.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v83 = v3;
  v84 = v3;
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v70[0] = v3;
  v70[1] = v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v68[0] = v3;
  v68[1] = v3;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v66[0] = v3;
  v66[1] = v3;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v64[0] = v3;
  v64[1] = v3;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v62[0] = v3;
  v62[1] = v3;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v60[0] = v3;
  v60[1] = v3;
  v59 = 0xAAAAAAAAAAAAAAAALL;
  v57 = v3;
  v58 = v3;
  v4 = a2[1];
  v86 = *a2;
  v87 = v4;
  LOBYTE(v86) = v86 & 0xF8;
  HIBYTE(v87) = HIBYTE(v4) & 0x3F | 0x40;
  v5 = a3[1];
  v88 = *a3;
  v89 = v5;
  HIBYTE(v89) = HIBYTE(v5) & 0x7F;
  fe_frombytes_strict(&v83, &v88);
  v6 = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0;
  v80 = 1;
  v77 = 0u;
  v78 = 0u;
  v75[0] = v83;
  v75[1] = v84;
  v7 = 254;
  v76 = v85;
  v73 = 0u;
  v72 = 1;
  v74 = 0u;
  do
  {
    v8 = 0;
    v9 = v7;
    v10 = v6;
    v6 = (*(&v86 + (v7 >> 3)) >> (v7 & 7)) & 1;
    v11 = -(v6 ^ v10);
    do
    {
      v12 = *(&v80 + v8 * 8);
      v13 = v75[0].i64[v8];
      v14 = (v13 ^ v12) & v11;
      *(&v80 + v8 * 8) = v14 ^ v12;
      v75[0].i64[v8++] = v14 ^ v13;
    }

    while (v8 != 5);
    for (i = 0; i != 5; ++i)
    {
      v16 = v77.i64[i];
      v17 = *(&v72 + i * 8);
      v18 = (v17 ^ v16) & v11;
      v77.i64[i] = v18 ^ v16;
      *(&v72 + i * 8) = v18 ^ v17;
    }

    fe_sub(v60, v75, &v72);
    fe_sub(&v57, &v80, &v77);
    fe_add(v66, &v80, &v77);
    fe_add(v64, v75, &v72);
    fe_mul_impl(&v72, v60, v66);
    fe_mul_impl(&v77, v64, &v57);
    fe_sq_tl(v70, &v57);
    fe_sq_tl(v68, v66);
    fe_add(v62, &v72, &v77);
    fe_sub(v64, &v72, &v77);
    fe_mul_impl(&v80, v68, v70);
    fe_sub(&v57, v68, v70);
    fe_sq_tl(&v77, v64);
    for (j = 0; j != 5; ++j)
    {
      if (v57.i64[j] >= 0x1A666666666665uLL)
      {
        X25519_cold_2();
      }
    }

    v20 = 0;
    v21 = (v59 * 0x1DB42uLL) >> 64;
    v22 = 121666 * v59;
    v23 = (v58.u64[1] * 0x1DB42uLL) >> 64;
    v24 = 121666 * v58.i64[1];
    v25 = (v57.u64[0] * 0x1DB42uLL) >> 51;
    v26 = __CFADD__(v25, 121666 * v57.i64[1]);
    v27 = v25 + 121666 * v57.i64[1];
    v28 = 121666 * v58.i64[0];
    v29 = (v57.u64[1] * 0x1DB42uLL) >> 64;
    if (v26)
    {
      ++v29;
    }

    *(&v31 + 1) = v29;
    *&v31 = v27;
    v30 = v31 >> 51;
    v32 = v27 & 0x7FFFFFFFFFFFFLL;
    v26 = __CFADD__(v30, v28);
    v33 = v30 + v28;
    if (v26)
    {
      v34 = ((v58.u64[0] * 0x1DB42uLL) >> 64) + 1;
    }

    else
    {
      v34 = (v58.u64[0] * 0x1DB42uLL) >> 64;
    }

    *(&v36 + 1) = v34;
    *&v36 = v33;
    v35 = v36 >> 51;
    v37 = v33 & 0x7FFFFFFFFFFFFLL;
    v26 = __CFADD__(v35, v24);
    v38 = v35 + v24;
    if (v26)
    {
      ++v23;
    }

    *(&v40 + 1) = v23;
    *&v40 = v38;
    v39 = v40 >> 51;
    v26 = __CFADD__(v39, v22);
    v41 = v39 + v22;
    if (v26)
    {
      ++v21;
    }

    *(&v42 + 1) = v21;
    *&v42 = v41;
    v43 = ((121666 * v57.i64[0]) & 0x7FFFFFFFFFFFELL) + 19 * (v42 >> 51);
    v44 = v43 & 0x7FFFFFFFFFFFFLL;
    v45 = v32 + (v43 >> 51);
    v72 = v44;
    *&v73 = v45 & 0x7FFFFFFFFFFFFLL;
    *(&v73 + 1) = v37 + (v45 >> 51);
    *&v74 = v38 & 0x7FFFFFFFFFFFFLL;
    *(&v74 + 1) = v41 & 0x7FFFFFFFFFFFFLL;
    do
    {
      if (*(&v72 + v20) >= 0x8CCCCCCCCCCCDLL)
      {
        X25519_cold_1();
      }

      v20 += 8;
    }

    while (v20 != 40);
    fe_sq_tl(v75, v62);
    fe_add(v60, v70, &v72);
    fe_mul_impl(&v72, &v83, &v77);
    fe_mul_impl(&v77, &v57, v60);
    v7 = v9 - 1;
  }

  while (v9);
  v46 = 0;
  v47 = -v6;
  do
  {
    v48 = *(&v80 + v46 * 8);
    v49 = v75[0].i64[v46];
    v50 = (v49 ^ v48) & v47;
    *(&v80 + v46 * 8) = v50 ^ v48;
    v75[0].i64[v46++] = v50 ^ v49;
  }

  while (v46 != 5);
  for (k = 0; k != 5; ++k)
  {
    v52 = v77.i64[k];
    v53 = *(&v72 + k * 8);
    v54 = (v53 ^ v52) & v47;
    v77.i64[k] = v54 ^ v52;
    *(&v72 + k * 8) = v54 ^ v53;
  }

  v88 = v77;
  v89 = v78;
  v90 = v79;
  fe_loose_invert(&v77, &v88);
  fe_mul_impl(&v80, &v80, &v77);
  fe_tobytes(a1, &v80);
  return CRYPTO_memcmp(X25519_kZeros, a1, 32) != 0;
}

void OPENSSL_cleanse(void *ptr, size_t len)
{
  if (len)
  {
    bzero(ptr, len);
  }
}

uint64_t bssl::ssl_hash_message(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return 1;
  }

  else
  {
    return bssl::SSLTranscript::Update(a1 + 424, *(a2 + 24), *(a2 + 32));
  }
}

uint64_t bssl::ssl_log_secret(uint64_t a1, const char *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!*(*(a1 + 120) + 784))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = v8;
  v17[2] = v8;
  v17[0] = v8;
  CBB_zero(v17);
  v16[0] = 0;
  v16[1] = 0;
  v9 = strlen(a2);
  if (!CBB_init(v17, v9 + 2 * a4 + 67) || (v10 = strlen(a2), !CBB_add_bytes(v17, a2, v10)) || !CBB_add_u8(v17, 0x20u) || !bssl::cbb_add_hex_consttime(v17, (*(a1 + 48) + 48), 32) || !CBB_add_u8(v17, 0x20u) || !bssl::cbb_add_hex_consttime(v17, a3, a4) || !CBB_add_u8(v17, 0))
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = bssl::CBBFinishArray(v17, v16);
  v12 = v16[0];
  if (!v11)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  (*(*(a1 + 120) + 784))(a1, v16[0]);
  v13 = 1;
LABEL_13:
  OPENSSL_free(v12);
  CBB_cleanup(v17, v14);
  return v13;
}

void sub_1A90082B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  bssl::Array<unsigned char>::~Array(&a9);
  CBB_cleanup(va, v11);
  _Unwind_Resume(a1);
}

uint64_t bssl::SSLTranscript::GetHash(bssl::SSLTranscript *this, unsigned __int8 *a2, unint64_t *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.digest = v6;
  *&ctx.flags = v6;
  EVP_MD_CTX_init(&ctx);
  s = -1431655766;
  if (EVP_MD_CTX_copy_ex(&ctx, (this + 8)) && EVP_DigestFinal_ex(&ctx, a2, &s))
  {
    *a3 = s;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  EVP_MD_CTX_cleanup(&ctx);
  return v7;
}

int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in)
{
  if (!in)
  {
    goto LABEL_13;
  }

  if (!in->flags)
  {
    digest = in->digest;
    if (in->digest)
    {
      v6 = 0;
LABEL_9:
      if (out->digest == digest)
      {
        engine = out->engine;
        out->engine = 0;
LABEL_16:
        EVP_MD_CTX_cleanup(out);
        v11 = in->digest;
        out->digest = in->digest;
        out->engine = engine;
        if (v11)
        {
          final_high = HIDWORD(v11->final);
          if (final_high)
          {
            memcpy(engine, in->engine, final_high);
          }
        }

        md_data = in->md_data;
        out->flags = v6;
        out->md_data = md_data;
        LODWORD(v5) = 1;
        if (v6 && !md_data)
        {
          EVP_MD_CTX_copy_ex_cold_3();
        }

        return v5;
      }

      v9 = HIDWORD(digest->final);
      if (!v9)
      {
        EVP_MD_CTX_copy_ex_cold_2();
      }

      v10 = OPENSSL_malloc(v9);
      if (v10)
      {
        engine = v10;
        goto LABEL_16;
      }

      if (v6)
      {
        (*in->md_data)(v6);
      }

LABEL_14:
      LODWORD(v5) = 0;
      return v5;
    }

LABEL_13:
    ERR_put_error(29, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digest/digest.c.inc", 138);
    goto LABEL_14;
  }

  v4 = in->md_data;
  if (!v4)
  {
    EVP_MD_CTX_copy_ex_cold_1();
  }

  v5 = v4[1]();
  if (v5)
  {
    v6 = v5;
    digest = in->digest;
    if (!in->digest)
    {
      engine = 0;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  return v5;
}

uint64_t digest_final(uint64_t a1)
{
  if (!a1)
  {
    digest_final_cold_2();
  }

  result = CCDigestFinal();
  if (result)
  {
    digest_final_cold_1();
  }

  return result;
}

int EVP_DigestFinal_ex(EVP_MD_CTX *ctx, unsigned __int8 *md, unsigned int *s)
{
  if (ctx->digest->pkey_type >= 0x41u)
  {
    EVP_DigestFinal_ex_cold_1();
  }

  (ctx->digest->update)();
  digest = ctx->digest;
  if (s)
  {
    *s = digest->pkey_type;
  }

  OPENSSL_cleanse(ctx->engine, HIDWORD(digest->final));
  return 1;
}

uint64_t digest_update(uint64_t a1)
{
  if (!a1)
  {
    digest_update_cold_2();
  }

  result = CCDigestUpdate();
  if (result)
  {
    digest_update_cold_1();
  }

  return result;
}

void *bssl::tls_append_handshake_data(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 48);
  v9 = *(v6 + 224);
  v8 = (v6 + 224);
  result = v9;
  if (v9)
  {
    return (BUF_MEM_append(result, a2, a3) != 0);
  }

  v10 = BUF_MEM_new();
  std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v8, v10);
  result = *(*(a1 + 48) + 224);
  if (result)
  {
    return (BUF_MEM_append(result, a2, a3) != 0);
  }

  return result;
}

uint64_t boringssl_session_handshake_continue_inner(SSL *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1->version != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  method = a1->method;
  if (!method)
  {
    return 0xFFFFFFFFLL;
  }

  ssl_pending = method[1].ssl_pending;
  if (!ssl_pending)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2;
  v7 = SSL_do_handshake(ssl_pending);
  if (v7 == 1)
  {
    result = SSL_in_false_start(method[1].ssl_pending);
    if (result)
    {
      WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
      if (!WeakRetained || (v10 = WeakRetained, v11 = objc_loadWeakRetained(&method->ssl_clear), v2 = v11[435], v11, v10, (v2 & 1) == 0))
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
            v15 = g_boringssl_log;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = objc_loadWeakRetained(&method->ssl_clear);
              if (v16)
              {
                v2 = objc_loadWeakRetained(&method->ssl_clear);
                v17 = v2 + 351;
              }

              else
              {
                v17 = &unk_1A9098A9F;
              }

              v18 = objc_loadWeakRetained(&method->ssl_clear);
              v20 = 136446978;
              v21 = "boringssl_session_handshake_continue_inner";
              v22 = 1024;
              v23 = 213;
              v24 = 2082;
              v25 = v17;
              v26 = 2048;
              v27 = v18;
              _os_log_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Connected in False Start.", &v20, 0x26u);

              if (v16)
              {
              }
            }
          }
        }
      }

      BYTE5(method[2].ssl_renegotiate) |= 1u;
      session = SSL_get_session(method[1].ssl_pending);
      boringssl_session_set_peer_verification_state_from_session(a1, session);
      boringssl_session_finish_handshake(a1);
      return 0;
    }
  }

  else
  {

    return boringssl_session_handshake_incomplete(a1, v7, v6);
  }

  return result;
}

uint64_t CBS_get_u24(uint64_t *a1, int *a2)
{
  v2 = a1[1];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 3;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 3);
  *a2 = v6;
  return 1;
}

uint64_t digest_init(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    digest_init_cold_2();
  }

  result = CCDigestInit();
  if (result)
  {
    digest_init_cold_1();
  }

  return result;
}

void nw_protocol_boringssl_read_bytes_cold_5(uint64_t a1)
{
  if (g_boringssl_log)
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

uint64_t BIO_ctrl(uint64_t bp, int cmd, uint64_t larg, void *parg)
{
  if (bp)
  {
    if (*bp && (v5 = *(*bp + 48)) != 0)
    {

      return v5();
    }

    else
    {
      ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio.c", 217);
      return -2;
    }
  }

  return bp;
}

uint64_t boringssl_bio_ctrl(uint64_t a1, int a2, int a3)
{
  result = 1;
  if (a2 > 103)
  {
    if ((a2 - 104) >= 2)
    {
      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 8:
        return *(a1 + 20);
      case 9:
        *(a1 + 20) = a3;
        return 1;
      case 11:
        break;
      default:
        return 0;
    }
  }

  return result;
}

const char *bssl::tls13_client_handshake_state(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 0xE)
  {
    return "TLS 1.3 client unknown";
  }

  else
  {
    return off_1E785EEF0[v1];
  }
}

uint64_t bssl::parse_server_hello_tls13(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  result = bssl::ssl_parse_server_hello(a2, a3, a4);
  if (result)
  {
    is_dtls = SSL_is_dtls(*a1);
    if (SSL_is_dtls(*a1))
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = (a1 + 1613);
      v10 = *(a1 + 1645);
    }

    if (is_dtls)
    {
      v11 = 65277;
    }

    else
    {
      v11 = 771;
    }

    if (v11 == *(a2 + 16) && !*(a2 + 58) && *(a2 + 48) == v10 && !memcmp(*(a2 + 40), v9, v10) && *(a2 + 72))
    {
      return 1;
    }

    else
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 132);
      result = 0;
      *a3 = 50;
    }
  }

  return result;
}

uint64_t bssl::SSLTranscript::InitHash(bssl::SSLTranscript *this, bssl *a2, const ssl_cipher_st *a3)
{
  *(this + 21) = a2;
  handshake_digest = bssl::ssl_get_handshake_digest(a2, a3, a3);
  if (EVP_MD_CTX_md((this + 8)) != handshake_digest)
  {
    result = bssl::SSLTranscript::HashBuffer(this, (this + 8), handshake_digest);
    if (!result)
    {
      return result;
    }

    if ((*(this + 40) & 1) != 0 && *(this + 21) >= 0x304u)
    {
      std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this, 0);
    }
  }

  return 1;
}

uint64_t bssl::ssl_ech_confirmation_signal_hello_offset(unsigned __int8 **this, const ssl_st *a2)
{
  if (SSL_is_dtls(this))
  {
    return 38;
  }

  else
  {
    return 30;
  }
}

uint64_t ssl_session_st::ssl_session_st(uint64_t a1, void *a2, CRYPTO_EX_DATA *a3)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 58) = 0;
  *(a1 + 91) = 0;
  *(a1 + 128) = 0;
  *(a1 + 124) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 65;
  *(a1 + 184) = vdup_n_s32(0x1C20u);
  *(a1 + 368) = 0;
  *(a1 + 372) = 0;
  *(a1 + 376) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) &= 0x80u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  CRYPTO_new_ex_data(a1 + 208, a2, a3);
  *(a1 + 192) = time(0);
  return a1;
}

void sub_1A9008D60(_Unwind_Exception *a1)
{
  v4 = v3;
  bssl::Array<unsigned char>::~Array(v4 + 232);
  bssl::Array<unsigned char>::~Array(v1 + 424);
  bssl::Array<unsigned char>::~Array(v1 + 408);
  bssl::Array<unsigned char>::~Array(v4 + 176);
  *(v1 + 368) = 0;
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 264), 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 256), 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 248), 0);
  bssl::Array<unsigned char>::~Array(v1 + 232);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 136), 0);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v2, 0);
  *(v1 + 124) = 0;
  *(v1 + 91) = 0;
  *(v1 + 58) = 0;
  _Unwind_Resume(a1);
}

void nw_protocol_boringssl_input_available_cold_3(uint64_t a1)
{
  if (g_boringssl_log)
  {
    if (OUTLINED_FUNCTION_18_0())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

uint64_t bssl::SSLTranscript::HashBuffer(size_t **this, env_md_ctx_st *ctx, const env_md_st *type)
{
  result = EVP_DigestInit_ex(ctx, type, 0);
  if (result)
  {
    if ((this[5] & 1) == 0 || *(this + 21) <= 0x303u)
    {
      v7 = **this;
      v6 = (*this)[1];
      return EVP_DigestUpdate(ctx, v6, v7) != 0;
    }

    v8 = *this;
    v9 = **this;
    if (!v9)
    {
      return 1;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v12 = v8[1];
    v13 = v9;
    result = CBS_get_bytes(&v12, &v10, 4uLL);
    if (result)
    {
      result = CBS_skip(&v12, 8uLL);
      if (result)
      {
        result = EVP_DigestUpdate(ctx, v10, v11);
        if (result)
        {
          v6 = v12;
          v7 = v13;
          return EVP_DigestUpdate(ctx, v6, v7) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_parse_server_hello(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a3 + 1) == 2)
  {
    *a1 = *(a3 + 24);
    v10 = *(a3 + 8);
    if (CBS_get_u16(&v10, (a1 + 16)) && CBS_get_bytes(&v10, (a1 + 24), 0x20uLL) && CBS_get_u8_length_prefixed(&v10, (a1 + 40)) && *(a1 + 48) <= 0x20uLL && CBS_get_u16(&v10, (a1 + 56)) && CBS_get_u8(&v10, (a1 + 58)))
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      v5 = (a1 + 64);
      if (!*(&v10 + 1))
      {
        return 1;
      }

      u16_length_prefixed = CBS_get_u16_length_prefixed(&v10, v5);
      v7 = 762;
      if (u16_length_prefixed)
      {
        if (!*(&v10 + 1))
        {
          return 1;
        }
      }
    }

    else
    {
      v7 = 752;
    }

    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", v7);
    result = 0;
    v9 = 50;
  }

  else
  {
    ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 740);
    result = 0;
    v9 = 10;
  }

  *a2 = v9;
  return result;
}

uint64_t bssl::ssl_parse_extensions(__int128 *a1, char *a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v9 = 8 * a4;
  if (a4)
  {
    v10 = 8 * a4;
    v11 = a3;
    do
    {
      v12 = *v11;
      *(v12 + 3) = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      if (((a5 ^ 1 | *(v12 + 2)) & 1) == 0)
      {
        bssl::ssl_parse_extensions();
      }

      ++v11;
      v10 -= 8;
    }

    while (v10);
  }

  v21 = *a1;
  v13 = 1;
  if (!*(&v21 + 1))
  {
    return v13;
  }

  while (1)
  {
    v20 = -21846;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u16(&v21, &v20) || !CBS_get_u16_length_prefixed(&v21, &v19))
    {
      ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 295);
      v17 = 50;
      goto LABEL_21;
    }

    if (a4)
    {
      break;
    }

LABEL_13:
    if ((v5 & 1) == 0)
    {
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 312);
      v17 = 110;
      goto LABEL_21;
    }

LABEL_17:
    if (!*(&v21 + 1))
    {
      return 1;
    }
  }

  v14 = v9;
  v15 = a3;
  while (1)
  {
    v16 = *v15;
    if (v20 == **v15 && (v16[1] & 1) != 0)
    {
      break;
    }

    ++v15;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (*(v16 + 3) != 1)
  {
    *(v16 + 3) = 1;
    *(v16 + 4) = v19;
    goto LABEL_17;
  }

  ERR_put_error(16, 0, 257, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 319);
  v17 = 47;
LABEL_21:
  v13 = 0;
  *a2 = v17;
  return v13;
}

uint64_t bssl::tls13_client_handshake(bssl *this, ssl_st *a2, uint64_t a3, uint64_t a4)
{
  v143 = (this + 1536);
  v5 = (this + 1520);
  v167 = *MEMORY[0x1E69E9840];
  v141 = (this + 1488);
  v142 = (this + 520);
  v140 = (this + 552);
  while (2)
  {
    v6 = *(this + 6);
    v7 = 1;
    switch(v6)
    {
      case 0:
        v8 = *this;
        if (!*(*(*this + 48) + 208))
        {
          bssl::tls13_client_handshake();
        }

        *&v162 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v160 = v9;
        v161 = v9;
        if (!(*(*v8 + 24))(v8, &v160, a3, a4))
        {
          goto LABEL_138;
        }

        if ((*(this + 1601) & 8) == 0 && !(*(*v8 + 112))(v8))
        {
          goto LABEL_332;
        }

        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v155 = v10;
        v156 = v10;
        *&v153[16] = v10;
        v154 = v10;
        *v153 = v10;
        *&v153[16] = 0;
        WORD4(v155) = 0;
        BYTE10(v155) = 0;
        LOBYTE(v163[0]) = 50;
        if ((bssl::parse_server_hello_tls13(this, v153, v163, &v160) & 1) == 0)
        {
          goto LABEL_281;
        }

        cipher_by_value = SSL_get_cipher_by_value(WORD4(v155));
        v12 = cipher_by_value;
        if (!cipher_by_value || (min_version = SSL_CIPHER_get_min_version(cipher_by_value), min_version > bssl::ssl_protocol_version(v8, v14, v15)) || (max_version = SSL_CIPHER_get_max_version(v12), max_version < bssl::ssl_protocol_version(v8, v17, v18)) || (protocol_id = SSL_CIPHER_get_protocol_id(v12, v19), (bssl::ssl_tls13_cipher_meets_policy(protocol_id, *(*(v8 + 1) + 304)) & 1) == 0))
        {
          ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 219);
          bssl::ssl_send_alert(v8, 2, 47);
          goto LABEL_332;
        }

        *(this + 196) = v12;
        v26 = v154 == 32 && **&v153[24] == 0x11619AE574AD21CFLL && *(*&v153[24] + 8) == 0x91B8651E028C1DBELL && *(*&v153[24] + 16) == 0x5E8CBB7A1611A2C2 && *(*&v153[24] + 24) == 0x9C33A8C8E2099E07;
        v100 = bssl::ssl_protocol_version(v8, v21, v22);
        if (!bssl::SSLTranscript::InitHash((this + 424), v100, *(this + 196)) || v26 && !bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 424)))
        {
          goto LABEL_332;
        }

        if (*(this + 195))
        {
          v101 = bssl::ssl_protocol_version(v8, a2, a3);
          if (!bssl::SSLTranscript::InitHash((this + 472), v101, *(this + 196)) || v26 && !bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 472)))
          {
            goto LABEL_332;
          }
        }

        LOBYTE(v144[0]) = -86;
        if (!bssl::check_ech_confirmation(this, v144, v163, v153))
        {
          goto LABEL_281;
        }

        v102 = *(this + 195);
        if (v102)
        {
          if (LOBYTE(v144[0]))
          {
            v103 = 1;
          }

          else
          {
            v103 = 2;
          }

          *(*(v8 + 6) + 216) = v103;
        }

        if (!v26)
        {
          *(this + 6) = 2;
          goto LABEL_44;
        }

        v157 = 0xAAAAAAAA0001002CLL;
        *&v158 = 0;
        v149 = 0xAAAAAAAA00AA0033;
        BYTE2(v149) = *(this + 80) != 0;
        v150 = 0;
        v151 = 0;
        v147 = 0xAAAAAAAA0001002BLL;
        v148 = 0;
        *&v144[1] = 0xAAAAAAAA00AAFE0DLL;
        if (v102)
        {
          LOBYTE(v104) = 1;
        }

        else
        {
          v104 = *(*(this + 1) + 309);
        }

        LOBYTE(v144[2]) = v104 & 1;
        v145 = 0;
        v146 = 0;
        *&v164 = &v157;
        *(&v164 + 1) = &v149;
        *&v165 = &v147;
        *(&v165 + 1) = &v144[1];
        if ((bssl::ssl_parse_extensions(&v156, v163, &v164, 4, 0) & 1) == 0)
        {
LABEL_281:
          bssl::ssl_send_alert(v8, 2, LOBYTE(v163[0]));
          goto LABEL_332;
        }

        if (BYTE3(v157))
        {
          *&v164 = 0xAAAAAAAAAAAAAAAALL;
          *(&v164 + 1) = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16_length_prefixed(&v157 + 1, &v164) || (v128 = *(&v164 + 1)) == 0 || v158)
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 280);
            bssl::ssl_send_alert(v8, 2, 50);
            goto LABEL_332;
          }

          v129 = v164;
          if ((bssl::Array<unsigned char>::InitUninitialized(v140, *(&v164 + 1)) & 1) == 0)
          {
            goto LABEL_332;
          }

          v130 = *v140;
          do
          {
            v131 = *v129++;
            *v130++ = v131;
            --v128;
          }

          while (v128);
          if ((BYTE3(v149) & 1) == 0)
          {
LABEL_326:
            if (!bssl::ssl_hash_message(this, &v160) || *(*(v8 + 6) + 216) == 1 && !bssl::SSLTranscript::Update(this + 472, *(&v161 + 1), v162))
            {
              goto LABEL_332;
            }

            if ((*(*v8 + 40))(v8))
            {
              bssl::ssl_send_alert(v8, 2, 10);
              ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 339);
              goto LABEL_332;
            }

            (*(*v8 + 32))(v8);
            *(*(v8 + 6) + 222) |= 0x1000u;
            v7 = 1;
            *(this + 6) = 1;
            if ((*(this + 1601) & 4) != 0)
            {
              *(*(v8 + 6) + 256) = 8;
              v46 = bssl::close_early_data(this, 0);
              goto LABEL_64;
            }

            goto LABEL_333;
          }
        }

        else if ((BYTE3(v149) & 1) == 0)
        {
          ERR_put_error(16, 0, 282, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 271);
          bssl::ssl_send_alert(v8, 2, 47);
          goto LABEL_332;
        }

        if (*(this + 210))
        {
          bssl::tls13_client_handshake();
        }

        LOWORD(v164) = -21846;
        if (!CBS_get_u16(&v150, &v164) || v151)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 298);
          bssl::ssl_send_alert(v8, 2, 50);
          goto LABEL_332;
        }

        if (!bssl::tls1_check_group_id(this, v164, v132))
        {
          bssl::ssl_send_alert(v8, 2, 47);
          ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 306);
          goto LABEL_332;
        }

        v133 = (*(**(this + 49) + 16))(*(this + 49));
        v134 = v164;
        if (v133 == v164 || (v135 = *(this + 50)) != 0 && (v136 = (*(*v135 + 16))(v135), v134 = v164, v136 == v164))
        {
          bssl::ssl_send_alert(v8, 2, 47);
          ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 315);
          goto LABEL_332;
        }

        if (!bssl::ssl_setup_key_shares(this, v134))
        {
          goto LABEL_332;
        }

        goto LABEL_326;
      case 1:
        v47 = *(*this + 48);
        if (*(v47 + 204))
        {
          bssl::tls13_client_handshake();
        }

        if (*(v47 + 216) == 1 && !bssl::ssl_encrypt_client_hello(this, 0, 0) || !bssl::ssl_add_client_hello(this, a2))
        {
          goto LABEL_332;
        }

        bssl::ssl_done_writing_client_hello(this);
        *(this + 6) = 2;
        goto LABEL_72;
      case 2:
        v36 = *this;
        *&v162 = 0xAAAAAAAAAAAAAAAALL;
        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v160 = v54;
        v161 = v54;
        if (!(*(*v36 + 24))(v36, &v160, a3, a4))
        {
          goto LABEL_138;
        }

        *&v55 = 0xAAAAAAAAAAAAAAAALL;
        *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v155 = v55;
        v156 = v55;
        *&v153[16] = v55;
        v154 = v55;
        *v153 = v55;
        *&v153[16] = 0;
        WORD4(v155) = 0;
        BYTE10(v155) = 0;
        v152 = 50;
        if ((bssl::parse_server_hello_tls13(this, v153, &v152, &v160) & 1) == 0)
        {
          goto LABEL_301;
        }

        if (v154 == 32)
        {
          v57 = **&v153[24] == 0x11619AE574AD21CFLL && *(*&v153[24] + 8) == 0x91B8651E028C1DBELL;
          v58 = v57 && *(*&v153[24] + 16) == 0x5E8CBB7A1611A2C2;
          if (v58 && *(*&v153[24] + 24) == 0x9C33A8C8E2099E07)
          {
            bssl::ssl_send_alert(v36, 2, 10);
            ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 393);
            goto LABEL_332;
          }
        }

        v60 = SSL_CIPHER_get_protocol_id(*(this + 196), v56);
        if (v60 != WORD4(v155))
        {
          ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 399);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        v61 = *(v36 + 48);
        if (*(v61 + 216) != 1)
        {
          goto LABEL_108;
        }

        if ((*(v61 + 222) & 0x1000) == 0)
        {
          goto LABEL_107;
        }

        LOBYTE(v164) = -86;
        if (!bssl::check_ech_confirmation(this, &v164, &v152, v153))
        {
          v98 = v152;
          goto LABEL_218;
        }

        if ((v164 & 1) == 0)
        {
          ERR_put_error(16, 0, 321, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 413);
          v98 = 47;
LABEL_218:
          bssl::ssl_send_alert(v36, 2, v98);
          goto LABEL_332;
        }

LABEL_107:
        v62 = *(this + 59);
        *(this + 59) = 0;
        std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 53, v62);
        EVP_MD_CTX_move(this + 432, this + 30);
        *(this + 116) = *(this + 128);
        *(this + 94) = *(this + 95);
        v63 = *(v36 + 48);
        v64 = v142[1];
        *(v63 + 48) = *v142;
        *(v63 + 64) = v64;
        v61 = *(v36 + 48);
LABEL_108:
        v65 = *(*&v153[24] + 16);
        *(v61 + 16) = **&v153[24];
        *(v61 + 32) = v65;
        v66 = *(v36 + 104);
        if (v66)
        {
          LOBYTE(v66) = *(*(v36 + 48) + 216) != 2;
        }

        *&v157 = 0xAAAAAAAA00AA0033;
        BYTE2(v157) = *(this + 49) != 0;
        *(&v157 + 1) = 0;
        *&v158 = 0;
        v149 = 0xAAAAAAAA00AA8A3BLL;
        BYTE2(v149) = *(this + 210) != 0;
        v150 = 0;
        v151 = 0;
        v147 = 0xAAAAAAAA00AA0029;
        BYTE2(v147) = v66;
        v148 = 0;
        *&v144[1] = 0xAAAAAAAA0001002BLL;
        v145 = 0;
        v146 = 0;
        *&v164 = &v157;
        *(&v164 + 1) = &v147;
        *&v165 = &v144[1];
        *(&v165 + 1) = &v149;
        if ((bssl::ssl_parse_extensions(&v156, &v152, &v164, 4, 0) & 1) == 0)
        {
          goto LABEL_301;
        }

        LOWORD(v163[0]) = -21846;
        if (HIBYTE(v144[2]) != 1 || !CBS_get_u16(&v145, v163) || v146 || LOWORD(v163[0]) != *(*(v36 + 48) + 208))
        {
          ERR_put_error(16, 0, 288, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 449);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        if (BYTE3(v149) == 1)
        {
          if ((BYTE3(v157) & 1) != 0 || BYTE3(v147) == 1)
          {
            ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 458);
            bssl::ssl_send_alert(v36, 2, 110);
            goto LABEL_332;
          }

          if (!*(this + 210))
          {
            goto LABEL_268;
          }

LABEL_265:
          v152 = 50;
          if ((bssl::ssl_get_new_session(this, v67) & 1) == 0)
          {
LABEL_331:
            bssl::ssl_send_alert(v36, 2, 80);
            goto LABEL_332;
          }

          goto LABEL_266;
        }

        if (*(this + 210))
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 464);
          bssl::ssl_send_alert(v36, 2, 109);
          goto LABEL_332;
        }

        if ((BYTE3(v157) & 1) == 0)
        {
LABEL_268:
          ERR_put_error(16, 0, 258, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 471);
          bssl::ssl_send_alert(v36, 2, 109);
          goto LABEL_332;
        }

        if (BYTE3(v147) != 1)
        {
          goto LABEL_265;
        }

        v152 = 50;
        if ((bssl::ssl_ext_pre_shared_key_parse_serverhello(this, &v152, &v147 + 8) & 1) == 0)
        {
LABEL_301:
          bssl::ssl_send_alert(v36, 2, v152);
          goto LABEL_332;
        }

        v117 = *(v36 + 104);
        if (*(v117 + 4) != *(*(v36 + 48) + 208))
        {
          ERR_put_error(16, 0, 188, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 496);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        if (*(*(v117 + 200) + 36) != *(*(this + 196) + 36))
        {
          ERR_put_error(16, 0, 268, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 502);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        if (!bssl::ssl_session_is_context_valid(this, v117))
        {
          ERR_put_error(16, 0, 101, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 510);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        *(*(v36 + 48) + 222) |= 0x20u;
        *(this + 400) |= 0x1000000u;
        bssl::SSL_SESSION_dup(&v164, *(v36 + 104), 0);
        v118 = v164;
        *&v164 = 0;
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v143, v118);
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](&v164, 0);
        if (!*(this + 192))
        {
          goto LABEL_331;
        }

        bssl::ssl_set_session(v36, 0, v119);
        bssl::ssl_session_renew_timeout(v36, *v143, *(*(v36 + 128) + 308));
LABEL_266:
        *(*(this + 192) + 200) = *(this + 196);
        v122 = bssl::ssl_protocol_version(v36, v120, v121);
        handshake_digest = bssl::ssl_get_handshake_digest(v122, *(this + 196), v123);
        v125 = EVP_MD_size(handshake_digest);
        if ((*(*(v36 + 48) + 222) & 0x20) != 0)
        {
          v127 = &(*v143)->key_arg[2];
          v126 = (*v143)->master_key[38];
        }

        else
        {
          v126 = v125;
          v127 = &bssl::kZeroes;
        }

        if (!bssl::tls13_init_key_schedule(this, v127, v126))
        {
          goto LABEL_332;
        }

        if ((BYTE3(v157) & 1) == 0)
        {
          if ((BYTE3(v149) & 1) == 0)
          {
            ERR_put_error(16, 0, 258, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 547);
            bssl::ssl_send_alert(v36, 2, 109);
            goto LABEL_332;
          }

          v164 = 0uLL;
          v152 = 50;
          v144[0] = 0;
          if (bssl::ssl_ext_pake_parse_serverhello(this, v144, &v164, &v152, &v150))
          {
            *(*(v36 + 48) + 220) = v144[0];
LABEL_310:
            if (bssl::tls13_advance_key_schedule(this, v164, *(&v164 + 1)) && bssl::ssl_hash_message(this, &v160) && bssl::tls13_derive_handshake_secrets(this, v138) && ((*(this + 1601) & 4) != 0 && !*(v36 + 168) || bssl::tls13_set_traffic_key(v36, 2, 1, *(this + 192), this + 130, *(this + 178))) && bssl::tls13_set_traffic_key(v36, 2, 0, *(this + 192), this + 179, *(this + 227)))
            {
              (*(*v36 + 32))(v36);
              *(this + 6) = 3;
              v7 = 1;
LABEL_323:
              bssl::Array<unsigned char>::~Array(&v164);
              goto LABEL_333;
            }

LABEL_322:
            v7 = 0;
            goto LABEL_323;
          }

LABEL_321:
          bssl::ssl_send_alert(v36, 2, v152);
          goto LABEL_322;
        }

        if (!BYTE3(v149))
        {
          v164 = 0uLL;
          v152 = 50;
          if (bssl::ssl_ext_key_share_parse_serverhello(this, &v164, &v152, &v157 + 8))
          {
            goto LABEL_310;
          }

          goto LABEL_321;
        }

        ERR_put_error(16, 0, 1122, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 553);
        bssl::ssl_send_alert(v36, 2, 40);
LABEL_332:
        v7 = 0;
LABEL_333:
        if (*(this + 6) != v6)
        {
          bssl::ssl_do_info_callback(*this, 0x1001);
        }

        if (v7 == 1)
        {
          continue;
        }

        return v7;
      case 3:
        v36 = *this;
        *&v154 = 0xAAAAAAAAAAAAAAAALL;
        *&v37 = 0xAAAAAAAAAAAAAAAALL;
        *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v153 = v37;
        *&v153[16] = v37;
        if (!(*(*v36 + 24))(v36, v153, a3, a4))
        {
          goto LABEL_138;
        }

        if (!bssl::ssl_check_message_type(v36, v153, 8, a4))
        {
          goto LABEL_332;
        }

        v160 = *&v153[8];
        *&v164 = 0xAAAAAAAAAAAAAAAALL;
        *(&v164 + 1) = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16_length_prefixed(&v160, &v164) || *(&v160 + 1))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 618);
          bssl::ssl_send_alert(v36, 2, 50);
          goto LABEL_332;
        }

        if ((bssl::ssl_parse_serverhello_tlsext(this, &v164) & 1) == 0)
        {
          ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 624);
          goto LABEL_332;
        }

        v38 = *(v36 + 48);
        v39 = *(v38 + 222);
        if ((v39 & 0x200) == 0)
        {
          goto LABEL_56;
        }

        if ((v39 & 0x20) == 0)
        {
          bssl::tls13_client_handshake();
        }

        if (*(v38 + 216) == 2)
        {
          bssl::tls13_client_handshake();
        }

        v96 = *(this + 193);
        v97 = *(this + 192);
        if (*(v96 + 200) != *(v97 + 200))
        {
          ERR_put_error(16, 0, 304, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 637);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        v99 = *(v96 + 400);
        if (v99 != *(v38 + 504) || memcmp(*(v96 + 392), *(v38 + 496), v99))
        {
          ERR_put_error(16, 0, 277, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 643);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        if ((*(this + 1603) & 2) != 0 || (*(v97 + 440) & 0x40) != 0)
        {
          ERR_put_error(16, 0, 279, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 651);
          bssl::ssl_send_alert(v36, 2, 47);
          goto LABEL_332;
        }

        *(v97 + 440) |= *(v96 + 440) & 0x40;
        v105 = *(this + 192);
        v106 = *(this + 193);
        v107 = *(v106 + 408);
        v108 = *(v106 + 416);
        if (!bssl::Array<unsigned char>::InitUninitialized(v105 + 408, v108))
        {
          goto LABEL_331;
        }

        if (v108)
        {
          v109 = *(v105 + 408);
          do
          {
            v110 = *v107++;
            *v109++ = v110;
            --v108;
          }

          while (v108);
        }

        v111 = *(this + 192);
        v112 = *(this + 193);
        v113 = *(v112 + 424);
        v114 = *(v112 + 432);
        if (!bssl::Array<unsigned char>::InitUninitialized(v111 + 424, v114))
        {
          goto LABEL_331;
        }

        if (v114)
        {
          v115 = *(v111 + 424);
          do
          {
            v116 = *v113++;
            *v115++ = v116;
            --v114;
          }

          while (v114);
        }

LABEL_56:
        v40 = *v143;
        v41 = *(v36 + 48);
        v42 = *(v41 + 496);
        v43 = *(v41 + 504);
        if (!bssl::Array<unsigned char>::InitUninitialized(&(*v143)[1].sid_ctx_length, v43))
        {
          goto LABEL_331;
        }

        if (v43)
        {
          v44 = *&v40[1].sid_ctx_length;
          do
          {
            v45 = *v42++;
            *v44++ = v45;
            --v43;
          }

          while (v43);
        }

        if (!bssl::ssl_hash_message(this, v153))
        {
          goto LABEL_332;
        }

        (*(*v36 + 32))(v36);
        *(this + 6) = 4;
        if ((*(this + 1601) & 4) == 0 || (*(*(v36 + 48) + 222) & 0x200) != 0)
        {
LABEL_44:
          v7 = 1;
        }

        else
        {
          v46 = bssl::close_early_data(this, 2);
LABEL_64:
          if (v46)
          {
            v7 = 13;
          }

          else
          {
            v7 = 0;
          }
        }

        goto LABEL_333;
      case 4:
        v36 = *this;
        if ((*(*(*this + 48) + 222) & 0x20) != 0)
        {
          if (*(*(*this + 48) + 222) & 0x200) == 0 && (*(*(v36 + 120) + 520))
          {
            v35 = 7;
            goto LABEL_180;
          }

LABEL_179:
          v35 = 8;
LABEL_180:
          *(this + 6) = v35;
          goto LABEL_333;
        }

        if (*(this + 210))
        {
          goto LABEL_179;
        }

        *&v154 = 0xAAAAAAAAAAAAAAAALL;
        *&v72 = 0xAAAAAAAAAAAAAAAALL;
        *(&v72 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v153 = v72;
        *&v153[16] = v72;
        if (!(*(*v36 + 24))(v36, v153, a3, a4))
        {
LABEL_138:
          v7 = 3;
          goto LABEL_333;
        }

        if (*(*(v36 + 48) + 220))
        {
          if (v153[1] == 20)
          {
            goto LABEL_179;
          }

          bssl::ssl_send_alert(v36, 2, 40);
        }

        else
        {
          if (v153[1] != 13)
          {
            goto LABEL_294;
          }

          v160 = 0xAAAAAAAA0001000DLL;
          *&v161 = 0;
          v164 = 0xAAAAAAAA0001002FLL;
          *&v165 = 0;
          v157 = *&v153[8];
          v149 = 0xAAAAAAAAAAAAAAAALL;
          v150 = 0xAAAAAAAAAAAAAAAALL;
          *&v147 = 0xAAAAAAAAAAAAAAAALL;
          *(&v147 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v144[1] = 0xAAAAAAAAAAAAAAAALL;
          v145 = 0xAAAAAAAAAAAAAAAALL;
          LOBYTE(v144[0]) = 50;
          if (!CBS_get_u8_length_prefixed(&v157, &v149) || v150 || !CBS_get_u16_length_prefixed(&v157, &v147) || *(&v157 + 1) || (v163[0] = &v160, v163[1] = &v164, !bssl::ssl_parse_extensions(&v147, v144, v163, 2, 1)) || BYTE3(v160) != 1 || !CBS_get_u16_length_prefixed(&v160 + 1, &v144[1]) || (bssl::tls1_parse_peer_sigalgs(this, &v144[1], v94) & 1) == 0)
          {
            bssl::ssl_send_alert(v36, 2, LOBYTE(v144[0]));
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 741);
            goto LABEL_332;
          }

          if (BYTE3(v164) == 1)
          {
            bssl::SSL_parse_CA_list(v36, v144, &v164 + 1, v163);
            v95 = v163[0];
            v163[0] = 0;
            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v141, v95);
            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v163, 0);
            if (!*v141)
            {
              bssl::ssl_send_alert(v36, 2, LOBYTE(v144[0]));
              goto LABEL_332;
            }
          }

          else
          {
            v137 = OPENSSL_sk_new_null();
            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v141, v137);
            if (!*v141)
            {
              goto LABEL_331;
            }
          }

          *(this + 400) |= 0x20u;
          (*(*(*(v36 + 120) + 16) + 80))(this);
          if (bssl::ssl_hash_message(this, v153))
          {
            (*(*v36 + 32))(v36);
LABEL_294:
            v35 = 5;
            goto LABEL_180;
          }
        }

        goto LABEL_332;
      case 5:
        v49 = *this;
        *&v154 = 0xAAAAAAAAAAAAAAAALL;
        *&v50 = 0xAAAAAAAAAAAAAAAALL;
        *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v153 = v50;
        *&v153[16] = v50;
        if (!(*(*v49 + 24))(v49, v153, a3, a4))
        {
          goto LABEL_138;
        }

        if (v153[1] != 25 && !bssl::ssl_check_message_type(v49, v153, 11, a4) || !bssl::tls13_process_certificate(this, v153, 0) || !bssl::ssl_hash_message(this, v153))
        {
          goto LABEL_332;
        }

        (*(*v49 + 32))(v49);
        goto LABEL_90;
      case 6:
        v51 = *this;
        *&v154 = 0xAAAAAAAAAAAAAAAALL;
        *&v52 = 0xAAAAAAAAAAAAAAAALL;
        *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v153 = v52;
        *&v153[16] = v52;
        if (!(*(*v51 + 24))(v51, v153, a3, a4))
        {
          goto LABEL_138;
        }

        v53 = bssl::ssl_verify_peer_cert(this, a2);
        if (v53 == 1)
        {
          goto LABEL_332;
        }

        if (v53 == 2)
        {
          v7 = 16;
LABEL_90:
          v35 = 6;
          goto LABEL_180;
        }

        if (bssl::ssl_check_message_type(v51, v153, 15, a4) && bssl::tls13_process_certificate_verify(this, v153) && bssl::ssl_hash_message(this, v153))
        {
          (*(*v51 + 32))(v51);
          goto LABEL_179;
        }

        goto LABEL_332;
      case 7:
        v48 = bssl::ssl_reverify_peer_cert(this, 1);
        if (v48 == 1)
        {
          goto LABEL_332;
        }

        if (v48 == 2)
        {
          v35 = 7;
        }

        else
        {
          v35 = 8;
        }

        if (v48 == 2)
        {
          v7 = 16;
        }

        else
        {
          v7 = 1;
        }

        goto LABEL_180;
      case 8:
        v69 = *this;
        *&v154 = 0xAAAAAAAAAAAAAAAALL;
        *&v70 = 0xAAAAAAAAAAAAAAAALL;
        *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v153 = v70;
        *&v153[16] = v70;
        if (!(*(*v69 + 24))(v69, v153, a3, a4))
        {
          goto LABEL_138;
        }

        if (!bssl::ssl_check_message_type(v69, v153, 20, a4))
        {
          goto LABEL_332;
        }

        if (!bssl::tls13_process_finished(this, v153, 0))
        {
          goto LABEL_332;
        }

        if (!bssl::ssl_hash_message(this, v153))
        {
          goto LABEL_332;
        }

        v71 = bssl::SSLTranscript::DigestLen((this + 424));
        if (!bssl::tls13_advance_key_schedule(this, &bssl::kZeroes, v71) || !bssl::tls13_derive_application_secrets(this, a2))
        {
          goto LABEL_332;
        }

        if ((*(*v69 + 40))(v69))
        {
          bssl::ssl_send_alert(v69, 2, 10);
          ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 853);
          goto LABEL_332;
        }

        (*(*v69 + 32))(v69);
        v35 = 9;
        goto LABEL_180;
      case 9:
        v34 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_49;
        }

        if (v34[21] || SSL_is_dtls(*this))
        {
          goto LABEL_48;
        }

        *&v92 = 0xAAAAAAAAAAAAAAAALL;
        *(&v92 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v153[16] = v92;
        v154 = v92;
        *v153 = v92;
        CBB_zero(v153);
        *&v93 = 0xAAAAAAAAAAAAAAAALL;
        *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v161 = v93;
        v162 = v93;
        v160 = v93;
        if (!(*(*v34 + 88))(v34, v153, &v160, 5) || (bssl::ssl_add_message_cbb(v34, v153) & 1) == 0)
        {
          goto LABEL_188;
        }

        CBB_cleanup(v153, v33);
LABEL_48:
        if (!bssl::close_early_data(this, 2))
        {
          goto LABEL_332;
        }

LABEL_49:
        v35 = 10;
        goto LABEL_180;
      case 10:
        if ((*(*(this + 192) + 440) & 0x40) == 0)
        {
          goto LABEL_43;
        }

        v29 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) != 0)
        {
          goto LABEL_43;
        }

        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v153[16] = v30;
        v154 = v30;
        *v153 = v30;
        CBB_zero(v153);
        *&v31 = 0xAAAAAAAAAAAAAAAALL;
        *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v161 = v31;
        v162 = v31;
        v165 = v31;
        v166 = v31;
        v164 = v31;
        v159 = v31;
        v160 = v31;
        v157 = v31;
        v158 = v31;
        if ((*(*(this + 1) + 309) & 0x2000) != 0)
        {
          v32 = 17613;
        }

        else
        {
          v32 = 17513;
        }

        if (!(*(*v29 + 88))(v29, v153, &v160, 8) || !CBB_add_u16_length_prefixed(&v160, &v164) || !CBB_add_u16(&v164, v32) || !CBB_add_u16_length_prefixed(&v164, &v157) || !CBB_add_bytes(&v157, *&(*v143)[1].sid_ctx[12], *&(*v143)[1].sid_ctx[20]) || (bssl::ssl_add_message_cbb(v29, v153) & 1) == 0)
        {
          goto LABEL_188;
        }

        CBB_cleanup(v153, v33);
LABEL_43:
        *(this + 6) = 11;
        goto LABEL_44;
      case 11:
        if ((*(this + 1600) & 0x20) == 0)
        {
          goto LABEL_140;
        }

        v77 = *this;
        if (*(*(*this + 48) + 216) == 2)
        {
          SSL_certs_clear(*this);
LABEL_154:
          *v153 = 0;
          *&v153[8] = 0;
          if ((bssl::ssl_get_credential_list(this, v153) & 1) == 0)
          {
            goto LABEL_190;
          }

          if (!*&v153[8])
          {
            goto LABEL_169;
          }

          v85 = *v153;
          v86 = 8 * *&v153[8];
          while (2)
          {
            v87 = *v85;
            ERR_clear_error();
            LOWORD(v160) = -21846;
            v89 = v87[1];
            if (v89)
            {
              if (v89 == 2)
              {
                if ((*(this + 1602) & 0x40) != 0 && *(this + 747) == 2)
                {
                  goto LABEL_161;
                }

                v90 = 924;
                v91 = 253;
              }

              else
              {
                v90 = 930;
                v91 = 228;
              }

              ERR_put_error(16, 0, v91, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", v90);
            }

            else
            {
LABEL_161:
              if (bssl::tls1_choose_signature_algorithm(this, v87, &v160, v88) && bssl::ssl_credential_matches_requested_issuers(this, v87, v82))
              {
                SSL_CREDENTIAL_up_ref(v87);
                std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v5, v87);
                *(this + 805) = v160;
LABEL_168:
                if (*v5)
                {
LABEL_169:
                  if (bssl::tls13_add_certificate(this, v81, v82, v83, v84))
                  {
                    *(this + 6) = 12;
                    v7 = 1;
LABEL_191:
                    OPENSSL_free(*v153);
                    goto LABEL_333;
                  }
                }

                else
                {
                  bssl::ssl_send_alert(v77, 2, 40);
                }

LABEL_190:
                v7 = 0;
                goto LABEL_191;
              }
            }

            ++v85;
            v86 -= 8;
            if (!v86)
            {
              goto LABEL_168;
            }

            continue;
          }
        }

        v78 = *(*(this + 1) + 32);
        v79 = *(v78 + 64);
        if (!v79)
        {
          goto LABEL_154;
        }

        v80 = v79(*this, *(v78 + 72), a3, a4);
        if (!v80)
        {
          bssl::ssl_send_alert(v77, 2, 80);
          ERR_put_error(16, 0, 126, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 961);
          goto LABEL_332;
        }

        if ((v80 & 0x80000000) == 0)
        {
          goto LABEL_154;
        }

        *(this + 6) = 11;
        v7 = 8;
        goto LABEL_333;
      case 12:
        if (*v5 && (v68 = bssl::tls13_add_certificate_verify(this, a2)) != 0)
        {
          if (v68 == 2)
          {
            goto LABEL_332;
          }

          if (v68 != 1)
          {
            bssl::tls13_client_handshake();
          }

          v7 = 9;
          v35 = 12;
        }

        else
        {
LABEL_140:
          v35 = 13;
        }

        goto LABEL_180;
      case 13:
        v27 = *this;
        v28 = *(this + 400);
        *(this + 400) = v28 | 0x1000000;
        if ((v28 & 0x2000000) == 0)
        {
          goto LABEL_26;
        }

        *&v73 = 0xAAAAAAAAAAAAAAAALL;
        *(&v73 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v153[16] = v73;
        v154 = v73;
        *v153 = v73;
        CBB_zero(v153);
        *&v74 = 0xAAAAAAAAAAAAAAAALL;
        *(&v74 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v161 = v74;
        v162 = v74;
        v160 = v74;
        if (!(*(*v27 + 88))(v27, v153, &v160, 203) || !bssl::tls1_write_channel_id(this, &v160, v75, v76) || (bssl::ssl_add_message_cbb(v27, v153) & 1) == 0)
        {
LABEL_188:
          CBB_cleanup(v153, v33);
          goto LABEL_332;
        }

        CBB_cleanup(v153, v33);
LABEL_26:
        if (!bssl::tls13_add_finished(this, a2) || !bssl::tls13_set_traffic_key(v27, 3, 1, *(this + 192), this + 228, *(this + 276)) || !bssl::tls13_set_traffic_key(v27, 3, 0, *(this + 192), this + 277, *(this + 325)) || !bssl::tls13_derive_resumption_secret(this, a2))
        {
          goto LABEL_332;
        }

        *(this + 6) = 14;
LABEL_72:
        v7 = 4;
        goto LABEL_333;
      case 14:
        return v7;
      default:
        goto LABEL_332;
    }
  }
}

void nw_protocol_boringssl_output_available_cold_3(uint64_t a1)
{
  if (g_boringssl_log)
  {
    if (OUTLINED_FUNCTION_18_0())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void MLKEM768_public_key_free(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }
}

void bssl::anonymous namespace::X25519MLKEM768KeyShare::~X25519MLKEM768KeyShare(void **this)
{
  *this = &unk_1F1CB0458;
  MLKEM768_public_key_free(this + 5);
}

{

  JUMPOUT(0x1AC57E0F0);
}

uint64_t HKDF_extract(uint64_t a1, void *a2, EVP_MD *md, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = EVP_MD_type(md);
  boringssl_crypto_hash_nid_to_cc_digest(v9);
  if (cchkdf_extract())
  {
    return 0;
  }

  *a2 = EVP_MD_size(md);
  return 1;
}

uint64_t boringssl_crypto_hash_nid_to_cc_digest(uint64_t a1)
{
  if (a1 > 672)
  {
    switch(a1)
    {
      case 0x2A1:

        return MEMORY[0x1EEE6FB70]();
      case 0x2A2:

        return MEMORY[0x1EEE6FB80]();
      case 0x2A3:

        return MEMORY[0x1EEE6FB60]();
      default:
LABEL_20:
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_crypto_hash_nid_to_cc_digest_cold_1();
        }

        return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:

        return MEMORY[0x1EEE6F8D8]();
      case 0x40:

        return MEMORY[0x1EEE6FB58]();
      case 0x2A0:

        return MEMORY[0x1EEE6FB68]();
      default:
        goto LABEL_20;
    }
  }
}

int EVP_Digest(const void *data, size_t count, unsigned __int8 *md, unsigned int *size, const EVP_MD *type, ENGINE *impl)
{
  memset(&v12, 0, sizeof(v12));
  v10 = EVP_DigestInit_ex(&v12, type, md);
  if (v10)
  {
    (v12.digest->init)(&v12, data, count);
    EVP_DigestFinal_ex(&v12, md, size);
  }

  EVP_MD_CTX_cleanup(&v12);
  return v10;
}

BOOL CRYPTO_tls13_hkdf_expand_label(uint64_t a1, uint64_t a2, EVP_MD *a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7, const void *a8, size_t a9)
{
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = v17;
  v24[2] = v17;
  v23[2] = v17;
  v24[0] = v17;
  v23[0] = v17;
  v23[1] = v17;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0;
  CBB_zero(v24);
  if (CBB_init(v24, a7 + a9 + 10) && CBB_add_u16(v24, a2) && CBB_add_u8_length_prefixed(v24, v23) && CBB_add_bytes(v23, "tls13 ", 6uLL) && CBB_add_bytes(v23, a6, a7) && CBB_add_u8_length_prefixed(v24, v23) && CBB_add_bytes(v23, a8, a9) && CBB_finish(v24, &v22, &v21))
  {
    v19 = HKDF_expand(a1, a2, a3, a4, a5, v22, v21);
    OPENSSL_free(v22);
  }

  else
  {
    CBB_cleanup(v24, v18);
    return 0;
  }

  return v19;
}

BOOL bssl::hkdf_expand_label(uint64_t a1, uint64_t a2, EVP_MD *a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7, uint64_t a8, const void *a9, size_t a10, char a11)
{
  if (a11)
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[1] = v18;
    v26[2] = v18;
    v25[2] = v18;
    v26[0] = v18;
    v25[0] = v18;
    v25[1] = v18;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0;
    CBB_zero(v26);
    if (!CBB_init(v26, a7 + a10 + 10) || !CBB_add_u16(v26, a2) || !CBB_add_u8_length_prefixed(v26, v25) || !CBB_add_bytes(v25, "dtls13", 6uLL) || !CBB_add_bytes(v25, a6, a7) || !CBB_add_u8_length_prefixed(v26, v25) || !CBB_add_bytes(v25, a9, a10) || !CBB_finish(v26, &v24, &v23))
    {
      CBB_cleanup(v26, v19);
      return 0;
    }

    v20 = HKDF_expand(a1, a2, a3, a4, a5, v24, v23);
    OPENSSL_free(v24);
    return v20;
  }

  else
  {
    return CRYPTO_tls13_hkdf_expand_label(a1, a2, a3, a4, a5, a6, a7, a9, a10);
  }
}

BOOL HKDF_expand(uint64_t a1, uint64_t a2, EVP_MD *md, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = EVP_MD_type(md);
  boringssl_crypto_hash_nid_to_cc_digest(v7);
  return cchkdf_expand() == 0;
}

uint64_t bssl::derive_secret_with_transcript(uint64_t a1, uint64_t a2, bssl::SSLTranscript *this, const void *a4, size_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v10;
  v23 = v10;
  *v20 = v10;
  v21 = v10;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  result = bssl::SSLTranscript::GetHash(this, v20, &v19);
  if (result)
  {
    v12 = bssl::SSLTranscript::DigestLen(this);
    if (v12 >= 0x31)
    {
      abort();
    }

    v13 = v12;
    *(a2 + 48) = v12;
    v14 = bssl::SSLTranscript::Digest(this);
    v15 = *(a1 + 80);
    v16 = v19;
    v17 = SSL_is_dtls(*a1) != 0;
    return bssl::hkdf_expand_label(a2, v13, v14, a1 + 32, v15, a4, a5, v18, v20, v16, v17);
  }

  return result;
}

uint64_t bssl::tls13_derive_handshake_secrets(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v4 = this + 130;
  v3 = *this;
  if (!bssl::derive_secret_with_transcript(this, this + 130, (this + 424), "c hs traffic", 0xCuLL) || !bssl::ssl_log_secret(v3, "CLIENT_HANDSHAKE_TRAFFIC_SECRET", v4, *(this + 178)) || !bssl::derive_secret_with_transcript(this, this + 179, (this + 424), "s hs traffic", 0xCuLL))
  {
    return 0;
  }

  v5 = *(this + 227);

  return bssl::ssl_log_secret(v3, "SERVER_HANDSHAKE_TRAFFIC_SECRET", this + 179, v5);
}

uint64_t bssl::tls13_set_traffic_key(uint64_t a1, const ssl_session_st *a2, uint64_t a3, bssl::SSLAEADContext **this, char *a5, unint64_t a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v12 = bssl::ssl_session_protocol_version(this, a2);
  digest = bssl::ssl_session_get_digest(this, v13);
  is_dtls = SSL_is_dtls(a1);
  v50 = 0;
  if (*(a1 + 168))
  {
    bssl::SSLAEADContext::CreatePlaceholderForQUIC(&v52, this[25]);
    v16 = v52;
    *&v52 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v50, v16);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v52, 0);
    v17 = a6;
    v18 = a5;
  }

  else
  {
    v48 = 0xAAAAAAAAAAAAAAAALL;
    v49 = 0xAAAAAAAAAAAAAAAALL;
    if ((bssl::ssl_cipher_get_evp_aead(&v49, &v48, &v48, this[25], v12) & 1) == 0)
    {
      goto LABEL_31;
    }

    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v55 = v23;
    v56 = v23;
    v53 = v23;
    v54 = v23;
    v52 = v23;
    memset(v51, 170, sizeof(v51));
    v24 = EVP_AEAD_key_length(v49);
    if (v24 >= 0x51)
    {
      goto LABEL_33;
    }

    v26 = EVP_AEAD_nonce_length(v49);
    if (v26 >= 0x19)
    {
      goto LABEL_33;
    }

    if (!bssl::hkdf_expand_label(&v52, v24, digest, a5, a6, "key", 3uLL, v25, 0, 0, is_dtls != 0) || !bssl::hkdf_expand_label(v51, v26, digest, a5, a6, "iv", 2uLL, v27, 0, 0, is_dtls != 0))
    {
      goto LABEL_31;
    }

    bssl::SSLAEADContext::Create(a3, *(this + 2), this[25], &v52, v24, 0, 0, &v47, v51, v26);
    v28 = v47;
    v47 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v50, v28);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v47, 0);
    v17 = 0;
    v18 = 0;
  }

  if (!v50)
  {
    goto LABEL_31;
  }

  if (!is_dtls)
  {
    goto LABEL_9;
  }

  v19 = *(v50 + 76);
  if (!v19)
  {
LABEL_31:
    v43 = 0;
    goto LABEL_32;
  }

  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v20;
  v53 = v20;
  v22 = (*(*v19 + 16))(v19);
  if (v22 >= 0x21)
  {
    goto LABEL_33;
  }

  if (!bssl::hkdf_expand_label(&v52, v22, digest, a5, a6, "sn", 2uLL, v21, 0, 0, 1) || ((*(*v19 + 24))(v19, &v52, v22) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  if (a6 >= 0x32)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_enc.cc", 242);
    goto LABEL_31;
  }

  v29 = *a1;
  v30 = v50;
  if (!a3)
  {
    v37 = *(v29 + 17);
    v50 = 0;
    v46 = v30;
    v38 = v37(a1, a2, &v46, v18, v17);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v46, 0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (a6 != 49)
    {
      v39 = *(a1 + 48);
      *(v39 + 393) = 0;
      if (a6)
      {
        v40 = (v39 + 345);
        v41 = a6;
        do
        {
          v42 = *a5++;
          *v40++ = v42;
          --v41;
        }

        while (v41);
      }

      *(v39 + 393) = a6;
      goto LABEL_30;
    }

LABEL_33:
    abort();
  }

  v31 = *(v29 + 18);
  v50 = 0;
  v45 = v30;
  v32 = v31(a1, a2, &v45, v18, v17);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v45, 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (a6 == 49)
  {
    goto LABEL_33;
  }

  v33 = *(a1 + 48);
  *(v33 + 344) = 0;
  if (a6)
  {
    v34 = (v33 + 296);
    v35 = a6;
    do
    {
      v36 = *a5++;
      *v34++ = v36;
      --v35;
    }

    while (v35);
  }

  *(v33 + 344) = a6;
LABEL_30:
  v43 = 1;
LABEL_32:
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v50, 0);
  return v43;
}

void sub_1A900BAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, bssl::SSLAEADContext *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_get_new_session(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *this;
  if ((*(*this + 149) & 2) != 0)
  {
    ERR_put_error(16, 0, 209, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 348);
    return 0;
  }

  v22[0] = *(*(v2 + 120) + 16);
  result = bssl::New<ssl_session_st,bssl::SSL_X509_METHOD const*&>(v22);
  v23 = result;
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 440) & 0xEF | (16 * (*(v2 + 180) & 1));
  *(result + 440) = v6;
  *(result + 4) = *(*(v2 + 48) + 208);
  *(result + 440) = v6 & 0xDF | (32 * (*(v2 + 168) != 0));
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_get_current_time(v2, v22);
  *(v5 + 192) = v22[0];
  v9 = bssl::ssl_protocol_version(v2, v7, v8);
  v10 = *(v2 + 128);
  if (v9 < 0x304)
  {
    v11 = *(v10 + 304);
    v12 = v11;
  }

  else
  {
    v11 = *(v10 + 308);
    v12 = 604800;
  }

  *(v5 + 184) = v11;
  *(v5 + 188) = v12;
  v13 = *(*(this + 1) + 32);
  v14 = *(v13 + 120);
  if (v14 > 0x20)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 380);
    v23 = 0;
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v5);
    return 0;
  }

  *(v5 + 124) = 0;
  if (v14)
  {
    v15 = (v13 + 88);
    v16 = (v5 + 92);
    v17 = v14;
    do
    {
      v18 = *v15++;
      *v16++ = v18;
      --v17;
    }

    while (v17);
  }

  *(v5 + 124) = v14;
  v19 = *(v5 + 440);
  *(v5 + 176) = 65;
  *(v5 + 440) = v19 & 0x7B | 4;
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 192, v5);
  v21 = *(v2 + 104);
  v20 = (v2 + 104);
  if (v21)
  {
    std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v20, 0);
  }

  return 1;
}

void sub_1A900BCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](SSL_SESSION **a1, SSL_SESSION *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    SSL_SESSION_free(v3);
  }
}

uint64_t bssl::tls13_init_key_schedule(uint64_t a1, const ssl_st *a2, uint64_t a3)
{
  v6 = bssl::ssl_protocol_version(*a1, a2, a3);
  result = bssl::init_key_schedule(a1, (a1 + 424), v6, *(a1 + 1568), v7);
  if (result)
  {
    if ((*(a1 + 1602) & 4) == 0)
    {
      bssl::SSLTranscript::FreeBuffer((a1 + 424));
    }

    return bssl::hkdf_extract_to_secret(a1, (a1 + 424), a2, a3);
  }

  return result;
}

uint64_t bssl::ssl_ctx_get_current_time(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 792);
  if (v3)
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    result = v3(0, &v6);
    tv_sec = v6.tv_sec;
    if (v6.tv_sec < 0)
    {
      bssl::ssl_ctx_get_current_time();
    }
  }

  else
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    result = gettimeofday(&v6, 0);
    tv_sec = v6.tv_sec;
    if (v6.tv_sec < 0)
    {
      bssl::ssl_ctx_get_current_time();
    }
  }

  *a2 = tv_sec;
  *(a2 + 8) = v6.tv_usec;
  return result;
}

BOOL bssl::check_ech_confirmation(uint64_t a1, ssl_st *a2, char *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a4 + 32) == 32 && ((v8 = *(a4 + 24), v9 = *v8, v10 = v8[1], v12 = v8[2], v11 = v8[3], v9 == 0x11619AE574AD21CFLL) ? (v13 = v10 == 0x91B8651E028C1DBELL) : (v13 = 0), v13 ? (v14 = v12 == 0x5E8CBB7A1611A2C2) : (v14 = 0), v14 ? (v15 = v11 == 0x9C33A8C8E2099E07) : (v15 = 0), v15))
  {
    v24 = 0;
    v23 = 0xAAAAAAAA0001FE0DLL;
    v25 = 0;
    v22 = &v23;
    if (!bssl::ssl_parse_extensions((a4 + 64), a3, &v22, 1, 1))
    {
      return 0;
    }

    if ((v23 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != 8)
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 160);
      v19 = 0;
      v20 = 50;
      goto LABEL_17;
    }

    v17 = v24 - *a4;
    v18 = 1;
  }

  else
  {
    v17 = bssl::ssl_ech_confirmation_signal_hello_offset(*a1, a2);
    v18 = 0;
  }

  if (!*(a1 + 1560))
  {
LABEL_22:
    LOBYTE(a2->version) = 0;
    return 1;
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  v19 = bssl::ssl_ech_accept_confirmation(a1, &v23, 8, a1 + 520, 32, (a1 + 472), v18, v16, *a4, *(a4 + 8), v17);
  if (!v19)
  {
    v20 = 80;
LABEL_17:
    *a3 = v20;
    return v19;
  }

  LOBYTE(a2->version) = CRYPTO_memcmp((*a4 + v17), &v23, 8) == 0;
  return v19;
}

uint64_t bssl::init_key_schedule(bssl *this, bssl::SSL_HANDSHAKE *a2, bssl::SSLTranscript *a3, ssl_cipher_st *a4, const ssl_cipher_st *a5)
{
  inited = bssl::SSLTranscript::InitHash(a2, a3, a4);
  if (inited)
  {
    *(this + 80) = 0;
    v8 = bssl::SSLTranscript::DigestLen(a2);
    if (v8 > 0x30)
    {
      abort();
    }

    v9 = v8;
    v10 = *(this + 80);
    if (v8 > v10)
    {
      bzero(this + v10 + 32, v8 - v10);
    }

    *(this + 80) = v9;
  }

  return inited;
}

BOOL bssl::hkdf_extract_to_secret(uint64_t a1, bssl::SSLTranscript *this, uint64_t a3, uint64_t a4)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v7 = bssl::SSLTranscript::Digest(this);
  v8 = HKDF_extract(a1 + 32, &v10, v7, a3, a4, a1 + 32, *(a1 + 80));
  if (v8 && v10 != *(a1 + 80))
  {
    bssl::hkdf_extract_to_secret();
  }

  return v8 != 0;
}

uint64_t bssl::ssl_ext_key_share_parse_serverhello(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!a1[49])
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2351);
LABEL_7:
    result = 0;
    v9 = 80;
    goto LABEL_8;
  }

  memset(v14, 170, sizeof(v14));
  if (CBS_get_u16(a4, v14) && CBS_get_u16_length_prefixed(a4, &v14[1]) && !*(a4 + 8))
  {
    v10 = a1[49];
    v11 = (*(*v10 + 16))(v10);
    if (v11 != v14[0])
    {
      v12 = a1[50];
      if (!v12 || (v13 = (*(*v12 + 16))(v12), v13 != v14[0]))
      {
        *a3 = 47;
        ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2370);
        return 0;
      }

      v10 = a1[50];
    }

    if ((*(*v10 + 40))(v10, a2, a3, *&v14[1], *&v14[5]))
    {
      *(a1[192] + 6) = v14[0];
      std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](a1 + 49, 0);
      std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](a1 + 50, 0);
      return 1;
    }

    goto LABEL_7;
  }

  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2361);
  result = 0;
  v9 = 50;
LABEL_8:
  *a3 = v9;
  return result;
}

uint64_t bssl::tls13_advance_key_schedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v6;
  v19 = v6;
  *md = v6;
  v17 = v6;
  size = -1431655766;
  v7 = bssl::SSLTranscript::Digest((a1 + 424));
  result = EVP_Digest(0, 0, md, &size, v7, 0);
  if (result)
  {
    v9 = *(a1 + 80);
    v10 = bssl::SSLTranscript::Digest((a1 + 424));
    v11 = *(a1 + 80);
    v12 = size;
    is_dtls = SSL_is_dtls(*a1);
    result = bssl::hkdf_expand_label(a1 + 32, v9, v10, a1 + 32, v11, "derived", 7uLL, v14, md, v12, is_dtls != 0);
    if (result)
    {
      return bssl::hkdf_extract_to_secret(a1, (a1 + 424), a2, a3);
    }
  }

  return result;
}

int SSL_state(const SSL *ssl)
{
  v1 = *(ssl->handshake_func + 35);
  if (!v1 || (*(v1 + 1600) & 8) != 0)
  {
    return 3;
  }

  else
  {
    return 12288;
  }
}

const char *bssl::ssl_client_handshake_state(uint64_t a1)
{
  v1 = *(a1 + 20);
  result = "TLS client start_connect";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "TLS client enter_early_data";
      break;
    case 2:
      result = "TLS client early_reverify_server_certificate";
      break;
    case 3:
      result = "TLS client read_server_hello";
      break;
    case 4:
      result = bssl::tls13_client_handshake_state(a1);
      break;
    case 5:
      result = "TLS client read_server_certificate";
      break;
    case 6:
      result = "TLS client read_certificate_status";
      break;
    case 7:
      result = "TLS client verify_server_certificate";
      break;
    case 8:
      result = "TLS client reverify_server_certificate";
      break;
    case 9:
      result = "TLS client read_server_key_exchange";
      break;
    case 10:
      result = "TLS client read_certificate_request";
      break;
    case 11:
      result = "TLS client read_server_hello_done";
      break;
    case 12:
      result = "TLS client send_client_certificate";
      break;
    case 13:
      result = "TLS client send_client_key_exchange";
      break;
    case 14:
      result = "TLS client send_client_certificate_verify";
      break;
    case 15:
      result = "TLS client send_client_finished";
      break;
    case 16:
      result = "TLS client finish_flight";
      break;
    case 17:
      result = "TLS client read_session_ticket";
      break;
    case 18:
      result = "TLS client process_change_cipher_spec";
      break;
    case 19:
      result = "TLS client read_server_finished";
      break;
    case 20:
      result = "TLS client finish_client_handshake";
      break;
    case 21:
      result = "TLS client done";
      break;
    default:
      result = "TLS client unknown";
      break;
  }

  return result;
}

const char *__cdecl SSL_state_string_long(const SSL *s)
{
  v3 = *(s->handshake_func + 35);
  if (!v3)
  {
    return "SSL negotiation finished successfully";
  }

  if (BYTE4(s->param))
  {
    return bssl::ssl_server_handshake_state(v3, v1);
  }

  return bssl::ssl_client_handshake_state(v3);
}

uint64_t bssl::ssl_version(bssl *this, const ssl_st *a2)
{
  if (SSL_in_early_data(this) && (*(this + 180) & 1) == 0)
  {
    return *(*(*(*(this + 6) + 280) + 1544) + 4);
  }

  else
  {
    v3 = *(*(this + 6) + 208);
    if (!v3)
    {
      if (SSL_is_dtls(this))
      {
        return -259;
      }

      else
      {
        return 771;
      }
    }
  }

  return v3;
}

uint64_t BUF_MEM_append(void *a1, const void *a2, size_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *a1 + a3;
  if (__CFADD__(*a1, a3))
  {
    ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/buf/buf.c", 127);
    return 0;
  }

  else
  {
    result = BUF_MEM_reserve(a1, *a1 + a3);
    if (result)
    {
      memcpy((a1[1] + *a1), a2, a3);
      *a1 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t bssl::SSLTranscript::AddToBufferOrHash(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *a1;
  if (!v6 || (result = BUF_MEM_append(v6, a2, a3), result))
  {
    if (EVP_MD_CTX_md((a1 + 8)))
    {
      EVP_DigestUpdate((a1 + 8), a2, a3);
    }

    return 1;
  }

  return result;
}

uint64_t boringssl_session_handshake_incomplete(void *a1, int a2, char a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1[1];
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  error = SSL_get_error(*(v4 + 392), a2);
  v7 = error;
  if (error == 2)
  {
    v8 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_read_stalls;
  }

  else
  {
    if (error != 3)
    {
      goto LABEL_8;
    }

    v8 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_write_stalls;
  }

  ++*(v4 + *v8);
LABEL_8:
  ssl_error_code_description = boringssl_helper_get_ssl_error_code_description(error);
  if (boringssl_helper_error_is_fatal(v7))
  {
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained((v4 + 16)), v13 = v12[435], v12, v11, (v13 & 1) == 0))
    {
      v14 = objc_loadWeakRetained((v4 + 16));
      if (v14)
      {
        v15 = objc_loadWeakRetained((v4 + 16));
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
          v23 = g_boringssl_log;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            boringssl_session_handshake_incomplete_cold_1();
          }
        }
      }
    }

    ERR_print_errors_cb(boringssl_session_handshake_error_print, a1);
    return 0xFFFFFFFFLL;
  }

  if (v7 == 15)
  {
    if (a3)
    {
      return 0;
    }

    SSL_reset_early_data_reject(*(v4 + 392));
  }

  v17 = objc_loadWeakRetained((v4 + 16));
  if (!v17 || (v18 = v17, v19 = objc_loadWeakRetained((v4 + 16)), v20 = v19[435], v19, v18, (v20 & 1) == 0))
  {
    v18 = objc_loadWeakRetained((v4 + 16));
    if (v18)
    {
      v21 = objc_loadWeakRetained((v4 + 16));
      v22 = (v21[435] & 1) == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (g_boringssl_log)
      {
        v18 = g_boringssl_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v25 = objc_loadWeakRetained((v4 + 16));
          if (v25)
          {
            v39 = objc_loadWeakRetained((v4 + 16));
            v26 = v39 + 351;
          }

          else
          {
            v26 = &unk_1A9098A9F;
          }

          v27 = objc_loadWeakRetained((v4 + 16));
          *buf = 136447490;
          v41 = "boringssl_session_handshake_incomplete";
          v42 = 1024;
          v43 = 257;
          v44 = 2082;
          v45 = v26;
          v46 = 2048;
          v47 = v27;
          v48 = 2082;
          v49 = ssl_error_code_description;
          v50 = 1024;
          v51 = v7;
          _os_log_impl(&dword_1A8FF5000, v18, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Handshake incomplete: %{public}s [%d]", buf, 0x36u);

          if (v25)
          {
          }
        }
      }
    }
  }

  boringssl_context_update_encryption_level(a1);
  if (v7 != 15)
  {
    return 0;
  }

  v28 = objc_loadWeakRetained((v4 + 16));
  if (!v28 || (v29 = v28, v30 = objc_loadWeakRetained((v4 + 16)), v31 = v30[435], v30, v29, (v31 & 1) == 0))
  {
    v32 = objc_loadWeakRetained((v4 + 16));
    if (v32)
    {
      v33 = objc_loadWeakRetained((v4 + 16));
      v34 = (v33[435] & 1) == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (g_boringssl_log)
      {
        v35 = g_boringssl_log;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_loadWeakRetained((v4 + 16));
          if (v36)
          {
            v18 = objc_loadWeakRetained((v4 + 16));
            v37 = &v18[43].isa + 7;
          }

          else
          {
            v37 = &unk_1A9098A9F;
          }

          v38 = objc_loadWeakRetained((v4 + 16));
          *buf = 136446978;
          v41 = "boringssl_session_handshake_incomplete";
          v42 = 1024;
          v43 = 261;
          v44 = 2082;
          v45 = v37;
          v46 = 2048;
          v47 = v38;
          _os_log_impl(&dword_1A8FF5000, v35, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Restarting handshake", buf, 0x26u);

          if (v36)
          {
          }
        }
      }
    }
  }

  return boringssl_session_handshake_continue_inner(a1, 1);
}

uint64_t BUF_MEM_reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) >= a2)
  {
    return 1;
  }

  if (a2 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = 85;
LABEL_9:
    ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/buf/buf.c", v2);
    return 0;
  }

  if (a2 >= 0xBFFFFFFFFFFFFFFDLL)
  {
    v2 = 91;
    goto LABEL_9;
  }

  v5 = (2 * (((a2 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  result = OPENSSL_realloc(*(a1 + 8), v5);
  if (result)
  {
    *(a1 + 8) = result;
    *(a1 + 16) = v5;
    return 1;
  }

  return result;
}

uint64_t boringssl_session_update_flight_time(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 292) <= 1u)
        {
          v5 = a2;
          result = boringssl_session_in_early_data(result, a2);
          if ((result & 1) == 0)
          {
            if ((*(v3 + 548) & 1) != 0 && ((*(v3 + 550) >> 1) & 1) != v5)
            {
              if (*(v3 + 432))
              {
                result = boringssl_helper_get_current_time_ms();
                *(v3 + 440) += result - *(v3 + 432);
                *(v3 + 432) = 0;
                if (!*(v3 + 456))
                {
                  *(v3 + 456) = result;
                }
              }
            }

            else
            {
              result = boringssl_helper_get_current_time_ms();
              *(v3 + 432) = result;
              if (!*(v3 + 448))
              {
                *(v3 + 448) = *(v3 + 432);
              }

              *(v3 + 550) = *(v3 + 550) & 0xFD | (2 * (v5 & 1));
              *(v3 + 548) |= 1u;
            }

            v6 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_inbound_byte_count;
            if (v5 == 1)
            {
              v6 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_outbound_byte_count;
            }

            *(v3 + *v6) += a3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_supports_version(uint64_t a1, unsigned __int16 *a2)
{
  v3 = 6;
  if (***a1)
  {
    v3 = 4;
  }

  v4 = &bssl::kTLSVersions;
  if (***a1)
  {
    v4 = &bssl::kDTLSVersions;
  }

  do
  {
    v6 = *v4++;
    v5 = v6;
    v7 = v6 == a2 || v3 == 0;
    v3 -= 2;
  }

  while (!v7);
  if (v5 == a2)
  {
    v9 = -21846;
    result = bssl::ssl_protocol_version_from_wire(&v9, a2);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 28) <= v9)
    {
      return v9 <= *(a1 + 30);
    }
  }

  return 0;
}

uint64_t bssl::SSLTranscript::Update(uint64_t a1, char *a2, size_t a3)
{
  v3 = a3;
  v4 = a2;
  if ((*(a1 + 40) & 1) != 0 && *(a1 + 42) >= 0x304u)
  {
    v3 = a3 - 12;
    if (a3 < 0xC || !bssl::SSLTranscript::AddToBufferOrHash(a1, a2, 4uLL))
    {
      return 0;
    }

    v4 += 12;
  }

  return bssl::SSLTranscript::AddToBufferOrHash(a1, v4, v3);
}

const char *boringssl_helper_get_ssl_error_code_description(unsigned int a1)
{
  if (a1 > 0x12)
  {
    return "unknown error";
  }

  else
  {
    return off_1E785F8F0[a1];
  }
}

uint64_t boringssl_context_update_encryption_level(uint64_t a1)
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

  v5 = v1;
  v2 = v5;
  v3 = nw_protocol_options_access_handle();

  return v3;
}

uint64_t boringssl_session_in_false_start(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        return SSL_in_false_start(result) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_in_false_start(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return (*(v1 + 1600) >> 9) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL __boringssl_context_update_encryption_level_block_invoke(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 160) && *(a2 + 168))
  {
    v4 = MEMORY[0x1AC57F4F0]();
    level = SSL_quic_read_level(*(*(a1 + 32) + 392));
    v6 = *(a1 + 32);
    if (level != *(v6 + 540))
    {
      v7 = level;
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((*(a1 + 32) + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
      {
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
        }

        else
        {
          v15 = 1;
        }

        if (v15 && g_boringssl_log)
        {
          v16 = g_boringssl_log;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v32 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v33 = *(a1 + 32);
            v49 = v32;
            if (v32)
            {
              v38 = v33 != 0;
              if (v33)
              {
                v39 = objc_loadWeakRetained((v33 + 16));
                v33 = *(a1 + 32);
              }

              else
              {
                v39 = 0;
              }

              v47 = v38;
              v46 = v39;
              v34 = v39 + 351;
            }

            else
            {
              v47 = 0;
              v34 = &unk_1A9098A9F;
            }

            v42 = objc_loadWeakRetained((v33 + 16));
            v43 = *(*(a1 + 32) + 540);
            *buf = 136447490;
            v58 = "boringssl_context_update_encryption_level_block_invoke";
            v59 = 1024;
            v60 = 2617;
            v61 = 2082;
            v62 = v34;
            v63 = 2048;
            v64 = v42;
            v65 = 1024;
            v66 = v43;
            v67 = 1024;
            v68 = v7;
            _os_log_debug_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] encryption_read_level %u -> %u", buf, 0x32u);

            if (v47)
            {
            }
          }
        }
      }

      *(*(a1 + 32) + 540) = v7;
      v17 = *(a2 + 168);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __boringssl_context_update_encryption_level_block_invoke_217;
      block[3] = &unk_1E7869728;
      v56 = v4;
      v55 = *(a1 + 32);
      dispatch_async(v17, block);

      v6 = *(a1 + 32);
    }

    v18 = SSL_quic_write_level(*(v6 + 392));
    v19 = *(a1 + 32);
    if (v18 != *(v19 + 544))
    {
      v20 = v18;
      v21 = objc_loadWeakRetained((v19 + 16));
      if (!v21 || (v22 = v21, v23 = objc_loadWeakRetained((*(a1 + 32) + 16)), v24 = v23[435], v23, v22, (v24 & 1) == 0))
      {
        v25 = *(a1 + 32);
        if (v25)
        {
          v26 = objc_loadWeakRetained((v25 + 16));
          if (v26)
          {
            v27 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v28 = (v27[435] & 1) == 0;
          }

          else
          {
            v28 = 1;
          }
        }

        else
        {
          v28 = 1;
        }

        if (v28 && g_boringssl_log)
        {
          v29 = g_boringssl_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v35 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v36 = *(a1 + 32);
            v50 = v35;
            if (v35)
            {
              v40 = v36 != 0;
              if (v36)
              {
                v41 = objc_loadWeakRetained((v36 + 16));
                v36 = *(a1 + 32);
              }

              else
              {
                v41 = 0;
              }

              v48 = v40;
              v46 = v41;
              v37 = v41 + 351;
            }

            else
            {
              v48 = 0;
              v37 = &unk_1A9098A9F;
            }

            v44 = objc_loadWeakRetained((v36 + 16));
            v45 = *(*(a1 + 32) + 544);
            *buf = 136447490;
            v58 = "boringssl_context_update_encryption_level_block_invoke_2";
            v59 = 1024;
            v60 = 2626;
            v61 = 2082;
            v62 = v37;
            v63 = 2048;
            v64 = v44;
            v65 = 1024;
            v66 = v45;
            v67 = 1024;
            v68 = v20;
            _os_log_debug_impl(&dword_1A8FF5000, v29, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] encryption_write_level %u -> %u", buf, 0x32u);

            if (v48)
            {
            }
          }
        }
      }

      *(*(a1 + 32) + 544) = v20;
      v30 = *(a2 + 168);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __boringssl_context_update_encryption_level_block_invoke_219;
      v51[3] = &unk_1E7869728;
      v53 = v4;
      v52 = *(a1 + 32);
      dispatch_async(v30, v51);
    }
  }

  return a2 != 0;
}

void nw_protocol_boringssl_handshake_negotiate_cold_2()
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

void *bssl::New<ssl_session_st,bssl::SSL_X509_METHOD const*&>(void **a1)
{
  result = OPENSSL_malloc(0x1D0uLL);
  if (result)
  {
    return ssl_session_st::ssl_session_st(result, *a1, v3);
  }

  return result;
}

void CBB_cleanup(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    CBB_cleanup_cold_1();
  }

  if (*(a1 + 40))
  {
    v3 = *(a1 + 16);

    OPENSSL_free(v3);
  }
}

uint64_t bssl::ssl_tls13_cipher_meets_policy(int a1, int a2)
{
  LOBYTE(v2) = 1;
  if (a2 <= 1)
  {
    if (!a2)
    {
      return v2 & 1;
    }

    if (a2 == 1)
    {
      if ((a1 - 4865) >= 3)
      {
        bssl::ssl_tls13_cipher_meets_policy();
      }

      v2 = 3u >> ((a1 - 1) & 7);
      return v2 & 1;
    }

LABEL_8:
    bssl::ssl_tls13_cipher_meets_policy();
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    goto LABEL_8;
  }

  LOBYTE(v2) = a1 - 1;
  if ((a1 - 4865) >= 3)
  {
    bssl::ssl_tls13_cipher_meets_policy();
  }

  return v2 & 1;
}

uint64_t SSL_CIPHER_get_max_version(uint64_t a1)
{
  if (*(a1 + 20) == 16)
  {
    return 772;
  }

  else if (*(a1 + 24) == 16)
  {
    return 772;
  }

  else
  {
    return 771;
  }
}

uint64_t SSL_CIPHER_get_protocol_id(uint64_t a1, uint64_t a2)
{
  if (HIBYTE(*(a1 + 16)) != 3)
  {
    SSL_CIPHER_get_protocol_id_cold_1();
  }

  return *(a1 + 16);
}

uint64_t SSL_CIPHER_get_min_version(_DWORD *a1)
{
  if (a1[5] == 16 || a1[6] == 16)
  {
    return 772;
  }

  if (a1[9] == 1)
  {
    return 768;
  }

  return 771;
}

uint64_t cbb_add_u(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = CBB_add_space(a1, &v9, a3);
  if (result)
  {
    if (a3)
    {
      v7 = a3 - 1;
      do
      {
        *(v9 + v7) = a2;
        a2 >>= 8;
        --v7;
      }

      while (v7 < a3);
    }

    if (a2)
    {
      v8 = (a1 + 16);
      if (*(a1 + 8))
      {
        v8 = *v8;
      }

      result = 0;
      *(v8 + 24) |= 2u;
      *a1 = 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t *fe_loose_invert(unint64_t *a1, unint64_t *a2)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v4;
  v20[1] = v4;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v4;
  v16[1] = v4;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v4;
  v14[1] = v4;
  fe_sq_tl(v20, a2);
  fe_sq_tt(v18, v20);
  fe_sq_tt(v18, v18);
  fe_mul_impl(v18, a2, v18);
  fe_mul_impl(v20, v20, v18);
  fe_sq_tt(v16, v20);
  fe_mul_impl(v18, v18, v16);
  fe_sq_tt(v16, v18);
  v5 = 4;
  do
  {
    fe_sq_tt(v16, v16);
    --v5;
  }

  while (v5);
  fe_mul_impl(v18, v16, v18);
  fe_sq_tt(v16, v18);
  v6 = 9;
  do
  {
    fe_sq_tt(v16, v16);
    --v6;
  }

  while (v6);
  fe_mul_impl(v16, v16, v18);
  fe_sq_tt(v14, v16);
  v7 = 19;
  do
  {
    fe_sq_tt(v14, v14);
    --v7;
  }

  while (v7);
  fe_mul_impl(v16, v14, v16);
  fe_sq_tt(v16, v16);
  v8 = 9;
  do
  {
    fe_sq_tt(v16, v16);
    --v8;
  }

  while (v8);
  fe_mul_impl(v18, v16, v18);
  fe_sq_tt(v16, v18);
  v9 = 49;
  do
  {
    fe_sq_tt(v16, v16);
    --v9;
  }

  while (v9);
  fe_mul_impl(v16, v16, v18);
  fe_sq_tt(v14, v16);
  v10 = 99;
  do
  {
    fe_sq_tt(v14, v14);
    --v10;
  }

  while (v10);
  fe_mul_impl(v16, v14, v16);
  fe_sq_tt(v16, v16);
  v11 = 49;
  do
  {
    fe_sq_tt(v16, v16);
    --v11;
  }

  while (v11);
  fe_mul_impl(v18, v16, v18);
  fe_sq_tt(v18, v18);
  v12 = 4;
  do
  {
    fe_sq_tt(v18, v18);
    --v12;
  }

  while (v12);
  return fe_mul_impl(a1, v18, v20);
}

uint64_t cbb_add_length_prefixed(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = CBB_flush(a1);
  if (result)
  {

    return cbb_add_child(a1, a2, v3, 0);
  }

  return result;
}

uint64_t CBB_flush(uint64_t *a1)
{
  v2 = a1 + 2;
  v3 = a1 + 2;
  if (*(a1 + 8))
  {
    v3 = *v2;
    if (!*v2)
    {
      return 0;
    }
  }

  if ((v3[3] & 2) != 0)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (!*(v4 + 8))
  {
    CBB_flush_cold_3();
  }

  if (*(v4 + 16) != v3)
  {
    CBB_flush_cold_1();
  }

  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (!CBB_flush(*a1))
  {
    goto LABEL_33;
  }

  v7 = v5 + v6;
  v8 = *(v4 + 24);
  if (v5 + v6 < v8)
  {
    goto LABEL_33;
  }

  v9 = v3[1];
  v10 = v9 - v7;
  if (v9 < v7)
  {
    goto LABEL_33;
  }

  LODWORD(v11) = *(v4 + 32);
  if (*(v4 + 33))
  {
    if (v11 != 1)
    {
      CBB_flush_cold_2();
    }

    if (v10 > 0xFFFFFFFE)
    {
      v12 = 221;
LABEL_32:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bytestring/cbb.c", v12);
      goto LABEL_33;
    }

    if (v10 >> 24)
    {
      v14 = -124;
      v15 = 4;
    }

    else if (v10 >> 16)
    {
      v14 = -125;
      v15 = 3;
    }

    else if (v10 <= 0xFF)
    {
      if (v10 <= 0x7F)
      {
        LODWORD(v11) = 0;
        v14 = v9 - v7;
        v10 = 0;
LABEL_26:
        v17 = *v3;
        *(v4 + 24) = v8 + 1;
        *(v17 + v8) = v14;
        *(v4 + 32) = v11;
        goto LABEL_27;
      }

      v14 = -127;
      v15 = 1;
    }

    else
    {
      v14 = -126;
      v15 = 2;
    }

    v11 = v15;
    if (!cbb_buffer_reserve(v3, 0, v15))
    {
LABEL_33:
      if (*(a1 + 8))
      {
        v2 = *v2;
      }

      result = 0;
      *(v2 + 24) |= 2u;
      goto LABEL_36;
    }

    v16 = *v3;
    v3[1] += v11;
    memmove((v16 + v7 + v11), (v16 + v7), v10);
    v8 = *(v4 + 24);
    goto LABEL_26;
  }

LABEL_27:
  if (v11)
  {
    v18 = v11 - 1;
    do
    {
      *(*v3 + *(v4 + 24) + v18) = v10;
      v10 >>= 8;
      --v18;
    }

    while (v18 < *(v4 + 32));
  }

  if (v10)
  {
    v12 = 260;
    goto LABEL_32;
  }

  *(v4 + 16) = 0;
  result = 1;
LABEL_36:
  *a1 = 0;
  return result;
}

uint64_t cbb_buffer_reserve(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = __CFADD__(v4, a3);
    v6 = v4 + a3;
    if (v5)
    {
      v7 = 81;
LABEL_5:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bytestring/cbb.c", v7);
LABEL_6:
      result = 0;
      *(v3 + 24) |= 2u;
      return result;
    }

    v9 = *(result + 16);
    if (v6 > v9)
    {
      if ((*(result + 24) & 1) == 0)
      {
        v7 = 87;
        goto LABEL_5;
      }

      v10 = 2 * v9;
      if (2 * v9 <= v6)
      {
        v10 = v6;
      }

      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }

      v12 = OPENSSL_realloc(*result, v11);
      if (!v12)
      {
        goto LABEL_6;
      }

      *v3 = v12;
      *(v3 + 16) = v11;
    }

    if (a2)
    {
      *a2 = *v3 + *(v3 + 8);
    }

    return 1;
  }

  return result;
}

unint64_t *fe_frombytes_strict(unint64_t *result, unsigned int *a2)
{
  v2 = *(a2 + 31);
  if (v2 >> 7 == 1)
  {
    fe_frombytes_strict_cold_2();
  }

  v3 = 0;
  v4 = *(a2 + 30);
  v5 = *(a2 + 6);
  v6 = (*(a2 + 5) << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v5 & 7) << 48) | *a2 | (*(a2 + 4) << 32);
  v7 = *(a2 + 12);
  v8 = *(a2 + 29);
  v9 = *(a2 + 28);
  v10 = *(a2 + 27);
  v11 = *(a2 + 26);
  v12 = *(a2 + 22);
  v13 = ((v7 & 0x3F) << 45) | (*(a2 + 11) << 37) | (*(a2 + 10) << 29) | (*(a2 + 9) << 21) | (*(a2 + 8) << 13) | (32 * *(a2 + 7)) | (v5 >> 3);
  v14 = a2[4];
  v15 = ((v14 & 0x1FFFFFF) << 26) | (*(a2 + 15) << 18) | (*(a2 + 14) << 10) | (4 * *(a2 + 13)) | (v7 >> 6);
  v16 = ((v12 & 0xFFFFFFF) << 23) | (*(a2 + 21) << 15) | (*(a2 + 20) << 7) | (v14 >> 25);
  *result = v6;
  result[1] = v13;
  result[2] = v15;
  result[3] = v16;
  result[4] = (v2 << 44) | (v4 << 36) | (v8 << 28) | (v9 << 20) | (v10 << 12) | (16 * v11) | (v12 >> 28);
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_frombytes_strict_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

int64x2_t *fe_sub(int64x2_t *result, int64x2_t *a2, int64x2_t *a3)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2->i64[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_sub_cold_3();
    }
  }

  for (j = 0; j != 5; ++j)
  {
    if (a3->i64[j] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_sub_cold_2();
    }
  }

  v5 = 0;
  v6 = a2[2].i64[0] - a3[2].i64[0] + 0xFFFFFFFFFFFFELL;
  v7 = vaddq_s64(vsubq_s64(a2[1], a3[1]), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  *result = vaddq_s64(vsubq_s64(*a2, *a3), xmmword_1A90B20A0);
  result[1] = v7;
  result[2].i64[0] = v6;
  do
  {
    if (result->i64[v5] >= 0x1A666666666665uLL)
    {
      fe_sub_cold_1();
    }

    ++v5;
  }

  while (v5 != 5);
  return result;
}

int64x2_t *fe_add(int64x2_t *result, int64x2_t *a2, int64x2_t *a3)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2->i64[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_add_cold_3();
    }
  }

  for (j = 0; j != 5; ++j)
  {
    if (a3->i64[j] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_add_cold_2();
    }
  }

  v5 = 0;
  v6 = a3[2].i64[0] + a2[2].i64[0];
  v7 = vaddq_s64(a3[1], a2[1]);
  *result = vaddq_s64(*a3, *a2);
  result[1] = v7;
  result[2].i64[0] = v6;
  do
  {
    if (result->i64[v5] >= 0x1A666666666665uLL)
    {
      fe_add_cold_1();
    }

    ++v5;
  }

  while (v5 != 5);
  return result;
}

unint64_t *fe_mul_impl(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665)
    {
      fe_mul_impl_cold_3();
    }
  }

  for (j = 0; j != 5; ++j)
  {
    if (a3[j] >= 0x1A666666666665)
    {
      fe_mul_impl_cold_2();
    }
  }

  v5 = 0;
  v6 = a2[4];
  v8 = a3[3];
  v7 = a3[4];
  v9 = 19 * v7;
  v11 = a3[1];
  v10 = a3[2];
  v12 = *a3;
  v13 = 19 * v11 * v6;
  v14 = a2[2];
  v15 = a2[3];
  v16 = v15 * 19 * v10;
  v17 = __CFADD__(v16, v13);
  v18 = v16 + v13;
  v19 = *a2;
  v20 = a2[1];
  v22 = __PAIR128__(((19 * v11 * v6) >> 64) + v17 + ((v15 * (19 * v10)) >> 64), v18) + v14 * (19 * v8) + v20 * (19 * v7) + v19 * v12;
  v23 = v15 * (19 * v7) + 19 * v8 * v6;
  v25 = (v15 * (19 * v8) + 19 * v10 * v6 + v14 * (19 * v7) + v12 * v20 + v19 * v11) >> 64;
  v24 = v15 * 19 * v8 + 19 * v10 * v6 + v14 * 19 * v7 + v12 * v20 + v19 * v11;
  v26 = v22 >> 51;
  v17 = __CFADD__(v24, v26);
  v27 = v24 + v26;
  if (v17)
  {
    ++v25;
  }

  v29 = (v23 + v20 * v11 + v12 * v14 + v19 * v10) >> 64;
  v28 = v23 + v20 * v11 + v12 * v14 + v19 * v10;
  v30 = (v9 * v6) >> 64;
  v31 = v9 * v6;
  *(&v33 + 1) = v25;
  *&v33 = v27;
  v32 = v33 >> 51;
  v17 = __CFADD__(v28, v32);
  v34 = v28 + v32;
  if (v17)
  {
    ++v29;
  }

  *(&v36 + 1) = v29;
  *&v36 = v34;
  v35 = v36 >> 51;
  v38 = (v14 * v11 + __PAIR128__(v30, v31) + v20 * v10 + v12 * v15 + v19 * v8) >> 64;
  v37 = v14 * v11 + v31 + v20 * v10 + v12 * v15 + v19 * v8;
  v17 = __CFADD__(v37, v35);
  v39 = v37 + v35;
  if (v17)
  {
    ++v38;
  }

  v41 = v14 * v10 + v15 * v11 + v20 * v8 + v12 * v6 + v19 * v7;
  v40 = *(&v41 + 1);
  *(&v43 + 1) = v38;
  *&v43 = v39;
  v42 = v43 >> 51;
  v17 = __CFADD__(v41, v42);
  v44 = v41 + v42;
  if (v17)
  {
    v40 = *(&v41 + 1) + 1;
  }

  *(&v45 + 1) = v40;
  *&v45 = v44;
  v46 = (v22 & 0x7FFFFFFFFFFFFLL) + 19 * (v45 >> 51);
  v47 = (v27 & 0x7FFFFFFFFFFFFLL) + (v46 >> 51);
  *result = v46 & 0x7FFFFFFFFFFFFLL;
  result[1] = v47 & 0x7FFFFFFFFFFFFLL;
  result[2] = (v34 & 0x7FFFFFFFFFFFFLL) + (v47 >> 51);
  result[3] = v39 & 0x7FFFFFFFFFFFFLL;
  result[4] = v44 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v5] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_mul_impl_cold_1();
    }

    ++v5;
  }

  while (v5 != 5);
  return result;
}

unint64_t *fe_sq_tl(unint64_t *result, unint64_t *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665)
    {
      fe_sq_tl_cold_2();
    }
  }

  v3 = 0;
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = 2 * v6;
  v8 = *a2;
  v9 = a2[1];
  v11 = (v6 * (38 * v4)) >> 64;
  v12 = v6 * 38 * v4;
  v13 = v9 * (38 * v4) + v6 * (38 * v5) + v8 * v8;
  v14 = (v9 * (2 * v5) + v6 * v6) >> 64;
  v15 = v9 * 2 * v5 + v6 * v6;
  v16 = (v8 * (2 * v5)) >> 64;
  v17 = v8 * 2 * v5;
  v18 = __PAIR128__(v14, v15) + v8 * (2 * v4);
  v19 = (v8 * v7) >> 64;
  v20 = (v8 * (2 * v9)) >> 64;
  v21 = v8 * 2 * v9;
  v22 = v8 * v7;
  v24 = v9 * v7 + 19 * v4 * v4 + __PAIR128__(v16, v17);
  v23 = *(&v24 + 1);
  v26 = v9 * v9 + v5 * 38 * v4 + v22;
  v25 = (v9 * v9 + v5 * (38 * v4) + __PAIR128__(v19, v22)) >> 64;
  v28 = __PAIR128__(v11, v12) + 19 * v5 * v5 + __PAIR128__(v20, v21);
  v27 = *(&v28 + 1);
  v29 = v13 >> 51;
  if (__CFADD__(v28, v29))
  {
    v27 = *(&v28 + 1) + 1;
  }

  *(&v31 + 1) = v27;
  *&v31 = v28 + v29;
  v30 = v31 >> 51;
  if (__CFADD__(v26, v30))
  {
    ++v25;
  }

  *(&v33 + 1) = v25;
  *&v33 = v26 + v30;
  v32 = v33 >> 51;
  v34 = __CFADD__(v24, v32);
  v35 = v24 + v32;
  if (v34)
  {
    v23 = *(&v24 + 1) + 1;
  }

  *(&v37 + 1) = v23;
  *&v37 = v35;
  v36 = v37 >> 51;
  v34 = __CFADD__(v18, v36);
  v38 = v18 + v36;
  if (v34)
  {
    v39 = *(&v18 + 1) + 1;
  }

  else
  {
    v39 = *(&v18 + 1);
  }

  *(&v40 + 1) = v39;
  *&v40 = v38;
  v41 = (v13 & 0x7FFFFFFFFFFFFLL) + 19 * (v40 >> 51);
  v42 = ((v28 + v29) & 0x7FFFFFFFFFFFFLL) + (v41 >> 51);
  *result = v41 & 0x7FFFFFFFFFFFFLL;
  result[1] = v42 & 0x7FFFFFFFFFFFFLL;
  result[2] = ((v26 + v30) & 0x7FFFFFFFFFFFFLL) + (v42 >> 51);
  result[3] = v35 & 0x7FFFFFFFFFFFFLL;
  result[4] = v38 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_sq_tl_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

unint64_t *fe_sq_tt(unint64_t *result, unint64_t *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665)
    {
      fe_sq_tt_cold_2();
    }
  }

  v3 = 0;
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = 2 * v6;
  v8 = *a2;
  v9 = a2[1];
  v11 = (v6 * (38 * v4)) >> 64;
  v12 = v6 * 38 * v4;
  v13 = v9 * (38 * v4) + v6 * (38 * v5) + v8 * v8;
  v14 = (v9 * (2 * v5) + v6 * v6) >> 64;
  v15 = v9 * 2 * v5 + v6 * v6;
  v16 = (v8 * (2 * v5)) >> 64;
  v17 = v8 * 2 * v5;
  v18 = __PAIR128__(v14, v15) + v8 * (2 * v4);
  v19 = (v8 * v7) >> 64;
  v20 = (v8 * (2 * v9)) >> 64;
  v21 = v8 * 2 * v9;
  v22 = v8 * v7;
  v24 = v9 * v7 + 19 * v4 * v4 + __PAIR128__(v16, v17);
  v23 = *(&v24 + 1);
  v26 = v9 * v9 + v5 * 38 * v4 + v22;
  v25 = (v9 * v9 + v5 * (38 * v4) + __PAIR128__(v19, v22)) >> 64;
  v28 = __PAIR128__(v11, v12) + 19 * v5 * v5 + __PAIR128__(v20, v21);
  v27 = *(&v28 + 1);
  v29 = v13 >> 51;
  if (__CFADD__(v28, v29))
  {
    v27 = *(&v28 + 1) + 1;
  }

  *(&v31 + 1) = v27;
  *&v31 = v28 + v29;
  v30 = v31 >> 51;
  if (__CFADD__(v26, v30))
  {
    ++v25;
  }

  *(&v33 + 1) = v25;
  *&v33 = v26 + v30;
  v32 = v33 >> 51;
  v34 = __CFADD__(v24, v32);
  v35 = v24 + v32;
  if (v34)
  {
    v23 = *(&v24 + 1) + 1;
  }

  *(&v37 + 1) = v23;
  *&v37 = v35;
  v36 = v37 >> 51;
  v34 = __CFADD__(v18, v36);
  v38 = v18 + v36;
  if (v34)
  {
    v39 = *(&v18 + 1) + 1;
  }

  else
  {
    v39 = *(&v18 + 1);
  }

  *(&v40 + 1) = v39;
  *&v40 = v38;
  v41 = (v13 & 0x7FFFFFFFFFFFFLL) + 19 * (v40 >> 51);
  v42 = ((v28 + v29) & 0x7FFFFFFFFFFFFLL) + (v41 >> 51);
  *result = v41 & 0x7FFFFFFFFFFFFLL;
  result[1] = v42 & 0x7FFFFFFFFFFFFLL;
  result[2] = ((v26 + v30) & 0x7FFFFFFFFFFFFLL) + (v42 >> 51);
  result[3] = v35 & 0x7FFFFFFFFFFFFLL;
  result[4] = v38 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_sq_tt_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

_BYTE *fe_tobytes(_BYTE *result, void *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_tobytes_cold_1();
    }
  }

  v3 = *a2 - 0x7FFFFFFFFFFEDLL;
  v4 = a2[1] - -(v3 >> 51) - 0x7FFFFFFFFFFFFLL;
  v5 = a2[2] - -(v4 >> 51) - 0x7FFFFFFFFFFFFLL;
  v6 = a2[3] - -(v5 >> 51) - 0x7FFFFFFFFFFFFLL;
  v7 = v3 & 0x7FFFFFFFFFFFFLL;
  v8 = v4 & 0x7FFFFFFFFFFFFLL;
  v9 = v5 & 0x7FFFFFFFFFFFFLL;
  v10 = v6 & 0x7FFFFFFFFFFFFLL;
  v11 = a2[4] - -(v6 >> 51) - 0x7FFFFFFFFFFFFLL;
  if ((v11 & 0x7F8000000000000) != 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = (v12 & 0x7FFFFFFFFFFEDLL) + v7;
  result[1] = BYTE1(v13);
  result[2] = BYTE2(v13);
  result[3] = ((v12 & 0xFFFFFFED) + v7) >> 24;
  result[4] = BYTE4(v13);
  result[5] = BYTE5(v13);
  v14 = (v12 & 0x7FFFFFFFFFFFFLL) + v8 + (v13 >> 51);
  *result = v13;
  result[6] = BYTE6(v13) & 7 | (8 * (v12 + v8 + (v13 >> 51)));
  result[7] = v14 >> 5;
  result[8] = v14 >> 13;
  result[9] = v14 >> 21;
  result[10] = v14 >> 29;
  result[11] = v14 >> 37;
  v15 = v9 + (v12 & 0x7FFFFFFFFFFFFLL) + (v14 >> 51);
  result[12] = (v14 >> 45) & 0x3F | ((v9 + v12 + (v14 >> 51)) << 6);
  result[13] = v15 >> 2;
  result[14] = v15 >> 10;
  result[15] = v15 >> 18;
  result[16] = v15 >> 26;
  result[17] = v15 >> 34;
  result[18] = v15 >> 42;
  v16 = v10 + (v12 & 0x7FFFFFFFFFFFFLL) + (v15 >> 51);
  result[19] = ((v15 & 0x4000000000000) != 0) | (2 * (v10 + v12 + (v15 >> 51)));
  result[20] = v16 >> 7;
  result[21] = v16 >> 15;
  result[22] = v16 >> 23;
  result[23] = v16 >> 31;
  result[24] = v16 >> 39;
  v17 = v11 + v12 + (v16 >> 51);
  result[25] = (v16 >> 47) & 0xF | (16 * v17);
  result[26] = v17 >> 4;
  result[27] = v17 >> 12;
  result[28] = v17 >> 20;
  result[29] = v17 >> 28;
  result[30] = v17 >> 36;
  result[31] = (v17 >> 44) & 0x7F;
  return result;
}

uint64_t cbb_add_child(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (*a1)
  {
    cbb_add_child_cold_1();
  }

  v4 = a4;
  if (a3 != 1 && a4)
  {
    cbb_add_child_cold_2();
  }

  v8 = (a1 + 16);
  if (*(a1 + 8))
  {
    v8 = *v8;
  }

  v9 = v8[1];
  v11 = 0xAAAAAAAAAAAAAAAALL;
  result = cbb_buffer_reserve(v8, &v11, a3);
  if (result)
  {
    v8[1] += a3;
    if (a3)
    {
      bzero(v11, a3);
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    result = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = a3;
    *(a2 + 33) = *(a2 + 33) & 0xFE | v4 & 1;
    *a1 = a2;
  }

  return result;
}

uint64_t CBB_add_space(uint64_t a1, void *a2, uint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v7 = *(a1 + 8);
    v8 = (a1 + 16);
    if (v7)
    {
      v8 = *v8;
    }

    result = cbb_buffer_reserve(v8, a2, a3);
    if (result)
    {
      v8[1] += a3;
      return 1;
    }
  }

  return result;
}

int64x2_t *ge_p2_dbl(uint64_t a1, uint64_t a2)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v4;
  v13[1] = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v4;
  v11[1] = v4;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v4;
  v9[1] = v4;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v4;
  v7[1] = v4;
  fe_sq_tt(v13, a2);
  fe_sq_tt(v11, (a2 + 40));
  fe_sq_tt(v9, (a2 + 80));
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v5;
  v15[1] = v5;
  fe_add(v15, v9, v9);
  fe_carry(v9, v15);
  fe_add((a1 + 40), a2, (a2 + 40));
  fe_sq_tl(v7, (a1 + 40));
  fe_add((a1 + 40), v11, v13);
  fe_sub((a1 + 80), v11, v13);
  fe_carry(v11, (a1 + 40));
  fe_sub(a1, v7, v11);
  fe_carry(v11, (a1 + 80));
  return fe_sub((a1 + 120), v9, v11);
}

unint64_t *x25519_ge_p1p1_to_p2(unint64_t *a1, unint64_t *a2)
{
  fe_mul_impl(a1, a2, a2 + 15);
  fe_mul_impl(a1 + 5, a2 + 5, a2 + 10);

  return fe_mul_impl(a1 + 10, a2 + 10, a2 + 15);
}

unint64_t *fe_carry(unint64_t *result, void *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665uLL)
    {
      fe_carry_cold_2();
    }
  }

  v3 = 0;
  v4 = a2[1] + (*a2 >> 51);
  v5 = a2[2] + (v4 >> 51);
  v6 = a2[3] + (v5 >> 51);
  v7 = a2[4] + (v6 >> 51);
  v8 = (*a2 & 0x7FFFFFFFFFFFFLL) + 19 * (v7 >> 51);
  v9 = (v4 & 0x7FFFFFFFFFFFFLL) + (v8 >> 51);
  *result = v8 & 0x7FFFFFFFFFFFFLL;
  result[1] = v9 & 0x7FFFFFFFFFFFFLL;
  result[2] = (v5 & 0x7FFFFFFFFFFFFLL) + (v9 >> 51);
  result[3] = v6 & 0x7FFFFFFFFFFFFLL;
  result[4] = v7 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_carry_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

uint64_t cmov(uint64_t result, uint64_t a2, unsigned int a3)
{
  for (i = 0; i != 40; i += 8)
  {
    *(result + i) = *(a2 + i) & -a3 | *(result + i) & (a3 - 1);
  }

  for (j = 0; j != 40; j += 8)
  {
    *(result + 40 + j) = *(a2 + 40 + j) & -a3 | *(result + 40 + j) & (a3 - 1);
  }

  for (k = 0; k != 40; k += 8)
  {
    *(result + 80 + k) = *(a2 + 80 + k) & -a3 | *(result + 80 + k) & (a3 - 1);
  }

  return result;
}

int64x2_t *fe_neg(int64x2_t *result, int64x2_t *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2->i64[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_neg_cold_2();
    }
  }

  v3 = 0;
  v4 = 0xFFFFFFFFFFFFELL - a2[2].i64[0];
  v5 = vsubq_s64(vdupq_n_s64(0xFFFFFFFFFFFFEuLL), a2[1]);
  *result = vsubq_s64(xmmword_1A90B20A0, *a2);
  result[1] = v5;
  result[2].i64[0] = v4;
  do
  {
    if (result->i64[v3] >= 0x1A666666666665uLL)
    {
      fe_neg_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

BOOL bssl::anonymous namespace::X25519KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = v3;
  v5[1] = v3;
  X25519_keypair(v5, (a1 + 8));
  return CBB_add_bytes(a2, v5, 0x20uLL) != 0;
}

uint64_t bssl::tls_init_message(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (CBB_init(a2, 0x40uLL) && CBB_add_u8(a2, v4) && CBB_add_u24_length_prefixed(a2, a3))
  {
    return 1;
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 176);
  CBB_cleanup(a2, v8);
  return 0;
}

_BYTE *X25519_public_from_private(_BYTE *a1, int8x16_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v16 = *a2;
  v17 = v3;
  v16.i8[0] &= 0xF8u;
  HIBYTE(v17) = HIBYTE(v3) & 0x3F | 0x40;
  v4.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v15[3] = v4;
  v15[4] = v4;
  v15[1] = v4;
  v15[2] = v4;
  v14[2] = v4;
  v15[0] = v4;
  v14[0] = v4;
  v14[1] = v4;
  v13[0] = v4;
  v13[1] = v4;
  x25519_ge_scalarmult_base(v13, &v16);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v5;
  v11[1] = v5;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v5;
  v9[1] = v5;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v5;
  v7[1] = v5;
  fe_add(v11, v15, (v14 + 8));
  fe_sub(v9, v15, (v14 + 8));
  fe_loose_invert(v7, v9);
  fe_mul_impl(v7, v11, v7);
  return fe_tobytes(a1, v7);
}

unint64_t *x25519_ge_p1p1_to_p3(unint64_t *a1, unint64_t *a2)
{
  fe_mul_impl(a1, a2, a2 + 15);
  fe_mul_impl(a1 + 5, a2 + 5, a2 + 10);
  fe_mul_impl(a1 + 10, a2 + 10, a2 + 15);

  return fe_mul_impl(a1 + 15, a2, a2 + 5);
}

unint64_t *x25519_ge_scalarmult_base(uint64_t a1, int8x16_t *a2)
{
  v3 = 0;
  v40 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[2] = v4;
  v39 = v4;
  v38[0] = v4;
  v38[1] = v4;
  v5.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v5.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v6 = *a2++;
    v41.val[0] = vandq_s8(v6, v5);
    v41.val[1] = vshrq_n_u8(v6, 4uLL);
    v7 = &v38[v3];
    vst2q_s8(v7, v41);
    v3 += 2;
  }

  while (v3 != 4);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v38 + v8) + v9;
    v9 = (v10 + 8) << 24 >> 28;
    *(v38 + v8++) = v10 - ((v10 + 8) & 0xF0);
  }

  while (v8 != 63);
  v11 = 0;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[8] = v12;
  v29[9] = v12;
  v29[6] = v12;
  v29[7] = v12;
  v29[4] = v12;
  v29[5] = v12;
  v29[2] = v12;
  v29[3] = v12;
  v29[0] = v12;
  v29[1] = v12;
  v25[0] = v12;
  v25[1] = v12;
  v25[2] = v12;
  v25[3] = v12;
  v25[4] = v12;
  v25[5] = v12;
  v25[6] = v12;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v39) += v9;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v13 = 1;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  v14 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  do
  {
    table_select(v25, v11, *(v38 + v13));
    ge_madd(v29, a1, v25);
    x25519_ge_p1p1_to_p3(a1, v29);
    ++v11;
    v15 = v13 >= 0x3E;
    v13 += 2;
  }

  while (!v15);
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[5] = v16;
  v27[6] = v16;
  v27[3] = v16;
  v27[4] = v16;
  v27[1] = v16;
  v27[2] = v16;
  v27[0] = v16;
  v17 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v17;
  v18 = *(a1 + 32);
  v19 = *(a1 + 56);
  v32 = *(a1 + 40);
  v33 = v19;
  v20 = *(a1 + 72);
  v31 = v18;
  v34 = v20;
  v21 = *(a1 + 96);
  v35 = *v14;
  v36 = v21;
  v37 = *(a1 + 112);
  ge_p2_dbl(v29, v30);
  x25519_ge_p1p1_to_p2(v27, v29);
  ge_p2_dbl(v29, v27);
  x25519_ge_p1p1_to_p2(v27, v29);
  ge_p2_dbl(v29, v27);
  x25519_ge_p1p1_to_p2(v27, v29);
  ge_p2_dbl(v29, v27);
  x25519_ge_p1p1_to_p3(a1, v29);
  v22 = 0;
  v23 = 0;
  do
  {
    table_select(v25, v22, *(v38 + v23));
    ge_madd(v29, a1, v25);
    result = x25519_ge_p1p1_to_p3(a1, v29);
    ++v22;
    v15 = v23 >= 0x3E;
    v23 += 2;
  }

  while (!v15);
  return result;
}

int64x2_t *ge_madd(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
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
  fe_mul_impl(v8, a3 + 10, (a2 + 120));
  fe_add((a1 + 120), (a2 + 80), (a2 + 80));
  fe_sub(a1, v10, v12);
  fe_add((a1 + 40), v10, v12);
  fe_carry(v10, (a1 + 120));
  fe_add((a1 + 80), v10, v8);
  return fe_sub((a1 + 120), v10, v8);
}

uint64_t table_select(uint64_t a1, int a2, unsigned int a3)
{
  v4 = 0;
  v41 = *MEMORY[0x1E69E9840];
  memset(v40, 0, sizeof(v40));
  v39 = 0u;
  v38 = ((a3 - 1) & ~a3) < 0;
  v40[15] = v38;
  v6 = &k25519Precomp + 768 * a2;
  do
  {
    v7 = &k25519Precomp + 768 * a2 + 96 * v4;
    if (&v41 > v7 && v7 + 96 > &v38)
    {
      table_select_cold_1();
    }

    v9 = 0;
    v10 = vdupq_n_s8(((++v4 ^ (a3 - 2 * ((a3 >> 31) & a3))) - 1) >> 63);
    do
    {
      *(&v38 + v9) = veorq_s8(vandq_s8(*&v6[v9], v10), *(&v38 + v9));
      v9 += 16;
    }

    while (v9 != 96);
    v6 += 96;
  }

  while (v4 != 8);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v11.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v11.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v35 = v11;
  v36 = v11;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v32 = v11;
  v33 = v11;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v29 = v11;
  v30 = v11;
  fe_frombytes_strict(&v35, &v38);
  fe_frombytes_strict(&v32, &v40[15]);
  fe_frombytes_strict(&v29, &v40[47]);
  v12 = v36;
  v13 = v35;
  v14 = v36;
  *a1 = v35;
  *(a1 + 16) = v12;
  v15 = v33;
  *(a1 + 40) = v32;
  v16 = v32;
  v17 = v33;
  *(a1 + 56) = v15;
  v18 = v30;
  *(a1 + 80) = v29;
  *(a1 + 96) = v18;
  v22[0] = v16;
  v22[1] = v17;
  v15.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v15.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v15;
  v27[1] = v15;
  v19 = v37;
  *(a1 + 32) = v37;
  v20 = v34;
  *(a1 + 72) = v34;
  *(a1 + 112) = v31;
  v23 = v20;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v24 = v13;
  v25 = v14;
  v26 = v19;
  fe_neg(v27, &v29);
  return cmov(a1, v22, (a3 >> 7) & 1);
}

_BYTE *X25519_keypair(_BYTE *a1, int8x16_t *buf)
{
  RAND_bytes(buf, 32);
  buf->i8[0] |= 7u;
  buf[1].i8[15] = buf[1].i8[15] & 0x3F | 0x80;

  return X25519_public_from_private(a1, buf);
}

uint64_t bssl::tls_add_message(bssl *this, ssl_st *a2)
{
  v4 = *&a2->version;
  method = a2->method;
  if (*(this + 21) || **(*(this + 6) + 272))
  {
    while (1)
    {
      if (!method)
      {
        goto LABEL_30;
      }

      v6 = *(this + 6);
      v9 = *(v6 + 232);
      v8 = (v6 + 232);
      result = v9;
      v10 = *(this + 8);
      if (!v9)
      {
        break;
      }

      if (*result < v10)
      {
        goto LABEL_8;
      }

      result = bssl::tls_flush_pending_hs_data(this, a2);
      if (!result)
      {
        return result;
      }

      v11 = *(this + 6);
      v12 = *(v11 + 232);
      v8 = (v11 + 232);
      result = v12;
      if (v12)
      {
LABEL_8:
        v13 = 0;
        v14 = *result;
      }

      else
      {
        v14 = 0;
        v13 = 1;
      }

      v15 = *(this + 8) - v14;
      if (!v15)
      {
LABEL_35:
        bssl::tls_add_message();
      }

      if (method >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = method;
      }

      v17 = (v4 + v16);
      method = (method - v16);
      if (v13)
      {
        goto LABEL_21;
      }

      if (!result)
      {
        return result;
      }

LABEL_22:
      result = BUF_MEM_append(result, v4, v16);
      v4 = v17;
      if (!result)
      {
        return result;
      }
    }

    if (!*(this + 8))
    {
      goto LABEL_35;
    }

    if (method >= v10)
    {
      v16 = *(this + 8);
    }

    else
    {
      v16 = method;
    }

    v17 = (v4 + v16);
    method = (method - v16);
LABEL_21:
    v18 = BUF_MEM_new();
    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v8, v18);
    result = *(*(this + 6) + 232);
    if (!result)
    {
      return result;
    }

    goto LABEL_22;
  }

  while (method)
  {
    if (method >= *(this + 8))
    {
      v19 = *(this + 8);
    }

    else
    {
      v19 = method;
    }

    v20 = v19 + v4;
    method = (method - v19);
    v21 = bssl::add_record_to_flight(this, 0x16, v4, v19);
    v4 = v20;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_30:
  bssl::ssl_do_msg_callback(this, 1, 22, *&a2->version, a2->method);
  v22 = *(*(this + 6) + 280);
  if (!v22)
  {
    return 1;
  }

  result = bssl::SSLTranscript::Update(v22 + 424, *&a2->version, a2->method);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t CBB_add_bytes(uint64_t a1, const void *a2, size_t a3)
{
  __dst = 0xAAAAAAAAAAAAAAAALL;
  result = CBB_add_space(a1, &__dst, a3);
  if (result)
  {
    if (a3)
    {
      memcpy(__dst, a2, a3);
    }

    return 1;
  }

  return result;
}

BOOL bssl::CBBFinishArray(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v3 = CBB_finish(a1, &v8, &v7);
  if (v3)
  {
    v5 = v7;
    v4 = v8;
    OPENSSL_free(*a2);
    *a2 = v4;
    *(a2 + 8) = v5;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 204);
  }

  return v3 != 0;
}

uint64_t bssl::tls_flush_flight(BIO **this, ssl_st *a2)
{
  if (!bssl::tls_flush_pending_hs_data(this, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = this[21];
  if (v4)
  {
    if (LODWORD(this[6][1].prev_bio))
    {
      v5 = 194;
      v6 = 291;
LABEL_12:
      ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v6);
      return 0xFFFFFFFFLL;
    }

    if (!(*&v4->init)(this))
    {
      v5 = 298;
      v6 = 296;
      goto LABEL_12;
    }
  }

  v7 = this[6];
  cb_arg = v7[2].cb_arg;
  if (!cb_arg)
  {
    return 1;
  }

  if (LODWORD(v7[1].prev_bio))
  {
    v5 = 194;
    v6 = 306;
    goto LABEL_12;
  }

  if (*cb_arg >> 31)
  {
    v5 = 68;
    v6 = 312;
    goto LABEL_12;
  }

  if (WORD2(v7[1].method))
  {
    result = bssl::ssl_write_buffer_flush(this, v3);
    if (result <= 0)
    {
      HIDWORD(this[6][1].num_read) = 3;
      return result;
    }
  }

  v10 = this[4];
  if (!v10)
  {
    v5 = 119;
    v6 = 327;
    goto LABEL_12;
  }

  v11 = this[6];
  init = v11[2].init;
  v13 = v11[2].cb_arg;
  v14 = *v13;
  if (*v13 <= init)
  {
LABEL_21:
    v16 = BIO_flush(v10);
    v17 = this[6];
    if (v16 <= 0)
    {
      HIDWORD(v17[1].num_read) = 3;
      return 0xFFFFFFFFLL;
    }

    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](&v17[2].cb_arg, 0);
    this[6][2].init = 0;
    return 1;
  }

  while (1)
  {
    result = BIO_write(this[4], (*(v13 + 1) + init), v14 - init);
    v15 = this[6];
    if (result <= 0)
    {
      break;
    }

    init = (v15[2].init + result);
    v15[2].init = init;
    v13 = v15[2].cb_arg;
    v14 = *v13;
    if (*v13 <= init)
    {
      v10 = this[4];
      goto LABEL_21;
    }
  }

  HIDWORD(v15[1].num_read) = 3;
  return result;
}

uint64_t CBB_finish(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8))
  {
    ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bytestring/cbb.c", 127);
    return 0;
  }

  result = CBB_flush(a1);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = 0;
      if (!a2 || !a3)
      {
        return result;
      }
    }

    else if (!a2)
    {
      goto LABEL_10;
    }

    *a2 = *(a1 + 16);
LABEL_10:
    if (a3)
    {
      *a3 = *(a1 + 24);
    }

    *(a1 + 16) = 0;
    CBB_cleanup(a1, v7);
    return 1;
  }

  return result;
}

void nw_protocol_boringssl_write_bytes_cold_4()
{
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    v6 = 136446978;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v0, v1, "%{public}s(%d) %{public}s[%p] no output handler available", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_39();
}

uint64_t bssl::add_record_to_flight(bssl *a1, ssl_st *a2, unint64_t a3, const unsigned __int8 *a4)
{
  v4 = *(a1 + 6);
  if (*(v4 + 232))
  {
    bssl::add_record_to_flight();
  }

  if (*(v4 + 248))
  {
    bssl::add_record_to_flight();
  }

  v10 = *(v4 + 240);
  v9 = (v4 + 240);
  if (!v10)
  {
    v11 = BUF_MEM_new();
    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v9, v11);
    if (!*(*(a1 + 6) + 240))
    {
      return 0;
    }
  }

  v12 = SSL_max_seal_overhead(a1);
  v13 = &a4[v12];
  v14 = __CFADD__(v12, a4);
  v15 = *(*(a1 + 6) + 240);
  v16 = &v13[*v15];
  v17 = __CFADD__(*v15, v13);
  if (v14 || v17)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 154);
    return 0;
  }

  *v19 = 0xAAAAAAAAAAAAAAAALL;
  result = BUF_MEM_reserve(v15, v16);
  if (result)
  {
    result = bssl::tls_seal_record(a1, (*(*(*(a1 + 6) + 240) + 8) + **(*(a1 + 6) + 240)), v19, v13, a2, a3, a4);
    if (result)
    {
      **(*(a1 + 6) + 240) += *v19;
      return 1;
    }
  }

  return result;
}

void nw_protocol_boringssl_read_bytes_cold_3(uint64_t a1)
{
  if (g_boringssl_log)
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

uint64_t bssl::ssl_open_handshake(void *a1, void *a2, _BYTE *a3)
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
    result = (*(*a1 + 48))(a1);
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

id OUTLINED_FUNCTION_16()
{
  v3 = (v0 + *v1);

  return objc_loadWeakRetained(v3);
}

void OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

uint64_t bssl::tls_open_handshake(uint64_t a1, unsigned __int8 **a2, ssl_st *a3, char *__s2, unint64_t a5)
{
  *a2 = 0;
  if ((*(a1 + 180) & 1) == 0 || (v10 = *(a1 + 48), v11 = *(v10 + 222), (v11 & 2) != 0))
  {
LABEL_19:
    v20 = -86;
    v18 = 0;
    v19 = 0;
    result = bssl::tls_open_record(a1, &v20, &v18, a2, a3, __s2, a5);
    if (result)
    {
      return result;
    }

    if ((*(a1 + 180) & 1) != 0 || v20 != 23)
    {
      if (v20 == 22)
      {
        if (bssl::tls_append_handshake_data(a1, v18, v19))
        {
          return 0;
        }

        v17 = 80;
        goto LABEL_29;
      }
    }

    else if (!**(*(a1 + 48) + 264))
    {
      v15 = 281;
      v16 = 619;
LABEL_28:
      ERR_put_error(16, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v16);
      v17 = 10;
LABEL_29:
      LOBYTE(a3->version) = v17;
      return 4;
    }

    v15 = 225;
    v16 = 625;
    goto LABEL_28;
  }

  if (a5 <= 4)
  {
    *a2 = 5;
    return 2;
  }

  if (!strncmp("GET ", __s2, 4uLL) || !strncmp("POST ", __s2, 5uLL) || !strncmp("HEAD ", __s2, 5uLL) || !strncmp("PUT ", __s2, 4uLL))
  {
    v13 = 156;
    v14 = 581;
LABEL_17:
    ERR_put_error(16, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v14);
    LOBYTE(a3->version) = 0;
    return 4;
  }

  if (!strncmp("CONNE", __s2, 5uLL))
  {
    v13 = 155;
    v14 = 586;
    goto LABEL_17;
  }

  if ((*__s2 & 0x80000000) == 0 || __s2[2] != 1 || __s2[3] != 3)
  {
    *(v10 + 222) = v11 | 2;
    goto LABEL_19;
  }

  result = bssl::read_v2_client_hello(a1, a2, __s2, a5);
  if (result)
  {
    if (result == 4)
    {
      LOBYTE(a3->version) = 0;
    }
  }

  else
  {
    *(*(a1 + 48) + 222) |= 2u;
  }

  return result;
}

void nw_protocol_boringssl_read_bytes_cold_7(uint64_t a1)
{
  if (g_boringssl_log)
  {
    if (OUTLINED_FUNCTION_18_0())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

STACK *__cdecl SSL_get_ciphers(STACK *s)
{
  if (s)
  {
    data = s->data;
    if (!data)
    {
      SSL_get_ciphers_cold_1();
    }

    v2 = data[3];
    if (!v2)
    {
      v2 = *(s[3].comp + 30);
    }

    return *v2;
  }

  return s;
}

uint64_t bssl::ext_ec_point_add_extension(uint64_t *a1)
{
  result = CBB_add_u16(a1, 0xBu);
  if (result)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v5[1] = v3;
    v5[2] = v3;
    v4[2] = v3;
    v5[0] = v3;
    v4[0] = v3;
    v4[1] = v3;
    result = CBB_add_u16_length_prefixed(a1, v5);
    if (result)
    {
      result = CBB_add_u8_length_prefixed(v5, v4);
      if (result)
      {
        result = CBB_add_u8(v4, 0);
        if (result)
        {
          return CBB_flush(a1) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_run_handshake(bssl *this, bssl::SSL_HANDSHAKE *a2, BOOL *a3)
{
  v5 = *this;
  while (2)
  {
    v6 = *(this + 4);
    switch(v6)
    {
      case 0:
        ERR_restore_state(*(this + 48));
        return 0xFFFFFFFFLL;
      case 2:
      case 3:
      case 15:
        if (!*(v5 + 168))
        {
          v19[0] = 50;
          v18 = 0;
          if (v6 == 15)
          {
            v7 = bssl::ssl_open_change_cipher_spec(v5, &v18, v19);
          }

          else
          {
            v7 = bssl::ssl_open_handshake(v5, &v18, v19);
          }

          v8 = v7;
          if (v7 == 4 && *(this + 4) == 2 && (ERR_peek_error() & 0xFF000FFF) == 0x10000410)
          {
            ERR_put_error(16, 0, 154, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 657);
          }

          v17 = -86;
          result = bssl::ssl_handle_open_record(v5, &v17, v8, v18, v19[0]);
          if (result <= 0)
          {
            return result;
          }

          if ((v17 & 1) == 0)
          {
            bssl::SSLBuffer::DiscardConsumed((*(v5 + 48) + 80));
LABEL_18:
            v10 = (*(v5 + 40))(this, a2, a3);
            *(this + 4) = v10;
            if (v10 == 1)
            {
              if ((*(v5 + 180) & 1) == 0 && *(*(v5 + 48) + 216) == 2)
              {
                bssl::ssl_run_handshake();
              }

              *a2 = 0;
              return 1;
            }

            if (!v10)
            {
              v11 = ERR_save_state();
              std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 48, v11);
              return 0xFFFFFFFFLL;
            }
          }

          continue;
        }

        if (v6 == 15)
        {
          bssl::ssl_run_handshake();
        }

        v12 = *(v5 + 48);
        v13 = 2;
LABEL_44:
        *(v12 + 196) = v13;
        v16 = 1;
LABEL_45:
        *(this + 4) = v16;
        return 0xFFFFFFFFLL;
      case 4:
        result = (*(*v5 + 120))(v5, a2, a3);
        if (result <= 0)
        {
          return result;
        }

        goto LABEL_18;
      case 5:
        v12 = *(v5 + 48);
        v13 = 12;
        goto LABEL_44;
      case 6:
        v12 = *(v5 + 48);
        v13 = 17;
        goto LABEL_44;
      case 7:
        result = (*(*v5 + 120))(v5, a2, a3);
        if (result < 1)
        {
          return result;
        }

        *(*(v5 + 48) + 196) = 18;
        v16 = 7;
        goto LABEL_45;
      case 8:
        v12 = *(v5 + 48);
        v13 = 4;
        goto LABEL_44;
      case 9:
        v12 = *(v5 + 48);
        v13 = 13;
        goto LABEL_44;
      case 10:
        v12 = *(v5 + 48);
        v13 = 11;
        goto LABEL_44;
      case 11:
        v12 = *(v5 + 48);
        v13 = 14;
        goto LABEL_44;
      case 12:
        if ((*(v5 + 180) & 1) == 0 && *(*(v5 + 48) + 216) == 2)
        {
          bssl::ssl_run_handshake();
        }

        result = 1;
        *a2 = 1;
        *(this + 4) = 1;
        return result;
      case 13:
        v14 = *(v5 + 48);
        if (!*(v14 + 256))
        {
          bssl::ssl_run_handshake();
        }

        if ((*(this + 1601) & 0x20) != 0)
        {
          bssl::ssl_run_handshake();
        }

        v15 = 15;
        goto LABEL_40;
      case 14:
        if ((*(*(*(v5 + 48) + 280) + 1601) & 0x10) != 0)
        {
          result = 1;
          *a2 = 1;
          return result;
        }

        *(this + 4) = 1;
        goto LABEL_18;
      case 16:
        v12 = *(v5 + 48);
        v13 = 16;
        goto LABEL_44;
      case 17:
        v14 = *(v5 + 48);
        v15 = 20;
LABEL_40:
        *(v14 + 196) = v15;
        return 0xFFFFFFFFLL;
      default:
        goto LABEL_18;
    }
  }
}

uint64_t cbs_get_length_prefixed(unsigned __int8 **a1, unsigned __int8 **a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = &v3[-a3];
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = &(*a1)[a3];
  *a1 = v7;
  a1[1] = v5;
  v8 = 0;
  if (a3)
  {
    do
    {
      v9 = *v6++;
      v8 = v9 | (v8 << 8);
      --a3;
    }

    while (a3);
    if (v5 < v8)
    {
      return 0;
    }
  }

  *a1 = &v7[v8];
  a1[1] = &v5[-v8];
  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t bssl::ssl_client_handshake(bssl *this, ssl_session_st *a2, ssl_session_st *a3, uint64_t a4)
{
  v238 = (this + 1536);
  v237 = (this + 1520);
  v268 = *MEMORY[0x1E69E9840];
  v234 = (this + 1480);
  v235 = (this + 1528);
  v231 = this + 712;
  v232 = (this + 1504);
  v233 = (this + 568);
  v236 = (this + 1544);
  while (2)
  {
    v5 = *(this + 5);
    switch(v5)
    {
      case 0:
        v6 = *this;
        bssl::ssl_do_info_callback(*this, 0x10);
        *(*(v6 + 48) + 222) &= ~0x20u;
        if (!bssl::ssl_get_version_range(this, this + 14, this + 15))
        {
          goto LABEL_428;
        }

        v248 = -86;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v246 = v7;
        v247 = v7;
        *v244 = v7;
        v245 = v7;
        v242 = 0xAAAAAAAAAAAAAAAALL;
        if (!bssl::ssl_select_ech_config(this, v244, 65, &v242))
        {
          goto LABEL_428;
        }

        is_dtls = SSL_is_dtls(*this);
        v10 = *(this + 15);
        if (v10 >= 0x303)
        {
          v11 = 771;
        }

        else
        {
          v11 = *(this + 15);
        }

        if (v10 <= 0x302)
        {
          v12 = -257;
        }

        else
        {
          v12 = -259;
        }

        if (!is_dtls)
        {
          v12 = v11;
        }

        *(this + 802) = v12;
        v13 = *(v6 + 104);
        if (v13 && ((*(v13 + 440) & 0x10) != 0 || !bssl::ssl_supports_version(this, *(v13 + 4)) || *(this + 195) && bssl::ssl_session_protocol_version(*(v6 + 104), v14) < 0x304 || !SSL_SESSION_is_resumable(*(v6 + 104)) || !bssl::ssl_session_is_time_valid(v6, *(v6 + 104), v9) || (*(v6 + 168) != 0) == ((*(*(v6 + 104) + 440) & 0x20) == 0) || (*(*(v6 + 48) + 222) & 0x10) != 0))
        {
          bssl::ssl_set_session(v6, 0, v9);
        }

        if (!RAND_bytes((*(v6 + 48) + 48), 32) || *(this + 195) && !RAND_bytes(this + 520, 32))
        {
          goto LABEL_428;
        }

        v15 = *(v6 + 104);
        if (v15)
        {
          v16 = *(v15 + 240);
          if (*(v15 + 91))
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          if (v16)
          {
            v18 = 0;
            v19 = bssl::ssl_session_protocol_version(v15, a2) < 0x304;
            goto LABEL_312;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = 0;
LABEL_312:
        if (*(this + 15) < 0x304u || *(v6 + 168))
        {
          v150 = 0;
          if (v18)
          {
            goto LABEL_315;
          }
        }

        else
        {
          v150 = SSL_is_dtls(*this) == 0;
          if (v18)
          {
LABEL_315:
            bssl::InplaceVector<unsigned char,32ul>::operator=(this + 1613, (*(v6 + 104) + 59));
            goto LABEL_344;
          }
        }

        if (v19 || v150)
        {
          *(this + 1645) = 32;
          if (!RAND_bytes(this + 1613, 32))
          {
            goto LABEL_428;
          }
        }

LABEL_344:
        v152 = *this;
        if (*(this + 14) >= 0x304u && !*(v152 + 104))
        {
          v153 = *(*(v152 + 8) + 80);
          if (v153)
          {
            *&v265 = 0;
            memset(&v264[64], 170, 0x400uLL);
            v241[0] = 1024;
            *&v154 = 0xAAAAAAAAAAAAAAAALL;
            *(&v154 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v264[32] = v154;
            *&v264[48] = v154;
            *v264 = v154;
            *&v264[16] = v154;
            v262 = v154;
            v263 = v154;
            v260 = v154;
            v261 = v154;
            v258 = v154;
            v259 = v154;
            v256 = v154;
            v257 = v154;
            v254 = v154;
            v255 = v154;
            v252 = v154;
            v253 = v154;
            v250 = v154;
            v251 = v154;
            v249[0] = v154;
            v249[1] = v154;
            v239 = 256;
            v240 = 64;
            if (!v153(v152, &v265, &v264[64], v241, v264, &v240, v249, &v239) && v265)
            {
              v155 = SSL_SESSION_new();
              v156 = v155;
              LOWORD(v155->key_arg_length) = 772;
              v155->cipher = v265;
              v157 = v240;
              if (v240 <= 0x30)
              {
                v155->master_key[38] = 0;
                if (v157)
                {
                  v158 = &v155->key_arg[2];
                  v159 = v264;
                  v160 = v157;
                  do
                  {
                    v161 = *v159++;
                    *v158++ = v161;
                    --v160;
                  }

                  while (v160);
                }

                v155->master_key[38] = v157;
              }

              v162 = v239;
              if (v239 - 1 <= 0xFE && bssl::Array<unsigned char>::InitUninitialized(&v155[1].sid_ctx_length, v239))
              {
                v163 = *(v156 + 392);
                v164 = v249;
                do
                {
                  v165 = *v164++;
                  *v163++ = v165;
                  --v162;
                }

                while (v162);
              }

              SSL_SESSION_set_ticket(v156, &v264[64], v241[0]);
              *(v156 + 380) = ((*(v152 + 180) << 13) >> 15) & 0x3800;
              *(v156 + 440) |= 0x80u;
              SSL_set_session(v152, v156);
              SSL_SESSION_free(v156);
            }

            v152 = *this;
          }
        }

        if (*(v152 + 180))
        {
          bssl::ssl_client_handshake();
        }

        if ((*(v152 + 180) & 4) != 0)
        {
          if (*(this + 15) >= 0x304u)
          {
            v167 = *(v152 + 104);
            if (v167)
            {
              if (bssl::ssl_session_protocol_version(v167, a2) >= 0x304 && (v168 = *(v152 + 104), *(v168 + 380)))
              {
                v169 = *(v168 + 400);
                if (!v169)
                {
                  goto LABEL_371;
                }

                if (bssl::ssl_is_alpn_protocol_allowed(this, *(v168 + 392), v169))
                {
                  v170 = *(v152 + 104);
                  if ((*(v170 + 440) & 0x40) == 0 || (*&v264[64] = 0, *&v264[72] = 0, bssl::ssl_get_local_application_settings(this, &v264[64], *(v170 + 392), *(v170 + 400))) && (v220 = *(v152 + 104), v221 = *(v220 + 416), *&v264[72] == v221) && !memcmp(*&v264[64], *(v220 + 408), v221))
                  {
LABEL_371:
                    *(this + 400) |= 0x800u;
                    goto LABEL_438;
                  }

                  v166 = 14;
                }

                else
                {
                  v166 = 9;
                }
              }

              else
              {
                v166 = 7;
              }
            }

            else
            {
              v166 = 5;
            }
          }

          else
          {
            v166 = 3;
          }
        }

        else
        {
          v166 = 1;
        }

        *(*(v6 + 48) + 256) = v166;
LABEL_438:
        if (bssl::ssl_setup_key_shares(this, 0) && bssl::ssl_setup_pake_shares(this, a2) && bssl::ssl_setup_extension_permutation(this, a2) && bssl::ssl_encrypt_client_hello(this, v244, v242) && bssl::ssl_add_client_hello(this, a2))
        {
          *(this + 5) = 1;
          goto LABEL_78;
        }

        goto LABEL_428;
      case 1:
        if ((*(this + 1601) & 8) != 0)
        {
          v73 = *this;
          v74 = *(*this + 104);
          if (v74)
          {
            SSL_SESSION_up_ref(*(*this + 104));
          }

          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v236, v74);
          *(*(v73 + 48) + 208) = (*v236)->key_arg_length;
          v21 = 2;
        }

        else
        {
          v21 = 3;
        }

        goto LABEL_487;
      case 2:
        v39 = *this;
        if (*(*(*this + 120) + 520) != 1)
        {
          goto LABEL_145;
        }

        v40 = bssl::ssl_reverify_peer_cert(this, 0);
        if (v40 == 1)
        {
          goto LABEL_428;
        }

        if (v40 == 2)
        {
          finished = 16;
LABEL_70:
          *(this + 5) = v40;
          goto LABEL_489;
        }

LABEL_145:
        if ((*(*v39 + 112))(v39, a2, a3, a4) && bssl::tls13_init_early_key_schedule(this, *(this + 193), a3) && bssl::tls13_derive_early_secret(this, a2) && bssl::tls13_set_traffic_key(*this, 1, 1, *(this + 193), this + 81, *(this + 129)))
        {
          *(this + 400) |= 0x2400u;
          finished = 12;
          v40 = 3;
          goto LABEL_70;
        }

        goto LABEL_428;
      case 3:
        v34 = *this;
        *&v250 = 0xAAAAAAAAAAAAAAAALL;
        *&v44 = 0xAAAAAAAAAAAAAAAALL;
        *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v249[0] = v44;
        v249[1] = v44;
        if (!(*(*v34 + 24))(v34, v249, a3, a4))
        {
          finished = 2;
          goto LABEL_489;
        }

        if (!SSL_is_dtls(v34) || (*(this + 1603) & 4) != 0 || BYTE1(v249[0]) != 3)
        {
          *&v99 = 0xAAAAAAAAAAAAAAAALL;
          *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v264[112] = v99;
          *&v264[128] = v99;
          *&v264[80] = v99;
          *&v264[96] = v99;
          *&v264[64] = v99;
          *&v264[80] = 0;
          *&v264[120] = 0;
          v264[122] = 0;
          LOWORD(v242) = -21846;
          LOBYTE(v241[0]) = 50;
          if (!bssl::ssl_parse_server_hello(&v264[64], v241, v249))
          {
            goto LABEL_427;
          }

          if (SSL_is_dtls(*this))
          {
            v100 = 65277;
          }

          else
          {
            v100 = 771;
          }

          v101 = *&v264[80];
          if (v100 == *&v264[80])
          {
            *v244 = 0xAAAAAAAA0001002BLL;
            *&v244[2] = 0;
            *&v245 = 0;
            *v264 = *&v264[128];
            *&v265 = v244;
            if (!bssl::ssl_parse_extensions(v264, v241, &v265, 1, 1))
            {
              goto LABEL_427;
            }

            if ((v244[0] & 0x1000000) != 0)
            {
              if (!CBS_get_u16(&v244[2], &v242) || v245)
              {
                LOBYTE(v241[0]) = 50;
LABEL_427:
                bssl::ssl_send_alert(v34, 2, LOBYTE(v241[0]));
                goto LABEL_428;
              }

              v101 = v242;
LABEL_374:
              if ((bssl::ssl_supports_version(this, v101) & 1) == 0)
              {
                ERR_put_error(16, 0, 240, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 796);
                bssl::ssl_send_alert(v34, 2, 70);
                goto LABEL_428;
              }

              v173 = *(v34 + 6);
              if ((*(v173 + 222) & 0x10) != 0)
              {
                v174 = v242;
                if (v242 != *(v173 + 208))
                {
                  ERR_put_error(16, 0, 246, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 809);
                  bssl::ssl_send_alert(v34, 2, 70);
                  goto LABEL_428;
                }
              }

              else
              {
                if (*(v173 + 208) && ((*(this + 1601) & 8) == 0 || *(v173 + 208) != LOWORD((*v236)->key_arg_length)))
                {
                  bssl::ssl_client_handshake();
                }

                v174 = v242;
                *(v173 + 208) = v242;
              }

              if ((*(this + 1601) & 8) != 0 && v174 != LOWORD((*v236)->key_arg_length))
              {
                if (bssl::ssl_protocol_version(v34, v171, v172) >= 0x304)
                {
                  bssl::ssl_client_handshake();
                }

                if (bssl::ssl_session_protocol_version(*v236, v202) <= 0x303)
                {
                  bssl::ssl_client_handshake();
                }

                if (SSL_is_dtls(v34))
                {
                  bssl::ssl_client_handshake();
                }

                *(this + 400) &= ~0x2000u;
                ERR_put_error(16, 0, 278, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 841);
                bssl::ssl_send_alert(v34, 2, 70);
              }

              else if (bssl::ssl_protocol_version(v34, v171, v172) < 0x304)
              {
                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 49, 0);
                std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](this + 50, 0);
                bssl::ssl_done_writing_client_hello(this);
                v175 = *(v34 + 6);
                if (*(this + 195))
                {
                  *(v175 + 216) = 2;
                }

                v176 = *(*&v264[88] + 16);
                *(v175 + 16) = **&v264[88];
                *(v175 + 32) = v176;
                if ((*(*(v34 + 6) + 222) & 0x10) == 0)
                {
                  if (bssl::ssl_supports_version(this, 0x304))
                  {
                    v177 = *(v34 + 6);
                    if (*(v177 + 40) == *"DOWNGRD" || *(v177 + 40) == 0x14452474E574F44 || *(v177 + 40) == 0xFF1047C2A8B4BFEDLL)
                    {
                      ERR_put_error(16, 0, 297, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 885);
                      bssl::ssl_send_alert(v34, 2, 47);
                      goto LABEL_428;
                    }
                  }
                }

                cipher_by_value = SSL_get_cipher_by_value(*&v264[120]);
                v179 = cipher_by_value;
                if (!cipher_by_value || (v180 = 8 * (*(*(this + 1) + 64) == 0), (cipher_by_value[5] & v180) != 0) || (cipher_by_value[6] & v180) != 0 || (min_version = SSL_CIPHER_get_min_version(cipher_by_value), min_version > bssl::ssl_protocol_version(v34, v182, v183)) || (max_version = SSL_CIPHER_get_max_version(v179), max_version < bssl::ssl_protocol_version(v34, v185, v186)) || (ciphers = SSL_get_ciphers(v34), !OPENSSL_sk_find(ciphers, 0, v179, sk_SSL_CIPHER_call_cmp_func)))
                {
                  ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 901);
                  bssl::ssl_send_alert(v34, 2, 47);
                  goto LABEL_428;
                }

                *(this + 196) = v179;
                if (*(this + 1645) && (v188 = *&v264[112], *&v264[112] == *(this + 1645)) && !memcmp(*&v264[104], this + 1613, *&v264[112]))
                {
                  v224 = *(v34 + 13);
                  if (!v224 || (v225 = *(v34 + 6), *(v225 + 216) == 2))
                  {
                    ERR_put_error(16, 0, 286, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 918);
                    bssl::ssl_send_alert(v34, 2, 47);
                    goto LABEL_428;
                  }

                  if (*(v224 + 4) != *(v225 + 208))
                  {
                    ERR_put_error(16, 0, 188, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 923);
                    bssl::ssl_send_alert(v34, 2, 47);
                    goto LABEL_428;
                  }

                  if (*(v224 + 200) != v179)
                  {
                    ERR_put_error(16, 0, 187, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 928);
                    bssl::ssl_send_alert(v34, 2, 47);
                    goto LABEL_428;
                  }

                  if (!bssl::ssl_session_is_context_valid(this, v224))
                  {
                    ERR_put_error(16, 0, 101, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 935);
                    bssl::ssl_send_alert(v34, 2, 47);
                    goto LABEL_428;
                  }

                  v228 = *(v34 + 6);
                  v229 = *(v228 + 222);
                  if ((v229 & 0x10) != 0)
                  {
                    bssl::ssl_client_handshake();
                  }

                  *(v228 + 222) = v229 | 0x20;
                }

                else
                {
                  bssl::ssl_set_session(v34, 0, v188);
                  if ((bssl::ssl_get_new_session(this, v189) & 1) == 0)
                  {
                    goto LABEL_521;
                  }

                  v192 = *&v264[112];
                  if (*&v264[112] > 0x20uLL)
                  {
                    goto LABEL_563;
                  }

                  v193 = *&v264[104];
                  v194 = *v238;
                  (*v238)->session_id[19] = 0;
                  if (v192)
                  {
                    v195 = &v194->master_key[39];
                    v196 = v192;
                    do
                    {
                      v197 = *v193++;
                      *v195++ = v197;
                      --v196;
                    }

                    while (v196);
                    v198 = *v238;
                  }

                  else
                  {
                    v198 = v194;
                  }

                  v194->session_id[19] = v192;
                  v198->cipher = *(this + 196);
                }

                v222 = bssl::ssl_protocol_version(v34, v190, v191);
                if (!bssl::SSLTranscript::InitHash((this + 424), v222, *(this + 196)) || (bssl::ssl_hash_message(this, v249) & 1) == 0)
                {
LABEL_521:
                  bssl::ssl_send_alert(v34, 2, 80);
                  goto LABEL_428;
                }

                if (*(v34 + 13) || !bssl::ssl_cipher_uses_certificate_auth(*(this + 196), v223))
                {
                  bssl::SSLTranscript::FreeBuffer(this + 53);
                }

                if (v264[122])
                {
                  ERR_put_error(16, 0, 238, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 975);
                  bssl::ssl_send_alert(v34, 2, 47);
                  goto LABEL_428;
                }

                if ((bssl::ssl_parse_serverhello_tlsext(this, &v264[128]) & 1) == 0)
                {
                  ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 981);
                  goto LABEL_428;
                }

                v226 = *(v34 + 13);
                if (!v226 || (v227 = *(v226 + 440), (HIWORD(*(this + 400)) & 1) == (v227 & 1)))
                {
                  (*(*v34 + 32))(v34);
                  if (*(v34 + 13))
                  {
                    if (*(*(v34 + 15) + 520) == 1 && bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
                    {
                      v21 = 8;
                    }

                    else
                    {
                      v21 = 17;
                    }
                  }

                  else
                  {
                    v21 = 5;
                  }

                  goto LABEL_487;
                }

                if (v227)
                {
                  ERR_put_error(16, 0, 204, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 988);
                }

                else
                {
                  ERR_put_error(16, 0, 205, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 990);
                }

                bssl::ssl_send_alert(v34, 2, 40);
              }

              else
              {
                if ((*(this + 1603) & 4) == 0)
                {
                  v21 = 4;
                  goto LABEL_487;
                }

                ERR_put_error(16, 0, 159, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 848);
                bssl::ssl_send_alert(v34, 2, 70);
              }

              goto LABEL_428;
            }

            v101 = *&v264[80];
          }

          LOWORD(v242) = v101;
          goto LABEL_374;
        }

        v34 = *this;
        if (!SSL_is_dtls(*this))
        {
          bssl::ssl_client_handshake();
        }

        if (BYTE1(v249[0]) != 3)
        {
          bssl::ssl_client_handshake();
        }

        if ((*(this + 1603) & 4) != 0)
        {
          bssl::ssl_client_handshake();
        }

        *&v264[64] = *(v249 + 8);
        memset(v244, 170, sizeof(v244));
        *v264 = -21846;
        if (!CBS_get_u16(&v264[64], v264) || !CBS_get_u8_length_prefixed(&v264[64], v244) || *&v264[72])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 716);
          v146 = 50;
          goto LABEL_471;
        }

        v45 = *v244;
        v46 = *&v244[2];
        if (!bssl::Array<unsigned char>::InitUninitialized(v233, *&v244[2]))
        {
          v146 = 80;
          goto LABEL_471;
        }

        if (v46)
        {
          v47 = *v233;
          do
          {
            v48 = *v45++;
            *v47++ = v48;
            --v46;
          }

          while (v46);
        }

        *(this + 400) |= 0x4000000u;
        (*(*v34 + 32))(v34);
        if (bssl::SSLTranscript::Init((this + 424)) && bssl::ssl_add_client_hello(this, a2))
        {
          *(this + 400) |= 0x4000000u;
          v43 = 3;
LABEL_77:
          *(this + 5) = v43;
LABEL_78:
          finished = 4;
          goto LABEL_489;
        }

        goto LABEL_428;
      case 4:
        finished = bssl::tls13_client_handshake(this, a2, a3, a4);
        if (finished != 1)
        {
          goto LABEL_489;
        }

        v33 = 20;
        goto LABEL_191;
      case 5:
        v53 = *this;
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          goto LABEL_115;
        }

        *&v264[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v54 = 0xAAAAAAAAAAAAAAAALL;
        *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[64] = v54;
        *&v264[80] = v54;
        if (!(*(*v53 + 24))(v53, &v264[64]))
        {
          goto LABEL_188;
        }

        if (!bssl::ssl_check_message_type(v53, &v264[64], 11, a4) || !bssl::ssl_hash_message(this, &v264[64]))
        {
          goto LABEL_428;
        }

        v249[0] = *&v264[72];
        LOBYTE(v244[0]) = 50;
        if (!bssl::ssl_parse_cert_chain(v244, &(*v238)->sid_ctx[28], v235, 0, v249, *(*(v53 + 15) + 800)))
        {
          bssl::ssl_send_alert(v53, 2, LOBYTE(v244[0]));
          goto LABEL_428;
        }

        if (!EVP_MD_CTX_md(*&(*v238)->sid_ctx[28]) || *(&v249[0] + 1) || ((*(*(*(v53 + 15) + 16) + 48))(*v238) & 1) == 0)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1051);
          bssl::ssl_send_alert(v53, 2, 50);
          goto LABEL_428;
        }

        v55 = *(this + 191);
        v56 = OPENSSL_sk_value(*(*(this + 192) + 136), 0);
        if ((bssl::ssl_check_leaf_certificate(this, v55, v56) & 1) == 0)
        {
          bssl::ssl_send_alert(v53, 2, 47);
          goto LABEL_428;
        }

        (*(*v53 + 32))(v53);
LABEL_115:
        v21 = 6;
        goto LABEL_487;
      case 6:
        if ((*(this + 1600) & 0x40) == 0)
        {
          goto LABEL_126;
        }

        v34 = *this;
        *&v264[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v93 = 0xAAAAAAAAAAAAAAAALL;
        *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[64] = v93;
        *&v264[80] = v93;
        if (!(*(*v34 + 24))(v34, &v264[64], a3, a4))
        {
          goto LABEL_188;
        }

        if (v264[65] != 22)
        {
          goto LABEL_126;
        }

        if (!bssl::ssl_hash_message(this, &v264[64]))
        {
          goto LABEL_428;
        }

        v249[0] = *&v264[72];
        memset(v244, 170, sizeof(v244));
        v264[0] = -86;
        if (!CBS_get_u8(v249, v264) || v264[0] != 1 || !CBS_get_u24_length_prefixed(v249, v244) || !*&v244[2] || *(&v249[0] + 1))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1100);
          bssl::ssl_send_alert(v34, 2, 50);
          goto LABEL_428;
        }

        v94 = *v238;
        v95 = CRYPTO_BUFFER_new_from_CBS(v244, *(*(v34 + 15) + 800));
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v94->tlsext_hostname, v95);
        if (!(*v238)->tlsext_hostname)
        {
          goto LABEL_521;
        }

        (*(*v34 + 32))(v34);
LABEL_126:
        v21 = 7;
        goto LABEL_487;
      case 7:
        if (bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          v49 = bssl::ssl_verify_peer_cert(this, a2);
          if (v49 == 1)
          {
            goto LABEL_428;
          }

          v50 = v49 == 2;
          v33 = 7;
          v51 = 9;
LABEL_137:
          if (v50)
          {
            finished = 16;
          }

          else
          {
            v33 = v51;
            finished = 1;
          }
        }

        else
        {
          finished = 1;
          v33 = 9;
        }

LABEL_191:
        *(this + 5) = v33;
        goto LABEL_489;
      case 8:
        if ((*(*(*this + 120) + 520) & 1) == 0)
        {
          bssl::ssl_client_handshake();
        }

        v70 = bssl::ssl_reverify_peer_cert(this, 1);
        if (v70 == 1)
        {
          goto LABEL_428;
        }

        v50 = v70 == 2;
        v33 = 8;
        v51 = 17;
        goto LABEL_137;
      case 9:
        v34 = *this;
        *&v250 = 0xAAAAAAAAAAAAAAAALL;
        *&v35 = 0xAAAAAAAAAAAAAAAALL;
        *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v249[0] = v35;
        v249[1] = v35;
        if (!(*(*v34 + 24))(v34, v249, a3, a4))
        {
          goto LABEL_188;
        }

        if (BYTE1(v249[0]) != 12)
        {
          if (bssl::ssl_cipher_requires_server_key_exchange(*(this + 196), a2))
          {
            ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1165);
            bssl::ssl_send_alert(v34, 2, 10);
            goto LABEL_428;
          }

          goto LABEL_486;
        }

        if (!bssl::ssl_hash_message(this, v249))
        {
          goto LABEL_428;
        }

        v36 = *(this + 196);
        v37 = *(v36 + 20);
        v38 = *(v36 + 24);
        *v244 = *(v249 + 8);
        if ((v38 & 8) != 0)
        {
          *&v264[64] = 0xAAAAAAAAAAAAAAAALL;
          *&v264[72] = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16_length_prefixed(v244, &v264[64]))
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1187);
            v146 = 50;
            goto LABEL_471;
          }

          if (*&v264[72] > 0x80uLL || CBS_contains_zero_byte(&v264[64]))
          {
            ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1201);
            v146 = 40;
            goto LABEL_471;
          }

          *v264 = 0;
          if (*&v264[72])
          {
            if (!CBS_strdup(&v264[64], v264))
            {
              goto LABEL_521;
            }

            v203 = *v264;
          }

          else
          {
            v203 = 0;
          }

          std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v234, v203);
          if ((v37 & 2) == 0)
          {
LABEL_64:
            if ((v37 & 8) == 0)
            {
              ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1247);
              bssl::ssl_send_alert(v34, 2, 10);
              goto LABEL_428;
            }

            goto LABEL_465;
          }
        }

        else if ((v37 & 2) == 0)
        {
          goto LABEL_64;
        }

        LOBYTE(v265) = -86;
        *v264 = -21846;
        *&v264[64] = 0xAAAAAAAAAAAAAAAALL;
        *&v264[72] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u8(v244, &v265) || v265 != 3 || !CBS_get_u16(v244, v264) || !CBS_get_u8_length_prefixed(v244, &v264[64]))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1229);
          v146 = 50;
          goto LABEL_471;
        }

        if (!bssl::tls1_check_group_id(this, *v264, v204))
        {
          ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1236);
          v146 = 47;
LABEL_471:
          bssl::ssl_send_alert(v34, 2, v146);
          goto LABEL_428;
        }

        HIWORD((*v238)->key_arg_length) = *v264;
        v205 = *&v264[64];
        v206 = *&v264[72];
        if ((bssl::Array<unsigned char>::InitUninitialized(v231, *&v264[72]) & 1) == 0)
        {
          goto LABEL_428;
        }

        if (v206)
        {
          v207 = *v231;
          do
          {
            v208 = *v205++;
            *v207++ = v208;
            --v206;
          }

          while (v206);
        }

LABEL_465:
        v210 = *(&v249[0] + 1);
        v209 = *&v249[1];
        v211 = *&v244[2];
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          if (v38 != 8)
          {
            bssl::ssl_client_handshake();
          }

          if (*&v244[2])
          {
            ERR_put_error(16, 0, 151, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1319);
            bssl::ssl_send_alert(v34, 2, 50);
            goto LABEL_428;
          }

          goto LABEL_485;
        }

        LOWORD(v242) = 0;
        if (bssl::ssl_protocol_version(v34, v212, v213) < 0x303)
        {
          if ((bssl::tls1_get_legacy_signature_algorithm(&v242, *v235, v214) & 1) == 0)
          {
            ERR_put_error(16, 0, 193, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1277);
            bssl::ssl_send_alert(v34, 2, 43);
            goto LABEL_428;
          }
        }

        else
        {
          if (!CBS_get_u16(v244, &v242))
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1264);
            bssl::ssl_send_alert(v34, 2, 50);
            goto LABEL_428;
          }

          v264[64] = 50;
          if (!bssl::tls12_check_peer_sigalg(this, &v264[64], v242, *(this + 191), v215))
          {
            bssl::ssl_send_alert(v34, 2, v264[64]);
            goto LABEL_428;
          }

          *(*v238)->key_arg = v242;
        }

        memset(v264, 170, 16);
        if (!CBS_get_u16_length_prefixed(v244, v264) || *&v244[2])
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1286);
          bssl::ssl_send_alert(v34, 2, 50);
        }

        else
        {
          *&v216 = 0xAAAAAAAAAAAAAAAALL;
          *(&v216 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v264[80] = v216;
          *&v264[96] = v216;
          *&v264[64] = v216;
          CBB_zero(&v264[64]);
          v265 = 0uLL;
          if (CBB_init(&v264[64], v209 - v211 + 64) && CBB_add_bytes(&v264[64], (*(v34 + 6) + 48), 0x20uLL) && CBB_add_bytes(&v264[64], (*(v34 + 6) + 16), 0x20uLL) && CBB_add_bytes(&v264[64], v210, v209 - v211) && bssl::CBBFinishArray(&v264[64], &v265))
          {
            if (bssl::ssl_public_key_verify(v34, *v264, *&v264[8], v242, *v235, v265, *(&v265 + 1)))
            {
              bssl::Array<unsigned char>::~Array(&v265);
              CBB_cleanup(&v264[64], v217);
LABEL_485:
              (*(*v34 + 32))(v34);
LABEL_486:
              v21 = 10;
              goto LABEL_487;
            }

            ERR_put_error(16, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1310);
            v218 = 51;
          }

          else
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1302);
            v218 = 80;
          }

          bssl::ssl_send_alert(v34, 2, v218);
          bssl::Array<unsigned char>::~Array(&v265);
          CBB_cleanup(&v264[64], v219);
        }

        goto LABEL_428;
      case 10:
        v34 = *this;
        if (!bssl::ssl_cipher_uses_certificate_auth(*(this + 196), a2))
        {
          goto LABEL_133;
        }

        *&v264[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v69 = 0xAAAAAAAAAAAAAAAALL;
        *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[64] = v69;
        *&v264[80] = v69;
        if (!(*(*v34 + 24))(v34, &v264[64]))
        {
          goto LABEL_188;
        }

        if (v264[65] != 14)
        {
          if (bssl::ssl_check_message_type(v34, &v264[64], 13, a4) && bssl::ssl_hash_message(this, &v264[64]))
          {
            v249[0] = *&v264[72];
            memset(v244, 170, sizeof(v244));
            if (!CBS_get_u8_length_prefixed(v249, v244))
            {
              bssl::ssl_send_alert(v34, 2, 50);
              ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1360);
              goto LABEL_428;
            }

            v132 = *v244;
            v133 = *&v244[2];
            if (!bssl::Array<unsigned char>::InitUninitialized(v232, *&v244[2]))
            {
              goto LABEL_521;
            }

            if (v133)
            {
              v136 = *v232;
              do
              {
                v137 = *v132++;
                *v136++ = v137;
                --v133;
              }

              while (v133);
            }

            if (bssl::ssl_protocol_version(v34, v134, v135) >= 0x303)
            {
              memset(v264, 170, 16);
              if (!CBS_get_u16_length_prefixed(v249, v264) || (bssl::tls1_parse_peer_sigalgs(this, v264, v138) & 1) == 0)
              {
                bssl::ssl_send_alert(v34, 2, 50);
                ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1374);
                goto LABEL_428;
              }
            }

            LOBYTE(v265) = 50;
            *v264 = 0xAAAAAAAAAAAAAAAALL;
            bssl::SSL_parse_CA_list(v34, &v265, v249, v264);
            v139 = *v264;
            if (*v264)
            {
              if (*(&v249[0] + 1))
              {
                bssl::ssl_send_alert(v34, 2, 50);
                ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1389);
                goto LABEL_495;
              }

              *(this + 400) |= 0x20u;
              *v264 = 0;
              std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](this + 186, v139);
              (*(*(*(v34 + 15) + 16) + 80))(this);
              (*(*v34 + 32))(v34);
              *(this + 5) = 11;
              finished = 1;
            }

            else
            {
              bssl::ssl_send_alert(v34, 2, v265);
LABEL_495:
              finished = 0;
            }

            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v264, 0);
            goto LABEL_489;
          }

          goto LABEL_428;
        }

        bssl::SSLTranscript::FreeBuffer(this + 53);
LABEL_133:
        v21 = 11;
LABEL_487:
        *(this + 5) = v21;
LABEL_488:
        finished = 1;
        goto LABEL_489;
      case 11:
        v31 = *this;
        *&v264[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[64] = v32;
        *&v264[80] = v32;
        if (!(*(*v31 + 24))(v31, &v264[64], a3, a4))
        {
          goto LABEL_188;
        }

        if (!bssl::ssl_check_message_type(v31, &v264[64], 14, a4) || !bssl::ssl_hash_message(this, &v264[64]))
        {
          goto LABEL_428;
        }

        if (*&v264[80])
        {
          bssl::ssl_send_alert(v31, 2, 50);
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1417);
          goto LABEL_428;
        }

        if ((*(*v31 + 40))(v31))
        {
          bssl::ssl_send_alert(v31, 2, 10);
          ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1424);
          goto LABEL_428;
        }

        (*(*v31 + 32))(v31);
        v21 = 12;
        goto LABEL_487;
      case 12:
        if ((*(this + 1600) & 0x20) == 0)
        {
          v21 = 13;
          goto LABEL_487;
        }

        v72 = *this;
        if (*(*(*this + 48) + 216) == 2)
        {
          SSL_certs_clear(*this);
        }

        else
        {
          v102 = *(*(this + 1) + 32);
          v103 = *(v102 + 64);
          if (v103)
          {
            v104 = v103(*this, *(v102 + 72), a3, a4);
            if (!v104)
            {
              bssl::ssl_send_alert(v72, 2, 80);
              ERR_put_error(16, 0, 126, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1487);
              goto LABEL_428;
            }

            if (v104 < 0)
            {
              *(this + 5) = 12;
              finished = 8;
              goto LABEL_489;
            }
          }
        }

        *&v264[64] = 0;
        *&v264[72] = 0;
        if ((bssl::ssl_get_credential_list(this, &v264[64]) & 1) == 0)
        {
          goto LABEL_334;
        }

        if (!*&v264[72])
        {
          bssl::SSLTranscript::FreeBuffer(this + 53);
          goto LABEL_331;
        }

        v105 = *&v264[64];
        v106 = 8 * *&v264[72];
        while (2)
        {
          v107 = *v105;
          ERR_clear_error();
          LOWORD(v249[0]) = -21846;
          if (*(v107 + 4))
          {
            v109 = 1436;
LABEL_223:
            ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", v109);
LABEL_233:
            ++v105;
            v106 -= 8;
            if (!v106)
            {
              goto LABEL_330;
            }

            continue;
          }

          break;
        }

        if ((*(*(this + 1) + 309) & 0x4000) != 0)
        {
          v111 = EVP_PKEY_id(*(v107 + 8));
          if (v111 == 6)
          {
            v112 = 1;
          }

          else
          {
            if (v111 != 949 && v111 != 408)
            {
              v109 = 1452;
              goto LABEL_223;
            }

            v112 = 64;
          }

          v113 = *(this + 188);
          v114 = *(this + 189);
          v115 = memchr(v113, v112, v114);
          v109 = 1457;
          if (!v115 || v115 == &v113[v114])
          {
            goto LABEL_223;
          }
        }

        if (!bssl::tls1_choose_signature_algorithm(this, v107, v249, v108))
        {
          goto LABEL_233;
        }

        SSL_CREDENTIAL_up_ref(v107);
        std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v237, v107);
        *(this + 805) = v249[0];
LABEL_330:
        if (!*v237)
        {
          bssl::ssl_send_alert(v72, 2, 40);
          goto LABEL_334;
        }

LABEL_331:
        if (bssl::ssl_send_tls12_certificate(this, v110))
        {
          *(this + 5) = 13;
          finished = 1;
          goto LABEL_335;
        }

LABEL_334:
        finished = 0;
LABEL_335:
        OPENSSL_free(*&v264[64]);
        goto LABEL_489;
      case 13:
        v57 = *this;
        *&v58 = 0xAAAAAAAAAAAAAAAALL;
        *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v245 = v58;
        v246 = v58;
        *v244 = v58;
        CBB_zero(v244);
        *&v59 = 0xAAAAAAAAAAAAAAAALL;
        *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[16] = v59;
        *&v264[32] = v59;
        *v264 = v59;
        if (((*(*v57 + 88))(v57, v244, v264, 16) & 1) == 0)
        {
          finished = 0;
          goto LABEL_435;
        }

        v242 = 0;
        v243 = 0;
        v61 = *(this + 196);
        v62 = *(v61 + 5);
        v63 = *(v61 + 6);
        if (!bssl::ssl_cipher_uses_certificate_auth(v61, v60))
        {
          goto LABEL_119;
        }

        v64 = OPENSSL_sk_value(*&(*v238)->sid_ctx[28], 0);
        *&v264[64] = 0xAAAAAAAAAAAAAAAALL;
        *&v264[72] = 0xAAAAAAAAAAAAAAAALL;
        CRYPTO_BUFFER_init_CBS(v64, &v264[64]);
        if (bssl::ssl_cert_check_key_usage(&v264[64], 2 * (v62 & 1u)))
        {
          goto LABEL_119;
        }

        if ((*(*(this + 1) + 309) & 0x10) != 0 || EVP_PKEY_id(*v235) != 6)
        {
          goto LABEL_433;
        }

        ERR_clear_error();
        *(*(v57 + 6) + 222) |= 0x2000u;
LABEL_119:
        *&v65 = 0xAAAAAAAAAAAAAAAALL;
        *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[288] = v65;
        *&v264[304] = v65;
        *&v264[256] = v65;
        *&v264[272] = v65;
        *&v264[224] = v65;
        *&v264[240] = v65;
        *&v264[192] = v65;
        *&v264[208] = v65;
        *&v264[160] = v65;
        *&v264[176] = v65;
        *&v264[128] = v65;
        *&v264[144] = v65;
        *&v264[96] = v65;
        *&v264[112] = v65;
        *&v264[64] = v65;
        *&v264[80] = v65;
        if ((v63 & 8) != 0)
        {
          v116 = *(this + 1);
          if (!*(v116 + 64))
          {
            v67 = 1575;
            v68 = 196;
            goto LABEL_293;
          }

          LOBYTE(v256) = 0;
          v254 = 0u;
          v255 = 0u;
          v252 = 0u;
          v253 = 0u;
          v250 = 0u;
          v251 = 0u;
          memset(v249, 0, sizeof(v249));
          v117 = (*(v116 + 64))(v57, *v234, v249, 129, &v264[64], 256);
          v66 = v117;
          if (!v117)
          {
            ERR_put_error(16, 0, 195, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1585);
            bssl::ssl_send_alert(v57, 2, 40);
            goto LABEL_433;
          }

          if (v117 >= 0x101)
          {
            __assert_rtn("do_send_client_key_exchange", "handshake_client.cc", 1589, "psk_len <= PSK_MAX_PSK_LEN");
          }

          v118 = *v238;
          v119 = OPENSSL_strdup(v249);
          std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&v118->sid_ctx[20], v119);
          if (!*&(*v238)->sid_ctx[20])
          {
            goto LABEL_433;
          }

          *&v120 = 0xAAAAAAAAAAAAAAAALL;
          *(&v120 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v266 = v120;
          v267 = v120;
          v265 = v120;
          if (!CBB_add_u16_length_prefixed(v264, &v265))
          {
            goto LABEL_433;
          }

          v121 = OPENSSL_strnlen(v249, 129);
          if (!CBB_add_bytes(&v265, v249, v121) || !CBB_flush(v264))
          {
            goto LABEL_433;
          }
        }

        else
        {
          v66 = 0;
        }

        if (v62)
        {
          OPENSSL_free(v242);
          v242 = 0;
          v243 = 0;
          v242 = OPENSSL_malloc(0x30uLL);
          if (!v242)
          {
            goto LABEL_433;
          }

          v243 = 48;
          v141 = EVP_PKEY_get0_RSA(*v235);
          if (!v141)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1614);
            goto LABEL_433;
          }

          if (!v243 || (*v242 = *(this + 1605), v243 <= 1) || (v242[1] = *(this + 1604), v243 <= 2))
          {
LABEL_563:
            abort();
          }

          if (!RAND_bytes(v242 + 2, 46))
          {
            goto LABEL_433;
          }

          *&v142 = 0xAAAAAAAAAAAAAAAALL;
          *(&v142 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v249[1] = v142;
          v250 = v142;
          v249[0] = v142;
          *&v265 = 0xAAAAAAAAAAAAAAAALL;
          *v241 = 0xAAAAAAAAAAAAAAAALL;
          if (!CBB_add_u16_length_prefixed(v264, v249))
          {
            goto LABEL_433;
          }

          v143 = RSA_size(v141);
          if (!CBB_reserve(v249, &v265, v143))
          {
            goto LABEL_433;
          }

          v144 = v265;
          v145 = RSA_size(v141);
          if (!RSA_encrypt(v141, v241, v144, v145, v242, v243, 1) || !CBB_did_write(v249, *v241) || !CBB_flush(v264))
          {
            goto LABEL_433;
          }
        }

        else if ((v62 & 2) != 0)
        {
          *&v148 = 0xAAAAAAAAAAAAAAAALL;
          *(&v148 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v249[1] = v148;
          v250 = v148;
          v249[0] = v148;
          if (!CBB_add_u8_length_prefixed(v264, v249))
          {
            goto LABEL_433;
          }

          *&v265 = 0xAAAAAAAAAAAAAAAALL;
          bssl::SSLKeyShare::Create(&v265, HIWORD((*v238)->key_arg_length));
          v149 = 50;
          LOBYTE(v241[0]) = 50;
          if (!v265)
          {
            goto LABEL_431;
          }

          if (((*(*v265 + 32))(v265, v249, &v242, v241, *(this + 89), *(this + 90)) & 1) == 0)
          {
            v149 = LOBYTE(v241[0]);
LABEL_431:
            bssl::ssl_send_alert(v57, 2, v149);
LABEL_432:
            std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v265, 0);
            goto LABEL_433;
          }

          if (!CBB_flush(v264))
          {
            goto LABEL_432;
          }

          OPENSSL_free(*v231);
          *v231 = 0;
          *(v231 + 1) = 0;
          std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](&v265, 0);
        }

        else
        {
          if ((v62 & 8) == 0)
          {
            bssl::ssl_send_alert(v57, 2, 40);
            v67 = 1664;
            v68 = 68;
LABEL_293:
            ERR_put_error(16, 0, v68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", v67);
            goto LABEL_433;
          }

          if (!bssl::Array<unsigned char>::InitUninitialized(&v242, v66))
          {
            goto LABEL_433;
          }

          if (v243)
          {
            bzero(v242, v243);
          }
        }

        if ((v63 & 8) != 0)
        {
          *&v199 = 0xAAAAAAAAAAAAAAAALL;
          *(&v199 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v249[1] = v199;
          v250 = v199;
          v249[0] = v199;
          CBB_zero(v249);
          *&v200 = 0xAAAAAAAAAAAAAAAALL;
          *(&v200 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v266 = v200;
          v267 = v200;
          v265 = v200;
          if (!CBB_init(v249, v243 + v66 + 4) || !CBB_add_u16_length_prefixed(v249, &v265) || !CBB_add_bytes(&v265, v242, v243) || !CBB_add_u16_length_prefixed(v249, &v265) || !CBB_add_bytes(&v265, &v264[64], v66) || !bssl::CBBFinishArray(v249, &v242))
          {
            CBB_cleanup(v249, v201);
            goto LABEL_433;
          }

          CBB_cleanup(v249, v201);
        }

        if (bssl::ssl_add_message_cbb(v57, v244))
        {
          v151 = *(this + 192);
          *(v151 + 58) = 48;
          if (bssl::tls1_generate_master_secret(this, (v151 + 10), 48, v242, v243))
          {
            *(*(this + 192) + 440) = *(*(this + 192) + 440) & 0xFE | *(this + 1602) & 1;
            *(this + 5) = 14;
            finished = 1;
            goto LABEL_434;
          }
        }

LABEL_433:
        finished = 0;
LABEL_434:
        OPENSSL_free(v242);
LABEL_435:
        CBB_cleanup(v244, v60);
LABEL_489:
        if (*(this + 5) != v5)
        {
          bssl::ssl_do_info_callback(*this, 0x1001);
        }

        if (finished == 1)
        {
          continue;
        }

        return finished;
      case 14:
        if ((*(this + 1600) & 0x20) == 0 || !*v237)
        {
          v21 = 15;
          goto LABEL_487;
        }

        v22 = *this;
        *&v23 = 0xAAAAAAAAAAAAAAAALL;
        *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[80] = v23;
        *&v264[96] = v23;
        *&v264[64] = v23;
        CBB_zero(&v264[64]);
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v249[1] = v24;
        v250 = v24;
        v249[0] = v24;
        v245 = v24;
        v246 = v24;
        *v244 = v24;
        if (((*(*v22 + 88))(v22, &v264[64], v249, 15) & 1) == 0)
        {
          goto LABEL_320;
        }

        if (!*(this + 805))
        {
          __assert_rtn("do_send_client_certificate_verify", "handshake_client.cc", 1715, "hs->signature_algorithm != 0");
        }

        if (bssl::ssl_protocol_version(v22, v25, v26) >= 0x303 && !CBB_add_u16(v249, *(this + 805)))
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1719);
LABEL_320:
          finished = 0;
          goto LABEL_321;
        }

        v27 = EVP_PKEY_size(*(*v237 + 1));
        *v264 = 0xAAAAAAAAAAAAAAAALL;
        if (!CBB_add_u16_length_prefixed(v249, v244) || !CBB_reserve(v244, v264, v27))
        {
          goto LABEL_320;
        }

        *&v265 = v27;
        v28 = bssl::ssl_private_key_sign(this, *v264, &v265, v27, *(this + 805), *(*(this + 53) + 8), **(this + 53));
        if (v28 == 1)
        {
          finished = 9;
          v30 = 14;
        }

        else
        {
          if (v28 == 2 || !CBB_did_write(v244, v265) || !bssl::ssl_add_message_cbb(v22, &v264[64]))
          {
            goto LABEL_320;
          }

          bssl::SSLTranscript::FreeBuffer(this + 53);
          finished = 1;
          v30 = 15;
        }

        *(this + 5) = v30;
LABEL_321:
        CBB_cleanup(&v264[64], v25);
        goto LABEL_489;
      case 15:
        v41 = *this;
        *(this + 400) |= 0x1000000u;
        if (!(*(*v41 + 112))(v41, a2, a3, a4) || !bssl::tls1_change_cipher_state(this, 1))
        {
          goto LABEL_428;
        }

        v42 = *(this + 400);
        if ((v42 & 0x4000) != 0)
        {
          v123 = *(v41[6] + 488);
          *&v124 = 0xAAAAAAAAAAAAAAAALL;
          *(&v124 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v264[80] = v124;
          *&v264[96] = v124;
          *&v264[64] = v124;
          CBB_zero(&v264[64]);
          *&v125 = 0xAAAAAAAAAAAAAAAALL;
          *(&v125 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v249[1] = v125;
          v250 = v125;
          v249[0] = v125;
          v245 = v125;
          v246 = v125;
          *v244 = v125;
          if (!(*(*v41 + 88))(v41, &v264[64], v249, 67) || !CBB_add_u8_length_prefixed(v249, v244) || !CBB_add_bytes(v244, *(v41[6] + 480), *(v41[6] + 488)) || !CBB_add_u8_length_prefixed(v249, v244) || !CBB_add_bytes(v244, &bssl::do_send_client_finished(bssl::SSL_HANDSHAKE *)::kZero, 32 - ((v123 + 2) & 0x1F)) || (bssl::ssl_add_message_cbb(v41, &v264[64]) & 1) == 0)
          {
            ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1779);
            CBB_cleanup(&v264[64], v140);
            goto LABEL_428;
          }

          CBB_cleanup(&v264[64], v126);
          if ((*(this + 400) & 0x2000000) == 0)
          {
            goto LABEL_75;
          }
        }

        else if ((v42 & 0x2000000) == 0)
        {
          goto LABEL_75;
        }

        *&v127 = 0xAAAAAAAAAAAAAAAALL;
        *(&v127 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[80] = v127;
        *&v264[96] = v127;
        *&v264[64] = v127;
        CBB_zero(&v264[64]);
        *&v128 = 0xAAAAAAAAAAAAAAAALL;
        *(&v128 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v249[1] = v128;
        v250 = v128;
        v249[0] = v128;
        if (!(*(*v41 + 88))(v41, &v264[64], v249, 203) || !bssl::tls1_write_channel_id(this, v249, v129, v130) || (bssl::ssl_add_message_cbb(v41, &v264[64]) & 1) == 0)
        {
          ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1790);
          CBB_cleanup(&v264[64], v147);
          goto LABEL_428;
        }

        CBB_cleanup(&v264[64], v131);
LABEL_75:
        if (!bssl::ssl_send_finished(this, a2))
        {
          goto LABEL_428;
        }

        v43 = 16;
        goto LABEL_77;
      case 16:
        v20 = *this;
        if (*(*this + 104))
        {
          v21 = 20;
          goto LABEL_487;
        }

        if (!bssl::tls1_record_handshake_hashes_for_channel_id(this, a2))
        {
          goto LABEL_428;
        }

        *(this + 5) = 17;
        if ((SSL_get_mode(v20) & 0x80) == 0)
        {
          goto LABEL_488;
        }

        v96 = *this;
        if (SSL_is_dtls(*this))
        {
          goto LABEL_488;
        }

        if (SSL_version(v96) != 771)
        {
          goto LABEL_488;
        }

        v97 = *(this + 196);
        if (*(v97 + 20) != 2)
        {
          goto LABEL_488;
        }

        if (*(v97 + 32) != 8)
        {
          goto LABEL_488;
        }

        handshake_func = v96->handshake_func;
        if (*(handshake_func + 54) == 2 || (*&v96->s2[2].challenge[20] & 0x100) == 0 && !*(handshake_func + 63) && !*(handshake_func + 61))
        {
          goto LABEL_488;
        }

        if ((*(*(v20 + 48) + 222) & 0x10) != 0)
        {
          goto LABEL_488;
        }

        *(this + 400) |= 0x2200u;
        finished = 12;
        goto LABEL_489;
      case 17:
        if ((*(this + 1601) & 0x80) == 0)
        {
          goto LABEL_102;
        }

        v75 = *this;
        *&v264[96] = 0xAAAAAAAAAAAAAAAALL;
        *&v76 = 0xAAAAAAAAAAAAAAAALL;
        *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v264[64] = v76;
        *&v264[80] = v76;
        if (!(*(*v75 + 24))(v75, &v264[64], a3, a4))
        {
LABEL_188:
          finished = 3;
          goto LABEL_489;
        }

        if (!bssl::ssl_check_message_type(v75, &v264[64], 4, a4) || !bssl::ssl_hash_message(this, &v264[64]))
        {
          goto LABEL_428;
        }

        v249[0] = *&v264[72];
        memset(v244, 170, sizeof(v244));
        LODWORD(v265) = -1431655766;
        if (!CBS_get_u32(v249, &v265) || !CBS_get_u16_length_prefixed(v249, v244) || *(&v249[0] + 1))
        {
          bssl::ssl_send_alert(v75, 2, 50);
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1894);
          goto LABEL_428;
        }

        if (*&v244[2])
        {
          v77 = *(v75 + 13);
          if (v77)
          {
            if (*v238)
            {
              bssl::ssl_client_handshake();
            }

            bssl::SSL_SESSION_dup(v264, v77, 2);
            v78 = *v264;
            *v264 = 0;
            std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v238, v78);
            std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v264, 0);
            if (!*v238)
            {
              goto LABEL_428;
            }

            (*v238)[1].session_id[24] |= 1u;
          }

          bssl::ssl_session_rebase_time(v75, *v238, a3);
          v79 = *v238;
          v80 = *v244;
          v81 = *&v244[2];
          if (!bssl::Array<unsigned char>::InitUninitialized(&(*v238)->ex_data.dummy, *&v244[2]))
          {
LABEL_428:
            finished = 0;
            goto LABEL_489;
          }

          if (v81)
          {
            v82 = *&v79->ex_data.dummy;
            do
            {
              v83 = *v80++;
              *v82++ = v83;
              --v81;
            }

            while (v81);
          }

          v84 = *(this + 192);
          *(v84 + 372) = v265;
          *(v84 + 91) = 32;
          SHA256(*v244, *&v244[2], (v84 + 59));
          (*(*v75 + 32))(v75);
        }

        else
        {
          *(this + 400) &= ~0x8000u;
          (*(*v75 + 32))(v75);
        }

LABEL_102:
        *(this + 5) = 18;
        finished = 15;
        goto LABEL_489;
      case 18:
        if (!bssl::tls1_change_cipher_state(this, 0))
        {
          goto LABEL_428;
        }

        v21 = 19;
        goto LABEL_487;
      case 19:
        v71 = *this;
        finished = bssl::ssl_get_finished(this, a2);
        if (finished != 1)
        {
          goto LABEL_489;
        }

        if (*(v71 + 104))
        {
          v33 = 15;
        }

        else
        {
          v33 = 20;
        }

        goto LABEL_191;
      case 20:
        v52 = *this;
        if (*(*(*this + 48) + 216) == 2)
        {
          *(this + 400) |= 2u;
          bssl::ssl_send_alert(v52, 2, 121);
          ERR_put_error(16, 0, 319, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 1973);
          goto LABEL_428;
        }

        (*(*v52 + 128))(*this, a2, a3, a4);
        v85 = *v238;
        if (!*v238)
        {
          v122 = *(v52 + 104);
          if (!v122)
          {
            bssl::ssl_client_handshake();
          }

          SSL_SESSION_up_ref(*(v52 + 104));
          v91 = (*(v52 + 48) + 472);
          v92 = v122;
          goto LABEL_248;
        }

        bssl::SSL_SESSION_dup(&v264[64], *v238, 3);
        v86 = *(v52 + 48);
        v87 = *&v264[64];
        *&v264[64] = 0;
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v86 + 472), v87);
        v88 = *&v264[64];
        *&v264[64] = 0;
        if (v88)
        {
          SSL_SESSION_free(v88);
        }

        v89 = *(v52 + 48);
        v90 = *(v89 + 472);
        if (v90)
        {
          if ((*(v89 + 222) & 0x10) == 0)
          {
            *(v90 + 440) &= ~4u;
          }

          v91 = v238;
          v92 = 0;
LABEL_248:
          std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v91, v92);
          *(this + 400) |= 8u;
          *(*(v52 + 48) + 222) |= 0x10u;
          if (v85)
          {
            bssl::ssl_update_cache(v52, a2);
          }

          v21 = 21;
          goto LABEL_487;
        }

        goto LABEL_428;
      case 21:
        bssl::ssl_do_info_callback(*this, 0x20);
        return 1;
      default:
        goto LABEL_428;
    }
  }
}