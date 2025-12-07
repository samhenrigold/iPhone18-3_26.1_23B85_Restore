bssl::SSLAEADContext *bssl::SSLAEADContext::CreatePlaceholderForQUIC@<X0>(bssl::SSLAEADContext **__return_ptr a1@<X8>, const ssl_cipher_st *this@<X0>)
{
  v4 = this;
  result = bssl::New<bssl::SSLAEADContext,ssl_cipher_st const*&>(&v4);
  *a1 = result;
  return result;
}

void std::unique_ptr<bssl::AES256RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    OPENSSL_free(v2);
  }
}

void *boringssl_context_set_encryption_secrets(const SSL *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = SSL_get_ex_data(a1, 0);
  if (result)
  {
    v6 = result;
    if (*result == -1252936367 && (v7 = result[1]) != 0)
    {
      boringssl_session_update_metadata(result, 0);
      WeakRetained = objc_loadWeakRetained((v7 + 16));
      if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((v7 + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
      {
        v12 = objc_loadWeakRetained((v7 + 16));
        if (v12)
        {
          v13 = objc_loadWeakRetained((v7 + 16));
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
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              boringssl_context_set_encryption_secrets_cold_1((v7 + 16), v6);
            }
          }
        }
      }

      return nw_protocol_options_access_handle();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *boringssl_context_set_write_secret(const SSL *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = SSL_get_ex_data(a1, 0);
  if (!v9 || *v9 != -1252936367 || !v9[1])
  {
    return 0;
  }

  return boringssl_context_set_encryption_secrets(a1, a2, 0, a4, a5);
}

const SSL *boringssl_session_get_negotiated_protocol_version(const SSL *result)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      result = method[1].ssl_pending;
      if (result)
      {
        LOWORD(result) = SSL_version(result);
      }
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

SSL_CIPHER *boringssl_session_get_negotiated_ciphersuite(SSL_CIPHER *result)
{
  if (result)
  {
    if (result->valid == -1252936367 && (name = result->name) != 0)
    {
      v2 = *(name + 49);
      if (v2)
      {
        result = SSL_get_pending_cipher(*(name + 49));
        if (result || (result = SSL_get_current_cipher(v2)) != 0)
        {
          LOWORD(result) = SSL_CIPHER_get_id(result);
        }
      }

      else
      {
        LOWORD(result) = 0;
      }
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

SSL_CIPHER *__cdecl SSL_get_current_cipher(const SSL *s)
{
  result = SSL_get_session(s);
  if (result)
  {
    return result[2].mask;
  }

  return result;
}

uint64_t boringssl_session_get_negotiated_protocol(uint64_t result, void *a2)
{
  if (result)
  {
    if (*result == -1252936367 && (v4 = *(result + 8)) != 0)
    {
      v7[3] = v2;
      v7[4] = v3;
      v7[0] = 0;
      v6 = 0;
      SSL_get0_alpn_selected(*(v4 + 392), v7, &v6);
      if (a2)
      {
        *a2 = v6;
      }

      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

SSL_SESSION *SSL_get0_ocsp_response(uint64_t a1, uint64_t *a2, SSL_SESSION **a3)
{
  result = SSL_get_session(a1);
  if ((*(a1 + 180) & 1) == 0 && (v7 = result) != 0 && (result = result->tlsext_hostname) != 0)
  {
    *a2 = CRYPTO_BUFFER_data(result);
    result = CRYPTO_BUFFER_len(v7->tlsext_hostname);
    *a3 = result;
  }

  else
  {
    *a3 = 0;
    *a2 = 0;
  }

  return result;
}

dispatch_data_t boringssl_context_copy_ocsp_response(uint64_t a1)
{
  result = *(a1 + 392);
  if (result)
  {
    v3 = 0;
    v4 = 0;
    SSL_get0_ocsp_response(result, &v4, &v3);
    result = 0;
    if (v3)
    {
      v2 = v4 == 0;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      return dispatch_data_create(v4, v3, 0, 0);
    }
  }

  return result;
}

SSL_SESSION *SSL_get0_peer_certificates(const SSL *a1)
{
  result = SSL_get_session(a1);
  if (result)
  {
    return *&result->sid_ctx[28];
  }

  return result;
}

__CFArray *boringssl_helper_copy_certificates_from_session(void *a1, const SSL *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = 0;
  if (v4 && a2)
  {
    v6 = SSL_get0_peer_certificates(a2);
    if (v6)
    {
      v5 = boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs(v4, v6);
      goto LABEL_21;
    }

    WeakRetained = objc_loadWeakRetained(v4 + 2);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained(v4 + 2);
      v2 = v9[435];

      if (v2)
      {
LABEL_20:
        v5 = 0;
        goto LABEL_21;
      }
    }

    v10 = objc_loadWeakRetained(v4 + 2);
    if (v10)
    {
      v11 = objc_loadWeakRetained(v4 + 2);
      v12 = (v11[435] & 1) == 0;
    }

    else
    {
      v12 = 1;
    }

    v5 = 0;
    if (v12 && g_boringssl_log)
    {
      v13 = g_boringssl_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_loadWeakRetained(v4 + 2);
        if (v14)
        {
          v2 = objc_loadWeakRetained(v4 + 2);
          v15 = v2 + 351;
        }

        else
        {
          v15 = &unk_1A9098A9F;
        }

        v16 = objc_loadWeakRetained(v4 + 2);
        v18 = 136446978;
        v19 = "boringssl_helper_copy_certificates_from_session";
        v20 = 1024;
        v21 = 202;
        v22 = 2082;
        v23 = v15;
        v24 = 2048;
        v25 = v16;
        _os_log_impl(&dword_1A8FF5000, v13, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] SSL_get0_peer_certificates returned no certificates", &v18, 0x26u);

        if (v14)
        {
        }
      }

      goto LABEL_20;
    }
  }

LABEL_21:

  return v5;
}

uint64_t boringssl_session_get_peer_signature_algorithms(uint64_t a1, void *a2)
{
  if (a1 && *a1 == -1252936367 && a2 && (v2 = *(a1 + 8)) != 0 && (v3 = *(v2 + 392)) != 0)
  {
    return SSL_get0_peer_verify_algorithms(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t SSL_get0_peer_verify_algorithms(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 48) + 280);
  if (v2)
  {
    v3 = *(v2 + 664);
    result = *(v2 + 672);
  }

  else
  {
    result = 0;
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void boringssl_session_update_metadata(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1 == -1252936367)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v4 = v2;
      v3 = v4;
      nw_protocol_metadata_access_handle();
    }
  }
}

BOOL __boringssl_session_update_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v102 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 88);
    *(a2 + 88) = 0;

    v5 = *(a2 + 104);
    *(a2 + 104) = 0;

    v6 = *(a2 + 136);
    *(a2 + 136) = 0;

    v7 = *(a2 + 144);
    *(a2 + 144) = 0;

    v8 = *(a2 + 152);
    *(a2 + 152) = 0;

    v9 = *(a2 + 168);
    *(a2 + 168) = 0;

    v10 = *(a2 + 160);
    *(a2 + 160) = 0;

    v11 = *(a2 + 80);
    *(a2 + 80) = 0;

    v12 = *(a2 + 40);
    if (v12)
    {
      free(v12);
      *(a2 + 40) = 0;
    }

    v13 = *(a2 + 176);
    if (v13)
    {
      free(v13);
      *(a2 + 176) = 0;
    }

    v14 = *(a2 + 48);
    if (v14)
    {
      free(v14);
      *(a2 + 48) = 0;
    }

    *(a2 + 32) = boringssl_session_get_negotiated_protocol_version(*(a1 + 40));
    *(a2 + 34) = boringssl_session_get_negotiated_ciphersuite(*(a1 + 40));
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    *__s1 = 0u;
    v95 = 0u;
    v91 = 0;
    if (boringssl_session_get_negotiated_protocol(*(a1 + 40), &v91))
    {
      __memcpy_chk();
      *(a2 + 40) = strdup(__s1);
    }

    v15 = sec_array_create();
    v16 = *(a2 + 136);
    *(a2 + 136) = v15;

    v17 = boringssl_context_copy_ocsp_response(*(a1 + 32));
    sec_array_append();
    v18 = *(a1 + 32);
    if (!*(v18 + 360))
    {
      v19 = *(v18 + 344) ? CFRetain(*(v18 + 344)) : boringssl_helper_copy_certificates_from_session(v18, *(v18 + 392));
      v20 = v19;
      if (v19)
      {
        v21 = sec_array_create();
        v22 = *(a2 + 88);
        *(a2 + 88) = v21;

        if (CFArrayGetCount(v20) >= 1)
        {
          v23 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, v23);
            if (ValueAtIndex)
            {
              v25 = sec_certificate_create(ValueAtIndex);
              if (v25)
              {
                sec_array_append();
              }
            }

            ++v23;
          }

          while (v23 < CFArrayGetCount(v20));
        }

        CFRelease(v20);
      }
    }

    v26 = *(a1 + 40);
    if (v26)
    {
      if (*v26 == -1252936367)
      {
        v27 = *(v26 + 8);
        if (v27)
        {
          if (*(v27 + 336))
          {
            v28 = SecKeyCopySubjectPublicKeyInfo();
            if (v28)
            {
              v29 = v28;
              BytePtr = CFDataGetBytePtr(v28);
              Length = CFDataGetLength(v29);
              v32 = dispatch_data_create(BytePtr, Length, 0, 0);
              v33 = *(a2 + 104);
              *(a2 + 104) = v32;

              CFRelease(v29);
            }
          }
        }
      }
    }

    v90 = 0;
    peer_signature_algorithms = boringssl_session_get_peer_signature_algorithms(*(a1 + 40), &v90);
    if (peer_signature_algorithms && v90)
    {
      v35 = peer_signature_algorithms;
      v36 = xpc_array_create(0, 0);
      v37 = *(a2 + 112);
      *(a2 + 112) = v36;

      v38 = 0;
      v39 = 1;
      do
      {
        xpc_array_set_uint64(*(a2 + 112), 0xFFFFFFFFFFFFFFFFLL, *(v90 + 2 * v38));
        v38 = v39;
      }

      while (v35 > v39++);
    }

    v41 = *(a2 + 368);
    if (v41)
    {
      CFRelease(v41);
    }

    *(a2 + 368) = 0;
    v42 = boringssl_session_export_session_info(*(a1 + 40), *(a1 + 48));

    *(a2 + 368) = v42;
    v46 = boringssl_context_copy_server_requested_CAs(*(a1 + 40), v43, v44, v45);
    if (v46)
    {
      objc_storeStrong((a2 + 144), v46);
    }

    v47 = *(a1 + 40);
    if (v47 && *v47 == -1252936367 && (v48 = *(v47 + 8)) != 0 && (v49 = *(v48 + 392)) != 0 && (size = 0, buffer = 0, SSL_get_peer_quic_transport_params(v49, &buffer, &size), buffer) && size)
    {
      v50 = dispatch_data_create(buffer, size, 0, 0);
      if (v50)
      {
        objc_storeStrong((a2 + 152), v50);
      }
    }

    else
    {
      v50 = 0;
    }

    v51 = *(a1 + 32);
    v52 = *(v51 + 352);
    if (v52)
    {
      v53 = sec_trust_create(v52);
      v54 = *(a2 + 168);
      *(a2 + 168) = v53;

      v51 = *(a1 + 32);
    }

    v55 = *(v51 + 96);
    if (v55)
    {
      v56 = boringssl_identity_copy_sec_identity(v55);
      v57 = *(a2 + 160);
      *(a2 + 160) = v56;

      v58 = *(*(a1 + 32) + 96);
      if (v58)
      {
        v59 = boringssl_identity_copy_certificate_chain(v58);
        v60 = *(a2 + 80);
        *(a2 + 80) = v59;
      }
    }

    negotiated_group = boringssl_session_get_negotiated_group(*(a1 + 40));
    if (negotiated_group)
    {
      *(a2 + 176) = strdup(negotiated_group);
    }

    server_name = boringssl_session_get_server_name(*(a1 + 40));
    if (server_name)
    {
      *(a2 + 48) = strdup(server_name);
    }

    v63 = *(a1 + 40);
    if (v63)
    {
      if (*v63 == -1252936367)
      {
        v63 = *(v63 + 8);
        if (v63)
        {
          LOWORD(v63) = 16 * (*(v63 + 549) & 1);
        }
      }

      else
      {
        LOWORD(v63) = 0;
      }
    }

    v64 = *(a2 + 336) & 0xFFEF | v63;
    *(a2 + 336) = v64;
    v65 = *(a1 + 40);
    if (v65)
    {
      if (*v65 == -1252936367)
      {
        v65 = *(v65 + 8);
        if (v65)
        {
          LODWORD(v65) = (*(v65 + 550) >> 2) & 0x20;
        }
      }

      else
      {
        LOWORD(v65) = 0;
      }
    }

    *(a2 + 336) = v65 | v64 & 0xFFDF;
    if (boringssl_session_has_session_ticket(*(a1 + 40), *(a1 + 48)))
    {
      v66 = 64;
    }

    else
    {
      v66 = 0;
    }

    *(a2 + 336) = *(a2 + 336) & 0xFFBF | v66;
    if (boringssl_session_early_data_accepted(*(a1 + 40)))
    {
      v68 = 8;
    }

    else
    {
      v68 = 0;
    }

    *(a2 + 336) = *(a2 + 336) & 0xFFF7 | v68;
    if (boringssl_session_was_resumed(*(a1 + 40), v67))
    {
      v69 = 128;
    }

    else
    {
      v69 = 0;
    }

    *(a2 + 336) = *(a2 + 336) & 0xFF7F | v69;
    if (boringssl_session_was_renewed(*(a1 + 40), *(a1 + 48)))
    {
      v70 = 256;
    }

    else
    {
      v70 = 0;
    }

    v71 = *(a2 + 336) & 0xFEFF | v70;
    *(a2 + 336) = v71;
    v72 = *(a1 + 40);
    if (v72)
    {
      if (*v72 == -1252936367)
      {
        v72 = *(v72 + 8);
        if (v72)
        {
          LOWORD(v72) = (*(v72 + 551) & 0x80) << 6;
        }
      }

      else
      {
        LOWORD(v72) = 0;
      }
    }

    *(a2 + 336) = v72 | v71 & 0xDFFF;
    v73 = *(a1 + 40);
    if (v73)
    {
      if (*v73 == -1252936367)
      {
        v74 = *(v73 + 8);
        if (v74)
        {
          v75 = *(v74 + 456);
          *(a2 + 256) = *(v74 + 328);
          v76 = *(v74 + 448);
          v77 = v75 >= v76;
          v78 = v75 - v76;
          if (!v77)
          {
            v78 = -1;
          }

          *(a2 + 248) = v78;
          v74 = *(v74 + 424) - *(v74 + 416);
        }

        else
        {
          *(a2 + 256) = 0;
          *(a2 + 248) = 0;
        }

        *(a2 + 264) = v74;
        v79 = *(v73 + 8);
        if (v79)
        {
          *(a2 + 272) = *(v79 + 464) + *(v79 + 472);
          v79 = *(v79 + 464);
        }

        else
        {
          *(a2 + 272) = 0;
        }

        *(a2 + 280) = v79;
        v80 = *(v73 + 8);
        if (v80)
        {
          *(a2 + 288) = *(v80 + 472);
          v81 = *(v80 + 488);
        }

        else
        {
          v81 = 0;
          *(a2 + 288) = 0;
        }

        *(a2 + 296) = v81;
        v73 = *(v73 + 8);
        if (v73)
        {
          *(a2 + 304) = *(v73 + 480);
          v73 = *(v73 + 496);
        }

        else
        {
          *(a2 + 304) = 0;
        }

LABEL_100:
        *(a2 + 312) = v73;
        uuid_copy((a2 + 64), (*(a1 + 32) + 244));
        v82 = *(*(a1 + 32) + 88);
        if (v82)
        {
          if (*(a2 + 56))
          {
            free(*(a2 + 56));
            *(a2 + 56) = 0;
            v82 = *(*(a1 + 32) + 88);
          }

          *(a2 + 56) = strdup(v82);
        }

        *a2 = *(a1 + 40);
        *(a2 + 8) = boringssl_session_export_secret_data;
        *(a2 + 16) = *(a1 + 40);
        *(a2 + 24) = boringssl_session_copy_serialized_session;
        v83 = *(a1 + 40);
        *(a2 + 344) = boringssl_session_copy_authenticator;
        *(a2 + 352) = boringssl_session_copy_authenticator_trust;
        *(a2 + 360) = v83;
        if (boringssl_session_is_eap_configured(*(a1 + 40)))
        {
          boringssl_session_update_eap_metadata(*(a1 + 40));
        }

        *(a2 + 320) = SSL_negotiated_pake(*(*(a1 + 32) + 392));
        v84 = *(a1 + 40);
        if (v84)
        {
          if (*v84 == -1252936367)
          {
            v84 = *(v84 + 8);
            if (v84)
            {
              LODWORD(v84) = (*(v84 + 552) >> 4) & 4;
            }
          }

          else
          {
            LOBYTE(v84) = 0;
          }
        }

        v85 = *(a2 + 376) & 0xFB | v84;
        *(a2 + 376) = v85;
        v86 = *(a1 + 40);
        if (v86)
        {
          if (*v86 == -1252936367)
          {
            v86 = *(v86 + 8);
            if (v86)
            {
              LOBYTE(v86) = *(v86 + 552) < 0;
            }
          }

          else
          {
            LOBYTE(v86) = 0;
          }
        }

        v87 = v85 & 0xFE | v86;
        *(a2 + 376) = v87;
        v88 = *(a1 + 40);
        if (!v88)
        {
          goto LABEL_121;
        }

        if (*v88 == -1252936367)
        {
          v88 = *(v88 + 8);
          if (!v88)
          {
LABEL_121:
            *(a2 + 376) = v88 | v87 & 0xFD;

            return a2 != 0;
          }

          if (*(v88 + 552) < 0)
          {
            LODWORD(v88) = (*(v88 + 549) >> 6) & 2;
            goto LABEL_121;
          }
        }

        LOBYTE(v88) = 0;
        goto LABEL_121;
      }

      v73 = 0;
    }

    *(a2 + 256) = 0;
    *(a2 + 248) = 0;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *(a2 + 296) = 0u;
    goto LABEL_100;
  }

  return a2 != 0;
}

uint64_t SSL_get0_alpn_selected(uint64_t result, void *a2, _DWORD *a3)
{
  v3 = *(result + 48);
  v4 = v3[35];
  if (v4 && (*(v4 + 1601) & 4) != 0 && (*(result + 180) & 1) == 0)
  {
    v8 = *(v4 + 1544);
    v5 = (v8 + 392);
    v6 = (v8 + 400);
  }

  else
  {
    v5 = v3 + 62;
    v6 = v3 + 63;
  }

  v7 = *v6;
  if (v7 >= 0xFFFFFFFF)
  {
    SSL_get0_alpn_selected_cold_1();
  }

  *a2 = *v5;
  *a3 = v7;
  return result;
}

id boringssl_session_export_session_info(uint64_t a1, SSL_SESSION *a2)
{
  if (!a1 || *a1 != -1252936367 || (v2 = *(a1 + 8)) == 0 || (v3 = *(v2 + 392)) == 0 || (session = a2) == 0 && (session = SSL_get_session(v3)) == 0)
  {
    v14 = 0;
    goto LABEL_14;
  }

  ticket_age_add = SSL_SESSION_get_ticket_age_add(session);
  time = SSL_SESSION_get_time(session);
  timeout = SSL_SESSION_get_timeout(session);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  SSL_SESSION_get0_ticket(session, &v16, &v17);
  if (!v17)
  {
    v8 = 0;
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v16 length:?];
  if (!v8)
  {
    goto LABEL_18;
  }

  master_key = SSL_SESSION_get_master_key(session, 0, 0);
  if (!master_key)
  {
    goto LABEL_18;
  }

  v10 = master_key;
  v11 = malloc_type_malloc(master_key, 0x100004077774924uLL);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  SSL_SESSION_get_master_key(session, v11, v10);
  v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:v10];
  free(v12);
  if (!v13)
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v14 = [objc_alloc(MEMORY[0x1E697AAB8]) initWithPSK:v13 :v8 :ticket_age_add :time :timeout];
LABEL_20:

LABEL_14:

  return v14;
}

uint64_t SSL_SESSION_get_time(uint64_t s)
{
  if (s)
  {
    return *(s + 192);
  }

  return s;
}

uint64_t SSL_SESSION_get0_ticket(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 232);
  }

  *a3 = *(result + 240);
  return result;
}

id boringssl_context_copy_server_requested_CAs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && *a1 == -1252936367 && (v4 = *(a1 + 8)) != 0 && (v5 = *(v4 + 392)) != 0)
  {
    v6 = sec_array_create();
    v7 = SSL_get0_server_requested_CAs(v5);
    if (v7)
    {
      v8 = v7;
      if (EVP_MD_CTX_md(v7))
      {
        if (EVP_MD_CTX_md(v8))
        {
          v9 = 0;
          do
          {
            v10 = OPENSSL_sk_value(v8, v9);
            v11 = CRYPTO_BUFFER_data(v10);
            v12 = CRYPTO_BUFFER_len(v10);
            v13 = dispatch_data_create(v11, v12, 0, 0);
            sec_array_append();

            ++v9;
          }

          while (v9 < EVP_MD_CTX_md(v8));
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t SSL_get0_server_requested_CAs(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return *(v1 + 1488);
  }

  else
  {
    return 0;
  }
}

SSL_SESSION *SSL_get_curve_id(const SSL *a1)
{
  result = SSL_get_session(a1);
  if (result)
  {
    return HIWORD(result->key_arg_length);
  }

  return result;
}

uint64_t boringssl_session_get_negotiated_group(uint64_t a1)
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

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0;
  }

  SSL_get_curve_id(v3);

  return SSL_get_curve_name();
}

uint64_t SSL_get_peer_quic_transport_params(uint64_t result, void *a2, void *a3)
{
  *a2 = *(*(result + 48) + 584);
  *a3 = *(*(result + 48) + 592);
  return result;
}

const SSL *boringssl_session_get_server_name(const SSL *result)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      result = method[1].ssl_pending;
      if (result)
      {
        if ((BYTE4(method[2].ssl_renegotiate) & 0x10) != 0)
        {
          return SSL_get_servername(result, 0);
        }

        else
        {
          return method->ssl_shutdown;
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

const SSL *boringssl_session_has_session_ticket(const SSL *result, const SSL *a2)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      if (a2)
      {
        return SSL_SESSION_has_ticket(a2);
      }

      result = method[1].ssl_pending;
      if (result)
      {
        result = SSL_get_session(result);
        a2 = result;
        if (result)
        {
          return SSL_SESSION_has_ticket(a2);
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

uint64_t boringssl_session_early_data_accepted(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        return SSL_early_data_accepted(result) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const SSL *boringssl_session_was_renewed(const SSL *result, const SSL *a2)
{
  if (result)
  {
    if (result->version == -1252936367 && (method = result->method) != 0)
    {
      result = method[1].ssl_pending;
      if (result)
      {
        if (a2)
        {
          return (SSL_SESSION_was_renewed(a2) != 0);
        }

        result = SSL_get_session(result);
        a2 = result;
        if (result)
        {
          return (SSL_SESSION_was_renewed(a2) != 0);
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

uint64_t boringssl_session_was_resumed(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*result == -1252936367 && (v2 = *(result + 8)) != 0)
    {
      result = *(v2 + 392);
      if (result)
      {
        return SSL_session_reused(result) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_session_reused(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((*(v1 + 222) & 0x20) != 0)
  {
    return 1;
  }

  v2 = *(v1 + 280);
  if (v2)
  {
    return (*(v2 + 1600) >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

double EVP_sha384_init()
{
  EVP_sha384_storage = 0x30000002A1;
  dword_1ED4C04C8 = 0;
  qword_1ED4C04D0 = sha384_init;
  qword_1ED4C04D8 = digest_update_wrapper;
  qword_1ED4C04E0 = digest_final_wrapper;
  *&result = 0x40800000080;
  qword_1ED4C04E8 = 0x40800000080;
  return result;
}

SSL_SESSION *__cdecl SSL_get_session(const SSL *ssl)
{
  handshake_func = ssl->handshake_func;
  v2 = *(handshake_func + 59);
  if (v2)
  {
    return v2;
  }

  v3 = *(handshake_func + 35);
  if (!v3)
  {
    SSL_get_session_cold_2();
  }

  if ((*(handshake_func + 111) & 0x10) != 0)
  {
    SSL_get_session_cold_1();
  }

  v2 = v3[193];
  if (v2)
  {
    return v2;
  }

  return bssl::ssl_handshake_session(v3);
}

BOOL __boringssl_context_set_encryption_secrets_block_invoke(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 144) && *(a2 + 152))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = dispatch_data_create(v4, *(a1 + 40), 0, 0);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = dispatch_data_create(v6, *(a1 + 40), 0, 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 72);
    if (v8 - 1 >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = MEMORY[0x1AC57F4F0](*(a2 + 144));
    if (v5)
    {
      v11 = *(a1 + 56);
      if (!v11)
      {
        goto LABEL_23;
      }

      WeakRetained = objc_loadWeakRetained((v11 + 16));
      if (!WeakRetained || (v13 = WeakRetained, v14 = objc_loadWeakRetained((*(a1 + 56) + 16)), v15 = v14[435], v14, v13, (v15 & 1) == 0))
      {
        v16 = *(a1 + 56);
        if (!v16)
        {
          goto LABEL_23;
        }

        v17 = objc_loadWeakRetained((v16 + 16));
        if (v17)
        {
          v18 = objc_loadWeakRetained((*(a1 + 56) + 16));
          v19 = (v18[435] & 1) == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
LABEL_23:
          if (g_boringssl_log)
          {
            v20 = g_boringssl_log;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v32 = *(a1 + 56);
              v52 = v32;
              if (v32)
              {
                v37 = objc_loadWeakRetained((v32 + 16));
                v38 = *(a1 + 56);
                v46 = v37;
                if (v37)
                {
                  v50 = v38 != 0;
                  if (v38)
                  {
                    v37 = objc_loadWeakRetained((v38 + 16));
                    v38 = *(a1 + 56);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v33 = v37 + 351;
                }

                else
                {
                  v50 = 0;
                  v33 = &unk_1A9098A9F;
                }

                v45 = v37;
                if (v38)
                {
                  v48 = objc_loadWeakRetained((v38 + 16));
                  LODWORD(v47) = 0;
                }

                else
                {
                  v48 = 0;
                  LODWORD(v47) = 1;
                }
              }

              else
              {
                v50 = 0;
                v48 = 0;
                LODWORD(v47) = 1;
                v33 = &unk_1A9098A9F;
              }

              size = dispatch_data_get_size(v5);
              negotiated_ciphersuite = boringssl_session_get_negotiated_ciphersuite(*(a1 + 64));
              *buf = 136447746;
              v55 = "boringssl_context_set_encryption_secrets_block_invoke";
              v56 = 1024;
              v57 = 2563;
              v58 = 2082;
              v59 = v33;
              v60 = 2048;
              v61 = v48;
              v62 = 1024;
              v63 = v9;
              v64 = 2048;
              v65 = size;
              v66 = 1024;
              v67 = negotiated_ciphersuite;
              _os_log_debug_impl(&dword_1A8FF5000, v20, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] updating write secret. Level: %u, secret_data_length: %zu, currently negotiated ciphersuite: %u", buf, 0x3Cu);
              if ((v47 & 1) == 0)
              {
              }

              if (v50)
              {
              }

              if (v52)
              {
              }
            }
          }
        }
      }

      (v10)[2](v10, v9, 1, v5);
    }

    if (v7)
    {
      v21 = *(a1 + 56);
      if (!v21)
      {
        goto LABEL_37;
      }

      v22 = objc_loadWeakRetained((v21 + 16));
      if (!v22 || (v23 = v22, v24 = objc_loadWeakRetained((*(a1 + 56) + 16)), v25 = v24[435], v24, v23, (v25 & 1) == 0))
      {
        v26 = *(a1 + 56);
        if (!v26)
        {
          goto LABEL_37;
        }

        v27 = objc_loadWeakRetained((v26 + 16));
        if (v27)
        {
          v28 = objc_loadWeakRetained((*(a1 + 56) + 16));
          v29 = (v28[435] & 1) == 0;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
LABEL_37:
          if (g_boringssl_log)
          {
            v30 = g_boringssl_log;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v34 = *(a1 + 56);
              v53 = v34;
              if (v34)
              {
                v39 = objc_loadWeakRetained((v34 + 16));
                v40 = *(a1 + 56);
                v47 = v39;
                if (v39)
                {
                  v51 = v40 != 0;
                  if (v40)
                  {
                    v39 = objc_loadWeakRetained((v40 + 16));
                    v40 = *(a1 + 56);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  v36 = v39 + 351;
                }

                else
                {
                  v51 = 0;
                  v36 = &unk_1A9098A9F;
                }

                v46 = v39;
                if (v40)
                {
                  v35 = objc_loadWeakRetained((v40 + 16));
                  v49 = 0;
                }

                else
                {
                  v35 = 0;
                  v49 = 1;
                }
              }

              else
              {
                v51 = 0;
                v35 = 0;
                v49 = 1;
                v36 = &unk_1A9098A9F;
              }

              v43 = dispatch_data_get_size(v7);
              v44 = boringssl_session_get_negotiated_ciphersuite(*(a1 + 64));
              *buf = 136447746;
              v55 = "boringssl_context_set_encryption_secrets_block_invoke";
              v56 = 1024;
              v57 = 2568;
              v58 = 2082;
              v59 = v36;
              v60 = 2048;
              v61 = v35;
              v62 = 1024;
              v63 = v9;
              v64 = 2048;
              v65 = v43;
              v66 = 1024;
              v67 = v44;
              _os_log_debug_impl(&dword_1A8FF5000, v30, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] updating read secret. Level: %u, secret_data_length: %zu urrently negotiated ciphersuite: %u", buf, 0x3Cu);
              if ((v49 & 1) == 0)
              {
              }

              if (v51)
              {
              }

              if (v53)
              {
              }
            }
          }
        }
      }

      (v10)[2](v10, v9, 0, v7);
    }
  }

  return a2 != 0;
}

uint64_t CBS_get_u32(uint64_t *a1, int *a2)
{
  v2 = a1[1];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 4;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  *a2 = v6;
  return 1;
}

BOOL boringssl_session_can_resume_with_state(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    v5 = (v3[551] & 1) != 0 || SSL_SESSION_get_protocol_version(a2) != 772;
  }

  return v5;
}

void SSL_SESSION_free(SSL_SESSION *ses)
{
  if (ses)
  {
    bssl::RefCounted<ssl_session_st>::DecRefInternal(ses);
  }
}

void CRYPTO_BUFFER_free(unsigned int *result)
{
  if (!result)
  {
    return;
  }

  v2 = *result;
  if (!*result)
  {
    if (!CRYPTO_refcount_dec_and_test_zero(result + 6))
    {
      return;
    }

    goto LABEL_8;
  }

  CRYPTO_MUTEX_lock_write((v2 + 1));
  if (CRYPTO_refcount_dec_and_test_zero(result + 6))
  {
    if (OPENSSL_lh_retrieve(*v2, result, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func) == result && OPENSSL_lh_delete(*v2, result, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func) != result)
    {
      CRYPTO_BUFFER_free_cold_1();
    }

    CRYPTO_MUTEX_unlock_read((*result + 8));
LABEL_8:

    crypto_buffer_free_object(result);
    return;
  }

  v3 = (*result + 8);

  CRYPTO_MUTEX_unlock_read(v3);
}

uint64_t boringssl_context_add_message(const SSL *a1, unsigned int a2, const void *a3, size_t a4)
{
  v7 = SSL_get_ex_data(a1, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*v7 != -1252936367)
  {
    return 0;
  }

  v9 = v7[1];
  if (!v9 || boringssl_session_get_state(v7) > 3 || (boringssl_session_is_cancelled(v8) & 1) != 0)
  {
    return 0;
  }

  if (a2 - 1 >= 3)
  {
    a2 = 0;
  }

  WeakRetained = objc_loadWeakRetained((v9 + 16));
  v12 = nw_protocol_boringssl_write_message(WeakRetained, a2, a3, a4);

  return v12;
}

uint64_t nw_protocol_boringssl_write_message(void *a1, unsigned int a2, const void *a3, size_t a4)
{
  v6 = a1;
  nw_frame_array_init();
  nw_protocol_upcast();
  if (nw_protocol_get_output_frames() == 1)
  {
    v7 = nw_frame_array_first();
    if (nw_frame_uses_external_data())
    {
      v8 = dispatch_data_create(a3, a4, 0, 0);
      nw_frame_set_external_data();
    }

    else
    {
      v10 = nw_frame_unclaimed_bytes();
      memcpy(v10, a3, a4);
    }

    nw_protocol_upcast();
    v9 = 0;
    if (nw_frame_claim())
    {
      nw_frame_collapse();
      nw_protocol_upcast();
      nw_frame_unclaim();
      v9 = 1;
      nw_frame_array_remove();
      nw_frame_array_append();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t boringssl_context_flush_flight(const SSL *a1)
{
  v1 = SSL_get_ex_data(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (*v1 != -1252936367)
  {
    return 0;
  }

  v3 = v1[1];
  if (!v3 || boringssl_session_get_state(v1) > 3 || (boringssl_session_is_cancelled(v2) & 1) != 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((v3 + 16));
  v6 = nw_protocol_boringssl_flush_flight(WeakRetained);

  return v6;
}

uint64_t nw_protocol_boringssl_flush_flight(void *a1)
{
  v1 = a1;
  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    nw_protocol_finalize_output_frames();
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    nw_protocol_finalize_output_frames();
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    nw_protocol_finalize_output_frames();
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    nw_protocol_finalize_output_frames();
  }

  return 1;
}

BOOL boringssl_session_state_is_session_state(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 1;
  }

  return result;
}

uint64_t boringssl_session_state_get_used_extended_master_secret(uint64_t result)
{
  if (result)
  {
    return *(result + 9);
  }

  return result;
}

void bssl::SSL_SESSION_parse(__int128 *a1@<X0>, uint64_t (**a2)(void)@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  v88 = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_session_new(a2, &v88);
  if (!v88)
  {
    *a4 = 0;
    return;
  }

  memset(v87, 170, sizeof(v87));
  v86 = -21846;
  if (!CBS_get_asn1(a1, &v87[1], 536870928) || !CBS_get_asn1_uint64(&v87[1], v87 + 1) || *(&v87[0] + 1) != 1 || !CBS_get_asn1_uint64(&v87[1], v87) || *&v87[0] >> 16 || (bssl::ssl_protocol_version_from_wire(&v86, LOWORD(v87[0])) & 1) == 0)
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 538);
    goto LABEL_32;
  }

  *(v88 + 4) = v87[0];
  memset(v85, 170, 18);
  if (!CBS_get_asn1(&v87[1], &v85[1], 4) || !CBS_get_u16(&v85[1], v85) || *&v85[5])
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 548);
    goto LABEL_32;
  }

  cipher_by_value = SSL_get_cipher_by_value(v85[0]);
  *(v88 + 200) = cipher_by_value;
  if (!cipher_by_value)
  {
    ERR_put_error(16, 0, 237, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 553);
    goto LABEL_32;
  }

  memset(v84, 170, sizeof(v84));
  memset(v83, 170, sizeof(v83));
  if (!CBS_get_asn1(&v87[1], &v84[2], 4))
  {
    goto LABEL_38;
  }

  v9 = v84[3];
  if (v84[3] > 0x20uLL)
  {
    goto LABEL_38;
  }

  v10 = v88;
  v11 = v84[2];
  *(v88 + 91) = 0;
  if (v9)
  {
    v12 = (v10 + 59);
    v13 = v9;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
  }

  *(v10 + 91) = v9;
  if (!CBS_get_asn1(&v87[1], v84, 4))
  {
    goto LABEL_38;
  }

  v15 = v84[1];
  if (v84[1] > 0x30uLL)
  {
    goto LABEL_38;
  }

  v16 = v88;
  v17 = v84[0];
  *(v88 + 58) = 0;
  if (v15)
  {
    v18 = (v16 + 10);
    v19 = v15;
    do
    {
      v20 = *v17++;
      *v18++ = v20;
      --v19;
    }

    while (v19);
  }

  *(v16 + 58) = v15;
  if (!CBS_get_asn1(&v87[1], &v83[1], 2684354561) || !CBS_get_asn1_uint64(&v83[1], (v88 + 192)) || !CBS_get_asn1(&v87[1], &v83[1], 2684354562) || !CBS_get_asn1_uint64(&v83[1], v83) || HIDWORD(v83[0]))
  {
LABEL_38:
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 568);
    goto LABEL_32;
  }

  *(v88 + 184) = v83[0];
  memset(v82, 170, sizeof(v82));
  if (!CBS_get_optional_asn1(&v87[1], &v82[1], v82, 2684354563) || v82[0] && !*&v82[3])
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 578);
LABEL_32:
    *a4 = 0;
    goto LABEL_33;
  }

  v80 = 0xAAAAAAAAAAAAAAAALL;
  v81 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1_octet_string(&v87[1], &v80, 0, 2684354564))
  {
    goto LABEL_32;
  }

  v22 = v81;
  if (v81 > 0x20)
  {
    goto LABEL_32;
  }

  v23 = v88;
  v24 = v80;
  *(v88 + 124) = 0;
  if (v22)
  {
    v25 = (v23 + 92);
    v26 = v22;
    do
    {
      v27 = *v24++;
      *v25++ = v27;
      --v26;
    }

    while (v26);
    v28 = v88;
  }

  else
  {
    v28 = v23;
  }

  *(v23 + 124) = v22;
  if (!bssl::SSL_SESSION_parse_long(&v87[1], (v28 + 176)))
  {
    goto LABEL_32;
  }

  v79[0] = 0xAAAAAAAAAAAAAAAALL;
  v79[1] = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1(&v87[1], v79, 0, 2684354566))
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 596);
    goto LABEL_32;
  }

  if (!bssl::SSL_SESSION_parse_string(&v87[1], (v88 + 128)) || !bssl::SSL_SESSION_parse_u32(&v87[1], (v88 + 372), 2684354569, 0) || (bssl::SSL_SESSION_parse_octet_string(&v87[1], (v88 + 232), 2684354570) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (CBS_peek_asn1_tag(&v87[1], -1610612723))
  {
    v77 = 0xAAAAAAAAAAAAAAAALL;
    v78 = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_asn1(&v87[1], &v83[1], 2684354573) || !CBS_get_asn1(&v83[1], &v77, 4) || v78 != 32 || v83[2])
    {
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 614);
      goto LABEL_32;
    }

    v29 = v88;
    v30 = *(v77 + 1);
    *(v88 + 272) = *v77;
    *(v29 + 288) = v30;
    v31 = *(v29 + 440) | 2;
  }

  else
  {
    v29 = v88;
    v31 = *(v88 + 440) & 0xFD;
  }

  *(v29 + 440) = v31;
  v77 = 0xAAAAAAAAAAAAAAAALL;
  v78 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1_octet_string(&v87[1], &v77, 0, 2684354574))
  {
    goto LABEL_32;
  }

  v32 = v78;
  if (v78 > 0x40)
  {
    goto LABEL_32;
  }

  v33 = v88;
  v34 = v77;
  *(v88 + 368) = 0;
  if (v32)
  {
    v35 = (v33 + 304);
    v36 = v32;
    do
    {
      v37 = *v34++;
      *v35++ = v37;
      --v36;
    }

    while (v36);
    v38 = v88;
  }

  else
  {
    v38 = v33;
  }

  *(v33 + 368) = v32;
  if (!bssl::SSL_SESSION_parse_crypto_buffer(&v87[1], (v38 + 248), 2684354575, a3) || !bssl::SSL_SESSION_parse_crypto_buffer(&v87[1], (v88 + 256), 2684354576, a3))
  {
    goto LABEL_32;
  }

  v76 = -1431655766;
  if (!CBS_get_optional_asn1_BOOL(&v87[1], &v76, 2684354577, 0))
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 641);
    goto LABEL_32;
  }

  v39 = v88;
  v40 = *(v88 + 440) & 0xFE;
  if (v76)
  {
    ++v40;
  }

  *(v88 + 440) = v40;
  if (!bssl::SSL_SESSION_parse_u16(&v87[1], (v39 + 6), 2684354578))
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 647);
    goto LABEL_32;
  }

  v75 = 0uLL;
  v74 = -1431655766;
  if (!CBS_get_optional_asn1(&v87[1], &v75, &v74, 2684354579))
  {
    goto LABEL_81;
  }

  if (!v74)
  {
    v41 = v82[0];
    goto LABEL_83;
  }

  if (!*(&v75 + 1))
  {
LABEL_81:
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 657);
    goto LABEL_32;
  }

  v41 = v82[0];
  if (!v82[0])
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 661);
    goto LABEL_32;
  }

LABEL_83:
  if (!(v41 | v74))
  {
    goto LABEL_95;
  }

  v42 = v88;
  v43 = OPENSSL_sk_new_null();
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v42 + 136), v43);
  if (!*(v88 + 136))
  {
    goto LABEL_32;
  }

  if (!v82[0])
  {
LABEL_89:
    if (*(&v75 + 1))
    {
      while (1)
      {
        v71 = 0xAAAAAAAAAAAAAAAALL;
        v72 = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_any_asn1_element(&v75, &v71, 0, 0) || !v72)
        {
          ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 682);
          goto LABEL_32;
        }

        v66[1] = 0xAAAAAAAAAAAAAAAALL;
        v46 = CRYPTO_BUFFER_new_from_CBS(&v71, a3);
        v66[1] = v46;
        if (!v46)
        {
          break;
        }

        v47 = *(v88 + 136);
        v66[1] = 0;
        v70 = v46;
        if (!OPENSSL_sk_push(v47, v46))
        {
          std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v70, 0);
          break;
        }

        v70 = 0;
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v70, 0);
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v66[1], 0);
        if (!*(&v75 + 1))
        {
          goto LABEL_95;
        }
      }

      *a4 = 0;
      v62 = &v66[1];
      goto LABEL_129;
    }

LABEL_95:
    v71 = 0xAAAAAAAAAAAAAAAALL;
    v72 = 0xAAAAAAAAAAAAAAAALL;
    v69 = -1431655766;
    if (!CBS_get_optional_asn1_octet_string(&v87[1], &v71, &v69, 2684354581))
    {
      goto LABEL_32;
    }

    if (v69)
    {
      if (!CBS_get_u32(&v71, (v88 + 376)) || v72)
      {
        goto LABEL_32;
      }

      v48 = 8 * (v69 != 0);
    }

    else
    {
      v48 = v72;
      if (v72)
      {
        goto LABEL_32;
      }
    }

    *(v88 + 440) = *(v88 + 440) & 0xF7 | v48;
    v68 = -1431655766;
    if (!CBS_get_optional_asn1_BOOL(&v87[1], &v68, 2684354582, 1))
    {
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 708);
      goto LABEL_32;
    }

    v49 = v88;
    *(v88 + 440) = *(v88 + 440) & 0xEF | (16 * (v68 != 0));
    v67 = -1431655766;
    if (!bssl::SSL_SESSION_parse_u16(&v87[1], (v49 + 8), 2684354583) || !bssl::SSL_SESSION_parse_u32(&v87[1], (v88 + 380), 2684354584, 0) || !bssl::SSL_SESSION_parse_u32(&v87[1], (v88 + 188), 2684354585, *(v88 + 184)) || !bssl::SSL_SESSION_parse_octet_string(&v87[1], (v88 + 392), 2684354586) || !CBS_get_optional_asn1_BOOL(&v87[1], &v67, 2684354587, 0) || (bssl::SSL_SESSION_parse_octet_string(&v87[1], (v88 + 448), 2684354588) & 1) == 0)
    {
      ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 729);
      goto LABEL_32;
    }

    memset(v66, 170, sizeof(v66));
    if (!CBS_get_optional_asn1_octet_string(&v87[1], &v66[1], v66 + 1, 2684354589))
    {
      goto LABEL_119;
    }

    v50 = v88;
    v52 = v66[1];
    v51 = v66[2];
    if (!bssl::Array<unsigned char>::InitUninitialized(v88 + 408, v66[2]))
    {
      goto LABEL_119;
    }

    if (v51)
    {
      v53 = *(v50 + 408);
      do
      {
        v54 = *v52;
        v52 = (v52 + 1);
        *v53++ = v54;
        v51 = (v51 - 1);
      }

      while (v51);
    }

    if (!CBS_get_optional_asn1_octet_string(&v87[1], &v66[1], v66, 2684354590))
    {
      goto LABEL_119;
    }

    v55 = v88;
    v57 = v66[1];
    v56 = v66[2];
    if (!bssl::Array<unsigned char>::InitUninitialized(v88 + 424, v66[2]))
    {
      goto LABEL_119;
    }

    if (v56)
    {
      v58 = *(v55 + 424);
      do
      {
        v59 = *v57;
        v57 = (v57 + 1);
        *v58++ = v59;
        v56 = (v56 - 1);
      }

      while (v56);
    }

    if (*(&v87[1] + 1))
    {
LABEL_119:
      v60 = 742;
      goto LABEL_120;
    }

    v63 = v88;
    v64 = *(v88 + 440) & 0xDF | (32 * (v67 != 0));
    *(v88 + 440) = v64;
    v65 = BYTE4(v66[0]);
    if (HIDWORD(v66[0]) == LODWORD(v66[0]))
    {
      if (!HIDWORD(v66[0]))
      {
LABEL_134:
        *(v63 + 440) = v65 | v64 & 0x3F;
        if (a2[6]())
        {
          v61 = v88;
          v88 = 0;
          goto LABEL_121;
        }

        v60 = 759;
LABEL_120:
        ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", v60);
        v61 = 0;
LABEL_121:
        *a4 = v61;
        goto LABEL_33;
      }

      if (*(v63 + 400))
      {
        v65 = 64;
        goto LABEL_134;
      }
    }

    v60 = 750;
    goto LABEL_120;
  }

  v44 = CRYPTO_BUFFER_new_from_CBS(&v82[1], a3);
  v71 = v44;
  if (v44)
  {
    v45 = *(v88 + 136);
    v71 = 0;
    v73 = v44;
    if (OPENSSL_sk_push(v45, v44))
    {
      v73 = 0;
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v73, 0);
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v71, 0);
      goto LABEL_89;
    }

    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v73, 0);
  }

  *a4 = 0;
  v62 = &v71;
LABEL_129:
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v62, 0);
LABEL_33:
  v21 = v88;
  v88 = 0;
  if (v21)
  {
    SSL_SESSION_free(v21);
  }
}

BOOL bssl::SSL_SESSION_parse_crypto_buffer(__int128 *a1, unsigned int **a2, uint64_t a3, void *a4)
{
  if (!CBS_peek_asn1_tag(a1, a3))
  {
    return 1;
  }

  memset(v10, 170, sizeof(v10));
  if (CBS_get_asn1(a1, &v10[1], a3) && CBS_get_asn1(&v10[1], v10, 4) && !*(&v10[1] + 1))
  {
    v8 = CRYPTO_BUFFER_new_from_CBS(v10, a4);
    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](a2, v8);
    return *a2 != 0;
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 468);
    return 0;
  }
}

uint64_t nw_protocol_boringssl_cache_entry_deallocator(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x1EEE66BB8](a1);
  }

  return a1;
}

uint64_t __boringssl_session_cache_pop_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    sec_array_append();
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return 1;
}

uint64_t boringssl_session_set_session_state(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1 || *a1 != -1252936367)
  {
    goto LABEL_50;
  }

  v5 = 0;
  if (v3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      used_extended_master_secret = boringssl_session_state_get_used_extended_master_secret(v3);
      has_remote_address = boringssl_session_state_has_remote_address(v4, (v6 + 216));
      if (used_extended_master_secret || has_remote_address)
      {
        inner_session = boringssl_session_state_create_inner_session(v4, v6);
        WeakRetained = objc_loadWeakRetained((v6 + 16));
        v18 = WeakRetained;
        if (inner_session)
        {
          if (!WeakRetained || (v19 = objc_loadWeakRetained((v6 + 16)), v20 = v19[435], v19, v18, (v20 & 1) == 0))
          {
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

            if (v23)
            {
              if (g_boringssl_log)
              {
                v30 = g_boringssl_log;
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  boringssl_session_set_session_state_cold_2();
                }
              }
            }
          }

          if (!boringssl_session_can_resume_with_state(v6, inner_session))
          {
            v31 = objc_loadWeakRetained((v6 + 16));
            if (!v31 || (v32 = v31, v33 = objc_loadWeakRetained((v6 + 16)), v34 = v33[435], v33, v32, (v34 & 1) == 0))
            {
              v35 = objc_loadWeakRetained((v6 + 16));
              if (v35)
              {
                v36 = objc_loadWeakRetained((v6 + 16));
                v37 = (v36[435] & 1) == 0;
              }

              else
              {
                v37 = 1;
              }

              if (v37)
              {
                if (g_boringssl_log)
                {
                  v38 = g_boringssl_log;
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    boringssl_session_set_session_state_cold_3();
                  }
                }
              }
            }

            SSL_SESSION_free(inner_session);
            goto LABEL_50;
          }

          SSL_set_session(*(v6 + 392), inner_session);
          *(v6 + 550) |= 0x40u;
          *(v6 + 550) = *(v6 + 550) & 0x7F | (SSL_SESSION_has_ticket(inner_session) << 7);
          SSL_SESSION_free(inner_session);
          v5 = 1;
        }

        else
        {
          if (WeakRetained)
          {
            v24 = objc_loadWeakRetained((v6 + 16));
            v25 = v24[435];

            if (v25)
            {
              goto LABEL_50;
            }
          }

          v26 = objc_loadWeakRetained((v6 + 16));
          if (v26)
          {
            v27 = objc_loadWeakRetained((v6 + 16));
            v28 = (v27[435] & 1) == 0;
          }

          else
          {
            v28 = 1;
          }

          v5 = 0;
          if (v28 && g_boringssl_log)
          {
            v29 = g_boringssl_log;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              boringssl_session_set_session_state_cold_4();
            }

            goto LABEL_42;
          }
        }
      }

      else
      {
        v9 = objc_loadWeakRetained((v6 + 16));
        if (v9)
        {
          v10 = v9;
          v11 = objc_loadWeakRetained((v6 + 16));
          v12 = v11[435];

          if (v12)
          {
            goto LABEL_50;
          }
        }

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

        v5 = 0;
        if (v15 && g_boringssl_log)
        {
          v29 = g_boringssl_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            boringssl_session_set_session_state_cold_1();
          }

LABEL_42:

LABEL_50:
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

BOOL boringssl_session_state_has_remote_address(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    v6 = v3 + 12;
    v7 = v4[12];
    v5 = v7 == *a2 && memcmp(v6, a2, v7) == 0;
  }

  return v5;
}

SSL_SESSION *boringssl_session_state_create_inner_session(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return SSL_SESSION_from_bytes(*(a1 + 40), *(a1 + 48), *(a2 + 400));
  }

  else
  {
    return 0;
  }
}

SSL_SESSION *SSL_SESSION_from_bytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  bssl::SSL_SESSION_parse(&v7, *(a3 + 16), *(a3 + 800), &v6);
  v3 = v6;
  if (v6)
  {
    v4 = *(&v7 + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 847);
    v6 = 0;
    SSL_SESSION_free(v3);
    return 0;
  }

  return v3;
}

void sub_1A902341C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *bssl::ssl_session_new@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  result = bssl::New<ssl_session_st,bssl::SSL_X509_METHOD const*&>(&v4);
  *a2 = result;
  return result;
}

uint64_t CBS_get_asn1_uint64(__int128 *a1, unint64_t *a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  result = cbs_get_asn1(a1, &v12, 2, 1);
  if (result)
  {
    result = CBS_is_unsigned_asn1_integer(&v12);
    if (result)
    {
      *a2 = 0;
      v4 = v13;
      if (v13)
      {
        v5 = 0;
        v6 = 0;
        v7 = v12;
        v8 = v13 - 1;
        do
        {
          *a2 = v6 << 8;
          v9 = v7[v5] | (v6 << 8);
          *a2 = v9;
          v10 = v5 + 1;
          if (v8 == v5)
          {
            break;
          }

          v11 = HIWORD(v6);
          ++v5;
          v6 = v9;
        }

        while (!v11);
        return v10 >= v4;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL CBS_is_unsigned_asn1_integer(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = **a1;
    v3 = v2 >> 7;
    if (v1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v5 = (*a1)[1];
      v4 = (**a1 || v5 < 0) && (v2 != 255 || (v5 & 0x80u) == 0);
    }
  }

  else
  {
    v4 = 0;
    v3 = -1431655766;
  }

  return !v3 && v4;
}

uint64_t CBS_get_optional_asn1_octet_string(__int128 *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  memset(v8, 170, sizeof(v8));
  result = CBS_get_optional_asn1(a1, &v8[1], v8, a4);
  if (result)
  {
    if (!v8[0])
    {
      *a2 = 0;
      a2[1] = 0;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_7;
    }

    if (!a2)
    {
      CBS_get_optional_asn1_octet_string_cold_1();
    }

    asn1 = cbs_get_asn1(&v8[1], a2, 4, 1);
    result = 0;
    if (asn1 && !*&v8[3])
    {
      if (!a3)
      {
        return 1;
      }

LABEL_7:
      *a3 = v8[0];
      return 1;
    }
  }

  return result;
}

uint64_t CBS_get_optional_asn1_uint64(__int128 *a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  memset(v8, 170, sizeof(v8));
  result = CBS_get_optional_asn1(a1, &v8[1], v8, a3);
  if (result)
  {
    if (v8[0])
    {
      asn1_uint64 = CBS_get_asn1_uint64(&v8[1], a2);
      result = 0;
      if (!asn1_uint64 || *&v8[3])
      {
        return result;
      }
    }

    else
    {
      *a2 = a4;
    }

    return 1;
  }

  return result;
}

uint64_t bssl::SSL_SESSION_parse_long(__int128 *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_optional_asn1_uint64(a1, &v4, 2684354565, 0) || (v4 & 0x8000000000000000) != 0)
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 484);
    return 0;
  }

  else
  {
    *a2 = v4;
    return 1;
  }
}

BOOL bssl::SSL_SESSION_parse_string(__int128 *a1, void **a2)
{
  memset(v8, 170, sizeof(v8));
  if (!CBS_get_optional_asn1_octet_string(a1, &v8[1], v8, 2684354568))
  {
    v3 = 424;
    goto LABEL_6;
  }

  if (!v8[0])
  {
    v5 = a2;
    v6 = 0;
LABEL_10:
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v5, v6);
    return 1;
  }

  if (CBS_contains_zero_byte(&v8[1]))
  {
    v3 = 429;
LABEL_6:
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", v3);
    return 0;
  }

  v7 = 0;
  result = CBS_strdup(&v8[1], &v7);
  if (result)
  {
    v6 = v7;
    v5 = a2;
    goto LABEL_10;
  }

  return result;
}

uint64_t bssl::SSL_SESSION_parse_u32(__int128 *a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_optional_asn1_uint64(a1, &v7, a3, a4))
  {
    v5 = HIDWORD(v7) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *a2 = v7;
    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 497);
    return 0;
  }
}

uint64_t bssl::SSL_SESSION_parse_octet_string(__int128 *a1, void *a2, uint64_t a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_optional_asn1_octet_string(a1, &v9, 0, a3))
  {
    v5 = v9;
    v4 = v10;
    result = bssl::Array<unsigned char>::InitUninitialized(a2, v10);
    if (result)
    {
      if (v4)
      {
        v7 = *a2;
        do
        {
          v8 = *v5++;
          *v7++ = v8;
          --v4;
        }

        while (v4);
      }

      return 1;
    }
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 450);
    return 0;
  }

  return result;
}

uint64_t bssl::compare_uint16_t(bssl *this, unsigned __int16 *a2, const void *a3)
{
  v3 = *this;
  v4 = *a2;
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t bssl::tls_set_read_state(bssl *a1, const ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  if (bssl::tls_has_unprocessed_handshake_data(a1, a2))
  {
    ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_method.cc", 90);
    bssl::ssl_send_alert(a1, 2, 10);
    return 0;
  }

  v11 = *(a1 + 21);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(*(a1 + 6) + 280);
  if (v12 && (*(v12 + 1602) & 8) != 0 || (result = (*v11)(a1, a2, **a3, a4, a5), result))
  {
    if (a2 == 1)
    {
      return 1;
    }

LABEL_8:
    v13 = *(a1 + 6);
    *v13 = 0;
    v14 = *a3;
    *a3 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v13 + 264), v14);
    *(*(a1 + 6) + 200) = a2;
    return 1;
  }

  return result;
}

uint64_t bssl::ext_channel_id_parse_serverhello(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (SSL_is_dtls(*a1))
    {
      bssl::ext_channel_id_parse_serverhello();
    }

    if (!*(*(a1 + 8) + 128))
    {
      bssl::ext_channel_id_parse_serverhello();
    }

    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1600) |= 0x2000000u;
  }

  return 1;
}

unint64_t bssl::tls1_check_duplicate_extensions(__int128 *a1)
{
  v2 = 0;
  v16 = *a1;
  while (*(&v16 + 1))
  {
    LOWORD(v13[0]) = -21846;
    __base = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_u16(&v16, v13))
    {
      ++v2;
      if (CBS_get_u16_length_prefixed(&v16, &__base))
      {
        continue;
      }
    }

    return 0;
  }

  if (v2)
  {
    __base = 0;
    v15 = 0;
    if (bssl::Array<unsigned short>::InitUninitialized(&__base, v2))
    {
      v16 = *a1;
      if (v15)
      {
        v3 = 0;
        v4 = 0;
        while (1)
        {
          v13[0] = 0xAAAAAAAAAAAAAAAALL;
          v13[1] = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16(&v16, __base + v3) || !CBS_get_u16_length_prefixed(&v16, v13))
          {
            break;
          }

          ++v4;
          v5 = v15;
          v3 += 2;
          if (v4 >= v15)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v5 = 0;
LABEL_16:
        if (*(&v16 + 1))
        {
          __assert_rtn("tls1_check_duplicate_extensions", "extensions.cc", 194, "CBS_len(&extensions) == 0");
        }

        qsort(__base, v5, 2uLL, bssl::compare_uint16_t);
        if (v2 == 1)
        {
          goto LABEL_31;
        }

        v6 = v15;
        if (v15 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v15;
        }

        v8 = (__base + 2);
        v9 = v7 - 1;
        if (v2 <= 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = v2;
        }

        v11 = 1;
        while (1)
        {
          if (!v6 || !v9)
          {
            abort();
          }

          if (*(v8 - 1) == *v8)
          {
            break;
          }

          ++v11;
          ++v8;
          --v9;
          --v6;
          if (v10 == v11)
          {
            v2 = v11 >= v2;
            goto LABEL_31;
          }
        }
      }
    }

    v2 = 0;
LABEL_31:
    OPENSSL_free(__base);
    return v2;
  }

  return 1;
}

void sub_1A9023C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_parse_serverhello_tlsext(uint64_t a1, __int128 *a2)
{
  v3 = *a1;
  v25 = *a2;
  if (!bssl::tls1_check_duplicate_extensions(&v25))
  {
    goto LABEL_14;
  }

  if (*(&v25 + 1))
  {
    v4 = 0;
    v5 = "extension %u";
    while (2)
    {
      v24 = -21846;
      v23[0] = 0xAAAAAAAAAAAAAAAALL;
      v23[1] = 0xAAAAAAAAAAAAAAAALL;
      if (CBS_get_u16(&v25, &v24) && CBS_get_u16_length_prefixed(&v25, v23))
      {
        v6 = 0;
        v7 = off_1F1CAFD60;
        while (*(v7 - 8) != v24)
        {
          ++v6;
          v7 += 5;
          if (v6 == 30)
          {
            v10 = 4477;
LABEL_15:
            ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v10);
            ERR_add_error_dataf(v5, v24);
            v9 = 110;
            goto LABEL_16;
          }
        }

        v8 = 1 << v6;
        if ((*(a1 + 376) & (1 << v6)) == 0)
        {
          v10 = 4488;
          v5 = "extension :%u";
          goto LABEL_15;
        }

        v22 = 50;
        if (((*v7)(a1, &v22, v23) & 1) == 0)
        {
          ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4498);
          ERR_add_error_dataf("extension %u", v24);
          v9 = v22;
          goto LABEL_16;
        }

        v4 |= v8;
        if (*(&v25 + 1))
        {
          continue;
        }

        goto LABEL_19;
      }

      break;
    }

LABEL_14:
    v9 = 50;
    goto LABEL_16;
  }

  v4 = 0;
LABEL_19:
  v13 = 0;
  v14 = off_1F1CAFD60;
  do
  {
    if (((v4 >> v13) & 1) == 0)
    {
      LOBYTE(v23[0]) = 50;
      if (((*v14)(a1, v23, 0) & 1) == 0)
      {
        ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4511);
        ERR_add_error_dataf("extension %u", *(v14 - 8));
        v9 = LOBYTE(v23[0]);
        goto LABEL_16;
      }
    }

    ++v13;
    v14 += 5;
  }

  while (v13 != 30);
  v15 = *(a1 + 1536);
  if (!v15 || (*(v15 + 440) & 0x40) == 0)
  {
    return 1;
  }

  v3 = *a1;
  v16 = *(*a1 + 48);
  v17 = *(v16 + 504);
  if (!v17)
  {
    ERR_put_error(16, 0, 308, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4555);
    v11 = v3;
    v9 = 47;
    goto LABEL_17;
  }

  v25 = 0uLL;
  if (bssl::ssl_get_local_application_settings(a1, &v25, *(v16 + 496), v17))
  {
    v18 = *(&v25 + 1);
    v19 = v25;
    if (bssl::Array<unsigned char>::InitUninitialized(v15 + 408, *(&v25 + 1)))
    {
      if (v18)
      {
        v20 = *(v15 + 408);
        do
        {
          v21 = *v19++;
          *v20++ = v21;
          --v18;
        }

        while (v18);
      }

      return 1;
    }

    v9 = 80;
  }

  else
  {
    ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 4564);
    v9 = 47;
  }

LABEL_16:
  v11 = v3;
LABEL_17:
  bssl::ssl_send_alert(v11, 2, v9);
  return 0;
}

uint64_t bssl::ext_alpn_parse_serverhello(uint64_t *a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  if (!a3)
  {
    if (!*(v4 + 168))
    {
      return 1;
    }

    ERR_put_error(16, 0, 307, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1410);
    result = 0;
    v13 = 120;
    goto LABEL_18;
  }

  if ((*(*(v4 + 48) + 222) & 0x10) != 0)
  {
    bssl::ext_alpn_parse_serverhello();
  }

  if (!*(a1[1] + 144))
  {
    bssl::ext_alpn_parse_serverhello();
  }

  if ((*(a1 + 1601) & 0x40) != 0)
  {
    *a2 = 47;
    ERR_put_error(16, 0, 170, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1423);
    return 0;
  }

  memset(v14, 170, sizeof(v14));
  result = CBS_get_u16_length_prefixed(a3, &v14[2]);
  if (!result)
  {
    return result;
  }

  if (*(a3 + 8))
  {
    return 0;
  }

  result = CBS_get_u8_length_prefixed(&v14[2], v14);
  if (result)
  {
    result = 0;
    if (v14[1])
    {
      if (!v14[3])
      {
        if (bssl::ssl_is_alpn_protocol_allowed(a1, v14[0], v14[1]))
        {
          v8 = *(v4 + 48);
          v10 = v14[0];
          v9 = v14[1];
          if (bssl::Array<unsigned char>::InitUninitialized(v8 + 496, v14[1]))
          {
            if (v9)
            {
              v11 = *(v8 + 496);
              result = 1;
              do
              {
                v12 = *v10++;
                *v11++ = v12;
                --v9;
              }

              while (v9);
              return result;
            }

            return 1;
          }

          v13 = 80;
        }

        else
        {
          ERR_put_error(16, 0, 259, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1440);
          v13 = 47;
        }

        result = 0;
LABEL_18:
        *a2 = v13;
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_is_alpn_protocol_allowed(void *a1, const void *a2, size_t a3)
{
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (!v6)
  {
    return 0;
  }

  if ((*(*(*a1 + 120) + 856) & 0x80) != 0)
  {
    return 1;
  }

  return bssl::ssl_alpn_list_contains_protocol(*(v5 + 136), v6, a2, a3);
}

uint64_t bssl::ext_quic_transport_params_parse_serverhello_impl(uint64_t a1, ssl_st *a2, uint64_t a3, int a4)
{
  v6 = *a1;
  if (!a3)
  {
    if (((*(*(a1 + 8) + 309) & 0x200) == 0) != a4 && *(v6 + 21))
    {
      result = 0;
      LOBYTE(a2->version) = 109;
      return result;
    }

    return 1;
  }

  if (!*(v6 + 21))
  {
    bssl::ext_quic_transport_params_parse_serverhello_impl();
  }

  if (bssl::ssl_protocol_version(*a1, a2, a3) != 772)
  {
    bssl::ext_quic_transport_params_parse_serverhello_impl();
  }

  if (a4 != (*(*(a1 + 8) + 309) & 0x200) >> 9)
  {
    bssl::ext_quic_transport_params_parse_serverhello_impl();
  }

  v8 = (*(v6 + 6) + 584);
  v10 = *a3;
  v9 = *(a3 + 8);
  result = bssl::Array<unsigned char>::InitUninitialized(v8, v9);
  if (result)
  {
    if (v9)
    {
      v12 = *v8;
      do
      {
        v13 = *v10++;
        *v12++ = v13;
        --v9;
      }

      while (v9);
    }

    return 1;
  }

  return result;
}

uint64_t bssl::ext_ech_parse_serverhello(bssl **a1, ssl_st *a2, char **a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2, a3) < 0x304 || *(*(v6 + 6) + 216) == 1)
  {
    LOBYTE(a2->version) = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 633);
    return 0;
  }

  if ((bssl::ssl_is_valid_ech_config_list(*a3, a3[1]) & 1) == 0)
  {
    result = 0;
    v13 = 50;
LABEL_14:
    LOBYTE(a2->version) = v13;
    return result;
  }

  if (*(*(v6 + 6) + 216) != 2)
  {
    return 1;
  }

  v8 = a1 + 75;
  v10 = *a3;
  v9 = a3[1];
  result = bssl::Array<unsigned char>::InitUninitialized(v8, v9);
  if (!result)
  {
    v13 = 80;
    goto LABEL_14;
  }

  if (!v9)
  {
    return 1;
  }

  v11 = *v8;
  result = 1;
  do
  {
    v12 = *v10++;
    *v11 = v12;
    v11 = (v11 + 1);
    --v9;
  }

  while (v9);
  return result;
}

uint64_t bssl::ext_ems_parse_serverhello(uint64_t a1, ssl_st *a2, uint64_t a3)
{
  v5 = *a1;
  if (a3)
  {
    if (bssl::ssl_protocol_version(*a1, a2, a3) > 0x303 || *(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1600) |= 0x10000u;
  }

  v8 = *(*(v5 + 6) + 472);
  if (!v8 || (HIWORD(*(a1 + 1600)) & 1) == (*(v8 + 440) & 1))
  {
    return 1;
  }

  ERR_put_error(16, 0, 263, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 897);
  result = 0;
  LOBYTE(a2->version) = 47;
  return result;
}

uint64_t bssl::ext_ri_parse_serverhello(bssl **a1, ssl_st *a2, uint64_t a3)
{
  v5 = *a1;
  if (a3 && bssl::ssl_protocol_version(*a1, a2, a3) >= 0x304)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 6);
  v7 = *(v6 + 222);
  if ((v7 & 0x10) != 0 && (a3 != 0) == ((v7 & 0x40) == 0))
  {
    LOBYTE(a2->version) = 40;
    ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 745);
    return 0;
  }

  else
  {
    if (a3)
    {
      v8 = *(v6 + 455);
      if (v8 != *(v6 + 468))
      {
        bssl::ext_ri_parse_serverhello();
      }

      if (((v7 & 0x10) == 0) != (v8 == 0))
      {
        bssl::ext_ri_parse_serverhello();
      }

      v14 = 0xAAAAAAAAAAAAAAAALL;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u8_length_prefixed(a3, &v14) || *(a3 + 8))
      {
        ERR_put_error(16, 0, 201, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 770);
LABEL_11:
        result = 0;
        v10 = 47;
LABEL_12:
        LOBYTE(a2->version) = v10;
        return result;
      }

      memset(v13, 170, sizeof(v13));
      if (!CBS_get_bytes(&v14, &v13[2], *(*(v5 + 6) + 455)) || (CBS_get_bytes(&v14, v13, *(*(v5 + 6) + 468)) ? (v11 = v15 == 0) : (v11 = 0), !v11))
      {
        v12 = 782;
LABEL_26:
        ERR_put_error(16, 0, 202, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v12);
        result = 0;
        v10 = 40;
        goto LABEL_12;
      }

      if (!CBS_mem_equal(&v13[2], (*(v5 + 6) + 443), *(*(v5 + 6) + 455)) || !CBS_mem_equal(v13, (*(v5 + 6) + 456), *(*(v5 + 6) + 468)))
      {
        v12 = 796;
        goto LABEL_26;
      }

      *(*(v5 + 6) + 222) |= 0x40u;
    }

    return 1;
  }
}

uint64_t bssl::ext_ec_point_parse_serverhello(bssl **a1, ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (bssl::ssl_protocol_version(*a1, a2, a3) > 0x303)
  {
    return 0;
  }

  __s = 0xAAAAAAAAAAAAAAAALL;
  __n = 0xAAAAAAAAAAAAAAAALL;
  result = CBS_get_u8_length_prefixed(a3, &__s);
  if (!result)
  {
    return result;
  }

  if (*(a3 + 8))
  {
    return 0;
  }

  if (__n && memchr(__s, 0, __n))
  {
    return 1;
  }

  result = 0;
  LOBYTE(a2->version) = 47;
  return result;
}

uint64_t bssl::ext_ticket_parse_serverhello(uint64_t a1, const ssl_st *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a1;
    if (bssl::ssl_protocol_version(*a1, a2, a3) > 0x303)
    {
      return 0;
    }

    if ((SSL_get_options(v5) & 0x4000) != 0)
    {
      bssl::ext_ticket_parse_serverhello();
    }

    if (*(a3 + 8))
    {
      return 0;
    }

    *(a1 + 1600) |= 0x8000u;
  }

  return 1;
}

BOOL bssl::ext_ocsp_parse_serverhello(uint64_t a1, const ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (bssl::ssl_protocol_version(*a1, a2, a3) > 0x303 || *(a3 + 8))
  {
    return 0;
  }

  result = bssl::ssl_cipher_uses_certificate_auth(*(a1 + 1568), v5);
  if (result)
  {
    *(a1 + 1600) |= 0x40u;
    return 1;
  }

  return result;
}

BOOL bssl::forbid_parse_serverhello(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    *a2 = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 508);
  }

  return a3 == 0;
}

EVP_PKEY *EVP_parse_public_key(__int128 *a1)
{
  memset(v10, 170, sizeof(v10));
  memset(v9, 170, sizeof(v9));
  if (!CBS_get_asn1(a1, &v10[1], 536870928) || !CBS_get_asn1(&v10[1], v10, 536870928) || !CBS_get_asn1(&v10[1], &v9[1], 3) || *(&v10[1] + 1))
  {
    v6 = 102;
    v7 = 106;
LABEL_13:
    ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", v7);
    return 0;
  }

  v1 = parse_key_type(v10);
  if (!v1)
  {
    v6 = 128;
    v7 = 111;
    goto LABEL_13;
  }

  v2 = v1;
  if (!CBS_get_u8(&v9[1], v9) || v9[0])
  {
    v6 = 102;
    v7 = 118;
    goto LABEL_13;
  }

  v3 = EVP_PKEY_new();
  v4 = v3;
  if (!v3)
  {
LABEL_19:
    EVP_PKEY_free(v4);
    return 0;
  }

  evp_pkey_set_method(v3, v2);
  v5 = *(v4->pkey.ptr + 3);
  if (!v5)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 131);
    goto LABEL_19;
  }

  if (!v5(v4, v10, &v9[1]))
  {
    goto LABEL_19;
  }

  return v4;
}

uint64_t parse_key_type(__int128 *a1)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a1, &v6, 6))
  {
    return 0;
  }

  v1 = 0;
  v3 = v6;
  v2 = v7;
  while (1)
  {
    v4 = *(&kASN1Methods + v1);
    if (v2 == *(v4 + 13) && (!*(v4 + 13) || !memcmp(v3, (v4 + 4), v2)))
    {
      break;
    }

    v1 += 8;
    if (v1 == 40)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t evp_pkey_set_method(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v4 + 160);
    if (v5)
    {
      result = v5(result);
      *(v3 + 8) = 0;
    }
  }

  *(v3 + 16) = a2;
  *(v3 + 4) = *a2;
  return result;
}

uint64_t bssl::ext_npn_parse_serverhello(uint64_t a1, ssl_st *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2, a3) > 0x303)
  {
    return 0;
  }

  if ((*(*(v6 + 6) + 222) & 0x10) != 0)
  {
    bssl::ext_npn_parse_serverhello();
  }

  if (SSL_is_dtls(v6))
  {
    bssl::ext_npn_parse_serverhello();
  }

  v7 = *(v6 + 15);
  v8 = *(v7 + 616);
  if (!v8)
  {
    bssl::ext_npn_parse_serverhello();
  }

  if (*(*(v6 + 6) + 504))
  {
    LOBYTE(a2->version) = 47;
    ERR_put_error(16, 0, 170, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1193);
    return 0;
  }

  v10 = *a3;
  v11 = *(a3 + 8);
  if (!v11)
  {
LABEL_14:
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v18 = -86;
    if (v8(v6, &v19, &v18, v10, v11, *(v7 + 624)) || (v13 = *(v6 + 6), v14 = v19, v15 = v18, !bssl::Array<unsigned char>::InitUninitialized(v13 + 480, v18)))
    {
      result = 0;
      LOBYTE(a2->version) = 80;
      return result;
    }

    if (v15)
    {
      v16 = *(v13 + 480);
      do
      {
        v17 = *v14++;
        *v16++ = v17;
        --v15;
      }

      while (v15);
    }

    *(a1 + 1600) |= 0x4000u;
    return 1;
  }

  while (1)
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    u8_length_prefixed = CBS_get_u8_length_prefixed(a3, &v19);
    result = 0;
    if (!u8_length_prefixed || !v20)
    {
      return result;
    }

    if (!*(a3 + 8))
    {
      v7 = *(v6 + 15);
      v8 = *(v7 + 616);
      goto LABEL_14;
    }
  }
}

uint64_t bssl::ext_srtp_parse_serverhello(unsigned __int8 ***a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a1;
    if (!SSL_is_dtls(*a1))
    {
      bssl::ext_srtp_parse_serverhello();
    }

    memset(v16, 170, sizeof(v16));
    v15 = -21846;
    if (!CBS_get_u16_length_prefixed(a3, &v16[2]) || !CBS_get_u16(&v16[2], &v15) || v16[3] || !CBS_get_u8_length_prefixed(a3, v16) || *(a3 + 8))
    {
      ERR_put_error(16, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 1737);
      return 0;
    }

    if (v16[1])
    {
      v8 = 115;
      v9 = 1743;
LABEL_16:
      ERR_put_error(16, 0, v8, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v9);
      result = 0;
      *a2 = 47;
      return result;
    }

    srtp_profiles = SSL_get_srtp_profiles(v5, v6);
    v11 = EVP_MD_CTX_md(srtp_profiles);
    if (!v11)
    {
LABEL_15:
      v8 = 116;
      v9 = 1756;
      goto LABEL_16;
    }

    v12 = v11;
    v13 = 0;
    while (1)
    {
      v14 = OPENSSL_sk_value(srtp_profiles, v13);
      if (v14[1] == v15)
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_15;
      }
    }

    *(v5[6] + 75) = v14;
  }

  return 1;
}

uint64_t bssl::ext_early_data_parse_serverhello(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = *(v3 + 48);
    v5 = *(v4 + 222);
    if ((v5 & 0x1000) != 0)
    {
      bssl::ext_early_data_parse_serverhello();
    }

    if (*(a3 + 8))
    {
      result = 0;
      *a2 = 50;
      return result;
    }

    if ((v5 & 0x20) == 0)
    {
      *a2 = 110;
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2206);
      return 0;
    }

    *(v4 + 256) = 2;
    *(v4 + 222) = v5 | 0x200;
  }

  else
  {
    v7 = *(v3 + 48);
    if ((*(a1 + 1601) & 8) == 0 || (v8 = *(v7 + 222), (v8 & 0x1000) != 0))
    {
      if (!*(v7 + 256))
      {
        bssl::ext_early_data_parse_serverhello();
      }
    }

    else
    {
      if ((v8 & 0x20) != 0)
      {
        v9 = 4;
      }

      else
      {
        v9 = 6;
      }

      *(v7 + 256) = v9;
    }
  }

  return 1;
}

uint64_t bssl::ext_alps_parse_serverhello_impl(uint64_t a1, ssl_st *a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *a1;
  if ((*(*(v5 + 6) + 222) & 0x10) != 0)
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  v6 = *(a1 + 8);
  if (!*(v6 + 144))
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  if (!*(v6 + 160))
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  if (a4 != (*(v6 + 309) & 0x2000) >> 13)
  {
    bssl::ext_alps_parse_serverhello_impl();
  }

  if (bssl::ssl_protocol_version(v5, a2, a3) <= 0x303)
  {
    LOBYTE(a2->version) = 110;
    ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 3321);
    return 0;
  }

  v10 = *(a1 + 1536);
  v12 = *a3;
  v11 = *(a3 + 8);
  result = bssl::Array<unsigned char>::InitUninitialized(v10 + 424, v11);
  if (result)
  {
    if (v11)
    {
      v13 = *(v10 + 424);
      do
      {
        v14 = *v12++;
        *v13++ = v14;
        --v11;
      }

      while (v11);
    }

    *(*(a1 + 1536) + 440) |= 0x40u;
    return 1;
  }

  LOBYTE(a2->version) = 80;
  return result;
}

uint64_t bssl::ext_client_certificate_type_parse_serverhello(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v12[4] = v3;
  v12[5] = v4;
  v7 = *(a1 + 8);
  v8 = *(v7 + 208);
  if (!v8)
  {
    return 1;
  }

  if (a3)
  {
    v12[0] = *(v7 + 200);
    v12[1] = v8;
    v11 = -86;
    if (CBS_get_u8(a3, &v11) && bssl::ssl_is_certificate_type_allowed(v12, v11))
    {
      *(a1 + 747) = v11;
      *(a1 + 1600) |= 0x400000u;
      return 1;
    }

    v10 = 3646;
  }

  else
  {
    v10 = 3629;
  }

  ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v10);
  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_server_certificate_type_parse_serverhello(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*(a1 + 30) < 0x304u)
  {
    return 1;
  }

  v12[4] = v3;
  v12[5] = v4;
  v7 = *(a1 + 8);
  v8 = *(v7 + 184);
  if (!v8)
  {
    return 1;
  }

  if (a3)
  {
    v12[0] = *(v7 + 176);
    v12[1] = v8;
    v11 = -86;
    if (CBS_get_u8(a3, &v11) && bssl::ssl_is_certificate_type_allowed(v12, v11))
    {
      *(a1 + 746) = v11;
      *(a1 + 1600) |= 0x200000u;
      return 1;
    }

    v10 = 3526;
  }

  else
  {
    v10 = 3509;
  }

  ERR_put_error(16, 0, 228, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", v10);
  result = 0;
  *a2 = 47;
  return result;
}

uint64_t bssl::ext_sct_parse_serverhello(uint64_t a1, ssl_st *a2, __int128 *a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = *a1;
  if (bssl::ssl_protocol_version(*a1, a2, a3) > 0x303)
  {
    goto LABEL_8;
  }

  if ((*(*(a1 + 8) + 309) & 2) == 0)
  {
    bssl::ext_sct_parse_serverhello();
  }

  if (bssl::ssl_is_sct_list_valid(a3))
  {
    if ((*(*(v6 + 6) + 222) & 0x20) != 0)
    {
      return 1;
    }

    v7 = *(a1 + 1536);
    v8 = CRYPTO_BUFFER_new_from_CBS(a3, *(*(v6 + 15) + 800));
    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v7 + 248), v8);
    if (*(*(a1 + 1536) + 248))
    {
      return 1;
    }

    v10 = 80;
  }

  else
  {
LABEL_8:
    v10 = 50;
  }

  result = 0;
  LOBYTE(a2->version) = v10;
  return result;
}

BOOL bssl::ext_ticket_request_parse_serverhello(uint64_t a1, _BYTE *a2, void *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (*(a1 + 30) < 0x304u || !*(*(a1 + 8) + 224))
  {
    return 1;
  }

  v7 = -86;
  u8 = CBS_get_u8(a3, &v7);
  result = u8 != 0;
  if (u8)
  {
    *(a1 + 750) = v7;
  }

  else
  {
    *a2 = 47;
  }

  return result;
}

EVP_PKEY *bssl::ssl_cert_parse_pubkey@<X0>(__int128 *a1@<X0>, EVP_PKEY **a2@<X8>)
{
  v5 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_cert_skip_to_spki(&v5, &v4))
  {
    result = EVP_parse_public_key(&v4);
  }

  else
  {
    ERR_put_error(16, 0, 272, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 388);
    result = 0;
  }

  *a2 = result;
  return result;
}

id nw_dispatch_data_create_subrange_map(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = v7;
  if (a4)
  {
    if (a3)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy_;
      v26 = __Block_byref_object_dispose_;
      v27 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v13[3] = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __nw_dispatch_data_create_subrange_map_block_invoke;
      v12[3] = &unk_1E785EC38;
      v12[8] = a2;
      v12[9] = a3;
      v12[4] = &v22;
      v12[5] = &v18;
      v12[6] = &v14;
      v12[7] = v13;
      dispatch_data_apply(v7, v12);
      v9 = 0;
      if (v19[3] == a3)
      {
        *a4 = v15[3];
        v9 = v23[5];
      }

      _Block_object_dispose(v13, 8);
      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v9 = MEMORY[0x1E69E9668];
      v10 = MEMORY[0x1E69E9668];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __nw_dispatch_data_create_subrange_map_block_invoke(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a1[8];
  if (a5 + a3 > v11)
  {
    v12 = a1[9];
    v13 = v12 + v11;
    if (v12 + v11 > a3)
    {
      v14 = v11 >= a3;
      v15 = v11 - a3;
      if (v11 > a3)
      {
        a3 = a1[8];
      }

      if (!v14)
      {
        v15 = 0;
      }

      v16 = (a4 + v15);
      v17 = a5 - v15;
      v18 = *(a1[4] + 8);
      v20 = *(v18 + 40);
      v19 = (v18 + 40);
      if (v20)
      {
        goto LABEL_8;
      }

      if (v17 >= v12)
      {
        objc_storeStrong(v19, a2);
        v22 = 0;
        *(*(a1[5] + 8) + 24) = a1[9];
        *(*(a1[6] + 8) + 24) = v16;
        goto LABEL_17;
      }

      alloc = dispatch_data_create_alloc();
      v24 = *(a1[4] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = alloc;

      if (*(*(a1[4] + 8) + 40))
      {
        *(*(a1[6] + 8) + 24) = *(*(a1[7] + 8) + 24);
        v11 = a1[8];
        v13 = a1[9] + v11;
LABEL_8:
        if (v17 + a3 <= v13)
        {
          v21 = v17;
        }

        else
        {
          v21 = v13 - a3;
        }

        memcpy((*(*(a1[7] + 8) + 24) + a3 - v11), v16, v21);
        *(*(a1[5] + 8) + 24) += v21;
        goto LABEL_12;
      }
    }

    v22 = 0;
    goto LABEL_17;
  }

LABEL_12:
  v22 = 1;
LABEL_17:

  return v22;
}

void nw_protocol_boringssl_copy_info_cold_1()
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

uint64_t nw_protocol_boringssl_copy_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = nw_protocol_downcast();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((*(v4 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_copy_info_cold_1();
  }

  nw_protocol_get_output_handler();
  is_valid = nw_protocol_copy_info_is_valid();
  if (v3 == 254)
  {
    if (is_valid)
    {
      nw_protocol_get_output_handler();
      v7 = nw_protocol_copy_info();
    }

    else
    {
      v7 = 0;
    }

    boringssl_session_get_handshake_time_ms(*(v5 + 296));
    boringssl_session_get_handshake_rtt_ms(*(v5 + 296));
    v9 = MEMORY[0x1AC57EEA0]();
    v8 = nw_protocol_establishment_report_create();

    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v3 == 255)
  {
    if (is_valid)
    {
      nw_protocol_get_output_handler();
      v7 = nw_protocol_copy_info();
    }

    else
    {
      v7 = 0;
    }

    v8 = boringssl_context_copy_metadata(*(v5 + 296));
    if (!v8)
    {
LABEL_22:

      return v7;
    }

LABEL_19:
    if (!v7)
    {
      v7 = MEMORY[0x1AC57E910]();
    }

    nw_array_append();
    goto LABEL_22;
  }

  if (!is_valid)
  {
    return 0;
  }

  nw_protocol_get_output_handler();
  return nw_protocol_copy_info();
}

void *boringssl_context_set_read_secret(const SSL *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = SSL_get_ex_data(a1, 0);
  if (!v9 || *v9 != -1252936367 || !v9[1])
  {
    return 0;
  }

  return boringssl_context_set_encryption_secrets(a1, a2, a4, 0, a5);
}

void *crypto_buffer_new(const void *a1, unint64_t a2, int a3, void *a4)
{
  if (!a4)
  {
    goto LABEL_6;
  }

  v17[2] = a2;
  v17[3] = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = a4;
  v17[1] = a1;
  CRYPTO_MUTEX_lock_read((a4 + 1));
  v8 = OPENSSL_lh_retrieve(*a4, v17, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
  v9 = v8;
  if (!a3 || !v8)
  {
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    CRYPTO_refcount_inc((v8 + 24));
    CRYPTO_MUTEX_unlock_read((a4 + 1));
    return v9;
  }

  if (*(v8 + 28))
  {
    goto LABEL_16;
  }

LABEL_5:
  CRYPTO_MUTEX_unlock_read((a4 + 1));
LABEL_6:
  v10 = OPENSSL_zalloc(0x20uLL);
  v9 = v10;
  if (v10)
  {
    if (a3)
    {
      v10[1] = a1;
      *(v10 + 7) = 1;
    }

    else
    {
      v15 = OPENSSL_memdup(a1, a2);
      *(v9 + 8) = v15;
      if (a2 && !v15)
      {
        OPENSSL_free(v9);
        return 0;
      }
    }

    *(v9 + 16) = a2;
    *(v9 + 24) = 1;
    if (a4)
    {
      *v9 = a4;
      CRYPTO_MUTEX_lock_write((a4 + 1));
      v11 = OPENSSL_lh_retrieve(*a4, v9, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
      v12 = v11;
      if (a3 && v11)
      {
        if (!*(v11 + 28))
        {
          goto LABEL_13;
        }
      }

      else if (!v11)
      {
LABEL_13:
        v13 = *a4;
        v17[0] = 0;
        v14 = OPENSSL_lh_insert(v13, v17, v9, lh_CRYPTO_BUFFER_call_hash_func, lh_CRYPTO_BUFFER_call_cmp_func);
        CRYPTO_MUTEX_unlock_read((a4 + 1));
        if (!v14)
        {
          v12 = 0;
LABEL_22:
          crypto_buffer_free_object(v9);
          return v12;
        }

        return v9;
      }

      CRYPTO_refcount_inc((v11 + 24));
      CRYPTO_MUTEX_unlock_read((a4 + 1));
      goto LABEL_22;
    }
  }

  return v9;
}

uint64_t parse_base128_integer(void *a1, unint64_t *a2)
{
  v2 = 0;
  for (i = a1[1] - 1; i != -1; --i)
  {
    v4 = (*a1)++;
    a1[1] = i;
    if (v2 >> 57)
    {
      break;
    }

    v5 = *v4;
    if (!v2 && v5 == 128)
    {
      break;
    }

    v6 = v5 & 0x7F | (v2 << 7);
    v2 = v6;
    if ((v5 & 0x80) == 0)
    {
      *a2 = v6;
      return 1;
    }
  }

  return 0;
}

uint64_t CBS_get_optional_asn1_BOOL(__int128 *a1, int *a2, uint64_t a3, int a4)
{
  memset(v9, 170, sizeof(v9));
  v8 = -1431655766;
  result = CBS_get_optional_asn1(a1, &v9[1], &v8, a3);
  if (result)
  {
    if (!v8)
    {
LABEL_9:
      *a2 = a4;
      return 1;
    }

    asn1 = cbs_get_asn1(&v9[1], v9, 1, 1);
    result = 0;
    if (asn1 && *(&v9[0] + 1) == 1 && !*(&v9[1] + 1))
    {
      a4 = **&v9[0];
      if (**&v9[0])
      {
        if (a4 != 255)
        {
          return 0;
        }

        a4 = 1;
      }

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t bssl::SSL_SESSION_parse_u16(__int128 *a1, _WORD *a2, uint64_t a3)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_optional_asn1_uint64(a1, &v5, a3, 0) && v5 < 0x10000)
  {
    *a2 = v5;
    return 1;
  }

  else
  {
    ERR_put_error(16, 0, 160, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_asn1.cc", 510);
    return 0;
  }
}

void crypto_buffer_free_object(void **a1)
{
  if (!*(a1 + 7))
  {
    OPENSSL_free(a1[1]);
  }

  OPENSSL_free(a1);
}

void bssl::RefCounted<ssl_session_st>::DecRefInternal(ssl_session_st *a1)
{
  if (CRYPTO_refcount_dec_and_test_zero(a1))
  {
    ssl_session_st::~ssl_session_st(a1);

    OPENSSL_free(v2);
  }
}

void ssl_session_st::~ssl_session_st(ssl_session_st *this)
{
  CRYPTO_free_ex_data(&bssl::g_ex_data_class, this, &this->cipher_id);
  (*(this->sess_cert + 8))(this);
  bssl::Array<unsigned char>::~Array(&this[1].verify_result);
  bssl::Array<unsigned char>::~Array(&this[1].sid_ctx[28]);
  bssl::Array<unsigned char>::~Array(&this[1].sid_ctx[12]);
  bssl::Array<unsigned char>::~Array(&this[1].sid_ctx_length);
  this[1].session_id[8] = 0;
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&this->tlsext_tick, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->tlsext_hostname, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->next, 0);
  bssl::Array<unsigned char>::~Array(&this->ex_data.dummy);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&this->sid_ctx[28], 0);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&this->sid_ctx[20], 0);
  this->sid_ctx[16] = 0;
  this->session_id[19] = 0;
  this->master_key[38] = 0;
}

void OPENSSL_sk_pop_free_ex(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      v7 = 0;
      do
      {
        if (*(a1[1] + 8 * v7))
        {
          a2(a3);
          v4 = *a1;
        }

        ++v7;
      }

      while (v7 < v4);
    }

    OPENSSL_free(a1[1]);

    OPENSSL_free(a1);
  }
}

uint64_t bssl::tls13_process_certificate(EVP_PKEY **a1, uint64_t a2, char a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v63 = *(a2 + 8);
  v62 = 0;
  v6 = *(a2 + 1);
  if (v6 == 25)
  {
    v52 = 0xAAAAAAAAAAAAAAAALL;
    v53 = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(v61[0]) = -21846;
    LODWORD(v61[2]) = -1431655766;
    if (!CBS_get_u16(&v63, v61) || !CBS_get_u24(&v63, &v61[2]) || !CBS_get_u24_length_prefixed(&v63, &v52) || *(&v63 + 1))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 144);
      goto LABEL_18;
    }

    if (LODWORD(v61[2]) > *(v5 + 152))
    {
      bssl::ssl_send_alert(v5, 2, 47);
      ERR_put_error(16, 0, 293, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 150);
      ERR_add_error_dataf("requested=%u", LODWORD(v61[2]));
LABEL_18:
      v7 = 0;
      goto LABEL_112;
    }

    v8 = *(v5 + 120);
    v9 = *(v8 + 736);
    if (!v9)
    {
      goto LABEL_79;
    }

    v10 = (*(v8 + 728) + 16);
    v11 = 24 * v9;
    while (*v10 != LOWORD(v61[0]))
    {
      v10 += 12;
      v11 -= 24;
      if (!v11)
      {
        goto LABEL_79;
      }
    }

    v33 = *(v10 - 1);
    if (!v33)
    {
LABEL_79:
      bssl::ssl_send_alert(v5, 2, 47);
      ERR_put_error(16, 0, 294, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 166);
      ERR_add_error_dataf("alg=%d", LOWORD(v61[0]));
      goto LABEL_18;
    }

    v50 = 0;
    if (!v33(v5, &v50))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      ERR_put_error(16, 0, 292, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 175);
      ERR_add_error_dataf("alg=%d", LOWORD(v61[0]));
      goto LABEL_18;
    }

    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v62, v50);
    v34 = CRYPTO_BUFFER_len(v50);
    if (v34 != LODWORD(v61[2]))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      ERR_put_error(16, 0, 292, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 183);
      v39 = LOWORD(v61[0]);
      v40 = CRYPTO_BUFFER_len(v50);
      ERR_add_error_dataf("alg=%d got=%u expected=%u", v39, v40, LODWORD(v61[2]));
      goto LABEL_18;
    }

    v35 = CRYPTO_BUFFER_data(v50);
    v36 = CRYPTO_BUFFER_len(v50);
    *&v63 = v35;
    *(&v63 + 1) = v36;
  }

  else if (v6 != 11)
  {
    __assert_rtn("tls13_process_certificate", "tls13_both.cc", 194, "msg.type == SSL3_MT_CERTIFICATE");
  }

  memset(v61, 170, sizeof(v61));
  if (!CBS_get_u8_length_prefixed(&v63, &v61[2]) || v61[3] || !CBS_get_u24_length_prefixed(&v63, v61) || *(&v63 + 1))
  {
    bssl::ssl_send_alert(v5, 2, 50);
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 203);
    v7 = 0;
    goto LABEL_112;
  }

  ctx = 0xAAAAAAAAAAAAAAAALL;
  ctx = OPENSSL_sk_new_null();
  if (!ctx)
  {
    bssl::ssl_send_alert(v5, 2, 80);
    v7 = 0;
    goto LABEL_111;
  }

  v59 = 0xAAAAAAAAAAAAAAAALL;
  v59 = OPENSSL_sk_new_null();
  if (!v59)
  {
    bssl::ssl_send_alert(v5, 2, 80);
    ERR_put_error(16, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 217);
    v7 = 0;
    goto LABEL_110;
  }

  if (*(v5 + 180))
  {
    v45 = (*(&a1[1][7].save_parameters + 5) >> 5) & 1;
  }

  else
  {
    v45 = 0;
  }

  v58 = 0;
  if (!v61[1])
  {
LABEL_67:
    if (!EVP_MD_CTX_md(ctx))
    {
      std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&ctx, 0);
    }

    v27 = v58;
    v58 = 0;
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](a1 + 191, v27);
    v28 = a1[192];
    v29 = ctx;
    ctx = 0;
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v28[3].pkey, v29);
    v30 = a1[192];
    v31 = v59;
    v59 = 0;
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v30[6].save_parameters, v31);
    if ((*(*(*(v5 + 120) + 16) + 48))(a1[192]))
    {
      if (EVP_MD_CTX_md(a1[192][3].pkey.ptr))
      {
        if (v45)
        {
          v32 = 2;
        }

        else
        {
          v32 = 0;
        }

        LOBYTE(a1[192][11].type) = a1[192][11].type & 0xFD | v32;
        goto LABEL_85;
      }

      if ((a3 & 1) != 0 || (v41 = *(a1 + 400), (v41 & 0x200000) != 0) && *(a1 + 746) == 2 || (v41 & 0x400000) != 0 && *(a1 + 747) == 2)
      {
        a1[192][4].pkey.ptr = 0;
LABEL_85:
        v7 = 1;
        goto LABEL_109;
      }

      ERR_put_error(16, 0, 192, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 380);
      v37 = 116;
    }

    else
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 365);
      v37 = 50;
    }

    bssl::ssl_send_alert(v5, 2, v37);
    goto LABEL_108;
  }

  while (1)
  {
    memset(v57, 170, sizeof(v57));
    if (!CBS_get_u24_length_prefixed(v61, &v57[1]) || !CBS_get_u16_length_prefixed(v61, v57) || !*(&v57[1] + 1))
    {
      bssl::ssl_send_alert(v5, 2, 50);
      v42 = 231;
      v38 = 127;
      goto LABEL_107;
    }

    v12 = *(a1 + 400);
    if ((v12 & 0x200000) != 0 && *(a1 + 746) == 2)
    {
      v13 = EVP_parse_public_key(&v57[1]);
      v52 = 0;
      std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v58, v13);
      std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v52, 0);
      if (!v58)
      {
        bssl::ssl_send_alert(v5, 2, 50);
        v42 = 241;
        goto LABEL_106;
      }

      goto LABEL_45;
    }

    if ((v12 & 0x400000) == 0 || *(a1 + 747) != 2)
    {
      break;
    }

    v14 = EVP_parse_public_key(&v57[1]);
    v52 = 0;
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v58, v14);
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v52, 0);
    if (!v58)
    {
      bssl::ssl_send_alert(v5, 2, 50);
      v42 = 250;
      goto LABEL_106;
    }

LABEL_45:
    v56 = 0xAAAAAAAAAAAAAAAALL;
    v16 = CRYPTO_BUFFER_new_from_CBS(&v57[1], *(*(v5 + 120) + 800));
    v56 = v16;
    if (!v16)
    {
      goto LABEL_88;
    }

    v55 = v16;
    v56 = 0;
    if (!OPENSSL_sk_push(ctx, v16))
    {
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v55, 0);
LABEL_88:
      bssl::ssl_send_alert(v5, 2, 80);
      goto LABEL_105;
    }

    v55 = 0;
    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v55, 0);
    v52 = 0xAAAAAAAAAAAAAAAALL;
    if (*(v5 + 180))
    {
      LOBYTE(v17) = 0;
      LODWORD(v52) = 5;
      v53 = 0;
      v54 = 0;
      v50 = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = (*(&a1[1][7].save_parameters + 5) & 4) != 0;
      LOWORD(v52) = 5;
      WORD1(v52) = v18;
      v53 = 0;
      v54 = 0;
      v50 = 0xAAAAAAAAAAAAAAAALL;
      v17 = (*(&a1[1][7].save_parameters + 5) >> 1) & 1;
    }

    LOWORD(v50) = 18;
    WORD1(v50) = v17;
    v51 = 0uLL;
    v49 = 50;
    v64 = &v52;
    v65 = &v50;
    if ((bssl::ssl_parse_extensions(v57, &v49, &v64, 2, 0) & 1) == 0)
    {
      v20 = v49;
      goto LABEL_104;
    }

    if (BYTE3(v52) == 1)
    {
      v48 = -86;
      v64 = 0xAAAAAAAAAAAAAAAALL;
      v65 = 0xAAAAAAAAAAAAAAAALL;
      u8 = CBS_get_u8(&v53, &v48);
      v20 = 50;
      if (!u8)
      {
        goto LABEL_104;
      }

      if (v48 != 1)
      {
        goto LABEL_104;
      }

      u24_length_prefixed = CBS_get_u24_length_prefixed(&v53, &v64);
      v20 = 50;
      if (!u24_length_prefixed || !v65 || v54)
      {
        goto LABEL_104;
      }

      if (EVP_MD_CTX_md(ctx) == 1)
      {
        v22 = a1[192];
        v23 = CRYPTO_BUFFER_new_from_CBS(&v64, *(*(v5 + 120) + 800));
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v22[6].pkey, v23);
        if (!a1[192][6].pkey.ptr)
        {
          v20 = 80;
LABEL_104:
          bssl::ssl_send_alert(v5, 2, v20);
LABEL_105:
          std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v56, 0);
          goto LABEL_108;
        }
      }

      v47 = 0xAAAAAAAAAAAAAAAALL;
      v24 = CRYPTO_BUFFER_new_from_CBS(&v64, *(*(v5 + 120) + 800));
      v47 = v24;
      if (!v24)
      {
        goto LABEL_98;
      }

      v46 = v24;
      v47 = 0;
      if (!OPENSSL_sk_push(v59, v24))
      {
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v46, 0);
LABEL_98:
        bssl::ssl_send_alert(v5, 2, 80);
        ERR_put_error(16, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 328);
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v47, 0);
        goto LABEL_105;
      }

      v46 = 0;
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v46, 0);
      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v47, 0);
    }

    if (BYTE3(v50) == 1)
    {
      if (!bssl::ssl_is_sct_list_valid(&v51))
      {
        ERR_put_error(16, 0, 149, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", 336);
        v20 = 50;
        goto LABEL_104;
      }

      if (EVP_MD_CTX_md(ctx) == 1)
      {
        v25 = a1[192];
        v26 = CRYPTO_BUFFER_new_from_CBS(&v51, *(*(v5 + 120) + 800));
        std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v25[6].references, v26);
        if (!*&a1[192][6].references)
        {
          v20 = 80;
          goto LABEL_104;
        }
      }
    }

    std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&v56, 0);
    if (!v61[1])
    {
      goto LABEL_67;
    }
  }

  if (EVP_MD_CTX_md(ctx))
  {
    goto LABEL_45;
  }

  bssl::ssl_cert_parse_pubkey(&v57[1], &v52);
  v15 = v52;
  v52 = 0;
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v58, v15);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v52, 0);
  if (v58)
  {
    if ((bssl::ssl_cert_check_key_usage(&v57[1], 0) & 1) == 0)
    {
      bssl::ssl_send_alert(v5, 2, 47);
      goto LABEL_108;
    }

    if (v45)
    {
      SHA256(*&v57[1], *(&v57[1] + 1), &a1[192][6].attributes);
    }

    goto LABEL_45;
  }

  bssl::ssl_send_alert(v5, 2, 50);
  v42 = 259;
LABEL_106:
  v38 = 137;
LABEL_107:
  ERR_put_error(16, 0, v38, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_both.cc", v42);
LABEL_108:
  v7 = 0;
LABEL_109:
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v58, 0);
LABEL_110:
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&v59, 0);
LABEL_111:
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&ctx, 0);
LABEL_112:
  v43 = v62;
  v62 = 0;
  if (v43)
  {
    CRYPTO_BUFFER_free(v43);
  }

  return v7;
}

void sub_1A902683C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, EVP_PKEY *a29, uint64_t a30, uint64_t a31)
{
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](&a24, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&a29, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&a30, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&a31, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v31 - 136), 0);
  _Unwind_Resume(a1);
}

EVP_PKEY *EVP_PKEY_new(void)
{
  result = OPENSSL_zalloc(0x18uLL);
  if (result)
  {
    *&result->type = 1;
  }

  return result;
}

double EVP_aead_aes_256_gcm_tls13_init()
{
  unk_1ED4C0430 = 0u;
  *&qword_1ED4C0440 = 0u;
  unk_1ED4C0460 = 0u;
  *&result = 269487136;
  EVP_aead_aes_256_gcm_tls13_storage = 269487136;
  dword_1ED4C042C = 1;
  qword_1ED4C0438 = aead_aes_gcm_init_with_dir;
  qword_1ED4C0440 = aead_aes_gcm_cleanup;
  qword_1ED4C0450 = aead_aes_gcm_tls13_seal_scatter;
  qword_1ED4C0458 = aead_aes_gcm_open_gather;
  return result;
}

uint64_t rsa_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_asn1(a2, &v8, 5) || v9 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 97);
  }

  else
  {
    v7 = RSA_parse_public_key(a3);
    if (v7 && !*(a3 + 8))
    {
      evp_pkey_set_method(a1, &rsa_asn1_meth);
      *(a1 + 8) = v7;
      return 1;
    }

    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_rsa_asn1.c", 103);
    RSA_free(v7);
  }

  return 0;
}

RSA *RSA_parse_public_key(__int128 *a1)
{
  v2 = RSA_new();
  if (v2)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_asn1(a1, &v6, 536870928) || !parse_integer(&v6, &v2->version) || !parse_integer(&v6, &v2->meth) || *(&v6 + 1))
    {
      v3 = 100;
      v4 = 100;
      goto LABEL_9;
    }

    if (!RSA_check_key(v2))
    {
      v3 = 104;
      v4 = 106;
LABEL_9:
      ERR_put_error(4, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/rsa_extra/rsa_asn1.c", v4);
      RSA_free(v2);
      return 0;
    }
  }

  return v2;
}

RSA *__cdecl RSA_new_method(ENGINE *engine)
{
  v1 = malloc_type_malloc(0x180uLL, 0x10B0040B1D60C94uLL);
  v2 = v1;
  if (v1)
  {
    *(v1 + 22) = 0u;
    *(v1 + 23) = 0u;
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
    *(v1 + 18) = 0u;
    *(v1 + 19) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 17) = 0u;
    *(v1 + 14) = 0u;
    *(v1 + 15) = 0u;
    *(v1 + 12) = 0u;
    *(v1 + 13) = 0u;
    *(v1 + 10) = 0u;
    *(v1 + 11) = 0u;
    *(v1 + 8) = 0u;
    *(v1 + 9) = 0u;
    *(v1 + 6) = 0u;
    *(v1 + 7) = 0u;
    *(v1 + 4) = 0u;
    *(v1 + 5) = 0u;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    *v1 = 0u;
    *(v1 + 1) = 0u;
    CRYPTO_once(&RSA_default_method_once, RSA_default_method_init);
    *v2 = &RSA_default_method_storage;
    METHOD_ref(&RSA_default_method_storage, v3);
    v4 = *(*v2 + 72);
    *(v2 + 20) = 1;
    *(v2 + 21) = v4;
    CRYPTO_MUTEX_init((v2 + 11));
    CRYPTO_new_ex_data(v2 + 72, v5, v6);
    v7 = *(*v2 + 16);
    if (v7 && !v7(v2))
    {
      CRYPTO_MUTEX_cleanup((v2 + 11));
      METHOD_unref(*v2, v8);
      free(v2);
      return 0;
    }
  }

  else
  {
    ERR_put_error(4, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", 77);
  }

  return v2;
}

double RSA_default_method_init()
{
  result = 0.0;
  xmmword_1ED4C04A0 = 0u;
  unk_1ED4C04B0 = 0u;
  xmmword_1ED4C0480 = 0u;
  unk_1ED4C0490 = 0u;
  RSA_default_method_storage = 0u;
  BYTE4(RSA_default_method_storage) = 1;
  return result;
}

BIGNUM *parse_integer(__int128 *a1, BIGNUM **a2)
{
  if (*a2)
  {
    parse_integer_cold_1();
  }

  result = BN_new();
  *a2 = result;
  if (result)
  {

    return BN_parse_asn1_unsigned(a1, result);
  }

  return result;
}

BIGNUM *parse_integer_0(__int128 *a1, BIGNUM **a2)
{
  if (*a2)
  {
    parse_integer_cold_1_0();
  }

  result = BN_new();
  *a2 = result;
  if (result)
  {

    return BN_parse_asn1_unsigned(a1, result);
  }

  return result;
}

BIGNUM *BN_new(void)
{
  result = OPENSSL_malloc(0x18uLL);
  if (result)
  {
    *&result->top = 0;
    *&result->neg = 0;
    result->d = 0;
    result->flags = 1;
  }

  return result;
}

BOOL BN_parse_asn1_unsigned(__int128 *a1, BIGNUM *a2)
{
  memset(v6, 170, sizeof(v6));
  if (CBS_get_asn1(a1, &v6[1], 2) && CBS_is_valid_asn1_integer(&v6[1], v6))
  {
    if (!v6[0])
    {
      return BN_bin2bn(*&v6[1], v6[3], a2) != 0;
    }

    v3 = 109;
    v4 = 31;
  }

  else
  {
    v3 = 117;
    v4 = 26;
  }

  ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bn_extra/bn_asn1.c", v4);
  return 0;
}

uint64_t METHOD_ref(uint64_t result, uint64_t a2)
{
  if (!*(result + 4))
  {
    METHOD_ref_cold_1();
  }

  return result;
}

BIGNUM *__cdecl BN_bin2bn(const unsigned __int8 *s, int len, BIGNUM *ret)
{
  v3 = *&len;
  if (ret)
  {
    v5 = ret;
    v6 = 0;
  }

  else
  {
    v5 = BN_new();
    v6 = v5;
    if (!v5)
    {
      return v5;
    }
  }

  if (v3)
  {
    v7 = ((v3 - 1) >> 3) + 1;
    if (bn_wexpand(&v5->d, v7))
    {
      if (v3 >= 0x3FFFFFFF9)
      {
        BN_bin2bn_cold_1();
      }

      v5->top = v7;
      v5->neg = 0;
      bn_big_endian_to_words(v5->d, v7, s, v3);
    }

    else
    {
      BN_free(v6);
      return 0;
    }
  }

  else
  {
    v5->top = 0;
  }

  return v5;
}

uint64_t bn_wexpand(void **a1, unint64_t a2)
{
  if (*(a1 + 3) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (a2 >= 0x800000)
  {
    v3 = 102;
    v4 = 355;
LABEL_11:
    ERR_put_error(3, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/bn.c.inc", v4);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    v3 = 106;
    v4 = 360;
    goto LABEL_11;
  }

  result = OPENSSL_calloc(a2, 8uLL);
  if (result)
  {
    v7 = result;
    v8 = *(a1 + 2);
    if (v8)
    {
      memcpy(result, *a1, 8 * v8);
    }

    OPENSSL_free(*a1);
    *a1 = v7;
    *(a1 + 3) = v2;
    return 1;
  }

  return result;
}

BOOL CBS_is_valid_asn1_integer(unsigned __int8 **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = **a1;
  if (a2)
  {
    *a2 = v4 >> 7;
  }

  if (v2 == 1)
  {
    return 1;
  }

  v6 = *(v3 + 1);
  if (!v4 && (v6 & 0x80000000) == 0)
  {
    return 0;
  }

  return v4 != 255 || (v6 & 0x80u) == 0;
}

void bn_big_endian_to_words(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4 > 8 * a2)
  {
    abort();
  }

  if (a4 < 8)
  {
    v4 = a4;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  do
  {
    v4 = a4 - 8;
    *a1++ = bswap64(*&a3[a4 - 8]);
    --a2;
    a4 = v4;
  }

  while (v4 > 7);
  if (v4)
  {
LABEL_7:
    v5 = 0;
    do
    {
      v6 = *a3++;
      v5 = v6 | (v5 << 8);
      --v4;
    }

    while (v4);
    *a1++ = v5;
    --a2;
  }

LABEL_10:
  v7 = 8 * a2;
  if (v7)
  {

    bzero(a1, v7);
  }
}

void RSA_free(RSA *r)
{
  if (r && CRYPTO_refcount_dec_and_test_zero(&r->dmq1))
  {
    CRYPTO_free_ex_data(&g_ex_data_class_0, r, &r->dmp1);
    BN_clear_free(r->version);
    BN_clear_free(r->meth);
    BN_clear_free(r->engine);
    BN_clear_free(r->n);
    BN_clear_free(r->e);
    BN_clear_free(r->d);
    BN_clear_free(r->p);
    BN_clear_free(r->q);
    BN_MONT_CTX_free(r[1]._method_mod_n);
    BN_MONT_CTX_free(r[1]._method_mod_p);
    BN_MONT_CTX_free(r[1]._method_mod_q);
    if (r[2].version)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        BN_BLINDING_free(*(&r[2].meth->name + v2));
        v2 = v3;
      }

      while (r[2].version > v3++);
    }

    meth = r[2].meth;
    if (meth)
    {
      free(meth);
      r[2].meth = 0;
    }

    engine = r[2].engine;
    if (engine)
    {
      free(engine);
      r[2].engine = 0;
    }

    CRYPTO_MUTEX_cleanup(&r->iqmp);

    free(r);
  }
}

uint64_t bssl::ssl_verify_peer_cert(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *this;
  v4 = *(*(*this + 48) + 472);
  if (!v4)
  {
    v24 = 46;
    v16 = *(*(this + 1) + 48);
    if (v16)
    {
      result = v16(v3, &v24);
      if (result == 1)
      {
        if (*(*(this + 1) + 308))
        {
          result = 1;
        }

        else
        {
          ERR_clear_error();
          result = 0;
        }

        *(*(this + 192) + 176) = 50;
        if (!result)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      if (!result)
      {
        *(*(this + 192) + 176) = 0;
        goto LABEL_32;
      }
    }

    else
    {
      result = (*(*(*(v3 + 120) + 16) + 72))(*(this + 192), this, &v24) ^ 1;
    }

    if (!result)
    {
LABEL_32:
      if (*(v3 + 180))
      {
        return 0;
      }

      if ((*(*(this + 1) + 309) & 4) == 0)
      {
        return 0;
      }

      v20 = *(v3 + 120);
      v21 = *(v20 + 816);
      if (!v21)
      {
        return 0;
      }

      v22 = v21(v3, *(v20 + 824));
      if (v22 > 0)
      {
        return 0;
      }

      v23 = v22;
      ERR_put_error(16, 0, 289, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 413);
      if (v23)
      {
        v18 = 80;
      }

      else
      {
        v18 = 113;
      }

LABEL_24:
      v19 = v3;
LABEL_27:
      bssl::ssl_send_alert(v19, 2, v18);
      return 1;
    }

LABEL_22:
    if (result != 1)
    {
      return result;
    }

    ERR_put_error(16, 0, 125, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 401);
    v18 = v24;
    goto LABEL_24;
  }

  if (*(v3 + 180))
  {
    bssl::ssl_verify_peer_cert();
  }

  v5 = EVP_MD_CTX_md(*(v4 + 136));
  if (v5 != EVP_MD_CTX_md(*(*(this + 192) + 136)))
  {
    v17 = 342;
LABEL_26:
    ERR_put_error(16, 0, 273, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", v17);
    v19 = v3;
    v18 = 47;
    goto LABEL_27;
  }

  if (EVP_MD_CTX_md(*(*(this + 192) + 136)))
  {
    v6 = 0;
    while (1)
    {
      v7 = OPENSSL_sk_value(*(v4 + 136), v6);
      v8 = OPENSSL_sk_value(*(*(this + 192) + 136), v6);
      v9 = CRYPTO_BUFFER_len(v7);
      if (v9 != CRYPTO_BUFFER_len(v8))
      {
        break;
      }

      v10 = CRYPTO_BUFFER_data(v7);
      v11 = CRYPTO_BUFFER_data(v8);
      v12 = CRYPTO_BUFFER_len(v7);
      if (v12)
      {
        if (memcmp(v10, v11, v12))
        {
          break;
        }
      }

      if (++v6 >= EVP_MD_CTX_md(*(*(this + 192) + 136)))
      {
        goto LABEL_10;
      }
    }

    v17 = 357;
    goto LABEL_26;
  }

LABEL_10:
  v13 = *(v4 + 256);
  if (v13)
  {
    CRYPTO_BUFFER_up_ref(*(v4 + 256));
  }

  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(this + 192) + 256), v13);
  v14 = *(v4 + 248);
  if (v14)
  {
    CRYPTO_BUFFER_up_ref(*(v4 + 248));
  }

  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(this + 192) + 248), v14);
  result = 0;
  *(*(this + 192) + 176) = *(v4 + 176);
  return result;
}

uint64_t boringssl_session_set_peer_verification_state_from_session(SSL *a1, uint64_t a2)
{
  if (!a1 || a1->version != -1252936367)
  {
    return 0;
  }

  v3 = 0;
  if (a2)
  {
    method = a1->method;
    if (method)
    {
      if (method[1].ssl_ctrl)
      {
        return 0;
      }

      v6 = SSL_SESSION_get0_peer_certificates(a2);
      v7 = boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs(method, v6);
      if (v7)
      {
        v8 = v7;
        v9 = boringssl_helper_copy_public_key_from_certificates(method, v7);
        if (!v9)
        {
          WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
          if (!WeakRetained || (v40 = WeakRetained, v41 = objc_loadWeakRetained(&method->ssl_clear), v42 = v41[435], v41, v40, (v42 & 1) == 0))
          {
            v43 = objc_loadWeakRetained(&method->ssl_clear);
            if (v43)
            {
              v44 = objc_loadWeakRetained(&method->ssl_clear);
              v45 = (v44[435] & 1) == 0;
            }

            else
            {
              v45 = 1;
            }

            if (v45)
            {
              if (g_boringssl_log)
              {
                v48 = g_boringssl_log;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  boringssl_session_set_peer_verification_state_from_session_cold_3();
                }
              }
            }
          }

          CFRelease(v8);
          return 0;
        }

        v10 = v9;
        string = boringssl_helper_create_string(method->ssl_shutdown);
        v12 = boringssl_context_copy_ocsp_responses(method);
        v13 = boringssl_context_copy_peer_sct_list(method);
        sec_trust_with_certificates = boringssl_helper_create_sec_trust_with_certificates(a1, string, v8, v12, v13);
        if (boringssl_session_set_trust_reference(a1, sec_trust_with_certificates) && boringssl_session_set_peer_certificate_chain(a1, v8) && boringssl_session_set_peer_public_key(a1, v10))
        {
          v15 = objc_loadWeakRetained(&method->ssl_clear);
          if (v15)
          {
            v16 = v15;
            v17 = objc_loadWeakRetained(&method->ssl_clear);
            v18 = v17[435];

            if (v18)
            {
              v3 = 1;
              goto LABEL_44;
            }
          }

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

          v3 = 1;
          if (!v21 || !g_boringssl_log)
          {
            goto LABEL_44;
          }

          v47 = g_boringssl_log;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            boringssl_session_set_peer_verification_state_from_session_cold_2();
          }

          goto LABEL_42;
        }

        cf = v13;
        v29 = string;
        v30 = sec_trust_with_certificates;
        v31 = v12;
        v32 = objc_loadWeakRetained(&method->ssl_clear);
        if (v32 && (v33 = v32, v34 = objc_loadWeakRetained(&method->ssl_clear), v35 = v34[435], v34, v33, (v35 & 1) != 0))
        {
          v3 = 0;
        }

        else
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

          v3 = 0;
          if (v38)
          {
            v12 = v31;
            sec_trust_with_certificates = v30;
            string = v29;
            v13 = cf;
            if (!g_boringssl_log)
            {
LABEL_44:
              if (string)
              {
                CFRelease(string);
              }

              if (v13)
              {
                CFRelease(v13);
              }

              if (v12)
              {
                CFRelease(v12);
              }

              if (sec_trust_with_certificates)
              {
                CFRelease(sec_trust_with_certificates);
              }

              CFRelease(v8);
              CFRelease(v10);
              return v3;
            }

            v47 = g_boringssl_log;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              boringssl_session_set_peer_verification_state_from_session_cold_1();
            }

            v3 = 0;
LABEL_42:

            goto LABEL_44;
          }
        }

        v12 = v31;
        sec_trust_with_certificates = v30;
        string = v29;
        v13 = cf;
        goto LABEL_44;
      }

      v22 = objc_loadWeakRetained(&method->ssl_clear);
      if (v22)
      {
        v23 = v22;
        v24 = objc_loadWeakRetained(&method->ssl_clear);
        v25 = v24[435];

        if (v25)
        {
          return 0;
        }
      }

      v26 = objc_loadWeakRetained(&method->ssl_clear);
      if (v26)
      {
        v27 = objc_loadWeakRetained(&method->ssl_clear);
        v28 = (v27[435] & 1) == 0;
      }

      else
      {
        v28 = 1;
      }

      v3 = 0;
      if (v28 && g_boringssl_log)
      {
        v46 = g_boringssl_log;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          boringssl_session_set_peer_verification_state_from_session_cold_4();
        }

        return 0;
      }
    }
  }

  return v3;
}

__CFArray *boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs(void *a1, unint64_t *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v4 = Mutable;
      if (EVP_MD_CTX_md(a2))
      {
        v6 = 0;
        do
        {
          v7 = OPENSSL_sk_value(a2, v6);
          CRYPTO_BUFFER_data(v7);
          CRYPTO_BUFFER_len(v7);
          v8 = SecCertificateCreateWithBytes();
          if (v8)
          {
            v9 = v8;
            CFArrayAppendValue(v4, v8);
            CFRelease(v9);
          }

          else
          {
            WeakRetained = objc_loadWeakRetained(v3 + 2);
            if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained(v3 + 2), v13 = v12[435], v12, v11, (v13 & 1) == 0))
            {
              v14 = objc_loadWeakRetained(v3 + 2);
              if (v14)
              {
                v15 = objc_loadWeakRetained(v3 + 2);
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
                    v18 = &unk_1A9098A9F;
                    v30 = objc_loadWeakRetained(v3 + 2);
                    if (v30)
                    {
                      v29 = objc_loadWeakRetained(v3 + 2);
                      v18 = v29 + 351;
                    }

                    v19 = objc_loadWeakRetained(v3 + 2);
                    *buf = 136447234;
                    v32 = "boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs";
                    v33 = 1024;
                    v34 = 167;
                    v35 = 2082;
                    v36 = v18;
                    v37 = 2048;
                    v38 = v19;
                    v39 = 2048;
                    v40 = v6;
                    _os_log_error_impl(&dword_1A8FF5000, v17, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to extract certificate #%zu", buf, 0x30u);

                    if (v30)
                    {
                    }
                  }
                }
              }
            }
          }

          ++v6;
        }

        while (v6 < EVP_MD_CTX_md(a2));
      }

      if (CFArrayGetCount(v4) < 1)
      {
        CFRelease(v4);
LABEL_36:
        v4 = 0;
      }
    }

    else
    {
      v20 = objc_loadWeakRetained(v3 + 2);
      if (v20)
      {
        v21 = v20;
        v22 = objc_loadWeakRetained(v3 + 2);
        v23 = v22[435];

        if (v23)
        {
          goto LABEL_36;
        }
      }

      v24 = objc_loadWeakRetained(v3 + 2);
      if (v24)
      {
        v25 = objc_loadWeakRetained(v3 + 2);
        v26 = (v25[435] & 1) == 0;
      }

      else
      {
        v26 = 1;
      }

      v4 = 0;
      if (v26 && g_boringssl_log)
      {
        v27 = g_boringssl_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          boringssl_helper_copy_certificates_from_CRYPTO_BUFFERs_cold_1();
        }

        goto LABEL_36;
      }
    }
  }

  return v4;
}

SecKeyRef boringssl_helper_copy_public_key_from_certificates(void *a1, const __CFArray *a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    if (ValueAtIndex)
    {
      v4 = SecCertificateCopyKey(ValueAtIndex);
      goto LABEL_16;
    }

    WeakRetained = objc_loadWeakRetained(v3 + 2);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = objc_loadWeakRetained(v3 + 2);
      v9 = v8[435];

      if (v9)
      {
LABEL_15:
        v4 = 0;
        goto LABEL_16;
      }
    }

    v10 = objc_loadWeakRetained(v3 + 2);
    if (v10)
    {
      v11 = objc_loadWeakRetained(v3 + 2);
      v12 = (v11[435] & 1) == 0;
    }

    else
    {
      v12 = 1;
    }

    v4 = 0;
    if (v12 && g_boringssl_log)
    {
      v13 = g_boringssl_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        boringssl_helper_copy_public_key_from_certificates_cold_1();
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  return v4;
}

const char *boringssl_helper_create_string(const char *cStr)
{
  if (cStr)
  {
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  }

  return cStr;
}

__CFArray *boringssl_context_copy_ocsp_responses(void *a1)
{
  v1 = a1;
  v2 = v1;
  Mutable = v1[49];
  if (Mutable)
  {
    v4 = SSL_get0_ocsp_responses(v1[49]);
    if (v4)
    {
      v5 = v4;
      v6 = EVP_MD_CTX_md(v4);
      if (v6)
      {
        v7 = v6;
        v8 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v6, MEMORY[0x1E695E9C0]);
        for (i = 0; i != v7; ++i)
        {
          v10 = OPENSSL_sk_value(v5, i);
          v11 = CRYPTO_BUFFER_data(v10);
          v12 = CRYPTO_BUFFER_len(v10);
          v13 = CFDataCreate(v8, v11, v12);
          CFArrayAppendValue(Mutable, v13);
          CFRelease(v13);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      SSL_get0_ocsp_response(Mutable, &v18, &v17);
      if (v17 && v18)
      {
        v14 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
        v15 = CFDataCreate(v14, v18, v17);
        CFArrayAppendValue(Mutable, v15);
        CFRelease(v15);
        goto LABEL_11;
      }
    }

    Mutable = 0;
  }

LABEL_11:

  return Mutable;
}

unsigned __int8 *SSL_get0_ocsp_responses(uint64_t a1)
{
  session = SSL_get_session(a1);
  result = 0;
  if ((*(a1 + 180) & 1) == 0)
  {
    if (session)
    {
      return session->tlsext_tick;
    }
  }

  return result;
}

uint64_t boringssl_context_certificate_verify_callback(const SSL *a1, char *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v4 = SSL_get_ex_data(a1, 0);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = 3042030929;
  if (v4->version != -1252936367)
  {
    return 1;
  }

  method = v4->method;
  if (!method)
  {
    return 1;
  }

  if (method[1].ssl_ctrl || method[1].ssl_ctx_ctrl)
  {
    v8 = SSL_get_ex_data(a1, 0);
    if (!v8)
    {
      return 1;
    }

    if (*v8 != -1252936367)
    {
      return 1;
    }

    v9 = v8[1];
    if (!v9)
    {
      return 1;
    }

    is_server = SSL_is_server(a1);
    v11 = 368;
    if (!is_server)
    {
      v11 = 360;
    }

    v12 = *(v9 + v11);
    if (v12)
    {
      v13 = SSL_get0_peer_pubkey(a1);
      if (!v13)
      {
        v23 = 46;
        goto LABEL_34;
      }

      v14 = v13;
      if (CFArrayGetCount(v12) < 1)
      {
LABEL_22:
        v23 = 42;
LABEL_34:
        *a2 = v23;
        return 1;
      }

      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        if (!ValueAtIndex)
        {
          break;
        }

        v17 = ValueAtIndex;
        Length = CFDataGetLength(ValueAtIndex);
        BytePtr = CFDataGetBytePtr(v17);
        if (!Length)
        {
          break;
        }

        if (!BytePtr)
        {
          break;
        }

        *buf = BytePtr;
        *&buf[8] = Length;
        v20 = EVP_parse_public_key(buf);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        v22 = EVP_PKEY_cmp(v14, v20);
        EVP_PKEY_free(v21);
        if (v22 == 1)
        {
          return 0;
        }

        if (++v15 >= CFArrayGetCount(v12))
        {
          goto LABEL_22;
        }
      }
    }

    v23 = 80;
    goto LABEL_34;
  }

  if ((BYTE6(method[2].ssl_renegotiate) & 0xC) == 8)
  {
    WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
    if (WeakRetained)
    {
      v25 = WeakRetained;
      v26 = objc_loadWeakRetained(&method->ssl_clear);
      v27 = v26[435];

      if (v27)
      {
        return 2;
      }
    }

    v28 = objc_loadWeakRetained(&method->ssl_clear);
    if (v28)
    {
      v29 = objc_loadWeakRetained(&method->ssl_clear);
      v30 = (v29[435] & 1) == 0;
    }

    else
    {
      v30 = 1;
    }

    v35 = 2;
    if (v30 && g_boringssl_log)
    {
      v45 = g_boringssl_log;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        boringssl_context_certificate_verify_callback_cold_2();
      }

      return 2;
    }
  }

  else
  {
    if ((BYTE6(method[2].ssl_renegotiate) & 4) != 0)
    {
      ssl_renegotiate_low = LOBYTE(method[1].ssl_renegotiate);
      v38 = objc_loadWeakRetained(&method->ssl_clear);
      v39 = v38;
      if (ssl_renegotiate_low != 1)
      {
        if (!v38 || (v53 = objc_loadWeakRetained(&method->ssl_clear), v6 = v53[435], v53, v39, (v6 & 1) == 0))
        {
          v54 = objc_loadWeakRetained(&method->ssl_clear);
          if (v54)
          {
            v55 = objc_loadWeakRetained(&method->ssl_clear);
            v56 = (v55[435] & 1) == 0;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            if (g_boringssl_log)
            {
              v61 = g_boringssl_log;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v62 = objc_loadWeakRetained(&method->ssl_clear);
                if (v62)
                {
                  v6 = objc_loadWeakRetained(&method->ssl_clear);
                  v63 = (v6 + 351);
                }

                else
                {
                  v63 = &unk_1A9098A9F;
                }

                v65 = objc_loadWeakRetained(&method->ssl_clear);
                *buf = 136446978;
                *&buf[4] = "boringssl_context_certificate_verify_callback";
                *&buf[12] = 1024;
                *&buf[14] = 2004;
                v70 = 2082;
                v71 = v63;
                v72 = 2048;
                v73 = v65;
                _os_log_impl(&dword_1A8FF5000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Certificate verification result: FAIL", buf, 0x26u);

                if (v62)
                {
                }
              }
            }
          }
        }

        *a2 = boringssl_helper_convert_trusterror_to_alertcode(HIDWORD(method[1].ssl_renegotiate));
        return 1;
      }

      if (!v38 || (v40 = objc_loadWeakRetained(&method->ssl_clear), v41 = v40[435], v40, v39, (v41 & 1) == 0))
      {
        v42 = objc_loadWeakRetained(&method->ssl_clear);
        if (v42)
        {
          v43 = objc_loadWeakRetained(&method->ssl_clear);
          v44 = (v43[435] & 1) == 0;
        }

        else
        {
          v44 = 1;
        }

        v35 = 0;
        if (!v44 || !g_boringssl_log)
        {
          return v35;
        }

        v57 = g_boringssl_log;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = objc_loadWeakRetained(&method->ssl_clear);
          if (v58)
          {
            ssl_renegotiate_low = objc_loadWeakRetained(&method->ssl_clear);
            v59 = ssl_renegotiate_low + 351;
          }

          else
          {
            v59 = &unk_1A9098A9F;
          }

          v64 = objc_loadWeakRetained(&method->ssl_clear);
          *buf = 136446978;
          *&buf[4] = "boringssl_context_certificate_verify_callback";
          *&buf[12] = 1024;
          *&buf[14] = 2001;
          v70 = 2082;
          v71 = v59;
          v72 = 2048;
          v73 = v64;
          _os_log_impl(&dword_1A8FF5000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Certificate verification result: OK", buf, 0x26u);

          if (v58)
          {
          }
        }
      }

      return 0;
    }

    session = SSL_get_session(a1);
    if (boringssl_session_set_peer_verification_state_from_session(v5, session))
    {
      v32 = method;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __boringssl_context_certificate_verify_callback_block_invoke;
      v66[3] = &unk_1E78697E0;
      v68 = v5;
      v33 = v32;
      v67 = v33;
      v34 = MEMORY[0x1AC57F4F0](v66);
      if (boringssl_context_evaluate_trust_async(v5, v33[44], v34))
      {
        v35 = 2;
      }

      else
      {
        *a2 = 80;
        v35 = 1;
      }
    }

    else
    {
      v46 = objc_loadWeakRetained(&method->ssl_clear);
      if (v46)
      {
        v47 = v46;
        v48 = objc_loadWeakRetained(&method->ssl_clear);
        v49 = v48[435];

        if (v49)
        {
          return 1;
        }
      }

      v50 = objc_loadWeakRetained(&method->ssl_clear);
      if (v50)
      {
        v51 = objc_loadWeakRetained(&method->ssl_clear);
        v52 = (v51[435] & 1) == 0;
      }

      else
      {
        v52 = 1;
      }

      v35 = 1;
      if (v52 && g_boringssl_log)
      {
        v60 = g_boringssl_log;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_certificate_verify_callback_cold_1();
        }

        return 1;
      }
    }
  }

  return v35;
}

void ERR_put_error(int lib, int func, int reason, const char *file, int line)
{
  v5 = line;
  state = err_get_state();
  if (state)
  {
    v10 = state;
    if (lib == 2 && !reason)
    {
      reason = *__error();
    }

    v11 = *(v10 + 96);
    v12 = (v11 + 1) & 0xF;
    *(v10 + 96) = v12;
    if (v12 == *(v10 + 97))
    {
      *(v10 + 97) = (v11 + 2) & 0xF;
    }

    v13 = &v10[3 * ((v11 + 1) & 0xF)];
    free(v13[1]);
    v13[1] = 0;
    v13[2] = 0;
    *v13 = file;
    *(v13 + 10) = v5;
    *(v13 + 4) = reason & 0xFFF | (lib << 24);
  }
}

void bssl::ssl_run_handshake()
{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 627, "hs->wait != ssl_hs_read_change_cipher_spec");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 736, "ssl->s3->ech_status != ssl_ech_rejected");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 729, "!hs->can_early_write");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 728, "ssl->s3->early_data_reason != ssl_early_data_unknown");
}

{
  __assert_rtn("ssl_run_handshake", "handshake.cc", 759, "ssl->s3->ech_status != ssl_ech_rejected");
}

const __CFArray *boringssl_context_copy_peer_sct_list(void *a1)
{
  v1 = a1;
  v2 = *(v1 + 49);
  if (!v2)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v14[0] = 0;
  SSL_get0_signed_cert_timestamp_list(v2, v14, &v13);
  if (!v13)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 2);
    if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained(v1 + 2), v7 = v6[435], v6, v5, (v7 & 1) == 0))
    {
      v8 = objc_loadWeakRetained(v1 + 2);
      if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained(v1 + 2), v11 = v10[435], v10, v9, (v11 & 1) == 0))
      {
        if (datapath_logging_enabled == 1)
        {
          boringssl_context_copy_peer_sct_list_cold_1();
          v3 = v14[1];
          goto LABEL_10;
        }
      }
    }

    goto LABEL_9;
  }

  v3 = boringssl_context_copy_peer_sct_list_from_extension(v1, v14[0], v13);
LABEL_10:

  return v3;
}

uint64_t SSL_get0_signed_cert_timestamp_list(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = SSL_get_session(a1);
  if ((*(a1 + 180) & 1) == 0 && (v7 = result) != 0 && (result = *(result + 248)) != 0)
  {
    *a2 = CRYPTO_BUFFER_data(result);
    result = CRYPTO_BUFFER_len(*(v7 + 248));
    *a3 = result;
  }

  else
  {
    *a3 = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t boringssl_helper_ciphersuite_to_key_usage(int a1, int a2)
{
  if (a1 == 772)
  {
    return 1;
  }

  result = SSL_get_cipher_by_value(a2);
  if (result)
  {
    kx_nid = SSL_CIPHER_get_kx_nid(result, v3);
    if (kx_nid == 951)
    {
      return 4;
    }

    else
    {
      return kx_nid == 952;
    }
  }

  return result;
}

uint64_t boringssl_session_set_peer_certificate_chain(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (a2)
      {
        v4 = *(v2 + 8);
        if (v4)
        {
          v5 = *(v4 + 344);
          if (v5)
          {
            CFRelease(v5);
          }

          *(v4 + 344) = 0;
          *(v4 + 344) = a2;
          CFRetain(*(v4 + 344));
          return 1;
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

uint64_t boringssl_session_set_peer_public_key(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (a2)
      {
        v4 = *(v2 + 8);
        if (v4)
        {
          v5 = *(v4 + 336);
          if (v5)
          {
            CFRelease(v5);
          }

          *(v4 + 336) = 0;
          *(v4 + 336) = a2;
          CFRetain(*(v4 + 336));
          return 1;
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

uint64_t boringssl_context_evaluate_trust_async(uint64_t a1, __SecTrust *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a1 && *a1 == -1252936367)
  {
    v8 = 0;
    if (v6)
    {
      if (a2)
      {
        v9 = *(a1 + 8);
        if (v9)
        {
          if (*(v9 + 112) && *(v9 + 120))
          {
            WeakRetained = objc_loadWeakRetained((v9 + 16));
            if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained((v9 + 16)), v3 = v12[435], v12, v11, (v3 & 1) == 0))
            {
              v13 = objc_loadWeakRetained((v9 + 16));
              if (v13)
              {
                v14 = objc_loadWeakRetained((v9 + 16));
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
                  v27 = g_boringssl_log;
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    v28 = objc_loadWeakRetained((v9 + 16));
                    if (v28)
                    {
                      v3 = objc_loadWeakRetained((v9 + 16));
                      v29 = v3 + 351;
                    }

                    else
                    {
                      v29 = &unk_1A9098A9F;
                    }

                    v32 = objc_loadWeakRetained((v9 + 16));
                    v33 = 136446978;
                    v34 = "boringssl_context_evaluate_trust_async";
                    v35 = 1024;
                    v36 = 1820;
                    v37 = 2082;
                    v38 = v29;
                    v39 = 2048;
                    v40 = v32;
                    _os_log_impl(&dword_1A8FF5000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Performing external trust evaluation", &v33, 0x26u);

                    if (v28)
                    {
                    }
                  }
                }
              }
            }

            boringssl_session_update_metadata(a1, 0);
            v31 = boringssl_context_evaluate_trust_async_external(a1, a2, v7);
          }

          else
          {
            v17 = objc_loadWeakRetained((v9 + 16));
            if (!v17 || (v18 = v17, v19 = objc_loadWeakRetained((v9 + 16)), v20 = v19[435], v19, v18, (v20 & 1) == 0))
            {
              v21 = objc_loadWeakRetained((v9 + 16));
              if (v21)
              {
                v22 = objc_loadWeakRetained((v9 + 16));
                v23 = (v22[435] & 1) == 0;
              }

              else
              {
                v23 = 1;
              }

              if (v23)
              {
                if (g_boringssl_log)
                {
                  v24 = g_boringssl_log;
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = objc_loadWeakRetained((v9 + 16));
                    if (v25)
                    {
                      v3 = objc_loadWeakRetained((v9 + 16));
                      v26 = v3 + 351;
                    }

                    else
                    {
                      v26 = &unk_1A9098A9F;
                    }

                    v30 = objc_loadWeakRetained((v9 + 16));
                    v33 = 136446978;
                    v34 = "boringssl_context_evaluate_trust_async";
                    v35 = 1024;
                    v36 = 1824;
                    v37 = 2082;
                    v38 = v26;
                    v39 = 2048;
                    v40 = v30;
                    _os_log_impl(&dword_1A8FF5000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Performing local trust evaluation", &v33, 0x26u);

                    if (v25)
                    {
                    }
                  }
                }
              }
            }

            v31 = boringssl_context_evaluate_trust_async_internal(a1, a2, v7);
          }

          v8 = v31;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t boringssl_context_evaluate_trust_async_external(uint64_t a1, __SecTrust *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
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
          v9 = sec_trust_create(a2);
          v10 = MEMORY[0x1AC57F4F0](v8[14]);
          v11 = v10;
          if (v9)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          v7 = !v12;
          if (!v12)
          {
            v13 = v8;
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __boringssl_context_evaluate_trust_async_external_block_invoke;
            v30[3] = &unk_1E7869660;
            v35 = a1;
            v36 = v13;
            v14 = v13;
            v31 = v14;
            v33 = v6;
            v37 = a2;
            v34 = v11;
            v32 = v9;
            v15 = MEMORY[0x1AC57F4F0](v30);
            *(v14 + 550) |= 8u;
            WeakRetained = objc_loadWeakRetained(v14 + 2);
            if (!WeakRetained || (v17 = WeakRetained, v18 = objc_loadWeakRetained(v14 + 2), v19 = v18[435], v18, v17, (v19 & 1) == 0))
            {
              v20 = objc_loadWeakRetained(v14 + 2);
              if (v20)
              {
                v21 = objc_loadWeakRetained(v14 + 2);
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
                  v24 = g_boringssl_log;
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = objc_loadWeakRetained(v14 + 2);
                    if (v25)
                    {
                      v29 = objc_loadWeakRetained(v14 + 2);
                      v26 = v29 + 351;
                    }

                    else
                    {
                      v26 = &unk_1A9098A9F;
                    }

                    v27 = objc_loadWeakRetained(v14 + 2);
                    *buf = 136446978;
                    v39 = "boringssl_context_evaluate_trust_async_external";
                    v40 = 1024;
                    v41 = 1805;
                    v42 = 2082;
                    v43 = v26;
                    v44 = 2048;
                    v45 = v27;
                    _os_log_impl(&dword_1A8FF5000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Asyncing for external verify block", buf, 0x26u);

                    if (v25)
                    {
                    }
                  }
                }
              }
            }

            if (v15)
            {
              v28 = v14[15];
              if (v28)
              {
                v14[62] = v14[62] + 1;
                dispatch_async(v28, v15);
              }
            }
          }
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

SSL *boringssl_helper_create_sec_trust_with_certificates(SSL *result, uint64_t a2, const void *a3, const void *a4, const __CFArray *a5)
{
  if (result)
  {
    v5 = result;
    if (result->version != -1252936367)
    {
      return 0;
    }

    method = result->method;
    if (!method)
    {
      return 0;
    }

    negotiated_protocol_version = boringssl_session_get_negotiated_protocol_version(result);
    negotiated_ciphersuite = boringssl_session_get_negotiated_ciphersuite(v5);
    boringssl_helper_ciphersuite_to_key_usage(negotiated_protocol_version, negotiated_ciphersuite);
    WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
    if (!WeakRetained || (v13 = WeakRetained, v14 = objc_loadWeakRetained(&method->ssl_clear), v15 = v14[435], v14, v13, (v15 & 1) == 0))
    {
      v16 = objc_loadWeakRetained(&method->ssl_clear);
      if (v16)
      {
        v17 = objc_loadWeakRetained(&method->ssl_clear);
        v18 = (v17[435] & 1) == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        if (g_boringssl_log)
        {
          v19 = g_boringssl_log;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_1();
          }
        }
      }
    }

    SSLWithKeyUsage = SecPolicyCreateSSLWithKeyUsage();
    trust = 0;
    v21 = SecTrustCreateWithCertificates(a3, SSLWithKeyUsage, &trust);
    if (SSLWithKeyUsage)
    {
      CFRelease(SSLWithKeyUsage);
    }

    v22 = objc_loadWeakRetained(&method->ssl_clear);
    if (!v22 || (v23 = v22, v24 = objc_loadWeakRetained(&method->ssl_clear), v25 = v24[435], v24, v23, (v25 & 1) == 0))
    {
      v26 = objc_loadWeakRetained(&method->ssl_clear);
      if (v26)
      {
        v27 = objc_loadWeakRetained(&method->ssl_clear);
        v28 = (v27[435] & 1) == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (g_boringssl_log)
        {
          v29 = g_boringssl_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_2();
          }
        }
      }
    }

    if (v21)
    {
      goto LABEL_82;
    }

    v30 = SecTrustSetURLRequestAttribution();
    v31 = objc_loadWeakRetained(&method->ssl_clear);
    if (!v31 || (v32 = v31, v33 = objc_loadWeakRetained(&method->ssl_clear), v34 = v33[435], v33, v32, (v34 & 1) == 0))
    {
      v35 = objc_loadWeakRetained(&method->ssl_clear);
      if (v35)
      {
        v36 = objc_loadWeakRetained(&method->ssl_clear);
        v37 = (v36[435] & 1) == 0;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        if (g_boringssl_log)
        {
          v38 = g_boringssl_log;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_3();
          }
        }
      }
    }

    if (BYTE4(method[2].ssl_renegotiate) & 0x10 | v30)
    {
      goto LABEL_81;
    }

    if (a4)
    {
      v30 = SecTrustSetOCSPResponse(trust, a4);
      v39 = objc_loadWeakRetained(&method->ssl_clear);
      if (!v39 || (v40 = v39, v41 = objc_loadWeakRetained(&method->ssl_clear), v42 = v41[435], v41, v40, (v42 & 1) == 0))
      {
        v43 = objc_loadWeakRetained(&method->ssl_clear);
        if (v43)
        {
          v44 = objc_loadWeakRetained(&method->ssl_clear);
          v45 = (v44[435] & 1) == 0;
        }

        else
        {
          v45 = 1;
        }

        if (v45)
        {
          if (g_boringssl_log)
          {
            v53 = g_boringssl_log;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              boringssl_helper_create_sec_trust_with_certificates_cold_4();
            }

LABEL_60:
          }
        }
      }
    }

    else
    {
      v46 = objc_loadWeakRetained(&method->ssl_clear);
      if (v46)
      {
        v47 = v46;
        v48 = objc_loadWeakRetained(&method->ssl_clear);
        v49 = v48[435];

        if (v49)
        {
          v30 = 0;
          goto LABEL_61;
        }
      }

      v50 = objc_loadWeakRetained(&method->ssl_clear);
      if (v50)
      {
        v51 = objc_loadWeakRetained(&method->ssl_clear);
        v52 = (v51[435] & 1) == 0;
      }

      else
      {
        v52 = 1;
      }

      v30 = 0;
      if (v52 && g_boringssl_log)
      {
        v53 = g_boringssl_log;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          boringssl_helper_create_sec_trust_with_certificates_cold_5();
        }

        v30 = 0;
        goto LABEL_60;
      }
    }

LABEL_61:
    if (a5)
    {
      v30 |= SecTrustSetSignedCertificateTimestamps(trust, a5);
      v54 = objc_loadWeakRetained(&method->ssl_clear);
      if (!v54 || (v55 = v54, v56 = objc_loadWeakRetained(&method->ssl_clear), v57 = v56[435], v56, v55, (v57 & 1) == 0))
      {
        v58 = objc_loadWeakRetained(&method->ssl_clear);
        if (v58)
        {
          v59 = objc_loadWeakRetained(&method->ssl_clear);
          v60 = (v59[435] & 1) == 0;
        }

        else
        {
          v60 = 1;
        }

        if (v60)
        {
          if (g_boringssl_log)
          {
            v68 = g_boringssl_log;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              boringssl_helper_create_sec_trust_with_certificates_cold_6();
            }

LABEL_80:
          }
        }
      }
    }

    else
    {
      v61 = objc_loadWeakRetained(&method->ssl_clear);
      if (!v61 || (v62 = v61, v63 = objc_loadWeakRetained(&method->ssl_clear), v64 = v63[435], v63, v62, (v64 & 1) == 0))
      {
        v65 = objc_loadWeakRetained(&method->ssl_clear);
        if (v65)
        {
          v66 = objc_loadWeakRetained(&method->ssl_clear);
          v67 = (v66[435] & 1) == 0;
        }

        else
        {
          v67 = 1;
        }

        if (v67)
        {
          if (g_boringssl_log)
          {
            v68 = g_boringssl_log;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              boringssl_helper_create_sec_trust_with_certificates_cold_7();
            }

            goto LABEL_80;
          }
        }
      }
    }

LABEL_81:
    if (!v30)
    {
      return trust;
    }

LABEL_82:
    v69 = objc_loadWeakRetained(&method->ssl_clear);
    if (!v69 || (v70 = v69, v71 = objc_loadWeakRetained(&method->ssl_clear), v72 = v71[435], v71, v70, (v72 & 1) == 0))
    {
      v73 = objc_loadWeakRetained(&method->ssl_clear);
      if (v73)
      {
        v74 = objc_loadWeakRetained(&method->ssl_clear);
        v75 = (v74[435] & 1) == 0;
      }

      else
      {
        v75 = 1;
      }

      if (v75)
      {
        if (g_boringssl_log)
        {
          v76 = g_boringssl_log;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            boringssl_helper_create_sec_trust_with_certificates_cold_8();
          }
        }
      }
    }

    return trust;
  }

  return result;
}

uint64_t boringssl_session_set_trust_reference(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (a2)
      {
        v4 = *(v2 + 8);
        if (v4)
        {
          v5 = *(v4 + 352);
          if (v5)
          {
            CFRelease(v5);
          }

          *(v4 + 352) = 0;
          *(v4 + 352) = a2;
          CFRetain(*(v4 + 352));
          return 1;
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

void __boringssl_context_evaluate_trust_async_external_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (boringssl_session_get_state(*(a1 + 64)) > 3 || boringssl_session_is_cancelled(*(a1 + 64)))
  {
    *(*(a1 + 72) + 550) &= ~8u;
    return;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __boringssl_context_evaluate_trust_async_external_block_invoke_2;
  v22[3] = &unk_1E7869638;
  v23 = *(a1 + 32);
  v25 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v24 = v3;
  v26 = v4;
  v5 = MEMORY[0x1AC57F4F0](v22);
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((v6 + 16));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v10 = v9[435];

    if (v10)
    {
      goto LABEL_16;
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
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

    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_10:
    v14 = 1;
  }

  if (g_boringssl_log)
  {
    v15 = g_boringssl_log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:

      goto LABEL_16;
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v14 = objc_loadWeakRetained((v16 + 16));
      v21 = *(a1 + 32);
      if (v14)
      {
        v17 = v21 != 0;
        if (v21)
        {
          v1 = objc_loadWeakRetained((v21 + 16));
          v21 = *(a1 + 32);
        }

        else
        {
          v1 = 0;
        }

        v20 = v1 + 351;
      }

      else
      {
        v17 = 0;
        v20 = &unk_1A9098A9F;
      }

      if (v21)
      {
        v18 = objc_loadWeakRetained((v21 + 16));
        v19 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 1;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 1;
      v20 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    v28 = "boringssl_context_evaluate_trust_async_external_block_invoke";
    v29 = 1024;
    v30 = 1800;
    v31 = 2082;
    v32 = v20;
    v33 = 2048;
    v34 = v18;
    _os_log_debug_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Invoking verify block", buf, 0x26u);
    if (v19)
    {
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (!v17)
      {
LABEL_30:
        if (!v16)
        {
          goto LABEL_15;
        }

        goto LABEL_34;
      }
    }

    if (!v16)
    {
      goto LABEL_15;
    }

LABEL_34:

    goto LABEL_15;
  }

LABEL_16:
  (*(*(a1 + 56) + 16))();
}

double bssl::ssl_done_writing_client_hello(void **a1)
{
  v2 = a1 + 73;
  OPENSSL_free(a1[73]);
  *v2 = 0u;
  OPENSSL_free(a1[69]);
  *(a1 + 69) = 0u;
  OPENSSL_free(a1[79]);
  result = 0.0;
  *(a1 + 79) = 0u;
  return result;
}

uint64_t OPENSSL_sk_find(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (!*(result + 32))
  {
    if (*result)
    {
      v9 = 0;
      while (*(*(result + 8) + 8 * v9) != a3)
      {
        if (*result == ++v9)
        {
          return 0;
        }
      }

      goto LABEL_31;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = *result;
  if (*(result + 16) || v8 < 2)
  {
    if (v8)
    {
      v10 = 0;
      do
      {
        v11 = v8 - v10 - 1;
        v9 = v10 + (v11 >> 1);
        if (__CFADD__(v10, v11 >> 1) || v9 >= v8)
        {
          OPENSSL_sk_find_cold_3();
        }

        v12 = a4(v6[4], a3, *(v6[1] + 8 * v9));
        if (v12 < 1)
        {
          if (v12 < 0)
          {
            v8 = v9;
          }

          else
          {
            if (v8 - v10 == 1)
            {
              goto LABEL_31;
            }

            v13 = v9 + 1 >= v8;
            v8 = v9 + 1;
            if (v13)
            {
              OPENSSL_sk_find_cold_1();
            }
          }
        }

        else
        {
          v10 = v9 + 1;
        }
      }

      while (v10 < v8);
      if (v10 != v8)
      {
        OPENSSL_sk_find_cold_2();
      }
    }

    return 0;
  }

  v9 = 0;
  while (a4(v6[4], a3, *(v6[1] + 8 * v9)))
  {
    if (++v9 >= *v6)
    {
      return 0;
    }
  }

LABEL_31:
  if (a2)
  {
    *a2 = v9;
  }

  return 1;
}

void bssl::ssl_set_session(ssl_st **this, SSL_SESSION *a2, ssl_session_st *a3)
{
  v3 = (this + 13);
  if (this[13] != a2)
  {
    if (a2)
    {
      CRYPTO_refcount_inc(a2);
    }

    std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v3, a2);
  }
}

BOOL bssl::ssl_parse_cert_chain(char *a1, unint64_t **a2, EVP_PKEY **a3, unsigned __int8 *a4, unsigned __int8 **a5, void *a6)
{
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](a2, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](a3, 0);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u24_length_prefixed(a5, &v23))
  {
    *a1 = 50;
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 257);
    return 0;
  }

  if (!v24)
  {
    return 1;
  }

  ctx = OPENSSL_sk_new_null();
  if (!ctx)
  {
    v12 = 0;
    *a1 = 80;
    goto LABEL_27;
  }

  pkey = 0;
  v12 = v24 == 0;
  v13 = 0;
  if (!v24)
  {
LABEL_17:
    v16 = ctx;
    ctx = 0;
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](a2, v16);
    pkey = 0;
    std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](a3, v13);
    v13 = pkey;
    goto LABEL_25;
  }

  while (1)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u24_length_prefixed(&v23, &v20) || !*(&v20 + 1))
    {
      *a1 = 50;
      ERR_put_error(16, 0, 127, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cert.cc", 277);
      goto LABEL_25;
    }

    if (!EVP_MD_CTX_md(ctx))
    {
      break;
    }

LABEL_14:
    v15 = CRYPTO_BUFFER_new_from_CBS(&v20, a6);
    if (!v15)
    {
      goto LABEL_23;
    }

    v19 = 0;
    if (!OPENSSL_sk_push(ctx, v15))
    {
      CRYPTO_BUFFER_free(v15);
LABEL_23:
      v17 = 80;
      goto LABEL_24;
    }

    v12 = v24 == 0;
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  bssl::ssl_cert_parse_pubkey(&v20, &v19);
  v14 = v19;
  v19 = 0;
  pkey = v14;
  if (v13)
  {
    EVP_PKEY_free(v13);
    v13 = pkey;
    if (!pkey)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  v13 = v14;
  if (v14)
  {
LABEL_12:
    if (a4)
    {
      SHA256(v20, *(&v20 + 1), a4);
    }

    goto LABEL_14;
  }

LABEL_29:
  v17 = 50;
LABEL_24:
  *a1 = v17;
LABEL_25:
  pkey = 0;
  if (v13)
  {
    EVP_PKEY_free(v13);
  }

LABEL_27:
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](&ctx, 0);
  return v12;
}

void sub_1A902A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, EVP_PKEY *);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

uint64_t SSL_clear_options(uint64_t a1, int a2)
{
  v2 = *(a1 + 144) & ~a2;
  *(a1 + 144) = v2;
  return v2;
}

uint64_t EC_KEY_parse_curve_name(__int128 *a1)
{
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  if (CBS_get_asn1(a1, v6, 6))
  {
    v1 = 0;
    while (1)
    {
      v2 = (*(&kAllGroups + v1))();
      if (CBS_mem_equal(v6, (v2 + 516), *(v2 + 525)))
      {
        break;
      }

      v1 += 8;
      if (v1 == 32)
      {
        v3 = 123;
        v4 = 357;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = 128;
    v4 = 345;
LABEL_7:
    ERR_put_error(15, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/ec_extra/ec_asn1.c", v4);
    return 0;
  }

  return v2;
}

uint64_t eckey_pub_decode(uint64_t a1, uint64_t a2, const unsigned __int8 **a3)
{
  v6 = EC_KEY_parse_curve_name(a2);
  if (!v6 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 99);
    v7 = 0;
LABEL_4:
    EC_KEY_free(v7);
    return 0;
  }

  v9 = v6;
  v10 = EC_KEY_new();
  v7 = v10;
  if (!v10 || !EC_KEY_set_group(v10, v9) || !EC_KEY_oct2key(v7, *a3, a3[1], 0))
  {
    goto LABEL_4;
  }

  evp_pkey_set_method(a1, &ec_asn1_meth);
  *(a1 + 8) = v7;
  return 1;
}

char *EC_KEY_new_method(uint64_t a1)
{
  v2 = OPENSSL_zalloc(0x38uLL);
  v5 = v2;
  if (!v2)
  {
    return v5;
  }

  if (!a1)
  {
    ECDSA_method = v2[5];
    if (!ECDSA_method)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  ECDSA_method = ENGINE_get_ECDSA_method(a1);
  v5[5] = ECDSA_method;
  if (ECDSA_method)
  {
LABEL_4:
    METHOD_ref(ECDSA_method, v3);
  }

LABEL_5:
  *(v5 + 28) = 0x100000004;
  CRYPTO_new_ex_data(v5 + 48, v3, v4);
  v7 = v5[5];
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      if (!v8(v5))
      {
        CRYPTO_free_ex_data(&g_ec_ex_data_class, v5, v5 + 3);
        v10 = v5[5];
        if (v10)
        {
          METHOD_unref(v10, v9);
        }

        OPENSSL_free(v5);
        return 0;
      }
    }
  }

  return v5;
}

int EC_KEY_set_group(EC_KEY *a1, const EC_GROUP *a2)
{
  v4 = *a1;
  if (v4)
  {
    if (EC_GROUP_cmp(v4, a2, 0))
    {
      ERR_put_error(15, 0, 130, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", 220);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 2))
    {
      EC_KEY_set_group_cold_1();
    }

    if (*(a1 + 1))
    {
      EC_KEY_set_group_cold_2();
    }

    EC_GROUP_free(0);
    v6 = EC_GROUP_dup(a2);
    *a1 = v6;
    return v6 != 0;
  }
}

void EC_GROUP_free(EC_GROUP *a1)
{
  if (a1 && !*(a1 + 128) && CRYPTO_refcount_dec_and_test_zero(a1 + 135))
  {
    bn_mont_ctx_cleanup((a1 + 232));
    bn_mont_ctx_cleanup((a1 + 296));

    OPENSSL_free(a1);
  }
}

EC_GROUP *__cdecl EC_GROUP_dup(const EC_GROUP *a1)
{
  if (a1 && !*(a1 + 128))
  {
    CRYPTO_refcount_inc(a1 + 135);
  }

  return a1;
}

uint64_t EC_KEY_oct2key(const EC_GROUP **a1, const unsigned __int8 *a2, size_t a3, BN_CTX *a4)
{
  v5 = *a1;
  if (v5)
  {
    v9 = EC_POINT_new(v5);
    if (v9 && EC_POINT_oct2point(*a1, v9, a2, a3, a4))
    {
      v10 = EC_KEY_set_public_key(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    EC_POINT_free(v9);
  }

  else
  {
    ERR_put_error(15, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", 405);
    return 0;
  }

  return v10;
}

EC_POINT *__cdecl EC_POINT_new(const EC_GROUP *a1)
{
  if (a1)
  {
    v2 = OPENSSL_malloc(0xE0uLL);
    if (v2)
    {
      if (!*(a1 + 128))
      {
        CRYPTO_refcount_inc(a1 + 135);
      }

      *v2 = a1;
      ec_GFp_simple_point_init(v2 + 8);
    }
  }

  else
  {
    ERR_put_error(15, 0, 67, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 469);
    return 0;
  }

  return v2;
}

double ec_GFp_simple_point_init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

int EC_POINT_oct2point(const EC_GROUP *a1, EC_POINT *a2, const unsigned __int8 *buf, size_t len, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *a2, 0))
  {
    v10 = 106;
    v11 = 205;
LABEL_3:
    ERR_put_error(15, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", v11);
    return 0;
  }

  if (!len)
  {
    v10 = 100;
    v11 = 140;
    goto LABEL_3;
  }

  v14 = *buf;
  if (v14 != 4)
  {
    v18 = BN_num_bytes((a1 + 320));
    if ((v14 & 0xFE) != 2 || v18 + 1 != len)
    {
      v10 = 109;
      v11 = 162;
      goto LABEL_3;
    }

    if (a5)
    {
      v20 = 0;
    }

    else
    {
      a5 = BN_CTX_new();
      v20 = a5;
      if (!a5)
      {
        return 0;
      }
    }

    BN_CTX_start(a5);
    v21 = BN_CTX_get(a5);
    if (v21)
    {
      v22 = v21;
      if (BN_bin2bn(buf + 1, v18, v21))
      {
        if (BN_ucmp(v22, (a1 + 320)) < 0)
        {
          v12 = EC_POINT_set_compressed_coordinates_GFp(a1, a2, v22, v14 & 1, a5);
          goto LABEL_25;
        }

        ERR_put_error(15, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", 186);
      }
    }

    v12 = 0;
LABEL_25:
    BN_CTX_end(a5);
    BN_CTX_free(v20);
    return v12;
  }

  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[7] = v15;
  v23[8] = v15;
  v23[5] = v15;
  v23[6] = v15;
  v23[3] = v15;
  v23[4] = v15;
  v23[1] = v15;
  v23[2] = v15;
  v23[0] = v15;
  v16 = ec_point_from_uncompressed(a1, v23, buf, len);
  v17 = a2 + 8;
  if (v16)
  {
    ec_affine_to_jacobian(a1, v17, v23);
    return 1;
  }

  ec_set_to_safe_point(a1, v17);
  return 0;
}

uint64_t ec_point_from_uncompressed(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (((2 * BN_num_bytes((a1 + 320))) | 1) == a4 && *a3 == 4)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[2] = v7;
    v11[3] = v7;
    v11[0] = v7;
    v11[1] = v7;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v9[2] = v7;
    v9[3] = v7;
    v9[0] = v7;
    v9[1] = v7;
    result = ec_felem_from_bytes(a1);
    if (result)
    {
      result = ec_felem_from_bytes(a1);
      if (result)
      {
        return ec_point_set_affine_coordinates(a1, a2, v11, v9) != 0;
      }
    }
  }

  else
  {
    ERR_put_error(15, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", 122);
    return 0;
  }

  return result;
}

int EC_GROUP_cmp(const EC_GROUP *a1, const EC_GROUP *a2, BN_CTX *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = *(a1 + 128);
  if (v5 != *(a2 + 128))
  {
    return 1;
  }

  if (v5)
  {
    return 0;
  }

  return *a1 != *a2 || !*(a1 + 133) || !*(a2 + 133) || BN_cmp((a1 + 256), (a2 + 256)) || BN_cmp((a1 + 320), (a2 + 320)) || !ec_felem_equal(a1, a1 + 360, a2 + 360) || !ec_felem_equal(a1, a1 + 432, a2 + 432) || ec_GFp_simple_points_equal(a1, a1 + 16, a2 + 2) == 0;
}

uint64_t ec_GFp_mont_felem_from_bytes(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  result = ec_GFp_simple_felem_from_bytes(a1, a2, a3, a4);
  if (result)
  {
    bn_to_montgomery_small(a2, a2, *(a1 + 328), (a1 + 296));
    return 1;
  }

  return result;
}

uint64_t bn_cmp_words_consttime(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (a2 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    result = 0;
    v7 = a1;
    v8 = a3;
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = *v8++;
      v12 = (((v11 ^ v9) - 1) & ~(v11 ^ v9)) >> 63;
      result = v12 & result | (((((v9 - v11) ^ v9 | v11 ^ v9) ^ v9) >> 63) | 1) & ~v12;
      --v5;
    }

    while (v5);
  }

  else
  {
    result = 0;
  }

  v13 = a2 - a4;
  if (a2 >= a4)
  {
    if (a4 < a2)
    {
      v18 = 0;
      v19 = &a1[a4];
      do
      {
        v20 = *v19++;
        v18 |= v20;
        --v13;
      }

      while (v13);
      return (((((v18 - 1) & ~v18) >> 63) & 1) == 0) | (((v18 - 1) & ~v18) >> 63) & result;
    }
  }

  else
  {
    v14 = 0;
    v15 = a4 - a2;
    v16 = &a3[a2];
    do
    {
      v17 = *v16++;
      v14 |= v17;
      --v15;
    }

    while (v15);
    return result | ~(((v14 - 1) & ~v14) >> 63);
  }

  return result;
}

void bn_mul_normal(unint64_t *a1, unint64_t *a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  if (a3 < a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  if (a3 < a5)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  if (a3 < a5)
  {
    v8 = a3;
  }

  else
  {
    v8 = a5;
  }

  if (a3 < a5)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (v8)
  {
    a1[v6] = bn_mul_words(a1, v9, v6, *v7);
    if (v8 != 1)
    {
      v10 = 0;
      v11 = v7 + 2;
      v12 = 4 - v8;
      v13 = &a1[v6 + 4];
      do
      {
        v13[v10 - 3] = bn_mul_add_words(&a1[v10 + 1], v9, v6, v11[v10 - 1]);
        if (v12 == 2)
        {
          break;
        }

        v13[v10 - 2] = bn_mul_add_words(&a1[v10 + 2], v9, v6, v11[v10]);
        if (v12 == 1)
        {
          break;
        }

        v13[v10 - 1] = bn_mul_add_words(&a1[v10 + 3], v9, v6, v11[v10 + 1]);
        if (!v12)
        {
          break;
        }

        v13[v10] = bn_mul_add_words(&a1[v10 + 4], v9, v6, v11[v10 + 2]);
        v12 += 4;
        v10 += 4;
      }

      while (v12 != 3);
    }
  }

  else if (8 * v6)
  {

    bzero(a1, 8 * v6);
  }
}

void bn_mod_mul_montgomery_small(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a4 > 9 || *(a5 + 32) != a4)
  {
    goto LABEL_8;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[7] = v10;
  v12[8] = v10;
  v12[5] = v10;
  v12[6] = v10;
  v12[3] = v10;
  v12[4] = v10;
  v12[1] = v10;
  v12[2] = v10;
  v12[0] = v10;
  v11 = 2 * a4;
  if (a2 == a3)
  {
    bn_sqr_small(v12, v11, a2, a4);
  }

  else
  {
    bn_mul_small(v12, v11, a2, a4, a3, a4);
  }

  if (!bn_from_montgomery_in_place(a1, a4, v12, 2 * a4, a5))
  {
LABEL_8:
    abort();
  }

  OPENSSL_cleanse(v12, 16 * a4);
}

unint64_t bn_mul_add_words(unint64_t *rp, const unint64_t *ap, int num, unint64_t w)
{
  if (!*&num)
  {
    return 0;
  }

  if (*&num < 4uLL)
  {
    v4 = 0;
    do
    {
LABEL_25:
      v27 = *ap++;
      v28 = (v27 * w) >> 64;
      v29 = v27 * w;
      v6 = __CFADD__(*rp, v4);
      v30 = *rp + v4;
      v31 = v6;
      v32 = __PAIR128__(v31, v30) + __PAIR128__(v28, v29);
      v4 = (__PAIR128__(v31, v30) + __PAIR128__(v28, v29)) >> 64;
      *rp++ = v32;
      --*&num;
    }

    while (*&num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = rp[1];
    v6 = __CFADD__(*rp, v4);
    v7 = *rp + v4;
    v8 = v6;
    v9 = __PAIR128__(v8, v7) + *ap * w;
    *rp = v9;
    v10 = ap[1];
    v11 = (v10 * w) >> 64;
    v12 = v10 * w;
    v6 = __CFADD__(v12, v5);
    v13 = v12 + v5;
    if (v6)
    {
      ++v11;
    }

    v6 = __CFADD__(v13, *(&v9 + 1));
    v14 = v13 + *(&v9 + 1);
    if (v6)
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = v11;
    }

    rp[1] = v14;
    v16 = ap[2];
    v17 = rp[2];
    v18 = rp[3];
    v6 = __CFADD__(v16 * w, v17);
    v19 = v16 * w + v17;
    v20 = (v16 * w) >> 64;
    if (v6)
    {
      ++v20;
    }

    v6 = __CFADD__(v19, v15);
    v21 = v19 + v15;
    if (v6)
    {
      ++v20;
    }

    rp[2] = v21;
    v22 = ap[3];
    v23 = (v22 * w) >> 64;
    v24 = v22 * w;
    v6 = __CFADD__(v24, v18);
    v25 = v24 + v18;
    if (v6)
    {
      ++v23;
    }

    v6 = __CFADD__(v25, v20);
    v26 = v25 + v20;
    if (v6)
    {
      v4 = v23 + 1;
    }

    else
    {
      v4 = v23;
    }

    rp[3] = v26;
    ap += 4;
    rp += 4;
    *&num -= 4;
  }

  while (*&num >= 4uLL);
  if (*&num)
  {
    goto LABEL_25;
  }

  return v4;
}

uint64_t bn_reduce_once_in_place(unint64_t *ap, uint64_t a2, const unint64_t *a3, unint64_t *rp, uint64_t num)
{
  v8 = a2 - bn_sub_words(rp, ap, a3, num);
  if ((v8 + 1) >= 2)
  {
    bn_reduce_once_in_place_cold_1();
  }

  bn_select_words(ap, v8, ap, rp, num);
  return v8;
}

__n128 ec_affine_to_jacobian(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  v6 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 16) = v4;
  v7 = *(a3 + 104);
  v8 = *(a3 + 120);
  v9 = *(a3 + 136);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 136) = v9;
  *(a2 + 120) = v8;
  *(a2 + 104) = v7;
  *(a2 + 72) = *(a3 + 72);
  v10 = ec_felem_one(a1);
  *(a2 + 144) = *v10;
  v12 = *(v10 + 32);
  result = *(v10 + 48);
  v13 = *(v10 + 16);
  *(a2 + 208) = *(v10 + 64);
  *(a2 + 176) = v12;
  *(a2 + 192) = result;
  *(a2 + 160) = v13;
  return result;
}

int EC_KEY_set_public_key(EC_KEY *a1, const EC_POINT *a2)
{
  v3 = *a1;
  if (v3)
  {
    if (!a2 || !EC_GROUP_cmp(v3, *a2, 0))
    {
      EC_POINT_free(*(a1 + 1));
      v7 = EC_POINT_dup(a2, *a1);
      *(a1 + 1) = v7;
      return v7 != 0;
    }

    v5 = 130;
    v6 = 273;
  }

  else
  {
    v5 = 114;
    v6 = 268;
  }

  ERR_put_error(15, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec_key.c.inc", v6);
  return 0;
}

int EC_POINT_copy(EC_POINT *a1, const EC_POINT *a2)
{
  if (EC_GROUP_cmp(*a1, *a2, v2))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 501);
    return 0;
  }

  else
  {
    if (a1 != a2)
    {
      ec_GFp_simple_point_copy(a1 + 8, a2 + 8);
    }

    return 1;
  }
}

__n128 ec_GFp_simple_point_copy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 176);
  v8 = *(a2 + 192);
  v10 = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v9;
  *(a1 + 192) = v8;
  *(a1 + 160) = v10;
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

void nw_protocol_boringssl_disconnect_cold_1()
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

uint64_t boringssl_session_disconnect(uint64_t a1)
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

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (!WeakRetained || (v4 = WeakRetained, v5 = objc_loadWeakRetained((v2 + 16)), v6 = v5[435], v5, v4, (v6 & 1) == 0))
  {
    v7 = objc_loadWeakRetained((v2 + 16));
    if (v7)
    {
      v8 = objc_loadWeakRetained((v2 + 16));
      v9 = (v8[435] & 1) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (g_boringssl_log)
      {
        v11 = g_boringssl_log;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          boringssl_session_disconnect_cold_1();
        }
      }
    }
  }

  v12 = SSL_shutdown(*(v2 + 392));
  v13 = objc_loadWeakRetained((v2 + 16));
  if (!v13 || (v14 = v13, v15 = objc_loadWeakRetained((v2 + 16)), v16 = v15[435], v15, v14, (v16 & 1) == 0))
  {
    v17 = objc_loadWeakRetained((v2 + 16));
    if (v17)
    {
      v18 = objc_loadWeakRetained((v2 + 16));
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
        v20 = g_boringssl_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          boringssl_session_disconnect_cold_2();
        }
      }
    }
  }

  boringssl_session_set_state(a1, 3);
  return (v12 >> 31);
}

void bn_mul_small(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6)
{
  if (a6 + a4 != a2)
  {
    abort();
  }

  if (a4 == 8 && a6 == 8)
  {

    bn_mul_comba8(a1, a3, a5);
  }

  else
  {

    bn_mul_normal(a1, a3, a4, a5, a6);
  }
}

uint64_t ec_point_set_affine_coordinates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 96);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v10;
  v26[3] = v10;
  v26[0] = v10;
  v26[1] = v10;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v10;
  v24[3] = v10;
  v24[0] = v10;
  v24[1] = v10;
  v9(a1, v26, a4);
  v9(a1, v24, a3);
  ec_felem_add(a1, v24, v24, (a1 + 360));
  v8(a1, v24, v24, a3);
  ec_felem_add(a1, v24, v24, (a1 + 432));
  if (ec_felem_equal(a1, v26, v24))
  {
    *a2 = *a3;
    v11 = *(a3 + 16);
    v12 = *(a3 + 32);
    v13 = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    *(a2 + 16) = v11;
    v15 = *(a4 + 32);
    v14 = *(a4 + 48);
    v16 = *(a4 + 64);
    *(a2 + 88) = *(a4 + 16);
    *(a2 + 136) = v16;
    *(a2 + 120) = v14;
    *(a2 + 104) = v15;
    *(a2 + 72) = *a4;
    return 1;
  }

  else
  {
    ERR_put_error(15, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 628);
    result = 0;
    if (*(a1 + 532))
    {
      *a2 = *(a1 + 16);
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = *(a1 + 64);
      *(a2 + 64) = *(a1 + 80);
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      *(a2 + 16) = v18;
      v21 = *(a1 + 120);
      v22 = *(a1 + 136);
      v23 = *(a1 + 104);
      *(a2 + 136) = *(a1 + 152);
      *(a2 + 88) = v23;
      *(a2 + 120) = v22;
      *(a2 + 104) = v21;
      *(a2 + 72) = *(a1 + 88);
    }
  }

  return result;
}

void bn_sqr_small(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a4 > 9 || 2 * a4 != a2)
  {
    abort();
  }

  if (a4 == 8)
  {

    bn_sqr_comba8(a1, a3);
  }

  else if (a4 == 4)
  {

    bn_sqr_comba4(a1, a3);
  }

  else
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6[7] = v5;
    v6[8] = v5;
    v6[5] = v5;
    v6[6] = v5;
    v6[3] = v5;
    v6[4] = v5;
    v6[1] = v5;
    v6[2] = v5;
    v6[0] = v5;
    bn_sqr_normal(a1, a3, a4, v6);
    OPENSSL_cleanse(v6, 16 * a4);
  }
}

unint64_t bn_sub_words(unint64_t *rp, const unint64_t *ap, const unint64_t *bp, int num)
{
  if (!*&num)
  {
    return 0;
  }

  if (*&num < 4uLL)
  {
    v4 = 0;
    do
    {
LABEL_14:
      v20 = *bp++;
      v19 = v20;
      v21 = *ap++;
      v6 = v21 >= v19;
      v22 = v21 - v19;
      v23 = !v6;
      v6 = v22 >= v4;
      v24 = v22 - v4;
      if (v6)
      {
        v4 = v23;
      }

      else
      {
        v4 = 1;
      }

      *rp++ = v24;
      --*&num;
    }

    while (*&num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *ap - *bp;
    v6 = v5 >= v4;
    v7 = v5 - v4;
    v8 = !v6 || *ap < *bp;
    v6 = !v8;
    *rp = v7;
    v9 = ap[1];
    v10 = bp[1];
    v11 = v6;
    v6 = __CFSUB__(v9, v10, v6);
    rp[1] = v9 - (v10 + !v11);
    v12 = ap[2];
    v13 = bp[2];
    v14 = v6;
    v6 = __CFSUB__(v12, v13, v6);
    rp[2] = v12 - (v13 + !v14);
    v15 = ap[3];
    v16 = bp[3];
    v18 = v6;
    v6 = __CFSUB__(v15, v16, v6);
    v17 = v15 - (v16 + !v18);
    v4 = !v6;
    rp[3] = v17;
    ap += 4;
    bp += 4;
    rp += 4;
    *&num -= 4;
  }

  while (*&num >= 4uLL);
  if (*&num)
  {
    goto LABEL_14;
  }

  return v4;
}

unint64_t bn_add_words(unint64_t *rp, const unint64_t *ap, const unint64_t *bp, int num)
{
  if (!*&num)
  {
    return 0;
  }

  if (*&num < 4uLL)
  {
    v4 = 0;
    do
    {
LABEL_17:
      v23 = *bp++;
      v22 = v23;
      v24 = *ap++;
      v7 = __CFADD__(v24, v22);
      v25 = v24 + v22;
      v26 = v7;
      v7 = __CFADD__(v25, v4);
      v27 = v25 + v4;
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        v4 = v26;
      }

      *rp++ = v27;
      --*&num;
    }

    while (*&num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *ap + *bp;
    v6 = __CFADD__(*ap, *bp);
    v7 = __CFADD__(v5, v4);
    v8 = v5 + v4;
    v9 = v7 || v6;
    v7 = v9 != 0;
    *rp = v8;
    v10 = ap[1];
    v11 = bp[1];
    v13 = v7;
    v7 = __CFADD__(v7, v10);
    v12 = v13 + v10;
    v7 |= __CFADD__(v11, v12);
    rp[1] = v11 + v12;
    v14 = ap[2];
    v15 = bp[2];
    v17 = v7;
    v7 = __CFADD__(v7, v14);
    v16 = v17 + v14;
    v7 |= __CFADD__(v15, v16);
    rp[2] = v15 + v16;
    v18 = ap[3];
    v19 = bp[3];
    v21 = v7 + v18;
    v7 = __CFADD__(v7, v18) | __CFADD__(v19, v21);
    v20 = v19 + v21;
    v4 = v7;
    rp[3] = v20;
    ap += 4;
    bp += 4;
    rp += 4;
    *&num -= 4;
  }

  while (*&num >= 4uLL);
  if (*&num)
  {
    goto LABEL_17;
  }

  return v4;
}

EC_POINT *__cdecl EC_POINT_dup(const EC_POINT *a1, const EC_GROUP *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = EC_POINT_new(a2);
  v4 = v3;
  if (!v3 || !EC_POINT_copy(v3, a1))
  {
    EC_POINT_free(v4);
    return 0;
  }

  return v4;
}

uint64_t CBB_add_asn1(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (!CBB_flush(a1))
  {
    return 0;
  }

  if ((a3 & 0x1FFFFFFF) < 0x1F)
  {
    if (!cbb_add_u(a1, HIBYTE(a3) & 0xE0 | a3, 1uLL))
    {
      return 0;
    }
  }

  else if (!cbb_add_u(a1, HIBYTE(a3) | 0x1F, 1uLL) || !add_base128_integer(a1, a3 & 0x1FFFFFFF))
  {
    return 0;
  }

  return cbb_add_child(a1, a2, 1u, 1);
}

uint64_t CBB_add_asn1_octet_string(uint64_t a1, const void *a2, size_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v6;
  v9[2] = v6;
  v9[0] = v6;
  if (CBB_add_asn1(a1, v9, 4u) && CBB_add_bytes(v9, a2, a3) && CBB_flush(a1))
  {
    return 1;
  }

  v8 = (a1 + 16);
  if (*(a1 + 8))
  {
    v8 = *v8;
  }

  result = 0;
  *(v8 + 24) |= 2u;
  *a1 = 0;
  return result;
}

void ssl_st::~ssl_st(ssl_st *this)
{
  CRYPTO_free_ex_data(&bssl::g_ex_data_class_ssl, this, &this->d1);
  std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](&this->method, 0);
  if (*&this->version)
  {
    (*(*&this->version + 16))(this);
  }

  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&this->msg_callback_arg, 0);
  std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->s3, 0);
  std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->s2, 0);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->packet, 0);
  std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->bbio, 0);
  std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](&this->wbio, 0);
  std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](&this->method, 0);
}

void SSL_free(SSL *ssl)
{
  if (ssl)
  {
    ssl_st::~ssl_st(ssl);

    OPENSSL_free(v1);
  }
}

unint64_t bn_mul_words(unint64_t *rp, const unint64_t *ap, int num, unint64_t w)
{
  if (!*&num)
  {
    return 0;
  }

  if (*&num < 4uLL)
  {
    v4 = 0;
    do
    {
LABEL_20:
      v23 = *ap++;
      v24 = (v23 * w) >> 64;
      v25 = v23 * w + v4;
      if (__CFADD__(v23 * w, v4))
      {
        v4 = v24 + 1;
      }

      else
      {
        v4 = v24;
      }

      *rp++ = v25;
      --*&num;
    }

    while (*&num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *ap * w;
    v6 = __CFADD__(v5, v4);
    v7 = v5 + v4;
    if (v6)
    {
      v8 = ((*ap * w) >> 64) + 1;
    }

    else
    {
      v8 = (*ap * w) >> 64;
    }

    *rp = v7;
    v9 = ap[1];
    v10 = (v9 * w) >> 64;
    v11 = v9 * w;
    v6 = __CFADD__(v11, v8);
    v12 = v11 + v8;
    if (v6)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = v10;
    }

    rp[1] = v12;
    v14 = ap[2];
    v15 = (v14 * w) >> 64;
    v16 = v14 * w;
    v6 = __CFADD__(v16, v13);
    v17 = v16 + v13;
    if (v6)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v15;
    }

    rp[2] = v17;
    v19 = ap[3];
    v20 = (v19 * w) >> 64;
    v21 = v19 * w;
    v6 = __CFADD__(v21, v18);
    v22 = v21 + v18;
    if (v6)
    {
      v4 = v20 + 1;
    }

    else
    {
      v4 = v20;
    }

    rp[3] = v22;
    ap += 4;
    rp += 4;
    *&num -= 4;
  }

  while (*&num >= 4uLL);
  if (*&num)
  {
    goto LABEL_20;
  }

  return v4;
}

uint64_t bn_from_montgomery_in_place(unint64_t *a1, uint64_t num, unint64_t *rp, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 32);
  if (v5 == num && 2 * v5 == a4)
  {
    v11 = *(a5 + 24);
    v12 = 0;
    if (v5)
    {
      v13 = *(a5 + 48);
      v14 = rp;
      v15 = num;
      do
      {
        v16 = bn_mul_add_words(v14, v11, num, *v14 * v13);
        v17 = v14[num];
        v18 = v16 + v12 + v17;
        v12 = (v18 <= v17) & ((v16 + v12 != 0) | v12);
        v14[num] = v18;
        ++v14;
        --v15;
      }

      while (v15);
    }

    bn_reduce_once(a1, &rp[num], v12, v11, num);
    return 1;
  }

  else
  {
    ERR_put_error(3, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/montgomery.c.inc", 294);
    return 0;
  }
}

void *bn_sqr_comba4(void *result, unint64_t *a2)
{
  v2 = (*a2 * *a2) >> 64;
  *result = *a2 * *a2;
  v3 = a2[1];
  v4 = (*a2 * v3) >> 64;
  v5 = *a2 * v3;
  v6 = __CFADD__(v5, v2);
  v7 = v5 + v2;
  if (v6)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  v6 = __CFADD__(v7, v5);
  v9 = v7 + v5;
  if (v6)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  result[1] = v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = (v11 * v11) >> 64;
  v14 = v11 * v11;
  v6 = __CFADD__(v14, v10 + v8);
  v15 = v14 + v10 + v8;
  if (v6)
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v6 = __CFADD__(__CFADD__(v10, v8), v16);
  v17 = __CFADD__(v10, v8) + v16;
  v18 = v6;
  v19 = a2[2];
  v20 = (v12 * v19) >> 64;
  v21 = v12 * v19;
  v6 = __CFADD__(v15, v21);
  v22 = v15 + v21;
  if (v6)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  v6 = __CFADD__(v17, v23);
  v24 = v17 + v23;
  v25 = v6;
  v6 = __CFADD__(v22, v21);
  v26 = v22 + v21;
  if (v6)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v20;
  }

  v6 = __CFADD__(v24, v27);
  v28 = v24 + v27;
  v29 = v18 + v6 + v25;
  result[2] = v26;
  v31 = a2[2];
  v30 = a2[3];
  v32 = a2[1];
  v33 = (*a2 * v30) >> 64;
  v34 = *a2 * v30;
  v6 = __CFADD__(v34, v28);
  v35 = v34 + v28;
  if (v6)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v29 + v36;
  v6 = __CFADD__(v35, v34);
  v38 = v35 + v34;
  if (v6)
  {
    v39 = v33 + 1;
  }

  else
  {
    v39 = v33;
  }

  v6 = __CFADD__(v37, v39);
  v40 = v37 + v39;
  v41 = v6;
  if (__CFADD__(v29, v36))
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = (v32 * v31) >> 64;
  v44 = v32 * v31;
  v6 = __CFADD__(v38, v44);
  v45 = v38 + v44;
  if (v6)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v43;
  }

  v6 = __CFADD__(v40, v46);
  v47 = v40 + v46;
  v48 = v6;
  v6 = __CFADD__(v45, v44);
  v49 = v45 + v44;
  if (v6)
  {
    v50 = v43 + 1;
  }

  else
  {
    v50 = v43;
  }

  v51 = __PAIR128__(v42, v47) + __PAIR128__(v48, v50);
  result[3] = v49;
  v52 = a2[1];
  v53 = a2[2] * a2[2] + v51;
  v54 = *(&v51 + 1) + v51;
  v55 = __CFADD__(*(&v51 + 1), v51);
  v56 = a2[3];
  v57 = (v52 * v56) >> 64;
  v58 = v52 * v56;
  v6 = __CFADD__(v53, v58);
  v59 = v53 + v58;
  if (v6)
  {
    v60 = v57 + 1;
  }

  else
  {
    v60 = v57;
  }

  v6 = __CFADD__(v54, v60);
  v61 = v54 + v60;
  v62 = v6;
  v6 = __CFADD__(v59, v58);
  v63 = v59 + v58;
  if (v6)
  {
    v64 = v57 + 1;
  }

  else
  {
    v64 = v57;
  }

  v6 = __CFADD__(v61, v64);
  v65 = v61 + v64;
  v66 = v55 + v6 + v62;
  result[4] = v63;
  v68 = a2[2];
  v67 = a2[3];
  v69 = (v68 * v67) >> 64;
  v70 = v68 * v67;
  v6 = __CFADD__(v70, v65);
  v71 = v70 + v65;
  if (v6)
  {
    v72 = v69 + 1;
  }

  else
  {
    v72 = v69;
  }

  v73 = v66 + v72;
  v6 = __CFADD__(v71, v70);
  v74 = v71 + v70;
  if (v6)
  {
    v75 = v69 + 1;
  }

  else
  {
    v75 = v69;
  }

  v6 = __CFADD__(v73, v75);
  v76 = v73 + v75;
  v77 = v6;
  result[5] = v74;
  v78 = a2[3];
  v79 = (v78 * v78) >> 64;
  v80 = v78 * v78;
  v6 = __CFADD__(v80, v76);
  v81 = v80 + v76;
  if (v6)
  {
    v82 = v79 + 1;
  }

  else
  {
    v82 = v79;
  }

  result[6] = v81;
  result[7] = v77 + __CFADD__(v66, v72) + v82;
  return result;
}

uint64_t ec_felem_add(uint64_t a1, unint64_t *a2, const unint64_t *a3, const unint64_t *a4)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v4;
  v6[3] = v4;
  v6[0] = v4;
  v6[1] = v4;
  return bn_mod_add_words(a2, a3, a4, *(a1 + 320), v6, *(a1 + 328));
}

uint64_t bn_mod_add_words(unint64_t *a1, const unint64_t *a2, const unint64_t *a3, const unint64_t *a4, unint64_t *a5, uint64_t num)
{
  v10 = bn_add_words(a1, a2, a3, num);

  return bn_reduce_once_in_place(a1, v10, a4, a5, num);
}

uint64_t *bn_select_words(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v6 = *a3++;
    v5 = v6;
    v7 = *a4++;
    *result++ = a2 & v5 | v7 & ~a2;
  }

  return result;
}

void EC_POINT_free(EC_POINT *a1)
{
  if (a1)
  {
    EC_GROUP_free(*a1);

    OPENSSL_free(a1);
  }
}

void EC_KEY_free(EC_KEY *a1)
{
  if (a1 && CRYPTO_refcount_dec_and_test_zero(a1 + 8))
  {
    v3 = *(a1 + 5);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v4(a1);
        v3 = *(a1 + 5);
      }

      METHOD_unref(v3, v2);
    }

    CRYPTO_free_ex_data(&g_ec_ex_data_class, a1, a1 + 3);
    EC_GROUP_free(*a1);
    EC_POINT_free(*(a1 + 1));
    OPENSSL_free(*(a1 + 2));

    OPENSSL_free(a1);
  }
}