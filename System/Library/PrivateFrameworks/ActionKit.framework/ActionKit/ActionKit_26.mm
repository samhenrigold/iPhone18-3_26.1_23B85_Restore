uint64_t x509_vfy_check_policy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *&policy_oids.num = 0;
  if (*(a1 + 216))
  {
    return 1;
  }

  v7 = X509_policy_check(*(a1 + 160), *(*(a1 + 48) + 48), *(*(a1 + 48) + 24), &policy_oids, a5);
  if (v7)
  {
    *(a1 + 184) = *&policy_oids.num;
    *(a1 + 176) = v7;
    if (v7 == 17)
    {
      return 0;
    }

    else
    {
      return (*(a1 + 64))(0, a1);
    }
  }

  else
  {
    if ((*(*(a1 + 48) + 25) & 8) == 0)
    {
      return 1;
    }

    *(a1 + 184) = 0;
    result = (*(a1 + 64))(2, a1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t x509_check_cert_time(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  if ((v7 & 2) != 0)
  {
    v8 = *(v6 + 8);
  }

  else
  {
    if ((v7 & 0x200000) != 0)
    {
      return 1;
    }

    v8 = time(0);
  }

  if (*(a2 + 57))
  {
    v10 = *(a2 + 208);
    v11 = v8 == -1 || v10 == -1;
  }

  else
  {
    v9 = X509_getm_notBefore(a2);
    v10 = x509_verify_asn1_time_to_time_t(v9, 0);
    v11 = v10 == -1;
  }

  v12 = v11;
  if (v10 > v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a3 < 0 && (v13 & 1) != 0)
  {
    return 0;
  }

  if (v12)
  {
    *(a1 + 184) = a2;
    v14 = 13;
    goto LABEL_22;
  }

  if (v10 > v8)
  {
    *(a1 + 184) = a2;
    v14 = 9;
LABEL_22:
    *(a1 + 172) = a3;
    *(a1 + 176) = v14;
    result = (*(a1 + 64))(0, a1);
    if (!result)
    {
      return result;
    }
  }

  if (*(a2 + 57))
  {
    v17 = *(a2 + 216);
    v18 = v8 == -1 || v17 == -1;
  }

  else
  {
    v16 = X509_getm_notAfter(a2);
    v17 = x509_verify_asn1_time_to_time_t(v16, 1);
    v18 = v17 == -1;
  }

  v19 = v18;
  if (v17 > v8)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (v19)
  {
    v20 = 0;
  }

  if (a3 < 0 && v20 < 1)
  {
    return 0;
  }

  if (v19)
  {
    *(a1 + 184) = a2;
    v21 = 14;
    goto LABEL_43;
  }

  if (v20 < 0)
  {
    *(a1 + 184) = a2;
    v21 = 10;
LABEL_43:
    *(a1 + 172) = a3;
    *(a1 + 176) = v21;
    result = (*(a1 + 64))(0, a1);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t X509_cmp_time_internal(int *a1, time_t *a2, int a3)
{
  if (a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = time(0);
  }

  v6 = x509_verify_asn1_time_to_time_t(a1, a3);
  if (v6 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (v6 == -1)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t x509_vfy_internal_verify(uint64_t a1, int a2)
{
  v4 = sk_num(*(a1 + 160));
  v5 = v4 - 1;
  v6 = sk_value(*(a1 + 160), v4 - 1);
  if ((*(a1 + 80))(a1, v6, v6))
  {
    v7 = v6;
    while ((v5 & 0x80000000) == 0)
    {
      if (!a2)
      {
        if (v6 != v7 || (*(*(a1 + 48) + 25) & 0x40) != 0)
        {
          pubkey = X509_get_pubkey(v7);
          if (pubkey)
          {
            if (X509_verify(v6, pubkey) <= 0)
            {
              *(a1 + 172) = v5;
              v11 = v6;
              if (!v6)
              {
                v11 = sk_value(*(a1 + 160), v5);
              }

              *(a1 + 184) = v11;
              *(a1 + 176) = 7;
              if (!(*(a1 + 64))(0, a1))
              {
                EVP_PKEY_free(pubkey);
                return 0;
              }
            }
          }

          else
          {
            if (v6 == v7)
            {
              v12 = v5;
            }

            else
            {
              v12 = v5 + 1;
            }

            *(a1 + 172) = v12;
            v13 = v7;
            if (!v7)
            {
              v13 = sk_value(*(a1 + 160), v12);
            }

            *(a1 + 184) = v13;
            *(a1 + 176) = 6;
            result = (*(a1 + 64))(0, a1);
            if (!result)
            {
              return result;
            }
          }

          EVP_PKEY_free(pubkey);
        }

LABEL_31:
        result = x509_check_cert_time(a1, v6, v5);
        if (!result)
        {
          return result;
        }
      }

LABEL_32:
      *(a1 + 184) = v6;
      *(a1 + 192) = v7;
      *(a1 + 172) = v5;
      result = (*(a1 + 64))(1, a1);
      if (!result)
      {
        return result;
      }

      if (v5-- > 0)
      {
LABEL_13:
        v7 = v6;
        v6 = sk_value(*(a1 + 160), v5);
      }
    }

    return 1;
  }

  else
  {
    if ((*(*(a1 + 48) + 26) & 8) != 0)
    {
      v7 = v6;
      if (a2)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v4 > 1)
    {
      v5 = v4 - 2;
      *(a1 + 172) = v4 - 2;
      goto LABEL_13;
    }

    *(a1 + 172) = 0;
    if (!v6)
    {
      v6 = sk_value(*(a1 + 160), 0);
    }

    *(a1 + 184) = v6;
    *(a1 + 176) = 21;
    v8 = *(a1 + 64);

    return v8(0, a1);
  }
}

int X509_cmp_current_time(ASN1_TIME *s)
{
  v2 = time(0);
  v3 = x509_verify_asn1_time_to_time_t(&s->length, 0);
  if (v3 > v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

ASN1_TIME *__cdecl X509_gmtime_adj(ASN1_TIME *s, uint64_t adj)
{
  v4 = time(0);

  return ASN1_TIME_adj(s, v4, 0, adj);
}

ASN1_TIME *X509_time_adj_ex(ASN1_TIME *a1, uint64_t a2, uint64_t a3, time_t *a4)
{
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = time(0);
  }

  return ASN1_TIME_adj(a1, v7, a2, a3);
}

int X509_get_pubkey_parameters(EVP_PKEY *pkey, STACK *chain)
{
  if (pkey && !EVP_PKEY_missing_parameters(pkey))
  {
LABEL_15:
    LODWORD(v11) = 1;
    return v11;
  }

  if (sk_num(chain) < 1)
  {
LABEL_8:
    v8 = 107;
    v9 = 2049;
LABEL_17:
    ERR_put_error(11, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v9);
    LODWORD(v11) = 0;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = sk_value(chain, v4);
      v6 = X509_get0_pubkey(v5);
      if (!v6)
      {
        v8 = 108;
        v9 = 2040;
        goto LABEL_17;
      }

      v7 = v6;
      if (!EVP_PKEY_missing_parameters(v6))
      {
        break;
      }

      if (++v4 >= sk_num(chain))
      {
        goto LABEL_8;
      }
    }

    while (1)
    {
      v12 = __OFSUB__(v4--, 1);
      if (v4 < 0 != v12)
      {
        break;
      }

      v10 = sk_value(chain, v4);
      v11 = X509_get0_pubkey(v10);
      if (v11)
      {
        LODWORD(v11) = EVP_PKEY_copy_parameters(v11, v7);
        if (v11)
        {
          continue;
        }
      }

      return v11;
    }

    if (!pkey)
    {
      goto LABEL_15;
    }

    LODWORD(v11) = EVP_PKEY_copy_parameters(pkey, v7);
    if (v11)
    {
      goto LABEL_15;
    }
  }

  return v11;
}

STACK *__cdecl X509_STORE_CTX_get1_chain(X509_STORE_CTX *ctx)
{
  v1 = *&ctx->explicit_policy;
  if (!v1)
  {
    return 0;
  }

  v2 = sk_dup(v1);
  v3 = v2;
  if (v2 && sk_num(v2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sk_value(v3, v4);
      CRYPTO_add_lock(v5 + 7, 1, 3, 0, 0);
      ++v4;
    }

    while (v4 < sk_num(v3));
  }

  return v3;
}

int X509_STORE_CTX_purpose_inherit(X509_STORE_CTX *ctx, int def_purpose, int purpose, int trust)
{
  if (purpose)
  {
    v6 = purpose;
  }

  else
  {
    v6 = def_purpose;
  }

  if (!v6)
  {
LABEL_13:
    if (!trust)
    {
      v13 = 1;
      if (!v6)
      {
        goto LABEL_20;
      }

LABEL_19:
      other_ctx = ctx->other_ctx;
      if (!other_ctx[8])
      {
        other_ctx[8] = v6;
        if ((v13 & 1) == 0)
        {
LABEL_21:
          v15 = ctx->other_ctx;
          if (!v15[9])
          {
            v15[9] = trust;
          }
        }

        return 1;
      }

LABEL_20:
      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

      return 1;
    }

    goto LABEL_14;
  }

  v8 = X509_PURPOSE_get_by_id(v6);
  if (v8 == -1)
  {
    v10 = 121;
    v11 = 2253;
    goto LABEL_26;
  }

  v9 = X509_PURPOSE_get0(v8);
  if (v9->trust == -1)
  {
    v12 = X509_PURPOSE_get_by_id(def_purpose);
    if (v12 == -1)
    {
      v10 = 121;
      v11 = 2260;
      goto LABEL_26;
    }

    v9 = X509_PURPOSE_get0(v12);
    if (trust)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!trust)
  {
LABEL_12:
    trust = v9->trust;
    goto LABEL_13;
  }

LABEL_14:
  if (X509_TRUST_get_by_id(trust) != -1)
  {
    v13 = 0;
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v10 = 120;
  v11 = 2272;
LABEL_26:
  ERR_put_error(11, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v11);
  return 0;
}

X509_STORE_CTX *X509_STORE_CTX_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10A0040B2C3A4BFuLL);
  if (!v0)
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", 2292);
  }

  return v0;
}

void X509_STORE_CTX_free(X509_STORE_CTX *ctx)
{
  if (ctx)
  {
    X509_STORE_CTX_cleanup(ctx);

    free(ctx);
  }
}

void X509_STORE_CTX_cleanup(X509_STORE_CTX *ctx)
{
  chain = ctx->chain;
  if (chain)
  {
    (chain)(ctx);
  }

  other_ctx = ctx->other_ctx;
  if (other_ctx)
  {
    if (!ctx[1].ctx)
    {
      X509_VERIFY_PARAM_free(other_ctx);
    }

    ctx->other_ctx = 0;
  }

  v4 = *&ctx->explicit_policy;
  if (v4)
  {
    sk_pop_free(v4, X509_free);
    *&ctx->explicit_policy = 0;
  }

  CRYPTO_free_ex_data(5, ctx, &ctx[1].current_method);
  *&ctx[1].current_method = 0;
}

int X509_STORE_CTX_init(X509_STORE_CTX *ctx, X509_STORE *store, X509 *x509, STACK *chain)
{
  *&ctx->ctx = 0u;
  *&ctx->cert = 0u;
  *&ctx[1].current_method = 0;
  *&ctx->current_crl = 0u;
  *&ctx->ex_data.dummy = 0u;
  *&ctx->explicit_policy = 0u;
  *&ctx->current_cert = 0u;
  *&ctx->cleanup = 0u;
  *&ctx->chain = 0u;
  *&ctx->get_crl = 0u;
  *&ctx->cert_crl = 0u;
  *&ctx->verify_cb = 0u;
  *&ctx->check_issued = 0u;
  *&ctx->crls = 0u;
  *&ctx->other_ctx = 0u;
  LODWORD(ctx->current_cert) = 65;
  ctx->ctx = store;
  ctx->cert = x509;
  ctx->untrusted = chain;
  if (store)
  {
    param = store->param;
    if (!param)
    {
      param = internal_verify;
    }

    ctx->verify = param;
    verify = store->verify;
    if (!verify)
    {
      verify = null_callback;
    }

    ctx->verify_cb = verify;
    verify_cb = store->verify_cb;
    if (!verify_cb)
    {
      verify_cb = X509_STORE_CTX_get1_issuer;
    }

    ctx->get_issuer = verify_cb;
    get_issuer = store->get_issuer;
    if (!get_issuer)
    {
      get_issuer = ::check_issued;
    }

    ctx->check_issued = get_issuer;
    check_issued = store->check_issued;
    check_revocation = store->check_revocation;
    if (!check_issued)
    {
      check_issued = ::check_revocation;
    }

    get_crl = store->get_crl;
    ctx->check_revocation = check_issued;
    ctx->get_crl = check_revocation;
    if (get_crl)
    {
      v13 = get_crl;
    }

    else
    {
      v13 = ::check_crl;
    }

    ctx->check_crl = v13;
    check_crl = store->check_crl;
    if (!check_crl)
    {
      check_crl = ::cert_crl;
    }

    ctx->cert_crl = check_crl;
    ctx->check_policy = check_policy;
    cert_crl = store->cert_crl;
    if (!cert_crl)
    {
      cert_crl = X509_STORE_CTX_get1_certs;
    }

    ctx->cleanup = cert_crl;
    cleanup = store->cleanup;
    if (!cleanup)
    {
      cleanup = X509_STORE_CTX_get1_crls;
    }

    *&ctx->valid = cleanup;
    sk = store->ex_data.sk;
    if (sk)
    {
      ctx->chain = sk;
      v18 = X509_VERIFY_PARAM_new();
      ctx->other_ctx = v18;
      p_other_ctx = &ctx->other_ctx;
      if (v18)
      {
        v20 = v18;
        goto LABEL_27;
      }

LABEL_29:
      v22 = 2402;
      goto LABEL_36;
    }
  }

  else
  {
    ctx->verify = internal_verify;
    ctx->verify_cb = null_callback;
    ctx->get_issuer = X509_STORE_CTX_get1_issuer;
    ctx->check_issued = ::check_issued;
    ctx->check_revocation = ::check_revocation;
    ctx->get_crl = 0;
    ctx->check_crl = ::check_crl;
    ctx->cert_crl = ::cert_crl;
    ctx->check_policy = check_policy;
    ctx->cleanup = X509_STORE_CTX_get1_certs;
    *&ctx->valid = X509_STORE_CTX_get1_crls;
  }

  ctx->chain = 0;
  v21 = X509_VERIFY_PARAM_new();
  ctx->other_ctx = v21;
  p_other_ctx = &ctx->other_ctx;
  if (!v21)
  {
    goto LABEL_29;
  }

  v20 = v21;
  if (!store)
  {
    v21->inh_flags |= 0x11uLL;
    goto LABEL_31;
  }

LABEL_27:
  if (!X509_VERIFY_PARAM_inherit(v20, store->get_cert_methods))
  {
LABEL_34:
    v22 = 2419;
    goto LABEL_36;
  }

  v20 = *p_other_ctx;
LABEL_31:
  v23 = X509_VERIFY_PARAM_lookup("default");
  if (!X509_VERIFY_PARAM_inherit(v20, v23))
  {
    goto LABEL_34;
  }

  if (CRYPTO_new_ex_data(5, ctx, &ctx[1].current_method))
  {
    return 1;
  }

  v22 = 2425;
LABEL_36:
  ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_vfy.c", v22);
  return 0;
}

uint64_t check_crl(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 172);
  v5 = sk_num(*(a1 + 160));
  v6 = *(a1 + 192);
  if (!v6)
  {
    v7 = v5 - 1;
    v8 = *(a1 + 160);
    if (v4 >= v7)
    {
      v6 = sk_value(v8, v7);
      v9 = (*(a1 + 80))(a1, v6, v6);
      if (!v9)
      {
        *(a1 + 176) = 33;
        if (!(*(a1 + 64))(v9, a1))
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v6 = sk_value(v8, v4 + 1);
    }

    if (!v6)
    {
      goto LABEL_29;
    }
  }

  if (*(a2 + 64))
  {
    goto LABEL_8;
  }

  if ((v6[56] & 2) != 0 && (v6[64] & 2) == 0)
  {
    *(a1 + 176) = 35;
    if (!(*(a1 + 64))(0, a1))
    {
      goto LABEL_34;
    }
  }

  v12 = *(a1 + 208);
  if ((v12 & 0x80) == 0)
  {
    *(a1 + 176) = 44;
    if (!(*(a1 + 64))(0, a1))
    {
      goto LABEL_34;
    }

    v12 = *(a1 + 208);
  }

  if ((v12 & 8) == 0)
  {
    if (!*(a1 + 216))
    {
      v13 = *(a1 + 192);
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      *param = 0u;
      memset(v24, 0, sizeof(v24));
      if (!X509_STORE_CTX_init(v24, *a1, v13, *(a1 + 24)))
      {
        goto LABEL_30;
      }

      v14 = *(a1 + 48);
      *(&v25 + 1) = *(a1 + 40);
      if (param[0])
      {
        X509_VERIFY_PARAM_free(param[0]);
      }

      *(&v36 + 1) = a1;
      v15 = *(a1 + 64);
      param[0] = v14;
      *&v27 = v15;
      if (X509_verify_cert(v24) > 0)
      {
        v16 = *(a1 + 160);
        v17 = v33;
        v18 = sk_num(v16);
        v19 = sk_value(v16, v18 - 1);
        v20 = sk_num(v17);
        v21 = sk_value(v17, v20 - 1);
        LODWORD(v19) = X509_cmp(v19, v21);
        X509_STORE_CTX_cleanup(v24);
        if (!v19)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_30:
        X509_STORE_CTX_cleanup(v24);
      }
    }

    *(a1 + 176) = 54;
    if (!(*(a1 + 64))(0, a1))
    {
LABEL_34:
      v6 = 0;
      goto LABEL_35;
    }
  }

LABEL_32:
  if ((*(a2 + 48) & 2) != 0)
  {
    *(a1 + 176) = 41;
    if (!(*(a1 + 64))(0, a1))
    {
      goto LABEL_34;
    }
  }

LABEL_8:
  if ((*(a1 + 208) & 0x40) == 0 && !check_crl_time(a1, a2, 1))
  {
    goto LABEL_34;
  }

  pubkey = X509_get_pubkey(v6);
  v6 = pubkey;
  if (!pubkey)
  {
    *(a1 + 176) = 6;
    v11 = (*(a1 + 64))(0, a1);
LABEL_28:
    if (v11)
    {
      goto LABEL_29;
    }

LABEL_35:
    v22 = 0;
    goto LABEL_36;
  }

  if (X509_CRL_verify(a2, pubkey) <= 0)
  {
    *(a1 + 176) = 8;
    v11 = (*(a1 + 64))(0, a1);
    goto LABEL_28;
  }

LABEL_29:
  v22 = 1;
LABEL_36:
  EVP_PKEY_free(v6);
  return v22;
}

uint64_t cert_crl(uint64_t a1, uint64_t a2, X509 *x)
{
  if ((*(*(a1 + 48) + 24) & 0x10) != 0 || (*(a2 + 29) & 2) == 0 || (*(a1 + 176) = 36, result = (*(a1 + 64))(0, a1), result))
  {
    v7 = 0;
    if (!X509_CRL_get0_by_cert(a2, &v7, x))
    {
      return 1;
    }

    if (*(v7 + 32) == 8)
    {
      return 2;
    }

    *(a1 + 176) = 23;
    result = (*(a1 + 64))(0, a1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t X509_STORE_CTX_set0_trusted_stack(uint64_t result, uint64_t a2)
{
  *(result + 32) = a2;
  *(result + 72) = get_trusted_issuer;
  return result;
}

uint64_t get_trusted_issuer(char **a1, uint64_t a2, uint64_t a3)
{
  issuer = find_issuer(a2, *(a2 + 32), a3, 1);
  *a1 = issuer;
  if (!issuer)
  {
    return 0;
  }

  v5 = 1;
  CRYPTO_add_lock(issuer + 7, 1, 3, 0, 0);
  return v5;
}

int X509_STORE_CTX_set_default(X509_STORE_CTX *ctx, const char *name)
{
  v3 = X509_VERIFY_PARAM_lookup(name);
  if (v3)
  {
    v4 = v3;
    other_ctx = ctx->other_ctx;

    LODWORD(v3) = X509_VERIFY_PARAM_inherit(other_ctx, v4);
  }

  return v3;
}

void X509_STORE_CTX_set0_param(X509_STORE_CTX *ctx, X509_VERIFY_PARAM *param)
{
  other_ctx = ctx->other_ctx;
  if (other_ctx)
  {
    X509_VERIFY_PARAM_free(other_ctx);
  }

  ctx->other_ctx = param;
}

uint64_t x509_vfy_check_security_level(uint64_t a1)
{
  v2 = sk_num(*(a1 + 160));
  if (*(*(a1 + 48) + 44) < 1 || v2 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = v2 - 1;
  while (1)
  {
    v7 = sk_value(*(a1 + 160), v5);
    if (v5 && !check_key_level(a1, v7))
    {
      *(a1 + 172) = v5;
      v8 = v7;
      if (!v7)
      {
        v8 = sk_value(*(a1 + 160), v5);
      }

      *(a1 + 184) = v8;
      *(a1 + 176) = 68;
      result = (*(a1 + 64))(0, a1);
      if (!result)
      {
        break;
      }
    }

    if (v6 == v5)
    {
      return 1;
    }

    signature_nid = X509_get_signature_nid(v7);
    if (!signature_nid || (n = 0, !OBJ_find_sigid_algs(signature_nid, &n, 0)) || !n || (v10 = OBJ_nid2sn(n), (digestbyname = EVP_get_digestbyname(v10)) == 0) || (v12 = EVP_MD_size(digestbyname), !enough_bits_for_security_level(4 * v12, *(*(a1 + 48) + 44))))
    {
      *(a1 + 172) = v5;
      if (!v7)
      {
        v7 = sk_value(*(a1 + 160), v5);
      }

      *(a1 + 184) = v7;
      *(a1 + 176) = 69;
      result = (*(a1 + 64))(0, a1);
      if (!result)
      {
        break;
      }
    }

    ++v5;
  }

  return result;
}

char *find_issuer(uint64_t a1, STACK *a2, uint64_t a3, int a4)
{
  if (sk_num(a2) < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = sk_value(a2, v9);
    if ((*(a1 + 80))(a1, a3, v10))
    {
      if (x509_check_cert_time(a1, v10, -1))
      {
        return v10;
      }

      if (a4)
      {
        v8 = v10;
      }
    }

    ++v9;
    v10 = v8;
  }

  while (v9 < sk_num(a2));
  return v10;
}

BOOL get_crl_sk(uint64_t a1, X509_CRL **a2, X509_CRL **a3, char **a4, int *a5, _DWORD *a6, STACK *a7)
{
  v7 = a7;
  v13 = *a5;
  v77 = *(a1 + 184);
  if (sk_num(a7) < 1)
  {
    return v13 > 447;
  }

  v68 = a5;
  v69 = a3;
  v66 = a2;
  v67 = a4;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v73 = a6;
  v19 = v77;
  v76 = v7;
  do
  {
    v20 = sk_value(v7, v17);
    v21 = v20;
    v22 = *a6;
    v23 = *(v20 + 12);
    if ((v23 & 2) != 0)
    {
      goto LABEL_41;
    }

    if ((*(*(a1 + 48) + 25) & 0x10) != 0)
    {
      if ((v23 & 0x40) != 0)
      {
        if ((*(v20 + 13) & ~v22) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (*(v20 + 8))
      {
        goto LABEL_41;
      }
    }

    else if ((v23 & 0x60) != 0)
    {
      goto LABEL_41;
    }

    v80 = *a6;
    v78 = v18;
    issuer_name = X509_get_issuer_name(v19);
    issuer = X509_CRL_get_issuer(v21);
    if (X509_NAME_cmp(issuer_name, issuer))
    {
      v26 = 0;
      v27 = a1;
      if ((*(v21 + 48) & 0x20) == 0)
      {
        v7 = v76;
        v18 = v78;
        v22 = v80;
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 32;
      v27 = a1;
    }

    v28 = ((*(v21 + 28) >> 1) & 0x100 | v26) ^ 0x100;
    if (check_crl_time(v27, v21, 0))
    {
      v29 = v28 | 0x40;
    }

    else
    {
      v29 = v28;
    }

    v30 = X509_CRL_get_issuer(v21);
    v31 = *(v27 + 172);
    if (v31 != sk_num(*(v27 + 160)) - 1)
    {
      ++v31;
    }

    v32 = sk_value(*(v27 + 160), v31);
    if (X509_check_akid(v32, *(v21 + 32)) || (v29 & 0x20) == 0)
    {
      v74 = v29;
      v33 = v31 + 1;
      v34 = a1;
      while (v33 < sk_num(*(a1 + 160)))
      {
        v35 = sk_value(*(a1 + 160), v33);
        subject_name = X509_get_subject_name(v35);
        if (!X509_NAME_cmp(subject_name, v30) && !X509_check_akid(v35, *(v21 + 32)))
        {
          v26 = v74 | 0xC;
          v18 = v35;
LABEL_39:
          a6 = v73;
          v19 = v77;
          goto LABEL_40;
        }

        ++v33;
      }

      v19 = v77;
      if ((*(*(a1 + 48) + 25) & 0x10) != 0 && sk_num(*(a1 + 24)) >= 1)
      {
        v37 = 0;
        while (1)
        {
          v38 = v34;
          v39 = sk_value(*(v34 + 24), v37);
          v40 = X509_get_subject_name(v39);
          if (!X509_NAME_cmp(v40, v30) && !X509_check_akid(v39, *(v21 + 32)))
          {
            break;
          }

          ++v37;
          v34 = v38;
          if (v37 >= sk_num(*(v38 + 24)))
          {
            a6 = v73;
            v19 = v77;
            goto LABEL_36;
          }
        }

        v26 = v74 | 4;
        v18 = v39;
        goto LABEL_39;
      }

      a6 = v73;
LABEL_36:
      v18 = v78;
      v26 = v74;
    }

    else
    {
      v26 = v29 | 0x1C;
      v18 = v32;
      v19 = v77;
      a6 = v73;
    }

LABEL_40:
    v7 = v76;
    v22 = v80;
    if ((v26 & 4) == 0)
    {
LABEL_41:
      v26 = 0;
      goto LABEL_42;
    }

    v41 = *(v21 + 48);
    if ((v41 & 0x10) != 0)
    {
      goto LABEL_42;
    }

    if ((*(v19 + 56) & 0x10) != 0)
    {
      if ((v41 & 4) != 0)
      {
        goto LABEL_42;
      }
    }

    else if ((v41 & 8) != 0)
    {
      goto LABEL_42;
    }

    v75 = v26;
    v79 = v18;
    v64 = *(v21 + 52);
    if (sk_num(*(v19 + 104)) >= 1)
    {
      v42 = 0;
      while (1)
      {
        v43 = sk_value(*(v19 + 104), v42);
        v44 = X509_CRL_get_issuer(v21);
        v45 = *(v43 + 2);
        if (v45)
        {
          if (sk_num(v45) < 1)
          {
            goto LABEL_87;
          }

          v46 = 0;
          while (1)
          {
            v47 = sk_value(*(v43 + 2), v46);
            if (*v47 == 4 && !X509_NAME_cmp(*(v47 + 1), v44))
            {
              break;
            }

            if (++v46 >= sk_num(*(v43 + 2)))
            {
              goto LABEL_87;
            }
          }
        }

        else if ((v75 & 0x20) == 0)
        {
          goto LABEL_87;
        }

        v48 = *(v21 + 40);
        if (!v48)
        {
          goto LABEL_92;
        }

        v70 = *v43;
        if (!*v43)
        {
          goto LABEL_92;
        }

        v49 = *v48;
        if (!*v48)
        {
          goto LABEL_92;
        }

        if (*v70 == 1)
        {
          break;
        }

        if (*v49 == 1)
        {
          a = *(v49 + 16);
          if (!a)
          {
            goto LABEL_87;
          }

LABEL_82:
          v53 = *(v70 + 8);
          if (sk_num(v53) >= 1)
          {
            v54 = 0;
            while (1)
            {
              v55 = sk_value(v53, v54);
              if (*v55 == 4 && !X509_NAME_cmp(a, *(v55 + 1)))
              {
                goto LABEL_92;
              }

              if (++v54 >= sk_num(v53))
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_87;
        }

        if (sk_num(*(v70 + 8)) >= 1)
        {
          v65 = 0;
          while (1)
          {
            aa = sk_value(*(v70 + 8), v65);
            if (sk_num(*(v49 + 8)) >= 1)
            {
              break;
            }

LABEL_79:
            if (++v65 >= sk_num(*(v70 + 8)))
            {
              goto LABEL_87;
            }
          }

          v51 = 0;
          while (1)
          {
            v52 = sk_value(*(v49 + 8), v51);
            if (!GENERAL_NAME_cmp(aa, v52))
            {
              break;
            }

            if (++v51 >= sk_num(*(v49 + 8)))
            {
              goto LABEL_79;
            }
          }

LABEL_92:
          v57 = *(v43 + 6) & v64;
          v7 = v76;
          v19 = v77;
          a6 = v73;
          v18 = v79;
          v22 = v80;
          v26 = v75;
LABEL_93:
          if ((v57 & ~v22) != 0)
          {
            v22 |= v57;
            v26 |= 0x80u;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_42;
        }

LABEL_87:
        ++v42;
        v19 = v77;
        if (v42 >= sk_num(*(v77 + 104)))
        {
          goto LABEL_88;
        }
      }

      a = *(v70 + 16);
      if (!a)
      {
        goto LABEL_87;
      }

      if (*v49 == 1)
      {
        v50 = *(v49 + 16);
        if (v50 && !X509_NAME_cmp(a, v50))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      }

      v70 = *v48;
      goto LABEL_82;
    }

LABEL_88:
    v56 = *(v21 + 40);
    v22 = v80;
    if (v56)
    {
      v7 = v76;
      a6 = v73;
      v18 = v79;
      v26 = v75;
      if ((v75 & 0x20) != 0)
      {
        v57 = v64;
        if (!*v56)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v7 = v76;
      a6 = v73;
      v18 = v79;
      v26 = v75;
      v57 = v64;
      if ((v75 & 0x20) != 0)
      {
        goto LABEL_93;
      }
    }

LABEL_42:
    if (v26 > v13)
    {
      v13 = v26;
      v16 = v22;
      v15 = v21;
      v14 = v18;
    }

    ++v17;
  }

  while (v17 < sk_num(v7));
  if (v15)
  {
    if (*v66)
    {
      X509_CRL_free(*v66);
    }

    *v66 = v15;
    *v67 = v14;
    *v68 = v13;
    *a6 = v16;
    CRYPTO_add_lock((v15 + 24), 1, 6, 0, 0);
    if (*v69)
    {
      X509_CRL_free(*v69);
      *v69 = 0;
    }

    if ((*(*(a1 + 48) + 25) & 0x20) != 0 && ((*(*(a1 + 184) + 56) | *(v15 + 28)) & 0x1000) != 0)
    {
      if (sk_num(v7) < 1)
      {
LABEL_119:
        v60 = 0;
      }

      else
      {
        v58 = 0;
        while (1)
        {
          v59 = sk_value(v7, v58);
          if (*(v59 + 8))
          {
            if (*(v15 + 56))
            {
              v60 = v59;
              v61 = X509_CRL_get_issuer(v15);
              v62 = X509_CRL_get_issuer(v60);
              if (!X509_NAME_cmp(v61, v62) && crl_extension_match(v60, v15, 90) && crl_extension_match(v60, v15, 770) && ASN1_INTEGER_cmp(*(v60 + 64), *(v15 + 56)) <= 0 && ASN1_INTEGER_cmp(*(v60 + 56), *(v15 + 56)) >= 1)
              {
                break;
              }
            }
          }

          if (++v58 >= sk_num(v7))
          {
            goto LABEL_119;
          }
        }

        if (check_crl_time(a1, v60, 0))
        {
          *v68 |= 2u;
        }

        CRYPTO_add_lock((v60 + 24), 1, 6, 0, 0);
      }

      *v69 = v60;
    }
  }

  return v13 > 447;
}

uint64_t check_crl_time(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(a1 + 200) = a2;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  if ((v7 & 2) != 0)
  {
    v8 = (v6 + 8);
  }

  else
  {
    if ((v7 & 0x200000) != 0)
    {
      return 1;
    }

    v8 = 0;
  }

  lastUpdate = X509_CRL_get_lastUpdate(a2);
  v10 = X509_cmp_time_internal(lastUpdate, v8, 0);
  if (v10)
  {
    if (v10 < 1)
    {
      goto LABEL_14;
    }

    if (!a3)
    {
      return 0;
    }

    v11 = 11;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v11 = 15;
  }

  *(a1 + 176) = v11;
  result = (*(a1 + 64))(0, a1);
  if (!result)
  {
    return result;
  }

LABEL_14:
  if (!X509_CRL_get_nextUpdate(a2))
  {
    goto LABEL_20;
  }

  nextUpdate = X509_CRL_get_nextUpdate(a2);
  v14 = X509_cmp_time_internal(nextUpdate, v8, 0);
  if (v14)
  {
    if (v14 < 0 && (*(a1 + 208) & 2) == 0)
    {
      if (a3)
      {
        v15 = 12;
        goto LABEL_24;
      }

      return 0;
    }

LABEL_20:
    if (!a3)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (a3)
  {
    v15 = 16;
LABEL_24:
    *(a1 + 176) = v15;
    result = (*(a1 + 64))(0, a1);
    if (!result)
    {
      return result;
    }

LABEL_25:
    *(a1 + 200) = 0;
    return 1;
  }

  return 0;
}

BOOL crl_extension_match(X509_CRL *a1, X509_CRL *a2, int nid)
{
  ext_by_NID = X509_CRL_get_ext_by_NID(a1, nid, -1);
  if (ext_by_NID < 0)
  {
    data = 0;
  }

  else
  {
    v7 = ext_by_NID;
    if (X509_CRL_get_ext_by_NID(a1, nid, ext_by_NID) != -1)
    {
      return 0;
    }

    ext = X509_CRL_get_ext(a1, v7);
    data = X509_EXTENSION_get_data(ext);
  }

  v10 = X509_CRL_get_ext_by_NID(a2, nid, -1);
  if (v10 < 0)
  {
    v13 = 0;
  }

  else
  {
    v11 = v10;
    if (X509_CRL_get_ext_by_NID(a2, nid, v10) != -1)
    {
      return 0;
    }

    v14 = X509_CRL_get_ext(a2, v11);
    v13 = X509_EXTENSION_get_data(v14);
  }

  if (!(data | v13))
  {
    return 1;
  }

  result = 0;
  if (data)
  {
    if (v13)
    {
      return ASN1_OCTET_STRING_cmp(data, v13) == 0;
    }
  }

  return result;
}

uint64_t enough_bits_for_security_level(int a1, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 >= 5)
  {
    v2 = 5;
  }

  v3 = a1 > 127;
  v4 = a1 > 191;
  if (v2 != 4)
  {
    v4 = a1 > 255;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = a1 > 79;
  if (v2 != 1)
  {
    v5 = a1 > 111;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (v2 <= 2)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

X509_EXTENSION *__cdecl X509V3_EXT_nconf(CONF *conf, X509V3_CTX *ctx, char *name, char *value)
{
  v13 = value;
  v7 = v3_check_critical(&v13);
  v8 = v3_check_generic(&v13);
  if (v8)
  {
    v9 = v13;

    return v3_generic_extension(name, v9, v7, v8, ctx);
  }

  else
  {
    v11 = OBJ_sn2nid(name);
    v12 = v13;
    result = do_ext_nconf(conf, ctx, v11, v7, v13);
    if (!result)
    {
      ERR_put_error(34, 4095, 128, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 102);
      ERR_asprintf_error_data("name=%s, value=%s", name, v12);
      return 0;
    }
  }

  return result;
}

uint64_t v3_check_critical(const char **a1)
{
  v2 = *a1;
  if (strlen(*a1) < 9 || strncmp(v2, "critical,", 9uLL))
  {
    return 0;
  }

  v4 = v2 + 8;
  v5 = MEMORY[0x277D85DE0];
  do
  {
    v6 = v4[1];
    if (v6 < 0)
    {
      v7 = __maskrune(*(v4 + 1), 0x4000uLL);
    }

    else
    {
      v7 = *(v5 + 4 * v6 + 60) & 0x4000;
    }

    ++v4;
  }

  while (v7);
  *a1 = v4;
  return 1;
}

uint64_t v3_check_generic(const char **a1)
{
  v2 = *a1;
  v3 = strlen(*a1);
  if (v3 < 4)
  {
    return 0;
  }

  v4 = v3;
  v5 = 4;
  if (!strncmp(v2, "DER:", 4uLL))
  {
    v6 = 1;
  }

  else
  {
    if (v4 == 4)
    {
      return 0;
    }

    v5 = 5;
    if (strncmp(v2, "ASN1:", 5uLL))
    {
      return 0;
    }

    v6 = 2;
  }

  v7 = &v2[v5 - 1];
  v8 = MEMORY[0x277D85DE0];
  do
  {
    v9 = *(v7 + 1);
    if (v9 < 0)
    {
      v10 = __maskrune(*(v7 + 1), 0x4000uLL);
    }

    else
    {
      v10 = *(v8 + 4 * v9 + 60) & 0x4000;
    }

    ++v7;
  }

  while (v10);
  *a1 = v7;
  return v6;
}

X509_EXTENSION *v3_generic_extension(const char *a1, char *a2, int a3, int a4, X509V3_CTX *a5)
{
  len = 0;
  v9 = OBJ_txt2obj(a1, 0);
  if (!v9)
  {
    ERR_put_error(34, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 293);
    ERR_asprintf_error_data("name=%s");
    goto LABEL_12;
  }

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v10 = string_to_hex(a2, &len);
      goto LABEL_8;
    }

    ERR_asprintf_error_data("Unexpected generic extension type %d");
LABEL_12:
    v10 = 0;
LABEL_14:
    v13 = 0;
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  out = 0;
  v11 = ASN1_generate_v3(a2, a5);
  v10 = v11;
  if (v11)
  {
    len = i2d_ASN1_TYPE(v11, &out);
    ASN1_TYPE_free(v10);
    v10 = out;
  }

LABEL_8:
  if (!v10)
  {
    ERR_put_error(34, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 308);
    ERR_asprintf_error_data("value=%s", a2);
    goto LABEL_14;
  }

  v12 = ASN1_OCTET_STRING_new();
  v13 = v12;
  if (!v12)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 314);
    goto LABEL_15;
  }

  v12->data = v10;
  v12->length = len;
  v14 = X509_EXTENSION_create_by_OBJ(0, v9, a3, v12);
  v10 = 0;
LABEL_16:
  ASN1_OBJECT_free(v9);
  ASN1_OCTET_STRING_free(v13);
  free(v10);
  return v14;
}

X509_EXTENSION *do_ext_nconf(const CONF *a1, uint64_t a2, int nid, int a4, const char *a5)
{
  if (!nid)
  {
    v13 = 130;
    v14 = 137;
    goto LABEL_8;
  }

  v10 = X509V3_EXT_get_nid(nid);
  if (!v10)
  {
    v13 = 129;
    v14 = 141;
    goto LABEL_8;
  }

  v11 = v10;
  if (!v10->v2i)
  {
    s2i = v10->s2i;
    if (s2i)
    {
      goto LABEL_12;
    }

    s2i = v10->r2i;
    if (!s2i)
    {
      ERR_put_error(34, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 172);
      v22 = OBJ_nid2sn(nid);
      ERR_asprintf_error_data("name=%s", v22);
      return 0;
    }

    if (*(a2 + 48) && *(a2 + 40))
    {
LABEL_12:
      v18 = s2i(v10, a2, a5);
      goto LABEL_17;
    }

    v13 = 136;
    v14 = 167;
LABEL_8:
    ERR_put_error(34, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", v14);
    return 0;
  }

  if (*a5 == 64)
  {
    section = NCONF_get_section(a1, a5 + 1);
  }

  else
  {
    section = X509V3_parse_list(a5);
  }

  v19 = section;
  if (sk_num(section) <= 0)
  {
    ERR_put_error(34, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 153);
    v21 = OBJ_nid2sn(nid);
    ERR_asprintf_error_data("name=%s,section=%s", v21, a5);
    if (*a5 != 64)
    {
      sk_pop_free(v19, X509V3_conf_free);
    }

    return 0;
  }

  v18 = (*(v11 + 72))(v11, a2, v19);
  if (*a5 != 64)
  {
    sk_pop_free(v19, X509V3_conf_free);
  }

LABEL_17:
  if (!v18)
  {
    return 0;
  }

  v15 = do_ext_i2d(v11, nid, a4, v18);
  v20 = *(v11 + 8);
  if (v20)
  {
    ASN1_item_free(v18, v20);
  }

  else
  {
    (*(v11 + 24))(v18);
  }

  return v15;
}

X509_EXTENSION *__cdecl X509V3_EXT_nconf_nid(CONF *conf, X509V3_CTX *ctx, int ext_nid, char *value)
{
  v14 = value;
  v7 = v3_check_critical(&v14);
  v8 = v3_check_generic(&v14);
  if (v8)
  {
    v9 = v8;
    v10 = OBJ_nid2sn(ext_nid);
    v11 = v14;

    return v3_generic_extension(v10, v11, v7, v9, ctx);
  }

  else
  {
    v13 = v14;

    return do_ext_nconf(conf, ctx, ext_nid, v7, v13);
  }
}

X509_EXTENSION *__cdecl X509V3_EXT_i2d(int ext_nid, int crit, void *ext_struc)
{
  nid = X509V3_EXT_get_nid(ext_nid);
  if (nid)
  {

    return do_ext_i2d(nid, ext_nid, crit, ext_struc);
  }

  else
  {
    ERR_put_error(34, 4095, 129, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 238);
    return 0;
  }
}

X509_EXTENSION *do_ext_i2d(uint64_t a1, int a2, int a3, ASN1_VALUE *val)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    out = 0;
    v8 = ASN1_item_i2d(val, &out, v7);
    if (v8 < 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = (*(a1 + 40))(val, 0);
    v10 = malloc_type_malloc(v8, 0xEF093C85uLL);
    out = v10;
    if (!v10)
    {
LABEL_9:
      v12 = 0;
LABEL_10:
      ASN1_OCTET_STRING_free(v12);
      ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 225);
      return 0;
    }

    v16 = v10;
    (*(a1 + 40))(val, &v16);
  }

  v11 = ASN1_OCTET_STRING_new();
  v12 = v11;
  if (!v11)
  {
    goto LABEL_10;
  }

  v11->data = out;
  v11->length = v8;
  v13 = X509_EXTENSION_create_by_NID(0, a2, a3, v11);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  ASN1_OCTET_STRING_free(v12);
  return v14;
}

int X509V3_EXT_add_nconf_sk(CONF *conf, X509V3_CTX *ctx, char *section, STACK **sk)
{
  v7 = NCONF_get_section(conf, section);
  if (v7)
  {
    v8 = v7;
    if (sk_num(v7) < 1)
    {
LABEL_8:
      LODWORD(v7) = 1;
    }

    else
    {
      v9 = 0;
      while (1)
      {
        v10 = sk_value(v8, v9);
        v7 = X509V3_EXT_nconf(conf, ctx, *(v10 + 1), *(v10 + 2));
        if (!v7)
        {
          break;
        }

        v11 = v7;
        if (sk)
        {
          X509v3_add_ext(sk, v7, -1);
        }

        X509_EXTENSION_free(v11);
        if (++v9 >= sk_num(v8))
        {
          goto LABEL_8;
        }
      }
    }
  }

  return v7;
}

int X509V3_EXT_add_nconf(CONF *conf, X509V3_CTX *ctx, char *section, X509 *cert)
{
  if (cert)
  {
    cert = &cert->cert_info->extensions;
  }

  return X509V3_EXT_add_nconf_sk(conf, ctx, section, cert);
}

int X509V3_EXT_CRL_add_nconf(CONF *conf, X509V3_CTX *ctx, char *section, X509_CRL *crl)
{
  if (crl)
  {
    crl = &crl->crl->extensions;
  }

  return X509V3_EXT_add_nconf_sk(conf, ctx, section, crl);
}

int X509V3_EXT_REQ_add_nconf(CONF *conf, X509V3_CTX *ctx, char *section, X509_REQ *req)
{
  exts = 0;
  if (req)
  {
    p_exts = &exts;
  }

  else
  {
    p_exts = 0;
  }

  v6 = X509V3_EXT_add_nconf_sk(conf, ctx, section, p_exts);
  v7 = v6;
  if (req && v6)
  {
    v7 = X509_REQ_add_extensions(req, exts);
    sk_pop_free(exts, X509_EXTENSION_free);
  }

  return v7;
}

char *__cdecl X509V3_get_string(X509V3_CTX *ctx, char *name, char *section)
{
  if (ctx->db && (db_meth = ctx->db_meth) != 0 && (get_string = db_meth->get_string) != 0)
  {

    return get_string();
  }

  else
  {
    ERR_put_error(34, 4095, 148, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 426);
    return 0;
  }
}

STACK *__cdecl X509V3_get_section(X509V3_CTX *ctx, char *section)
{
  if (ctx->db && (db_meth = ctx->db_meth) != 0 && (get_section = db_meth->get_section) != 0)
  {

    return get_section();
  }

  else
  {
    ERR_put_error(34, 4095, 148, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_conf.c", 437);
    return 0;
  }
}

void X509V3_string_free(X509V3_CTX *ctx, char *str)
{
  if (str)
  {
    free_string = ctx->db_meth->free_string;
    if (free_string)
    {
      (free_string)(ctx->db);
    }
  }
}

void X509V3_section_free(X509V3_CTX *ctx, STACK *section)
{
  if (section)
  {
    free_section = ctx->db_meth->free_section;
    if (free_section)
    {
      (free_section)(ctx->db);
    }
  }
}

void X509V3_set_ctx(X509V3_CTX *ctx, X509 *issuer, X509 *subject, X509_REQ *req, X509_CRL *crl, int flags)
{
  ctx->issuer_cert = issuer;
  ctx->subject_cert = subject;
  ctx->subject_req = req;
  ctx->crl = crl;
  ctx->flags = flags;
}

X509_EXTENSION *__cdecl X509V3_EXT_conf(LHASH *conf, X509V3_CTX *ctx, char *name, char *value)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  return X509V3_EXT_nconf(&confa, ctx, name, value);
}

X509_EXTENSION *__cdecl X509V3_EXT_conf_nid(LHASH *conf, X509V3_CTX *ctx, int ext_nid, char *value)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  return X509V3_EXT_nconf_nid(&confa, ctx, ext_nid, value);
}

int X509V3_EXT_add_conf(LHASH *conf, X509V3_CTX *ctx, char *section, X509 *cert)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  if (cert)
  {
    p_extensions = &cert->cert_info->extensions;
  }

  else
  {
    p_extensions = 0;
  }

  return X509V3_EXT_add_nconf_sk(&confa, ctx, section, p_extensions);
}

int X509V3_EXT_CRL_add_conf(LHASH *conf, X509V3_CTX *ctx, char *section, X509_CRL *crl)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  if (crl)
  {
    p_extensions = &crl->crl->extensions;
  }

  else
  {
    p_extensions = 0;
  }

  return X509V3_EXT_add_nconf_sk(&confa, ctx, section, p_extensions);
}

int X509V3_EXT_REQ_add_conf(LHASH *conf, X509V3_CTX *ctx, char *section, X509_REQ *req)
{
  memset(&confa, 0, sizeof(confa));
  CONF_set_nconf(&confa, conf);
  return X509V3_EXT_REQ_add_nconf(&confa, ctx, section, req);
}

uint64_t X509_REQ_get0_signature(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 16);
  }

  if (a3)
  {
    *a3 = *(result + 8);
  }

  return result;
}

uint64_t rinf_cb(int a1, uint64_t *a2)
{
  if (a1 != 1)
  {
    return 1;
  }

  v2 = *a2;
  result = sk_new_null();
  *(v2 + 48) = result;
  if (result)
  {
    return 1;
  }

  return result;
}

void hmac_key_free(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    data = v1->data;
    if (data)
    {
      explicit_bzero(data, v1->length);
    }

    ASN1_OCTET_STRING_free(v1);
  }
}

uint64_t hmac_pkey_ctrl(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2 != 3)
  {
    return 4294967294;
  }

  *a4 = 64;
  return 1;
}

uint64_t hmac_set_priv_key(uint64_t a1, const unsigned __int8 *a2, unint64_t a3)
{
  v3 = 0;
  if (a3 >> 31 || *(a1 + 32) || (v5 = a3, v7 = ASN1_OCTET_STRING_new(), (v3 = v7) == 0) || !ASN1_OCTET_STRING_set(v7, a2, v5))
  {
    ASN1_OCTET_STRING_free(v3);
    return 0;
  }

  else
  {
    *(a1 + 32) = v3;
    return 1;
  }
}

uint64_t hmac_get_priv_key(uint64_t a1, void *a2, size_t *a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  if (a2)
  {
    CBS_init(v7, *(v3 + 1), *v3);
    return CBS_write_bytes(v7, a2, *a3, a3);
  }

  else
  {
    *a3 = *v3;
    return 1;
  }
}

uint64_t evp_pkey_meth_get_count()
{
  if (pkey_app_methods)
  {
    return (sk_num(pkey_app_methods) + 12);
  }

  else
  {
    return 12;
  }
}

char *evp_pkey_meth_get0(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 > 0xB)
  {
    return sk_value(pkey_app_methods, a1 - 12);
  }

  return *(&pkey_methods + a1);
}

char *EVP_PKEY_meth_find(int a1)
{
  if (pkey_app_methods)
  {
    v2 = (sk_num(pkey_app_methods) + 12);
  }

  else
  {
    v2 = 12;
  }

  while (v2 >= 1)
  {
    if (v2 > 0xC)
    {
      result = sk_value(pkey_app_methods, v2 - 13);
    }

    else
    {
      result = *(&pkey_methods + v2 - 1);
    }

    --v2;
    if (*result == a1)
    {
      return result;
    }
  }

  return 0;
}

_DWORD *EVP_PKEY_meth_new(int a1, int a2)
{
  result = malloc_type_calloc(1uLL, 0xF8uLL, 0x1080040399D213BuLL);
  if (result)
  {
    *result = a1;
    result[1] = a2 | 1;
  }

  return result;
}

_DWORD *EVP_PKEY_meth_get0_info(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    *result = *a3;
  }

  if (a2)
  {
    *a2 = a3[1];
  }

  return result;
}

double EVP_PKEY_meth_copy(uint64_t a1, __int128 *a2)
{
  result = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *(a1 + 16) = v4;
  v6 = a2[7];
  v8 = a2[4];
  v7 = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v6;
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  v9 = a2[11];
  v11 = a2[8];
  v10 = a2[9];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  v13 = a2[13];
  v12 = a2[14];
  v14 = a2[12];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v13;
  *(a1 + 224) = v12;
  *(a1 + 192) = v14;
  *a1 = v3;
  *a1 = result;
  return result;
}

void EVP_PKEY_meth_free(void *a1)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      free(a1);
    }
  }
}

EVP_PKEY **int_ctx_new(uint64_t a1, ENGINE *e, int a3)
{
  pkey_meth_engine = e;
  if (a3 == -1)
  {
    if (!a1)
    {
      return 0;
    }

    v8 = *(a1 + 16);
    if (!v8)
    {
      return 0;
    }

    v5 = *v8;
  }

  else
  {
    v5 = a3;
    if (!a1)
    {
      v6 = 1;
      if (!e)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (!ENGINE_init(pkey_meth_engine))
      {
        v13 = 38;
        v14 = 170;
        goto LABEL_23;
      }

      goto LABEL_13;
    }
  }

  v6 = 0;
  if (*(a1 + 24))
  {
    pkey_meth_engine = *(a1 + 24);
  }

  if (pkey_meth_engine)
  {
    goto LABEL_12;
  }

LABEL_4:
  pkey_meth_engine = ENGINE_get_pkey_meth_engine(v5);
  if (!pkey_meth_engine)
  {
    pkey_meth = EVP_PKEY_meth_find(v5);
    goto LABEL_14;
  }

LABEL_13:
  pkey_meth = ENGINE_get_pkey_meth(pkey_meth_engine);
LABEL_14:
  v9 = pkey_meth;
  if (!pkey_meth)
  {
    v13 = 156;
    v14 = 187;
LABEL_23:
    ERR_put_error(6, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", v14);
    return 0;
  }

  v10 = malloc_type_malloc(0x50uLL, 0x10F0040FE4E0FE9uLL);
  v11 = v10;
  if (!v10)
  {
    ENGINE_finish(pkey_meth_engine);
    ERR_put_error(6, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 196);
    return v11;
  }

  *v10 = v9;
  v10[1] = pkey_meth_engine;
  *(v10 + 8) = 0;
  v10[2] = a1;
  v10[3] = 0;
  v10[7] = 0;
  if ((v6 & 1) == 0)
  {
    CRYPTO_add_lock((a1 + 8), 1, 10, 0, 0);
  }

  v11[5] = 0;
  v12 = *(v9 + 8);
  if (v12 && v12(v11) <= 0)
  {
    EVP_PKEY_CTX_free(v11);
    return 0;
  }

  return v11;
}

_OWORD *EVP_PKEY_CTX_dup(uint64_t a1)
{
  if (!*a1 || !*(*a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 && !ENGINE_init(v2))
  {
    ERR_put_error(6, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 285);
    return 0;
  }

  v3 = malloc_type_malloc(0x50uLL, 0x10F0040FE4E0FE9uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = *a1;
    v5 = *(a1 + 16);
    if (v5)
    {
      CRYPTO_add_lock((v5 + 8), 1, 10, 0, 0);
      v5 = *(a1 + 16);
    }

    *(v4 + 2) = v5;
    v6 = *(a1 + 24);
    if (v6)
    {
      CRYPTO_add_lock((v6 + 8), 1, 10, 0, 0);
      v6 = *(a1 + 24);
    }

    *(v4 + 3) = v6;
    *(v4 + 5) = 0;
    *(v4 + 6) = 0;
    *(v4 + 8) = *(a1 + 32);
    if ((*(*a1 + 16))(v4, a1) <= 0)
    {
      EVP_PKEY_CTX_free(v4);
      return 0;
    }
  }

  return v4;
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
    ENGINE_finish(a1[1]);

    free(a1);
  }
}

STACK *EVP_PKEY_meth_add0(char *data)
{
  result = pkey_app_methods;
  if (pkey_app_methods)
  {
    return (sk_push(result, data) != 0);
  }

  result = sk_new(0);
  pkey_app_methods = result;
  if (result)
  {
    return (sk_push(result, data) != 0);
  }

  return result;
}

uint64_t EVP_PKEY_CTX_ctrl(uint64_t *a1, int a2, int a3)
{
  if (!a1 || (v3 = *a1) == 0 || (v4 = *(v3 + 192)) == 0)
  {
    v7 = 356;
    goto LABEL_11;
  }

  if (a2 != -1 && *v3 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v8 = 149;
    v9 = 363;
LABEL_15:
    ERR_put_error(6, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", v9);
    return 0xFFFFFFFFLL;
  }

  if ((v5 & a3) == 0)
  {
    v8 = 148;
    v9 = 368;
    goto LABEL_15;
  }

  result = v4();
  if (result != -2)
  {
    return result;
  }

  v7 = 375;
LABEL_11:
  ERR_put_error(6, 4095, 147, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", v7);
  return 4294967294;
}

uint64_t EVP_PKEY_CTX_ctrl_str(uint64_t *a1, char *__s1, char *a3)
{
  if (a1 && (v4 = *a1) != 0 && *(v4 + 200))
  {
    v8 = *(v4 + 200);
    if (!strcmp(__s1, "digest"))
    {

      return EVP_PKEY_CTX_md(a1, 248, 1, a3);
    }

    else
    {

      return v8(a1, __s1, a3);
    }
  }

  else
  {
    ERR_put_error(6, 4095, 147, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 385);
    return 4294967294;
  }
}

uint64_t EVP_PKEY_CTX_md(uint64_t *a1, int a2, int a3, char *name)
{
  if (EVP_get_digestbyname(name))
  {

    return EVP_PKEY_CTX_ctrl(a1, -1, a2);
  }

  else
  {
    ERR_put_error(6, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_lib.c", 433);
    return 0;
  }
}

uint64_t EVP_PKEY_CTX_str2ctrl(uint64_t a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);
  if (v6 >> 31)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(*a1 + 192);

  return v8(a1, a2, v6, __s);
}

uint64_t EVP_PKEY_CTX_hex2ctrl(uint64_t a1, uint64_t a2, char *str)
{
  len = 0;
  v5 = string_to_hex(str, &len);
  if (v5)
  {
    if (len >> 31)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = (*(*a1 + 192))(a1, a2);
    }
  }

  else
  {
    v6 = 0;
  }

  free(v5);
  return v6;
}

uint64_t EVP_PKEY_CTX_set0_keygen_info(uint64_t result, uint64_t a2, int a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_paramgen(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_keygen(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_sign(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_verify(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_verify_recover(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_signctx(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 112) = a2;
  *(result + 120) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_verifyctx(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 128) = a2;
  *(result + 136) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_encrypt(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 144) = a2;
  *(result + 152) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_decrypt(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 160) = a2;
  *(result + 168) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_derive(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 176) = a2;
  *(result + 184) = a3;
  return result;
}

uint64_t EVP_PKEY_meth_set_ctrl(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 192) = a2;
  *(result + 200) = a3;
  return result;
}

void *GOST_KEY_new()
{
  v0 = malloc_type_malloc(0x20uLL, 0x102004016EE4530uLL);
  v1 = v0;
  if (v0)
  {
    v0[2] = 0;
    *v0 = 0u;
    v0[3] = 1;
  }

  else
  {
    ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 81);
  }

  return v1;
}

void GOST_KEY_free(uint64_t a1)
{
  if (a1 && CRYPTO_add_lock((a1 + 24), -1, 33, 0, 0) <= 0)
  {
    EC_GROUP_free(*a1);
    EC_POINT_free(*(a1 + 8));
    BN_free(*(a1 + 16));

    freezero(a1, 0x20uLL);
  }
}

uint64_t GOST_KEY_check_key(uint64_t a1)
{
  if (!a1 || (v2 = *a1) == 0 || (v3 = *(a1 + 8)) == 0)
  {
    ERR_put_error(50, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 120);
    return 0;
  }

  if (!EC_POINT_is_at_infinity(v2, v3))
  {
    v5 = BN_CTX_new();
    if (!v5)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v7 = EC_POINT_new(*a1);
    if (v7)
    {
      if (EC_POINT_is_on_curve(*a1, *(a1 + 8), v5))
      {
        v6 = BN_new();
        if (!v6)
        {
LABEL_27:
          v4 = 0;
          goto LABEL_7;
        }

        if (EC_GROUP_get_order(*a1, v6, v5))
        {
          if (!EC_POINT_mul(*a1, v7, 0, *(a1 + 8), v6, v5))
          {
            v10 = 16;
            v11 = 146;
            goto LABEL_26;
          }

          if (!EC_POINT_is_at_infinity(*a1, v7))
          {
            v10 = 130;
            v11 = 150;
            goto LABEL_26;
          }

          v9 = *(a1 + 16);
          if (v9)
          {
            if ((BN_cmp(v9, v6) & 0x80000000) == 0)
            {
              v10 = 130;
              v11 = 159;
LABEL_26:
              ERR_put_error(50, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", v11);
              goto LABEL_27;
            }

            if (!EC_POINT_mul(*a1, v7, *(a1 + 16), 0, 0, v5))
            {
              v10 = 16;
              v11 = 164;
              goto LABEL_26;
            }

            if (EC_POINT_cmp(*a1, v7, *(a1 + 8), v5))
            {
              v10 = 123;
              v11 = 168;
              goto LABEL_26;
            }
          }

          v4 = 1;
          goto LABEL_7;
        }

        v10 = 122;
        v11 = 141;
        goto LABEL_26;
      }

      ERR_put_error(50, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 134);
    }

    v4 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  ERR_put_error(50, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 124);
  v4 = 0;
  v5 = 0;
LABEL_6:
  v6 = 0;
  v7 = 0;
LABEL_7:
  BN_free(v6);
  BN_CTX_free(v5);
  EC_POINT_free(v7);
  return v4;
}

uint64_t GOST_KEY_set_public_key_affine_coordinates(const EC_GROUP **a1, const BIGNUM *a2, const BIGNUM *a3)
{
  if (a1 && a3 && a2 && *a1)
  {
    v6 = BN_CTX_new();
    v7 = v6;
    if (v6)
    {
      BN_CTX_start(v6);
      v8 = EC_POINT_new(*a1);
      if (v8)
      {
        v9 = BN_CTX_get(v7);
        if (v9)
        {
          v10 = v9;
          v11 = BN_CTX_get(v7);
          if (v11)
          {
            v12 = v11;
            if (EC_POINT_set_affine_coordinates(*a1, v8, a2, a3, v7))
            {
              if (EC_POINT_get_affine_coordinates(*a1, v8, v10, v12, v7))
              {
                if (BN_cmp(a2, v10) || BN_cmp(a3, v12))
                {
                  ERR_put_error(50, 4095, 146, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 217);
                }

                else if (GOST_KEY_set_public_key(a1, v8))
                {
                  v13 = GOST_KEY_check_key(a1);
                  goto LABEL_17;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = 0;
LABEL_17:
    EC_POINT_free(v8);
    BN_CTX_end(v7);
    BN_CTX_free(v7);
    return v13;
  }

  ERR_put_error(50, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_key.c", 189);
  return 0;
}

BOOL GOST_KEY_set_public_key(const EC_GROUP **a1, const EC_POINT *a2)
{
  EC_POINT_free(a1[1]);
  v4 = EC_POINT_dup(a2, *a1);
  a1[1] = v4;
  return v4 != 0;
}

BOOL GOST_KEY_set_group(EC_GROUP **a1, const EC_GROUP *a2)
{
  EC_GROUP_free(*a1);
  v4 = EC_GROUP_dup(a2);
  *a1 = v4;
  return v4 != 0;
}

BOOL GOST_KEY_set_private_key(uint64_t a1, const BIGNUM *a2)
{
  BN_free(*(a1 + 16));
  v4 = BN_dup(a2);
  *(a1 + 16) = v4;
  return v4 != 0;
}

uint64_t GOST_KEY_set_digest(uint64_t a1, int a2)
{
  if ((a2 - 941) >= 2 && a2 != 822)
  {
    return 0;
  }

  *(a1 + 28) = a2;
  return 1;
}

BIGNUM *GOST_KEY_get_size(BIGNUM *result)
{
  if (!result)
  {
    return result;
  }

  d = result->d;
  if (!result->d)
  {
    return 0;
  }

  result = BN_new();
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (!EC_GROUP_get_order(d, result, 0))
  {
    BN_free(v2);
    return 0;
  }

  v3 = BN_num_bits(v2);
  if (v3 >= -7)
  {
    v4 = v3 + 7;
  }

  else
  {
    v4 = v3 + 14;
  }

  BN_free(v2);
  return (v4 >> 3);
}

int X509v3_get_ext_count(const STACK *x)
{
  if (x)
  {
    LODWORD(x) = sk_num(x);
  }

  return x;
}

int X509v3_get_ext_by_NID(const STACK *x, int nid, int lastpos)
{
  v5 = OBJ_nid2obj(nid);
  if (!v5)
  {
    return -2;
  }

  return X509v3_get_ext_by_OBJ(x, v5, lastpos);
}

int X509v3_get_ext_by_OBJ(const STACK *x, ASN1_OBJECT *obj, int lastpos)
{
  if (x)
  {
    if (lastpos < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = lastpos;
    }

    v6 = sk_num(x);
    while (++v5 < v6)
    {
      v7 = sk_value(x, v5);
      if (!OBJ_cmp(*v7, obj))
      {
        return v5;
      }
    }
  }

  return -1;
}

int X509v3_get_ext_by_critical(const STACK *x, int crit, int lastpos)
{
  if (x)
  {
    if (lastpos < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = lastpos;
    }

    v6 = sk_num(x);
    while (++v5 < v6)
    {
      if ((crit != 0) == *(sk_value(x, v5) + 2) > 0)
      {
        return v5;
      }
    }
  }

  return -1;
}

X509_EXTENSION *__cdecl X509v3_get_ext(const STACK *x, int loc)
{
  if (!x)
  {
    return 0;
  }

  v4 = sk_num(x);
  if (loc < 0 || v4 <= loc)
  {
    return 0;
  }

  return sk_value(x, loc);
}

X509_EXTENSION *__cdecl X509v3_delete_ext(STACK *x, int loc)
{
  if (!x)
  {
    return 0;
  }

  v4 = sk_num(x);
  if (loc < 0 || v4 <= loc)
  {
    return 0;
  }

  return sk_delete(x, loc);
}

STACK *__cdecl X509v3_add_ext(STACK **x, X509_EXTENSION *ex, int loc)
{
  if (!x)
  {
    ERR_put_error(11, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 167);
    return 0;
  }

  v6 = *x;
  if (!*x)
  {
    v6 = sk_new_null();
    if (!v6)
    {
      ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 192);
      return v6;
    }
  }

  v7 = sk_num(v6);
  v8 = X509_EXTENSION_dup(ex);
  if (!v8)
  {
LABEL_16:
    if (v6 != *x)
    {
      sk_free(v6);
    }

    return 0;
  }

  v9 = v8;
  if (v7 >= loc)
  {
    v10 = loc;
  }

  else
  {
    v10 = v7;
  }

  if (loc >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (!sk_insert(v6, v8, v11))
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 192);
    X509_EXTENSION_free(v9);
    goto LABEL_16;
  }

  if (!*x)
  {
    *x = v6;
  }

  return v6;
}

X509_EXTENSION *__cdecl X509_EXTENSION_create_by_NID(X509_EXTENSION **ex, int nid, int crit, ASN1_OCTET_STRING *data)
{
  v7 = OBJ_nid2obj(nid);
  if (v7)
  {
    v8 = v7;
    result = X509_EXTENSION_create_by_OBJ(ex, v7, crit, data);
    if (result)
    {
      return result;
    }

    ASN1_OBJECT_free(v8);
  }

  else
  {
    ERR_put_error(11, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 211);
  }

  return 0;
}

X509_EXTENSION *__cdecl X509_EXTENSION_create_by_OBJ(X509_EXTENSION **ex, ASN1_OBJECT *obj, int crit, ASN1_OCTET_STRING *data)
{
  if (ex && (v8 = *ex) != 0 || (v8 = X509_EXTENSION_new()) != 0)
  {
    if (X509_EXTENSION_set_object(v8, obj) && (!crit ? (v9 = -1) : (v9 = 255), v8->critical = v9, ASN1_STRING_set(v8->value, data->data, data->length)))
    {
      if (ex && !*ex)
      {
        *ex = v8;
      }
    }

    else
    {
      if (!ex || v8 != *ex)
      {
        X509_EXTENSION_free(v8);
      }

      return 0;
    }
  }

  else
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_v3.c", 229);
  }

  return v8;
}

int X509_EXTENSION_set_object(X509_EXTENSION *ex, ASN1_OBJECT *obj)
{
  result = 0;
  if (ex)
  {
    if (obj)
    {
      ASN1_OBJECT_free(ex->object);
      v5 = OBJ_dup(obj);
      ex->object = v5;
      return v5 != 0;
    }
  }

  return result;
}

int X509_EXTENSION_set_critical(X509_EXTENSION *ex, int crit)
{
  if (ex)
  {
    if (crit)
    {
      v2 = 255;
    }

    else
    {
      v2 = -1;
    }

    ex->critical = v2;
    LODWORD(ex) = 1;
  }

  return ex;
}

int X509_EXTENSION_set_data(X509_EXTENSION *ex, ASN1_OCTET_STRING *data)
{
  if (ex)
  {
    LODWORD(ex) = ASN1_STRING_set(ex->value, data->data, data->length) != 0;
  }

  return ex;
}

ASN1_OBJECT *__cdecl X509_EXTENSION_get_object(ASN1_OBJECT *ex)
{
  if (ex)
  {
    return ex->sn;
  }

  return ex;
}

ASN1_OCTET_STRING *__cdecl X509_EXTENSION_get_data(ASN1_OCTET_STRING *ne)
{
  if (ne)
  {
    return ne->flags;
  }

  return ne;
}

int X509_EXTENSION_get_critical(X509_EXTENSION *ex)
{
  if (ex)
  {
    LODWORD(ex) = ex->critical > 0;
  }

  return ex;
}

void ERR_load_BN_strings(void)
{
  if (!ERR_func_error_string(BN_str_functs))
  {
    ERR_load_strings(0, &BN_str_functs);

    ERR_load_strings(0, &BN_str_reasons);
  }
}

int X509_issuer_and_serial_cmp(const X509 *a, const X509 *b)
{
  cert_info = a->cert_info;
  v3 = b->cert_info;
  result = ASN1_INTEGER_cmp(a->cert_info->serialNumber, b->cert_info->serialNumber);
  if (!result)
  {
    issuer = cert_info->issuer;
    v6 = v3->issuer;

    return X509_NAME_cmp(issuer, v6);
  }

  return result;
}

int X509_NAME_cmp(const X509_NAME *a, const X509_NAME *b)
{
  if ((!a->hash || a->modified) && i2d_X509_NAME(a, 0) < 0 || (!b->hash || b->modified) && i2d_X509_NAME(b, 0) < 0)
  {
    return -2;
  }

  entries_low = SLODWORD(a[1].entries);
  entries = b[1].entries;
  result = entries_low - entries;
  if (entries_low == entries)
  {
    hash = a->hash;
    v8 = b->hash;

    return memcmp(hash, v8, entries_low);
  }

  return result;
}

unint64_t X509_issuer_and_serial_hash(X509 *a)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  memset(&v7, 0, sizeof(v7));
  EVP_MD_CTX_init(&v7);
  v2 = X509_NAME_oneline(a->cert_info->issuer, 0, 0);
  if (v2 && (v3 = EVP_md5(), EVP_DigestInit_ex(&v7, v3, 0)) && (v4 = strlen(v2), EVP_DigestUpdate(&v7, v2, v4)))
  {
    free(v2);
    if (EVP_DigestUpdate(&v7, a->cert_info->serialNumber->data, a->cert_info->serialNumber->length) && EVP_DigestFinal_ex(&v7, md, 0))
    {
      v2 = 0;
      v5 = *md;
    }

    else
    {
      v5 = 0;
      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  EVP_MD_CTX_cleanup(&v7);
  free(v2);
  return v5;
}

unint64_t X509_NAME_hash(X509_NAME *x)
{
  v7 = *MEMORY[0x277D85DE8];
  i2d_X509_NAME(x, 0);
  hash = x->hash;
  entries_low = SLODWORD(x[1].entries);
  v4 = EVP_sha1();
  if (EVP_Digest(hash, entries_low, md, 0, v4, 0))
  {
    return *md;
  }

  else
  {
    return 0;
  }
}

uint64_t X509_NAME_hash_old(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  memset(&v5, 0, sizeof(v5));
  i2d_X509_NAME(a1, 0);
  EVP_MD_CTX_init(&v5);
  v2 = EVP_md5();
  if (EVP_DigestInit_ex(&v5, v2, 0) && EVP_DigestUpdate(&v5, *(*(a1 + 16) + 8), **(a1 + 16)) && EVP_DigestFinal_ex(&v5, md, 0))
  {
    v3 = *md;
  }

  else
  {
    v3 = 0;
  }

  EVP_MD_CTX_cleanup(&v5);
  return v3;
}

int X509_cmp(const X509 *a, const X509 *b)
{
  X509_check_purpose(a, -1, 0);
  X509_check_purpose(b, -1, 0);

  return memcmp(&a->sha1_hash[16], &b->sha1_hash[16], 0x40uLL);
}

X509 *__cdecl X509_find_by_issuer_and_serial(STACK *sk, X509_NAME *name, ASN1_INTEGER *serial)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!sk)
  {
    return 0;
  }

  v7[0] = 0;
  v7[2] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *b = v7;
  v7[1] = serial;
  v7[3] = name;
  if (sk_num(sk) < 1)
  {
    return 0;
  }

  v4 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  memset(&b[8], 0, 160);
  while (1)
  {
    v5 = sk_value(sk, v4);
    if (!X509_issuer_and_serial_cmp(v5, b))
    {
      break;
    }

    if (++v4 >= sk_num(sk))
    {
      return 0;
    }
  }

  return v5;
}

X509 *__cdecl X509_find_by_subject(STACK *sk, X509_NAME *name)
{
  if (sk_num(sk) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = sk_value(sk, v4);
    if (!X509_NAME_cmp(*(*v5 + 40), name))
    {
      break;
    }

    if (++v4 >= sk_num(sk))
    {
      return 0;
    }
  }

  return v5;
}

EVP_PKEY *__cdecl X509_get_pubkey(X509 *x)
{
  if (x && x->cert_info)
  {
    return X509_PUBKEY_get(x->cert_info->key);
  }

  else
  {
    return 0;
  }
}

EVP_PKEY *X509_get0_pubkey(uint64_t a1)
{
  if (a1 && *a1)
  {
    return X509_PUBKEY_get0(*(*a1 + 48));
  }

  else
  {
    return 0;
  }
}

ASN1_BIT_STRING *__cdecl X509_get0_pubkey_bitstr(ASN1_BIT_STRING *x)
{
  if (x)
  {
    return *(*(*&x->length + 48) + 8);
  }

  return x;
}

int X509_check_private_key(X509 *x509, EVP_PKEY *pkey)
{
  if (x509 && x509->cert_info && (v3 = X509_PUBKEY_get0(x509->cert_info->key)) != 0 && (v4 = EVP_PKEY_cmp(v3, pkey), v4 != -2))
  {
    if (v4 == -1)
    {
      ERR_put_error(11, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cmp.c", 397);
      v4 = -1;
    }

    else if (!v4)
    {
      ERR_put_error(11, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cmp.c", 394);
      v4 = 0;
    }
  }

  else
  {
    ERR_put_error(11, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_cmp.c", 400);
    v4 = -2;
  }

  return v4 > 0;
}

STACK *X509_chain_up_ref(STACK *a1)
{
  v1 = sk_dup(a1);
  if (sk_num(v1))
  {
    v2 = 0;
    do
    {
      v3 = sk_value(v1, v2);
      X509_up_ref(v3);
      ++v2;
    }

    while (v2 < sk_num(v1));
  }

  return v1;
}

BIGNUM *BN_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040113C0ABBuLL);
  v1 = v0;
  if (v0)
  {
    v0->flags = 1;
  }

  else
  {
    ERR_put_error(3, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_lib.c", 77);
  }

  return v1;
}

void BN_init(BIGNUM *a1)
{
  a1->d = 0;
  *&a1->top = 0;
  *&a1->neg = 0;
}

void BN_clear(BIGNUM *a)
{
  d = a->d;
  if (d)
  {
    explicit_bzero(d, 8 * a->dmax);
  }

  a->top = 0;
  a->neg = 0;
}

void BN_free(BIGNUM *a)
{
  if (a)
  {
    flags = a->flags;
    if ((flags & 2) == 0)
    {
      freezero(a->d, 8 * a->dmax);
      flags = a->flags;
    }

    if ((flags & 1) == 0)
    {

      explicit_bzero(a, 0x18uLL);
    }

    freezero(a, 0x18uLL);
  }
}

__n128 BN_with_flags(__n128 *a1, __n128 *a2, int a3)
{
  result = *a2;
  v4 = a1[1].n128_u32[1] & 1 | a3 | a2[1].n128_u32[1] & 0xFFFFFFFC | 2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a1[1].n128_u32[1] = v4;
  return result;
}

uint64_t bn_word_clz(unint64_t a1)
{
  v1 = 0;
  v2 = 64;
  v3 = 64;
  do
  {
    v3 += (v1 & (v2 >> 1)) - ((v2 >> 1) & ~v1);
    if (a1 >> v3)
    {
      v1 = -1;
    }

    else
    {
      v1 = 0;
    }

    v4 = v2 > 3;
    v2 >>= 1;
  }

  while (v4);
  v5 = v1 - v3;
  if (a1)
  {
    v6 = 64;
  }

  else
  {
    v6 = 65;
  }

  return (v6 + v5);
}

int BN_num_bits_word(unint64_t a1)
{
  v1 = 0;
  v2 = 64;
  v3 = 64;
  do
  {
    v3 += (v1 & (v2 >> 1)) - ((v2 >> 1) & ~v1);
    if (a1 >> v3)
    {
      v1 = -1;
    }

    else
    {
      v1 = 0;
    }

    v4 = v2 > 3;
    v2 >>= 1;
  }

  while (v4);
  return v3 - v1 - (a1 == 0);
}

int BN_num_bits(const BIGNUM *a)
{
  top = a->top;
  if (top < 1)
  {
    return 0;
  }

  v2 = 0;
  d = a->d;
  v4 = a->top;
  do
  {
    v5 = *d++;
    v2 |= v5;
    --v4;
  }

  while (v4);
  if (!v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = top - 1;
  v8 = a->d[v7];
  v9 = 64;
  v10 = 64;
  do
  {
    v10 += (v6 & (v9 >> 1)) - ((v9 >> 1) & ~v6);
    if (v8 >> v10)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    v11 = v9 > 3;
    v9 >>= 1;
  }

  while (v11);
  return v10 - v6 - (v8 == 0) + (v7 << 6);
}

BOOL BN_is_zero(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = *v3++;
    v2 |= v4;
    --v1;
  }

  while (v1);
  return v2 == 0;
}

uint64_t bn_correct_top(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *result - 8;
    do
    {
      if (*(v2 + 8 * v1))
      {
        break;
      }

      v3 = __OFSUB__(v1--, 1);
      *(result + 8) = v1;
    }

    while (!((v1 < 0) ^ v3 | (v1 == 0)));
  }

  return result;
}

uint64_t bn_expand(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x7FFFFFC0)
  {
    return bn_wexpand(a1, (a2 + 63) >> 6);
  }

  else
  {
    return 0;
  }
}

uint64_t bn_wexpand(uint64_t a1, size_t count)
{
  if ((count & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = count;
  v4 = *(a1 + 12);
  if (v4 >= v2)
  {
    return 1;
  }

  if (v2 < 0x800000)
  {
    if ((*(a1 + 20) & 2) != 0)
    {
      v5 = 105;
      v6 = 221;
      goto LABEL_12;
    }

    v8 = recallocarray(*a1, v4, v2, 8uLL);
    if (!v8)
    {
      v5 = 65;
      v6 = 227;
      goto LABEL_12;
    }

    *a1 = v8;
    *(a1 + 12) = v2;
    return 1;
  }

  v5 = 114;
  v6 = 217;
LABEL_12:
  ERR_put_error(3, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_lib.c", v6);
  return 0;
}

BIGNUM *__cdecl BN_dup(const BIGNUM *a)
{
  if (!a)
  {
    return 0;
  }

  v2 = BN_new();
  v3 = v2;
  if (v2 && !BN_copy(v2, a))
  {
    BN_free(v3);
    return 0;
  }

  return v3;
}

BIGNUM *__cdecl BN_copy(BIGNUM *a, const BIGNUM *b)
{
  v2 = a;
  if (a != b)
  {
    if (bn_wexpand(a, b->top))
    {
      top = b->top;
      if (top >= 1)
      {
        d = b->d;
        v6 = v2->d;
        v7 = top + 1;
        do
        {
          v8 = *d++;
          *v6++ = v8;
          --v7;
        }

        while (v7 > 1);
      }

      neg = b->neg;
      v10 = v2->flags | b->flags & 4;
      v2->top = top;
      v2->neg = neg;
      v2->flags = v10;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void BN_swap(BIGNUM *a, BIGNUM *b)
{
  flags = b->flags;
  d = a->d;
  neg = a->neg;
  v4 = a->flags;
  a->d = b->d;
  v6 = *&b->top;
  b->d = d;
  v7 = *&a->top;
  *&a->top = v6;
  a->neg = b->neg;
  *&b->top = v7;
  a->flags = flags & 2 | v4 & 1;
  b->neg = neg;
  b->flags = v4 & 2 | flags & 1;
}

unint64_t BN_get_word(const BIGNUM *a)
{
  top = a->top;
  if (top > 1)
  {
    return -1;
  }

  if (top == 1)
  {
    return *a->d;
  }

  return 0;
}

int BN_set_word(BIGNUM *a, unint64_t w)
{
  result = bn_wexpand(a, 1uLL);
  if (result)
  {
    a->neg = 0;
    *a->d = w;
    a->top = w != 0;
    return 1;
  }

  return result;
}

int BN_ucmp(const BIGNUM *a, const BIGNUM *b)
{
  top = a->top;
  v3 = b->top;
  if (top < v3)
  {
    return -1;
  }

  if (top > v3)
  {
    return 1;
  }

  v5 = top - 1;
  do
  {
    if (v5 + 1 < 1)
    {
      return 0;
    }

    v6 = a->d[v5];
    v7 = b->d[v5--];
  }

  while (v6 == v7);
  if (v6 > v7)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int BN_cmp(const BIGNUM *a, const BIGNUM *b)
{
  if (a && b)
  {
    neg = a->neg;
    v3 = b->neg - neg;
    if (!v3)
    {
      if (neg)
      {
        top = b->top;
        v5 = a->top;
        if (top >= v5)
        {
          if (top <= v5)
          {
            v6 = top - 1;
            while (v6 + 1 >= 1)
            {
              v7 = b->d[v6];
              v8 = a->d[v6--];
              v9 = v7 > v8;
              if (v7 != v8)
              {
                goto LABEL_22;
              }
            }

            return 0;
          }

          return 1;
        }
      }

      else
      {
        v11 = a->top;
        v12 = b->top;
        if (v11 >= v12)
        {
          if (v11 <= v12)
          {
            v13 = v11 - 1;
            while (v13 + 1 >= 1)
            {
              v14 = a->d[v13];
              v15 = b->d[v13--];
              v9 = v14 > v15;
              if (v14 != v15)
              {
LABEL_22:
                if (v9)
                {
                  return 1;
                }

                else
                {
                  return -1;
                }
              }
            }

            return 0;
          }

          return 1;
        }
      }

      return -1;
    }
  }

  else if (a)
  {
    return -1;
  }

  else
  {
    return b != 0;
  }

  return v3;
}

int BN_set_bit(BIGNUM *a, int n)
{
  if (n < 0)
  {
    return 0;
  }

  v2 = n;
  v4 = n >> 6;
  if (a->top <= (n >> 6))
  {
    result = bn_wexpand(a, (v4 + 1));
    if (!result)
    {
      return result;
    }

    top = a->top;
    if (v4 >= top)
    {
      bzero(&a->d[top], 8 * (v4 - top) + 8);
    }

    a->top = v4 + 1;
  }

  result = 1;
  a->d[v4] |= 1 << (v2 & 0x3F);
  return result;
}

int BN_clear_bit(BIGNUM *a, int n)
{
  if (n < 0)
  {
    return 0;
  }

  top = a->top;
  if (top <= (n >> 6))
  {
    return 0;
  }

  d = a->d;
  a->d[n >> 6] &= ~(1 << n);
  do
  {
    if (d[top - 1])
    {
      break;
    }

    v4 = __OFSUB__(top--, 1);
    a->top = top;
  }

  while (!((top < 0) ^ v4 | (top == 0)));
  return 1;
}

int BN_is_bit_set(const BIGNUM *a, int n)
{
  if (n < 0 || a->top <= (n >> 6))
  {
    LODWORD(v2) = 0;
  }

  else
  {
    return (a->d[n >> 6] >> n) & 1;
  }

  return v2;
}

int BN_mask_bits(BIGNUM *a, int n)
{
  if (n < 0)
  {
    return 0;
  }

  v2 = n >> 6;
  if ((n >> 6) >= a->top)
  {
    return 0;
  }

  if ((n & 0x3F) != 0)
  {
    a->d[v2++] &= ~(-1 << (n & 0x3F));
    a->top = v2;
    goto LABEL_7;
  }

  a->top = v2;
  if (n >= 0x40)
  {
LABEL_7:
    v4 = a->d - 1;
    do
    {
      if (v4[v2])
      {
        break;
      }

      v5 = __OFSUB__(v2--, 1);
      a->top = v2;
    }

    while (!((v2 < 0) ^ v5 | (v2 == 0)));
  }

  return 1;
}

void BN_set_negative(BIGNUM *b, int n)
{
  top = b->top;
  if (top < 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = 0;
    d = b->d;
    do
    {
      v5 = *d++;
      v3 |= v5;
      --top;
    }

    while (top);
    v6 = v3 != 0;
  }

  if (!n)
  {
    v6 = 0;
  }

  b->neg = v6;
}

uint64_t BN_consttime_swap(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == a3)
  {
    BN_consttime_swap_cold_2();
  }

  if ((result & (result - 1)) != 0)
  {
    BN_consttime_swap_cold_1();
  }

  v4 = ((result - 1) >> 63) - 1;
  v5 = *(a2 + 8);
  v6 = (*(a3 + 8) ^ v5) & v4;
  *(a2 + 8) = v6 ^ v5;
  *(a3 + 8) ^= v6;
  if (a4 > 5)
  {
    if (a4 <= 7)
    {
      if (a4 == 6)
      {
        v7 = *a2;
        v8 = *a3;
LABEL_31:
        v20 = v7[5];
        v21 = (v8[5] ^ v20) & v4;
        v7[5] = v21 ^ v20;
        v8[5] ^= v21;
        goto LABEL_32;
      }

      v7 = *a2;
      v8 = *a3;
LABEL_30:
      v18 = v7[6];
      v19 = (v8[6] ^ v18) & v4;
      v7[6] = v19 ^ v18;
      v8[6] ^= v19;
      goto LABEL_31;
    }

    switch(a4)
    {
      case 8:
        v7 = *a2;
        v8 = *a3;
LABEL_29:
        v16 = v7[7];
        v17 = (v8[7] ^ v16) & v4;
        v7[7] = v17 ^ v16;
        v8[7] ^= v17;
        goto LABEL_30;
      case 9:
        v7 = *a2;
        v8 = *a3;
LABEL_28:
        v14 = v7[8];
        v15 = (v8[8] ^ v14) & v4;
        v7[8] = v15 ^ v14;
        v8[8] ^= v15;
        goto LABEL_29;
      case 10:
        v7 = *a2;
        v8 = *a3;
LABEL_27:
        v12 = v7[9];
        v13 = (v8[9] ^ v12) & v4;
        v7[9] = v13 ^ v12;
        v8[9] ^= v13;
        goto LABEL_28;
    }

LABEL_24:
    v7 = *a2;
    v8 = *a3;
    if (a4 >= 11)
    {
      v9 = 10;
      do
      {
        v10 = v7[v9];
        v11 = (v8[v9] ^ v10) & v4;
        v7[v9] = v11 ^ v10;
        v8[v9++] ^= v11;
      }

      while (a4 != v9);
    }

    goto LABEL_27;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v7 = *a2;
      v8 = *a3;
LABEL_34:
      v26 = v7[2];
      v27 = (v8[2] ^ v26) & v4;
      v7[2] = v27 ^ v26;
      v8[2] ^= v27;
      goto LABEL_35;
    }

    if (a4 == 4)
    {
      v7 = *a2;
      v8 = *a3;
LABEL_33:
      v24 = v7[3];
      v25 = (v8[3] ^ v24) & v4;
      v7[3] = v25 ^ v24;
      v8[3] ^= v25;
      goto LABEL_34;
    }

    v7 = *a2;
    v8 = *a3;
LABEL_32:
    v22 = v7[4];
    v23 = (v8[4] ^ v22) & v4;
    v7[4] = v23 ^ v22;
    v8[4] ^= v23;
    goto LABEL_33;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v7 = *a2;
      v8 = *a3;
LABEL_35:
      v28 = v7[1];
      v29 = (v8[1] ^ v28) & v4;
      v7[1] = v29 ^ v28;
      v8[1] ^= v29;
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v7 = *a2;
  v8 = *a3;
LABEL_36:
  v30 = (*v8 ^ *v7) & v4;
  *v7 ^= v30;
  *v8 ^= v30;
  return result;
}

uint64_t BN_swap_ct(uint64_t a1, uint64_t a2, uint64_t a3, size_t count)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = count;
  if (count >> 31)
  {
    return 0;
  }

  result = bn_wexpand(a2, count);
  if (result)
  {
    result = bn_wexpand(a3, v4);
    if (result)
    {
      v9 = *(a2 + 8);
      if (v9 > v4 || (v10 = *(a3 + 8), v10 > v4))
      {
        ERR_put_error(3, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_lib.c", 565);
        return 0;
      }

      v11 = (((a1 - 1) & ~a1) >> 63) - 1;
      v12 = (v10 ^ v9) & v11;
      *(a2 + 8) = v12 ^ v9;
      *(a3 + 8) ^= v12;
      v13 = *(a2 + 16);
      v14 = *(a2 + 20);
      v15 = (*(a3 + 16) ^ v13) & v11;
      v16 = v11 & (*(a3 + 20) ^ v14) & 4;
      *(a2 + 16) = v15 ^ v13;
      *(a2 + 20) = v16 ^ v14;
      v17 = v16 ^ *(a3 + 20);
      *(a3 + 16) ^= v15;
      *(a3 + 20) = v17;
      if (v4)
      {
        v18 = *a2;
        v19 = *a3;
        result = 1;
        do
        {
          v20 = (*v19 ^ *v18) & v11;
          *v18++ ^= v20;
          *v19++ ^= v20;
          --v4;
        }

        while (v4);
      }

      else
      {
        return 1;
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

BOOL BN_abs_is_word(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1 && **a1 == a2)
  {
    return 1;
  }

  v4 = v2 == 0;
  return !a2 && v4;
}

BOOL BN_is_word(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1 && **a1 == a2)
  {
    if (!a2)
    {
      return 1;
    }

    return *(a1 + 16) == 0;
  }

  else
  {
    return !a2 && v2 == 0;
  }
}

uint64_t BN_is_odd(uint64_t a1)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  else
  {
    return **a1 & 1;
  }
}

char *BN_options(void)
{
  if ((BN_options_init & 1) == 0)
  {
    BN_options_init = 1;
    snprintf(BN_options_data, 0x10uLL, "bn(%d,%d)", 64, 64);
  }

  return BN_options_data;
}

uint64_t BN_security_bits(int a1, unsigned int a2)
{
  if (a1 <= 15359)
  {
    if (a1 <= 7679)
    {
      if (a1 <= 3071)
      {
        if (a1 <= 2047)
        {
          if (a1 < 1024)
          {
            return 0;
          }

          result = 80;
        }

        else
        {
          result = 112;
        }
      }

      else
      {
        result = 128;
      }
    }

    else
    {
      result = 192;
    }
  }

  else
  {
    result = 256;
  }

  if (a2 == -1)
  {
    return result;
  }

  if (a2 < 160)
  {
    return 0;
  }

  if (a2 >> 1 >= result)
  {
    return result;
  }

  else
  {
    return a2 >> 1;
  }
}

void BN_GENCB_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t BN_GENCB_set_old(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 1;
  *(result + 8) = a3;
  *(result + 16) = a2;
  return result;
}

uint64_t BN_GENCB_set(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 8) = a3;
  *(result + 16) = a2;
  return result;
}

int EVP_VerifyFinal(EVP_MD_CTX *ctx, const unsigned __int8 *sigbuf, unsigned int siglen, EVP_PKEY *pkey)
{
  v14 = *MEMORY[0x277D85DE8];
  s = 0;
  v11 = 0u;
  memset(&v10, 0, sizeof(v10));
  EVP_MD_CTX_init(&v10);
  if (EVP_MD_CTX_copy_ex(&v10, ctx) && EVP_DigestFinal_ex(&v10, md, &s))
  {
    EVP_MD_CTX_cleanup(&v10);
    v6 = EVP_PKEY_CTX_new(pkey, 0);
    v7 = v6;
    if (v6 && EVP_PKEY_verify_init(v6) >= 1)
    {
      v8 = -1;
      if (EVP_PKEY_CTX_ctrl(v7, -1, 248) >= 1)
      {
        v8 = EVP_PKEY_verify(v7);
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  EVP_PKEY_CTX_free(v7);
  return v8;
}

uint64_t oid_module_init(const CONF_IMODULE *a1, const CONF *a2)
{
  value = CONF_imodule_get_value(a1);
  section = NCONF_get_section(a2, value);
  if (!section)
  {
    v28 = 172;
    v29 = 84;
    goto LABEL_32;
  }

  v5 = section;
  if (sk_num(section) < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = MEMORY[0x277D85DE0];
LABEL_4:
  v8 = sk_value(v5, v6);
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);
  v11 = strrchr(v10, 44);
  if (v11)
  {
    v12 = v11;
    v14 = v11 + 1;
    v13 = v11[1];
    if (!v13)
    {
      goto LABEL_31;
    }

    if (v11[1] < 0)
    {
      goto LABEL_9;
    }

    while ((*(v7 + 4 * v13 + 60) & 0x4000) != 0)
    {
      while (1)
      {
        v15 = *++v14;
        v13 = v15;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

LABEL_9:
        if (!__maskrune(v13, 0x4000uLL))
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    v16 = OBJ_create(v14, v9, 0);
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = v16;
    v18 = v12 - v10;
    do
    {
      v19 = v10;
      v20 = v18;
      v21 = *v10;
      if (v21 < 0)
      {
        v22 = __maskrune(*v10, 0x4000uLL);
      }

      else
      {
        v22 = *(v7 + 4 * v21 + 60) & 0x4000;
      }

      ++v10;
      v18 = v20 - 1;
    }

    while (v22);
    while (1)
    {
      v24 = *--v12;
      v23 = v24;
      if (v24 < 0)
      {
        if (!__maskrune(v23, 0x4000uLL))
        {
LABEL_26:
          v25 = malloc_type_malloc(v20 + 1, 0xCFC81D5EuLL);
          if (!v25)
          {
            goto LABEL_31;
          }

          v26 = v25;
          memcpy(v25, v19, v20);
          v26[v20] = 0;
          OBJ_nid2obj(v17)->ln = v26;
LABEL_28:
          if (++v6 >= sk_num(v5))
          {
            return 1;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v7 + 4 * v23 + 60) & 0x4000) == 0)
      {
        goto LABEL_26;
      }

      --v20;
      if (v12 == v19)
      {
        goto LABEL_31;
      }
    }
  }

  if (OBJ_create(v10, v9, v9))
  {
    goto LABEL_28;
  }

LABEL_31:
  v28 = 171;
  v29 = 90;
LABEL_32:
  ERR_put_error(13, 4095, v28, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn_moid.c", v29);
  return 0;
}

ASN1_VALUE *cms_DigestedData_create(const EVP_MD *a1)
{
  v2 = CMS_ContentInfo_new();
  if (v2)
  {
    v3 = ASN1_item_new(&CMS_DigestedData_it);
    if (v3)
    {
      v4 = v3;
      *v2 = OBJ_nid2obj(25);
      *(v2 + 1) = v4;
      *v4 = 0;
      v5 = OBJ_nid2obj(21);
      v6 = *(v4 + 1);
      **(v4 + 2) = v5;
      X509_ALGOR_set_md(v6, a1);
    }

    else
    {
      CMS_ContentInfo_free(v2);
      return 0;
    }
  }

  return v2;
}

BOOL cms_DigestedData_do_final(uint64_t a1, BIO *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = EVP_MD_CTX_new();
  v7 = v6;
  s = 0;
  if (v6)
  {
    v8 = *(a1 + 8);
    if (!cms_DigestAlgorithm_find_ctx(v6, a2, *(v8 + 8)) || EVP_DigestFinal_ex(v7, md, &s) < 1)
    {
      goto LABEL_10;
    }

    if (!a3)
    {
      v12 = ASN1_STRING_set(*(v8 + 24), md, s) != 0;
      goto LABEL_11;
    }

    v9 = *(v8 + 24);
    if (s == *v9)
    {
      if (!memcmp(md, *(v9 + 8), s))
      {
        v12 = 1;
        goto LABEL_11;
      }

      v10 = 158;
      v11 = 137;
    }

    else
    {
      v10 = 121;
      v11 = 132;
    }
  }

  else
  {
    v10 = 65;
    v11 = 118;
  }

  ERR_put_error(46, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_dd.c", v11);
LABEL_10:
  v12 = 0;
LABEL_11:
  EVP_MD_CTX_free(v7);
  return v12;
}

void *CBS_init(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = a3;
  return result;
}

void *CBS_dup(void *result, void *a2)
{
  v2 = result[2];
  a2[1] = v2;
  a2[2] = v2;
  v3 = result[1];
  *a2 = *result;
  a2[1] = v3;
  return result;
}

uint64_t CBS_skip(void *a1, unint64_t a2)
{
  v2 = a1[2];
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  *a1 += a2;
  a1[2] = v4;
  return 1;
}

uint64_t CBS_stow(uint64_t a1, void **a2, void *a3)
{
  free(*a2);
  *a2 = 0;
  *a3 = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    result = malloc_type_malloc(v6, 0x5D10A8A6uLL);
    *a2 = result;
    if (!result)
    {
      return result;
    }

    memcpy(result, *a1, *(a1 + 16));
    *a3 = *(a1 + 16);
  }

  return 1;
}

BOOL CBS_strdup(uint64_t a1, void **a2)
{
  free(*a2);
  *a2 = 0;
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = memchr(v4, 0, v5);
  result = 0;
  if (!v6)
  {
    v8 = strndup(v4, v5);
    *a2 = v8;
    return v8 != 0;
  }

  return result;
}

uint64_t CBS_write_bytes(uint64_t a1, void *__dst, size_t a3, void *a4)
{
  v5 = *(a1 + 16);
  if (v5 > a3)
  {
    return 0;
  }

  memmove(__dst, *a1, v5);
  if (a4)
  {
    *a4 = *(a1 + 16);
  }

  return 1;
}

uint64_t CBS_get_u8(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v3 = (*a1)++;
  a1[2] = v2 - 1;
  *a2 = *v3;
  return 1;
}

uint64_t CBS_get_u16(unsigned __int16 **a1, _WORD *a2)
{
  v2 = a1[2];
  v3 = v2 >= 2;
  v4 = v2 - 1;
  if (!v3)
  {
    return 0;
  }

  v6 = (*a1)++;
  a1[2] = v4;
  *a2 = bswap32(*v6) >> 16;
  return 1;
}

uint64_t CBS_get_u24(uint64_t *a1, int *a2)
{
  v2 = a1[2];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 3;
  a1[2] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 3);
  *a2 = v6;
  return 1;
}

uint64_t CBS_get_u32(uint64_t *a1, int *a2)
{
  v2 = a1[2];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 4;
  a1[2] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  *a2 = v6;
  return 1;
}

uint64_t CBS_get_u64(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = v2 - 8;
  if (v2 < 8)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = *a1;
  v8 = *a1 + 4;
  *a1 = v8;
  a1[2] = v2 - 4;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  v9 = 0;
  LODWORD(v10) = 0;
  *a1 = v7 + 8;
  a1[2] = v3;
  do
  {
    v10 = *(v8 + v9++) | (v10 << 8);
  }

  while (v9 != 4);
  *a2 = v10 | (v6 << 32);
  return 1;
}

uint64_t CBS_get_last_u8(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  *a2 = *(*a1 + v2 - 1);
  --a1[2];
  return 1;
}

uint64_t CBS_get_bytes(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a1[2];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  v7 = *a1;
  *a1 += a3;
  a1[2] = v5;
  *a2 = v7;
  a2[1] = a3;
  a2[2] = a3;
  return 1;
}

uint64_t cbs_get_length_prefixed(unsigned __int8 **a1, unsigned __int8 **a2, unint64_t a3)
{
  v3 = a1[2];
  v4 = v3 >= a3;
  v5 = &v3[-a3];
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = &(*a1)[a3];
  *a1 = v7;
  a1[2] = v5;
  if (a3)
  {
    LODWORD(v8) = 0;
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

  else
  {
    v8 = 0;
  }

  *a1 = &v7[v8];
  a1[2] = &v5[-v8];
  *a2 = v7;
  a2[1] = v8;
  result = 1;
  a2[2] = v8;
  return result;
}

uint64_t CBS_peek_u8(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  *a2 = **a1;
  return 1;
}

uint64_t CBS_peek_u16(unsigned __int16 **a1, _WORD *a2)
{
  if (a1[2] < 2)
  {
    return 0;
  }

  *a2 = bswap32(**a1) >> 16;
  return 1;
}

uint64_t CBS_peek_u24(void *a1, int *a2)
{
  if (a1[2] < 3uLL)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 = *(*a1 + v3++) | (v4 << 8);
  }

  while (v3 != 3);
  *a2 = v4;
  return 1;
}

uint64_t CBS_peek_u32(void *a1, int *a2)
{
  if (a1[2] < 4uLL)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 = *(*a1 + v3++) | (v4 << 8);
  }

  while (v3 != 4);
  *a2 = v4;
  return 1;
}

uint64_t CBS_peek_last_u8(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  *a2 = *(*a1 + v2 - 1);
  return 1;
}

uint64_t cbs_get_any_asn1_element_internal(unsigned __int8 **a1, void *a2, _DWORD *a3, uint64_t *a4, int a5)
{
  v5 = a1[2];
  if (v5 < 2)
  {
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  if ((~v7 & 0x1F) == 0)
  {
    return 0;
  }

  v8 = *(v6 + 1);
  if (a3)
  {
    *a3 = v7;
  }

  if ((v8 & 0x80) == 0)
  {
    v9 = v8 + 2;
    if (!a4)
    {
      goto LABEL_9;
    }

    v10 = 2;
    goto LABEL_8;
  }

  v14 = v8 & 0x7F;
  if ((v8 & 0x7F) == 0x7F)
  {
    return 0;
  }

  v15 = (v6 + 2);
  if ((v8 & 0x7F) != 0)
  {
    v16 = v5 - 2;
    v17 = (v14 - 5) >= 0xFCu && v16 >= v14;
    if (!v17)
    {
      return 0;
    }

    v18 = 0;
    v19 = v8 & 0x7F;
    do
    {
      v20 = *v15++;
      v18 = v20 | (v18 << 8);
      --v19;
    }

    while (v19);
    if (v18 < 0x80)
    {
      return 0;
    }

    v13 = v18 >> (8 * (v8 & 0x1F) - 8);
    if (!v13)
    {
      return v13;
    }

    v10 = v14 + 2;
    v9 = v14 + 2 + v18;
    if (!a4)
    {
LABEL_9:
      v11 = a1[2];
      v17 = v11 >= v9;
      v12 = &v11[-v9];
      if (!v17)
      {
        return 0;
      }

      *a1 = (v6 + v9);
      a1[2] = v12;
      if (a2)
      {
        goto LABEL_12;
      }

      return 1;
    }

LABEL_8:
    *a4 = v10;
    goto LABEL_9;
  }

  v13 = 0;
  if (!a5 && (v7 & 0x20) != 0)
  {
    if (a4)
    {
      *a4 = 2;
      v5 = a1[2];
      if (v5 < 2)
      {
        return 0;
      }
    }

    *a1 = v15;
    a1[2] = v5 - 2;
    if (a2)
    {
      v9 = 2;
LABEL_12:
      *a2 = v6;
      a2[1] = v9;
      v13 = 1;
      a2[2] = v9;
      return v13;
    }

    return 1;
  }

  return v13;
}

uint64_t cbs_get_asn1(unsigned __int8 **a1, void *a2, int a3, int a4)
{
  v16 = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v14;
  }

  if (cbs_get_any_asn1_element_internal(a1, v7, &v15, &v16, 1))
  {
    v8 = v15 == a3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  if (a4)
  {
    v9 = v14;
    if (a2)
    {
      v9 = a2;
    }

    v10 = v9[2];
    v11 = v10 >= v16;
    v12 = v10 - v16;
    if (!v11)
    {
      return 0;
    }

    *v7 += v16;
    v9[2] = v12;
  }

  return 1;
}

uint64_t CBS_get_asn1_uint64(unsigned __int8 **a1, unint64_t *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  result = cbs_get_asn1(a1, v8, 2, 1);
  if (result)
  {
    *a2 = 0;
    v4 = v9;
    if (v9)
    {
      v5 = v8[0];
      if ((*v8[0] & 0x80000000) == 0 && (v9 == 1 || *v8[0] || *(v8[0] + 1) < 0))
      {
        v6 = 0;
        while (!HIBYTE(v6))
        {
          *a2 = v6 << 8;
          v7 = *v5++;
          *a2 = v7 | (v6 << 8);
          v6 = v7 | (v6 << 8);
          if (!--v4)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t CBS_get_optional_asn1(unsigned __int8 **a1, void *a2, int *a3, int a4)
{
  v5 = (~a4 & 0x1F) == 0 || a1[2] == 0;
  if (v5 || **a1 != a4)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
  result = cbs_get_asn1(a1, a2, a4, 1);
  if (result)
  {
LABEL_9:
    *a3 = v6;
    return 1;
  }

  return result;
}

uint64_t CBS_get_optional_asn1_octet_string(unsigned __int8 **a1, void *a2, int *a3, int a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v9 = 0;
  result = CBS_get_optional_asn1(a1, v10, &v9, a4);
  if (result)
  {
    v7 = v9;
    if (!v9)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_6;
    }

    asn1 = cbs_get_asn1(v10, a2, 4, 1);
    result = 0;
    if (asn1 && !v11)
    {
      if (!a3)
      {
        return 1;
      }

LABEL_6:
      *a3 = v7;
      return 1;
    }
  }

  return result;
}

uint64_t CBS_get_optional_asn1_uint64(unsigned __int8 **a1, unint64_t *a2, int a3, unint64_t a4)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  result = CBS_get_optional_asn1(a1, v9, &v8, a3);
  if (result)
  {
    if (v8)
    {
      asn1_uint64 = CBS_get_asn1_uint64(v9, a2);
      result = 0;
      if (!asn1_uint64 || v10)
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

uint64_t CBS_get_optional_asn1_BOOL(unsigned __int8 **a1, int *a2, int a3, int a4)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  result = CBS_get_optional_asn1(a1, v11, &v8, a3);
  if (result)
  {
    if (!v8)
    {
LABEL_9:
      *a2 = a4;
      return 1;
    }

    asn1 = cbs_get_asn1(v11, v9, 1, 1);
    result = 0;
    if (asn1 && v10 == 1 && !v12)
    {
      a4 = *v9[0];
      if (*v9[0])
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

uint64_t CBB_init(uint64_t a1, size_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 64;
  }

  v4 = malloc_type_calloc(1uLL, v3, 0x3A3EE3F9uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040A6225C5AuLL);
  if (!v7)
  {
    free(v5);
    return 0;
  }

  *v7 = v5;
  v7[1] = 0;
  v7[2] = v3;
  *(v7 + 24) = 1;
  *a1 = v7;
  *(a1 + 26) = 1;
  return v6;
}

uint64_t CBB_init_fixed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 1;
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040A6225C5AuLL);
  if (!v7)
  {
    return 0;
  }

  *v7 = a2;
  v7[1] = 0;
  v7[2] = a3;
  *a1 = v7;
  *(a1 + 26) = 1;
  *(v7 + 24) = 0;
  return v6;
}

void CBB_cleanup(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(v2 + 24))
    {
      freezero(*v2, *(v2 + 16));
      v2 = *a1;
    }

    free(v2);
  }

  *a1 = 0;
  a1[2] = 0;
}

uint64_t CBB_finish(uint64_t *a1, void *a2, void *a3)
{
  if (!*(a1 + 26))
  {
    return 0;
  }

  result = CBB_flush(a1);
  if (!result)
  {
    return result;
  }

  v7 = *a1;
  if (*(*a1 + 24))
  {
    result = 0;
    if (!a2 || !a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a2)
  {
LABEL_9:
    if (*a2)
    {
      return 0;
    }

    *a2 = *v7;
    v7 = *a1;
  }

  if (a3)
  {
    *a3 = v7[1];
  }

  *v7 = 0;
  CBB_cleanup(a1);
  return 1;
}

uint64_t CBB_flush(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 1;
    }

    v4 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return 1;
    }

    v6 = (a1 + 8);
    v5 = *(a1 + 8);
    if (!CBB_flush(v3))
    {
      return 0;
    }

    v7 = v5 + v4;
    v8 = *v6;
    if (v5 + v4 < *v6)
    {
      return 0;
    }

    v9 = *a1;
    v10 = *(*a1 + 8);
    v11 = v10 - v7;
    if (v10 < v7)
    {
      return 0;
    }

    LODWORD(v12) = *(a1 + 24);
    if (!*(a1 + 25))
    {
LABEL_21:
      if (v12)
      {
        v15 = v12 - 1;
        do
        {
          *(**a1 + *(a1 + 8) + v15) = v11;
          v11 >>= 8;
          --v15;
        }

        while (v15 < *(a1 + 24));
      }

      if (v11)
      {
        return 0;
      }

      **(a1 + 16) = 0;
      *v6 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return 1;
    }

    v1 = 0;
    if (v12 == 1 && v11 <= 0xFFFFFFFE)
    {
      if (v11 >> 24)
      {
        v12 = 4;
      }

      else if (v11 >> 16)
      {
        v12 = 3;
      }

      else if (v11 <= 0xFF)
      {
        if (v11 <= 0x7F)
        {
          LODWORD(v12) = 0;
          v13 = v11;
          v11 = 0;
          goto LABEL_20;
        }

        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (cbb_buffer_add(v9, 0, v12))
      {
        v13 = v12 | 0x80;
        memmove((**a1 + v7 + v12), (**a1 + v7), v11);
        v9 = *a1;
        v8 = *(a1 + 8);
LABEL_20:
        v14 = *v9;
        *(a1 + 8) = v8 + 1;
        *(v14 + v8) = v13;
        *(a1 + 24) = v12;
        goto LABEL_21;
      }

      return 0;
    }
  }

  return v1;
}

char *cbb_buffer_add(char *result, void *a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 1);
  v5 = v4 + a3;
  if (__CFADD__(v4, a3))
  {
    return 0;
  }

  v7 = *(result + 2);
  if (v5 <= v7)
  {
LABEL_14:
    if (a2)
    {
      *a2 = *v3 + *(v3 + 1);
    }

    *(v3 + 1) = v5;
    return 1;
  }

  if (!result[24])
  {
    return 0;
  }

  v8 = 2 * v7;
  if (2 * v7 <= v5)
  {
    v8 = v5;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  result = recallocarray(*result, v7, v9, 1uLL);
  if (result)
  {
    *v3 = result;
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

  return result;
}

uint64_t CBB_discard_child(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    *(*result + 8) = *(result + 8);
    *v1 = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t cbb_add_length_prefixed(uint64_t a1, _OWORD *a2, size_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v8 = 0;
    v7 = *a1;
    *(a1 + 8) = *(*a1 + 8);
    result = cbb_buffer_add(v7, &v8, a3);
    if (result)
    {
      bzero(v8, a3);
      *a2 = 0u;
      a2[1] = 0u;
      *a2 = *a1;
      *(a1 + 16) = a2;
      *(a1 + 24) = a3;
      *(a1 + 25) = 0;
      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_asn1(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = 0;
  if (a3 <= 0xFF)
  {
    v5 = a3;
    if ((a3 & 0x1F) != 0x1F)
    {
      result = CBB_flush(a1);
      if (result)
      {
        result = cbb_add_u(a1, v5, 1uLL);
        if (result)
        {
          *(a1 + 8) = *(*a1 + 8);
          result = cbb_add_u(a1, 0, 1uLL);
          if (result)
          {
            *a2 = 0u;
            a2[1] = 0u;
            *a2 = *a1;
            *(a1 + 16) = a2;
            *(a1 + 24) = 257;
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CBB_add_u8(char **a1, unint64_t a2)
{
  if (a2 <= 0xFF)
  {
    return cbb_add_u(a1, a2, 1uLL);
  }

  else
  {
    return 0;
  }
}

uint64_t CBB_add_bytes(char **a1, const void *a2, size_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    __dst = 0;
    result = cbb_buffer_add(*a1, &__dst, a3);
    if (result)
    {
      memcpy(__dst, a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_space(char **a1, void **a2, size_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    result = cbb_buffer_add(*a1, a2, a3);
    if (result)
    {
      bzero(*a2, a3);
      return 1;
    }
  }

  return result;
}

uint64_t cbb_add_u(char **a1, unsigned int a2, unint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v8 = 0;
    result = cbb_buffer_add(*a1, &v8, a3);
    if (result)
    {
      if (a3)
      {
        v7 = a3 - 1;
        do
        {
          *(v8 + v7) = a2;
          a2 >>= 8;
          --v7;
        }

        while (v7 < a3);
      }

      return 1;
    }
  }

  return result;
}

uint64_t CBB_add_u16(char **a1, unint64_t a2)
{
  if (a2 >> 16)
  {
    return 0;
  }

  else
  {
    return cbb_add_u(a1, a2, 2uLL);
  }
}

uint64_t CBB_add_u24(char **a1, unint64_t a2)
{
  if (a2 >> 24)
  {
    return 0;
  }

  else
  {
    return cbb_add_u(a1, a2, 3uLL);
  }
}

uint64_t CBB_add_u32(char **a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 0;
  }

  else
  {
    return cbb_add_u(a1, a2, 4uLL);
  }
}

uint64_t CBB_add_u64(char **a1, uint64_t a2)
{
  v2 = a2;
  result = cbb_add_u(a1, HIDWORD(a2), 4uLL);
  if (result)
  {

    return cbb_add_u(a1, v2, 4uLL);
  }

  return result;
}

uint64_t CBB_add_asn1_uint64(uint64_t a1, unint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  result = CBB_add_asn1(a1, v7, 2);
  if (!result)
  {
    return result;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    while ((v6 & 1) == 0)
    {
LABEL_7:
      result = cbb_add_u(v7, (a2 >> (56 - 8 * v5)), 1uLL);
      if (!result)
      {
        return result;
      }

      v6 = 0;
      if (++v5 == 8)
      {
        return CBB_flush(a1);
      }
    }

    if ((a2 >> (56 - 8 * v5)))
    {
      if (((a2 >> (56 - 8 * v5)) & 0x80) != 0)
      {
        result = cbb_add_u(v7, 0, 1uLL);
        if (!result)
        {
          return result;
        }
      }

      goto LABEL_7;
    }

    ++v5;
    v6 = 1;
  }

  while (v5 != 8);
  result = cbb_add_u(v7, 0, 1uLL);
  if (!result)
  {
    return result;
  }

  return CBB_flush(a1);
}

void WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CC6408] defaultManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke;
  v12[3] = &unk_278C1EAE0;
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v9 = v6;
  v10 = v5;
  v11 = v7;
  [v8 fetchItemForURL:v10 completionHandler:v12];
}

void __WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    FPExtendBookmarkForDocumentURL();
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

uint64_t __WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 136315650;
      v10 = "WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer_block_invoke_2";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = a3;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s Could not extend file result to consumer: %@ with error: %@", &v9, 0x20u);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

Class initUITextChecker()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_217);
  }

  result = objc_getClass("UITextChecker");
  classUITextChecker = result;
  getUITextCheckerClass = UITextCheckerFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

void sub_23E016C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIColorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __UIKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C18E98;
    v8 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFFileLabelColorPickerParameter.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIColorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFFileLabelColorPickerParameter.m" lineNumber:20 description:{@"Unable to find class %s", "UIColor"}];

LABEL_10:
    __break(1u);
  }

  getUIColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRadiosPreferencesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AppSupportLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C18F00;
    v8 = 0;
    AppSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppSupportLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFRadiosPreferencesSettingsClient.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RadiosPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRadiosPreferencesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFRadiosPreferencesSettingsClient.m" lineNumber:19 description:{@"Unable to find class %s", "RadiosPreferences"}];

LABEL_10:
    __break(1u);
  }

  getRadiosPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppSupportLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E01BEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEnforceClass(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id VCTitleCaseString(void *a1)
{
  v1 = a1;
  if (!VCTitleCaseString_shortWords)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"a", @"an", @"and", @"as", @"at", @"but", @"by", @"en", @"for", @"if", @"in", @"of", @"on", @"or", @"the", @"to", @"v", @"via", @"vs", 0}];
    v3 = VCTitleCaseString_shortWords;
    VCTitleCaseString_shortWords = v2;
  }

  if (!VCTitleCaseString_wordStartCharacterSet)
  {
    v4 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v5 = [v4 mutableCopy];
    v6 = VCTitleCaseString_wordStartCharacterSet;
    VCTitleCaseString_wordStartCharacterSet = v5;

    v7 = VCTitleCaseString_wordStartCharacterSet;
    v8 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    [v7 formUnionWithCharacterSet:v8];
  }

  if (!VCTitleCaseString_wordMiddleCharacterSet)
  {
    v9 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v10 = [v9 mutableCopy];
    v11 = VCTitleCaseString_wordMiddleCharacterSet;
    VCTitleCaseString_wordMiddleCharacterSet = v10;

    v12 = VCTitleCaseString_wordMiddleCharacterSet;
    v13 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    [v12 formUnionWithCharacterSet:v13];

    [VCTitleCaseString_wordMiddleCharacterSet addCharactersInString:@".&'’"];
  }

  if (!VCTitleCaseString_wordEndCharacterSet)
  {
    objc_storeStrong(&VCTitleCaseString_wordEndCharacterSet, VCTitleCaseString_wordStartCharacterSet);
  }

  if (!VCTitleCaseString_wordIgnoreCharacterSet)
  {
    v14 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v15 = [v14 mutableCopy];
    v16 = VCTitleCaseString_wordIgnoreCharacterSet;
    VCTitleCaseString_wordIgnoreCharacterSet = v15;

    [VCTitleCaseString_wordIgnoreCharacterSet addCharactersInString:@"."];
  }

  v39 = [v1 mutableCopy];
  v17 = [MEMORY[0x277CCAC80] scannerWithString:v1];
  v18 = 1;
  [v17 setCaseSensitive:1];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_12:
  v23 = v20;
  while (([v17 isAtEnd] & 1) == 0)
  {
    [v17 scanUpToCharactersFromSet:VCTitleCaseString_wordStartCharacterSet intoString:0];
    v24 = [v17 scanLocation];
    if (v24 < [v1 length])
    {
      v22 = [v17 scanLocation];
      if (([VCTitleCaseString_wordStartCharacterSet characterIsMember:{objc_msgSend(v1, "characterAtIndex:", objc_msgSend(v17, "scanLocation"))}] & 1) == 0)
      {
        do
        {
          [v17 setScanLocation:{objc_msgSend(v17, "scanLocation") + 1}];
          v22 = [v17 scanLocation];
        }

        while (![VCTitleCaseString_wordStartCharacterSet characterIsMember:{objc_msgSend(v1, "characterAtIndex:", objc_msgSend(v17, "scanLocation"))}]);
      }

      v38 = v18;
      v25 = [v1 substringWithRange:{v22, 1}];
      [v17 scanString:v25 intoString:0];

      v26 = [v1 length];
      v27 = 1;
      if (v26 > [v17 scanLocation])
      {
        if ([VCTitleCaseString_wordMiddleCharacterSet characterIsMember:{objc_msgSend(v1, "characterAtIndex:", objc_msgSend(v17, "scanLocation"))}])
        {
          [v17 scanCharactersFromSet:VCTitleCaseString_wordMiddleCharacterSet intoString:0];
          v27 = [v17 scanLocation] - v22;
        }

        else
        {
          v27 = 1;
        }
      }

      v28 = [v1 characterAtIndex:v22 + v27 - 1];
      if ([VCTitleCaseString_wordEndCharacterSet characterIsMember:v28])
      {
        v21 = v27;
      }

      else
      {
        do
        {
          [v17 setScanLocation:{objc_msgSend(v17, "scanLocation") - 1}];
          v21 = v27 - 1;
          v29 = [v1 characterAtIndex:v22 - 2 + v27--];
        }

        while (![VCTitleCaseString_wordEndCharacterSet characterIsMember:v29]);
      }

      v30 = [v1 substringWithRange:{v22, v21}];

      v31 = [v30 lowercaseString];

      v32 = [v1 rangeOfCharacterFromSet:VCTitleCaseString_wordIgnoreCharacterSet options:2 range:{v22 + 1, v21 - 1}];
      v18 = 0;
      v19 = v31;
      v20 = v30;
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v30 rangeOfString:@"&"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v38 & 1) == 0 && [VCTitleCaseString_shortWords containsObject:v31])
          {
            [v39 replaceCharactersInRange:v22 withString:{v21, v31}];
LABEL_32:
            v18 = 0;
            v19 = v31;
            v20 = v30;
            goto LABEL_12;
          }

          v33 = [v30 capitalizedString];
        }

        else
        {
          v33 = [v30 uppercaseString];
        }

        v34 = v33;
        [v39 replaceCharactersInRange:v22 withString:{v21, v33}];

        goto LABEL_32;
      }

      goto LABEL_12;
    }
  }

  if (v19 && [VCTitleCaseString_shortWords containsObject:v19])
  {
    v35 = [v19 capitalizedString];
    [v39 replaceCharactersInRange:v22 withString:{v21, v35}];
  }

  v36 = [v39 copy];

  return v36;
}

void sub_23E01E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImagePickerControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_929)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __UIKitLibraryCore_block_invoke_930;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C18FE8;
    v8 = 0;
    UIKitLibraryCore_frameworkLibrary_929 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_929)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFTakeVideoAction.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIImagePickerController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIImagePickerControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFTakeVideoAction.m" lineNumber:16 description:{@"Unable to find class %s", "UIImagePickerController"}];

LABEL_10:
    __break(1u);
  }

  getUIImagePickerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_930(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_929 = result;
  return result;
}

Class __getSBSStatusBarStyleOverridesAssertionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19080;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFRecordingStatusManager.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSStatusBarStyleOverridesAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSStatusBarStyleOverridesAssertionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFRecordingStatusManager.m" lineNumber:17 description:{@"Unable to find class %s", "SBSStatusBarStyleOverridesAssertion"}];

LABEL_10:
    __break(1u);
  }

  getSBSStatusBarStyleOverridesAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0208D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCAMCaptureCapabilitiesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CameraUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CameraUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C190C0;
    v8 = 0;
    CameraUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CameraUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CameraUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFCameraCaptureCapabilities.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CAMCaptureCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCAMCaptureCapabilitiesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFCameraCaptureCapabilities.m" lineNumber:22 description:{@"Unable to find class %s", "CAMCaptureCapabilities"}];

LABEL_10:
    __break(1u);
  }

  getCAMCaptureCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CameraUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CameraUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E044500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C190F8;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWeatherData.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFWeatherData.m" lineNumber:19 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E048924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPAVEndpointRouteClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19248;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFHandOffPlaybackAction.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPAVEndpointRoute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPAVEndpointRouteClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFHandOffPlaybackAction.m" lineNumber:19 description:{@"Unable to find class %s", "MPAVEndpointRoute"}];

LABEL_10:
    __break(1u);
  }

  getMPAVEndpointRouteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

id getCBClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCBClientClass_softClass;
  v7 = getCBClientClass_softClass;
  if (!getCBClientClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCBClientClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCBClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E04AE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCBClientClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreBrightnessLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19260;
    v8 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFNightShiftSettingsClient.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CBClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCBClientClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFNightShiftSettingsClient.m" lineNumber:20 description:{@"Unable to find class %s", "CBClient"}];

LABEL_10:
    __break(1u);
  }

  getCBClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E04B2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKDisplayTypeControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __HealthUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C192A0;
    v8 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFQuantityTypePickerParameter.m" lineNumber:22 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("HKDisplayTypeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKDisplayTypeControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFQuantityTypePickerParameter.m" lineNumber:23 description:{@"Unable to find class %s", "HKDisplayTypeController"}];

LABEL_10:
    __break(1u);
  }

  getHKDisplayTypeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  return result;
}

id getWFAlwaysOnSettingsClientLogObject()
{
  if (getWFAlwaysOnSettingsClientLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAlwaysOnSettingsClientLogObject_onceToken, &__block_literal_global_2840);
  }

  v1 = getWFAlwaysOnSettingsClientLogObject_log;

  return v1;
}

void __getWFAlwaysOnSettingsClientLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D7A500], "AlwaysOnSettingsClient");
  v1 = getWFAlwaysOnSettingsClientLogObject_log;
  getWFAlwaysOnSettingsClientLogObject_log = v0;
}

void sub_23E04DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSHErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ShazamKitLibrary();
  result = dlsym(v2, "SHErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSHErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ShazamKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ShazamKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ShazamKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19358;
    v6 = 0;
    ShazamKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ShazamKitLibraryCore_frameworkLibrary;
  if (!ShazamKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ShazamKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFShazamMediaAction.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ShazamKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ShazamKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E04E110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSHManagedSessionClass_block_invoke(uint64_t a1)
{
  ShazamKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SHManagedSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSHManagedSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSHManagedSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShazamMediaAction.m" lineNumber:22 description:{@"Unable to find class %s", "SHManagedSession"}];

    __break(1u);
  }
}

uint64_t __Block_byref_object_copy__3072(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E04FA1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

id getMPCPlayerPathClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerPathClass_softClass;
  v7 = getMPCPlayerPathClass_softClass;
  if (!getMPCPlayerPathClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerPathClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCPlayerPathClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0506F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCPlayerPathClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCPlayerPath");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerPathClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCPlayerPathClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:40 description:{@"Unable to find class %s", "MPCPlayerPath"}];

    __break(1u);
  }
}

void MediaPlaybackCoreLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MediaPlaybackCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C19680;
    v5 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFMediaPlaybackController.m" lineNumber:38 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary = result;
  return result;
}

id getMPCPlayerRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerRequestClass_softClass;
  v7 = getMPCPlayerRequestClass_softClass;
  if (!getMPCPlayerRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerRequestClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCPlayerRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E050B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPCPlayerChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPCPlayerChangeRequestClass_softClass;
  v7 = getMPCPlayerChangeRequestClass_softClass;
  if (!getMPCPlayerChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPCPlayerChangeRequestClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPCPlayerChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E050CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPCPlayerChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCPlayerChangeRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCPlayerChangeRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:41 description:{@"Unable to find class %s", "MPCPlayerChangeRequest"}];

    __break(1u);
  }
}

void __getMPCPlayerRequestClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCPlayerRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPCPlayerRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:39 description:{@"Unable to find class %s", "MPCPlayerRequest"}];

    __break(1u);
  }
}

id getMPModelSongClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongClass_softClass;
  v7 = getMPModelSongClass_softClass;
  if (!getMPModelSongClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPModelSongClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0511D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPModelLibraryRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelLibraryRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPModelLibraryRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:49 description:{@"Unable to find class %s", "MPModelLibraryRequest"}];

    __break(1u);
  }
}

id getMPPropertySetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPPropertySetClass_softClass;
  v7 = getMPPropertySetClass_softClass;
  if (!getMPPropertySetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPPropertySetClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPPropertySetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E051378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPPropertySetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPPropertySet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPropertySetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPPropertySetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:23 description:{@"Unable to find class %s", "MPPropertySet"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3104)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_3105;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19668;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_3104 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_3104;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3104)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:20 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_3105(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_3104 = result;
  return result;
}

void __getMPModelSongClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelSong");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPModelSongClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:25 description:{@"Unable to find class %s", "MPModelSong"}];

    __break(1u);
  }
}

id getMPIdentifierSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPIdentifierSetClass_softClass;
  v7 = getMPIdentifierSetClass_softClass;
  if (!getMPIdentifierSetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPIdentifierSetClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPIdentifierSetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E051A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPIdentifierSetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPIdentifierSet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPIdentifierSetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:26 description:{@"Unable to find class %s", "MPIdentifierSet"}];

    __break(1u);
  }
}

id getMPMediaLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass;
  v7 = getMPMediaLibraryClass_softClass;
  if (!getMPMediaLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E051E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:21 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void sub_23E05266C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaPlaybackController.m" lineNumber:22 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void *__getMPModelRelationshipGenericSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E053F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPModelPropertyGenreNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyGenreName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyGenreNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDiscCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumDiscCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDiscCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumReleaseDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyAlbumTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertyArtistName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongExplicitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongExplicit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongExplicitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelPropertySongArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipSongArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipSongAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipSongGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFMediaRouteDescriptorIsMissingRouteUIDError()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = WFLocalizedString(@"Invalid Output Device");
  v1 = WFLocalizedString(@"The device you specified can not be used for media playback.");
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D7CB30];
  v4 = *MEMORY[0x277CCA450];
  v8[0] = *MEMORY[0x277CCA470];
  v8[1] = v4;
  v9[0] = v0;
  v9[1] = v1;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v2 errorWithDomain:v3 code:5 userInfo:v5];

  return v6;
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreRoutineLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19758;
    v8 = 0;
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreRoutineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFGetParkedCarLocationAction.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRTRoutineManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFGetParkedCarLocationAction.m" lineNumber:22 description:{@"Unable to find class %s", "RTRoutineManager"}];

LABEL_10:
    __break(1u);
  }

  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __ContactsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19770;
    v8 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFContactAccessResource.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNContactStoreClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFContactAccessResource.m" lineNumber:16 description:{@"Unable to find class %s", "CNContactStore"}];

LABEL_10:
    __break(1u);
  }

  getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0592C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationOptionKeyLayoutRole");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SpringBoardServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_4190)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke_4191;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19840;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_4190 = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary_4190;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_4190)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFSplitScreenAppAction.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getSBSOpenApplicationLayoutRolePrimarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationLayoutRolePrimary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr;
  v9 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr;
  if (!getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr)
  {
    v1 = SpringBoardServicesLibrary();
    v7[3] = dlsym(v1, "SBSOpenApplicationOptionKeyLaunchBundleIdentifiers");
    getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSplitScreenAppAction.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E059624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSBSOpenApplicationOptionKeyWindowingFormat()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr;
  v9 = getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr;
  if (!getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr)
  {
    v1 = SpringBoardServicesLibrary();
    v7[3] = dlsym(v1, "SBSOpenApplicationOptionKeyWindowingFormat");
    getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationOptionKeyWindowingFormat(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSplitScreenAppAction.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E059788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationOptionKeyWindowingFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationOptionKeyWindowingFormatSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSOpenApplicationOptionKeyLaunchBundleIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSOpenApplicationOptionKeyLaunchBundleIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_4191(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_4190 = result;
  return result;
}

id WFMapsAppNamesByIdentifier()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.Maps";
  v2[1] = @"azdev.citymapper";
  v3[0] = @"Maps";
  v3[1] = @"Citymapper";
  v2[2] = @"com.google.Maps";
  v2[3] = @"com.samvermette.Transit";
  v3[2] = @"Google Maps";
  v3[3] = @"Transit";
  v2[4] = @"com.waze.iphone";
  v2[5] = @"com.baidu.map";
  v3[4] = @"Waze";
  v3[5] = @"Baidu Maps";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];

  return v0;
}

id WFLocalizedMapsAppNameForAppName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Maps"])
  {
    v2 = @"Maps";
LABEL_7:
    v3 = WFLocalizedString(v2);
    goto LABEL_8;
  }

  if ([v1 isEqualToString:@"Citymapper"])
  {
    v2 = @"Citymapper";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"Google Maps"])
  {
    v2 = @"Google Maps";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"Transit"])
  {
    v3 = WFLocalizedStringWithKey(@"Transit (App Name)", @"Transit");
  }

  else
  {
    if ([v1 isEqualToString:@"Waze"])
    {
      v2 = @"Waze";
      goto LABEL_7;
    }

    if ([v1 isEqualToString:@"Baidu Maps"])
    {
      v2 = @"Baidu Maps";
      goto LABEL_7;
    }

    v3 = v1;
  }

LABEL_8:
  v4 = v3;

  return v4;
}

id WFMapsAppIdentifierForAppName(void *a1)
{
  v1 = a1;
  v2 = WFMapsAppNamesByIdentifier();
  v3 = [v2 allKeysForObject:v1];

  v4 = [v3 firstObject];

  return v4;
}

void sub_23E05EFA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *TMURLDecode(CFStringRef originalString)
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(0, originalString, &stru_2850323E8);

  return v1;
}

__CFString *TMURLEncode(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 stringValue];
  }

  v3 = v2;
  v4 = CFURLCreateStringByAddingPercentEscapes(0, v2, 0, @"!*'();:@&=+$,/?%#[]%", 0x8000100u);

  return v4;
}

id type metadata for some(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v1 componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v6 count] == 2)
        {
          v7 = [v6 objectAtIndexedSubscript:0];
          v8 = TMURLDecode(v7);

          v9 = [v6 objectAtIndexedSubscript:1];
          v10 = TMURLDecode(v9);

          v11 = [v2 objectForKeyedSubscript:v8];
          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 addObject:v10];
            }

            else
            {
              [MEMORY[0x277CBEB18] arrayWithObjects:{v11, v10, 0}];
              v13 = v12 = v4;
              [v2 setObject:v13 forKey:v8];

              v4 = v12;
            }
          }

          else
          {
            [v2 setObject:v10 forKey:v8];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v14;
}

id TMDictionaryToQueryString(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __TMDictionaryToQueryString_block_invoke;
  aBlock[3] = &unk_278C19940;
  v20 = v2;
  v32 = v20;
  v3 = _Block_copy(aBlock);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v1 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v6 = [v5 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v21 = *v28;
    do
    {
      v9 = 0;
      v22 = v7;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [v1 objectForKeyedSubscript:{v10, v20}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v1;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v3[2](v3, v10, *(*(&v23 + 1) + 8 * i));
              }

              v15 = [v13 countByEnumeratingWithState:&v23 objects:v33 count:16];
            }

            while (v15);
          }

          v1 = v12;
          v8 = v21;
          v7 = v22;
        }

        else
        {
          (v3)[2](v3, v10, v11);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v7);
  }

  v18 = [v20 componentsJoinedByString:@"&"];

  return v18;
}

void __TMDictionaryToQueryString_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v9 = TMURLEncode(a2);
  v7 = TMURLEncode(v6);

  v8 = [v5 stringWithFormat:@"%@=%@", v9, v7];
  [v4 addObject:v8];
}

void WFPlaylistsMatchingDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 playlistName];

  if (v2)
  {
    MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
    v4 = [v1 playlistName];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v5 = getMPMediaPlaylistPropertyNameSymbolLoc_ptr;
    v37 = getMPMediaPlaylistPropertyNameSymbolLoc_ptr;
    if (!getMPMediaPlaylistPropertyNameSymbolLoc_ptr)
    {
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __getMPMediaPlaylistPropertyNameSymbolLoc_block_invoke;
      v32 = &unk_278C222B8;
      v33 = &v34;
      v6 = MediaPlayerLibrary_5429();
      v35[3] = dlsym(v6, "MPMediaPlaylistPropertyName");
      getMPMediaPlaylistPropertyNameSymbolLoc_ptr = *(v33[1] + 24);
      v5 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (v5)
    {
      v7 = [MPMediaPropertyPredicateClass predicateWithValue:v4 forProperty:*v5];

      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v8 = getMPMediaQueryClass_softClass;
      v37 = getMPMediaQueryClass_softClass;
      if (!getMPMediaQueryClass_softClass)
      {
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __getMPMediaQueryClass_block_invoke;
        v32 = &unk_278C222B8;
        v33 = &v34;
        __getMPMediaQueryClass_block_invoke(&v29);
        v8 = v35[3];
      }

      v9 = v8;
      _Block_object_dispose(&v34, 8);
      v10 = [v8 alloc];
      v11 = [MEMORY[0x277CBEB98] setWithObject:v7];
      v12 = [v10 initWithFilterPredicates:v11];

      [v12 setGroupingType:6];
      v13 = [v12 collections];
      v14 = [v13 count];

      if (v14)
      {
        v15 = [v12 collections];
        v16 = [v1 persistentIdentifier];

        if (v16)
        {
          v17 = getMPMediaPropertyPredicateClass();
          v18 = [v1 persistentIdentifier];
          v34 = 0;
          v35 = &v34;
          v36 = 0x2020000000;
          v19 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
          v37 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
          if (!getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr)
          {
            v29 = MEMORY[0x277D85DD0];
            v30 = 3221225472;
            v31 = __getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke;
            v32 = &unk_278C222B8;
            v33 = &v34;
            v20 = MediaPlayerLibrary_5429();
            v21 = dlsym(v20, "MPMediaPlaylistPropertyPersistentID");
            *(v33[1] + 24) = v21;
            getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(v33[1] + 24);
            v19 = v35[3];
          }

          _Block_object_dispose(&v34, 8);
          if (v19)
          {
            v22 = [v17 predicateWithValue:v18 forProperty:*v19];

            [v12 addFilterPredicate:v22];
            v23 = [v12 collections];
            v24 = [v23 count];

            if (v24)
            {
              v25 = [v12 collections];

              v15 = v25;
            }

            goto LABEL_17;
          }

          v27 = [MEMORY[0x277CCA890] currentHandler];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyPersistentID(void)"];
          [v27 handleFailureInFunction:v28 file:@"WFPlaylistSubstitutableState.m" lineNumber:21 description:{@"%s", dlerror(), v29, v30, v31, v32}];
LABEL_23:

          __break(1u);
          return;
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_17:

      goto LABEL_18;
    }

    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyName(void)"];
    [v27 handleFailureInFunction:v28 file:@"WFPlaylistSubstitutableState.m" lineNumber:20 description:{@"%s", dlerror(), v29, v30, v31, v32}];
    goto LABEL_23;
  }

  v15 = 0;
LABEL_18:

  v26 = v15;
}

void sub_23E06193C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaPropertyPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaPropertyPredicateClass_softClass;
  v7 = getMPMediaPropertyPredicateClass_softClass;
  if (!getMPMediaPropertyPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaPropertyPredicateClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getMPMediaPropertyPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E061A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaPlaylistPropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_5429();
  result = dlsym(v2, "MPMediaPlaylistPropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaPlayerLibrary_5429()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_5439)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_5440;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C199C8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_5439 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_5439;
  if (!MediaPlayerLibraryCore_frameworkLibrary_5439)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFPlaylistSubstitutableState.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5429();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistSubstitutableState.m" lineNumber:19 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_5429();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_5440(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_5439 = result;
  return result;
}

void __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5429();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPlaylistSubstitutableState.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void sub_23E062748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCLErrorDomainSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_5532)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreLocationLibraryCore_block_invoke_5533;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C19A08;
    v7 = 0;
    CoreLocationLibraryCore_frameworkLibrary_5532 = _sl_dlopen();
  }

  v2 = CoreLocationLibraryCore_frameworkLibrary_5532;
  if (!CoreLocationLibraryCore_frameworkLibrary_5532)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFGetCurrentLocationAction.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "kCLErrorDomain");
  *(*(a1[4] + 8) + 24) = result;
  getkCLErrorDomainSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_5533(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_5532 = result;
  return result;
}

void sub_23E063330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCalculateKeyLocalesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyLocales");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyLocalesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CalculateLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CalculateLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CalculateLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19A48;
    v6 = 0;
    CalculateLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CalculateLibraryCore_frameworkLibrary;
  if (!CalculateLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CalculateLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFCalculateExpressionAction.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCalculateKeyAllowUnitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowUnits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowUnitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyAllowConversionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowConversions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowConversionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyAllowCurrencyConversionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowCurrencyConversions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowCurrencyConversionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyAllowPartialExpressionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyAllowPartialExpressions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyAllowPartialExpressionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCalculateKeyPreferMixedUnitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CalculateLibrary();
  result = dlsym(v2, "CalculateKeyPreferMixedUnits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCalculateKeyPreferMixedUnitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCalculateClass_block_invoke(uint64_t a1)
{
  CalculateLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("Calculate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCalculateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCalculateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFCalculateExpressionAction.m" lineNumber:16 description:{@"Unable to find class %s", "Calculate"}];

    __break(1u);
  }
}

uint64_t __CalculateLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CalculateLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E0644B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkPMLPMSourceSiriSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LowPowerModeLibrary();
  result = dlsym(v2, "kPMLPMSourceSiri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkPMLPMSourceSiriSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *LowPowerModeLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!LowPowerModeLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LowPowerModeLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19A88;
    v6 = 0;
    LowPowerModeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = LowPowerModeLibraryCore_frameworkLibrary;
  if (!LowPowerModeLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *LowPowerModeLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFLowPowerModeSettingsClient.m" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __LowPowerModeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LowPowerModeLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E064F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCTTelephonyNetworkInfoClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CTTelephonyNetworkInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTTelephonyNetworkInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTTelephonyNetworkInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFGetNetworkDetailsAction.m" lineNumber:26 description:{@"Unable to find class %s", "CTTelephonyNetworkInfo"}];

    __break(1u);
  }
}

void __getCoreTelephonyClientClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CoreTelephonyClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCoreTelephonyClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCoreTelephonyClientClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFGetNetworkDetailsAction.m" lineNumber:27 description:{@"Unable to find class %s", "CoreTelephonyClient"}];

    __break(1u);
  }
}

id getCTServiceDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCTServiceDescriptorClass_softClass;
  v7 = getCTServiceDescriptorClass_softClass;
  if (!getCTServiceDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCTServiceDescriptorClass_block_invoke;
    v3[3] = &unk_278C222B8;
    v3[4] = &v4;
    __getCTServiceDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E0671E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTRadioAccessTechnologyGPRSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyGPRS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyGPRSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreTelephonyLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreTelephonyLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19AE8;
    v6 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFGetNetworkDetailsAction.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCTRadioAccessTechnologyEdgeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyEdge");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyEdgeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyWCDMASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyWCDMA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyWCDMASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyHSDPASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyHSDPA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyHSDPASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyHSUPASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyHSUPA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyHSUPASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMA1xSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMA1x");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMAEVDORev0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMAEVDORevA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyCDMAEVDORevB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyeHRPDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyeHRPD");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyLTESymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyLTE");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyLTESymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyNRNSASymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyNRNSA");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyNRNSASymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTRadioAccessTechnologyNRSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "CTRadioAccessTechnologyNR");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTRadioAccessTechnologyNRSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  return result;
}

void __getCTServiceDescriptorClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CTServiceDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTServiceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCTServiceDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFGetNetworkDetailsAction.m" lineNumber:28 description:{@"Unable to find class %s", "CTServiceDescriptor"}];

    __break(1u);
  }
}

xmlParserInputPtr enxmlExternalEntityLoader(uint64_t a1, uint64_t a2, xmlParserCtxt *a3)
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 encoding:4];
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
  v8 = v7;
  if (!v7)
  {
    v14 = 0;
LABEL_13:
    if (defaultExternalEntityLoader)
    {
      v14 = defaultExternalEntityLoader(a1, a2, a3);
    }

    goto LABEL_15;
  }

  v9 = [v7 path];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 lastPathComponent];
    if (v11)
    {
      v12 = [ENSDKResourceLoader pathToResourceNamed:v11 extension:0];
      v13 = v12;
      if (v12)
      {
        v14 = xmlNewInputFromFile(a3, [v12 fileSystemRepresentation]);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v14;
}

uint64_t waitsocket(int a1, uint64_t a2)
{
  v9.tv_sec = 0;
  *&v9.tv_usec = 500000;
  memset(v8, 0, sizeof(v8));
  if (__darwin_check_fd_set_overflow(a1, v8, 0))
  {
    *(&v8[0].tv_sec + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v4 = libssh2_session_block_directions(a2);
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 2) != 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return select(a1 + 1, v5, v6, 0, &v9);
}

void sub_23E069DA4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E06B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSSReadingListClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SafariServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C19D20;
    v8 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAddToReadingListAction.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSReadingList");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSSReadingListClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAddToReadingListAction.m" lineNumber:24 description:{@"Unable to find class %s", "SSReadingList"}];

LABEL_10:
    __break(1u);
  }

  getSSReadingListClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E06C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXGetComponentsInSiriVoiceIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXGetComponentsInSiriVoiceIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AccessibilityUtilitiesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C19DB8;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFSpeechSynthesisVoice.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}