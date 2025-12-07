_OWORD *GOSTR341194(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v11[525] = *MEMORY[0x277D85DE8];
  bzero(v10, 0x1094uLL);
  if (Gost2814789_set_sbox(v11, v3))
  {
    if (!v5)
    {
      v5 = &GOSTR341194_m;
    }

    GOSTR341194_Update(v10, v8, v7);
    GOSTR341194_Final(v5, v10);
    explicit_bzero(v10, 0x1094uLL);
  }

  return 0;
}

__n128 transform_3(uint64_t a1)
{
  v1 = *(a1 + 2) ^ *a1 ^ *(a1 + 4) ^ *(a1 + 6) ^ *(a1 + 24) ^ *(a1 + 30);
  v2 = *(a1 + 3) ^ *(a1 + 1) ^ *(a1 + 5) ^ *(a1 + 7) ^ *(a1 + 25) ^ *(a1 + 31);
  result = *(a1 + 2);
  *(a1 + 16) = *(a1 + 18);
  *a1 = result;
  *(a1 + 24) = *(a1 + 26);
  *(a1 + 28) = *(a1 + 30);
  *(a1 + 30) = v1;
  *(a1 + 31) = v2;
  return result;
}

uint64_t OBJ_find_sigid_algs(int a1, _DWORD *a2, _DWORD *a3)
{
  v8 = 0;
  *data = a1;
  if (sig_app && (v5 = sk_find(sig_app, data), (v5 & 0x80000000) == 0) && (result = sk_value(sig_app, v5)) != 0 || (result = OBJ_bsearch_(data, "\a", 42, 12, sig_cmp_BSEARCH_CMP_FN)) != 0)
  {
    if (a2)
    {
      *a2 = *(result + 4);
    }

    if (a3)
    {
      *a3 = *(result + 8);
    }

    return 1;
  }

  return result;
}

uint64_t OBJ_find_sigid_by_algs(_DWORD *a1, int a2, int a3)
{
  *key = data;
  *data = 0;
  v8 = a2;
  v9 = a3;
  if (!sigx_app || (v4 = sk_find(sigx_app, data), v4 < 0))
  {
    result = OBJ_bsearch_(key, &sigoid_srt_xref, 42, 8, sigx_cmp_BSEARCH_CMP_FN);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *key = sk_value(sigx_app, v4);
    result = key;
  }

  if (a1)
  {
    *a1 = **result;
  }

  return 1;
}

uint64_t OBJ_add_sigid(int a1, int a2, int a3)
{
  if (sig_app || (result = sk_new(sig_sk_cmp), (sig_app = result) != 0))
  {
    if (sigx_app || (result = sk_new(sigx_cmp), (sigx_app = result) != 0))
    {
      result = reallocarray(0, 3uLL, 4uLL);
      if (result)
      {
        v7 = result;
        *result = a1;
        *(result + 4) = a2;
        *(result + 8) = a3;
        if (sk_push(sig_app, result))
        {
          result = sk_push(sigx_app, v7);
          if (result)
          {
            sk_sort(sig_app);
            sk_sort(sigx_app);
            return 1;
          }
        }

        else
        {
          free(v7);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sigx_cmp(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  v4 = *(*a2 + 4);
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*(v2 + 8) - *(*a2 + 8));
  }

  return result;
}

void OBJ_sigid_free()
{
  if (sig_app)
  {
    sk_pop_free(sig_app, sid_free);
    sig_app = 0;
  }

  if (sigx_app)
  {
    sk_free(sigx_app);
    sigx_app = 0;
  }
}

uint64_t sigx_cmp_BSEARCH_CMP_FN(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  v4 = *(*a2 + 4);
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*(v2 + 8) - *(*a2 + 8));
  }

  return result;
}

int ENGINE_register_ciphers(ENGINE *e)
{
  v1 = *(e + 10);
  if (!v1)
  {
    return 1;
  }

  v3 = v1();
  if (v3 <= 0)
  {
    return 1;
  }

  else
  {
    return engine_table_register(&cipher_table, engine_unregister_all_ciphers, e, 0, v3, 0);
  }
}

void ENGINE_register_all_ciphers(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      ENGINE_register_ciphers(next);
      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_ciphers(ENGINE *e)
{
  v1 = *(e + 10);
  if (!v1)
  {
    return 1;
  }

  v3 = v1();
  if (v3 <= 0)
  {
    return 1;
  }

  else
  {
    return engine_table_register(&cipher_table, engine_unregister_all_ciphers, e, 0, v3, 1);
  }
}

const EVP_CIPHER *__cdecl ENGINE_get_cipher(ENGINE *e, int nid)
{
  v4 = 0;
  v2 = *(e + 10);
  if (v2 && v2())
  {
    return v4;
  }

  ERR_put_error(38, 4095, 146, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/tb_cipher.c", 133);
  return 0;
}

int EVP_CIPHER_param_to_asn1(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
  set_asn1_parameters = c->cipher->set_asn1_parameters;
  if (set_asn1_parameters)
  {
    return set_asn1_parameters();
  }

  if ((c->cipher->flags & 0x1000) != 0)
  {
    return EVP_CIPHER_set_asn1_iv(c, type);
  }

  return -1;
}

int EVP_CIPHER_set_asn1_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
  if (!type)
  {
    return 0;
  }

  iv_len = c->cipher->iv_len;
  if (iv_len >= 0x11)
  {
    ERR_put_error(6, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_lib.c", 127);
    return 0;
  }

  return ASN1_TYPE_set_octetstring(type, c->oiv, iv_len);
}

int EVP_CIPHER_asn1_to_param(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
  get_asn1_parameters = c->cipher->get_asn1_parameters;
  if (get_asn1_parameters)
  {
    return get_asn1_parameters();
  }

  if ((c->cipher->flags & 0x1000) != 0)
  {
    return EVP_CIPHER_get_asn1_iv(c, type);
  }

  return -1;
}

int EVP_CIPHER_get_asn1_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
  if (!type)
  {
    goto LABEL_4;
  }

  iv_len = c->cipher->iv_len;
  if (iv_len >= 0x11)
  {
    ERR_put_error(6, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_lib.c", 106);
LABEL_4:
    LODWORD(iv_len) = 0;
    return iv_len;
  }

  if (ASN1_TYPE_get_octetstring(type, c->oiv, iv_len) == iv_len)
  {
    if (iv_len)
    {
      memcpy(c->iv, c->oiv, iv_len);
    }
  }

  else
  {
    LODWORD(iv_len) = -1;
  }

  return iv_len;
}

int EVP_CIPHER_type(const EVP_CIPHER *ctx)
{
  nid = ctx->nid;
  if (ctx->nid > 649)
  {
    if (nid > 654)
    {
      if ((nid - 656) < 2 || (nid - 658) < 2)
      {
        return 30;
      }

      if (nid != 655)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (nid <= 651)
      {
        if (nid != 650)
        {
          return 425;
        }

        return 421;
      }

      if (nid != 652)
      {
        if (nid != 653)
        {
          return 425;
        }

        return 421;
      }
    }

    return 429;
  }

  result = 37;
  if (nid <= 97)
  {
    if (nid <= 36)
    {
      if (nid == 5)
      {
        return 5;
      }

      if (nid != 30)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (nid == 37)
      {
        return result;
      }

      if (nid != 61)
      {
        if (nid != 97)
        {
          goto LABEL_30;
        }

        return 5;
      }
    }

    return 30;
  }

  if (nid <= 420)
  {
    if (nid == 98 || nid == 166)
    {
      return result;
    }

    goto LABEL_30;
  }

  switch(nid)
  {
    case 421:
      return 421;
    case 425:
      return 425;
    case 429:
      return 429;
  }

LABEL_30:
  v3 = OBJ_nid2obj(nid);
  if (!v3 || !v3->data)
  {
    nid = 0;
  }

  ASN1_OBJECT_free(v3);
  return nid;
}

uint64_t EVP_CIPHER_CTX_set_cipher_data(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  *(a1 + 120) = a2;
  return v2;
}

uint64_t EVP_CIPHER_CTX_get_iv(uint64_t result, void *__dst, size_t a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a3 <= 0x10 && *(*v3 + 12) == a3)
    {
      if (a3)
      {
        if (__dst)
        {
          memcpy(__dst, (v3 + 40), a3);
          return 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t EVP_CIPHER_CTX_set_iv(uint64_t result, const void *a2, size_t a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a3 <= 0x10 && *(*v3 + 12) == a3)
    {
      if (a3)
      {
        if (a2)
        {
          memcpy((v3 + 40), a2, a3);
          return 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

int EVP_MD_size(const EVP_MD *md)
{
  if (md)
  {
    return md->md_size;
  }

  ERR_put_error(6, 4095, 159, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/evp_lib.c", 362);
  return -1;
}

_DWORD *EVP_MD_meth_new(int a1, int a2)
{
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x1080040DE93153CuLL);
  if (result)
  {
    *result = a1;
    result[1] = a2;
  }

  return result;
}

_OWORD *EVP_MD_meth_dup(uint64_t *a1)
{
  v2 = *a1;
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x1080040DE93153CuLL);
  if (result)
  {
    *result = v2;
    *result = *a1;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *(a1 + 4);
    result[3] = *(a1 + 3);
    result[4] = v6;
    result[1] = v4;
    result[2] = v5;
  }

  return result;
}

const EVP_MD *__cdecl EVP_MD_CTX_md(const EVP_MD *ctx)
{
  if (ctx)
  {
    return *&ctx->type;
  }

  return ctx;
}

void EVP_MD_CTX_set_pkey_ctx(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if ((v4 & 0x400) != 0)
  {
    *(result + 16) = v4 & 0xFFFFFFFFFFFFFBFFLL;
  }

  else
  {
    EVP_PKEY_CTX_free(*(result + 32));
  }

  *(result + 32) = a2;
  if (a2)
  {
    *(result + 16) |= 0x400uLL;
  }
}

_BYTE *i2s_ASN1_IA5STRING(uint64_t a1, const void **a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  v4 = malloc_type_malloc(v3 + 1, 0x8DB9FCBEuLL);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, a2[1], *a2);
    v5[*a2] = 0;
  }

  else
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_ia5.c", 210);
  }

  return v5;
}

ASN1_STRING *s2i_ASN1_IA5STRING(uint64_t a1, uint64_t a2, const char *a3)
{
  if (!a3)
  {
    v7 = 107;
    v8 = 223;
    goto LABEL_7;
  }

  v4 = ASN1_IA5STRING_new();
  if (!v4)
  {
LABEL_5:
    v7 = 65;
    v8 = 236;
LABEL_7:
    ERR_put_error(34, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_ia5.c", v8);
    return 0;
  }

  v5 = v4;
  v6 = strlen(a3);
  if (!ASN1_STRING_set(v5, a3, v6))
  {
    ASN1_IA5STRING_free(v5);
    goto LABEL_5;
  }

  return v5;
}

uint64_t Camellia_Ekeygen(int a1, unsigned __int8 *a2, unsigned int *a3)
{
  v3 = (*a2 << 24) | (a2[1] << 16);
  v4 = v3 | (bswap32(*(a2 + 1)) >> 16);
  *a3 = v4;
  v5 = (a2[4] << 24) | (a2[5] << 16);
  v6 = v5 | (bswap32(*(a2 + 3)) >> 16);
  a3[1] = v6;
  v7 = (a2[8] << 24) | (a2[9] << 16);
  v8 = v7 | (bswap32(*(a2 + 5)) >> 16);
  a3[2] = v8;
  v9 = (a2[12] << 24) | (a2[13] << 16);
  v10 = v9 | (bswap32(*(a2 + 7)) >> 16);
  a3[3] = v10;
  if (a1 == 128)
  {
    v11 = v10;
    v12 = v8;
    v13 = v6;
    v14 = v4;
  }

  else
  {
    v15 = bswap32(*(a2 + 4));
    a3[8] = v15;
    v16 = bswap32(*(a2 + 5));
    a3[9] = v16;
    if (a1 == 192)
    {
      v17 = ~v15;
      a3[10] = ~v15;
      v18 = ~v16;
    }

    else
    {
      v17 = bswap32(*(a2 + 6));
      a3[10] = v17;
      v18 = bswap32(*(a2 + 7));
    }

    a3[11] = v18;
    v14 = v15 ^ v4;
    v13 = v16 ^ v6;
    v12 = v17 ^ v8;
    v11 = v18 ^ v10;
  }

  v19 = Camellia_SBOX[((v14 ^ 0x667F) >> 8) + 768] ^ Camellia_SBOX[(v14 ^ 0x7F) + 256] ^ Camellia_SBOX[((v14 ^ 0xA09E667F) >> 16) + 512] ^ Camellia_SBOX[(v14 ^ 0xA09E667F) >> 24];
  v20 = __ROR4__(v19, 8);
  v21 = Camellia_SBOX[((v13 ^ 0x908B) >> 8) + 256] ^ Camellia_SBOX[v13 ^ 0x8B] ^ Camellia_SBOX[((v13 ^ 0x3BCC908Bu) >> 16) + 768] ^ Camellia_SBOX[((v13 ^ 0x3BCC908Bu) >> 24) + 512] ^ v19;
  v22 = v21 ^ v12;
  v23 = v11 ^ v20 ^ v21;
  v24 = Camellia_SBOX[((v21 ^ v12 ^ 0xE858) >> 8) + 768] ^ Camellia_SBOX[((v21 ^ v12) ^ 0x58) + 256] ^ Camellia_SBOX[((v21 ^ v12 ^ 0xB67AE858) >> 16) + 512] ^ Camellia_SBOX[(v21 ^ v12 ^ 0xB67AE858) >> 24];
  v25 = Camellia_SBOX[((v23 ^ 0x73B2) >> 8) + 256] ^ Camellia_SBOX[v23 ^ 0xB2] ^ Camellia_SBOX[((v23 ^ 0x4CAA73B2u) >> 16) + 768] ^ Camellia_SBOX[((v23 ^ 0x4CAA73B2u) >> 24) + 512] ^ v24;
  v26 = v14 ^ v4 ^ v25;
  v27 = v6 ^ __ROR4__(v24, 8) ^ v13 ^ v25;
  v28 = v22 ^ v8;
  v29 = Camellia_SBOX[((v26 ^ 0x372F) >> 8) + 768] ^ Camellia_SBOX[(v26 ^ 0x2F) + 256] ^ Camellia_SBOX[((v26 ^ 0xC6EF372F) >> 16) + 512] ^ Camellia_SBOX[(v26 ^ 0xC6EF372F) >> 24];
  v30 = Camellia_SBOX[((v27 ^ 0x82BE) >> 8) + 256] ^ Camellia_SBOX[v27 ^ 0xBE] ^ Camellia_SBOX[((v27 ^ 0xE94F82BE) >> 16) + 768] ^ Camellia_SBOX[((v27 ^ 0xE94F82BE) >> 24) + 512] ^ v29;
  v31 = v28 ^ v30;
  v32 = __ROR4__(v29, 8);
  v33 = v10 ^ v32 ^ v23 ^ v30;
  v34 = Camellia_SBOX[((v10 ^ v32 ^ v23 ^ v30 ^ 0x6F1C) >> 8) + 256] ^ Camellia_SBOX[(v10 ^ v32 ^ v23 ^ v30) ^ 0x1C];
  v35 = Camellia_SBOX[((v31 ^ 0x53A5) >> 8) + 768] ^ Camellia_SBOX[(v31 ^ 0xA5) + 256] ^ Camellia_SBOX[((v31 ^ 0x54FF53A5u) >> 16) + 512] ^ Camellia_SBOX[(v31 ^ 0x54FF53A5u) >> 24];
  v36 = __ROR4__(v35, 8);
  v37 = v34 ^ Camellia_SBOX[((v33 ^ 0xF1D36F1C) >> 16) + 768] ^ Camellia_SBOX[((v33 ^ 0xF1D36F1C) >> 24) + 512] ^ v35;
  v38 = v37 ^ v26;
  v39 = v27 ^ v36 ^ v37;
  if (a1 == 128)
  {
    v40 = __PAIR64__(v38, v39) >> 17;
    v41 = __PAIR64__(v39, v31) >> 17;
    v42 = __PAIR64__(v31, v33) >> 17;
    v43 = __PAIR64__(v33, v38) >> 17;
    v44 = __PAIR64__(v40, v41) >> 17;
    v45 = __PAIR64__(v41, v42) >> 17;
    a3[4] = v38;
    a3[5] = v39;
    v46 = __PAIR64__(v42, v43) >> 17;
    v47 = __PAIR64__(v43, v40) >> 17;
    a3[6] = v31;
    a3[7] = v33;
    v48 = __PAIR64__(__PAIR64__(v41, v42) >> 17, v46) >> 17;
    a3[12] = v40;
    a3[13] = v41;
    a3[14] = v42;
    a3[15] = v43;
    HIDWORD(v50) = __PAIR64__(__PAIR64__(v40, v41) >> 17, v45) >> 17;
    LODWORD(v50) = v48;
    v49 = v50 >> 17;
    HIDWORD(v50) = v48;
    LODWORD(v50) = __PAIR64__(v46, v47) >> 17;
    v51 = v50 >> 17;
    a3[16] = v44;
    a3[17] = v45;
    HIDWORD(v50) = v50;
    LODWORD(v50) = __PAIR64__(v47, v44) >> 17;
    v52 = v50 >> 17;
    HIDWORD(v50) = v50;
    LODWORD(v50) = __PAIR64__(v44, v45) >> 17;
    a3[18] = v46;
    a3[19] = v47;
    v54 = __PAIR64__(v51, v52) >> 30;
    a3[24] = v50;
    a3[25] = v48;
    HIDWORD(v50) = v50 >> 17;
    v53 = HIDWORD(v50);
    LODWORD(v50) = v49;
    v55 = v50 >> 30;
    v56 = __PAIR64__(v49, v51) >> 30;
    a3[28] = v49;
    a3[29] = v51;
    HIDWORD(v50) = v54;
    LODWORD(v50) = __PAIR64__(v52, v53) >> 30;
    a3[30] = v52;
    a3[31] = v53;
    v57 = __PAIR64__(v4, v5) >> 17;
    a3[40] = v54;
    a3[41] = v50;
    v58 = __PAIR64__(v6, v7) >> 17;
    a3[42] = v55;
    a3[43] = v56;
    v59 = __PAIR64__(v8, v9) >> 17;
    v60 = __PAIR64__(v10, v3) >> 17;
    a3[48] = v50 >> 15;
    a3[49] = __PAIR64__(v50, v55) >> 15;
    v61 = __PAIR64__(v57, v58) >> 2;
    v62 = __PAIR64__(v58, v59) >> 2;
    a3[50] = __PAIR64__(v55, v56) >> 15;
    a3[51] = __PAIR64__(__PAIR64__(v49, v51) >> 30, v54) >> 15;
    v63 = __PAIR64__(v59, v60) >> 2;
    v64 = __PAIR64__(v60, v57) >> 2;
    a3[8] = v57;
    a3[9] = v58;
    v65 = __PAIR64__(v61, v62) >> 17;
    a3[10] = v59;
    a3[11] = v60;
    v66 = __PAIR64__(v63, v64) >> 17;
    v67 = __PAIR64__(v64, v61) >> 17;
    a3[20] = v61;
    a3[21] = v62;
    v68 = __PAIR64__(__PAIR64__(v61, v62) >> 17, __PAIR64__(v62, v63) >> 17) >> 15;
    v69 = __PAIR64__(__PAIR64__(v62, v63) >> 17, v66) >> 15;
    a3[22] = v63;
    a3[23] = v64;
    v70 = __PAIR64__(v66, v67) >> 15;
    v71 = __PAIR64__(v67, v65) >> 15;
    a3[26] = v66;
    a3[27] = v67;
    v72 = __PAIR64__(v68, v69) >> 15;
    v73 = __PAIR64__(v69, v70) >> 15;
    a3[32] = v68;
    a3[33] = v69;
    v74 = __PAIR64__(v70, v71) >> 15;
    v75 = __PAIR64__(v71, v68) >> 15;
    a3[34] = v70;
    a3[35] = v71;
    v76 = __PAIR64__(v72, v73) >> 15;
    result = 3;
    v78 = __PAIR64__(v73, v74) >> 15;
    a3[36] = v72;
    a3[37] = v73;
    a3[38] = v74;
    a3[39] = v75;
    v79 = __PAIR64__(v74, v75) >> 15;
    v80 = 47;
    v81 = 46;
    v82 = 45;
    v83 = 44;
    v84 = __PAIR64__(v75, v72) >> 15;
  }

  else
  {
    v85 = a3[8];
    v86 = a3[9];
    v144 = v5;
    v145 = v3;
    v88 = a3[10];
    v87 = a3[11];
    v89 = Camellia_SBOX[((v85 ^ v38 ^ 0x27FA) >> 8) + 768] ^ Camellia_SBOX[((v85 ^ v38) ^ 0xFA) + 256] ^ Camellia_SBOX[((v85 ^ v38 ^ 0x10E527FA) >> 16) + 512] ^ Camellia_SBOX[(v85 ^ v38 ^ 0x10E527FA) >> 24];
    v90 = Camellia_SBOX[((v86 ^ v39 ^ 0x2D1D) >> 8) + 256] ^ Camellia_SBOX[(v86 ^ v39) ^ 0x1D] ^ Camellia_SBOX[((v86 ^ v39 ^ 0xDE682D1D) >> 16) + 768] ^ Camellia_SBOX[((v86 ^ v39 ^ 0xDE682D1D) >> 24) + 512] ^ v89;
    v91 = v88 ^ v31 ^ v90;
    v92 = v33 ^ __ROR4__(v89, 8) ^ v87 ^ v90;
    v93 = Camellia_SBOX[((v91 ^ 0x88C2) >> 8) + 768] ^ Camellia_SBOX[(v91 ^ 0xC2) + 256] ^ Camellia_SBOX[((v91 ^ 0xB05688C2) >> 16) + 512] ^ Camellia_SBOX[(v91 ^ 0xB05688C2) >> 24];
    v94 = __PAIR64__(v91, __ROR4__(v93, 8));
    v95 = Camellia_SBOX[((v92 ^ 0xC1FD) >> 8) + 256] ^ Camellia_SBOX[v92 ^ 0xFD] ^ Camellia_SBOX[((v92 ^ 0xB3E6C1FD) >> 16) + 768] ^ Camellia_SBOX[((v92 ^ 0xB3E6C1FD) >> 24) + 512] ^ v93;
    v96 = v95 ^ v85 ^ v38;
    v97 = v86 ^ v39 ^ v94 ^ v95;
    v98 = __PAIR64__(v96, v97) >> 2;
    a3[4] = v96;
    a3[5] = v97;
    v99 = __PAIR64__(v97, v91) >> 2;
    LODWORD(v94) = v92;
    v100 = v94 >> 2;
    a3[6] = v91;
    a3[7] = v92;
    v101 = __PAIR64__(v92, v96) >> 2;
    v102 = __PAIR64__(v98, v99) >> 2;
    a3[20] = v98;
    a3[21] = v99;
    v103 = __PAIR64__(v99, v100) >> 2;
    v104 = __PAIR64__(v100, v101) >> 2;
    a3[22] = v100;
    a3[23] = v101;
    v105 = __PAIR64__(v101, v98) >> 2;
    a3[40] = v102;
    a3[41] = v103;
    v106 = __PAIR64__(v104, v105);
    v107 = __PAIR64__(v105, v102) >> 13;
    a3[42] = v104;
    a3[43] = v105;
    v108 = __PAIR64__(v102, v103) >> 13;
    a3[64] = __PAIR64__(v103, v104) >> 13;
    a3[65] = v106 >> 13;
    a3[66] = v107;
    v109 = __PAIR64__(v85, v86) >> 17;
    a3[67] = v108;
    v110 = __PAIR64__(v87, v85) >> 17;
    HIDWORD(v106) = v109;
    LODWORD(v106) = __PAIR64__(v86, v88) >> 17;
    v111 = v106 >> 17;
    a3[8] = v109;
    a3[9] = v106;
    HIDWORD(v106) = v106;
    LODWORD(v106) = __PAIR64__(v88, v87) >> 17;
    v112 = v106 >> 17;
    v113 = __PAIR64__(v106, v110) >> 17;
    a3[10] = v106;
    a3[11] = v110;
    v114 = __PAIR64__(v110, v109) >> 17;
    v115 = __PAIR64__(v111, v112) >> 2;
    a3[16] = v111;
    a3[17] = v112;
    v116 = __PAIR64__(v106 >> 17, v113) >> 2;
    v117 = __PAIR64__(v113, v114);
    a3[18] = v113;
    a3[19] = v114;
    v118 = __PAIR64__(v114, v111) >> 2;
    a3[36] = v115;
    a3[37] = v116;
    HIDWORD(v117) = v117 >> 2;
    LODWORD(v117) = v118;
    v119 = __PAIR64__(v118, v115) >> 30;
    a3[38] = HIDWORD(v117);
    a3[39] = v118;
    v120 = __PAIR64__(v115, v116) >> 30;
    v121 = __PAIR64__(v38, v39) >> 17;
    a3[52] = __PAIR64__(v116, HIDWORD(v117)) >> 30;
    a3[53] = v117 >> 30;
    v122 = __PAIR64__(v39, v31) >> 17;
    v123 = __PAIR64__(v31, v33) >> 17;
    a3[54] = v119;
    a3[55] = v120;
    v124 = __PAIR64__(v33, v38) >> 17;
    v125 = __PAIR64__(v121, v122) >> 2;
    a3[12] = v121;
    a3[13] = v122;
    v126 = __PAIR64__(v122, v123) >> 2;
    v127 = __PAIR64__(v123, v124) >> 2;
    a3[14] = v123;
    a3[15] = v124;
    v128 = __PAIR64__(v124, v121) >> 2;
    a3[28] = v125;
    a3[29] = v126;
    a3[30] = v127;
    a3[31] = v128;
    v129 = __PAIR64__(v126, v127) >> 15;
    v130 = __PAIR64__(v127, v128) >> 15;
    a3[48] = v126;
    a3[49] = v127;
    v131 = __PAIR64__(v128, v125) >> 15;
    a3[50] = v128;
    a3[51] = v125;
    v132 = __PAIR64__(v6, v7) >> 19;
    v133 = __PAIR64__(v8, v9) >> 19;
    a3[56] = v129;
    a3[57] = v130;
    v134 = __PAIR64__(v10, v145) >> 19;
    v135 = __PAIR64__(v4, v144) >> 19;
    a3[58] = v131;
    a3[59] = __PAIR64__(v125, v126) >> 15;
    v136 = __PAIR64__(v132, v133) >> 17;
    v137 = __PAIR64__(v133, v134) >> 17;
    a3[24] = v132;
    a3[25] = v133;
    v138 = __PAIR64__(__PAIR64__(v10, v145) >> 19, v135) >> 17;
    v139 = __PAIR64__(v135, v132) >> 17;
    a3[26] = v134;
    a3[27] = v135;
    v140 = __PAIR64__(v136, v137) >> 15;
    HIDWORD(v117) = v137;
    LODWORD(v117) = __PAIR64__(v134, v135) >> 17;
    v141 = v117 >> 15;
    a3[32] = v136;
    a3[33] = v137;
    v142 = __PAIR64__(v117, v139) >> 15;
    v143 = __PAIR64__(v139, v136) >> 15;
    a3[34] = v138;
    a3[35] = v139;
    v76 = __PAIR64__(v117 >> 15, v142) >> 30;
    result = 4;
    v78 = __PAIR64__(v142, v143) >> 30;
    a3[44] = v140;
    a3[45] = v141;
    a3[46] = v142;
    a3[47] = v143;
    v79 = __PAIR64__(v143, v140) >> 30;
    v80 = 63;
    v81 = 62;
    v82 = 61;
    v83 = 60;
    v84 = __PAIR64__(v140, v141) >> 30;
  }

  a3[v83] = v76;
  a3[v82] = v78;
  a3[v81] = v79;
  a3[v80] = v84;
  return result;
}

uint64_t Camellia_EncryptBlock_Rounds(int a1, unsigned int *a2, _DWORD *a3, _BYTE *a4)
{
  v4 = bswap32(*a2) ^ *a3;
  v5 = bswap32(a2[1]) ^ a3[1];
  v6 = bswap32(a2[2]) ^ a3[2];
  v7 = &a3[16 * a1];
  v8 = bswap32(a2[3]) ^ a3[3];
  for (i = a3 + 19; ; i += 16)
  {
    v10 = Camellia_SBOX[((*(i - 30) ^ v4) >> 8) + 768] ^ Camellia_SBOX[(*(i - 60) ^ v4) + 256] ^ Camellia_SBOX[((*(i - 15) ^ v4) >> 16) + 512] ^ Camellia_SBOX[(*(i - 15) ^ v4) >> 24];
    v11 = __ROR4__(v10, 8);
    v12 = Camellia_SBOX[((*(i - 28) ^ v5) >> 8) + 256] ^ Camellia_SBOX[(*(i - 56) ^ v5)] ^ Camellia_SBOX[((*(i - 14) ^ v5) >> 16) + 768] ^ Camellia_SBOX[((*(i - 14) ^ v5) >> 24) + 512] ^ v10;
    v13 = v12 ^ v6;
    v14 = v8 ^ v11 ^ v12;
    v15 = Camellia_SBOX[((v13 ^ *(i - 26)) >> 8) + 768] ^ Camellia_SBOX[(v13 ^ *(i - 52)) + 256] ^ Camellia_SBOX[((v13 ^ *(i - 13)) >> 16) + 512] ^ Camellia_SBOX[(v13 ^ *(i - 13)) >> 24];
    v16 = __ROR4__(v15, 8);
    v17 = Camellia_SBOX[((v14 ^ *(i - 24)) >> 8) + 256] ^ Camellia_SBOX[(v14 ^ *(i - 48))] ^ Camellia_SBOX[((v14 ^ *(i - 12)) >> 16) + 768] ^ Camellia_SBOX[((v14 ^ *(i - 12)) >> 24) + 512] ^ v15;
    v18 = v17 ^ v4;
    v19 = v5 ^ v16 ^ v17;
    v20 = Camellia_SBOX[((v18 ^ *(i - 22)) >> 8) + 768] ^ Camellia_SBOX[(v18 ^ *(i - 44)) + 256] ^ Camellia_SBOX[((v18 ^ *(i - 11)) >> 16) + 512] ^ Camellia_SBOX[(v18 ^ *(i - 11)) >> 24];
    v21 = __ROR4__(v20, 8);
    v22 = Camellia_SBOX[((v19 ^ *(i - 20)) >> 8) + 256] ^ Camellia_SBOX[(v19 ^ *(i - 40))] ^ Camellia_SBOX[((v19 ^ *(i - 10)) >> 16) + 768] ^ Camellia_SBOX[((v19 ^ *(i - 10)) >> 24) + 512] ^ v20;
    v23 = v22 ^ v13;
    v24 = v14 ^ v21 ^ v22;
    v25 = Camellia_SBOX[((v23 ^ *(i - 18)) >> 8) + 768] ^ Camellia_SBOX[(v23 ^ *(i - 36)) + 256] ^ Camellia_SBOX[((v23 ^ *(i - 9)) >> 16) + 512] ^ Camellia_SBOX[(v23 ^ *(i - 9)) >> 24];
    v26 = __ROR4__(v25, 8);
    v27 = Camellia_SBOX[((v24 ^ *(i - 16)) >> 8) + 256] ^ Camellia_SBOX[(v24 ^ *(i - 32))] ^ Camellia_SBOX[((v24 ^ *(i - 8)) >> 16) + 768] ^ Camellia_SBOX[((v24 ^ *(i - 8)) >> 24) + 512] ^ v25;
    v28 = v27 ^ v18;
    v29 = v19 ^ v26 ^ v27;
    v30 = Camellia_SBOX[((v28 ^ *(i - 14)) >> 8) + 768] ^ Camellia_SBOX[(v28 ^ *(i - 28)) + 256] ^ Camellia_SBOX[((v28 ^ *(i - 7)) >> 16) + 512] ^ Camellia_SBOX[(v28 ^ *(i - 7)) >> 24];
    v31 = v24 ^ __ROR4__(v30, 8);
    v32 = Camellia_SBOX[((v29 ^ *(i - 12)) >> 8) + 256] ^ Camellia_SBOX[(v29 ^ *(i - 24))] ^ Camellia_SBOX[((v29 ^ *(i - 6)) >> 16) + 768] ^ Camellia_SBOX[((v29 ^ *(i - 6)) >> 24) + 512] ^ v30;
    result = v32 ^ v23;
    v34 = v31 ^ v32;
    v35 = Camellia_SBOX[((result ^ *(i - 10)) >> 8) + 768] ^ Camellia_SBOX[(result ^ *(i - 20)) + 256] ^ Camellia_SBOX[((result ^ *(i - 5)) >> 16) + 512] ^ Camellia_SBOX[(result ^ *(i - 5)) >> 24];
    v36 = Camellia_SBOX[((v34 ^ *(i - 8)) >> 8) + 256] ^ Camellia_SBOX[(v34 ^ *(i - 16))] ^ Camellia_SBOX[((v34 ^ *(i - 4)) >> 16) + 768] ^ Camellia_SBOX[((v34 ^ *(i - 4)) >> 24) + 512] ^ v35;
    v37 = v36 ^ v28;
    v38 = v29 ^ __ROR4__(v35, 8) ^ v36;
    if (i - 3 == v7)
    {
      break;
    }

    v5 = v38 ^ __ROR4__(*(i - 3) & v37, 31);
    v6 = (*i | v34) ^ result;
    v4 = (v5 | *(i - 2)) ^ v37;
    v8 = v34 ^ __ROR4__(v6 & *(i - 1), 31);
  }

  v39 = *v7 ^ result;
  v40 = *(i - 2) ^ v34;
  v41 = *(i - 1) ^ v37;
  v42 = *i ^ v38;
  *a4 = HIBYTE(v39);
  a4[1] = BYTE2(v39);
  a4[2] = BYTE1(v39);
  a4[3] = v39;
  a4[4] = HIBYTE(v40);
  a4[5] = BYTE2(v40);
  a4[6] = BYTE1(v40);
  a4[7] = v40;
  a4[8] = HIBYTE(v41);
  a4[9] = BYTE2(v41);
  a4[10] = BYTE1(v41);
  a4[11] = v41;
  a4[12] = HIBYTE(v42);
  a4[13] = BYTE2(v42);
  a4[14] = BYTE1(v42);
  a4[15] = v42;
  return result;
}

uint64_t Camellia_EncryptBlock(int a1, unsigned int *a2, _DWORD *a3, _BYTE *a4)
{
  if (a1 == 128)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  return Camellia_EncryptBlock_Rounds(v4, a2, a3, a4);
}

uint64_t Camellia_DecryptBlock_Rounds(int a1, unsigned int *a2, _DWORD *a3, _BYTE *a4)
{
  v4 = 16 * a1;
  v5 = bswap32(*a2) ^ a3[v4];
  v6 = bswap32(a2[1]) ^ a3[v4 + 1];
  v7 = bswap32(a2[2]) ^ a3[v4 + 2];
  v8 = bswap32(a2[3]) ^ a3[v4 + 3];
  for (i = v4 * 4 - 64; ; i -= 64)
  {
    v10 = (a3 + i);
    v11 = Camellia_SBOX[((*(a3 + i + 56) ^ v5) >> 8) + 768] ^ Camellia_SBOX[(*(a3 + i + 56) ^ v5) + 256] ^ Camellia_SBOX[((*(a3 + i + 56) ^ v5) >> 16) + 512] ^ Camellia_SBOX[(*(a3 + i + 56) ^ v5) >> 24];
    v12 = __ROR4__(v11, 8);
    v13 = Camellia_SBOX[((*(a3 + i + 60) ^ v6) >> 8) + 256] ^ Camellia_SBOX[(*(a3 + i + 60) ^ v6)] ^ Camellia_SBOX[((*(a3 + i + 60) ^ v6) >> 16) + 768] ^ Camellia_SBOX[((*(a3 + i + 60) ^ v6) >> 24) + 512] ^ v11;
    v14 = v13 ^ v7;
    v15 = v8 ^ v12 ^ v13;
    v16 = Camellia_SBOX[((v14 ^ *(a3 + i + 48)) >> 8) + 768] ^ Camellia_SBOX[(v14 ^ *(a3 + i + 48)) + 256] ^ Camellia_SBOX[((v14 ^ *(a3 + i + 48)) >> 16) + 512] ^ Camellia_SBOX[(v14 ^ *(a3 + i + 48)) >> 24];
    v17 = v6 ^ __ROR4__(v16, 8);
    v18 = Camellia_SBOX[((v15 ^ *(a3 + i + 52)) >> 8) + 256] ^ Camellia_SBOX[(v15 ^ *(a3 + i + 52))] ^ Camellia_SBOX[((v15 ^ *(a3 + i + 52)) >> 16) + 768] ^ Camellia_SBOX[((v15 ^ *(a3 + i + 52)) >> 24) + 512] ^ v16;
    v19 = v18 ^ v5;
    v20 = v17 ^ v18;
    v21 = Camellia_SBOX[((v19 ^ *(a3 + i + 40)) >> 8) + 768] ^ Camellia_SBOX[(v19 ^ *(a3 + i + 40)) + 256] ^ Camellia_SBOX[((v19 ^ *(a3 + i + 40)) >> 16) + 512] ^ Camellia_SBOX[(v19 ^ *(a3 + i + 40)) >> 24];
    v22 = __ROR4__(v21, 8);
    v23 = Camellia_SBOX[((v20 ^ *(a3 + i + 44)) >> 8) + 256] ^ Camellia_SBOX[(v20 ^ *(a3 + i + 44))] ^ Camellia_SBOX[((v20 ^ *(a3 + i + 44)) >> 16) + 768] ^ Camellia_SBOX[((v20 ^ *(a3 + i + 44)) >> 24) + 512] ^ v21;
    v24 = v23 ^ v14;
    v25 = v15 ^ v22 ^ v23;
    v26 = Camellia_SBOX[((v24 ^ *(a3 + i + 32)) >> 8) + 768] ^ Camellia_SBOX[(v24 ^ *(a3 + i + 32)) + 256] ^ Camellia_SBOX[((v24 ^ *(a3 + i + 32)) >> 16) + 512] ^ Camellia_SBOX[(v24 ^ *(a3 + i + 32)) >> 24];
    v27 = __ROR4__(v26, 8);
    v28 = Camellia_SBOX[((v25 ^ *(a3 + i + 36)) >> 8) + 256] ^ Camellia_SBOX[(v25 ^ *(a3 + i + 36))] ^ Camellia_SBOX[((v25 ^ *(a3 + i + 36)) >> 16) + 768] ^ Camellia_SBOX[((v25 ^ *(a3 + i + 36)) >> 24) + 512] ^ v26;
    v29 = v28 ^ v19;
    v30 = v20 ^ v27 ^ v28;
    v31 = Camellia_SBOX[((v29 ^ *(a3 + i + 24)) >> 8) + 768] ^ Camellia_SBOX[(v29 ^ *(a3 + i + 24)) + 256] ^ Camellia_SBOX[((v29 ^ *(a3 + i + 24)) >> 16) + 512] ^ Camellia_SBOX[(v29 ^ *(a3 + i + 24)) >> 24];
    v32 = __ROR4__(v31, 8);
    v33 = Camellia_SBOX[((v30 ^ *(a3 + i + 28)) >> 8) + 256] ^ Camellia_SBOX[(v30 ^ *(a3 + i + 28))] ^ Camellia_SBOX[((v30 ^ *(a3 + i + 28)) >> 16) + 768] ^ Camellia_SBOX[((v30 ^ *(a3 + i + 28)) >> 24) + 512] ^ v31;
    v34 = v33 ^ v24;
    v35 = v25 ^ v32 ^ v33;
    result = Camellia_SBOX[((v34 ^ *(a3 + i + 16)) >> 8) + 768] ^ Camellia_SBOX[(v34 ^ *(a3 + i + 16)) + 256] ^ (Camellia_SBOX[((v34 ^ *(a3 + i + 16)) >> 16) + 512] ^ Camellia_SBOX[(v34 ^ *(a3 + i + 16)) >> 24]);
    v37 = Camellia_SBOX[((v35 ^ *(a3 + i + 20)) >> 8) + 256] ^ Camellia_SBOX[(v35 ^ *(a3 + i + 20))] ^ Camellia_SBOX[((v35 ^ *(a3 + i + 20)) >> 16) + 768] ^ Camellia_SBOX[((v35 ^ *(a3 + i + 20)) >> 24) + 512] ^ result;
    v38 = v37 ^ v29;
    v39 = v30 ^ __ROR4__(result, 8) ^ v37;
    if (!i)
    {
      break;
    }

    v6 = v39 ^ __ROR4__(v10[2] & v38, 31);
    v7 = (v10[1] | v35) ^ v34;
    v5 = (v6 | v10[3]) ^ v38;
    v8 = v35 ^ __ROR4__(v7 & *v10, 31);
  }

  v40 = *a3 ^ v34;
  v41 = a3[1] ^ v35;
  v42 = a3[2] ^ v38;
  v43 = a3[3] ^ v39;
  *a4 = HIBYTE(v40);
  a4[1] = BYTE2(v40);
  a4[2] = BYTE1(v40);
  a4[3] = v40;
  a4[4] = HIBYTE(v41);
  a4[5] = BYTE2(v41);
  a4[6] = BYTE1(v41);
  a4[7] = v41;
  a4[8] = HIBYTE(v42);
  a4[9] = BYTE2(v42);
  a4[10] = BYTE1(v42);
  a4[11] = v42;
  a4[12] = HIBYTE(v43);
  a4[13] = BYTE2(v43);
  a4[14] = BYTE1(v43);
  a4[15] = v43;
  return result;
}

uint64_t Camellia_DecryptBlock(int a1, unsigned int *a2, _DWORD *a3, _BYTE *a4)
{
  if (a1 == 128)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  return Camellia_DecryptBlock_Rounds(v4, a2, a3, a4);
}

int RSA_sign(int type, const unsigned __int8 *m, unsigned int m_length, unsigned __int8 *sigret, unsigned int *siglen, RSA *rsa)
{
  v9 = m;
  v18 = 0;
  v17 = 0;
  if ((rsa->flags & 0x40) == 0 || (rsa_sign = rsa->meth->rsa_sign) == 0)
  {
    if (type == 114)
    {
      if (m_length != 36)
      {
        ERR_put_error(4, 4095, 143, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_sign.c", 144);
        return 0;
      }

      v12 = 0;
      v13 = 36;
    }

    else
    {
      v14 = encode_pkcs1(&v18, &v17, type, m, m_length);
      v12 = v18;
      v13 = v17;
      if (!v14)
      {
        goto LABEL_15;
      }

      v9 = v18;
    }

    if (v13 <= RSA_size(rsa) - 11)
    {
      v15 = RSA_private_encrypt(v13, v9, sigret, rsa, 1);
      if (v15 >= 1)
      {
        *siglen = v15;
        v16 = 1;
LABEL_16:
        freezero(v12, v13);
        return v16;
      }
    }

    else
    {
      ERR_put_error(4, 4095, 112, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_sign.c", 155);
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  return (rsa_sign)(*&type, m, *&m_length, sigret, siglen);
}

uint64_t encode_pkcs1(void *a1, int *a2, int n, uint64_t a4, int a5)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18[0] = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  a.algor = &v19;
  v9 = OBJ_nid2obj(n);
  v19 = v9;
  if (!v9)
  {
    v12 = 117;
    v13 = 100;
LABEL_7:
    ERR_put_error(4, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_sign.c", v13);
    return 0;
  }

  if (!v9->length)
  {
    v12 = 116;
    v13 = 105;
    goto LABEL_7;
  }

  LODWORD(v18[0]) = 5;
  v18[1] = 0;
  v20 = v18;
  a.digest = &v15;
  v16 = a4;
  LODWORD(v15) = a5;
  v10 = i2d_X509_SIG(&a, &v14);
  if ((v10 & 0x80000000) == 0)
  {
    *a1 = v14;
    *a2 = v10;
    return 1;
  }

  return 0;
}

uint64_t int_rsa_verify(int a1, unsigned __int8 *a2, unsigned int a3, _DWORD *a4, void *a5, const unsigned __int8 *a6, size_t a7, RSA *a8)
{
  __b1 = 0;
  v30 = 0;
  if (RSA_size(a8) == a7)
  {
    v16 = malloc_type_malloc(a7, 0x90A32FDFuLL);
    if (v16)
    {
      v17 = RSA_public_decrypt(a7, a6, v16, a8, 1);
      if (v17 < 1)
      {
LABEL_27:
        v19 = 0;
LABEL_28:
        v22 = 0;
        goto LABEL_29;
      }

      v18 = v17;
      if (a1 == 114)
      {
        if (v17 == 36)
        {
          if (a4)
          {
            v19 = 0;
            v20 = *v16;
            v21 = *(v16 + 1);
            a4[8] = *(v16 + 8);
            *a4 = v20;
            *(a4 + 1) = v21;
            *a5 = 36;
LABEL_8:
            v22 = 1;
LABEL_29:
            freezero(__b1, v19);
            freezero(v16, a7);
            return v22;
          }

          if (a3 == 36)
          {
            if (!timingsafe_bcmp(v16, a2, 0x24uLL))
            {
              v19 = 0;
              goto LABEL_8;
            }

            v23 = 104;
            v24 = 221;
          }

          else
          {
            v23 = 131;
            v24 = 216;
          }
        }

        else
        {
          v23 = 143;
          v24 = 207;
        }

        goto LABEL_26;
      }

      if (a4)
      {
        v25 = OBJ_nid2sn(a1);
        digestbyname = EVP_get_digestbyname(v25);
        if (!digestbyname)
        {
          v23 = 117;
          v24 = 235;
          goto LABEL_26;
        }

        v27 = EVP_MD_size(digestbyname);
        if (v27 > v18)
        {
          v23 = 143;
          v24 = 239;
          goto LABEL_26;
        }

        a3 = v27;
        a2 = &v16[v18 - v27];
      }

      v28 = encode_pkcs1(&__b1, &v30, a1, a2, a3);
      v19 = v30;
      if (v28)
      {
        if (v30 == v18 && !timingsafe_bcmp(__b1, v16, v18))
        {
          if (a4)
          {
            memcpy(a4, a2, a3);
            *a5 = a3;
          }

          v22 = 1;
          v19 = v18;
          goto LABEL_29;
        }

        ERR_put_error(4, 4095, 104, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_sign.c", 251);
      }

      goto LABEL_28;
    }

    v23 = 65;
    v24 = 193;
LABEL_26:
    ERR_put_error(4, 4095, v23, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_sign.c", v24);
    goto LABEL_27;
  }

  ERR_put_error(4, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_sign.c", 187);
  return 0;
}

int RSA_verify(int type, const unsigned __int8 *m, unsigned int m_length, unsigned __int8 *sigbuf, unsigned int siglen, RSA *rsa)
{
  if ((rsa->flags & 0x40) != 0 && (rsa_verify = rsa->meth->rsa_verify) != 0)
  {
    return (rsa_verify)(*&type, m, *&m_length, sigbuf, *&siglen, rsa);
  }

  else
  {
    return int_rsa_verify(type, m, m_length, 0, 0, sigbuf, siglen, rsa);
  }
}

void ERR_load_DSA_strings(void)
{
  if (!ERR_func_error_string(DSA_str_functs))
  {
    ERR_load_strings(0, &DSA_str_functs);

    ERR_load_strings(0, &DSA_str_reasons);
  }
}

int ENGINE_register_digests(ENGINE *e)
{
  v1 = *(e + 11);
  if (!v1)
  {
    return 1;
  }

  v3 = v1();
  if (v3 <= 0)
  {
    return 1;
  }

  else
  {
    return engine_table_register(&digest_table, engine_unregister_all_digests, e, 0, v3, 0);
  }
}

void ENGINE_register_all_digests(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      ENGINE_register_digests(next);
      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_digests(ENGINE *e)
{
  v1 = *(e + 11);
  if (!v1)
  {
    return 1;
  }

  v3 = v1();
  if (v3 <= 0)
  {
    return 1;
  }

  else
  {
    return engine_table_register(&digest_table, engine_unregister_all_digests, e, 0, v3, 1);
  }
}

const EVP_MD *__cdecl ENGINE_get_digest(ENGINE *e, int nid)
{
  v4 = 0;
  v2 = *(e + 11);
  if (v2 && v2())
  {
    return v4;
  }

  ERR_put_error(38, 4095, 147, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/tb_digest.c", 133);
  return 0;
}

uint64_t bn_is_prime_bpsw(int *a1, const BIGNUM *a2, BN_CTX *a3, uint64_t a4)
{
  if (BN_is_word(a2, 2))
  {
    is_odd = 1;
    goto LABEL_3;
  }

  v12 = BN_value_one();
  if (BN_cmp(a2, v12) < 1)
  {
    is_odd = 0;
    goto LABEL_3;
  }

  is_odd = BN_is_odd(a2);
  if (!is_odd)
  {
LABEL_3:
    v9 = 0;
    *a1 = is_odd;
    goto LABEL_4;
  }

  for (i = 0; i != 2048; ++i)
  {
    v14 = primes[i];
    v15 = BN_mod_word(a2, v14);
    if (v15 == -1)
    {
      v9 = 0;
      goto LABEL_51;
    }

    if (!v15)
    {
      is_odd = BN_is_word(a2, v14);
      goto LABEL_3;
    }
  }

  v9 = a3;
  if (!a3)
  {
    v9 = BN_CTX_new();
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  BN_CTX_start(v9);
  v16 = BN_CTX_get(v9);
  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = v16;
  v18 = BN_CTX_get(v9);
  if (!v18)
  {
    goto LABEL_49;
  }

  v19 = v18;
  v20 = BN_CTX_get(v9);
  if (!v20)
  {
    goto LABEL_49;
  }

  v21 = v20;
  v22 = BN_CTX_get(v9);
  if (!v22)
  {
    goto LABEL_49;
  }

  v23 = v22;
  if (BN_is_word(a2, 2) || BN_is_word(a2, 3))
  {
    v24 = 0;
    goto LABEL_23;
  }

  v26 = BN_value_one();
  if (BN_cmp(a2, v26) < 1 || !BN_is_odd(a2))
  {
    v25 = 0;
    v24 = 0;
LABEL_24:
    *a1 = v25;
    goto LABEL_25;
  }

  v27 = BN_value_one();
  if (!BN_sub(v21, a2, v27))
  {
    goto LABEL_49;
  }

  a = v23;
  v28 = -1;
  do
  {
    ++v28;
  }

  while (!BN_is_bit_set(v21, v28));
  if (!BN_rshift(v19, v21, v28))
  {
LABEL_49:
    v24 = 0;
    goto LABEL_50;
  }

  v29 = BN_MONT_CTX_new();
  v24 = v29;
  if (!v29 || !BN_MONT_CTX_set(v29, a2, v9) || !BN_set_word(v17, 2uLL) || !bn_fermat(a1, a2, v21, v19, v28, v17, v9, v24))
  {
    goto LABEL_50;
  }

  if (*a1)
  {
    if (!BN_set_word(a, 3uLL))
    {
      goto LABEL_50;
    }

    if (a4)
    {
      while (bn_rand_interval(v17, a, v21) && bn_fermat(a1, a2, v21, v19, v28, v17, v9, v24))
      {
        if (!*a1)
        {
          goto LABEL_25;
        }

        v25 = 1;
        if (!--a4)
        {
          goto LABEL_24;
        }
      }

LABEL_50:
      BN_MONT_CTX_free(v24);
      BN_CTX_end(v9);
LABEL_51:
      v10 = 0;
      goto LABEL_5;
    }

LABEL_23:
    v25 = 1;
    goto LABEL_24;
  }

LABEL_25:
  BN_MONT_CTX_free(v24);
  BN_CTX_end(v9);
  if (*a1 && !bn_strong_lucas_selfridge(a1, a2, v9))
  {
    goto LABEL_51;
  }

LABEL_4:
  v10 = 1;
LABEL_5:
  if (v9 != a3)
  {
    BN_CTX_free(v9);
  }

  return v10;
}

uint64_t bn_strong_lucas_selfridge(int *a1, const BIGNUM *a2, BN_CTX *ctx)
{
  v16 = 0;
  BN_CTX_start(ctx);
  if (!bn_is_perfect_square(&v16, a2, ctx))
  {
LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  if (!v16)
  {
    v7 = BN_CTX_get(ctx);
    if (v7)
    {
      v8 = v7;
      v9 = BN_CTX_get(ctx);
      if (v9)
      {
        v10 = v9;
        if (BN_set_word(v8, 5uLL))
        {
          if (BN_set_word(v10, 2uLL))
          {
            v11 = 1;
            v12 = 0xFFFFFFFFLL;
            while (1)
            {
              v13 = v12;
              v14 = BN_kronecker(v8, a2, ctx);
              if (v14 == -2)
              {
                break;
              }

              if (v14 == -1)
              {
                if (bn_strong_lucas_test(a1, a2, v8, ctx))
                {
                  goto LABEL_4;
                }

                goto LABEL_16;
              }

              if (!v14)
              {
                goto LABEL_3;
              }

              if (!BN_uadd(v8, v8, v10))
              {
                goto LABEL_16;
              }

              BN_set_negative(v8, v13 == -1);
              v12 = v11;
              v11 = v13;
            }
          }
        }
      }
    }

    goto LABEL_16;
  }

LABEL_3:
  *a1 = 0;
LABEL_4:
  v6 = 1;
LABEL_17:
  BN_CTX_end(ctx);
  return v6;
}

uint64_t bn_fermat(int *a1, const BIGNUM *a2, const BIGNUM *a3, const BIGNUM *a4, int a5, const BIGNUM *a6, BN_CTX *ctx, BN_MONT_CTX *a8)
{
  BN_CTX_start(ctx);
  v16 = BN_CTX_get(ctx);
  if (v16)
  {
    v17 = v16;
    v18 = BN_value_one();
    if (BN_cmp(a6, v18) >= 1 && BN_cmp(a6, a3) < 0 && BN_mod_exp_mont_ct(v17, a6, a4, a2, ctx, a8))
    {
      if (BN_is_one(v17) || !BN_cmp(v17, a3))
      {
LABEL_8:
        v21 = 1;
      }

      else
      {
        v22 = a5 - 2;
        if (a5 >= 2)
        {
          while (1)
          {
            v23 = v22;
            if (!BN_mod_sqr(v17, v17, a2, ctx))
            {
              goto LABEL_4;
            }

            if (!BN_cmp(v17, a3))
            {
              goto LABEL_8;
            }

            is_one = BN_is_one(v17);
            v21 = 0;
            if (!is_one)
            {
              v22 = v23 - 1;
              if (v23)
              {
                continue;
              }
            }

            goto LABEL_9;
          }
        }

        v21 = 0;
      }

LABEL_9:
      *a1 = v21;
      v19 = 1;
      goto LABEL_5;
    }
  }

LABEL_4:
  v19 = 0;
LABEL_5:
  BN_CTX_end(ctx);
  return v19;
}

uint64_t bn_strong_lucas_test(int *a1, const BIGNUM *a2, const BIGNUM *a3, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  v10 = BN_CTX_get(ctx);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v12 = BN_CTX_get(ctx);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  v14 = -2;
  do
  {
    is_bit_set = BN_is_bit_set(a2, v14 + 2);
    ++v14;
  }

  while (is_bit_set);
  if (!BN_rshift(v9, a2, v14 + 1) || !BN_set_bit(v9, 0) || !BN_one(v11) || !BN_one(v13))
  {
    goto LABEL_23;
  }

  v16 = BN_num_bits(v9);
  if (v16 >= 2)
  {
    v17 = v16 - 1;
    do
    {
      v18 = BN_is_bit_set(v9, --v17);
      if (!bn_lucas_step(v11, v13, v18, a3, a2, ctx))
      {
        goto LABEL_23;
      }
    }

    while (v17 >= 1);
  }

  if (!BN_is_zero(v11) && !BN_is_zero(v13))
  {
    if ((v14 + 1) < 2)
    {
      v19 = 0;
      goto LABEL_17;
    }

    while (bn_lucas_step(v11, v13, 0, a3, a2, ctx))
    {
      if (BN_is_zero(v13))
      {
        goto LABEL_16;
      }

      v19 = 0;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

LABEL_16:
  v19 = 1;
LABEL_17:
  *a1 = v19;
  v20 = 1;
LABEL_24:
  BN_CTX_end(ctx);
  return v20;
}

BOOL bn_lucas_step(BIGNUM *a1, BIGNUM *a2, int a3, const BIGNUM *a4, const BIGNUM *a5, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v12 = BN_CTX_get(ctx);
  v14 = 0;
  if (v12)
  {
    v13 = v12;
    if (BN_sqr(v12, a1, ctx))
    {
      if (BN_mul(v13, a4, v13, ctx) && BN_mod_mul(a1, a1, a2, a5, ctx) && BN_sqr(a2, a2, ctx) && BN_add(a2, a2, v13) && bn_div_by_two_mod_odd_n(a2, a5, ctx) && (a3 != 1 || BN_mul(v13, a4, a1, ctx) && BN_add(a1, a1, a2) && bn_div_by_two_mod_odd_n(a1, a5, ctx) && BN_add(a2, a2, v13) && bn_div_by_two_mod_odd_n(a2, a5, ctx)))
      {
        v14 = 1;
      }
    }
  }

  BN_CTX_end(ctx);
  return v14;
}

uint64_t bn_div_by_two_mod_odd_n(BIGNUM *a1, const BIGNUM *a2, BN_CTX *a3)
{
  result = BN_is_odd(a2);
  if (result)
  {
    if (!BN_is_odd(a1) || (result = BN_add(a1, a1, a2), result))
    {
      result = BN_rshift1(a1, a1);
      if (result)
      {
        return BN_mod_ct(a1, a1, a2, a3) != 0;
      }
    }
  }

  return result;
}

void ERR_load_BIO_strings(void)
{
  if (!ERR_func_error_string(BIO_str_functs))
  {
    ERR_load_strings(0, &BIO_str_functs);

    ERR_load_strings(0, &BIO_str_reasons);
  }
}

uint64_t gost2814789_md_ctrl(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  if (a2 == 4)
  {
    return Gost2814789_set_sbox(v4 + 20, a3);
  }

  if (a2 == 3)
  {
    return Gost2814789_set_key(v4 + 20, a4, a3);
  }

  return 4294967294;
}

EVP_PKEY *__cdecl PEM_read_bio_PrivateKey(BIO *bp, EVP_PKEY **x, pem_password_cb *cb, void *u)
{
  v22 = *MEMORY[0x277D85DE8];
  pnm = 0;
  plen = 0;
  pdata = 0;
  if (PEM_bytes_read_bio(&pdata, &plen, &pnm, "ANY PRIVATE KEY", bp, cb, u))
  {
    pp = pdata;
    v7 = pnm;
    if (!strcmp(pnm, "PRIVATE KEY"))
    {
      v11 = d2i_PKCS8_PRIV_KEY_INFO(0, &pp, plen);
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = v11;
    }

    else
    {
      if (strcmp(v7, "ENCRYPTED PRIVATE KEY"))
      {
        v8 = pem_check_suffix(v7, "PRIVATE KEY");
        if (v8 >= 1)
        {
          str = EVP_PKEY_asn1_find_str(0, pnm, v8);
          if (str)
          {
            if (*(str + 23))
            {
              v10 = d2i_PrivateKey(*str, x, &pp, plen);
              if (v10)
              {
                goto LABEL_24;
              }
            }
          }
        }

        goto LABEL_22;
      }

      v13 = d2i_X509_SIG(0, &pp, plen);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      if (cb)
      {
        v15 = (cb)(buf, 1024, 0, u);
      }

      else
      {
        v15 = PEM_def_callback(buf, 1024, 0, u);
      }

      if (v15 < 1)
      {
        ERR_put_error(9, 4095, 104, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pkey.c", 120);
        X509_SIG_free(v14);
        goto LABEL_23;
      }

      v12 = PKCS8_decrypt(v14, buf, v15);
      X509_SIG_free(v14);
      if (!v12)
      {
LABEL_22:
        ERR_put_error(9, 4095, 13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pkey.c", 144);
LABEL_23:
        v10 = 0;
LABEL_24:
        free(pnm);
        freezero(pdata, plen);
        return v10;
      }
    }

    v10 = EVP_PKCS82PKEY(v12);
    if (x)
    {
      EVP_PKEY_free(*x);
      *x = v10;
    }

    PKCS8_PRIV_KEY_INFO_free(v12);
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return 0;
}

int PEM_write_bio_PrivateKey(BIO *bp, EVP_PKEY *x, const EVP_CIPHER *enc, unsigned __int8 *kstr, int klen, pem_password_cb *cb, void *u)
{
  ptr = x->pkey.ptr;
  if (ptr && !*(ptr + 9))
  {
    return PEM_write_bio_PrivateKey_traditional(bp, x, enc, kstr, klen, cb, u);
  }

  else
  {
    return PEM_write_bio_PKCS8PrivateKey(bp, x, enc, kstr, klen, cb, u);
  }
}

uint64_t PEM_write_bio_PrivateKey_traditional(BIO *a1, uint64_t a2, const EVP_CIPHER *a3, unsigned __int8 *a4, int a5, pem_password_cb *a6, void *a7)
{
  v16 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x50uLL, "%s PRIVATE KEY", *(*(a2 + 16) + 16));
  return PEM_ASN1_write_bio(i2d_PrivateKey, __str, a1, a2, a3, a4, a5, a6, a7);
}

EVP_PKEY *PEM_read_bio_Parameters(BIO *bp, EVP_PKEY **a2)
{
  pnm = 0;
  v9 = 0;
  pdata = 0;
  if (PEM_bytes_read_bio(&pdata, &v9, &pnm, "PARAMETERS", bp, 0, 0))
  {
    v11 = pdata;
    v3 = pem_check_suffix(pnm, "PARAMETERS");
    if (v3 >= 1)
    {
      v4 = v3;
      v5 = EVP_PKEY_new();
      if (v5)
      {
        v6 = v5;
        if (EVP_PKEY_set_type_str(v5, pnm, v4))
        {
          v7 = *(v6->pkey.ptr + 14);
          if (v7)
          {
            if (v7(v6, &v11, v9))
            {
              if (a2)
              {
                EVP_PKEY_free(*a2);
                *a2 = v6;
              }

              goto LABEL_12;
            }
          }
        }

        EVP_PKEY_free(v6);
      }
    }

    ERR_put_error(9, 4095, 13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pkey.c", 210);
    v6 = 0;
LABEL_12:
    free(pnm);
    free(pdata);
    return v6;
  }

  return 0;
}

uint64_t PEM_write_bio_Parameters(BIO *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (!v2 || !*(v2 + 120))
  {
    return 0;
  }

  snprintf(__str, 0x50uLL, "%s PARAMETERS", *(v2 + 16));
  return PEM_ASN1_write_bio(*(*(a2 + 16) + 120), __str, a1, a2, 0, 0, 0, 0, 0);
}

EVP_PKEY *__cdecl PEM_read_PrivateKey(FILE *fp, EVP_PKEY **x, pem_password_cb *cb, void *u)
{
  v8 = BIO_s_file();
  v9 = BIO_new(v8);
  if (v9)
  {
    v10 = v9;
    BIO_ctrl(v9, 106, 0, fp);
    bio_PrivateKey = PEM_read_bio_PrivateKey(v10, x, cb, u);
    BIO_free(v10);
    return bio_PrivateKey;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pkey.c", 237);
    return 0;
  }
}

int PEM_write_PrivateKey(FILE *fp, EVP_PKEY *x, const EVP_CIPHER *enc, unsigned __int8 *kstr, int klen, pem_password_cb *cb, void *u)
{
  v13 = BIO_new_fp(fp, 0);
  if (v13)
  {
    v14 = v13;
    v15 = PEM_write_bio_PrivateKey(v13, x, enc, kstr, klen, cb, u);
    BIO_free(v14);
    return v15;
  }

  else
  {
    ERR_put_error(9, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pem/pem_pkey.c", 254);
    return 0;
  }
}

void explicit_bzero(void *a1, size_t a2)
{
  bzero(a1, a2);

  j____explicit_bzero_hook();
}

uint64_t rc4_init_key(const EVP_CIPHER_CTX *a1, const unsigned __int8 *a2)
{
  cipher_data = a1->cipher_data;
  v4 = EVP_CIPHER_CTX_key_length(a1);
  RC4_set_key(cipher_data, v4, a2);
  return 1;
}

int ENGINE_register_RAND(ENGINE *e)
{
  if (*(e + 8))
  {
    return engine_table_register(&rand_table, engine_unregister_all_RAND, e, dummy_nid_4, 1, 0);
  }

  else
  {
    return 1;
  }
}

void ENGINE_register_all_RAND(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      if (*(next + 8))
      {
        engine_table_register(&rand_table, engine_unregister_all_RAND, next, dummy_nid_4, 1, 0);
      }

      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_RAND(ENGINE *e)
{
  if (*(e + 8))
  {
    return engine_table_register(&rand_table, engine_unregister_all_RAND, e, dummy_nid_4, 1, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sm4_cbc_cipher(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      sm4_cbc_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), (a1 + 40), *(a1 + 16));
      v4 -= 0x4000000000000000;
      a3 += 0x800000000000000;
      a2 += 0x800000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    sm4_cbc_encrypt(a3, a2, v4, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

void sm4_cbc_encrypt(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  if (a6)
  {
    CRYPTO_cbc128_encrypt(a1, a2, a3, a4, a5, SM4_encrypt);
  }

  else
  {
    CRYPTO_cbc128_decrypt(a1, a2, a3, a4, a5, SM4_decrypt);
  }
}

uint64_t sm4_cfb128_cipher(uint64_t a1, _BYTE *a2, char *a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x4000000000000000)
    {
      v8 = 0x4000000000000000;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      CRYPTO_cfb128_encrypt(a3, a2, v8, *(a1 + 120), a1 + 40, (a1 + 88), *(a1 + 16), SM4_encrypt);
      a3 += v8;
      a2 += v8;
      v4 -= v8;
      if (v4 < v8)
      {
        v8 = v4;
      }
    }

    while (v4);
  }

  return 1;
}

uint64_t sm4_ofb_cipher(uint64_t a1, _BYTE *a2, char *a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    v8 = a4 + 0x4000000000000000;
    do
    {
      CRYPTO_ofb128_encrypt(a3, a2, 0x4000000000000000uLL, *(a1 + 120), a1 + 40, (a1 + 88), SM4_encrypt);
      v4 -= 0x4000000000000000;
      a3 += 0x4000000000000000;
      a2 += 0x4000000000000000;
      v8 -= 0x4000000000000000;
    }

    while (v8 < 0x4000000000000000);
  }

  if (v4)
  {
    CRYPTO_ofb128_encrypt(a3, a2, v4, *(a1 + 120), a1 + 40, (a1 + 88), SM4_encrypt);
  }

  return 1;
}

uint64_t sm4_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      v10 = *(a1 + 120);
      if (*(a1 + 16))
      {
        SM4_encrypt((a3 + v9), (a2 + v9), v10);
      }

      else
      {
        SM4_decrypt((a3 + v9), (a2 + v9), v10);
      }

      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

unint64_t *idea_ecb_encrypt(unsigned int *a1, _DWORD *a2, unsigned int *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = bswap32(a1[1]);
  v7 = bswap32(*a1);
  v8 = v4;
  result = idea_encrypt(&v7, a3);
  v6 = bswap32(v8);
  *a2 = bswap32(v7);
  a2[1] = v6;
  return result;
}

uint64_t pkey_hkdf_init(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x438uLL, 0x10700401EDF281CuLL);
  if (v2)
  {
    *(a1 + 40) = v2;
    return 1;
  }

  else
  {
    ERR_put_error(52, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/kdf/hkdf_evp.c", 80);
    return 0;
  }
}

void pkey_hkdf_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  freezero(*(v1 + 16), *(v1 + 24));
  freezero(*(v1 + 32), *(v1 + 40));

  freezero(v1, 0x438uLL);
}

void pkey_hkdf_derive_init(uint64_t a1)
{
  v1 = *(a1 + 40);
  freezero(*(v1 + 32), *(v1 + 40));
  freezero(*(v1 + 16), *(v1 + 24));
  explicit_bzero(v1, 0x438uLL);
}

uint64_t pkey_hkdf_derive(uint64_t a1, unsigned __int8 *a2, size_t *a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 1);
  if (!v5)
  {
    v9 = 105;
    v10 = 227;
LABEL_9:
    ERR_put_error(52, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/kdf/hkdf_evp.c", v10);
    return 0;
  }

  v6 = *(v4 + 4);
  if (!v6)
  {
    v9 = 104;
    v10 = 231;
    goto LABEL_9;
  }

  v7 = *v4;
  if (*v4 == 2)
  {
    v14 = *(v4 + 5);
    v15 = *(v4 + 134);
    v17 = *a3;

    return HKDF_expand(a2, v17, v5, v6, v14, v4 + 48, v15);
  }

  else
  {
    if (v7 != 1)
    {
      if (!v7)
      {
        return HKDF(a2, *a3, v5, v6, *(v4 + 5), *(v4 + 2), *(v4 + 3), v4 + 48, *(v4 + 134));
      }

      return 0;
    }

    if (a2)
    {
      v11 = *(v4 + 5);
      v12 = *(v4 + 2);
      v13 = *(v4 + 3);

      return HKDF_extract(a2, a3, v5, v6, v11, v12, v13);
    }

    else
    {
      *a3 = EVP_MD_size(*(v4 + 1));
      return 1;
    }
  }
}

uint64_t pkey_hkdf_ctrl(uint64_t a1, int a2, size_t __n, void *__src)
{
  v5 = __n;
  v6 = *(a1 + 40);
  result = 4294967294;
  if (a2 <= 4100)
  {
    if (a2 == 4099)
    {
      if (__src)
      {
        *(v6 + 8) = __src;
        return 1;
      }

      return 0;
    }

    if (a2 != 4100)
    {
      return result;
    }

    result = 1;
    if (!__n || !__src)
    {
      return result;
    }

    if ((__n & 0x80000000) == 0)
    {
      freezero(*(v6 + 16), *(v6 + 24));
      result = malloc_type_malloc(v5, 0xFB6C9CEBuLL);
      *(v6 + 16) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, __src, v5);
      *(v6 + 24) = v5;
      return 1;
    }

    return 0;
  }

  if (a2 == 4101)
  {
    if (__n >= 1)
    {
      freezero(*(v6 + 32), *(v6 + 40));
      result = malloc_type_malloc(v5, 0x7CDFB9C2uLL);
      *(v6 + 32) = result;
      if (!result)
      {
        return result;
      }

      memcpy(result, __src, v5);
      *(v6 + 40) = v5;
      return 1;
    }

    return 0;
  }

  if (a2 != 4102)
  {
    if (a2 != 4103)
    {
      return result;
    }

    *v6 = __n;
    return 1;
  }

  result = 1;
  if (__n && __src)
  {
    if ((__n & 0x80000000) == 0)
    {
      v8 = *(v6 + 1072);
      if (1024 - v8 >= __n)
      {
        memcpy((v6 + v8 + 48), __src, __n);
        *(v6 + 1072) += v5;
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t pkey_hkdf_ctrl_str(uint64_t *a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "mode"))
  {
    if (!strcmp(a3, "EXTRACT_AND_EXPAND") || !strcmp(a3, "EXTRACT_ONLY") || !strcmp(a3, "EXPAND_ONLY"))
    {

      return EVP_PKEY_CTX_ctrl(a1, -1, 1024);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*__s1 != 109 || __s1[1] != 100 || __s1[2])
    {
      if (!strcmp(__s1, "salt"))
      {
        v7 = a1;
        v8 = 4100;
      }

      else
      {
        if (!strcmp(__s1, "hexsalt"))
        {
          v9 = a1;
          v10 = 4100;
          goto LABEL_33;
        }

        if (strcmp(__s1, "key"))
        {
          if (strcmp(__s1, "hexkey"))
          {
            if (strcmp(__s1, "info"))
            {
              if (strcmp(__s1, "hexinfo"))
              {
                ERR_put_error(52, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/kdf/hkdf_evp.c", 204);
                return 4294967294;
              }

              v9 = a1;
              v10 = 4102;
              goto LABEL_33;
            }

            v7 = a1;
            v8 = 4102;
            goto LABEL_29;
          }

          v9 = a1;
          v10 = 4101;
LABEL_33:

          return EVP_PKEY_CTX_hex2ctrl(v9, v10, a3);
        }

        v7 = a1;
        v8 = 4101;
      }

LABEL_29:

      return EVP_PKEY_CTX_str2ctrl(v7, v8, a3);
    }

    return EVP_PKEY_CTX_md(a1, 1024, 4099, a3);
  }
}

BOOL ec_GFp_simple_set_compressed_coordinates(const EC_GROUP *a1, const EC_POINT *a2, const BIGNUM *a3, int a4, BN_CTX *a5)
{
  ERR_clear_error();
  v10 = a4 != 0;
  BN_CTX_start(a5);
  v11 = BN_CTX_get(a5);
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = v11;
  v13 = BN_CTX_get(a5);
  if (!v13)
  {
    goto LABEL_37;
  }

  v14 = v13;
  v15 = BN_CTX_get(a5);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = v15;
  v17 = BN_CTX_get(a5);
  if (!v17)
  {
    goto LABEL_37;
  }

  v18 = v17;
  if (!BN_nnmod(v16, a3, (a1 + 104), a5))
  {
    goto LABEL_37;
  }

  if (*(*a1 + 296))
  {
    if (!BN_mod_sqr(v14, a3, (a1 + 104), a5) || !BN_mod_mul(v12, v14, a3, (a1 + 104), a5))
    {
      goto LABEL_37;
    }
  }

  else if (!(*(*a1 + 272))(a1, v14, a3, a5) || !(*(*a1 + 264))(a1, v12, v14, a3, a5))
  {
    goto LABEL_37;
  }

  if (*(a1 + 50))
  {
    if (!BN_mod_lshift1_quick(v14, v16, (a1 + 104)) || !BN_mod_add_quick(v14, v14, v16, (a1 + 104)) || !BN_mod_sub_quick(v12, v12, v14, (a1 + 104)))
    {
      goto LABEL_37;
    }
  }

  else
  {
    v19 = *(*a1 + 296);
    if (v19)
    {
      if (!v19(a1, v14, a1 + 152, a5) || !BN_mod_mul(v14, v14, v16, (a1 + 104), a5))
      {
        goto LABEL_37;
      }
    }

    else if (!(*(*a1 + 264))(a1, v14, a1 + 152, v16, a5))
    {
      goto LABEL_37;
    }

    if (!BN_mod_add_quick(v12, v12, v14, (a1 + 104)))
    {
      goto LABEL_37;
    }
  }

  v20 = (a1 + 176);
  v21 = *(*a1 + 296);
  if (v21)
  {
    if (v21(a1, v14, v20, a5))
    {
      v22 = (a1 + 104);
      v23 = v12;
      v24 = v12;
      v20 = v14;
      goto LABEL_27;
    }

LABEL_37:
    v25 = 0;
    goto LABEL_38;
  }

  v22 = (a1 + 104);
  v23 = v12;
  v24 = v12;
LABEL_27:
  if (!BN_mod_add_quick(v23, v24, v20, v22))
  {
    goto LABEL_37;
  }

  if (!BN_mod_sqrt(v18, v12, (a1 + 104), a5))
  {
    if ((ERR_peek_last_error() & 0xFF000FFF) == 0x300006F)
    {
      ERR_clear_error();
      v26 = 110;
      v27 = 153;
    }

    else
    {
      v26 = 3;
      v27 = 155;
    }

LABEL_36:
    ERR_put_error(16, 4095, v26, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_oct.c", v27);
    goto LABEL_37;
  }

  if (BN_is_odd(v18) != v10)
  {
    if (BN_is_zero(v18))
    {
      v26 = 109;
      v27 = 160;
    }

    else
    {
      if (!BN_usub(v18, (a1 + 104), v18))
      {
        goto LABEL_37;
      }

      if (BN_is_odd(v18) == v10)
      {
        goto LABEL_30;
      }

      v26 = 68;
      v27 = 166;
    }

    goto LABEL_36;
  }

LABEL_30:
  v25 = EC_POINT_set_affine_coordinates(a1, a2, v16, v18, a5) != 0;
LABEL_38:
  BN_CTX_end(a5);
  return v25;
}

unint64_t ec_GFp_simple_point2oct(uint64_t a1, const EC_POINT *a2, unsigned int a3, _BYTE *a4, unint64_t a5, BN_CTX *a6)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    v20 = 104;
    v21 = 192;
    goto LABEL_19;
  }

  if (EC_POINT_is_at_infinity(a1, a2) < 1)
  {
    v13 = BN_num_bits((a1 + 104));
    v14 = v13 + 7;
    if (v13 < -7)
    {
      v14 = v13 + 14;
    }

    v15 = v14 >> 3;
    v16 = v15 + 1;
    v17 = 2 * (v14 >> 3);
    if (a3 == 2)
    {
      v12 = v15 + 1;
    }

    else
    {
      v12 = v17 + 1;
    }

    BN_CTX_start(a6);
    if (!a4)
    {
      goto LABEL_45;
    }

    if (v12 <= a5)
    {
      v22 = BN_CTX_get(a6);
      if (!v22)
      {
        goto LABEL_45;
      }

      v23 = v22;
      v24 = BN_CTX_get(a6);
      if (!v24)
      {
        goto LABEL_45;
      }

      v25 = v24;
      if (!EC_POINT_get_affine_coordinates(a1, a2, v23, v24, a6))
      {
        goto LABEL_45;
      }

      v26 = a3;
      if ((a3 | 4) == 6)
      {
        if (BN_is_odd(v25))
        {
          v26 = a3 + 1;
        }

        else
        {
          v26 = a3;
        }
      }

      *a4 = v26;
      v27 = BN_num_bits(v23);
      v28 = v27 + 7;
      if (v27 < -7)
      {
        v28 = v27 + 14;
      }

      v29 = v15 - (v28 >> 3);
      if (v29 <= v15)
      {
        if (v29)
        {
          v30 = v29;
          bzero(a4 + 1, v29);
          v31 = v30 + 1;
        }

        else
        {
          v31 = 1;
        }

        if (v31 + BN_bn2bin(v23, &a4[v31]) != v16)
        {
          v18 = 68;
          v19 = 248;
          goto LABEL_16;
        }

        if ((a3 | 2) == 6)
        {
          v32 = BN_num_bits(v25);
          v33 = v32 + 7;
          if (v32 < -7)
          {
            v33 = v32 + 14;
          }

          v34 = v15 - (v33 >> 3);
          if (v34 > v15)
          {
            v18 = 68;
            v19 = 254;
            goto LABEL_16;
          }

          if (v34)
          {
            v35 = -(v33 >> 3);
            bzero(&a4[v16], v34);
            v16 += v15 + v35;
          }

          v16 += BN_bn2bin(v25, &a4[v16]);
        }

        if (v16 == v12)
        {
          goto LABEL_45;
        }

        v18 = 68;
        v19 = 265;
      }

      else
      {
        v18 = 68;
        v19 = 238;
      }
    }

    else
    {
      v18 = 100;
      v19 = 217;
    }

LABEL_16:
    ERR_put_error(16, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_oct.c", v19);
LABEL_45:
    BN_CTX_end(a6);
    return v12;
  }

  if (a4)
  {
    if (a5)
    {
      *a4 = 0;
      return 1;
    }

    v20 = 100;
    v21 = 200;
LABEL_19:
    ERR_put_error(16, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_oct.c", v21);
    return 0;
  }

  return 1;
}

uint64_t ec_GFp_simple_oct2point(EC_GROUP *a1, EC_POINT *a2, unsigned __int8 *a3, uint64_t a4, BN_CTX *a5)
{
  if (!a4)
  {
    v30 = 100;
    v31 = 287;
    goto LABEL_39;
  }

  v6 = *a3;
  if (v6 >= 4 && (v6 & 0xFC) != 4)
  {
    v30 = 102;
    v31 = 296;
LABEL_39:
    ERR_put_error(16, 4095, v30, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_oct.c", v31);
    return 0;
  }

  v8 = v6 & 1;
  v9 = v6 & 0xFE;
  v11 = (v6 & 0xFE) == 0 || v9 == 4;
  if (v8)
  {
    v12 = !v11;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v30 = 102;
    v31 = 300;
    goto LABEL_39;
  }

  if (v9)
  {
    v17 = BN_num_bits((a1 + 104));
    v18 = v17 + 7;
    if (v17 < -7)
    {
      v18 = v17 + 14;
    }

    v19 = v18 >> 3;
    v20 = v18 >> 3;
    v21 = v20 + 1;
    v22 = 2 * v19;
    if (v9 != 2)
    {
      v21 = v22 + 1;
    }

    if (v21 != a4)
    {
      v30 = 102;
      v31 = 314;
      goto LABEL_39;
    }

    BN_CTX_start(a5);
    v23 = BN_CTX_get(a5);
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    v25 = BN_CTX_get(a5);
    if (!v25)
    {
      goto LABEL_30;
    }

    v26 = v25;
    v27 = a3 + 1;
    if (!BN_bin2bn(v27, v20, v24))
    {
      goto LABEL_30;
    }

    if ((BN_ucmp(v24, (a1 + 104)) & 0x80000000) == 0)
    {
      v28 = 328;
LABEL_29:
      ERR_put_error(16, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_oct.c", v28);
LABEL_30:
      v29 = 0;
LABEL_31:
      BN_CTX_end(a5);
      return v29;
    }

    if (v9 == 2)
    {
      if (!EC_POINT_set_compressed_coordinates(a1, a2, v24, v8, a5))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (!BN_bin2bn(&v27[v20], v20, v26))
      {
        goto LABEL_30;
      }

      if ((BN_ucmp(v26, (a1 + 104)) & 0x80000000) == 0)
      {
        v28 = 342;
        goto LABEL_29;
      }

      if (v9 == 6 && v8 != BN_is_odd(v26))
      {
        v28 = 347;
        goto LABEL_29;
      }

      if (!EC_POINT_set_affine_coordinates(a1, a2, v24, v26, a5))
      {
        goto LABEL_30;
      }
    }

    v29 = 1;
    goto LABEL_31;
  }

  if (a4 != 1)
  {
    v30 = 102;
    v31 = 305;
    goto LABEL_39;
  }

  return EC_POINT_set_to_infinity(a1, a2);
}

DSO *__cdecl DSO_new_method(DSO_METHOD *method)
{
  if (!default_DSO_meth)
  {
    default_DSO_meth = DSO_METHOD_openssl();
  }

  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10B0040507EF262uLL);
  if (v2)
  {
    v3 = sk_new_null();
    v2->meth_data = v3;
    if (!v3)
    {
      ERR_put_error(37, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 120);
LABEL_12:
      free(v2);
      return 0;
    }

    v4 = default_DSO_meth;
    if (method)
    {
      v4 = method;
    }

    v2->meth = v4;
    v2->references = 1;
    init = v4->init;
    if (init && !(init)(v2))
    {
      goto LABEL_12;
    }
  }

  else
  {
    ERR_put_error(37, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 114);
  }

  return v2;
}

DSO_METHOD *__cdecl DSO_set_method(DSO *dso, DSO_METHOD *meth)
{
  v2 = dso->meth;
  dso->meth = meth;
  return v2;
}

int DSO_free(DSO *dso)
{
  if (dso)
  {
    if (CRYPTO_add_lock(&dso->references, -1, 28, 0, 0) > 0)
    {
      return 1;
    }

    meth = dso->meth;
    dso_unload = dso->meth->dso_unload;
    if (dso_unload)
    {
      if (!(dso_unload)(dso))
      {
        v6 = 107;
        v7 = 151;
        goto LABEL_11;
      }

      meth = dso->meth;
    }

    finish = meth->finish;
    if (!finish || (finish)(dso))
    {
      sk_free(dso->meth_data);
      free(dso->merger);
      free(dso->filename);
      free(dso);
      return 1;
    }

    v6 = 102;
    v7 = 156;
  }

  else
  {
    v6 = 67;
    v7 = 142;
  }

LABEL_11:
  ERR_put_error(37, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", v7);
  return 0;
}

int DSO_flags(DSO *dso)
{
  if (dso)
  {
    LODWORD(dso) = dso->flags;
  }

  return dso;
}

int DSO_up_ref(DSO *dso)
{
  if (dso)
  {
    return CRYPTO_add_lock(&dso->references, 1, 28, 0, 0) > 1;
  }

  ERR_put_error(37, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 180);
  return 0;
}

DSO *__cdecl DSO_load(DSO *dso, const char *filename, DSO_METHOD *meth, int flags)
{
  v6 = dso;
  if (!dso)
  {
    v8 = DSO_new_method(meth);
    v6 = v8;
    if (!v8)
    {
      ERR_put_error(37, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 197);
      return v6;
    }

    v8->flags = flags;
  }

  if (v6->merger)
  {
    v9 = 110;
    v10 = 210;
  }

  else
  {
    if (!filename)
    {
      goto LABEL_12;
    }

    if (!DSO_set_filename(v6, filename))
    {
      v9 = 112;
      v10 = 217;
      goto LABEL_16;
    }

    if (v6->merger)
    {
      dso_load = v6->meth->dso_load;
      if (dso_load)
      {
        if ((dso_load)(v6))
        {
          return v6;
        }

        v9 = 103;
        v10 = 230;
      }

      else
      {
        v9 = 108;
        v10 = 226;
      }
    }

    else
    {
LABEL_12:
      v9 = 111;
      v10 = 222;
    }
  }

LABEL_16:
  ERR_put_error(37, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", v10);
  if (!dso)
  {
    DSO_free(v6);
  }

  return 0;
}

uint64_t DSO_ctrl(DSO *dso, int cmd, uint64_t larg, void *parg)
{
  if (!dso)
  {
    v5 = 67;
    v6 = 296;
LABEL_15:
    ERR_put_error(37, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", v6);
    return -1;
  }

  switch(cmd)
  {
    case 3:
      v4 = 0;
      dso->flags |= larg;
      return v4;
    case 2:
      v4 = 0;
      dso->flags = larg;
      return v4;
    case 1:
      return dso->flags;
  }

  if (!dso->meth || (dso_ctrl = dso->meth->dso_ctrl) == 0)
  {
    v5 = 108;
    v6 = 315;
    goto LABEL_15;
  }

  return dso_ctrl();
}

int DSO_set_filename(DSO *dso, const char *filename)
{
  if (!dso || !filename)
  {
    v3 = 67;
    v4 = 351;
    goto LABEL_6;
  }

  if (dso->filename)
  {
    v3 = 110;
    v4 = 355;
LABEL_6:
    ERR_put_error(37, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", v4);
    return 0;
  }

  v6 = strdup(filename);
  if (!v6)
  {
    v3 = 65;
    v4 = 361;
    goto LABEL_6;
  }

  v7 = v6;
  free(dso->merger);
  dso->merger = v7;
  return 1;
}

void *__cdecl DSO_bind_var(DSO *dso, const char *symname)
{
  if (dso && symname)
  {
    dso_bind_var = dso->meth->dso_bind_var;
    if (dso_bind_var)
    {
      result = dso_bind_var();
      if (result)
      {
        return result;
      }

      v4 = 106;
      v5 = 256;
    }

    else
    {
      v4 = 108;
      v5 = 252;
    }
  }

  else
  {
    v4 = 67;
    v5 = 248;
  }

  ERR_put_error(37, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", v5);
  return 0;
}

DSO_FUNC_TYPE DSO_bind_func(DSO *dso, const char *symname)
{
  if (dso && symname)
  {
    dso_bind_func = dso->meth->dso_bind_func;
    if (dso_bind_func)
    {
      result = dso_bind_func();
      if (result)
      {
        return result;
      }

      v4 = 106;
      v5 = 277;
    }

    else
    {
      v4 = 108;
      v5 = 273;
    }
  }

  else
  {
    v4 = 67;
    v5 = 269;
  }

  ERR_put_error(37, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", v5);
  return 0;
}

int DSO_set_name_converter(DSO *dso, DSO_NAME_CONVERTER_FUNC cb, DSO_NAME_CONVERTER_FUNC *oldcb)
{
  if (dso)
  {
    if (oldcb)
    {
      *oldcb = *&dso->ex_data.dummy;
    }

    *&dso->ex_data.dummy = cb;
    return 1;
  }

  else
  {
    ERR_put_error(37, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 326);
    return 0;
  }
}

const char *__cdecl DSO_get_filename(DSO *dso)
{
  if (dso)
  {
    return dso->merger;
  }

  ERR_put_error(37, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 339);
  return 0;
}

char *__cdecl DSO_merge(DSO *dso, const char *filespec1, const char *filespec2)
{
  if (!dso || !filespec1)
  {
    ERR_put_error(37, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 375);
    return 0;
  }

  if (dso->flags)
  {
    return 0;
  }

  name_converter = dso->name_converter;
  if (!name_converter)
  {
    name_converter = dso->meth->dso_merger;
    if (!name_converter)
    {
      return 0;
    }
  }

  return name_converter();
}

char *__cdecl DSO_convert_filename(DSO *dso, const char *filename)
{
  if (!dso)
  {
    v5 = 67;
    v6 = 394;
    goto LABEL_11;
  }

  merger = filename;
  if (!filename)
  {
    merger = dso->merger;
    if (!merger)
    {
      v5 = 111;
      v6 = 400;
      goto LABEL_11;
    }
  }

  if ((dso->flags & 1) != 0 || (dso_name_converter = *&dso->ex_data.dummy) == 0 && (dso_name_converter = dso->meth->dso_name_converter) == 0 || (result = dso_name_converter()) == 0)
  {
    result = strdup(merger);
    if (!result)
    {
      v5 = 65;
      v6 = 412;
LABEL_11:
      ERR_put_error(37, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", v6);
      return 0;
    }
  }

  return result;
}

const char *__cdecl DSO_get_loaded_filename(DSO *dso)
{
  if (dso)
  {
    return dso->filename;
  }

  ERR_put_error(37, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 423);
  return 0;
}

uint64_t DSO_pathbyaddr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = default_DSO_meth;
  if (!default_DSO_meth)
  {
    v6 = DSO_METHOD_openssl();
  }

  name = v6[1].name;
  if (name)
  {

    return (name)(a1, a2, a3);
  }

  else
  {
    ERR_put_error(37, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 436);
    return 0xFFFFFFFFLL;
  }
}

uint64_t DSO_global_lookup(uint64_t a1)
{
  v2 = default_DSO_meth;
  if (!default_DSO_meth)
  {
    v2 = DSO_METHOD_openssl();
  }

  dso_load = v2[1].dso_load;
  if (dso_load)
  {

    return (dso_load)(a1);
  }

  else
  {
    ERR_put_error(37, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dso/dso_lib.c", 449);
    return 0;
  }
}

int ECPKParameters_print_fp(FILE *fp, const EC_GROUP *x, int off)
{
  v6 = BIO_s_file();
  v7 = BIO_new(v6);
  if (v7)
  {
    v8 = v7;
    BIO_ctrl(v7, 106, 0, fp);
    v9 = ECPKParameters_print(v8, x, off);
    BIO_free(v8);
    return v9;
  }

  else
  {
    ERR_put_error(16, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/eck_prn.c", 79);
    return 0;
  }
}

int ECPKParameters_print(BIO *bp, const EC_GROUP *x, int off)
{
  if (!x)
  {
    v6 = 0;
    v12 = 0;
    v10 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v19 = 0;
    v20 = 67;
LABEL_49:
    v18 = v12;
    ERR_put_error(16, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/eck_prn.c", 324);
    v13 = 0;
    v12 = v19;
    goto LABEL_50;
  }

  v6 = BN_CTX_new();
  if (!v6)
  {
    goto LABEL_48;
  }

  if (!EC_GROUP_get_asn1_flag(x))
  {
    v21 = EC_GROUP_method_of(x);
    field_type = EC_METHOD_get_field_type(v21);
    v23 = BN_new();
    if (v23)
    {
      v18 = v23;
      v10 = BN_new();
      if (!v10 || (a = BN_new()) == 0)
      {
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 0;
        v19 = 0;
        v20 = 65;
        v12 = v18;
        goto LABEL_49;
      }

      v15 = BN_new();
      if (v15)
      {
        v14 = BN_new();
        if (v14)
        {
          if (EC_GROUP_get_curve(x, v18, v10, a, v6))
          {
            v16 = EC_GROUP_get0_generator(x);
            if (!v16)
            {
              goto LABEL_55;
            }

            if (EC_GROUP_get_order(x, v15, 0) && EC_GROUP_get_cofactor(x, v14, 0))
            {
              n = field_type;
              point_conversion_form = EC_GROUP_get_point_conversion_form(x);
              v16 = EC_POINT_point2bn(x, v16, point_conversion_form, 0, v6);
              if (v16)
              {
                v47 = point_conversion_form;
                v25 = BN_num_bits(v18);
                v26 = v25 + 7;
                if (v25 < -7)
                {
                  v26 = v25 + 14;
                }

                v27 = v26 >> 3;
                v28 = BN_num_bits(v10);
                v29 = v28 + 7;
                if (v28 < -7)
                {
                  v29 = v28 + 14;
                }

                if (v27 <= v29 >> 3)
                {
                  v27 = v29 >> 3;
                }

                v30 = BN_num_bits(a);
                v31 = v30 + 7;
                if (v30 < -7)
                {
                  v31 = v30 + 14;
                }

                if (v27 <= v31 >> 3)
                {
                  v27 = v31 >> 3;
                }

                v32 = BN_num_bits(v16);
                v33 = v32 + 7;
                if (v32 < -7)
                {
                  v33 = v32 + 14;
                }

                if (v27 <= v33 >> 3)
                {
                  v27 = v33 >> 3;
                }

                v34 = BN_num_bits(v15);
                v35 = v34 + 7;
                if (v34 < -7)
                {
                  v35 = v34 + 14;
                }

                if (v27 <= v35 >> 3)
                {
                  v27 = v35 >> 3;
                }

                v36 = BN_num_bits(v14);
                v37 = v36 + 7;
                if (v36 < -7)
                {
                  v37 = v36 + 14;
                }

                if (v27 <= v37 >> 3)
                {
                  v27 = v37 >> 3;
                }

                v46 = EC_GROUP_get0_seed(x);
                if (v46)
                {
                  seed_len = EC_GROUP_get_seed_len(x);
                }

                else
                {
                  seed_len = 0;
                }

                v19 = malloc_type_malloc((v27 + 10), 0x44AA9B96uLL);
                if (v19)
                {
                  if (BIO_indent(bp, off, 128))
                  {
                    v39 = OBJ_nid2sn(n);
                    if (BIO_printf(bp, "Field Type: %s\n", v39) >= 1)
                    {
                      if (n != 407)
                      {
                        v43 = "Prime:";
LABEL_71:
                        if (ASN1_bn_print(bp, v43, v18, v19, off) && ASN1_bn_print(bp, "A:   ", v10, v19, off) && ASN1_bn_print(bp, "B:   ", a, v19, off))
                        {
                          if (v47 == POINT_CONVERSION_UNCOMPRESSED)
                          {
                            v44 = "Generator (uncompressed):";
                          }

                          else
                          {
                            v44 = v47 == POINT_CONVERSION_COMPRESSED ? "Generator (compressed):" : "Generator (hybrid):";
                          }

                          if (ASN1_bn_print(bp, v44, v16, v19, off) && ASN1_bn_print(bp, "Order: ", v15, v19, off) && ASN1_bn_print(bp, "Cofactor: ", v14, v19, off) && (!v46 || print_bin(bp, v46, seed_len, off)))
                          {
                            v13 = 1;
                            v12 = v19;
                            v17 = a;
                            goto LABEL_50;
                          }
                        }

                        goto LABEL_85;
                      }

                      basis_type = EC_GROUP_get_basis_type(x);
                      if (basis_type)
                      {
                        v41 = basis_type;
                        if (BIO_indent(bp, off, 128))
                        {
                          v42 = OBJ_nid2sn(v41);
                          if (BIO_printf(bp, "Basis Type: %s\n", v42) >= 1)
                          {
                            v43 = "Polynomial:";
                            goto LABEL_71;
                          }
                        }
                      }
                    }
                  }

LABEL_85:
                  v20 = 32;
                  goto LABEL_59;
                }

                goto LABEL_58;
              }

LABEL_55:
              v19 = 0;
              v20 = 16;
LABEL_59:
              v12 = v18;
              v17 = a;
              goto LABEL_49;
            }
          }

          v16 = 0;
          goto LABEL_55;
        }

        v16 = 0;
      }

      else
      {
        v16 = 0;
        v14 = 0;
      }

      v19 = 0;
LABEL_58:
      v20 = 65;
      goto LABEL_59;
    }

LABEL_48:
    v12 = 0;
    v10 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v19 = 0;
    v20 = 65;
    goto LABEL_49;
  }

  if (!BIO_indent(bp, off, 128))
  {
    goto LABEL_13;
  }

  curve_name = EC_GROUP_get_curve_name(x);
  if (!curve_name)
  {
    goto LABEL_13;
  }

  v8 = curve_name;
  v9 = OBJ_nid2sn(curve_name);
  if (BIO_printf(bp, "ASN1 OID: %s", v9) < 1 || BIO_printf(bp, "\n") < 1)
  {
    goto LABEL_13;
  }

  v10 = EC_curve_nid2nist(v8);
  if (!v10)
  {
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v13 = 1;
    goto LABEL_50;
  }

  if (!BIO_indent(bp, off, 128))
  {
LABEL_13:
    v12 = 0;
    v10 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v19 = 0;
    v20 = 32;
    goto LABEL_49;
  }

  v11 = BIO_printf(bp, "NIST CURVE: %s\n", v10);
  v12 = 0;
  if (v11 < 1)
  {
    v20 = 32;
    v10 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v19 = 0;
    goto LABEL_49;
  }

  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = 0;
  v18 = 0;
LABEL_50:
  BN_free(v18);
  BN_free(v10);
  BN_free(v17);
  BN_free(v16);
  BN_free(v15);
  BN_free(v14);
  BN_CTX_free(v6);
  free(v12);
  return v13;
}

int EC_KEY_print_fp(FILE *fp, const EC_KEY *x, int off)
{
  v6 = BIO_s_file();
  v7 = BIO_new(v6);
  if (v7)
  {
    v8 = v7;
    BIO_ctrl(v7, 106, 0, fp);
    v9 = EC_KEY_print(v8, x, off);
    BIO_free(v8);
    return v9;
  }

  else
  {
    ERR_put_error(16, 4095, 32, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/eck_prn.c", 95);
    return 0;
  }
}

int EC_KEY_print(BIO *bp, const EC_KEY *x, int off)
{
  v6 = EVP_PKEY_new();
  v7 = v6;
  if (v6 && EVP_PKEY_set1_EC_KEY(v6, x))
  {
    v8 = EVP_PKEY_print_private(bp, v7, off);
  }

  else
  {
    v8 = 0;
  }

  EVP_PKEY_free(v7);
  return v8;
}

int ECParameters_print_fp(FILE *fp, const EC_KEY *x)
{
  v4 = BIO_s_file();
  v5 = BIO_new(v4);
  if (v5)
  {
    v6 = v5;
    BIO_ctrl(v5, 106, 0, fp);
    v7 = ECParameters_print(v6, x);
    BIO_free(v6);
    return v7;
  }

  else
  {
    ERR_put_error(16, 4095, 32, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/eck_prn.c", 111);
    return 0;
  }
}

int ECParameters_print(BIO *bp, const EC_KEY *x)
{
  v4 = EVP_PKEY_new();
  v5 = v4;
  if (v4 && EVP_PKEY_set1_EC_KEY(v4, x))
  {
    v6 = EVP_PKEY_print_params(bp, v5, 4);
  }

  else
  {
    v6 = 0;
  }

  EVP_PKEY_free(v5);
  return v6;
}

BOOL print_bin(BIO *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 >= 128)
    {
      v7 = 128;
    }

    else
    {
      v7 = a4;
    }

    __memset_chk();
    if (BIO_write(a1, data, v7) < 1)
    {
      return 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (BIO_printf(a1, "%s", "Seed:") < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (a3)
  {
    if (v8 - v9 / 0xF + 16 * (v9 / 0xF) || (data[0] = 10, __memset_chk(), BIO_write(a1, data, v7 + 5) >= 1))
    {
      v11 = *a2++;
      v10 = v11;
      ++v9;
      v12 = --a3 ? ":" : "";
      --v8;
      if (BIO_printf(a1, "%02x%s", v10, v12) >= 1)
      {
        continue;
      }
    }

    return 0;
  }

  return BIO_write(a1, "\n", 1) > 0;
}

STACK *i2v_BASIC_CONSTRAINTS(uint64_t a1, uint64_t a2, STACK *a3)
{
  extlist = a3;
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    result = sk_new_null();
    v4 = result;
    extlist = result;
    if (!result)
    {
      return result;
    }
  }

  if (X509V3_add_value_BOOL("CA", *a2, &extlist) && X509V3_add_value_int("pathlen", *(a2 + 8), &extlist))
  {
    return extlist;
  }

  sk_pop_free(v4, X509V3_conf_free);
  return 0;
}

ASN1_VALUE *v2i_BASIC_CONSTRAINTS(uint64_t a1, uint64_t a2, const STACK *a3)
{
  v4 = ASN1_item_new(&BASIC_CONSTRAINTS_it);
  if (!v4)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_bcons.c", 181);
    return v4;
  }

  if (sk_num(a3) >= 1)
  {
    for (i = 0; i < sk_num(a3); ++i)
    {
      v6 = sk_value(a3, i);
      name = v6->name;
      if (*name == 67 && name[1] == 65 && !name[2])
      {
        if (!X509V3_get_value_BOOL(v6, v4))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (strcmp(name, "pathlen"))
        {
          ERR_put_error(34, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_bcons.c", 193);
          ERR_asprintf_error_data("section:%s,name:%s,value:%s", v6->section, v6->name, v6->value);
LABEL_15:
          ASN1_item_free(v4, &BASIC_CONSTRAINTS_it);
          return 0;
        }

        if (!X509V3_get_value_int(v6, v4 + 1))
        {
          goto LABEL_15;
        }
      }
    }
  }

  return v4;
}

void *CRYPTO_ccm128_init(void *result, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  *result = (4 * a2 + 56) & 0x38 | (a3 - 1) & 7;
  result[4] = 0;
  result[5] = a5;
  result[6] = a4;
  return result;
}

uint64_t CRYPTO_ccm128_setiv(char *a1, const void *a2, size_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = 14 - (*a1 & 7);
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a1 & 7u) < 3)
  {
    *(a1 + 1) = 0;
  }

  else
  {
    a1[8] = HIBYTE(a4);
    a1[9] = BYTE6(a4);
    a1[10] = BYTE5(a4);
    a1[11] = BYTE4(a4);
  }

  *(a1 + 3) = bswap32(a4);
  *a1 = v5 & 0xBF;
  memcpy(a1 + 1, a2, v6);
  return 0;
}

uint64_t CRYPTO_ccm128_aad(uint64_t result, char *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    *result |= 0x40u;
    v6 = (result + 16);
    v7 = *(result + 40);
    v7(result, result + 16, *(result + 48));
    ++*(v5 + 32);
    if (v3 >> 8 > 0xFE)
    {
      *(v5 + 16) = ~*(v5 + 16);
      v10 = *(v5 + 17);
      if (HIDWORD(v3))
      {
        *(v5 + 17) = ~v10;
        v11 = vdupq_n_s64(v3);
        v12 = vshlq_u64(v11, xmmword_23E22F390);
        v13 = vuzp1q_s32(vshlq_u64(v11, xmmword_23E22F3A0), v12);
        v12.i32[0] = *(v5 + 18);
        *v13.i8 = veor_s8(*&vmovl_u8(*v12.i8), vmovn_s32(v13));
        *(v5 + 18) = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
        *(v5 + 22) ^= BYTE3(v3);
        *(v5 + 23) ^= BYTE2(v3);
        *(v5 + 24) ^= BYTE1(v3);
        v8 = 10;
        v9 = 25;
      }

      else
      {
        *(v5 + 17) = v10 ^ 0xFE;
        *(v5 + 18) ^= BYTE3(v3);
        *(v5 + 19) ^= BYTE2(v3);
        *(v5 + 20) ^= BYTE1(v3);
        v8 = 6;
        v9 = 21;
      }
    }

    else
    {
      *v6 ^= BYTE1(v3);
      v8 = 2;
      v9 = 17;
    }

    *(v5 + v9) ^= v3;
    do
    {
      if (v3)
      {
        do
        {
          v14 = *a2++;
          v6[v8] ^= v14;
          v15 = v3 - 1;
          v16 = v3 != 1;
          if (v8 > 0xE)
          {
            break;
          }

          ++v8;
          --v3;
        }

        while (v3);
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      result = (v7)(v6, v6, *(v5 + 48));
      v8 = 0;
      ++*(v5 + 32);
      v3 = v15;
    }

    while (v16);
  }

  return result;
}

int8x16_t CRYPTO_ccm128_encrypt(int8x16_t *a1, char *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1->i8[0];
  v10 = a1[2].i64[1];
  v9 = a1[3].i64[0];
  if ((a1->i8[0] & 0x40) == 0)
  {
    v10(a1, a1 + 1, a1[3].i64[0]);
    ++a1[2].i64[0];
  }

  a1->i8[0] = v8 & 7;
  v12 = v8 & 7 ^ 0xFLL;
  if ((v8 & 7) != 0)
  {
    v13 = 0;
    v14 = &a1->i8[v12];
    v15 = 14 - v12;
    if (v12 > 0xE)
    {
      v15 = 0;
    }

    v16 = v15 + 1;
    do
    {
      v17 = *v14;
      *v14++ = 0;
      v13 = (v13 | v17) << 8;
      --v16;
    }

    while (v16);
  }

  else
  {
    v13 = 0;
  }

  v18 = v13 | a1->u8[15];
  a1->i8[15] = 1;
  if (v18 == a4)
  {
    v19 = a1[2].i64[0] + (((a4 + 15) >> 3) | 1);
    a1[2].i64[0] = v19;
    if (v19 <= 0x2000000000000000)
    {
      v32 = 0uLL;
      if (a4 >= 0x10)
      {
        do
        {
          v20 = a1[1].i64[1];
          a1[1].i64[0] ^= *a2;
          a1[1].i64[1] = v20 ^ *(a2 + 1);
          v10(a1 + 1, a1 + 1, v9);
          v10(a1, &v32, v9);
          v21 = 15;
          do
          {
            v22 = a1->i8[v21] + 1;
            a1->i8[v21] = v22;
            if (v21 == 8)
            {
              break;
            }

            --v21;
          }

          while (!v22);
          v23 = v32.i64[1];
          *a3 = *a2 ^ v32.i64[0];
          a3[1] = *(a2 + 1) ^ v23;
          a2 += 16;
          a3 += 2;
          a4 -= 16;
        }

        while (a4 > 0xF);
      }

      if (a4)
      {
        v24 = a4;
        v25 = a1 + 1;
        v26 = a2;
        do
        {
          v27 = *v26++;
          v25->i8[0] ^= v27;
          v25 = (v25 + 1);
          --v24;
        }

        while (v24);
        v10(a1 + 1, a1 + 1, v9);
        v28 = &v32;
        v10(a1, &v32, v9);
        do
        {
          v30 = v28->i8[0];
          v28 = (v28 + 1);
          v29 = v30;
          v31 = *a2++;
          *a3 = v31 ^ v29;
          a3 = (a3 + 1);
          --a4;
        }

        while (a4);
      }

      bzero(&a1->i8[v12], (16 - v12));
      v10(a1, &v32, v9);
      result = veorq_s8(a1[1], v32);
      a1[1] = result;
      a1->i8[0] = v8;
    }
  }

  return result;
}

uint64_t CRYPTO_ccm128_decrypt(int8x16_t *a1, char *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1->i8[0];
  v10 = a1[2].i64[1];
  v9 = a1[3].i64[0];
  if ((a1->i8[0] & 0x40) == 0)
  {
    v10(a1, a1 + 1, a1[3].i64[0]);
  }

  a1->i8[0] = v8 & 7;
  v11 = v8 & 7 ^ 0xFLL;
  if ((v8 & 7) != 0)
  {
    v12 = 0;
    v13 = &a1->i8[v11];
    v14 = 14 - v11;
    if (v11 > 0xE)
    {
      v14 = 0;
    }

    v15 = v14 + 1;
    do
    {
      v16 = *v13;
      *v13++ = 0;
      v12 = (v12 | v16) << 8;
      --v15;
    }

    while (v15);
  }

  else
  {
    v12 = 0;
  }

  v17 = v12 | a1->u8[15];
  a1->i8[15] = 1;
  if (v17 != a4)
  {
    return 0xFFFFFFFFLL;
  }

  v30 = 0uLL;
  if (a4 >= 0x10)
  {
    do
    {
      v10(a1, &v30, v9);
      v18 = 15;
      do
      {
        v19 = a1->i8[v18] + 1;
        a1->i8[v18] = v19;
        if (v18 == 8)
        {
          break;
        }

        --v18;
      }

      while (!v19);
      v20 = v30.i64[1];
      v21 = *a2 ^ v30.i64[0];
      *a3 = v21;
      a1[1].i64[0] ^= v21;
      v22 = *(a2 + 1) ^ v20;
      a3[1] = v22;
      a1[1].i64[1] ^= v22;
      v10(a1 + 1, a1 + 1, v9);
      a2 += 16;
      a3 += 2;
      a4 -= 16;
    }

    while (a4 > 0xF);
  }

  if (a4)
  {
    v23 = &v30;
    v10(a1, &v30, v9);
    v24 = a1 + 1;
    do
    {
      v26 = v23->i8[0];
      v23 = (v23 + 1);
      v25 = v26;
      v27 = *a2++;
      v28 = v27 ^ v25;
      *a3 = v28;
      a3 = (a3 + 1);
      v24->i8[0] ^= v28;
      v24 = (v24 + 1);
      --a4;
    }

    while (a4);
    v10(a1 + 1, a1 + 1, v9);
  }

  bzero(&a1->i8[v11], (16 - v11));
  v10(a1, &v30, v9);
  result = 0;
  a1[1] = veorq_s8(a1[1], v30);
  a1->i8[0] = v8;
  return result;
}

int8x16_t CRYPTO_ccm128_encrypt_ccm64(int8x16_t *a1, char *a2, _BYTE *a3, unint64_t a4, void (*a5)(char *, _BYTE *, unint64_t, uint64_t, int8x16_t *, int8x16_t *))
{
  v10 = a1->i8[0];
  v12 = a1[2].i64[1];
  v11 = a1[3].i64[0];
  if ((a1->i8[0] & 0x40) == 0)
  {
    v12(a1, a1 + 1, a1[3].i64[0]);
    ++a1[2].i64[0];
  }

  a1->i8[0] = v10 & 7;
  v14 = v10 & 7 ^ 0xFLL;
  if ((v10 & 7) != 0)
  {
    v15 = 0;
    v16 = &a1->i8[v14];
    v17 = 14 - v14;
    if (v14 > 0xE)
    {
      v17 = 0;
    }

    v18 = v17 + 1;
    do
    {
      v19 = *v16;
      *v16++ = 0;
      v15 = (v15 | v19) << 8;
      --v18;
    }

    while (v18);
  }

  else
  {
    v15 = 0;
  }

  v20 = v15 | a1->u8[15];
  a1->i8[15] = 1;
  if (v20 == a4)
  {
    v21 = a1[2].i64[0] + (((a4 + 15) >> 3) | 1);
    a1[2].i64[0] = v21;
    if (v21 <= 0x2000000000000000)
    {
      v36 = 0uLL;
      if (a4 >= 0x10)
      {
        v22 = a4 >> 4;
        a5(a2, a3, a4 >> 4, v11, a1, a1 + 1);
        if ((a4 & 0xF) == 0)
        {
LABEL_26:
          bzero(&a1->i8[v14], (16 - v14));
          v12(a1, &v36, v11);
          result = veorq_s8(a1[1], v36);
          a1[1] = result;
          a1->i8[0] = v10;
          return result;
        }

        v23 = 0;
        a2 += a4 & 0xFFFFFFFFFFFFFFF0;
        a3 += a4 & 0xFFFFFFFFFFFFFFF0;
        v24 = 15;
        while (1)
        {
          v25 = v23 + v22 + a1->u8[v24];
          a1->i8[v24] = v25;
          if (v24 == 8)
          {
            break;
          }

          v26 = v22 >> 8;
          v23 = v25 >> 8;
          --v24;
          v27 = v22 > 0xFF;
          v22 >>= 8;
          if (!v27)
          {
            v22 = v26;
            if (v25 <= 0xFF)
            {
              break;
            }
          }
        }

        a4 &= 0xFu;
      }

      if (a4)
      {
        v28 = a4;
        v29 = a1 + 1;
        v30 = a2;
        do
        {
          v31 = *v30++;
          v29->i8[0] ^= v31;
          v29 = (v29 + 1);
          --v28;
        }

        while (v28);
        v12(a1 + 1, a1 + 1, v11);
        v32 = &v36;
        v12(a1, &v36, v11);
        do
        {
          v34 = v32->i8[0];
          v32 = (v32 + 1);
          v33 = v34;
          v35 = *a2++;
          *a3++ = v35 ^ v33;
          --a4;
        }

        while (a4);
      }

      goto LABEL_26;
    }
  }

  return result;
}

uint64_t CRYPTO_ccm128_decrypt_ccm64(int8x16_t *a1, char *a2, _BYTE *a3, unint64_t a4, void (*a5)(char *, _BYTE *, unint64_t, uint64_t, int8x16_t *, int8x16_t *))
{
  v10 = a1->i8[0];
  v12 = a1[2].i64[1];
  v11 = a1[3].i64[0];
  if ((a1->i8[0] & 0x40) == 0)
  {
    v12(a1, a1 + 1, a1[3].i64[0]);
  }

  a1->i8[0] = v10 & 7;
  v13 = v10 & 7 ^ 0xFLL;
  if ((v10 & 7) != 0)
  {
    v14 = 0;
    v15 = &a1->i8[v13];
    v16 = 14 - v13;
    if (v13 > 0xE)
    {
      v16 = 0;
    }

    v17 = v16 + 1;
    do
    {
      v18 = *v15;
      *v15++ = 0;
      v14 = (v14 | v18) << 8;
      --v17;
    }

    while (v17);
  }

  else
  {
    v14 = 0;
  }

  v19 = v14 | a1->u8[15];
  a1->i8[15] = 1;
  if (v19 == a4)
  {
    v33 = 0uLL;
    if (a4 >= 0x10)
    {
      v20 = a4 >> 4;
      a5(a2, a3, a4 >> 4, v11, a1, a1 + 1);
      if ((a4 & 0xF) == 0)
      {
LABEL_22:
        bzero(&a1->i8[v13], (16 - v13));
        v12(a1, &v33, v11);
        result = 0;
        a1[1] = veorq_s8(a1[1], v33);
        a1->i8[0] = v10;
        return result;
      }

      v21 = 0;
      a2 += a4 & 0xFFFFFFFFFFFFFFF0;
      a3 += a4 & 0xFFFFFFFFFFFFFFF0;
      v22 = 15;
      while (1)
      {
        v23 = v21 + v20 + a1->u8[v22];
        a1->i8[v22] = v23;
        if (v22 == 8)
        {
          break;
        }

        v24 = v20 >> 8;
        v21 = v23 >> 8;
        --v22;
        v25 = v20 > 0xFF;
        v20 >>= 8;
        if (!v25)
        {
          v20 = v24;
          if (v23 <= 0xFF)
          {
            break;
          }
        }
      }

      a4 &= 0xFu;
    }

    if (a4)
    {
      v26 = &v33;
      v12(a1, &v33, v11);
      v27 = a1 + 1;
      do
      {
        v29 = v26->i8[0];
        v26 = (v26 + 1);
        v28 = v29;
        v30 = *a2++;
        v31 = v30 ^ v28;
        *a3++ = v31;
        v27->i8[0] ^= v31;
        v27 = (v27 + 1);
        --a4;
      }

      while (a4);
      v12(a1 + 1, a1 + 1, v11);
    }

    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

size_t CRYPTO_ccm128_tag(unsigned __int8 *a1, void *__dst, size_t a3)
{
  if (((*a1 >> 2) & 0xE) + 2 != a3)
  {
    return 0;
  }

  v3 = a3;
  memcpy(__dst, a1 + 16, a3);
  return v3;
}

uint64_t ASN1_ENUMERATED_get_int64(uint64_t *a1, unsigned int *a2)
{
  *a1 = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if ((v3 & 0x80000000) == 0)
  {
    if ((a2[1] | 0x100) == 0x10A)
    {
      memset(v6, 0, sizeof(v6));
      CBS_init(v6, *(a2 + 1), v3);
      return asn1_aint_get_int64(v6, a2[1] == 266, a1);
    }

    ERR_put_error(13, 4095, 225, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_enum.c", 116);
  }

  return 0;
}

uint64_t ASN1_ENUMERATED_set_int64(void **a1, int64_t a2)
{
  v4 = (a1 + 1);
  freezero(a1[1], *a1);
  *a1 = 0;
  *v4 = 0;
  a1[2] = 0;
  *(a1 + 1) = 10;
  if (a2 < 0)
  {
    *(a1 + 1) = 266;
    a2 = -a2;
  }

  return asn1_aint_set_uint64(a2, v4, a1);
}

uint64_t ASN1_ENUMERATED_get(uint64_t a)
{
  if (a)
  {
    v1 = 0;
    if (ASN1_ENUMERATED_get_int64(&v1, a))
    {
      return v1;
    }

    else
    {
      return -1;
    }
  }

  return a;
}

ASN1_ENUMERATED *__cdecl BN_to_ASN1_ENUMERATED(BIGNUM *bn, ASN1_ENUMERATED *ai)
{
  v4 = ai;
  if (ai || (v4 = ASN1_item_new(&ASN1_ENUMERATED_it)) != 0)
  {
    if (BN_is_negative(bn))
    {
      v5 = 266;
    }

    else
    {
      v5 = 10;
    }

    v4->type = v5;
    v6 = BN_num_bits(bn);
    v7 = v6 / 8 + 5;
    if (!v6)
    {
      v7 = 4;
    }

    data = v4->data;
    if (v4->length >= v7)
    {
      goto LABEL_11;
    }

    v9 = malloc_type_realloc(v4->data, v7, 0x4F2FECFFuLL);
    if (v9)
    {
      data = v9;
      v4->data = v9;
LABEL_11:
      v10 = BN_bn2bin(bn, data);
      v4->length = v10;
      if (!v10)
      {
        *v4->data = 0;
        v4->length = 1;
      }

      return v4;
    }

    v11 = 65;
    v12 = 189;
  }

  else
  {
    v11 = 58;
    v12 = 177;
  }

  ERR_put_error(13, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_enum.c", v12);
  if (v4 != ai)
  {
    ASN1_item_free(v4, &ASN1_ENUMERATED_it);
  }

  return 0;
}

BIGNUM *__cdecl ASN1_ENUMERATED_to_BN(ASN1_ENUMERATED *ai, BIGNUM *bn)
{
  v3 = BN_bin2bn(ai->data, ai->length, bn);
  v4 = v3;
  if (v3)
  {
    if (ai->type == 266)
    {
      BN_set_negative(v3, 1);
    }
  }

  else
  {
    ERR_put_error(13, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_enum.c", 215);
  }

  return v4;
}

int i2a_ASN1_ENUMERATED(BIO *bp, ASN1_ENUMERATED *a)
{
  if (!a)
  {
    return 0;
  }

  if (a->length)
  {
    if (a->length >= 1)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        if (v4 && 35 * (v4 / 0x23) == v4)
        {
          if (BIO_write(bp, "\\\n", 2) != 2)
          {
            return -1;
          }

          v5 += 2;
        }

        v6 = a->data;
        data[0] = i2a_ASN1_ENUMERATED_h[v6[v4] >> 4];
        data[1] = i2a_ASN1_ENUMERATED_h[v6[v4] & 0xF];
        if (BIO_write(bp, data, 2) != 2)
        {
          break;
        }

        v5 += 2;
        if (++v4 >= a->length)
        {
          return v5;
        }
      }

      return -1;
    }

    return 0;
  }

  v5 = 2;
  if (BIO_write(bp, "00", 2) != 2)
  {
    return -1;
  }

  return v5;
}

int a2i_ASN1_ENUMERATED(BIO *bp, ASN1_ENUMERATED *bs, char *buf, int size)
{
  bs->type = 10;
  v8 = BIO_gets(bp, buf, size);
  if (v8 >= 1)
  {
    v33 = bs;
    bpa = bp;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = buf - 1;
    sizea = size;
    while (1)
    {
      v14 = v13[v8];
      if (v14 == 10)
      {
        buf[--v8] = 0;
        if (!v8)
        {
          goto LABEL_41;
        }

        v14 = v13[v8];
      }

      if (v14 == 13)
      {
        buf[--v8] = 0;
        if (!v8)
        {
          goto LABEL_41;
        }

        v14 = v13[v8];
      }

      v15 = v8 - (v14 == 92);
      buf[v15] = 0;
      if (v15 < 2)
      {
LABEL_41:
        v18 = v12;
        goto LABEL_38;
      }

      if (v11)
      {
        v16 = buf;
      }

      else
      {
        v16 = buf;
        if (*buf == 48)
        {
          if (buf[1] == 48)
          {
            v15 -= 2;
          }

          v16 = &buf[2 * (buf[1] == 48)];
        }
      }

      if (v15)
      {
        v31 = 145;
        v32 = 301;
LABEL_44:
        ERR_put_error(13, 4095, v31, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_enum.c", v32);
        goto LABEL_40;
      }

      v17 = v15 >> 1;
      if (v10 + v17 <= v9)
      {
        break;
      }

      v18 = malloc_type_realloc(v12, v10 + v17, 0xBF136268uLL);
      v9 = v10 + v17;
      if (!v18)
      {
        v31 = 65;
        v32 = 308;
        goto LABEL_44;
      }

      if (v15)
      {
        goto LABEL_22;
      }

LABEL_33:
      if (v14 != 92)
      {
        v33->length = v10 + v17;
        v33->data = v18;
        return 1;
      }

      v27 = v9;
      v8 = BIO_gets(bpa, buf, sizea);
      v9 = v27;
      v11 = 1;
      v10 += v17;
      v12 = v18;
      if (v8 < 1)
      {
        goto LABEL_38;
      }
    }

    v18 = v12;
    if (!v15)
    {
      goto LABEL_33;
    }

LABEL_22:
    v19 = 0;
    v20 = 0;
    if (v17 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v17;
    }

    while (2)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = v23;
        v25 = v16[v22 | v20];
        v26 = v25 - 48;
        if ((v25 - 48) >= 0xA)
        {
          if ((v25 - 97) > 5)
          {
            if ((v25 - 65) > 5)
            {
              v28 = 141;
              v29 = 324;
              goto LABEL_39;
            }

            v26 = v25 - 55;
          }

          else
          {
            v26 = v25 - 87;
          }
        }

        v23 = 0;
        v18[v10 + v19] = v26 | (16 * v18[v10 + v19]);
        v22 = 1;
      }

      while ((v24 & 1) != 0);
      ++v19;
      v20 += 2;
      if (v19 != v21)
      {
        continue;
      }

      goto LABEL_33;
    }
  }

  v18 = 0;
LABEL_38:
  v28 = 150;
  v29 = 342;
LABEL_39:
  ERR_put_error(13, 4095, v28, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_enum.c", v29);
  v12 = v18;
LABEL_40:
  free(v12);
  return 0;
}

uint64_t c2i_ASN1_ENUMERATED_cbs(uint64_t result, void *a2)
{
  v6 = 0;
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (v4)
    {
      ASN1_INTEGER_free(v4);
      *v3 = 0;
    }

    result = c2i_ASN1_INTEGER_cbs(&v6, a2);
    if (result)
    {
      v5 = v6;
      *(v6 + 1) = *(v6 + 1) & 0x100 | 0xA;
      *v3 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t rc2_init_key(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = *(a1 + 120);
  v5 = EVP_CIPHER_CTX_key_length(a1);
  RC2_set_key((v4 + 4), v5, a2, **(a1 + 120));
  return 1;
}

uint64_t rc2_cbc_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    RC2_cbc_encrypt(in, out, 0x7FFFFFFFFFFFFF00, (*(a1 + 120) + 4), (a1 + 40), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    RC2_cbc_encrypt(in, out, i, (*(a1 + 120) + 4), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t rc2_set_asn1_type_and_iv(EVP_CIPHER_CTX *a1, ASN1_TYPE *a2)
{
  if (!a2)
  {
    return 0;
  }

  ptr = 0;
  if (EVP_CIPHER_CTX_ctrl(a1, 2, 0, &ptr) < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 58;
    v5 = 120;
    if (ptr != 64)
    {
      v5 = 0;
    }

    if (ptr != 128)
    {
      v4 = v5;
    }

    if (ptr == 40)
    {
      v6 = 160;
    }

    else
    {
      v6 = v4;
    }
  }

  v8 = EVP_CIPHER_CTX_iv_length(a1);
  return ASN1_TYPE_set_int_octetstring(a2, v6, a1->oiv, v8);
}

uint64_t rc2_get_asn1_type_and_iv(EVP_CIPHER_CTX *a1, ASN1_TYPE *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (!a2)
  {
    return 0;
  }

  v4 = EVP_CIPHER_CTX_iv_length(a1);
  if (v4 >= 0x11)
  {
    v5 = 102;
    v6 = 347;
LABEL_4:
    ERR_put_error(6, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_rc2.c", v6);
    return 0xFFFFFFFFLL;
  }

  v7 = v4;
  if (ASN1_TYPE_get_int_octetstring(a2, &v10, data, v4) != v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10 == 58)
  {
    v8 = 128;
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    if (!EVP_CipherInit_ex(a1, 0, 0, 0, data, -1))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_16;
  }

  if (v10 != 160)
  {
    if (v10 != 120)
    {
      v5 = 108;
      v6 = 330;
      goto LABEL_4;
    }

    v8 = 64;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = 40;
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (EVP_CIPHER_CTX_ctrl(a1, 3, v8, 0) < 1 || !EVP_CIPHER_CTX_set_key_length(a1, v8 >> 3))
  {
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t rc2_ctrl(EVP_CIPHER_CTX *ctx, int a2, int a3, _DWORD *a4)
{
  switch(a2)
  {
    case 3:
      if (a3 >= 1)
      {
        *ctx->cipher_data = a3;
        return 1;
      }

      return 0;
    case 2:
      *a4 = *ctx->cipher_data;
      return 1;
    case 0:
      *ctx->cipher_data = 8 * EVP_CIPHER_CTX_key_length(ctx);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t rc2_cfb64_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x7FFFFFFFFFFFFF00)
    {
      v8 = 0x7FFFFFFFFFFFFF00;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      RC2_cfb64_encrypt(in, out, v8, (*(a1 + 120) + 4), (a1 + 40), (a1 + 88), *(a1 + 16));
      in += v8;
      out += v8;
      v4 -= v8;
      if (v4 < v8)
      {
        v8 = v4;
      }
    }

    while (v4);
  }

  return 1;
}

uint64_t rc2_ofb_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    RC2_ofb64_encrypt(in, out, 0x7FFFFFFFFFFFFF00, (*(a1 + 120) + 4), (a1 + 40), (a1 + 88));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    RC2_ofb64_encrypt(in, out, i, (*(a1 + 120) + 4), (a1 + 40), (a1 + 88));
  }

  return 1;
}

uint64_t rc2_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      RC2_ecb_encrypt((a3 + v9), (a2 + v9), (*(a1 + 120) + 4), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

void DES_ecb3_encrypt(const_DES_cblock *input, DES_cblock *output, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3, int enc)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *input;
  if (enc)
  {
    DES_encrypt3(v9, ks1, ks2, ks3);
  }

  else
  {
    DES_decrypt3(v9, ks1, ks2, ks3);
  }

  v7 = WORD1(v9[0]);
  v8 = HIDWORD(v9[0]);
  *output = v9[0];
  *&(*output)[2] = v7;
  *&(*output)[4] = v8;
}

uint64_t chacha_init(EVP_CIPHER_CTX *ctx, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    cipher_data = ctx->cipher_data;
    v7 = EVP_CIPHER_CTX_key_length(ctx);
    ChaCha_set_key(cipher_data, a2, 8 * v7);
  }

  if (a3)
  {
    ChaCha_set_iv(ctx->cipher_data, a3 + 2, a3);
  }

  return 1;
}

ENGINE *ENGINE_get_first(void)
{
  CRYPTO_lock(9, 30, 0, 0);
  v0 = engine_list_head;
  if (engine_list_head)
  {
    ++*(engine_list_head + 180);
  }

  CRYPTO_lock(10, 30, 0, 0);
  return v0;
}

ENGINE *ENGINE_get_last(void)
{
  CRYPTO_lock(9, 30, 0, 0);
  v0 = engine_list_tail;
  if (engine_list_tail)
  {
    ++*(engine_list_tail + 180);
  }

  CRYPTO_lock(10, 30, 0, 0);
  return v0;
}

ENGINE *__cdecl ENGINE_get_next(ENGINE *e)
{
  if (e)
  {
    CRYPTO_lock(9, 30, 0, 0);
    v2 = *(e + 26);
    if (v2)
    {
      ++*(v2 + 180);
    }

    CRYPTO_lock(10, 30, 0, 0);
    ENGINE_free(e);
  }

  else
  {
    ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 220);
    return 0;
  }

  return v2;
}

ENGINE *__cdecl ENGINE_get_prev(ENGINE *e)
{
  if (e)
  {
    CRYPTO_lock(9, 30, 0, 0);
    v2 = *(e + 25);
    if (v2)
    {
      ++*(v2 + 180);
    }

    CRYPTO_lock(10, 30, 0, 0);
    ENGINE_free(e);
  }

  else
  {
    ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 242);
    return 0;
  }

  return v2;
}

int ENGINE_add(ENGINE *e)
{
  v1 = e;
  if (e)
  {
    if (!*e || !*(e + 1))
    {
      ERR_put_error(38, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 269);
    }

    CRYPTO_lock(9, 30, 0, 0);
    v2 = engine_list_head;
    if (engine_list_head)
    {
      v3 = *v1;
      do
      {
        v4 = strcmp(*v2, v3);
        v2 = *(v2 + 208);
        if (v2)
        {
          v5 = v4 == 0;
        }

        else
        {
          v5 = 1;
        }
      }

      while (!v5);
      if (!v4)
      {
        v7 = 103;
        v8 = 117;
        goto LABEL_20;
      }

      v6 = engine_list_tail;
      if (!engine_list_tail || *(engine_list_tail + 208))
      {
        v7 = 110;
        v8 = 135;
LABEL_20:
        ERR_put_error(38, 4095, v7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", v8);
        ERR_put_error(38, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 273);
        LODWORD(v1) = 0;
LABEL_24:
        CRYPTO_lock(10, 30, 0, 0);
        return v1;
      }

      *(engine_list_tail + 208) = v1;
      *(v1 + 25) = v6;
    }

    else
    {
      if (engine_list_tail)
      {
        v7 = 110;
        v8 = 123;
        goto LABEL_20;
      }

      engine_list_head = v1;
      *(v1 + 25) = 0;
      engine_cleanup_add_last(engine_list_cleanup);
    }

    ++*(v1 + 45);
    engine_list_tail = v1;
    *(v1 + 26) = 0;
    LODWORD(v1) = 1;
    goto LABEL_24;
  }

  ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 265);
  return v1;
}

int ENGINE_remove(ENGINE *e)
{
  v1 = e;
  if (e)
  {
    CRYPTO_lock(9, 30, 0, 0);
    v2 = &engine_list_head;
    do
    {
      v3 = *v2;
      v2 = (*v2 + 208);
      if (v3)
      {
        v4 = v3 == v1;
      }

      else
      {
        v4 = 1;
      }
    }

    while (!v4);
    if (v3)
    {
      v5 = *(v1 + 25);
      v6 = *(v1 + 26);
      if (v6)
      {
        *(v6 + 200) = v5;
      }

      if (v5)
      {
        *(v5 + 208) = v6;
      }

      if (engine_list_head == v1)
      {
        engine_list_head = *(v1 + 26);
      }

      if (engine_list_tail == v1)
      {
        engine_list_tail = v5;
      }

      engine_free_util(v1, 0);
      LODWORD(v1) = 1;
    }

    else
    {
      ERR_put_error(38, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 165);
      ERR_put_error(38, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 292);
      LODWORD(v1) = 0;
    }

    CRYPTO_lock(10, 30, 0, 0);
  }

  else
  {
    ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 287);
  }

  return v1;
}

ENGINE *__cdecl ENGINE_by_id(const char *id)
{
  if (id)
  {
    CRYPTO_lock(9, 30, 0, 0);
    v2 = engine_list_head;
    if (engine_list_head)
    {
      while (strcmp(id, *v2))
      {
        v2 = *(v2 + 208);
        if (!v2)
        {
          goto LABEL_5;
        }
      }

      if ((*(v2 + 176) & 4) == 0)
      {
        ++*(v2 + 180);
LABEL_13:
        CRYPTO_lock(10, 30, 0, 0);
        return v2;
      }

      v4 = ENGINE_new();
      if (v4)
      {
        *v4 = *v2;
        *(v4 + 1) = *(v2 + 16);
        *(v4 + 2) = *(v2 + 32);
        *(v4 + 3) = *(v2 + 48);
        *(v4 + 4) = *(v2 + 64);
        *(v4 + 5) = *(v2 + 80);
        *(v4 + 12) = *(v2 + 96);
        *(v4 + 7) = *(v2 + 112);
        *(v4 + 8) = *(v2 + 128);
        *(v4 + 9) = *(v2 + 144);
        *(v4 + 21) = *(v2 + 168);
        *(v4 + 44) = *(v2 + 176);
        v2 = v4;
        goto LABEL_13;
      }
    }

LABEL_5:
    CRYPTO_lock(10, 30, 0, 0);
    ERR_put_error(38, 4095, 116, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 370);
    ERR_asprintf_error_data("id=%s", id);
  }

  else
  {
    ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 343);
  }

  return 0;
}

int ENGINE_up_ref(ENGINE *e)
{
  if (e)
  {
    return CRYPTO_add_lock(e + 45, 1, 30, 0, 0) > 1;
  }

  ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_list.c", 382);
  return 0;
}

uint64_t engine_list_cleanup()
{
  do
  {
    result = engine_list_head;
    if (!engine_list_head)
    {
      break;
    }

    result = ENGINE_remove(engine_list_head);
  }

  while (result);
  return result;
}

X509_ATTRIBUTE *__cdecl X509_ATTRIBUTE_create(int nid, int atrtype, void *value)
{
  v5 = OBJ_nid2obj(nid);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = ASN1_item_new(&X509_ATTRIBUTE_it);
  v8 = v7;
  if (v7)
  {
    *v7 = v6;
    v9 = ASN1_TYPE_new();
    if (v9)
    {
      v10 = v9;
      if (sk_push(*(v8 + 1), v9))
      {
        ASN1_TYPE_set(v10, atrtype, value);
        return v8;
      }

      ASN1_item_free(v8, &X509_ATTRIBUTE_it);
      ASN1_TYPE_free(v10);
    }

    else
    {
      ASN1_item_free(v8, &X509_ATTRIBUTE_it);
    }

    return 0;
  }

  return v8;
}

void RC4_set_key(RC4_KEY *key, int len, const unsigned __int8 *data)
{
  v3 = 0;
  v4 = &key->data[6];
  *&key->x = 0;
  v5 = xmmword_23E2440E0;
  v6.i64[0] = 0x400000004;
  v6.i64[1] = 0x400000004;
  do
  {
    *&v4[v3] = v5;
    v5 = vaddq_s32(v5, v6);
    v3 += 16;
  }

  while (v3 != 1024);
  v7 = 0;
  v8 = 0;
  v9 = &key->data[10];
  v10 = -4;
  do
  {
    v11 = *(v9 - 1);
    v12 = v11 + v7 + data[v8];
    if (v8 + 1 == len)
    {
      v13 = 0;
    }

    else
    {
      v13 = v8 + 1;
    }

    *(v9 - 1) = *&v4[4 * v12];
    *&v4[4 * v12] = v11;
    v14 = *v9;
    v15 = *v9 + v12 + data[v13];
    if (v13 + 1 == len)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13 + 1;
    }

    *v9 = *&v4[4 * v15];
    *&v4[4 * v15] = v14;
    v17 = *(v9 + 1);
    v18 = v17 + v15 + data[v16];
    if (v16 + 1 == len)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 + 1;
    }

    *(v9 + 1) = *&v4[4 * v18];
    *&v4[4 * v18] = v17;
    v20 = *(v9 + 2);
    v21 = data[v19] + v20 + v18;
    v7 = v21;
    if (v19 + 1 == len)
    {
      v8 = 0;
    }

    else
    {
      v8 = v19 + 1;
    }

    *(v9 + 2) = *&v4[4 * v21];
    *&v4[4 * v21] = v20;
    v10 += 4;
    v9 += 16;
  }

  while (v10 < 0xFC);
}

int DES_random_key(DES_cblock *ret)
{
  do
  {
    arc4random_buf(ret, 8uLL);
    DES_set_odd_parity(ret);
  }

  while (DES_is_weak_key(ret));
  return 1;
}

uint64_t OPENSSL_init_crypto(char a1)
{
  if (crypto_init_cleaned_up == 1)
  {
    ERR_put_error(15, 4095, 70, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/crypto_init.c", 54);
    return 0;
  }

  v3 = pthread_self();
  if (pthread_equal(v3, crypto_init_thread))
  {
    return 1;
  }

  if (pthread_once(&crypto_init_once, OPENSSL_init_crypto_internal))
  {
    return 0;
  }

  if ((a1 & 1) == 0 || (result = OpenSSL_no_config(), result))
  {
    if ((a1 & 2) == 0)
    {
      return 1;
    }

    result = OpenSSL_config(0);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void OPENSSL_init_crypto_internal()
{
  crypto_init_thread = pthread_self();
  OPENSSL_cpuid_setup();
  ERR_load_crypto_strings();
  OpenSSL_add_all_ciphers();

  OpenSSL_add_all_digests();
}

uint64_t OPENSSL_cleanup()
{
  ERR_free_strings();
  CRYPTO_cleanup_all_ex_data();
  ENGINE_cleanup();
  EVP_cleanup();
  result = x509_issuer_cache_free();
  crypto_init_cleaned_up = 1;
  return result;
}

void DES_ofb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, DES_key_schedule *schedule, DES_cblock *ivec, int *num)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *num;
  v8 = (*ivec)[0];
  v9 = (*ivec)[1];
  v10 = (*ivec)[2];
  v11 = (*ivec)[3];
  v12 = v8 | (v9 << 8) | (v10 << 16) | (v11 << 24);
  v13 = (*ivec)[4];
  v14 = (*ivec)[5];
  v15 = (*ivec)[6];
  v16 = (*ivec)[7];
  v17 = v13 | (v14 << 8) | (v15 << 16) | (v16 << 24);
  data = v12;
  v26 = v17;
  LOBYTE(v27) = v8;
  BYTE1(v27) = v9;
  BYTE2(v27) = v10;
  HIBYTE(v27) = v11;
  LOBYTE(v28) = v13;
  BYTE1(v28) = v14;
  BYTE2(v28) = v15;
  HIBYTE(v28) = v16;
  if (length)
  {
    v20 = length;
    v23 = 0;
    do
    {
      if (!v7)
      {
        DES_encrypt1(&data, schedule, 1);
        v12 = data;
        v17 = v26;
        v27 = data;
        v28 = v26;
        ++v23;
      }

      v24 = *in++;
      *out++ = *(&v27 + v7) ^ v24;
      v7 = (v7 + 1) & 7;
      --v20;
    }

    while (v20);
    if (v23)
    {
      *ivec = v12;
      *&(*ivec)[4] = v17;
    }
  }

  *num = v7;
}

unsigned int *idea_cbc_encrypt(unsigned int *result, _DWORD *a2, uint64_t a3, unsigned int *a4, uint64_t a5, int a6)
{
  v8 = a3;
  v48 = *MEMORY[0x277D85DE8];
  v10 = bswap32(*a5);
  v11 = bswap32(*(a5 + 4));
  if (!a6)
  {
    if (a3 >= 8)
    {
      do
      {
        v19 = a2;
        v20 = v10;
        v21 = v11;
        v22 = v8;
        v8 -= 8;
        v10 = bswap32(*result);
        v23 = result + 2;
        v11 = bswap32(result[1]);
        v46 = v10;
        v47 = v11;
        idea_encrypt(&v46, a4);
        v24 = v46 ^ v20;
        v25 = v47 ^ v21;
        *v19 = (v46 ^ v20) >> 24;
        *(v19 + 1) = BYTE2(v24);
        *(v19 + 2) = BYTE1(v24);
        *(v19 + 3) = v24;
        *(v19 + 4) = HIBYTE(v25);
        *(v19 + 5) = BYTE2(v25);
        *(v19 + 6) = BYTE1(v25);
        a2 = v19 + 2;
        *(v19 + 7) = v25;
        result = v23;
      }

      while (v22 > 0xF);
      result = v23;
    }

    if (v8)
    {
      v26 = bswap32(*result);
      v46 = v26;
      v27 = bswap32(result[1]);
      v47 = v27;
      result = idea_encrypt(&v46, a4);
      v28 = v46 ^ v10;
      v29 = a2 + v8;
      if (v8 <= 3)
      {
        if (v8 == 1)
        {
LABEL_47:
          *(v29 - 1) = HIBYTE(v28);
          goto LABEL_48;
        }

        if (v8 == 2)
        {
LABEL_46:
          *--v29 = BYTE2(v28);
          goto LABEL_47;
        }

        if (v8 != 3)
        {
          goto LABEL_48;
        }

LABEL_45:
        *--v29 = BYTE1(v28);
        goto LABEL_46;
      }

      v30 = v47 ^ v11;
      if (v8 <= 5)
      {
        if (v8 == 4)
        {
LABEL_44:
          *--v29 = v28;
          goto LABEL_45;
        }

LABEL_43:
        *--v29 = HIBYTE(v30);
        goto LABEL_44;
      }

      if (v8 == 6)
      {
LABEL_42:
        *--v29 = BYTE2(v30);
        goto LABEL_43;
      }

      if (v8 == 7)
      {
        *--v29 = BYTE1(v30);
        goto LABEL_42;
      }
    }

    else
    {
      LODWORD(v26) = v10;
      LODWORD(v27) = v11;
    }

LABEL_48:
    *a5 = BYTE3(v26);
    *(a5 + 1) = BYTE2(v26);
    *(a5 + 2) = BYTE1(v26);
    *(a5 + 3) = v26;
    *(a5 + 4) = BYTE3(v27);
    *(a5 + 5) = BYTE2(v27);
    *(a5 + 6) = BYTE1(v27);
    goto LABEL_49;
  }

  if (a3 >= 8)
  {
    do
    {
      v12 = a2;
      v13 = v8;
      v8 -= 8;
      v14 = result + 2;
      v15 = bswap32(result[1]);
      v46 = bswap32(*result) ^ v10;
      v47 = v15 ^ v11;
      idea_encrypt(&v46, a4);
      v10 = v46;
      v11 = v47;
      a2 += 2;
      v16 = bswap32(v47);
      *v12 = bswap32(v46);
      v12[1] = v16;
      result = v14;
    }

    while (v13 > 0xF);
    result = v14;
  }

  if (v8)
  {
    v17 = 0;
    v18 = result + v8;
    if (v8 <= 3)
    {
      v38 = 0;
      if (v8 == 1)
      {
LABEL_32:
        v17 |= *(v18 - 1) << 24;
        goto LABEL_33;
      }

      if (v8 == 2)
      {
LABEL_31:
        v44 = *--v18;
        v17 |= v44 << 16;
        goto LABEL_32;
      }

      if (v8 != 3)
      {
        goto LABEL_33;
      }

LABEL_30:
      v43 = *--v18;
      v17 |= v43 << 8;
      goto LABEL_31;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v38 = 0;
        if (v8 != 7)
        {
LABEL_33:
          v46 = v17 ^ v10;
          v47 = v38 ^ v11;
          result = idea_encrypt(&v46, a4);
          v36 = v46;
          LOBYTE(v27) = v47;
          v31 = v46 >> 24;
          v35 = v46 >> 16;
          v37 = v46 >> 8;
          v32 = v47 >> 24;
          v33 = v47 >> 16;
          v34 = v47 >> 8;
          v45 = bswap32(v47);
          *a2 = bswap32(v46);
          a2[1] = v45;
          goto LABEL_34;
        }

        v39 = *--v18;
        v17 = v39 << 8;
      }

      v40 = *--v18;
      v17 |= v40 << 16;
    }

    else if (v8 == 4)
    {
LABEL_29:
      v38 = v17;
      v42 = *--v18;
      v17 = v42;
      goto LABEL_30;
    }

    v41 = *--v18;
    v17 |= v41 << 24;
    goto LABEL_29;
  }

  v31 = v10 >> 24;
  v32 = v11 >> 24;
  v33 = v11 >> 16;
  v34 = v11 >> 8;
  LOBYTE(v27) = v11;
  v35 = v10 >> 16;
  v36 = v10;
  v37 = v10 >> 8;
LABEL_34:
  *a5 = v31;
  *(a5 + 1) = v35;
  *(a5 + 2) = v37;
  *(a5 + 3) = v36;
  *(a5 + 4) = v32;
  *(a5 + 5) = v33;
  *(a5 + 6) = v34;
LABEL_49:
  *(a5 + 7) = v27;
  return result;
}

unint64_t *idea_encrypt(unint64_t *result, unsigned int *a2)
{
  v2 = WORD1(*result) * *a2;
  v3 = 1 - *a2 - WORD1(*result);
  v4 = (WORD1(*result) * *a2) - (v2 >> 16);
  v5 = v4 - (v4 >> 16);
  if (v2)
  {
    LOWORD(v3) = v5;
  }

  v6 = *result + a2[1];
  v7 = a2[3];
  v8 = (result[1] >> 16) + a2[2];
  v9 = result[1] * v7;
  LOWORD(v10) = 1 - v7 - result[1];
  if (v9)
  {
    v10 = v9 - (v9 >> 16) - ((v9 - (v9 >> 16)) >> 16);
  }

  v11 = a2[4];
  v12 = a2[5];
  v13 = (v8 ^ v3) * v11;
  v14 = 1 - v11 - (v8 ^ v3);
  v15 = ((v8 ^ v3) * v11) - (v13 >> 16);
  v16 = v15 - (v15 >> 16);
  if (v13)
  {
    v14 = v16;
  }

  v17 = (v14 + (v10 ^ v6)) * v12;
  v18 = 1 - v12 - (v14 + (v10 ^ v6));
  v19 = ((v14 + (v10 ^ v6)) * v12) - (v17 >> 16);
  v20 = v19 - (v19 >> 16);
  if (v17)
  {
    v18 = v20;
  }

  v21 = v18 + v14;
  v22 = v21 ^ v10;
  v23 = v21 ^ v6;
  v24 = v18 ^ v8;
  LODWORD(v27) = (v18 ^ v3);
  v25 = a2[6];
  v26 = v27 * v25;
  LOWORD(v27) = 1 - v25 - v27;
  if (v26)
  {
    v27 = v26 - (v26 >> 16) - ((v26 - (v26 >> 16)) >> 16);
  }

  v28 = v24 + a2[7];
  v29 = a2[9];
  v30 = v23 + a2[8];
  v31 = v22 * v29;
  LOWORD(v32) = 1 - v29 - v22;
  if (v31)
  {
    v32 = v31 - (v31 >> 16) - ((v31 - (v31 >> 16)) >> 16);
  }

  v33 = a2[10];
  v34 = a2[11];
  v35 = (v30 ^ v27) * v33;
  v36 = 1 - v33 - (v30 ^ v27);
  v37 = ((v30 ^ v27) * v33) - (v35 >> 16);
  v38 = v37 - (v37 >> 16);
  if (v35)
  {
    v36 = v38;
  }

  v39 = (v36 + (v32 ^ v28)) * v34;
  v40 = 1 - v34 - (v36 + (v32 ^ v28));
  v41 = ((v36 + (v32 ^ v28)) * v34) - (v39 >> 16);
  v42 = v41 - (v41 >> 16);
  if (v39)
  {
    v40 = v42;
  }

  v43 = v40 + v36;
  v44 = v43 ^ v32;
  v45 = v43 ^ v28;
  v46 = v40 ^ v30;
  LODWORD(v27) = (v40 ^ v27);
  v47 = a2[12];
  v48 = v27 * v47;
  LOWORD(v27) = 1 - v47 - v27;
  if (v48)
  {
    v27 = v48 - (v48 >> 16) - ((v48 - (v48 >> 16)) >> 16);
  }

  v49 = v46 + a2[13];
  v50 = a2[15];
  v51 = v45 + a2[14];
  v52 = v44 * v50;
  LOWORD(v53) = 1 - v50 - v44;
  if (v52)
  {
    v53 = v52 - (v52 >> 16) - ((v52 - (v52 >> 16)) >> 16);
  }

  v54 = a2[16];
  v55 = a2[17];
  v56 = (v51 ^ v27) * v54;
  v57 = 1 - v54 - (v51 ^ v27);
  v58 = ((v51 ^ v27) * v54) - (v56 >> 16);
  v59 = v58 - (v58 >> 16);
  if (v56)
  {
    v57 = v59;
  }

  v60 = (v57 + (v53 ^ v49)) * v55;
  v61 = 1 - v55 - (v57 + (v53 ^ v49));
  v62 = ((v57 + (v53 ^ v49)) * v55) - (v60 >> 16);
  v63 = v62 - (v62 >> 16);
  if (v60)
  {
    v61 = v63;
  }

  v64 = v61 + v57;
  v65 = v64 ^ v53;
  v66 = v64 ^ v49;
  v67 = v61 ^ v51;
  LODWORD(v27) = (v61 ^ v27);
  v68 = a2[18];
  v69 = v27 * v68;
  LOWORD(v27) = 1 - v68 - v27;
  if (v69)
  {
    v27 = v69 - (v69 >> 16) - ((v69 - (v69 >> 16)) >> 16);
  }

  v70 = v67 + a2[19];
  v71 = a2[21];
  v72 = v66 + a2[20];
  v73 = v65 * v71;
  LOWORD(v74) = 1 - v71 - v65;
  if (v73)
  {
    v74 = v73 - (v73 >> 16) - ((v73 - (v73 >> 16)) >> 16);
  }

  v75 = a2[22];
  v76 = a2[23];
  v77 = (v72 ^ v27) * v75;
  v78 = 1 - v75 - (v72 ^ v27);
  v79 = ((v72 ^ v27) * v75) - (v77 >> 16);
  v80 = v79 - (v79 >> 16);
  if (v77)
  {
    v78 = v80;
  }

  v81 = (v78 + (v74 ^ v70)) * v76;
  v82 = 1 - v76 - (v78 + (v74 ^ v70));
  v83 = ((v78 + (v74 ^ v70)) * v76) - (v81 >> 16);
  v84 = v83 - (v83 >> 16);
  if (v81)
  {
    v82 = v84;
  }

  v85 = v82 + v78;
  v86 = v85 ^ v74;
  v87 = v85 ^ v70;
  v88 = v82 ^ v72;
  LODWORD(v27) = (v82 ^ v27);
  v89 = a2[24];
  v90 = v27 * v89;
  LOWORD(v27) = 1 - v89 - v27;
  if (v90)
  {
    v27 = v90 - (v90 >> 16) - ((v90 - (v90 >> 16)) >> 16);
  }

  v91 = v88 + a2[25];
  v92 = a2[27];
  v93 = v87 + a2[26];
  v94 = v86 * v92;
  LOWORD(v95) = 1 - v92 - v86;
  if (v94)
  {
    v95 = v94 - (v94 >> 16) - ((v94 - (v94 >> 16)) >> 16);
  }

  v96 = a2[28];
  v97 = a2[29];
  v98 = (v93 ^ v27) * v96;
  v99 = 1 - v96 - (v93 ^ v27);
  v100 = ((v93 ^ v27) * v96) - (v98 >> 16);
  v101 = v100 - (v100 >> 16);
  if (v98)
  {
    v99 = v101;
  }

  v102 = (v99 + (v95 ^ v91)) * v97;
  v103 = 1 - v97 - (v99 + (v95 ^ v91));
  v104 = ((v99 + (v95 ^ v91)) * v97) - (v102 >> 16);
  v105 = v104 - (v104 >> 16);
  if (v102)
  {
    v103 = v105;
  }

  v106 = v103 + v99;
  v107 = v106 ^ v95;
  v108 = v106 ^ v91;
  v109 = v103 ^ v93;
  LODWORD(v27) = (v103 ^ v27);
  v110 = a2[30];
  v111 = v27 * v110;
  LOWORD(v27) = 1 - v110 - v27;
  if (v111)
  {
    v27 = v111 - (v111 >> 16) - ((v111 - (v111 >> 16)) >> 16);
  }

  v112 = v109 + a2[31];
  v113 = a2[33];
  v114 = v108 + a2[32];
  v115 = v107 * v113;
  LOWORD(v116) = 1 - v113 - v107;
  if (v115)
  {
    v116 = v115 - (v115 >> 16) - ((v115 - (v115 >> 16)) >> 16);
  }

  v117 = a2[34];
  v118 = a2[35];
  v119 = (v114 ^ v27) * v117;
  v120 = 1 - v117 - (v114 ^ v27);
  v121 = ((v114 ^ v27) * v117) - (v119 >> 16);
  v122 = v121 - (v121 >> 16);
  if (v119)
  {
    v120 = v122;
  }

  v123 = (v120 + (v116 ^ v112)) * v118;
  v124 = 1 - v118 - (v120 + (v116 ^ v112));
  v125 = ((v120 + (v116 ^ v112)) * v118) - (v123 >> 16);
  v126 = v125 - (v125 >> 16);
  if (v123)
  {
    v124 = v126;
  }

  v127 = v124 + v120;
  v128 = v127 ^ v116;
  v129 = v127 ^ v112;
  v130 = v124 ^ v114;
  LODWORD(v27) = (v124 ^ v27);
  v131 = a2[36];
  v132 = v27 * v131;
  LOWORD(v27) = 1 - v131 - v27;
  if (v132)
  {
    v27 = v132 - (v132 >> 16) - ((v132 - (v132 >> 16)) >> 16);
  }

  v133 = v130 + a2[37];
  v134 = a2[39];
  v135 = v129 + a2[38];
  v136 = v128 * v134;
  LOWORD(v137) = 1 - v134 - v128;
  if (v136)
  {
    v137 = v136 - (v136 >> 16) - ((v136 - (v136 >> 16)) >> 16);
  }

  v138 = a2[40];
  v139 = a2[41];
  v140 = (v135 ^ v27) * v138;
  v141 = 1 - v138 - (v135 ^ v27);
  v142 = ((v135 ^ v27) * v138) - (v140 >> 16);
  v143 = v142 - (v142 >> 16);
  if (v140)
  {
    v141 = v143;
  }

  v144 = (v141 + (v137 ^ v133)) * v139;
  v145 = 1 - v139 - (v141 + (v137 ^ v133));
  v146 = ((v141 + (v137 ^ v133)) * v139) - (v144 >> 16);
  v147 = v146 - (v146 >> 16);
  if (v144)
  {
    v145 = v147;
  }

  v148 = v145 + v141;
  v149 = v148 ^ v137;
  v150 = v148 ^ v133;
  v151 = v145 ^ v135;
  v152 = (v145 ^ v27);
  v153 = a2[42];
  v154 = v152 * v153;
  v155 = 1 - v153 - v152;
  v156 = v154 - (v154 >> 16) - ((v154 - (v154 >> 16)) >> 16);
  if (!v154)
  {
    LOWORD(v156) = v155;
  }

  v157 = v151 + a2[43];
  v158 = a2[45];
  v159 = v150 + a2[44];
  v160 = v149 * v158;
  LOWORD(v161) = 1 - v158 - v149;
  if (v160)
  {
    v161 = v160 - (v160 >> 16) - ((v160 - (v160 >> 16)) >> 16);
  }

  v162 = a2[46];
  v163 = a2[47];
  v164 = (v159 ^ v156) * v162;
  v165 = 1 - v162 - (v159 ^ v156);
  v166 = ((v159 ^ v156) * v162) - (v164 >> 16);
  v167 = v166 - (v166 >> 16);
  if (v164)
  {
    v165 = v167;
  }

  v168 = (v165 + (v161 ^ v157)) * v163;
  v169 = 1 - v163 - (v165 + (v161 ^ v157));
  v170 = ((v165 + (v161 ^ v157)) * v163) - (v168 >> 16);
  v171 = v170 - (v170 >> 16);
  if (v168)
  {
    v169 = v171;
  }

  v172 = v169 + v165;
  v173 = v172 ^ v161;
  LODWORD(v156) = (v169 ^ v156);
  v174 = a2[48];
  v175 = a2[49];
  v176 = v156 * v174;
  LOWORD(v156) = 1 - v174 - v156;
  if (v176)
  {
    v156 = v176 - (v176 >> 16) - ((v176 - (v176 >> 16)) >> 16);
  }

  v177 = a2[50];
  v178 = a2[51];
  v179 = v173 * v178;
  v180 = 1 - v178 - v173;
  v181 = (v173 * v178) - (v179 >> 16) - (((v173 * v178) - (v179 >> 16)) >> 16);
  if (v179)
  {
    v180 = v181;
  }

  *result = ((v172 ^ v157) + v175) | (v156 << 16);
  result[1] = (((v169 ^ v159) + v177) << 16) | v180;
  return result;
}

const DSA_METHOD *DSA_get_default_method(void)
{
  result = default_DSA_method;
  if (!default_DSA_method)
  {
    result = DSA_OpenSSL();
    default_DSA_method = result;
  }

  return result;
}

DSA *__cdecl DSA_new_method(ENGINE *engine)
{
  v2 = malloc_type_malloc(0x78uLL, 0x106004072515E81uLL);
  if (!v2)
  {
    ERR_put_error(10, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_lib.c", 130);
    return v2;
  }

  v3 = default_DSA_method;
  if (!default_DSA_method)
  {
    v3 = DSA_OpenSSL();
    default_DSA_method = v3;
  }

  *(v2 + 13) = v3;
  if (engine)
  {
    if (!ENGINE_init(engine))
    {
      ERR_put_error(10, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_lib.c", 137);
      goto LABEL_16;
    }

    *(v2 + 14) = engine;
    goto LABEL_9;
  }

  engine = ENGINE_get_default_DSA();
  *(v2 + 14) = engine;
  if (engine)
  {
LABEL_9:
    DSA = ENGINE_get_DSA(engine);
    *(v2 + 13) = DSA;
    if (!DSA)
    {
      ERR_put_error(10, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_lib.c", 147);
      ENGINE_finish(*(v2 + 14));
LABEL_16:
      free(v2);
      return 0;
    }

    goto LABEL_13;
  }

  DSA = *(v2 + 13);
LABEL_13:
  *v2 = 0;
  *(v2 + 10) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 22) = 1;
  *(v2 + 18) = DSA->flags & 0xFFFFFBFF;
  CRYPTO_new_ex_data(7, v2, v2 + 6);
  v5 = *(*(v2 + 13) + 48);
  if (v5 && !v5(v2))
  {
    ENGINE_finish(*(v2 + 14));
    CRYPTO_free_ex_data(7, v2, v2 + 6);
    goto LABEL_16;
  }

  return v2;
}

int DSA_set_method(DSA *dsa, const DSA_METHOD *a2)
{
  comp = dsa->ex_data.sk[1].comp;
  if (comp)
  {
    (comp)(dsa);
  }

  ENGINE_finish(*&dsa->ex_data.dummy);
  dsa->ex_data.sk = a2;
  *&dsa->ex_data.dummy = 0;
  init = a2->init;
  if (init)
  {
    (init)(dsa);
  }

  return 1;
}

void DSA_free(DSA *r)
{
  if (r && CRYPTO_add_lock(&r->method_mont_p, -1, 8, 0, 0) <= 0)
  {
    comp = r->ex_data.sk[1].comp;
    if (comp)
    {
      (comp)(r);
    }

    ENGINE_finish(*&r->ex_data.dummy);
    CRYPTO_free_ex_data(7, r, &r->references);
    BN_free(*&r->write_params);
    BN_free(r->p);
    BN_free(r->q);
    BN_free(r->g);
    BN_free(r->pub_key);
    BN_free(r->priv_key);
    BN_free(r->kinv);

    free(r);
  }
}

int DSA_size(const DSA *a1)
{
  v3.r = a1->p;
  v3.s = v3.r;
  v1 = i2d_DSA_SIG(&v3, 0);
  return v1 & ~(v1 >> 31);
}

uint64_t DSA_security_bits(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2 || !*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = BN_num_bits(v2);
  v4 = BN_num_bits(*(a1 + 24));

  return BN_security_bits(v3, v4);
}

DH *__cdecl DSA_dup_DH(const DSA *r)
{
  if (!r)
  {
    v2 = 0;
LABEL_15:
    DH_free(v2);
    return 0;
  }

  v2 = DH_new();
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = *&r->write_params;
  if (v3)
  {
    v4 = BN_dup(v3);
    v2->p = v4;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  p = r->p;
  if (p)
  {
    v2->length = BN_num_bits(p);
    v6 = BN_dup(r->p);
    v2->q = v6;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  q = r->q;
  if (q)
  {
    v8 = BN_dup(q);
    v2->g = v8;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  g = r->g;
  if (g)
  {
    v10 = BN_dup(g);
    v2->pub_key = v10;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  pub_key = r->pub_key;
  if (pub_key)
  {
    v12 = BN_dup(pub_key);
    v2->priv_key = v12;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  return v2;
}

void *DSA_get0_pqg(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[2];
  }

  if (a3)
  {
    *a3 = result[3];
  }

  if (a4)
  {
    *a4 = result[4];
  }

  return result;
}

uint64_t DSA_set0_pqg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (!(a2 | v5) || !(a3 | *(a1 + 24)) || !(a4 | *(a1 + 32)))
  {
    return 0;
  }

  if (a2)
  {
    BN_free(v5);
    *(a1 + 16) = a2;
  }

  if (a3)
  {
    BN_free(*(a1 + 24));
    *(a1 + 24) = a3;
  }

  if (a4)
  {
    BN_free(*(a1 + 32));
    *(a1 + 32) = a4;
  }

  return 1;
}

uint64_t DSA_get0_key(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 40);
  }

  if (a3)
  {
    *a3 = *(result + 48);
  }

  return result;
}

uint64_t DSA_set0_key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (!(a2 | v4))
  {
    return 0;
  }

  if (a2)
  {
    BN_free(v4);
    *(a1 + 40) = a2;
  }

  if (a3)
  {
    BN_free(*(a1 + 48));
    *(a1 + 48) = a3;
  }

  return 1;
}

uint64_t dsa_check_key(const BIGNUM **a1)
{
  v2 = a1[2];
  if (!v2 || !a1[3] || !a1[4])
  {
    v5 = 101;
    v6 = 433;
    goto LABEL_10;
  }

  if (!BN_is_odd(v2) || !BN_is_odd(a1[3]))
  {
    v5 = 112;
    v6 = 439;
    goto LABEL_10;
  }

  v3 = a1[4];
  v4 = BN_value_one();
  if (BN_cmp(v3, v4) < 1 || (BN_cmp(a1[4], a1[2]) & 0x80000000) == 0)
  {
    v5 = 112;
    v6 = 446;
LABEL_10:
    ERR_put_error(10, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_lib.c", v6);
    return 0;
  }

  if (BN_is_negative(a1[3]))
  {
    v5 = 102;
    v6 = 452;
    goto LABEL_10;
  }

  v8 = BN_num_bits(a1[3]);
  if (v8 != 160 && v8 != 224 && v8 != 256)
  {
    v5 = 102;
    v6 = 459;
    goto LABEL_10;
  }

  v9 = BN_num_bits(a1[2]);
  if (v9 >= 10001)
  {
    v5 = 103;
    v6 = 471;
    goto LABEL_10;
  }

  if (v9 <= 511)
  {
    v5 = 112;
    v6 = 475;
    goto LABEL_10;
  }

  v10 = a1[5];
  if (v10)
  {
    v11 = BN_value_one();
    if (BN_cmp(v10, v11) < 1 || (BN_cmp(a1[5], a1[2]) & 0x80000000) == 0)
    {
      v5 = 112;
      v6 = 483;
      goto LABEL_10;
    }
  }

  v12 = a1[6];
  if (v12)
  {
    v13 = BN_value_one();
    if (BN_cmp(v12, v13) < 0 || (BN_cmp(a1[6], a1[3]) & 0x80000000) == 0)
    {
      v5 = 112;
      v6 = 492;
      goto LABEL_10;
    }
  }

  return 1;
}

void CAST_encrypt(unint64_t *data, const CAST_KEY *key)
{
  v2 = *(data + 1);
  v3 = __ROR4__(LODWORD(key->data[0]) + v2, -BYTE4(key->data[0]));
  v4 = ((CAST_S_table1[v3] ^ CAST_S_table0[BYTE1(v3)]) - CAST_S_table2[HIBYTE(v3)] + CAST_S_table3[BYTE2(v3)]) ^ *data;
  v5 = __ROR4__(v4 ^ LODWORD(key->data[1]), -BYTE4(key->data[1]));
  v6 = CAST_S_table3[BYTE2(v5)] ^ v2 ^ (CAST_S_table0[BYTE1(v5)] - CAST_S_table1[v5] + CAST_S_table2[HIBYTE(v5)]);
  v7 = __ROR4__(LODWORD(key->data[2]) - v6, -BYTE4(key->data[2]));
  v8 = (((CAST_S_table1[v7] + CAST_S_table0[BYTE1(v7)]) ^ CAST_S_table2[HIBYTE(v7)]) - CAST_S_table3[BYTE2(v7)]) ^ v4;
  v9 = __ROR4__(v8 + LODWORD(key->data[3]), -BYTE4(key->data[3]));
  v10 = ((CAST_S_table1[v9] ^ CAST_S_table0[BYTE1(v9)]) - CAST_S_table2[HIBYTE(v9)] + CAST_S_table3[BYTE2(v9)]) ^ v6;
  v11 = __ROR4__(v10 ^ LODWORD(key->data[4]), -BYTE4(key->data[4]));
  v12 = CAST_S_table3[BYTE2(v11)] ^ v8 ^ (CAST_S_table0[BYTE1(v11)] - CAST_S_table1[v11] + CAST_S_table2[HIBYTE(v11)]);
  v13 = __ROR4__(LODWORD(key->data[5]) - v12, -BYTE4(key->data[5]));
  v14 = (((CAST_S_table1[v13] + CAST_S_table0[BYTE1(v13)]) ^ CAST_S_table2[HIBYTE(v13)]) - CAST_S_table3[BYTE2(v13)]) ^ v10;
  v15 = __ROR4__(v14 + LODWORD(key->data[6]), -BYTE4(key->data[6]));
  v16 = ((CAST_S_table1[v15] ^ CAST_S_table0[BYTE1(v15)]) - CAST_S_table2[HIBYTE(v15)] + CAST_S_table3[BYTE2(v15)]) ^ v12;
  v17 = __ROR4__(v16 ^ LODWORD(key->data[7]), -BYTE4(key->data[7]));
  v18 = CAST_S_table3[BYTE2(v17)] ^ v14 ^ (CAST_S_table0[BYTE1(v17)] - CAST_S_table1[v17] + CAST_S_table2[HIBYTE(v17)]);
  v19 = __ROR4__(LODWORD(key->data[8]) - v18, -BYTE4(key->data[8]));
  v20 = (((CAST_S_table1[v19] + CAST_S_table0[BYTE1(v19)]) ^ CAST_S_table2[HIBYTE(v19)]) - CAST_S_table3[BYTE2(v19)]) ^ v16;
  v21 = __ROR4__(v20 + LODWORD(key->data[9]), -BYTE4(key->data[9]));
  v22 = ((CAST_S_table1[v21] ^ CAST_S_table0[BYTE1(v21)]) - CAST_S_table2[HIBYTE(v21)] + CAST_S_table3[BYTE2(v21)]) ^ v18;
  v23 = __ROR4__(v22 ^ LODWORD(key->data[10]), -BYTE4(key->data[10]));
  v24 = CAST_S_table3[BYTE2(v23)] ^ v20 ^ (CAST_S_table0[BYTE1(v23)] - CAST_S_table1[v23] + CAST_S_table2[HIBYTE(v23)]);
  v25 = __ROR4__(LODWORD(key->data[11]) - v24, -BYTE4(key->data[11]));
  v26 = (((CAST_S_table1[v25] + CAST_S_table0[BYTE1(v25)]) ^ CAST_S_table2[HIBYTE(v25)]) - CAST_S_table3[BYTE2(v25)]) ^ v22;
  if (!LODWORD(key->data[16]))
  {
    v27 = __ROR4__(LODWORD(key->data[12]) + v26, -BYTE4(key->data[12]));
    v28 = ((CAST_S_table1[v27] ^ CAST_S_table0[BYTE1(v27)]) - CAST_S_table2[HIBYTE(v27)] + CAST_S_table3[BYTE2(v27)]) ^ v24;
    v29 = __ROR4__(v28 ^ LODWORD(key->data[13]), -BYTE4(key->data[13]));
    v30 = CAST_S_table3[BYTE2(v29)] ^ v26 ^ (CAST_S_table0[BYTE1(v29)] - CAST_S_table1[v29] + CAST_S_table2[HIBYTE(v29)]);
    v31 = __ROR4__(LODWORD(key->data[14]) - v30, -BYTE4(key->data[14]));
    v24 = (((CAST_S_table1[v31] + CAST_S_table0[BYTE1(v31)]) ^ CAST_S_table2[HIBYTE(v31)]) - CAST_S_table3[BYTE2(v31)]) ^ v28;
    v32 = __ROR4__(v24 + LODWORD(key->data[15]), -BYTE4(key->data[15]));
    v26 = ((CAST_S_table1[v32] ^ CAST_S_table0[BYTE1(v32)]) - CAST_S_table2[HIBYTE(v32)] + CAST_S_table3[BYTE2(v32)]) ^ v30;
  }

  *data = v26;
  *(data + 1) = v24;
}

void CAST_decrypt(unint64_t *data, const CAST_KEY *key)
{
  v3 = *data;
  v2 = *(data + 1);
  if (!LODWORD(key->data[16]))
  {
    v4 = __ROR4__(LODWORD(key->data[15]) + v2, -BYTE4(key->data[15]));
    v5 = ((CAST_S_table1[v4] ^ CAST_S_table0[BYTE1(v4)]) - CAST_S_table2[HIBYTE(v4)] + CAST_S_table3[BYTE2(v4)]) ^ v3;
    v6 = __ROR4__(LODWORD(key->data[14]) - v5, -BYTE4(key->data[14]));
    v7 = (((CAST_S_table1[v6] + CAST_S_table0[BYTE1(v6)]) ^ CAST_S_table2[HIBYTE(v6)]) - CAST_S_table3[BYTE2(v6)]) ^ v2;
    v8 = __ROR4__(v7 ^ LODWORD(key->data[13]), -BYTE4(key->data[13]));
    v3 = CAST_S_table3[BYTE2(v8)] ^ v5 ^ (CAST_S_table0[BYTE1(v8)] - CAST_S_table1[v8] + CAST_S_table2[HIBYTE(v8)]);
    v9 = __ROR4__(v3 + LODWORD(key->data[12]), -BYTE4(key->data[12]));
    v2 = ((CAST_S_table1[v9] ^ CAST_S_table0[BYTE1(v9)]) - CAST_S_table2[HIBYTE(v9)] + CAST_S_table3[BYTE2(v9)]) ^ v7;
  }

  v10 = __ROR4__(LODWORD(key->data[11]) - v2, -BYTE4(key->data[11]));
  v11 = (((CAST_S_table1[v10] + CAST_S_table0[BYTE1(v10)]) ^ CAST_S_table2[HIBYTE(v10)]) - CAST_S_table3[BYTE2(v10)]) ^ v3;
  v12 = __ROR4__(v11 ^ LODWORD(key->data[10]), -BYTE4(key->data[10]));
  v13 = CAST_S_table3[BYTE2(v12)] ^ v2 ^ (CAST_S_table0[BYTE1(v12)] - CAST_S_table1[v12] + CAST_S_table2[HIBYTE(v12)]);
  v14 = __ROR4__(v13 + LODWORD(key->data[9]), -BYTE4(key->data[9]));
  v15 = ((CAST_S_table1[v14] ^ CAST_S_table0[BYTE1(v14)]) - CAST_S_table2[HIBYTE(v14)] + CAST_S_table3[BYTE2(v14)]) ^ v11;
  v16 = __ROR4__(LODWORD(key->data[8]) - v15, -BYTE4(key->data[8]));
  v17 = (((CAST_S_table1[v16] + CAST_S_table0[BYTE1(v16)]) ^ CAST_S_table2[HIBYTE(v16)]) - CAST_S_table3[BYTE2(v16)]) ^ v13;
  v18 = __ROR4__(v17 ^ LODWORD(key->data[7]), -BYTE4(key->data[7]));
  v19 = CAST_S_table3[BYTE2(v18)] ^ v15 ^ (CAST_S_table0[BYTE1(v18)] - CAST_S_table1[v18] + CAST_S_table2[HIBYTE(v18)]);
  v20 = __ROR4__(v19 + LODWORD(key->data[6]), -BYTE4(key->data[6]));
  v21 = ((CAST_S_table1[v20] ^ CAST_S_table0[BYTE1(v20)]) - CAST_S_table2[HIBYTE(v20)] + CAST_S_table3[BYTE2(v20)]) ^ v17;
  v22 = __ROR4__(LODWORD(key->data[5]) - v21, -BYTE4(key->data[5]));
  v23 = (((CAST_S_table1[v22] + CAST_S_table0[BYTE1(v22)]) ^ CAST_S_table2[HIBYTE(v22)]) - CAST_S_table3[BYTE2(v22)]) ^ v19;
  v24 = __ROR4__(v23 ^ LODWORD(key->data[4]), -BYTE4(key->data[4]));
  v25 = CAST_S_table3[BYTE2(v24)] ^ v21 ^ (CAST_S_table0[BYTE1(v24)] - CAST_S_table1[v24] + CAST_S_table2[HIBYTE(v24)]);
  v26 = __ROR4__(v25 + LODWORD(key->data[3]), -BYTE4(key->data[3]));
  v27 = ((CAST_S_table1[v26] ^ CAST_S_table0[BYTE1(v26)]) - CAST_S_table2[HIBYTE(v26)] + CAST_S_table3[BYTE2(v26)]) ^ v23;
  v28 = __ROR4__(LODWORD(key->data[2]) - v27, -BYTE4(key->data[2]));
  v29 = (((CAST_S_table1[v28] + CAST_S_table0[BYTE1(v28)]) ^ CAST_S_table2[HIBYTE(v28)]) - CAST_S_table3[BYTE2(v28)]) ^ v25;
  v30 = __ROR4__(v29 ^ LODWORD(key->data[1]), -BYTE4(key->data[1]));
  v31 = CAST_S_table3[BYTE2(v30)] ^ v27 ^ (CAST_S_table0[BYTE1(v30)] - CAST_S_table1[v30] + CAST_S_table2[HIBYTE(v30)]);
  v32 = __ROR4__(v31 + LODWORD(key->data[0]), -BYTE4(key->data[0]));
  *data = ((CAST_S_table1[v32] ^ CAST_S_table0[BYTE1(v32)]) - CAST_S_table2[HIBYTE(v32)] + CAST_S_table3[BYTE2(v32)]) ^ v29;
  *(data + 1) = v31;
}

void CAST_cbc_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, const CAST_KEY *ks, unsigned __int8 *iv, int enc)
{
  v8 = length;
  v43[1] = *MEMORY[0x277D85DE8];
  v10 = bswap32(*iv);
  v11 = bswap32(*(iv + 1));
  if (!enc)
  {
    if (length >= 8)
    {
      do
      {
        v18 = out;
        v19 = v10;
        v20 = v11;
        v21 = v8;
        v8 -= 8;
        v10 = bswap32(*in);
        v22 = in + 8;
        v11 = bswap32(*(in + 1));
        v43[0] = __PAIR64__(v11, v10);
        CAST_decrypt(v43, ks);
        v23 = LODWORD(v43[0]) ^ v19;
        v24 = HIDWORD(v43[0]) ^ v20;
        *v18 = (LODWORD(v43[0]) ^ v19) >> 24;
        v18[1] = BYTE2(v23);
        v18[2] = BYTE1(v23);
        v18[3] = v23;
        v18[4] = HIBYTE(v24);
        v18[5] = BYTE2(v24);
        v18[6] = BYTE1(v24);
        out = v18 + 8;
        v18[7] = v24;
        in = v22;
      }

      while (v21 > 0xF);
      in = v22;
    }

    if (v8)
    {
      v25 = bswap32(*in);
      v26 = bswap32(*(in + 1));
      v43[0] = __PAIR64__(v26, v25);
      CAST_decrypt(v43, ks);
      v27 = LODWORD(v43[0]) ^ v10;
      v28 = &out[v8];
      if (v8 <= 3)
      {
        if (v8 == 1)
        {
LABEL_47:
          *(v28 - 1) = HIBYTE(v27);
          goto LABEL_48;
        }

        if (v8 == 2)
        {
LABEL_46:
          *--v28 = BYTE2(v27);
          goto LABEL_47;
        }

        if (v8 != 3)
        {
          goto LABEL_48;
        }

LABEL_45:
        *--v28 = BYTE1(v27);
        goto LABEL_46;
      }

      v29 = HIDWORD(v43[0]) ^ v11;
      if (v8 <= 5)
      {
        if (v8 == 4)
        {
LABEL_44:
          *--v28 = v27;
          goto LABEL_45;
        }

LABEL_43:
        *--v28 = HIBYTE(v29);
        goto LABEL_44;
      }

      if (v8 == 6)
      {
LABEL_42:
        *--v28 = BYTE2(v29);
        goto LABEL_43;
      }

      if (v8 == 7)
      {
        *--v28 = BYTE1(v29);
        goto LABEL_42;
      }
    }

    else
    {
      v25 = v10;
      v26 = v11;
    }

LABEL_48:
    *iv = HIBYTE(v25);
    iv[1] = BYTE2(v25);
    iv[2] = BYTE1(v25);
    iv[3] = v25;
    iv[4] = HIBYTE(v26);
    iv[5] = BYTE2(v26);
    iv[6] = BYTE1(v26);
    goto LABEL_49;
  }

  if (length >= 8)
  {
    do
    {
      v12 = out;
      v13 = v8;
      v8 -= 8;
      v14 = in + 8;
      v15 = bswap32(*(in + 1));
      LODWORD(v43[0]) = bswap32(*in) ^ v10;
      HIDWORD(v43[0]) = v15 ^ v11;
      CAST_encrypt(v43, ks);
      v10 = v43[0];
      v11 = HIDWORD(v43[0]);
      *out = BYTE3(v43[0]);
      out[1] = BYTE2(v10);
      out[2] = BYTE1(v10);
      out[3] = v10;
      out[4] = HIBYTE(v11);
      out[5] = BYTE2(v11);
      out[6] = BYTE1(v11);
      out += 8;
      v12[7] = v11;
      in = v14;
    }

    while (v13 > 0xF);
    in = v14;
  }

  if (v8)
  {
    v16 = 0;
    v17 = &in[v8];
    if (v8 <= 3)
    {
      v36 = 0;
      if (v8 == 1)
      {
LABEL_32:
        v16 |= *(v17 - 1) << 24;
        goto LABEL_33;
      }

      if (v8 == 2)
      {
LABEL_31:
        v42 = *--v17;
        v16 |= v42 << 16;
        goto LABEL_32;
      }

      if (v8 != 3)
      {
        goto LABEL_33;
      }

LABEL_30:
      v41 = *--v17;
      v16 |= v41 << 8;
      goto LABEL_31;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v36 = 0;
        if (v8 != 7)
        {
LABEL_33:
          LODWORD(v43[0]) = v16 ^ v10;
          HIDWORD(v43[0]) = v36 ^ v11;
          CAST_encrypt(v43, ks);
          v10 = v43[0];
          v26 = HIDWORD(v43[0]);
          v30 = HIBYTE(LODWORD(v43[0]));
          *out = BYTE3(v43[0]);
          v31 = HIWORD(v10);
          out[1] = BYTE2(v10);
          v32 = v10 >> 8;
          out[2] = BYTE1(v10);
          out[3] = v10;
          v33 = HIBYTE(v26);
          out[4] = HIBYTE(v26);
          v34 = HIWORD(v26);
          out[5] = BYTE2(v26);
          v35 = v26 >> 8;
          out[6] = BYTE1(v26);
          out[7] = v26;
          goto LABEL_34;
        }

        v37 = *--v17;
        v16 = v37 << 8;
      }

      v38 = *--v17;
      v16 |= v38 << 16;
    }

    else if (v8 == 4)
    {
LABEL_29:
      v36 = v16;
      v40 = *--v17;
      v16 = v40;
      goto LABEL_30;
    }

    v39 = *--v17;
    v16 |= v39 << 24;
    goto LABEL_29;
  }

  v30 = HIBYTE(v10);
  v31 = HIWORD(v10);
  v32 = v10 >> 8;
  v33 = HIBYTE(v11);
  v34 = HIWORD(v11);
  LOBYTE(v26) = v11;
  v35 = v11 >> 8;
LABEL_34:
  *iv = v30;
  iv[1] = v31;
  iv[2] = v32;
  iv[3] = v10;
  iv[4] = v33;
  iv[5] = v34;
  iv[6] = v35;
LABEL_49:
  iv[7] = v26;
}

int PKCS12_PBE_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass, int passlen, ASN1_TYPE *param, const EVP_CIPHER *cipher, const EVP_MD *md_type, int en_de)
{
  v29 = *MEMORY[0x277D85DE8];
  if (param && param->type == 16 && (ptr = param->value.ptr) != 0)
  {
    in = *(ptr + 1);
    v14 = d2i_PBEPARAM(0, &in, *ptr);
    if (v14)
    {
      v15 = v14;
      iter = v14->iter;
      if (iter)
      {
        v17 = ASN1_INTEGER_get(iter);
        if (v17 <= 0)
        {
          v18 = 101;
          v19 = 99;
LABEL_18:
          ERR_put_error(35, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_crpt.c", v19);
          PBEPARAM_free(v15);
          return 0;
        }
      }

      else
      {
        v17 = 1;
      }

      data = v15->salt->data;
      length = v15->salt->length;
      v24 = EVP_CIPHER_key_length(cipher);
      if (PKCS12_key_gen_asc(pass, passlen, data, length, 1, v17, v24, out, md_type))
      {
        v25 = EVP_CIPHER_iv_length(cipher);
        if (PKCS12_key_gen_asc(pass, passlen, data, length, 2, v17, v25, iv, md_type))
        {
          PBEPARAM_free(v15);
          EVP_CipherInit_ex(ctx, cipher, 0, out, iv, en_de);
          explicit_bzero(out, 0x40uLL);
        }

        v18 = 106;
        v19 = 113;
      }

      else
      {
        v18 = 107;
        v19 = 107;
      }

      goto LABEL_18;
    }

    v20 = 92;
  }

  else
  {
    v20 = 86;
  }

  ERR_put_error(35, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_crpt.c", v20);
  return 0;
}

uint64_t pkey_gost01_decrypt(uint64_t *a1, uint64_t a2, void *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = a4;
  v9 = EVP_PKEY_CTX_get0_pkey(a1);
  if (a2)
  {
    v10 = v9;
    v11 = d2i_GOST_KEY_TRANSPORT(0, &v28, a5);
    if (v11)
    {
      v12 = v11;
      v13 = X509_PUBKEY_get(*(*(v11 + 1) + 8));
      if (v13)
      {
        if (EVP_PKEY_derive_set_peer(a1, v13) <= 0)
        {
          v14 = 111;
          v15 = 401;
          goto LABEL_20;
        }
      }

      else if (EVP_PKEY_CTX_ctrl(a1, -1, -1) <= 0)
      {
        v14 = 107;
        v15 = 408;
        goto LABEL_20;
      }

      v17 = EVP_PKEY_CTX_get0_peerkey(a1);
      if (v17)
      {
        v18 = v17;
        v19 = OBJ_obj2nid(**(v12 + 1));
        v20 = *(*(v12 + 1) + 16);
        if (*v20 == 8)
        {
          v30 = **(v20 + 8);
          v21 = *v12;
          v22 = **v12;
          if (*v22 == 32)
          {
            v23 = *(v22 + 8);
            v24 = v23[1];
            v31 = *v23;
            v32 = v24;
            v25 = v21[1];
            if (*v25 == 4)
            {
              v26 = v19;
              v33 = **(v25 + 8);
              if (gost01_VKO_key(v18, v10, &v30, v29) >= 1)
              {
                gost_key_unwrap_crypto_pro(v26);
              }

              goto LABEL_21;
            }

            v14 = 68;
            v15 = 431;
          }

          else
          {
            v14 = 137;
            v15 = 426;
          }
        }

        else
        {
          v14 = 103;
          v15 = 421;
        }
      }

      else
      {
        v14 = 116;
        v15 = 414;
      }

LABEL_20:
      ERR_put_error(50, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", v15);
LABEL_21:
      v16 = 0;
      EVP_PKEY_free(v13);
      GOST_KEY_TRANSPORT_free(v12);
      return v16;
    }

    ERR_put_error(50, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", 393);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *a3 = 32;
    return 1;
  }
}

uint64_t gost01_VKO_key(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = BN_CTX_new();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  BN_CTX_start(v8);
  v10 = BN_CTX_get(v9);
  if (v10)
  {
    v11 = v10;
    v12 = BN_CTX_get(v9);
    if (v12)
    {
      v13 = v12;
      v14 = BN_CTX_get(v9);
      if (v14)
      {
        v15 = v14;
        GOST_le2bn(a3, 8uLL, v11);
        digest = GOST_KEY_get_digest(*(a2 + 32));
        if (VKO_compute_key(v13, v15, *(a1 + 32), *(a2 + 32), v11))
        {
          if (digest == 942)
          {
            GOST_bn2le(v13, __src, 64);
            GOST_bn2le(v15, v22, 64);
            v18 = 128;
          }

          else
          {
            if (digest != 941)
            {
              if (digest == 822)
              {
                GOST_bn2le(v13, __src, 32);
                GOST_bn2le(v15, v21, 32);
                GOSTR341194(__src);
                v19 = 1;
              }

              else
              {
                v19 = 4294967294;
              }

              goto LABEL_11;
            }

            GOST_bn2le(v13, __src, 32);
            GOST_bn2le(v15, v21, 32);
            v18 = 64;
          }

          STREEBOG256(__src, v18, a4);
        }
      }
    }
  }

  v19 = 0;
LABEL_11:
  BN_CTX_end(v9);
  BN_CTX_free(v9);
  return v19;
}

uint64_t pkey_gost01_derive(uint64_t a1, void *a2, void *a3)
{
  v6 = EVP_PKEY_CTX_get0_pkey(a1);
  v7 = EVP_PKEY_CTX_get0_peerkey(a1);
  v8 = *(EVP_PKEY_CTX_get_data(a1) + 16);
  if (!v8)
  {
    ERR_put_error(50, 4095, 123, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", 462);
    return 0;
  }

  if (a2)
  {
    if (gost01_VKO_key(v7, v6, v8, a2) >= 1)
    {
      *a3 = 32;
      return 1;
    }

    return 0;
  }

  result = 32;
  *a3 = 32;
  return result;
}

uint64_t pkey_gost01_encrypt(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  __buf[1] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v6 = EVP_PKEY_CTX_get0_pkey(a1);
  data = EVP_PKEY_CTX_get_data(a1);
  v8 = EVP_PKEY_CTX_get0_peerkey(a1);
  v9 = v8;
  v10 = *(data + 16);
  if (v10)
  {
    __buf[0] = *v10;
    if (v8)
    {
LABEL_3:
      if (!GOST_KEY_get0_private_key(*(v9 + 32)))
      {
        ERR_put_error(50, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", 500);
        v16 = 0;
LABEL_30:
        GOST_KEY_TRANSPORT_free(v16);
        return 0xFFFFFFFFLL;
      }

      v11 = 0;
      v12 = v9;
      if (v4)
      {
LABEL_5:
        if (gost01_VKO_key(v6, v12, __buf, v26) >= 1)
        {
          gost_key_wrap_crypto_pro(824);
        }

        v16 = 0;
LABEL_25:
        if (!v11)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      goto LABEL_17;
    }
  }

  else
  {
    arc4random_buf(__buf, 8uLL);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (v4)
  {
    v12 = EVP_PKEY_new();
    if (v12)
    {
      v13 = GOST_KEY_new();
      if (v13)
      {
        v14 = v13;
        v15 = EVP_PKEY_base_id(&v6->type);
        if (EVP_PKEY_assign(v12, v15, v14))
        {
          if (EVP_PKEY_copy_parameters(v12, v6) && gost2001_keygen(v12->attributes))
          {
            v11 = 1;
            goto LABEL_5;
          }
        }

        else
        {
          GOST_KEY_free(v14);
        }
      }
    }

    v16 = 0;
    goto LABEL_29;
  }

  v12 = 0;
  v11 = 1;
LABEL_17:
  v17 = GOST_KEY_TRANSPORT_new();
  v16 = v17;
  if (!v17 || !ASN1_OCTET_STRING_set(*(*(v17 + 1) + 16), __buf, 8) || !ASN1_OCTET_STRING_set(*(*v16 + 8), v25, 4) || !ASN1_OCTET_STRING_set(**v16, v24, 32))
  {
    goto LABEL_25;
  }

  v18 = *(v16 + 1);
  if (!v9)
  {
    if (X509_PUBKEY_set((v18 + 8), v6))
    {
      ASN1_OBJECT_free(**(v16 + 1));
      **(v16 + 1) = OBJ_nid2obj(824);
      EVP_PKEY_free(v12);
      v4 = v23;
      goto LABEL_34;
    }

    ERR_put_error(50, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", 547);
LABEL_29:
    EVP_PKEY_free(v12);
    goto LABEL_30;
  }

  ASN1_OBJECT_free(*v18);
  **(v16 + 1) = OBJ_nid2obj(824);
  if (EVP_PKEY_CTX_ctrl(a1, -1, -1) <= 0)
  {
    ERR_put_error(50, 4095, 107, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", 559);
    goto LABEL_30;
  }

LABEL_34:
  if (v4)
  {
    v21 = &v23;
  }

  else
  {
    v21 = 0;
  }

  v22 = i2d_GOST_KEY_TRANSPORT(v16, v21);
  *a3 = v22;
  v19 = v22 != 0;
  GOST_KEY_TRANSPORT_free(v16);
  return v19;
}

uint64_t pkey_gost01_init(uint64_t a1)
{
  v2 = EVP_PKEY_CTX_get0_pkey(a1);
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x103004075AECAACuLL);
  if (result)
  {
    v4 = result;
    if (v2)
    {
      v5 = *(v2 + 32);
      if (v5)
      {
        v6 = GOST_KEY_get0_group(v5);
        *v4 = EC_GROUP_get_curve_name(v6);
        v4[1] = GOST_KEY_get_digest(*(v2 + 32));
      }
    }

    EVP_PKEY_CTX_set_data(a1, v4);
    return 1;
  }

  return result;
}

uint64_t pkey_gost01_copy(uint64_t a1, uint64_t a2)
{
  result = pkey_gost01_init(a1);
  if (result)
  {
    data = EVP_PKEY_CTX_get_data(a2);
    v6 = EVP_PKEY_CTX_get_data(a1);
    v7 = data[1];
    *v6 = *data;
    v6[1] = v7;
    if (*(data + 2))
    {
      *(v6 + 2) = 0;
    }

    return 1;
  }

  return result;
}

void pkey_gost01_cleanup(uint64_t a1)
{
  data = EVP_PKEY_CTX_get_data(a1);
  if (data)
  {
    v2 = data;
    free(*(data + 16));

    free(v2);
  }
}

uint64_t pkey_gost01_paramgen(uint64_t a1, EVP_PKEY *a2)
{
  data = EVP_PKEY_CTX_get_data(a1);
  if (*data && data[1])
  {
    v4 = EC_GROUP_new_by_curve_name(*data);
    v5 = v4;
    if (v4)
    {
      EC_GROUP_set_asn1_flag(v4, 1);
      v6 = GOST_KEY_new();
      v7 = v6;
      if (v6)
      {
        if (GOST_KEY_set_digest(v6, data[1]))
        {
          if (GOST_KEY_set_group(v7, v5))
          {
            v8 = EVP_PKEY_assign(a2, 811, v7);
            if (v8)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    GOST_KEY_free(v7);
    v8 = 0;
LABEL_12:
    EC_GROUP_free(v5);
    return v8;
  }

  ERR_put_error(50, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", 197);
  return 0;
}

uint64_t pkey_gost01_keygen(uint64_t a1, uint64_t a2)
{
  result = pkey_gost01_paramgen(a1, a2);
  if (result)
  {
    return gost2001_keygen(*(a2 + 32)) != 0;
  }

  return result;
}

uint64_t pkey_gost01_sign(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v10 = EVP_PKEY_CTX_get0_pkey(a1);
  data = EVP_PKEY_CTX_get_data(a1);
  if (!v10)
  {
    return 0;
  }

  v12 = data;
  v13 = *(v10 + 32);
  if (!v13)
  {
    return 0;
  }

  size = GOST_KEY_get_size(v13);
  if (a3)
  {
    v15 = size;
    if (a2)
    {
      if (*a3 < (2 * size))
      {
        v16 = 100;
        v17 = 253;
LABEL_17:
        ERR_put_error(50, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", v17);
        return 0;
      }

      if (a5 != 32 && a5 != 64)
      {
        v16 = 136;
        v17 = 257;
        goto LABEL_17;
      }

      v18 = GOST_le2bn(a4, a5, 0);
      if (!v18)
      {
        return 0;
      }

      v19 = v18;
      v20 = gost2001_do_sign(v18, *(v10 + 32));
      BN_free(v19);
      if (!v20)
      {
        return 0;
      }

      v21 = *(v12 + 28);
      if (v21)
      {
        if (v21 == 1)
        {
          pack_signature_le(v20, v15, a2, a3);
          return 1;
        }

        a3 = 0xFFFFFFFFLL;
      }

      else
      {
        if (pack_signature_cp(v20, v15, a2, a3))
        {
          return 1;
        }

        a3 = 0;
      }

      ECDSA_SIG_free(v20);
      return a3;
    }

    *a3 = 2 * size;
    return 1;
  }

  return a3;
}

uint64_t pkey_gost01_verify(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v10 = EVP_PKEY_CTX_get0_pkey(a1);
  data = EVP_PKEY_CTX_get_data(a1);
  if (!v10)
  {
    return 0;
  }

  v12 = *(data + 28);
  if (v12 == 1)
  {
    v15 = ECDSA_SIG_new();
    if (v15)
    {
      v14 = v15;
      GOST_le2bn(a2, a3 >> 1, v15->r);
      GOST_le2bn(&a2[a3 >> 1], a3 >> 1, v14->s);
      goto LABEL_8;
    }

    v19 = 110;
    goto LABEL_14;
  }

  if (v12)
  {
    return 0;
  }

  v13 = ECDSA_SIG_new();
  if (!v13)
  {
    v19 = 77;
LABEL_14:
    ERR_put_error(50, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", v19);
    return 0;
  }

  v14 = v13;
  BN_bin2bn(a2, a3 >> 1, v13->s);
  BN_bin2bn(&a2[a3 >> 1], a3 >> 1, v14->r);
LABEL_8:
  v16 = GOST_le2bn(a4, a5, 0);
  v17 = v16;
  if (v16)
  {
    v18 = gost2001_do_verify(v16, &v14->r, *(v10 + 32));
  }

  else
  {
    v18 = 0;
  }

  BN_free(v17);
  ECDSA_SIG_free(v14);
  return v18;
}

uint64_t pkey_gost01_ctrl(uint64_t a1, int a2, int a3, EVP_MD *a4)
{
  data = EVP_PKEY_CTX_get_data(a1);
  result = 1;
  if (a2 <= 6)
  {
    if ((a2 - 3) < 3)
    {
      return result;
    }

    if (a2 == 1)
    {
      v11 = EVP_MD_type(a4);
      if (v11 == GostR3410_get_md_digest(*(data + 4)))
      {
        *(data + 8) = a4;
        return 1;
      }

      v12 = 100;
      v13 = 585;
LABEL_29:
      ERR_put_error(50, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/gost/gostr341001_pmeth.c", v13);
      return 0;
    }

    if (a2 != 2)
    {
      return 4294967294;
    }

    if (a3 >= 2)
    {
      if (a3 != 3)
      {
        if (a3 == 2)
        {
          return *(data + 24);
        }

        return 4294967294;
      }

      *(data + 24) = 1;
    }
  }

  else
  {
    if (a2 <= 4097)
    {
      if (a2 == 7)
      {
        return result;
      }

      if (a2 != 8)
      {
        if (a2 == 4097)
        {
          *data = a3;
          return result;
        }

        return 4294967294;
      }

      v9 = malloc_type_malloc(a3, 0x3E8D7E2FuLL);
      if (v9)
      {
        v10 = v9;
        memcpy(v9, a4, a3);
        free(*(data + 16));
        *(data + 16) = v10;
        return 1;
      }

      v12 = 65;
      v13 = 605;
      goto LABEL_29;
    }

    if (a2 == 4098)
    {
      if (a3 <= 1)
      {
        *(data + 28) = a3;
        return result;
      }

      return 0;
    }

    if (a2 != 4099)
    {
      if (a2 == 4100)
      {
        a4->type = *(data + 4);
        return result;
      }

      return 4294967294;
    }

    *(data + 4) = a3;
  }

  return result;
}

uint64_t pkey_gost01_ctrl_str(uint64_t a1, char *__s1, char *a3)
{
  if (strcmp(__s1, "paramset"))
  {
    if (strcmp(__s1, "dgst"))
    {
      return 4294967294;
    }

    if (!a3)
    {
      return 0;
    }

    if (!strcmp(a3, "gost94") || !strcmp(a3, "md_gost94"))
    {
      v9 = 822;
    }

    else if (!strcmp(a3, "streebog256"))
    {
      v9 = 941;
    }

    else
    {
      if (strcmp(a3, "streebog512"))
      {
        return 0;
      }

      v9 = 942;
    }

    *(EVP_PKEY_CTX_get_data(a1) + 4) = v9;
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  if (*(EVP_PKEY_CTX_get_data(a1) + 4) == 942)
  {
    v7 = GostR3410_512_param_id(a3);
  }

  else
  {
    v7 = GostR3410_256_param_id(a3);
  }

  v8 = v7;
  if (v7 || (result = OBJ_txt2nid(a3), (v8 = result) != 0))
  {
    *EVP_PKEY_CTX_get_data(a1) = v8;
    return 1;
  }

  return result;
}

uint64_t pack_signature_cp(ECDSA_SIG *a1, int a2, void *a3, size_t *a4)
{
  v8 = BN_num_bits(a1->r);
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  v10 = v9 >> 3;
  v11 = BN_num_bits(a1->s);
  v12 = v11 + 7;
  if (v11 < -7)
  {
    v12 = v11 + 14;
  }

  v13 = v12 >> 3;
  if (v10 > a2 || v13 > a2)
  {
    return 0;
  }

  v16 = 2 * a2;
  *a4 = v16;
  bzero(a3, v16);
  BN_bn2bin(a1->s, a3 + a2 - v13);
  BN_bn2bin(a1->r, a3 + 2 * a2 - v10);
  ECDSA_SIG_free(a1);
  return 1;
}

void pack_signature_le(ECDSA_SIG *a1, int a2, void *a3, size_t *a4)
{
  v7 = 2 * a2;
  *a4 = v7;
  bzero(a3, v7);
  GOST_bn2le(a1->r, a3, a2);
  GOST_bn2le(a1->s, a3 + a2, a2);

  ECDSA_SIG_free(a1);
}

void DSA_SIG_free(DSA_SIG *a)
{
  if (a)
  {
    BN_free(a->r);
    BN_free(a->s);

    free(a);
  }
}

void *dsa_do_sign(const unsigned __int8 *a1, int a2, uint64_t a3)
{
  b = 0;
  a = 0;
  if (dsa_check_key(a3))
  {
    v6 = BN_new();
    if (v6)
    {
      v7 = BN_CTX_new();
      v8 = v7;
      if (v7)
      {
        BN_CTX_start(v7);
        v9 = BN_CTX_get(v8);
        if (v9)
        {
          v10 = v9;
          v11 = BN_CTX_get(v8);
          if (v11)
          {
            v12 = v11;
            v13 = BN_CTX_get(v8);
            if (v13)
            {
              v14 = v13;
              v15 = BN_CTX_get(v8);
              if (v15)
              {
                v16 = v15;
                v17 = BN_CTX_get(v8);
                if (v17)
                {
                  v18 = v17;
                  v19 = BN_num_bits(*(a3 + 24));
                  v20 = v19 + 7;
                  if (v19 < -7)
                  {
                    v20 = v19 + 14;
                  }

                  if (a2 > v20 >> 3)
                  {
                    v21 = BN_num_bits(*(a3 + 24));
                    v22 = v21 + 7;
                    if (v21 < -7)
                    {
                      v22 = v21 + 14;
                    }

                    a2 = v22 >> 3;
                  }

                  if (BN_bin2bn(a1, a2, v18))
                  {
                    v23 = 33;
                    while (1)
                    {
                      v24 = *(a3 + 56);
                      if (v24 && *(a3 + 64))
                      {
                        v25 = 0;
                        b = *(a3 + 64);
                        a = v24;
                        *(a3 + 56) = 0;
                        *(a3 + 64) = 0;
                      }

                      else
                      {
                        if (!(*(*(a3 + 104) + 16))(a3, v8, &a, &b))
                        {
                          break;
                        }

                        v25 = 1;
                      }

                      v26 = BN_value_one();
                      if (!bn_rand_interval(v10, v26, *(a3 + 24)) || !BN_mod_inverse_ct(v12, v10, *(a3 + 24), v8) || !BN_mod_mul(v16, v10, *(a3 + 48), *(a3 + 24), v8) || !BN_mod_mul(v16, v16, b, *(a3 + 24), v8) || !BN_mod_mul(v14, v10, v18, *(a3 + 24), v8) || !BN_mod_add(v6, v16, v14, *(a3 + 24), v8) || !BN_mod_mul(v6, v6, a, *(a3 + 24), v8) || !BN_mod_mul(v6, v6, v12, *(a3 + 24), v8))
                      {
                        break;
                      }

                      if (!BN_is_zero(b) && !BN_is_zero(v6))
                      {
                        v30 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
                        if (v30)
                        {
                          v28 = v30;
                          *v30 = b;
                          v30[1] = v6;
                          goto LABEL_39;
                        }

                        v27 = 65;
                        goto LABEL_38;
                      }

                      if (!v25)
                      {
                        v27 = 110;
                        goto LABEL_38;
                      }

                      v27 = 112;
                      if (!--v23)
                      {
                        goto LABEL_38;
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
      v8 = 0;
    }

    v27 = 3;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v27 = 112;
  }

LABEL_38:
  ERR_put_error(10, 4095, v27, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ossl.c", 217);
  BN_free(b);
  BN_free(v6);
  v28 = 0;
LABEL_39:
  BN_CTX_end(v8);
  BN_CTX_free(v8);
  BN_free(a);
  return v28;
}

uint64_t dsa_sign_setup(uint64_t a1, BN_CTX *a2, BIGNUM **a3, BIGNUM **a4)
{
  if (!dsa_check_key(a1))
  {
    v8 = 0;
    goto LABEL_24;
  }

  v8 = BN_new();
  if (!v8)
  {
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  v9 = a2;
  if (!a2)
  {
    v9 = BN_CTX_new();
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  BN_CTX_start(v9);
  v10 = BN_CTX_get(v9);
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = v10;
  v12 = BN_CTX_get(v9);
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = v12;
  v14 = BN_CTX_get(v9);
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  v16 = BN_num_bits(*(a1 + 24));
  if (!BN_set_bit(v11, v16))
  {
    goto LABEL_25;
  }

  if (!BN_set_bit(v13, v16))
  {
    goto LABEL_25;
  }

  if (!BN_set_bit(v15, v16))
  {
    goto LABEL_25;
  }

  v17 = BN_value_one();
  if (!bn_rand_interval(v11, v17, *(a1 + 24)))
  {
    goto LABEL_25;
  }

  BN_set_flags(v11, 4);
  if ((*(a1 + 72) & 1) != 0 && !BN_MONT_CTX_set_locked((a1 + 80), 8, *(a1 + 16), v9))
  {
    goto LABEL_25;
  }

  if (!BN_add(v13, v11, *(a1 + 24)) || !BN_add(v15, v13, *(a1 + 24)))
  {
    goto LABEL_25;
  }

  v18 = BN_num_bits(v13) <= v16 ? v15 : v13;
  if (!bn_copy(v11, v18))
  {
    goto LABEL_25;
  }

  v19 = *(*(a1 + 104) + 40);
  if (!v19)
  {
    if (BN_mod_exp_mont_ct(v8, *(a1 + 32), v11, *(a1 + 16), v9, *(a1 + 80)))
    {
      goto LABEL_30;
    }

LABEL_25:
    ERR_put_error(10, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ossl.c", 322);
    BN_free(v8);
    v20 = 0;
    goto LABEL_26;
  }

  if (!v19(a1, v8, *(a1 + 32), v11, *(a1 + 16), v9, *(a1 + 80)))
  {
    goto LABEL_25;
  }

LABEL_30:
  if (!BN_mod_ct(v8, v8, *(a1 + 24), v9))
  {
    goto LABEL_25;
  }

  v22 = BN_mod_inverse_ct(0, v11, *(a1 + 24), v9);
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = v22;
  BN_free(*a3);
  *a3 = v23;
  BN_free(*a4);
  *a4 = v8;
  v20 = 1;
LABEL_26:
  BN_CTX_end(v9);
  if (v9 != a2)
  {
    BN_CTX_free(v9);
  }

  return v20;
}

uint64_t dsa_do_verify(const unsigned __int8 *a1, int a2, uint64_t *a3, uint64_t a4)
{
  if (!dsa_check_key(a4))
  {
    v9 = 0;
    goto LABEL_14;
  }

  v8 = BN_CTX_new();
  v9 = v8;
  if (!v8)
  {
    goto LABEL_14;
  }

  BN_CTX_start(v8);
  v10 = BN_CTX_get(v9);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = BN_CTX_get(v9);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = BN_CTX_get(v9);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  if (!BN_is_zero(*a3) && !BN_is_negative(*a3) && BN_ucmp(*a3, *(a4 + 24)) < 0 && !BN_is_zero(a3[1]) && !BN_is_negative(a3[1]) && BN_ucmp(a3[1], *(a4 + 24)) < 0)
  {
    if (!BN_mod_inverse_ct(v13, a3[1], *(a4 + 24), v9))
    {
      goto LABEL_14;
    }

    v18 = BN_num_bits(*(a4 + 24)) >> 3;
    v19 = v18 >= a2 ? a2 : v18;
    if (!BN_bin2bn(a1, v19, v11) || !BN_mod_mul(v11, v11, v13, *(a4 + 24), v9) || !BN_mod_mul(v13, *a3, v13, *(a4 + 24), v9))
    {
      goto LABEL_14;
    }

    if (*(a4 + 72))
    {
      v20 = BN_MONT_CTX_set_locked((a4 + 80), 8, *(a4 + 16), v9);
      if (!v20)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = *(*(a4 + 104) + 32);
    if (v21)
    {
      if (!v21(a4, v15, *(a4 + 32), v11, *(a4 + 40), v13, *(a4 + 16), v9, v20))
      {
        goto LABEL_14;
      }

LABEL_30:
      if (BN_mod_ct(v11, v15, *(a4 + 24), v9))
      {
        v16 = BN_ucmp(v11, *a3) == 0;
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (BN_mod_exp2_mont(v15, *(a4 + 32), v11, *(a4 + 40), v13, *(a4 + 16), v9, v20))
    {
      goto LABEL_30;
    }

LABEL_14:
    ERR_put_error(10, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dsa/dsa_ossl.c", 417);
    v16 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v16 = 0;
LABEL_15:
  BN_CTX_end(v9);
  BN_CTX_free(v9);
  return v16;
}

STACK *i2v_AUTHORITY_KEYID(uint64_t a1, int **a2, STACK *a3)
{
  extlist = a3;
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    result = sk_new_null();
    v4 = result;
    extlist = result;
    if (!result)
    {
      return result;
    }
  }

  if (*a2)
  {
    v6 = hex_to_string(*(*a2 + 1), **a2);
    if (!v6 || !X509V3_add_value("keyid", v6, &extlist))
    {
      goto LABEL_17;
    }

    free(v6);
  }

  v7 = a2[1];
  if (!v7 || (extlist = i2v_GENERAL_NAMES(0, v7, extlist)) != 0)
  {
    v8 = a2[2];
    if (v8)
    {
      v6 = hex_to_string(*(v8 + 1), *v8);
      if (!v6 || !X509V3_add_value("serial", v6, &extlist))
      {
        goto LABEL_17;
      }

      free(v6);
    }

    if (sk_num(extlist) >= 1)
    {
      return extlist;
    }
  }

  v6 = 0;
LABEL_17:
  free(v6);
  sk_pop_free(v4, X509V3_conf_free);
  return 0;
}

AUTHORITY_KEYID *v2i_AUTHORITY_KEYID(int a1, uint64_t a2, STACK *a3)
{
  if (sk_num(a3) >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = sk_value(a3, v4);
      v8 = *(v7 + 1);
      if (!strcmp(v8, "keyid"))
      {
        v10 = *(v7 + 2);
        if (v10)
        {
          if (!strcmp(v10, "always"))
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        if (strcmp(v8, "issuer"))
        {
          ERR_put_error(34, 4095, 120, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_akey.c", 175);
          ERR_asprintf_error_data("name=%s", *(v7 + 1));
          return 0;
        }

        v9 = *(v7 + 2);
        if (v9)
        {
          if (!strcmp(v9, "always"))
          {
            v5 = 2;
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      if (++v4 >= sk_num(a3))
      {
        goto LABEL_18;
      }
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_18:
  if (!a2)
  {
    goto LABEL_29;
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    if (v6)
    {
      ext_by_NID = X509_get_ext_by_NID(*(a2 + 8), 82, -1);
      if (ext_by_NID < 0 || (ext = X509_get_ext(v11, ext_by_NID)) == 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = X509V3_EXT_d2i(ext);
      }

      if (v6 == 2 && !v14)
      {
        v16 = 123;
        v17 = 195;
        goto LABEL_30;
      }
    }

    else
    {
      v14 = 0;
    }

    v18 = v5 != 0;
    if (v14)
    {
      v18 = 0;
    }

    if (v5 == 2 || v18)
    {
      issuer_name = X509_get_issuer_name(v11);
      v21 = X509_NAME_dup(issuer_name);
      serialNumber = X509_get_serialNumber(v11);
      v26 = ASN1_INTEGER_dup(serialNumber);
      v19 = v26;
      if (v21 && v26)
      {
        v23 = AUTHORITY_KEYID_new();
        if (v23)
        {
          v20 = sk_new_null();
          if (v20)
          {
            v22 = GENERAL_NAME_new();
            if (v22 && sk_push(v20, v22))
            {
              v22->type = 4;
              v22->d.ptr = v21;
              result = v23;
              goto LABEL_41;
            }
          }

          else
          {
            v22 = 0;
          }

          ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_akey.c", 216);
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }
      }

      else
      {
        ERR_put_error(34, 4095, 122, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_akey.c", 204);
        v20 = 0;
        v22 = 0;
        v23 = 0;
      }
    }

    else
    {
      result = AUTHORITY_KEYID_new();
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      if (result)
      {
LABEL_41:
        result->issuer = v20;
        result->serial = v19;
        result->keyid = v14;
        return result;
      }
    }

    AUTHORITY_KEYID_free(v23);
    GENERAL_NAME_free(v22);
    sk_free(v20);
    X509_NAME_free(v21);
    ASN1_INTEGER_free(v19);
    ASN1_OCTET_STRING_free(v14);
    return 0;
  }

  if (*a2 != 1)
  {
LABEL_29:
    v16 = 121;
    v17 = 184;
LABEL_30:
    ERR_put_error(34, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_akey.c", v17);
    return 0;
  }

  return AUTHORITY_KEYID_new();
}

void DES_cfb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, DES_key_schedule *schedule, DES_cblock *ivec, int *num, int enc)
{
  v10 = length;
  v20[1] = *MEMORY[0x277D85DE8];
  v13 = *num;
  if (enc)
  {
    if (length)
    {
      do
      {
        if (!v13)
        {
          v20[0] = *ivec;
          DES_encrypt1(v20, schedule, 1);
          v14 = HIDWORD(v20[0]);
          *ivec = v20[0];
          *&(*ivec)[4] = v14;
        }

        v15 = *in++;
        v16 = (*ivec)[v13];
        *out++ = v16 ^ v15;
        (*ivec)[v13] = v16 ^ v15;
        v13 = (v13 + 1) & 7;
        --v10;
      }

      while (v10);
    }
  }

  else if (length)
  {
    do
    {
      if (!v13)
      {
        v20[0] = *ivec;
        DES_encrypt1(v20, schedule, 1);
        v17 = HIDWORD(v20[0]);
        *ivec = v20[0];
        *&(*ivec)[4] = v17;
      }

      v18 = *in++;
      v19 = (*ivec)[v13];
      (*ivec)[v13] = v18;
      *out++ = v19 ^ v18;
      v13 = (v13 + 1) & 7;
      --v10;
    }

    while (v10);
  }

  *num = v13;
}

X509_REQ *__cdecl X509_to_X509_REQ(X509 *x, EVP_PKEY *pkey, const EVP_MD *md)
{
  v6 = X509_REQ_new();
  v7 = v6;
  if (!v6)
  {
    ERR_put_error(11, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_req.c", 85);
LABEL_10:
    X509_REQ_free(v7);
    return 0;
  }

  if (!X509_REQ_set_version(v6, 0))
  {
    goto LABEL_10;
  }

  subject_name = X509_get_subject_name(x);
  if (!X509_REQ_set_subject_name(v7, subject_name))
  {
    goto LABEL_10;
  }

  pubkey = X509_get_pubkey(x);
  if (!pubkey)
  {
    goto LABEL_10;
  }

  v10 = pubkey;
  v11 = X509_REQ_set_pubkey(v7, pubkey);
  EVP_PKEY_free(v10);
  if (!v11 || pkey && !X509_REQ_sign(v7, pkey, md))
  {
    goto LABEL_10;
  }

  return v7;
}

EVP_PKEY *__cdecl X509_REQ_get_pubkey(X509_REQ *req)
{
  if (req && req->req_info)
  {
    return X509_PUBKEY_get(req->req_info->pubkey);
  }

  else
  {
    return 0;
  }
}

EVP_PKEY *X509_REQ_get0_pubkey(uint64_t a1)
{
  if (a1 && *a1)
  {
    return X509_PUBKEY_get0(*(*a1 + 40));
  }

  else
  {
    return 0;
  }
}

int X509_REQ_check_private_key(X509_REQ *x509, EVP_PKEY *pkey)
{
  if (x509)
  {
    if (!x509->req_info)
    {
      LODWORD(x509) = 0;
      return x509;
    }

    x509 = X509_PUBKEY_get0(x509->req_info->pubkey);
    if (x509)
    {
      v3 = EVP_PKEY_cmp(x509, pkey);
      LODWORD(x509) = 0;
      if (v3 < 0)
      {
        if (v3 == -2)
        {
          if (pkey->type == 28)
          {
            v4 = 114;
            v5 = 162;
          }

          else if (pkey->type == 408)
          {
            v4 = 16;
            v5 = 155;
          }

          else
          {
            v4 = 117;
            v5 = 166;
          }

          goto LABEL_18;
        }

        if (v3 == -1)
        {
          v4 = 115;
          v5 = 150;
LABEL_18:
          ERR_put_error(11, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_req.c", v5);
          LODWORD(x509) = 0;
        }
      }

      else
      {
        if (!v3)
        {
          v4 = 116;
          v5 = 147;
          goto LABEL_18;
        }

        LODWORD(x509) = v3 == 1;
      }
    }
  }

  return x509;
}

int X509_REQ_extension_nid(int nid)
{
  v1 = *ext_nids;
  if (!*ext_nids)
  {
    return 0;
  }

  v2 = ext_nids + 1;
  while (v1 != nid)
  {
    v3 = *v2++;
    v1 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

STACK *__cdecl X509_REQ_get_extensions(STACK *req)
{
  if (req)
  {
    v1 = req;
    if (*&req->num)
    {
      v2 = ext_nids == 0;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

    v3 = *ext_nids;
    if (*ext_nids)
    {
      v4 = ext_nids + 1;
      while (1)
      {
        attr_by_NID = X509at_get_attr_by_NID(*(*&v1->num + 48), v3, -1);
        if (attr_by_NID != -1)
        {
          break;
        }

        v6 = *v4++;
        v3 = v6;
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      attr = X509at_get_attr(*(*&v1->num + 48), attr_by_NID);
      v8 = X509_ATTRIBUTE_get0_type(attr, 0);
      if (v8)
      {
        if (v8->type == 16)
        {
          ptr = v8->value.ptr;
          in = *(ptr + 1);
          return d2i_X509_EXTENSIONS(0, &in, *ptr);
        }

        return 0;
      }
    }

LABEL_17:

    return sk_new_null();
  }

  return req;
}

int X509_REQ_add_extensions_nid(X509_REQ *req, STACK *exts, int nid)
{
  out = 0;
  v5 = i2d_X509_EXTENSIONS(exts, &out);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = X509at_add1_attr_by_NID(&req->req_info->attributes, nid, 16, out, v5) != 0;
  free(out);
  return v6;
}

uint64_t i2d_re_X509_REQ_tbs(X509_REQ_INFO **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v2->enc.modified = 1;
  return i2d_X509_REQ_INFO(v2, a2);
}

uint64_t ec_GFp_simple_group_init(uint64_t a1)
{
  BN_init((a1 + 104));
  BN_init((a1 + 152));
  BN_init((a1 + 176));
  *(a1 + 200) = 0;
  return 1;
}

void ec_GFp_simple_group_finish(uint64_t a1)
{
  BN_free((a1 + 104));
  BN_free((a1 + 152));

  BN_free((a1 + 176));
}

BOOL ec_GFp_simple_group_copy(uint64_t a1, uint64_t a2)
{
  result = bn_copy((a1 + 104), (a2 + 104));
  if (result)
  {
    result = bn_copy((a1 + 152), (a2 + 152));
    if (result)
    {
      result = bn_copy((a1 + 176), (a2 + 176));
      if (result)
      {
        *(a1 + 200) = *(a2 + 200);
        return 1;
      }
    }
  }

  return result;
}

uint64_t ec_GFp_simple_group_set_curve(uint64_t a1, BIGNUM *a, const BIGNUM *a3, const BIGNUM *a4, BN_CTX *a5)
{
  if (BN_num_bits(a) >= 3 && BN_is_odd(a))
  {
    BN_CTX_start(a5);
    v10 = BN_CTX_get(a5);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    if (!bn_copy((a1 + 104), a))
    {
      goto LABEL_16;
    }

    BN_set_negative((a1 + 104), 0);
    if (!BN_nnmod(v11, a3, a, a5))
    {
      goto LABEL_16;
    }

    v12 = *(*a1 + 288);
    if (v12)
    {
      if (!v12(a1, a1 + 152, v11, a5))
      {
        goto LABEL_16;
      }
    }

    else if (!bn_copy((a1 + 152), v11))
    {
      goto LABEL_16;
    }

    if (BN_nnmod((a1 + 176), a4, a, a5))
    {
      v14 = *(*a1 + 288);
      if (!v14 || v14(a1, a1 + 176, a1 + 176, a5))
      {
        if (BN_add_word(v11, 3uLL))
        {
          *(a1 + 200) = BN_cmp(v11, (a1 + 104)) == 0;
          v13 = 1;
LABEL_17:
          BN_CTX_end(a5);
          return v13;
        }
      }
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  ERR_put_error(16, 4095, 103, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_smpl.c", 126);
  return 0;
}

uint64_t ec_GFp_simple_group_get_curve(uint64_t a1, BIGNUM *a2, BIGNUM *a3, BIGNUM *a4, uint64_t a5)
{
  if (a2)
  {
    result = bn_copy(a2, (a1 + 104));
    if (!result)
    {
      return result;
    }
  }

  v10 = *(*a1 + 296);
  if (v10)
  {
    if (a3)
    {
      result = v10(a1, a3, a1 + 152, a5);
      if (!result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = (*(*a1 + 296))(a1, a4, a1 + 176, a5);
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  if (!a3 || (result = bn_copy(a3, (a1 + 152)), result))
  {
    if (!a4)
    {
      return 1;
    }

    result = bn_copy(a4, (a1 + 176));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BIGNUM *ec_GFp_simple_group_check_discriminant(uint64_t a1, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v4 = BN_CTX_get(ctx);
  if (v4)
  {
    v5 = BN_CTX_get(ctx);
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = v5;
    v7 = BN_CTX_get(ctx);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = BN_CTX_get(ctx);
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v9;
    if (!BN_CTX_get(ctx))
    {
      goto LABEL_14;
    }

    v11 = *(*a1 + 296);
    if (v11)
    {
      if (!v11(a1, v4, a1 + 152, ctx) || !(*(*a1 + 296))(a1, v6, a1 + 176, ctx))
      {
        goto LABEL_14;
      }
    }

    else if (!bn_copy(v4, (a1 + 152)) || !bn_copy(v6, (a1 + 176)))
    {
      goto LABEL_14;
    }

    is_zero = BN_is_zero(v4);
    v13 = BN_is_zero(v6);
    if (is_zero)
    {
      if (v13)
      {
LABEL_14:
        v4 = 0;
        goto LABEL_15;
      }
    }

    else if (!v13 && (!BN_mod_sqr(v8, v4, (a1 + 104), ctx) || !BN_mod_mul(v10, v8, v4, (a1 + 104), ctx) || !BN_lshift(v8, v10, 2) || !BN_mod_sqr(v10, v6, (a1 + 104), ctx) || !BN_mul_word(v10, 0x1BuLL) || !BN_mod_add(v4, v8, v10, (a1 + 104), ctx) || BN_is_zero(v4)))
    {
      goto LABEL_14;
    }

    v4 = 1;
  }

LABEL_15:
  BN_CTX_end(ctx);
  return v4;
}

uint64_t ec_GFp_simple_point_init(uint64_t a1)
{
  BN_init((a1 + 8));
  BN_init((a1 + 32));
  BN_init((a1 + 56));
  *(a1 + 80) = 0;
  return 1;
}

void ec_GFp_simple_point_finish(uint64_t a1)
{
  BN_free((a1 + 8));
  BN_free((a1 + 32));
  BN_free((a1 + 56));
  *(a1 + 80) = 0;
}

BOOL ec_GFp_simple_point_copy(uint64_t a1, uint64_t a2)
{
  result = bn_copy((a1 + 8), (a2 + 8));
  if (result)
  {
    result = bn_copy((a1 + 32), (a2 + 32));
    if (result)
    {
      result = bn_copy((a1 + 56), (a2 + 56));
      if (result)
      {
        *(a1 + 80) = *(a2 + 80);
        return 1;
      }
    }
  }

  return result;
}

uint64_t ec_GFp_simple_point_set_to_infinity(uint64_t a1, uint64_t a2)
{
  *(a2 + 80) = 0;
  BN_zero(a2 + 56);
  return 1;
}

uint64_t ec_GFp_simple_set_Jprojective_coordinates(uint64_t a1, uint64_t a2, BIGNUM *m, BIGNUM *a4, BIGNUM *a5, BN_CTX *ctx)
{
  if (!m || (result = BN_nnmod((a2 + 8), m, (a1 + 104), ctx), result) && ((v12 = *(*a1 + 288)) == 0 || (result = v12(a1, a2 + 8, a2 + 8, ctx), result)))
  {
    if (!a4 || (result = BN_nnmod((a2 + 32), a4, (a1 + 104), ctx), result) && ((v13 = *(*a1 + 288)) == 0 || (result = v13(a1, a2 + 32, a2 + 32, ctx), result)))
    {
      if (a5)
      {
        result = BN_nnmod((a2 + 56), a5, (a1 + 104), ctx);
        if (!result)
        {
          return result;
        }

        is_one = BN_is_one(a2 + 56);
        v15 = is_one;
        v16 = *(*a1 + 288);
        if (v16)
        {
          if (is_one && (v17 = *(*a1 + 304)) != 0)
          {
            result = v17(a1, a2 + 56, ctx);
            if (!result)
            {
              return result;
            }
          }

          else
          {
            result = v16(a1, a2 + 56, a2 + 56, ctx);
            if (!result)
            {
              return result;
            }
          }
        }

        *(a2 + 80) = v15;
      }

      return 1;
    }
  }

  return result;
}

uint64_t ec_GFp_simple_get_Jprojective_coordinates(uint64_t a1, uint64_t a2, BIGNUM *a3, BIGNUM *a4, BIGNUM *a5, uint64_t a6)
{
  v9 = *(*a1 + 296);
  if (v9)
  {
    if (a3)
    {
      result = v9(a1, a3, a2 + 8, a6);
      if (!result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = (*(*a1 + 296))(a1, a4, a2 + 32, a6);
      if (!result)
      {
        return result;
      }
    }

    if (a5)
    {
      result = (*(*a1 + 296))(a1, a5, a2 + 56, a6);
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  if (!a3 || (result = bn_copy(a3, (a2 + 8)), result))
  {
    if (!a4 || (result = bn_copy(a4, (a2 + 32)), result))
    {
      if (!a5)
      {
        return 1;
      }

      result = bn_copy(a5, (a2 + 56));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ec_GFp_simple_point_set_affine_coordinates(const EC_GROUP *a1, const EC_POINT *a2, uint64_t a3, uint64_t a4, BN_CTX *a5)
{
  if (a3 && a4)
  {
    v10 = BN_value_one();

    return EC_POINT_set_Jprojective_coordinates(a1, a2, a3, a4, v10, a5);
  }

  else
  {
    ERR_put_error(16, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_smpl.c", 406);
    return 0;
  }
}

uint64_t ec_GFp_simple_point_get_affine_coordinates(const EC_GROUP *a1, const EC_POINT *a2, BIGNUM *a3, BIGNUM *a4, BN_CTX *a5)
{
  if (EC_POINT_is_at_infinity(a1, a2) < 1)
  {
    BN_CTX_start(a5);
    v11 = BN_CTX_get(a5);
    if (!v11)
    {
      goto LABEL_26;
    }

    v12 = v11;
    v13 = BN_CTX_get(a5);
    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = v13;
    v15 = BN_CTX_get(a5);
    if (!v15)
    {
      goto LABEL_26;
    }

    v16 = v15;
    v17 = BN_CTX_get(a5);
    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = v17;
    v19 = *(*a1 + 296);
    v20 = (a2 + 56);
    if (v19)
    {
      v20 = v12;
      if (!v19(a1, v12, a2 + 56, a5))
      {
        goto LABEL_26;
      }
    }

    if (BN_is_one(v20))
    {
      v21 = *(*a1 + 296);
      if (v21)
      {
        if (a3 && !v21(a1, a3, a2 + 8, a5) || a4 && !(*(*a1 + 296))(a1, a4, a2 + 32, a5))
        {
          goto LABEL_26;
        }
      }

      else if (a3 && !bn_copy(a3, (a2 + 8)) || a4 && !bn_copy(a4, (a2 + 32)))
      {
        goto LABEL_26;
      }

LABEL_38:
      v10 = 1;
      goto LABEL_27;
    }

    if (BN_mod_inverse_ct(v14, v20, (a1 + 104), a5))
    {
      if (*(*a1 + 288))
      {
        if (!BN_mod_sqr(v16, v14, (a1 + 104), a5))
        {
          goto LABEL_26;
        }
      }

      else if (!(*(*a1 + 272))(a1, v16, v14, a5))
      {
        goto LABEL_26;
      }

      if (a3 && !(*(*a1 + 264))(a1, a3, a2 + 8, v16, a5))
      {
        goto LABEL_26;
      }

      if (!a4)
      {
        goto LABEL_38;
      }

      if (*(*a1 + 288))
      {
        if (!BN_mod_mul(v18, v16, v14, (a1 + 104), a5))
        {
          goto LABEL_26;
        }
      }

      else if (!(*(*a1 + 264))(a1, v18, v16, v14, a5))
      {
        goto LABEL_26;
      }

      if ((*(*a1 + 264))(a1, a4, a2 + 32, v18, a5))
      {
        goto LABEL_38;
      }
    }

    else
    {
      ERR_put_error(16, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_smpl.c", 469);
    }

LABEL_26:
    v10 = 0;
LABEL_27:
    BN_CTX_end(a5);
    return v10;
  }

  ERR_put_error(16, 4095, 106, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_smpl.c", 422);
  return 0;
}

uint64_t ec_GFp_simple_add(EC_GROUP *a1, EC_POINT *r, EC_POINT *a, uint64_t a4, BN_CTX *a5)
{
  v5 = a5;
  if (a != a4)
  {
    if (EC_POINT_is_at_infinity(a1, a) >= 1)
    {
      v10 = r;
      v11 = a4;
LABEL_9:

      return EC_POINT_copy(v10, v11);
    }

    if (EC_POINT_is_at_infinity(a1, a4) >= 1)
    {
      v10 = r;
      v11 = a;
      goto LABEL_9;
    }

    v14 = *(*a1 + 264);
    v13 = *(*a1 + 272);
    BN_CTX_start(v5);
    v15 = BN_CTX_get(v5);
    if (!v15)
    {
      goto LABEL_67;
    }

    v16 = v15;
    v17 = BN_CTX_get(v5);
    if (!v17)
    {
      goto LABEL_67;
    }

    v18 = v17;
    v19 = BN_CTX_get(v5);
    if (!v19)
    {
      goto LABEL_67;
    }

    aa = v19;
    v20 = BN_CTX_get(v5);
    if (!v20)
    {
      goto LABEL_67;
    }

    b = v20;
    v21 = BN_CTX_get(v5);
    if (!v21)
    {
      goto LABEL_67;
    }

    v29 = v21;
    v22 = BN_CTX_get(v5);
    if (!v22)
    {
      goto LABEL_67;
    }

    ra = v22;
    v23 = BN_CTX_get(v5);
    if (!v23)
    {
      goto LABEL_67;
    }

    v27 = v23;
    if (*(a4 + 80))
    {
      if (!bn_copy(v18, (a + 8)) || !bn_copy(aa, (a + 32)))
      {
        goto LABEL_67;
      }
    }

    else if (!v13(a1, v16, a4 + 56, v5) || !v14(a1, v18, a + 8, v16, v5) || !v14(a1, v16, v16, (a4 + 56), v5) || !v14(a1, aa, a + 32, v16, v5))
    {
      goto LABEL_67;
    }

    if (*(a + 20))
    {
      if (!bn_copy(b, (a4 + 8)) || !bn_copy(v29, (a4 + 32)))
      {
        goto LABEL_67;
      }
    }

    else if (!v13(a1, v16, a + 56, v5) || !v14(a1, b, (a4 + 8), v16, v5) || !v14(a1, v16, v16, (a + 56), v5) || !v14(a1, v29, (a4 + 32), v16, v5))
    {
      goto LABEL_67;
    }

    if (!BN_mod_sub_quick(ra, v18, b, (a1 + 104)) || !BN_mod_sub_quick(v27, aa, v29, (a1 + 104)))
    {
      goto LABEL_67;
    }

    if (BN_is_zero(ra))
    {
      if (BN_is_zero(v27))
      {
        BN_CTX_end(v5);
        v24 = EC_POINT_dbl(a1, r, a, v5);
        v5 = 0;
      }

      else
      {
        BN_zero(r + 56);
        *(r + 20) = 0;
        v24 = 1;
      }

      goto LABEL_68;
    }

    if (!BN_mod_add_quick(v18, v18, b, (a1 + 104)) || !BN_mod_add_quick(aa, aa, v29, (a1 + 104)))
    {
      goto LABEL_67;
    }

    v25 = *(a4 + 80);
    if (*(a + 20))
    {
      if (v25)
      {
        if (!bn_copy((r + 56), ra))
        {
          goto LABEL_67;
        }

LABEL_54:
        *(r + 20) = 0;
        if (v13(a1, v16, v27, v5) && v13(a1, v29, ra, v5) && v14(a1, b, v18, v29, v5) && BN_mod_sub_quick((r + 8), v16, b, (a1 + 104)) && BN_mod_lshift1_quick(v16, (r + 8), (a1 + 104)) && BN_mod_sub_quick(v16, b, v16, (a1 + 104)) && v14(a1, v16, v16, v27, v5) && v14(a1, ra, v29, ra, v5) && v14(a1, v18, aa, ra, v5) && BN_mod_sub_quick(v16, v16, v18, (a1 + 104)) && (!BN_is_odd(v16) || BN_add(v16, v16, (a1 + 104))))
        {
          v24 = BN_rshift1((r + 32), v16) != 0;
LABEL_68:
          BN_CTX_end(v5);
          return v24;
        }

LABEL_67:
        v24 = 0;
        goto LABEL_68;
      }

      v26 = (a4 + 56);
    }

    else
    {
      if (!v25)
      {
        if (!v14(a1, v16, a + 56, (a4 + 56), v5))
        {
          goto LABEL_67;
        }

        goto LABEL_53;
      }

      v26 = (a + 56);
    }

    if (!bn_copy(v16, v26))
    {
      goto LABEL_67;
    }

LABEL_53:
    if (!v14(a1, (r + 56), v16, ra, v5))
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  return EC_POINT_dbl(a1, r, a, a5);
}