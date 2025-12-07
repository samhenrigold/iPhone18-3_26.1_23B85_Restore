int SSL_renegotiate_pending(SSL *s)
{
  handshake_func = s->handshake_func;
  v2 = *(handshake_func + 35);
  if (!v2 || (*(v2 + 1600) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(handshake_func + 111) >> 4) & 1;
  }
}

uint64_t SSL_set_mtu(bssl *a1, unsigned int a2)
{
  if (!**a1 || bssl::dtls1_min_mtu(a1) > a2)
  {
    return 0;
  }

  *(*(a1 + 7) + 320) = a2;
  return 1;
}

uint64_t SSL_CTX_set_tlsext_ticket_keys(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (!a2)
  {
    return 48;
  }

  if (a3 == 48)
  {
    result = OPENSSL_malloc(0x38uLL);
    if (result)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *result = *a2;
      *(result + 16) = a2[1];
      *(result + 32) = a2[2];
      *(result + 48) = 0;
      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 544), result);
      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 552), 0);
      return 1;
    }
  }

  else
  {
    ERR_put_error(16, 0, 161, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2191);
    return 0;
  }

  return result;
}

int SSL_CTX_set_cipher_list(SSL_CTX *a1, const char *str)
{
  v4 = *&a1[1].sid_ctx[8];
  if ((v4 & 0x800) != 0)
  {
    is_opaque = (v4 >> 12) & 1;
  }

  else
  {
    is_opaque = RSA_is_opaque();
  }

  return bssl::ssl_create_cipher_list(&a1->sha1, is_opaque != 0, str, 0);
}

int SSL_set_cipher_list(SSL *s, const char *str)
{
  method = s->method;
  if (!method)
  {
    return 0;
  }

  v4 = *(&method[1].ssl_shutdown + 5);
  if ((v4 & 0x800) != 0)
  {
    is_opaque = (v4 >> 12) & 1;
  }

  else
  {
    is_opaque = RSA_is_opaque();
    method = s->method;
  }

  return bssl::ssl_create_cipher_list(&method->ssl_free, is_opaque != 0, str, 0);
}

uint64_t SSL_CTX_set_next_protos_advertised_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 600) = a2;
  *(result + 608) = a3;
  return result;
}

uint64_t SSL_CTX_set_next_proto_select_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 616) = a2;
  *(result + 624) = a3;
  return result;
}

uint64_t SSL_CTX_set_alpn_protos(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (!a3)
  {
    return bssl::Array<unsigned char>::InitUninitialized(a1 + 648, 0) ^ 1;
  }

  v4 = a3;
  v5 = a2;
  if (!bssl::ssl_is_valid_alpn_list(a2, a3))
  {
    ERR_put_error(16, 0, 315, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2642);
    return 1;
  }

  v6 = (a1 + 648);
  if (!bssl::Array<unsigned char>::InitUninitialized(v6, v4))
  {
    return 1;
  }

  v7 = *v6;
  do
  {
    v8 = *v5++;
    *v7++ = v8;
    --v4;
  }

  while (v4);
  return 0;
}

uint64_t SSL_CTX_set_alpn_select_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 632) = a2;
  *(result + 640) = a3;
  return result;
}

uint64_t SSL_set_alpn_select_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t SSL_get0_certificate_types(uint64_t a1, void *a2)
{
  if ((*(a1 + 180) & 1) != 0 || (v2 = *(*(a1 + 48) + 280)) == 0)
  {
    result = 0;
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 1504);
    result = *(v2 + 1512);
  }

  *a2 = v3;
  return result;
}

void SSL_set_shutdown(SSL *ssl, int mode)
{
  handshake_func = ssl->handshake_func;
  v4 = *(handshake_func + 43);
  v3 = *(handshake_func + 44);
  if ((((v3 == 1) | (2 * (v4 != 0))) & ~mode) != 0)
  {
    SSL_set_shutdown_cold_1();
  }

  if ((mode & 2) != 0 && !v4)
  {
    *(handshake_func + 43) = 1;
  }

  if ((mode & 1) != 0 && !v3)
  {
    *(handshake_func + 44) = 1;
  }
}

uint64_t use_psk_identity_hint(void **a1, char *__s)
{
  if (__s)
  {
    if (strlen(__s) >= 0x81)
    {
      ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 3040);
      return 0;
    }

    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](a1, 0);
    if (*__s)
    {
      v5 = OPENSSL_strdup(__s);
      std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](a1, v5);
      if (!*a1)
      {
        return 0;
      }
    }
  }

  else
  {
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](a1, 0);
  }

  return 1;
}

uint64_t SSL_use_psk_identity_hint(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return use_psk_identity_hint((v2 + 56), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t SSL_get_psk_identity_hint(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (!v2)
    {
      SSL_get_psk_identity_hint_cold_1();
    }

    return *(v2 + 56);
  }

  return result;
}

const SSL *SSL_get_psk_identity(const SSL *result)
{
  if (result)
  {
    result = SSL_get_session(result);
    if (result)
    {
      return result->s3;
    }
  }

  return result;
}

uint64_t SSL_set_psk_client_callback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 64) = a2;
  }

  return result;
}

uint64_t SSL_set_psk_server_callback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 72) = a2;
  }

  return result;
}

uint64_t SSL_set_psk_client13_ext_callback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 80) = a2;
  }

  return result;
}

size_t SSL_get_client_random(uint64_t a1, void *__dst, size_t a3)
{
  if (!a3)
  {
    return 32;
  }

  if (a3 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a3;
  }

  memcpy(__dst, (*(a1 + 48) + 48), v3);
  return v3;
}

size_t SSL_get_server_random(uint64_t a1, void *__dst, size_t a3)
{
  if (!a3)
  {
    return 32;
  }

  if (a3 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a3;
  }

  memcpy(__dst, (*(a1 + 48) + 16), v3);
  return v3;
}

uint64_t SSL_get_pending_cipher(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return *(v1 + 1568);
  }

  else
  {
    return 0;
  }
}

uint64_t SSL_CTX_use_server_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 680), result);
    result = bssl::Array<unsigned char>::InitUninitialized(a1 + 664, 1uLL);
    if (result)
    {
      if (!*(a1 + 672))
      {
        abort();
      }

      **(a1 + 664) = 2;
      return 1;
    }
  }

  return result;
}

ssl_credential_st *ssl_new_raw_public_key_credential_from_certificate(const unsigned __int8 *a1, uint64_t a2)
{
  v4 = SSL_CREDENTIAL_new_raw_public_key();
  if (v4)
  {
    *&v9 = a1;
    *(&v9 + 1) = a2;
    v5 = EVP_parse_public_key(&v9);
    if (v5)
    {
      v7 = v5;
      SSL_CREDENTIAL_set1_raw_public_key(v4, v5, v6);
      EVP_PKEY_free(v7);
    }

    else
    {
      SSL_CREDENTIAL_free(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t SSL_CTX_use_client_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 704), result);
    result = bssl::Array<unsigned char>::InitUninitialized(a1 + 688, 1uLL);
    if (result)
    {
      if (!*(a1 + 696))
      {
        abort();
      }

      **(a1 + 688) = 2;
      return 1;
    }
  }

  return result;
}

uint64_t SSL_use_server_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(a1 + 8) + 192), result);
    result = bssl::Array<unsigned char>::InitUninitialized(*(a1 + 8) + 176, 1uLL);
    if (result)
    {
      v5 = *(a1 + 8);
      if (!*(v5 + 184))
      {
        abort();
      }

      **(v5 + 176) = 2;
      return 1;
    }
  }

  return result;
}

uint64_t SSL_use_client_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(a1 + 8) + 216), result);
    result = bssl::Array<unsigned char>::InitUninitialized(*(a1 + 8) + 200, 1uLL);
    if (result)
    {
      v5 = *(a1 + 8);
      if (!*(v5 + 208))
      {
        abort();
      }

      **(v5 + 200) = 2;
      return 1;
    }
  }

  return result;
}

uint64_t SSL_CTX_use_ticket_request(uint64_t a1, char a2, char a3)
{
  *(a1 + 712) = a2;
  *(a1 + 713) = a3;
  return 1;
}

uint64_t bssl::hex_char_consttime(bssl *this)
{
  v1 = -1;
  if (this >= 0xA)
  {
    v1 = 0;
  }

  return ((this + 48) & v1 | (this + 87) & ~v1);
}

ECDSA_SIG *ECDSA_SIG_new(void)
{
  result = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (result)
  {
    result->r = 0;
    result->s = 0;
  }

  return result;
}

void ECDSA_SIG_free(ECDSA_SIG *a)
{
  if (a)
  {
    r = a->r;
    if (r)
    {
      BN_free(r);
    }

    s = a->s;
    if (s)
    {
      BN_free(s);
    }

    free(a);
  }
}

int ECDSA_sign(int type, const unsigned __int8 *dgst, int dgstlen, unsigned __int8 *sig, unsigned int *siglen, EC_KEY *eckey)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    ECDSA_sign_cold_1();
  }

  return 0;
}

ECDSA_SIG *__cdecl ECDSA_do_sign(const unsigned __int8 *dgst, int dgst_len, EC_KEY *eckey)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    ECDSA_do_sign_cold_1();
  }

  return 0;
}

int ECDSA_size(const EC_KEY *eckey)
{
  v1 = EC_KEY_get0_group(eckey);
  curve_name = EC_GROUP_get_curve_name(v1);
  if (boringssl_ecdsa_get_cc_curve_parameters(curve_name))
  {
    return (((cczp_bitlen() + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 9;
  }

  else
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_size_cold_1();
    }

    LODWORD(v3) = 0;
  }

  return v3;
}

int ECDSA_do_verify(const unsigned __int8 *dgst, int dgst_len, const ECDSA_SIG *sig, EC_KEY *eckey)
{
  v6 = EC_KEY_get0_group(eckey);
  curve_name = EC_GROUP_get_curve_name(v6);
  cc_curve_parameters = boringssl_ecdsa_get_cc_curve_parameters(curve_name);
  if (!cc_curve_parameters)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      ECDSA_do_verify_cold_7();
    }

    return 0;
  }

  v9 = cc_curve_parameters;
  v10 = malloc_type_malloc(24 * *cc_curve_parameters + 16, 0x60040B37CB4BBuLL);
  if (!v10)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      ECDSA_do_verify_cold_6();
    }

    return 0;
  }

  v11 = v10;
  *v10 = v9;
  out = 0;
  v12 = i2o_ECPublicKey(eckey, &out);
  if (!out)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_do_verify_cold_5();
    }

    goto LABEL_18;
  }

  if (MEMORY[0x1AC57E2E0](v9, v12, out, v11))
  {
    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        ECDSA_do_verify_cold_1();
      }
    }

    OPENSSL_free(out);
LABEL_18:
    v14 = v11;
LABEL_19:
    free(v14);
    return 0;
  }

  v15 = ccec_signature_r_s_size();
  v16 = malloc_type_malloc(v15, 0x5B7BC468uLL);
  v17 = malloc_type_malloc(v15, 0x56CEC1ABuLL);
  v18 = v17;
  if (v16)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_do_verify_cold_4();
    }

    OPENSSL_free(out);
    free(v11);
    if (v16)
    {
      free(v16);
    }

    if (!v18)
    {
      return 0;
    }

    goto LABEL_45;
  }

  v20 = BN_bn2bin_padded(v16, v15, sig->r);
  if (!v20 || !BN_bn2bin_padded(v18, v15, sig->s))
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_do_verify_cold_3();
    }

    OPENSSL_free(out);
    free(v11);
    free(v16);
LABEL_45:
    v14 = v18;
    goto LABEL_19;
  }

  if (ccec_verify_composite() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    ECDSA_do_verify_cold_2();
  }

  OPENSSL_free(out);
  free(v11);
  free(v16);
  free(v18);
  return 0;
}

void OUTLINED_FUNCTION_4_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

void bssl::DTLS1_STATE::~DTLS1_STATE(bssl::DTLS1_STATE *this)
{
  v2 = *(this + 304);
  if (*(this + 304))
  {
    v3 = this + 136;
    do
    {
      v3 = (bssl::Array<unsigned char>::~Array(v3) + 24);
      --v2;
    }

    while (v2);
  }

  *(this + 304) = 0;
  for (i = 128; i != 72; i -= 8)
  {
    std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100]((this + i), 0);
  }

  std::unique_ptr<bssl::DTLSEpochState,bssl::internal::Deleter>::reset[abi:ne200100](this + 9, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](this + 7, 0);
}

uint64_t bssl::dtls1_new(bssl *this, ssl_st *a2)
{
  if (!bssl::tls_new(this, a2))
  {
    return 0;
  }

  bssl::New<bssl::DTLS1_STATE>();
  v12 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = OPENSSL_malloc(0x10uLL);
  if (v5)
  {
    *v5 = 0;
    v5[1] = 0;
  }

  std::unique_ptr<bssl::DTLSEpochState,bssl::internal::Deleter>::reset[abi:ne200100](v12 + 9, v5);
  if (v12[9] && (bssl::SSLAEADContext::CreateNullCipher(&v11), v6 = v11, v7 = v12[9], v11 = 0, std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](v7, v6), std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v11, 0), v8 = v12, *v12[9]))
  {
    v12 = 0;
    *(this + 7) = v8;
    v9 = 1;
  }

  else
  {
LABEL_9:
    bssl::tls_free(this, v3);
    v9 = 0;
  }

  std::unique_ptr<bssl::DTLS1_STATE,bssl::internal::Deleter>::reset[abi:ne200100](&v12, 0);
  return v9;
}

void sub_1A9071260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<bssl::DTLS1_STATE,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void bssl::dtls1_free(bssl::DTLS1_STATE **this, ssl_st *a2)
{
  bssl::tls_free(this, a2);
  if (this)
  {
    v3 = this[7];
    if (v3)
    {
      bssl::DTLS1_STATE::~DTLS1_STATE(v3);
      OPENSSL_free(v4);
    }

    this[7] = 0;
  }
}

uint64_t bssl::dtls1_start_timer(bssl *this, ssl_st *a2)
{
  v3 = *(this + 7);
  if (!*(v3 + 328) && !*(v3 + 336))
  {
    *(v3 + 344) = *(this + 24);
  }

  result = bssl::ssl_get_current_time(this, v3 + 328);
  v5 = *(this + 7);
  v6 = *(v5 + 344);
  v7 = *(v5 + 328) + v6 / 0x3E8uLL;
  *(v5 + 328) = v7;
  v8 = *(v5 + 336) + 1000 * (v6 % 0x3E8);
  *(v5 + 336) = v8;
  if (v8 >= 0xF4240)
  {
    *(v5 + 328) = v7 + 1;
    *(v5 + 336) = v8 - 1000000;
  }

  return result;
}

uint64_t bssl::dtls1_is_timer_expired(bssl *this, ssl_st *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = DTLSv1_get_timeout(this, &v4);
  if (result)
  {
    return v4 < 1 && v5 < 1;
  }

  return result;
}

uint64_t DTLSv1_get_timeout(uint64_t a1, unint64_t *a2)
{
  result = SSL_is_dtls(a1);
  if (result)
  {
    v5 = *(a1 + 56);
    if (!*(v5 + 328) && !*(v5 + 336))
    {
      return 0;
    }

    v14 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    bssl::ssl_get_current_time(a1, &v14);
    v6 = *(a1 + 56);
    v7 = *(v6 + 328);
    v8 = v7 >= v14;
    v9 = v7 - v14;
    if (!v8)
    {
      goto LABEL_5;
    }

    if (v9)
    {
      v10 = *(v6 + 336);
    }

    else
    {
      v10 = *(v6 + 336);
      if (v10 <= v15)
      {
LABEL_5:
        *a2 = 0;
        a2[1] = 0;
        return 1;
      }
    }

    v11 = v10 < v15;
    if (v10 < v15)
    {
      v10 += 1000000;
    }

    v12 = v10 - v15;
    v13 = v9 - v11;
    if (v13 || v12 >> 3 >= 0x753)
    {
      if (v13 >> 31)
      {
        DTLSv1_get_timeout_cold_1();
      }
    }

    else
    {
      v12 = 0;
    }

    *a2 = v13;
    *(a2 + 2) = v12;
    return 1;
  }

  return result;
}

uint64_t bssl::dtls1_stop_timer(uint64_t this, ssl_st *a2)
{
  v2 = *(this + 56);
  *(v2 + 340) = 0;
  *(v2 + 332) = 0;
  *(v2 + 324) = 0;
  *(*(this + 56) + 344) = *(this + 96);
  return this;
}

BOOL bssl::dtls1_check_timeout_num(bssl *this, ssl_st *a2)
{
  v3 = *(this + 7);
  v4 = *(v3 + 324) + 1;
  *(v3 + 324) = v4;
  if (v4 >= 3 && (SSL_get_options(this) & 0x1000) == 0)
  {
    v5 = BIO_ctrl(*(this + 4), 47, 0, 0);
    if (v5 <= 0x40000000)
    {
      v6 = v5;
      if (bssl::dtls1_min_mtu(v5) <= v5)
      {
        *(*(this + 7) + 320) = v6;
      }
    }
  }

  v7 = *(*(this + 7) + 324);
  if (v7 >= 0xD)
  {
    ERR_put_error(16, 0, 198, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_lib.cc", 187);
  }

  return v7 < 0xD;
}

uint64_t DTLSv1_handle_timeout(bssl *a1, ssl_st *a2)
{
  bssl::ssl_reset_error_state(a1, a2);
  if (!SSL_is_dtls(a1))
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_lib.cc", 256);
    return 0xFFFFFFFFLL;
  }

  result = bssl::dtls1_is_timer_expired(a1, v3);
  if (!result)
  {
    return result;
  }

  if (!bssl::dtls1_check_timeout_num(a1, v5))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 7);
  v8 = 2 * *(v7 + 344);
  if (v8 >= 0xEA60)
  {
    v8 = 60000;
  }

  *(v7 + 344) = v8;
  bssl::dtls1_start_timer(a1, v6);

  return bssl::dtls1_retransmit_outgoing_messages(a1, v9);
}

void std::unique_ptr<bssl::DTLSEpochState,bssl::internal::Deleter>::reset[abi:ne200100](bssl::SSLAEADContext ***a1, bssl::SSLAEADContext **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::Delete<bssl::DTLSEpochState>(v3);
  }
}

void bssl::Delete<bssl::DTLSEpochState>(bssl::SSLAEADContext **a1)
{
  if (a1)
  {
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](a1, 0);

    OPENSSL_free(a1);
  }
}

double bssl::New<bssl::DTLS1_STATE>()
{
  v0 = OPENSSL_malloc(0x160uLL);
  if (v0)
  {
    *v0 &= 0xF8u;
    *(v0 + 2) = 0;
    *(v0 + 304) = 0;
    *(v0 + 312) = 0;
    *(v0 + 86) = 0;
    result = 0.0;
    *(v0 + 1) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 36) = 0u;
    *(v0 + 7) = 0u;
    *(v0 + 9) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 13) = 0u;
    *(v0 + 15) = 0u;
    *(v0 + 324) = 0;
    *(v0 + 332) = 0;
    *(v0 + 316) = 0;
  }

  return result;
}

void std::unique_ptr<bssl::DTLS1_STATE,bssl::internal::Deleter>::reset[abi:ne200100](bssl::DTLS1_STATE **a1, bssl::DTLS1_STATE *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::DTLS1_STATE::~DTLS1_STATE(v3);
    OPENSSL_free(v4);
  }
}

uint64_t bssl::ssl_decode_client_hello_inner(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48 = v10;
  v49 = v10;
  v46 = v10;
  v47 = v10;
  v44 = v10;
  v45 = v10;
  v43 = v10;
  v42[0] = a4;
  v42[1] = a5;
  if (bssl::ssl_parse_client_hello_with_trailing_data(a1, v42, &v43))
  {
    v41 = -86;
    while (CBS_get_u8(v42, &v41))
    {
      if (v41)
      {
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 140);
        v11 = 0;
        *a2 = 47;
        return v11;
      }
    }

    if (*(&v49 + 1))
    {
      v13 = *(&v46 + 1) == 0;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v12 = 150;
      goto LABEL_12;
    }

    v15 = a6[7];
    *&v46 = a6[6];
    *(&v46 + 1) = v15;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40[1] = v16;
    v40[2] = v16;
    v40[0] = v16;
    CBB_zero(v40);
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39[2] = v17;
    v39[0] = v17;
    v39[1] = v17;
    v38[1] = v17;
    v38[2] = v17;
    v38[0] = v17;
    if (!(*(*a1 + 88))(a1, v40, v39, 1) || !CBB_add_u16(v39, WORD4(v44)) || !CBB_add_bytes(v39, v45, *(&v45 + 1)) || (*&v18 = 0xAAAAAAAAAAAAAAAALL, *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL, v50[1] = v18, v50[2] = v18, v50[0] = v18, !CBB_add_u8_length_prefixed(v39, v50)) || !CBB_add_bytes(v50, v46, *(&v46 + 1)) || !CBB_add_u16_length_prefixed(v39, v50) || !CBB_add_bytes(v50, v47, *(&v47 + 1)) || !CBB_add_u8_length_prefixed(v39, v50) || !CBB_add_bytes(v50, v48, *(&v48 + 1)) || !CBB_flush(v39) || !CBB_add_u16_length_prefixed(v39, v38))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 162);
      v11 = 0;
LABEL_49:
      CBB_cleanup(v40, v23);
      return v11;
    }

    v19 = v49;
    *&v50[0] = 0xAAAAAAAAAAAAAAAALL;
    *(&v50[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (bssl::ssl_client_hello_get_extension(&v43, v50, 64768))
    {
      v20 = *&v50[0] - v19 + *(&v50[0] + 1);
      if (*(&v19 + 1) < v20)
      {
        abort();
      }

      if (*(&v19 + 1) >= (*&v50[0] - v19 - 4))
      {
        v21 = *&v50[0] - v19 - 4;
      }

      else
      {
        v21 = *(&v19 + 1);
      }

      if (!CBB_add_bytes(v38, v19, v21))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 185);
        goto LABEL_65;
      }

      v36 = 0xAAAAAAAAAAAAAAAALL;
      v37 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u8_length_prefixed(v50, &v36) || !v37 || *(&v50[0] + 1))
      {
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 193);
        goto LABEL_65;
      }

      v22 = a6[13];
      v34 = a6[12];
      v35 = v22;
      while (2)
      {
        v33 = -21846;
        if (CBS_get_u16(&v36, &v33))
        {
          if (v33 != -499)
          {
            v32 = -21846;
            v30 = 0xAAAAAAAAAAAAAAAALL;
            v31 = 0xAAAAAAAAAAAAAAAALL;
            do
            {
              if (!v35)
              {
                *a2 = 47;
                v28 = 219;
                v29 = 320;
                goto LABEL_64;
              }

              if (!CBS_get_u16(&v34, &v32) || !CBS_get_u16_length_prefixed(&v34, &v30))
              {
                v28 = 224;
LABEL_60:
                v29 = 137;
                goto LABEL_64;
              }
            }

            while (v32 != v33);
            if (!CBB_add_u16(v38, v32) || !CBB_add_u16(v38, v31) || !CBB_add_bytes(v38, v30, v31))
            {
              v28 = 233;
              goto LABEL_60;
            }

            if (v37)
            {
              continue;
            }

            if (!CBB_add_bytes(v38, (v19 + v20), *(&v19 + 1) - v20))
            {
              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 240);
              goto LABEL_65;
            }

            goto LABEL_51;
          }

          *a2 = 47;
          v28 = 209;
          v29 = 320;
        }

        else
        {
          v28 = 203;
          v29 = 137;
        }

        break;
      }

LABEL_64:
      ERR_put_error(16, 0, v29, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v28);
      goto LABEL_65;
    }

    if (!CBB_add_bytes(v38, v19, *(&v19 + 1)))
    {
      v27 = 174;
      goto LABEL_62;
    }

LABEL_51:
    if (CBB_flush(v39))
    {
      v25 = CBB_data(v39, v24);
      v26 = CBB_len(v39);
      if (bssl::is_valid_client_hello_inner(a1, a2, v25, v26))
      {
        if ((*(*a1 + 96))(a1, v40, a3))
        {
          v11 = 1;
          goto LABEL_49;
        }

        v27 = 255;
        goto LABEL_62;
      }

LABEL_65:
      v11 = 0;
      goto LABEL_49;
    }

    v27 = 245;
LABEL_62:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v27);
    goto LABEL_65;
  }

  v12 = 133;
LABEL_12:
  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v12);
  return 0;
}

void sub_1A9071C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  CBB_cleanup(va, a2);
  _Unwind_Resume(a1);
}

uint64_t bssl::is_valid_client_hello_inner(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[5] = v5;
  v15[6] = v5;
  v15[3] = v5;
  v15[4] = v5;
  v15[1] = v5;
  v15[2] = v5;
  v15[0] = v5;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_client_hello_init(a1, v15, a3, a4) && bssl::ssl_client_hello_get_extension(v15, &v14, 65037) && *(&v14 + 1) == 1 && *v14 == 1 && (bssl::ssl_client_hello_get_extension(v15, &v14, 43) & 1) != 0)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_u8_length_prefixed(&v14, &v12) && !*(&v14 + 1) && v13)
    {
      while (1)
      {
        v11 = -21846;
        if (!CBS_get_u16(&v12, &v11))
        {
          break;
        }

        if (v11 - 768 < 4 || v11 == 65279 || v11 == 65277)
        {
          *a2 = 47;
          v9 = 314;
          v10 = 118;
          goto LABEL_20;
        }

        if (!v13)
        {
          return 1;
        }
      }

      *a2 = 50;
      v9 = 137;
      v10 = 111;
    }

    else
    {
      *a2 = 50;
      v9 = 137;
      v10 = 104;
    }
  }

  else
  {
    *a2 = 47;
    v9 = 314;
    v10 = 94;
  }

LABEL_20:
  ERR_put_error(16, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v10);
  return 0;
}

uint64_t bssl::ssl_client_hello_decrypt(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t *a4, void *a5, char *a6, size_t a7)
{
  *a3 = 0;
  v28 = 0;
  v29 = 0;
  v15 = a5[1];
  v14 = a5[2];
  if (bssl::Array<unsigned char>::InitUninitialized(&v28, v14))
  {
    if (v14)
    {
      v16 = v28;
      do
      {
        v17 = *v15++;
        *v16++ = v17;
        --v14;
      }

      while (v14);
    }

    v18 = a5[12];
    if (v18 > a6)
    {
      v23 = "reinterpret_cast<uintptr_t>(client_hello_outer->extensions) <= reinterpret_cast<uintptr_t>(payload.data())";
      v24 = 280;
    }

    else
    {
      if (v18 + a5[13] >= &a6[a7])
      {
        v19 = &a6[-a5[1]];
        if (v29 >= v19)
        {
          if (v29 - v19 >= a7)
          {
            v20 = a7;
          }

          else
          {
            v20 = v29 - v19;
          }

          if (v20)
          {
            bzero(&v19[v28], v20);
          }

          v26 = 0;
          v27 = 0;
          if ((bssl::Array<unsigned char>::InitUninitialized(&v26, a7) & 1) == 0)
          {
            v21 = 0;
            *a2 = 80;
            goto LABEL_22;
          }

          v25 = 0xAAAAAAAAAAAAAAAALL;
          if (!EVP_HPKE_CTX_open((a1 + 94), v26, &v25, v27, a6, a7))
          {
            *a2 = 51;
            *a3 = 1;
            ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 316);
            goto LABEL_21;
          }

          if (v27 >= v25)
          {
            v27 = v25;
            if (bssl::ssl_decode_client_hello_inner(*a1, a2, a4, v26, v25, a5))
            {
              bssl::ssl_do_msg_callback(*a1, 0, 257, *a4, a4[1]);
              v21 = 1;
LABEL_22:
              OPENSSL_free(v26);
              goto LABEL_23;
            }

LABEL_21:
            v21 = 0;
            goto LABEL_22;
          }
        }

        abort();
      }

      v23 = "reinterpret_cast<uintptr_t>(client_hello_outer->extensions + client_hello_outer->extensions_len) >= reinterpret_cast<uintptr_t>(payload.data() + payload.size())";
      v24 = 283;
    }

    __assert_rtn("ssl_client_hello_decrypt", "encrypted_client_hello.cc", v24, v23);
  }

  v21 = 0;
  *a2 = 80;
LABEL_23:
  OPENSSL_free(v28);
  return v21;
}

void sub_1A9071FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  bssl::Array<unsigned char>::~Array(va);
  bssl::Array<unsigned char>::~Array(va1);
  _Unwind_Resume(a1);
}

BOOL bssl::ssl_is_valid_ech_public_name(unsigned __int8 *a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = 0;
    v5 = 0;
    while (2)
    {
      v6 = 0;
      v7 = a1;
      v8 = v2;
      v9 = &a1[v2];
      while (a1[v6] != 46)
      {
        if (v2 == ++v6)
        {
          goto LABEL_8;
        }
      }

      v9 = &a1[v6];
LABEL_8:
      v10 = v9 - a1;
      if (v10 == v2)
      {
        a1 = 0;
        v2 = 0;
        v5 = v7;
        v4 = v8;
      }

      else
      {
        v11 = v10 + 1;
        if (v2 < v10 + 1)
        {
          abort();
        }

        if (v2 < v10)
        {
          v10 = v2;
        }

        v2 -= v11;
        if (v8 == v11)
        {
          return 0;
        }

        a1 += v11;
        v8 = v10;
      }

      if (v8 - 64 >= 0xFFFFFFFFFFFFFFC1 && *v7 != 45 && v7[v8 - 1] != 45)
      {
        do
        {
          v12 = *v7;
          v13 = OPENSSL_isalnum(v12);
          if (v12 != 45 && !v13)
          {
            return 0;
          }

          ++v7;
          --v8;
        }

        while (v8);
        if (v2)
        {
          continue;
        }

        if (v4 >= 2)
        {
          if (*v5 != 48 || (v5[1] | 0x20) != 0x78)
          {
LABEL_31:
            v17 = v4 - 1;
            do
            {
              v18 = *v5++;
              result = (v18 - 58) < 0xFFFFFFF6;
            }

            while ((v18 - 58) >= 0xFFFFFFF6 && v17-- != 0);
            return result;
          }

          v16 = v4 - 2;
          if (v4 == 2)
          {
            return 0;
          }

          for (i = v5 + 2; OPENSSL_isxdigit(*i); ++i)
          {
            result = 0;
            if (!--v16)
            {
              return result;
            }
          }
        }

        if (!v4)
        {
          return 1;
        }

        goto LABEL_31;
      }

      break;
    }
  }

  return 0;
}

uint64_t bssl::parse_ech_config(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  v30 = -21846;
  v8 = *a1;
  v9 = *(a1 + 8);
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16(a1, &v30) || !CBS_get_u16_length_prefixed(a1, &v28))
  {
    v22 = 413;
LABEL_33:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v22);
    return 0;
  }

  if (v30 != -499)
  {
    goto LABEL_34;
  }

  v10 = *(a1 + 8);
  v11 = v9 - v10;
  result = bssl::Array<unsigned char>::InitUninitialized(a2, v9 - v10);
  if (!result)
  {
    return result;
  }

  if (v9 != v10)
  {
    v13 = *a2;
    do
    {
      v14 = *v8;
      v8 = (v8 + 1);
      *v13++ = v14;
      --v11;
    }

    while (v11);
  }

  v15 = *(a2 + 8);
  v27[0] = *a2;
  v27[1] = v15;
  memset(v26, 170, sizeof(v26));
  memset(v25, 170, sizeof(v25));
  if (!CBS_skip(v27, 2uLL) || !CBS_get_u16_length_prefixed(v27, &v28) || !CBS_get_u8(&v28, (a2 + 67)) || !CBS_get_u16(&v28, (a2 + 64)) || !CBS_get_u16_length_prefixed(&v28, v26) || !v26[1] || !CBS_get_u16_length_prefixed(&v28, &v25[2]) || !v25[3] || (v25[3] & 3) != 0 || !CBS_get_u8(&v28, (a2 + 66)) || !CBS_get_u8_length_prefixed(&v28, &v26[2]) || !v26[3] || !CBS_get_u16_length_prefixed(&v28, v25) || v29)
  {
    v22 = 444;
    goto LABEL_33;
  }

  if (bssl::ssl_is_valid_ech_public_name(v26[2], v26[3]))
  {
    v16 = v26[1];
    *(a2 + 16) = v26[0];
    *(a2 + 24) = v16;
    v17 = v26[3];
    *(a2 + 32) = v26[2];
    *(a2 + 40) = v17;
    v18 = v25[3];
    *(a2 + 48) = v25[2];
    *(a2 + 56) = v18;
    if (v25[1])
    {
      v19 = 0;
      while (1)
      {
        v24 = -21846;
        v23[0] = 0xAAAAAAAAAAAAAAAALL;
        v23[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16(v25, &v24) || !CBS_get_u16_length_prefixed(v25, v23))
        {
          break;
        }

        if (v24 < 0)
        {
          v20 = 1;
        }

        else
        {
          v20 = a4;
        }

        v19 |= v20;
        if (!v25[1])
        {
          v21 = v19 ^ 1;
          goto LABEL_40;
        }
      }

      v22 = 468;
      goto LABEL_33;
    }

    v21 = 1;
LABEL_40:
    *a3 = v21 & 1;
    return 1;
  }

LABEL_34:
  *a3 = 0;
  return 1;
}

BOOL bssl::ECHServerConfig::SetupContext(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 56);
  v30 = *(a1 + 48);
  v31 = v6;
  if (v6)
  {
    while (1)
    {
      LOWORD(v28[0]) = -21846;
      v29 = -21846;
      if (!CBS_get_u16(&v30, v28) || !CBS_get_u16(&v30, &v29))
      {
        return 0;
      }

      if (LOWORD(v28[0]) == a3 && v29 == a4)
      {
        break;
      }

      if (!v31)
      {
        return 0;
      }
    }

    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28[1] = v16;
    v28[2] = v16;
    v28[0] = v16;
    CBB_zero(v28);
    if (CBB_init(v28, *(a1 + 8) + 8) && CBB_add_bytes(v28, "tls ech", 8uLL) && CBB_add_bytes(v28, *a1, *(a1 + 8)))
    {
      if (a3 == 1)
      {
        v18 = 0;
        v19 = "get_ech_aead(aead_id) != NULL";
        while (1)
        {
          v20 = bssl::kSupportedAEADs[v18]();
          if (EVP_HPKE_KDF_id(v20) == a4)
          {
            break;
          }

          if (++v18 == 3)
          {
            goto LABEL_18;
          }
        }

        if (v20)
        {
          v22 = EVP_hpke_hkdf_sha256();
          v23 = 0;
          while (1)
          {
            v24 = bssl::kSupportedAEADs[v23]();
            if (EVP_HPKE_KDF_id(v24) == a4)
            {
              break;
            }

            if (++v23 == 3)
            {
              v24 = 0;
              break;
            }
          }

          v26 = CBB_data(v28, v25);
          v27 = CBB_len(v28);
          v14 = EVP_HPKE_CTX_setup_recipient(a2, (a1 + 72), v22, v24, a5, a6, v26, v27) != 0;
          goto LABEL_26;
        }

        v19 = "get_ech_aead(aead_id) != NULL";
LABEL_18:
        v21 = 578;
      }

      else
      {
        v19 = "kdf_id == EVP_HPKE_HKDF_SHA256";
        v21 = 577;
      }

      __assert_rtn("SetupContext", "encrypted_client_hello.cc", v21, v19);
    }

    v14 = 0;
LABEL_26:
    CBB_cleanup(v28, v17);
    return v14;
  }

  return 0;
}

uint64_t bssl::ssl_is_valid_ech_config_list(unsigned __int8 *a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16_length_prefixed(&v14, &v12))
  {
    return 0;
  }

  if (!v13 || v15 != 0)
  {
    return 0;
  }

  do
  {
    *v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0xAAAAAAAA00000000;
    v3 = bssl::parse_ech_config(&v12, v7, &v6, 0);
    OPENSSL_free(v7[0]);
    if (v13)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  while ((v4 & 1) != 0);
  return v3;
}

void sub_1A9072710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t SSL_set1_ech_config_list(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v3 = a3;
  v4 = a2;
  if (bssl::ssl_is_valid_ech_config_list(a2, a3))
  {
    v6 = *(a1 + 8);
    result = bssl::Array<unsigned char>::InitUninitialized(v6 + 288, v3);
    if (result)
    {
      v8 = v3 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *(v6 + 288);
      do
      {
        v10 = *v4++;
        *v9++ = v10;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    ERR_put_error(16, 0, 318, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 916);
    return 0;
  }

  return result;
}

void SSL_ECH_KEYS_free(unsigned int *result)
{
  if (result)
  {
    bssl::RefCounted<ssl_ech_keys_st>::DecRefInternal(result);
  }
}

void bssl::RefCounted<ssl_ech_keys_st>::DecRefInternal(unsigned int *a1)
{
  if (CRYPTO_refcount_dec_and_test_zero(a1))
  {
    bssl::Vector<std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>>::clear((a1 + 2));

    OPENSSL_free(a1);
  }
}

BOOL SSL_ech_accepted(uint64_t a1)
{
  if (SSL_in_early_data(a1) && (*(a1 + 180) & 1) == 0)
  {
    return *(*(*(a1 + 48) + 280) + 1560) != 0;
  }

  else
  {
    return *(*(a1 + 48) + 216) == 1;
  }
}

void *bssl::New<bssl::ECHConfig,bssl::ECHConfig>(uint64_t a1)
{
  v2 = OPENSSL_malloc(0x48uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    OPENSSL_free(0);
    *v3 = 0;
    v3[1] = 0;
    v4 = *(a1 + 8);
    *v3 = *a1;
    v3[1] = v4;
    *a1 = 0;
    *(a1 + 8) = 0;
    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    *(v3 + 16) = *(a1 + 64);
    *(v3 + 2) = v6;
    *(v3 + 3) = v7;
    *(v3 + 1) = v5;
  }

  return v3;
}

void bssl::Vector<std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>>::clear(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    do
    {
      std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>::reset[abi:ne200100](v2++, 0);
      --v3;
    }

    while (v3);
    v2 = *a1;
  }

  OPENSSL_free(v2);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    EVP_HPKE_KEY_cleanup();
    v3 = bssl::Array<unsigned char>::~Array(v2);
    OPENSSL_free(v3);
  }
}

DSA *DSA_new(void)
{
  v0 = OPENSSL_zalloc(0x110uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 64) = 1;
    CRYPTO_MUTEX_init((v0 + 5));
    CRYPTO_new_ex_data(v1 + 264, v2, v3);
  }

  return v1;
}

void DSA_free(DSA *r)
{
  if (r && CRYPTO_refcount_dec_and_test_zero(&r[1].meth))
  {
    CRYPTO_free_ex_data(&g_ex_data_class_1, r, &r[1].engine);
    BN_clear_free(*&r->pad);
    BN_clear_free(r->version);
    BN_clear_free(*&r->write_params);
    BN_clear_free(r->p);
    BN_clear_free(r->q);
    BN_MONT_CTX_free(r[1].ex_data.sk);
    BN_MONT_CTX_free(*&r[1].ex_data.dummy);
    CRYPTO_MUTEX_cleanup(&r->g);

    OPENSSL_free(r);
  }
}

int DSA_size(const DSA *a1)
{
  version = a1->version;
  if (version)
  {
    v2 = BN_num_bytes(version);
    v3 = v2;
    if (v2 >= 0x7F)
    {
      v5 = v2 + 1;
      v4 = 1;
      do
      {
        ++v4;
        v6 = v5 >= 0xFF;
        v7 = v5 == 255;
        v5 >>= 8;
      }

      while (!v7 && v6);
    }

    else
    {
      v4 = 1;
    }

    LODWORD(version) = 0;
    v8 = v3 + v4 + 2;
    if (v8 >= v3 && (v8 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v8;
      if (v8 >= 0x40)
      {
        v10 = 1;
        v11 = v9;
        do
        {
          ++v10;
          v6 = v11 >= 0xFF;
          v7 = v11 == 255;
          v11 >>= 8;
        }

        while (!v7 && v6);
      }

      else
      {
        v10 = 1;
      }

      v12 = v10 + v9 + 1;
      if (v12 >= v9)
      {
        LODWORD(version) = v12;
      }

      else
      {
        LODWORD(version) = 0;
      }
    }
  }

  return version;
}

uint64_t dtls1_on_handshake_complete(ssl_st *a1, ssl_st *a2)
{
  result = bssl::dtls1_stop_timer(a1, a2);
  if ((**&a1->server & 4) != 0)
  {

    return bssl::dtls_clear_outgoing_messages(a1, v4);
  }

  return result;
}

BOOL dtls1_set_read_state(bssl *a1, const ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    dtls1_set_read_state();
  }

  v6 = a2;
  has_unprocessed_handshake_data = bssl::dtls_has_unprocessed_handshake_data(a1, a2);
  if (has_unprocessed_handshake_data)
  {
    ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_method.cc", 86);
    bssl::ssl_send_alert(a1, 2, 10);
  }

  else
  {
    if (bssl::ssl_protocol_version(a1, v8, v9) < 0x304)
    {
      v11 = *(a1 + 7);
      ++*(v11 + 2);
    }

    else
    {
      v11 = *(a1 + 7);
      *(v11 + 2) = v6;
    }

    *(v11 + 40) = 0;
    *(v11 + 24) = 0u;
    *(v11 + 8) = 0u;
    v12 = *(a1 + 6);
    *v12 = 0;
    v13 = *a3;
    *a3 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v12 + 264), v13);
    v14 = *(a1 + 7);
    *(*(a1 + 6) + 200) = v6;
    *v14 &= ~1u;
  }

  return !has_unprocessed_handshake_data;
}

uint64_t dtls1_set_write_state(bssl *a1, const ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    dtls1_set_write_state();
  }

  v6 = a2;
  v8 = *(a1 + 6);
  ++*(*(a1 + 7) + 4);
  *(v8 + 8) = 0;
  v9 = bssl::ssl_protocol_version(a1, a2, a3);
  v10 = *(a1 + 7);
  if (v9 >= 0x304)
  {
    *(v10 + 4) = v6;
  }

  v11 = *(a1 + 6);
  v12 = *(v11 + 272);
  *(v11 + 272) = 0;
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v10 + 56), v12);
  v13 = *(a1 + 6);
  *(*(a1 + 7) + 64) = *(v13 + 8);
  v14 = *a3;
  *a3 = 0;
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v13 + 272), v14);
  *(*(a1 + 6) + 204) = v6;
  return 1;
}

uint64_t dsa_check_key(uint64_t *a1)
{
  v2 = *a1;
  if (!v2 || !a1[1] || !a1[2])
  {
    v3 = 101;
    v4 = 73;
    goto LABEL_10;
  }

  if (BN_is_negative(v2) || BN_is_negative(a1[1]) || BN_is_zero(*a1) || BN_is_zero(a1[1]) || !BN_is_odd(*a1) || !BN_is_odd(a1[1]) || (BN_cmp(a1[1], *a1) & 0x80000000) == 0 || BN_is_negative(a1[2]) || BN_is_zero(a1[2]) || (BN_cmp(a1[2], *a1) & 0x80000000) == 0)
  {
    v3 = 107;
    v4 = 90;
LABEL_10:
    ERR_put_error(10, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", v4);
    return 0;
  }

  v6 = BN_num_bits(a1[1]);
  if (v6 != 160 && v6 != 224 && v6 != 256)
  {
    v3 = 100;
    v4 = 97;
    goto LABEL_10;
  }

  if (BN_num_bits(*a1) >= 0x2711)
  {
    v3 = 102;
    v4 = 104;
    goto LABEL_10;
  }

  v7 = a1[3];
  if (v7 && (BN_is_negative(v7) || BN_is_zero(a1[3]) || (BN_cmp(a1[3], *a1) & 0x80000000) == 0))
  {
    v3 = 107;
    v4 = 112;
    goto LABEL_10;
  }

  v8 = a1[4];
  if (v8 && (BN_is_negative(v8) || BN_is_zero(a1[4]) || BN_cmp(a1[4], a1[1]) >= 0))
  {
    v3 = 107;
    v4 = 123;
    goto LABEL_10;
  }

  return 1;
}

DSA *DSA_parse_parameters(__int128 *a1)
{
  v2 = DSA_new();
  if (v2)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_asn1(a1, &v4, 536870928) || !parse_integer_0(&v4, v2) || !parse_integer_0(&v4, &v2->version) || !parse_integer_0(&v4, &v2->write_params) || *(&v4 + 1))
    {
      ERR_put_error(10, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", 228);
LABEL_10:
      DSA_free(v2);
      return 0;
    }

    if (!dsa_check_key(&v2->pad))
    {
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t DSA_marshal_parameters(uint64_t *a1, BIGNUM **a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v6, 0x20000010u) && marshal_integer_0(v6, *a2) && marshal_integer_0(v6, a2[1]) && marshal_integer_0(v6, a2[2]) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(10, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", 248);
  return 0;
}

DSA *DSA_parse_private_key(__int128 *a1)
{
  v2 = DSA_new();
  if (v2)
  {
    memset(v6, 170, sizeof(v6));
    if (CBS_get_asn1(a1, &v6[1], 536870928) && CBS_get_asn1_uint64(&v6[1], v6))
    {
      if (v6[0])
      {
        v3 = 104;
        v4 = 269;
      }

      else
      {
        if (parse_integer_0(&v6[1], v2) && parse_integer_0(&v6[1], &v2->version) && parse_integer_0(&v6[1], &v2->write_params) && parse_integer_0(&v6[1], &v2->p) && parse_integer_0(&v6[1], &v2->q) && !v6[2])
        {
          if (dsa_check_key(&v2->pad))
          {
            return v2;
          }

          goto LABEL_8;
        }

        v3 = 105;
        v4 = 279;
      }
    }

    else
    {
      v3 = 105;
      v4 = 264;
    }

    ERR_put_error(10, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", v4);
LABEL_8:
    DSA_free(v2);
    return 0;
  }

  return v2;
}

xpc_object_t boringssl_metrics_create_connection_failure_event(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    boringssl_metrics_log_configuration_data(a1, v3);
    boringssl_metrics_log_connection_data(a1, v3);
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_ALERT_TYPE, *(v2 + 304));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_ALERT_LEVEL, *(v2 + 308));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_ALERT_CODE, *(v2 + 309));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_HANDSHAKE_STATE, *(v2 + 296));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_HANDSHAKE_TYPE, *(v2 + 300));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_INTERNAL_ERROR, *(v2 + 288));
    v4 = TLS_METRIC_FAILURE_STACK_ERROR;
    stack_error = boringssl_session_get_stack_error(a1);
    xpc_dictionary_set_uint64(v3, v4, stack_error);
    v6 = v3;
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    boringssl_metrics_create_connection_failure_event_cold_1();
  }

  return v3;
}

BOOL boringssl_metrics_log_connection_failure(unint64_t a1)
{
  if (!a1 || *a1 != -1252936367 || !*(a1 + 8))
  {
    return 0;
  }

  if (metricsQueueToken != -1)
  {
    v5 = a1;
    boringssl_metrics_log_connection_failure_cold_1();
    a1 = v5;
  }

  if (!boringssl_context_metrics_queue)
  {
    return 0;
  }

  connection_failure_event = boringssl_metrics_create_connection_failure_event(a1);
  if (!connection_failure_event)
  {
    return 0;
  }

  v2 = connection_failure_event;
  v3 = boringssl_metrics_log_event("TLSFailureEvent", connection_failure_event, boringssl_context_metrics_queue);

  return v3;
}

uint64_t __boringssl_metrics_log_connection_failure_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.network.boringssl.metrics_queue", 0);
  boringssl_context_metrics_queue = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t __boringssl_metrics_log_ech_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.network.boringssl.metrics_queue", 0);
  boringssl_context_metrics_queue = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t ec_bignum_to_scalar(uint64_t a1, void *__dst, uint64_t a3)
{
  if (bn_copy_words(__dst, *(a1 + 264), a3) && bn_less_than_words(__dst, *(a1 + 256), *(a1 + 264)))
  {
    return 1;
  }

  ERR_put_error(15, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/scalar.c.inc", 32);
  return 0;
}

BOOL ec_scalar_is_zero(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 264);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *a2++;
    v3 |= v4;
    --v2;
  }

  while (v2);
  return v3 == 0;
}

uint64_t ec_simple_scalar_to_montgomery_inv_vartime(unsigned int *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1[66];
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 8 * v3;
  do
  {
    v7 |= *(a3 + v6);
    v6 += 8;
  }

  while (v8 != v6);
  if (!v7)
  {
    return 0;
  }

  (*(*a1 + 136))(a1, a2);
  bn_from_montgomery_small(a2, a1[66], a2, a1[66], (a1 + 58));
  return 1;
}

uint64_t ec_bignum_to_felem(uint64_t a1, uint64_t a2, BIGNUM *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = BN_num_bytes((a1 + 320));
  if (v6 >= 0x43)
  {
    ec_bignum_to_felem_cold_1();
  }

  v7 = v6;
  v11 = -21846;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v8;
  v10[3] = v8;
  v10[0] = v8;
  v10[1] = v8;
  if (!BN_is_negative(a3) && BN_cmp(a3, (a1 + 320)) < 0 && BN_bn2bin_padded(v10, v7, a3))
  {
    return (*(*a1 + 112))(a1, a2, v10, v7);
  }

  ERR_put_error(15, 0, 101, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/felem.c.inc", 37);
  return 0;
}

BOOL ec_felem_to_bignum(uint64_t a1, BIGNUM *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = -21846;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  v10 = v4;
  *s = v4;
  v8 = v4;
  *len = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 104))(a1, s, len, a3);
  return BN_bin2bn(s, len[0], a2) != 0;
}

uint64_t x25519_pub_decode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 133);
    return 0;
  }

  else
  {
    v5 = *a3;
    v6 = a3[1];

    return x25519_set_pub_raw(a1, v5, v6);
  }
}

uint64_t x25519_pub_encode(uint64_t *a1, uint64_t a2)
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
  if (CBB_add_asn1(a1, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 0x20000010u) && CBB_add_asn1(v8, v7, 6u) && CBB_add_bytes(v7, &unk_1F1CB063C, 3uLL) && CBB_add_asn1(v9, v6, 3u) && CBB_add_u8(v6, 0) && CBB_add_bytes(v6, v3, 0x20uLL) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 153);
  return 0;
}

BOOL x25519_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *v2;
  v5 = v2[1];
  v6 = *v3;
  v7 = v3[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v3[2];
  v10 = v3[3];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t x25519_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (!*(a2 + 8) && CBS_get_asn1(a3, &v6, 4) && !*(a3 + 8))
  {
    return x25519_set_priv_raw(a1, v6, v7);
  }

  ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 175);
  return 0;
}

uint64_t x25519_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(v2 + 64))
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
    if (CBB_add_asn1(a1, v12, 0x20000010u) && CBB_add_asn1_uint64(v12, 0) && CBB_add_asn1(v12, v11, 0x20000010u) && CBB_add_asn1(v11, v10, 6u) && CBB_add_bytes(v10, &unk_1F1CB063C, 3uLL) && CBB_add_asn1(v12, v9, 4u) && CBB_add_asn1(v9, v8, 4u) && CBB_add_bytes(v8, (v2 + 32), 0x20uLL) && CBB_flush(a1))
    {
      return 1;
    }

    v6 = 105;
    v7 = 202;
  }

  else
  {
    v6 = 130;
    v7 = 185;
  }

  ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", v7);
  return 0;
}

uint64_t x25519_set_priv_raw(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  if (a3 != 32)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 33);
    return 0;
  }

  v5 = OPENSSL_malloc(0x41uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a2[1];
  v5[2] = *a2;
  v5[3] = v7;
  X25519_public_from_private(v5, v5 + 2);
  v8 = 1;
  *(v6 + 64) = 1;
  OPENSSL_free(*(a1 + 8));
  *(a1 + 8) = v6;
  return v8;
}

uint64_t x25519_set_pub_raw(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    result = OPENSSL_malloc(0x41uLL);
    if (result)
    {
      v6 = result;
      v7 = a2[1];
      *result = *a2;
      *(result + 16) = v7;
      *(result + 64) = 0;
      OPENSSL_free(*(a1 + 8));
      *(a1 + 8) = v6;
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 53);
    return 0;
  }

  return result;
}

uint64_t x25519_get_priv_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 64))
  {
    v4 = 130;
    v5 = 74;
    goto LABEL_6;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v4 = 100;
      v5 = 84;
LABEL_6:
      ERR_put_error(6, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", v5);
      return 0;
    }

    v7 = *(v3 + 48);
    *a2 = *(v3 + 32);
    a2[1] = v7;
  }

  *a3 = 32;
  return 1;
}

uint64_t x25519_get_pub_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 102);
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = v4[1];
    *a2 = *v4;
    a2[1] = v5;
  }

  *a3 = 32;
  return 1;
}

uint64_t x25519_get1_tls_encodedpoint(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = OPENSSL_memdup(v2, 0x20uLL);
    *a2 = v4;
    return 32 * (v4 != 0);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 120);
    return 0;
  }
}

uint64_t OPENSSL_sk_delete(uint64_t *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  if (*a1 <= a2)
  {
    return 0;
  }

  v4 = (a1[1] + 8 * a2);
  v5 = *v4;
  v6 = v3 - 1;
  v7 = 8 * (v3 + ~a2);
  if (v3 - 1 != a2 && v7 != 0)
  {
    memmove(v4, v4 + 1, v7);
    v6 = *a1 - 1;
  }

  *a1 = v6;
  return v5;
}

uint64_t OPENSSL_sk_pop(uint64_t *a1)
{
  if (a1 && *a1)
  {
    return OPENSSL_sk_delete(a1, *a1 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t OPENSSL_lh_retrieve(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), unsigned int (*a4)(void, void, uint64_t))
{
  next_ptr_and_hash = get_next_ptr_and_hash(a1, 0, a2, a3, a4);
  if (*next_ptr_and_hash)
  {
    return **next_ptr_and_hash;
  }

  else
  {
    return 0;
  }
}

void *get_next_ptr_and_hash(void *a1, unsigned int *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), unsigned int (*a5)(void, void, uint64_t))
{
  v9 = a4(a1[5], a3);
  if (a2)
  {
    *a2 = v9;
  }

  v10 = (a1[1] + 8 * (v9 % a1[2]));
  v11 = *v10;
  if (*v10 && a5(a1[4], *v11, a3))
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11 && a5(a1[4], *v11, a3));
    return v12 + 1;
  }

  return v10;
}

uint64_t OPENSSL_lh_retrieve_key(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int (*a4)(uint64_t, void))
{
  v4 = *(a1 + 8) + 8 * (a3 % *(a1 + 16));
  v5 = *v4;
  if (*v4)
  {
    if (a4(a2, *v5))
    {
      while (1)
      {
        v8 = v5;
        v5 = v5[1];
        if (!v5)
        {
          break;
        }

        if (!a4(a2, *v5))
        {
          v4 = (v8 + 1);
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*v4)
      {
        return **v4;
      }
    }
  }

  return 0;
}

uint64_t OPENSSL_lh_insert(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), unsigned int (*a5)(void, void, uint64_t))
{
  v12 = -1431655766;
  *a2 = 0;
  next_ptr_and_hash = get_next_ptr_and_hash(a1, &v12, a3, a4, a5);
  v9 = next_ptr_and_hash;
  if (*next_ptr_and_hash)
  {
    *a2 = **next_ptr_and_hash;
    **next_ptr_and_hash = a3;
  }

  else
  {
    result = OPENSSL_malloc(0x18uLL);
    if (!result)
    {
      return result;
    }

    *(result + 16) = v12;
    *result = a3;
    *(result + 8) = 0;
    *v9 = result;
    ++*a1;
    lh_maybe_resize(a1, v11);
  }

  return 1;
}

uint64_t OPENSSL_lh_delete(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), unsigned int (*a4)(void, void, uint64_t))
{
  next_ptr_and_hash = get_next_ptr_and_hash(a1, 0, a2, a3, a4);
  v6 = *next_ptr_and_hash;
  if (!*next_ptr_and_hash)
  {
    return 0;
  }

  *next_ptr_and_hash = v6[1];
  v7 = *v6;
  OPENSSL_free(v6);
  --*a1;
  lh_maybe_resize(a1, v8);
  return v7;
}

void lh_rebucket(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    v4 = OPENSSL_zalloc(8 * a2);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = *(*(a1 + 8) + 8 * i);
          if (v8)
          {
            do
            {
              v9 = *(v8 + 16) % a2;
              v10 = *(v8 + 8);
              *(v8 + 8) = v4[v9];
              v4[v9] = v8;
              v8 = v10;
            }

            while (v10);
          }
        }
      }

      OPENSSL_free(*(a1 + 8));
      *(a1 + 8) = v5;
      *(a1 + 16) = a2;
    }
  }
}

uint64_t get_error_values(int a1, int a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  state = err_get_state();
  if (!state)
  {
    return 0;
  }

  v13 = state;
  v14 = *(state + 97);
  v15 = *(state + 96);
  if (v14 == v15)
  {
    return 0;
  }

  if (a2)
  {
    if (a1)
    {
      get_error_values_cold_1();
    }
  }

  else
  {
    v15 = (v14 + 1) & 0xF;
  }

  v17 = &state[3 * v15];
  v16 = *(v17 + 4);
  if (a3 && a4)
  {
    v18 = *v17;
    if (*v17)
    {
      *a3 = v18;
      LODWORD(v18) = *(v17 + 10);
    }

    else
    {
      *a3 = "NA";
    }

    *a4 = v18;
  }

  if (!a5)
  {
    goto LABEL_24;
  }

  v19 = v17[1];
  if (!v19)
  {
    *a5 = &unk_1A9098A9F;
    if (a6)
    {
      *a6 = 0;
    }

LABEL_24:
    if (!a1)
    {
      return v16;
    }

    goto LABEL_25;
  }

  *a5 = v19;
  if (a6)
  {
    *a6 = 3;
  }

  if (a1)
  {
    if (v17[1])
    {
      free(state[49]);
      v13[49] = v17[1];
    }

    v17[1] = 0;
LABEL_25:
    if (a2)
    {
      get_error_values_cold_2();
    }

    free(v17[1]);
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    *(v13 + 97) = v15;
  }

  return v16;
}

unint64_t ERR_peek_last_error(void)
{
  result = err_get_state();
  if (result)
  {
    v1 = *(result + 384);
    if (*(result + 388) == v1)
    {
      return 0;
    }

    else
    {
      return *(result + 24 * v1 + 16);
    }
  }

  return result;
}

const char *__cdecl ERR_reason_error_string(unint64_t e)
{
  result = err_reason_error_string(e, 0);
  if (!result)
  {
    return "unknown error";
  }

  return result;
}

char *err_reason_error_string(unsigned int a1, int a2)
{
  v5 = HIBYTE(a1);
  v6 = a1 & 0xFFF;
  if (v5 != 2)
  {
    if (v6 > 0x21)
    {
      if (v6 > 0x63)
      {
        v7 = 0;
        if (!(a1 >> 30) && v6 <= 0x7FF)
        {
          v15 = v2;
          v16 = v3;
          v14 = (v6 << 15) | (v5 << 26);
          v13 = bsearch(&v14, &kOpenSSLReasonValues, 0x2F4uLL, 4uLL, err_string_cmp);
          if (v13)
          {
            return &kOpenSSLReasonStringData[*v13 & 0x7FFF];
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        if (v6 <= 66)
        {
          v7 = "MALLOC_FAILURE";
          if (a2)
          {
            v10 = "SHOULD_NOT_HAVE_BEEN_CALLED";
          }

          else
          {
            v7 = "malloc failure";
            v10 = "function should not have been called";
          }

          if (v6 != 66)
          {
            v10 = 0;
          }

          v12 = v6 == 65;
        }

        else
        {
          v7 = "PASSED_NULL_PARAMETER";
          if (!a2)
          {
            v7 = "passed a null parameter";
          }

          v10 = "INTERNAL_ERROR";
          if (!a2)
          {
            v10 = "internal error";
          }

          v11 = "OVERFLOW";
          if (!a2)
          {
            v11 = "overflow";
          }

          if (v6 != 69)
          {
            v11 = 0;
          }

          if (v6 != 68)
          {
            v10 = v11;
          }

          v12 = v6 == 67;
        }

        if (!v12)
        {
          return v10;
        }
      }
    }

    else
    {
      v9 = &(&kLibraryNames)[3 * v6];
      if (a2)
      {
        v9 += 2;
      }

      return *v9;
    }

    return v7;
  }

  v7 = 0;
  if (a2 || v6 > 0x7E)
  {
    return v7;
  }

  return strerror(v6);
}

void ERR_error_string_n(unint64_t e, char *buf, size_t len)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!len)
  {
    return;
  }

  v5 = e;
  v6 = BYTE3(e);
  if (e >> 25 <= 0x10)
  {
    v7 = (&kLibraryNames)[3 * v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = err_reason_error_string(e, 0);
  v9 = v8;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v10;
  v19 = v10;
  *v16 = v10;
  v17 = v10;
  if (!v7)
  {
    v7 = __str;
    snprintf(__str, 0x20uLL, "lib(%u)", v6);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_17:
    v9 = v16;
    snprintf(v16, 0x20uLL, "reason(%u)", v5 & 0xFFF);
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_8:
  v11 = snprintf(buf, len, "error:%08x:%s:OPENSSL_internal:%s", v5, v7, v9);
  if (len >= 5 && (v11 & 0x80000000) == 0 && v11 >= len)
  {
    v12 = &buf[len - 5];
    v13 = 4;
    v14 = buf;
    while (1)
    {
      v15 = strchr(v14, 58);
      if (!v15 || v15 > v12)
      {
        break;
      }

      v14 = v15 + 1;
      ++v12;
      if (!--v13)
      {
        return;
      }
    }

    memset(v12, 58, v13);
  }
}

void ERR_print_errors_cb(int (__cdecl *cb)(const char *, size_t, void *), void *u)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buf[5] = v4;
  buf[6] = v4;
  buf[3] = v4;
  buf[4] = v4;
  buf[1] = v4;
  buf[2] = v4;
  buf[0] = v4;
  memset(__b, 170, sizeof(__b));
  memset(v9, 170, sizeof(v9));
  state = err_get_state();
  do
  {
    error_values = get_error_values(1, 0, &v9[2], v9 + 1, &v9[1], v9);
    if (!error_values)
    {
      break;
    }

    ERR_error_string_n(error_values, buf, 0x78uLL);
    v7 = (v9[0] & 1) != 0 ? v9[1] : &unk_1A9098A9F;
    snprintf(__b, 0x400uLL, "%lu:%s:%s:%d:%s\n", state, buf, v9[2], HIDWORD(v9[0]), v7);
    v8 = strlen(__b);
  }

  while ((cb)(__b, v8, u) > 0);
}

BOOL print_errors_to_file(const char *a1, uint64_t a2, FILE *a3)
{
  if (a1[a2])
  {
    print_errors_to_file_cold_1();
  }

  return fputs(a1, a3) >= 0;
}

void ERR_add_error_data(int num, ...)
{
  va_start(va, num);
  va_copy(v10, va);
  va_copy(v11, va);
  v2 = num;
  v3 = 0;
  if (!num)
  {
    goto LABEL_8;
  }

  v4 = num;
  do
  {
    v5 = va_arg(v10, const char *);
    if (v5)
    {
      v6 = strlen(v5);
      if (__CFADD__(v3, v6))
      {
        return;
      }

      v3 += v6;
    }

    --v4;
  }

  while (v4);
  if (v3 != -1)
  {
LABEL_8:
    v7 = malloc_type_malloc(v3 + 1, 0xAA451E0uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = 0;
      if (num)
      {
        do
        {
          v9 = v11;
          v11 += 8;
          if (*v9)
          {
            if (OPENSSL_strlcat(v8, *v9, v3 + 1) > v3)
            {
              ERR_add_error_data_cold_1();
            }
          }

          --v2;
        }

        while (v2);
      }

      err_set_error_data(v8);
    }
  }
}

void ERR_add_error_dataf(const char *a1, ...)
{
  va_start(va, a1);
  v1 = 0;
  if (OPENSSL_vasprintf_internal(&v1, a1, va, 1) != -1)
  {
    err_set_error_data(v1);
  }
}

void err_set_error_data(void *a1)
{
  state = err_get_state();
  if (state && (v3 = *(state + 96), v3 != *(state + 97)))
  {
    v4 = &state[3 * v3];
    free(v4[1]);
    v4[1] = a1;
  }

  else
  {

    free(a1);
  }
}

void *strdup_libc_malloc(const char *a1)
{
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 1, 0xB2A0D864uLL);
  if (result)
  {

    return memcpy(result, a1, v2 + 1);
  }

  return result;
}

void ERR_SAVE_STATE_free(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = *a1 + v2;
        free(*(v4 + 8));
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        ++v3;
        v2 += 24;
      }

      while (v3 < *(a1 + 8));
    }

    free(*a1);

    free(a1);
  }
}

void *ERR_save_state()
{
  state = err_get_state();
  if (!state)
  {
    return 0;
  }

  v1 = state;
  if (*(state + 96) == *(state + 97))
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (!v2)
  {
    return v2;
  }

  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  if (v4 >= v5)
  {
    v6 = *(v1 + 96);
  }

  else
  {
    v6 = v4 + 16;
  }

  v7 = v6 - v5;
  if (v7 >= 0x10)
  {
    ERR_save_state_cold_1();
  }

  v8 = malloc_type_malloc(24 * v7, 0x10500400B811B97uLL);
  *v2 = v8;
  if (!v8)
  {
    free(v2);
    return 0;
  }

  if (v6 == v5)
  {
    v2[1] = v7;
  }

  else
  {
    bzero(v8, 24 * v7);
    v9 = 0;
    v2[1] = v7;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 - v5;
    }

    v11 = 24 * v10;
    v12 = 1;
    do
    {
      err_copy(*v2 + v9, &v1[3 * ((v12 + *(v1 + 97)) & 0xF)]);
      v9 += 24;
      ++v12;
    }

    while (v11 != v9);
  }

  return v2;
}

const char *err_copy(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *(a2 + 8);
  *a1 = *a2;
  if (result)
  {
    result = strdup_libc_malloc(result);
    *(a1 + 8) = result;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

void ERR_restore_state(void *a1)
{
  if (a1 && (v2 = a1[1]) != 0)
  {
    if (v2 >= 0x10)
    {
      abort();
    }

    state = err_get_state();
    if (state)
    {
      v4 = state;
      if (a1[1])
      {
        v5 = 0;
        v6 = 0;
        do
        {
          err_copy(&v4[v5], *a1 + v5 * 8);
          ++v6;
          v7 = a1[1];
          v5 += 3;
        }

        while (v6 < v7);
        v8 = v7 - 1;
      }

      else
      {
        v8 = -1;
      }

      *(v4 + 96) = v8;
      *(v4 + 97) = 15;
    }
  }

  else
  {

    ERR_clear_error();
  }
}

uint64_t err_string_cmp(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 >> 15;
  v3 = v2 >= *a2 >> 15;
  v4 = v2 > *a2 >> 15;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

boringssl_concrete_boringssl_context_state *boringssl_context_state_create(ssl_ctx_st *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(boringssl_concrete_boringssl_context_state);
  v3 = v2;
  if (v2)
  {
    v2->cached_content_type = 2;
    v2->ssl_ctx = a1;
    SSL_CTX_up_ref(a1);
    v4 = v3;
  }

  else
  {
    v5 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_state_create_cold_1(v5);
    }
  }

  return v3;
}

uint64_t boringssl_context_state_get_ssl_ctx(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

BOOL boringssl_context_state_is_context_state(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 2;
  }

  return result;
}

void BN_BLINDING_free(BN_BLINDING *b)
{
  if (b)
  {
    BN_free(*b);
    BN_free(*(b + 1));

    OPENSSL_free(b);
  }
}

int BIO_printf(BIO *bio, const char *format, ...)
{
  va_start(va, format);
  v27 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v4;
  v26 = v4;
  v23 = v4;
  v24 = v4;
  v21 = v4;
  v22 = v4;
  v19 = v4;
  v20 = v4;
  v17 = v4;
  v18 = v4;
  v15 = v4;
  v16 = v4;
  v13 = v4;
  v14 = v4;
  *__str = v4;
  v12 = v4;
  v5 = vsnprintf(__str, 0x100uLL, format, va);
  if ((v5 & 0x80000000) != 0)
  {
    return -1;
  }

  v6 = v5;
  if (v5 <= 0xFF)
  {
    return BIO_write(bio, __str, v5);
  }

  v8 = OPENSSL_malloc(v5 + 1);
  if (!v8)
  {
    return -1;
  }

  v9 = v8;
  if (vsnprintf(v8, (v6 + 1), format, va) != v6)
  {
    BIO_printf_cold_1();
  }

  v7 = BIO_write(bio, v9, v6);
  OPENSSL_free(v9);
  return v7;
}

uint64_t CBS_asn1_ber_to_der(uint64_t a1, void *a2, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = v6;
  v12[2] = v6;
  v12[0] = v6;
  v11 = -1431655766;
  result = cbs_find_ber(a1, &v11, 0);
  if (result)
  {
    if (v11)
    {
      v10 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBB_init(v12, *(a1 + 8)) || !cbs_convert_ber(a1, v12, 0, 0, 0) || !CBB_finish(v12, a3, &v10))
      {
        CBB_cleanup(v12, v8);
        return 0;
      }

      v9 = v10;
      *a2 = *a3;
      a2[1] = v9;
    }

    else
    {
      result = CBS_get_any_asn1_element(a1, a2, 0, 0);
      if (!result)
      {
        return result;
      }

      *a3 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t cbs_find_ber(__int128 *a1, char *a2, unsigned int a3)
{
  if (a3 <= 0x80)
  {
    v11 = *a1;
    *a2 = 0;
    v3 = 1;
    if (!*(&v11 + 1))
    {
      return v3;
    }

    while (1)
    {
      memset(v10, 170, sizeof(v10));
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v8 = -1431655766;
      if (!CBS_get_any_ber_asn1_element(&v11, &v10[1], v10, &v9, a2, &v8))
      {
        break;
      }

      if (*a2)
      {
        return 1;
      }

      if ((v10[0] & 0x20000000) != 0)
      {
        if ((v10[0] & 0xDFFFFFFF) <= 0x1E && ((1 << SLOBYTE(v10[0])) & 0x5E7C1010) != 0)
        {
          v3 = 1;
          *a2 = 1;
          return v3;
        }

        if (!CBS_skip(&v10[1], v9) || !cbs_find_ber(&v10[1], a2, a3 + 1))
        {
          return 0;
        }

        if (*a2)
        {
          return 1;
        }
      }

      if (!*(&v11 + 1))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t cbs_convert_ber(__int128 *a1, uint64_t *a2, uint64_t a3, int a4, unsigned int a5)
{
  if ((a3 & 0x20000000) != 0)
  {
    cbs_convert_ber_cold_1();
  }

  if (a5 > 0x80)
  {
    return 0;
  }

  while (1)
  {
    v11 = *(a1 + 1);
    if (!v11)
    {
      return a4 == 0;
    }

    if (a4 && v11 != 1 && !**a1 && !*(*a1 + 1) && CBS_skip(a1, 2uLL))
    {
      return 1;
    }

    memset(v25, 170, sizeof(v25));
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v23 = -1431655766;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[1] = v12;
    v22[2] = v12;
    v22[0] = v12;
    if (!CBS_get_any_ber_asn1_element(a1, &v25[1], v25, &v24, 0, &v23))
    {
      return 0;
    }

    v13 = v25[0];
    if (a3)
    {
      v14 = a3;
      v15 = a2;
      if ((v25[0] & 0xDFFFFFFF) != a3)
      {
        return 0;
      }
    }

    else
    {
      if (v25[0] & 0x20000000) != 0 && (v16 = (v25[0] & 0xDFFFFFFF) - 4, v16 <= 0x1A) && ((0x5E7C101u >> (LOBYTE(v25[0]) - 4)))
      {
        v14 = dword_1A90AFB60[v16];
        v13 = dword_1A90AFB60[v16];
      }

      else
      {
        v14 = 0;
      }

      v15 = v22;
      if (!CBB_add_asn1(a2, v22, v13))
      {
        return 0;
      }
    }

    if (v23)
    {
      v17 = a5 + 1;
      v18 = a1;
      v19 = v15;
      v20 = v14;
      v21 = 1;
      goto LABEL_27;
    }

    if (!CBS_skip(&v25[1], v24))
    {
      return 0;
    }

    if ((v25[0] & 0x20000000) != 0)
    {
      v18 = &v25[1];
      v17 = a5 + 1;
      v19 = v15;
      v20 = v14;
      v21 = 0;
LABEL_27:
      if (!cbs_convert_ber(v18, v19, v20, v21, v17))
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (!CBB_add_bytes(v15, *&v25[1], *&v25[3]))
    {
      return 0;
    }

LABEL_28:
    result = CBB_flush(a2);
    if (!result)
    {
      return result;
    }
  }
}

uint64_t CBS_get_asn1_implicit_string(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x20000000) != 0)
  {
    CBS_get_asn1_implicit_string_cold_1();
  }

  if ((a5 & 0x20000000) != 0)
  {
    CBS_get_asn1_implicit_string_cold_2();
  }

  if (a5 > 0x1E || ((1 << a5) & 0x5E7C1010) == 0)
  {
    CBS_get_asn1_implicit_string_cold_3();
  }

  if (CBS_peek_asn1_tag(a1, a4))
  {
    *a3 = 0;

    return CBS_get_asn1(a1, a2, a4);
  }

  else
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[1] = v11;
    v20[2] = v11;
    v20[0] = v11;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_init(v20, *(a1 + 8)) && CBS_get_asn1(a1, &v19, a4 | 0x20000000))
    {
      if (*(&v19 + 1))
      {
        while (1)
        {
          v17 = 0xAAAAAAAAAAAAAAAALL;
          v18 = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_asn1(&v19, &v17, a5) || !CBB_add_bytes(v20, v17, v18))
          {
            break;
          }

          if (!*(&v19 + 1))
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        v15 = 0xAAAAAAAAAAAAAAAALL;
        v16 = 0xAAAAAAAAAAAAAAAALL;
        if (CBB_finish(v20, &v16, &v15))
        {
          v14 = v15;
          v13 = v16;
          *a2 = v16;
          a2[1] = v14;
          *a3 = v13;
          return 1;
        }
      }
    }

    CBB_cleanup(v20, v12);
    return 0;
  }
}

uint64_t CBB_init_fixed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) &= 0xFCu;
  return 1;
}

void *CBB_data(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    CBB_data_cold_1();
  }

  v2 = *(a1 + 16);
  if (*(a1 + 8))
  {
    return (*v2 + *(a1 + 24) + *(a1 + 32));
  }

  return v2;
}

BOOL add_base128_integer(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  if (a2)
  {
    v5 = a2;
    do
    {
      ++v4;
      v6 = v5 > 0x7F;
      v5 >>= 7;
    }

    while (v6);
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 - 1;
  v9 = 7 * v7 - 7;
  do
  {
    v10 = v8;
    if (v8 >= v7)
    {
      break;
    }

    v11 = cbb_add_u(a1, (a2 >> v9) & 0x7F | ((v8 != 0) << 7), 1uLL);
    v8 = v10 - 1;
    v9 -= 7;
  }

  while (v11);
  return v10 >= v7;
}

uint64_t CBB_reserve(uint64_t a1, void *a2, uint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v7 = (a1 + 16);
    if (*(a1 + 8))
    {
      v7 = *v7;
    }

    return cbb_buffer_reserve(v7, a2, a3) != 0;
  }

  return result;
}

uint64_t *CBB_discard_child(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result + 2;
    if (*(result + 8))
    {
      v3 = *v3;
    }

    if (!*(v2 + 8))
    {
      CBB_discard_child_cold_1();
    }

    v3[1] = *(v2 + 24);
    *(v2 + 16) = 0;
    *result = 0;
  }

  return result;
}

uint64_t CBS_skip(void *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  *a1 += a2;
  a1[1] = v4;
  return 1;
}

uint64_t CBS_stow(uint64_t a1, uint64_t *a2, void *a3)
{
  OPENSSL_free(*a2);
  *a2 = 0;
  *a3 = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    result = OPENSSL_memdup(*a1, v6);
    *a2 = result;
    if (!result)
    {
      return result;
    }

    *a3 = *(a1 + 8);
  }

  return 1;
}

BOOL CBS_strdup(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    OPENSSL_free(*a2);
  }

  v4 = OPENSSL_strndup(*a1, a1[1]);
  *a2 = v4;
  return v4 != 0;
}

uint64_t CBS_copy_bytes(uint64_t a1, void *__dst, size_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - a3;
  if (v3 < a3)
  {
    return 0;
  }

  v6 = *a1;
  *a1 += a3;
  *(a1 + 8) = v4;
  if (a3)
  {
    memcpy(__dst, v6, a3);
  }

  return 1;
}

uint64_t CBS_get_any_ber_asn1_element(__int128 *a1, void *a2, int *a3, unint64_t *a4, char *a5, _DWORD *a6)
{
  if (!a5)
  {
    a5 = &v7;
  }

  return cbs_get_any_asn1_element(a1, a2, a3, a4, a5, a6, 1);
}

uint64_t aes_nohw_set_encrypt_key(_OWORD *a1, int a2, uint64_t a3)
{
  v119 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 256:
      *(a3 + 240) = 14;
      *v118 = *a1;
      v74 = (v118[0] ^ (v118[0] >> 4)) & 0xF000F000F000F0;
      v75 = v118[0] ^ (16 * v74);
      v76 = v75 ^ v74;
      v77 = (v75 ^ (v76 >> 8)) & 0xFF000000FF00;
      v78 = v76 ^ (v77 << 8);
      v79 = v78 ^ v77;
      v80 = ((v79 >> 16) ^ v78) & 0xFFFF0000;
      v81 = (v118[1] ^ (v118[1] >> 4)) & 0xF000F000F000F0;
      v82 = v118[1] ^ (16 * v81);
      v83 = v82 ^ v81;
      v84 = (v82 ^ (v83 >> 8)) & 0xFF000000FF00;
      v85 = v83 ^ (v84 << 8);
      v86 = v85 ^ v84;
      v87 = ((v86 >> 16) ^ v85) & 0xFFFF0000;
      v118[0] = v80 ^ v79 | ((v87 ^ v86) << 32);
      v118[1] = (v86 & 0xFFFFFFFF00000000 ^ (v87 << 16)) & 0xFFFFFFFF00000000 | ((v79 ^ (v80 << 16)) >> 32);
      *a3 = *v118;
      v117 = a1[1];
      v88 = (v117 ^ (v117 >> 4)) & 0xF000F000F000F0;
      v89 = v117 ^ (16 * v88);
      v90 = v89 ^ v88;
      v91 = (v89 ^ (v90 >> 8)) & 0xFF000000FF00;
      v92 = v90 ^ (v91 << 8);
      v93 = v92 ^ v91;
      v94 = ((v93 >> 16) ^ v92) & 0xFFFF0000;
      v95 = (*(&v117 + 1) ^ (*(&v117 + 1) >> 4)) & 0xF000F000F000F0;
      v96 = *(&v117 + 1) ^ (16 * v95);
      v97 = v96 ^ v95;
      v98 = (v96 ^ (v97 >> 8)) & 0xFF000000FF00;
      v99 = v97 ^ (v98 << 8);
      v100 = v99 ^ v98;
      v101 = ((v100 >> 16) ^ v99) & 0xFFFF0000;
      *&v117 = v94 ^ v93 | ((v101 ^ v100) << 32);
      *(&v117 + 1) = (v100 & 0xFFFFFFFF00000000 ^ (v101 << 16)) & 0xFFFFFFFF00000000 | ((v93 ^ (v94 << 16)) >> 32);
      *(a3 + 16) = v117;
      for (i = 2; ; i += 2)
      {
        v115 = 0xAAAAAAAAAAAAAAAALL;
        v116 = 0xAAAAAAAAAAAAAAAALL;
        v103 = &v115;
        aes_nohw_sub_block(&v115, &v117);
        v104 = 0;
        v105 = *(&aes_nohw_rcon + (i >> 1) - 1);
        v106 = v118;
        v107 = 1;
        do
        {
          v108 = v107;
          v109 = *v106 ^ (v105 >> v104) & 0xF ^ ((*v103 >> 36) & 0xF000 | (*v103 >> 52));
          *v106 = (v109 << 16) ^ (v109 << 32) ^ (v109 << 48) ^ v109;
          v104 = 4;
          v103 = &v116;
          v106 = &v118[1];
          v107 = 0;
        }

        while ((v108 & 1) != 0);
        *(a3 + 16 * i) = *v118;
        if (i == 14)
        {
          break;
        }

        v110 = &v115;
        aes_nohw_sub_block(&v115, v118);
        v111 = &v117;
        v112 = 1;
        do
        {
          v113 = v112;
          v114 = *(v110 + 3) ^ *v111;
          *v111 = (v114 << 16) ^ (v114 << 32) ^ (v114 << 48) ^ v114;
          v110 = &v116;
          v111 = &v117 + 1;
          v112 = 0;
        }

        while ((v113 & 1) != 0);
        *(a3 + 16 * i + 16) = v117;
      }

      return 0;
    case 192:
      v26 = 0;
      *(a3 + 240) = 12;
      *v118 = *a1;
      v27 = (v118[0] ^ (v118[0] >> 4)) & 0xF000F000F000F0;
      v28 = v118[0] ^ (16 * v27);
      v29 = v28 ^ v27;
      v30 = (v28 ^ (v29 >> 8)) & 0xFF000000FF00;
      v31 = v29 ^ (v30 << 8);
      v32 = v31 ^ v30;
      v33 = ((v32 >> 16) ^ v31) & 0xFFFF0000;
      v34 = (v118[1] ^ (v118[1] >> 4)) & 0xF000F000F000F0;
      v35 = v118[1] ^ (16 * v34);
      v36 = v35 ^ v34;
      v37 = (v35 ^ (v36 >> 8)) & 0xFF000000FF00;
      v38 = v36 ^ (v37 << 8);
      v39 = v38 ^ v37;
      v40 = ((v39 >> 16) ^ v38) & 0xFFFF0000;
      v118[0] = v33 ^ v32 | ((v40 ^ v39) << 32);
      v118[1] = (v39 & 0xFFFFFFFF00000000 ^ (v40 << 16)) & 0xFFFFFFFF00000000 | ((v32 ^ (v33 << 16)) >> 32);
      *a3 = *v118;
      v41 = *(a1 + 2);
      v42 = (v41 ^ (v41 >> 4)) & 0xF000F000F000F0;
      v43 = v41 ^ (16 * v42);
      v44 = v43 ^ v42;
      v45 = (v43 ^ (v44 >> 8)) & 0xFF000000FF00;
      v46 = v44 ^ (v45 << 8);
      v47 = v46 ^ v45;
      v48 = ((v47 >> 16) ^ v46) & 0xFFFF0000;
      *&v117 = v48 ^ v47;
      *(&v117 + 1) = (v47 ^ (v48 << 16)) >> 32;
      v49 = &v117;
      v50 = v118;
      do
      {
        v51 = v50;
        v115 = 0xAAAAAAAAAAAAAAAALL;
        v116 = 0xAAAAAAAAAAAAAAAALL;
        v52 = &v115;
        aes_nohw_sub_block(&v115, v49);
        v53 = 0;
        v54 = *(&aes_nohw_rcon + 2 * v26);
        v55 = 1;
        do
        {
          v56 = v49[v53];
          v57 = v51[v53];
          v58 = v55;
          v59 = v56 | ((v57 ^ (v54 >> (4 * v53)) & 0xF) << 32);
          v49[v53] = v59;
          v60 = v59 ^ (((*v52 >> 4) & 0xFFF0000 | (((*v52 >> 16) & 0xF) << 28)) << 16);
          v61 = v60 ^ (HIDWORD(v60) << 48);
          v49[v53] = v61;
          *(&v62 + 1) = v56;
          *&v62 = v57;
          v51[v53] = (((v62 >> 32) ^ HIWORD(v61)) << 16) ^ (((v62 >> 32) ^ HIWORD(v61)) << 32) ^ (((v62 >> 32) ^ HIWORD(v61)) << 48) ^ (v62 >> 32) ^ HIWORD(v61);
          v52 = &v116;
          v53 = 1;
          v55 = 0;
        }

        while ((v58 & 1) != 0);
        v63 = (a3 + 48 * v26);
        v63[1] = *v49;
        v63[2] = *v51;
        v64 = &v115;
        aes_nohw_sub_block(&v115, v51);
        v65 = 0;
        v66 = *(&aes_nohw_rcon + 2 * v26 + 1);
        v67 = 1;
        do
        {
          v68 = v67;
          *(&v69 + 1) = v51[v65];
          *&v69 = v49[v65];
          v70 = (v69 >> 32) ^ (v66 >> (4 * v65)) & 0xF;
          v49[v65] = v70;
          v71 = ((*v64 >> 36) & 0xF000 | (*v64 >> 52)) ^ v70;
          v72 = (v71 << 16) ^ (v71 << 32) ^ (v71 << 48) ^ v71;
          v49[v65] = v72;
          v51[v65] = ((HIWORD(v72) ^ WORD6(v69)) << 16) ^ HIWORD(v72) ^ HIDWORD(*(&v69 + 1));
          v64 = &v116;
          v65 = 1;
          v67 = 0;
        }

        while ((v68 & 1) != 0);
        v63[3] = *v49;
        ++v26;
        v50 = v49;
        v49 = v51;
      }

      while (v26 != 4);
      return 0;
    case 128:
      *(a3 + 240) = 10;
      *v118 = *a1;
      v4 = (v118[0] ^ (v118[0] >> 4)) & 0xF000F000F000F0;
      v5 = v118[0] ^ (16 * v4);
      v6 = v5 ^ v4;
      v7 = (v5 ^ (v6 >> 8)) & 0xFF000000FF00;
      v8 = v6 ^ (v7 << 8);
      v9 = v8 ^ v7;
      v10 = ((v9 >> 16) ^ v8) & 0xFFFF0000;
      v11 = (v118[1] ^ (v118[1] >> 4)) & 0xF000F000F000F0;
      v12 = v118[1] ^ (16 * v11);
      v13 = v12 ^ v11;
      v14 = (v12 ^ (v13 >> 8)) & 0xFF000000FF00;
      v15 = v13 ^ (v14 << 8);
      v16 = v15 ^ v14;
      v17 = ((v16 >> 16) ^ v15) & 0xFFFF0000;
      v118[0] = v10 ^ v9 | ((v17 ^ v16) << 32);
      v118[1] = (v16 & 0xFFFFFFFF00000000 ^ (v17 << 16)) & 0xFFFFFFFF00000000 | ((v9 ^ (v10 << 16)) >> 32);
      *a3 = *v118;
      v18 = 1u;
      do
      {
        *&v117 = 0xAAAAAAAAAAAAAAAALL;
        *(&v117 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v19 = &v117;
        v20 = v118;
        aes_nohw_sub_block(&v117, v118);
        v21 = 0;
        v22 = *(&aes_nohw_rcon + v18 - 1);
        v23 = 1;
        do
        {
          v24 = v23;
          v25 = *v20 ^ (v22 >> v21) & 0xF ^ ((*v19 >> 36) & 0xF000 | (*v19 >> 52));
          *v20 = (v25 << 16) ^ (v25 << 32) ^ (v25 << 48) ^ v25;
          v21 = 4;
          v19 = (&v117 + 8);
          v20 = &v118[1];
          v23 = 0;
        }

        while ((v24 & 1) != 0);
        *(a3 + 16 * v18++) = *v118;
      }

      while (v18 != 11);
      return 0;
  }

  return 1;
}

unint64_t *aes_nohw_encrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(__b, 170, sizeof(__b));
  aes_nohw_expand_round_keys(__b, a3);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[2] = v6;
  v8[3] = v6;
  v8[0] = v6;
  v8[1] = v6;
  aes_nohw_to_batch(v8, a1, 1uLL);
  aes_nohw_encrypt_batch(__b, *(a3 + 240), v8);
  return aes_nohw_from_batch(a2, 1uLL, v8);
}

unint64_t *aes_nohw_expand_round_keys(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 32);
  do
  {
    v6 = (a2 + 16 * v4);
    v7 = v5;
    v8 = 4;
    do
    {
      v9 = v6[1];
      *(v7 - 4) = *v6;
      *v7++ = v9;
      --v8;
    }

    while (v8);
    result = aes_nohw_transpose((a1 + (v4 << 6)));
    v5 += 8;
  }

  while (v4++ < *(a2 + 240));
  return result;
}

unint64_t *aes_nohw_to_batch(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (a3 > 4)
  {
    aes_nohw_to_batch_cold_1();
  }

  if (a3)
  {
    v3 = (a2 + 8);
    v4 = a1 + 4;
    do
    {
      v5 = *(v3 - 1);
      v6 = (v5 ^ (v5 >> 4)) & 0xF000F000F000F0;
      v7 = v5 ^ (16 * v6);
      v8 = v7 ^ v6;
      v9 = (v7 ^ (v8 >> 8)) & 0xFF000000FF00;
      v10 = v8 ^ (v9 << 8);
      v11 = v10 ^ v9;
      v12 = ((v11 >> 16) ^ v10) & 0xFFFF0000;
      v13 = (*v3 ^ (*v3 >> 4)) & 0xF000F000F000F0;
      v14 = *v3 ^ (16 * v13);
      v15 = v14 ^ v13;
      v16 = (v14 ^ (v15 >> 8)) & 0xFF000000FF00;
      v17 = v15 ^ (v16 << 8);
      v18 = v17 ^ v16;
      v19 = ((v18 >> 16) ^ v17) & 0xFFFF0000;
      *(v4 - 4) = v12 ^ v11 | ((v19 ^ v18) << 32);
      *v4++ = (v18 & 0xFFFFFFFF00000000 ^ (v19 << 16)) & 0xFFFFFFFF00000000 | ((v11 ^ (v12 << 16)) >> 32);
      v3 += 2;
      --a3;
    }

    while (a3);
  }

  return aes_nohw_transpose(a1);
}

uint64_t *aes_nohw_encrypt_batch(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  for (i = 0; i != 8; ++i)
  {
    a3[i] ^= *(a1 + i * 8);
  }

  if (a2 >= 2)
  {
    v7 = a1 + 64;
    for (j = 1; j != a2; ++j)
    {
      aes_nohw_sub_bytes(a3);
      v9 = 0;
      v10.i64[0] = 0xF000F000F000FLL;
      v10.i64[1] = 0xF000F000F000FLL;
      v11.i64[0] = 0xF000F000F000F0;
      v11.i64[1] = 0xF000F000F000F0;
      v12.i64[0] = 0xF000F000F000F00;
      v12.i64[1] = 0xF000F000F000F00;
      v13.i64[0] = 0xF000F000F000F000;
      v13.i64[1] = 0xF000F000F000F000;
      do
      {
        v14 = *&a3[v9];
        v15 = vandq_s8(v14, v10);
        v16 = vandq_s8(v14, v11);
        v17 = vandq_s8(v14, v12);
        v18 = vandq_s8(v14, v13);
        *&a3[v9] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v17, 0x20uLL), v17, 0x20uLL), v15), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v18, 0x10uLL), v18, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v16, 0x30uLL), v16, 0x10uLL)));
        v9 += 2;
      }

      while (v9 != 8);
      aes_nohw_mix_columns(a3);
      for (k = 0; k != 8; ++k)
      {
        a3[k] ^= *(v7 + k * 8);
      }

      v7 += 64;
    }
  }

  result = aes_nohw_sub_bytes(a3);
  v21 = 0;
  v22.i64[0] = 0xF000F000F000FLL;
  v22.i64[1] = 0xF000F000F000FLL;
  v23.i64[0] = 0xF000F000F000F0;
  v23.i64[1] = 0xF000F000F000F0;
  v24.i64[0] = 0xF000F000F000F00;
  v24.i64[1] = 0xF000F000F000F00;
  v25.i64[0] = 0xF000F000F000F000;
  v25.i64[1] = 0xF000F000F000F000;
  do
  {
    v26 = *&a3[v21];
    v27 = vandq_s8(v26, v22);
    v28 = vandq_s8(v26, v23);
    v29 = vandq_s8(v26, v24);
    v30 = vandq_s8(v26, v25);
    *&a3[v21] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v29, 0x20uLL), v29, 0x20uLL), v27), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v30, 0x10uLL), v30, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v28, 0x30uLL), v28, 0x10uLL)));
    v21 += 2;
  }

  while (v21 != 8);
  for (m = 0; m != 8; ++m)
  {
    a3[m] ^= *(a1 + (a2 << 6) + m * 8);
  }

  return result;
}

unint64_t *aes_nohw_from_batch(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = a3[1];
  v21[0] = *a3;
  v21[1] = v5;
  v6 = a3[3];
  v22[0] = a3[2];
  v22[1] = v6;
  result = aes_nohw_transpose(v21);
  if (a2 > 4)
  {
    aes_nohw_from_batch_cold_1();
  }

  if (a2)
  {
    v8 = (a1 + 8);
    v9 = v22;
    do
    {
      v10 = *(v9 - 4);
      v11 = *v9++;
      v12 = (v10 ^ (v11 << 16)) & 0xFFFF0000;
      v13 = (v10 | (v11 << 32)) ^ (v12 << 16);
      v14 = v13 ^ v12;
      v15 = (v13 ^ (v14 >> 8)) & 0xFF000000FF00;
      v16 = v11 & 0xFFFFFFFF00000000 | HIDWORD(v10);
      v17 = ((v11 >> 16) ^ HIDWORD(v10)) & 0xFFFF0000;
      v18 = v16 ^ (v17 << 16);
      v19 = v18 ^ v17;
      v20 = (v18 ^ (v19 >> 8)) & 0xFF000000FF00;
      *(v8 - 1) = v14 ^ (v15 << 8) ^ v15 ^ (16 * ((v14 ^ (v15 << 8) ^ ((v14 ^ (v15 << 8) ^ v15) >> 4)) & 0xF000F000F000F0)) ^ (v14 ^ (v15 << 8) ^ ((v14 ^ (v15 << 8) ^ v15) >> 4)) & 0xF000F000F000F0;
      *v8 = v19 ^ (v20 << 8) ^ v20 ^ (16 * ((v19 ^ (v20 << 8) ^ ((v19 ^ (v20 << 8) ^ v20) >> 4)) & 0xF000F000F000F0)) ^ (v19 ^ (v20 << 8) ^ ((v19 ^ (v20 << 8) ^ v20) >> 4)) & 0xF000F000F000F0;
      v8 += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

unint64_t *aes_nohw_sub_block(void *a1, uint64_t *a2)
{
  v8 = 0u;
  v10 = 0;
  v9 = 0u;
  v7 = 0u;
  v3 = a2[1];
  v6 = *a2;
  *(&v8 + 1) = v3;
  aes_nohw_transpose(&v6);
  aes_nohw_sub_bytes(&v6);
  result = aes_nohw_transpose(&v6);
  v5 = *(&v8 + 1);
  *a1 = v6;
  a1[1] = v5;
  return result;
}

unint64_t *aes_nohw_transpose(unint64_t *result)
{
  v1 = result[1];
  v2 = (v1 ^ (*result >> 1)) & 0x5555555555555555;
  v3 = *result ^ (2 * v2);
  v4 = v2 ^ v1;
  v5 = result[2];
  v6 = result[3];
  v7 = (v6 ^ (v5 >> 1)) & 0x5555555555555555;
  v8 = v5 ^ (2 * v7);
  v9 = v7 ^ v6;
  v10 = result[4];
  v11 = result[5];
  v12 = (v11 ^ (v10 >> 1)) & 0x5555555555555555;
  v13 = v10 ^ (2 * v12);
  v14 = v12 ^ v11;
  v15 = result[6];
  v16 = result[7];
  v17 = (v16 ^ (v15 >> 1)) & 0x5555555555555555;
  v18 = v15 ^ (2 * v17);
  v19 = v17 ^ v16;
  v20 = (v8 ^ (v3 >> 2)) & 0x3333333333333333;
  v21 = v3 ^ (4 * v20);
  v22 = v20 ^ v8;
  v23 = (v9 ^ (v4 >> 2)) & 0x3333333333333333;
  *result = v21;
  result[1] = v4 ^ (4 * v23);
  result[2] = v22;
  result[3] = v23 ^ v9;
  v24 = (v18 ^ (v13 >> 2)) & 0x3333333333333333;
  v25 = (v19 ^ (v14 >> 2)) & 0x3333333333333333;
  result[4] = v13 ^ (4 * v24);
  result[5] = v14 ^ (4 * v25);
  result[6] = v24 ^ v18;
  result[7] = v25 ^ v19;
  return result;
}

uint64_t *aes_nohw_sub_bytes(uint64_t *result)
{
  v1 = result[6];
  v2 = result[7];
  v3 = result[4];
  v4 = result[2];
  v5 = v4 ^ v3;
  v6 = result[1];
  v7 = v6 ^ v2;
  v8 = v3 ^ v2;
  v9 = v4 ^ v2;
  v10 = result[5] ^ v1;
  v11 = *result ^ v10;
  v12 = v11 ^ v3;
  v13 = v6 ^ v2 ^ v5;
  v63 = v11 ^ v2;
  v14 = v11 ^ v6;
  v15 = v14 ^ v4 ^ v2;
  v16 = v13 ^ result[3];
  v17 = v16 ^ v4;
  v18 = v16 ^ v1;
  v19 = v17 ^ v10;
  v20 = v18 ^ v8;
  v21 = v18 ^ v8 ^ *result;
  v22 = v18 ^ v8 ^ v17 ^ v10;
  v23 = v18 ^ v8 ^ v10;
  v24 = (v18 ^ v8) & v8;
  v25 = v22 & v5 ^ v24;
  v26 = v24 ^ v19 & v9;
  v27 = v18 ^ v17 & v13 ^ (v17 ^ *result) & v15 ^ v25;
  v28 = v12 & *result ^ v9 ^ v17 & v13 ^ v19 ^ v26;
  v29 = v14 & v11 ^ v7 ^ v23 & v7 ^ v25;
  v30 = v21 & (v11 ^ v2) ^ v2 ^ v23 & v7 ^ v26;
  v31 = v30 ^ v23;
  v32 = v28 ^ v27;
  v33 = (v29 ^ v23) & v27;
  v34 = v33 ^ v30 ^ v23;
  v35 = v34 & v32 ^ v28;
  v36 = (v33 ^ v28) & (v30 ^ v29);
  v37 = v36 ^ v31;
  v38 = (v36 ^ v33) & v31;
  v39 = v38 ^ v29 ^ v23;
  v40 = (v38 ^ v34) & v35 ^ v32;
  v41 = v40 ^ v39 ^ v37;
  v42 = v41 ^ v37 ^ v35;
  v43 = (v39 ^ v37) & (v17 ^ *result);
  v44 = v37 & *result;
  v45 = (v40 ^ v35) & v23;
  v46 = v40 & v11;
  v47 = v35 & v21;
  v48 = v42 & v22;
  v49 = (v39 ^ v37) & v15;
  v50 = (v40 ^ v35) & v7;
  v51 = v42 & v5;
  v52 = v51 ^ (v37 ^ v35) & v8;
  v53 = v49 ^ v37 & v12;
  v54 = v40 & v14 ^ v47;
  v55 = v49 ^ v39 & v13;
  v56 = v45 ^ v39 & v17;
  v57 = v50 ^ v44 ^ v56;
  v58 = v45 ^ (v37 ^ v35) & v20 ^ v48;
  v59 = v48 ^ v41 & v19 ^ v52 ^ v46;
  v60 = v55 ^ v52 ^ v46;
  v61 = v58 ^ v46;
  v62 = v57 ^ v35 & v63 ^ v59;
  *result = v54 ^ v52 ^ ~v57;
  result[1] = v54 ^ v50 ^ ~v59;
  result[2] = v53 ^ v62;
  result[3] = v47 ^ v44 ^ v60 ^ v43;
  result[4] = v60 ^ v43 ^ v56;
  result[5] = v61 ^ v41 & v9 ^ v51 ^ ~v62;
  result[6] = v61 ^ ~(v60 ^ v43 ^ v56);
  result[7] = v60 ^ v58;
  return result;
}

int8x16_t aes_nohw_mix_columns(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = (*a1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (*a1 << 12) & 0xF000F000F000F000;
  v5 = v4 ^ *a1;
  v6 = (v1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v1 << 12) & 0xF000F000F000F000;
  v7 = v6 ^ v1;
  v8 = (v2 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v2 << 12) & 0xF000F000F000F000;
  v9 = v8 ^ v2;
  v10 = (v3 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v3 << 12) & 0xF000F000F000F000;
  v11 = v10 ^ v3;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = vbslq_s8(v14, vshrq_n_u64(v12, 4uLL), vshlq_n_s64(v12, 0xCuLL));
  v16 = veorq_s8(v15, v12);
  v17 = vdupq_laneq_s64(v16, 1);
  v18 = vbslq_s8(v14, vshrq_n_u64(v13, 4uLL), vshlq_n_s64(v13, 0xCuLL));
  *a1 = __rev16(v5) ^ v4 ^ v11;
  *(a1 + 8) = v5 ^ v6 ^ __rev16(v7) ^ v11;
  v19 = veorq_s8(veorq_s8(vzip1q_s64(vdupq_laneq_s64(v15, 1), v18), vdupq_n_s64(v11)), v16);
  *(a1 + 16) = __rev16(v16.u64[0]) ^ v15.i64[0] ^ v7;
  v20 = veorq_s8(v18, v13);
  v21 = vzip1q_s64(v17, v20);
  v17.i64[0] = 0xFF00FF00FF00FFLL;
  v17.i64[1] = 0xFF00FF00FF00FFLL;
  *(a1 + 24) = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), v19);
  v21.i64[0] = vdupq_laneq_s64(v20, 1).u64[0];
  v21.i64[1] = v9;
  v15.i64[0] = vdupq_laneq_s64(v18, 1).u64[0];
  v15.i64[1] = v8;
  result = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), veorq_s8(v15, v20));
  *(a1 + 40) = result;
  *(a1 + 56) = v9 ^ v10 ^ __rev16(v11);
  return result;
}

double EC_group_p384_init()
{
  qword_1EB381BB0 = "NIST P-384";
  unk_1EB381BB8 = 0x4812B000002CBLL;
  byte_1EB381BC0 = 34;
  byte_1EB381BC5 = 5;
  bn_set_static_words(&unk_1EB381AF8, &kP384Field, 6uLL);
  bn_set_static_words(&unk_1EB381AE0, &kP384FieldRR, 6uLL);
  qword_1EB381B10 = 0x100000001;
  bn_set_static_words(&unk_1EB381AB8, &kP384Order, 6uLL);
  bn_set_static_words(&unk_1EB381AA0, &kP384OrderRR, 6uLL);
  qword_1EB381AD0 = 0x6ED46089E88FDC45;
  EC_group_p384_storage = EC_GFp_mont_method();
  unk_1EB3819C0 = &EC_group_p384_storage;
  xmmword_1EB3819C8 = kP384MontGX;
  unk_1EB3819D8 = unk_1A90AFE88;
  xmmword_1EB3819E8 = xmmword_1A90AFE98;
  unk_1EB381A10 = kP384MontGY;
  unk_1EB381A20 = unk_1A90AFEB8;
  unk_1EB381A30 = xmmword_1A90AFEC8;
  xmmword_1EB381A68 = xmmword_1A90AFEE8;
  unk_1EB381A78 = unk_1A90AFEF8;
  xmmword_1EB381A58 = kP384FieldR;
  xmmword_1EB381B68 = kP384MontB;
  unk_1EB381B78 = unk_1A90AFF18;
  xmmword_1EB381B88 = xmmword_1A90AFF28;
  ec_group_set_a_minus3(&EC_group_p384_storage);
  *&result = 0x100000001;
  qword_1EB381BCC = 0x100000001;
  return result;
}

double EC_group_p521_init()
{
  qword_1EB381DD0 = "NIST P-521";
  unk_1EB381DD8 = 0x4812B000002CCLL;
  byte_1EB381DE0 = 35;
  byte_1EB381DE5 = 5;
  bn_set_static_words(&unk_1EB381D18, &kP521Field, 9uLL);
  bn_set_static_words(&unk_1EB381D00, &kP521FieldRR, 9uLL);
  qword_1EB381D30 = 1;
  bn_set_static_words(&unk_1EB381CD8, &kP521Order, 9uLL);
  bn_set_static_words(&unk_1EB381CC0, &kP521OrderRR, 9uLL);
  qword_1EB381CF0 = 0x1D2F5CCD79A995C7;
  EC_group_p521_storage = EC_GFp_mont_method();
  unk_1EB381BE0 = &EC_group_p521_storage;
  qword_1EB381C28 = 116;
  xmmword_1EB381BE8 = kP521MontGX;
  unk_1EB381BF8 = unk_1A90B0068;
  xmmword_1EB381C08 = xmmword_1A90B0078;
  unk_1EB381C18 = unk_1A90B0088;
  qword_1EB381C70 = 480;
  unk_1EB381C30 = kP521MontGY;
  unk_1EB381C40 = unk_1A90B00B0;
  unk_1EB381C50 = xmmword_1A90B00C0;
  unk_1EB381C60 = unk_1A90B00D0;
  qword_1EB381CB8 = 0;
  xmmword_1EB381C78 = kP521FieldR;
  unk_1EB381C88 = unk_1A90B0140;
  xmmword_1EB381C98 = xmmword_1A90B0150;
  unk_1EB381CA8 = unk_1A90B0160;
  qword_1EB381DC8 = 77;
  xmmword_1EB381D88 = kP521MontB;
  unk_1EB381D98 = unk_1A90B00F8;
  xmmword_1EB381DA8 = xmmword_1A90B0108;
  unk_1EB381DB8 = unk_1A90B0118;
  ec_group_set_a_minus3(&EC_group_p521_storage);
  *&result = 0x100000001;
  qword_1EB381DEC = 0x100000001;
  return result;
}

EC_GROUP *__cdecl EC_GROUP_new_by_curve_name(int nid)
{
  if (nid > 714)
  {
    if (nid != 715)
    {
      if (nid == 716)
      {
        CRYPTO_once(&EC_group_p521_once, EC_group_p521_init);
        return &EC_group_p521_storage;
      }

      goto LABEL_8;
    }

    CRYPTO_once(&EC_group_p384_once, EC_group_p384_init);
    return &EC_group_p384_storage;
  }

  else
  {
    if (nid != 415)
    {
      if (nid == 713)
      {
        CRYPTO_once(&EC_group_p224_once, EC_group_p224_init);
        return &EC_group_p224_storage;
      }

LABEL_8:
      ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 342);
      return 0;
    }

    CRYPTO_once(&EC_group_p256_once, EC_group_p256_init);
    return &EC_group_p256_storage;
  }
}

const EC_POINT *__cdecl EC_GROUP_get0_generator(const EC_GROUP *a1)
{
  if (*(a1 + 133))
  {
    return (a1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t EC_GROUP_get0_order(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 532))
  {
    EC_GROUP_get0_order_cold_1();
  }

  return a1 + 256;
}

int EC_POINT_is_at_infinity(const EC_GROUP *a1, const EC_POINT *a2)
{
  if (EC_GROUP_cmp(a1, *a2, v2))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 537);
    return 0;
  }

  else
  {

    return ec_GFp_simple_is_at_infinity(a1, a2 + 8);
  }
}

int EC_POINT_is_on_curve(const EC_GROUP *a1, const EC_POINT *a2, BN_CTX *a3)
{
  if (EC_GROUP_cmp(a1, *a2, a3))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 546);
    return 0;
  }

  else
  {

    return ec_GFp_simple_is_on_curve(a1, a2 + 8);
  }
}

int EC_POINT_cmp(const EC_GROUP *a1, const EC_POINT *a, const EC_POINT *b, BN_CTX *a4)
{
  if (!EC_GROUP_cmp(a1, *a, b) && !EC_GROUP_cmp(a1, *b, v7))
  {
    return ec_GFp_simple_points_equal(a1, a + 8, b + 1) == 0;
  }

  ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 556);
  return -1;
}

int EC_POINT_get_affine_coordinates_GFp(const EC_GROUP *a1, const EC_POINT *a2, BIGNUM *x, BIGNUM *y, BN_CTX *a5)
{
  if (!**a1)
  {
    v9 = 66;
    v10 = 568;
    goto LABEL_5;
  }

  if (EC_GROUP_cmp(a1, *a2, x))
  {
    v9 = 106;
    v10 = 572;
LABEL_5:
    ERR_put_error(15, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v10);
    return 0;
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v12;
  v17[3] = v12;
  v17[0] = v12;
  v17[1] = v12;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v15[2] = v12;
  v15[3] = v12;
  v15[0] = v12;
  v15[1] = v12;
  if (x)
  {
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

  if (y)
  {
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

  result = (**a1)(a1, a2 + 8, v13, v14);
  if (result)
  {
    if (!x || (result = ec_felem_to_bignum(a1, x, v17)) != 0)
    {
      if (!y)
      {
        return 1;
      }

      result = ec_felem_to_bignum(a1, y, v15);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ec_jacobian_to_affine_batch(uint64_t a1)
{
  v2 = *(*a1 + 8);
  if (v2)
  {

    return v2();
  }

  else
  {
    ERR_put_error(15, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 607);
    return 0;
  }
}

int EC_POINT_set_affine_coordinates_GFp(const EC_GROUP *a1, EC_POINT *a2, const BIGNUM *x, const BIGNUM *y, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *a2, x))
  {
    v9 = 106;
    v10 = 649;
LABEL_10:
    ERR_put_error(15, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v10);
    return 0;
  }

  if (!x || !y)
  {
    v9 = 67;
    v10 = 654;
    goto LABEL_10;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[2] = v11;
  v28[3] = v11;
  v28[0] = v11;
  v28[1] = v11;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v11;
  v26[3] = v11;
  v26[0] = v11;
  v26[1] = v11;
  *&v25[48] = v11;
  *&v25[64] = v11;
  *&v25[16] = v11;
  *&v25[32] = v11;
  v24 = v11;
  *v25 = v11;
  v22 = v11;
  v23 = v11;
  v21 = v11;
  if (ec_bignum_to_felem(a1, v28, x) && ec_bignum_to_felem(a1, v26, y) && ec_point_set_affine_coordinates(a1, &v21, v28, v26))
  {
    v12 = v21;
    *(a2 + 24) = v22;
    v13 = v24;
    *(a2 + 40) = v23;
    *(a2 + 56) = v13;
    *(a2 + 9) = *v25;
    *(a2 + 8) = v12;
    v14 = *&v25[24];
    v15 = *&v25[56];
    *(a2 + 7) = *&v25[40];
    *(a2 + 8) = v15;
    *(a2 + 18) = *&v25[72];
    *(a2 + 5) = *&v25[8];
    *(a2 + 6) = v14;
    v16 = ec_felem_one(a1);
    *(a2 + 152) = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 64);
    *(a2 + 168) = *(v16 + 16);
    *(a2 + 27) = v19;
    *(a2 + 200) = v17;
    *(a2 + 184) = v18;
    return 1;
  }

  ec_set_to_safe_point(a1, a2 + 8);
  return 0;
}

double ec_set_to_safe_point(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 532))
  {
    return ec_GFp_simple_point_set_to_infinity(a1, a2);
  }

  *&result = ec_GFp_simple_point_copy(a2, a1 + 16).n128_u64[0];
  return result;
}

int EC_POINT_add(const EC_GROUP *a1, EC_POINT *r, const EC_POINT *a, const EC_POINT *b, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *r, a) || EC_GROUP_cmp(a1, *a, v9) || EC_GROUP_cmp(a1, *b, v10))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 684);
    return 0;
  }

  else
  {
    (*(*a1 + 16))(a1, r + 8, a + 8, b + 8);
    return 1;
  }
}

int EC_POINT_invert(const EC_GROUP *a1, EC_POINT *a2, BN_CTX *a3)
{
  if (EC_GROUP_cmp(a1, *a2, a3))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 705);
    return 0;
  }

  else
  {
    ec_GFp_simple_invert(a1, a2 + 8);
    return 1;
  }
}

uint64_t ec_point_mul_no_self_test(const EC_GROUP *a1, uint64_t a2, BIGNUM *a3, const EC_GROUP **a4, const BIGNUM *a5, BN_CTX *a6)
{
  if ((a4 == 0) != (a5 == 0) || !(a3 | a5))
  {
    v13 = 67;
    v14 = 738;
  }

  else
  {
    if (!EC_GROUP_cmp(a1, *a2, a3) && (!a4 || !EC_GROUP_cmp(a1, *a4, v12)))
    {
      if (a6)
      {
        v17 = 0;
      }

      else
      {
        a6 = BN_CTX_new();
        v17 = a6;
        if (!a6)
        {
          goto LABEL_21;
        }
      }

      if (!a3 || (*&v30 = 0xAAAAAAAAAAAAAAAALL, *&v18 = 0xAAAAAAAAAAAAAAAALL, *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL, v28 = v18, v29 = v18, v26 = v18, v27 = v18, arbitrary_bignum_to_scalar(a1, &v26, a3, a6)) && ec_point_mul_scalar_base(a1, a2 + 8, &v26))
      {
        if (!a5)
        {
LABEL_23:
          v15 = 1;
          goto LABEL_24;
        }

        v41 = 0xAAAAAAAAAAAAAAAALL;
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40[2] = v19;
        v40[3] = v19;
        v40[0] = v19;
        v40[1] = v19;
        v39 = 0xAAAAAAAAAAAAAAAALL;
        v37 = v19;
        v38 = v19;
        v35 = v19;
        v36 = v19;
        v33 = v19;
        v34 = v19;
        v31 = v19;
        v32 = v19;
        v29 = v19;
        v30 = v19;
        v27 = v19;
        v28 = v19;
        v26 = v19;
        if (arbitrary_bignum_to_scalar(a1, v40, a5, a6) && ec_point_mul_scalar(a1, &v26, (a4 + 1), v40))
        {
          if (a3)
          {
            (*(*a1 + 16))(a1, a2 + 8, a2 + 8, &v26);
          }

          else
          {
            v20 = v37;
            *(a2 + 168) = v36;
            *(a2 + 184) = v20;
            *(a2 + 200) = v38;
            v21 = v33;
            *(a2 + 104) = v32;
            *(a2 + 120) = v21;
            v22 = v35;
            *(a2 + 136) = v34;
            *(a2 + 152) = v22;
            v23 = v29;
            *(a2 + 40) = v28;
            *(a2 + 56) = v23;
            v24 = v31;
            *(a2 + 72) = v30;
            *(a2 + 88) = v24;
            v25 = v27;
            *(a2 + 8) = v26;
            *(a2 + 216) = v39;
            *(a2 + 24) = v25;
          }

          goto LABEL_23;
        }
      }

LABEL_21:
      v15 = 0;
LABEL_24:
      BN_CTX_free(v17);
      return v15;
    }

    v13 = 106;
    v14 = 744;
  }

  ERR_put_error(15, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v14);
  return 0;
}

BOOL arbitrary_bignum_to_scalar(uint64_t a1, void *a2, const BIGNUM *a3, BN_CTX *a4)
{
  if (ec_bignum_to_scalar(a1, a2, a3))
  {
    return 1;
  }

  ERR_clear_error();
  BN_CTX_start(a4);
  v9 = BN_CTX_get(a4);
  if (!v9)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 532))
  {
    EC_GROUP_get0_order_cold_1();
  }

  v10 = v9;
  if (BN_nnmod(v9, a3, (a1 + 256), a4))
  {
    v8 = ec_bignum_to_scalar(a1, a2, v10) != 0;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  BN_CTX_end(a4);
  return v8;
}

uint64_t ec_point_mul_scalar_base(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(*a1 + 40))(a1);
    if (ec_GFp_simple_is_on_curve(a1, a2))
    {
      return 1;
    }

    v6 = 68;
    v7 = 867;
  }

  else
  {
    v6 = 67;
    v7 = 856;
  }

  ERR_put_error(15, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v7);
  return 0;
}

uint64_t ec_point_mul_scalar(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    (*(*a1 + 32))(a1);
    if (ec_GFp_simple_is_on_curve(a1, a2))
    {
      return 1;
    }

    v7 = 68;
    v8 = 846;
  }

  else
  {
    v7 = 67;
    v8 = 837;
  }

  ERR_put_error(15, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v8);
  return 0;
}

uint64_t *ec_point_select(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  ec_felem_select(a1, a2, a3, a4, a5);
  ec_felem_select(a1, a2 + 9, a3, a4 + 9, a5 + 9);

  return ec_felem_select(a1, a2 + 18, a3, a4 + 18, a5 + 18);
}

uint64_t ec_get_x_coordinate_as_scalar(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = -21846;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[2] = v5;
  v9[3] = v5;
  v9[0] = v5;
  v9[1] = v5;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  result = ec_get_x_coordinate_as_bytes(a1, v9, &v7, 0x42uLL, a3);
  if (result)
  {
    if (!*(a1 + 532))
    {
      EC_GROUP_get0_order_cold_1();
    }

    memset(v8, 0, sizeof(v8));
    bn_big_endian_to_words(v8, *(a1 + 264) + 1, v9, v7);
    bn_reduce_once(a2, v8, *(v8 + *(a1 + 264)), *(a1 + 256), *(a1 + 264));
    return 1;
  }

  return result;
}

uint64_t ec_get_x_coordinate_as_bytes(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = BN_num_bytes((a1 + 320));
  if (v9 >= 0x43)
  {
    ec_get_x_coordinate_as_bytes_cold_1();
  }

  v10 = v9;
  if (v9 <= a4)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[2] = v12;
    v13[3] = v12;
    v13[0] = v12;
    v13[1] = v12;
    result = (**a1)(a1, a5, v13, 0);
    if (result)
    {
      ec_felem_to_bytes(a1);
      *a3 = v10;
      return 1;
    }
  }

  else
  {
    ERR_put_error(15, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 996);
    return 0;
  }

  return result;
}

boringssl_concrete_boringssl_psk_cache *boringssl_psk_cache_create_with_context(void *a1)
{
  v2 = objc_alloc_init(boringssl_concrete_boringssl_psk_cache);
  v3 = v2;
  if (v2)
  {
    list = v2->list;
    v2->list = 0;

    objc_storeStrong(&v3->context, a1);
  }

  return v3;
}

void boringssl_psk_cache_add_psk(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (v6 && v3)
  {
    if (!v6[1])
    {
      v4 = sec_array_create();
      v5 = v6[1];
      v6[1] = v4;
    }

    sec_array_append();
  }
}

id boringssl_psk_cache_lookup_psk(void *a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    goto LABEL_83;
  }

  if (sec_array_get_count())
  {
    if (v5[3] && v5[4])
    {
      if (v7)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__2;
        *&buf[32] = __Block_byref_object_dispose__2;
        v95 = 0;
        v8 = v5[2];
        if (!v8)
        {
          goto LABEL_33;
        }

        WeakRetained = objc_loadWeakRetained((v8 + 16));
        if (WeakRetained)
        {
          v10 = WeakRetained;
          v11 = objc_loadWeakRetained((v5[2] + 16));
          v12 = v11[435];

          if (v12)
          {
            goto LABEL_114;
          }
        }

        v13 = v5[2];
        if (v13)
        {
          v14 = objc_loadWeakRetained((v13 + 16));
          if (v14)
          {
            v15 = objc_loadWeakRetained((v5[2] + 16));
            v16 = (v15[435] & 1) == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            goto LABEL_114;
          }
        }

        else
        {
LABEL_33:
          v16 = 1;
        }

        if (!g_boringssl_log)
        {
LABEL_114:
          v77 = v5[4];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __boringssl_psk_cache_lookup_psk_block_invoke;
          block[3] = &unk_1E785FDE0;
          v82 = v5;
          v83 = v7;
          v84 = v6;
          v85 = buf;
          dispatch_sync(v77, block);
          v43 = *(*&buf[8] + 40);

          _Block_object_dispose(buf, 8);
          goto LABEL_130;
        }

        v60 = g_boringssl_log;
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          goto LABEL_113;
        }

        v61 = v5[2];
        if (v61)
        {
          v62 = objc_loadWeakRetained((v61 + 16));
          v16 = v62;
          v63 = v5[2];
          if (v62)
          {
            v64 = v63 != 0;
            if (v63)
            {
              v62 = objc_loadWeakRetained((v63 + 16));
              v63 = v5[2];
            }

            else
            {
              v62 = 0;
            }

            v72 = v62 + 351;
          }

          else
          {
            v64 = 0;
            v72 = &unk_1A9098A9F;
          }

          v80 = v62;
          if (v63)
          {
            v70 = objc_loadWeakRetained((v63 + 16));
            v71 = 0;
          }

          else
          {
            v70 = 0;
            v71 = 1;
          }
        }

        else
        {
          v64 = 0;
          v70 = 0;
          v71 = 1;
          v72 = &unk_1A9098A9F;
        }

        *v86 = 136446978;
        v87 = "boringssl_psk_cache_lookup_psk";
        v88 = 1024;
        v89 = 104;
        v90 = 2082;
        v91 = v72;
        v92 = 2048;
        v93 = v70;
        _os_log_impl(&dword_1A8FF5000, v60, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Invoking client PSK selection callback.", v86, 0x26u);
        if (v71)
        {
          if (!v64)
          {
            goto LABEL_111;
          }
        }

        else
        {

          if (!v64)
          {
LABEL_111:
            if (v61)
            {
LABEL_112:
            }

LABEL_113:

            goto LABEL_114;
          }
        }

        if (!v61)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      goto LABEL_83;
    }

    v17 = v5[2];
    if (v6)
    {
      if (v17)
      {
        v18 = objc_loadWeakRetained((v17 + 16));
        if (v18)
        {
          v19 = v18;
          v20 = objc_loadWeakRetained((v5[2] + 16));
          v21 = v20[435];

          if (v21)
          {
            goto LABEL_99;
          }
        }

        v22 = v5[2];
        if (v22)
        {
          v23 = objc_loadWeakRetained((v22 + 16));
          if (v23)
          {
            v24 = objc_loadWeakRetained((v5[2] + 16));
            v25 = (v24[435] & 1) == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            goto LABEL_99;
          }
        }
      }

      if (!g_boringssl_log)
      {
        goto LABEL_99;
      }

      v52 = g_boringssl_log;
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        goto LABEL_98;
      }

      v53 = v5[2];
      if (v53)
      {
        v54 = objc_loadWeakRetained((v53 + 16));
        v55 = v5[2];
        v80 = v54;
        if (v54)
        {
          v56 = v55 != 0;
          if (v55)
          {
            v54 = objc_loadWeakRetained((v55 + 16));
            v55 = v5[2];
          }

          else
          {
            v54 = 0;
          }

          v59 = v54 + 351;
        }

        else
        {
          v56 = 0;
          v59 = &unk_1A9098A9F;
        }

        v79 = v54;
        if (v55)
        {
          v57 = objc_loadWeakRetained((v55 + 16));
          v58 = 0;
        }

        else
        {
          v57 = 0;
          v58 = 1;
        }
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = 1;
        v59 = &unk_1A9098A9F;
      }

      *buf = 136446978;
      *&buf[4] = "boringssl_psk_cache_lookup_psk";
      *&buf[12] = 1024;
      *&buf[14] = 124;
      *&buf[18] = 2082;
      *&buf[20] = v59;
      *&buf[28] = 2048;
      *&buf[30] = v57;
      _os_log_impl(&dword_1A8FF5000, v52, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] No PSK selection logic. Indexing cache using identity hint verbatim.", buf, 0x26u);
      if (v58)
      {
        if (!v56)
        {
          goto LABEL_96;
        }
      }

      else
      {

        if (!v56)
        {
LABEL_96:
          if (v53)
          {
LABEL_97:
          }

LABEL_98:

LABEL_99:
          psk = boringssl_psk_cache_lookup_psk_inner(v5, v6);
LABEL_129:
          v43 = psk;
          goto LABEL_130;
        }
      }

      if (!v53)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }

    if (v17)
    {
      v35 = objc_loadWeakRetained((v17 + 16));
      if (v35)
      {
        v36 = v35;
        v37 = objc_loadWeakRetained((v5[2] + 16));
        v38 = v37[435];

        if (v38)
        {
          goto LABEL_128;
        }
      }

      v39 = v5[2];
      if (v39)
      {
        v40 = objc_loadWeakRetained((v39 + 16));
        if (v40)
        {
          v41 = objc_loadWeakRetained((v5[2] + 16));
          v42 = (v41[435] & 1) == 0;
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          goto LABEL_128;
        }
      }
    }

    if (!g_boringssl_log)
    {
LABEL_128:
      psk = boringssl_psk_cache_copy_first_psk(v5);
      goto LABEL_129;
    }

    v65 = g_boringssl_log;
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      goto LABEL_127;
    }

    v66 = v5[2];
    if (v66)
    {
      v67 = objc_loadWeakRetained((v66 + 16));
      v68 = v5[2];
      v80 = v67;
      if (v67)
      {
        v69 = v68 != 0;
        if (v68)
        {
          v67 = objc_loadWeakRetained((v68 + 16));
          v68 = v5[2];
        }

        else
        {
          v67 = 0;
        }

        v75 = v67 + 351;
      }

      else
      {
        v69 = 0;
        v75 = &unk_1A9098A9F;
      }

      v79 = v67;
      if (v68)
      {
        v73 = objc_loadWeakRetained((v68 + 16));
        v74 = 0;
      }

      else
      {
        v73 = 0;
        v74 = 1;
      }
    }

    else
    {
      v69 = 0;
      v73 = 0;
      v74 = 1;
      v75 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    *&buf[4] = "boringssl_psk_cache_lookup_psk";
    *&buf[12] = 1024;
    *&buf[14] = 118;
    *&buf[18] = 2082;
    *&buf[20] = v75;
    *&buf[28] = 2048;
    *&buf[30] = v73;
    _os_log_impl(&dword_1A8FF5000, v65, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] No PSK hint or selection logic. Using first PSK in the cache.", buf, 0x26u);
    if (v74)
    {
      if (!v69)
      {
        goto LABEL_125;
      }
    }

    else
    {

      if (!v69)
      {
LABEL_125:
        if (v66)
        {
LABEL_126:
        }

LABEL_127:

        goto LABEL_128;
      }
    }

    if (!v66)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  v26 = v5[2];
  if (!v26)
  {
    goto LABEL_25;
  }

  v27 = objc_loadWeakRetained((v26 + 16));
  if (v27)
  {
    v28 = v27;
    v29 = objc_loadWeakRetained((v5[2] + 16));
    v30 = v29[435];

    if (v30)
    {
      goto LABEL_83;
    }
  }

  v31 = v5[2];
  if (v31)
  {
    v32 = objc_loadWeakRetained((v31 + 16));
    if (v32)
    {
      v33 = objc_loadWeakRetained((v5[2] + 16));
      v34 = (v33[435] & 1) == 0;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
LABEL_25:
    v34 = 1;
  }

  v43 = 0;
  if (v34 && g_boringssl_log)
  {
    v44 = g_boringssl_log;
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      goto LABEL_82;
    }

    v45 = v5[2];
    if (v45)
    {
      v46 = objc_loadWeakRetained((v45 + 16));
      v47 = v5[2];
      v80 = v46;
      if (v46)
      {
        v48 = v47 != 0;
        if (v47)
        {
          v46 = objc_loadWeakRetained((v47 + 16));
          v47 = v5[2];
        }

        else
        {
          v46 = 0;
        }

        v51 = v46 + 351;
      }

      else
      {
        v48 = 0;
        v51 = &unk_1A9098A9F;
      }

      v79 = v46;
      if (v47)
      {
        v49 = objc_loadWeakRetained((v47 + 16));
        v50 = 0;
      }

      else
      {
        v49 = 0;
        v50 = 1;
      }
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = 1;
      v51 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    *&buf[4] = "boringssl_psk_cache_lookup_psk";
    *&buf[12] = 1024;
    *&buf[14] = 96;
    *&buf[18] = 2082;
    *&buf[20] = v51;
    *&buf[28] = 2048;
    *&buf[30] = v49;
    _os_log_impl(&dword_1A8FF5000, v44, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] PSK cache is empty.", buf, 0x26u);
    if (v50)
    {
      if (!v48)
      {
        goto LABEL_80;
      }
    }

    else
    {

      if (!v48)
      {
LABEL_80:
        if (v45)
        {
LABEL_81:
        }

LABEL_82:

LABEL_83:
        v43 = 0;
        goto LABEL_130;
      }
    }

    if (!v45)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_130:

  return v43;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __boringssl_psk_cache_lookup_psk_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[3];
  v5 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __boringssl_psk_cache_lookup_psk_block_invoke_2;
  v8[3] = &unk_1E785FDB8;
  v6 = v2;
  v7 = a1[7];
  v9 = v6;
  v10 = v7;
  (*(v4 + 16))(v4, v3, v5, v8);
}

void __boringssl_psk_cache_lookup_psk_block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*(a1 + 32) + 16);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 16));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = objc_loadWeakRetained((*(*(a1 + 32) + 16) + 16));
      v9 = v8[435];

      if (v9)
      {
        goto LABEL_32;
      }
    }
  }

  v10 = *(*(a1 + 32) + 16);
  if (v10)
  {
    v11 = objc_loadWeakRetained((v10 + 16));
    if (v11)
    {
      v12 = objc_loadWeakRetained((*(*(a1 + 32) + 16) + 16));
      v13 = (v12[435] & 1) == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v13 = 1;
  }

  if (g_boringssl_log)
  {
    v14 = g_boringssl_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 16);
      if (v16)
      {
        v13 = objc_loadWeakRetained((v16 + 16));
        v15 = *(a1 + 32);
        if (v13)
        {
          v17 = *(v15 + 16);
          v18 = v17 != 0;
          if (v17)
          {
            v2 = objc_loadWeakRetained((v17 + 16));
            v15 = *(a1 + 32);
          }

          else
          {
            v2 = 0;
          }

          v19 = v2 + 351;
        }

        else
        {
          v18 = 0;
          v19 = &unk_1A9098A9F;
        }
      }

      else
      {
        v18 = 0;
        v19 = &unk_1A9098A9F;
      }

      v20 = *(v15 + 16);
      if (v20)
      {
        v21 = objc_loadWeakRetained((v20 + 16));
      }

      else
      {
        v21 = 0;
      }

      v27 = "boringssl_psk_cache_lookup_psk_block_invoke_2";
      v28 = 1024;
      v22 = "with";
      v29 = 108;
      v26 = 136447234;
      if (!v4)
      {
        v22 = "without";
      }

      v30 = 2082;
      v31 = v19;
      v32 = 2048;
      v33 = v21;
      v34 = 2082;
      v35 = v22;
      _os_log_impl(&dword_1A8FF5000, v14, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Returned from client PSK selection callback %{public}s PSK.", &v26, 0x30u);
      if (v20)
      {
      }

      if (v18)
      {
      }

      if (v16)
      {
      }
    }
  }

LABEL_32:
  v23 = boringssl_psk_cache_lookup_psk_inner(*(a1 + 32), v4);
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;
}

void *boringssl_psk_cache_lookup_psk_inner(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = 0;
    v26 = v4;
    sec_array_apply();
    v6 = v28[5];
    if (v6)
    {
      v7 = v6;
LABEL_5:

      _Block_object_dispose(&v27, 8);
      goto LABEL_6;
    }

    v9 = v3[2];
    if (!v9)
    {
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained((v9 + 16));
    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained((v3[2] + 16));
      v12 = (v11[435] & 1) == 0;

      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v13 = v3[2];
    if (v13)
    {
      v14 = objc_loadWeakRetained((v13 + 16));
      if (v14)
      {
        v15 = objc_loadWeakRetained((v3[2] + 16));
        v16 = (v15[435] & 1) == 0;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
LABEL_13:
      v16 = 1;
    }

    if (v16 && g_boringssl_log)
    {
      v17 = g_boringssl_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = v3[2];
        if (v18)
        {
          v19 = objc_loadWeakRetained((v18 + 16));
          v16 = v19;
          v20 = v3[2];
          if (v19)
          {
            v21 = v20 != 0;
            if (v20)
            {
              v19 = objc_loadWeakRetained((v20 + 16));
              v20 = v3[2];
            }

            else
            {
              v19 = 0;
            }

            v24 = v19 + 351;
          }

          else
          {
            v21 = 0;
            v24 = &unk_1A9098A9F;
          }

          v25 = v19;
          if (v20)
          {
            v22 = objc_loadWeakRetained((v20 + 16));
            v23 = 0;
          }

          else
          {
            v22 = 0;
            v23 = 1;
          }
        }

        else
        {
          v21 = 0;
          v22 = 0;
          v23 = 1;
          v24 = &unk_1A9098A9F;
        }

        *buf = 136446978;
        v34 = "boringssl_psk_cache_lookup_psk_inner";
        v35 = 1024;
        v36 = 81;
        v37 = 2082;
        v38 = v24;
        v39 = 2048;
        v40 = v22;
        _os_log_impl(&dword_1A8FF5000, v17, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] PSK lookup using identity hint did not find a match.", buf, 0x26u);
        if ((v23 & 1) == 0)
        {
        }

        if (v21)
        {
        }

        if (v18)
        {
        }
      }
    }

    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

void sub_1A9078A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id boringssl_psk_cache_copy_first_psk(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = __Block_byref_object_copy__2;
    v8 = __Block_byref_object_dispose__2;
    v9 = 0;
    sec_array_apply();
    v2 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A9078B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void boringssl_psk_cache_set_selection_block_and_queue(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a1 && a2 && v6)
  {
    v10 = v6;
    v7 = a1;
    v8 = MEMORY[0x1AC57F4F0](a2);
    v9 = *(v7 + 3);
    *(v7 + 3) = v8;

    objc_storeStrong(v7 + 4, a3);
    v6 = v10;
  }
}

id boringssl_psk_cache_copy_psk_object_array(void *a1)
{
  v1 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = xpc_array_create(0, 0);
  sec_array_apply();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void sub_1A9078CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __boringssl_psk_cache_copy_psk_object_array_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = boringssl_psk_copy_xpc_object(a3);
  xpc_array_set_value(*(*(*(a1 + 32) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL, v4);

  return 1;
}

uint64_t boringssl_psk_cache_clear_context(uint64_t result)
{
  if (result)
  {
    *(result + 16) = 0;
    return MEMORY[0x1EEE66BB8](result);
  }

  return result;
}

uint64_t __boringssl_psk_cache_lookup_psk_inner_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = boringssl_psk_matches_identity_hint(v5, *(a1 + 32));
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return v6 ^ 1u;
}

uint64_t des_cbc_ede3_init_key(uint64_t a1, void *key, void *iv, int a4)
{
  cryptorRef = 0;
  v5 = CCCryptorCreate(a4 == 0, 2u, 0, key, *(a1 + 24), iv, &cryptorRef);
  result = 0;
  if (!v5)
  {
    *(a1 + 8) = cryptorRef;
    return 1;
  }

  return result;
}

BOOL des_ede3_cbc_cipher(uint64_t a1, void *a2, const void *a3, size_t a4)
{
  v4 = *(a1 + 8);
  if (v4 && !CCCryptorReset(*(a1 + 8), (a1 + 52)) && ((dataOutMoved = 0, !CCCryptorUpdate(v4, a3, a4, a2, a4, &dataOutMoved)) ? (v8 = dataOutMoved == a4) : (v8 = 0), v8))
  {
    return CCCryptorGetIV() == 0;
  }

  else
  {
    return 0;
  }
}

_CCCryptor *des_cleanup(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CCCryptorRelease(result);
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t pkey_ed25519_keygen(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = OPENSSL_malloc(0x41uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  evp_pkey_set_method(a2, &ed25519_asn1_meth);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v5;
  v8[1] = v5;
  ED25519_keypair(v8, v4);
  v6 = 1;
  *(v4 + 64) = 1;
  OPENSSL_free(*(a2 + 8));
  *(a2 + 8) = v4;
  return v6;
}

uint64_t pkey_ed25519_sign_message(uint64_t a1, _BYTE *a2, void *a3, const void *a4, size_t a5)
{
  v5 = *(*(a1 + 16) + 8);
  if (!v5[64])
  {
    v7 = 130;
    v8 = 49;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  if (*a3 <= 0x3FuLL)
  {
    v7 = 100;
    v8 = 59;
LABEL_6:
    ERR_put_error(6, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519.c", v8);
    return 0;
  }

  result = ED25519_sign(a2, a4, a5, v5);
  if (result)
  {
LABEL_8:
    *a3 = 64;
    return 1;
  }

  return result;
}

uint64_t pkey_ed25519_verify_message(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const void *a4, size_t a5)
{
  if (a3 == 64 && ED25519_verify(a4, a5, a2, (*(*(a1 + 16) + 8) + 32)))
  {
    return 1;
  }

  ERR_put_error(6, 0, 131, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519.c", 77);
  return 0;
}

int OBJ_cmp(const ASN1_OBJECT *a, const ASN1_OBJECT *b)
{
  length = a->length;
  v3 = b->length;
  if (length < v3)
  {
    return -1;
  }

  if (length > v3)
  {
    return 1;
  }

  if (length)
  {
    return memcmp(a->data, b->data, length);
  }

  return 0;
}

int OBJ_obj2nid(const ASN1_OBJECT *o)
{
  if (o)
  {
    v1 = o;
    LODWORD(o) = o->nid;
    if (!o)
    {
      CRYPTO_MUTEX_lock_read(&global_added_lock);
      if (global_added_by_data)
      {
        v2 = OPENSSL_lh_retrieve(global_added_by_data, v1, lh_ASN1_OBJECT_call_hash_func, lh_ASN1_OBJECT_call_cmp_func);
        if (v2)
        {
          v3 = v2;
          CRYPTO_MUTEX_unlock_read(&global_added_lock);
          v4 = (v3 + 16);
LABEL_9:
          LODWORD(o) = *v4;
          return o;
        }
      }

      CRYPTO_MUTEX_unlock_read(&global_added_lock);
      o = bsearch(v1, &kNIDsInOIDOrder, 0x371uLL, 2uLL, obj_cmp);
      if (o)
      {
        v5 = LOWORD(o->sn) - 1;
        if (v5 >= 0x3C5)
        {
          abort();
        }

        v4 = &kObjects[5 * v5 + 2];
        goto LABEL_9;
      }
    }
  }

  return o;
}

uint64_t obj_cmp(const ASN1_OBJECT *a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C5)
  {
    abort();
  }

  return OBJ_cmp(a1, &kObjects[5 * v3]);
}

uint64_t boringssl_context_set_internal_error(uint64_t result, int a2)
{
  if (result && *result == -1252936367)
  {
    v2 = *(result + 8);
    if (v2)
    {
      *(v2 + 288) = a2;
    }
  }

  return result;
}

uint64_t boringssl_context_get_peer_hostname(uint64_t a1, const char **a2, size_t *a3)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3)
  {
    if (a2)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 392);
        if (v8 && (servername = SSL_get_servername(v8, 0)) != 0)
        {
          v10 = servername;
          v11 = strnlen(servername, 0xFFFFuLL);
          result = 0;
          *a3 = v11;
          *a2 = v10;
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

uint64_t boringssl_context_set_psk_identity_hint(uint64_t a1, void *a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = a2[1];
      if (v5)
      {
        if (*a2)
        {
          v6 = *(v4 + 392);
          if (v6)
          {
            if (SSL_use_psk_identity_hint(v6, v5) == 1)
            {
              return 0;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t boringssl_session_set_quic_early_data_context(uint64_t a1, char *a2, unint64_t a3)
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

  if (a2 == 0 || a3 == 0)
  {
    a3 = 32;
    a2 = "Default QUIC Early Data Context";
  }

  if (SSL_set_quic_early_data_context(v4, a2, a3) == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t boringssl_session_get_quic_early_data_context(uint64_t a1, void *a2)
{
  if (a1 && *a1 == -1252936367 && (v2 = *(a1 + 8)) != 0 && (v3 = *(v2 + 392)) != 0)
  {
    return SSL_get_quic_early_data_context(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t boringssl_context_zlib_compress_data(const SSL *a1, uint64_t a2, uint64_t a3, uLong a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = SSL_get_ex_data(a1, 0);
  if (!v7 || *v7 != -1252936367)
  {
    return 0;
  }

  v8 = 0;
  if (a2)
  {
    v9 = v7[1];
    if (v9)
    {
      *(v9 + 551) |= 0x80u;
      *(v9 + 328) = 1;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __boringssl_context_zlib_compress_data_block_invoke;
      v11[3] = &__block_descriptor_48_e12_B24__0r_8Q16lu40l8;
      v11[4] = a2;
      v11[5] = v9;
      return boringssl_helper_zlib_compress_data(v9, a3, a4, v11);
    }
  }

  return v8;
}

uint64_t boringssl_context_zlib_uncompress_data(const SSL *a1, void *a2, size_t a3, char *a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v9 = SSL_get_ex_data(a1, 0);
  if (!v9 || *v9 != -1252936367)
  {
    return 0;
  }

  v10 = 0;
  if (a3)
  {
    if (a2)
    {
      v11 = v9[1];
      if (v11)
      {
        v12 = malloc_type_malloc(a3, 0x100004077774924uLL);
        if (v12)
        {
          v13 = v12;
          v36 = 0;
          v37 = &v36;
          v38 = 0x2020000000;
          v39 = 0;
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __boringssl_context_zlib_uncompress_data_block_invoke;
          v35[3] = &unk_1E78697B8;
          v35[4] = &v36;
          v35[5] = a3;
          v35[6] = v11;
          v35[7] = v12;
          if (boringssl_helper_zlib_decompress_data(v11, a4, a5, v35))
          {
            if (v37[3] == a3)
            {
              *a2 = CRYPTO_BUFFER_new(v13, a3, 0);
              free(v13);
              *(v11 + 551) |= 0x80u;
              v10 = 1;
              *(v11 + 328) = 1;
LABEL_40:
              _Block_object_dispose(&v36, 8);
              return v10;
            }

            WeakRetained = objc_loadWeakRetained((v11 + 16));
            if (!WeakRetained || (v22 = objc_loadWeakRetained((v11 + 16)), v23 = (v22[435] & 1) == 0, v22, WeakRetained, v23))
            {
              v24 = objc_loadWeakRetained((v11 + 16));
              if (v24)
              {
                v25 = objc_loadWeakRetained((v11 + 16));
                v26 = (v25[435] & 1) == 0;
              }

              else
              {
                v26 = 1;
              }

              if (g_boringssl_log && v26)
              {
                v30 = g_boringssl_log;
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = objc_loadWeakRetained((v11 + 16));
                  if (v31)
                  {
                    a4 = objc_loadWeakRetained((v11 + 16));
                    v32 = a4 + 351;
                  }

                  else
                  {
                    v32 = &unk_1A9098A9F;
                  }

                  v33 = objc_loadWeakRetained((v11 + 16));
                  v34 = v37[3];
                  *buf = 136447490;
                  v41 = "boringssl_context_zlib_uncompress_data";
                  v42 = 1024;
                  v43 = 801;
                  v44 = 2082;
                  v45 = v32;
                  v46 = 2048;
                  v47 = v33;
                  v48 = 2048;
                  v49 = a3;
                  v50 = 2048;
                  v51 = v34;
                  _os_log_error_impl(&dword_1A8FF5000, v30, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Incorrect uncompressed length. Expected %zu, got %zu", buf, 0x3Au);

                  if (v31)
                  {
                  }
                }
              }
            }
          }

          else
          {
            v15 = objc_loadWeakRetained((v11 + 16));
            if (!v15 || (v16 = objc_loadWeakRetained((v11 + 16)), v17 = (v16[435] & 1) == 0, v16, v15, v17))
            {
              v18 = objc_loadWeakRetained((v11 + 16));
              if (v18)
              {
                v19 = objc_loadWeakRetained((v11 + 16));
                v20 = (v19[435] & 1) == 0;
              }

              else
              {
                v20 = 1;
              }

              if (g_boringssl_log && v20)
              {
                v28 = g_boringssl_log;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  boringssl_context_zlib_uncompress_data_cold_1();
                }
              }
            }
          }

          v10 = 0;
          goto LABEL_40;
        }

        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_zlib_uncompress_data_cold_2();
        }

        return 0;
      }
    }
  }

  return v10;
}

void sub_1A9079960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t boringssl_context_enable_keylog(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v1 = *(result + 8);
      if (v1)
      {
        result = *(v1 + 400);
        if (result)
        {
          return SSL_CTX_set_keylog_callback(result, boringssl_context_keylog_handler);
        }
      }
    }
  }

  return result;
}

void boringssl_context_keylog_handler(const SSL *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = SSL_get_ex_data(a1, 0);
    if (v2)
    {
      if (*v2 == -1252936367)
      {
        v3 = v2[1];
        if (v3)
        {
          WeakRetained = objc_loadWeakRetained((v3 + 16));
          if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained((v3 + 16)), v7 = v6[435], v6, v5, (v7 & 1) == 0))
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
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
                {
                  boringssl_context_keylog_handler_cold_1();
                }
              }
            }
          }
        }
      }
    }
  }
}

_DWORD *boringssl_context_set_raw_public_key_certificate(_DWORD *result, CFArrayRef theArray, int a3)
{
  if (result)
  {
    v3 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (theArray)
      {
        v5 = *(v3 + 1);
        if (v5)
        {
          if (CFArrayGetCount(theArray) < 1)
          {
            return 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            result = CFDataGetLength(ValueAtIndex);
            if (result)
            {
              v8 = result;
              result = CFDataGetBytePtr(ValueAtIndex);
              if (result)
              {
                v9 = result;
                v10 = *(v5 + 392);
                if (v10)
                {
                  if (a3)
                  {
                    v11 = SSL_use_server_raw_public_key_certificate(v10, v9, v8);
                  }

                  else
                  {
                    v11 = SSL_use_client_raw_public_key_certificate(v10, v9, v8);
                  }
                }

                else
                {
                  v12 = *(v5 + 400);
                  if (a3)
                  {
                    v11 = SSL_CTX_use_server_raw_public_key_certificate(v12, v9, v8);
                  }

                  else
                  {
                    v11 = SSL_CTX_use_client_raw_public_key_certificate(v12, v9, v8);
                  }
                }

                return (v11 == 1);
              }
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

uint64_t boringssl_context_set_experiment_identifier(uint64_t result, char *__s1)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        v4 = *(v2 + 88);
        if (v4)
        {
          free(v4);
          *(v2 + 88) = 0;
        }

        *(v2 + 88) = strdup(__s1);
        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *boringssl_context_copy_peer_sct_list_from_extension(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = (a3 - 2);
    if (!v9)
    {
LABEL_37:
      if (!CFArrayGetCount(v8))
      {
        goto LABEL_72;
      }

      goto LABEL_74;
    }

    v10 = a2 + 1;
    while (1)
    {
      v12 = *v10;
      v11 = (v10 + 1);
      v13 = __rev16(v12);
      if (v9 < v13 + 2)
      {
        if (v5)
        {
          WeakRetained = objc_loadWeakRetained(v5 + 2);
          if (WeakRetained)
          {
            v35 = WeakRetained;
            v36 = objc_loadWeakRetained(v5 + 2);
            v37 = v36[435];

            if (v37)
            {
              goto LABEL_72;
            }
          }

          v38 = objc_loadWeakRetained(v5 + 2);
          if (v38)
          {
            v39 = objc_loadWeakRetained(v5 + 2);
            v40 = (v39[435] & 1) == 0;
          }

          else
          {
            v40 = 1;
          }
        }

        else
        {
          v40 = 1;
        }

        if (v40 && g_boringssl_log)
        {
          v49 = g_boringssl_log;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            if (v5)
            {
              v40 = objc_loadWeakRetained(v5 + 2);
              v56 = v40 != 0;
              if (v40)
              {
                v9 = objc_loadWeakRetained(v5 + 2);
                v58 = v9 + 351;
              }

              else
              {
                v58 = &unk_1A9098A9F;
              }

              v57 = objc_loadWeakRetained(v5 + 2);
            }

            else
            {
              v56 = 0;
              v57 = 0;
              v58 = &unk_1A9098A9F;
            }

            *buf = 136446978;
            v65 = "boringssl_context_copy_peer_sct_list_from_extension";
            v66 = 1024;
            v67 = 988;
            v68 = 2082;
            v69 = v58;
            v70 = 2048;
            v71 = v57;
            _os_log_error_impl(&dword_1A8FF5000, v49, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Received incorrectly encoded SerializedSCT list", buf, 0x26u);
            if (v5)
            {
            }

            if (v56)
            {
            }

            if (v5)
            {
              goto LABEL_108;
            }
          }

          goto LABEL_71;
        }

LABEL_72:
        CFRelease(v8);
LABEL_73:
        v8 = 0;
        goto LABEL_74;
      }

      if (!v5)
      {
        goto LABEL_15;
      }

      v14 = objc_loadWeakRetained(v5 + 2);
      if (v14)
      {
        v15 = v14;
        v16 = objc_loadWeakRetained(v5 + 2);
        v17 = v16[435];

        if (v17)
        {
          v21 = CFDataCreate(v6, v11, v13);
          if (!v21)
          {
            goto LABEL_46;
          }

          goto LABEL_19;
        }
      }

      v18 = objc_loadWeakRetained(v5 + 2);
      if (v18)
      {
        v19 = objc_loadWeakRetained(v5 + 2);
        v20 = (v19[435] & 1) == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
LABEL_15:
        if (g_boringssl_log)
        {
          v22 = g_boringssl_log;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            if (v5)
            {
              v26 = objc_loadWeakRetained(v5 + 2);
              v63 = v26 != 0;
              v25 = &unk_1A9098A9F;
              v62 = v26;
              if (v26)
              {
                v60 = objc_loadWeakRetained(v5 + 2);
                v25 = v60 + 351;
              }

              v61 = objc_loadWeakRetained(v5 + 2);
              v24 = v61;
            }

            else
            {
              v63 = 0;
              v24 = 0;
              v25 = &unk_1A9098A9F;
            }

            *buf = 136447234;
            v65 = "boringssl_context_copy_peer_sct_list_from_extension";
            v66 = 1024;
            v67 = 994;
            v68 = 2082;
            v69 = v25;
            v70 = 2048;
            v71 = v24;
            v72 = 1024;
            v73 = v13;
            _os_log_debug_impl(&dword_1A8FF5000, v22, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] SerializedSCT length %d", buf, 0x2Cu);
            if (v5)
            {
            }

            if (v63)
            {
            }

            if (v5)
            {
            }
          }
        }
      }

      v21 = CFDataCreate(v6, v11, v13);
      if (!v21)
      {
        if (!v5)
        {
          v48 = 0;
          v40 = 1;
          goto LABEL_60;
        }

LABEL_46:
        v41 = objc_loadWeakRetained(v5 + 2);
        if (!v41 || (v42 = v41, v43 = objc_loadWeakRetained(v5 + 2), v44 = v43[435], v43, v42, (v44 & 1) == 0))
        {
          v45 = objc_loadWeakRetained(v5 + 2);
          if (v45)
          {
            v46 = objc_loadWeakRetained(v5 + 2);
            v40 = (v46[435] & 1) == 0;
          }

          else
          {
            v40 = 1;
          }

          v48 = 1;
LABEL_60:
          if (v40 && g_boringssl_log)
          {
            v49 = g_boringssl_log;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              if (v48)
              {
                v40 = objc_loadWeakRetained(v5 + 2);
                v50 = v40 != 0;
                if (v40)
                {
                  v9 = objc_loadWeakRetained(v5 + 2);
                  v51 = v9 + 351;
                }

                else
                {
                  v51 = &unk_1A9098A9F;
                }

                v59 = objc_loadWeakRetained(v5 + 2);
              }

              else
              {
                v50 = 0;
                v59 = 0;
                v51 = &unk_1A9098A9F;
              }

              *buf = 136446978;
              v65 = "boringssl_context_copy_peer_sct_list_from_extension";
              v66 = 1024;
              v67 = 997;
              v68 = 2082;
              v69 = v51;
              v70 = 2048;
              v71 = v59;
              _os_log_error_impl(&dword_1A8FF5000, v49, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] CFDataCreate failed", buf, 0x26u);
              if (v48)
              {

                if (v50)
                {
                  goto LABEL_107;
                }

LABEL_104:
                if (v48)
                {
LABEL_108:
                }
              }

              else
              {
                if (!v50)
                {
                  goto LABEL_104;
                }

LABEL_107:

                if (v48)
                {
                  goto LABEL_108;
                }
              }
            }

LABEL_71:

            goto LABEL_72;
          }
        }

        goto LABEL_72;
      }

LABEL_19:
      v23 = v21;
      CFArrayAppendValue(v8, v21);
      CFRelease(v23);
      v10 = &v11[v13];
      v9 += -v13 - 2;
      if (!v9)
      {
        goto LABEL_37;
      }
    }
  }

  if (v5)
  {
    v27 = objc_loadWeakRetained(v5 + 2);
    if (v27)
    {
      v28 = v27;
      v29 = objc_loadWeakRetained(v5 + 2);
      v30 = v29[435];

      if (v30)
      {
        goto LABEL_73;
      }
    }

    v31 = objc_loadWeakRetained(v5 + 2);
    if (v31)
    {
      v32 = objc_loadWeakRetained(v5 + 2);
      v33 = (v32[435] & 1) == 0;
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 1;
  }

  v8 = 0;
  if (v33 && g_boringssl_log)
  {
    v47 = g_boringssl_log;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        v33 = objc_loadWeakRetained(v5 + 2);
        v53 = v33 != 0;
        if (v33)
        {
          a2 = objc_loadWeakRetained(v5 + 2);
          v55 = a2 + 351;
        }

        else
        {
          v55 = &unk_1A9098A9F;
        }

        v54 = objc_loadWeakRetained(v5 + 2);
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = &unk_1A9098A9F;
      }

      *buf = 136446978;
      v65 = "boringssl_context_copy_peer_sct_list_from_extension";
      v66 = 1024;
      v67 = 977;
      v68 = 2082;
      v69 = v55;
      v70 = 2048;
      v71 = v54;
      _os_log_error_impl(&dword_1A8FF5000, v47, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] CFArrayCreateMutable failed", buf, 0x26u);
      if (v5)
      {
      }

      if (v53)
      {
      }

      if (v5)
      {
      }
    }

    goto LABEL_73;
  }

LABEL_74:

  return v8;
}

uint64_t boringssl_context_select_alpn_callback(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  *a3 = 0;
  if (a6)
  {
    if (*a6 == -1252936367)
    {
      v6 = *(a6 + 8);
      if (v6)
      {
        v9 = boringssl_helper_create_protocol_list_from_encoded_list(a4, a5);
        if (v9)
        {
          boringssl_helper_find_first_overlapping_protocol(*(v6 + 56), v9, a2, a3);
        }
      }
    }
  }

  return 0;
}

uint64_t boringssl_context_set_alpn_data(uint64_t a1, size_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 == -1252936367)
  {
    v4 = *(a1 + 8);
    v5 = !v4 || a3 == 0;
    if (!v5 && a2 != 0)
    {
      v7 = boringssl_helper_create_protocol_list_from_encoded_list(a3, a2);
      v8 = *(v4 + 56);
      *(v4 + 56) = v7;

      v9 = *(v4 + 56);
      if (v9)
      {
        return (boringssl_context_set_alpn_protocol_list(a1, v9, 0) - 1);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t boringssl_context_set_allow_unknown_alpn_protos(uint64_t a1, int a2)
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
  if (!v2 || !*(v2 + 392))
  {
    return 0xFFFFFFFFLL;
  }

  SSL_CTX_set_allow_unknown_alpn_protos(*(v2 + 400), a2);
  return 0;
}

uint64_t boringssl_context_set_client_auth(uint64_t a1, int a2)
{
  if (!a1 || *a1 != -1252936367 || !*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return boringssl_context_set_verify_mode(a1, v2);
}

uint64_t boringssl_context_set_signed_cert_timestamp_list(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_29;
  }

  v5 = 0;
  if (!v3)
  {
    goto LABEL_30;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_30;
  }

  size = dispatch_data_get_size(v3);
  buffer_from_dispatch_data = boringssl_helper_create_buffer_from_dispatch_data(v4);
  if (buffer_from_dispatch_data)
  {
    v9 = buffer_from_dispatch_data;
    v10 = *(v6 + 392);
    if (v10)
    {
      if (SSL_set_signed_cert_timestamp_list(v10, v9, size))
      {
        v5 = 1;
        goto LABEL_30;
      }

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
        if (v24 && g_boringssl_log)
        {
          v25 = g_boringssl_log;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_signed_cert_timestamp_list_cold_1();
          }

LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      free(v9);
    }

LABEL_29:
    v5 = 0;
    goto LABEL_30;
  }

  v11 = objc_loadWeakRetained((v6 + 16));
  if (v11)
  {
    v12 = v11;
    v13 = objc_loadWeakRetained((v6 + 16));
    v14 = v13[435];

    if (v14)
    {
      goto LABEL_29;
    }
  }

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

  v5 = 0;
  if (v17 && g_boringssl_log)
  {
    v25 = g_boringssl_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_signed_cert_timestamp_list_cold_2();
    }

    goto LABEL_28;
  }

LABEL_30:

  return v5;
}

uint64_t boringssl_context_set_ocsp_response(uint64_t a1, uint64_t a2)
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

  if (SSL_set_ocsp_response(v3, *(a2 + 8), *a2))
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained((v2 + 16));
    v8 = v7[435];

    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = objc_loadWeakRetained((v2 + 16));
  if (v9)
  {
    v10 = objc_loadWeakRetained((v2 + 16));
    v11 = (v10[435] & 1) == 0;
  }

  else
  {
    v11 = 1;
  }

  result = 0xFFFFFFFFLL;
  if (v11 && g_boringssl_log)
  {
    v12 = g_boringssl_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_ocsp_response_cold_1();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t boringssl_context_set_mtu(uint64_t a1, unsigned int a2)
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

  v3 = *(v2 + 392);
  if (!v3 || (*(v2 + 548) & 0x20) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (SSL_set_mtu(v3, a2) == 1)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t __boringssl_context_copy_global_trust_queue_for_qos_block_invoke(uint64_t a1)
{
  queue_for_qos = boringssl_context_create_queue_for_qos(*(a1 + 32), "com.apple.network.boringssl.user_interactive_qos_trust_queue", QOS_CLASS_USER_INTERACTIVE);
  boringssl_context_copy_global_trust_queue_for_qos_userInteractiveQueue = queue_for_qos;

  return MEMORY[0x1EEE66BB8](queue_for_qos);
}

dispatch_queue_t boringssl_context_create_queue_for_qos(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  if (v7)
  {
    goto LABEL_2;
  }

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v6 + 2);
    if (WeakRetained)
    {
      v11 = WeakRetained;
      v12 = objc_loadWeakRetained(v6 + 2);
      v13 = v12[435];

      if (v13)
      {
        goto LABEL_2;
      }
    }

    v14 = objc_loadWeakRetained(v6 + 2);
    if (v14)
    {
      v15 = objc_loadWeakRetained(v6 + 2);
      v16 = (v15[435] & 1) == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v16 = 1;
  }

  if (g_boringssl_log)
  {
    v24 = g_boringssl_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v16 = objc_loadWeakRetained(v6 + 2);
        v26 = v16 != 0;
        if (v16)
        {
          v3 = objc_loadWeakRetained(v6 + 2);
          v28 = v3 + 351;
        }

        else
        {
          v28 = &unk_1A9098A9F;
        }

        v27 = objc_loadWeakRetained(v6 + 2);
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = &unk_1A9098A9F;
      }

      *buf = 136447490;
      v34 = "boringssl_context_create_queue_for_qos";
      v35 = 1024;
      v36 = 1586;
      v37 = 2082;
      v38 = v28;
      v39 = 2048;
      v40 = v27;
      v41 = 1024;
      *v42 = a3;
      *&v42[4] = 2082;
      *&v42[6] = a2;
      _os_log_error_impl(&dword_1A8FF5000, v24, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to set the %u QoS class attribute for queue %{public}s.", buf, 0x36u);
      if (v6)
      {
      }

      if (v26)
      {
      }

      if (v6)
      {
      }
    }
  }

LABEL_2:
  v8 = dispatch_queue_create(a2, v7);
  if (v8)
  {
    goto LABEL_3;
  }

  if (v6)
  {
    v17 = objc_loadWeakRetained(v6 + 2);
    if (v17)
    {
      v18 = v17;
      v19 = objc_loadWeakRetained(v6 + 2);
      v20 = v19[435];

      if (v20)
      {
        goto LABEL_3;
      }
    }

    v21 = objc_loadWeakRetained(v6 + 2);
    if (v21)
    {
      v22 = objc_loadWeakRetained(v6 + 2);
      v23 = (v22[435] & 1) == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = 1;
  }

  if (g_boringssl_log)
  {
    v25 = g_boringssl_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v23 = objc_loadWeakRetained(v6 + 2);
        v29 = v23 != 0;
        if (v23)
        {
          v32 = objc_loadWeakRetained(v6 + 2);
          v31 = v32 + 351;
        }

        else
        {
          v31 = &unk_1A9098A9F;
        }

        v30 = objc_loadWeakRetained(v6 + 2);
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = &unk_1A9098A9F;
      }

      *buf = 136447490;
      v34 = "boringssl_context_create_queue_for_qos";
      v35 = 1024;
      v36 = 1590;
      v37 = 2082;
      v38 = v31;
      v39 = 2048;
      v40 = v30;
      v41 = 2082;
      *v42 = a2;
      *&v42[8] = 1024;
      *&v42[10] = a3;
      _os_log_error_impl(&dword_1A8FF5000, v25, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to create queue %{public}s with QoS class %u.", buf, 0x36u);
      if (v6)
      {
      }

      if (v29)
      {
      }

      if (v6)
      {
      }
    }
  }

LABEL_3:

  return v8;
}

uint64_t __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_2(uint64_t a1)
{
  queue_for_qos = boringssl_context_create_queue_for_qos(*(a1 + 32), "com.apple.network.boringssl.user_initiated_qos_trust_queue", QOS_CLASS_USER_INITIATED);
  boringssl_context_copy_global_trust_queue_for_qos_userInitiatedQueue = queue_for_qos;

  return MEMORY[0x1EEE66BB8](queue_for_qos);
}

uint64_t __boringssl_context_copy_global_trust_queue_for_qos_block_invoke_3(uint64_t a1)
{
  queue_for_qos = boringssl_context_create_queue_for_qos(*(a1 + 32), "com.apple.network.boringssl.unspecified_qos_trust_queue", QOS_CLASS_UNSPECIFIED);
  boringssl_context_copy_global_trust_queue_for_qos_defaultQueue = queue_for_qos;

  return MEMORY[0x1EEE66BB8](queue_for_qos);
}

void boringssl_context_async(uint64_t a1, dispatch_queue_t queue, dispatch_block_t block)
{
  if (a1 && queue)
  {
    if (block)
    {
      ++*(a1 + 496);
      dispatch_async(queue, block);
    }
  }
}

uint64_t __boringssl_context_evaluate_trust_async_internal_block_invoke_196(uint64_t a1)
{
  *(*(a1 + 32) + 551) |= 0x20u;
  *(*(a1 + 48) + 550) &= ~8u;
  boringssl_context_process_trust_result(*(a1 + 56), *(a1 + 64), *(a1 + 72));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __boringssl_context_evaluate_trust_async_internal_block_invoke_200(void *a1)
{
  *(a1[4] + 551) |= 0x20u;
  *(a1[6] + 550) &= ~8u;
  return (*(a1[5] + 16))();
}

uint64_t boringssl_context_certificate_request_callback(SSL *a1, uint64_t a2)
{
  v3 = a2;
  v61 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*a2 == -1252936367 && (v4 = *(a2 + 8)) != 0)
    {
      *(v4 + 550) |= 0x10u;
      if ((*(v4 + 549) & 4) == 0)
      {
        v6 = *(v4 + 96);
        WeakRetained = objc_loadWeakRetained((v4 + 16));
        v8 = WeakRetained;
        if (v6)
        {
          if (!WeakRetained || (v9 = objc_loadWeakRetained((v4 + 16)), v10 = v9[435], v9, v8, (v10 & 1) == 0))
          {
            v11 = objc_loadWeakRetained((v4 + 16));
            if (v11)
            {
              v12 = objc_loadWeakRetained((v4 + 16));
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
                v34 = g_boringssl_log;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  boringssl_context_certificate_request_callback_cold_2();
                }
              }
            }
          }

          *(v4 + 549) |= 4u;
          return 1;
        }

        if (SSL_renegotiate_pending(a1))
        {
          if (v8)
          {
            nw_protocol_upcast();
            if (nw_protocol_get_input_handler())
            {
              v22 = nw_protocol_get_parameters();
              nw_protocol_upcast();
              v23 = nw_parameters_copy_protocol_options_legacy();
              if (v23)
              {
                v48 = MEMORY[0x1E69E9820];
                v49 = 3221225472;
                v50 = __boringssl_context_certificate_request_callback_block_invoke;
                v51 = &__block_descriptor_40_e9_B16__0_v8lu32l8;
                v52 = v4;
                nw_protocol_options_access_handle();
              }
            }
          }
        }

        if (*v3 == -1252936367 && (v24 = *(v3 + 8)) != 0 && *(v24 + 128) && *(v24 + 136) && (*(v24 + 551) & 4) == 0)
        {
          boringssl_session_update_metadata(v3, 0);
          v25 = MEMORY[0x1AC57F4F0](*(v4 + 128));
          v26 = v4;
          v27 = objc_loadWeakRetained((v4 + 16));
          if (!v27 || (v28 = v27, v29 = objc_loadWeakRetained((v4 + 16)), v30 = v29[435], v29, v28, (v30 & 1) == 0))
          {
            v31 = objc_loadWeakRetained((v4 + 16));
            if (v31)
            {
              v32 = objc_loadWeakRetained((v4 + 16));
              v33 = (v32[435] & 1) == 0;
            }

            else
            {
              v33 = 1;
            }

            if (v33)
            {
              if (g_boringssl_log)
              {
                v35 = g_boringssl_log;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = objc_loadWeakRetained((v4 + 16));
                  if (v36)
                  {
                    v2 = objc_loadWeakRetained((v4 + 16));
                    v37 = v2 + 351;
                  }

                  else
                  {
                    v37 = &unk_1A9098A9F;
                  }

                  v38 = objc_loadWeakRetained((v4 + 16));
                  *buf = 136446978;
                  v54 = "boringssl_context_certificate_request_callback";
                  v55 = 1024;
                  v56 = 1891;
                  v57 = 2082;
                  v58 = v37;
                  v59 = 2048;
                  v60 = v38;
                  _os_log_impl(&dword_1A8FF5000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Asyncing for challenge block", buf, 0x26u);

                  if (v36)
                  {
                  }
                }
              }
            }
          }

          v39 = v26[17];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __boringssl_context_certificate_request_callback_block_invoke_213;
          v44[3] = &unk_1E78696D8;
          v47 = v3;
          v40 = v25;
          v46 = v40;
          v41 = v26;
          v42 = v41;
          v45 = v41;
          v43 = v41;
          if (v39)
          {
            ++v41[62];
            dispatch_async(v39, v44);
            v43 = v45;
          }

          v3 = 0xFFFFFFFFLL;
        }

        else
        {
          v3 = 1;
        }

        goto LABEL_37;
      }

      v15 = objc_loadWeakRetained((v4 + 16));
      if (v15)
      {
        v16 = v15;
        v17 = objc_loadWeakRetained((v4 + 16));
        v18 = v17[435];

        if (v18)
        {
          return 1;
        }
      }

      v19 = objc_loadWeakRetained((v4 + 16));
      if (v19)
      {
        v20 = objc_loadWeakRetained((v4 + 16));
        v21 = (v20[435] & 1) == 0;
      }

      else
      {
        v21 = 1;
      }

      v3 = 1;
      if (v21 && g_boringssl_log)
      {
        v8 = g_boringssl_log;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          boringssl_context_certificate_request_callback_cold_1();
        }

LABEL_37:
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t __boringssl_context_certificate_request_callback_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1AC57F4F0](*(a2 + 104));
  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = v4;

  objc_storeStrong((*(a1 + 32) + 136), *(a2 + 112));
  return 1;
}

void __boringssl_context_certificate_request_callback_block_invoke_213(void *a1)
{
  if (boringssl_session_get_state(a1[6]) <= 3 && (boringssl_session_is_cancelled(a1[6]) & 1) == 0)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = v2[64];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __boringssl_context_certificate_request_callback_block_invoke_2;
    v7[3] = &unk_1E78696B0;
    v5 = v2;
    v6 = a1[6];
    v8 = v5;
    v9 = v6;
    (*(v3 + 16))(v3, v4, v7);
  }
}

void __boringssl_context_certificate_request_callback_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  nw_queue_context_async_if_needed();
}

void __boringssl_context_certificate_request_callback_block_invoke_3(void *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if (boringssl_session_get_state(a1[6]) <= 3 && (boringssl_session_is_cancelled(a1[6]) & 1) == 0)
  {
    v12 = a1[4];
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained((v12 + 16));
      if (WeakRetained)
      {
        v14 = WeakRetained;
        v15 = objc_loadWeakRetained((a1[4] + 16));
        v16 = v15[435];

        if (v16)
        {
          goto LABEL_58;
        }
      }

      v17 = a1[4];
      if (v17)
      {
        v18 = objc_loadWeakRetained((v17 + 16));
        if (v18)
        {
          v19 = objc_loadWeakRetained((a1[4] + 16));
          v20 = (v19[435] & 1) == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
LABEL_30:
          if (!g_boringssl_log)
          {
            goto LABEL_58;
          }

          v28 = g_boringssl_log;
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_57;
          }

          v29 = a1[4];
          if (v29)
          {
            v20 = objc_loadWeakRetained((v29 + 16));
            v30 = a1[4];
            if (v20)
            {
              v31 = v30 != 0;
              if (v30)
              {
                v1 = objc_loadWeakRetained((v30 + 16));
                v30 = a1[4];
              }

              else
              {
                v1 = 0;
              }

              v34 = v1 + 351;
            }

            else
            {
              v31 = 0;
              v34 = &unk_1A9098A9F;
            }

            if (v30)
            {
              v32 = objc_loadWeakRetained((v30 + 16));
              v33 = 0;
            }

            else
            {
              v32 = 0;
              v33 = 1;
            }
          }

          else
          {
            v31 = 0;
            v32 = 0;
            v33 = 1;
            v34 = &unk_1A9098A9F;
          }

          v55 = 136446978;
          v56 = "boringssl_context_certificate_request_callback_block_invoke_3";
          v57 = 1024;
          v58 = 1900;
          v59 = 2082;
          v60 = v34;
          v61 = 2048;
          v62 = v32;
          _os_log_impl(&dword_1A8FF5000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Returning from challenge block", &v55, 0x26u);
          if (v33)
          {
            if (!v31)
            {
              goto LABEL_55;
            }
          }

          else
          {

            if (!v31)
            {
LABEL_55:
              if (!v29)
              {
LABEL_57:

                goto LABEL_58;
              }

LABEL_56:

              goto LABEL_57;
            }
          }

          if (!v29)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

LABEL_58:
        v35 = a1[5];
        if (v35)
        {
          v36 = boringssl_context_set_identity(a1[6], v35);
          v37 = a1[4];
          if (!v36)
          {
            if (!v37)
            {
              goto LABEL_68;
            }

            v38 = objc_loadWeakRetained((v37 + 16));
            if (v38)
            {
              v39 = v38;
              v40 = objc_loadWeakRetained((a1[4] + 16));
              v41 = v40[435];

              if (v41)
              {
                goto LABEL_77;
              }
            }

            v42 = a1[4];
            if (v42)
            {
              v43 = objc_loadWeakRetained((v42 + 16));
              if (v43)
              {
                v44 = objc_loadWeakRetained((a1[4] + 16));
                v45 = (v44[435] & 1) == 0;
              }

              else
              {
                v45 = 1;
              }

              if (!v45)
              {
                goto LABEL_77;
              }
            }

            else
            {
LABEL_68:
              v45 = 1;
            }

            if (!g_boringssl_log)
            {
LABEL_77:
              v47 = a1[4];
              v48 = *(v47 + 272);
              v21 = objc_loadWeakRetained((v47 + 16));
              (*(v48 + 16))(v48, v21, 0, 4294957486);
              goto LABEL_78;
            }

            v46 = g_boringssl_log;
            if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
LABEL_76:

              goto LABEL_77;
            }

            v49 = a1[4];
            if (v49)
            {
              v45 = objc_loadWeakRetained((v49 + 16));
              v54 = a1[4];
              if (v45)
              {
                v50 = v54 != 0;
                if (v54)
                {
                  v1 = objc_loadWeakRetained((v54 + 16));
                  v54 = a1[4];
                }

                else
                {
                  v1 = 0;
                }

                v53 = v1 + 351;
              }

              else
              {
                v50 = 0;
                v53 = &unk_1A9098A9F;
              }

              if (v54)
              {
                v51 = objc_loadWeakRetained((v54 + 16));
                v52 = 0;
              }

              else
              {
                v51 = 0;
                v52 = 1;
              }
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 1;
              v53 = &unk_1A9098A9F;
            }

            v55 = 136446978;
            v56 = "boringssl_context_certificate_request_callback_block_invoke";
            v57 = 1024;
            v58 = 1903;
            v59 = 2082;
            v60 = v53;
            v61 = 2048;
            v62 = v51;
            _os_log_error_impl(&dword_1A8FF5000, v46, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] boringssl_context_set_identity failed", &v55, 0x26u);
            if (v52)
            {
              if (!v50)
              {
                goto LABEL_93;
              }
            }

            else
            {

              if (!v50)
              {
LABEL_93:
                if (!v49)
                {
                  goto LABEL_76;
                }

                goto LABEL_97;
              }
            }

            if (!v49)
            {
              goto LABEL_76;
            }

LABEL_97:

            goto LABEL_76;
          }
        }

        else
        {
          v37 = a1[4];
        }

        *(v37 + 549) |= 4u;
        v21 = objc_loadWeakRetained((a1[4] + 16));
        nw_protocol_boringssl_handshake_negotiate(v21);
        goto LABEL_78;
      }
    }

    v20 = 1;
    goto LABEL_30;
  }

  v3 = a1[4];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = objc_loadWeakRetained((v3 + 16));
  if (v4)
  {
    v5 = v4;
    v6 = objc_loadWeakRetained((a1[4] + 16));
    v7 = v6[435];

    if (v7)
    {
      return;
    }
  }

  v8 = a1[4];
  if (!v8)
  {
LABEL_9:
    v11 = 1;
    goto LABEL_19;
  }

  v9 = objc_loadWeakRetained((v8 + 16));
  if (v9)
  {
    v10 = objc_loadWeakRetained((a1[4] + 16));
    v11 = (v10[435] & 1) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_19:
    if (!g_boringssl_log)
    {
      return;
    }

    v21 = g_boringssl_log;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v22 = a1[4];
    if (!v22)
    {
      v24 = 0;
      v25 = 0;
      v26 = 1;
      v27 = &unk_1A9098A9F;
      goto LABEL_39;
    }

    v11 = objc_loadWeakRetained((v22 + 16));
    v23 = a1[4];
    if (v11)
    {
      v24 = v23 != 0;
      if (v23)
      {
        v1 = objc_loadWeakRetained((v23 + 16));
        v23 = a1[4];
      }

      else
      {
        v1 = 0;
      }

      v27 = v1 + 351;
      if (v23)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v24 = 0;
      v27 = &unk_1A9098A9F;
      if (v23)
      {
LABEL_38:
        v25 = objc_loadWeakRetained((v23 + 16));
        v26 = 0;
LABEL_39:
        v55 = 136446978;
        v56 = "boringssl_context_certificate_request_callback_block_invoke";
        v57 = 1024;
        v58 = 1910;
        v59 = 2082;
        v60 = v27;
        v61 = 2048;
        v62 = v25;
        _os_log_impl(&dword_1A8FF5000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Cancelled during challenge block", &v55, 0x26u);
        if (v26)
        {
          if (!v24)
          {
            goto LABEL_41;
          }
        }

        else
        {

          if (!v24)
          {
LABEL_41:
            if (!v22)
            {
              goto LABEL_78;
            }

            goto LABEL_45;
          }
        }

        if (!v22)
        {
LABEL_78:

          return;
        }

LABEL_45:

        goto LABEL_78;
      }
    }

    v25 = 0;
    v26 = 1;
    goto LABEL_39;
  }
}

BOOL boringssl_context_set_identity(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!a1)
  {
    goto LABEL_58;
  }

  if (*a1 != -1252936367)
  {
    goto LABEL_58;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_58;
  }

  if (SSL_has_server_raw_public_key_certificate(*(v5 + 392)))
  {
    v6 = v4;
    v7 = v6;
    if (*a1 == -1252936367)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = boringssl_identity_create_from_identity_without_certificates(v6);
        v10 = *(v8 + 96);
        *(v8 + 96) = v9;

        if (*(v8 + 96))
        {
          WeakRetained = objc_loadWeakRetained((v8 + 16));
          if (!WeakRetained || (v12 = WeakRetained, v13 = objc_loadWeakRetained((v8 + 16)), v2 = v13[435], v13, v12, (v2 & 1) == 0))
          {
            v14 = objc_loadWeakRetained((v8 + 16));
            if (v14)
            {
              v15 = objc_loadWeakRetained((v8 + 16));
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
                v42 = g_boringssl_log;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  v43 = objc_loadWeakRetained((v8 + 16));
                  if (v43)
                  {
                    v2 = objc_loadWeakRetained((v8 + 16));
                    v44 = v2 + 351;
                  }

                  else
                  {
                    v44 = &unk_1A9098A9F;
                  }

                  v48 = objc_loadWeakRetained((v8 + 16));
                  *buf = 136446978;
                  *&buf[4] = "boringssl_context_set_identity_without_certificates";
                  v60 = 1024;
                  v61 = 2111;
                  v62 = 2082;
                  v63 = v44;
                  v64 = 2048;
                  v65 = v48;
                  _os_log_impl(&dword_1A8FF5000, v42, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Calling SSL_set_private_key_method", buf, 0x26u);

                  if (v43)
                  {
                  }
                }
              }
            }
          }

          SSL_set_private_key_method(*(v8 + 392), g_boringssl_private_key_methods);
          v30 = 1;
          goto LABEL_35;
        }
      }
    }

    goto LABEL_34;
  }

  v17 = sec_identity_copy_type();
  if (v17 == 2)
  {
    v31 = SSL_CREDENTIAL_new_SPAKE2PLUSV1();
    v7 = sec_identity_copy_SPAKE2PLUSV1_context();
    v58 = 0;
    *buf = 0;
    if (!boringssl_helper_dispatch_data_copyout_and_alloc(v7, buf, &v58))
    {
LABEL_34:
      v30 = 0;
LABEL_35:

      goto LABEL_59;
    }

    v32 = sec_identity_copy_SPAKE2PLUSV1_client_identity();
    v56 = 0;
    v57 = 0;
    if (!boringssl_helper_dispatch_data_copyout_and_alloc(v32, &v57, &v56))
    {
      if (*buf)
      {
        free(*buf);
        v30 = 0;
        *buf = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_87;
    }

    v33 = sec_identity_copy_SPAKE2PLUSV1_server_identity();
    v54 = 0;
    v55 = 0;
    if (boringssl_helper_dispatch_data_copyout_and_alloc(v33, &v55, &v54))
    {
      SSL_CREDENTIAL_set1_PAKE_identities(v31, *buf, v58, v57, v56, v55, v54);
      if (*buf)
      {
        free(*buf);
        *buf = 0;
      }

      if (v57)
      {
        free(v57);
        v57 = 0;
      }

      if (v55)
      {
        free(v55);
        v55 = 0;
      }

      if ((*(v5 + 548) & 0x10) != 0)
      {
        v34 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
        v52 = 0;
        v53 = 0;
        if (boringssl_helper_dispatch_data_copyout_and_alloc(v34, &v53, &v52))
        {
          v49 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
          v50 = 0;
          v51 = 0;
          if (boringssl_helper_dispatch_data_copyout_and_alloc(v49, &v51, &v50))
          {
            SSL_CREDENTIAL_set1_PAKE_server_password_record(v31, v53, v52, v51, v50);
            if (v53)
            {
              free(v53);
              v53 = 0;
            }

            if (v51)
            {
              free(v51);
            }

            goto LABEL_80;
          }

          if (v53)
          {
            free(v53);
            v53 = 0;
          }
        }
      }

      else
      {
        v34 = sec_identity_copy_SPAKE2PLUSV1_client_password_verifier();
        v52 = 0;
        v53 = 0;
        if (boringssl_helper_dispatch_data_copyout_and_alloc(v34, &v53, &v52))
        {
          SSL_CREDENTIAL_set1_PAKE_client_password_record(v31, v53, v52);
          if (v53)
          {
            free(v53);
          }

LABEL_80:

          v30 = SSL_add1_credential(*(v5 + 392), v31) == 1;
          SSL_CREDENTIAL_free(v31);
          *(v5 + 552) |= 0x40u;
          goto LABEL_86;
        }
      }
    }

    else
    {
      if (*buf)
      {
        free(*buf);
        *buf = 0;
      }

      if (v57)
      {
        free(v57);
        v30 = 0;
        v57 = 0;
LABEL_86:

LABEL_87:
        goto LABEL_35;
      }
    }

    v30 = 0;
    goto LABEL_86;
  }

  v18 = v17;
  if (v17 == 1)
  {
    v27 = boringssl_identity_create_from_identity(v4);
    v28 = *(v5 + 96);
    *(v5 + 96) = v27;

    v29 = *(v5 + 96);
    if (v29)
    {
      v30 = boringssl_context_install_identity(a1, v29);
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v19 = (v5 + 16);
  if (v18)
  {
    v35 = objc_loadWeakRetained(v19);
    if (!v35 || (v36 = v35, v37 = objc_loadWeakRetained((v5 + 16)), v38 = v37[435], v37, v36, (v38 & 1) == 0))
    {
      v39 = objc_loadWeakRetained((v5 + 16));
      if (v39)
      {
        v40 = objc_loadWeakRetained((v5 + 16));
        v41 = (v40[435] & 1) == 0;
      }

      else
      {
        v41 = 1;
      }

      v30 = 0;
      if (v41 && g_boringssl_log)
      {
        v46 = g_boringssl_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_set_identity_cold_2();
        }

        goto LABEL_58;
      }

      goto LABEL_59;
    }

LABEL_58:
    v30 = 0;
    goto LABEL_59;
  }

  v20 = objc_loadWeakRetained(v19);
  if (v20)
  {
    v21 = v20;
    v22 = objc_loadWeakRetained((v5 + 16));
    v23 = v22[435];

    if (v23)
    {
      goto LABEL_58;
    }
  }

  v24 = objc_loadWeakRetained((v5 + 16));
  if (v24)
  {
    v25 = objc_loadWeakRetained((v5 + 16));
    v26 = (v25[435] & 1) == 0;
  }

  else
  {
    v26 = 1;
  }

  v30 = 0;
  if (v26 && g_boringssl_log)
  {
    v45 = g_boringssl_log;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_identity_cold_1();
    }

    goto LABEL_58;
  }

LABEL_59:

  return v30;
}

uint64_t boringssl_context_set_identity_from_array(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 392))
      {
        v5 = boringssl_identity_create_from_identity_array(a2);
        v6 = *(v4 + 96);
        *(v4 + 96) = v5;

        v7 = *(v4 + 96);
        if (v7)
        {
          return (boringssl_context_install_identity(a1, v7) - 1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

BOOL boringssl_context_install_identity(uint64_t a1, void *a2)
{
  v70[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (*a1 != -1252936367)
  {
    goto LABEL_39;
  }

  v6 = 0;
  if (!v4)
  {
    goto LABEL_40;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_40;
  }

  if (!*(v7 + 392))
  {
LABEL_39:
    v6 = 0;
    goto LABEL_40;
  }

  v8 = boringssl_identity_copy_certificate_chain(v4);
  certificate_buffer_chain_from_certificate_chain = boringssl_helper_create_certificate_buffer_chain_from_certificate_chain(v8);

  if (!certificate_buffer_chain_from_certificate_chain)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 16));
    if (WeakRetained)
    {
      v22 = WeakRetained;
      v23 = objc_loadWeakRetained((v7 + 16));
      v24 = v23[435];

      if (v24)
      {
        goto LABEL_39;
      }
    }

    v25 = objc_loadWeakRetained((v7 + 16));
    if (v25)
    {
      v26 = objc_loadWeakRetained((v7 + 16));
      v27 = (v26[435] & 1) == 0;
    }

    else
    {
      v27 = 1;
    }

    v6 = 0;
    if (!v27 || !g_boringssl_log)
    {
      goto LABEL_40;
    }

    v38 = g_boringssl_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_install_identity_cold_2();
    }

LABEL_38:

    goto LABEL_39;
  }

  v10 = EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain);
  v11 = malloc_type_malloc(8 * v10, 0x66D395AFuLL);
  if (!v11)
  {
    OPENSSL_sk_pop_free_ex(certificate_buffer_chain_from_certificate_chain, sk_CRYPTO_BUFFER_call_free_func_0, CRYPTO_BUFFER_free);
    v28 = objc_loadWeakRetained((v7 + 16));
    if (v28)
    {
      v29 = v28;
      v30 = objc_loadWeakRetained((v7 + 16));
      v31 = v30[435];

      if (v31)
      {
        goto LABEL_39;
      }
    }

    v32 = objc_loadWeakRetained((v7 + 16));
    if (v32)
    {
      v33 = objc_loadWeakRetained((v7 + 16));
      v34 = (v33[435] & 1) == 0;
    }

    else
    {
      v34 = 1;
    }

    v6 = 0;
    if (!v34 || !g_boringssl_log)
    {
      goto LABEL_40;
    }

    v38 = g_boringssl_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_install_identity_cold_1();
    }

    goto LABEL_38;
  }

  v12 = v11;
  if (EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain))
  {
    v13 = 0;
    do
    {
      v12[v13] = OPENSSL_sk_value(certificate_buffer_chain_from_certificate_chain, v13);
      ++v13;
    }

    while (v13 < EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain));
  }

  v14 = objc_loadWeakRetained((v7 + 16));
  if (!v14 || (v15 = v14, v16 = objc_loadWeakRetained((v7 + 16)), v17 = v16[435], v16, v15, (v17 & 1) == 0))
  {
    v18 = objc_loadWeakRetained((v7 + 16));
    if (v18)
    {
      v19 = objc_loadWeakRetained((v7 + 16));
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
        v35 = g_boringssl_log;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_loadWeakRetained((v7 + 16));
          if (v36)
          {
            v2 = objc_loadWeakRetained((v7 + 16));
            v37 = v2 + 351;
          }

          else
          {
            v37 = &unk_1A9098A9F;
          }

          v40 = objc_loadWeakRetained((v7 + 16));
          *buf = 136447234;
          v62 = "boringssl_context_install_identity";
          v63 = 1024;
          v64 = 2070;
          v65 = 2082;
          v66 = v37;
          v67 = 2048;
          v68 = v40;
          v69 = 2048;
          v70[0] = EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain);
          _os_log_impl(&dword_1A8FF5000, v35, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Calling SSL_set_chain_and_key with %zu certificates", buf, 0x30u);

          if (v36)
          {
          }
        }
      }
    }
  }

  v41 = *(v7 + 392);
  v42 = EVP_MD_CTX_md(certificate_buffer_chain_from_certificate_chain);
  v43 = SSL_set_chain_and_key(v41, v12, v42, 0, g_boringssl_private_key_methods);
  v6 = v43 != 0;
  if (!v43)
  {
    error = ERR_get_error();
    v45 = error;
    v46 = ERR_reason_error_string(error);
    v47 = objc_loadWeakRetained((v7 + 16));
    if (!v47 || (v48 = v47, v49 = objc_loadWeakRetained((v7 + 16)), v50 = v49[435], v49, v48, (v50 & 1) == 0))
    {
      v51 = objc_loadWeakRetained((v7 + 16));
      if (v51)
      {
        v52 = objc_loadWeakRetained((v7 + 16));
        v53 = (v52[435] & 1) == 0;
      }

      else
      {
        v53 = 1;
      }

      if (v53)
      {
        if (g_boringssl_log)
        {
          v54 = g_boringssl_log;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = objc_loadWeakRetained((v7 + 16));
            if (v55)
            {
              v59 = objc_loadWeakRetained((v7 + 16));
              v60 = v59 + 351;
            }

            else
            {
              v60 = &unk_1A9098A9F;
            }

            v56 = objc_loadWeakRetained((v7 + 16));
            v57 = v56;
            *buf = 136447490;
            v62 = "boringssl_context_install_identity";
            if (v46)
            {
              v58 = v46;
            }

            else
            {
              v58 = &unk_1A9098A9F;
            }

            v63 = 1024;
            v64 = 2075;
            v65 = 2082;
            v66 = v60;
            v67 = 2048;
            v68 = v56;
            v69 = 1024;
            LODWORD(v70[0]) = v45;
            WORD2(v70[0]) = 2080;
            *(v70 + 6) = v58;
            _os_log_error_impl(&dword_1A8FF5000, v54, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] SSL_set_chain_and_key failed: %d %s", buf, 0x36u);

            if (v55)
            {
            }
          }
        }
      }
    }
  }

  OPENSSL_sk_pop_free_ex(certificate_buffer_chain_from_certificate_chain, sk_CRYPTO_BUFFER_call_free_func_0, CRYPTO_BUFFER_free);
  free(v12);
LABEL_40:

  return v6;
}

uint64_t boringssl_context_set_temporary_identity(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        if (v3)
        {
          v7 = *(v5 + 96);
          v6 = (v5 + 96);
          objc_storeStrong(v6 + 1, v7);
          v8 = boringssl_identity_create_from_identity(v4);
          v9 = *v6;
          *v6 = v8;

          if (*v6 && boringssl_context_install_identity(a1, *v6))
          {
            a1 = 1;
            goto LABEL_12;
          }

          objc_storeStrong(v6, v6[1]);
          v10 = v6[1];
          v6[1] = 0;
        }

        else
        {
          v11 = *(v5 + 104);
          if (v11)
          {
            objc_storeStrong((v5 + 96), v11);
            v12 = *(v5 + 104);
            *(v5 + 104) = 0;

            a1 = boringssl_context_install_identity(a1, *(v5 + 96));
            goto LABEL_12;
          }
        }
      }
    }

    a1 = 0;
  }

LABEL_12:

  return a1;
}

BOOL boringssl_context_set_external_identity(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_10;
  }

  v14 = 0;
  if (v12)
  {
    if (v11)
    {
      if (v10)
      {
        if (v9)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v16 = boringssl_identity_create_from_external_identity(v9, v10, v11, v12);
            v17 = *(v15 + 96);
            *(v15 + 96) = v16;

            v18 = *(v15 + 96);
            if (v18)
            {
              v14 = boringssl_context_install_identity(a1, v18);
              goto LABEL_11;
            }

LABEL_10:
            v14 = 0;
          }
        }
      }
    }
  }

LABEL_11:

  return v14;
}